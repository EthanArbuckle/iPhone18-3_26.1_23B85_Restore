@interface AAUISignInViewController
+ (BOOL)_isRunningInBridge;
+ (BOOL)_isRunningInMuseBuddy;
+ (BOOL)_isRunningInSettings;
- (AAUIButton)createButton;
- (AAUIButton)forgotButton;
- (AAUISignInViewController)initWithCoder:(id)a3;
- (AAUISignInViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (AAUISignInViewControllerDelegate)delegate;
- (AKAppleIDAuthenticationController)authenticationController;
- (BOOL)_hasValidCredentials;
- (BOOL)_shouldShowChildSignButton;
- (BOOL)_showOnlyPassword;
- (BOOL)remoteUIController:(id)a3 shouldLoadRequest:(id)a4 redirectResponse:(id)a5;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldReturn:(id)a3;
- (UIButton)forgotOrCreateButton;
- (UIImageView)headerImageView;
- (double)_initialHeight;
- (double)_navigationBarHeight;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_accountHelpStackView;
- (id)_authorizationValueForAuthenticationResults:(id)a3;
- (id)_backBarButtonItem;
- (id)_cancelBarButtonItem;
- (id)_childSignInButton;
- (id)_continueButton;
- (id)_defaultHeaderImage;
- (id)_otherOptionsButton;
- (id)_passwordCell;
- (id)_prepareOBHeaderView;
- (id)_serverFriendlyUsername:(id)a3;
- (id)_tableFooterView;
- (id)_tableHeaderView;
- (id)_tableView;
- (id)_usernameCell;
- (id)authenticationContext;
- (id)forgotButtonLocalizedString;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_actionButtonSelected:(id)a3;
- (void)_attemptAuthentication;
- (void)_attemptAuthenticationWithContext:(id)a3;
- (void)_beginObservingKeyboardNotifications;
- (void)_beginObservingSizeCategoryNotification;
- (void)_beginObservingTextFieldDidChangeNotifications;
- (void)_cancelPasswordDelegateIfNecessary;
- (void)_childSignInSelected:(id)a3;
- (void)_continueButtonSelected:(id)a3;
- (void)_delegate_signInViewControllerDidCancel;
- (void)_delegate_signInViewControllerDidCompleteWithAuthenticationResults:(id)a3 completionHandler:(id)a4;
- (void)_delegate_signInViewControllerDidSelectOtherOptions;
- (void)_delegate_signInViewControllerDidSkip;
- (void)_endObservingKeyboardNotifications;
- (void)_endObservingSizeCategoryNotification;
- (void)_endObservingTextFieldDidChangeNotifications;
- (void)_formatUsernameAsPhoneNumberIfNeeded;
- (void)_handleKeyboardChangeNotification:(id)a3;
- (void)_presentCreateAppleIDPane;
- (void)_presentForgotAppleIDPane;
- (void)_prewarmSignInFlowIfApplicable;
- (void)_repairCloudAccountWithAuthenticationResults:(id)a3;
- (void)_resignFirstResponderForAppropriateTextField;
- (void)_setContinueButtonEnabled:(BOOL)a3;
- (void)_setEnabled:(BOOL)a3;
- (void)_setPasswordFieldHidden:(BOOL)a3;
- (void)_setUsernameCellWaiting:(BOOL)a3;
- (void)_textFieldDidChange:(id)a3;
- (void)_updateContentInsetWithHeight:(double)a3;
- (void)_updateExpandingViewInFooterForCellChange:(BOOL)a3;
- (void)_updateScrollIndicatorInsetWithHeight:(double)a3;
- (void)authenticationController:(id)a3 shouldContinueWithAuthenticationResults:(id)a4 error:(id)a5 forContext:(id)a6 completion:(id)a7;
- (void)constrainView:(id)a3 toFillHeaderFooterView:(id)a4;
- (void)context:(id)a3 needsPasswordWithCompletion:(id)a4;
- (void)dealloc;
- (void)loadView;
- (void)passwordCellTapped:(id)a3;
- (void)setHeaderImage:(id)a3;
- (void)setHideCreationAndForgotPasswordButton:(BOOL)a3;
- (void)setMessageLabel:(id)a3;
- (void)sizeCategoryDidChange:(id)a3;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)usernameCellTapped:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation AAUISignInViewController

- (AAUISignInViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = AAUISignInViewController;
  v4 = [(AAUISignInViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    _AAUISignInViewControllerCommonInit(v4);
  }

  return v5;
}

- (AAUISignInViewController)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = AAUISignInViewController;
  v3 = [(AAUISignInViewController *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    _AAUISignInViewControllerCommonInit(v3);
  }

  return v4;
}

- (void)loadView
{
  v3 = [AAUIBuddyView alloc];
  v4 = [(AAUIBuddyView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(AAUISignInViewController *)self setView:v4];

  v6 = [(AAUISignInViewController *)self view];
  v5 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v6 setBackgroundColor:v5];
}

- (void)viewDidLoad
{
  v47[4] = *MEMORY[0x1E69E9840];
  v46.receiver = self;
  v46.super_class = AAUISignInViewController;
  [(AAUISignInViewController *)&v46 viewDidLoad];
  v3 = [(AAUISignInViewController *)self authenticationContext];
  v4 = [v3 proxiedDevice];

  if (v4)
  {
    v5 = [(AAUISignInViewController *)self navigationItem];
    [v5 setHidesBackButton:0 animated:0];

    v6 = [(AAUISignInViewController *)self navigationItem];
    [v6 setLeftBarButtonItem:0 animated:0];
  }

  else if ([(AAUISignInViewController *)self hidesBackOrCancelButton])
  {
    v6 = [(AAUISignInViewController *)self navigationItem];
    [v6 setHidesBackButton:1 animated:0];
  }

  else
  {
    if ([(AAUISignInViewController *)self allowSkip]|| [(AAUISignInViewController *)self shouldShowSystemBackButton])
    {
      v6 = [(AAUISignInViewController *)self navigationItem];
      v7 = [(AAUISignInViewController *)self _backBarButtonItem];
      [v6 setLeftBarButtonItem:v7];
    }

    else
    {
      v6 = [(AAUISignInViewController *)self navigationItem];
      v7 = [(AAUISignInViewController *)self _cancelBarButtonItem];
      [v6 setRightBarButtonItem:v7];
    }
  }

  v8 = [(AAUISignInViewController *)self _tableView];
  v9 = [(AAUISignInViewController *)self view];
  [v9 addSubview:v8];

  v10 = [(AAUISignInViewController *)self navigationController];
  v11 = 0.0;
  if (v10)
  {
    v12 = v10;
    v13 = [(AAUISignInViewController *)self navigationController];
    if ([v13 modalPresentationStyle])
    {
      v14 = [(AAUISignInViewController *)self navigationController];
      v15 = [v14 modalPresentationStyle];

      if (v15 != 5)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    v16 = [MEMORY[0x1E69DC938] currentDevice];
    v17 = [v16 userInterfaceIdiom];

    if (v17 == 1)
    {
      v18 = objc_alloc_init(MEMORY[0x1E69DCCC0]);
      [v18 intrinsicContentSize];
      v11 = v19 + 0.0;
    }

    else
    {
      v20 = [MEMORY[0x1E69DC668] sharedApplication];
      [v20 statusBarFrame];
      v22 = v21;

      v11 = v22 + 0.0;
    }
  }

LABEL_18:
  v36 = MEMORY[0x1E696ACD8];
  v44 = [v8 topAnchor];
  v45 = [(AAUISignInViewController *)self view];
  v43 = [v45 topAnchor];
  v42 = [v44 constraintEqualToAnchor:v43 constant:v11];
  v47[0] = v42;
  v40 = [v8 leadingAnchor];
  v41 = [(AAUISignInViewController *)self view];
  v39 = [v41 contentLayoutGuide];
  v37 = [v39 leadingAnchor];
  v35 = [v40 constraintEqualToAnchor:v37];
  v47[1] = v35;
  v33 = [v8 trailingAnchor];
  v34 = [(AAUISignInViewController *)self view];
  [v34 contentLayoutGuide];
  v23 = v8;
  v24 = v38 = v8;
  v25 = [v24 trailingAnchor];
  v26 = [v33 constraintEqualToAnchor:v25];
  v47[2] = v26;
  v27 = [v23 bottomAnchor];
  v28 = [(AAUISignInViewController *)self view];
  v29 = [v28 contentLayoutGuide];
  v30 = [v29 bottomAnchor];
  v31 = [v27 constraintEqualToAnchor:v30];
  v47[3] = v31;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:4];
  [v36 activateConstraints:v32];

  [(AAUISignInViewController *)self setModalInPresentation:1];
}

- (void)viewWillAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = AAUISignInViewController;
  [(AAUISignInViewController *)&v8 viewWillAppear:a3];
  [(AAUISignInViewController *)self _beginObservingTextFieldDidChangeNotifications];
  [(AAUISignInViewController *)self _beginObservingKeyboardNotifications];
  [(AAUISignInViewController *)self _beginObservingSizeCategoryNotification];
  [(AAUISignInViewController *)self _setEnabled:1];
  v4 = [(AAUISignInViewController *)self _usernameCell];
  v5 = [v4 cellTextField];

  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"SIGN_IN_USERNAME_PLACEHOLDER" value:&stru_1F447F790 table:@"Localizable"];
  [v5 setPlaceholder:v7];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = AAUISignInViewController;
  [(AAUISignInViewController *)&v3 viewDidAppear:a3];
}

