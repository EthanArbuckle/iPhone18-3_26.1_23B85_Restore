@interface AAUISignInViewController
+ (BOOL)_isRunningInBridge;
+ (BOOL)_isRunningInMuseBuddy;
+ (BOOL)_isRunningInSettings;
- (AAUIButton)createButton;
- (AAUIButton)forgotButton;
- (AAUISignInViewController)initWithCoder:(id)coder;
- (AAUISignInViewController)initWithNibName:(id)name bundle:(id)bundle;
- (AAUISignInViewControllerDelegate)delegate;
- (AKAppleIDAuthenticationController)authenticationController;
- (BOOL)_hasValidCredentials;
- (BOOL)_shouldShowChildSignButton;
- (BOOL)_showOnlyPassword;
- (BOOL)remoteUIController:(id)controller shouldLoadRequest:(id)request redirectResponse:(id)response;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldReturn:(id)return;
- (UIButton)forgotOrCreateButton;
- (UIImageView)headerImageView;
- (double)_initialHeight;
- (double)_navigationBarHeight;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_accountHelpStackView;
- (id)_authorizationValueForAuthenticationResults:(id)results;
- (id)_backBarButtonItem;
- (id)_cancelBarButtonItem;
- (id)_childSignInButton;
- (id)_continueButton;
- (id)_defaultHeaderImage;
- (id)_otherOptionsButton;
- (id)_passwordCell;
- (id)_prepareOBHeaderView;
- (id)_serverFriendlyUsername:(id)username;
- (id)_tableFooterView;
- (id)_tableHeaderView;
- (id)_tableView;
- (id)_usernameCell;
- (id)authenticationContext;
- (id)forgotButtonLocalizedString;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_actionButtonSelected:(id)selected;
- (void)_attemptAuthentication;
- (void)_attemptAuthenticationWithContext:(id)context;
- (void)_beginObservingKeyboardNotifications;
- (void)_beginObservingSizeCategoryNotification;
- (void)_beginObservingTextFieldDidChangeNotifications;
- (void)_cancelPasswordDelegateIfNecessary;
- (void)_childSignInSelected:(id)selected;
- (void)_continueButtonSelected:(id)selected;
- (void)_delegate_signInViewControllerDidCancel;
- (void)_delegate_signInViewControllerDidCompleteWithAuthenticationResults:(id)results completionHandler:(id)handler;
- (void)_delegate_signInViewControllerDidSelectOtherOptions;
- (void)_delegate_signInViewControllerDidSkip;
- (void)_endObservingKeyboardNotifications;
- (void)_endObservingSizeCategoryNotification;
- (void)_endObservingTextFieldDidChangeNotifications;
- (void)_formatUsernameAsPhoneNumberIfNeeded;
- (void)_handleKeyboardChangeNotification:(id)notification;
- (void)_presentCreateAppleIDPane;
- (void)_presentForgotAppleIDPane;
- (void)_prewarmSignInFlowIfApplicable;
- (void)_repairCloudAccountWithAuthenticationResults:(id)results;
- (void)_resignFirstResponderForAppropriateTextField;
- (void)_setContinueButtonEnabled:(BOOL)enabled;
- (void)_setEnabled:(BOOL)enabled;
- (void)_setPasswordFieldHidden:(BOOL)hidden;
- (void)_setUsernameCellWaiting:(BOOL)waiting;
- (void)_textFieldDidChange:(id)change;
- (void)_updateContentInsetWithHeight:(double)height;
- (void)_updateExpandingViewInFooterForCellChange:(BOOL)change;
- (void)_updateScrollIndicatorInsetWithHeight:(double)height;
- (void)authenticationController:(id)controller shouldContinueWithAuthenticationResults:(id)results error:(id)error forContext:(id)context completion:(id)completion;
- (void)constrainView:(id)view toFillHeaderFooterView:(id)footerView;
- (void)context:(id)context needsPasswordWithCompletion:(id)completion;
- (void)dealloc;
- (void)loadView;
- (void)passwordCellTapped:(id)tapped;
- (void)setHeaderImage:(id)image;
- (void)setHideCreationAndForgotPasswordButton:(BOOL)button;
- (void)setMessageLabel:(id)label;
- (void)sizeCategoryDidChange:(id)change;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)usernameCellTapped:(id)tapped;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation AAUISignInViewController

