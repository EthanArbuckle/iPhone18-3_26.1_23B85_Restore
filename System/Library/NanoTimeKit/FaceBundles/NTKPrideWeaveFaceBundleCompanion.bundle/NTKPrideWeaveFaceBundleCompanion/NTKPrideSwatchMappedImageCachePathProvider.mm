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
  defaultPath = [(NTKPrideSwatchMappedImageCachePathProvider *)self defaultPath];
  v3 = [defaultPath URLByAppendingPathComponent:@"Library"];

  return v3;
}

- (NSURL)cachesPath
{
  libraryPath = [(NTKPrideSwatchMappedImageCachePathProvider *)self libraryPath];
  v3 = [libraryPath URLByAppendingPathComponent:@"Caches"];

  return v3;
}

@end