@interface HostRemoteViewController
+ (id)exportedInterface;
+ (id)serviceViewControllerInterface;
- (HostRemoteViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)sidecarServiceDisableDisplaySleep:(BOOL)sleep;
- (void)sidecarServiceOrientationChanged;
- (void)sidecarServiceViewControllerAnimate:(int64_t)animate completion:(id)completion;
- (void)sidecarServiceViewControllerBackgroundStyle:(int64_t)style;
- (void)sidecarServiceViewControllerWantsVolumeButtonEvents:(BOOL)events;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation HostRemoteViewController

- (void)viewServiceDidTerminateWithError:(id)error
{
  selfCopy = self;
  errorCopy = error;
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

- (HostRemoteViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1000047C8(v5, v7, bundle);
}

- (void)sidecarServiceViewControllerAnimate:(int64_t)animate completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  selfCopy = self;
  sub_1000049D4(animate, selfCopy, v6);
  _Block_release(v6);
}

- (void)sidecarServiceViewControllerWantsVolumeButtonEvents:(BOOL)events
{
  selfCopy = self;
  sub_100004B30(events);
}

- (void)sidecarServiceViewControllerBackgroundStyle:(int64_t)style
{
  selfCopy = self;
  sub_100004C1C(style);
}

- (void)sidecarServiceOrientationChanged
{
  selfCopy = self;
  sub_100004D04();
}

- (void)sidecarServiceDisableDisplaySleep:(BOOL)sleep
{
  selfCopy = self;
  sub_100004DD0(sleep);
}

@end