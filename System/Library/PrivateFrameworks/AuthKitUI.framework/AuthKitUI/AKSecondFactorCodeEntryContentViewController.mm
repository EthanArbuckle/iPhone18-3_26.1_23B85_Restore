@interface AKSecondFactorCodeEntryContentViewController
- (NSString)reason;
- (void)_configureCodeGenView;
- (void)_configureTitleHeaderView;
- (void)_updateFontContstraints:(id)contstraints;
- (void)clearSecondFactorEntry;
- (void)dealloc;
- (void)jiggleAView;
- (void)loadView;
- (void)setPasscodeFieldDisabled:(BOOL)disabled;
- (void)setReason:(id)reason;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation AKSecondFactorCodeEntryContentViewController

- (void)dealloc
{
  selfCopy = self;
  v5 = a2;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:selfCopy name:*MEMORY[0x277D76810] object:0];
  *&v2 = MEMORY[0x277D82BD8](defaultCenter).n128_u64[0];
  v4.receiver = selfCopy;
  v4.super_class = AKSecondFactorCodeEntryContentViewController;
  [(AKSecondFactorCodeEntryContentViewController *)&v4 dealloc];
}

- (void)_configureTitleHeaderView
{
  selfCopy = self;
  v29 = a2;
  v2 = [[AKBasicLoginContentViewController alloc] initWithNibName:0 bundle:?];
  titleHeaderViewController = selfCopy->_titleHeaderViewController;
  selfCopy->_titleHeaderViewController = v2;
  if ([(AKSecondFactorCodeEntryContentViewController *)selfCopy piggybackingForTrustedDevice])
  {
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v17 localizedStringForKey:@"VERIFICATION_HEADER_REPAIR" value:&stru_28358EF68 table:@"Localizable"];
    contentContainerView = [(AKBasicLoginContentViewController *)selfCopy->_titleHeaderViewController contentContainerView];
    [(AKBasicLoginContentViewControllerContainerView *)contentContainerView setTitleText:v16];
    MEMORY[0x277D82BD8](contentContainerView);
    MEMORY[0x277D82BD8](v16);
    authenticationContext = [(AKSecondFactorCodeEntryContentViewController *)selfCopy authenticationContext];
    _message = [(AKAppleIDAuthenticationContext *)authenticationContext _message];
    v27 = 0;
    v25 = 0;
    if (_message)
    {
      v14 = _message;
    }

    else
    {
      v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v27 = 1;
      v26 = [v28 localizedStringForKey:@"ENTER_VERIFICATION_CODE_REPAIR" value:&stru_28358EF68 table:@"Localizable"];
      v25 = 1;
      v14 = v26;
    }

    contentContainerView2 = [(AKBasicLoginContentViewController *)selfCopy->_titleHeaderViewController contentContainerView];
    [(AKBasicLoginContentViewControllerContainerView *)contentContainerView2 setMessageText:v14];
    MEMORY[0x277D82BD8](contentContainerView2);
    if (v25)
    {
      MEMORY[0x277D82BD8](v26);
    }

    if (v27)
    {
      MEMORY[0x277D82BD8](v28);
    }

    MEMORY[0x277D82BD8](_message);
    v4 = MEMORY[0x277D82BD8](authenticationContext).n128_u64[0];
  }

  else
  {
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v10 localizedStringForKey:@"VERIFICATION_HEADER_REBRAND" value:&stru_28358EF68 table:@"Localizable"];
    contentContainerView3 = [(AKBasicLoginContentViewController *)selfCopy->_titleHeaderViewController contentContainerView];
    [(AKBasicLoginContentViewControllerContainerView *)contentContainerView3 setTitleText:v9];
    MEMORY[0x277D82BD8](contentContainerView3);
    MEMORY[0x277D82BD8](v9);
    authenticationContext2 = [(AKSecondFactorCodeEntryContentViewController *)selfCopy authenticationContext];
    _message2 = [(AKAppleIDAuthenticationContext *)authenticationContext2 _message];
    v23 = 0;
    v21 = 0;
    if (_message2)
    {
      v7 = _message2;
    }

    else
    {
      v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v23 = 1;
      v22 = [v24 localizedStringForKey:@"ENTER_VERIFICATION_CODE" value:&stru_28358EF68 table:@"Localizable"];
      v21 = 1;
      v7 = v22;
    }

    contentContainerView4 = [(AKBasicLoginContentViewController *)selfCopy->_titleHeaderViewController contentContainerView];
    [(AKBasicLoginContentViewControllerContainerView *)contentContainerView4 setMessageText:v7];
    MEMORY[0x277D82BD8](contentContainerView4);
    if (v21)
    {
      MEMORY[0x277D82BD8](v22);
    }

    if (v23)
    {
      MEMORY[0x277D82BD8](v24);
    }

    MEMORY[0x277D82BD8](_message2);
    v4 = MEMORY[0x277D82BD8](authenticationContext2).n128_u64[0];
  }

  [(AKSecondFactorCodeEntryContentViewController *)selfCopy addChildViewController:selfCopy->_titleHeaderViewController, *&v4];
  view = [(AKBasicLoginContentViewController *)selfCopy->_titleHeaderViewController view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(AKSecondFactorCodeEntryContentViewController *)selfCopy view];
  [view2 addSubview:view];
  MEMORY[0x277D82BD8](view2);
  objc_storeStrong(&view, 0);
}

