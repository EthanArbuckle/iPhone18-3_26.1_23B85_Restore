@interface TouchIdViewController
- (BOOL)_shouldShowUIForBiometryRequired;
- (void)_addFrontMostSubview:(id)a3;
- (void)_configureUI;
- (void)_handleBiometryNoMatch;
- (void)_handleBiometryRequiredEnterPasscode;
- (void)_handleBiometryRequiredFailure;
- (void)_setupAlertController;
- (void)_setupAlertControllerActions:(id)a3;
- (void)_setupUI;
- (void)didReceiveAuthenticationData;
- (void)dismissChildWithCompletionHandler:(id)a3;
- (void)loadView;
- (void)mechanismEvent:(int64_t)a3 value:(id)a4 reply:(id)a5;
@end

@implementation TouchIdViewController

- (void)loadView
{
  v3 = objc_opt_new();
  dimmingView = self->_dimmingView;
  self->_dimmingView = v3;

  [(TouchIdViewController *)self setView:v3];
  self->_state = 0;
  v5 = objc_alloc_init(TouchIdViewModel);
  viewModel = self->_viewModel;
  self->_viewModel = v5;

  [(TouchIdViewController *)self _setupUI];
}

void __39__TouchIdViewController_viewDidAppear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentUI:0];
}

- (void)_setupUI
{
  [(TouchIdViewController *)self _setupAlertController];

  [(TouchIdViewController *)self _configureUI];
}

- (void)_addFrontMostSubview:(id)a3
{
  alertController = self->_alertController;
  v5 = a3;
  v6 = [(TouchIdAlertController *)alertController view];
  v7 = [v6 superview];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [(TouchIdViewController *)self view];
  }

  v10 = v9;

  [v10 addSubview:v5];
  [v10 bringSubviewToFront:v5];
}

- (void)_setupAlertController
{
  v3 = objc_alloc_init(TouchIdAlertController);
  alertController = self->_alertController;
  self->_alertController = v3;

  v5 = self->_alertController;
  v6 = [(TransitionViewController *)self authenticationTitle];
  [(TouchIdAlertController *)v5 setTitle:v6];

  v7 = self->_alertController;
  v8 = [(TransitionViewController *)self authenticationSubtitle];
  [(TouchIdAlertController *)v7 setMessage:v8];

  viewModel = self->_viewModel;
  v12 = [(TransitionViewController *)self options];
  v10 = [v12 copy];
  v11 = [(TouchIdViewModel *)viewModel alertActionsFromOptions:v10 event:0];
  [(TouchIdViewController *)self _setupAlertControllerActions:v11];
}

- (void)_setupAlertControllerActions:(id)a3
{
  v5 = a3;
  v6 = objc_opt_new();
  objc_initWeak(location, self);
  v7 = [v5 objectForKeyedSubscript:&off_1000AF428];

  if (v7)
  {
    v8 = [v5 objectForKeyedSubscript:&off_1000AF428];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = __54__TouchIdViewController__setupAlertControllerActions___block_invoke;
    v29[3] = &unk_1000AA370;
    objc_copyWeak(&v30, location);
    v9 = [LACUIBiometryAlertAction actionWithType:1 title:v8 handler:v29];
    [v6 addObject:v9];

    objc_destroyWeak(&v30);
  }

  v10 = [v5 objectForKeyedSubscript:&off_1000AF440];
  v11 = v10;
  if (v10 && [v10 count] == 2)
  {
    v12 = [v11 objectAtIndexedSubscript:0];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = __54__TouchIdViewController__setupAlertControllerActions___block_invoke_12;
    v27[3] = &unk_1000AA370;
    objc_copyWeak(&v28, location);
    v13 = [LACUIBiometryAlertAction actionWithType:2 title:v12 handler:v27];
    [v6 addObject:v13];

    objc_destroyWeak(&v28);
  }

  v14 = [v5 objectForKeyedSubscript:&off_1000AF458];

  if (v14)
  {
    v15 = [v5 objectForKeyedSubscript:&off_1000AF458];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = __54__TouchIdViewController__setupAlertControllerActions___block_invoke_16;
    v25[3] = &unk_1000AA370;
    objc_copyWeak(&v26, location);
    v16 = [LACUIBiometryAlertAction actionWithType:0 title:v15 handler:v25];
    [v6 addObject:v16];

    objc_destroyWeak(&v26);
  }

  v17 = [v5 objectForKeyedSubscript:&off_1000AF470];

  if (v17)
  {
    v18 = [v5 objectForKeyedSubscript:&off_1000AF470];
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = __54__TouchIdViewController__setupAlertControllerActions___block_invoke_19;
    v23 = &unk_1000AA370;
    objc_copyWeak(&v24, location);
    v19 = [LACUIBiometryAlertAction actionWithType:3 title:v18 handler:&v20];
    [v6 addObject:{v19, v20, v21, v22, v23}];

    objc_destroyWeak(&v24);
  }

  objc_storeStrong(&self->_actions, a3);
  [(TouchIdAlertController *)self->_alertController setActions:v6];

  objc_destroyWeak(location);
}

