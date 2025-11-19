@interface C3DIOCreateNormalsIfAbsent
@end

@implementation C3DIOCreateNormalsIfAbsent

uint64_t ___C3DIOCreateNormalsIfAbsent_block_invoke(uint64_t a1, uint64_t a2)
{
  Geometry = C3DNodeGetGeometry(a2);
  if (Geometry)
  {
    v3 = Geometry;
    if (!C3DGeometryOsdGetWantsGPUSubdivision(Geometry))
    {
      Mesh = C3DGeometryGetMesh(v3);
      if (Mesh)
      {
        v5 = Mesh;
        if (!C3DMeshGetNormalSource(Mesh, 0))
        {
          if (C3DMeshGetPositionSource(v5, 0))
          {
            v7 = C3DCreateNormalsWithMesh(v5, 0, 0);
            if (v7)
            {
              v8 = v7;
              ChannelForSourceWithSemanticAtIndex = C3DMeshGetChannelForSourceWithSemanticAtIndex(v5, 0, 0);
              C3DMeshSetSourceWithInputSet(v5, v8, 0, ChannelForSourceWithSemanticAtIndex);
              CFRelease(v8);
            }
          }
        }
      }
    }
  }

  return 0;
}

@end