- (void)viewWillLayoutSubviews
{
  v11.receiver = self;
  v11.super_class = AAUISignInViewController;
  [(AAUISignInViewController *)&v11 viewWillLayoutSubviews];
  [(UITableView *)self->_tableView directionalLayoutMargins];
  v4 = v3;
  v6 = v5;
  [(AAUISignInViewController *)self systemMinimumLayoutMargins];
  v8 = v7 + 20.0;
  [(AAUISignInViewController *)self systemMinimumLayoutMargins];
  [(UITableView *)self->_tableView setDirectionalLayoutMargins:v4, v8, v6, v9 + 20.0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__AAUISignInViewController_viewWillLayoutSubviews__block_invoke;
  v10[3] = &unk_1E820B8F0;
  v10[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v10];
}

uint64_t __50__AAUISignInViewController_viewWillLayoutSubviews__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 992);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__AAUISignInViewController_viewWillLayoutSubviews__block_invoke_2;
  v4[3] = &unk_1E820B8F0;
  v4[4] = v1;
  return [v2 performBatchUpdates:v4 completion:0];
}

- (double)_initialHeight
{
  initialHeight = self->_initialHeight;
  if (!initialHeight)
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(AAUISignInViewController *)self view];
    [v5 frame];
    v7 = [v4 numberWithDouble:v6];
    v8 = self->_initialHeight;
    self->_initialHeight = v7;

    initialHeight = self->_initialHeight;
  }

  [(NSNumber *)initialHeight floatValue];
  return v9;
}

- (void)_updateExpandingViewInFooterForCellChange:(BOOL)a3
{
  v3 = a3;
  if (+[AAUIFeatureFlags isSolariumEnabled])
  {
    v5 = [(AAUISignInViewController *)self view];
    [v5 bounds];
    v7 = v6;

    v8 = [(AAUISignInViewController *)self view];
    [v8 safeAreaInsets];
    v10 = v9;
    v12 = v11;

    v13 = v7 - v10 - v12;
    goto LABEL_8;
  }

  v14 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v14 sf_isiPad])
  {

LABEL_6:
    [(AAUISignInViewController *)self _initialHeight];
    v13 = v17;
    goto LABEL_8;
  }

  v15 = [MEMORY[0x1E69DC938] currentDevice];
  v16 = [v15 userInterfaceIdiom];

  if (v16 == 6)
  {
    goto LABEL_6;
  }

  v18 = [MEMORY[0x1E69DC668] sharedApplication];
  v19 = [v18 keyWindow];

  [v19 safeAreaInsets];
  v21 = v20;
  v23 = v22;
  v24 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v24 bounds];
  v26 = v25;

  v13 = v26 - v23 - v21;
LABEL_8:
  [(AAUISignInViewController *)self _navigationBarHeight];
  v28 = v27;
  [(AAUIOBHeaderView *)self->_obHeaderView topPadding];
  v30 = v29;
  [(UITableView *)self->_tableView rectForFooterInSection:0];
  v32 = v31;
  if (v3)
  {
    v33 = [(AAUISignInViewController *)self _isPasswordFieldVisible];
    v34 = +[AAUIFeatureFlags isSolariumEnabled];
    v35 = 44.0;
    if (v34)
    {
      v35 = 52.0;
    }

    v36 = -44.0;
    if (v34)
    {
      v36 = -52.0;
    }

    if (!v33)
    {
      v35 = v36;
    }

    v32 = v32 + v35;
  }

  if (v28 >= v30)
  {
    v37 = v28;
  }

  else
  {
    v37 = v30;
  }

  v38 = v13 - v37 - v32;
  [(AAUISignInViewControllerTableFooterView *)self->_tableFooterView naturalHeight];
  v40 = v38 - v39;
  if (v40 < 20.0)
  {
    v40 = 20.0;
  }

  tableFooterView = self->_tableFooterView;

  [(AAUISignInViewControllerTableFooterView *)tableFooterView setExpandableViewToHeight:v40];
}

- (double)_navigationBarHeight
{
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 orientation];

  if ((v4 - 1) > 1)
  {
    v9 = [(AAUISignInViewController *)self navigationController];
    v10 = [v9 navigationBar];
    [v10 frame];
    navigationBarHeightPortrait = v11;
  }

  else
  {
    navigationBarHeightPortrait = self->_navigationBarHeightPortrait;
    if (navigationBarHeightPortrait == 0.0)
    {
      v6 = [(AAUISignInViewController *)self navigationController];
      v7 = [v6 navigationBar];
      [v7 frame];
      self->_navigationBarHeightPortrait = v8;

      return self->_navigationBarHeightPortrait;
    }
  }

  return navigationBarHeightPortrait;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = AAUISignInViewController;
  [(AAUISignInViewController *)&v4 viewDidDisappear:a3];
  [(AAUISignInViewController *)self _endObservingSizeCategoryNotification];
  [(AAUISignInViewController *)self _endObservingTextFieldDidChangeNotifications];
  [(AAUISignInViewController *)self _endObservingKeyboardNotifications];
}

- (void)dealloc
{
  [(AAUISignInViewController *)self _endObservingSizeCategoryNotification];
  [(AAUISignInViewController *)self _endObservingTextFieldDidChangeNotifications];
  [(AAUISignInViewController *)self _endObservingKeyboardNotifications];
  v3.receiver = self;
  v3.super_class = AAUISignInViewController;
  [(AAUISignInViewController *)&v3 dealloc];
}

- (id)authenticationContext
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(AAUISignInViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 authenticationContext];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E698DE80]);
    [v4 setAuthenticationType:2];
    [v4 setFirstTimeLogin:1];
    [v4 setPresentingViewController:self];
    [v4 setServiceType:{-[AAUISignInViewController _akServiceType](self, "_akServiceType")}];
    [v4 setShouldOfferSecurityUpgrade:0];
    [v4 setShouldUpdatePersistentServiceTokens:1];
    v5 = [(AAUISignInViewController *)self _shouldAnticipatePiggybacking];
    v6 = _AAUILogSystem();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v15 = 138412290;
        v16 = v9;
        _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "%@ detected primary iCloud sign in.", &v15, 0xCu);
      }

      [v4 setAnticipateEscrowAttempt:1];
      [v4 setShouldOfferSecurityUpgrade:1];
      [v4 setSupportsPiggybacking:1];
    }

    else
    {
      if (v7)
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v15 = 138412290;
        v16 = v11;
        _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "%@ detected non-primary iCloud sign in.", &v15, 0xCu);
      }
    }
  }

  v12 = [(AAUISignInViewController *)self protoAccountContext];

  if (v12)
  {
    v13 = [(AAUISignInViewController *)self protoAccountContext];
    [v4 setProtoAccountContext:v13];
  }

  return v4;
}

- (UIImageView)headerImageView
{
  v2 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:self->_headerImage];

  return v2;
}

- (void)setHeaderImage:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_headerImage, a3);
  obHeaderView = self->_obHeaderView;
  if (obHeaderView)
  {
    [(AAUIOBHeaderView *)obHeaderView setIcon:v6 accessibilityLabel:0];
  }
}

- (id)_cancelBarButtonItem
{
  v2 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:self action:sel__cancelButtonSelected_];
  [v2 setAccessibilityIdentifier:@"cancel-button"];

  return v2;
}

- (id)_backBarButtonItem
{
  v2 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:101 target:self action:sel__cancelButtonSelected_];
  [v2 setAccessibilityIdentifier:@"back-button"];

  return v2;
}

- (id)_defaultHeaderImage
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  if (+[AAUISignInViewController _isRunningInBridge])
  {
    v3 = @"AppleAccount_Icon_Orange";
  }

  else
  {
    v3 = @"AppleAccount_Icon_Blue";
  }

  v4 = [MEMORY[0x1E69DCAB8] imageNamed:v3 inBundle:v2];

  return v4;
}

- (id)_tableHeaderView
{
  tableHeaderView = self->_tableHeaderView;
  if (!tableHeaderView)
  {
    v4 = [AAUIBuddyView alloc];
    v5 = [(AAUIBuddyView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(AAUIBuddyView *)v5 setBackgroundColor:v6];

    [(AAUIBuddyView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [(AAUISignInViewController *)self _prepareOBHeaderView];
    v8 = objc_alloc_init(MEMORY[0x1E69DD050]);
    v9 = self->_tableHeaderView;
    self->_tableHeaderView = v8;

    v10 = self->_tableHeaderView;
    v11 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(UITableViewHeaderFooterView *)v10 setBackgroundColor:v11];

    [(UITableViewHeaderFooterView *)self->_tableHeaderView setAccessibilityIdentifier:@"header-view"];
    [(AAUISignInViewController *)self constrainView:self->_obHeaderView toFillHeaderFooterView:self->_tableHeaderView];
    [MEMORY[0x1E696ACD8] activateConstraints:v7];
    [(AAUIOBHeaderView *)self->_obHeaderView setNeedsLayout];
    [(AAUIOBHeaderView *)self->_obHeaderView layoutIfNeeded];

    tableHeaderView = self->_tableHeaderView;
  }

  return tableHeaderView;
}

- (AKAppleIDAuthenticationController)authenticationController
{
  authenticationController = self->_authenticationController;
  if (authenticationController)
  {
    v3 = authenticationController;
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x1E698DCC0]);
  }

  return v3;
}

