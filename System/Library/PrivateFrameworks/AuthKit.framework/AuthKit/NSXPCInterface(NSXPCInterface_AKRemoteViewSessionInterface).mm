@interface NSXPCInterface(NSXPCInterface_AKRemoteViewSessionInterface)
+ (id)remoteViewSessionInterface;
@end

@implementation NSXPCInterface(NSXPCInterface_AKRemoteViewSessionInterface)

+ (id)remoteViewSessionInterface
{
  v3 = &remoteViewSessionInterface_once;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_24);
  if (*v3 != -1)
  {
    dispatch_once(v3, location);
  }

  objc_storeStrong(&location, 0);
  v0 = remoteViewSessionInterface_interface;

  return v0;
}

@end