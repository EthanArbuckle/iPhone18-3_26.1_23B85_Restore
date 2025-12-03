@interface AKAuthorizationFirstTimePaneViewController
- (AKAuthorizationViewController)authorizationViewController;
- (void)_addAdditionalCTAToContext:(id)context;
- (void)_addContinueButtonToContext:(id)context title:(id)title;
- (void)_addIconToContext:(id)context;
- (void)_addPrivacyLinkToContext:(id)context;
- (void)_addTitleToContext:(id)context;
- (void)_continueButtonSelected:(id)selected;
- (void)_performAdditionalCTA:(id)a;
- (void)viewDidLoad;
@end

@implementation AKAuthorizationFirstTimePaneViewController

- (void)viewDidLoad
{
  selfCopy = self;
  v89 = a2;
  v88.receiver = self;
  v88.super_class = AKAuthorizationFirstTimePaneViewController;
  [(AKAuthorizationPaneViewController *)&v88 viewDidLoad];
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  v86 = 0;
  v84 = 0;
  if ([mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled])
  {
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    v86 = 1;
    v75 = systemBackgroundColor;
  }

  else
  {
    v85 = +[AKAuthorizationAppearance paneBackgroundColor];
    v84 = 1;
    v75 = v85;
  }

  view = [(AKAuthorizationFirstTimePaneViewController *)selfCopy view];
  [view setBackgroundColor:v75];
  MEMORY[0x277D82BD8](view);
  if (v84)
  {
    MEMORY[0x277D82BD8](v85);
  }

  if (v86)
  {
    MEMORY[0x277D82BD8](systemBackgroundColor);
  }

  *&v2 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  v70 = selfCopy;
  tableView = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  [(UITableView *)tableView setDelegate:v70];
  *&v3 = MEMORY[0x277D82BD8](tableView).n128_u64[0];
  mutableConstraints = [(AKAuthorizationPaneViewController *)selfCopy mutableConstraints];
  headerPaneContext = [(AKAuthorizationPaneViewController *)selfCopy headerPaneContext];
  mEMORY[0x277CF0228]2 = [MEMORY[0x277CF0228] sharedManager];
  isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228]2 isAuthKitSolariumFeatureEnabled];
  *&v4 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]2).n128_u64[0];
  if (!isAuthKitSolariumFeatureEnabled)
  {
    [(AKAuthorizationFirstTimePaneViewController *)selfCopy _addIconToContext:headerPaneContext, v4];
  }

  [(AKAuthorizationFirstTimePaneViewController *)selfCopy _addTitleToContext:headerPaneContext, v4];
  v81 = 0;
  v80 = 0;
  authorizationViewController = [(AKAuthorizationFirstTimePaneViewController *)selfCopy authorizationViewController];
  _isManagedAppleID = [(AKAuthorizationViewController *)authorizationViewController _isManagedAppleID];
  MEMORY[0x277D82BD8](authorizationViewController);
  v79 = _isManagedAppleID;
  if (_isManagedAppleID)
  {
    v56 = [AKAuthorizationBulletPointSubPane alloc];
    v61 = +[AKAuthorizationBiometricImage biometricImage];
    v60 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v59 = [v60 localizedStringForKey:@"AUTHORIZE_FIRST_TIME_TITLE_1" value:? table:?];
    v58 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v57 = [v58 localizedStringForKey:@"AUTHORIZE_FIRST_TIME_MANAGED_ACCOUNT_MESSAGE_1_REBRAND" value:&stru_28358EF68 table:@"Localizable"];
    v5 = [(AKAuthorizationBulletPointSubPane *)v56 initWithImage:v61 title:v59 message:?];
    v6 = v81;
    v81 = v5;
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v57);
    MEMORY[0x277D82BD8](v58);
    MEMORY[0x277D82BD8](v59);
    MEMORY[0x277D82BD8](v60);
    MEMORY[0x277D82BD8](v61);
    v62 = [AKAuthorizationBulletPointSubPane alloc];
    v67 = [MEMORY[0x277D755B8] ak_imageNamed:@"lock.fill"];
    v66 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v65 = [v66 localizedStringForKey:@"AUTHORIZE_FIRST_TIME_MANAGED_ACCOUNT_TITLE_2" value:&stru_28358EF68 table:@"Localizable"];
    v64 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v63 = [v64 localizedStringForKey:@"AUTHORIZE_FIRST_TIME_MANAGED_ACCOUNT_MESSAGE_2" value:&stru_28358EF68 table:@"Localizable"];
    v7 = [(AKAuthorizationBulletPointSubPane *)v62 initWithImage:v67 title:v65 message:?];
    v8 = v80;
    v80 = v7;
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v63);
    MEMORY[0x277D82BD8](v64);
    MEMORY[0x277D82BD8](v65);
    MEMORY[0x277D82BD8](v66);
    v9 = MEMORY[0x277D82BD8](v67).n128_u64[0];
  }

  else
  {
    v44 = [AKAuthorizationBulletPointSubPane alloc];
    v49 = +[AKAuthorizationBiometricImage biometricImage];
    v48 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v47 = [v48 localizedStringForKey:@"AUTHORIZE_FIRST_TIME_TITLE_1" value:? table:?];
    v46 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v45 = [v46 localizedStringForKey:@"AUTHORIZE_FIRST_TIME_MESSAGE_1_REBRAND" value:&stru_28358EF68 table:@"Localizable"];
    v10 = [(AKAuthorizationBulletPointSubPane *)v44 initWithImage:v49 title:v47 message:?];
    v11 = v81;
    v81 = v10;
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v49);
    v50 = [AKAuthorizationBulletPointSubPane alloc];
    v55 = [MEMORY[0x277D755B8] ak_imageNamed:@"hand.raised.fill"];
    v54 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v53 = [v54 localizedStringForKey:@"AUTHORIZE_FIRST_TIME_TITLE_2" value:&stru_28358EF68 table:@"Localizable"];
    v52 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v51 = [v52 localizedStringForKey:@"AUTHORIZE_FIRST_TIME_MESSAGE_2" value:&stru_28358EF68 table:@"Localizable"];
    v12 = [(AKAuthorizationBulletPointSubPane *)v50 initWithImage:v55 title:v53 message:?];
    v13 = v80;
    v80 = v12;
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v51);
    MEMORY[0x277D82BD8](v52);
    MEMORY[0x277D82BD8](v53);
    MEMORY[0x277D82BD8](v54);
    v9 = MEMORY[0x277D82BD8](v55).n128_u64[0];
  }

  mEMORY[0x277CF0228]3 = [MEMORY[0x277CF0228] sharedManager];
  isAuthKitSolariumFeatureEnabled2 = [mEMORY[0x277CF0228]3 isAuthKitSolariumFeatureEnabled];
  *&v14 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]3).n128_u64[0];
  if (isAuthKitSolariumFeatureEnabled2)
  {
    v78 = MEMORY[0x277D82BE0](v81);
    objc_storeStrong(&v81, v80);
    objc_storeStrong(&v80, v78);
    objc_storeStrong(&v78, 0);
  }

  headerPaneContext2 = [(AKAuthorizationPaneViewController *)selfCopy headerPaneContext];
  [(AKAuthorizationPaneContext *)headerPaneContext2 addSubPane:v81];
  *&v15 = MEMORY[0x277D82BD8](headerPaneContext2).n128_u64[0];
  headerPaneContext3 = [(AKAuthorizationPaneViewController *)selfCopy headerPaneContext];
  [(AKAuthorizationPaneContext *)headerPaneContext3 addSubPane:v80];
  *&v16 = MEMORY[0x277D82BD8](headerPaneContext3).n128_u64[0];
  v40 = v81;
  +[AKAuthorizationPaneMetrics interBulletSpacing];
  [v40 setCustomSpacingAfter:?];
  v41 = v80;
  +[AKAuthorizationPaneMetrics interBulletSpacing];
  [v41 setCustomSpacingAfter:?];
  if (!v79)
  {
    v31 = [AKAuthorizationBulletPointSubPane alloc];
    v36 = [MEMORY[0x277D755B8] ak_imageNamed:*MEMORY[0x277CF00D0]];
    v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v34 = [v35 localizedStringForKey:@"AUTHORIZE_FIRST_TIME_TITLE_3" value:? table:?];
    v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v32 = [v33 localizedStringForKey:@"AUTHORIZE_FIRST_TIME_MESSAGE_3" value:&stru_28358EF68 table:@"Localizable"];
    v77 = [(AKAuthorizationBulletPointSubPane *)v31 initWithImage:v36 title:v34 message:?];
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](v35);
    *&v17 = MEMORY[0x277D82BD8](v36).n128_u64[0];
    headerPaneContext4 = [(AKAuthorizationPaneViewController *)selfCopy headerPaneContext];
    [(AKAuthorizationPaneContext *)headerPaneContext4 addSubPane:v77];
    MEMORY[0x277D82BD8](headerPaneContext4);
    objc_storeStrong(&v77, 0);
  }

  v22 = selfCopy;
  footerPaneContext = [(AKAuthorizationPaneViewController *)selfCopy footerPaneContext];
  [(AKAuthorizationFirstTimePaneViewController *)v22 _addPrivacyLinkToContext:?];
  *&v18 = MEMORY[0x277D82BD8](footerPaneContext).n128_u64[0];
  v24 = selfCopy;
  footerPaneContext2 = [(AKAuthorizationPaneViewController *)selfCopy footerPaneContext];
  v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v25 = [v26 localizedStringForKey:@"AUTHORIZE_FIRST_TIME_BUTTON_TITLE" value:&stru_28358EF68 table:@"Localizable"];
  [(AKAuthorizationFirstTimePaneViewController *)v24 _addContinueButtonToContext:footerPaneContext2 title:?];
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  *&v19 = MEMORY[0x277D82BD8](footerPaneContext2).n128_u64[0];
  v28 = selfCopy;
  footerPaneContext3 = [(AKAuthorizationPaneViewController *)selfCopy footerPaneContext];
  [(AKAuthorizationFirstTimePaneViewController *)v28 _addAdditionalCTAToContext:?];
  *&v20 = MEMORY[0x277D82BD8](footerPaneContext3).n128_u64[0];
  footerPaneContext4 = [(AKAuthorizationPaneViewController *)selfCopy footerPaneContext];
  [(AKAuthorizationPaneContext *)footerPaneContext4 addEmptyViewWithSpacing:0.0];
  *&v21 = MEMORY[0x277D82BD8](footerPaneContext4).n128_u64[0];
  [MEMORY[0x277CCAAD0] activateConstraints:{mutableConstraints, v21}];
  objc_storeStrong(&v80, 0);
  objc_storeStrong(&v81, 0);
  objc_storeStrong(&headerPaneContext, 0);
  objc_storeStrong(&mutableConstraints, 0);
}

