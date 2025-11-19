@interface AKBasicLoginAlertController
- (AKBasicLoginAlertController)initWithAlertStyle:(int64_t)a3;
- (AKBasicLoginAlertController)initWithNibName:(id)a3 bundle:(id)a4;
- (AKBasicLoginControllerDelegate)delegate;
- (BOOL)textFieldShouldReturn:(id)a3;
- (NSString)authenticateButtonTitle;
- (NSString)authenticateTitle;
- (NSString)cancelButtonTitle;
- (NSString)password;
- (NSString)reason;
- (NSString)username;
- (id)_passwordField;
- (id)_wrappedCancelAction;
- (void)_beginObservingDidEnterCodeNotifications;
- (void)_didEnterCode:(id)a3;
- (void)_dismissAndShowiForgot:(id)a3;
- (void)_endObservingDidEnterCodeNotifications;
- (void)_passwordFieldDidChange:(id)a3;
- (void)_setupAuthenticateAndCancelButtonsWithIForgot:(BOOL)a3;
- (void)_setupViewControllerForAlertStyle;
- (void)_setupViewControllerForDefaultStyle;
- (void)_setupViewControllerForIForgotStyle;
- (void)_setupViewControllerForNonEditableUsernameFieldStyle;
- (void)_setupViewControllerForSecondFactorEntryStyle:(int64_t)a3;
- (void)_setupViewControllerForUserOrCreateAppleIDStyle;
- (void)_syncUsernameAndPasswordPropertiesWithTextFieldContent;
- (void)clearPasswordField;
- (void)clearSecondFactorEntry;
- (void)dealloc;
- (void)jiggleAView;
- (void)setAuthenticateButtonTitle:(id)a3;
- (void)setAuthenticateTitle:(id)a3;
- (void)setCancelButtonTitle:(id)a3;
- (void)setPasscodeFieldDisabled:(BOOL)a3;
- (void)setPassword:(id)a3;
- (void)setReason:(id)a3;
- (void)setUsername:(id)a3;
- (void)startAnimating;
- (void)stopAnimating;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation AKBasicLoginAlertController

- (AKBasicLoginAlertController)initWithAlertStyle:(int64_t)a3
{
  v8 = a2;
  v7 = a3;
  v9 = 0;
  v6.receiver = self;
  v6.super_class = AKBasicLoginAlertController;
  v5 = [(AKBasicLoginAlertController *)&v6 initWithNibName:0 bundle:?];
  v9 = v5;
  objc_storeStrong(&v9, v5);
  if (v5)
  {
    [(AKBasicLoginAlertController *)v9 setPreferredStyle:1];
    [(AKBasicLoginAlertController *)v9 setAlertStyle:v7];
    _AKBasicLoginAlertControllerInitialize(v9);
  }

  v4 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v9, 0);
  return v4;
}

- (AKBasicLoginAlertController)initWithNibName:(id)a3 bundle:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v4 = v12;
  v12 = 0;
  v9.receiver = v4;
  v9.super_class = AKBasicLoginAlertController;
  v8 = [(AKBasicLoginAlertController *)&v9 initWithNibName:location[0] bundle:v10];
  v12 = v8;
  objc_storeStrong(&v12, v8);
  if (v8)
  {
    [(AKBasicLoginAlertController *)v12 setPreferredStyle:1];
    [(AKBasicLoginAlertController *)v12 _setupViewControllerForAlertStyle];
    _AKBasicLoginAlertControllerInitialize(v12);
  }

  v6 = MEMORY[0x277D82BE0](v12);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v6;
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  [(AKBasicLoginAlertController *)self _endObservingDidEnterCodeNotifications];
  v2.receiver = v4;
  v2.super_class = AKBasicLoginAlertController;
  [(AKBasicLoginAlertController *)&v2 dealloc];
}

- (void)_setupViewControllerForAlertStyle
{
  [(AKBasicLoginAlertController *)self _removeAllTextFields];
  [(AKBasicLoginAlertController *)self setTitle:?];
  [(AKBasicLoginAlertController *)self setMessage:0];
  [(AKBasicLoginAlertController *)self setPreferredAction:0];
  v2 = [(AKBasicLoginAlertController *)self alertStyle];
  if (v2)
  {
    switch(v2)
    {
      case 1:
        [(AKBasicLoginAlertController *)self _setupViewControllerForNonEditableUsernameFieldStyle];
        break;
      case 2:
        [(AKBasicLoginAlertController *)self _setupViewControllerForUserOrCreateAppleIDStyle];
        break;
      case 3:
        [(AKBasicLoginAlertController *)self _setupViewControllerForIForgotStyle];
        break;
      case 4:
        [(AKBasicLoginAlertController *)self _setupViewControllerForSecondFactorEntryStyle:4];
        break;
      case 5:
        [(AKBasicLoginAlertController *)self _setupViewControllerForSecondFactorEntryStyle:5];
        break;
    }
  }

  else
  {
    [(AKBasicLoginAlertController *)self _setupViewControllerForDefaultStyle];
  }
}

- (id)_wrappedCancelAction
{
  v24 = self;
  location[1] = a2;
  objc_initWeak(location, self);
  v9 = [MEMORY[0x277CF0228] sharedManager];
  v10 = [v9 isAuthKitSolariumFeatureEnabled];
  *&v2 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  v22 = (v10 & 1) == 0;
  v8 = MEMORY[0x277D750F8];
  v7 = [(AKBasicLoginAlertController *)v24 cancelButtonTitle];
  v19 = 0;
  v17 = 0;
  if (v7)
  {
    v6 = v7;
  }

  else
  {
    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = 1;
    v18 = [v20 localizedStringForKey:@"ALERT_CANCEL" value:&stru_28358EF68 table:@"Localizable"];
    v17 = 1;
    v6 = v18;
  }

  v5 = v22;
  v11 = MEMORY[0x277D85DD0];
  v12 = -1073741824;
  v13 = 0;
  v14 = __51__AKBasicLoginAlertController__wrappedCancelAction__block_invoke;
  v15 = &unk_2784A77E8;
  objc_copyWeak(&v16, location);
  v21 = [v8 actionWithTitle:v6 style:v5 handler:&v11];
  if (v17)
  {
    MEMORY[0x277D82BD8](v18);
  }

  if (v19)
  {
    MEMORY[0x277D82BD8](v20);
  }

  MEMORY[0x277D82BD8](v7);
  v4 = MEMORY[0x277D82BE0](v21);
  objc_storeStrong(&v21, 0);
  objc_destroyWeak(&v16);
  objc_destroyWeak(location);

  return v4;
}

