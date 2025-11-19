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
- (void)alternateButtonPressed:(id)a3;
- (void)suggestedButtonPressed:(id)a3;
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
  v2 = [(SCLWelcomeOptinViewController *)self flowController];
  v3 = [v2 delegate];

  if (v3)
  {
    v4 = [v3 setupFlowUserInfo];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 objectForKey:BPSPairingFlowFamilyMember];
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
  v3 = [(SCLWelcomeOptinViewController *)self stringsBundle];
  v4 = [v3 localizedStringForKey:@"SCHOOLTIME_ONBOARDING_TITLE" value:&stru_83D0 table:@"SchoolTimeSetup"];

  v5 = [(SCLWelcomeOptinViewController *)self familyMember];
  v6 = [v5 firstName];
  v7 = [NSString stringWithFormat:v4, v6];

  return v7;
}

- (id)detailString
{
  v3 = [(SCLWelcomeOptinViewController *)self stringsBundle];
  v4 = [v3 localizedStringForKey:@"SCHOOLTIME_ONBOARDING_DETAIL" value:&stru_83D0 table:@"SchoolTimeSetup"];

  v5 = [(SCLWelcomeOptinViewController *)self familyMember];
  v6 = [v5 firstName];
  v7 = [NSString stringWithFormat:v4, v6];

  return v7;
}

- (id)suggestedButtonTitle
{
  v2 = [(SCLWelcomeOptinViewController *)self stringsBundle];
  v3 = [v2 localizedStringForKey:@"SCHOOLTIME_ONBOARDING_SUGGESTED_BUTTON_TITLE" value:&stru_83D0 table:@"SchoolTimeSetup"];

  return v3;
}

- (id)alternateButtonTitle
{
  v2 = [(SCLWelcomeOptinViewController *)self stringsBundle];
  v3 = [v2 localizedStringForKey:@"SCHOOLTIME_ONBOARDING_SETUP_LATER_BUTTON_TITLE" value:&stru_83D0 table:@"SchoolTimeSetup"];

  return v3;
}

- (id)imageResourceBundleIdentifier
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (void)suggestedButtonPressed:(id)a3
{
  v3 = [(SCLWelcomeOptinViewController *)self flowController];
  [v3 showSettingsConfiguration];
}

- (void)alternateButtonPressed:(id)a3
{
  v3 = [(SCLWelcomeOptinViewController *)self flowController];
  [v3 skipSettingsConfiguration];
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