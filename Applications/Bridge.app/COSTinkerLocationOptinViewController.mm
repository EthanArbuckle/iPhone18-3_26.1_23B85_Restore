@interface COSTinkerLocationOptinViewController
- (COSTinkerLocationOptinViewController)init;
- (id)alternateButtonTitle;
- (id)detailString;
- (id)imageResource;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)applyConfirmedOptin:(BOOL)a3;
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
  v4 = [UIApp tinkerUserName];
  v5 = [v4 localizedCapitalizedString];
  v6 = [NSString stringWithFormat:v3, v5];

  return v6;
}

- (id)detailString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"LOCATION_DETAIL_TINKER_%@" value:&stru_10026E598 table:@"Localizable-tinker"];
  v4 = [UIApp tinkerUserName];
  v5 = [v4 localizedCapitalizedString];
  v6 = [NSString stringWithFormat:v3, v5];

  return v6;
}

- (id)imageResource
{
  v2 = [UIApp activeWatch];
  v3 = sub_100059F28(v2);

  return v3;
}

- (void)applyConfirmedOptin:(BOOL)a3
{
  v3 = a3;
  v5 = +[UIApplication sharedApplication];
  v6 = [v5 setupController];
  [v6 setDidAllowTinkerLocationPermissions:v3];

  v7 = +[UIApplication sharedApplication];
  v8 = [v7 bridgeController];
  [v8 tellGizmoToSetLocationEnabled:v3];

  v9 = [(COSTinkerLocationOptinViewController *)self delegate];
  [v9 buddyControllerDone:self];
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