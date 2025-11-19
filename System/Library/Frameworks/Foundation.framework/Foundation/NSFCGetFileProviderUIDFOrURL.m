@interface NSFCGetFileProviderUIDFOrURL
@end

@implementation NSFCGetFileProviderUIDFOrURL

void *___NSFCGetFileProviderUIDFOrURL_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/FileProvider.framework/FileProvider", 256);
  if (result)
  {
    result = dlsym(result, "FPFetchDatalessFileResolverUIDAtURL");
    off_1ED43DAF0 = result;
  }

  return result;
}

@end