- (AAUISignInViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = AAUISignInViewController;
  v4 = [(AAUISignInViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    _AAUISignInViewControllerCommonInit(v4);
  }

  return v5;
}

- (AAUISignInViewController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = AAUISignInViewController;
  v3 = [(AAUISignInViewController *)&v6 initWithCoder:coder];
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

  view = [(AAUISignInViewController *)self view];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [view setBackgroundColor:systemBackgroundColor];
}

- (void)viewDidLoad
{
  v47[4] = *MEMORY[0x1E69E9840];
  v46.receiver = self;
  v46.super_class = AAUISignInViewController;
  [(AAUISignInViewController *)&v46 viewDidLoad];
  authenticationContext = [(AAUISignInViewController *)self authenticationContext];
  proxiedDevice = [authenticationContext proxiedDevice];

  if (proxiedDevice)
  {
    navigationItem = [(AAUISignInViewController *)self navigationItem];
    [navigationItem setHidesBackButton:0 animated:0];

    navigationItem2 = [(AAUISignInViewController *)self navigationItem];
    [navigationItem2 setLeftBarButtonItem:0 animated:0];
  }

  else if ([(AAUISignInViewController *)self hidesBackOrCancelButton])
  {
    navigationItem2 = [(AAUISignInViewController *)self navigationItem];
    [navigationItem2 setHidesBackButton:1 animated:0];
  }

  else
  {
    if ([(AAUISignInViewController *)self allowSkip]|| [(AAUISignInViewController *)self shouldShowSystemBackButton])
    {
      navigationItem2 = [(AAUISignInViewController *)self navigationItem];
      _backBarButtonItem = [(AAUISignInViewController *)self _backBarButtonItem];
      [navigationItem2 setLeftBarButtonItem:_backBarButtonItem];
    }

    else
    {
      navigationItem2 = [(AAUISignInViewController *)self navigationItem];
      _backBarButtonItem = [(AAUISignInViewController *)self _cancelBarButtonItem];
      [navigationItem2 setRightBarButtonItem:_backBarButtonItem];
    }
  }

  _tableView = [(AAUISignInViewController *)self _tableView];
  view = [(AAUISignInViewController *)self view];
  [view addSubview:_tableView];

  navigationController = [(AAUISignInViewController *)self navigationController];
  v11 = 0.0;
  if (navigationController)
  {
    v12 = navigationController;
    navigationController2 = [(AAUISignInViewController *)self navigationController];
    if ([navigationController2 modalPresentationStyle])
    {
      navigationController3 = [(AAUISignInViewController *)self navigationController];
      modalPresentationStyle = [navigationController3 modalPresentationStyle];

      if (modalPresentationStyle != 5)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      v18 = objc_alloc_init(MEMORY[0x1E69DCCC0]);
      [v18 intrinsicContentSize];
      v11 = v19 + 0.0;
    }

    else
    {
      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      [mEMORY[0x1E69DC668] statusBarFrame];
      v22 = v21;

      v11 = v22 + 0.0;
    }
  }

LABEL_18:
  v36 = MEMORY[0x1E696ACD8];
  topAnchor = [_tableView topAnchor];
  view2 = [(AAUISignInViewController *)self view];
  topAnchor2 = [view2 topAnchor];
  v42 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v11];
  v47[0] = v42;
  leadingAnchor = [_tableView leadingAnchor];
  view3 = [(AAUISignInViewController *)self view];
  contentLayoutGuide = [view3 contentLayoutGuide];
  leadingAnchor2 = [contentLayoutGuide leadingAnchor];
  v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v47[1] = v35;
  trailingAnchor = [_tableView trailingAnchor];
  view4 = [(AAUISignInViewController *)self view];
  [view4 contentLayoutGuide];
  v23 = _tableView;
  v24 = v38 = _tableView;
  trailingAnchor2 = [v24 trailingAnchor];
  v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v47[2] = v26;
  bottomAnchor = [v23 bottomAnchor];
  view5 = [(AAUISignInViewController *)self view];
  contentLayoutGuide2 = [view5 contentLayoutGuide];
  bottomAnchor2 = [contentLayoutGuide2 bottomAnchor];
  v31 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v47[3] = v31;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:4];
  [v36 activateConstraints:v32];

  [(AAUISignInViewController *)self setModalInPresentation:1];
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = AAUISignInViewController;
  [(AAUISignInViewController *)&v8 viewWillAppear:appear];
  [(AAUISignInViewController *)self _beginObservingTextFieldDidChangeNotifications];
  [(AAUISignInViewController *)self _beginObservingKeyboardNotifications];
  [(AAUISignInViewController *)self _beginObservingSizeCategoryNotification];
  [(AAUISignInViewController *)self _setEnabled:1];
  _usernameCell = [(AAUISignInViewController *)self _usernameCell];
  cellTextField = [_usernameCell cellTextField];

  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"SIGN_IN_USERNAME_PLACEHOLDER" value:&stru_1F447F790 table:@"Localizable"];
  [cellTextField setPlaceholder:v7];
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = AAUISignInViewController;
  [(AAUISignInViewController *)&v3 viewDidAppear:appear];
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
    view = [(AAUISignInViewController *)self view];
    [view frame];
    v7 = [v4 numberWithDouble:v6];
    v8 = self->_initialHeight;
    self->_initialHeight = v7;

    initialHeight = self->_initialHeight;
  }

  [(NSNumber *)initialHeight floatValue];
  return v9;
}