void __51__AKBasicLoginAlertController__wrappedCancelAction__block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13[1] = a1;
  v13[0] = objc_loadWeakRetained(a1 + 4);
  if (v13[0])
  {
    v10 = [v13[0] loginActions];
    v11 = [v10 ak_cancelAction];
    MEMORY[0x277D82BD8](v11);
    *&v2 = MEMORY[0x277D82BD8](v10).n128_u64[0];
    if (v11)
    {
      v9 = [v13[0] loginActions];
      v8 = [v9 ak_cancelAction];
      v8[2]();
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v9);
    }

    else
    {
      v6 = [v13[0] secondFactorActions];
      v7 = [v6 ak_cancelAction];
      MEMORY[0x277D82BD8](v7);
      *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
      if (v7)
      {
        v5 = [v13[0] secondFactorActions];
        v4 = [v5 ak_cancelAction];
        v4[2]();
        MEMORY[0x277D82BD8](v4);
        MEMORY[0x277D82BD8](v5);
      }
    }
  }

  objc_storeStrong(v13, 0);
  objc_storeStrong(location, 0);
}

- (void)_syncUsernameAndPasswordPropertiesWithTextFieldContent
{
  v26 = self;
  v25[1] = a2;
  v25[0] = 0;
  v24 = 0;
  v23 = [(AKBasicLoginAlertController *)self alertStyle];
  if (v23)
  {
    v8 = [(AKBasicLoginAlertController *)v26 username];
    v9 = v25[0];
    v25[0] = v8;
    if (v23 == 1)
    {
      v18 = [(AKBasicLoginAlertController *)v26 textFields];
      v17 = [v18 objectAtIndexedSubscript:0];
      v6 = [v17 text];
      v7 = v24;
      v24 = v6;
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v17);
      v12 = MEMORY[0x277D82BD8](v18).n128_u64[0];
    }

    else
    {
      v10 = [(AKBasicLoginAlertController *)v26 password];
      v11 = v24;
      v24 = v10;
      v12 = MEMORY[0x277D82BD8](v11).n128_u64[0];
    }
  }

  else
  {
    v20 = [(AKBasicLoginAlertController *)v26 textFields];
    v19 = [v20 objectAtIndexedSubscript:0];
    v2 = [v19 text];
    v3 = v25[0];
    v25[0] = v2;
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v19);
    v22 = [(AKBasicLoginAlertController *)v26 textFields];
    v21 = [v22 objectAtIndexedSubscript:1];
    v4 = [v21 text];
    v5 = v24;
    v24 = v4;
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v21);
    v12 = MEMORY[0x277D82BD8](v22).n128_u64[0];
  }

  v13 = [v25[0] copy];
  ak_username = v26->_ak_username;
  v26->_ak_username = v13;
  v15 = [(NSString *)v24 copy];
  ak_password = v26->_ak_password;
  v26->_ak_password = v15;
  MEMORY[0x277D82BD8](ak_password);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(v25, 0);
}

- (void)_setupAuthenticateAndCancelButtonsWithIForgot:(BOOL)a3
{
  v43[3] = *MEMORY[0x277D85DE8];
  v41 = self;
  v40 = a2;
  v39 = a3;
  objc_initWeak(&location, self);
  v31 = MEMORY[0x277D85DD0];
  v32 = -1073741824;
  v33 = 0;
  v34 = __77__AKBasicLoginAlertController__setupAuthenticateAndCancelButtonsWithIForgot___block_invoke;
  v35 = &unk_2784A77E8;
  objc_copyWeak(&v36, &location);
  v37 = MEMORY[0x223DB6C90](&v31);
  v30 = 0;
  if (v39)
  {
    v18 = MEMORY[0x277D750F8];
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v17 localizedStringForKey:@"FORGOT_PASSWORD_ALERT" value:&stru_28358EF68 table:@"Localizable"];
    v24 = MEMORY[0x277D85DD0];
    v25 = -1073741824;
    v26 = 0;
    v27 = __77__AKBasicLoginAlertController__setupAuthenticateAndCancelButtonsWithIForgot___block_invoke_2;
    v28 = &unk_2784A7810;
    v29 = MEMORY[0x277D82BE0](v41);
    v3 = [v18 actionWithTitle:v16 style:0 handler:&v24];
    v4 = v30;
    v30 = v3;
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    objc_storeStrong(&v29, 0);
  }

  v15 = MEMORY[0x277D750F8];
  v14 = [(AKBasicLoginAlertController *)v41 authenticateButtonTitle];
  v21 = 0;
  v19 = 0;
  if (v14)
  {
    v13 = v14;
  }

  else
  {
    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = 1;
    v20 = [v22 localizedStringForKey:@"SIGN_IN" value:&stru_28358EF68 table:@"Localizable"];
    v19 = 1;
    v13 = v20;
  }

  v23 = [v15 _actionWithTitle:v13 descriptiveText:0 image:0 style:0 handler:v37 shouldDismissHandler:&__block_literal_global_6];
  if (v19)
  {
    MEMORY[0x277D82BD8](v20);
  }

  if (v21)
  {
    MEMORY[0x277D82BD8](v22);
  }

  *&v5 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  if (v30)
  {
    v12 = v41;
    v43[0] = v23;
    v43[1] = v30;
    v11 = [(AKBasicLoginAlertController *)v41 _wrappedCancelAction];
    v43[2] = v11;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:3];
    [(AKBasicLoginAlertController *)v12 _setActions:?];
    MEMORY[0x277D82BD8](v10);
    v6 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  }

  else
  {
    v9 = v41;
    v42[0] = v23;
    v8 = [(AKBasicLoginAlertController *)v41 _wrappedCancelAction];
    v42[1] = v8;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
    [(AKBasicLoginAlertController *)v9 _setActions:?];
    MEMORY[0x277D82BD8](v7);
    v6 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  }

  [(AKBasicLoginAlertController *)v41 setPreferredAction:v23, *&v6];
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v37, 0);
  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);
  *MEMORY[0x277D85DE8];
}