- (id)_prepareOBHeaderView
{
  v49[8] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(AAUISignInViewController *)self authenticationContext];
  v5 = [v4 title];
  if ([v5 length])
  {
    v6 = [v4 title];
  }

  else
  {
    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v6 = [v7 localizedStringForKey:@"SIGN_IN_TITLE_REBRAND" value:&stru_1F447F790 table:@"Localizable"];
  }

  v8 = [v4 reason];
  if ([v8 length])
  {
    [v4 reason];
  }

  else
  {
    [(AAUISignInViewController *)self messageLabel];
  }
  v9 = ;

  headerImage = self->_headerImage;
  v11 = [AAUIOBHeaderView alloc];
  if (headerImage)
  {
    v12 = self->_headerImage;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(AAUIOBHeaderView *)v11 initWithTitle:v6 detailText:v9 icon:v12];
  obHeaderView = self->_obHeaderView;
  self->_obHeaderView = v13;

  [(AAUIOBHeaderView *)self->_obHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
  if (!self->_headerImage && self->_showServiceIcons)
  {
    v15 = objc_alloc_init(MEMORY[0x1E69DD250]);
    logoContainerView = self->_logoContainerView;
    self->_logoContainerView = v15;

    [(UIView *)self->_logoContainerView setFrame:0.0, 50.0, 373.0, 373.0];
    [(UIView *)self->_logoContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = objc_alloc_init(AAUIAppleLogoMicaView);
    v45 = v3;
    appleLogoMicaView = self->_appleLogoMicaView;
    self->_appleLogoMicaView = v17;

    [(AAUIAppleLogoMicaView *)self->_appleLogoMicaView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_logoContainerView addSubview:self->_appleLogoMicaView];
    v19 = [(AAUIOBHeaderView *)self->_obHeaderView animationView];
    [v19 addSubview:self->_logoContainerView];

    v20 = [(AAUIOBHeaderView *)self->_obHeaderView animationView];
    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

    v21 = [(AAUIOBHeaderView *)self->_obHeaderView animationView];
    [v21 setClipsToBounds:1];

    v47 = [(UIView *)self->_logoContainerView centerXAnchor];
    v48 = [(AAUIOBHeaderView *)self->_obHeaderView animationView];
    v46 = [v48 centerXAnchor];
    v44 = [v47 constraintEqualToAnchor:v46];
    v49[0] = v44;
    v42 = [(UIView *)self->_logoContainerView centerYAnchor];
    v43 = [(AAUIOBHeaderView *)self->_obHeaderView animationView];
    v41 = [v43 centerYAnchor];
    v40 = [v42 constraintEqualToAnchor:v41];
    v49[1] = v40;
    v39 = [(UIView *)self->_logoContainerView heightAnchor];
    v38 = [v39 constraintEqualToConstant:373.0];
    v49[2] = v38;
    v37 = [(UIView *)self->_logoContainerView widthAnchor];
    v36 = [v37 constraintEqualToConstant:373.0];
    v49[3] = v36;
    v35 = [(AAUIAppleLogoMicaView *)self->_appleLogoMicaView topAnchor];
    v34 = [(UIView *)self->_logoContainerView topAnchor];
    v33 = [v35 constraintEqualToAnchor:v34];
    v49[4] = v33;
    v31 = [(AAUIAppleLogoMicaView *)self->_appleLogoMicaView bottomAnchor];
    v30 = [(UIView *)self->_logoContainerView bottomAnchor];
    v22 = [v31 constraintEqualToAnchor:v30];
    v49[5] = v22;
    v23 = [(AAUIAppleLogoMicaView *)self->_appleLogoMicaView leadingAnchor];
    v24 = [(UIView *)self->_logoContainerView leadingAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
    v49[6] = v25;
    v26 = [(AAUIAppleLogoMicaView *)self->_appleLogoMicaView trailingAnchor];
    v27 = [(UIView *)self->_logoContainerView trailingAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];
    v49[7] = v28;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:8];

    v3 = v32;
  }

  return v3;
}

- (void)setMessageLabel:(id)a3
{
  self->_messageLabel = a3;
  obHeaderView = self->_obHeaderView;
  v5 = a3;
  v6 = [(AAUIOBHeaderView *)obHeaderView title];
  v7 = [v6 copy];

  [(AAUIOBHeaderView *)self->_obHeaderView setDetailText:v5];
  [(AAUIOBHeaderView *)self->_obHeaderView setTitle:v7];
}

- (id)_tableView
{
  tableView = self->_tableView;
  if (!tableView)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD020]);
    v5 = [v4 initWithFrame:self->_tableViewStyle style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = self->_tableView;
    self->_tableView = v5;

    [(UITableView *)self->_tableView setAllowsSelection:0];
    v7 = self->_tableView;
    v8 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(UITableView *)v7 setBackgroundColor:v8];

    [(UITableView *)self->_tableView setClipsToBounds:0];
    [(UITableView *)self->_tableView setDataSource:self];
    [(UITableView *)self->_tableView setDelegate:self];
    [(UITableView *)self->_tableView _setDrawsSeparatorAtTopOfSections:1];
    [(UITableView *)self->_tableView setSeparatorStyle:1];
    [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
    if (!+[AAUIFeatureFlags isSolariumEnabled])
    {
      [(UITableView *)self->_tableView setContentInsetAdjustmentBehavior:2];
    }

    [(UITableView *)self->_tableView registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"AAUISignInViewControllerTableFooterView"];
    tableView = self->_tableView;
  }

  return tableView;
}

- (id)_usernameCell
{
  usernameCell = self->_usernameCell;
  if (!usernameCell)
  {
    v4 = [objc_alloc(MEMORY[0x1E698DEA0]) initWithStyle:0 reuseIdentifier:0];
    v5 = self->_usernameCell;
    self->_usernameCell = v4;

    if (self->_cellBackgroundColor)
    {
      [(AKBasicLoginTableViewCell *)self->_usernameCell setBackgroundColor:?];
      v6 = [(AKBasicLoginTableViewCell *)self->_usernameCell contentView];
      [v6 setBackgroundColor:self->_cellBackgroundColor];
    }

    v7 = self->_usernameCell;
    v8 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_usernameCellTapped_];
    [(AKBasicLoginTableViewCell *)v7 addGestureRecognizer:v8];

    v9 = [(AKBasicLoginTableViewCell *)self->_usernameCell cellTextField];
    [v9 setDelegate:self];

    v10 = [(AKBasicLoginTableViewCell *)self->_usernameCell cellTextField];
    [v10 setKeyboardType:7];

    v11 = [(AKBasicLoginTableViewCell *)self->_usernameCell cellTextField];
    [v11 setReturnKeyType:11];

    v12 = [(AKBasicLoginTableViewCell *)self->_usernameCell cellTextField];
    v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"SIGN_IN_USERNAME_PLACEHOLDER" value:&stru_1F447F790 table:@"Localizable"];
    [v12 setPlaceholder:v14];

    v15 = [(AKBasicLoginTableViewCell *)self->_usernameCell cellTextField];
    [v15 setTextContentType:*MEMORY[0x1E69DE588]];

    v16 = [(AKBasicLoginTableViewCell *)self->_usernameCell cellTextField];
    v17 = [MEMORY[0x1E69DC888] labelColor];
    [v16 setTextColor:v17];

    if (self->_username)
    {
      v18 = [(AKBasicLoginTableViewCell *)self->_usernameCell cellTextField];
      [v18 setText:self->_username];

      if (!self->_canEditUsername)
      {
        v19 = [(AKBasicLoginTableViewCell *)self->_usernameCell cellTextField];
        v20 = [MEMORY[0x1E69DC888] lightGrayColor];
        [v19 setTextColor:v20];

        v21 = [(AKBasicLoginTableViewCell *)self->_usernameCell cellTextField];
        [v21 setUserInteractionEnabled:0];
      }

      [(AAUISignInViewController *)self _setContinueButtonEnabled:1];
      v22 = [(AAUISignInViewController *)self navigationItem];
      v23 = [v22 rightBarButtonItem];
      [v23 setEnabled:1];
    }

    v24 = [(AKBasicLoginTableViewCell *)self->_usernameCell cellTextField];
    [v24 setAccessibilityIdentifier:@"username-field"];

    usernameCell = self->_usernameCell;
  }

  return usernameCell;
}

- (id)_passwordCell
{
  passwordCell = self->_passwordCell;
  if (!passwordCell)
  {
    v4 = [objc_alloc(MEMORY[0x1E698DEA0]) initWithStyle:0 reuseIdentifier:0];
    v5 = self->_passwordCell;
    self->_passwordCell = v4;

    if (self->_cellBackgroundColor)
    {
      [(AKBasicLoginTableViewCell *)self->_passwordCell setBackgroundColor:?];
      v6 = [(AKBasicLoginTableViewCell *)self->_passwordCell contentView];
      [v6 setBackgroundColor:self->_cellBackgroundColor];
    }

    v7 = self->_passwordCell;
    v8 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_passwordCellTapped_];
    [(AKBasicLoginTableViewCell *)v7 addGestureRecognizer:v8];

    v9 = [(AKBasicLoginTableViewCell *)self->_passwordCell cellTextField];
    [v9 setDelegate:self];

    v10 = [(AKBasicLoginTableViewCell *)self->_passwordCell cellTextField];
    [v10 setReturnKeyType:9];

    v11 = [(AKBasicLoginTableViewCell *)self->_passwordCell cellTextField];
    v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"SIGN_IN_PASSWORD_PLACEHOLDER" value:&stru_1F447F790 table:@"Localizable"];
    [v11 setPlaceholder:v13];

    v14 = [(AKBasicLoginTableViewCell *)self->_passwordCell cellTextField];
    [v14 setSecureTextEntry:1];

    v15 = [(AKBasicLoginTableViewCell *)self->_passwordCell cellTextField];
    v16 = [MEMORY[0x1E69DC888] labelColor];
    [v15 setTextColor:v16];

    v17 = [(AKBasicLoginTableViewCell *)self->_passwordCell cellTextField];
    [v17 setTextContentType:*MEMORY[0x1E69DE528]];

    v18 = [(AKBasicLoginTableViewCell *)self->_passwordCell cellTextField];
    [v18 setAccessibilityIdentifier:@"password-field"];

    passwordCell = self->_passwordCell;
  }

  return passwordCell;
}

