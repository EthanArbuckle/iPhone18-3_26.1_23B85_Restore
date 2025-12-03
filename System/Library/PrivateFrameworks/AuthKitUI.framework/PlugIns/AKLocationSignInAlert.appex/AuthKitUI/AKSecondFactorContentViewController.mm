@interface AKSecondFactorContentViewController
+ (void)initialize;
- (double)_codeGeneratorSpacing:(double)spacing;
- (void)_configureCodeGenView;
- (void)_configureFooterView;
- (void)_configureTitleHeaderView;
- (void)loadView;
@end

@implementation AKSecondFactorContentViewController

+ (void)initialize
{
  if (self == objc_opt_class())
  {
    sub_100003180();
  }
}

- (void)loadView
{
  selfCopy = self;
  v11 = a2;
  v10.receiver = self;
  v10.super_class = AKSecondFactorContentViewController;
  [(AKSecondFactorContentViewController *)&v10 loadView];
  extensionContext = [(AKSecondFactorContentViewController *)selfCopy extensionContext];
  inputItems = [extensionContext inputItems];
  firstObject = [inputItems firstObject];

  ak_context = [firstObject ak_context];
  [(AKSecondFactorContentViewController *)selfCopy setAuthenticationContext:?];

  v8 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(AKSecondFactorContentViewController *)selfCopy setView:v8];
  [(AKSecondFactorContentViewController *)selfCopy _configureTitleHeaderView];
  [(AKSecondFactorContentViewController *)selfCopy _configureCodeGenView];
  [(AKSecondFactorContentViewController *)selfCopy _configureFooterView];
  view = [(AKSecondFactorContentViewController *)selfCopy view];
  [view systemLayoutSizeFittingSize:{UILayoutFittingExpandedSize.width, UILayoutFittingExpandedSize.height}];
  v7 = v2;

  [(AKSecondFactorContentViewController *)selfCopy setPreferredContentSize:270.0, v7];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&firstObject, 0);
}