- (void)_addIconToContext:(id)context
{
  v30[2] = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v27 = [MEMORY[0x277D755B8] imageNamed:@"SignInWithAppleLogo" inBundle:v28];
  v26 = [[AKAuthorizationSubPaneImage alloc] initWithImage:v27];
  image = [(AKAuthorizationSubPaneImage *)v26 image];
  [(UIImage *)image size];
  v24 = 0;
  v22 = 0;
  if (v3 == 0.0)
  {
    v20 = 1.0;
  }

  else
  {
    image2 = [(AKAuthorizationSubPaneImage *)v26 image];
    v24 = 1;
    [(UIImage *)image2 size];
    v19 = v4;
    image3 = [(AKAuthorizationSubPaneImage *)v26 image];
    v22 = 1;
    [(UIImage *)image3 size];
    v20 = v19 / v5;
  }

  if (v22)
  {
    MEMORY[0x277D82BD8](image3);
  }

  if (v24)
  {
    MEMORY[0x277D82BD8](image2);
  }

  MEMORY[0x277D82BD8](image);
  v8 = v26;
  imageView = [(AKAuthorizationSubPaneImage *)v26 imageView];
  heightAnchor = [(UIImageView *)imageView heightAnchor];
  +[AKAuthorizationPaneMetrics iconSize];
  v15 = [heightAnchor constraintEqualToConstant:v6];
  v30[0] = v15;
  imageView2 = [(AKAuthorizationSubPaneImage *)v26 imageView];
  widthAnchor = [(UIImageView *)imageView2 widthAnchor];
  imageView3 = [(AKAuthorizationSubPaneImage *)v26 imageView];
  heightAnchor2 = [(UIImageView *)imageView3 heightAnchor];
  v10 = [widthAnchor constraintEqualToAnchor:v20 multiplier:?];
  v30[1] = v10;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
  [(AKAuthorizationSubPaneImage *)v8 setImageViewConstraints:?];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](heightAnchor2);
  MEMORY[0x277D82BD8](imageView3);
  MEMORY[0x277D82BD8](widthAnchor);
  MEMORY[0x277D82BD8](imageView2);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](heightAnchor);
  *&v7 = MEMORY[0x277D82BD8](imageView).n128_u64[0];
  [location[0] addSubPane:{v26, v7}];
  v18 = v26;
  +[AKAuthorizationPaneMetrics iconBottomSpacing];
  [(AKAuthorizationSubPane *)v18 setCustomSpacingAfter:?];
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_addTitleToContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  authorizationViewController = [(AKAuthorizationFirstTimePaneViewController *)selfCopy authorizationViewController];
  _isManagedAppleID = [(AKAuthorizationViewController *)authorizationViewController _isManagedAppleID];
  MEMORY[0x277D82BD8](authorizationViewController);
  v31 = _isManagedAppleID;
  v16 = [AKAuthorizationSubPaneInfoLabel alloc];
  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v18 localizedStringForKey:@"AUTHORIZE_FIRST_TIME_TITLE" value:&stru_28358EF68 table:@"Localizable"];
  v30 = [(AKAuthorizationSubPaneInfoLabel *)v16 initWithString:?];
  MEMORY[0x277D82BD8](v17);
  [v30 setInfoLabelType:{1, MEMORY[0x277D82BD8](v18).n128_f64[0]}];
  [location[0] addSubPane:v30];
  if (_isManagedAppleID)
  {
    +[AKAuthorizationPaneMetrics titleToSmallTitleVerticalSpacing];
    [v30 setCustomSpacingAfter:?];
    mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
    v27 = 0;
    v25 = 0;
    v23 = 0;
    v21 = 0;
    if ([mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled])
    {
      v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v27 = 1;
      v26 = [v28 localizedStringForKey:@"AUTHORIZE_FIRST_TIME_MANAGED_ACCOUNT_SMALLTITLE_SOLARIUM" value:&stru_28358EF68 table:@"Localizable"];
      v25 = 1;
      v3 = MEMORY[0x277D82BE0](v26);
    }

    else
    {
      v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v23 = 1;
      v22 = [v24 localizedStringForKey:@"AUTHORIZE_FIRST_TIME_MANAGED_ACCOUNT_SMALLTITLE" value:&stru_28358EF68 table:@"Localizable"];
      v21 = 1;
      v3 = MEMORY[0x277D82BE0](v22);
    }

    v29 = v3;
    if (v21)
    {
      MEMORY[0x277D82BD8](v22);
    }

    if (v23)
    {
      MEMORY[0x277D82BD8](v24);
    }

    if (v25)
    {
      MEMORY[0x277D82BD8](v26);
    }

    if (v27)
    {
      MEMORY[0x277D82BD8](v28);
    }

    MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
    v20 = [[AKAuthorizationSubPaneInfoLabel alloc] initWithString:v29];
    [(AKAuthorizationSubPaneInfoLabel *)v20 setInfoLabelType:3];
    [location[0] addSubPane:v20];
    v12 = v20;
    +[AKAuthorizationPaneMetrics titleBottomSpacing];
    [(AKAuthorizationSubPane *)v12 setCustomSpacingAfter:?];
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v29, 0);
  }

  else
  {
    mEMORY[0x277CF0228]2 = [MEMORY[0x277CF0228] sharedManager];
    isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228]2 isAuthKitSolariumFeatureEnabled];
    *&v4 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]2).n128_u64[0];
    if (isAuthKitSolariumFeatureEnabled)
    {
      +[AKAuthorizationPaneMetrics titleToSmallTitleVerticalSpacing];
      [v30 setCustomSpacingAfter:?];
      v6 = [AKAuthorizationSubPaneInfoLabel alloc];
      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = [v8 localizedStringForKey:@"AUTHORIZE_FIRST_TIME_SMALLTITLE" value:&stru_28358EF68 table:@"Localizable"];
      v19 = [(AKAuthorizationSubPaneInfoLabel *)v6 initWithString:?];
      MEMORY[0x277D82BD8](v7);
      *&v5 = MEMORY[0x277D82BD8](v8).n128_u64[0];
      [(AKAuthorizationSubPaneInfoLabel *)v19 setInfoLabelType:3, v5];
      [location[0] addSubPane:v19];
      v9 = v19;
      +[AKAuthorizationPaneMetrics titleBottomSpacing];
      [(AKAuthorizationSubPane *)v9 setCustomSpacingAfter:?];
      objc_storeStrong(&v19, 0);
    }

    else
    {
      +[AKAuthorizationPaneMetrics titleBottomSpacing];
      [v30 setCustomSpacingAfter:?];
    }
  }

  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
}

