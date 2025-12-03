@interface COSWatchKitAppsChoiceViewController
+ (BOOL)controllerNeedsToRun;
- (BOOL)offerYorktown;
- (COSWatchKitAppsChoiceViewController)init;
- (id)alternateButtonTitle;
- (id)detailString;
- (id)detailTitleString;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)alternateButtonPressed:(id)pressed;
- (void)didEstablishHold;
- (void)selectedMoreOptions:(id)options;
- (void)selectedOptinChoice:(BOOL)choice;
- (void)suggestedButtonPressed:(id)pressed;
@end

@implementation COSWatchKitAppsChoiceViewController

+ (BOOL)controllerNeedsToRun
{
  if ([UIApp isEitherPhoneOrActiveWatchGreenTeaDevice])
  {
    v2 = +[COSBackupManager sharedBackupManager];
    didRestore = [v2 didRestore];

    if (!didRestore)
    {
      return 1;
    }
  }

  +[COSWatchKitAppChoiceUpdater updateBuddyStageAboutPastAppInstallation];
  return 0;
}

- (COSWatchKitAppsChoiceViewController)init
{
  v5.receiver = self;
  v5.super_class = COSWatchKitAppsChoiceViewController;
  v2 = [(COSOptinViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(COSWatchKitAppsChoiceViewController *)v2 setStyle:74];
  }

  return v3;
}

- (BOOL)offerYorktown
{
  setupController = [UIApp setupController];
  offerYorktownForCurrentPairing = [setupController offerYorktownForCurrentPairing];

  return offerYorktownForCurrentPairing;
}

- (void)didEstablishHold
{
  if ([(COSWatchKitAppsChoiceViewController *)self offerYorktown])
  {
    v3 = +[UIApplication sharedApplication];
    bridgeController = [v3 bridgeController];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10009FB0C;
    v6[3] = &unk_100269800;
    v6[4] = self;
    [bridgeController checkApplicationInstallAllowedWithCompletion:v6];
  }

  else
  {
    delegate = [(COSWatchKitAppsChoiceViewController *)self delegate];
    [delegate buddyControllerReleaseHold:self];
  }
}

- (id)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"WATCHKIT_TITLE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)suggestedButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"WATCHKIT_CHOICE_OK" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)alternateButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"WATCHKIT_CHOICE_DECLINE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)detailTitleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"WATCHKIT_DETAIL_TITLE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)detailString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"WATCHKIT_DETAIL" value:&stru_10026E598 table:@"Localizable"];

  activeWatch = [UIApp activeWatch];
  LODWORD(v2) = BPSDeviceHasCapabilityForString();

  if (v2)
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"WATCHKIT_DETAIL_UPGRADE_NEEDED" value:&stru_10026E598 table:@"Localizable"];

    v3 = v6;
  }

  return v3;
}

- (void)suggestedButtonPressed:(id)pressed
{
  v4 = pbb_setup_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "User Selected to Install All Existing Apps.", v5, 2u);
  }

  [(COSWatchKitAppsChoiceViewController *)self selectedOptinChoice:1];
}

- (void)alternateButtonPressed:(id)pressed
{
  v4 = pbb_setup_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "User Selected to Manually Install Existing Apps Later.", v5, 2u);
  }

  [(COSWatchKitAppsChoiceViewController *)self selectedOptinChoice:0];
}

- (void)selectedOptinChoice:(BOOL)choice
{
  choiceCopy = choice;
  activeWatch = [UIApp activeWatch];
  v6 = +[ACXDeviceConnection sharedDeviceConnection];
  [v6 setAllExistingAppsShouldBeInstalled:choiceCopy forNewDevice:activeWatch];

  v7 = +[ACXDeviceConnection sharedDeviceConnection];
  [v7 setAlwaysInstall:&__kCFBooleanTrue forDevice:activeWatch];

  v8 = pbb_setup_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [NSNumber numberWithBool:choiceCopy];
    v12 = 138412546;
    v13 = v9;
    v14 = 2112;
    v15 = activeWatch;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "setAllExistingAppsShouldBeInstalled:%@ forNewDevice:%@", &v12, 0x16u);
  }

  v10 = pbb_setup_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = activeWatch;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "setAlwaysInstall:1 forNewDevice:%@", &v12, 0xCu);
  }

  [PBBridgeCAReporter recordSetupAppInstallChoice:choiceCopy];
  +[COSWatchKitAppChoiceUpdater updateBuddyStageAboutPastAppInstallation];
  delegate = [(COSWatchKitAppsChoiceViewController *)self delegate];
  [delegate buddyControllerDone:self];
}

- (void)selectedMoreOptions:(id)options
{
  activeWatch = [UIApp activeWatch];
  v4 = +[ACXDeviceConnection sharedDeviceConnection];
  [v4 setAlwaysInstall:&__kCFBooleanFalse forDevice:activeWatch];

  [PBBridgeCAReporter recordSetupAppInstallChoice:0];
  +[COSWatchKitAppChoiceUpdater updateBuddyStageAboutPastAppInstallation];
  delegate = [(COSWatchKitAppsChoiceViewController *)self delegate];
  [delegate buddyControllerDone:self];
}

@end