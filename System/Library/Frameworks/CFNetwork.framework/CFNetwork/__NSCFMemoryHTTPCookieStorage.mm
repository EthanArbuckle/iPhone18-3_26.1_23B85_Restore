@interface __NSCFMemoryHTTPCookieStorage
- (__NSCFMemoryHTTPCookieStorage)init;
@end

@implementation __NSCFMemoryHTTPCookieStorage

- (__NSCFMemoryHTTPCookieStorage)init
{
  v3 = _CookieStorageCreateInMemory(*MEMORY[0x1E695E480], a2);
  v6.receiver = self;
  v6.super_class = __NSCFMemoryHTTPCookieStorage;
  v4 = [(NSHTTPCookieStorage *)&v6 _initWithCFHTTPCookieStorage:v3];
  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

@end