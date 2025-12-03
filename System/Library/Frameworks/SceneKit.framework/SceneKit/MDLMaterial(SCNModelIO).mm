@interface MDLMaterial(SCNModelIO)
+ (MDLMaterial)materialWithSCNMaterial:()SCNModelIO;
@end

@implementation MDLMaterial(SCNModelIO)

+ (MDLMaterial)materialWithSCNMaterial:()SCNModelIO
{
  v5 = objc_opt_new();
  v6 = [[self alloc] initWithName:objc_msgSend(a3 scatteringFunction:{"name"), v5}];

  -[MDLMaterial setName:](v6, "setName:", [a3 name]);
  objc_setAssociatedObject(v6, @"SCNSceneKitAssociatedObject", a3, 0x301);
  objc_setAssociatedObject(a3, @"SCNSceneKitAssociatedObject", v6, 0);
  setupMDLMaterialProperty(v6, &cfstr_Emission.isa, [a3 ambient], MDLMaterialSemanticEmission);
  setupMDLMaterialProperty(v6, &cfstr_Basecolor.isa, [a3 diffuse], MDLMaterialSemanticBaseColor);
  setupMDLMaterialProperty(v6, &cfstr_Specular.isa, [a3 specular], MDLMaterialSemanticSpecular);
  setupMDLMaterialProperty(v6, &cfstr_Reflective.isa, [a3 reflective], MDLMaterialSemanticUserDefined);
  setupMDLMaterialProperty(v6, &cfstr_Opacity.isa, [a3 transparent], MDLMaterialSemanticOpacity);
  setupMDLMaterialProperty(v6, &cfstr_Metallic.isa, [a3 metalness], MDLMaterialSemanticMetallic);
  setupMDLMaterialProperty(v6, &cfstr_Roughness.isa, [a3 roughness], MDLMaterialSemanticRoughness);
  setupMDLMaterialProperty(v6, &cfstr_Ambientocclusi.isa, [a3 ambientOcclusion], MDLMaterialSemanticAmbientOcclusion);
  setupMDLMaterialProperty(v6, &cfstr_Displacement.isa, [a3 displacement], MDLMaterialSemanticDisplacement);
  setupMDLMaterialProperty(v6, &cfstr_Normal.isa, [a3 normal], MDLMaterialSemanticTangentSpaceNormal);
  if ([a3 isDoubleSided])
  {
    [(MDLMaterial *)v6 setMaterialFace:2];
  }

  return v6;
}

@end