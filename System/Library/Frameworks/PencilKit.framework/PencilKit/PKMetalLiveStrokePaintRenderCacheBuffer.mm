@interface PKMetalLiveStrokePaintRenderCacheBuffer
- (void)initWithPoints:(uint64_t)a3 liveStrokePoints:(uint64_t)a4 numPoints:(uint64_t)a5 numVertices:(void *)a6 resourceHandler:;
@end

@implementation PKMetalLiveStrokePaintRenderCacheBuffer

- (void)initWithPoints:(uint64_t)a3 liveStrokePoints:(uint64_t)a4 numPoints:(uint64_t)a5 numVertices:(void *)a6 resourceHandler:
{
  v11 = a6;
  if (a1)
  {
    v18.receiver = a1;
    v18.super_class = PKMetalLiveStrokePaintRenderCacheBuffer;
    v12 = objc_msgSendSuper2(&v18, sel_init);
    a1 = v12;
    if (v12)
    {
      v12[5] = a5;
      v12[6] = a4;
      v13 = [(PKMetalResourceHandler *)v11 newBufferWithLength:a2 bytes:(v12 + 2) outOffset:?];
      v14 = a1[1];
      a1[1] = v13;

      v15 = [(PKMetalResourceHandler *)v11 newBufferWithLength:a3 bytes:(a1 + 4) outOffset:?];
      v16 = a1[3];
      a1[3] = v15;
    }
  }

  return a1;
}

@end