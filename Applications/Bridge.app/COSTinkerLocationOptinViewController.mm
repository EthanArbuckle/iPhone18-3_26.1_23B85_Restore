@interface COSTinkerLocationOptinViewController
- (COSTinkerLocationOptinViewController)init;
- (id)alternateButtonTitle;
- (id)detailString;
- (id)imageResource;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)applyConfirmedOptin:(BOOL)optin;
@end

@implementation COSTinkerLocationOptinViewController

- (COSTinkerLocationOptinViewController)init
{
  v5.receiver = self;
  v5.super_class = COSTinkerLocationOptinViewController;
  v2 = [(COSOptinViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(COSTinkerLocationOptinViewController *)v2 setStyle:602];
  }

  return v3;
}

- (id)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"LOCATION_TINKER_TITLE_%@" value:&stru_10026E598 table:@"Localizable-tinker"];
  tinkerUserName = [UIApp tinkerUserName];
  localizedCapitalizedString = [tinkerUserName localizedCapitalizedString];
  v6 = [NSString stringWithFormat:v3, localizedCapitalizedString];

  return v6;
}

- (id)detailString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"LOCATION_DETAIL_TINKER_%@" value:&stru_10026E598 table:@"Localizable-tinker"];
  tinkerUserName = [UIApp tinkerUserName];
  localizedCapitalizedString = [tinkerUserName localizedCapitalizedString];
  v6 = [NSString stringWithFormat:v3, localizedCapitalizedString];

  return v6;
}

- (id)imageResource
{
  activeWatch = [UIApp activeWatch];
  v3 = sub_100059F28(activeWatch);

  return v3;
}

- (void)applyConfirmedOptin:(BOOL)optin
{
  optinCopy = optin;
  v5 = +[UIApplication sharedApplication];
  setupController = [v5 setupController];
  [setupController setDidAllowTinkerLocationPermissions:optinCopy];

  v7 = +[UIApplication sharedApplication];
  bridgeController = [v7 bridgeController];
  [bridgeController tellGizmoToSetLocationEnabled:optinCopy];

  delegate = [(COSTinkerLocationOptinViewController *)self delegate];
  [delegate buddyControllerDone:self];
}

- (id)suggestedButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"LOCATION_ACCEPT" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)alternateButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"LOCATION_DECLINE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

@end