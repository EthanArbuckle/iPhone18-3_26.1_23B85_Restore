@interface TPSSIMPasscodeListController
- (BOOL)isSIMLockAllowed;
- (BOOL)isSIMPasscodeChangeAllowed;
- (BOOL)isSIMPasscodeProtected;
- (TPSSIMPasscodeListController)init;
- (TPSSubscriberTelephonyController)subscriberController;
- (id)_popoverPresentationView;
- (id)isSIMPasscodeProtected:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_dismissChangeController;
- (void)_dismissUnlockController;
- (void)changePIN:(id)a3;
- (void)dealloc;
- (void)handleUIApplicationSuspendedNotification:(id)a3;
- (void)handleUIApplicationWillEnterForegroundNotification:(id)a3;
- (void)popoverControllerDidDismissPopover:(id)a3;
- (void)presentSIMPasscodeAlert;
- (void)setSIMPasscodeProtected:(id)a3 specifier:(id)a4;
- (void)setSIMStatus:(id)a3;
- (void)subscriberController:(id)a3 SIMPasscodeLockEnabledDidChange:(BOOL)a4;
- (void)subscriberController:(id)a3 SIMStatusDidChange:(id)a4;
- (void)viewDidLoad;
@end

@implementation TPSSIMPasscodeListController

- (TPSSIMPasscodeListController)init
{
  v5.receiver = self;
  v5.super_class = TPSSIMPasscodeListController;
  v2 = [(TPSSIMPasscodeListController *)&v5 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"handleUIApplicationSuspendedNotification:" name:UIApplicationSuspendedNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  unlockPINPopoverController = self->_unlockPINPopoverController;
  if (unlockPINPopoverController)
  {
    [(UIPopoverController *)unlockPINPopoverController dismissPopoverAnimated:0];
  }

  changePINPopoverController = self->_changePINPopoverController;
  if (changePINPopoverController)
  {
    [(UIPopoverController *)changePINPopoverController dismissPopoverAnimated:0];
  }

  [(UIPopoverController *)self->_unlockPINPopoverController setDelegate:0];
  [(TPSSIMPasscodeUnlockViewController *)self->_unlockPINViewController setDelegate:0];
  [(UIPopoverController *)self->_changePINPopoverController setDelegate:0];
  [(TPSSIMPasscodeChangeViewController *)self->_changePINViewController setDelegate:0];
  v6.receiver = self;
  v6.super_class = TPSSIMPasscodeListController;
  [(TPSSIMPasscodeListController *)&v6 dealloc];
}

- (TPSSubscriberTelephonyController)subscriberController
{
  subscriberController = self->_subscriberController;
  if (!subscriberController)
  {
    v4 = [TPSSubscriberTelephonyController alloc];
    v5 = [(TPSSIMPasscodeListController *)self subscriptionContext];
    v6 = [v4 initWithSubscriptionContext:v5];
    v7 = self->_subscriberController;
    self->_subscriberController = v6;

    [(TPSSubscriberTelephonyController *)self->_subscriberController addDelegate:self queue:&_dispatch_main_q];
    subscriberController = self->_subscriberController;
  }

  return subscriberController;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->TPSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = +[PSSpecifier emptyGroupSpecifier];
    [v5 addObject:v6];
    v7 = [TPSSIMPasscodeLocalizedString localizedStringForKey:@"SIM_PIN"];
    v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:"setSIMPasscodeProtected:specifier:" get:"isSIMPasscodeProtected:" detail:0 cell:6 edit:0];

    [v8 setIdentifier:@"SET_SIM_PIN_ID"];
    [v5 addObject:v8];
    v9 = [TPSSIMPasscodeLocalizedString localizedStringForKey:@"CHANGE_PIN"];

    v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v10 setIdentifier:@"CHANGE_PIN_ID"];
    [v10 setButtonAction:"changePIN:"];
    [v5 addObject:v10];
    v11 = [v5 copy];
    v12 = *&self->TPSListController_opaque[v3];
    *&self->TPSListController_opaque[v3] = v11;

    v4 = *&self->TPSListController_opaque[v3];
  }

  return v4;
}

- (id)isSIMPasscodeProtected:(id)a3
{
  v3 = [(TPSSIMPasscodeListController *)self isSIMPasscodeProtected];

  return [NSNumber numberWithBool:v3];
}