- (void)_configureTitleHeaderView
{
  selfCopy = self;
  v15[1] = a2;
  v2 = [objc_alloc(sub_100003358()) initWithNibName:0 bundle:?];
  titleHeaderViewController = selfCopy->_titleHeaderViewController;
  selfCopy->_titleHeaderViewController = v2;

  _message = [(AKAppleIDAuthenticationContext *)selfCopy->_authenticationContext _message];
  contentContainerView = [(AKBasicLoginContentViewController *)selfCopy->_titleHeaderViewController contentContainerView];
  [contentContainerView setTitleText:_message];

  _interpolatedReason = [(AKAppleIDAuthenticationContext *)selfCopy->_authenticationContext _interpolatedReason];
  contentContainerView2 = [(AKBasicLoginContentViewController *)selfCopy->_titleHeaderViewController contentContainerView];
  [contentContainerView2 setMessageText:_interpolatedReason];

  [(AKSecondFactorContentViewController *)selfCopy addChildViewController:selfCopy->_titleHeaderViewController];
  v15[0] = [(AKBasicLoginContentViewController *)selfCopy->_titleHeaderViewController view];
  [v15[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(AKSecondFactorContentViewController *)selfCopy view];
  [view addSubview:v15[0]];

  v9 = v15[0];
  view2 = [(AKSecondFactorContentViewController *)selfCopy view];
  v10 = [NSLayoutConstraint constraintWithItem:"constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" attribute:v9 relatedBy:7 toItem:? attribute:? multiplier:? constant:?];
  [(NSLayoutConstraint *)v10 setActive:1];

  v12 = v15[0];
  view3 = [(AKSecondFactorContentViewController *)selfCopy view];
  v13 = [NSLayoutConstraint constraintWithItem:"constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" attribute:v12 relatedBy:3 toItem:0 attribute:1.0 multiplier:0.0 constant:?];
  [(NSLayoutConstraint *)v13 setActive:1];

  objc_storeStrong(v15, 0);
}

- (void)_configureCodeGenView
{
  v22 = [AKCodeGenerationView alloc];
  generatedCode = [(AKAppleIDAuthenticationContext *)self->_authenticationContext generatedCode];
  if (generatedCode)
  {
    v21 = generatedCode;
  }

  else
  {
    v21 = @"000000";
  }

  v2 = [(AKCodeGenerationView *)v22 initWithGeneratedCode:v21];
  codeGeneratorView = self->_codeGeneratorView;
  self->_codeGeneratorView = v2;

  view = [(AKSecondFactorContentViewController *)self view];
  [view addSubview:self->_codeGeneratorView];

  v19 = +[AKFeatureManager sharedManager];
  isAuthKitSolariumFeatureEnabled = [v19 isAuthKitSolariumFeatureEnabled];

  if (isAuthKitSolariumFeatureEnabled)
  {
    v12 = self->_codeGeneratorView;
    view2 = [(AKSecondFactorContentViewController *)self view];
    v13 = [NSLayoutConstraint constraintWithItem:"constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" attribute:v12 relatedBy:5 toItem:? attribute:? multiplier:? constant:?];
    [(NSLayoutConstraint *)v13 setActive:1];

    v15 = self->_codeGeneratorView;
    view3 = [(AKBasicLoginContentViewController *)self->_titleHeaderViewController view];
    [(AKSecondFactorContentViewController *)self _codeGeneratorSpacing:50.0];
    v16 = [NSLayoutConstraint constraintWithItem:v15 attribute:12 relatedBy:0 toItem:view3 attribute:11 multiplier:1.0 constant:v4];
    [(NSLayoutConstraint *)v16 setActive:1];
  }

  else
  {
    v6 = self->_codeGeneratorView;
    view4 = [(AKSecondFactorContentViewController *)self view];
    v7 = [NSLayoutConstraint constraintWithItem:"constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" attribute:v6 relatedBy:9 toItem:? attribute:? multiplier:? constant:?];
    [(NSLayoutConstraint *)v7 setActive:1];

    v9 = self->_codeGeneratorView;
    view5 = [(AKBasicLoginContentViewController *)self->_titleHeaderViewController view];
    [(AKSecondFactorContentViewController *)self _codeGeneratorSpacing:50.0];
    v10 = [NSLayoutConstraint constraintWithItem:v9 attribute:12 relatedBy:0 toItem:view5 attribute:11 multiplier:1.0 constant:v5];
    [(NSLayoutConstraint *)v10 setActive:1];
  }
}

- (void)_configureFooterView
{
  selfCopy = self;
  v26[1] = a2;
  v23 = +[AKFeatureManager sharedManager];
  isAuthKitSolariumFeatureEnabled = [v23 isAuthKitSolariumFeatureEnabled];

  v2 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  footerView = selfCopy->_footerView;
  selfCopy->_footerView = v2;

  if (isAuthKitSolariumFeatureEnabled)
  {
    v26[0] = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote addingSymbolicTraits:0x8000 options:2];
    v20 = selfCopy->_footerView;
    notificationDisclaimer = [(AKAppleIDAuthenticationContext *)selfCopy->_authenticationContext notificationDisclaimer];
    [(UILabel *)v20 setText:?];

    v22 = [UIFont fontWithDescriptor:v26[0] size:0.0];
    [(UILabel *)selfCopy->_footerView setFont:?];

    [(UILabel *)selfCopy->_footerView setTextAlignment:4];
    [(UILabel *)selfCopy->_footerView setNumberOfLines:0];
    [(UILabel *)selfCopy->_footerView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v4) = 1055286886;
    [(UILabel *)selfCopy->_footerView _setHyphenationFactor:v4];
    [(UILabel *)selfCopy->_footerView setPreferredMaxLayoutWidth:238.0];
    objc_storeStrong(v26, 0);
  }

  else
  {
    v25 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote addingSymbolicTraits:0x8000 options:2];
    v17 = selfCopy->_footerView;
    notificationDisclaimer2 = [(AKAppleIDAuthenticationContext *)selfCopy->_authenticationContext notificationDisclaimer];
    [(UILabel *)v17 setText:?];

    v19 = [UIFont fontWithDescriptor:v25 size:0.0];
    [(UILabel *)selfCopy->_footerView setFont:?];

    [(UILabel *)selfCopy->_footerView setTextAlignment:1];
    [(UILabel *)selfCopy->_footerView setNumberOfLines:0];
    [(UILabel *)selfCopy->_footerView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v5) = 1055286886;
    [(UILabel *)selfCopy->_footerView _setHyphenationFactor:v5];
    [(UILabel *)selfCopy->_footerView setPreferredMaxLayoutWidth:238.0];
    objc_storeStrong(&v25, 0);
  }

  view = [(AKSecondFactorContentViewController *)selfCopy view];
  [view addSubview:selfCopy->_footerView];

  v7 = selfCopy->_footerView;
  view2 = [(AKSecondFactorContentViewController *)selfCopy view];
  v8 = [NSLayoutConstraint constraintWithItem:"constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" attribute:v7 relatedBy:5 toItem:? attribute:? multiplier:? constant:?];
  [(NSLayoutConstraint *)v8 setActive:1];

  v10 = selfCopy->_footerView;
  view3 = [(AKSecondFactorContentViewController *)selfCopy view];
  v11 = [NSLayoutConstraint constraintWithItem:"constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" attribute:v10 relatedBy:6 toItem:0 attribute:1.0 multiplier:? constant:?];
  [(NSLayoutConstraint *)v11 setActive:1];

  v13 = [NSLayoutConstraint constraintWithItem:selfCopy->_footerView attribute:3 relatedBy:0 toItem:selfCopy->_codeGeneratorView attribute:1.0 multiplier:16.0 constant:?];
  [(NSLayoutConstraint *)v13 setActive:1];

  v14 = selfCopy->_footerView;
  view4 = [(AKSecondFactorContentViewController *)selfCopy view];
  v15 = [NSLayoutConstraint constraintWithItem:"constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" attribute:v14 relatedBy:4 toItem:0 attribute:1.0 multiplier:-16.0 constant:?];
  [(NSLayoutConstraint *)v15 setActive:1];
}

- (double)_codeGeneratorSpacing:(double)spacing
{
  selfCopy = self;
  v9 = a2;
  spacingCopy = spacing;
  v7 = +[AKCodeGenerationView _generatorLabelFont];
  [v7 _scaledValueForValue:spacingCopy];
  v5 = +[UIScreen mainScreen];
  UIRoundToScreenScale();
  v6 = v3;

  objc_storeStrong(&v7, 0);
  return v6;
}

@end