@interface PKMetalPaintRenderCacheBuffer
- (void)initWithUniforms:(uint64_t)uniforms points:(uint64_t)points numPoints:(uint64_t)numPoints numVertices:(void *)vertices resourceHandler:;
@end

@implementation PKMetalPaintRenderCacheBuffer

- (void)initWithUniforms:(uint64_t)uniforms points:(uint64_t)points numPoints:(uint64_t)numPoints numVertices:(void *)vertices resourceHandler:
{
  verticesCopy = vertices;
  if (self)
  {
    v18.receiver = self;
    v18.super_class = PKMetalPaintRenderCacheBuffer;
    v12 = objc_msgSendSuper2(&v18, sel_init);
    self = v12;
    if (v12)
    {
      v12[5] = numPoints;
      v12[6] = points;
      v13 = [(PKMetalResourceHandler *)verticesCopy newPurgeableBufferWithLength:a2 bytes:(v12 + 3) outOffset:?];
      v14 = self[1];
      self[1] = v13;

      v15 = [(PKMetalResourceHandler *)verticesCopy newPurgeableBufferWithLength:uniforms bytes:(self + 4) outOffset:?];
      v16 = self[2];
      self[2] = v15;
    }
  }

  return self;
}

@end