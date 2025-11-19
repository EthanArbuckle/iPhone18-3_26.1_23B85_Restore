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
  v5 = self;
  v4 = a2;
  v2 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v2 removeObserver:v5 name:UIContentSizeCategoryDidChangeNotification object:0];

  v3.receiver = v5;
  v3.super_class = AKSecondFactorCodeEntryContentViewController;
  [(AKSecondFactorCodeEntryContentViewController *)&v3 dealloc];
}

- (void)_configureTitleHeaderView
{
  v29 = self;
  v28 = a2;
  v2 = [[AKBasicLoginContentViewController alloc] initWithNibName:0 bundle:?];
  titleHeaderViewController = v29->_titleHeaderViewController;
  v29->_titleHeaderViewController = v2;

  if ([(AKSecondFactorCodeEntryContentViewController *)v29 piggybackingForTrustedDevice])
  {
    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [(NSBundle *)v16 localizedStringForKey:@"VERIFICATION_HEADER_REPAIR" value:&stru_10000C558 table:@"Localizable"];
    v14 = [(AKBasicLoginContentViewController *)v29->_titleHeaderViewController contentContainerView];
    [(AKBasicLoginContentViewControllerContainerView *)v14 setTitleText:v15];

    v17 = [(AKSecondFactorCodeEntryContentViewController *)v29 authenticationContext];
    v18 = [(AKAppleIDAuthenticationContext *)v17 _message];
    v26 = 0;
    v24 = 0;
    if (v18)
    {
      v13 = v18;
    }

    else
    {
      v27 = [NSBundle bundleForClass:objc_opt_class()];
      v26 = 1;
      v25 = [(NSBundle *)v27 localizedStringForKey:@"ENTER_VERIFICATION_CODE_REPAIR" value:&stru_10000C558 table:@"Localizable"];
      v24 = 1;
      v13 = v25;
    }

    v12 = [(AKBasicLoginContentViewController *)v29->_titleHeaderViewController contentContainerView];
    [(AKBasicLoginContentViewControllerContainerView *)v12 setMessageText:v13];

    if (v24)
    {
    }

    if (v26)
    {
    }
  }

  else
  {
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [(NSBundle *)v9 localizedStringForKey:@"VERIFICATION_HEADER_REBRAND" value:&stru_10000C558 table:@"Localizable"];
    v7 = [(AKBasicLoginContentViewController *)v29->_titleHeaderViewController contentContainerView];
    [(AKBasicLoginContentViewControllerContainerView *)v7 setTitleText:v8];

    v10 = [(AKSecondFactorCodeEntryContentViewController *)v29 authenticationContext];
    v11 = [(AKAppleIDAuthenticationContext *)v10 _message];
    v22 = 0;
    v20 = 0;
    if (v11)
    {
      v6 = v11;
    }

    else
    {
      v23 = [NSBundle bundleForClass:objc_opt_class()];
      v22 = 1;
      v21 = [(NSBundle *)v23 localizedStringForKey:@"ENTER_VERIFICATION_CODE" value:&stru_10000C558 table:@"Localizable"];
      v20 = 1;
      v6 = v21;
    }

    v5 = [(AKBasicLoginContentViewController *)v29->_titleHeaderViewController contentContainerView];
    [(AKBasicLoginContentViewControllerContainerView *)v5 setMessageText:v6];

    if (v20)
    {
    }

    if (v22)
    {
    }
  }

  [(AKSecondFactorCodeEntryContentViewController *)v29 addChildViewController:v29->_titleHeaderViewController];
  v19 = [(AKBasicLoginContentViewController *)v29->_titleHeaderViewController view];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [(AKSecondFactorCodeEntryContentViewController *)v29 view];
  [v4 addSubview:v19];

  objc_storeStrong(&v19, 0);
}

