@interface SCLWelcomeOptinViewController
- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate;
- (SCLSetupPrincipleClass)flowController;
- (SCLWelcomeOptinViewController)init;
- (id)alternateButtonTitle;
- (id)detailString;
- (id)familyMember;
- (id)imageResourceBundleIdentifier;
- (id)privacyBundles;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)alternateButtonPressed:(id)pressed;
- (void)suggestedButtonPressed:(id)pressed;
- (void)viewDidLoad;
@end

@implementation SCLWelcomeOptinViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = SCLWelcomeOptinViewController;
  [(SCLWelcomeOptinViewController *)&v2 viewDidLoad];
}

- (SCLWelcomeOptinViewController)init
{
  v6.receiver = self;
  v6.super_class = SCLWelcomeOptinViewController;
  v2 = [(SCLWelcomeOptinViewController *)&v6 init];
  if (v2)
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    stringsBundle = v2->_stringsBundle;
    v2->_stringsBundle = v3;

    [(SCLWelcomeOptinViewController *)v2 setStyle:74];
  }

  return v2;
}

- (id)familyMember
{
  flowController = [(SCLWelcomeOptinViewController *)self flowController];
  delegate = [flowController delegate];

  if (delegate)
  {
    setupFlowUserInfo = [delegate setupFlowUserInfo];
    v5 = setupFlowUserInfo;
    if (setupFlowUserInfo)
    {
      v6 = [setupFlowUserInfo objectForKey:BPSPairingFlowFamilyMember];
      if (v6)
      {
        goto LABEL_13;
      }

      v7 = scl_pairing_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_3038(v5, v7);
      }
    }

    else
    {
      v7 = scl_pairing_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_30B0(v7);
      }

      v6 = 0;
    }
  }

  else
  {
    v5 = scl_pairing_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_30F4(v5);
    }

    v6 = 0;
  }

LABEL_13:

  return v6;
}

- (id)titleString
{
  stringsBundle = [(SCLWelcomeOptinViewController *)self stringsBundle];
  v4 = [stringsBundle localizedStringForKey:@"SCHOOLTIME_ONBOARDING_TITLE" value:&stru_83D0 table:@"SchoolTimeSetup"];

  familyMember = [(SCLWelcomeOptinViewController *)self familyMember];
  firstName = [familyMember firstName];
  v7 = [NSString stringWithFormat:v4, firstName];

  return v7;
}

- (id)detailString
{
  stringsBundle = [(SCLWelcomeOptinViewController *)self stringsBundle];
  v4 = [stringsBundle localizedStringForKey:@"SCHOOLTIME_ONBOARDING_DETAIL" value:&stru_83D0 table:@"SchoolTimeSetup"];

  familyMember = [(SCLWelcomeOptinViewController *)self familyMember];
  firstName = [familyMember firstName];
  v7 = [NSString stringWithFormat:v4, firstName];

  return v7;
}

- (id)suggestedButtonTitle
{
  stringsBundle = [(SCLWelcomeOptinViewController *)self stringsBundle];
  v3 = [stringsBundle localizedStringForKey:@"SCHOOLTIME_ONBOARDING_SUGGESTED_BUTTON_TITLE" value:&stru_83D0 table:@"SchoolTimeSetup"];

  return v3;
}

- (id)alternateButtonTitle
{
  stringsBundle = [(SCLWelcomeOptinViewController *)self stringsBundle];
  v3 = [stringsBundle localizedStringForKey:@"SCHOOLTIME_ONBOARDING_SETUP_LATER_BUTTON_TITLE" value:&stru_83D0 table:@"SchoolTimeSetup"];

  return v3;
}

- (id)imageResourceBundleIdentifier
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  bundleIdentifier = [v2 bundleIdentifier];

  return bundleIdentifier;
}

- (void)suggestedButtonPressed:(id)pressed
{
  flowController = [(SCLWelcomeOptinViewController *)self flowController];
  [flowController showSettingsConfiguration];
}

- (void)alternateButtonPressed:(id)pressed
{
  flowController = [(SCLWelcomeOptinViewController *)self flowController];
  [flowController skipSettingsConfiguration];
}

- (id)privacyBundles
{
  v4 = OBPrivacyFamilySetupIdentifier;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_miniFlowDelegate);

  return WeakRetained;
}

- (SCLSetupPrincipleClass)flowController
{
  WeakRetained = objc_loadWeakRetained(&self->_flowController);

  return WeakRetained;
}

@end