- (void)_addPrivacyLinkToContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v4 = location[0];
  +[AKAuthorizationPaneMetrics privacyLinkTopSpacing];
  [v4 addEmptyViewWithSpacing:?];
  authorizationViewController = [(AKAuthorizationFirstTimePaneViewController *)selfCopy authorizationViewController];
  _isManagedAppleID = [(AKAuthorizationViewController *)authorizationViewController _isManagedAppleID];
  MEMORY[0x277D82BD8](authorizationViewController);
  v8 = _isManagedAppleID;
  v7 = [[AKAuthorizationSubPanePrivacyLink alloc] initWithPrivacyLinkType:v8];
  [location[0] addSubPane:v7];
  v3 = v7;
  +[AKAuthorizationPaneMetrics privacyLinkBottomSpacing];
  [(AKAuthorizationSubPane *)v3 setCustomSpacingAfter:?];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)_addContinueButtonToContext:(id)context title:(id)title
{
  v39[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v35 = 0;
  objc_storeStrong(&v35, title);
  v4 = [AKAuthorizationContinueButton alloc];
  v34 = [(AKAuthorizationContinueButton *)v4 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v34 setButtonText:v35];
  [v34 addTarget:selfCopy action:sel__continueButtonSelected_];
  stackView = [location[0] stackView];
  +[AKAuthorizationPaneMetrics continueButtonTopSpacing];
  v21 = v5;
  stackView2 = [location[0] stackView];
  arrangedSubviews = [stackView2 arrangedSubviews];
  lastObject = [arrangedSubviews lastObject];
  [stackView setCustomSpacing:v21 afterView:?];
  MEMORY[0x277D82BD8](lastObject);
  MEMORY[0x277D82BD8](arrangedSubviews);
  MEMORY[0x277D82BD8](stackView2);
  *&v6 = MEMORY[0x277D82BD8](stackView).n128_u64[0];
  stackView3 = [location[0] stackView];
  [stackView3 addArrangedSubview:v34];
  *&v7 = MEMORY[0x277D82BD8](stackView3).n128_u64[0];
  stackView4 = [location[0] stackView];
  +[AKAuthorizationPaneMetrics continueButtonBottomSpacing];
  [stackView4 setCustomSpacing:v34 afterView:?];
  *&v8 = MEMORY[0x277D82BD8](stackView4).n128_u64[0];
  mutableConstraints = [location[0] mutableConstraints];
  heightAnchor = [v34 heightAnchor];
  +[AKAuthorizationPaneMetrics continueButtonHeight];
  v29 = [heightAnchor constraintEqualToConstant:?];
  v39[0] = v29;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
  [mutableConstraints addObjectsFromArray:?];
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](heightAnchor);
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled];
  *&v9 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  if (isAuthKitSolariumFeatureEnabled)
  {
    mutableConstraints2 = [location[0] mutableConstraints];
    leadingAnchor = [v34 leadingAnchor];
    stackView5 = [location[0] stackView];
    leadingAnchor2 = [stackView5 leadingAnchor];
    v15 = [leadingAnchor constraintEqualToAnchor:38.0 constant:?];
    v38[0] = v15;
    trailingAnchor = [v34 trailingAnchor];
    stackView6 = [location[0] stackView];
    trailingAnchor2 = [stackView6 trailingAnchor];
    v11 = [trailingAnchor constraintEqualToAnchor:-38.0 constant:?];
    v38[1] = v11;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
    [mutableConstraints2 addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](trailingAnchor2);
    MEMORY[0x277D82BD8](stackView6);
    MEMORY[0x277D82BD8](trailingAnchor);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](leadingAnchor2);
    MEMORY[0x277D82BD8](stackView5);
    MEMORY[0x277D82BD8](leadingAnchor);
    MEMORY[0x277D82BD8](mutableConstraints2);
  }

  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_continueButtonSelected:(id)selected
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, selected);
  navigationController = [(AKAuthorizationFirstTimePaneViewController *)selfCopy navigationController];
  topViewController = [navigationController topViewController];
  v6 = selfCopy;
  MEMORY[0x277D82BD8](topViewController);
  *&v3 = MEMORY[0x277D82BD8](navigationController).n128_u64[0];
  if (topViewController == v6)
  {
    paneDelegate = [(AKAuthorizationPaneViewController *)selfCopy paneDelegate];
    [(AKAuthorizationPaneDelegate *)paneDelegate performAppleIDAuthorizationForPaneViewController:selfCopy];
    MEMORY[0x277D82BD8](paneDelegate);
  }

  objc_storeStrong(location, 0);
}

