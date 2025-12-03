@interface COSLocationOptinViewController
+ (BOOL)controllerNeedsToRun;
+ (BOOL)locationRestricted;
+ (BOOL)locationServicesEnabled;
+ (void)authorizeLocationForWatchFaces;
+ (void)doWorkForSkippedPane;
- (COSLocationOptinViewController)init;
- (id)alternateButtonTitle;
- (id)detailString;
- (id)imageResource;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)applyConfirmedOptin:(BOOL)optin;
@end

@implementation COSLocationOptinViewController

+ (void)doWorkForSkippedPane
{
  if (+[COSLocationOptinViewController wantsUnifiedFYI])
  {

    +[COSLocationOptinViewController authorizeLocationForWatchFaces];
  }
}

+ (BOOL)locationServicesEnabled
{
  v2 = sub_10001CD38();

  return [v2 locationServicesEnabled];
}

+ (BOOL)locationRestricted
{
  if (!+[SFRestrictionsPasscodeController settingEnabled])
  {
    return 0;
  }

  CFPreferencesAppSynchronize(@"com.apple.springboard");
  v2 = CFPreferencesCopyAppValue(@"SBParentalControlsCapabilities", @"com.apple.springboard");
  v3 = v2;
  if (v2)
  {
    v4 = [v2 containsObject:@"location"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)controllerNeedsToRun
{
  if ([self locationRestricted])
  {
    return 0;
  }

  else
  {
    return !+[COSLocationOptinViewController wantsUnifiedFYI];
  }
}

+ (void)authorizeLocationForWatchFaces
{
  if ([sub_10001CD38() locationServicesEnabled])
  {
    v2 = sub_10001CD38();
    v3 = [NSBundle bundleWithPath:@"/System/Library/LocationBundles/AppleWatchFaces.bundle"];
    LODWORD(v2) = [v2 authorizationStatusForBundle:v3];

    if (!v2)
    {
      v4 = sub_10001CD38();
      v5 = [NSBundle bundleWithPath:@"/System/Library/LocationBundles/AppleWatchFaces.bundle"];
      [v4 setAuthorizationStatusByType:4 withCorrectiveCompensation:1 forBundle:v5];
    }
  }
}

- (COSLocationOptinViewController)init
{
  v5.receiver = self;
  v5.super_class = COSLocationOptinViewController;
  v2 = [(COSOptinViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(COSLocationOptinViewController *)v2 setStyle:602];
  }

  return v3;
}

- (id)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"LOCATION_TITLE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)detailString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"LOCATION_DETAIL" value:&stru_10026E598 table:@"Localizable"];

  return v3;
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
  bridgeController = [v5 bridgeController];
  [bridgeController tellGizmoToSetLocationEnabled:optinCopy];

  [sub_10001CD38() setLocationServicesEnabled:optinCopy];
  if (optinCopy)
  {
    +[COSLocationOptinViewController authorizeLocationForWatchFaces];
  }

  delegate = [(COSLocationOptinViewController *)self delegate];
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