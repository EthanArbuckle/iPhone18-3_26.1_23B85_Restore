@interface AKPasswordResetViewController
- (AKPasswordResetViewController)initWithImageProvider:(id)provider;
- (AKPasswordResetViewControllerDelegate)delegate;
- (UIButton)closeButton;
- (UIButton)helpSomeoneElseButton;
- (UIButton)resetMyPasswordButton;
- (UIImageView)keyIconImageView;
- (UIImageView)profilePictureImageView;
- (UILabel)screenSummaryLabel;
- (UILabel)screenTitleLabel;
- (UILabel)serviceNameLabel;
- (UIScrollView)contentScrollView;
- (UIStackView)contentView;
- (UIView)footerView;
- (UIView)titleView;
- (id)_helpSomeonElseButtonTitle;
- (id)_helpSomeoneElseButtonConfiguration;
- (id)_resetMyPasswordButtonConfiguration;
- (id)_resetMyPasswordButtonTitle;
- (void)_applyLocalization;
- (void)_applyStyle;
- (void)_loadProfilePicture;
- (void)_setupSubviews;
- (void)_startLoading;
- (void)didSelectClose:(id)close;
- (void)didSelectHelpSomeoneElse:(id)else;
- (void)didSelectResetMyPassword:(id)password;
- (void)stopLoading;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation AKPasswordResetViewController

- (AKPasswordResetViewController)initWithImageProvider:(id)provider
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, provider);
  v5 = selfCopy;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  selfCopy = 0;
  v7.receiver = v5;
  v7.super_class = AKPasswordResetViewController;
  selfCopy = [(AKPasswordResetViewController *)&v7 initWithNibName:@"AKPasswordResetViewController" bundle:?];
  objc_storeStrong(&selfCopy, selfCopy);
  MEMORY[0x277D82BD8](v6);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_imageProvider, location[0]);
  }

  v4 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v4;
}

- (void)viewDidLoad
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = AKPasswordResetViewController;
  [(AKPasswordResetViewController *)&v2 viewDidLoad];
  [(AKPasswordResetViewController *)selfCopy _setupSubviews];
  [(AKPasswordResetViewController *)selfCopy _applyStyle];
  [(AKPasswordResetViewController *)selfCopy _applyLocalization];
  [(AKPasswordResetViewController *)selfCopy _loadProfilePicture];
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  v14 = a2;
  v13.receiver = self;
  v13.super_class = AKPasswordResetViewController;
  [(AKPasswordResetViewController *)&v13 viewDidLayoutSubviews];
  footerView = [(AKPasswordResetViewController *)selfCopy footerView];
  [(UIView *)footerView frame];
  UIEdgeInsetsMake();
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  MEMORY[0x277D82BD8](footerView);
  contentScrollView = [(AKPasswordResetViewController *)selfCopy contentScrollView];
  [(UIScrollView *)contentScrollView setContentInset:v9, v10, v11, v12];
  MEMORY[0x277D82BD8](contentScrollView);
  contentScrollView2 = [(AKPasswordResetViewController *)selfCopy contentScrollView];
  [(UIScrollView *)contentScrollView2 setScrollIndicatorInsets:v9, v10, v11, v12];
  MEMORY[0x277D82BD8](contentScrollView2);
}

