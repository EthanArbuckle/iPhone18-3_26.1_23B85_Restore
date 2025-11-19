@interface MDLMesh
@end

@implementation MDLMesh

uint64_t __59__MDLMesh_SCNModelIO__meshWithSCNGeometry_bufferAllocator___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 semantic];

  return [v2 isEqualToString:@"kGeometrySourceSemanticVertex"];
}

@end