- (void)setSIMPasscodeProtected:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = TPSSIMPasscodeLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 138412290;
    v33 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "User requested to set passcode protection to %@", &v32, 0xCu);
  }

  v7 = [(TPSSIMPasscodeListController *)self setControlEnabled:0 atIndex:1];
  if (v5)
  {
    v8 = [(TPSSIMPasscodeListController *)self unlockPINViewController];

    if (!v8)
    {
      v9 = [(TPSSIMPasscodeListController *)self unlockPINViewController];
      [v9 setDelegate:0];

      v10 = [TPSSIMPasscodeUnlockViewController alloc];
      v11 = [(TPSSIMPasscodeListController *)self subscriberController];
      v12 = -[TPSSIMPasscodeUnlockViewController initWithSubscriberController:forLocking:](v10, "initWithSubscriberController:forLocking:", v11, [v5 BOOLValue]);
      [(TPSSIMPasscodeListController *)self setUnlockPINViewController:v12];

      v13 = [(TPSSIMPasscodeListController *)self unlockPINViewController];
      [v13 setDelegate:self];

      v14 = [TPPortraitOnlyNavigationController alloc];
      v15 = [(TPSSIMPasscodeListController *)self unlockPINViewController];
      v16 = [v14 initWithRootViewController:v15];
      [(TPSSIMPasscodeListController *)self setUnlockPINNavigationController:v16];

      v17 = +[UIDevice currentDevice];
      v18 = [v17 userInterfaceIdiom];

      v19 = [(TPSSIMPasscodeListController *)self unlockPINNavigationController];
      v20 = v19;
      if (v18 == &dword_0 + 1)
      {
        [v19 setPreferredContentSize:{320.0, 480.0}];

        v21 = [UIPopoverController alloc];
        v22 = [(TPSSIMPasscodeListController *)self unlockPINNavigationController];
        v23 = [v21 initWithContentViewController:v22];
        [(TPSSIMPasscodeListController *)self setUnlockPINPopoverController:v23];

        v24 = [(TPSSIMPasscodeListController *)self unlockPINPopoverController];
        [v24 setDelegate:self];

        v25 = +[UIApplication sharedApplication];
        v26 = [v25 keyWindow];
        [v26 frame];
        v28 = v27;
        v30 = v29;

        v20 = [(TPSSIMPasscodeListController *)self unlockPINPopoverController];
        v31 = [(TPSSIMPasscodeListController *)self _popoverPresentationView];
        [v20 presentPopoverFromRect:v31 inView:0 permittedArrowDirections:1 animated:{v28 * 0.5, v30 * 0.5, 1.0, 1.0}];
      }

      else
      {
        [(TPSSIMPasscodeListController *)self presentViewController:v19 animated:1 completion:0];
      }
    }
  }
}

- (void)changePIN:(id)a3
{
  v4 = TPSSIMPasscodeLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v29 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "User requested to change PIN", v29, 2u);
  }

  if ([(TPSSIMPasscodeListController *)self isSIMPasscodeChangeAllowed])
  {
    v5 = [(TPSSIMPasscodeListController *)self changePINViewController];

    if (!v5)
    {
      v6 = [(TPSSIMPasscodeListController *)self changePINViewController];
      [v6 setDelegate:0];

      v7 = [TPSSIMPasscodeChangeViewController alloc];
      v8 = [(TPSSIMPasscodeListController *)self subscriberController];
      v9 = [(TPSSIMPasscodeChangeViewController *)v7 initWithSubscriberController:v8];
      [(TPSSIMPasscodeListController *)self setChangePINViewController:v9];

      v10 = [(TPSSIMPasscodeListController *)self changePINViewController];
      [v10 setDelegate:self];

      v11 = [TPPortraitOnlyNavigationController alloc];
      v12 = [(TPSSIMPasscodeListController *)self changePINViewController];
      v13 = [v11 initWithRootViewController:v12];
      [(TPSSIMPasscodeListController *)self setChangePINNavigationController:v13];

      v14 = +[UIDevice currentDevice];
      v15 = [v14 userInterfaceIdiom];

      v16 = [(TPSSIMPasscodeListController *)self changePINNavigationController];
      v17 = v16;
      if (v15 == &dword_0 + 1)
      {
        [v16 setPreferredContentSize:{320.0, 480.0}];

        v18 = [UIPopoverController alloc];
        v19 = [(TPSSIMPasscodeListController *)self changePINNavigationController];
        v20 = [v18 initWithContentViewController:v19];
        [(TPSSIMPasscodeListController *)self setChangePINPopoverController:v20];

        v21 = [(TPSSIMPasscodeListController *)self changePINPopoverController];
        [v21 setDelegate:self];

        v22 = +[UIApplication sharedApplication];
        v23 = [v22 keyWindow];
        [v23 frame];
        v25 = v24;
        v27 = v26;

        v17 = [(TPSSIMPasscodeListController *)self changePINPopoverController];
        v28 = [(TPSSIMPasscodeListController *)self _popoverPresentationView];
        [v17 presentPopoverFromRect:v28 inView:0 permittedArrowDirections:1 animated:{v25 * 0.5, v27 * 0.5, 1.0, 1.0}];
      }

      else
      {
        [(TPSSIMPasscodeListController *)self presentViewController:v16 animated:1 completion:0];
      }
    }
  }
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = TPSSIMPasscodeListController;
  [(TPSSIMPasscodeListController *)&v4 viewDidLoad];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"handleUIApplicationWillEnterForegroundNotification:" name:UIApplicationWillEnterForegroundNotification object:0];
}