- (void)_setupSubviews
{
  v18 = objc_alloc(MEMORY[0x277D751E0]);
  titleView = [(AKPasswordResetViewController *)self titleView];
  v20 = [v18 initWithCustomView:?];
  navigationItem = [(AKPasswordResetViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v20];
  MEMORY[0x277D82BD8](navigationItem);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](titleView);
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled];
  MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
  if (isAuthKitSolariumFeatureEnabled)
  {
    v16 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_didSelectClose_];
    navigationItem2 = [(AKPasswordResetViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:v16];
    MEMORY[0x277D82BD8](navigationItem2);
    MEMORY[0x277D82BD8](v16);
    closeButton = [(AKPasswordResetViewController *)self closeButton];
    [(UIButton *)closeButton setHidden:1];
    MEMORY[0x277D82BD8](closeButton);
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277D751E0]);
    closeButton2 = [(AKPasswordResetViewController *)self closeButton];
    v13 = [v11 initWithCustomView:?];
    navigationItem3 = [(AKPasswordResetViewController *)self navigationItem];
    [navigationItem3 setRightBarButtonItem:v13];
    MEMORY[0x277D82BD8](navigationItem3);
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](closeButton2);
  }

  profilePictureImageView = [(AKPasswordResetViewController *)self profilePictureImageView];
  [(UIImageView *)profilePictureImageView frame];
  v3 = v2 / 2.0;
  profilePictureImageView2 = [(AKPasswordResetViewController *)self profilePictureImageView];
  layer = [(UIImageView *)profilePictureImageView2 layer];
  [layer setCornerRadius:v3];
  MEMORY[0x277D82BD8](layer);
  MEMORY[0x277D82BD8](profilePictureImageView2);
  MEMORY[0x277D82BD8](profilePictureImageView);
  profilePictureImageView3 = [(AKPasswordResetViewController *)self profilePictureImageView];
  layer2 = [(UIImageView *)profilePictureImageView3 layer];
  [layer2 setMasksToBounds:1];
  MEMORY[0x277D82BD8](layer2);
  MEMORY[0x277D82BD8](profilePictureImageView3);
  contentScrollView = [(AKPasswordResetViewController *)self contentScrollView];
  [(UIScrollView *)contentScrollView setAccessibilityIdentifier:@"SCROLL_VIEW"];
  MEMORY[0x277D82BD8](contentScrollView);
  contentView = [(AKPasswordResetViewController *)self contentView];
  [(UIStackView *)contentView setAccessibilityIdentifier:@"SCROLL_VIEW_CONTENT_VIEW"];
  MEMORY[0x277D82BD8](contentView);
}

- (void)_applyLocalization
{
  selfCopy = self;
  v34[1] = a2;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v4 localizedStringForKey:@"PASSWORD_RESET_OPTIONS_SERVICE_TITLE_REBRAND" value:? table:?];
  serviceNameLabel = [(AKPasswordResetViewController *)selfCopy serviceNameLabel];
  [(UILabel *)serviceNameLabel setText:v3];
  MEMORY[0x277D82BD8](serviceNameLabel);
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v7 localizedStringForKey:@"PASSWORD_RESET_OPTIONS_SCREEN_TITLE" value:&stru_28358EF68 table:@"Localizable"];
  screenTitleLabel = [(AKPasswordResetViewController *)selfCopy screenTitleLabel];
  [(UILabel *)screenTitleLabel setText:v6];
  MEMORY[0x277D82BD8](screenTitleLabel);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
  v34[0] = [mEMORY[0x277CF0130] primaryAuthKitAccount];
  MEMORY[0x277D82BD8](mEMORY[0x277CF0130]);
  v9 = MEMORY[0x277CF0300];
  username = [v34[0] username];
  v33 = [v9 formattedUsernameFromUsername:?];
  MEMORY[0x277D82BD8](username);
  v32 = objc_alloc_init(MEMORY[0x277CCAC00]);
  mEMORY[0x277CF0130]2 = [MEMORY[0x277CF0130] sharedInstance];
  v11 = [mEMORY[0x277CF0130]2 familyNameForAccount:v34[0]];
  [v32 setFamilyName:?];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](mEMORY[0x277CF0130]2);
  mEMORY[0x277CF0130]3 = [MEMORY[0x277CF0130] sharedInstance];
  v13 = [mEMORY[0x277CF0130]3 givenNameForAccount:v34[0]];
  [v32 setGivenName:?];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](mEMORY[0x277CF0130]3);
  v31 = objc_alloc_init(MEMORY[0x277CCAC08]);
  v30 = [v31 stringFromPersonNameComponents:v32];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v29 = [v15 localizedStringForKey:@"PASSWORD_RESET_OPTIONS_SCREEN_SUMMARY" value:&stru_28358EF68 table:@"Localizable"];
  MEMORY[0x277D82BD8](v15);
  v19 = MEMORY[0x277CCACA8];
  v18 = v29;
  v16 = v30;
  v17 = v33;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  localizedModel = [currentDevice localizedModel];
  v28 = [v19 stringWithFormat:v18, v16, v17, localizedModel];
  MEMORY[0x277D82BD8](localizedModel);
  MEMORY[0x277D82BD8](currentDevice);
  v22 = v28;
  screenSummaryLabel = [(AKPasswordResetViewController *)selfCopy screenSummaryLabel];
  [(UILabel *)screenSummaryLabel setText:v22];
  MEMORY[0x277D82BD8](screenSummaryLabel);
  resetMyPasswordButton = [(AKPasswordResetViewController *)selfCopy resetMyPasswordButton];
  _resetMyPasswordButtonTitle = [(AKPasswordResetViewController *)selfCopy _resetMyPasswordButtonTitle];
  [UIButton setTitle:resetMyPasswordButton forState:"setTitle:forState:"];
  MEMORY[0x277D82BD8](_resetMyPasswordButtonTitle);
  MEMORY[0x277D82BD8](resetMyPasswordButton);
  helpSomeoneElseButton = [(AKPasswordResetViewController *)selfCopy helpSomeoneElseButton];
  _helpSomeonElseButtonTitle = [(AKPasswordResetViewController *)selfCopy _helpSomeonElseButtonTitle];
  [UIButton setTitle:helpSomeoneElseButton forState:"setTitle:forState:"];
  MEMORY[0x277D82BD8](_helpSomeonElseButtonTitle);
  MEMORY[0x277D82BD8](helpSomeoneElseButton);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(v34, 0);
}