- (void)_updateExpandingViewInFooterForCellChange:(BOOL)change
{
  changeCopy = change;
  if (+[AAUIFeatureFlags isSolariumEnabled])
  {
    view = [(AAUISignInViewController *)self view];
    [view bounds];
    v7 = v6;

    view2 = [(AAUISignInViewController *)self view];
    [view2 safeAreaInsets];
    v10 = v9;
    v12 = v11;

    v13 = v7 - v10 - v12;
    goto LABEL_8;
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice sf_isiPad])
  {

LABEL_6:
    [(AAUISignInViewController *)self _initialHeight];
    v13 = v17;
    goto LABEL_8;
  }

  currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice2 userInterfaceIdiom];

  if (userInterfaceIdiom == 6)
  {
    goto LABEL_6;
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  keyWindow = [mEMORY[0x1E69DC668] keyWindow];

  [keyWindow safeAreaInsets];
  v21 = v20;
  v23 = v22;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v26 = v25;

  v13 = v26 - v23 - v21;
LABEL_8:
  [(AAUISignInViewController *)self _navigationBarHeight];
  v28 = v27;
  [(AAUIOBHeaderView *)self->_obHeaderView topPadding];
  v30 = v29;
  [(UITableView *)self->_tableView rectForFooterInSection:0];
  v32 = v31;
  if (changeCopy)
  {
    _isPasswordFieldVisible = [(AAUISignInViewController *)self _isPasswordFieldVisible];
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

    if (!_isPasswordFieldVisible)
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
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  orientation = [currentDevice orientation];

  if ((orientation - 1) > 1)
  {
    navigationController = [(AAUISignInViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar frame];
    navigationBarHeightPortrait = v11;
  }

  else
  {
    navigationBarHeightPortrait = self->_navigationBarHeightPortrait;
    if (navigationBarHeightPortrait == 0.0)
    {
      navigationController2 = [(AAUISignInViewController *)self navigationController];
      navigationBar2 = [navigationController2 navigationBar];
      [navigationBar2 frame];
      self->_navigationBarHeightPortrait = v8;

      return self->_navigationBarHeightPortrait;
    }
  }

  return navigationBarHeightPortrait;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = AAUISignInViewController;
  [(AAUISignInViewController *)&v4 viewDidDisappear:disappear];
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
  delegate = [(AAUISignInViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    authenticationContext = [delegate authenticationContext];
  }

  else
  {
    authenticationContext = objc_alloc_init(MEMORY[0x1E698DE80]);
    [authenticationContext setAuthenticationType:2];
    [authenticationContext setFirstTimeLogin:1];
    [authenticationContext setPresentingViewController:self];
    [authenticationContext setServiceType:{-[AAUISignInViewController _akServiceType](self, "_akServiceType")}];
    [authenticationContext setShouldOfferSecurityUpgrade:0];
    [authenticationContext setShouldUpdatePersistentServiceTokens:1];
    _shouldAnticipatePiggybacking = [(AAUISignInViewController *)self _shouldAnticipatePiggybacking];
    v6 = _AAUILogSystem();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (_shouldAnticipatePiggybacking)
    {
      if (v7)
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v15 = 138412290;
        v16 = v9;
        _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "%@ detected primary iCloud sign in.", &v15, 0xCu);
      }

      [authenticationContext setAnticipateEscrowAttempt:1];
      [authenticationContext setShouldOfferSecurityUpgrade:1];
      [authenticationContext setSupportsPiggybacking:1];
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

  protoAccountContext = [(AAUISignInViewController *)self protoAccountContext];

  if (protoAccountContext)
  {
    protoAccountContext2 = [(AAUISignInViewController *)self protoAccountContext];
    [authenticationContext setProtoAccountContext:protoAccountContext2];
  }

  return authenticationContext;
}

- (UIImageView)headerImageView
{
  v2 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:self->_headerImage];

  return v2;
}

- (void)setHeaderImage:(id)image
{
  imageCopy = image;
  objc_storeStrong(&self->_headerImage, image);
  obHeaderView = self->_obHeaderView;
  if (obHeaderView)
  {
    [(AAUIOBHeaderView *)obHeaderView setIcon:imageCopy accessibilityLabel:0];
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
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(AAUIBuddyView *)v5 setBackgroundColor:systemBackgroundColor];

    [(AAUIBuddyView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    _prepareOBHeaderView = [(AAUISignInViewController *)self _prepareOBHeaderView];
    v8 = objc_alloc_init(MEMORY[0x1E69DD050]);
    v9 = self->_tableHeaderView;
    self->_tableHeaderView = v8;

    v10 = self->_tableHeaderView;
    systemBackgroundColor2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(UITableViewHeaderFooterView *)v10 setBackgroundColor:systemBackgroundColor2];

    [(UITableViewHeaderFooterView *)self->_tableHeaderView setAccessibilityIdentifier:@"header-view"];
    [(AAUISignInViewController *)self constrainView:self->_obHeaderView toFillHeaderFooterView:self->_tableHeaderView];
    [MEMORY[0x1E696ACD8] activateConstraints:_prepareOBHeaderView];
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
  authenticationContext = [(AAUISignInViewController *)self authenticationContext];
  title = [authenticationContext title];
  if ([title length])
  {
    title2 = [authenticationContext title];
  }

  else
  {
    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    title2 = [v7 localizedStringForKey:@"SIGN_IN_TITLE_REBRAND" value:&stru_1F447F790 table:@"Localizable"];
  }

  reason = [authenticationContext reason];
  if ([reason length])
  {
    [authenticationContext reason];
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

  v13 = [(AAUIOBHeaderView *)v11 initWithTitle:title2 detailText:v9 icon:v12];
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
    animationView = [(AAUIOBHeaderView *)self->_obHeaderView animationView];
    [animationView addSubview:self->_logoContainerView];

    animationView2 = [(AAUIOBHeaderView *)self->_obHeaderView animationView];
    [animationView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    animationView3 = [(AAUIOBHeaderView *)self->_obHeaderView animationView];
    [animationView3 setClipsToBounds:1];

    centerXAnchor = [(UIView *)self->_logoContainerView centerXAnchor];
    animationView4 = [(AAUIOBHeaderView *)self->_obHeaderView animationView];
    centerXAnchor2 = [animationView4 centerXAnchor];
    v44 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v49[0] = v44;
    centerYAnchor = [(UIView *)self->_logoContainerView centerYAnchor];
    animationView5 = [(AAUIOBHeaderView *)self->_obHeaderView animationView];
    centerYAnchor2 = [animationView5 centerYAnchor];
    v40 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v49[1] = v40;
    heightAnchor = [(UIView *)self->_logoContainerView heightAnchor];
    v38 = [heightAnchor constraintEqualToConstant:373.0];
    v49[2] = v38;
    widthAnchor = [(UIView *)self->_logoContainerView widthAnchor];
    v36 = [widthAnchor constraintEqualToConstant:373.0];
    v49[3] = v36;
    topAnchor = [(AAUIAppleLogoMicaView *)self->_appleLogoMicaView topAnchor];
    topAnchor2 = [(UIView *)self->_logoContainerView topAnchor];
    v33 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v49[4] = v33;
    bottomAnchor = [(AAUIAppleLogoMicaView *)self->_appleLogoMicaView bottomAnchor];
    bottomAnchor2 = [(UIView *)self->_logoContainerView bottomAnchor];
    v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v49[5] = v22;
    leadingAnchor = [(AAUIAppleLogoMicaView *)self->_appleLogoMicaView leadingAnchor];
    leadingAnchor2 = [(UIView *)self->_logoContainerView leadingAnchor];
    v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v49[6] = v25;
    trailingAnchor = [(AAUIAppleLogoMicaView *)self->_appleLogoMicaView trailingAnchor];
    trailingAnchor2 = [(UIView *)self->_logoContainerView trailingAnchor];
    v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v49[7] = v28;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:8];

    v3 = v32;
  }

  return v3;
}

- (void)setMessageLabel:(id)label
{
  self->_messageLabel = label;
  obHeaderView = self->_obHeaderView;
  labelCopy = label;
  title = [(AAUIOBHeaderView *)obHeaderView title];
  v7 = [title copy];

  [(AAUIOBHeaderView *)self->_obHeaderView setDetailText:labelCopy];
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
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(UITableView *)v7 setBackgroundColor:systemBackgroundColor];

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
      contentView = [(AKBasicLoginTableViewCell *)self->_usernameCell contentView];
      [contentView setBackgroundColor:self->_cellBackgroundColor];
    }

    v7 = self->_usernameCell;
    v8 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_usernameCellTapped_];
    [(AKBasicLoginTableViewCell *)v7 addGestureRecognizer:v8];

    cellTextField = [(AKBasicLoginTableViewCell *)self->_usernameCell cellTextField];
    [cellTextField setDelegate:self];

    cellTextField2 = [(AKBasicLoginTableViewCell *)self->_usernameCell cellTextField];
    [cellTextField2 setKeyboardType:7];

    cellTextField3 = [(AKBasicLoginTableViewCell *)self->_usernameCell cellTextField];
    [cellTextField3 setReturnKeyType:11];

    cellTextField4 = [(AKBasicLoginTableViewCell *)self->_usernameCell cellTextField];
    v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"SIGN_IN_USERNAME_PLACEHOLDER" value:&stru_1F447F790 table:@"Localizable"];
    [cellTextField4 setPlaceholder:v14];

    cellTextField5 = [(AKBasicLoginTableViewCell *)self->_usernameCell cellTextField];
    [cellTextField5 setTextContentType:*MEMORY[0x1E69DE588]];

    cellTextField6 = [(AKBasicLoginTableViewCell *)self->_usernameCell cellTextField];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [cellTextField6 setTextColor:labelColor];

    if (self->_username)
    {
      cellTextField7 = [(AKBasicLoginTableViewCell *)self->_usernameCell cellTextField];
      [cellTextField7 setText:self->_username];

      if (!self->_canEditUsername)
      {
        cellTextField8 = [(AKBasicLoginTableViewCell *)self->_usernameCell cellTextField];
        lightGrayColor = [MEMORY[0x1E69DC888] lightGrayColor];
        [cellTextField8 setTextColor:lightGrayColor];

        cellTextField9 = [(AKBasicLoginTableViewCell *)self->_usernameCell cellTextField];
        [cellTextField9 setUserInteractionEnabled:0];
      }

      [(AAUISignInViewController *)self _setContinueButtonEnabled:1];
      navigationItem = [(AAUISignInViewController *)self navigationItem];
      rightBarButtonItem = [navigationItem rightBarButtonItem];
      [rightBarButtonItem setEnabled:1];
    }

    cellTextField10 = [(AKBasicLoginTableViewCell *)self->_usernameCell cellTextField];
    [cellTextField10 setAccessibilityIdentifier:@"username-field"];

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
      contentView = [(AKBasicLoginTableViewCell *)self->_passwordCell contentView];
      [contentView setBackgroundColor:self->_cellBackgroundColor];
    }

    v7 = self->_passwordCell;
    v8 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_passwordCellTapped_];
    [(AKBasicLoginTableViewCell *)v7 addGestureRecognizer:v8];

    cellTextField = [(AKBasicLoginTableViewCell *)self->_passwordCell cellTextField];
    [cellTextField setDelegate:self];

    cellTextField2 = [(AKBasicLoginTableViewCell *)self->_passwordCell cellTextField];
    [cellTextField2 setReturnKeyType:9];

    cellTextField3 = [(AKBasicLoginTableViewCell *)self->_passwordCell cellTextField];
    v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"SIGN_IN_PASSWORD_PLACEHOLDER" value:&stru_1F447F790 table:@"Localizable"];
    [cellTextField3 setPlaceholder:v13];

    cellTextField4 = [(AKBasicLoginTableViewCell *)self->_passwordCell cellTextField];
    [cellTextField4 setSecureTextEntry:1];

    cellTextField5 = [(AKBasicLoginTableViewCell *)self->_passwordCell cellTextField];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [cellTextField5 setTextColor:labelColor];

    cellTextField6 = [(AKBasicLoginTableViewCell *)self->_passwordCell cellTextField];
    [cellTextField6 setTextContentType:*MEMORY[0x1E69DE528]];

    cellTextField7 = [(AKBasicLoginTableViewCell *)self->_passwordCell cellTextField];
    [cellTextField7 setAccessibilityIdentifier:@"password-field"];

    passwordCell = self->_passwordCell;
  }

  return passwordCell;
}

