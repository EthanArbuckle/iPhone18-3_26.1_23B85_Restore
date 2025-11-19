@interface NSXPCInterface(NSXPCInterface_AKRemoteViewServiceInterface)
+ (id)remoteViewServiceInterface;
@end

@implementation NSXPCInterface(NSXPCInterface_AKRemoteViewServiceInterface)

+ (id)remoteViewServiceInterface
{
  v3 = &remoteViewServiceInterface_once;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_3);
  if (*v3 != -1)
  {
    dispatch_once(v3, location);
  }

  objc_storeStrong(&location, 0);
  v0 = remoteViewServiceInterface_interface;

  return v0;
}

@end