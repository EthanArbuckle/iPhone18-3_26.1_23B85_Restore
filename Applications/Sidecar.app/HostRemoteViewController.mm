@interface HostRemoteViewController
+ (id)exportedInterface;
+ (id)serviceViewControllerInterface;
- (HostRemoteViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)sidecarServiceDisableDisplaySleep:(BOOL)a3;
- (void)sidecarServiceOrientationChanged;
- (void)sidecarServiceViewControllerAnimate:(int64_t)a3 completion:(id)a4;
- (void)sidecarServiceViewControllerBackgroundStyle:(int64_t)a3;
- (void)sidecarServiceViewControllerWantsVolumeButtonEvents:(BOOL)a3;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation HostRemoteViewController

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v4 = self;
  v5 = a3;
  sub_100004620();
}

+ (id)exportedInterface
{
  v2 = sub_100004740(&protocolRef_SidecarServiceHostInterface);

  return v2;
}

+ (id)serviceViewControllerInterface
{
  v2 = sub_100004740(&protocolRef_SidecarServiceServiceInterface);

  return v2;
}

- (HostRemoteViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1000047C8(v5, v7, a4);
}

- (void)sidecarServiceViewControllerAnimate:(int64_t)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = self;
  sub_1000049D4(a3, v7, v6);
  _Block_release(v6);
}

- (void)sidecarServiceViewControllerWantsVolumeButtonEvents:(BOOL)a3
{
  v4 = self;
  sub_100004B30(a3);
}

- (void)sidecarServiceViewControllerBackgroundStyle:(int64_t)a3
{
  v4 = self;
  sub_100004C1C(a3);
}

- (void)sidecarServiceOrientationChanged
{
  v2 = self;
  sub_100004D04();
}

- (void)sidecarServiceDisableDisplaySleep:(BOOL)a3
{
  v4 = self;
  sub_100004DD0(a3);
}

@end