- (void)usernameCellTapped:(id)a3
{
  v3 = [(AKBasicLoginTableViewCell *)self->_usernameCell cellTextField];
  [v3 becomeFirstResponder];
}

- (void)passwordCellTapped:(id)a3
{
  v3 = [(AKBasicLoginTableViewCell *)self->_passwordCell cellTextField];
  [v3 becomeFirstResponder];
}

- (id)forgotButtonLocalizedString
{
  if ([(AAUISignInViewController *)self allowsAccountCreation])
  {
    v2 = @"SIGN_IN_HELP_BUTTON_FORGOT_OR_CREATE";
  }

  else
  {
    v3 = +[AAUIFeatureFlags isSolariumEnabled];
    v4 = @"SIGN_IN_HELP_BUTTON_FORGOT";
    if (v3)
    {
      v4 = @"SIGN_IN_HELP_BUTTON_FORGOT_SOLARIUM";
    }

    v2 = v4;
  }

  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:v2 value:&stru_1F447F790 table:@"Localizable"];

  return v6;
}

- (void)setHideCreationAndForgotPasswordButton:(BOOL)a3
{
  self->_hideCreationAndForgotPasswordButton = a3;
  v4 = [(AAUISignInViewController *)self hideCreationAndForgotPasswordButton];
  v5 = [(AAUISignInViewController *)self forgotOrCreateButton];
  [v5 setHidden:v4];
}

- (id)_accountHelpStackView
{
  accountHelpStackView = self->_accountHelpStackView;
  if (accountHelpStackView)
  {
    goto LABEL_15;
  }

  v4 = objc_alloc(MEMORY[0x1E69DCF90]);
  v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(UIStackView *)v5 setAxis:1];
  [(UIStackView *)v5 setAlignment:+[AAUIFeatureFlags isNaturalUIEnabled]];
  [(UIStackView *)v5 setDistribution:0];
  [(UIStackView *)v5 setLayoutMarginsRelativeArrangement:1];
  v6 = +[AAUIFeatureFlags isSolariumEnabled];
  v7 = 16.0;
  if (v6)
  {
    v7 = 20.0;
  }

  [(UIStackView *)v5 setSpacing:v7];
  [(UIStackView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  if ([(AAUISignInViewController *)self hideCreationAndForgotPasswordButton]|| +[AAUIFeatureFlags isSolariumEnabled])
  {
    if ([(AAUISignInViewController *)self hideCreationAndForgotPasswordButton]|| !+[AAUIFeatureFlags isSolariumEnabled])
    {
      goto LABEL_11;
    }

    v8 = [MEMORY[0x1E69DC738] buttonWithType:1];
    [(AAUISignInViewController *)self setForgotOrCreateButton:v8];
    [v8 addTarget:self action:sel__actionButtonSelected_ forControlEvents:64];
    v9 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    v10 = [(AAUISignInViewController *)self forgotButtonLocalizedString];
    [v9 setTitle:v10];

    v11 = MEMORY[0x1E69DCAB8];
    v12 = [MEMORY[0x1E69DCAD8] configurationWithScale:2];
    v13 = [v11 systemImageNamed:@"info.circle.fill" withConfiguration:v12];
    [v9 setImage:v13];

    [v9 setImagePadding:8.0];
    [v9 setContentInsets:{0.0, 0.0, 0.0, 0.0}];
    [v9 setTitleLineBreakMode:0];
    [v9 setTitleAlignment:0];
    [v8 setConfiguration:v9];
    v14 = [v8 titleLabel];
    [v14 setNumberOfLines:0];

    v15 = [v8 titleLabel];
    [v15 setTextAlignment:0];

    v16 = [v8 titleLabel];
    v17 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v16 setFont:v17];

    [v8 setAccessibilityIdentifier:@"footer-button"];
    [(UIStackView *)v5 addArrangedSubview:v8];
  }

  else
  {
    v8 = [AAUIButton buttonWithType:1];
    [(AAUISignInViewController *)self setForgotOrCreateButton:v8];
    [v8 addTarget:self action:sel__actionButtonSelected_ forControlEvents:64];
    v18 = [(AAUISignInViewController *)self forgotButtonLocalizedString];
    [v8 setTitle:v18 forState:0];

    v19 = [v8 titleLabel];
    [v19 setAdjustsFontForContentSizeCategory:1];

    v20 = [v8 titleLabel];
    [v20 setLineBreakMode:0];

    v21 = [v8 titleLabel];
    [v21 setNumberOfLines:0];

    v22 = [v8 titleLabel];
    [v22 setTextAlignment:1];

    v23 = [v8 titleLabel];
    v24 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v23 setFont:v24];

    [v8 setAccessibilityIdentifier:@"footer-button"];
    [(UIStackView *)v5 addArrangedSubview:v8];
  }

LABEL_11:
  if ([(AAUISignInViewController *)self _shouldShowChildSignButton]&& !+[AAUIFeatureFlags isSolariumEnabled])
  {
    v25 = [AAUIButton buttonWithType:1];
    [v25 addTarget:self action:sel__childSignInSelected_ forControlEvents:64];
    v26 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v27 = [v26 localizedStringForKey:@"SIGN_IN_FOR_CHILD_BUTTON_TITLE" value:&stru_1F447F790 table:@"Localizable"];
    [v25 setTitle:v27 forState:0];

    v28 = [v25 titleLabel];
    [v28 setAdjustsFontForContentSizeCategory:1];

    v29 = [v25 titleLabel];
    [v29 setLineBreakMode:0];

    v30 = [v25 titleLabel];
    [v30 setNumberOfLines:0];

    v31 = [v25 titleLabel];
    [v31 setTextAlignment:1];

    v32 = [v25 titleLabel];
    v33 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v32 setFont:v33];

    [v25 setAccessibilityIdentifier:@"child-sign-in-button"];
    [(UIStackView *)v5 addArrangedSubview:v25];
  }

  v34 = self->_accountHelpStackView;
  self->_accountHelpStackView = v5;

  accountHelpStackView = self->_accountHelpStackView;
LABEL_15:

  return accountHelpStackView;
}

- (id)_continueButton
{
  continueButton = self->_continueButton;
  if (!continueButton)
  {
    v4 = [MEMORY[0x1E69B7D00] boldButton];
    v5 = self->_continueButton;
    self->_continueButton = v4;

    if (!+[AAUIFeatureFlags isSolariumEnabled])
    {
      v6 = [MEMORY[0x1E69DC740] filledButtonConfiguration];
      [v6 setButtonSize:3];
      v7 = [v6 background];
      [v7 setCornerRadius:14.0];

      [(OBBoldTrayButton *)self->_continueButton setConfiguration:v6];
    }

    [(OBBoldTrayButton *)self->_continueButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = self->_continueButton;
    v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"SIGN_IN_BUTTON_CONTINUE" value:&stru_1F447F790 table:@"Localizable"];
    [(OBBoldTrayButton *)v8 setTitle:v10 forState:0];

    [(OBBoldTrayButton *)self->_continueButton addTarget:self action:sel__continueButtonSelected_ forControlEvents:64];
    [(OBBoldTrayButton *)self->_continueButton setAccessibilityIdentifier:@"continue-button"];
    continueButton = self->_continueButton;
  }

  return continueButton;
}

- (id)_childSignInButton
{
  childSignInButton = self->_childSignInButton;
  if (!childSignInButton)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DC738]);
    v5 = self->_childSignInButton;
    self->_childSignInButton = v4;

    v6 = self->_childSignInButton;
    v7 = [MEMORY[0x1E69DC888] systemGray6Color];
    [(UIButton *)v6 setBackgroundColor:v7];

    v8 = self->_childSignInButton;
    v9 = [MEMORY[0x1E69DC888] labelColor];
    [(UIButton *)v8 setTintColor:v9];

    v10 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    [v10 setCornerStyle:4];
    [v10 setButtonSize:3];
    [(UIButton *)self->_childSignInButton setConfiguration:v10];
    [(UIButton *)self->_childSignInButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = self->_childSignInButton;
    v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"SIGN_IN_FOR_CHILD_BUTTON_TITLE_SOLARIUM" value:&stru_1F447F790 table:@"Localizable"];
    [(UIButton *)v11 setTitle:v13 forState:0];

    [(UIButton *)self->_childSignInButton addTarget:self action:sel__childSignInSelected_ forControlEvents:64];
    [(UIButton *)self->_childSignInButton setAccessibilityIdentifier:@"child-sign-in-button"];

    childSignInButton = self->_childSignInButton;
  }

  return childSignInButton;
}

- (id)_otherOptionsButton
{
  otherOptionsButton = self->_otherOptionsButton;
  if (!otherOptionsButton)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DC738]);
    [(UIButton *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"SIGN_IN_OTHER_SIGN_IN_OPTIONS" value:&stru_1F447F790 table:@"Localizable"];
    [(UIButton *)v4 setTitle:v6 forState:0];

    [(UIButton *)v4 addTarget:self action:sel__delegate_signInViewControllerDidSelectOtherOptions forControlEvents:64];
    v7 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    [v7 setButtonSize:0];
    [(UIButton *)v4 setConfiguration:v7];
    v8 = self->_otherOptionsButton;
    self->_otherOptionsButton = v4;
    v9 = v4;

    [(UIButton *)self->_otherOptionsButton setAccessibilityIdentifier:@"other-options-button"];
    otherOptionsButton = self->_otherOptionsButton;
  }

  return otherOptionsButton;
}

