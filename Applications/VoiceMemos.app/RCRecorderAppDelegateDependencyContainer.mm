@interface RCRecorderAppDelegateDependencyContainer
- (void)applicationWillTerminateWithApplication:(id)application;
- (void)defaultSceneDidEnterBackground;
- (void)defaultSceneWillResignActive;
@end

@implementation RCRecorderAppDelegateDependencyContainer

- (void)applicationWillTerminateWithApplication:(id)application
{
  selfCopy = self;
  sub_1000EE2C0();
  if (*((*(&selfCopy->super.isa + OBJC_IVAR___RCRecorderAppDelegateDependencyContainer_activityManagerStateCoordinator))[2] + 16))
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
  selfCopy = self;
  sub_1000EDEC8();
}

- (void)defaultSceneWillResignActive
{
  selfCopy = self;
  sub_1000EE478();
}

@end