- (void)usernameCellTapped:(id)tapped
{
  cellTextField = [(AKBasicLoginTableViewCell *)self->_usernameCell cellTextField];
  [cellTextField becomeFirstResponder];
}

- (void)passwordCellTapped:(id)tapped
{
  cellTextField = [(AKBasicLoginTableViewCell *)self->_passwordCell cellTextField];
  [cellTextField becomeFirstResponder];
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

- (void)setHideCreationAndForgotPasswordButton:(BOOL)button
{
  self->_hideCreationAndForgotPasswordButton = button;
  hideCreationAndForgotPasswordButton = [(AAUISignInViewController *)self hideCreationAndForgotPasswordButton];
  forgotOrCreateButton = [(AAUISignInViewController *)self forgotOrCreateButton];
  [forgotOrCreateButton setHidden:hideCreationAndForgotPasswordButton];
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
    plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    forgotButtonLocalizedString = [(AAUISignInViewController *)self forgotButtonLocalizedString];
    [plainButtonConfiguration setTitle:forgotButtonLocalizedString];

    v11 = MEMORY[0x1E69DCAB8];
    v12 = [MEMORY[0x1E69DCAD8] configurationWithScale:2];
    v13 = [v11 systemImageNamed:@"info.circle.fill" withConfiguration:v12];
    [plainButtonConfiguration setImage:v13];

    [plainButtonConfiguration setImagePadding:8.0];
    [plainButtonConfiguration setContentInsets:{0.0, 0.0, 0.0, 0.0}];
    [plainButtonConfiguration setTitleLineBreakMode:0];
    [plainButtonConfiguration setTitleAlignment:0];
    [v8 setConfiguration:plainButtonConfiguration];
    titleLabel = [v8 titleLabel];
    [titleLabel setNumberOfLines:0];

    titleLabel2 = [v8 titleLabel];
    [titleLabel2 setTextAlignment:0];

    titleLabel3 = [v8 titleLabel];
    v17 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [titleLabel3 setFont:v17];

    [v8 setAccessibilityIdentifier:@"footer-button"];
    [(UIStackView *)v5 addArrangedSubview:v8];
  }

  else
  {
    v8 = [AAUIButton buttonWithType:1];
    [(AAUISignInViewController *)self setForgotOrCreateButton:v8];
    [v8 addTarget:self action:sel__actionButtonSelected_ forControlEvents:64];
    forgotButtonLocalizedString2 = [(AAUISignInViewController *)self forgotButtonLocalizedString];
    [v8 setTitle:forgotButtonLocalizedString2 forState:0];

    titleLabel4 = [v8 titleLabel];
    [titleLabel4 setAdjustsFontForContentSizeCategory:1];

    titleLabel5 = [v8 titleLabel];
    [titleLabel5 setLineBreakMode:0];

    titleLabel6 = [v8 titleLabel];
    [titleLabel6 setNumberOfLines:0];

    titleLabel7 = [v8 titleLabel];
    [titleLabel7 setTextAlignment:1];

    titleLabel8 = [v8 titleLabel];
    v24 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [titleLabel8 setFont:v24];

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

    titleLabel9 = [v25 titleLabel];
    [titleLabel9 setAdjustsFontForContentSizeCategory:1];

    titleLabel10 = [v25 titleLabel];
    [titleLabel10 setLineBreakMode:0];

    titleLabel11 = [v25 titleLabel];
    [titleLabel11 setNumberOfLines:0];

    titleLabel12 = [v25 titleLabel];
    [titleLabel12 setTextAlignment:1];

    titleLabel13 = [v25 titleLabel];
    v33 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [titleLabel13 setFont:v33];

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
    boldButton = [MEMORY[0x1E69B7D00] boldButton];
    v5 = self->_continueButton;
    self->_continueButton = boldButton;

    if (!+[AAUIFeatureFlags isSolariumEnabled])
    {
      filledButtonConfiguration = [MEMORY[0x1E69DC740] filledButtonConfiguration];
      [filledButtonConfiguration setButtonSize:3];
      background = [filledButtonConfiguration background];
      [background setCornerRadius:14.0];

      [(OBBoldTrayButton *)self->_continueButton setConfiguration:filledButtonConfiguration];
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
    systemGray6Color = [MEMORY[0x1E69DC888] systemGray6Color];
    [(UIButton *)v6 setBackgroundColor:systemGray6Color];

    v8 = self->_childSignInButton;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UIButton *)v8 setTintColor:labelColor];

    plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    [plainButtonConfiguration setCornerStyle:4];
    [plainButtonConfiguration setButtonSize:3];
    [(UIButton *)self->_childSignInButton setConfiguration:plainButtonConfiguration];
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
    plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    [plainButtonConfiguration setButtonSize:0];
    [(UIButton *)v4 setConfiguration:plainButtonConfiguration];
    v8 = self->_otherOptionsButton;
    self->_otherOptionsButton = v4;
    v9 = v4;

    [(UIButton *)self->_otherOptionsButton setAccessibilityIdentifier:@"other-options-button"];
    otherOptionsButton = self->_otherOptionsButton;
  }

  return otherOptionsButton;
}

