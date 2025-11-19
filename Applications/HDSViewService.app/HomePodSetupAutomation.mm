@interface HomePodSetupAutomation
+ (_TtC14HDSViewService22HomePodSetupAutomation)shared;
- (BOOL)hasAutomationStepResults;
@end

@implementation HomePodSetupAutomation

+ (_TtC14HDSViewService22HomePodSetupAutomation)shared
{
  if (qword_100101608 != -1)
  {
    swift_once();
  }

  v3 = qword_1001086C0;

  return v3;
}

- (BOOL)hasAutomationStepResults
{
  if ((*(&self->super.isa + OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_automationStepResults))[2])
  {
    return 1;
  }

  else
  {
    return *(&self->super.isa + OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_alwaysSelectDefault);
  }
}

@end