void __77__AKBasicLoginAlertController__setupAuthenticateAndCancelButtonsWithIForgot___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10[1] = a1;
  v10[0] = objc_loadWeakRetained(a1 + 4);
  [v10[0] _syncUsernameAndPasswordPropertiesWithTextFieldContent];
  v8 = [v10[0] loginActions];
  v9 = [v8 authenticateAction];
  MEMORY[0x277D82BD8](v9);
  *&v2 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  if (v9)
  {
    v6 = [v10[0] loginActions];
    v5 = [v6 authenticateAction];
    v4 = [v10[0] username];
    v3 = [v10[0] password];
    v5[2](v5, v4);
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(v10, 0);
  objc_storeStrong(location, 0);
}

void __77__AKBasicLoginAlertController__setupAuthenticateAndCancelButtonsWithIForgot___block_invoke_2(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] _dismissAndShowiForgot:0];
  objc_storeStrong(location, 0);
}

- (void)_setupViewControllerForDefaultStyle
{
  v46 = self;
  v45[1] = a2;
  v45[0] = [(AKBasicLoginAlertController *)self contentViewController];
  if (!v45[0])
  {
    v45[0] = [[AKBasicLoginContentViewController alloc] initWithNibName:0 bundle:?];
    [(AKBasicLoginAlertController *)v46 setContentViewController:v45[0], MEMORY[0x277D82BD8](0).n128_f64[0]];
  }

  v14 = [(AKBasicLoginAlertController *)v46 authenticateTitle];
  v43 = 0;
  v41 = 0;
  if (v14)
  {
    v13 = v14;
  }

  else
  {
    v44 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v43 = 1;
    v42 = [v44 localizedStringForKey:@"APPLE_ID_SIGN_IN_HEADER_REBRAND" value:&stru_28358EF68 table:@"Localizable"];
    v41 = 1;
    v13 = v42;
  }

  v12 = [v45[0] contentContainerView];
  [v12 setTitleText:v13];
  MEMORY[0x277D82BD8](v12);
  if (v41)
  {
    MEMORY[0x277D82BD8](v42);
  }

  if (v43)
  {
    MEMORY[0x277D82BD8](v44);
  }

  v7 = [(AKBasicLoginAlertController *)v46 reason];
  v6 = [v45[0] contentContainerView];
  [v6 setMessageText:v7];
  MEMORY[0x277D82BD8](v6);
  *&v2 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  v8 = MEMORY[0x277CF0300];
  v9 = [(AKBasicLoginAlertController *)v46 username];
  v40 = [v8 formattedUsernameFromUsername:?];
  MEMORY[0x277D82BD8](v9);
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v39 = [v10 localizedStringForKey:@"APPLE_ID_ALERT_PLACEHOLDER_REBRAND" value:&stru_28358EF68 table:@"Localizable"];
  v11 = [MEMORY[0x277CF0218] currentDevice];
  v36 = 0;
  v34 = 0;
  v32 = 0;
  v30 = 0;
  if ([v11 isMultiUserMode])
  {
    v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v36 = 1;
    v35 = [v37 localizedStringForKey:@"PASSCODE_ALERT_PLACEHOLDER" value:&stru_28358EF68 table:@"Localizable"];
    v34 = 1;
    v3 = MEMORY[0x277D82BE0](v35);
  }

  else
  {
    v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v32 = 1;
    v31 = [v33 localizedStringForKey:@"PASSWORD_ALERT_PLACEHOLDER" value:&stru_28358EF68 table:@"Localizable"];
    v30 = 1;
    v3 = MEMORY[0x277D82BE0](v31);
  }

  v38 = v3;
  if (v30)
  {
    MEMORY[0x277D82BD8](v31);
  }

  if (v32)
  {
    MEMORY[0x277D82BD8](v33);
  }

  if (v34)
  {
    MEMORY[0x277D82BD8](v35);
  }

  if (v36)
  {
    MEMORY[0x277D82BD8](v37);
  }

  MEMORY[0x277D82BD8](v11);
  objc_initWeak(&location, v46);
  v5 = v46;
  v22 = MEMORY[0x277D85DD0];
  v23 = -1073741824;
  v24 = 0;
  v25 = __66__AKBasicLoginAlertController__setupViewControllerForDefaultStyle__block_invoke;
  v26 = &unk_2784A7858;
  v27 = MEMORY[0x277D82BE0](v40);
  v28 = MEMORY[0x277D82BE0](v39);
  [(AKBasicLoginAlertController *)v5 addTextFieldWithConfigurationHandler:&v22];
  v4 = v46;
  v15 = MEMORY[0x277D85DD0];
  v16 = -1073741824;
  v17 = 0;
  v18 = __66__AKBasicLoginAlertController__setupViewControllerForDefaultStyle__block_invoke_2;
  v19 = &unk_2784A7880;
  objc_copyWeak(v21, &location);
  v20 = MEMORY[0x277D82BE0](v38);
  [(AKBasicLoginAlertController *)v4 addTextFieldWithConfigurationHandler:&v15];
  [(AKBasicLoginAlertController *)v46 _setupAuthenticateAndCancelButtons];
  objc_storeStrong(&v20, 0);
  objc_destroyWeak(v21);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v27, 0);
  objc_destroyWeak(&location);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(v45, 0);
}

void __66__AKBasicLoginAlertController__setupViewControllerForDefaultStyle__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [location[0] setKeyboardType:7];
  [location[0] setText:a1[4]];
  [location[0] setBorderStyle:0];
  v3 = [MEMORY[0x277D75348] clearColor];
  [location[0] setBackgroundColor:?];
  *&v2 = MEMORY[0x277D82BD8](v3).n128_u64[0];
  [location[0] setTextContentType:{*MEMORY[0x277D77090], v2}];
  [location[0] setPlaceholder:a1[5]];
  objc_storeStrong(location, 0);
}

