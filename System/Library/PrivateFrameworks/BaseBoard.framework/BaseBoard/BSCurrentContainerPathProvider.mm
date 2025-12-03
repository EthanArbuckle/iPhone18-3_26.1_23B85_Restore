@interface BSCurrentContainerPathProvider
- (NSURL)cachesPath;
- (NSURL)defaultPath;
- (NSURL)libraryPath;
@end

@implementation BSCurrentContainerPathProvider

- (NSURL)defaultPath
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = NSHomeDirectory();
  v4 = [v2 fileURLWithPath:v3];

  return v4;
}

- (NSURL)libraryPath
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  firstObject = [v3 firstObject];
  v5 = [v2 fileURLWithPath:firstObject];

  return v5;
}

- (NSURL)cachesPath
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  firstObject = [v3 firstObject];
  v5 = [v2 fileURLWithPath:firstObject];

  return v5;
}

@end