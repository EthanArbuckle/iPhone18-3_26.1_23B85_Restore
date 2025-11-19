@interface DDDeviceAdvertiserSceneViewController
- (_TtC17DeviceDiscoveryUI37DDDeviceAdvertiserSceneViewController)initWithCoder:(id)a3;
- (_TtC17DeviceDiscoveryUI37DDDeviceAdvertiserSceneViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_deviceDiscoveryDismiss;
@end

@implementation DDDeviceAdvertiserSceneViewController

- (_TtC17DeviceDiscoveryUI37DDDeviceAdvertiserSceneViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17DeviceDiscoveryUI37DDDeviceAdvertiserSceneViewController_hostingController) = 0;
  result = sub_2381554EC();
  __break(1u);
  return result;
}

- (void)_deviceDiscoveryDismiss
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC17DeviceDiscoveryUI37DDDeviceAdvertiserSceneViewController_hostingController);
  if (v2)
  {
    v4 = self;
    v3 = [v2 sceneViewController];
    [v3 dismissViewControllerAnimated:1 completion:0];
  }
}

- (_TtC17DeviceDiscoveryUI37DDDeviceAdvertiserSceneViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end