- (void)_configureCodeGenView
{
  v2 = [AKCodeEntryView alloc];
  v3 = [(AKCodeEntryView *)v2 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  codeGeneratorView = self->_codeGeneratorView;
  self->_codeGeneratorView = v3;
  view = [(AKSecondFactorCodeEntryContentViewController *)self view];
  [view addSubview:self->_codeGeneratorView];
  MEMORY[0x277D82BD8](view);
}

- (void)updateViewConstraints
{
  v68[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v65 = a2;
  v64.receiver = self;
  v64.super_class = AKSecondFactorCodeEntryContentViewController;
  [(AKSecondFactorCodeEntryContentViewController *)&v64 updateViewConstraints];
  if (selfCopy->_activeConstraints)
  {
    [MEMORY[0x277CCAAD0] deactivateConstraints:selfCopy->_activeConstraints];
  }

  v63 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v45 = MEMORY[0x277CCAAD0];
  view = [(AKBasicLoginContentViewController *)selfCopy->_titleHeaderViewController view];
  view2 = [(AKSecondFactorCodeEntryContentViewController *)selfCopy view];
  v46 = [v45 constraintWithItem:view attribute:3 relatedBy:0 toItem:1.0 attribute:0.0 multiplier:? constant:?];
  [v63 addObject:?];
  MEMORY[0x277D82BD8](v46);
  MEMORY[0x277D82BD8](view2);
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled];
  *&v2 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  if (isAuthKitSolariumFeatureEnabled)
  {
    v37 = MEMORY[0x277CCAAD0];
    view3 = [(AKBasicLoginContentViewController *)selfCopy->_titleHeaderViewController view];
    view4 = [(AKSecondFactorCodeEntryContentViewController *)selfCopy view];
    v38 = [v37 constraintWithItem:view3 attribute:5 relatedBy:? toItem:? attribute:? multiplier:? constant:?];
    [v63 addObject:?];
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](view4);
    *&v3 = MEMORY[0x277D82BD8](view3).n128_u64[0];
    v42 = MEMORY[0x277CCAAD0];
    codeGeneratorView = selfCopy->_codeGeneratorView;
    view5 = [(AKSecondFactorCodeEntryContentViewController *)selfCopy view];
    v43 = [v42 constraintWithItem:codeGeneratorView attribute:5 relatedBy:0 toItem:1.0 attribute:16.0 multiplier:? constant:?];
    [v63 addObject:?];
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](view5);
  }

  else
  {
    v29 = MEMORY[0x277CCAAD0];
    view6 = [(AKBasicLoginContentViewController *)selfCopy->_titleHeaderViewController view];
    view7 = [(AKSecondFactorCodeEntryContentViewController *)selfCopy view];
    v30 = [v29 constraintWithItem:view6 attribute:9 relatedBy:? toItem:? attribute:? multiplier:? constant:?];
    [v63 addObject:?];
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](view7);
    *&v4 = MEMORY[0x277D82BD8](view6).n128_u64[0];
    v34 = MEMORY[0x277CCAAD0];
    v33 = selfCopy->_codeGeneratorView;
    view8 = [(AKSecondFactorCodeEntryContentViewController *)selfCopy view];
    v35 = [v34 constraintWithItem:v33 attribute:9 relatedBy:0 toItem:1.0 attribute:0.0 multiplier:? constant:?];
    [v63 addObject:?];
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](view8);
  }

  v62 = objc_alloc_init(MEMORY[0x277D74260]);
  [v62 setWantsBaselineOffset:1];
  v61 = +[AKCodeEntryView generatorFieldFont];
  contentContainerView = [(AKBasicLoginContentViewController *)selfCopy->_titleHeaderViewController contentContainerView];
  messageText = [(AKBasicLoginContentViewControllerContainerView *)contentContainerView messageText];
  v59 = 0x7FEFFFFFFFFFFFFFLL;
  v60 = 0x7FEFFFFFFFFFFFFFLL;
  v67 = *MEMORY[0x277D740A8];
  v68[0] = v61;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:&v67 count:1];
  [NSString boundingRectWithSize:messageText options:"boundingRectWithSize:options:attributes:context:" attributes:1.79769313e308 context:1.79769313e308];
  v55 = v5;
  v56 = v6;
  v57 = v7;
  v58 = v8;
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](messageText);
  *&v9 = MEMORY[0x277D82BD8](contentContainerView).n128_u64[0];
  [v62 baselineOffset];
  v54 = v10;
  v53 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76918]];
  v21 = MEMORY[0x277CCAAD0];
  v22 = selfCopy->_codeGeneratorView;
  view9 = [(AKBasicLoginContentViewController *)selfCopy->_titleHeaderViewController view];
  [v53 scaledValueForValue:50.0];
  CGCeiling(v11 - v54);
  v52 = [v21 constraintWithItem:v22 attribute:3 relatedBy:0 toItem:view9 attribute:11 multiplier:? constant:?];
  *&v12 = MEMORY[0x277D82BD8](view9).n128_u64[0];
  [v63 addObject:{v52, v12}];
  [v61 descender];
  v51 = v13;
  v26 = v63;
  v24 = MEMORY[0x277CCAAD0];
  v25 = selfCopy->_codeGeneratorView;
  view10 = [(AKSecondFactorCodeEntryContentViewController *)selfCopy view];
  [v53 scaledValueForValue:-32.0];
  v27 = [v24 constraintWithItem:v25 attribute:4 relatedBy:0 toItem:view10 attribute:1.0 multiplier:CGCeiling(v14 - v51) constant:?];
  [v26 addObject:?];
  MEMORY[0x277D82BD8](v27);
  *&v15 = MEMORY[0x277D82BD8](view10).n128_u64[0];
  [MEMORY[0x277CCAAD0] activateConstraints:{v63, v15}];
  v16 = [v63 copy];
  activeConstraints = selfCopy->_activeConstraints;
  selfCopy->_activeConstraints = v16;
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
  selfCopy = self;
  v11 = a2;
  v10.receiver = self;
  v10.super_class = AKSecondFactorCodeEntryContentViewController;
  [(AKSecondFactorCodeEntryContentViewController *)&v10 loadView];
  extensionContext = [(AKSecondFactorCodeEntryContentViewController *)selfCopy extensionContext];
  inputItems = [extensionContext inputItems];
  firstObject = [inputItems firstObject];
  MEMORY[0x277D82BD8](inputItems);
  *&v2 = MEMORY[0x277D82BD8](extensionContext).n128_u64[0];
  ak_context = [firstObject ak_context];
  [(AKSecondFactorCodeEntryContentViewController *)selfCopy setAuthenticationContext:?];
  *&v3 = MEMORY[0x277D82BD8](ak_context).n128_u64[0];
  view = [(AKSecondFactorCodeEntryContentViewController *)selfCopy view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  [(AKSecondFactorCodeEntryContentViewController *)selfCopy _configureTitleHeaderView];
  [(AKSecondFactorCodeEntryContentViewController *)selfCopy _configureCodeGenView];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:selfCopy selector:sel__updateFontContstraints_ name:*MEMORY[0x277D76810] object:?];
  MEMORY[0x277D82BD8](defaultCenter);
  objc_storeStrong(&view, 0);
  objc_storeStrong(&firstObject, 0);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = AKSecondFactorCodeEntryContentViewController;
  [(AKSecondFactorCodeEntryContentViewController *)&v5 viewWillLayoutSubviews];
  view = [(AKSecondFactorCodeEntryContentViewController *)selfCopy view];
  [view systemLayoutSizeFittingSize:{*MEMORY[0x277D76C80], *(MEMORY[0x277D76C80] + 8)}];
  v4 = v2;
  MEMORY[0x277D82BD8](view);
  [(AKSecondFactorCodeEntryContentViewController *)selfCopy setPreferredContentSize:270.0, v4];
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v5 = a2;
  appearCopy = appear;
  v3.receiver = self;
  v3.super_class = AKSecondFactorCodeEntryContentViewController;
  [(AKSecondFactorCodeEntryContentViewController *)&v3 viewDidAppear:appear];
  [(AKCodeEntryView *)selfCopy->_codeGeneratorView becomeFirstResponder];
}