- (void)constrainView:(id)a3 toFillHeaderFooterView:(id)a4
{
  v38[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v6 contentView];
  [v7 addSubview:v5];

  v29 = [v5 topAnchor];
  v30 = [v6 contentView];
  v28 = [v30 topAnchor];
  v27 = [v29 constraintEqualToAnchor:v28];
  v38[0] = v27;
  v25 = [v5 leftAnchor];
  v26 = [v6 contentView];
  v8 = [v26 leftAnchor];
  v9 = [v25 constraintEqualToAnchor:v8];
  v38[1] = v9;
  v10 = [v5 bottomAnchor];
  v11 = [v6 contentView];
  v12 = [v11 bottomAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  v38[2] = v13;
  v32 = v5;
  v14 = [v5 rightAnchor];
  v31 = v6;
  v15 = [v6 contentView];
  v16 = [v15 rightAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  v38[3] = v17;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v18 = v24;
  v19 = [v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v19)
  {
    v21 = v19;
    v22 = *v34;
    do
    {
      v23 = 0;
      do
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(v18);
        }

        LODWORD(v20) = 1148829696;
        [*(*(&v33 + 1) + 8 * v23++) setPriority:v20];
      }

      while (v21 != v23);
      v21 = [v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v21);
  }

  [MEMORY[0x1E696ACD8] activateConstraints:v18];
}

- (BOOL)_hasValidCredentials
{
  v3 = [(AKBasicLoginTableViewCell *)self->_usernameCell cellTextField];
  v4 = [v3 text];
  v5 = [v4 length];

  if (!v5)
  {
    return 0;
  }

  if (![(AAUISignInViewController *)self _isPasswordFieldVisible])
  {
    return 1;
  }

  v6 = [(AKBasicLoginTableViewCell *)self->_passwordCell cellTextField];
  v7 = [v6 text];
  v8 = [v7 length] != 0;

  return v8;
}

+ (BOOL)_isRunningInMuseBuddy
{
  if (_isRunningInMuseBuddy_onceToken != -1)
  {
    +[AAUISignInViewController _isRunningInMuseBuddy];
  }

  return _isRunningInMuseBuddy_isRunningInMuseBuddy;
}

void __49__AAUISignInViewController__isRunningInMuseBuddy__block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  _isRunningInMuseBuddy_isRunningInMuseBuddy = [v0 isEqualToString:@"com.apple.MuseBuddy"];
}

+ (BOOL)_isRunningInSettings
{
  if (_isRunningInSettings_onceToken != -1)
  {
    +[AAUISignInViewController _isRunningInSettings];
  }

  return _isRunningInSettings_isRunningInSettings;
}

void __48__AAUISignInViewController__isRunningInSettings__block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  _isRunningInSettings_isRunningInSettings = [v0 isEqualToString:@"com.apple.Preferences"];
}

+ (BOOL)_isRunningInBridge
{
  if (_isRunningInBridge_onceToken != -1)
  {
    +[AAUISignInViewController _isRunningInBridge];
  }

  return _isRunningInBridge_isRunningInBridge;
}

void __46__AAUISignInViewController__isRunningInBridge__block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  _isRunningInBridge_isRunningInBridge = [v0 isEqualToString:@"com.apple.Bridge"];
}

- (BOOL)_shouldShowChildSignButton
{
  v3 = _os_feature_enabled_impl();
  if (v3)
  {

    LOBYTE(v3) = [(AAUISignInViewController *)self _showsChildSignIn];
  }

  return v3;
}

- (void)_setEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(AAUISignInViewController *)self navigationItem];
  v6 = [v5 leftBarButtonItem];
  [v6 setEnabled:v3];

  v7 = [(AKBasicLoginTableViewCell *)self->_usernameCell cellTextField];
  [v7 setEnabled:v3];

  v8 = [(AKBasicLoginTableViewCell *)self->_passwordCell cellTextField];
  [v8 setEnabled:v3];

  WeakRetained = objc_loadWeakRetained(&self->_forgotOrCreateButton);
  if (WeakRetained)
  {
    v10 = objc_loadWeakRetained(&self->_forgotOrCreateButton);
    [v10 setEnabled:v3];
  }

  v11 = objc_loadWeakRetained(&self->_forgotButton);

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_forgotButton);
    [v12 setEnabled:v3];
  }

  v13 = objc_loadWeakRetained(&self->_createButton);

  if (v13)
  {
    v14 = objc_loadWeakRetained(&self->_createButton);
    [v14 setEnabled:v3];
  }

  otherOptionsButton = self->_otherOptionsButton;
  if (otherOptionsButton)
  {
    [(UIButton *)otherOptionsButton setEnabled:v3];
  }

  v16 = [(AAUISignInViewControllerTableFooterView *)self->_tableFooterView privacyLinkController];

  if (v16)
  {
    v17 = [(AAUISignInViewControllerTableFooterView *)self->_tableFooterView privacyLinkController];
    [v17 setLinkEnabled:v3];

    if (v3)
    {
      tintColor = self->_tintColor;
      if (tintColor)
      {
        v19 = [(AAUISignInViewControllerTableFooterView *)self->_tableFooterView privacyLinkController];
        [v19 setCustomTintColor:tintColor];
      }

      [(AAUISignInViewController *)self _setUsernameCellWaiting:0];
      goto LABEL_15;
    }

    [(AAUISignInViewController *)self _setUsernameCellWaiting:1];
  }

  else
  {
    v20 = v3 ^ 1;
    [(AAUISignInViewController *)self _setUsernameCellWaiting:v20];
    if ((v20 & 1) == 0)
    {
LABEL_15:
      v21 = [(AAUISignInViewController *)self _hasValidCredentials];
      goto LABEL_18;
    }
  }

  v21 = 0;
LABEL_18:

  [(AAUISignInViewController *)self _setContinueButtonEnabled:v21];
}

- (void)_setContinueButtonEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(AAUISignInViewController *)self _continueButton];
  [v4 setEnabled:v3];
}

- (void)_continueButtonSelected:(id)a3
{
  if ([(AAUISignInViewController *)self _hasValidCredentials])
  {
    [(AAUISignInViewController *)self _attemptAuthentication];

    [(AAUISignInViewController *)self _prewarmSignInFlowIfApplicable];
  }
}

- (void)_actionButtonSelected:(id)a3
{
  v4 = a3;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "User selected the action button...", buf, 2u);
  }

  [(AAUISignInViewController *)self _setEnabled:0];
  if ([(AAUISignInViewController *)self allowsAccountCreation]|| [(AAUISignInViewController *)self allowSkip])
  {
    v29 = v4;
    [(AAUISignInViewController *)self _resignFirstResponderForAppropriateTextField];
    v6 = [(AAUISignInViewController *)self allowsAccountCreation];
    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v8 = v7;
    if (v6)
    {
      v9 = @"SIGN_IN_HELP_ALERT_TITLE_FORGOT_OR_CREATE";
    }

    else
    {
      v9 = @"SIGN_IN_HELP_ALERT_TITLE_FORGOT_PASSWORD";
    }

    v10 = [v7 localizedStringForKey:v9 value:&stru_1F447F790 table:@"Localizable"];

    v11 = [MEMORY[0x1E69DC650] alertWithTitle:v10 message:0];
    v12 = MEMORY[0x1E69DC648];
    v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"SIGN_IN_HELP_ALERT_BUTTON_FORGOT" value:&stru_1F447F790 table:@"Localizable"];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __50__AAUISignInViewController__actionButtonSelected___block_invoke;
    v35[3] = &unk_1E820BFA8;
    v35[4] = self;
    v15 = [v12 actionWithTitle:v14 style:0 handler:v35];
    [v11 addAction:v15];

    if ([(AAUISignInViewController *)self allowsAccountCreation])
    {
      v16 = MEMORY[0x1E69DC648];
      v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v18 = [v17 localizedStringForKey:@"SIGN_IN_HELP_ALERT_BUTTON_CREATE" value:&stru_1F447F790 table:@"Localizable"];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __50__AAUISignInViewController__actionButtonSelected___block_invoke_2;
      v34[3] = &unk_1E820BFA8;
      v34[4] = self;
      v19 = [v16 actionWithTitle:v18 style:0 handler:v34];
      [v11 addAction:v19];
    }

    if ([(AAUISignInViewController *)self allowSkip])
    {
      v20 = MEMORY[0x1E69DC648];
      v21 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v22 = [v21 localizedStringForKey:@"SIGN_IN_HELP_ALERT_BUTTON_LATER" value:&stru_1F447F790 table:@"Localizable"];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __50__AAUISignInViewController__actionButtonSelected___block_invoke_3;
      v33[3] = &unk_1E820BFA8;
      v33[4] = self;
      v23 = [v20 actionWithTitle:v22 style:0 handler:v33];
      [v11 addAction:v23];
    }

    objc_initWeak(buf, self);
    v24 = MEMORY[0x1E69DC648];
    v25 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v26 = [v25 localizedStringForKey:@"SIGN_IN_HELP_ALERT_BUTTON_CANCEL" value:&stru_1F447F790 table:@"Localizable"];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __50__AAUISignInViewController__actionButtonSelected___block_invoke_4;
    v30[3] = &unk_1E820C0C8;
    objc_copyWeak(&v31, buf);
    v27 = [v24 actionWithTitle:v26 style:1 handler:v30];
    [v11 addAction:v27];

    [(AAUISignInViewController *)self presentViewController:v11 animated:1 completion:0];
    objc_destroyWeak(&v31);
    objc_destroyWeak(buf);

    v4 = v29;
  }

  else
  {
    v28 = _AAUILogSystem();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1C5355000, v28, OS_LOG_TYPE_DEFAULT, "Not allowed to create account, presenting iForgot...", buf, 2u);
    }

    [(AAUISignInViewController *)self _presentForgotAppleIDPane];
  }
}

