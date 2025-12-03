@interface CosmeticAssessmentTargetManager
+ (id)sharedInstance;
- (void)receivedPresentCosmeticTargetFlowCommandWithAction:(id)action;
@end

@implementation CosmeticAssessmentTargetManager

+ (id)sharedInstance
{
  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  v3 = qword_10020A5F8;

  return v3;
}

- (void)receivedPresentCosmeticTargetFlowCommandWithAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  sub_1001387D4(actionCopy);
}

@end