@interface RCPlatterViewControllerCoordinator
- (RCPlatterViewControllerCoordinator)init;
- (id)recordingStartTimeInfo;
- (void)stopCapturingForPlatterViewController:(id)controller;
@end

@implementation RCPlatterViewControllerCoordinator

- (id)recordingStartTimeInfo
{
  sharedAppDelegate = [objc_opt_self() sharedAppDelegate];
  if (sharedAppDelegate)
  {
    v3 = sharedAppDelegate;
    defaultSceneDelegate = [sharedAppDelegate defaultSceneDelegate];

    if (defaultSceneDelegate)
    {
      mainViewController = [defaultSceneDelegate mainViewController];

      recordingStartTimeInfo = [mainViewController recordingStartTimeInfo];
      sharedAppDelegate = recordingStartTimeInfo;
    }

    else
    {
      sharedAppDelegate = 0;
    }
  }

  return sharedAppDelegate;
}

- (void)stopCapturingForPlatterViewController:(id)controller
{
  sharedAppDelegate = [objc_opt_self() sharedAppDelegate];
  if (sharedAppDelegate)
  {
    v4 = sharedAppDelegate;
    defaultSceneDelegate = [sharedAppDelegate defaultSceneDelegate];

    if (defaultSceneDelegate)
    {
      mainViewController = [defaultSceneDelegate mainViewController];

      [mainViewController endRecording];
    }
  }
}

- (RCPlatterViewControllerCoordinator)init
{
  v3 = OBJC_IVAR___RCPlatterViewControllerCoordinator_frameRateManager;
  type metadata accessor for FrameRateManager();
  swift_allocObject();
  *(&self->super.isa + v3) = sub_100112BE0();
  v5.receiver = self;
  v5.super_class = type metadata accessor for PlatterViewControllerCoordinator();
  return [(RCPlatterViewControllerCoordinator *)&v5 init];
}

@end