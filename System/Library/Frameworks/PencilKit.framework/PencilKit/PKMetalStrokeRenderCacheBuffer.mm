@interface PKMetalStrokeRenderCacheBuffer
- (id)initWithBuffer:(void *)buffer offset:(void *)offset numVertices:(void *)vertices vertexSize:(double)size bounds:(double)bounds;
- (uint64_t)lockPurgeableResourcesAddToSet:(uint64_t)set;
@end

@implementation PKMetalStrokeRenderCacheBuffer

- (id)initWithBuffer:(void *)buffer offset:(void *)offset numVertices:(void *)vertices vertexSize:(double)size bounds:(double)bounds
{
  v18 = a2;
  if (self)
  {
    v21.receiver = self;
    v21.super_class = PKMetalStrokeRenderCacheBuffer;
    v19 = objc_msgSendSuper2(&v21, sel_init);
    self = v19;
    if (v19)
    {
      objc_storeStrong(v19 + 1, a2);
      self[3] = offset;
      self[4] = vertices;
      self[2] = buffer;
      *(self + 5) = size;
      *(self + 6) = bounds;
      *(self + 7) = a8;
      *(self + 8) = a9;
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
    [v4 addObject:*(set + 8)];
    if ([v4 count] == v5 || (objc_msgSend(*(set + 8), "lock") & 1) != 0)
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