- (id)_resetMyPasswordButtonTitle
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PASSWORD_RESET_OPTIONS_CURRENT_USER_ACTION_BUTTON" value:&stru_28358EF68 table:@"Localizable"];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (id)_helpSomeonElseButtonTitle
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PASSWORD_RESET_OPTIONS_SOMEONE_ELSE_ACTION_BUTTON" value:&stru_28358EF68 table:@"Localizable"];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (void)_applyStyle
{
  selfCopy = self;
  location[5] = a2;
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  view = [(AKPasswordResetViewController *)selfCopy view];
  [view setBackgroundColor:systemBackgroundColor];
  MEMORY[0x277D82BD8](view);
  MEMORY[0x277D82BD8](systemBackgroundColor);
  keyIconImageView = [(AKPasswordResetViewController *)selfCopy keyIconImageView];
  [(UIImageView *)keyIconImageView frame];
  location[1] = v2;
  location[2] = v3;
  location[3] = v4;
  location[4] = v5;
  v20 = *&v4 / 2.0;
  keyIconImageView2 = [(AKPasswordResetViewController *)selfCopy keyIconImageView];
  layer = [(UIImageView *)keyIconImageView2 layer];
  [layer setCornerRadius:v20];
  MEMORY[0x277D82BD8](layer);
  MEMORY[0x277D82BD8](keyIconImageView2);
  MEMORY[0x277D82BD8](keyIconImageView);
  systemBackgroundColor2 = [MEMORY[0x277D75348] systemBackgroundColor];
  keyIconImageView3 = [(AKPasswordResetViewController *)selfCopy keyIconImageView];
  [(UIImageView *)keyIconImageView3 setBackgroundColor:systemBackgroundColor2];
  MEMORY[0x277D82BD8](keyIconImageView3);
  MEMORY[0x277D82BD8](systemBackgroundColor2);
  v27 = +[AKPasswordResetAppearance serviceNameFont];
  serviceNameLabel = [(AKPasswordResetViewController *)selfCopy serviceNameLabel];
  [(UILabel *)serviceNameLabel setFont:v27];
  MEMORY[0x277D82BD8](serviceNameLabel);
  MEMORY[0x277D82BD8](v27);
  serviceNameLabel2 = [(AKPasswordResetViewController *)selfCopy serviceNameLabel];
  [(UILabel *)serviceNameLabel2 setAdjustsFontForContentSizeCategory:0];
  MEMORY[0x277D82BD8](serviceNameLabel2);
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled];
  MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
  if ((isAuthKitSolariumFeatureEnabled & 1) == 0)
  {
    v17 = +[AKPasswordResetAppearance closeButtonConfiguration];
    closeButton = [(AKPasswordResetViewController *)selfCopy closeButton];
    [(UIButton *)closeButton setConfiguration:v17];
    MEMORY[0x277D82BD8](closeButton);
    MEMORY[0x277D82BD8](v17);
  }

  v13 = +[AKPasswordResetAppearance screenTitleFont];
  screenTitleLabel = [(AKPasswordResetViewController *)selfCopy screenTitleLabel];
  [(UILabel *)screenTitleLabel setFont:v13];
  MEMORY[0x277D82BD8](screenTitleLabel);
  MEMORY[0x277D82BD8](v13);
  v15 = +[AKPasswordResetAppearance screenSummaryFont];
  screenSummaryLabel = [(AKPasswordResetViewController *)selfCopy screenSummaryLabel];
  [(UILabel *)screenSummaryLabel setFont:v15];
  MEMORY[0x277D82BD8](screenSummaryLabel);
  MEMORY[0x277D82BD8](v15);
  objc_initWeak(location, selfCopy);
  _resetMyPasswordButtonConfiguration = [(AKPasswordResetViewController *)selfCopy _resetMyPasswordButtonConfiguration];
  resetMyPasswordButton = [(AKPasswordResetViewController *)selfCopy resetMyPasswordButton];
  [(UIButton *)resetMyPasswordButton setConfiguration:_resetMyPasswordButtonConfiguration];
  MEMORY[0x277D82BD8](resetMyPasswordButton);
  MEMORY[0x277D82BD8](_resetMyPasswordButtonConfiguration);
  resetMyPasswordButton2 = [(AKPasswordResetViewController *)selfCopy resetMyPasswordButton];
  v37 = MEMORY[0x277D85DD0];
  v38 = -1073741824;
  v39 = 0;
  v40 = __44__AKPasswordResetViewController__applyStyle__block_invoke;
  v41 = &unk_2784A5D98;
  objc_copyWeak(v42, location);
  [(UIButton *)resetMyPasswordButton2 setConfigurationUpdateHandler:&v37];
  MEMORY[0x277D82BD8](resetMyPasswordButton2);
  _helpSomeoneElseButtonConfiguration = [(AKPasswordResetViewController *)selfCopy _helpSomeoneElseButtonConfiguration];
  helpSomeoneElseButton = [(AKPasswordResetViewController *)selfCopy helpSomeoneElseButton];
  [(UIButton *)helpSomeoneElseButton setConfiguration:_helpSomeoneElseButtonConfiguration];
  MEMORY[0x277D82BD8](helpSomeoneElseButton);
  MEMORY[0x277D82BD8](_helpSomeoneElseButtonConfiguration);
  helpSomeoneElseButton2 = [(AKPasswordResetViewController *)selfCopy helpSomeoneElseButton];
  v31 = MEMORY[0x277D85DD0];
  v32 = -1073741824;
  v33 = 0;
  v34 = __44__AKPasswordResetViewController__applyStyle__block_invoke_2;
  v35 = &unk_2784A5D98;
  objc_copyWeak(&v36, location);
  [(UIButton *)helpSomeoneElseButton2 setConfigurationUpdateHandler:&v31];
  MEMORY[0x277D82BD8](helpSomeoneElseButton2);
  objc_destroyWeak(&v36);
  objc_destroyWeak(v42);
  objc_destroyWeak(location);
}