void __54__TouchIdViewController__setupAlertControllerActions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    if (WeakRetained[29])
    {
      [WeakRetained _uiCancelWithUnderlyingError];
    }

    else
    {
      [WeakRetained uiFallback];
    }

    WeakRetained = v2;
  }
}

void __54__TouchIdViewController__setupAlertControllerActions___block_invoke_12(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _uiCancelWithUnderlyingError];
    v2 = +[LACUIDTOUtilities dtoLearnMoreLinkURL];
    [v3 uiOpenURL:v2];

    WeakRetained = v3;
  }
}

void __54__TouchIdViewController__setupAlertControllerActions___block_invoke_16(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained uiCancel];
    WeakRetained = v2;
  }
}

void __54__TouchIdViewController__setupAlertControllerActions___block_invoke_19(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _uiCancelWithUnderlyingError];
    WeakRetained = v2;
  }
}

- (void)_configureUI
{
  state = self->_state;
  if ((state - 2) < 2)
  {
    [(TouchIdViewController *)self _handleBiometryNoMatch];
  }

  else if (state == 4)
  {
    [(TouchIdViewController *)self _handleBiometryRequiredFailure];
  }

  else if (state == 5)
  {
    [(TouchIdViewController *)self _handleBiometryRequiredEnterPasscode];
  }

  if ([(TouchIdViewController *)self _isSensorActive])
  {
    +[UIColor systemPinkColor];
  }

  else
  {
    +[UIColor tertiaryLabelColor];
  }
  v6 = ;
  v4 = [(TouchIdAlertController *)self->_alertController _headerContentViewController];
  v5 = [v4 view];
  [v5 setTintColor:v6];
}

- (void)_handleBiometryNoMatch
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __47__TouchIdViewController__handleBiometryNoMatch__block_invoke;
  v13[3] = &unk_1000AAB70;
  v13[4] = self;
  v3 = __47__TouchIdViewController__handleBiometryNoMatch__block_invoke(v13);
  v4 = [(TransitionViewController *)self authenticationTitle];

  if (v4 != v3)
  {
    [(TransitionViewController *)self setAuthenticationTitle:v3];
    [(TouchIdAlertController *)self->_alertController setTitle:v3];
  }

  if (self->_state == 3)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"TOUCH_ID_UNBOUND_MESSAGE" value:&stru_1000ADB50 table:@"MobileUI"];
  }

  else
  {
    v5 = [(TransitionViewController *)self options];
    v7 = [v5 objectForKeyedSubscript:&off_1000AF440];
    v6 = [LACStringHelper truncateString:v7 maxLength:512];
  }

  v8 = [(TransitionViewController *)self authenticationSubtitle];

  if (v8 != v6)
  {
    [(TransitionViewController *)self setAuthenticationSubtitle:v6];
    [(TouchIdAlertController *)self->_alertController setMessage:v6];
  }

  viewModel = self->_viewModel;
  v10 = [(TransitionViewController *)self options];
  v11 = [v10 copy];
  v12 = [(TouchIdViewModel *)viewModel alertActionsFromOptions:v11 event:1];

  if (![(NSDictionary *)self->_actions isEqualToDictionary:v12])
  {
    [(TouchIdViewController *)self _setupAlertControllerActions:v12];
  }

  [(TouchIdAlertController *)self->_alertController shake];
  UIAccessibilityPostNotification(UIAccessibilityAnnouncementNotification, v3);
}

