@interface AKPasswordResetViewController
- (AKPasswordResetViewController)initWithImageProvider:(id)a3;
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
- (void)didSelectClose:(id)a3;
- (void)didSelectHelpSomeoneElse:(id)a3;
- (void)didSelectResetMyPassword:(id)a3;
- (void)stopLoading;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation AKPasswordResetViewController

- (AKPasswordResetViewController)initWithImageProvider:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = v9;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = 0;
  v7.receiver = v5;
  v7.super_class = AKPasswordResetViewController;
  v9 = [(AKPasswordResetViewController *)&v7 initWithNibName:@"AKPasswordResetViewController" bundle:?];
  objc_storeStrong(&v9, v9);
  MEMORY[0x277D82BD8](v6);
  if (v9)
  {
    objc_storeStrong(&v9->_imageProvider, location[0]);
  }

  v4 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v4;
}

- (void)viewDidLoad
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = AKPasswordResetViewController;
  [(AKPasswordResetViewController *)&v2 viewDidLoad];
  [(AKPasswordResetViewController *)v4 _setupSubviews];
  [(AKPasswordResetViewController *)v4 _applyStyle];
  [(AKPasswordResetViewController *)v4 _applyLocalization];
  [(AKPasswordResetViewController *)v4 _loadProfilePicture];
}

- (void)viewDidLayoutSubviews
{
  v15 = self;
  v14 = a2;
  v13.receiver = self;
  v13.super_class = AKPasswordResetViewController;
  [(AKPasswordResetViewController *)&v13 viewDidLayoutSubviews];
  v6 = [(AKPasswordResetViewController *)v15 footerView];
  [(UIView *)v6 frame];
  UIEdgeInsetsMake();
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  MEMORY[0x277D82BD8](v6);
  v7 = [(AKPasswordResetViewController *)v15 contentScrollView];
  [(UIScrollView *)v7 setContentInset:v9, v10, v11, v12];
  MEMORY[0x277D82BD8](v7);
  v8 = [(AKPasswordResetViewController *)v15 contentScrollView];
  [(UIScrollView *)v8 setScrollIndicatorInsets:v9, v10, v11, v12];
  MEMORY[0x277D82BD8](v8);
}

- (void)_setupSubviews
{
  v18 = objc_alloc(MEMORY[0x277D751E0]);
  v21 = [(AKPasswordResetViewController *)self titleView];
  v20 = [v18 initWithCustomView:?];
  v19 = [(AKPasswordResetViewController *)self navigationItem];
  [v19 setLeftBarButtonItem:v20];
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  v22 = [MEMORY[0x277CF0228] sharedManager];
  v23 = [v22 isAuthKitSolariumFeatureEnabled];
  MEMORY[0x277D82BD8](v22);
  if (v23)
  {
    v16 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_didSelectClose_];
    v15 = [(AKPasswordResetViewController *)self navigationItem];
    [v15 setRightBarButtonItem:v16];
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    v17 = [(AKPasswordResetViewController *)self closeButton];
    [(UIButton *)v17 setHidden:1];
    MEMORY[0x277D82BD8](v17);
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277D751E0]);
    v14 = [(AKPasswordResetViewController *)self closeButton];
    v13 = [v11 initWithCustomView:?];
    v12 = [(AKPasswordResetViewController *)self navigationItem];
    [v12 setRightBarButtonItem:v13];
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
  }

  v6 = [(AKPasswordResetViewController *)self profilePictureImageView];
  [(UIImageView *)v6 frame];
  v3 = v2 / 2.0;
  v5 = [(AKPasswordResetViewController *)self profilePictureImageView];
  v4 = [(UIImageView *)v5 layer];
  [v4 setCornerRadius:v3];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  v8 = [(AKPasswordResetViewController *)self profilePictureImageView];
  v7 = [(UIImageView *)v8 layer];
  [v7 setMasksToBounds:1];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  v9 = [(AKPasswordResetViewController *)self contentScrollView];
  [(UIScrollView *)v9 setAccessibilityIdentifier:@"SCROLL_VIEW"];
  MEMORY[0x277D82BD8](v9);
  v10 = [(AKPasswordResetViewController *)self contentView];
  [(UIStackView *)v10 setAccessibilityIdentifier:@"SCROLL_VIEW_CONTENT_VIEW"];
  MEMORY[0x277D82BD8](v10);
}

