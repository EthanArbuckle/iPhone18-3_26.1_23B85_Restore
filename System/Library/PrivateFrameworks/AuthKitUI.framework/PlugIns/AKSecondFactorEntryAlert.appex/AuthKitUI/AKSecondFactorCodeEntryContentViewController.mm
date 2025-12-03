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
  v4 = a2;
  v2 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v2 removeObserver:selfCopy name:UIContentSizeCategoryDidChangeNotification object:0];

  v3.receiver = selfCopy;
  v3.super_class = AKSecondFactorCodeEntryContentViewController;
  [(AKSecondFactorCodeEntryContentViewController *)&v3 dealloc];
}

- (void)_configureTitleHeaderView
{
  selfCopy = self;
  v28 = a2;
  v2 = [[AKBasicLoginContentViewController alloc] initWithNibName:0 bundle:?];
  titleHeaderViewController = selfCopy->_titleHeaderViewController;
  selfCopy->_titleHeaderViewController = v2;

  if ([(AKSecondFactorCodeEntryContentViewController *)selfCopy piggybackingForTrustedDevice])
  {
    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [(NSBundle *)v16 localizedStringForKey:@"VERIFICATION_HEADER_REPAIR" value:&stru_10000C558 table:@"Localizable"];
    contentContainerView = [(AKBasicLoginContentViewController *)selfCopy->_titleHeaderViewController contentContainerView];
    [(AKBasicLoginContentViewControllerContainerView *)contentContainerView setTitleText:v15];

    authenticationContext = [(AKSecondFactorCodeEntryContentViewController *)selfCopy authenticationContext];
    _message = [(AKAppleIDAuthenticationContext *)authenticationContext _message];
    v26 = 0;
    v24 = 0;
    if (_message)
    {
      v13 = _message;
    }

    else
    {
      v27 = [NSBundle bundleForClass:objc_opt_class()];
      v26 = 1;
      v25 = [(NSBundle *)v27 localizedStringForKey:@"ENTER_VERIFICATION_CODE_REPAIR" value:&stru_10000C558 table:@"Localizable"];
      v24 = 1;
      v13 = v25;
    }

    contentContainerView2 = [(AKBasicLoginContentViewController *)selfCopy->_titleHeaderViewController contentContainerView];
    [(AKBasicLoginContentViewControllerContainerView *)contentContainerView2 setMessageText:v13];

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
    contentContainerView3 = [(AKBasicLoginContentViewController *)selfCopy->_titleHeaderViewController contentContainerView];
    [(AKBasicLoginContentViewControllerContainerView *)contentContainerView3 setTitleText:v8];

    authenticationContext2 = [(AKSecondFactorCodeEntryContentViewController *)selfCopy authenticationContext];
    _message2 = [(AKAppleIDAuthenticationContext *)authenticationContext2 _message];
    v22 = 0;
    v20 = 0;
    if (_message2)
    {
      v6 = _message2;
    }

    else
    {
      v23 = [NSBundle bundleForClass:objc_opt_class()];
      v22 = 1;
      v21 = [(NSBundle *)v23 localizedStringForKey:@"ENTER_VERIFICATION_CODE" value:&stru_10000C558 table:@"Localizable"];
      v20 = 1;
      v6 = v21;
    }

    contentContainerView4 = [(AKBasicLoginContentViewController *)selfCopy->_titleHeaderViewController contentContainerView];
    [(AKBasicLoginContentViewControllerContainerView *)contentContainerView4 setMessageText:v6];

    if (v20)
    {
    }

    if (v22)
    {
    }
  }

  [(AKSecondFactorCodeEntryContentViewController *)selfCopy addChildViewController:selfCopy->_titleHeaderViewController];
  view = [(AKBasicLoginContentViewController *)selfCopy->_titleHeaderViewController view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(AKSecondFactorCodeEntryContentViewController *)selfCopy view];
  [view2 addSubview:view];

  objc_storeStrong(&view, 0);
}

