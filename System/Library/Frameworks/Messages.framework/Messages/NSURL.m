@interface NSURL
@end

@implementation NSURL

void __48__NSURL_MessagesAdditions____ms_cachesDirectory__block_invoke()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v3 = [v0 lastObject];

  v1 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3 isDirectory:1];
  v2 = __ms_cachesDirectory_sCachesDirectory;
  __ms_cachesDirectory_sCachesDirectory = v1;
}

@end