- (void)_configureCodeGenView
{
  v2 = [[AKCodeEntryView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  codeGeneratorView = self->_codeGeneratorView;
  self->_codeGeneratorView = v2;

  v4 = [(AKSecondFactorCodeEntryContentViewController *)self view];
  [v4 addSubview:self->_codeGeneratorView];
}

- (void)updateViewConstraints
{
  v53 = self;
  v52 = a2;
  v51.receiver = self;
  v51.super_class = AKSecondFactorCodeEntryContentViewController;
  [(AKSecondFactorCodeEntryContentViewController *)&v51 updateViewConstraints];
  if (v53->_activeConstraints)
  {
    [NSLayoutConstraint deactivateConstraints:v53->_activeConstraints];
  }

  v50 = objc_alloc_init(NSMutableArray);
  v35 = [(AKBasicLoginContentViewController *)v53->_titleHeaderViewController view];
  v34 = [(AKSecondFactorCodeEntryContentViewController *)v53 view];
  v33 = [NSLayoutConstraint constraintWithItem:"constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" attribute:v35 relatedBy:3 toItem:0 attribute:1.0 multiplier:0.0 constant:?];
  [v50 addObject:?];

  v36 = +[AKFeatureManager sharedManager];
  v37 = [v36 isAuthKitSolariumFeatureEnabled];

  if (v37)
  {
    v29 = [(AKBasicLoginContentViewController *)v53->_titleHeaderViewController view];
    v28 = [(AKSecondFactorCodeEntryContentViewController *)v53 view];
    v27 = [NSLayoutConstraint constraintWithItem:"constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" attribute:v29 relatedBy:5 toItem:? attribute:? multiplier:? constant:?];
    [v50 addObject:?];

    codeGeneratorView = v53->_codeGeneratorView;
    v32 = [(AKSecondFactorCodeEntryContentViewController *)v53 view];
    v31 = [NSLayoutConstraint constraintWithItem:"constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" attribute:codeGeneratorView relatedBy:5 toItem:0 attribute:1.0 multiplier:16.0 constant:?];
    [v50 addObject:?];
  }

  else
  {
    v23 = [(AKBasicLoginContentViewController *)v53->_titleHeaderViewController view];
    v22 = [(AKSecondFactorCodeEntryContentViewController *)v53 view];
    v21 = [NSLayoutConstraint constraintWithItem:"constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" attribute:v23 relatedBy:9 toItem:? attribute:? multiplier:? constant:?];
    [v50 addObject:?];

    v24 = v53->_codeGeneratorView;
    v26 = [(AKSecondFactorCodeEntryContentViewController *)v53 view];
    v25 = [NSLayoutConstraint constraintWithItem:"constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" attribute:v24 relatedBy:9 toItem:0 attribute:1.0 multiplier:0.0 constant:?];
    [v50 addObject:?];
  }

  v49 = objc_alloc_init(NSStringDrawingContext);
  [v49 setWantsBaselineOffset:1];
  v48 = +[AKCodeEntryView generatorFieldFont];
  v14 = [(AKBasicLoginContentViewController *)v53->_titleHeaderViewController contentContainerView];
  v13 = [(AKBasicLoginContentViewControllerContainerView *)v14 messageText];
  v46 = 0x7FEFFFFFFFFFFFFFLL;
  v47 = 0x7FEFFFFFFFFFFFFFLL;
  v54 = NSFontAttributeName;
  v55 = v48;
  v12 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
  [NSString boundingRectWithSize:v13 options:"boundingRectWithSize:options:attributes:context:" attributes:1.79769313e308 context:1.79769313e308];
  v42 = v2;
  v43 = v3;
  v44 = v4;
  v45 = v5;

  [v49 baselineOffset];
  v41 = v6;
  v40 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleBody];
  v15 = v53->_codeGeneratorView;
  v16 = [(AKBasicLoginContentViewController *)v53->_titleHeaderViewController view];
  [(UIFontMetrics *)v40 scaledValueForValue:50.0];
  sub_100005614(v7 - v41);
  v39 = [NSLayoutConstraint constraintWithItem:"constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" attribute:v15 relatedBy:3 toItem:0 attribute:v16 multiplier:11 constant:?];

  [v50 addObject:v39];
  [v48 descender];
  v38 = v8;
  v18 = v50;
  v17 = v53->_codeGeneratorView;
  v20 = [(AKSecondFactorCodeEntryContentViewController *)v53 view];
  [(UIFontMetrics *)v40 scaledValueForValue:-32.0];
  v19 = [NSLayoutConstraint constraintWithItem:v17 attribute:4 relatedBy:0 toItem:v20 attribute:1.0 multiplier:sub_100005614(v9 - v38) constant:?];
  [v18 addObject:?];

  [NSLayoutConstraint activateConstraints:v50];
  v10 = [v50 copy];
  activeConstraints = v53->_activeConstraints;
  v53->_activeConstraints = v10;

  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(&v50, 0);
}

- (void)loadView
{
  v10 = self;
  v9 = a2;
  v8.receiver = self;
  v8.super_class = AKSecondFactorCodeEntryContentViewController;
  [(AKSecondFactorCodeEntryContentViewController *)&v8 loadView];
  v3 = [(AKSecondFactorCodeEntryContentViewController *)v10 extensionContext];
  v2 = [v3 inputItems];
  v7 = [v2 firstObject];

  v4 = [v7 ak_context];
  [(AKSecondFactorCodeEntryContentViewController *)v10 setAuthenticationContext:?];

  v6 = [(AKSecondFactorCodeEntryContentViewController *)v10 view];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(AKSecondFactorCodeEntryContentViewController *)v10 _configureTitleHeaderView];
  [(AKSecondFactorCodeEntryContentViewController *)v10 _configureCodeGenView];
  v5 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v5 addObserver:v10 selector:"_updateFontContstraints:" name:UIContentSizeCategoryDidChangeNotification object:?];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
}

