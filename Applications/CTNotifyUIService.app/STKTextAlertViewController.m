@interface STKTextAlertViewController
- (BOOL)_sendsResponseUponDisplay;
- (BOOL)validateAction:(id)a3;
- (id)alertText;
- (id)newBottomBar;
- (id)newTopBar;
- (void)accept:(id)a3;
- (void)dismiss;
- (void)dismiss:(id)a3;
- (void)leftNavigationButtonPressed;
@end

@implementation STKTextAlertViewController

- (BOOL)validateAction:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_sendsResponseUponDisplay
{
  v2 = [(STKBaseAlertViewController *)self sessionAction];
  v3 = [v2 behavior];
  v4 = [v3 shouldSendResponseUponDisplay];

  return v4;
}

- (id)newTopBar
{
  if ([(STKTextAlertViewController *)self _sendsResponseUponDisplay])
  {
    return 0;
  }

  v3 = objc_alloc_init(UINavigationBar);
  [v3 setDelegate:self];
  [v3 _setHidesShadow:1];
  [v3 setBarStyle:1];
  v4 = objc_alloc_init(UIImage);
  [v3 setBackgroundImage:v4 forBarMetrics:0];

  v5 = [UINavigationItem alloc];
  v6 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
  v7 = [v6 localizedStringForKey:@"BACK" value:&stru_100018670 table:@"SIMToolkitUI"];
  v8 = [v5 initWithTitle:v7];

  [v3 pushNavigationItem:v8 animated:0];
  v9 = [[UINavigationItem alloc] initWithTitle:&stru_100018670];
  [v3 pushNavigationItem:v9 animated:0];

  return v3;
}

- (id)newBottomBar
{
  v3 = [(STKTextAlertViewController *)self interfaceOrientation];
  if ([(STKTextAlertViewController *)self _sendsResponseUponDisplay])
  {
    v4 = [[TPBottomSingleButtonBar alloc] initWithDefaultSizeForOrientation:v3];
    v5 = [TPButton alloc];
    v6 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
    v7 = [v6 localizedStringForKey:@"DISMISS_SIM_TOOLKIT" value:&stru_100018670 table:@"SIMToolkitUI"];
    v8 = [v5 initWithTitle:v7 icon:0 color:4 frame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];

    [v8 setBlursBackground:0];
    [v8 addTarget:self action:"dismiss:" forControlEvents:64];
    v9 = [UIColor colorWithRed:0.105882353 green:0.533333333 blue:0.91372549 alpha:1.0];
    [v8 setTitleColor:v9 forState:0];

    [v4 setButton:v8 andStyle:1];
  }

  else
  {
    v4 = [[TPBottomDoubleButtonBar alloc] initWithDefaultSizeForOrientation:v3];
    v10 = [TPButton alloc];
    v11 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
    v12 = [v11 localizedStringForKey:@"CANCEL" value:&stru_100018670 table:@"SIMToolkitUI"];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v16 = [v10 initWithTitle:v12 icon:0 color:4 frame:{CGRectZero.origin.x, y, width, height}];

    [v16 setBlursBackground:0];
    [v16 setAutoresizingMask:0];
    [v16 setContentMode:3];
    [v16 addTarget:self action:"dismiss:" forControlEvents:64];
    v17 = [UIColor colorWithRed:0.105882353 green:0.533333333 blue:0.91372549 alpha:1.0];
    [v16 setTitleColor:v17 forState:0];

    [v4 setButton:v16 andStyle:1];
    [v16 setTitleVerticalOffset:-1.0];
    v18 = [TPButton alloc];
    v19 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
    v20 = [v19 localizedStringForKey:@"ACCEPT" value:&stru_100018670 table:@"SIMToolkitUI"];
    v8 = [v18 initWithTitle:v20 icon:0 color:4 frame:{CGRectZero.origin.x, y, width, height}];

    [v8 setBlursBackground:0];
    [v8 setAutoresizingMask:0];
    [v8 setContentMode:3];
    [v8 addTarget:self action:"accept:" forControlEvents:64];
    v21 = [UIColor colorWithRed:0.105882353 green:0.533333333 blue:0.91372549 alpha:1.0];
    [v8 setTitleColor:v21 forState:0];

    [v4 setButton2:v8 andStyle:1];
  }

  [v8 setTitleVerticalOffset:-1.0];
  v22 = +[UIColor clearColor];
  [v4 setBackgroundColor:v22];

  return v4;
}

- (void)leftNavigationButtonPressed
{
  if (![(STKTextAlertViewController *)self _sendsResponseUponDisplay])
  {
    v3 = [(STKBaseAlertViewController *)self sessionAction];
    [v3 sendResponse:4];
  }

  [(STKTextAlertViewController *)self dismiss];
}

- (id)alertText
{
  v2 = [(STKBaseAlertViewController *)self sessionAction];
  v3 = [v2 sessionData];
  v4 = [v3 text];

  return v4;
}

- (void)accept:(id)a3
{
  if (![(STKTextAlertViewController *)self _sendsResponseUponDisplay])
  {
    v4 = [(STKBaseAlertViewController *)self sessionAction];
    [v4 sendResponse:0];
  }

  [(STKTextAlertViewController *)self dismiss];
}

- (void)dismiss:(id)a3
{
  if (![(STKTextAlertViewController *)self _sendsResponseUponDisplay])
  {
    v4 = [(STKBaseAlertViewController *)self sessionAction];
    [v4 sendResponse:1];
  }

  [(STKTextAlertViewController *)self dismiss];
}

- (void)dismiss
{
  [(STKBaseAlertViewController *)self clearTimeoutTimer];
  v3.receiver = self;
  v3.super_class = STKTextAlertViewController;
  [(STKBaseAlertViewController *)&v3 dismiss];
}

@end