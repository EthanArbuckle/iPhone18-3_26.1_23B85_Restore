@interface AKSecondFactorContentViewController
+ (void)initialize;
- (double)_codeGeneratorSpacing:(double)a3;
- (void)_configureCodeGenView;
- (void)_configureFooterView;
- (void)_configureTitleHeaderView;
- (void)loadView;
@end

@implementation AKSecondFactorContentViewController

+ (void)initialize
{
  if (a1 == objc_opt_class())
  {
    sub_100003180();
  }
}

- (void)loadView
{
  v12 = self;
  v11 = a2;
  v10.receiver = self;
  v10.super_class = AKSecondFactorContentViewController;
  [(AKSecondFactorContentViewController *)&v10 loadView];
  v4 = [(AKSecondFactorContentViewController *)v12 extensionContext];
  v3 = [v4 inputItems];
  v9 = [v3 firstObject];

  v5 = [v9 ak_context];
  [(AKSecondFactorContentViewController *)v12 setAuthenticationContext:?];

  v8 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(AKSecondFactorContentViewController *)v12 setView:v8];
  [(AKSecondFactorContentViewController *)v12 _configureTitleHeaderView];
  [(AKSecondFactorContentViewController *)v12 _configureCodeGenView];
  [(AKSecondFactorContentViewController *)v12 _configureFooterView];
  v6 = [(AKSecondFactorContentViewController *)v12 view];
  [v6 systemLayoutSizeFittingSize:{UILayoutFittingExpandedSize.width, UILayoutFittingExpandedSize.height}];
  v7 = v2;

  [(AKSecondFactorContentViewController *)v12 setPreferredContentSize:270.0, v7];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
}

