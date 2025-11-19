@interface COSPasscodeAdvancedViewController
+ (BOOL)isMandatory;
- (COSPasscodeAdvancedViewController)init;
- (id)detailString;
- (id)detailTitleString;
- (id)imageResource;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)dealloc;
- (void)suggestedButtonPressed:(id)a3;
@end

@implementation COSPasscodeAdvancedViewController

- (COSPasscodeAdvancedViewController)init
{
  v6.receiver = self;
  v6.super_class = COSPasscodeAdvancedViewController;
  v2 = [(COSOptinViewController *)&v6 init];
  if (v2)
  {
    if ([objc_opt_class() isMandatory])
    {
      v3 = +[UIApplication sharedApplication];
      v4 = [v3 bridgeController];
      [v4 sendGizmoPasscodeRestrictions];
    }

    [(COSPasscodeAdvancedViewController *)v2 setStyle:66];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = COSPasscodeAdvancedViewController;
  [(COSPasscodeAdvancedViewController *)&v4 dealloc];
}

- (id)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"LONG_PASSCODE_TITLE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)imageResource
{
  v2 = sub_10002D528(@"Screen-LongPasscode");
  v3 = [UIApp activeWatch];
  v4 = BPSIsDeviceCompatibleWithVersions();

  if (v4)
  {
    v5 = [v2 stringByAppendingString:@"-v4"];

    v2 = v5;
  }

  return v2;
}

- (id)detailTitleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"WHAT_IS_THIS" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)detailString
{
  v2 = [UIApp bridgeController];
  v3 = [v2 isTinkerPairing];
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (v3)
  {
    v6 = @"LONG_PASSCODE_DESCRIPTION_TINKER";
    v7 = @"Localizable-tinker";
  }

  else
  {
    v6 = @"LONG_PASSCODE_DESCRIPTION";
    v7 = @"Localizable";
  }

  v8 = [v4 localizedStringForKey:v6 value:&stru_10026E598 table:v7];

  return v8;
}

- (id)suggestedButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"ADD_LONG_PASSCODE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (void)suggestedButtonPressed:(id)a3
{
  v4 = [(COSPasscodeAdvancedViewController *)self delegate];
  [v4 buddyControllerDone:self nextControllerClass:objc_opt_class()];
}

+ (BOOL)isMandatory
{
  v2 = [UIApp bridgeController];
  v3 = [v2 isTinkerPairing];

  if (v3)
  {
    return 0;
  }

  v5 = +[MCProfileConnection sharedConnection];
  v6 = [v5 valueRestrictionForFeature:MCFeatureMinimumPasscodeLength];
  v4 = [v6 intValue] > 4;

  return v4;
}

@end