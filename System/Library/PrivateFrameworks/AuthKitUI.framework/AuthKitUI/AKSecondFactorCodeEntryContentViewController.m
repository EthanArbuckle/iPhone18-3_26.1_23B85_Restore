@interface AKSecondFactorCodeEntryContentViewController
- (NSString)reason;
- (void)_configureCodeGenView;
- (void)_configureTitleHeaderView;
- (void)_updateFontContstraints:(id)a3;
- (void)clearSecondFactorEntry;
- (void)dealloc;
- (void)jiggleAView;
- (void)loadView;
- (void)setPasscodeFieldDisabled:(BOOL)a3;
- (void)setReason:(id)a3;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation AKSecondFactorCodeEntryContentViewController

- (void)dealloc
{
  v6 = self;
  v5 = a2;
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:v6 name:*MEMORY[0x277D76810] object:0];
  *&v2 = MEMORY[0x277D82BD8](v3).n128_u64[0];
  v4.receiver = v6;
  v4.super_class = AKSecondFactorCodeEntryContentViewController;
  [(AKSecondFactorCodeEntryContentViewController *)&v4 dealloc];
}

- (void)_configureTitleHeaderView
{
  v30 = self;
  v29 = a2;
  v2 = [[AKBasicLoginContentViewController alloc] initWithNibName:0 bundle:?];
  titleHeaderViewController = v30->_titleHeaderViewController;
  v30->_titleHeaderViewController = v2;
  if ([(AKSecondFactorCodeEntryContentViewController *)v30 piggybackingForTrustedDevice])
  {
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v17 localizedStringForKey:@"VERIFICATION_HEADER_REPAIR" value:&stru_28358EF68 table:@"Localizable"];
    v15 = [(AKBasicLoginContentViewController *)v30->_titleHeaderViewController contentContainerView];
    [(AKBasicLoginContentViewControllerContainerView *)v15 setTitleText:v16];
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    v18 = [(AKSecondFactorCodeEntryContentViewController *)v30 authenticationContext];
    v19 = [(AKAppleIDAuthenticationContext *)v18 _message];
    v27 = 0;
    v25 = 0;
    if (v19)
    {
      v14 = v19;
    }

    else
    {
      v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v27 = 1;
      v26 = [v28 localizedStringForKey:@"ENTER_VERIFICATION_CODE_REPAIR" value:&stru_28358EF68 table:@"Localizable"];
      v25 = 1;
      v14 = v26;
    }

    v13 = [(AKBasicLoginContentViewController *)v30->_titleHeaderViewController contentContainerView];
    [(AKBasicLoginContentViewControllerContainerView *)v13 setMessageText:v14];
    MEMORY[0x277D82BD8](v13);
    if (v25)
    {
      MEMORY[0x277D82BD8](v26);
    }

    if (v27)
    {
      MEMORY[0x277D82BD8](v28);
    }

    MEMORY[0x277D82BD8](v19);
    v4 = MEMORY[0x277D82BD8](v18).n128_u64[0];
  }

  else
  {
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v10 localizedStringForKey:@"VERIFICATION_HEADER_REBRAND" value:&stru_28358EF68 table:@"Localizable"];
    v8 = [(AKBasicLoginContentViewController *)v30->_titleHeaderViewController contentContainerView];
    [(AKBasicLoginContentViewControllerContainerView *)v8 setTitleText:v9];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    v11 = [(AKSecondFactorCodeEntryContentViewController *)v30 authenticationContext];
    v12 = [(AKAppleIDAuthenticationContext *)v11 _message];
    v23 = 0;
    v21 = 0;
    if (v12)
    {
      v7 = v12;
    }

    else
    {
      v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v23 = 1;
      v22 = [v24 localizedStringForKey:@"ENTER_VERIFICATION_CODE" value:&stru_28358EF68 table:@"Localizable"];
      v21 = 1;
      v7 = v22;
    }

    v6 = [(AKBasicLoginContentViewController *)v30->_titleHeaderViewController contentContainerView];
    [(AKBasicLoginContentViewControllerContainerView *)v6 setMessageText:v7];
    MEMORY[0x277D82BD8](v6);
    if (v21)
    {
      MEMORY[0x277D82BD8](v22);
    }

    if (v23)
    {
      MEMORY[0x277D82BD8](v24);
    }

    MEMORY[0x277D82BD8](v12);
    v4 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  }

  [(AKSecondFactorCodeEntryContentViewController *)v30 addChildViewController:v30->_titleHeaderViewController, *&v4];
  v20 = [(AKBasicLoginContentViewController *)v30->_titleHeaderViewController view];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [(AKSecondFactorCodeEntryContentViewController *)v30 view];
  [v5 addSubview:v20];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v20, 0);
}