- (void)_applyLocalization
{
  v35 = self;
  v34[1] = a2;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v4 localizedStringForKey:@"PASSWORD_RESET_OPTIONS_SERVICE_TITLE_REBRAND" value:? table:?];
  v2 = [(AKPasswordResetViewController *)v35 serviceNameLabel];
  [(UILabel *)v2 setText:v3];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v7 localizedStringForKey:@"PASSWORD_RESET_OPTIONS_SCREEN_TITLE" value:&stru_28358EF68 table:@"Localizable"];
  v5 = [(AKPasswordResetViewController *)v35 screenTitleLabel];
  [(UILabel *)v5 setText:v6];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  v8 = [MEMORY[0x277CF0130] sharedInstance];
  v34[0] = [v8 primaryAuthKitAccount];
  MEMORY[0x277D82BD8](v8);
  v9 = MEMORY[0x277CF0300];
  v10 = [v34[0] username];
  v33 = [v9 formattedUsernameFromUsername:?];
  MEMORY[0x277D82BD8](v10);
  v32 = objc_alloc_init(MEMORY[0x277CCAC00]);
  v12 = [MEMORY[0x277CF0130] sharedInstance];
  v11 = [v12 familyNameForAccount:v34[0]];
  [v32 setFamilyName:?];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  v14 = [MEMORY[0x277CF0130] sharedInstance];
  v13 = [v14 givenNameForAccount:v34[0]];
  [v32 setGivenName:?];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  v31 = objc_alloc_init(MEMORY[0x277CCAC08]);
  v30 = [v31 stringFromPersonNameComponents:v32];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v29 = [v15 localizedStringForKey:@"PASSWORD_RESET_OPTIONS_SCREEN_SUMMARY" value:&stru_28358EF68 table:@"Localizable"];
  MEMORY[0x277D82BD8](v15);
  v19 = MEMORY[0x277CCACA8];
  v18 = v29;
  v16 = v30;
  v17 = v33;
  v21 = [MEMORY[0x277D75418] currentDevice];
  v20 = [v21 localizedModel];
  v28 = [v19 stringWithFormat:v18, v16, v17, v20];
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  v22 = v28;
  v23 = [(AKPasswordResetViewController *)v35 screenSummaryLabel];
  [(UILabel *)v23 setText:v22];
  MEMORY[0x277D82BD8](v23);
  v25 = [(AKPasswordResetViewController *)v35 resetMyPasswordButton];
  v24 = [(AKPasswordResetViewController *)v35 _resetMyPasswordButtonTitle];
  [UIButton setTitle:v25 forState:"setTitle:forState:"];
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  v27 = [(AKPasswordResetViewController *)v35 helpSomeoneElseButton];
  v26 = [(AKPasswordResetViewController *)v35 _helpSomeonElseButtonTitle];
  [UIButton setTitle:v27 forState:"setTitle:forState:"];
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
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
  v44 = self;
  location[5] = a2;
  v19 = [MEMORY[0x277D75348] systemBackgroundColor];
  v18 = [(AKPasswordResetViewController *)v44 view];
  [v18 setBackgroundColor:v19];
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  v23 = [(AKPasswordResetViewController *)v44 keyIconImageView];
  [(UIImageView *)v23 frame];
  location[1] = v2;
  location[2] = v3;
  location[3] = v4;
  location[4] = v5;
  v20 = *&v4 / 2.0;
  v22 = [(AKPasswordResetViewController *)v44 keyIconImageView];
  v21 = [(UIImageView *)v22 layer];
  [v21 setCornerRadius:v20];
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  v25 = [MEMORY[0x277D75348] systemBackgroundColor];
  v24 = [(AKPasswordResetViewController *)v44 keyIconImageView];
  [(UIImageView *)v24 setBackgroundColor:v25];
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  v27 = +[AKPasswordResetAppearance serviceNameFont];
  v26 = [(AKPasswordResetViewController *)v44 serviceNameLabel];
  [(UILabel *)v26 setFont:v27];
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  v28 = [(AKPasswordResetViewController *)v44 serviceNameLabel];
  [(UILabel *)v28 setAdjustsFontForContentSizeCategory:0];
  MEMORY[0x277D82BD8](v28);
  v29 = [MEMORY[0x277CF0228] sharedManager];
  v30 = [v29 isAuthKitSolariumFeatureEnabled];
  MEMORY[0x277D82BD8](v29);
  if ((v30 & 1) == 0)
  {
    v17 = +[AKPasswordResetAppearance closeButtonConfiguration];
    v16 = [(AKPasswordResetViewController *)v44 closeButton];
    [(UIButton *)v16 setConfiguration:v17];
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
  }

  v13 = +[AKPasswordResetAppearance screenTitleFont];
  v12 = [(AKPasswordResetViewController *)v44 screenTitleLabel];
  [(UILabel *)v12 setFont:v13];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  v15 = +[AKPasswordResetAppearance screenSummaryFont];
  v14 = [(AKPasswordResetViewController *)v44 screenSummaryLabel];
  [(UILabel *)v14 setFont:v15];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  objc_initWeak(location, v44);
  v11 = [(AKPasswordResetViewController *)v44 _resetMyPasswordButtonConfiguration];
  v10 = [(AKPasswordResetViewController *)v44 resetMyPasswordButton];
  [(UIButton *)v10 setConfiguration:v11];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  v9 = [(AKPasswordResetViewController *)v44 resetMyPasswordButton];
  v37 = MEMORY[0x277D85DD0];
  v38 = -1073741824;
  v39 = 0;
  v40 = __44__AKPasswordResetViewController__applyStyle__block_invoke;
  v41 = &unk_2784A5D98;
  objc_copyWeak(v42, location);
  [(UIButton *)v9 setConfigurationUpdateHandler:&v37];
  MEMORY[0x277D82BD8](v9);
  v8 = [(AKPasswordResetViewController *)v44 _helpSomeoneElseButtonConfiguration];
  v7 = [(AKPasswordResetViewController *)v44 helpSomeoneElseButton];
  [(UIButton *)v7 setConfiguration:v8];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  v6 = [(AKPasswordResetViewController *)v44 helpSomeoneElseButton];
  v31 = MEMORY[0x277D85DD0];
  v32 = -1073741824;
  v33 = 0;
  v34 = __44__AKPasswordResetViewController__applyStyle__block_invoke_2;
  v35 = &unk_2784A5D98;
  objc_copyWeak(&v36, location);
  [(UIButton *)v6 setConfigurationUpdateHandler:&v31];
  MEMORY[0x277D82BD8](v6);
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