void __50__AAUISignInViewController__actionButtonSelected___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setEnabled:1];

  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1C5355000, v2, OS_LOG_TYPE_DEFAULT, "User canceled the action alert.", v3, 2u);
  }
}

- (void)_resignFirstResponderForAppropriateTextField
{
  v3 = [(AAUISignInViewController *)self _isPasswordFieldVisible];
  v4 = &OBJC_IVAR___AAUISignInViewController__usernameCell;
  if (v3)
  {
    v4 = &OBJC_IVAR___AAUISignInViewController__passwordCell;
  }

  v5 = [*(&self->super.super.super.isa + *v4) cellTextField];
  [v5 resignFirstResponder];
}

- (void)_presentCreateAppleIDPane
{
  v3 = [(AAUISignInViewController *)self authenticationContext];
  [v3 setNeedsCredentialRecovery:0];
  [v3 setNeedsNewAppleID:1];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v4 = getBYWarrantyClass_softClass;
  v17 = getBYWarrantyClass_softClass;
  if (!getBYWarrantyClass_softClass)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __getBYWarrantyClass_block_invoke;
    v13[3] = &unk_1E820BE08;
    v13[4] = &v14;
    __getBYWarrantyClass_block_invoke(v13);
    v4 = v15[3];
  }

  v5 = v4;
  _Block_object_dispose(&v14, 8);
  if ([v4 shouldDisplay])
  {
    v6 = _AAUILogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13[0]) = 0;
      _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "Device warranty needed", v13, 2u);
    }

    v7 = [v3 httpHeadersForRemoteUI];
    v8 = [v7 mutableCopy];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = objc_opt_new();
    }

    v11 = v10;

    [v11 setObject:@"true" forKey:@"X-MMe-Show-Warranty"];
    [v3 setHttpHeadersForRemoteUI:v11];
  }

  v12 = _AAUILogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13[0]) = 0;
    _os_log_impl(&dword_1C5355000, v12, OS_LOG_TYPE_DEFAULT, "User wants a new Apple ID, presenting AuthKit...", v13, 2u);
  }

  [(AAUISignInViewController *)self _attemptAuthenticationWithContext:v3];
}

- (void)_presentForgotAppleIDPane
{
  v3 = [(AAUISignInViewController *)self authenticationContext];
  [v3 setNeedsCredentialRecovery:1];
  [v3 setNeedsNewAppleID:0];
  v4 = _AAUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "User forgot their Apple ID, presenting AuthKit...", v5, 2u);
  }

  [(AAUISignInViewController *)self _attemptAuthenticationWithContext:v3];
}

- (void)_childSignInSelected:(id)a3
{
  v4 = _AAUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "User selected the child sign in button...", v6, 2u);
  }

  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = [(AAUISignInViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 signInViewControllerDidSelectChildSignIn:self];
  }
}

- (void)_prewarmSignInFlowIfApplicable
{
  if ([(AAUISignInViewController *)self showServiceIcons])
  {
    v2 = objc_alloc_init(MEMORY[0x1E698B980]);
    [v2 prewarmOperationsWithCompletion:0];
  }
}

- (void)_attemptAuthentication
{
  v16 = *MEMORY[0x1E69E9840];
  [(AAUISignInViewController *)self _formatUsernameAsPhoneNumberIfNeeded];
  if (self->_passwordHandler)
  {
    [(AAUISignInViewController *)self _setEnabled:0];
    passwordHandler = self->_passwordHandler;
    v4 = [(AKBasicLoginTableViewCell *)self->_passwordCell cellTextField];
    v5 = [v4 text];
    passwordHandler[2](passwordHandler, v5, 0);

    v6 = self->_passwordHandler;
    self->_passwordHandler = 0;
  }

  else
  {
    v7 = [(AKBasicLoginTableViewCell *)self->_usernameCell cellTextField];
    v8 = [v7 text];

    v9 = [(AAUISignInViewController *)self _serverFriendlyUsername:v8];

    if ([(AAUISignInViewController *)self _isPasswordFieldVisible])
    {
      v10 = [(AKBasicLoginTableViewCell *)self->_passwordCell cellTextField];
      v11 = [v10 text];
    }

    else
    {
      v11 = 0;
    }

    v12 = [(AAUISignInViewController *)self authenticationContext];
    [v12 setNeedsCredentialRecovery:0];
    [v12 setNeedsNewAppleID:0];
    [v12 setUsername:v9];
    [v12 _setPassword:v11];
    [v12 _setPasswordDelegate:self];
    if (+[AAUISignInViewController _isRunningInSettings]&& ![(AAUISignInViewController *)self isChildSetupFlow])
    {
      [v12 setAppProvidedContext:*MEMORY[0x1E698DB30]];
    }

    v13 = _AAUILogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = v9;
      _os_log_impl(&dword_1C5355000, v13, OS_LOG_TYPE_DEFAULT, "Attempting authentication for username '%{public}@'", &v14, 0xCu);
    }

    [(AAUISignInViewController *)self _attemptAuthenticationWithContext:v12];
  }
}

- (void)_attemptAuthenticationWithContext:(id)a3
{
  v4 = a3;
  [(AAUISignInViewController *)self _setEnabled:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 willAuthenticateWithContext:v4];
  }

  v8 = _AAUILogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [AAUISignInViewController _attemptAuthenticationWithContext:v8];
  }

  [MEMORY[0x1E698B940] verifyAndFixPersonaIfNeeded:self->_originalPersona desiredContext:self->_originalPersonaContext];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__3;
  v15 = __Block_byref_object_dispose__3;
  v16 = [(AAUISignInViewController *)self authenticationController];
  [v12[5] setDelegate:self];
  v9 = v12[5];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__AAUISignInViewController__attemptAuthenticationWithContext___block_invoke;
  v10[3] = &unk_1E820C0F0;
  v10[4] = self;
  v10[5] = &v11;
  [v9 authenticateWithContext:v4 completion:v10];
  [MEMORY[0x1E698B940] personaConsistencyCheck:self->_originalPersona];
  _Block_object_dispose(&v11, 8);
}

void __62__AAUISignInViewController__attemptAuthenticationWithContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__AAUISignInViewController__attemptAuthenticationWithContext___block_invoke_2;
  block[3] = &unk_1E820BF58;
  v7 = *(a1 + 32);
  v13 = v5;
  v14 = v7;
  v15 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;
}

void __62__AAUISignInViewController__attemptAuthenticationWithContext___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E698DBC0]];

  if (v2)
  {
    v3 = _AAUILogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "Server returned continuation data, attempting to repair account...", buf, 2u);
    }

    [*(a1 + 40) _repairCloudAccountWithAuthenticationResults:*(a1 + 32)];
LABEL_5:
    [*(a1 + 40) _setEnabled:1];
    return;
  }

  v4 = *(a1 + 32);
  if (!v4)
  {
    v11 = _AAUILogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __62__AAUISignInViewController__attemptAuthenticationWithContext___block_invoke_2_cold_1(a1, v11, v12, v13, v14, v15, v16, v17);
    }

    goto LABEL_5;
  }

  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E698DBF0]];
  v6 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E698DBC8]];
  v7 = _AAUILogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"(*****)";
    if (!v6)
    {
      v8 = @"(null)";
    }

    *buf = 138543618;
    v20 = v5;
    v21 = 2114;
    v22 = v8;
    _os_log_impl(&dword_1C5355000, v7, OS_LOG_TYPE_DEFAULT, "Successfully authenticated account for username: %{public}@, password: %{public}@", buf, 0x16u);
  }

  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __62__AAUISignInViewController__attemptAuthenticationWithContext___block_invoke_228;
  v18[3] = &unk_1E820B8F0;
  v18[4] = v9;
  [v9 _delegate_signInViewControllerDidCompleteWithAuthenticationResults:v10 completionHandler:v18];
}

- (void)_repairCloudAccountWithAuthenticationResults:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698B9C0] urlConfiguration];
  v6 = [v5 repairCloudAccountUIURL];

  v7 = [MEMORY[0x1E695DFF8] URLWithString:v6];
  v8 = [objc_alloc(MEMORY[0x1E696AD68]) initWithURL:v7];
  [v8 setHTTPMethod:@"POST"];
  v9 = [v4 objectForKeyedSubscript:*MEMORY[0x1E698DBC0]];
  [v8 setValue:v9 forHTTPHeaderField:@"X-Apple-AK-Continuation-Data"];

  v10 = [(AAUISignInViewController *)self _authorizationValueForAuthenticationResults:v4];
  [v8 setValue:v10 forHTTPHeaderField:@"Authorization"];

  [v8 ak_addCountryHeader];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3;
  v21 = __Block_byref_object_dispose__3;
  v22 = [[AAUIRemoteUIController alloc] initWithIdentifier:@"com.apple.AppleAccountUI.SignIn"];
  [v18[5] setDelegate:self];
  v11 = v18[5];
  v12 = [(AAUISignInViewController *)self navigationController];
  [v11 setNavigationController:v12];

  v13 = _AAUILogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v13, OS_LOG_TYPE_DEFAULT, "Calling out to server to repair account...", buf, 2u);
  }

  v14 = v18[5];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__AAUISignInViewController__repairCloudAccountWithAuthenticationResults___block_invoke;
  v15[3] = &unk_1E820C118;
  v15[4] = &v17;
  [v14 loadRequest:v8 completion:v15];
  _Block_object_dispose(&v17, 8);
}

