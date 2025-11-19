@interface DebugUtil
+ (BOOL)_isInternalInstall;
+ (BOOL)is17Net;
+ (BOOL)isDebugEnabled;
+ (id)allViewControllers;
+ (id)applicationDocumentsDirectory;
+ (id)getIPAddress;
+ (id)sharedApplicationIfPossible;
@end

@implementation DebugUtil

+ (BOOL)isDebugEnabled
{
  if ([a1 _isInternalInstall])
  {
    return 1;
  }

  return [a1 is17Net];
}

+ (BOOL)_isInternalInstall
{
  if (_isInternalInstall_onceToken != -1)
  {
    +[DebugUtil _isInternalInstall];
  }

  return _isInternalInstall_isInternalInstall;
}

void __31__DebugUtil__isInternalInstall__block_invoke(id a1)
{
  v1 = +[NSFileManager defaultManager];
  _isInternalInstall_isInternalInstall = [v1 fileExistsAtPath:@"/AppleInternal"];
}

+ (BOOL)is17Net
{
  v2 = [a1 getIPAddress];
  if ([v2 hasPrefix:@"17."])
  {
    v3 = [v2 componentsSeparatedByString:@"."];
    v4 = [v3 count] == &dword_4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)getIPAddress
{
  v10 = 0;
  v2 = getifaddrs(&v10);
  v3 = 0;
  v4 = v10;
  if (!v2 && v10)
  {
    v3 = 0;
    do
    {
      if (v4->ifa_addr->sa_family == 2)
      {
        v5 = [NSString stringWithUTF8String:v4->ifa_name];
        v6 = [v5 isEqualToString:@"en0"];

        if (v6)
        {
          v7.s_addr = *&v4->ifa_addr->sa_data[2];
          v8 = [NSString stringWithUTF8String:inet_ntoa(v7)];

          v3 = v8;
        }
      }

      v4 = v4->ifa_next;
    }

    while (v4);
    v4 = v10;
  }

  freeifaddrs(v4);

  return v3;
}

+ (id)applicationDocumentsDirectory
{
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 URLsForDirectory:9 inDomains:1];
  v4 = [v3 lastObject];

  return v4;
}

+ (id)allViewControllers
{
  v2 = [a1 sharedApplicationIfPossible];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    v4 = [v2 delegate];
    v5 = [v4 window];

    v6 = [v5 rootViewController];
    if (v6)
    {
      v7 = v6;
      do
      {
        [v3 addObject:v7];
        v8 = [v7 presentedViewController];

        v7 = v8;
      }

      while (v8);
    }
  }

  else
  {
    v3 = &__NSArray0__struct;
  }

  return v3;
}

+ (id)sharedApplicationIfPossible
{
  v2 = [NSClassFromString(@"UIApplication") sharedApplication];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

@end