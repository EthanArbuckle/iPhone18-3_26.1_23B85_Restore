@interface AVManagedAssetCache
+ (id)assetCacheForHTTPLiveStreamingWithURL:(id)l;
+ (id)assetCacheForProgressiveDownloadAndHTTPLiveStreamingWithURL:(id)l;
+ (id)assetCacheForProgressiveDownloadWithURL:(id)l;
+ (id)assetCacheWithURL:(id)l;
- (AVManagedAssetCache)initWithURL:(id)l enableCRABSCache:(BOOL)cache enableHLSCache:(BOOL)sCache;
- (id)allKeys;
- (id)lastModifiedDateOfEntryForKey:(id)key;
- (int64_t)currentSize;
- (int64_t)maxEntrySize;
- (int64_t)maxSize;
- (int64_t)sizeOfEntryForKey:(id)key;
- (void)dealloc;
- (void)enableAutomaticCacheSizeManagement;
- (void)removeEntryForKey:(id)key;
- (void)setMaxEntrySize:(int64_t)size;
- (void)setMaxSize:(int64_t)size;
@end

@implementation AVManagedAssetCache

+ (id)assetCacheWithURL:(id)l
{
  v3 = [[AVManagedAssetCache alloc] initWithURL:l];

  return v3;
}

+ (id)assetCacheForHTTPLiveStreamingWithURL:(id)l
{
  v3 = [[AVManagedAssetCache alloc] initWithURL:l enableCRABSCache:0 enableHLSCache:1];

  return v3;
}

+ (id)assetCacheForProgressiveDownloadWithURL:(id)l
{
  v3 = [[AVManagedAssetCache alloc] initWithURL:l enableCRABSCache:1 enableHLSCache:0];

  return v3;
}

+ (id)assetCacheForProgressiveDownloadAndHTTPLiveStreamingWithURL:(id)l
{
  v3 = [[AVManagedAssetCache alloc] initWithURL:l enableCRABSCache:1 enableHLSCache:1];

  return v3;
}

- (AVManagedAssetCache)initWithURL:(id)l enableCRABSCache:(BOOL)cache enableHLSCache:(BOOL)sCache
{
  v11.receiver = self;
  v11.super_class = AVManagedAssetCache;
  _init = [(AVAssetCache *)&v11 _init];
  if (_init)
  {
    priv = objc_alloc_init(AVManagedAssetCacheInternal);
    _init->_priv = priv;
    if (priv)
    {
      if (l)
      {
        _init->_priv->url = [l copy];
        priv = _init->_priv;
      }

      priv->enableCRABSCache = cache;
      _init->_priv->enableHLSCache = sCache;
      CFRetain(_init->_priv);
    }

    else
    {

      return 0;
    }
  }

  return _init;
}

- (void)dealloc
{
  priv = self->_priv;
  if (priv)
  {

    CFRelease(self->_priv);
  }

  v4.receiver = self;
  v4.super_class = AVManagedAssetCache;
  [(AVManagedAssetCache *)&v4 dealloc];
}

- (int64_t)maxSize
{
  [(NSURL *)self->_priv->url absoluteString];
  FigShared_CopyDiskCacheParams();
  return 0;
}

- (void)setMaxSize:(int64_t)size
{
  if (size >= 1)
  {
    absoluteString = [(NSURL *)self->_priv->url absoluteString];

    MEMORY[0x1EEDCD960](absoluteString, size, 0, 0);
  }
}

- (int64_t)maxEntrySize
{
  [(NSURL *)self->_priv->url absoluteString];
  FigShared_CopyDiskCacheParams();
  return 0;
}

- (void)setMaxEntrySize:(int64_t)size
{
  if (size >= 1)
  {
    absoluteString = [(NSURL *)self->_priv->url absoluteString];

    MEMORY[0x1EEDCD960](absoluteString, 0, size, 0);
  }
}

- (int64_t)currentSize
{
  [(NSURL *)self->_priv->url absoluteString];
  FigShared_CopyDiskCacheParams();
  return 0;
}

- (void)enableAutomaticCacheSizeManagement
{
  absoluteString = [(NSURL *)self->_priv->url absoluteString];

  MEMORY[0x1EEDCD960](absoluteString, 0, 0, 1);
}

- (void)removeEntryForKey:(id)key
{
  absoluteString = [(NSURL *)self->_priv->url absoluteString];

  MEMORY[0x1EEDCD950](absoluteString, key);
}

- (int64_t)sizeOfEntryForKey:(id)key
{
  [(NSURL *)self->_priv->url absoluteString];
  FigShared_GetCacheFileSize();
  return 0;
}

- (id)lastModifiedDateOfEntryForKey:(id)key
{
  [(NSURL *)self->_priv->url absoluteString];
  FigShared_CopyCacheLastModifiedDate();
  return 0;
}

- (id)allKeys
{
  [(NSURL *)self->_priv->url absoluteString];
  FigShared_CopyDiskCacheCheckedInIDs();
  return 0;
}

@end