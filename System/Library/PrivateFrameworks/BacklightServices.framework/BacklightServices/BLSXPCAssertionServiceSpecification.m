@interface BLSXPCAssertionServiceSpecification
+ (BSServiceInterface)interface;
@end

@implementation BLSXPCAssertionServiceSpecification

+ (BSServiceInterface)interface
{
  if (interface_onceToken_0 != -1)
  {
    +[BLSXPCAssertionServiceSpecification interface];
  }

  v3 = interface___interface_0;

  return v3;
}

void __48__BLSXPCAssertionServiceSpecification_interface__block_invoke()
{
  v0 = MEMORY[0x277CF3278];
  v1 = +[BLSXPCAssertionServiceSpecification identifier];
  v6 = [v0 interfaceWithIdentifier:v1];

  v2 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_2833B1EE0];
  [v6 setServer:v2];

  v3 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_2833A6B48];
  [v6 setClient:v3];

  v4 = [v6 copy];
  v5 = interface___interface_0;
  interface___interface_0 = v4;
}

@end