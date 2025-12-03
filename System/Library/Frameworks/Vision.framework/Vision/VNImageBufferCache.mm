@interface VNImageBufferCache
+ (id)cacheKeyWithBufferFormat:(unsigned int)format width:(unint64_t)width height:(unint64_t)height cropRect:(CGRect)rect;
- (VNImageBufferCache)init;
- (__CVBuffer)cachedBufferWithKey:(id)key;
- (void)cacheBuffer:(__CVBuffer *)buffer forCacheKey:(id)key;
- (void)dealloc;
- (void)purgeCacheRepresentationsForOriginalBuffer:(__CVBuffer *)buffer;
- (void)removeCachedBufferWithKey:(id)key;
@end

@implementation VNImageBufferCache

- (void)purgeCacheRepresentationsForOriginalBuffer:(__CVBuffer *)buffer
{
  os_unfair_lock_lock(&self->_pixelBufferRepsLock);
  v5 = CFDictionaryContainsValue(self->_pixelBufferReps, buffer);
  if (v5)
  {
    CVPixelBufferRetain(buffer);
  }

  CFDictionaryRemoveAllValues(self->_pixelBufferReps);
  if (v5)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
    Width = CVPixelBufferGetWidth(buffer);
    v8 = [VNImageBufferCache cacheKeyWithBufferFormat:PixelFormatType width:Width height:CVPixelBufferGetHeight(buffer)];
    CFDictionaryAddValue(self->_pixelBufferReps, v8, buffer);
    CVPixelBufferRelease(buffer);
  }

  os_unfair_lock_unlock(&self->_pixelBufferRepsLock);
}

- (void)removeCachedBufferWithKey:(id)key
{
  key = key;
  os_unfair_lock_lock(&self->_pixelBufferRepsLock);
  CFDictionaryRemoveValue(self->_pixelBufferReps, key);
  os_unfair_lock_unlock(&self->_pixelBufferRepsLock);
}

- (__CVBuffer)cachedBufferWithKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_pixelBufferRepsLock);
  Value = CFDictionaryGetValue(self->_pixelBufferReps, keyCopy);
  CVPixelBufferRetain(Value);
  os_unfair_lock_unlock(&self->_pixelBufferRepsLock);

  return Value;
}

- (void)cacheBuffer:(__CVBuffer *)buffer forCacheKey:(id)key
{
  key = key;
  os_unfair_lock_lock(&self->_pixelBufferRepsLock);
  CFDictionaryAddValue(self->_pixelBufferReps, key, buffer);
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

+ (id)cacheKeyWithBufferFormat:(unsigned int)format width:(unint64_t)width height:(unint64_t)height cropRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  formatCopy = format;
  v15 = VNHumanReadableCGRect(x, y, width, height);
  v16 = [v13 initWithFormat:@"format=%lu_width=%lu_height=%lu_cropRect=%@", formatCopy, width, height, v15];

  return v16;
}

@end