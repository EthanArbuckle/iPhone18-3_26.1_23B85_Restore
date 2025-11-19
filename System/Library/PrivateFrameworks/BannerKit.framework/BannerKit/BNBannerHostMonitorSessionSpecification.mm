@interface BNBannerHostMonitorSessionSpecification
+ (BSServiceInterface)interface;
@end

@implementation BNBannerHostMonitorSessionSpecification

+ (BSServiceInterface)interface
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__BNBannerHostMonitorSessionSpecification_interface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (interface_onceToken_1 != -1)
  {
    dispatch_once(&interface_onceToken_1, block);
  }

  v2 = interface___interface_1;

  return v2;
}

void __52__BNBannerHostMonitorSessionSpecification_interface__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E698F470];
  v2 = [*(a1 + 32) identifier];
  v3 = [v1 interfaceWithIdentifier:v2];

  v4 = interface___interface_1;
  interface___interface_1 = v3;
}

@end