- (void)_configureTitleHeaderView
{
  v16 = self;
  v15[1] = a2;
  v2 = [objc_alloc(sub_100003358()) initWithNibName:0 bundle:?];
  titleHeaderViewController = v16->_titleHeaderViewController;
  v16->_titleHeaderViewController = v2;

  v5 = [(AKAppleIDAuthenticationContext *)v16->_authenticationContext _message];
  v4 = [(AKBasicLoginContentViewController *)v16->_titleHeaderViewController contentContainerView];
  [v4 setTitleText:v5];

  v7 = [(AKAppleIDAuthenticationContext *)v16->_authenticationContext _interpolatedReason];
  v6 = [(AKBasicLoginContentViewController *)v16->_titleHeaderViewController contentContainerView];
  [v6 setMessageText:v7];

  [(AKSecondFactorContentViewController *)v16 addChildViewController:v16->_titleHeaderViewController];
  v15[0] = [(AKBasicLoginContentViewController *)v16->_titleHeaderViewController view];
  [v15[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [(AKSecondFactorContentViewController *)v16 view];
  [v8 addSubview:v15[0]];

  v9 = v15[0];
  v11 = [(AKSecondFactorContentViewController *)v16 view];
  v10 = [NSLayoutConstraint constraintWithItem:"constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" attribute:v9 relatedBy:7 toItem:? attribute:? multiplier:? constant:?];
  [(NSLayoutConstraint *)v10 setActive:1];

  v12 = v15[0];
  v14 = [(AKSecondFactorContentViewController *)v16 view];
  v13 = [NSLayoutConstraint constraintWithItem:"constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" attribute:v12 relatedBy:3 toItem:0 attribute:1.0 multiplier:0.0 constant:?];
  [(NSLayoutConstraint *)v13 setActive:1];

  objc_storeStrong(v15, 0);
}

- (void)_configureCodeGenView
{
  v22 = [AKCodeGenerationView alloc];
  v23 = [(AKAppleIDAuthenticationContext *)self->_authenticationContext generatedCode];
  if (v23)
  {
    v21 = v23;
  }

  else
  {
    v21 = @"000000";
  }

  v2 = [(AKCodeGenerationView *)v22 initWithGeneratedCode:v21];
  codeGeneratorView = self->_codeGeneratorView;
  self->_codeGeneratorView = v2;

  v18 = [(AKSecondFactorContentViewController *)self view];
  [v18 addSubview:self->_codeGeneratorView];

  v19 = +[AKFeatureManager sharedManager];
  v20 = [v19 isAuthKitSolariumFeatureEnabled];

  if (v20)
  {
    v12 = self->_codeGeneratorView;
    v14 = [(AKSecondFactorContentViewController *)self view];
    v13 = [NSLayoutConstraint constraintWithItem:"constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" attribute:v12 relatedBy:5 toItem:? attribute:? multiplier:? constant:?];
    [(NSLayoutConstraint *)v13 setActive:1];

    v15 = self->_codeGeneratorView;
    v17 = [(AKBasicLoginContentViewController *)self->_titleHeaderViewController view];
    [(AKSecondFactorContentViewController *)self _codeGeneratorSpacing:50.0];
    v16 = [NSLayoutConstraint constraintWithItem:v15 attribute:12 relatedBy:0 toItem:v17 attribute:11 multiplier:1.0 constant:v4];
    [(NSLayoutConstraint *)v16 setActive:1];
  }

  else
  {
    v6 = self->_codeGeneratorView;
    v8 = [(AKSecondFactorContentViewController *)self view];
    v7 = [NSLayoutConstraint constraintWithItem:"constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" attribute:v6 relatedBy:9 toItem:? attribute:? multiplier:? constant:?];
    [(NSLayoutConstraint *)v7 setActive:1];

    v9 = self->_codeGeneratorView;
    v11 = [(AKBasicLoginContentViewController *)self->_titleHeaderViewController view];
    [(AKSecondFactorContentViewController *)self _codeGeneratorSpacing:50.0];
    v10 = [NSLayoutConstraint constraintWithItem:v9 attribute:12 relatedBy:0 toItem:v11 attribute:11 multiplier:1.0 constant:v5];
    [(NSLayoutConstraint *)v10 setActive:1];
  }
}

- (void)_configureFooterView
{
  v27 = self;
  v26[1] = a2;
  v23 = +[AKFeatureManager sharedManager];
  v24 = [v23 isAuthKitSolariumFeatureEnabled];

  v2 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  footerView = v27->_footerView;
  v27->_footerView = v2;

  if (v24)
  {
    v26[0] = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote addingSymbolicTraits:0x8000 options:2];
    v20 = v27->_footerView;
    v21 = [(AKAppleIDAuthenticationContext *)v27->_authenticationContext notificationDisclaimer];
    [(UILabel *)v20 setText:?];

    v22 = [UIFont fontWithDescriptor:v26[0] size:0.0];
    [(UILabel *)v27->_footerView setFont:?];

    [(UILabel *)v27->_footerView setTextAlignment:4];
    [(UILabel *)v27->_footerView setNumberOfLines:0];
    [(UILabel *)v27->_footerView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v4) = 1055286886;
    [(UILabel *)v27->_footerView _setHyphenationFactor:v4];
    [(UILabel *)v27->_footerView setPreferredMaxLayoutWidth:238.0];
    objc_storeStrong(v26, 0);
  }

  else
  {
    v25 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote addingSymbolicTraits:0x8000 options:2];
    v17 = v27->_footerView;
    v18 = [(AKAppleIDAuthenticationContext *)v27->_authenticationContext notificationDisclaimer];
    [(UILabel *)v17 setText:?];

    v19 = [UIFont fontWithDescriptor:v25 size:0.0];
    [(UILabel *)v27->_footerView setFont:?];

    [(UILabel *)v27->_footerView setTextAlignment:1];
    [(UILabel *)v27->_footerView setNumberOfLines:0];
    [(UILabel *)v27->_footerView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v5) = 1055286886;
    [(UILabel *)v27->_footerView _setHyphenationFactor:v5];
    [(UILabel *)v27->_footerView setPreferredMaxLayoutWidth:238.0];
    objc_storeStrong(&v25, 0);
  }

  v6 = [(AKSecondFactorContentViewController *)v27 view];
  [v6 addSubview:v27->_footerView];

  v7 = v27->_footerView;
  v9 = [(AKSecondFactorContentViewController *)v27 view];
  v8 = [NSLayoutConstraint constraintWithItem:"constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" attribute:v7 relatedBy:5 toItem:? attribute:? multiplier:? constant:?];
  [(NSLayoutConstraint *)v8 setActive:1];

  v10 = v27->_footerView;
  v12 = [(AKSecondFactorContentViewController *)v27 view];
  v11 = [NSLayoutConstraint constraintWithItem:"constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" attribute:v10 relatedBy:6 toItem:0 attribute:1.0 multiplier:? constant:?];
  [(NSLayoutConstraint *)v11 setActive:1];

  v13 = [NSLayoutConstraint constraintWithItem:v27->_footerView attribute:3 relatedBy:0 toItem:v27->_codeGeneratorView attribute:1.0 multiplier:16.0 constant:?];
  [(NSLayoutConstraint *)v13 setActive:1];

  v14 = v27->_footerView;
  v16 = [(AKSecondFactorContentViewController *)v27 view];
  v15 = [NSLayoutConstraint constraintWithItem:"constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" attribute:v14 relatedBy:4 toItem:0 attribute:1.0 multiplier:-16.0 constant:?];
  [(NSLayoutConstraint *)v15 setActive:1];
}

- (double)_codeGeneratorSpacing:(double)a3
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  v7 = +[AKCodeGenerationView _generatorLabelFont];
  [v7 _scaledValueForValue:v8];
  v5 = +[UIScreen mainScreen];
  UIRoundToScreenScale();
  v6 = v3;

  objc_storeStrong(&v7, 0);
  return v6;
}

@end