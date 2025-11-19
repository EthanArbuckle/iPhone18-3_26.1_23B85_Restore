@interface PKMetalParticleRenderCacheBuffer
- (uint64_t)lockPurgeableResourcesAddToSet:(uint64_t)a1;
- (void)initWithUniforms:(uint64_t)a3 points:(uint64_t)a4 numPoints:(void *)a5 resourceHandler:;
@end

@implementation PKMetalParticleRenderCacheBuffer

- (void)initWithUniforms:(uint64_t)a3 points:(uint64_t)a4 numPoints:(void *)a5 resourceHandler:
{
  v9 = a5;
  if (a1)
  {
    v18.receiver = a1;
    v18.super_class = PKMetalParticleRenderCacheBuffer;
    v10 = objc_msgSendSuper2(&v18, sel_init);
    a1 = v10;
    if (v10)
    {
      v10[7] = a4;
      v11 = [(PKMetalResourceHandler *)v9 newPurgeableBufferWithLength:a2 bytes:(v10 + 3) outOffset:?];
      v12 = a1[1];
      a1[1] = v11;

      v13 = 5 * a4;
      v14 = [(PKMetalResourceHandler *)v9 newPurgeableBufferWithLength:a3 bytes:(a1 + 4) outOffset:?];
      v15 = a1[2];
      a1[2] = v14;

      v16 = *(a3 + 8 * v13 - 32) + 4 * *(a3 + 8 * v13 - 10);
      a1[5] = v16;
      a1[6] = v16 >> 2;
    }
  }

  return a1;
}

- (uint64_t)lockPurgeableResourcesAddToSet:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 count];
    [v4 addObject:*(a1 + 16)];
    if ([v4 count] == v5 || (objc_msgSend(*(a1 + 16), "lock")) && (*(a1 + 8) == *(a1 + 16) || (v6 = objc_msgSend(v4, "count"), objc_msgSend(v4, "addObject:", *(a1 + 8)), objc_msgSend(v4, "count") == v6) || objc_msgSend(*(a1 + 8), "lock")) && (objc_msgSend(*(a1 + 16), "isPurged") & 1) == 0)
    {
      a1 = [*(a1 + 8) isPurged] ^ 1;
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

@end