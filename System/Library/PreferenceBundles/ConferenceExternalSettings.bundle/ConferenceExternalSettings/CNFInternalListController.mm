@interface CNFInternalListController
- (CNFInternalListController)init;
- (id)allowAllLiveVoicemailLocales:(id)a3;
- (id)allowAnyNetworkCalls:(id)a3;
- (id)allowFaceTimeAudioFromDialer:(id)a3;
- (id)allowNonWifiCalls:(id)a3;
- (id)autoAnswerInvites:(id)a3;
- (id)notifySMS:(id)a3;
- (id)specifiers;
- (id)useBlurStyle:(id)a3;
- (void)daemonConnectionChanged:(id)a3;
- (void)dealloc;
- (void)registrationStatusChanged:(id)a3;
- (void)resetSMSCounter:(id)a3;
- (void)setAllowAllLiveVoicemailLocales:(id)a3 specifier:(id)a4;
- (void)setAllowAnyNetworkCalls:(id)a3 specifier:(id)a4;
- (void)setAllowFaceTimeAudioFromDialer:(id)a3 specifier:(id)a4;
- (void)setAllowNonWifiCalls:(id)a3 specifier:(id)a4;
- (void)setAutoAnswerInvites:(id)a3 specifier:(id)a4;
- (void)setEnvironment:(id)a3 specifier:(id)a4;
- (void)setNotifySMS:(id)a3 specifier:(id)a4;
- (void)setUseBlurStyle:(id)a3 specifier:(id)a4;
- (void)viewAccountsTapped:(id)a3;
@end

@implementation CNFInternalListController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(CNFInternalListController *)self loadSpecifiersFromPlistName:@"ConferenceInternalSettings" target:self];
    v6 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v5;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (CNFInternalListController)init
{
  v12.receiver = self;
  v12.super_class = CNFInternalListController;
  v2 = [(CNFInternalListController *)&v12 init];
  if (v2)
  {
    v3 = SCPreferencesCreateWithAuthorization(0, @"OSThermalStatus", @"OSThermalStatus.plist", 0);
    v2->_prefs = v3;
    if (!v3)
    {
      NSLog(@"CLTM Settings: could not create thermal prefs");
    }

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"registrationStatusChanged:" name:IMAccountRegistrationStatusChangedNotification object:0];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v2 selector:"loginStatusChanged:" name:IMAccountLoginStatusChangedNotification object:0];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v2 selector:"daemonConnectionChanged:" name:IMDaemonDidConnectNotification object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v2 selector:"daemonConnectionChanged:" name:IMDaemonDidDisconnectNotification object:0];

    v8 = [IMServiceImpl serviceWithInternalName:@"FaceTime"];
    [(CNFInternalListController *)v2 setService:v8];

    v9 = [[FTRegConnectionHandler alloc] initWithServiceType:0 name:@"InternalSettings"];
    connectionHandler = v2->_connectionHandler;
    v2->_connectionHandler = v9;
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNFInternalListController;
  [(CNFInternalListController *)&v4 dealloc];
}

- (id)allowNonWifiCalls:(id)a3
{
  v3 = CNFGetDomainBooleanValueForKey();

  return [NSNumber numberWithBool:v3];
}

- (void)setAllowNonWifiCalls:(id)a3 specifier:(id)a4
{
  if ([a3 BOOLValue])
  {
    v4 = [NSNumber numberWithBool:1];
  }

  else
  {
    v4 = 0;
  }

  CFPreferencesSetAppValue(@"nonWiFiEntitled", v4, @"com.apple.conference");

  CFPreferencesAppSynchronize(@"com.apple.conference");
}

- (id)allowAnyNetworkCalls:(id)a3
{
  v3 = CNFGetDomainBooleanValueForKey();

  return [NSNumber numberWithBool:v3];
}

- (void)setAllowAnyNetworkCalls:(id)a3 specifier:(id)a4
{
  if ([a3 BOOLValue])
  {
    v4 = [NSNumber numberWithBool:1];
  }

  else
  {
    v4 = 0;
  }

  CFPreferencesSetAppValue(@"allowNonWifiCalls", v4, @"com.apple.conference");

  CFPreferencesAppSynchronize(@"com.apple.conference");
}

- (id)allowAllLiveVoicemailLocales:(id)a3
{
  v3 = CNFGetDomainBooleanValueForKey();

  return [NSNumber numberWithBool:v3];
}

- (void)setAllowAllLiveVoicemailLocales:(id)a3 specifier:(id)a4
{
  if ([a3 BOOLValue])
  {
    v4 = [NSNumber numberWithBool:1];
  }

  else
  {
    v4 = 0;
  }

  CFPreferencesSetAppValue(@"LVMAllowAllLocales", v4, @"com.apple.TelephonyUtilities");
  CFPreferencesAppSynchronize(@"com.apple.conference");

  +[CNFInternalSettingsUtilities killCallservicesd];
}