void __44__AKPasswordResetViewController__applyStyle__block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5[1] = a1;
  v5[0] = objc_loadWeakRetained(a1 + 4);
  if (v5[0])
  {
    v4 = [location[0] configuration];
    [v4 setShowsActivityIndicator:{objc_msgSend(v5[0], "showResetMyPasswordButtonLoading")}];
    if ([v5[0] showResetMyPasswordButtonLoading])
    {
      [v4 setTitle:0];
    }

    else
    {
      v2 = [v5[0] _resetMyPasswordButtonTitle];
      [v4 setTitle:?];
      MEMORY[0x277D82BD8](v2);
    }

    [location[0] setConfiguration:v4];
    objc_storeStrong(&v4, 0);
  }

  objc_storeStrong(v5, 0);
  objc_storeStrong(location, 0);
}

void __44__AKPasswordResetViewController__applyStyle__block_invoke_2(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5[1] = a1;
  v5[0] = objc_loadWeakRetained(a1 + 4);
  if (v5[0])
  {
    v4 = [location[0] configuration];
    [v4 setShowsActivityIndicator:{objc_msgSend(v5[0], "showHelpSomeoneElseButtonLoading")}];
    if ([v5[0] showHelpSomeoneElseButtonLoading])
    {
      [v4 setTitle:0];
    }

    else
    {
      v2 = [v5[0] _helpSomeonElseButtonTitle];
      [v4 setTitle:?];
      MEMORY[0x277D82BD8](v2);
    }

    [location[0] setConfiguration:v4];
    objc_storeStrong(&v4, 0);
  }

  objc_storeStrong(v5, 0);
  objc_storeStrong(location, 0);
}

