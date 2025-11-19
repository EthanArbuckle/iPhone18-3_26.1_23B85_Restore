@interface BSUIMappedImageCacheOptions
+ (id)optionsWithContainerPathProvider:(id)a3;
@end

@implementation BSUIMappedImageCacheOptions

+ (id)optionsWithContainerPathProvider:(id)a3
{
  v5 = a3;
  v6 = objc_alloc_init(a1);
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 1, a3);
  }

  return v7;
}

@end