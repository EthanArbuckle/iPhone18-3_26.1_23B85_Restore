@interface BNBannerSourceSessionSpecification
+ (BSServiceInterface)interface;
@end

@implementation BNBannerSourceSessionSpecification

+ (BSServiceInterface)interface
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__BNBannerSourceSessionSpecification_interface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (interface_onceToken_0 != -1)
  {
    dispatch_once(&interface_onceToken_0, block);
  }

  v2 = interface___interface_0;

  return v2;
}

void __47__BNBannerSourceSessionSpecification_interface__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E698F470];
  v2 = [*(a1 + 32) identifier];
  v3 = [v1 interfaceWithIdentifier:v2];

  v4 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F43D5338];
  [v3 setServer:v4];

  v5 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F43C1A08];
  [v3 setClient:v5];

  v6 = interface___interface_0;
  interface___interface_0 = v3;
}

@end