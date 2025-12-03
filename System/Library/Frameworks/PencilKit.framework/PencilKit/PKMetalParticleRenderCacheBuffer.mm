@interface PKMetalParticleRenderCacheBuffer
- (uint64_t)lockPurgeableResourcesAddToSet:(uint64_t)set;
- (void)initWithUniforms:(uint64_t)uniforms points:(uint64_t)points numPoints:(void *)numPoints resourceHandler:;
@end

@implementation PKMetalParticleRenderCacheBuffer

- (void)initWithUniforms:(uint64_t)uniforms points:(uint64_t)points numPoints:(void *)numPoints resourceHandler:
{
  numPointsCopy = numPoints;
  if (self)
  {
    v18.receiver = self;
    v18.super_class = PKMetalParticleRenderCacheBuffer;
    v10 = objc_msgSendSuper2(&v18, sel_init);
    self = v10;
    if (v10)
    {
      v10[7] = points;
      v11 = [(PKMetalResourceHandler *)numPointsCopy newPurgeableBufferWithLength:a2 bytes:(v10 + 3) outOffset:?];
      v12 = self[1];
      self[1] = v11;

      v13 = 5 * points;
      v14 = [(PKMetalResourceHandler *)numPointsCopy newPurgeableBufferWithLength:uniforms bytes:(self + 4) outOffset:?];
      v15 = self[2];
      self[2] = v14;

      v16 = *(uniforms + 8 * v13 - 32) + 4 * *(uniforms + 8 * v13 - 10);
      self[5] = v16;
      self[6] = v16 >> 2;
    }
  }

  return self;
}

- (uint64_t)lockPurgeableResourcesAddToSet:(uint64_t)set
{
  v3 = a2;
  v4 = v3;
  if (set)
  {
    v5 = [v3 count];
    [v4 addObject:*(set + 16)];
    if ([v4 count] == v5 || (objc_msgSend(*(set + 16), "lock")) && (*(set + 8) == *(set + 16) || (v6 = objc_msgSend(v4, "count"), objc_msgSend(v4, "addObject:", *(set + 8)), objc_msgSend(v4, "count") == v6) || objc_msgSend(*(set + 8), "lock")) && (objc_msgSend(*(set + 16), "isPurged") & 1) == 0)
    {
      set = [*(set + 8) isPurged] ^ 1;
    }

    else
    {
      set = 0;
    }
  }

  return set;
}

@end