- (void)_configureCodeGenView
{
  v2 = [AKCodeEntryView alloc];
  v3 = [(AKCodeEntryView *)v2 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  codeGeneratorView = self->_codeGeneratorView;
  self->_codeGeneratorView = v3;
  v5 = [(AKSecondFactorCodeEntryContentViewController *)self view];
  [v5 addSubview:self->_codeGeneratorView];
  MEMORY[0x277D82BD8](v5);
}

- (void)updateViewConstraints
{
  v68[1] = *MEMORY[0x277D85DE8];
  v66 = self;
  v65 = a2;
  v64.receiver = self;
  v64.super_class = AKSecondFactorCodeEntryContentViewController;
  [(AKSecondFactorCodeEntryContentViewController *)&v64 updateViewConstraints];
  if (v66->_activeConstraints)
  {
    [MEMORY[0x277CCAAD0] deactivateConstraints:v66->_activeConstraints];
  }

  v63 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v45 = MEMORY[0x277CCAAD0];
  v48 = [(AKBasicLoginContentViewController *)v66->_titleHeaderViewController view];
  v47 = [(AKSecondFactorCodeEntryContentViewController *)v66 view];
  v46 = [v45 constraintWithItem:v48 attribute:3 relatedBy:0 toItem:1.0 attribute:0.0 multiplier:? constant:?];
  [v63 addObject:?];
  MEMORY[0x277D82BD8](v46);
  MEMORY[0x277D82BD8](v47);
  v49 = [MEMORY[0x277CF0228] sharedManager];
  v50 = [v49 isAuthKitSolariumFeatureEnabled];
  *&v2 = MEMORY[0x277D82BD8](v49).n128_u64[0];
  if (v50)
  {
    v37 = MEMORY[0x277CCAAD0];
    v40 = [(AKBasicLoginContentViewController *)v66->_titleHeaderViewController view];
    v39 = [(AKSecondFactorCodeEntryContentViewController *)v66 view];
    v38 = [v37 constraintWithItem:v40 attribute:5 relatedBy:? toItem:? attribute:? multiplier:? constant:?];
    [v63 addObject:?];
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v39);
    *&v3 = MEMORY[0x277D82BD8](v40).n128_u64[0];
    v42 = MEMORY[0x277CCAAD0];
    codeGeneratorView = v66->_codeGeneratorView;
    v44 = [(AKSecondFactorCodeEntryContentViewController *)v66 view];
    v43 = [v42 constraintWithItem:codeGeneratorView attribute:5 relatedBy:0 toItem:1.0 attribute:16.0 multiplier:? constant:?];
    [v63 addObject:?];
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](v44);
  }

  else
  {
    v29 = MEMORY[0x277CCAAD0];
    v32 = [(AKBasicLoginContentViewController *)v66->_titleHeaderViewController view];
    v31 = [(AKSecondFactorCodeEntryContentViewController *)v66 view];
    v30 = [v29 constraintWithItem:v32 attribute:9 relatedBy:? toItem:? attribute:? multiplier:? constant:?];
    [v63 addObject:?];
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    *&v4 = MEMORY[0x277D82BD8](v32).n128_u64[0];
    v34 = MEMORY[0x277CCAAD0];
    v33 = v66->_codeGeneratorView;
    v36 = [(AKSecondFactorCodeEntryContentViewController *)v66 view];
    v35 = [v34 constraintWithItem:v33 attribute:9 relatedBy:0 toItem:1.0 attribute:0.0 multiplier:? constant:?];
    [v63 addObject:?];
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v36);
  }

  v62 = objc_alloc_init(MEMORY[0x277D74260]);
  [v62 setWantsBaselineOffset:1];
  v61 = +[AKCodeEntryView generatorFieldFont];
  v20 = [(AKBasicLoginContentViewController *)v66->_titleHeaderViewController contentContainerView];
  v19 = [(AKBasicLoginContentViewControllerContainerView *)v20 messageText];
  v59 = 0x7FEFFFFFFFFFFFFFLL;
  v60 = 0x7FEFFFFFFFFFFFFFLL;
  v67 = *MEMORY[0x277D740A8];
  v68[0] = v61;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:&v67 count:1];
  [NSString boundingRectWithSize:v19 options:"boundingRectWithSize:options:attributes:context:" attributes:1.79769313e308 context:1.79769313e308];
  v55 = v5;
  v56 = v6;
  v57 = v7;
  v58 = v8;
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  *&v9 = MEMORY[0x277D82BD8](v20).n128_u64[0];
  [v62 baselineOffset];
  v54 = v10;
  v53 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76918]];
  v21 = MEMORY[0x277CCAAD0];
  v22 = v66->_codeGeneratorView;
  v23 = [(AKBasicLoginContentViewController *)v66->_titleHeaderViewController view];
  [v53 scaledValueForValue:50.0];
  CGCeiling(v11 - v54);
  v52 = [v21 constraintWithItem:v22 attribute:3 relatedBy:0 toItem:v23 attribute:11 multiplier:? constant:?];
  *&v12 = MEMORY[0x277D82BD8](v23).n128_u64[0];
  [v63 addObject:{v52, v12}];
  [v61 descender];
  v51 = v13;
  v26 = v63;
  v24 = MEMORY[0x277CCAAD0];
  v25 = v66->_codeGeneratorView;
  v28 = [(AKSecondFactorCodeEntryContentViewController *)v66 view];
  [v53 scaledValueForValue:-32.0];
  v27 = [v24 constraintWithItem:v25 attribute:4 relatedBy:0 toItem:v28 attribute:1.0 multiplier:CGCeiling(v14 - v51) constant:?];
  [v26 addObject:?];
  MEMORY[0x277D82BD8](v27);
  *&v15 = MEMORY[0x277D82BD8](v28).n128_u64[0];
  [MEMORY[0x277CCAAD0] activateConstraints:{v63, v15}];
  v16 = [v63 copy];
  activeConstraints = v66->_activeConstraints;
  v66->_activeConstraints = v16;
  MEMORY[0x277D82BD8](activeConstraints);
  objc_storeStrong(&v52, 0);
  objc_storeStrong(&v53, 0);
  objc_storeStrong(&v61, 0);
  objc_storeStrong(&v62, 0);
  objc_storeStrong(&v63, 0);
  *MEMORY[0x277D85DE8];
}