- (void)constrainView:(id)view toFillHeaderFooterView:(id)footerView
{
  v38[4] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  footerViewCopy = footerView;
  contentView = [footerViewCopy contentView];
  [contentView addSubview:viewCopy];

  topAnchor = [viewCopy topAnchor];
  contentView2 = [footerViewCopy contentView];
  topAnchor2 = [contentView2 topAnchor];
  v27 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v38[0] = v27;
  leftAnchor = [viewCopy leftAnchor];
  contentView3 = [footerViewCopy contentView];
  leftAnchor2 = [contentView3 leftAnchor];
  v9 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v38[1] = v9;
  bottomAnchor = [viewCopy bottomAnchor];
  contentView4 = [footerViewCopy contentView];
  bottomAnchor2 = [contentView4 bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v38[2] = v13;
  v32 = viewCopy;
  rightAnchor = [viewCopy rightAnchor];
  v31 = footerViewCopy;
  contentView5 = [footerViewCopy contentView];
  rightAnchor2 = [contentView5 rightAnchor];
  v17 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
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
  cellTextField = [(AKBasicLoginTableViewCell *)self->_usernameCell cellTextField];
  text = [cellTextField text];
  v5 = [text length];

  if (!v5)
  {
    return 0;
  }

  if (![(AAUISignInViewController *)self _isPasswordFieldVisible])
  {
    return 1;
  }

  cellTextField2 = [(AKBasicLoginTableViewCell *)self->_passwordCell cellTextField];
  text2 = [cellTextField2 text];
  v8 = [text2 length] != 0;

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

- (void)_setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  navigationItem = [(AAUISignInViewController *)self navigationItem];
  leftBarButtonItem = [navigationItem leftBarButtonItem];
  [leftBarButtonItem setEnabled:enabledCopy];

  cellTextField = [(AKBasicLoginTableViewCell *)self->_usernameCell cellTextField];
  [cellTextField setEnabled:enabledCopy];

  cellTextField2 = [(AKBasicLoginTableViewCell *)self->_passwordCell cellTextField];
  [cellTextField2 setEnabled:enabledCopy];

  WeakRetained = objc_loadWeakRetained(&self->_forgotOrCreateButton);
  if (WeakRetained)
  {
    v10 = objc_loadWeakRetained(&self->_forgotOrCreateButton);
    [v10 setEnabled:enabledCopy];
  }

  v11 = objc_loadWeakRetained(&self->_forgotButton);

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_forgotButton);
    [v12 setEnabled:enabledCopy];
  }

  v13 = objc_loadWeakRetained(&self->_createButton);

  if (v13)
  {
    v14 = objc_loadWeakRetained(&self->_createButton);
    [v14 setEnabled:enabledCopy];
  }

  otherOptionsButton = self->_otherOptionsButton;
  if (otherOptionsButton)
  {
    [(UIButton *)otherOptionsButton setEnabled:enabledCopy];
  }

  privacyLinkController = [(AAUISignInViewControllerTableFooterView *)self->_tableFooterView privacyLinkController];

  if (privacyLinkController)
  {
    privacyLinkController2 = [(AAUISignInViewControllerTableFooterView *)self->_tableFooterView privacyLinkController];
    [privacyLinkController2 setLinkEnabled:enabledCopy];

    if (enabledCopy)
    {
      tintColor = self->_tintColor;
      if (tintColor)
      {
        privacyLinkController3 = [(AAUISignInViewControllerTableFooterView *)self->_tableFooterView privacyLinkController];
        [privacyLinkController3 setCustomTintColor:tintColor];
      }

      [(AAUISignInViewController *)self _setUsernameCellWaiting:0];
      goto LABEL_15;
    }

    [(AAUISignInViewController *)self _setUsernameCellWaiting:1];
  }

  else
  {
    v20 = enabledCopy ^ 1;
    [(AAUISignInViewController *)self _setUsernameCellWaiting:v20];
    if ((v20 & 1) == 0)
    {
LABEL_15:
      _hasValidCredentials = [(AAUISignInViewController *)self _hasValidCredentials];
      goto LABEL_18;
    }
  }

  _hasValidCredentials = 0;
LABEL_18:

  [(AAUISignInViewController *)self _setContinueButtonEnabled:_hasValidCredentials];
}

- (void)_setContinueButtonEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  _continueButton = [(AAUISignInViewController *)self _continueButton];
  [_continueButton setEnabled:enabledCopy];
}

- (void)_continueButtonSelected:(id)selected
{
  if ([(AAUISignInViewController *)self _hasValidCredentials])
  {
    [(AAUISignInViewController *)self _attemptAuthentication];

    [(AAUISignInViewController *)self _prewarmSignInFlowIfApplicable];
  }
}

- (void)_actionButtonSelected:(id)selected
{
  selectedCopy = selected;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "User selected the action button...", buf, 2u);
  }

  [(AAUISignInViewController *)self _setEnabled:0];
  if ([(AAUISignInViewController *)self allowsAccountCreation]|| [(AAUISignInViewController *)self allowSkip])
  {
    v29 = selectedCopy;
    [(AAUISignInViewController *)self _resignFirstResponderForAppropriateTextField];
    allowsAccountCreation = [(AAUISignInViewController *)self allowsAccountCreation];
    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v8 = v7;
    if (allowsAccountCreation)
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

    selectedCopy = v29;
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
  _isPasswordFieldVisible = [(AAUISignInViewController *)self _isPasswordFieldVisible];
  v4 = &OBJC_IVAR___AAUISignInViewController__usernameCell;
  if (_isPasswordFieldVisible)
  {
    v4 = &OBJC_IVAR___AAUISignInViewController__passwordCell;
  }

  cellTextField = [*(&self->super.super.super.isa + *v4) cellTextField];
  [cellTextField resignFirstResponder];
}

