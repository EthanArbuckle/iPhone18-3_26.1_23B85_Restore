@interface PKMetalSDFPenRenderCacheBuffer
- (void)initWithUniforms:(uint64_t)a3 points:(uint64_t)a4 numPoints:(uint64_t)a5 numVertices:(void *)a6 resourceHandler:;
- (void)strokePointBuffer;
- (void)uniformsBuffer;
@end

@implementation PKMetalSDFPenRenderCacheBuffer

- (void)initWithUniforms:(uint64_t)a3 points:(uint64_t)a4 numPoints:(uint64_t)a5 numVertices:(void *)a6 resourceHandler:
{
  v11 = a6;
  if (a1)
  {
    v18.receiver = a1;
    v18.super_class = PKMetalSDFPenRenderCacheBuffer;
    v12 = objc_msgSendSuper2(&v18, sel_init);
    a1 = v12;
    if (v12)
    {
      v12[5] = a5;
      v12[6] = a4;
      v13 = [(PKMetalResourceHandler *)v11 newPurgeableBufferWithLength:a2 bytes:(v12 + 3) outOffset:?];
      v14 = a1[1];
      a1[1] = v13;

      v15 = [(PKMetalResourceHandler *)v11 newPurgeableBufferWithLength:a3 bytes:(a1 + 4) outOffset:?];
      v16 = a1[2];
      a1[2] = v15;
    }
  }

  return a1;
}

- (void)uniformsBuffer
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      v2 = v2[3];
    }

    a1 = v2;
    v1 = vars8;
  }

  return a1;
}

- (void)strokePointBuffer
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      v2 = v2[3];
    }

    a1 = v2;
    v1 = vars8;
  }

  return a1;
}

@end