void __66__AKBasicLoginAlertController__setupViewControllerForDefaultStyle__block_invoke_2(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6[1] = a1;
  v6[0] = objc_loadWeakRetained((a1 + 40));
  if (v6[0])
  {
    [location[0] setSecureTextEntry:1];
    [location[0] setBorderStyle:0];
    v4 = [MEMORY[0x277D75348] clearColor];
    [location[0] setBackgroundColor:?];
    *&v2 = MEMORY[0x277D82BD8](v4).n128_u64[0];
    [location[0] setDelegate:{v6[0], v2}];
    [location[0] setEnablesReturnKeyAutomatically:1];
    [location[0] setTextContentType:*MEMORY[0x277D77030]];
    [location[0] setPlaceholder:*(a1 + 32)];
    [location[0] addTarget:v6[0] action:sel__passwordFieldDidChange_ forControlEvents:0x20000];
    v3 = [location[0] ak_addForgotButtonWithTarget:v6[0] action:sel__dismissAndShowiForgot_];
  }

  objc_storeStrong(v6, 0);
  objc_storeStrong(location, 0);
}

- (void)_setupViewControllerForNonEditableUsernameFieldStyle
{
  v39 = self;
  v38[1] = a2;
  v38[0] = [(AKBasicLoginAlertController *)self contentViewController];
  if (!v38[0])
  {
    v38[0] = [[AKBasicLoginContentViewController alloc] initWithNibName:0 bundle:?];
    [(AKBasicLoginAlertController *)v39 setContentViewController:v38[0], MEMORY[0x277D82BD8](0).n128_f64[0]];
  }

  v11 = [MEMORY[0x277CF0218] currentDevice];
  v35 = 0;
  v33 = 0;
  v31 = 0;
  v29 = 0;
  if ([v11 isMultiUserMode])
  {
    v36 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v35 = 1;
    v2 = [v36 localizedStringForKey:@"APPLE_ID_PASSCODE_HEADER_IPAD" value:&stru_28358EF68 table:@"Localizable"];
    v34 = v2;
    v33 = 1;
  }

  else
  {
    v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v31 = 1;
    v2 = [v32 localizedStringForKey:@"APPLE_ID_PASSWORD_HEADER_REBRAND" value:&stru_28358EF68 table:@"Localizable"];
    v30 = v2;
    v29 = 1;
  }

  v37 = MEMORY[0x277D82BE0](v2);
  if (v29)
  {
    MEMORY[0x277D82BD8](v30);
  }

  if (v31)
  {
    MEMORY[0x277D82BD8](v32);
  }

  if (v33)
  {
    MEMORY[0x277D82BD8](v34);
  }

  if (v35)
  {
    MEMORY[0x277D82BD8](v36);
  }

  v10 = [(AKBasicLoginAlertController *)v39 authenticateTitle];
  if (v10)
  {
    v9 = v10;
  }

  else
  {
    v9 = v37;
  }

  v5 = [v38[0] contentContainerView];
  [v5 setTitleText:v9];
  MEMORY[0x277D82BD8](v5);
  v7 = [(AKBasicLoginAlertController *)v39 reason];
  v6 = [v38[0] contentContainerView];
  [v6 setMessageText:v7];
  MEMORY[0x277D82BD8](v6);
  v8 = [MEMORY[0x277CF0218] currentDevice];
  v26 = 0;
  v24 = 0;
  v22 = 0;
  v20 = 0;
  if ([v8 isMultiUserMode])
  {
    v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v26 = 1;
    v25 = [v27 localizedStringForKey:@"PASSCODE_ALERT_PLACEHOLDER" value:&stru_28358EF68 table:@"Localizable"];
    v24 = 1;
    v3 = MEMORY[0x277D82BE0](v25);
  }

  else
  {
    v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = 1;
    v21 = [v23 localizedStringForKey:@"PASSWORD_ALERT_PLACEHOLDER" value:&stru_28358EF68 table:@"Localizable"];
    v20 = 1;
    v3 = MEMORY[0x277D82BE0](v21);
  }

  v28 = v3;
  if (v20)
  {
    MEMORY[0x277D82BD8](v21);
  }

  if (v22)
  {
    MEMORY[0x277D82BD8](v23);
  }

  if (v24)
  {
    MEMORY[0x277D82BD8](v25);
  }

  if (v26)
  {
    MEMORY[0x277D82BD8](v27);
  }

  MEMORY[0x277D82BD8](v8);
  objc_initWeak(&location, v39);
  v4 = v39;
  v12 = MEMORY[0x277D85DD0];
  v13 = -1073741824;
  v14 = 0;
  v15 = __83__AKBasicLoginAlertController__setupViewControllerForNonEditableUsernameFieldStyle__block_invoke;
  v16 = &unk_2784A7880;
  objc_copyWeak(&v18, &location);
  v17 = MEMORY[0x277D82BE0](v28);
  [(AKBasicLoginAlertController *)v4 addTextFieldWithConfigurationHandler:&v12];
  [(AKBasicLoginAlertController *)v39 _setupAuthenticateAndCancelButtons];
  objc_storeStrong(&v17, 0);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(v38, 0);
}

void __83__AKBasicLoginAlertController__setupViewControllerForNonEditableUsernameFieldStyle__block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6[1] = a1;
  v6[0] = objc_loadWeakRetained((a1 + 40));
  if (v6[0])
  {
    [location[0] setSecureTextEntry:1];
    [location[0] setBorderStyle:0];
    v4 = [MEMORY[0x277D75348] clearColor];
    [location[0] setBackgroundColor:?];
    *&v2 = MEMORY[0x277D82BD8](v4).n128_u64[0];
    [location[0] setDelegate:{v6[0], v2}];
    [location[0] setEnablesReturnKeyAutomatically:1];
    [location[0] setTextContentType:*MEMORY[0x277D77030]];
    [location[0] setPlaceholder:*(a1 + 32)];
    [location[0] addTarget:v6[0] action:sel__passwordFieldDidChange_ forControlEvents:0x20000];
    v3 = [location[0] ak_addForgotButtonWithTarget:v6[0] action:sel__dismissAndShowiForgot_];
  }

  objc_storeStrong(v6, 0);
  objc_storeStrong(location, 0);
}

