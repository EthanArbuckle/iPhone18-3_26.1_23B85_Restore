@interface PKMetalLiveStrokePaintRenderCacheBuffer
- (void)initWithPoints:(uint64_t)points liveStrokePoints:(uint64_t)strokePoints numPoints:(uint64_t)numPoints numVertices:(void *)vertices resourceHandler:;
@end

@implementation PKMetalLiveStrokePaintRenderCacheBuffer

- (void)initWithPoints:(uint64_t)points liveStrokePoints:(uint64_t)strokePoints numPoints:(uint64_t)numPoints numVertices:(void *)vertices resourceHandler:
{
  verticesCopy = vertices;
  if (self)
  {
    v18.receiver = self;
    v18.super_class = PKMetalLiveStrokePaintRenderCacheBuffer;
    v12 = objc_msgSendSuper2(&v18, sel_init);
    self = v12;
    if (v12)
    {
      v12[5] = numPoints;
      v12[6] = strokePoints;
      v13 = [(PKMetalResourceHandler *)verticesCopy newBufferWithLength:a2 bytes:(v12 + 2) outOffset:?];
      v14 = self[1];
      self[1] = v13;

      v15 = [(PKMetalResourceHandler *)verticesCopy newBufferWithLength:points bytes:(self + 4) outOffset:?];
      v16 = self[3];
      self[3] = v15;
    }
  }

  return self;
}

@end