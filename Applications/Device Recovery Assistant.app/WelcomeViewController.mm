@interface WelcomeViewController
- (WelcomeViewController)init;
- (WelcomeViewControllerDelegate)delegate;
- (id)menu;
- (id)menuItems;
- (id)operatingSystemVersionString;
- (void)_didTapCancelButton:(id)a3;
- (void)_didTapContinueButton:(id)a3;
- (void)_didTapDisableButton:(id)a3;
- (void)_didTapLanguageButton:(id)a3;
- (void)viewDidLoad;
@end

@implementation WelcomeViewController

- (WelcomeViewController)init
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"WELCOME_SCREEN_TITLE" value:&stru_100028E90 table:0];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"WELCOME_SCREEN_DESCRIPTION" value:&stru_100028E90 table:0];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"CONTINUE_BUTTON" value:&stru_100028E90 table:0];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"CANCEL_BUTTON" value:&stru_100028E90 table:0];

  v21.receiver = self;
  v21.super_class = WelcomeViewController;
  v11 = [(WelcomeViewController *)&v21 initWithTitle:v4 detailText:v6 symbolName:@"cross.circle"];
  if (v11)
  {
    v12 = +[OBBoldTrayButton boldButton];
    [v12 setTitle:v8 forState:0];
    [v12 addTarget:v11 action:"_didTapContinueButton:" forControlEvents:0x2000];
    v13 = [(WelcomeViewController *)v11 buttonTray];
    [v13 addButton:v12];

    v14 = +[OBLinkTrayButton linkButton];
    [v14 setTitle:v10 forState:0];
    [v14 addTarget:v11 action:"_didTapCancelButton:" forControlEvents:0x2000];
    v15 = [(WelcomeViewController *)v11 buttonTray];
    [v15 addButton:v14];

    if (os_variant_has_internal_content())
    {
      v16 = +[OBLinkTrayButton linkButton];
      [v16 setTitle:@"*INTERNAL* Disable Recovery Auto-Boot" forState:0];
      [v16 addTarget:v11 action:"_didTapDisableButton:" forControlEvents:0x2000];
      v17 = [(WelcomeViewController *)v11 buttonTray];
      [v17 addButton:v16];
    }

    v18 = [(WelcomeViewController *)v11 buttonTray];
    v19 = [(WelcomeViewController *)v11 operatingSystemVersionString];
    [v18 setCaptionText:v19];
  }

  return v11;
}

- (void)viewDidLoad
{
  v29.receiver = self;
  v29.super_class = WelcomeViewController;
  [(WelcomeViewController *)&v29 viewDidLoad];
  if (os_variant_has_internal_content())
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = sub_100011440;
    v27 = sub_100011450;
    v28 = 0;
    if (DREIsRunningInDeviceRecoveryEnvironment())
    {
      v3 = DREEntryReasonString();
      v4 = DREEntryDescription();
      v5 = v4;
      if (v3)
      {
        if ([v3 isEqualToString:DREEntryReasonPanicMedic])
        {
          v6 = @"The system detected a panic loop at boot.  For more details, visit: at.apple.com/devicerecovery";
        }

        else if ([v3 isEqualToString:DREEntryReasonCriticalProcessCrashLoop])
        {
          v6 = @"The system detected a critical process crashing in a loop.  For more details, visit: at.apple.com/devicerecovery";
        }

        else if ([v3 isEqualToString:DREEntryReasonSnagKeys])
        {
          v6 = @"Recovery was booted manually using the pre-defined button sequence.  For more details, visit: at.apple.com/devicerecovery";
        }

        else
        {
          if (![v3 isEqualToString:DREEntryReasonBootCommand])
          {
            v9 = [NSString stringWithFormat:@"Recovery was booted due to the following reason: '%@'.  For more details, visit: at.apple.com/devicerecovery", v3];
LABEL_16:
            v7 = v9;
            if (v5)
            {
              goto LABEL_17;
            }

LABEL_8:
            v8 = [NSString stringWithFormat:@"\n\n** INTERNAL **\n\n%@", v7];
            v5 = 0;
LABEL_18:
            v10 = v24[5];
            v24[5] = v8;

            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100011458;
            block[3] = &unk_100028D68;
            block[4] = self;
            block[5] = &v23;
            dispatch_async(&_dispatch_main_q, block);
            _Block_object_dispose(&v23, 8);

            goto LABEL_19;
          }

          v6 = @"Recovery was booted because the 'boot-command' NVRAM var was set to 'device-recovery'.  When rebooting from recovery, that will be removed and the device will attempt to boot the primary OS.  For more details, visit: at.apple.com/devicerecovery";
        }

        v9 = [NSString stringWithFormat:v6];
        goto LABEL_16;
      }

      v7 = @"Recovery was booted due to an unknown reason";
      if (!v4)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = 0;
      v7 = @"Device is not booted into recovery.";
      v5 = &stru_100028E90;
    }

LABEL_17:
    v8 = [NSString stringWithFormat:@"\n\n** INTERNAL **\n\n%@\n\n%@", v7, v5];
    goto LABEL_18;
  }