- (void)didSelectClose:(id)close
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, close);
  delegate = [(AKPasswordResetViewController *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    v12 = _AKLogSystem();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      log = v12;
      type = v11;
      __os_log_helper_16_0_0(v10);
      _os_log_impl(&dword_222379000, log, type, "User selected close in password reset options screen", v10, 2u);
    }

    objc_storeStrong(&v12, 0);
    [delegate passwordResetControllerDidSelectClose:selfCopy];
  }

  else
  {
    v9 = _AKLogSystem();
    v8 = 16;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v3 = v9;
      v4 = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_error_impl(&dword_222379000, v3, v4, "Password reset option controller's delegate didn't implement to close event.", v7, 2u);
    }

    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(&delegate, 0);
  objc_storeStrong(location, 0);
}

- (void)didSelectResetMyPassword:(id)password
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, password);
  [(AKPasswordResetViewController *)selfCopy setShowResetMyPasswordButtonLoading:1];
  resetMyPasswordButton = [(AKPasswordResetViewController *)selfCopy resetMyPasswordButton];
  [(UIButton *)resetMyPasswordButton setNeedsUpdateConfiguration];
  MEMORY[0x277D82BD8](resetMyPasswordButton);
  [(AKPasswordResetViewController *)selfCopy _startLoading];
  delegate = [(AKPasswordResetViewController *)selfCopy delegate];
  [(AKPasswordResetViewControllerDelegate *)delegate passwordResetControllerDidSelectPrimaryUser:selfCopy];
  MEMORY[0x277D82BD8](delegate);
  objc_storeStrong(location, 0);
}

- (void)didSelectHelpSomeoneElse:(id)else
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, else);
  [(AKPasswordResetViewController *)selfCopy setShowHelpSomeoneElseButtonLoading:1];
  helpSomeoneElseButton = [(AKPasswordResetViewController *)selfCopy helpSomeoneElseButton];
  [(UIButton *)helpSomeoneElseButton setNeedsUpdateConfiguration];
  MEMORY[0x277D82BD8](helpSomeoneElseButton);
  [(AKPasswordResetViewController *)selfCopy _startLoading];
  delegate = [(AKPasswordResetViewController *)selfCopy delegate];
  [(AKPasswordResetViewControllerDelegate *)delegate passwordResetControllerDidSelectOtherUser:selfCopy];
  MEMORY[0x277D82BD8](delegate);
  objc_storeStrong(location, 0);
}

