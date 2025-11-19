@interface NTKPrideSwatchMappedImageCachePathProvider
- (NSURL)cachesPath;
- (NSURL)defaultPath;
- (NSURL)libraryPath;
@end

@implementation NTKPrideSwatchMappedImageCachePathProvider

- (NSURL)defaultPath
{
  v2 = BSCurrentUserDirectory();
  v3 = [NSURL fileURLWithPath:v2];

  return v3;
}

- (NSURL)libraryPath
{
  v2 = [(NTKPrideSwatchMappedImageCachePathProvider *)self defaultPath];
  v3 = [v2 URLByAppendingPathComponent:@"Library"];

  return v3;
}

- (NSURL)cachesPath
{
  v2 = [(NTKPrideSwatchMappedImageCachePathProvider *)self libraryPath];
  v3 = [v2 URLByAppendingPathComponent:@"Caches"];

  return v3;
}

@end