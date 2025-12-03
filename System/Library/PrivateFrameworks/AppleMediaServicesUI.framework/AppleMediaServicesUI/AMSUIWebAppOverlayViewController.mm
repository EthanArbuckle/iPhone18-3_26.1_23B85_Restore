@interface AMSUIWebAppOverlayViewController
- (AMSUIWebAppOverlayViewController)initWithAppAdamID:(id)d hostBundleIdentifier:(id)identifier;
- (AMSUIWebAppOverlayViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)preload;
- (id)presentingViewControllerForLockupView:(id)view;
- (void)loadView;
- (void)lockupView:(id)view didFailRequestWithError:(id)error;
- (void)lockupViewDidBeginRequest:(id)request;
- (void)lockupViewDidFinishRequest:(id)request;
- (void)viewDidLayoutSubviews;
@end

@implementation AMSUIWebAppOverlayViewController

- (AMSUIWebAppOverlayViewController)initWithAppAdamID:(id)d hostBundleIdentifier:(id)identifier
{
  v4 = sub_1BB1DD378();
  v6 = v5;
  v7 = sub_1BB1DD378();
  return sub_1BB12B8E0(v4, v6, v7, v8);
}

- (AMSUIWebAppOverlayViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1BB1DD378();
  }

  bundleCopy = bundle;
  sub_1BB12B9FC();
}

- (void)loadView
{
  selfCopy = self;
  sub_1BB12BB64();
}

- (id)preload
{
  selfCopy = self;
  v3 = sub_1BB12C6EC();

  return v3;
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1BB12C770();
}

- (id)presentingViewControllerForLockupView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_1BB12C9C8();

  return 0;
}

- (void)lockupViewDidBeginRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  sub_1BB12CC44();
}

- (void)lockupViewDidFinishRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  sub_1BB12CEC8();
}

- (void)lockupView:(id)view didFailRequestWithError:(id)error
{
  viewCopy = view;
  errorCopy = error;
  selfCopy = self;
  sub_1BB12D198();
}

@end