- (void)_loadProfilePicture
{
  selfCopy = self;
  v12[1] = a2;
  imageProvider = [(AKPasswordResetViewController *)self imageProvider];
  v12[0] = [(AKProfileImageProviding *)imageProvider profilePictureForAccountOwner];
  MEMORY[0x277D82BD8](imageProvider);
  if (v12[0])
  {
    profilePictureImageView = [(AKPasswordResetViewController *)selfCopy profilePictureImageView];
    [(UIImageView *)profilePictureImageView setImage:v12[0]];
    MEMORY[0x277D82BD8](profilePictureImageView);
  }

  else
  {
    objc_initWeak(&location, selfCopy);
    imageProvider2 = [(AKPasswordResetViewController *)selfCopy imageProvider];
    v5 = MEMORY[0x277D85DD0];
    v6 = -1073741824;
    v7 = 0;
    v8 = __52__AKPasswordResetViewController__loadProfilePicture__block_invoke;
    v9 = &unk_2784A5DE8;
    objc_copyWeak(&v10, &location);
    [(AKProfileImageProviding *)imageProvider2 profilePictureForAccountOwnerWithCompletion:&v5];
    MEMORY[0x277D82BD8](imageProvider2);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  objc_storeStrong(v12, 0);
}

void __52__AKPasswordResetViewController__loadProfilePicture__block_invoke(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  v14[1] = a1;
  v5 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v5;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __52__AKPasswordResetViewController__loadProfilePicture__block_invoke_2;
  v12 = &unk_2784A5DC0;
  objc_copyWeak(v14, a1 + 4);
  v13 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v13, 0);
  objc_destroyWeak(v14);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

void __52__AKPasswordResetViewController__loadProfilePicture__block_invoke_2(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 40));
  if (location[0] && *(a1 + 32))
  {
    v1 = *(a1 + 32);
    v2 = [location[0] profilePictureImageView];
    [v2 setImage:v1];
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

- (id)_resetMyPasswordButtonConfiguration
{
  location[2] = self;
  location[1] = a2;
  objc_initWeak(location, self);
  filledButtonConfiguration = [MEMORY[0x277D75230] filledButtonConfiguration];
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled];
  v2 = 4;
  if ((isAuthKitSolariumFeatureEnabled & 1) == 0)
  {
    v2 = 3;
  }

  v5 = v2;
  MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
  v13[1] = v5;
  [filledButtonConfiguration setCornerStyle:v5];
  [filledButtonConfiguration setImagePadding:6.0];
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __68__AKPasswordResetViewController__resetMyPasswordButtonConfiguration__block_invoke;
  v12 = &unk_2784A5E10;
  objc_copyWeak(v13, location);
  [filledButtonConfiguration setTitleTextAttributesTransformer:&v8];
  v4 = MEMORY[0x277D82BE0](filledButtonConfiguration);
  objc_destroyWeak(v13);
  objc_storeStrong(&filledButtonConfiguration, 0);
  objc_destroyWeak(location);

  return v4;
}

