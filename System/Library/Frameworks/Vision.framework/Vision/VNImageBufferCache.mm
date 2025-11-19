@interface VNImageBufferCache
+ (id)cacheKeyWithBufferFormat:(unsigned int)a3 width:(unint64_t)a4 height:(unint64_t)a5 cropRect:(CGRect)a6;
- (VNImageBufferCache)init;
- (__CVBuffer)cachedBufferWithKey:(id)a3;
- (void)cacheBuffer:(__CVBuffer *)a3 forCacheKey:(id)a4;
- (void)dealloc;
- (void)purgeCacheRepresentationsForOriginalBuffer:(__CVBuffer *)a3;
- (void)removeCachedBufferWithKey:(id)a3;
@end

@implementation VNImageBufferCache

- (void)purgeCacheRepresentationsForOriginalBuffer:(__CVBuffer *)a3
{
  os_unfair_lock_lock(&self->_pixelBufferRepsLock);
  v5 = CFDictionaryContainsValue(self->_pixelBufferReps, a3);
  if (v5)
  {
    CVPixelBufferRetain(a3);
  }

  CFDictionaryRemoveAllValues(self->_pixelBufferReps);
  if (v5)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
    Width = CVPixelBufferGetWidth(a3);
    v8 = [VNImageBufferCache cacheKeyWithBufferFormat:PixelFormatType width:Width height:CVPixelBufferGetHeight(a3)];
    CFDictionaryAddValue(self->_pixelBufferReps, v8, a3);
    CVPixelBufferRelease(a3);
  }

  os_unfair_lock_unlock(&self->_pixelBufferRepsLock);
}

- (void)removeCachedBufferWithKey:(id)a3
{
  key = a3;
  os_unfair_lock_lock(&self->_pixelBufferRepsLock);
  CFDictionaryRemoveValue(self->_pixelBufferReps, key);
  os_unfair_lock_unlock(&self->_pixelBufferRepsLock);
}

- (__CVBuffer)cachedBufferWithKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_pixelBufferRepsLock);
  Value = CFDictionaryGetValue(self->_pixelBufferReps, v4);
  CVPixelBufferRetain(Value);
  os_unfair_lock_unlock(&self->_pixelBufferRepsLock);

  return Value;
}

- (void)cacheBuffer:(__CVBuffer *)a3 forCacheKey:(id)a4
{
  key = a4;
  os_unfair_lock_lock(&self->_pixelBufferRepsLock);
  CFDictionaryAddValue(self->_pixelBufferReps, key, a3);
  os_unfair_lock_unlock(&self->_pixelBufferRepsLock);
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_pixelBufferRepsLock);
  pixelBufferReps = self->_pixelBufferReps;
  if (pixelBufferReps)
  {
    CFRelease(pixelBufferReps);
    self->_pixelBufferReps = 0;
  }

  os_unfair_lock_unlock(&self->_pixelBufferRepsLock);
  v4.receiver = self;
  v4.super_class = VNImageBufferCache;
  [(VNImageBufferCache *)&v4 dealloc];
}

- (VNImageBufferCache)init
{
  v6.receiver = self;
  v6.super_class = VNImageBufferCache;
  v2 = [(VNImageBufferCache *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_pixelBufferRepsLock._os_unfair_lock_opaque = 0;
    v2->_pixelBufferReps = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v4 = v3;
  }

  return v3;
}

+ (id)cacheKeyWithBufferFormat:(unsigned int)a3 width:(unint64_t)a4 height:(unint64_t)a5 cropRect:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = a3;
  v15 = VNHumanReadableCGRect(x, y, width, height);
  v16 = [v13 initWithFormat:@"format=%lu_width=%lu_height=%lu_cropRect=%@", v14, a4, a5, v15];

  return v16;
}

@end