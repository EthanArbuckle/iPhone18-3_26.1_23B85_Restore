@interface CameraMainViewController
- (CameraMainViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (unint64_t)application:(id)a3 supportedInterfaceOrientationsFor:(id)a4;
- (void)_layerdump;
- (void)documentCameraViewController:(id)a3 didFinishWithScan:(id)a4;
- (void)documentCameraViewControllerDidCancel:(id)a3;
- (void)loadView;
- (void)requestDidStart:(id)a3;
- (void)sidecarServiceActive;
- (void)sidecarServiceVolumeDownButtonPressed:(BOOL)a3;
- (void)sidecarServiceVolumeUpButtonPressed:(BOOL)a3;
@end

@implementation CameraMainViewController

- (void)loadView
{
  v2 = self;
  sub_100001C8C();
}

- (void)_layerdump
{
  v2 = self;
  sub_1000021F0();
}

- (unint64_t)application:(id)a3 supportedInterfaceOrientationsFor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100002508();

  return v9;
}

- (void)sidecarServiceVolumeUpButtonPressed:(BOOL)a3
{
  v4 = self;
  sub_1000025C8(a3);
}

- (void)sidecarServiceVolumeDownButtonPressed:(BOOL)a3
{
  v4 = self;
  sub_100002938(a3);
}

- (void)sidecarServiceActive
{
  v2 = self;
  sub_1000029A0();
}

- (CameraMainViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_100008964();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_100002A10(v5, v7, a4);
}

- (void)requestDidStart:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100002BBC(v4);
}

- (void)documentCameraViewController:(id)a3 didFinishWithScan:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100003CD4(v8, v7);
}

- (void)documentCameraViewControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000045B8();
}

@end