id __68__AKPasswordResetViewController__resetMyPasswordButtonConfiguration__block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12[1] = a1;
  v12[0] = [location[0] mutableCopy];
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  if (WeakRetained)
  {
    if ([WeakRetained showResetMyPasswordButtonLoading] & 1) != 0 || (objc_msgSend(WeakRetained, "showHelpSomeoneElseButtonLoading"))
    {
      v9 = [MEMORY[0x277D75348] systemGrayColor];
      v2 = *MEMORY[0x277D740C0];
      [v12[0] setObject:? forKeyedSubscript:?];
      MEMORY[0x277D82BD8](v9);
    }

    else
    {
      v8 = [MEMORY[0x277D75348] whiteColor];
      v3 = *MEMORY[0x277D740C0];
      [v12[0] setObject:? forKeyedSubscript:?];
      MEMORY[0x277D82BD8](v8);
    }

    v7 = +[AKPasswordResetAppearance actionButtonFont];
    v4 = *MEMORY[0x277D740A8];
    [v12[0] setObject:? forKeyedSubscript:?];
    MEMORY[0x277D82BD8](v7);
  }

  v6 = MEMORY[0x277D82BE0](v12[0]);
  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(v12, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (id)_helpSomeoneElseButtonConfiguration
{
  location[2] = self;
  location[1] = a2;
  objc_initWeak(location, self);
  plainButtonConfiguration = [MEMORY[0x277D75230] plainButtonConfiguration];
  [plainButtonConfiguration setImagePadding:6.0];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __68__AKPasswordResetViewController__helpSomeoneElseButtonConfiguration__block_invoke;
  v8 = &unk_2784A5E10;
  objc_copyWeak(v9, location);
  [plainButtonConfiguration setTitleTextAttributesTransformer:&v4];
  v3 = MEMORY[0x277D82BE0](plainButtonConfiguration);
  objc_destroyWeak(v9);
  objc_storeStrong(&plainButtonConfiguration, 0);
  objc_destroyWeak(location);

  return v3;
}

id __68__AKPasswordResetViewController__helpSomeoneElseButtonConfiguration__block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12[1] = a1;
  v12[0] = [location[0] mutableCopy];
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  if (WeakRetained)
  {
    if ([WeakRetained showResetMyPasswordButtonLoading] & 1) != 0 || (objc_msgSend(WeakRetained, "showHelpSomeoneElseButtonLoading"))
    {
      v9 = [MEMORY[0x277D75348] systemGrayColor];
      v2 = *MEMORY[0x277D740C0];
      [v12[0] setObject:? forKeyedSubscript:?];
      MEMORY[0x277D82BD8](v9);
    }

    else
    {
      v8 = [MEMORY[0x277D75348] systemBlueColor];
      v3 = *MEMORY[0x277D740C0];
      [v12[0] setObject:? forKeyedSubscript:?];
      MEMORY[0x277D82BD8](v8);
    }

    v7 = +[AKPasswordResetAppearance actionButtonFont];
    v4 = *MEMORY[0x277D740A8];
    [v12[0] setObject:? forKeyedSubscript:?];
    MEMORY[0x277D82BD8](v7);
  }

  v6 = MEMORY[0x277D82BE0](v12[0]);
  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(v12, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (void)_startLoading
{
  selfCopy = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v11 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = location[0];
    v9 = v11;
    __os_log_helper_16_0_0(v10);
    _os_log_impl(&dword_222379000, v8, v9, "Started loading state in password reset options screen", v10, 2u);
  }

  objc_storeStrong(location, 0);
  resetMyPasswordButton = [(AKPasswordResetViewController *)selfCopy resetMyPasswordButton];
  [(UIButton *)resetMyPasswordButton setEnabled:0];
  MEMORY[0x277D82BD8](resetMyPasswordButton);
  helpSomeoneElseButton = [(AKPasswordResetViewController *)selfCopy helpSomeoneElseButton];
  [(UIButton *)helpSomeoneElseButton setEnabled:0];
  MEMORY[0x277D82BD8](helpSomeoneElseButton);
  closeButton = [(AKPasswordResetViewController *)selfCopy closeButton];
  [(UIButton *)closeButton setHidden:1];
  MEMORY[0x277D82BD8](closeButton);
  navigationItem = [(AKPasswordResetViewController *)selfCopy navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setHidden:1];
  MEMORY[0x277D82BD8](rightBarButtonItem);
  MEMORY[0x277D82BD8](navigationItem);
  view = [(AKPasswordResetViewController *)selfCopy view];
  [view setUserInteractionEnabled:0];
  MEMORY[0x277D82BD8](view);
}

- (void)stopLoading
{
  selfCopy = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    v12 = location[0];
    v13 = v15;
    __os_log_helper_16_0_0(v14);
    _os_log_impl(&dword_222379000, v12, v13, "Stopped loading state in password reset options screen", v14, 2u);
  }

  objc_storeStrong(location, 0);
  [(AKPasswordResetViewController *)selfCopy setShowResetMyPasswordButtonLoading:0];
  resetMyPasswordButton = [(AKPasswordResetViewController *)selfCopy resetMyPasswordButton];
  [(UIButton *)resetMyPasswordButton setNeedsUpdateConfiguration];
  MEMORY[0x277D82BD8](resetMyPasswordButton);
  [(AKPasswordResetViewController *)selfCopy setShowHelpSomeoneElseButtonLoading:0];
  helpSomeoneElseButton = [(AKPasswordResetViewController *)selfCopy helpSomeoneElseButton];
  [(UIButton *)helpSomeoneElseButton setNeedsUpdateConfiguration];
  MEMORY[0x277D82BD8](helpSomeoneElseButton);
  resetMyPasswordButton2 = [(AKPasswordResetViewController *)selfCopy resetMyPasswordButton];
  [(UIButton *)resetMyPasswordButton2 setEnabled:1];
  MEMORY[0x277D82BD8](resetMyPasswordButton2);
  helpSomeoneElseButton2 = [(AKPasswordResetViewController *)selfCopy helpSomeoneElseButton];
  [(UIButton *)helpSomeoneElseButton2 setEnabled:1];
  MEMORY[0x277D82BD8](helpSomeoneElseButton2);
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled];
  closeButton = [(AKPasswordResetViewController *)selfCopy closeButton];
  [(UIButton *)closeButton setHidden:isAuthKitSolariumFeatureEnabled];
  MEMORY[0x277D82BD8](closeButton);
  MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
  navigationItem = [(AKPasswordResetViewController *)selfCopy navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setHidden:0];
  MEMORY[0x277D82BD8](rightBarButtonItem);
  MEMORY[0x277D82BD8](navigationItem);
  view = [(AKPasswordResetViewController *)selfCopy view];
  [view setUserInteractionEnabled:1];
  MEMORY[0x277D82BD8](view);
}

