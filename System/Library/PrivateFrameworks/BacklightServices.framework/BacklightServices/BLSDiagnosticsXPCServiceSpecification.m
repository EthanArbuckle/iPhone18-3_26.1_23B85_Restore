@interface BLSDiagnosticsXPCServiceSpecification
+ (BSServiceInterface)interface;
@end

@implementation BLSDiagnosticsXPCServiceSpecification

+ (BSServiceInterface)interface
{
  if (interface_onceToken_1 != -1)
  {
    +[BLSDiagnosticsXPCServiceSpecification interface];
  }

  v3 = interface___interface_1;

  return v3;
}

void __50__BLSDiagnosticsXPCServiceSpecification_interface__block_invoke()
{
  v0 = MEMORY[0x277CF3278];
  v1 = +[BLSDiagnosticsXPCServiceSpecification identifier];
  v5 = [v0 interfaceWithIdentifier:v1];

  v2 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_2833B1FC8];
  [v5 setServer:v2];

  v3 = [v5 copy];
  v4 = interface___interface_1;
  interface___interface_1 = v3;
}

@end