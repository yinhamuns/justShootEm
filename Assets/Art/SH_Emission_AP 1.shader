// Made with Amplify Shader Editor v1.9.0.2
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "SH_Emission_AP"
{
	Properties
	{
		_Color0("Color 0", Color) = (0.9245283,0.8564467,0,0)
		_Color1("Color 1", Color) = (0.9245283,0.8564467,0,0)
		_Float1("Float 1", Float) = 1
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Opaque"  "Queue" = "Geometry+0" "IsEmissive" = "true"  }
		Cull Back
		CGPROGRAM
		#include "UnityShaderVariables.cginc"
		#pragma target 3.0
		#pragma surface surf Standard keepalpha addshadow fullforwardshadows 
		struct Input
		{
			half filler;
		};

		uniform float4 _Color0;
		uniform float4 _Color1;
		uniform float _Float1;

		void surf( Input i , inout SurfaceOutputStandard o )
		{
			float4 lerpResult25 = lerp( _Color0 , _Color1 , float4( 0,0,0,0 ));
			float mulTime15 = _Time.y * _Float1;
			o.Emission = ( lerpResult25 * (3.0 + (sin( mulTime15 ) - 0.0) * (5.0 - 3.0) / (1.0 - 0.0)) ).rgb;
			o.Alpha = 1;
		}

		ENDCG
	}
	Fallback "Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=19002
0;239;1126;552;1446.772;532.3665;1.966449;True;True
Node;AmplifyShaderEditor.RangedFloatNode;17;-866.7529,-397.8686;Inherit;False;Property;_Float1;Float 1;3;0;Create;True;0;0;0;False;0;False;1;7;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleTimeNode;15;-699.9269,-451.8417;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;2;-772.0812,-62.18319;Inherit;False;Property;_Color0;Color 0;0;0;Create;True;0;0;0;False;0;False;0.9245283,0.8564467,0,0;0.9811321,0.9231043,0.2267711,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;19;-596.5249,250.4221;Inherit;False;Property;_Color1;Color 1;1;0;Create;True;0;0;0;False;0;False;0.9245283,0.8564467,0,0;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SinOpNode;23;-458.7429,-382.7171;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;25;-301.4048,104.1716;Inherit;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TFHCRemapNode;18;-295.0715,-467.915;Inherit;True;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;3;False;4;FLOAT;5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;7;-393.0979,569.5745;Inherit;True;Property;_TextureSample0;Texture Sample 0;2;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;6;-4.210975,-153.7871;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;26;227.9206,-11.89151;Float;False;True;-1;2;ASEMaterialInspector;0;0;Standard;SH_Emission_AP;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Back;0;False;;0;False;;False;0;False;;0;False;;False;0;Opaque;0.5;True;True;0;False;Opaque;;Geometry;All;18;all;True;True;True;True;0;False;;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;2;15;10;25;False;0.5;True;0;0;False;;0;False;;0;0;False;;0;False;;0;False;;0;False;;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;True;Relative;0;;-1;-1;-1;-1;0;False;0;0;False;;-1;0;False;;0;0;0;False;0.1;False;;0;False;;False;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;15;0;17;0
WireConnection;23;0;15;0
WireConnection;25;0;2;0
WireConnection;25;1;19;0
WireConnection;18;0;23;0
WireConnection;6;0;25;0
WireConnection;6;1;18;0
WireConnection;26;2;6;0
ASEEND*/
//CHKSM=6DFDF10AFB9C23F3C65FDDF6301FBE7B47D276A2