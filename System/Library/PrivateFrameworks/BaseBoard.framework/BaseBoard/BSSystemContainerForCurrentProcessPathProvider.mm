@interface BSSystemContainerForCurrentProcessPathProvider
- (NSURL)cachesPath;
- (NSURL)defaultPath;
- (NSURL)libraryPath;
@end

@implementation BSSystemContainerForCurrentProcessPathProvider

- (NSURL)defaultPath
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = BSSystemSharedDirectoryForCurrentProcess();
  v4 = [v2 fileURLWithPath:v3];

  return v4;
}

- (NSURL)libraryPath
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = BSSystemSharedResourcesDirectoryForCurrentProcess();
  v4 = [v2 fileURLWithPath:v3];

  return v4;
}

- (NSURL)cachesPath
{
  libraryPath = [(BSSystemContainerForCurrentProcessPathProvider *)self libraryPath];
  v3 = [libraryPath URLByAppendingPathComponent:@"Caches"];

  return v3;
}

@end