- (void)_setupViewControllerForUserOrCreateAppleIDStyle
{
  v35[3] = *MEMORY[0x277D85DE8];
  v34 = self;
  v33[1] = a2;
  v33[0] = [(AKBasicLoginAlertController *)self contentViewController];
  if (!v33[0])
  {
    v33[0] = [[AKBasicLoginContentViewController alloc] initWithNibName:0 bundle:?];
    [(AKBasicLoginAlertController *)v34 setContentViewController:v33[0], MEMORY[0x277D82BD8](0).n128_f64[0]];
  }

  v15 = [(AKBasicLoginAlertController *)v34 authenticateTitle];
  v31 = 0;
  if (v15)
  {
    v14 = v15;
  }

  else
  {
    v32 = [(AKBasicLoginAlertController *)v34 reason];
    v31 = 1;
    v14 = v32;
  }

  v13 = [v33[0] contentContainerView];
  [v13 setTitleText:v14];
  MEMORY[0x277D82BD8](v13);
  if (v31)
  {
    MEMORY[0x277D82BD8](v32);
  }

  v12 = [v33[0] contentContainerView];
  [v12 setMessageText:0];
  MEMORY[0x277D82BD8](v12);
  objc_initWeak(&location, v34);
  v11 = MEMORY[0x277D750F8];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v10 localizedStringForKey:@"USE_APPLE_ID_REBRAND" value:&stru_28358EF68 table:@"Localizable"];
  v23 = MEMORY[0x277D85DD0];
  v24 = -1073741824;
  v25 = 0;
  v26 = __78__AKBasicLoginAlertController__setupViewControllerForUserOrCreateAppleIDStyle__block_invoke;
  v27 = &unk_2784A77E8;
  objc_copyWeak(v28, &location);
  v29 = [v11 _actionWithTitle:v9 descriptiveText:0 image:0 style:0 handler:&v23 shouldDismissHandler:&__block_literal_global_72];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  v8 = MEMORY[0x277D750F8];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v7 localizedStringForKey:@"CREATE_APPLE_ID_REBRAND" value:&stru_28358EF68 table:@"Localizable"];
  v16 = MEMORY[0x277D85DD0];
  v17 = -1073741824;
  v18 = 0;
  v19 = __78__AKBasicLoginAlertController__setupViewControllerForUserOrCreateAppleIDStyle__block_invoke_3;
  v20 = &unk_2784A77E8;
  objc_copyWeak(&v21, &location);
  v22 = [v8 actionWithTitle:v6 style:0 handler:&v16];
  MEMORY[0x277D82BD8](v6);
  *&v2 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  v5 = v34;
  v35[0] = v29;
  v35[1] = v22;
  v4 = [(AKBasicLoginAlertController *)v34 _wrappedCancelAction];
  v35[2] = v4;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:3];
  [(AKBasicLoginAlertController *)v5 _setActions:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(&v22, 0);
  objc_destroyWeak(&v21);
  objc_storeStrong(&v29, 0);
  objc_destroyWeak(v28);
  objc_destroyWeak(&location);
  objc_storeStrong(v33, 0);
  *MEMORY[0x277D85DE8];
}

void __78__AKBasicLoginAlertController__setupViewControllerForUserOrCreateAppleIDStyle__block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8[1] = a1;
  v8[0] = objc_loadWeakRetained(a1 + 4);
  v6 = [v8[0] loginActions];
  v7 = [v6 useIDAction];
  MEMORY[0x277D82BD8](v7);
  *&v2 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  if (v7)
  {
    v4 = [v8[0] loginActions];
    v3 = [v4 useIDAction];
    v3[2]();
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(v8, 0);
  objc_storeStrong(location, 0);
}

void __78__AKBasicLoginAlertController__setupViewControllerForUserOrCreateAppleIDStyle__block_invoke_3(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8[1] = a1;
  v8[0] = objc_loadWeakRetained(a1 + 4);
  v6 = [v8[0] loginActions];
  v7 = [v6 createIDAction];
  MEMORY[0x277D82BD8](v7);
  *&v2 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  if (v7)
  {
    v4 = [v8[0] loginActions];
    v3 = [v4 createIDAction];
    v3[2]();
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_setupViewControllerForIForgotStyle
{
  v32[3] = *MEMORY[0x277D85DE8];
  v31 = self;
  location[1] = a2;
  [(AKBasicLoginAlertController *)self setContentViewController:0];
  objc_initWeak(location, v31);
  v15 = MEMORY[0x277D750F8];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v14 localizedStringForKey:@"FORGOT_APPLE_ID_REBRAND" value:&stru_28358EF68 table:@"Localizable"];
  v23 = MEMORY[0x277D85DD0];
  v24 = -1073741824;
  v25 = 0;
  v26 = __66__AKBasicLoginAlertController__setupViewControllerForIForgotStyle__block_invoke;
  v27 = &unk_2784A77E8;
  objc_copyWeak(v28, location);
  v29 = [v15 actionWithTitle:v13 style:0 handler:&v23];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  v12 = MEMORY[0x277D750F8];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v11 localizedStringForKey:@"FORGOT_PASSWORD_ALERT" value:&stru_28358EF68 table:@"Localizable"];
  v16 = MEMORY[0x277D85DD0];
  v17 = -1073741824;
  v18 = 0;
  v19 = __66__AKBasicLoginAlertController__setupViewControllerForIForgotStyle__block_invoke_2;
  v20 = &unk_2784A77E8;
  objc_copyWeak(&v21, location);
  v22 = [v12 actionWithTitle:v10 style:0 handler:&v16];
  MEMORY[0x277D82BD8](v10);
  *&v2 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  v9 = v31;
  v32[0] = v29;
  v32[1] = v22;
  v8 = [(AKBasicLoginAlertController *)v31 _wrappedCancelAction];
  v32[2] = v8;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:3];
  [(AKBasicLoginAlertController *)v9 _setActions:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v6 localizedStringForKey:@"FORGOT_TITLE" value:&stru_28358EF68 table:@"Localizable"];
  [(AKBasicLoginAlertController *)v31 setTitle:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v4 localizedStringForKey:@"FORGOT_DESCRIPTION_REBRAND" value:&stru_28358EF68 table:@"Localizable"];
  [(AKBasicLoginAlertController *)v31 setMessage:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(&v22, 0);
  objc_destroyWeak(&v21);
  objc_storeStrong(&v29, 0);
  objc_destroyWeak(v28);
  objc_destroyWeak(location);
  *MEMORY[0x277D85DE8];
}