void __73__AAUISignInViewController__repairCloudAccountWithAuthenticationResults___block_invoke(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "Request came back with success: %@, error: %@", &v10, 0x16u);
  }

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

- (BOOL)_showOnlyPassword
{
  if (!self->_username || self->_canEditUsername)
  {
    return 0;
  }

  v3 = [(AAUISignInViewController *)self authenticationContext];
  v4 = [v3 proxiedDevice];
  v2 = v4 != 0;

  return v2;
}

- (id)_authorizationValueForAuthenticationResults:(id)a3
{
  v3 = *MEMORY[0x1E698DB40];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:v3];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E698DBC8]];

  if ([v5 length] && objc_msgSend(v6, "length"))
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", v5, v6];
    v8 = [v7 dataUsingEncoding:4];
    v9 = [v8 base64EncodedStringWithOptions:0];

    if ([v9 length])
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Basic %@", v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_cancelPasswordDelegateIfNecessary
{
  passwordHandler = self->_passwordHandler;
  if (passwordHandler)
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E698DB28] code:-7003 userInfo:0];
    passwordHandler[2](passwordHandler, 0, v4);

    v5 = self->_passwordHandler;
    self->_passwordHandler = 0;
  }
}

- (void)_setPasswordFieldHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(AAUISignInViewController *)self _isPasswordFieldVisible];
  if (v3)
  {
    if (!v5)
    {
      return;
    }

    v6 = [(AKBasicLoginTableViewCell *)self->_passwordCell cellTextField];
    [v6 setText:0];

    self->_showingPasswordCell = 0;
    v7 = MEMORY[0x1E69DD250];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __52__AAUISignInViewController__setPasswordFieldHidden___block_invoke;
    v17 = &unk_1E820B8F0;
    v18 = self;
    v8 = &v14;
  }

  else
  {
    if (v5)
    {
      return;
    }

    self->_showingPasswordCell = 1;
    v7 = MEMORY[0x1E69DD250];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __52__AAUISignInViewController__setPasswordFieldHidden___block_invoke_4;
    v12 = &unk_1E820B8F0;
    v13 = self;
    v8 = &v9;
  }

  [v7 animateWithDuration:v8 animations:{0.2, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18}];
}

uint64_t __52__AAUISignInViewController__setPasswordFieldHidden___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateExpandingViewInFooterForCellChange:1];
  v2 = *(a1 + 32);
  v3 = *(v2 + 992);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__AAUISignInViewController__setPasswordFieldHidden___block_invoke_2;
  v6[3] = &unk_1E820B8F0;
  v6[4] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__AAUISignInViewController__setPasswordFieldHidden___block_invoke_3;
  v5[3] = &unk_1E820C140;
  v5[4] = v2;
  return [v3 performBatchUpdates:v6 completion:v5];
}

void __52__AAUISignInViewController__setPasswordFieldHidden___block_invoke_2(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = v1[124];
  v3 = [v1 _passwordFieldIndexPath];
  v5[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [v2 deleteRowsAtIndexPaths:v4 withRowAnimation:3];
}

void __52__AAUISignInViewController__setPasswordFieldHidden___block_invoke_3(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 1000) cellTextField];
  [v1 becomeFirstResponder];
}

uint64_t __52__AAUISignInViewController__setPasswordFieldHidden___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _updateExpandingViewInFooterForCellChange:1];
  v2 = *(a1 + 32);
  v3 = *(v2 + 992);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__AAUISignInViewController__setPasswordFieldHidden___block_invoke_5;
  v6[3] = &unk_1E820B8F0;
  v6[4] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__AAUISignInViewController__setPasswordFieldHidden___block_invoke_6;
  v5[3] = &unk_1E820C140;
  v5[4] = v2;
  return [v3 performBatchUpdates:v6 completion:v5];
}

void __52__AAUISignInViewController__setPasswordFieldHidden___block_invoke_5(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = v1[124];
  v3 = [v1 _passwordFieldIndexPath];
  v5[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [v2 insertRowsAtIndexPaths:v4 withRowAnimation:4];
}

uint64_t __52__AAUISignInViewController__setPasswordFieldHidden___block_invoke_6(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1008) cellTextField];
  [v2 becomeFirstResponder];

  v3 = *(a1 + 32);
  v4 = [v3 _hasValidCredentials];

  return [v3 _setContinueButtonEnabled:v4];
}

- (void)_setUsernameCellWaiting:(BOOL)a3
{
  continueButton = self->_continueButton;
  if (a3)
  {
    [(OBBoldTrayButton *)continueButton showsBusyIndicator];
  }

  else
  {
    [(OBBoldTrayButton *)continueButton hidesBusyIndicator];
  }
}

- (void)_formatUsernameAsPhoneNumberIfNeeded
{
  v3 = [(AKBasicLoginTableViewCell *)self->_usernameCell cellTextField];
  v7 = [v3 text];

  if (([v7 containsString:@"@"] & 1) == 0)
  {
    v4 = objc_opt_new();
    v5 = [v4 displayFormatFor:v7];
    v6 = [(AKBasicLoginTableViewCell *)self->_usernameCell cellTextField];
    [v6 setText:v5];
  }
}

- (id)_serverFriendlyUsername:(id)a3
{
  v3 = a3;
  if ([v3 containsString:@"@"])
  {
    v4 = v3;
  }

  else
  {
    v5 = objc_opt_new();
    v4 = [v5 normalizedFormatFor:v3];
  }

  return v4;
}

- (void)_beginObservingTextFieldDidChangeNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__textFieldDidChange_ name:*MEMORY[0x1E69DE5C0] object:0];
}

- (void)_endObservingTextFieldDidChangeNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DE5C0] object:0];
}

- (void)_textFieldDidChange:(id)a3
{
  v7 = [a3 object];
  v4 = [(AKBasicLoginTableViewCell *)self->_usernameCell cellTextField];
  if (v7 == v4)
  {
  }

  else
  {
    v5 = [(AKBasicLoginTableViewCell *)self->_passwordCell cellTextField];

    v6 = v7;
    if (v7 != v5)
    {
      goto LABEL_6;
    }
  }

  [(AAUISignInViewController *)self _setContinueButtonEnabled:[(AAUISignInViewController *)self _hasValidCredentials]];
  v6 = v7;
LABEL_6:
}

- (void)_beginObservingKeyboardNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__handleKeyboardChangeNotification_ name:*MEMORY[0x1E69DDF78] object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel__handleKeyboardChangeNotification_ name:*MEMORY[0x1E69DE068] object:0];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 addObserver:self selector:sel__handleKeyboardChangeNotification_ name:*MEMORY[0x1E69DE078] object:0];
}

- (void)_endObservingKeyboardNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDF78] object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x1E69DE068] object:0];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:self name:*MEMORY[0x1E69DE078] object:0];
}

- (void)_handleKeyboardChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x1E69DDFA0]];
  [v6 CGRectValue];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [v4 object];
  v16 = [v15 coordinateSpace];

  v17 = self->_tableView;
  [v16 convertRect:v17 toCoordinateSpace:{v8, v10, v12, v14}];
  r2.origin.x = v18;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v43.origin.x = v8;
  v43.origin.y = v10;
  v43.size.width = v12;
  v43.size.height = v14;
  MinX = CGRectGetMinX(v43);
  [v16 bounds];
  if (MinX == CGRectGetMinX(v44) && (v45.origin.x = v8, v45.origin.y = v10, v45.size.width = v12, v45.size.height = v14, MaxX = CGRectGetMaxX(v45), [v16 bounds], MaxX == CGRectGetMaxX(v46)))
  {
    v51.origin.x = v8;
    v51.origin.y = v10;
    v51.size.width = v12;
    v51.size.height = v14;
    MaxY = CGRectGetMaxY(v51);
    [v16 bounds];
    v27 = MaxY == CGRectGetMaxY(v52);
  }

  else
  {
    v27 = 0;
  }

  [(UITableView *)v17 bounds];
  v53.origin.x = r2.origin.x;
  v53.origin.y = v20;
  v53.size.width = v22;
  v53.size.height = v24;
  v48 = CGRectIntersection(v47, v53);
  v28 = 0.0;
  if (v27)
  {
    x = v48.origin.x;
    y = v48.origin.y;
    width = v48.size.width;
    height = v48.size.height;
    if (!CGRectIsEmpty(v48))
    {
      [(UITableView *)v17 bounds];
      v33 = CGRectGetMaxY(v49);
      v50.origin.x = x;
      v50.origin.y = y;
      v50.size.width = width;
      v50.size.height = height;
      v34 = v33 - CGRectGetMinY(v50);
      [(UITableView *)self->_tableView safeAreaInsets];
      v28 = v34 - v48.size.width;
    }
  }

  v35 = [v4 userInfo];
  v36 = [v35 objectForKeyedSubscript:*MEMORY[0x1E69DDF40]];

  v37 = MEMORY[0x1E69DD250];
  [v36 doubleValue];
  *&r2.origin.y = MEMORY[0x1E69E9820];
  *&r2.size.width = 3221225472;
  *&r2.size.height = __62__AAUISignInViewController__handleKeyboardChangeNotification___block_invoke;
  v40 = &unk_1E820C168;
  v41 = self;
  v42 = v28;
  [v37 animateWithDuration:&r2.origin.y animations:?];
}

- (void)_updateContentInsetWithHeight:(double)a3
{
  [(UITableView *)self->_tableView _setContentScrollInset:0.0, 0.0, a3, 0.0];

  [(AAUISignInViewController *)self _updateScrollIndicatorInsetWithHeight:a3];
}

