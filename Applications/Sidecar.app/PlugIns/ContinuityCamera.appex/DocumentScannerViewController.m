@interface DocumentScannerViewController
- (_TtC16ContinuityCamera29DocumentScannerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)documentCameraViewController:(id)a3 didFinishWithScan:(id)a4;
- (void)documentCameraViewControllerDidCancel:(id)a3;
- (void)viewDidLoad;
@end

@implementation DocumentScannerViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1000080F0();
}

- (void)documentCameraViewController:(id)a3 didFinishWithScan:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1000082C0(v6, v7);
}

- (void)documentCameraViewControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000083D0(v4);
}

- (_TtC16ContinuityCamera29DocumentScannerViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_1000084C4(v5, v7, a4);
}

@end