void __66__AKBasicLoginAlertController__setupViewControllerForIForgotStyle__block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8[1] = a1;
  v8[0] = objc_loadWeakRetained(a1 + 4);
  v6 = [v8[0] loginActions];
  v7 = [v6 forgotIDAction];
  MEMORY[0x277D82BD8](v7);
  *&v2 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  if (v7)
  {
    v4 = [v8[0] loginActions];
    v3 = [v4 forgotIDAction];
    v3[2]();
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(v8, 0);
  objc_storeStrong(location, 0);
}

void __66__AKBasicLoginAlertController__setupViewControllerForIForgotStyle__block_invoke_2(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9[1] = a1;
  v9[0] = objc_loadWeakRetained(a1 + 4);
  if (v9[0])
  {
    v6 = [v9[0] loginActions];
    v7 = [v6 forgotPasswordAction];
    MEMORY[0x277D82BD8](v7);
    *&v2 = MEMORY[0x277D82BD8](v6).n128_u64[0];
    if (v7)
    {
      [v9[0] _syncUsernameAndPasswordPropertiesWithTextFieldContent];
      v5 = [v9[0] loginActions];
      v4 = [v5 forgotPasswordAction];
      v3 = [v9[0] username];
      v4[2]();
      MEMORY[0x277D82BD8](v3);
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v5);
    }
  }

  objc_storeStrong(v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_setupViewControllerForSecondFactorEntryStyle:(int64_t)a3
{
  v26[2] = *MEMORY[0x277D85DE8];
  v25 = self;
  v24 = a2;
  v23 = a3;
  v22 = [(AKBasicLoginAlertController *)self contentViewController];
  if (!v22 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v13 = [[AKSecondFactorCodeEntryContentViewController alloc] initWithNibName:0 bundle:?];
    v3 = v22;
    v22 = v13;
    *&v4 = MEMORY[0x277D82BD8](v3).n128_u64[0];
    if (v23 == 5)
    {
      [v22 setPiggybackingForTrustedDevice:{1, v4}];
    }

    [(AKBasicLoginAlertController *)v25 setContentViewController:v22];
  }

  v12 = [(AKBasicLoginAlertController *)v25 reason];
  [v22 setReason:?];
  MEMORY[0x277D82BD8](v12);
  objc_initWeak(&location, v25);
  v11 = MEMORY[0x277D750F8];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v10 localizedStringForKey:@"DIDNT_GET_A_CODE" value:&stru_28358EF68 table:@"Localizable"];
  v14 = MEMORY[0x277D85DD0];
  v15 = -1073741824;
  v16 = 0;
  v17 = __77__AKBasicLoginAlertController__setupViewControllerForSecondFactorEntryStyle___block_invoke;
  v18 = &unk_2784A77E8;
  objc_copyWeak(v19, &location);
  v20 = [v11 actionWithTitle:v9 style:0 handler:&v14];
  MEMORY[0x277D82BD8](v9);
  *&v5 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  v8 = v25;
  v26[0] = v20;
  v7 = [(AKBasicLoginAlertController *)v25 _wrappedCancelAction];
  v26[1] = v7;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  [(AKBasicLoginAlertController *)v8 _setActions:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(&v20, 0);
  objc_destroyWeak(v19);
  objc_destroyWeak(&location);
  objc_storeStrong(&v22, 0);
  *MEMORY[0x277D85DE8];
}

void __77__AKBasicLoginAlertController__setupViewControllerForSecondFactorEntryStyle___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8[1] = a1;
  v8[0] = objc_loadWeakRetained(a1 + 4);
  v6 = [v8[0] secondFactorActions];
  v7 = [v6 regenerateCodeAction];
  MEMORY[0x277D82BD8](v7);
  *&v2 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  if (v7)
  {
    v4 = [v8[0] secondFactorActions];
    v3 = [v4 regenerateCodeAction];
    v3[2]();
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_dismissAndShowiForgot:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [(AKBasicLoginAlertController *)v9 loginActions];
  v7 = [(AKBasicLoginActions *)v6 forgotPasswordAction];
  MEMORY[0x277D82BD8](v7);
  *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  if (v7)
  {
    [(AKBasicLoginAlertController *)v9 _syncUsernameAndPasswordPropertiesWithTextFieldContent];
    v5 = [(AKBasicLoginAlertController *)v9 loginActions];
    v4 = [(AKBasicLoginActions *)v5 forgotPasswordAction];
    (v4)[2](v4, v9->_ak_username);
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(location, 0);
}

- (void)setUsername:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] copy];
  ak_username = v7->_ak_username;
  v7->_ak_username = v3;
  *&v5 = MEMORY[0x277D82BD8](ak_username).n128_u64[0];
  [(AKBasicLoginAlertController *)v7 _setupViewControllerForAlertStyle];
  objc_storeStrong(location, 0);
}

- (NSString)username
{
  v2 = [(NSString *)self->_ak_username copy:a2];

  return v2;
}

- (void)setPassword:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] copy];
  ak_password = v7->_ak_password;
  v7->_ak_password = v3;
  *&v5 = MEMORY[0x277D82BD8](ak_password).n128_u64[0];
  [(AKBasicLoginAlertController *)v7 _setupViewControllerForAlertStyle];
  objc_storeStrong(location, 0);
}

- (NSString)password
{
  v2 = [(NSString *)self->_ak_password copy:a2];

  return v2;
}

- (void)setAuthenticateTitle:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] copy];
  ak_title = v7->_ak_title;
  v7->_ak_title = v3;
  *&v5 = MEMORY[0x277D82BD8](ak_title).n128_u64[0];
  [(AKBasicLoginAlertController *)v7 _setupViewControllerForAlertStyle];
  objc_storeStrong(location, 0);
}

- (NSString)authenticateTitle
{
  v2 = [(NSString *)self->_ak_title copy:a2];

  return v2;
}

- (void)setReason:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] copy];
  ak_reason = v7->_ak_reason;
  v7->_ak_reason = v3;
  *&v5 = MEMORY[0x277D82BD8](ak_reason).n128_u64[0];
  [(AKBasicLoginAlertController *)v7 _setupViewControllerForAlertStyle];
  objc_storeStrong(location, 0);
}

- (NSString)reason
{
  v2 = [(NSString *)self->_ak_reason copy:a2];

  return v2;
}

