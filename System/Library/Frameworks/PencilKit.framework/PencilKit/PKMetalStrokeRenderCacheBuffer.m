@interface PKMetalStrokeRenderCacheBuffer
- (id)initWithBuffer:(void *)a3 offset:(void *)a4 numVertices:(void *)a5 vertexSize:(double)a6 bounds:(double)a7;
- (uint64_t)lockPurgeableResourcesAddToSet:(uint64_t)a1;
@end

@implementation PKMetalStrokeRenderCacheBuffer

- (id)initWithBuffer:(void *)a3 offset:(void *)a4 numVertices:(void *)a5 vertexSize:(double)a6 bounds:(double)a7
{
  v18 = a2;
  if (a1)
  {
    v21.receiver = a1;
    v21.super_class = PKMetalStrokeRenderCacheBuffer;
    v19 = objc_msgSendSuper2(&v21, sel_init);
    a1 = v19;
    if (v19)
    {
      objc_storeStrong(v19 + 1, a2);
      a1[3] = a4;
      a1[4] = a5;
      a1[2] = a3;
      *(a1 + 5) = a6;
      *(a1 + 6) = a7;
      *(a1 + 7) = a8;
      *(a1 + 8) = a9;
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
    [v4 addObject:*(a1 + 8)];
    if ([v4 count] == v5 || (objc_msgSend(*(a1 + 8), "lock") & 1) != 0)
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