- (void)viewWillLayoutSubviews
{
  v7 = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = AKSecondFactorCodeEntryContentViewController;
  [(AKSecondFactorCodeEntryContentViewController *)&v5 viewWillLayoutSubviews];
  v3 = [(AKSecondFactorCodeEntryContentViewController *)v7 view];
  [v3 systemLayoutSizeFittingSize:{UILayoutFittingExpandedSize.width, UILayoutFittingExpandedSize.height}];
  v4 = v2;

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

  objc_storeStrong(location, 0);
}

- (void)setReason:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = location[0];
  v4 = [(AKBasicLoginContentViewController *)v7->_titleHeaderViewController contentContainerView];
  [(AKBasicLoginContentViewControllerContainerView *)v4 setMessageText:v3];

  v5 = [(AKSecondFactorCodeEntryContentViewController *)v7 view];
  [v5 setNeedsUpdateConstraints];

  objc_storeStrong(location, 0);
}

- (NSString)reason
{
  v3 = [(AKBasicLoginContentViewController *)self->_titleHeaderViewController contentContainerView];
  v4 = [(AKBasicLoginContentViewControllerContainerView *)v3 messageText];

  return v4;
}

- (void)jiggleAView
{
  v17 = self;
  v16[1] = a2;
  v16[0] = [(AKCodeEntryView *)self->_codeGeneratorView layer];
  v15 = +[CASpringAnimation animation];
  [v15 setMass:1.20000005];
  [v15 setStiffness:1200.0];
  [v15 setDamping:12.0];
  [v15 setDuration:1.39999998];
  [v15 setVelocity:0.0];
  [v15 setFillMode:kCAFillModeBackwards];
  [v15 setDelegate:v17];
  v7 = v15;
  LODWORD(v2) = 30.0;
  v8 = [NSNumber numberWithFloat:v2];
  [v7 setFromValue:?];

  v9 = v15;
  v10 = [NSNumber numberWithFloat:0.0];
  [v9 setToValue:?];

  v11 = v15;
  v12 = [CAValueFunction functionWithName:kCAValueFunctionTranslateX];
  [v11 setValueFunction:?];

  v13 = v15;
  LODWORD(v3) = 1028389654;
  LODWORD(v4) = 990057071;
  LODWORD(v5) = 1059712716;
  LODWORD(v6) = 1.0;
  v14 = [CAMediaTimingFunction functionWithControlPoints:v3];
  [v13 setTimingFunction:?];

  [v15 setKeyPath:@"transform"];
  [v16[0] addAnimation:v15 forKey:@"shake"];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(v16, 0);
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
    sub_100005E60(v4);
    _os_log_impl(&_mh_execute_header, log, type, "Clearing Second Factor Entry Field", v4, 2u);
  }

  objc_storeStrong(location, 0);
  [(AKCodeEntryView *)v7->_codeGeneratorView setStringValue:&stru_10000C558];
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