- (void)loadView
{
  v12 = self;
  v11 = a2;
  v10.receiver = self;
  v10.super_class = AKSecondFactorCodeEntryContentViewController;
  [(AKSecondFactorCodeEntryContentViewController *)&v10 loadView];
  v5 = [(AKSecondFactorCodeEntryContentViewController *)v12 extensionContext];
  v4 = [v5 inputItems];
  v9 = [v4 firstObject];
  MEMORY[0x277D82BD8](v4);
  *&v2 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  v6 = [v9 ak_context];
  [(AKSecondFactorCodeEntryContentViewController *)v12 setAuthenticationContext:?];
  *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  v8 = [(AKSecondFactorCodeEntryContentViewController *)v12 view];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(AKSecondFactorCodeEntryContentViewController *)v12 _configureTitleHeaderView];
  [(AKSecondFactorCodeEntryContentViewController *)v12 _configureCodeGenView];
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 addObserver:v12 selector:sel__updateFontContstraints_ name:*MEMORY[0x277D76810] object:?];
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
}

- (void)viewWillLayoutSubviews
{
  v7 = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = AKSecondFactorCodeEntryContentViewController;
  [(AKSecondFactorCodeEntryContentViewController *)&v5 viewWillLayoutSubviews];
  v3 = [(AKSecondFactorCodeEntryContentViewController *)v7 view];
  [v3 systemLayoutSizeFittingSize:{*MEMORY[0x277D76C80], *(MEMORY[0x277D76C80] + 8)}];
  v4 = v2;
  MEMORY[0x277D82BD8](v3);
  [(AKSecondFactorCodeEntryContentViewController *)v7 setPreferredContentSize:270.0, v4];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = AKSecondFactorCodeEntryContentViewController;
  [(AKSecondFactorCodeEntryContentViewController *)&v3 viewDidAppear:a3];
  [(AKCodeEntryView *)v6->_codeGeneratorView becomeFirstResponder];
}

