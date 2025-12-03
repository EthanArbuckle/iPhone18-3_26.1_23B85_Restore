@interface ARSCNVisualizationHelper
+ (id)createAxesNode:(double)node;
+ (id)createGeometryForPointCloud:(id)cloud;
+ (id)createMaterialWithTexture:(id)texture;
@end

@implementation ARSCNVisualizationHelper

+ (id)createMaterialWithTexture:(id)texture
{
  v3 = MEMORY[0x277CDBA90];
  textureCopy = texture;
  material = [v3 material];
  diffuse = [material diffuse];
  [diffuse setContents:textureCopy];

  blackColor = [MEMORY[0x277D75348] blackColor];
  ambient = [material ambient];
  [ambient setContents:blackColor];

  [material setLightingModelName:*MEMORY[0x277CDBB98]];
  [material setLocksAmbientWithDiffuse:1];

  return material;
}

+ (id)createAxesNode:(double)node
{
  v28[1] = *MEMORY[0x277D85DE8];
  redColor = [MEMORY[0x277D75348] redColor];
  v25 = [ARSCNVisualizationHelper createMaterialWithTexture:redColor];

  v5 = [MEMORY[0x277CDBA40] boxWithWidth:node height:node / 50.0 length:node / 50.0 chamferRadius:node / 50.0 * 0.5];
  v28[0] = v25;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  [v5 setMaterials:v6];

  v7 = [MEMORY[0x277CDBAA8] nodeWithGeometry:v5];
  v8 = node * 0.5;
  v9 = node * 0.5;
  *&v8 = v9;
  [v7 setPosition:{v8, 0.0, 0.0}];
  greenColor = [MEMORY[0x277D75348] greenColor];
  v11 = [ARSCNVisualizationHelper createMaterialWithTexture:greenColor];

  v12 = [MEMORY[0x277CDBA40] boxWithWidth:node / 50.0 height:node length:node / 50.0 chamferRadius:node / 50.0 * 0.5];
  v27 = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  [v12 setMaterials:v13];

  v14 = [MEMORY[0x277CDBAA8] nodeWithGeometry:v12];
  *&v15 = v9;
  [v14 setPosition:{0.0, v15, 0.0}];
  blueColor = [MEMORY[0x277D75348] blueColor];
  v17 = [ARSCNVisualizationHelper createMaterialWithTexture:blueColor];

  v18 = [MEMORY[0x277CDBA40] boxWithWidth:node / 50.0 height:node / 50.0 length:node chamferRadius:node / 50.0 * 0.5];
  v26 = v17;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
  [v18 setMaterials:v19];

  v20 = [MEMORY[0x277CDBAA8] nodeWithGeometry:v18];
  *&v21 = v9;
  [v20 setPosition:{0.0, 0.0, v21}];
  node = [MEMORY[0x277CDBAA8] node];
  [node addChildNode:v7];
  [node addChildNode:v14];
  [node addChildNode:v20];

  v23 = *MEMORY[0x277D85DE8];

  return node;
}

+ (id)createGeometryForPointCloud:(id)cloud
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEA90];
  cloudCopy = cloud;
  v5 = [v3 dataWithBytes:objc_msgSend(cloudCopy length:{"points"), 16 * objc_msgSend(cloudCopy, "count")}];
  v6 = [MEMORY[0x277CDBA78] geometrySourceWithData:v5 semantic:*MEMORY[0x277CDBB38] vectorCount:objc_msgSend(cloudCopy floatComponents:"count") componentsPerVector:1 bytesPerComponent:3 dataOffset:4 dataStride:{0, 16}];
  v7 = MEMORY[0x277CDBA70];
  v8 = [cloudCopy count];

  v9 = [v7 geometryElementWithData:0 primitiveType:3 primitiveCount:v8 bytesPerIndex:0];
  [v9 setPointSize:0.001];
  [v9 setMinimumPointScreenSpaceRadius:8.0];
  [v9 setMaximumPointScreenSpaceRadius:72.0];
  v10 = MEMORY[0x277CDBA68];
  v19[0] = v6;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v18 = v9;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  v13 = [v10 geometryWithSources:v11 elements:v12];

  v14 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.800000012 blue:0.0 alpha:1.0];
  v15 = [ARSCNVisualizationHelper createMaterialWithTexture:v14];
  [v13 setFirstMaterial:v15];

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

@end