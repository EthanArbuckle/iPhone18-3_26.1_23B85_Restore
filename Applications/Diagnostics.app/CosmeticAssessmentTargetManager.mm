@interface CosmeticAssessmentTargetManager
+ (id)sharedInstance;
- (void)receivedPresentCosmeticTargetFlowCommandWithAction:(id)a3;
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

- (void)receivedPresentCosmeticTargetFlowCommandWithAction:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001387D4(v4);
}

@end