- (void)_presentCreateAppleIDPane
{
  authenticationContext = [(AAUISignInViewController *)self authenticationContext];
  [authenticationContext setNeedsCredentialRecovery:0];
  [authenticationContext setNeedsNewAppleID:1];
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

    httpHeadersForRemoteUI = [authenticationContext httpHeadersForRemoteUI];
    v8 = [httpHeadersForRemoteUI mutableCopy];
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
    [authenticationContext setHttpHeadersForRemoteUI:v11];
  }

  v12 = _AAUILogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13[0]) = 0;
    _os_log_impl(&dword_1C5355000, v12, OS_LOG_TYPE_DEFAULT, "User wants a new Apple ID, presenting AuthKit...", v13, 2u);
  }

  [(AAUISignInViewController *)self _attemptAuthenticationWithContext:authenticationContext];
}

- (void)_presentForgotAppleIDPane
{
  authenticationContext = [(AAUISignInViewController *)self authenticationContext];
  [authenticationContext setNeedsCredentialRecovery:1];
  [authenticationContext setNeedsNewAppleID:0];
  v4 = _AAUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "User forgot their Apple ID, presenting AuthKit...", v5, 2u);
  }

  [(AAUISignInViewController *)self _attemptAuthenticationWithContext:authenticationContext];
}

- (void)_childSignInSelected:(id)selected
{
  v4 = _AAUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "User selected the child sign in button...", v6, 2u);
  }

  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  delegate = [(AAUISignInViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate signInViewControllerDidSelectChildSignIn:self];
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
    cellTextField = [(AKBasicLoginTableViewCell *)self->_passwordCell cellTextField];
    text = [cellTextField text];
    passwordHandler[2](passwordHandler, text, 0);

    v6 = self->_passwordHandler;
    self->_passwordHandler = 0;
  }

  else
  {
    cellTextField2 = [(AKBasicLoginTableViewCell *)self->_usernameCell cellTextField];
    text2 = [cellTextField2 text];

    v9 = [(AAUISignInViewController *)self _serverFriendlyUsername:text2];

    if ([(AAUISignInViewController *)self _isPasswordFieldVisible])
    {
      cellTextField3 = [(AKBasicLoginTableViewCell *)self->_passwordCell cellTextField];
      text3 = [cellTextField3 text];
    }

    else
    {
      text3 = 0;
    }

    authenticationContext = [(AAUISignInViewController *)self authenticationContext];
    [authenticationContext setNeedsCredentialRecovery:0];
    [authenticationContext setNeedsNewAppleID:0];
    [authenticationContext setUsername:v9];
    [authenticationContext _setPassword:text3];
    [authenticationContext _setPasswordDelegate:self];
    if (+[AAUISignInViewController _isRunningInSettings]&& ![(AAUISignInViewController *)self isChildSetupFlow])
    {
      [authenticationContext setAppProvidedContext:*MEMORY[0x1E698DB30]];
    }

    v13 = _AAUILogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = v9;
      _os_log_impl(&dword_1C5355000, v13, OS_LOG_TYPE_DEFAULT, "Attempting authentication for username '%{public}@'", &v14, 0xCu);
    }

    [(AAUISignInViewController *)self _attemptAuthenticationWithContext:authenticationContext];
  }
}

- (void)_attemptAuthenticationWithContext:(id)context
{
  contextCopy = context;
  [(AAUISignInViewController *)self _setEnabled:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 willAuthenticateWithContext:contextCopy];
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
  authenticationController = [(AAUISignInViewController *)self authenticationController];
  [v12[5] setDelegate:self];
  v9 = v12[5];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__AAUISignInViewController__attemptAuthenticationWithContext___block_invoke;
  v10[3] = &unk_1E820C0F0;
  v10[4] = self;
  v10[5] = &v11;
  [v9 authenticateWithContext:contextCopy completion:v10];
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

- (void)_repairCloudAccountWithAuthenticationResults:(id)results
{
  resultsCopy = results;
  urlConfiguration = [MEMORY[0x1E698B9C0] urlConfiguration];
  repairCloudAccountUIURL = [urlConfiguration repairCloudAccountUIURL];

  v7 = [MEMORY[0x1E695DFF8] URLWithString:repairCloudAccountUIURL];
  v8 = [objc_alloc(MEMORY[0x1E696AD68]) initWithURL:v7];
  [v8 setHTTPMethod:@"POST"];
  v9 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DBC0]];
  [v8 setValue:v9 forHTTPHeaderField:@"X-Apple-AK-Continuation-Data"];

  v10 = [(AAUISignInViewController *)self _authorizationValueForAuthenticationResults:resultsCopy];
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
  navigationController = [(AAUISignInViewController *)self navigationController];
  [v11 setNavigationController:navigationController];

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

  authenticationContext = [(AAUISignInViewController *)self authenticationContext];
  proxiedDevice = [authenticationContext proxiedDevice];
  v2 = proxiedDevice != 0;

  return v2;
}

- (id)_authorizationValueForAuthenticationResults:(id)results
{
  v3 = *MEMORY[0x1E698DB40];
  resultsCopy = results;
  v5 = [resultsCopy objectForKeyedSubscript:v3];
  v6 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DBC8]];

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

- (void)_setPasswordFieldHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  _isPasswordFieldVisible = [(AAUISignInViewController *)self _isPasswordFieldVisible];
  if (hiddenCopy)
  {
    if (!_isPasswordFieldVisible)
    {
      return;
    }

    cellTextField = [(AKBasicLoginTableViewCell *)self->_passwordCell cellTextField];
    [cellTextField setText:0];

    self->_showingPasswordCell = 0;
    v7 = MEMORY[0x1E69DD250];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __52__AAUISignInViewController__setPasswordFieldHidden___block_invoke;
    v17 = &unk_1E820B8F0;
    selfCopy = self;
    v8 = &v14;
  }

  else
  {
    if (_isPasswordFieldVisible)
    {
      return;
    }

    self->_showingPasswordCell = 1;
    v7 = MEMORY[0x1E69DD250];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __52__AAUISignInViewController__setPasswordFieldHidden___block_invoke_4;
    v12 = &unk_1E820B8F0;
    selfCopy2 = self;
    v8 = &v9;
  }

  [v7 animateWithDuration:v8 animations:{0.2, v9, v10, v11, v12, selfCopy2, v14, v15, v16, v17, selfCopy}];
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

