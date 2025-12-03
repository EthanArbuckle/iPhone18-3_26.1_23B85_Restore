@interface DDDeviceAdvertiserSceneViewController
- (_TtC17DeviceDiscoveryUI37DDDeviceAdvertiserSceneViewController)initWithCoder:(id)coder;
- (_TtC17DeviceDiscoveryUI37DDDeviceAdvertiserSceneViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_deviceDiscoveryDismiss;
@end

@implementation DDDeviceAdvertiserSceneViewController

- (_TtC17DeviceDiscoveryUI37DDDeviceAdvertiserSceneViewController)initWithCoder:(id)coder
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
    selfCopy = self;
    sceneViewController = [v2 sceneViewController];
    [sceneViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (_TtC17DeviceDiscoveryUI37DDDeviceAdvertiserSceneViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end