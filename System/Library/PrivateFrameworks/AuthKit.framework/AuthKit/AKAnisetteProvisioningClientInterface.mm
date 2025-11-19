@interface AKAnisetteProvisioningClientInterface
+ (id)XPCInterface;
@end

@implementation AKAnisetteProvisioningClientInterface

+ (id)XPCInterface
{
  v5 = &XPCInterface_onceToken_11;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_36);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = XPCInterface_interface_10;

  return v2;
}

uint64_t __53__AKAnisetteProvisioningClientInterface_XPCInterface__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:{&unk_1F07BA310, a1, a1}];
  v2 = XPCInterface_interface_10;
  XPCInterface_interface_10 = v1;
  return MEMORY[0x1E69E5920](v2);
}

@end