- (id)useBlurStyle:(id)a3
{
  v3 = CNFGetDomainBooleanValueForKey();

  return [NSNumber numberWithBool:v3];
}

- (void)setUseBlurStyle:(id)a3 specifier:(id)a4
{
  if ([a3 BOOLValue])
  {
    v4 = [NSNumber numberWithBool:1];
  }

  else
  {
    v4 = 0;
  }

  CFPreferencesSetAppValue(@"useDarkBlurStyle", v4, @"com.apple.conference");
  CFPreferencesAppSynchronize(@"com.apple.conference");

  +[CNFInternalSettingsUtilities killFaceTime];
}

- (id)allowFaceTimeAudioFromDialer:(id)a3
{
  v3 = CNFGetDomainBooleanValueForKey();

  return [NSNumber numberWithBool:v3];
}

- (void)setAllowFaceTimeAudioFromDialer:(id)a3 specifier:(id)a4
{
  if ([a3 BOOLValue])
  {
    v4 = [NSNumber numberWithBool:1];
  }

  else
  {
    v4 = 0;
  }

  CFPreferencesSetAppValue(@"allowFaceTimeAudioFromDialer", v4, @"com.apple.conference");
  CFPreferencesAppSynchronize(@"com.apple.conference");

  +[CNFInternalSettingsUtilities killMobilePhone];
}

- (void)setNotifySMS:(id)a3 specifier:(id)a4
{
  if ([a3 BOOLValue])
  {
    v4 = [NSNumber numberWithInt:1];
  }

  else
  {
    v4 = 0;
  }

  CFPreferencesSetAppValue(@"NotifySMS", v4, @"com.apple.conference");

  CFPreferencesAppSynchronize(@"com.apple.conference");
}

- (id)notifySMS:(id)a3
{
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"NotifySMS", @"com.apple.conference", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v4 = AppIntegerValue == 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [NSNumber numberWithBool:v5];

  return v6;
}

- (void)resetSMSCounter:(id)a3
{
  CFPreferencesAppSynchronize(@"com.apple.conference");
  CFPreferencesSetAppValue(@"TotalSMSAttempts", 0, @"com.apple.conference");
  CFPreferencesAppSynchronize(@"com.apple.conference");

  [(CNFInternalListController *)self reloadSpecifiers];
}

- (void)registrationStatusChanged:(id)a3
{
  [(CNFInternalListController *)self reloadSpecifierID:@"Status"];
  [(CNFInternalListController *)self reloadSpecifierID:@"Number"];
  [(CNFInternalListController *)self reloadSpecifierID:@"User ID"];
  [(CNFInternalListController *)self reloadSpecifierID:@"SMS Attempts"];
  [(CNFInternalListController *)self reloadSpecifierID:@"RegDate"];
  [(CNFInternalListController *)self reloadSpecifierID:@"Signature"];

  [(CNFInternalListController *)self reloadSpecifierID:@"Push Token"];
}

- (void)daemonConnectionChanged:(id)a3
{
  v4 = a3;
  [(CNFInternalListController *)self registrationStatusChanged:v4];
  [(CNFInternalListController *)self loginStatusChanged:v4];
}

- (void)setEnvironment:(id)a3 specifier:(id)a4
{
  v6 = a4;
  [CNFInternalSettingsUtilities setIDSEnvironment:a3];
  v7 = [(CNFInternalListController *)self navigationController];
  v8 = [v7 popViewControllerAnimated:1];

  +[CNFInternalSettingsUtilities signOutAllAccounts];
  [v6 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
  v11 = [v6 propertyForKey:PSTableCellKey];

  [v11 setCellEnabled:0];
  v9 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:2];
  [v9 startAnimating];
  [v11 setAccessoryView:v9];
  [v11 setNeedsDisplay];
  v10 = dispatch_time(0, 3000000000);
  dispatch_after(v10, &_dispatch_main_q, &stru_41B8);
}

- (void)viewAccountsTapped:(id)a3
{
  v4 = a3;
  v6 = [[CNFInternalAccountListViewController alloc] initWithServiceType:0];
  [v6 setSpecifier:v4];

  v5 = [(CNFInternalListController *)self rootController];
  [v6 setRootController:v5];

  [(CNFInternalListController *)self showController:v6 animate:1];
}

- (id)autoAnswerInvites:(id)a3
{
  v3 = CNFGetDomainBooleanValueForKey();

  return [NSNumber numberWithBool:v3];
}

- (void)setAutoAnswerInvites:(id)a3 specifier:(id)a4
{
  if ([a3 BOOLValue])
  {
    v4 = [NSNumber numberWithBool:1];
  }

  else
  {
    v4 = 0;
  }

  CFPreferencesSetAppValue(@"autoAnswerInvites", v4, @"com.apple.conference");
  CFPreferencesAppSynchronize(@"com.apple.conference");

  +[CNFInternalSettingsUtilities killEverything];
}

@end