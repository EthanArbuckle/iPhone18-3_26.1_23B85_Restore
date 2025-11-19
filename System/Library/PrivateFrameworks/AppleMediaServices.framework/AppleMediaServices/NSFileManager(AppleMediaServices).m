@interface NSFileManager(AppleMediaServices)
+ (uint64_t)ams_ensureDirectoryExists:()AppleMediaServices;
@end

@implementation NSFileManager(AppleMediaServices)

+ (uint64_t)ams_ensureDirectoryExists:()AppleMediaServices
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AC08]);
    if ([v4 fileExistsAtPath:v3])
    {
      v5 = 1;
    }

    else
    {
      v5 = [v4 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:0];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end