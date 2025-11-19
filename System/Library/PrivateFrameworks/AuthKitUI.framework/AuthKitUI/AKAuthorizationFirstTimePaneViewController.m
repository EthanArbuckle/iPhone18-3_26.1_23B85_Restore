@interface AKAuthorizationFirstTimePaneViewController
- (AKAuthorizationViewController)authorizationViewController;
- (void)_addAdditionalCTAToContext:(id)a3;
- (void)_addContinueButtonToContext:(id)a3 title:(id)a4;
- (void)_addIconToContext:(id)a3;
- (void)_addPrivacyLinkToContext:(id)a3;
- (void)_addTitleToContext:(id)a3;
- (void)_continueButtonSelected:(id)a3;
- (void)_performAdditionalCTA:(id)a3;
- (void)viewDidLoad;
@end

@implementation AKAuthorizationFirstTimePaneViewController

- (void)viewDidLoad
{
  v90 = self;
  v89 = a2;
  v88.receiver = self;
  v88.super_class = AKAuthorizationFirstTimePaneViewController;
  [(AKAuthorizationPaneViewController *)&v88 viewDidLoad];
  v76 = [MEMORY[0x277CF0228] sharedManager];
  v86 = 0;
  v84 = 0;
  if ([v76 isAuthKitSolariumFeatureEnabled])
  {
    v87 = [MEMORY[0x277D75348] systemBackgroundColor];
    v86 = 1;
    v75 = v87;
  }

  else
  {
    v85 = +[AKAuthorizationAppearance paneBackgroundColor];
    v84 = 1;
    v75 = v85;
  }

  v74 = [(AKAuthorizationFirstTimePaneViewController *)v90 view];
  [v74 setBackgroundColor:v75];
  MEMORY[0x277D82BD8](v74);
  if (v84)
  {
    MEMORY[0x277D82BD8](v85);
  }

  if (v86)
  {
    MEMORY[0x277D82BD8](v87);
  }

  *&v2 = MEMORY[0x277D82BD8](v76).n128_u64[0];
  v70 = v90;
  v71 = [(AKAuthorizationPaneViewController *)v90 tableView];
  [(UITableView *)v71 setDelegate:v70];
  *&v3 = MEMORY[0x277D82BD8](v71).n128_u64[0];
  v83 = [(AKAuthorizationPaneViewController *)v90 mutableConstraints];
  v82 = [(AKAuthorizationPaneViewController *)v90 headerPaneContext];
  v72 = [MEMORY[0x277CF0228] sharedManager];
  v73 = [v72 isAuthKitSolariumFeatureEnabled];
  *&v4 = MEMORY[0x277D82BD8](v72).n128_u64[0];
  if (!v73)
  {
    [(AKAuthorizationFirstTimePaneViewController *)v90 _addIconToContext:v82, v4];
  }

  [(AKAuthorizationFirstTimePaneViewController *)v90 _addTitleToContext:v82, v4];
  v81 = 0;
  v80 = 0;
  v68 = [(AKAuthorizationFirstTimePaneViewController *)v90 authorizationViewController];
  v69 = [(AKAuthorizationViewController *)v68 _isManagedAppleID];
  MEMORY[0x277D82BD8](v68);
  v79 = v69;
  if (v69)
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

  v42 = [MEMORY[0x277CF0228] sharedManager];
  v43 = [v42 isAuthKitSolariumFeatureEnabled];
  *&v14 = MEMORY[0x277D82BD8](v42).n128_u64[0];
  if (v43)
  {
    v78 = MEMORY[0x277D82BE0](v81);
    objc_storeStrong(&v81, v80);
    objc_storeStrong(&v80, v78);
    objc_storeStrong(&v78, 0);
  }

  v38 = [(AKAuthorizationPaneViewController *)v90 headerPaneContext];
  [(AKAuthorizationPaneContext *)v38 addSubPane:v81];
  *&v15 = MEMORY[0x277D82BD8](v38).n128_u64[0];
  v39 = [(AKAuthorizationPaneViewController *)v90 headerPaneContext];
  [(AKAuthorizationPaneContext *)v39 addSubPane:v80];
  *&v16 = MEMORY[0x277D82BD8](v39).n128_u64[0];
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
    v37 = [(AKAuthorizationPaneViewController *)v90 headerPaneContext];
    [(AKAuthorizationPaneContext *)v37 addSubPane:v77];
    MEMORY[0x277D82BD8](v37);
    objc_storeStrong(&v77, 0);
  }

  v22 = v90;
  v23 = [(AKAuthorizationPaneViewController *)v90 footerPaneContext];
  [(AKAuthorizationFirstTimePaneViewController *)v22 _addPrivacyLinkToContext:?];
  *&v18 = MEMORY[0x277D82BD8](v23).n128_u64[0];
  v24 = v90;
  v27 = [(AKAuthorizationPaneViewController *)v90 footerPaneContext];
  v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v25 = [v26 localizedStringForKey:@"AUTHORIZE_FIRST_TIME_BUTTON_TITLE" value:&stru_28358EF68 table:@"Localizable"];
  [(AKAuthorizationFirstTimePaneViewController *)v24 _addContinueButtonToContext:v27 title:?];
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  *&v19 = MEMORY[0x277D82BD8](v27).n128_u64[0];
  v28 = v90;
  v29 = [(AKAuthorizationPaneViewController *)v90 footerPaneContext];
  [(AKAuthorizationFirstTimePaneViewController *)v28 _addAdditionalCTAToContext:?];
  *&v20 = MEMORY[0x277D82BD8](v29).n128_u64[0];
  v30 = [(AKAuthorizationPaneViewController *)v90 footerPaneContext];
  [(AKAuthorizationPaneContext *)v30 addEmptyViewWithSpacing:0.0];
  *&v21 = MEMORY[0x277D82BD8](v30).n128_u64[0];
  [MEMORY[0x277CCAAD0] activateConstraints:{v83, v21}];
  objc_storeStrong(&v80, 0);
  objc_storeStrong(&v81, 0);
  objc_storeStrong(&v82, 0);
  objc_storeStrong(&v83, 0);
}

