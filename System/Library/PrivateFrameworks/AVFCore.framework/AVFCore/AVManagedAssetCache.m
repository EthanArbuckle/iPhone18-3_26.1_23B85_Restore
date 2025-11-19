@interface AVManagedAssetCache
+ (id)assetCacheForHTTPLiveStreamingWithURL:(id)a3;
+ (id)assetCacheForProgressiveDownloadAndHTTPLiveStreamingWithURL:(id)a3;
+ (id)assetCacheForProgressiveDownloadWithURL:(id)a3;
+ (id)assetCacheWithURL:(id)a3;
- (AVManagedAssetCache)initWithURL:(id)a3 enableCRABSCache:(BOOL)a4 enableHLSCache:(BOOL)a5;
- (id)allKeys;
- (id)lastModifiedDateOfEntryForKey:(id)a3;
- (int64_t)currentSize;
- (int64_t)maxEntrySize;
- (int64_t)maxSize;
- (int64_t)sizeOfEntryForKey:(id)a3;
- (void)dealloc;
- (void)enableAutomaticCacheSizeManagement;
- (void)removeEntryForKey:(id)a3;
- (void)setMaxEntrySize:(int64_t)a3;
- (void)setMaxSize:(int64_t)a3;
@end

@implementation AVManagedAssetCache

+ (id)assetCacheWithURL:(id)a3
{
  v3 = [[AVManagedAssetCache alloc] initWithURL:a3];

  return v3;
}

+ (id)assetCacheForHTTPLiveStreamingWithURL:(id)a3
{
  v3 = [[AVManagedAssetCache alloc] initWithURL:a3 enableCRABSCache:0 enableHLSCache:1];

  return v3;
}

+ (id)assetCacheForProgressiveDownloadWithURL:(id)a3
{
  v3 = [[AVManagedAssetCache alloc] initWithURL:a3 enableCRABSCache:1 enableHLSCache:0];

  return v3;
}

+ (id)assetCacheForProgressiveDownloadAndHTTPLiveStreamingWithURL:(id)a3
{
  v3 = [[AVManagedAssetCache alloc] initWithURL:a3 enableCRABSCache:1 enableHLSCache:1];

  return v3;
}

- (AVManagedAssetCache)initWithURL:(id)a3 enableCRABSCache:(BOOL)a4 enableHLSCache:(BOOL)a5
{
  v11.receiver = self;
  v11.super_class = AVManagedAssetCache;
  v8 = [(AVAssetCache *)&v11 _init];
  if (v8)
  {
    priv = objc_alloc_init(AVManagedAssetCacheInternal);
    v8->_priv = priv;
    if (priv)
    {
      if (a3)
      {
        v8->_priv->url = [a3 copy];
        priv = v8->_priv;
      }

      priv->enableCRABSCache = a4;
      v8->_priv->enableHLSCache = a5;
      CFRetain(v8->_priv);
    }

    else
    {

      return 0;
    }
  }

  return v8;
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

- (void)setMaxSize:(int64_t)a3
{
  if (a3 >= 1)
  {
    v5 = [(NSURL *)self->_priv->url absoluteString];

    MEMORY[0x1EEDCD960](v5, a3, 0, 0);
  }
}

- (int64_t)maxEntrySize
{
  [(NSURL *)self->_priv->url absoluteString];
  FigShared_CopyDiskCacheParams();
  return 0;
}

- (void)setMaxEntrySize:(int64_t)a3
{
  if (a3 >= 1)
  {
    v5 = [(NSURL *)self->_priv->url absoluteString];

    MEMORY[0x1EEDCD960](v5, 0, a3, 0);
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
  v2 = [(NSURL *)self->_priv->url absoluteString];

  MEMORY[0x1EEDCD960](v2, 0, 0, 1);
}

- (void)removeEntryForKey:(id)a3
{
  v4 = [(NSURL *)self->_priv->url absoluteString];

  MEMORY[0x1EEDCD950](v4, a3);
}

- (int64_t)sizeOfEntryForKey:(id)a3
{
  [(NSURL *)self->_priv->url absoluteString];
  FigShared_GetCacheFileSize();
  return 0;
}

- (id)lastModifiedDateOfEntryForKey:(id)a3
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