LABEL_19:
  v11 = [UIBarButtonItem alloc];
  v12 = [UIImage systemImageNamed:@"ellipsis.circle"];
  v13 = [(WelcomeViewController *)self menu];
  v14 = [v11 initWithTitle:0 image:v12 target:0 action:0 menu:v13];

  v15 = [(WelcomeViewController *)self navigationItem];
  [v15 setRightBarButtonItem:v14];

  v16 = [UIButton buttonWithType:1];
  v17 = [UIImage systemImageNamed:@"globe"];
  [v16 setImage:v17 forState:0];

  [v16 addTarget:self action:"_didTapLanguageButton:" forControlEvents:0x2000];
  v18 = +[NSBundle mainBundle];
  v19 = [v18 localizedStringForKey:@"AX_LANGUAGE_BUTTON" value:&stru_100028E90 table:0];
  [v16 setAccessibilityLabel:v19];

  v20 = [[UIBarButtonItem alloc] initWithCustomView:v16];
  v21 = [(WelcomeViewController *)self navigationItem];
  [v21 setLeftBarButtonItem:v20];
}

- (id)menuItems
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"DEVICE_INFO_MENU" value:&stru_100028E90 table:0];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001174C;
  v13[3] = &unk_100028D90;
  v13[4] = self;
  v5 = [UIAction actionWithTitle:v4 image:0 identifier:0 handler:v13];

  v6 = MSUCopyInstalledRecoveryOSVersion();
  if ([v6 length])
  {
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"NEARBY_DEVICE_RECOVERY_MENU" value:&stru_100028E90 table:0];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000117B8;
    v12[3] = &unk_100028D90;
    v12[4] = self;
    v9 = [UIAction actionWithTitle:v8 image:0 identifier:0 handler:v12];
    v15[0] = v9;
    v15[1] = v5;
    v10 = [NSArray arrayWithObjects:v15 count:2];
  }

  else
  {
    v14 = v5;
    v10 = [NSArray arrayWithObjects:&v14 count:1];
  }

  return v10;
}

- (id)menu
{
  v2 = [(WelcomeViewController *)self menuItems];
  v3 = [UIMenu menuWithTitle:&stru_100028E90 image:0 identifier:0 options:0 children:v2];

  return v3;
}

- (id)operatingSystemVersionString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"OS_VERSION_FORMAT_STRING" value:&stru_100028E90 table:0];

  v4 = +[NSProcessInfo processInfo];
  v5 = [v4 operatingSystemVersionString];
  v6 = [NSString stringWithFormat:v3, v5];

  return v6;
}

- (void)_didTapContinueButton:(id)a3
{
  v4 = [(WelcomeViewController *)self delegate];

  if (v4)
  {
    v5 = sub_100012608();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136446210;
      v8 = "[WelcomeViewController _didTapContinueButton:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Calling delegate for continue from welcome.", &v7, 0xCu);
    }

    v6 = [(WelcomeViewController *)self delegate];
    [v6 welcomeViewControllerDidContinue:self];
  }
}

- (void)_didTapCancelButton:(id)a3
{
  v4 = [(WelcomeViewController *)self delegate];

  if (v4)
  {
    v5 = sub_100012608();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136446210;
      v8 = "[WelcomeViewController _didTapCancelButton:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Calling delegate for cancel from welcome.", &v7, 0xCu);
    }

    v6 = [(WelcomeViewController *)self delegate];
    [v6 welcomeViewControllerDidCancel:self];
  }
}

- (void)_didTapLanguageButton:(id)a3
{
  v4 = [(WelcomeViewController *)self delegate];

  if (v4)
  {
    v5 = sub_100012608();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136446210;
      v8 = "[WelcomeViewController _didTapLanguageButton:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Calling delegate for language button from welcome.", &v7, 0xCu);
    }

    v6 = [(WelcomeViewController *)self delegate];
    [v6 welcomeViewControllerDidChooseLanguage:self];
  }
}

- (void)_didTapDisableButton:(id)a3
{
  v4 = [(WelcomeViewController *)self delegate];

  if (v4)
  {
    v5 = sub_100012608();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136446210;
      v8 = "[WelcomeViewController _didTapDisableButton:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Calling delegate for disable recovery auto-boot button", &v7, 0xCu);
    }

    v6 = [(WelcomeViewController *)self delegate];
    [v6 welcomeViewControllerDidChooseDisable:self];
  }
}

- (WelcomeViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end