- (void)_updateFontContstraints:(id)contstraints
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, contstraints);
  view = [(AKSecondFactorCodeEntryContentViewController *)selfCopy view];
  [view setNeedsUpdateConstraints];
  MEMORY[0x277D82BD8](view);
  objc_storeStrong(location, 0);
}

- (void)setReason:(id)reason
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, reason);
  v4 = location[0];
  contentContainerView = [(AKBasicLoginContentViewController *)selfCopy->_titleHeaderViewController contentContainerView];
  [(AKBasicLoginContentViewControllerContainerView *)contentContainerView setMessageText:v4];
  *&v3 = MEMORY[0x277D82BD8](contentContainerView).n128_u64[0];
  view = [(AKSecondFactorCodeEntryContentViewController *)selfCopy view];
  [view setNeedsUpdateConstraints];
  MEMORY[0x277D82BD8](view);
  objc_storeStrong(location, 0);
}

- (NSString)reason
{
  contentContainerView = [(AKBasicLoginContentViewController *)self->_titleHeaderViewController contentContainerView];
  messageText = [(AKBasicLoginContentViewControllerContainerView *)contentContainerView messageText];
  MEMORY[0x277D82BD8](contentContainerView);

  return messageText;
}

- (void)jiggleAView
{
  selfCopy = self;
  v18[1] = a2;
  v18[0] = [(AKCodeEntryView *)self->_codeGeneratorView layer];
  animation = [MEMORY[0x277CD9FA0] animation];
  [animation setMass:1.20000005];
  [animation setStiffness:1200.0];
  [animation setDamping:12.0];
  [animation setDuration:1.39999998];
  [animation setVelocity:0.0];
  [animation setFillMode:*MEMORY[0x277CDA228]];
  [animation setDelegate:selfCopy];
  v9 = animation;
  LODWORD(v2) = 30.0;
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
  [v9 setFromValue:?];
  MEMORY[0x277D82BD8](v10);
  v11 = animation;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
  [v11 setToValue:?];
  *&v3 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  v13 = animation;
  v14 = [MEMORY[0x277CDA008] functionWithName:{*MEMORY[0x277CDA9C8], v3}];
  [v13 setValueFunction:?];
  v4 = MEMORY[0x277D82BD8](v14);
  v15 = animation;
  v4.n128_u32[0] = 1028389654;
  LODWORD(v5) = 990057071;
  LODWORD(v6) = 1059712716;
  LODWORD(v7) = 1.0;
  v16 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v4.n128_f64[0] :v5 :v6 :v7];
  [v15 setTimingFunction:?];
  *&v8 = MEMORY[0x277D82BD8](v16).n128_u64[0];
  [animation setKeyPath:{@"transform", v8}];
  [v18[0] addAnimation:animation forKey:@"shake"];
  objc_storeStrong(&animation, 0);
  objc_storeStrong(v18, 0);
}

- (void)clearSecondFactorEntry
{
  selfCopy = self;
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
  [(AKCodeEntryView *)selfCopy->_codeGeneratorView setStringValue:&stru_28358EF68];
}

- (void)setPasscodeFieldDisabled:(BOOL)disabled
{
  [(AKCodeEntryView *)self->_codeGeneratorView setPasscodeFieldDisabled:disabled];
  if (disabled)
  {
    [(AKCodeEntryView *)self->_codeGeneratorView resignFirstResponder];
  }

  else
  {
    [(AKCodeEntryView *)self->_codeGeneratorView becomeFirstResponder];
  }
}

@end