- (void)setAuthenticateButtonTitle:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] copy];
  ak_authenticateButtonTitle = v7->_ak_authenticateButtonTitle;
  v7->_ak_authenticateButtonTitle = v3;
  *&v5 = MEMORY[0x277D82BD8](ak_authenticateButtonTitle).n128_u64[0];
  [(AKBasicLoginAlertController *)v7 _setupViewControllerForAlertStyle];
  objc_storeStrong(location, 0);
}

- (NSString)authenticateButtonTitle
{
  v2 = [(NSString *)self->_ak_authenticateButtonTitle copy:a2];

  return v2;
}

- (void)setCancelButtonTitle:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] copy];
  ak_cancelButtonTitle = v7->_ak_cancelButtonTitle;
  v7->_ak_cancelButtonTitle = v3;
  *&v5 = MEMORY[0x277D82BD8](ak_cancelButtonTitle).n128_u64[0];
  [(AKBasicLoginAlertController *)v7 _setupViewControllerForAlertStyle];
  objc_storeStrong(location, 0);
}

- (NSString)cancelButtonTitle
{
  v2 = [(NSString *)self->_ak_cancelButtonTitle copy:a2];

  return v2;
}

- (void)clearSecondFactorEntry
{
  v11 = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    v7 = v9;
    __os_log_helper_16_0_0(v8);
    _os_log_impl(&dword_222379000, log, v7, "Received request to clear 2FA Entry Field", v8, 2u);
  }

  objc_storeStrong(location, 0);
  v4 = [(AKBasicLoginAlertController *)v11 contentViewController];
  v5 = [v4 conformsToProtocol:&unk_2835CE5D8];
  *&v2 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  if (v5)
  {
    v3 = [(AKBasicLoginAlertController *)v11 contentViewController];
    [v3 clearSecondFactorEntry];
    MEMORY[0x277D82BD8](v3);
  }
}

- (void)setPasscodeFieldDisabled:(BOOL)a3
{
  v5 = [(AKBasicLoginAlertController *)self contentViewController];
  v6 = [v5 conformsToProtocol:&unk_2835CE5D8];
  *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  if (v6)
  {
    v4 = [(AKBasicLoginAlertController *)self contentViewController];
    [v4 setPasscodeFieldDisabled:a3];
    MEMORY[0x277D82BD8](v4);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4.receiver = self;
  v4.super_class = AKBasicLoginAlertController;
  [(AKBasicLoginAlertController *)&v4 viewDidAppear:a3];
  v3 = [(AKBasicLoginAlertController *)v7 delegate];
  [(AKBasicLoginControllerDelegate *)v3 basicLoginControllerDidPresent:v7];
  MEMORY[0x277D82BD8](v3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4.receiver = self;
  v4.super_class = AKBasicLoginAlertController;
  [(AKBasicLoginAlertController *)&v4 viewWillDisappear:a3];
  v3 = [(AKBasicLoginAlertController *)v7 delegate];
  [(AKBasicLoginControllerDelegate *)v3 basicLoginControllerWillDismiss:v7];
  MEMORY[0x277D82BD8](v3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4.receiver = self;
  v4.super_class = AKBasicLoginAlertController;
  [(AKBasicLoginAlertController *)&v4 viewDidDisappear:a3];
  v3 = [(AKBasicLoginAlertController *)v7 delegate];
  [(AKBasicLoginControllerDelegate *)v3 basicLoginControllerDidDismiss:v7];
  MEMORY[0x277D82BD8](v3);
}

- (id)_passwordField
{
  location[2] = self;
  location[1] = a2;
  v4 = [(AKBasicLoginAlertController *)self textFields];
  location[0] = [v4 copy];
  v5 = [location[0] indexOfObjectPassingTest:{&__block_literal_global_143, MEMORY[0x277D82BD8](v4).n128_f64[0]}];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [location[0] objectAtIndexedSubscript:v5];
  }

  objc_storeStrong(location, 0);
  v2 = v7;

  return v2;
}

BOOL __45__AKBasicLoginAlertController__passwordField__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] isSecureTextEntry] == 1;
  objc_storeStrong(location, 0);
  return v3;
}