- (void)_setUsernameCellWaiting:(BOOL)waiting
{
  continueButton = self->_continueButton;
  if (waiting)
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
  cellTextField = [(AKBasicLoginTableViewCell *)self->_usernameCell cellTextField];
  text = [cellTextField text];

  if (([text containsString:@"@"] & 1) == 0)
  {
    v4 = objc_opt_new();
    v5 = [v4 displayFormatFor:text];
    cellTextField2 = [(AKBasicLoginTableViewCell *)self->_usernameCell cellTextField];
    [cellTextField2 setText:v5];
  }
}

- (id)_serverFriendlyUsername:(id)username
{
  usernameCopy = username;
  if ([usernameCopy containsString:@"@"])
  {
    v4 = usernameCopy;
  }

  else
  {
    v5 = objc_opt_new();
    v4 = [v5 normalizedFormatFor:usernameCopy];
  }

  return v4;
}

- (void)_beginObservingTextFieldDidChangeNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__textFieldDidChange_ name:*MEMORY[0x1E69DE5C0] object:0];
}

- (void)_endObservingTextFieldDidChangeNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE5C0] object:0];
}

- (void)_textFieldDidChange:(id)change
{
  object = [change object];
  cellTextField = [(AKBasicLoginTableViewCell *)self->_usernameCell cellTextField];
  if (object == cellTextField)
  {
  }

  else
  {
    cellTextField2 = [(AKBasicLoginTableViewCell *)self->_passwordCell cellTextField];

    v6 = object;
    if (object != cellTextField2)
    {
      goto LABEL_6;
    }
  }

  [(AAUISignInViewController *)self _setContinueButtonEnabled:[(AAUISignInViewController *)self _hasValidCredentials]];
  v6 = object;
LABEL_6:
}

- (void)_beginObservingKeyboardNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleKeyboardChangeNotification_ name:*MEMORY[0x1E69DDF78] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__handleKeyboardChangeNotification_ name:*MEMORY[0x1E69DE068] object:0];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel__handleKeyboardChangeNotification_ name:*MEMORY[0x1E69DE078] object:0];
}

- (void)_endObservingKeyboardNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDF78] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x1E69DE068] object:0];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 removeObserver:self name:*MEMORY[0x1E69DE078] object:0];
}

- (void)_handleKeyboardChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x1E69DDFA0]];
  [v6 CGRectValue];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  object = [notificationCopy object];
  coordinateSpace = [object coordinateSpace];

  v17 = self->_tableView;
  [coordinateSpace convertRect:v17 toCoordinateSpace:{v8, v10, v12, v14}];
  r2.origin.x = v18;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v43.origin.x = v8;
  v43.origin.y = v10;
  v43.size.width = v12;
  v43.size.height = v14;
  MinX = CGRectGetMinX(v43);
  [coordinateSpace bounds];
  if (MinX == CGRectGetMinX(v44) && (v45.origin.x = v8, v45.origin.y = v10, v45.size.width = v12, v45.size.height = v14, MaxX = CGRectGetMaxX(v45), [coordinateSpace bounds], MaxX == CGRectGetMaxX(v46)))
  {
    v51.origin.x = v8;
    v51.origin.y = v10;
    v51.size.width = v12;
    v51.size.height = v14;
    MaxY = CGRectGetMaxY(v51);
    [coordinateSpace bounds];
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

  userInfo2 = [notificationCopy userInfo];
  v36 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E69DDF40]];

  v37 = MEMORY[0x1E69DD250];
  [v36 doubleValue];
  *&r2.origin.y = MEMORY[0x1E69E9820];
  *&r2.size.width = 3221225472;
  *&r2.size.height = __62__AAUISignInViewController__handleKeyboardChangeNotification___block_invoke;
  v40 = &unk_1E820C168;
  selfCopy = self;
  v42 = v28;
  [v37 animateWithDuration:&r2.origin.y animations:?];
}

- (void)_updateContentInsetWithHeight:(double)height
{
  [(UITableView *)self->_tableView _setContentScrollInset:0.0, 0.0, height, 0.0];

  [(AAUISignInViewController *)self _updateScrollIndicatorInsetWithHeight:height];
}

- (void)_updateScrollIndicatorInsetWithHeight:(double)height
{
  [(UITableView *)self->_tableView frame];
  MaxX = CGRectGetMaxX(v9);
  view = [(AAUISignInViewController *)self view];
  [view bounds];
  [(UITableView *)self->_tableView setScrollIndicatorInsets:0.0, 0.0, height, MaxX - CGRectGetWidth(v10)];

  tableView = self->_tableView;

  [(UITableView *)tableView setNeedsLayout];
}

- (void)_beginObservingSizeCategoryNotification
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_sizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
}

- (void)_endObservingSizeCategoryNotification
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];
}

- (void)sizeCategoryDidChange:(id)change
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