- (AKPasswordResetViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)titleView
{
  WeakRetained = objc_loadWeakRetained(&self->_titleView);

  return WeakRetained;
}

- (UILabel)serviceNameLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceNameLabel);

  return WeakRetained;
}

- (UIButton)closeButton
{
  WeakRetained = objc_loadWeakRetained(&self->_closeButton);

  return WeakRetained;
}

- (UIScrollView)contentScrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentScrollView);

  return WeakRetained;
}

- (UIStackView)contentView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentView);

  return WeakRetained;
}

- (UIImageView)profilePictureImageView
{
  WeakRetained = objc_loadWeakRetained(&self->_profilePictureImageView);

  return WeakRetained;
}

- (UIImageView)keyIconImageView
{
  WeakRetained = objc_loadWeakRetained(&self->_keyIconImageView);

  return WeakRetained;
}

- (UILabel)screenTitleLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_screenTitleLabel);

  return WeakRetained;
}

- (UILabel)screenSummaryLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_screenSummaryLabel);

  return WeakRetained;
}

- (UIView)footerView
{
  WeakRetained = objc_loadWeakRetained(&self->_footerView);

  return WeakRetained;
}

- (UIButton)resetMyPasswordButton
{
  WeakRetained = objc_loadWeakRetained(&self->_resetMyPasswordButton);

  return WeakRetained;
}

- (UIButton)helpSomeoneElseButton
{
  WeakRetained = objc_loadWeakRetained(&self->_helpSomeoneElseButton);

  return WeakRetained;
}

@end