id __47__TouchIdViewController__handleBiometryNoMatch__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[26] == 3)
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = v3;
    v5 = @"TOUCH_ID_NOT_RECOGNIZED";
  }

  else
  {
    v6 = [v2 _shouldShowUIForBiometryRequired];
    v7 = *(a1 + 32);
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = v3;
    if (v6)
    {
      v5 = @"TOUCH_ID_REQUIRED";
    }

    else
    {
      v5 = @"TRY_AGAIN";
    }
  }

  v8 = [v3 localizedStringForKey:v5 value:&stru_1000ADB50 table:@"MobileUI"];

  return v8;
}

- (void)_handleBiometryRequiredFailure
{
  v21[0] = &off_1000AF440;
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"LEARN_MORE" value:&stru_1000ADB50 table:@"MobileUI"];
  v20[0] = v4;
  v5 = +[LACUIDTOUtilities dtoLearnMoreLinkURL];
  v20[1] = v5;
  v6 = [NSArray arrayWithObjects:v20 count:2];
  v21[1] = &off_1000AF470;
  v22[0] = v6;
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"OK" value:&stru_1000ADB50 table:@"MobileUI"];
  v22[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];

  if (![(NSDictionary *)self->_actions isEqualToDictionary:v9])
  {
    [(TouchIdViewController *)self _setupAlertControllerActions:v9];
    alertController = self->_alertController;
    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"TOUCH_ID_REQUIRED" value:&stru_1000ADB50 table:@"MobileUI"];
    [(TouchIdAlertController *)alertController setTitle:v12];

    v13 = self->_alertController;
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"DTO_IS_ACTIVE_TOUCH_ID" value:&stru_1000ADB50 table:@"MobileUI-Ratchet"];
    [(TouchIdAlertController *)v13 setMessage:v15];
  }

  v16 = [(TouchIdAlertController *)self->_alertController actions];
  v17 = [v16 objectAtIndexedSubscript:0];
  [(TouchIdAlertController *)self->_alertController setPreferredAction:v17];

  [(TouchIdAlertController *)self->_alertController shake];
  LODWORD(v16) = UIAccessibilityAnnouncementNotification;
  v18 = [NSBundle bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"TOUCH_ID_REQUIRED" value:&stru_1000ADB50 table:@"MobileUI-Ratchet"];
  UIAccessibilityPostNotification(v16, v19);
}

- (void)_handleBiometryRequiredEnterPasscode
{
  viewModel = self->_viewModel;
  v4 = [(TransitionViewController *)self options];
  v5 = [v4 copy];
  v6 = [(TouchIdViewModel *)viewModel fallbackActionFromOptions:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v9 localizedStringForKey:@"ENTER_PASSWORD" value:&stru_1000ADB50 table:@"MobileUI"];
  }

  v23[0] = &off_1000AF428;
  v23[1] = &off_1000AF458;
  v24[0] = v8;
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"CANCEL" value:&stru_1000ADB50 table:@"MobileUI"];
  v24[1] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];

  if (![(NSDictionary *)self->_actions isEqualToDictionary:v12])
  {
    [(TouchIdViewController *)self _setupAlertControllerActions:v12];
    alertController = self->_alertController;
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"PASSCODE_TO_RETRY_TOUCH_ID" value:&stru_1000ADB50 table:@"MobileUI"];
    [(TouchIdAlertController *)alertController setTitle:v15];

    v16 = self->_alertController;
    v17 = [NSBundle bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"DTO_IS_ACTIVE_TOUCH_ID" value:&stru_1000ADB50 table:@"MobileUI-Ratchet"];
    [(TouchIdAlertController *)v16 setMessage:v18];
  }

  v19 = [(TouchIdAlertController *)self->_alertController actions];
  v20 = [v19 objectAtIndexedSubscript:0];
  [(TouchIdAlertController *)self->_alertController setPreferredAction:v20];

  [(TouchIdAlertController *)self->_alertController shake];
  LODWORD(v19) = UIAccessibilityAnnouncementNotification;
  v21 = [NSBundle bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"PASSCODE_TO_RETRY_TOUCH_ID" value:&stru_1000ADB50 table:@"MobileUI-Ratchet"];
  UIAccessibilityPostNotification(v19, v22);
}

