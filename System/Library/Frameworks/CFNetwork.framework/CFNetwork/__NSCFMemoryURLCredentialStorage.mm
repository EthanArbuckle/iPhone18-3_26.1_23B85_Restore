@interface __NSCFMemoryURLCredentialStorage
- (__NSCFMemoryURLCredentialStorage)init;
@end

@implementation __NSCFMemoryURLCredentialStorage

- (__NSCFMemoryURLCredentialStorage)init
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"kCFURLStorageSessionIsPrivate";
  v9[0] = *MEMORY[0x1E695E4D0];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v4 = _CFURLCredentialStorageCreateWithProperties(*MEMORY[0x1E695E480], 0, v3);
  v7.receiver = self;
  v7.super_class = __NSCFMemoryURLCredentialStorage;
  v5 = [(NSURLCredentialStorage *)&v7 _initWithCFURLCredentialStorage:v4];
  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

@end