- (void)_addAdditionalCTAToContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  authorizationViewController = [(AKAuthorizationFirstTimePaneViewController *)selfCopy authorizationViewController];
  presentationContext = [(AKAuthorizationViewController *)authorizationViewController presentationContext];
  credentialRequestContext = [(AKAuthorizationPresentationContext *)presentationContext credentialRequestContext];
  _shouldShowAdditionalCTA = [credentialRequestContext _shouldShowAdditionalCTA];
  MEMORY[0x277D82BD8](credentialRequestContext);
  MEMORY[0x277D82BD8](presentationContext);
  MEMORY[0x277D82BD8](authorizationViewController);
  if (_shouldShowAdditionalCTA)
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v6 localizedStringForKey:@"ADDITIONAL_CTA" value:&stru_28358EF68 table:@"Localizable"];
    MEMORY[0x277D82BD8](v6);
    v18 = [AKTextualLinkButton buttonWithText:v19 fontSize:selfCopy target:sel__performAdditionalCTA_ action:16.0];
    stackView = [location[0] stackView];
    [stackView addArrangedSubview:v18];
    *&v3 = MEMORY[0x277D82BD8](stackView).n128_u64[0];
    stackView2 = [location[0] stackView];
    +[AKAuthorizationPaneMetrics useOtherAppleIDTopSpacing];
    v8 = v4;
    stackView3 = [location[0] stackView];
    arrangedSubviews = [stackView3 arrangedSubviews];
    lastObject = [arrangedSubviews lastObject];
    [stackView2 setCustomSpacing:v8 afterView:?];
    MEMORY[0x277D82BD8](lastObject);
    MEMORY[0x277D82BD8](arrangedSubviews);
    MEMORY[0x277D82BD8](stackView3);
    *&v5 = MEMORY[0x277D82BD8](stackView2).n128_u64[0];
    stackView4 = [location[0] stackView];
    +[AKAuthorizationPaneMetrics useOtherAppleIDBottomSpacing];
    [stackView4 setCustomSpacing:v18 afterView:?];
    MEMORY[0x277D82BD8](stackView4);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)_performAdditionalCTA:(id)a
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a);
  v12 = _AKLogSiwa();
  v11 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    log = v12;
    type = v11;
    __os_log_helper_16_0_0(v10);
    _os_log_impl(&dword_222379000, log, type, "Perform Additional CTA.", v10, 2u);
  }

  objc_storeStrong(&v12, 0);
  v9 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7124];
  v8 = MEMORY[0x277D82BE0](selfCopy);
  authorizationViewController = [v8 authorizationViewController];
  delegate = [authorizationViewController delegate];
  authorizationViewController2 = [v8 authorizationViewController];
  [delegate authorizationViewController:? didCompleteWithAuthorization:? error:?];
  MEMORY[0x277D82BD8](authorizationViewController2);
  MEMORY[0x277D82BD8](delegate);
  MEMORY[0x277D82BD8](authorizationViewController);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (AKAuthorizationViewController)authorizationViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_authorizationViewController);

  return WeakRetained;
}

@end