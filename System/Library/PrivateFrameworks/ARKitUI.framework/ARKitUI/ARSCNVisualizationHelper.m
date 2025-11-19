@interface ARSCNVisualizationHelper
+ (id)createAxesNode:(double)a3;
+ (id)createGeometryForPointCloud:(id)a3;
+ (id)createMaterialWithTexture:(id)a3;
@end

@implementation ARSCNVisualizationHelper

+ (id)createMaterialWithTexture:(id)a3
{
  v3 = MEMORY[0x277CDBA90];
  v4 = a3;
  v5 = [v3 material];
  v6 = [v5 diffuse];
  [v6 setContents:v4];

  v7 = [MEMORY[0x277D75348] blackColor];
  v8 = [v5 ambient];
  [v8 setContents:v7];

  [v5 setLightingModelName:*MEMORY[0x277CDBB98]];
  [v5 setLocksAmbientWithDiffuse:1];

  return v5;
}

+ (id)createAxesNode:(double)a3
{
  v28[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D75348] redColor];
  v25 = [ARSCNVisualizationHelper createMaterialWithTexture:v4];

  v5 = [MEMORY[0x277CDBA40] boxWithWidth:a3 height:a3 / 50.0 length:a3 / 50.0 chamferRadius:a3 / 50.0 * 0.5];
  v28[0] = v25;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  [v5 setMaterials:v6];

  v7 = [MEMORY[0x277CDBAA8] nodeWithGeometry:v5];
  v8 = a3 * 0.5;
  v9 = a3 * 0.5;
  *&v8 = v9;
  [v7 setPosition:{v8, 0.0, 0.0}];
  v10 = [MEMORY[0x277D75348] greenColor];
  v11 = [ARSCNVisualizationHelper createMaterialWithTexture:v10];

  v12 = [MEMORY[0x277CDBA40] boxWithWidth:a3 / 50.0 height:a3 length:a3 / 50.0 chamferRadius:a3 / 50.0 * 0.5];
  v27 = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  [v12 setMaterials:v13];

  v14 = [MEMORY[0x277CDBAA8] nodeWithGeometry:v12];
  *&v15 = v9;
  [v14 setPosition:{0.0, v15, 0.0}];
  v16 = [MEMORY[0x277D75348] blueColor];
  v17 = [ARSCNVisualizationHelper createMaterialWithTexture:v16];

  v18 = [MEMORY[0x277CDBA40] boxWithWidth:a3 / 50.0 height:a3 / 50.0 length:a3 chamferRadius:a3 / 50.0 * 0.5];
  v26 = v17;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
  [v18 setMaterials:v19];

  v20 = [MEMORY[0x277CDBAA8] nodeWithGeometry:v18];
  *&v21 = v9;
  [v20 setPosition:{0.0, 0.0, v21}];
  v22 = [MEMORY[0x277CDBAA8] node];
  [v22 addChildNode:v7];
  [v22 addChildNode:v14];
  [v22 addChildNode:v20];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)createGeometryForPointCloud:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEA90];
  v4 = a3;
  v5 = [v3 dataWithBytes:objc_msgSend(v4 length:{"points"), 16 * objc_msgSend(v4, "count")}];
  v6 = [MEMORY[0x277CDBA78] geometrySourceWithData:v5 semantic:*MEMORY[0x277CDBB38] vectorCount:objc_msgSend(v4 floatComponents:"count") componentsPerVector:1 bytesPerComponent:3 dataOffset:4 dataStride:{0, 16}];
  v7 = MEMORY[0x277CDBA70];
  v8 = [v4 count];

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