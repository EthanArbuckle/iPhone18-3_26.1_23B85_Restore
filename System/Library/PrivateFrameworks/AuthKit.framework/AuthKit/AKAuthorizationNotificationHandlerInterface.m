@interface AKAuthorizationNotificationHandlerInterface
+ (id)XPCInterface;
@end

@implementation AKAuthorizationNotificationHandlerInterface

+ (id)XPCInterface
{
  v5 = &XPCInterface_onceToken_10;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_31);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = XPCInterface_interface_9;

  return v2;
}

uint64_t __59__AKAuthorizationNotificationHandlerInterface_XPCInterface__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:{&unk_1F07DCEC8, a1, a1}];
  v2 = XPCInterface_interface_9;
  XPCInterface_interface_9 = v1;
  return MEMORY[0x1E69E5920](v2);
}

@end