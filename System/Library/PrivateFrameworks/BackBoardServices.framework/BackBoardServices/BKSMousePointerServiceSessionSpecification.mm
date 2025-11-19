@interface BKSMousePointerServiceSessionSpecification
+ (BSServiceInterface)interface;
@end

@implementation BKSMousePointerServiceSessionSpecification

+ (BSServiceInterface)interface
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__BKSMousePointerServiceSessionSpecification_interface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (interface_onceToken != -1)
  {
    dispatch_once(&interface_onceToken, block);
  }

  v2 = interface___interface;

  return v2;
}

void __55__BKSMousePointerServiceSessionSpecification_interface__block_invoke(uint64_t a1)
{
  v8 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1EF579710];
  v2 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1EF5718F0];
  v3 = MEMORY[0x1E698F470];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 interfaceWithIdentifier:v4];

  [v5 setServer:v8];
  [v5 setClient:v2];
  v6 = [v5 copy];
  v7 = interface___interface;
  interface___interface = v6;
}

@end