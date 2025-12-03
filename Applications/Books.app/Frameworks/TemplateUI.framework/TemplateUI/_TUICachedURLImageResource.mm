@interface _TUICachedURLImageResource
+ (id)sizedKeyFromTemplatedURL:(id)l baseURL:(id)rL naturalSize:(CGSize)size contentScale:(double)scale;
+ (id)sizedKeyFromURL:(id)l;
+ (id)sizedURLFromTemplatedURL:(id)l baseURL:(id)rL naturalSize:(CGSize)size contentsScale:(double)scale;
+ (id)unsizedKeyFromTemplatedURL:(id)l baseURL:(id)rL;
+ (id)unsizedKeyFromURL:(id)l;
- (_TUICachedURLImageResource)initWithCache:(id)cache unsizedCacheSet:(id)set queue:(id)queue templateURL:(id)l baseURL:(id)rL url:(id)url naturalSize:(CGSize)size contentsScale:(double)self0 loader:(id)self1;
- (id)newImageResourceWithSize:(CGSize)size;
- (id)sizedKey;
- (id)unsizedKey;
- (void)_q_loadedImage:(id)image insets:(UIEdgeInsets)insets;
- (void)loadResource;
@end

@implementation _TUICachedURLImageResource

- (_TUICachedURLImageResource)initWithCache:(id)cache unsizedCacheSet:(id)set queue:(id)queue templateURL:(id)l baseURL:(id)rL url:(id)url naturalSize:(CGSize)size contentsScale:(double)self0 loader:(id)self1
{
  height = size.height;
  width = size.width;
  lCopy = l;
  rLCopy = rL;
  urlCopy = url;
  loaderCopy = loader;
  v31.receiver = self;
  v31.super_class = _TUICachedURLImageResource;
  scale = [(_TUICachedImageResource *)&v31 initWithCache:cache unsizedCacheSet:set queue:queue naturalSize:width contentsScale:height, scale];
  v25 = scale;
  if (scale)
  {
    objc_storeStrong(&scale->_loader, loader);
    objc_storeStrong(&v25->super._url, url);
    v26 = [lCopy copy];
    templateURL = v25->_templateURL;
    v25->_templateURL = v26;

    v28 = [rLCopy copy];
    baseURL = v25->_baseURL;
    v25->_baseURL = v28;
  }

  return v25;
}

+ (id)sizedURLFromTemplatedURL:(id)l baseURL:(id)rL naturalSize:(CGSize)size contentsScale:(double)scale
{
  v7 = size.width * scale;
  v8 = size.height * scale;
  rLCopy = rL;
  v10 = [l mutableCopy];
  v11 = v7;
  v12 = [NSString stringWithFormat:@"%d", llroundf(v11)];
  [v10 replaceOccurrencesOfString:@"{w}" withString:v12 options:2 range:{0, objc_msgSend(v10, "length")}];

  v13 = v8;
  v14 = [NSString stringWithFormat:@"%d", llroundf(v13)];
  [v10 replaceOccurrencesOfString:@"{h}" withString:v14 options:2 range:{0, objc_msgSend(v10, "length")}];

  [v10 replaceOccurrencesOfString:@"{c}" withString:&stru_264550 options:2 range:{0, objc_msgSend(v10, "length")}];
  [v10 replaceOccurrencesOfString:@"{f}" withString:@"jpg" options:2 range:{0, objc_msgSend(v10, "length")}];
  v15 = [NSURL URLWithString:v10 relativeToURL:rLCopy];

  return v15;
}

+ (id)sizedKeyFromTemplatedURL:(id)l baseURL:(id)rL naturalSize:(CGSize)size contentScale:(double)scale
{
  v6 = [self sizedURLFromTemplatedURL:l baseURL:rL naturalSize:size.width contentsScale:{size.height, scale}];
  v7 = [[TUIImageResourceCacheKey alloc] initWithURL:v6];

  return v7;
}

+ (id)unsizedKeyFromTemplatedURL:(id)l baseURL:(id)rL
{
  rLCopy = rL;
  v6 = [l mutableCopy];
  [v6 replaceOccurrencesOfString:@"{w}" withString:@"W" options:2 range:{0, objc_msgSend(v6, "length")}];
  [v6 replaceOccurrencesOfString:@"{h}" withString:@"H" options:2 range:{0, objc_msgSend(v6, "length")}];
  [v6 replaceOccurrencesOfString:@"{c}" withString:&stru_264550 options:2 range:{0, objc_msgSend(v6, "length")}];
  [v6 replaceOccurrencesOfString:@"{f}" withString:@"jpg" options:2 range:{0, objc_msgSend(v6, "length")}];
  v7 = [NSURL URLWithString:v6 relativeToURL:rLCopy];

  v8 = [[TUIImageResourceCacheKey alloc] initWithURL:v7];

  return v8;
}

+ (id)sizedKeyFromURL:(id)l
{
  lCopy = l;
  v4 = [[TUIImageResourceCacheKey alloc] initWithURL:lCopy];

  return v4;
}

+ (id)unsizedKeyFromURL:(id)l
{
  lCopy = l;
  v4 = [[TUIImageResourceCacheKey alloc] initWithURL:lCopy];

  return v4;
}

- (id)sizedKey
{
  v2 = [[TUIImageResourceCacheKey alloc] initWithURL:self->super._url];

  return v2;
}

- (id)unsizedKey
{
  templateURL = self->_templateURL;
  if (templateURL)
  {
    v3 = [_TUICachedURLImageResource unsizedKeyFromTemplatedURL:templateURL baseURL:self->_baseURL];
  }

  else
  {
    v3 = [[TUIImageResourceCacheKey alloc] initWithURL:self->super._url];
  }

  return v3;
}

- (void)loadResource
{
  objc_initWeak(&location, self);
  v3 = self->super._url;
  [(_TUICachedImageResource *)self loadLargestLoadedImageAsTemporary];
  loader = self->_loader;
  url = self->super._url;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_A442C;
  v7[3] = &unk_260A48;
  v6 = v3;
  v8 = v6;
  selfCopy = self;
  objc_copyWeak(&v10, &location);
  [(TUIResourceLoading *)loader loadResourceWithURL:url completion:v7];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);
}

- (void)_q_loadedImage:(id)image insets:(UIEdgeInsets)insets
{
  imageCopy = image;
  dispatch_assert_queue_V2(self->super._queue);
  if (imageCopy)
  {
    [imageCopy size];
  }

  else
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  [(_TUICachedImageResource *)self _q_loadIntrinsicSize:width, height];
}

- (id)newImageResourceWithSize:(CGSize)size
{
  templateURL = self->_templateURL;
  WeakRetained = objc_loadWeakRetained(&self->super._cache);
  if (templateURL)
  {
    v6 = self->_templateURL;
    baseURL = self->_baseURL;
    [(_TUICachedImageResource *)self naturalSize];
    v9 = v8;
    v11 = v10;
    [(_TUICachedImageResource *)self contentsScale];
    [WeakRetained imageResourceForTemplatedURL:v6 baseURL:baseURL naturalSize:v9 contentsScale:{v11, v12}];
  }

  else
  {
    url = self->super._url;
    [(_TUICachedImageResource *)self contentsScale];
    [WeakRetained imageResourceForURL:url contentsScale:?];
  }
  v14 = ;

  return v14;
}

@end