@interface C3DIOCreateTextureTangentsIfAbsent
@end

@implementation C3DIOCreateTextureTangentsIfAbsent

uint64_t ___C3DIOCreateTextureTangentsIfAbsent_block_invoke(uint64_t a1, uint64_t a2)
{
  Geometry = C3DNodeGetGeometry(a2);
  if (Geometry)
  {
    C3DGeometryCreateTangentsIfNeeded(Geometry, 1);
  }

  return 0;
}

@end