@interface AVCacheLargestInscribedRectInBoundingPath
- (AVCacheLargestInscribedRectInBoundingPath)init;
- (CGRect)getLargestInscribableRectForView:(id)a3 withCenter:(CGPoint)a4 aspectRatio:(double)a5;
- (id)retrieveCacheForCenter:(CGPoint)a3 aspectRatio:(double)a4;
- (void)saveCacheFor:(CGPoint)a3 aspectRatio:(double)a4 value:(CGRect)a5;
@end

@implementation AVCacheLargestInscribedRectInBoundingPath

- (CGRect)getLargestInscribableRectForView:(id)a3 withCenter:(CGPoint)a4 aspectRatio:(double)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = [(AVCacheLargestInscribedRectInBoundingPath *)self retrieveCacheForCenter:x aspectRatio:y, a5];
  v11 = v10;
  if (v10)
  {
    [v10 largestInscribedRect];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
  }

  else
  {
    [v9 avkit_largestInscribedRectInBoundingPathWithCenter:x aspectRatio:{y, a5}];
    v13 = v20;
    v15 = v21;
    v17 = v22;
    v19 = v23;
    [(AVCacheLargestInscribedRectInBoundingPath *)self saveCacheFor:x aspectRatio:y value:a5, v20, v21, v22, v23];
  }

  v24 = v13;
  v25 = v15;
  v26 = v17;
  v27 = v19;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (void)saveCacheFor:(CGPoint)a3 aspectRatio:(double)a4 value:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = [[AVCacheLargestInscribedRectInBoundingPathKey alloc] initWithCenter:a3.x aspectRatio:a3.y, a4];
  v11 = [[AVCacheLargestInscribedRectInBoundingPathValue alloc] initWithLargestInscribedRect:x, y, width, height];
  if ([(NSCache *)self->_cache countLimit]== 10)
  {
    v12 = _AVLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_18B49C000, v12, OS_LOG_TYPE_DEFAULT, "AVCacheLargestInscribedRectInBoundingPath: attempting to save cache while full", v13, 2u);
    }
  }

  [(NSCache *)self->_cache setObject:v11 forKey:v10];
}

- (id)retrieveCacheForCenter:(CGPoint)a3 aspectRatio:(double)a4
{
  v5 = [[AVCacheLargestInscribedRectInBoundingPathKey alloc] initWithCenter:a3.x aspectRatio:a3.y, a4];
  v6 = [(NSCache *)self->_cache objectForKey:v5];

  return v6;
}

- (AVCacheLargestInscribedRectInBoundingPath)init
{
  v6.receiver = self;
  v6.super_class = AVCacheLargestInscribedRectInBoundingPath;
  v2 = [(AVCacheLargestInscribedRectInBoundingPath *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    cache = v2->_cache;
    v2->_cache = v3;

    [(NSCache *)v2->_cache setCountLimit:10];
  }

  return v2;
}

@end