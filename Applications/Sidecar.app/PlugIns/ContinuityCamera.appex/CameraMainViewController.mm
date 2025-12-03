@interface CameraMainViewController
- (CameraMainViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)application:(id)application supportedInterfaceOrientationsFor:(id)for;
- (void)_layerdump;
- (void)documentCameraViewController:(id)controller didFinishWithScan:(id)scan;
- (void)documentCameraViewControllerDidCancel:(id)cancel;
- (void)loadView;
- (void)requestDidStart:(id)start;
- (void)sidecarServiceActive;
- (void)sidecarServiceVolumeDownButtonPressed:(BOOL)pressed;
- (void)sidecarServiceVolumeUpButtonPressed:(BOOL)pressed;
@end

@implementation CameraMainViewController

- (void)loadView
{
  selfCopy = self;
  sub_100001C8C();
}

- (void)_layerdump
{
  selfCopy = self;
  sub_1000021F0();
}

- (unint64_t)application:(id)application supportedInterfaceOrientationsFor:(id)for
{
  applicationCopy = application;
  forCopy = for;
  selfCopy = self;
  v9 = sub_100002508();

  return v9;
}

- (void)sidecarServiceVolumeUpButtonPressed:(BOOL)pressed
{
  selfCopy = self;
  sub_1000025C8(pressed);
}

- (void)sidecarServiceVolumeDownButtonPressed:(BOOL)pressed
{
  selfCopy = self;
  sub_100002938(pressed);
}

- (void)sidecarServiceActive
{
  selfCopy = self;
  sub_1000029A0();
}

- (CameraMainViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_100008964();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_100002A10(v5, v7, bundle);
}

- (void)requestDidStart:(id)start
{
  startCopy = start;
  selfCopy = self;
  sub_100002BBC(startCopy);
}

- (void)documentCameraViewController:(id)controller didFinishWithScan:(id)scan
{
  controllerCopy = controller;
  scanCopy = scan;
  selfCopy = self;
  sub_100003CD4(selfCopy, scanCopy);
}

- (void)documentCameraViewControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  sub_1000045B8();
}

@end