- (void)didSelectClose:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = [(AKPasswordResetViewController *)v15 delegate];
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
    [v13 passwordResetControllerDidSelectClose:v15];
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

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)didSelectResetMyPassword:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(AKPasswordResetViewController *)v6 setShowResetMyPasswordButtonLoading:1];
  v3 = [(AKPasswordResetViewController *)v6 resetMyPasswordButton];
  [(UIButton *)v3 setNeedsUpdateConfiguration];
  MEMORY[0x277D82BD8](v3);
  [(AKPasswordResetViewController *)v6 _startLoading];
  v4 = [(AKPasswordResetViewController *)v6 delegate];
  [(AKPasswordResetViewControllerDelegate *)v4 passwordResetControllerDidSelectPrimaryUser:v6];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (void)didSelectHelpSomeoneElse:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(AKPasswordResetViewController *)v6 setShowHelpSomeoneElseButtonLoading:1];
  v3 = [(AKPasswordResetViewController *)v6 helpSomeoneElseButton];
  [(UIButton *)v3 setNeedsUpdateConfiguration];
  MEMORY[0x277D82BD8](v3);
  [(AKPasswordResetViewController *)v6 _startLoading];
  v4 = [(AKPasswordResetViewController *)v6 delegate];
  [(AKPasswordResetViewControllerDelegate *)v4 passwordResetControllerDidSelectOtherUser:v6];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (void)_loadProfilePicture
{
  v13 = self;
  v12[1] = a2;
  v4 = [(AKPasswordResetViewController *)self imageProvider];
  v12[0] = [(AKProfileImageProviding *)v4 profilePictureForAccountOwner];
  MEMORY[0x277D82BD8](v4);
  if (v12[0])
  {
    v3 = [(AKPasswordResetViewController *)v13 profilePictureImageView];
    [(UIImageView *)v3 setImage:v12[0]];
    MEMORY[0x277D82BD8](v3);
  }

  else
  {
    objc_initWeak(&location, v13);
    v2 = [(AKPasswordResetViewController *)v13 imageProvider];
    v5 = MEMORY[0x277D85DD0];
    v6 = -1073741824;
    v7 = 0;
    v8 = __52__AKPasswordResetViewController__loadProfilePicture__block_invoke;
    v9 = &unk_2784A5DE8;
    objc_copyWeak(&v10, &location);
    [(AKProfileImageProviding *)v2 profilePictureForAccountOwnerWithCompletion:&v5];
    MEMORY[0x277D82BD8](v2);
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
  v14 = [MEMORY[0x277D75230] filledButtonConfiguration];
  v6 = [MEMORY[0x277CF0228] sharedManager];
  v7 = [v6 isAuthKitSolariumFeatureEnabled];
  v2 = 4;
  if ((v7 & 1) == 0)
  {
    v2 = 3;
  }

  v5 = v2;
  MEMORY[0x277D82BD8](v6);
  v13[1] = v5;
  [v14 setCornerStyle:v5];
  [v14 setImagePadding:6.0];
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __68__AKPasswordResetViewController__resetMyPasswordButtonConfiguration__block_invoke;
  v12 = &unk_2784A5E10;
  objc_copyWeak(v13, location);
  [v14 setTitleTextAttributesTransformer:&v8];
  v4 = MEMORY[0x277D82BE0](v14);
  objc_destroyWeak(v13);
  objc_storeStrong(&v14, 0);
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
  v10 = [MEMORY[0x277D75230] plainButtonConfiguration];
  [v10 setImagePadding:6.0];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __68__AKPasswordResetViewController__helpSomeoneElseButtonConfiguration__block_invoke;
  v8 = &unk_2784A5E10;
  objc_copyWeak(v9, location);
  [v10 setTitleTextAttributesTransformer:&v4];
  v3 = MEMORY[0x277D82BE0](v10);
  objc_destroyWeak(v9);
  objc_storeStrong(&v10, 0);
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
  v13 = self;
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
  v2 = [(AKPasswordResetViewController *)v13 resetMyPasswordButton];
  [(UIButton *)v2 setEnabled:0];
  MEMORY[0x277D82BD8](v2);
  v3 = [(AKPasswordResetViewController *)v13 helpSomeoneElseButton];
  [(UIButton *)v3 setEnabled:0];
  MEMORY[0x277D82BD8](v3);
  v4 = [(AKPasswordResetViewController *)v13 closeButton];
  [(UIButton *)v4 setHidden:1];
  MEMORY[0x277D82BD8](v4);
  v6 = [(AKPasswordResetViewController *)v13 navigationItem];
  v5 = [v6 rightBarButtonItem];
  [v5 setHidden:1];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  v7 = [(AKPasswordResetViewController *)v13 view];
  [v7 setUserInteractionEnabled:0];
  MEMORY[0x277D82BD8](v7);
}

- (void)stopLoading
{
  v17 = self;
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
  [(AKPasswordResetViewController *)v17 setShowResetMyPasswordButtonLoading:0];
  v2 = [(AKPasswordResetViewController *)v17 resetMyPasswordButton];
  [(UIButton *)v2 setNeedsUpdateConfiguration];
  MEMORY[0x277D82BD8](v2);
  [(AKPasswordResetViewController *)v17 setShowHelpSomeoneElseButtonLoading:0];
  v3 = [(AKPasswordResetViewController *)v17 helpSomeoneElseButton];
  [(UIButton *)v3 setNeedsUpdateConfiguration];
  MEMORY[0x277D82BD8](v3);
  v4 = [(AKPasswordResetViewController *)v17 resetMyPasswordButton];
  [(UIButton *)v4 setEnabled:1];
  MEMORY[0x277D82BD8](v4);
  v5 = [(AKPasswordResetViewController *)v17 helpSomeoneElseButton];
  [(UIButton *)v5 setEnabled:1];
  MEMORY[0x277D82BD8](v5);
  v8 = [MEMORY[0x277CF0228] sharedManager];
  v6 = [v8 isAuthKitSolariumFeatureEnabled];
  v7 = [(AKPasswordResetViewController *)v17 closeButton];
  [(UIButton *)v7 setHidden:v6];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  v10 = [(AKPasswordResetViewController *)v17 navigationItem];
  v9 = [v10 rightBarButtonItem];
  [v9 setHidden:0];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  v11 = [(AKPasswordResetViewController *)v17 view];
  [v11 setUserInteractionEnabled:1];
  MEMORY[0x277D82BD8](v11);
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