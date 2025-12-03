@interface DocumentScannerViewController
- (_TtC16ContinuityCamera29DocumentScannerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)documentCameraViewController:(id)controller didFinishWithScan:(id)scan;
- (void)documentCameraViewControllerDidCancel:(id)cancel;
- (void)viewDidLoad;
@end

@implementation DocumentScannerViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000080F0();
}

- (void)documentCameraViewController:(id)controller didFinishWithScan:(id)scan
{
  controllerCopy = controller;
  scanCopy = scan;
  selfCopy = self;
  sub_1000082C0(controllerCopy, scanCopy);
}

- (void)documentCameraViewControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  sub_1000083D0(cancelCopy);
}

- (_TtC16ContinuityCamera29DocumentScannerViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_1000084C4(v5, v7, bundle);
}

@end