- (void)_dismissUnlockController
{
  [(TPSSIMPasscodeListController *)self reloadSpecifiers];
  v3 = [(TPSSIMPasscodeListController *)self unlockPINPopoverController];

  if (v3)
  {
    v4 = [(TPSSIMPasscodeListController *)self unlockPINPopoverController];
    [v4 dismissPopoverAnimated:1];

    v5 = [(TPSSIMPasscodeListController *)self unlockPINPopoverController];
    [v5 setDelegate:0];

    [(TPSSIMPasscodeListController *)self setUnlockPINPopoverController:0];
  }

  else
  {
    [(TPSSIMPasscodeListController *)self dismissViewControllerAnimated:1 completion:0];
  }

  [(TPSSIMPasscodeListController *)self setUnlockPINNavigationController:0];
  v6 = [(TPSSIMPasscodeListController *)self unlockPINViewController];
  [v6 setDelegate:0];

  [(TPSSIMPasscodeListController *)self setUnlockPINViewController:0];
}

- (void)_dismissChangeController
{
  [(TPSSIMPasscodeListController *)self reloadSpecifiers];
  v3 = [(TPSSIMPasscodeListController *)self changePINPopoverController];

  if (v3)
  {
    v4 = [(TPSSIMPasscodeListController *)self changePINPopoverController];
    [v4 dismissPopoverAnimated:1];

    v5 = [(TPSSIMPasscodeListController *)self changePINPopoverController];
    [v5 setDelegate:0];

    [(TPSSIMPasscodeListController *)self setChangePINPopoverController:0];
  }

  else
  {
    [(TPSSIMPasscodeListController *)self dismissViewControllerAnimated:1 completion:0];
  }

  [(TPSSIMPasscodeListController *)self setChangePINNavigationController:0];
  v6 = [(TPSSIMPasscodeListController *)self changePINViewController];
  [v6 setDelegate:0];

  [(TPSSIMPasscodeListController *)self setChangePINViewController:0];
}

- (id)_popoverPresentationView
{
  v3 = [(TPSSIMPasscodeListController *)self navigationController];
  v4 = [v3 presentingViewController];
  v5 = [v4 view];

  if (!v5)
  {
    v6 = [(TPSSIMPasscodeListController *)self navigationController];
    v7 = [v6 parentViewController];
    v5 = [v7 view];
  }

  return v5;
}

