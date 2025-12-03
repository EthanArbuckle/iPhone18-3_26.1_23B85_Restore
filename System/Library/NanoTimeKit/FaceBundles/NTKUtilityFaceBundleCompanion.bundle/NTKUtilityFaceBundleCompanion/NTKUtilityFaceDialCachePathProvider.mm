@interface NTKUtilityFaceDialCachePathProvider
- (NSURL)cachesPath;
- (NSURL)defaultPath;
- (NSURL)libraryPath;
@end

@implementation NTKUtilityFaceDialCachePathProvider

- (NSURL)defaultPath
{
  v2 = BSCurrentUserDirectory();
  v3 = [NSURL fileURLWithPath:v2];

  return v3;
}

- (NSURL)libraryPath
{
  defaultPath = [(NTKUtilityFaceDialCachePathProvider *)self defaultPath];
  v3 = [defaultPath URLByAppendingPathComponent:@"Library"];

  return v3;
}

- (NSURL)cachesPath
{
  libraryPath = [(NTKUtilityFaceDialCachePathProvider *)self libraryPath];
  v3 = [libraryPath URLByAppendingPathComponent:@"Caches"];

  return v3;
}

@end