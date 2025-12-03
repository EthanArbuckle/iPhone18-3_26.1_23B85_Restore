@interface BSUIMappedImageCacheOptions
+ (id)optionsWithContainerPathProvider:(id)provider;
@end

@implementation BSUIMappedImageCacheOptions

+ (id)optionsWithContainerPathProvider:(id)provider
{
  providerCopy = provider;
  v6 = objc_alloc_init(self);
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 1, provider);
  }

  return v7;
}

@end