- (void)_configureCodeGenView
{
  v2 = [[AKCodeEntryView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  codeGeneratorView = self->_codeGeneratorView;
  self->_codeGeneratorView = v2;

  view = [(AKSecondFactorCodeEntryContentViewController *)self view];
  [view addSubview:self->_codeGeneratorView];
}

- (void)updateViewConstraints
{
  selfCopy = self;
  v52 = a2;
  v51.receiver = self;
  v51.super_class = AKSecondFactorCodeEntryContentViewController;
  [(AKSecondFactorCodeEntryContentViewController *)&v51 updateViewConstraints];
  if (selfCopy->_activeConstraints)
  {
    [NSLayoutConstraint deactivateConstraints:selfCopy->_activeConstraints];
  }

  v50 = objc_alloc_init(NSMutableArray);
  view = [(AKBasicLoginContentViewController *)selfCopy->_titleHeaderViewController view];
  view2 = [(AKSecondFactorCodeEntryContentViewController *)selfCopy view];
  v33 = [NSLayoutConstraint constraintWithItem:"constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" attribute:view relatedBy:3 toItem:0 attribute:1.0 multiplier:0.0 constant:?];
  [v50 addObject:?];

  v36 = +[AKFeatureManager sharedManager];
  isAuthKitSolariumFeatureEnabled = [v36 isAuthKitSolariumFeatureEnabled];

  if (isAuthKitSolariumFeatureEnabled)
  {
    view3 = [(AKBasicLoginContentViewController *)selfCopy->_titleHeaderViewController view];
    view4 = [(AKSecondFactorCodeEntryContentViewController *)selfCopy view];
    v27 = [NSLayoutConstraint constraintWithItem:"constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" attribute:view3 relatedBy:5 toItem:? attribute:? multiplier:? constant:?];
    [v50 addObject:?];

    codeGeneratorView = selfCopy->_codeGeneratorView;
    view5 = [(AKSecondFactorCodeEntryContentViewController *)selfCopy view];
    v31 = [NSLayoutConstraint constraintWithItem:"constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" attribute:codeGeneratorView relatedBy:5 toItem:0 attribute:1.0 multiplier:16.0 constant:?];
    [v50 addObject:?];
  }

  else
  {
    view6 = [(AKBasicLoginContentViewController *)selfCopy->_titleHeaderViewController view];
    view7 = [(AKSecondFactorCodeEntryContentViewController *)selfCopy view];
    v21 = [NSLayoutConstraint constraintWithItem:"constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" attribute:view6 relatedBy:9 toItem:? attribute:? multiplier:? constant:?];
    [v50 addObject:?];

    v24 = selfCopy->_codeGeneratorView;
    view8 = [(AKSecondFactorCodeEntryContentViewController *)selfCopy view];
    v25 = [NSLayoutConstraint constraintWithItem:"constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" attribute:v24 relatedBy:9 toItem:0 attribute:1.0 multiplier:0.0 constant:?];
    [v50 addObject:?];
  }

  v49 = objc_alloc_init(NSStringDrawingContext);
  [v49 setWantsBaselineOffset:1];
  v48 = +[AKCodeEntryView generatorFieldFont];
  contentContainerView = [(AKBasicLoginContentViewController *)selfCopy->_titleHeaderViewController contentContainerView];
  messageText = [(AKBasicLoginContentViewControllerContainerView *)contentContainerView messageText];
  v46 = 0x7FEFFFFFFFFFFFFFLL;
  v47 = 0x7FEFFFFFFFFFFFFFLL;
  v54 = NSFontAttributeName;
  v55 = v48;
  v12 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
  [NSString boundingRectWithSize:messageText options:"boundingRectWithSize:options:attributes:context:" attributes:1.79769313e308 context:1.79769313e308];
  v42 = v2;
  v43 = v3;
  v44 = v4;
  v45 = v5;

  [v49 baselineOffset];
  v41 = v6;
  v40 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleBody];
  v15 = selfCopy->_codeGeneratorView;
  view9 = [(AKBasicLoginContentViewController *)selfCopy->_titleHeaderViewController view];
  [(UIFontMetrics *)v40 scaledValueForValue:50.0];
  sub_100005614(v7 - v41);
  v39 = [NSLayoutConstraint constraintWithItem:"constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" attribute:v15 relatedBy:3 toItem:0 attribute:view9 multiplier:11 constant:?];

  [v50 addObject:v39];
  [v48 descender];
  v38 = v8;
  v18 = v50;
  v17 = selfCopy->_codeGeneratorView;
  view10 = [(AKSecondFactorCodeEntryContentViewController *)selfCopy view];
  [(UIFontMetrics *)v40 scaledValueForValue:-32.0];
  v19 = [NSLayoutConstraint constraintWithItem:v17 attribute:4 relatedBy:0 toItem:view10 attribute:1.0 multiplier:sub_100005614(v9 - v38) constant:?];
  [v18 addObject:?];

  [NSLayoutConstraint activateConstraints:v50];
  v10 = [v50 copy];
  activeConstraints = selfCopy->_activeConstraints;
  selfCopy->_activeConstraints = v10;

  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(&v50, 0);
}

- (void)loadView
{
  selfCopy = self;
  v9 = a2;
  v8.receiver = self;
  v8.super_class = AKSecondFactorCodeEntryContentViewController;
  [(AKSecondFactorCodeEntryContentViewController *)&v8 loadView];
  extensionContext = [(AKSecondFactorCodeEntryContentViewController *)selfCopy extensionContext];
  inputItems = [extensionContext inputItems];
  firstObject = [inputItems firstObject];

  ak_context = [firstObject ak_context];
  [(AKSecondFactorCodeEntryContentViewController *)selfCopy setAuthenticationContext:?];

  view = [(AKSecondFactorCodeEntryContentViewController *)selfCopy view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  [(AKSecondFactorCodeEntryContentViewController *)selfCopy _configureTitleHeaderView];
  [(AKSecondFactorCodeEntryContentViewController *)selfCopy _configureCodeGenView];
  v5 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v5 addObserver:selfCopy selector:"_updateFontContstraints:" name:UIContentSizeCategoryDidChangeNotification object:?];

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
  [view systemLayoutSizeFittingSize:{UILayoutFittingExpandedSize.width, UILayoutFittingExpandedSize.height}];
  v4 = v2;

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

  objc_storeStrong(location, 0);
}

- (void)setReason:(id)reason
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, reason);
  v3 = location[0];
  contentContainerView = [(AKBasicLoginContentViewController *)selfCopy->_titleHeaderViewController contentContainerView];
  [(AKBasicLoginContentViewControllerContainerView *)contentContainerView setMessageText:v3];

  view = [(AKSecondFactorCodeEntryContentViewController *)selfCopy view];
  [view setNeedsUpdateConstraints];

  objc_storeStrong(location, 0);
}

- (NSString)reason
{
  contentContainerView = [(AKBasicLoginContentViewController *)self->_titleHeaderViewController contentContainerView];
  messageText = [(AKBasicLoginContentViewControllerContainerView *)contentContainerView messageText];

  return messageText;
}

- (void)jiggleAView
{
  selfCopy = self;
  v16[1] = a2;
  v16[0] = [(AKCodeEntryView *)self->_codeGeneratorView layer];
  v15 = +[CASpringAnimation animation];
  [v15 setMass:1.20000005];
  [v15 setStiffness:1200.0];
  [v15 setDamping:12.0];
  [v15 setDuration:1.39999998];
  [v15 setVelocity:0.0];
  [v15 setFillMode:kCAFillModeBackwards];
  [v15 setDelegate:selfCopy];
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
  selfCopy = self;
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
  [(AKCodeEntryView *)selfCopy->_codeGeneratorView setStringValue:&stru_10000C558];
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