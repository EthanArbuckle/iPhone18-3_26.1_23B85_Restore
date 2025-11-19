@interface AEAssessmentUIServiceXPCInterfaceFactory
- (id)makeInterface;
@end

@implementation AEAssessmentUIServiceXPCInterfaceFactory

- (id)makeInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284EF9BB0];
  v3 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v2 setClasses:v3 forSelector:sel_activateWithConfiguration_completion_ argumentIndex:0 ofReply:0];

  return v2;
}

@end