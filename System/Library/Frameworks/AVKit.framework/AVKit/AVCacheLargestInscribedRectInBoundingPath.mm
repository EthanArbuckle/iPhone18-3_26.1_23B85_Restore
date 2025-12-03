@interface AVCacheLargestInscribedRectInBoundingPath
- (AVCacheLargestInscribedRectInBoundingPath)init;
- (CGRect)getLargestInscribableRectForView:(id)view withCenter:(CGPoint)center aspectRatio:(double)ratio;
- (id)retrieveCacheForCenter:(CGPoint)center aspectRatio:(double)ratio;
- (void)saveCacheFor:(CGPoint)for aspectRatio:(double)ratio value:(CGRect)value;
@end

@implementation AVCacheLargestInscribedRectInBoundingPath

- (CGRect)getLargestInscribableRectForView:(id)view withCenter:(CGPoint)center aspectRatio:(double)ratio
{
  y = center.y;
  x = center.x;
  viewCopy = view;
  ratio = [(AVCacheLargestInscribedRectInBoundingPath *)self retrieveCacheForCenter:x aspectRatio:y, ratio];
  v11 = ratio;
  if (ratio)
  {
    [ratio largestInscribedRect];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
  }

  else
  {
    [viewCopy avkit_largestInscribedRectInBoundingPathWithCenter:x aspectRatio:{y, ratio}];
    v13 = v20;
    v15 = v21;
    v17 = v22;
    v19 = v23;
    [(AVCacheLargestInscribedRectInBoundingPath *)self saveCacheFor:x aspectRatio:y value:ratio, v20, v21, v22, v23];
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

- (void)saveCacheFor:(CGPoint)for aspectRatio:(double)ratio value:(CGRect)value
{
  height = value.size.height;
  width = value.size.width;
  y = value.origin.y;
  x = value.origin.x;
  ratio = [[AVCacheLargestInscribedRectInBoundingPathKey alloc] initWithCenter:for.x aspectRatio:for.y, ratio];
  height = [[AVCacheLargestInscribedRectInBoundingPathValue alloc] initWithLargestInscribedRect:x, y, width, height];
  if ([(NSCache *)self->_cache countLimit]== 10)
  {
    v12 = _AVLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_18B49C000, v12, OS_LOG_TYPE_DEFAULT, "AVCacheLargestInscribedRectInBoundingPath: attempting to save cache while full", v13, 2u);
    }
  }

  [(NSCache *)self->_cache setObject:height forKey:ratio];
}

- (id)retrieveCacheForCenter:(CGPoint)center aspectRatio:(double)ratio
{
  ratio = [[AVCacheLargestInscribedRectInBoundingPathKey alloc] initWithCenter:center.x aspectRatio:center.y, ratio];
  v6 = [(NSCache *)self->_cache objectForKey:ratio];

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