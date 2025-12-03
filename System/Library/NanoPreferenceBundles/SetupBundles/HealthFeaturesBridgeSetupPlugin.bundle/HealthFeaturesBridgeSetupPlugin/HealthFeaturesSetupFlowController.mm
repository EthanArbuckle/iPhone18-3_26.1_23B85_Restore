@interface HealthFeaturesSetupFlowController
+ (BOOL)controllerNeedsToRun;
- (id)viewController;
- (void)miniFlowStepComplete:(id)complete;
- (void)miniFlowStepComplete:(id)complete nextControllerClass:(Class)class;
@end

@implementation HealthFeaturesSetupFlowController

- (id)viewController
{
  selfCopy = self;
  v5 = sub_8498(selfCopy, v3, v4);

  return v5;
}

+ (BOOL)controllerNeedsToRun
{
  if (HAFeatureFlagBridgeHealthFeaturesOnboardingEnabled())
  {
    sub_A168();
    v3 = v2 ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (void)miniFlowStepComplete:(id)complete
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_8DB4(complete);
  swift_unknownObjectRelease();
}

- (void)miniFlowStepComplete:(id)complete nextControllerClass:(Class)class
{
  if (class)
  {
    ObjCClassMetadata = swift_getObjCClassMetadata();
  }

  else
  {
    ObjCClassMetadata = 0;
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  sub_A530(ObjCClassMetadata);
  swift_unknownObjectRelease();
}

@end