@interface RCRecorderAppDelegateDependencyContainer
- (void)applicationWillTerminateWithApplication:(id)a3;
- (void)defaultSceneDidEnterBackground;
- (void)defaultSceneWillResignActive;
@end

@implementation RCRecorderAppDelegateDependencyContainer

- (void)applicationWillTerminateWithApplication:(id)a3
{
  v5 = self;
  sub_1000EE2C0();
  if (*((*(&v5->super.isa + OBJC_IVAR___RCRecorderAppDelegateDependencyContainer_activityManagerStateCoordinator))[2] + 16))
  {

    v3 = Activity.id.getter();
    sub_100146AD8(v3, v4);
  }

  else
  {
  }
}

- (void)defaultSceneDidEnterBackground
{
  v2 = self;
  sub_1000EDEC8();
}

- (void)defaultSceneWillResignActive
{
  v2 = self;
  sub_1000EE478();
}

@end