- (BOOL)_shouldShowUIForBiometryRequired
{
  v2 = [(TransitionViewController *)self options];
  v3 = [NSNumber numberWithInteger:LACPolicyOptionShowUIForBiometryRequired];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [v4 BOOLValue];

  return v5;
}

- (void)didReceiveAuthenticationData
{
  v11.receiver = self;
  v11.super_class = TouchIdViewController;
  [(TransitionViewController *)&v11 didReceiveAuthenticationData];
  v3 = [(TransitionViewController *)self authenticationTitle];
  v4 = [v3 length];

  if (!v4)
  {
    v5 = [(TransitionViewController *)self callerBundleId];
    if ((v5 || [(TransitionViewController *)self callerNameOverride]) && ([(TransitionViewController *)self callerName], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
    {
      v7 = [NSBundle bundleForClass:objc_opt_class()];
      v8 = [v7 localizedStringForKey:@"APP_ASKING_TOUCH" value:&stru_1000ADB50 table:@"MobileUI"];
      v9 = [(TransitionViewController *)self callerName];
      v10 = [NSString stringWithFormat:v8, v9];
      [(TransitionViewController *)self setAuthenticationTitle:v10];
    }

    else
    {
      v7 = [NSBundle bundleForClass:objc_opt_class()];
      v8 = [v7 localizedStringForKey:@"TOUCH_ID" value:&stru_1000ADB50 table:@"MobileUI"];
      [(TransitionViewController *)self setAuthenticationTitle:v8];
    }
  }
}

- (void)dismissChildWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_state == 6)
  {
    v8.receiver = self;
    v8.super_class = TouchIdViewController;
    [(TransitionViewController *)&v8 dismissChildWithCompletionHandler:v4];
  }

  else
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = __59__TouchIdViewController_dismissChildWithCompletionHandler___block_invoke;
    v6[3] = &unk_1000AAB98;
    v6[4] = self;
    v7 = v4;
    [(TouchIdViewController *)self _dismissUIWithCompletionHandler:v6];
  }
}

id __59__TouchIdViewController_dismissChildWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = TouchIdViewController;
  return objc_msgSendSuper2(&v3, "dismissChildWithCompletionHandler:", v1);
}

- (void)mechanismEvent:(int64_t)a3 value:(id)a4 reply:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = LACLogTouchIDUI();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromMechanismEventAndValue();
    *buf = 138543874;
    v31 = self;
    v32 = 1024;
    v33 = a3;
    v34 = 2112;
    v35 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ has received mechanism event %d (%@)", buf, 0x1Cu);
  }

  state = self->_state;
  if (state == 6 || state == 0)
  {
    if (v9)
    {
      v9[2](v9);
    }
  }

  else
  {
    v14 = v8;
    v15 = [v14 objectForKeyedSubscript:&off_1000AF458];
    v16 = [v15 BOOLValue];

    v17 = [v14 objectForKeyedSubscript:&off_1000AF428];
    v18 = [v17 BOOLValue];

    v19 = [(TouchIdViewController *)self _shouldShowUIForBiometryRequired];
    underlyingError = self->_underlyingError;
    self->_underlyingError = 0;

    if (a3 == 7)
    {
      v24 = 2;
      if ((v19 & v18) != 0)
      {
        v24 = 5;
      }

      self->_state = v24;
      if ((v19 & v18) != 0)
      {
        v25 = [v14 objectForKeyedSubscript:&off_1000AF440];
        v26 = self->_underlyingError;
        self->_underlyingError = v25;
      }
    }

    else
    {
      if (a3 == 1)
      {
        if (v18 & 1 | ((v16 & 1) == 0) || ((v19 ^ 1) & 1) != 0)
        {
          v27 = [v14 objectForKeyedSubscript:&off_1000AF470];
          v28 = [v27 BOOLValue];

          if (v28)
          {
            v23 = 3;
          }

          else
          {
            v23 = 2;
          }
        }

        else
        {
          v21 = [v14 objectForKeyedSubscript:&off_1000AF440];
          v22 = self->_underlyingError;
          self->_underlyingError = v21;

          v23 = 4;
        }
      }

      else
      {
        v23 = 1;
      }

      self->_state = v23;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __52__TouchIdViewController_mechanismEvent_value_reply___block_invoke;
    block[3] = &unk_1000AA3C0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
    if (v9)
    {
      v9[2](v9);
    }
  }
}

@end