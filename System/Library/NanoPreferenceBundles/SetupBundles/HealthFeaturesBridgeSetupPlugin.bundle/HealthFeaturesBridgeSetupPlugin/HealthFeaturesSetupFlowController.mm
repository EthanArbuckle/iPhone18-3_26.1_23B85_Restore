@interface HealthFeaturesSetupFlowController
+ (BOOL)controllerNeedsToRun;
- (id)viewController;
- (void)miniFlowStepComplete:(id)a3;
- (void)miniFlowStepComplete:(id)a3 nextControllerClass:(Class)a4;
@end

@implementation HealthFeaturesSetupFlowController

- (id)viewController
{
  v2 = self;
  v5 = sub_8498(v2, v3, v4);

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

- (void)miniFlowStepComplete:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_8DB4(a3);
  swift_unknownObjectRelease();
}

- (void)miniFlowStepComplete:(id)a3 nextControllerClass:(Class)a4
{
  if (a4)
  {
    ObjCClassMetadata = swift_getObjCClassMetadata();
  }

  else
  {
    ObjCClassMetadata = 0;
  }

  swift_unknownObjectRetain();
  v6 = self;
  sub_A530(ObjCClassMetadata);
  swift_unknownObjectRelease();
}

@end