- (void)_delegate_signInViewControllerDidCompleteWithAuthenticationResults:(id)results completionHandler:(id)handler
{
  resultsCopy = results;
  handlerCopy = handler;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  delegate = [(AAUISignInViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate signInViewController:self didCompleteWithAuthenticationResults:resultsCopy completionHandler:handlerCopy];
  }

  else if (objc_opt_respondsToSelector())
  {
    [delegate signInViewController:self didCompleteWithAuthenticationResults:resultsCopy];
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }

  else
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }

    [(AAUISignInViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_delegate_signInViewControllerDidCancel
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  delegate = [(AAUISignInViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate signInViewControllerDidCancel:self];
  }

  else
  {
    [(AAUISignInViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_delegate_signInViewControllerDidSkip
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  delegate = [(AAUISignInViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate signInViewControllerDidSkip:self];
  }

  else
  {
    [(AAUISignInViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_delegate_signInViewControllerDidSelectOtherOptions
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  delegate = [(AAUISignInViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate signInViewControllerDidSelectOtherOptions:self];
  }

  else
  {
    [(AAUISignInViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)context:(id)context needsPasswordWithCompletion:(id)completion
{
  v5 = _Block_copy(completion);
  passwordHandler = self->_passwordHandler;
  self->_passwordHandler = v5;

  [(AAUISignInViewController *)self _setPasswordFieldHidden:0];

  [(AAUISignInViewController *)self _setEnabled:1];
}

- (void)authenticationController:(id)controller shouldContinueWithAuthenticationResults:(id)results error:(id)error forContext:(id)context completion:(id)completion
{
  resultsCopy = results;
  errorCopy = error;
  contextCopy = context;
  completionCopy = completion;
  dispatch_assert_queue_not_V2(MEMORY[0x1E69E96A0]);
  v15 = _AAUILogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 0;
    _os_log_impl(&dword_1C5355000, v15, OS_LOG_TYPE_DEFAULT, "Authentication controller called back with auth results.", v25, 2u);
  }

  delegate = [(AAUISignInViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v17 = _AAUILogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [AAUISignInViewController authenticationController:v17 shouldContinueWithAuthenticationResults:? error:? forContext:? completion:?];
    }

    [delegate signInViewController:self shouldContinueWithAuthenticationResults:resultsCopy error:errorCopy forContext:contextCopy completion:completionCopy];
  }

  else if (errorCopy)
  {
    v18 = _AAUILogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(AAUISignInViewController *)errorCopy authenticationController:v18 shouldContinueWithAuthenticationResults:v19 error:v20 forContext:v21 completion:v22, v23, v24];
    }

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    completionCopy[2](completionCopy, 1);
  }
}

- (BOOL)remoteUIController:(id)controller shouldLoadRequest:(id)request redirectResponse:(id)response
{
  requestCopy = request;
  [requestCopy setValue:@"application/x-plist" forHTTPHeaderField:@"Content-Type"];
  userAgentHeader = [MEMORY[0x1E698B890] userAgentHeader];
  [requestCopy setValue:userAgentHeader forHTTPHeaderField:@"User-Agent"];

  clientInfoHeader = [MEMORY[0x1E698B890] clientInfoHeader];
  [requestCopy setValue:clientInfoHeader forHTTPHeaderField:@"X-MMe-Client-Info"];

  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v9 = [currentLocale objectForKey:*MEMORY[0x1E695D978]];
  uppercaseString = [v9 uppercaseString];
  [requestCopy setValue:uppercaseString forHTTPHeaderField:@"X-MMe-Country"];

  return 1;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (!self->_showingPasswordCell)
  {
    return 1;
  }

  if ([(AAUISignInViewController *)self _showOnlyPassword:view])
  {
    return 1;
  }

  return 2;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section] || objc_msgSend(pathCopy, "row"))
  {
    _passwordFieldIndexPath = [(AAUISignInViewController *)self _passwordFieldIndexPath];
    v9 = [pathCopy isEqual:_passwordFieldIndexPath];

    if (!v9)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid index path (%@) for %@.", pathCopy, self];
      v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
      objc_exception_throw(v13);
    }

    goto LABEL_4;
  }

  if ([(AAUISignInViewController *)self _showOnlyPassword])
  {
LABEL_4:
    _passwordCell = [(AAUISignInViewController *)self _passwordCell];
    goto LABEL_5;
  }

  _passwordCell = [(AAUISignInViewController *)self _usernameCell];
LABEL_5:
  v11 = _passwordCell;

  return v11;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  [cellCopy setSeparatorStyle:1];
  [cellCopy _setShouldHaveFullLengthBottomSeparator:0];
  [cellCopy _setShouldHaveFullLengthTopSeparator:0];
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  if (section)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(AAUISignInViewController *)self _tableHeaderView:view];
  }

  return v6;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  if (section)
  {
    _tableFooterView = 0;
  }

  else
  {
    _tableFooterView = [(AAUISignInViewController *)self _tableFooterView];
    [_tableFooterView setNeedsLayout];
    [_tableFooterView layoutIfNeeded];
  }

  return _tableFooterView;
}

- (id)_tableFooterView
{
  tableFooterView = self->_tableFooterView;
  if (!tableFooterView)
  {
    v4 = [(UITableView *)self->_tableView dequeueReusableHeaderFooterViewWithIdentifier:@"AAUISignInViewControllerTableFooterView"];
    [(AAUISignInViewControllerTableFooterView *)v4 setParentForPrivacyController:self];
    privacyLinkIdentifiers = [(AAUISignInViewController *)self privacyLinkIdentifiers];
    [(AAUISignInViewControllerTableFooterView *)v4 setPrivacyLinkIdentifiers:privacyLinkIdentifiers];

    _accountHelpStackView = [(AAUISignInViewController *)self _accountHelpStackView];
    [(AAUISignInViewControllerTableFooterView *)v4 addActionButtonStackView:_accountHelpStackView];

    _continueButton = [(AAUISignInViewController *)self _continueButton];
    [(AAUISignInViewControllerTableFooterView *)v4 addContinueButton:_continueButton];

    if ([(AAUISignInViewController *)self _shouldShowChildSignButton]&& +[AAUIFeatureFlags isSolariumEnabled])
    {
      _childSignInButton = [(AAUISignInViewController *)self _childSignInButton];
      [(AAUISignInViewControllerTableFooterView *)v4 addChildSignInButton:_childSignInButton];
    }

    if ([(AAUISignInViewController *)self showOtherOptions])
    {
      _otherOptionsButton = [(AAUISignInViewController *)self _otherOptionsButton];
      [(AAUISignInViewControllerTableFooterView *)v4 addOtherButton:_otherOptionsButton];
    }

    privacyLinkController = [(AAUISignInViewControllerTableFooterView *)v4 privacyLinkController];

    if (privacyLinkController)
    {
      tintColor = self->_tintColor;
      privacyLinkController2 = [(AAUISignInViewControllerTableFooterView *)v4 privacyLinkController];
      [privacyLinkController2 setCustomTintColor:tintColor];
    }

    v13 = self->_tableFooterView;
    self->_tableFooterView = v4;

    tableFooterView = self->_tableFooterView;
  }

  return tableFooterView;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v4 = [(AAUISignInViewController *)self traitCollection:view];
  preferredContentSizeCategory = [v4 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

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

- (BOOL)textFieldShouldReturn:(id)return
{
  if ([(AAUISignInViewController *)self _hasValidCredentials])
  {
    [(AAUISignInViewController *)self _attemptAuthentication];
  }

  return 1;
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  fieldCopy = field;
  stringCopy = string;
  cellTextField = [(AKBasicLoginTableViewCell *)self->_usernameCell cellTextField];
  if (cellTextField == fieldCopy && [(AAUISignInViewController *)self _isPasswordFieldVisible])
  {
    text = [fieldCopy text];
    v11 = [text isEqualToString:stringCopy];

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