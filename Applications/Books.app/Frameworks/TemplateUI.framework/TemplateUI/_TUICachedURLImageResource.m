@interface _TUICachedURLImageResource
+ (id)sizedKeyFromTemplatedURL:(id)a3 baseURL:(id)a4 naturalSize:(CGSize)a5 contentScale:(double)a6;
+ (id)sizedKeyFromURL:(id)a3;
+ (id)sizedURLFromTemplatedURL:(id)a3 baseURL:(id)a4 naturalSize:(CGSize)a5 contentsScale:(double)a6;
+ (id)unsizedKeyFromTemplatedURL:(id)a3 baseURL:(id)a4;
+ (id)unsizedKeyFromURL:(id)a3;
- (_TUICachedURLImageResource)initWithCache:(id)a3 unsizedCacheSet:(id)a4 queue:(id)a5 templateURL:(id)a6 baseURL:(id)a7 url:(id)a8 naturalSize:(CGSize)a9 contentsScale:(double)a10 loader:(id)a11;
- (id)newImageResourceWithSize:(CGSize)a3;
- (id)sizedKey;
- (id)unsizedKey;
- (void)_q_loadedImage:(id)a3 insets:(UIEdgeInsets)a4;
- (void)loadResource;
@end

@implementation _TUICachedURLImageResource

- (_TUICachedURLImageResource)initWithCache:(id)a3 unsizedCacheSet:(id)a4 queue:(id)a5 templateURL:(id)a6 baseURL:(id)a7 url:(id)a8 naturalSize:(CGSize)a9 contentsScale:(double)a10 loader:(id)a11
{
  height = a9.height;
  width = a9.width;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a11;
  v31.receiver = self;
  v31.super_class = _TUICachedURLImageResource;
  v24 = [(_TUICachedImageResource *)&v31 initWithCache:a3 unsizedCacheSet:a4 queue:a5 naturalSize:width contentsScale:height, a10];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_loader, a11);
    objc_storeStrong(&v25->super._url, a8);
    v26 = [v20 copy];
    templateURL = v25->_templateURL;
    v25->_templateURL = v26;

    v28 = [v21 copy];
    baseURL = v25->_baseURL;
    v25->_baseURL = v28;
  }

  return v25;
}

+ (id)sizedURLFromTemplatedURL:(id)a3 baseURL:(id)a4 naturalSize:(CGSize)a5 contentsScale:(double)a6
{
  v7 = a5.width * a6;
  v8 = a5.height * a6;
  v9 = a4;
  v10 = [a3 mutableCopy];
  v11 = v7;
  v12 = [NSString stringWithFormat:@"%d", llroundf(v11)];
  [v10 replaceOccurrencesOfString:@"{w}" withString:v12 options:2 range:{0, objc_msgSend(v10, "length")}];

  v13 = v8;
  v14 = [NSString stringWithFormat:@"%d", llroundf(v13)];
  [v10 replaceOccurrencesOfString:@"{h}" withString:v14 options:2 range:{0, objc_msgSend(v10, "length")}];

  [v10 replaceOccurrencesOfString:@"{c}" withString:&stru_264550 options:2 range:{0, objc_msgSend(v10, "length")}];
  [v10 replaceOccurrencesOfString:@"{f}" withString:@"jpg" options:2 range:{0, objc_msgSend(v10, "length")}];
  v15 = [NSURL URLWithString:v10 relativeToURL:v9];

  return v15;
}

+ (id)sizedKeyFromTemplatedURL:(id)a3 baseURL:(id)a4 naturalSize:(CGSize)a5 contentScale:(double)a6
{
  v6 = [a1 sizedURLFromTemplatedURL:a3 baseURL:a4 naturalSize:a5.width contentsScale:{a5.height, a6}];
  v7 = [[TUIImageResourceCacheKey alloc] initWithURL:v6];

  return v7;
}

+ (id)unsizedKeyFromTemplatedURL:(id)a3 baseURL:(id)a4
{
  v5 = a4;
  v6 = [a3 mutableCopy];
  [v6 replaceOccurrencesOfString:@"{w}" withString:@"W" options:2 range:{0, objc_msgSend(v6, "length")}];
  [v6 replaceOccurrencesOfString:@"{h}" withString:@"H" options:2 range:{0, objc_msgSend(v6, "length")}];
  [v6 replaceOccurrencesOfString:@"{c}" withString:&stru_264550 options:2 range:{0, objc_msgSend(v6, "length")}];
  [v6 replaceOccurrencesOfString:@"{f}" withString:@"jpg" options:2 range:{0, objc_msgSend(v6, "length")}];
  v7 = [NSURL URLWithString:v6 relativeToURL:v5];

  v8 = [[TUIImageResourceCacheKey alloc] initWithURL:v7];

  return v8;
}

+ (id)sizedKeyFromURL:(id)a3
{
  v3 = a3;
  v4 = [[TUIImageResourceCacheKey alloc] initWithURL:v3];

  return v4;
}

+ (id)unsizedKeyFromURL:(id)a3
{
  v3 = a3;
  v4 = [[TUIImageResourceCacheKey alloc] initWithURL:v3];

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
  v9 = self;
  objc_copyWeak(&v10, &location);
  [(TUIResourceLoading *)loader loadResourceWithURL:url completion:v7];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);
}

- (void)_q_loadedImage:(id)a3 insets:(UIEdgeInsets)a4
{
  v7 = a3;
  dispatch_assert_queue_V2(self->super._queue);
  if (v7)
  {
    [v7 size];
  }

  else
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  [(_TUICachedImageResource *)self _q_loadIntrinsicSize:width, height];
}

- (id)newImageResourceWithSize:(CGSize)a3
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