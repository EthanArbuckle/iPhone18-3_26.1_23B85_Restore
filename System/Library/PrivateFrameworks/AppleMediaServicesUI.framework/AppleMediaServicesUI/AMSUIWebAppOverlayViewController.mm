@interface AMSUIWebAppOverlayViewController
- (AMSUIWebAppOverlayViewController)initWithAppAdamID:(id)a3 hostBundleIdentifier:(id)a4;
- (AMSUIWebAppOverlayViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)preload;
- (id)presentingViewControllerForLockupView:(id)a3;
- (void)loadView;
- (void)lockupView:(id)a3 didFailRequestWithError:(id)a4;
- (void)lockupViewDidBeginRequest:(id)a3;
- (void)lockupViewDidFinishRequest:(id)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation AMSUIWebAppOverlayViewController

- (AMSUIWebAppOverlayViewController)initWithAppAdamID:(id)a3 hostBundleIdentifier:(id)a4
{
  v4 = sub_1BB1DD378();
  v6 = v5;
  v7 = sub_1BB1DD378();
  return sub_1BB12B8E0(v4, v6, v7, v8);
}

- (AMSUIWebAppOverlayViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1BB1DD378();
  }

  v5 = a4;
  sub_1BB12B9FC();
}

- (void)loadView
{
  v2 = self;
  sub_1BB12BB64();
}

- (id)preload
{
  v2 = self;
  v3 = sub_1BB12C6EC();

  return v3;
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1BB12C770();
}

- (id)presentingViewControllerForLockupView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BB12C9C8();

  return 0;
}

- (void)lockupViewDidBeginRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BB12CC44();
}

- (void)lockupViewDidFinishRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BB12CEC8();
}

- (void)lockupView:(id)a3 didFailRequestWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_1BB12D198();
}

@end