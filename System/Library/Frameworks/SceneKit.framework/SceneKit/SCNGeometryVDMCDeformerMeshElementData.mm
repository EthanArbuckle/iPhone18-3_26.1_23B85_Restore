@interface SCNGeometryVDMCDeformerMeshElementData
- (void)dealloc;
@end

@implementation SCNGeometryVDMCDeformerMeshElementData

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNGeometryVDMCDeformerMeshElementData;
  [(SCNGeometryVDMCDeformerMeshElementData *)&v3 dealloc];
}

@end