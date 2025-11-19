@interface RCPlatterViewControllerCoordinator
- (RCPlatterViewControllerCoordinator)init;
- (id)recordingStartTimeInfo;
- (void)stopCapturingForPlatterViewController:(id)a3;
@end

@implementation RCPlatterViewControllerCoordinator

- (id)recordingStartTimeInfo
{
  v2 = [objc_opt_self() sharedAppDelegate];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 defaultSceneDelegate];

    if (v4)
    {
      v5 = [v4 mainViewController];

      v6 = [v5 recordingStartTimeInfo];
      v2 = v6;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

- (void)stopCapturingForPlatterViewController:(id)a3
{
  v3 = [objc_opt_self() sharedAppDelegate];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 defaultSceneDelegate];

    if (v5)
    {
      v6 = [v5 mainViewController];

      [v6 endRecording];
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