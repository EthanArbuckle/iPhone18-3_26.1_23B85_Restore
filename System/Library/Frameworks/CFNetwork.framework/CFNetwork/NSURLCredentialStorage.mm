@interface NSURLCredentialStorage
+ (NSURLCredentialStorage)sharedCredentialStorage;
@end

@implementation NSURLCredentialStorage

+ (NSURLCredentialStorage)sharedCredentialStorage
{
  if (+[NSURLCredentialStorage sharedCredentialStorage]::sOnce != -1)
  {
    dispatch_once(&+[NSURLCredentialStorage sharedCredentialStorage]::sOnce, &__block_literal_global_17036);
  }

  return +[NSURLCredentialStorage sharedCredentialStorage]::sStorage;
}

void __49__NSURLCredentialStorage_sharedCredentialStorage__block_invoke()
{
  v0 = CFURLCredentialStorageCreate(0);
  +[NSURLCredentialStorage sharedCredentialStorage]::sStorage = [[NSURLCredentialStorage alloc] _initWithCFURLCredentialStorage:v0];
  if (v0)
  {

    CFRelease(v0);
  }
}

@end