- (void)_updateFontContstraints:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(AKSecondFactorCodeEntryContentViewController *)v5 view];
  [v3 setNeedsUpdateConstraints];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (void)setReason:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = location[0];
  v5 = [(AKBasicLoginContentViewController *)v8->_titleHeaderViewController contentContainerView];
  [(AKBasicLoginContentViewControllerContainerView *)v5 setMessageText:v4];
  *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  v6 = [(AKSecondFactorCodeEntryContentViewController *)v8 view];
  [v6 setNeedsUpdateConstraints];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(location, 0);
}

- (NSString)reason
{
  v3 = [(AKBasicLoginContentViewController *)self->_titleHeaderViewController contentContainerView];
  v4 = [(AKBasicLoginContentViewControllerContainerView *)v3 messageText];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (void)jiggleAView
{
  v19 = self;
  v18[1] = a2;
  v18[0] = [(AKCodeEntryView *)self->_codeGeneratorView layer];
  v17 = [MEMORY[0x277CD9FA0] animation];
  [v17 setMass:1.20000005];
  [v17 setStiffness:1200.0];
  [v17 setDamping:12.0];
  [v17 setDuration:1.39999998];
  [v17 setVelocity:0.0];
  [v17 setFillMode:*MEMORY[0x277CDA228]];
  [v17 setDelegate:v19];
  v9 = v17;
  LODWORD(v2) = 30.0;
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
  [v9 setFromValue:?];
  MEMORY[0x277D82BD8](v10);
  v11 = v17;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
  [v11 setToValue:?];
  *&v3 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  v13 = v17;
  v14 = [MEMORY[0x277CDA008] functionWithName:{*MEMORY[0x277CDA9C8], v3}];
  [v13 setValueFunction:?];
  v4 = MEMORY[0x277D82BD8](v14);
  v15 = v17;
  v4.n128_u32[0] = 1028389654;
  LODWORD(v5) = 990057071;
  LODWORD(v6) = 1059712716;
  LODWORD(v7) = 1.0;
  v16 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v4.n128_f64[0] :v5 :v6 :v7];
  [v15 setTimingFunction:?];
  *&v8 = MEMORY[0x277D82BD8](v16).n128_u64[0];
  [v17 setKeyPath:{@"transform", v8}];
  [v18[0] addAnimation:v17 forKey:@"shake"];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(v18, 0);
}

- (void)clearSecondFactorEntry
{
  v7 = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v5 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v5;
    __os_log_helper_16_0_0(v4);
    _os_log_impl(&dword_222379000, log, type, "Clearing Second Factor Entry Field", v4, 2u);
  }

  objc_storeStrong(location, 0);
  [(AKCodeEntryView *)v7->_codeGeneratorView setStringValue:&stru_28358EF68];
}

- (void)setPasscodeFieldDisabled:(BOOL)a3
{
  [(AKCodeEntryView *)self->_codeGeneratorView setPasscodeFieldDisabled:a3];
  if (a3)
  {
    [(AKCodeEntryView *)self->_codeGeneratorView resignFirstResponder];
  }

  else
  {
    [(AKCodeEntryView *)self->_codeGeneratorView becomeFirstResponder];
  }
}

@end