- (void)_addIconToContext:(id)a3
{
  v30[2] = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v27 = [MEMORY[0x277D755B8] imageNamed:@"SignInWithAppleLogo" inBundle:v28];
  v26 = [[AKAuthorizationSubPaneImage alloc] initWithImage:v27];
  v21 = [(AKAuthorizationSubPaneImage *)v26 image];
  [(UIImage *)v21 size];
  v24 = 0;
  v22 = 0;
  if (v3 == 0.0)
  {
    v20 = 1.0;
  }

  else
  {
    v25 = [(AKAuthorizationSubPaneImage *)v26 image];
    v24 = 1;
    [(UIImage *)v25 size];
    v19 = v4;
    v23 = [(AKAuthorizationSubPaneImage *)v26 image];
    v22 = 1;
    [(UIImage *)v23 size];
    v20 = v19 / v5;
  }

  if (v22)
  {
    MEMORY[0x277D82BD8](v23);
  }

  if (v24)
  {
    MEMORY[0x277D82BD8](v25);
  }

  MEMORY[0x277D82BD8](v21);
  v8 = v26;
  v17 = [(AKAuthorizationSubPaneImage *)v26 imageView];
  v16 = [(UIImageView *)v17 heightAnchor];
  +[AKAuthorizationPaneMetrics iconSize];
  v15 = [v16 constraintEqualToConstant:v6];
  v30[0] = v15;
  v14 = [(AKAuthorizationSubPaneImage *)v26 imageView];
  v13 = [(UIImageView *)v14 widthAnchor];
  v12 = [(AKAuthorizationSubPaneImage *)v26 imageView];
  v11 = [(UIImageView *)v12 heightAnchor];
  v10 = [v13 constraintEqualToAnchor:v20 multiplier:?];
  v30[1] = v10;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
  [(AKAuthorizationSubPaneImage *)v8 setImageViewConstraints:?];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  *&v7 = MEMORY[0x277D82BD8](v17).n128_u64[0];
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

- (void)_addTitleToContext:(id)a3
{
  v33 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = [(AKAuthorizationFirstTimePaneViewController *)v33 authorizationViewController];
  v15 = [(AKAuthorizationViewController *)v14 _isManagedAppleID];
  MEMORY[0x277D82BD8](v14);
  v31 = v15;
  v16 = [AKAuthorizationSubPaneInfoLabel alloc];
  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v18 localizedStringForKey:@"AUTHORIZE_FIRST_TIME_TITLE" value:&stru_28358EF68 table:@"Localizable"];
  v30 = [(AKAuthorizationSubPaneInfoLabel *)v16 initWithString:?];
  MEMORY[0x277D82BD8](v17);
  [v30 setInfoLabelType:{1, MEMORY[0x277D82BD8](v18).n128_f64[0]}];
  [location[0] addSubPane:v30];
  if (v15)
  {
    +[AKAuthorizationPaneMetrics titleToSmallTitleVerticalSpacing];
    [v30 setCustomSpacingAfter:?];
    v13 = [MEMORY[0x277CF0228] sharedManager];
    v27 = 0;
    v25 = 0;
    v23 = 0;
    v21 = 0;
    if ([v13 isAuthKitSolariumFeatureEnabled])
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

    MEMORY[0x277D82BD8](v13);
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
    v10 = [MEMORY[0x277CF0228] sharedManager];
    v11 = [v10 isAuthKitSolariumFeatureEnabled];
    *&v4 = MEMORY[0x277D82BD8](v10).n128_u64[0];
    if (v11)
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

- (void)_addPrivacyLinkToContext:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = location[0];
  +[AKAuthorizationPaneMetrics privacyLinkTopSpacing];
  [v4 addEmptyViewWithSpacing:?];
  v5 = [(AKAuthorizationFirstTimePaneViewController *)v10 authorizationViewController];
  v6 = [(AKAuthorizationViewController *)v5 _isManagedAppleID];
  MEMORY[0x277D82BD8](v5);
  v8 = v6;
  v7 = [[AKAuthorizationSubPanePrivacyLink alloc] initWithPrivacyLinkType:v8];
  [location[0] addSubPane:v7];
  v3 = v7;
  +[AKAuthorizationPaneMetrics privacyLinkBottomSpacing];
  [(AKAuthorizationSubPane *)v3 setCustomSpacingAfter:?];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)_addContinueButtonToContext:(id)a3 title:(id)a4
{
  v39[1] = *MEMORY[0x277D85DE8];
  v37 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v35 = 0;
  objc_storeStrong(&v35, a4);
  v4 = [AKAuthorizationContinueButton alloc];
  v34 = [(AKAuthorizationContinueButton *)v4 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v34 setButtonText:v35];
  [v34 addTarget:v37 action:sel__continueButtonSelected_];
  v25 = [location[0] stackView];
  +[AKAuthorizationPaneMetrics continueButtonTopSpacing];
  v21 = v5;
  v24 = [location[0] stackView];
  v23 = [v24 arrangedSubviews];
  v22 = [v23 lastObject];
  [v25 setCustomSpacing:v21 afterView:?];
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  *&v6 = MEMORY[0x277D82BD8](v25).n128_u64[0];
  v26 = [location[0] stackView];
  [v26 addArrangedSubview:v34];
  *&v7 = MEMORY[0x277D82BD8](v26).n128_u64[0];
  v27 = [location[0] stackView];
  +[AKAuthorizationPaneMetrics continueButtonBottomSpacing];
  [v27 setCustomSpacing:v34 afterView:?];
  *&v8 = MEMORY[0x277D82BD8](v27).n128_u64[0];
  v31 = [location[0] mutableConstraints];
  v30 = [v34 heightAnchor];
  +[AKAuthorizationPaneMetrics continueButtonHeight];
  v29 = [v30 constraintEqualToConstant:?];
  v39[0] = v29;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
  [v31 addObjectsFromArray:?];
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  v32 = [MEMORY[0x277CF0228] sharedManager];
  v33 = [v32 isAuthKitSolariumFeatureEnabled];
  *&v9 = MEMORY[0x277D82BD8](v32).n128_u64[0];
  if (v33)
  {
    v19 = [location[0] mutableConstraints];
    v18 = [v34 leadingAnchor];
    v17 = [location[0] stackView];
    v16 = [v17 leadingAnchor];
    v15 = [v18 constraintEqualToAnchor:38.0 constant:?];
    v38[0] = v15;
    v14 = [v34 trailingAnchor];
    v13 = [location[0] stackView];
    v12 = [v13 trailingAnchor];
    v11 = [v14 constraintEqualToAnchor:-38.0 constant:?];
    v38[1] = v11;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
    [v19 addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
  }

  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_continueButtonSelected:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(AKAuthorizationFirstTimePaneViewController *)v9 navigationController];
  v7 = [v5 topViewController];
  v6 = v9;
  MEMORY[0x277D82BD8](v7);
  *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  if (v7 == v6)
  {
    v4 = [(AKAuthorizationPaneViewController *)v9 paneDelegate];
    [(AKAuthorizationPaneDelegate *)v4 performAppleIDAuthorizationForPaneViewController:v9];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(location, 0);
}

- (void)_addAdditionalCTAToContext:(id)a3
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = [(AKAuthorizationFirstTimePaneViewController *)v22 authorizationViewController];
  v15 = [(AKAuthorizationViewController *)v16 presentationContext];
  v14 = [(AKAuthorizationPresentationContext *)v15 credentialRequestContext];
  v17 = [v14 _shouldShowAdditionalCTA];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  if (v17)
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v6 localizedStringForKey:@"ADDITIONAL_CTA" value:&stru_28358EF68 table:@"Localizable"];
    MEMORY[0x277D82BD8](v6);
    v18 = [AKTextualLinkButton buttonWithText:v19 fontSize:v22 target:sel__performAdditionalCTA_ action:16.0];
    v7 = [location[0] stackView];
    [v7 addArrangedSubview:v18];
    *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
    v12 = [location[0] stackView];
    +[AKAuthorizationPaneMetrics useOtherAppleIDTopSpacing];
    v8 = v4;
    v11 = [location[0] stackView];
    v10 = [v11 arrangedSubviews];
    v9 = [v10 lastObject];
    [v12 setCustomSpacing:v8 afterView:?];
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    *&v5 = MEMORY[0x277D82BD8](v12).n128_u64[0];
    v13 = [location[0] stackView];
    +[AKAuthorizationPaneMetrics useOtherAppleIDBottomSpacing];
    [v13 setCustomSpacing:v18 afterView:?];
    MEMORY[0x277D82BD8](v13);
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

- (void)_performAdditionalCTA:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  v8 = MEMORY[0x277D82BE0](v14);
  v5 = [v8 authorizationViewController];
  v4 = [v5 delegate];
  v3 = [v8 authorizationViewController];
  [v4 authorizationViewController:? didCompleteWithAuthorization:? error:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
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