- (void)startAnimating
{
  v27 = *MEMORY[0x277D85DE8];
  v24 = self;
  v23 = a2;
  if (![(AKBasicLoginAlertController *)self alertStyle]|| [(AKBasicLoginAlertController *)v24 alertStyle]== 1)
  {
    v17 = [(AKBasicLoginAlertController *)v24 textFields];
    v16 = [v17 lastObject];
    [v16 _beginPinningInputViews];
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
  }

  memset(__b, 0, sizeof(__b));
  obj = [(AKBasicLoginAlertController *)v24 textFields];
  v15 = [obj countByEnumeratingWithState:__b objects:v26 count:16];
  if (v15)
  {
    v11 = *__b[2];
    v12 = 0;
    v13 = v15;
    while (1)
    {
      v10 = v12;
      if (*__b[2] != v11)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(__b[1] + 8 * v12);
      [v22 setEnabled:0];
      ++v12;
      if (v10 + 1 >= v13)
      {
        v12 = 0;
        v13 = [obj countByEnumeratingWithState:__b objects:v26 count:16];
        if (!v13)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  memset(v19, 0, sizeof(v19));
  v8 = [(AKBasicLoginAlertController *)v24 actions];
  v9 = [v8 countByEnumeratingWithState:v19 objects:v25 count:16];
  if (v9)
  {
    v5 = *v19[2];
    v6 = 0;
    v7 = v9;
    while (1)
    {
      v4 = v6;
      if (*v19[2] != v5)
      {
        objc_enumerationMutation(v8);
      }

      v20 = *(v19[1] + 8 * v6);
      [v20 setEnabled:0];
      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [v8 countByEnumeratingWithState:v19 objects:v25 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  *&v2 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  v18 = [(AKBasicLoginAlertController *)v24 _passwordField];
  v3 = [v18 ak_addActivityIndicator];
  objc_storeStrong(&v18, 0);
  *MEMORY[0x277D85DE8];
}

- (void)stopAnimating
{
  v37 = *MEMORY[0x277D85DE8];
  v34 = self;
  v33 = a2;
  memset(__b, 0, sizeof(__b));
  obj = [(AKBasicLoginAlertController *)v34 textFields];
  v27 = [obj countByEnumeratingWithState:__b objects:v36 count:16];
  if (v27)
  {
    v23 = *__b[2];
    v24 = 0;
    v25 = v27;
    while (1)
    {
      v22 = v24;
      if (*__b[2] != v23)
      {
        objc_enumerationMutation(obj);
      }

      v32 = *(__b[1] + 8 * v24);
      [v32 setEnabled:1];
      ++v24;
      if (v22 + 1 >= v25)
      {
        v24 = 0;
        v25 = [obj countByEnumeratingWithState:__b objects:v36 count:16];
        if (!v25)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  memset(v29, 0, sizeof(v29));
  v20 = [(AKBasicLoginAlertController *)v34 actions];
  v21 = [v20 countByEnumeratingWithState:v29 objects:v35 count:16];
  if (v21)
  {
    v17 = *v29[2];
    v18 = 0;
    v19 = v21;
    while (1)
    {
      v16 = v18;
      if (*v29[2] != v17)
      {
        objc_enumerationMutation(v20);
      }

      v30 = *(v29[1] + 8 * v18);
      [v30 setEnabled:1];
      ++v18;
      if (v16 + 1 >= v19)
      {
        v18 = 0;
        v19 = [v20 countByEnumeratingWithState:v29 objects:v35 count:16];
        if (!v19)
        {
          break;
        }
      }
    }
  }

  *&v2 = MEMORY[0x277D82BD8](v20).n128_u64[0];
  location = [(AKBasicLoginAlertController *)v34 _passwordField];
  v14 = [location text];
  v15 = [v14 length];
  *&v3 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  if (v15)
  {
    [location setRightView:{0, v3}];
  }

  else
  {
    v4 = [location ak_addForgotButtonWithTarget:v34 action:{sel__dismissAndShowiForgot_, v3}];
  }

  v10 = [(AKBasicLoginAlertController *)v34 textFields];
  v9 = [v10 lastObject];
  [v9 becomeFirstResponder];
  MEMORY[0x277D82BD8](v9);
  *&v5 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  v12 = [(AKBasicLoginAlertController *)v34 textFields];
  v11 = [v12 lastObject];
  v13 = [v11 _isPinningInputViews];
  MEMORY[0x277D82BD8](v11);
  *&v6 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  if (v13)
  {
    v8 = [(AKBasicLoginAlertController *)v34 textFields];
    v7 = [v8 lastObject];
    [v7 _endPinningInputViews];
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)jiggleAView
{
  v11 = self;
  v10[1] = a2;
  v8 = [(AKBasicLoginAlertController *)self contentViewController];
  v9 = [v8 conformsToProtocol:&unk_2835CE5D8];
  *&v2 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  if (v9)
  {
    v7 = [(AKBasicLoginAlertController *)v11 contentViewController];
    [v7 jiggleAView];
    MEMORY[0x277D82BD8](v7);
  }

  else
  {
    v4 = [(AKBasicLoginAlertController *)v11 view];
    v10[0] = [v4 layer];
    *&v3 = MEMORY[0x277D82BD8](v4).n128_u64[0];
    v5 = v10[0];
    v6 = [MEMORY[0x277CD9DF8] ak_jiggleAnimation];
    [v5 addAnimation:? forKey:?];
    MEMORY[0x277D82BD8](v6);
    objc_storeStrong(v10, 0);
  }
}

- (void)clearPasswordField
{
  v3 = self;
  v2[1] = a2;
  v2[0] = [(AKBasicLoginAlertController *)self _passwordField];
  [v2[0] setText:?];
  [(AKBasicLoginAlertController *)v3 _passwordFieldDidChange:v2[0]];
  objc_storeStrong(v2, 0);
}

- (void)_passwordFieldDidChange:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = objc_opt_class();
  v12 = _AKSafeCast_5(v3, location[0]);
  if (v12)
  {
    v11 = [v12 text];
    v9 = 0;
    v6 = 0;
    if (![v11 length])
    {
      v10 = [v12 rightView];
      v9 = 1;
      v6 = v10 == 0;
    }

    if (v9)
    {
      MEMORY[0x277D82BD8](v10);
    }

    if (v6)
    {
      v4 = [v12 ak_addForgotButtonWithTarget:v14 action:sel__dismissAndShowiForgot_];
    }

    else
    {
      v7 = 0;
      v5 = 0;
      if ([v11 length])
      {
        v8 = [v12 rightView];
        v7 = 1;
        v5 = v8 != 0;
      }

      if (v7)
      {
        MEMORY[0x277D82BD8](v8);
      }

      if (v5)
      {
        [v12 setRightView:0];
      }
    }

    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)_beginObservingDidEnterCodeNotifications
{
  v13 = self;
  location[1] = a2;
  objc_initWeak(location, self);
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = [MEMORY[0x277CCABD8] mainQueue];
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __71__AKBasicLoginAlertController__beginObservingDidEnterCodeNotifications__block_invoke;
  v10 = &unk_2784A78C8;
  objc_copyWeak(v11, location);
  v2 = [v5 addObserverForName:@"AKSecondFactorCodeEntryContentViewControllerDidEnterCodeNotification" object:0 queue:v4 usingBlock:&v6];
  didEnterCodeObserver = v13->_didEnterCodeObserver;
  v13->_didEnterCodeObserver = v2;
  MEMORY[0x277D82BD8](didEnterCodeObserver);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  objc_destroyWeak(v11);
  objc_destroyWeak(location);
}

void __71__AKBasicLoginAlertController__beginObservingDidEnterCodeNotifications__block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3[1] = a1;
  v3[0] = objc_loadWeakRetained(a1 + 4);
  [v3[0] _didEnterCode:location[0]];
  objc_storeStrong(v3, 0);
  objc_storeStrong(location, 0);
}

- (void)_didEnterCode:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [(AKBasicLoginAlertController *)v9 secondFactorActions];
  v7 = [(AKBasicLoginSecondFactorActions *)v6 codeEnteredAction];
  *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  if (v7)
  {
    v5 = [location[0] userInfo];
    v4 = [v5 objectForKeyedSubscript:@"generatedCode"];
    (*(v7 + 2))();
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)_endObservingDidEnterCodeNotifications
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 removeObserver:self->_didEnterCodeObserver];
  MEMORY[0x277D82BD8](v2);
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return 1;
}

- (AKBasicLoginControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end