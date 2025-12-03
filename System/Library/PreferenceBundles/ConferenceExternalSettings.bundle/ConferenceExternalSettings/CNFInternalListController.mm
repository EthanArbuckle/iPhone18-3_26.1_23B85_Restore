@interface CNFInternalListController
- (CNFInternalListController)init;
- (id)allowAllLiveVoicemailLocales:(id)locales;
- (id)allowAnyNetworkCalls:(id)calls;
- (id)allowFaceTimeAudioFromDialer:(id)dialer;
- (id)allowNonWifiCalls:(id)calls;
- (id)autoAnswerInvites:(id)invites;
- (id)notifySMS:(id)s;
- (id)specifiers;
- (id)useBlurStyle:(id)style;
- (void)daemonConnectionChanged:(id)changed;
- (void)dealloc;
- (void)registrationStatusChanged:(id)changed;
- (void)resetSMSCounter:(id)counter;
- (void)setAllowAllLiveVoicemailLocales:(id)locales specifier:(id)specifier;
- (void)setAllowAnyNetworkCalls:(id)calls specifier:(id)specifier;
- (void)setAllowFaceTimeAudioFromDialer:(id)dialer specifier:(id)specifier;
- (void)setAllowNonWifiCalls:(id)calls specifier:(id)specifier;
- (void)setAutoAnswerInvites:(id)invites specifier:(id)specifier;
- (void)setEnvironment:(id)environment specifier:(id)specifier;
- (void)setNotifySMS:(id)s specifier:(id)specifier;
- (void)setUseBlurStyle:(id)style specifier:(id)specifier;
- (void)viewAccountsTapped:(id)tapped;
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

- (id)allowNonWifiCalls:(id)calls
{
  v3 = CNFGetDomainBooleanValueForKey();

  return [NSNumber numberWithBool:v3];
}

- (void)setAllowNonWifiCalls:(id)calls specifier:(id)specifier
{
  if ([calls BOOLValue])
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

- (id)allowAnyNetworkCalls:(id)calls
{
  v3 = CNFGetDomainBooleanValueForKey();

  return [NSNumber numberWithBool:v3];
}

- (void)setAllowAnyNetworkCalls:(id)calls specifier:(id)specifier
{
  if ([calls BOOLValue])
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

- (id)allowAllLiveVoicemailLocales:(id)locales
{
  v3 = CNFGetDomainBooleanValueForKey();

  return [NSNumber numberWithBool:v3];
}

- (void)setAllowAllLiveVoicemailLocales:(id)locales specifier:(id)specifier
{
  if ([locales BOOLValue])
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

- (id)useBlurStyle:(id)style
{
  v3 = CNFGetDomainBooleanValueForKey();

  return [NSNumber numberWithBool:v3];
}

- (void)setUseBlurStyle:(id)style specifier:(id)specifier
{
  if ([style BOOLValue])
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

- (id)allowFaceTimeAudioFromDialer:(id)dialer
{
  v3 = CNFGetDomainBooleanValueForKey();

  return [NSNumber numberWithBool:v3];
}

- (void)setAllowFaceTimeAudioFromDialer:(id)dialer specifier:(id)specifier
{
  if ([dialer BOOLValue])
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

- (void)setNotifySMS:(id)s specifier:(id)specifier
{
  if ([s BOOLValue])
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

- (id)notifySMS:(id)s
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

- (void)resetSMSCounter:(id)counter
{
  CFPreferencesAppSynchronize(@"com.apple.conference");
  CFPreferencesSetAppValue(@"TotalSMSAttempts", 0, @"com.apple.conference");
  CFPreferencesAppSynchronize(@"com.apple.conference");

  [(CNFInternalListController *)self reloadSpecifiers];
}

- (void)registrationStatusChanged:(id)changed
{
  [(CNFInternalListController *)self reloadSpecifierID:@"Status"];
  [(CNFInternalListController *)self reloadSpecifierID:@"Number"];
  [(CNFInternalListController *)self reloadSpecifierID:@"User ID"];
  [(CNFInternalListController *)self reloadSpecifierID:@"SMS Attempts"];
  [(CNFInternalListController *)self reloadSpecifierID:@"RegDate"];
  [(CNFInternalListController *)self reloadSpecifierID:@"Signature"];

  [(CNFInternalListController *)self reloadSpecifierID:@"Push Token"];
}

- (void)daemonConnectionChanged:(id)changed
{
  changedCopy = changed;
  [(CNFInternalListController *)self registrationStatusChanged:changedCopy];
  [(CNFInternalListController *)self loginStatusChanged:changedCopy];
}

- (void)setEnvironment:(id)environment specifier:(id)specifier
{
  specifierCopy = specifier;
  [CNFInternalSettingsUtilities setIDSEnvironment:environment];
  navigationController = [(CNFInternalListController *)self navigationController];
  v8 = [navigationController popViewControllerAnimated:1];

  +[CNFInternalSettingsUtilities signOutAllAccounts];
  [specifierCopy setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
  v11 = [specifierCopy propertyForKey:PSTableCellKey];

  [v11 setCellEnabled:0];
  v9 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:2];
  [v9 startAnimating];
  [v11 setAccessoryView:v9];
  [v11 setNeedsDisplay];
  v10 = dispatch_time(0, 3000000000);
  dispatch_after(v10, &_dispatch_main_q, &stru_41B8);
}

- (void)viewAccountsTapped:(id)tapped
{
  tappedCopy = tapped;
  v6 = [[CNFInternalAccountListViewController alloc] initWithServiceType:0];
  [v6 setSpecifier:tappedCopy];

  rootController = [(CNFInternalListController *)self rootController];
  [v6 setRootController:rootController];

  [(CNFInternalListController *)self showController:v6 animate:1];
}

- (id)autoAnswerInvites:(id)invites
{
  v3 = CNFGetDomainBooleanValueForKey();

  return [NSNumber numberWithBool:v3];
}

- (void)setAutoAnswerInvites:(id)invites specifier:(id)specifier
{
  if ([invites BOOLValue])
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