- (void)popoverControllerDidDismissPopover:(id)a3
{
  [(TPSSIMPasscodeListController *)self _dismissChangeController];

  [(TPSSIMPasscodeListController *)self _dismissUnlockController];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v16.receiver = self;
    v16.super_class = TPSSIMPasscodeListController;
    v8 = [(TPSSIMPasscodeListController *)&v16 tableView:v6 cellForRowAtIndexPath:v7];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v8;
      v9 = [v8 specifier];
      v10 = [v9 identifier];
      v11 = [v10 isEqualToString:@"SET_SIM_PIN_ID"];

      if (v11)
      {
        [v8 setCellEnabled:{-[TPSSIMPasscodeListController isSIMLockAllowed](self, "isSIMLockAllowed")}];
        v12 = [v9 propertyForKey:PSControlKey];
        [v12 setEnabled:{-[TPSSIMPasscodeListController isSIMLockAllowed](self, "isSIMLockAllowed")}];
      }

      else
      {
        v13 = [v9 identifier];
        v14 = [v13 isEqualToString:@"CHANGE_PIN_ID"];

        if (v14)
        {
          [v8 setCellEnabled:{-[TPSSIMPasscodeListController isSIMPasscodeChangeAllowed](self, "isSIMPasscodeChangeAllowed")}];
          [v8 setAlignment:1];
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isSIMLockAllowed
{
  v2 = [(TPSSIMPasscodeListController *)self subscriberController];
  v3 = [v2 SIMStatus];
  v4 = [v3 isEqualToString:kCTSIMSupportSIMStatusReady];

  return v4;
}

- (BOOL)isSIMPasscodeChangeAllowed
{
  v3 = [(TPSSIMPasscodeListController *)self isSIMLockAllowed];
  if (v3)
  {

    LOBYTE(v3) = [(TPSSIMPasscodeListController *)self isSIMPasscodeProtected];
  }

  return v3;
}

- (BOOL)isSIMPasscodeProtected
{
  v2 = [(TPSSIMPasscodeListController *)self subscriberController];
  v3 = [v2 isSIMPasscodeLockEnabled];

  return v3;
}

- (void)setSIMStatus:(id)a3
{
  v4 = a3;
  SIMStatus = self->_SIMStatus;
  if (SIMStatus != v4)
  {
    v9 = v4;
    v6 = SIMStatus;
    v7 = [(NSString *)v9 copy];
    v8 = self->_SIMStatus;
    self->_SIMStatus = v7;

    if ([(NSString *)v9 isEqualToString:kCTSIMSupportSIMStatusPINLocked])
    {
      if (!v6)
      {
        [(TPSSIMPasscodeListController *)self presentSIMPasscodeAlert];
      }
    }

    else if ([(NSString *)v9 isEqualToString:kCTSIMSupportSIMStatusReady])
    {
      [(TPSSIMPasscodeListController *)self reloadSpecifiers];
    }
  }

  _objc_release_x1();
}

- (void)presentSIMPasscodeAlert
{
  v3 = TPSSIMPasscodeLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(TPSSIMPasscodeListController *)self subscriptionContext];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Authentication is required in order to proceed; presenting passcode alert for subscription context %@.", &v6, 0xCu);
  }

  v5 = [(TPSSIMPasscodeListController *)self subscriberController];
  [v5 presentSIMPasscodeAlert];
}

- (void)subscriberController:(id)a3 SIMPasscodeLockEnabledDidChange:(BOOL)a4
{
  v4 = a4;
  v6 = TPSSIMPasscodeLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (v4)
    {
      v7 = @"enabled";
    }

    else
    {
      v7 = @"disabled";
    }

    v8 = [(TPSSIMPasscodeListController *)self subscriptionContext];
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "SIM passcode protection changed to %@ for subscription context %@.", &v9, 0x16u);
  }

  [(TPSSIMPasscodeListController *)self reloadSpecifiers];
}

- (void)subscriberController:(id)a3 SIMStatusDidChange:(id)a4
{
  v5 = a4;
  v6 = TPSSIMPasscodeLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(TPSSIMPasscodeListController *)self subscriptionContext];
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "SIM status changed to %@ for subscription context %@.", &v8, 0x16u);
  }

  [(TPSSIMPasscodeListController *)self setSIMStatus:v5];
}

- (void)handleUIApplicationWillEnterForegroundNotification:(id)a3
{
  v4 = a3;
  v5 = TPSSIMPasscodeLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = objc_opt_class();
    v11 = 2112;
    v12 = v4;
    v6 = v10;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@.", &v9, 0x16u);
  }

  v7 = [(TPSSIMPasscodeListController *)self SIMStatus];
  v8 = [v7 isEqualToString:kCTSIMSupportSIMStatusPINLocked];

  if (v8)
  {
    [(TPSSIMPasscodeListController *)self presentSIMPasscodeAlert];
  }
}

- (void)handleUIApplicationSuspendedNotification:(id)a3
{
  v4 = a3;
  v5 = TPSSIMPasscodeLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = objc_opt_class();
    v9 = 2112;
    v10 = v4;
    v6 = v8;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@.", &v7, 0x16u);
  }

  [(TPSSIMPasscodeListController *)self _dismissChangeController];
  [(TPSSIMPasscodeListController *)self _dismissUnlockController];
}

@end