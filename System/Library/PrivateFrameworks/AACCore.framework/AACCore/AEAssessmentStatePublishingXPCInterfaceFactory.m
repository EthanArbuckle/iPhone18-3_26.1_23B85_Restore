@interface AEAssessmentStatePublishingXPCInterfaceFactory
- (id)makeInterface;
@end

@implementation AEAssessmentStatePublishingXPCInterfaceFactory

- (id)makeInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284EF9068];
  v3 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v2 setClasses:v3 forSelector:sel_publishAssessmentState_withCompletion_ argumentIndex:0 ofReply:0];

  return v2;
}

@end