- (void)_updateScrollIndicatorInsetWithHeight:(double)a3
{
  [(UITableView *)self->_tableView frame];
  MaxX = CGRectGetMaxX(v9);
  v6 = [(AAUISignInViewController *)self view];
  [v6 bounds];
  [(UITableView *)self->_tableView setScrollIndicatorInsets:0.0, 0.0, a3, MaxX - CGRectGetWidth(v10)];

  tableView = self->_tableView;

  [(UITableView *)tableView setNeedsLayout];
}

- (void)_beginObservingSizeCategoryNotification
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel_sizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
}

- (void)_endObservingSizeCategoryNotification
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];
}

- (void)sizeCategoryDidChange:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__AAUISignInViewController_sizeCategoryDidChange___block_invoke;
  block[3] = &unk_1E820B8F0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __50__AAUISignInViewController_sizeCategoryDidChange___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1000);
  *(v2 + 1000) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 1008);
  *(v4 + 1008) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 1064);
  *(v6 + 1064) = 0;

  v8 = *(a1 + 32);
  v9 = *(v8 + 1072);
  *(v8 + 1072) = 0;

  v10 = *(*(a1 + 32) + 992);

  return [v10 reloadData];
}

- (void)_delegate_signInViewControllerDidCompleteWithAuthenticationResults:(id)a3 completionHandler:(id)a4
{
  v8 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v7 = [(AAUISignInViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 signInViewController:self didCompleteWithAuthenticationResults:v8 completionHandler:v6];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v7 signInViewController:self didCompleteWithAuthenticationResults:v8];
    if (v6)
    {
      v6[2](v6);
    }
  }

  else
  {
    if (v6)
    {
      v6[2](v6);
    }

    [(AAUISignInViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_delegate_signInViewControllerDidCancel
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v3 = [(AAUISignInViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 signInViewControllerDidCancel:self];
  }

  else
  {
    [(AAUISignInViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_delegate_signInViewControllerDidSkip
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v3 = [(AAUISignInViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 signInViewControllerDidSkip:self];
  }

  else
  {
    [(AAUISignInViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_delegate_signInViewControllerDidSelectOtherOptions
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v3 = [(AAUISignInViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 signInViewControllerDidSelectOtherOptions:self];
  }

  else
  {
    [(AAUISignInViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)context:(id)a3 needsPasswordWithCompletion:(id)a4
{
  v5 = _Block_copy(a4);
  passwordHandler = self->_passwordHandler;
  self->_passwordHandler = v5;

  [(AAUISignInViewController *)self _setPasswordFieldHidden:0];

  [(AAUISignInViewController *)self _setEnabled:1];
}

- (void)authenticationController:(id)a3 shouldContinueWithAuthenticationResults:(id)a4 error:(id)a5 forContext:(id)a6 completion:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  dispatch_assert_queue_not_V2(MEMORY[0x1E69E96A0]);
  v15 = _AAUILogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 0;
    _os_log_impl(&dword_1C5355000, v15, OS_LOG_TYPE_DEFAULT, "Authentication controller called back with auth results.", v25, 2u);
  }

  v16 = [(AAUISignInViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v17 = _AAUILogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [AAUISignInViewController authenticationController:v17 shouldContinueWithAuthenticationResults:? error:? forContext:? completion:?];
    }

    [v16 signInViewController:self shouldContinueWithAuthenticationResults:v11 error:v12 forContext:v13 completion:v14];
  }

  else if (v12)
  {
    v18 = _AAUILogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(AAUISignInViewController *)v12 authenticationController:v18 shouldContinueWithAuthenticationResults:v19 error:v20 forContext:v21 completion:v22, v23, v24];
    }

    v14[2](v14, 0);
  }

  else
  {
    v14[2](v14, 1);
  }
}

- (BOOL)remoteUIController:(id)a3 shouldLoadRequest:(id)a4 redirectResponse:(id)a5
{
  v5 = a4;
  [v5 setValue:@"application/x-plist" forHTTPHeaderField:@"Content-Type"];
  v6 = [MEMORY[0x1E698B890] userAgentHeader];
  [v5 setValue:v6 forHTTPHeaderField:@"User-Agent"];

  v7 = [MEMORY[0x1E698B890] clientInfoHeader];
  [v5 setValue:v7 forHTTPHeaderField:@"X-MMe-Client-Info"];

  v8 = [MEMORY[0x1E695DF58] currentLocale];
  v9 = [v8 objectForKey:*MEMORY[0x1E695D978]];
  v10 = [v9 uppercaseString];
  [v5 setValue:v10 forHTTPHeaderField:@"X-MMe-Country"];

  return 1;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (!self->_showingPasswordCell)
  {
    return 1;
  }

  if ([(AAUISignInViewController *)self _showOnlyPassword:a3])
  {
    return 1;
  }

  return 2;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 section] || objc_msgSend(v7, "row"))
  {
    v8 = [(AAUISignInViewController *)self _passwordFieldIndexPath];
    v9 = [v7 isEqual:v8];

    if (!v9)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid index path (%@) for %@.", v7, self];
      v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
      objc_exception_throw(v13);
    }

    goto LABEL_4;
  }

  if ([(AAUISignInViewController *)self _showOnlyPassword])
  {
LABEL_4:
    v10 = [(AAUISignInViewController *)self _passwordCell];
    goto LABEL_5;
  }

  v10 = [(AAUISignInViewController *)self _usernameCell];
LABEL_5:
  v11 = v10;

  return v11;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v5 = a4;
  [v5 setSeparatorStyle:1];
  [v5 _setShouldHaveFullLengthBottomSeparator:0];
  [v5 _setShouldHaveFullLengthTopSeparator:0];
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  if (a4)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(AAUISignInViewController *)self _tableHeaderView:a3];
  }

  return v6;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(AAUISignInViewController *)self _tableFooterView];
    [v4 setNeedsLayout];
    [v4 layoutIfNeeded];
  }

  return v4;
}

- (id)_tableFooterView
{
  tableFooterView = self->_tableFooterView;
  if (!tableFooterView)
  {
    v4 = [(UITableView *)self->_tableView dequeueReusableHeaderFooterViewWithIdentifier:@"AAUISignInViewControllerTableFooterView"];
    [(AAUISignInViewControllerTableFooterView *)v4 setParentForPrivacyController:self];
    v5 = [(AAUISignInViewController *)self privacyLinkIdentifiers];
    [(AAUISignInViewControllerTableFooterView *)v4 setPrivacyLinkIdentifiers:v5];

    v6 = [(AAUISignInViewController *)self _accountHelpStackView];
    [(AAUISignInViewControllerTableFooterView *)v4 addActionButtonStackView:v6];

    v7 = [(AAUISignInViewController *)self _continueButton];
    [(AAUISignInViewControllerTableFooterView *)v4 addContinueButton:v7];

    if ([(AAUISignInViewController *)self _shouldShowChildSignButton]&& +[AAUIFeatureFlags isSolariumEnabled])
    {
      v8 = [(AAUISignInViewController *)self _childSignInButton];
      [(AAUISignInViewControllerTableFooterView *)v4 addChildSignInButton:v8];
    }

    if ([(AAUISignInViewController *)self showOtherOptions])
    {
      v9 = [(AAUISignInViewController *)self _otherOptionsButton];
      [(AAUISignInViewControllerTableFooterView *)v4 addOtherButton:v9];
    }

    v10 = [(AAUISignInViewControllerTableFooterView *)v4 privacyLinkController];

    if (v10)
    {
      tintColor = self->_tintColor;
      v12 = [(AAUISignInViewControllerTableFooterView *)v4 privacyLinkController];
      [v12 setCustomTintColor:tintColor];
    }

    v13 = self->_tableFooterView;
    self->_tableFooterView = v4;

    tableFooterView = self->_tableFooterView;
  }

  return tableFooterView;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v4 = [(AAUISignInViewController *)self traitCollection:a3];
  v5 = [v4 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v5);

  if (IsAccessibilityCategory)
  {
    return *MEMORY[0x1E69DE3D0];
  }

  v8 = +[AAUIFeatureFlags isSolariumEnabled];
  result = 44.0;
  if (v8)
  {
    return 52.0;
  }

  return result;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  if ([(AAUISignInViewController *)self _hasValidCredentials])
  {
    [(AAUISignInViewController *)self _attemptAuthentication];
  }

  return 1;
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(AKBasicLoginTableViewCell *)self->_usernameCell cellTextField];
  if (v9 == v7 && [(AAUISignInViewController *)self _isPasswordFieldVisible])
  {
    v10 = [v7 text];
    v11 = [v10 isEqualToString:v8];

    if ((v11 & 1) == 0)
    {
      [(AAUISignInViewController *)self _cancelPasswordDelegateIfNecessary];
      [(AAUISignInViewController *)self _setPasswordFieldHidden:1];
    }
  }

  else
  {
  }

  return 1;
}

- (AAUISignInViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIButton)forgotOrCreateButton
{
  WeakRetained = objc_loadWeakRetained(&self->_forgotOrCreateButton);

  return WeakRetained;
}

- (AAUIButton)forgotButton
{
  WeakRetained = objc_loadWeakRetained(&self->_forgotButton);

  return WeakRetained;
}

- (AAUIButton)createButton
{
  WeakRetained = objc_loadWeakRetained(&self->_createButton);

  return WeakRetained;
}

- (void)_attemptAuthenticationWithContext:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[AAUISignInViewController _attemptAuthenticationWithContext:]";
  _os_log_debug_impl(&dword_1C5355000, log, OS_LOG_TYPE_DEBUG, "Verifying persona in %s", &v1, 0xCu);
}

@end