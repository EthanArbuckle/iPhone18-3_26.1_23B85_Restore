@interface CarStatusBannerLabel
- (CarStatusBannerLabel)initWithChromeViewController:(id)a3;
- (id)maskImage;
- (void)dealloc;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)reloadContent;
- (void)valueChangedForGEOConfigKey:(id)a3;
@end

@implementation CarStatusBannerLabel

- (void)reloadContent
{
  if (self->_navigationGuidanceSignStyle == 1)
  {
    v3 = +[MNNavigationService sharedService];
    if ([v3 isInNavigatingState])
    {
      v4 = self->_sceneType == 1;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  if (([(CarStatusBannerLabel *)self isFocused]& 1) != 0 || ([(CarStatusBannerLabel *)self isSelected]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = [(CarStatusBannerLabel *)self isHighlighted];
  }

  v6 = +[NSBundle mainBundle];
  v7 = v6;
  if (v4)
  {
    v8 = [v6 localizedStringForKey:@"Offline" value:@"localized string not found" table:@"Offline"];
    [(MUFadingLabel *)self->_titleLabel setText:v8];

    v9 = 100.0;
  }

  else
  {
    v10 = [v6 localizedStringForKey:@"Using Offline Maps" value:@"localized string not found" table:@"Offline"];
    [(MUFadingLabel *)self->_titleLabel setText:v10];

    [(CarStatusBannerLabel *)self _bannerWidthFull];
  }

  [(NSLayoutConstraint *)self->_widthConstraint setConstant:v9];
  BOOL = GEOConfigGetBOOL();
  [(CarFocusableControl *)self setEnabled:BOOL];
  [(UIImageView *)self->_chevronImageView setHidden:BOOL ^ 1];
  if (v5)
  {
    v12 = @"chevron.forward.circle.fill";
  }

  else
  {
    v12 = @"chevron.forward";
  }

  v13 = [UIImage systemImageNamed:v12];
  [(UIImageView *)self->_chevronImageView setImage:v13];

  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v15 = [WeakRetained lightLevelController];
  if ([v15 shouldUseNightMode])
  {
    +[UIColor systemWhiteColor];
  }

  else
  {
    +[UIColor systemBlackColor];
  }
  v27 = ;

  v16 = objc_loadWeakRetained(&self->_chromeViewController);
  v17 = [v16 lightLevelController];
  if ([v17 shouldUseNightMode])
  {
    +[UIColor systemBlackColor];
  }

  else
  {
    +[UIColor systemWhiteColor];
  }
  v18 = ;

  if (v5)
  {
    v19 = v18;
  }

  else
  {
    v19 = v27;
  }

  [(MUFadingLabel *)self->_titleLabel setTextColor:v19];
  [(UIImageView *)self->_chevronImageView setTintColor:v19];
  if (v5)
  {
    v20 = +[UIColor _carSystemFocusColor];
    p_blurView = &self->_blurView;
    [(MUBlurView *)self->_blurView setNonBlurredColor:v20];

    v22 = 0.0;
    v23 = -4.0;
    v24 = 2;
    v25 = 0.0;
  }

  else
  {
    v26 = +[UIColor clearColor];
    p_blurView = &self->_blurView;
    [(MUBlurView *)self->_blurView setNonBlurredColor:v26];

    if (self->_disableBlur)
    {
      v24 = 2;
    }

    else
    {
      v24 = 0;
    }

    v25 = -15.0;
    v22 = 15.0;
    v23 = -6.0;
  }

  [(MUBlurView *)*p_blurView setStyle:v24];
  [(MUBlurView *)*p_blurView _setContinuousCornerRadius:10.0];
  [(NSLayoutConstraint *)self->_topConstraint setConstant:v25];
  [(NSLayoutConstraint *)self->_bottomConstraint setConstant:v22];
  [(NSLayoutConstraint *)self->_trailingConstraint setConstant:v23];
}

- (void)valueChangedForGEOConfigKey:(id)a3
{
  if (a3.var0 == 569 && a3.var1 == &unk_101642C20)
  {
    [(CarStatusBannerLabel *)self reloadContent];
  }
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = CarStatusBannerLabel;
  [(CarFocusableControl *)&v10 didUpdateFocusInContext:v6 withAnimationCoordinator:a4];
  v7 = [v6 nextFocusedItem];
  v8 = v7;
  if (v7 == self)
  {

LABEL_5:
    [(CarStatusBannerLabel *)self reloadContent];
    goto LABEL_6;
  }

  v9 = [v6 previouslyFocusedItem];

  if (v9 == self)
  {
    goto LABEL_5;
  }

LABEL_6:
}

- (id)maskImage
{
  v3 = [UIImage imageNamed:@"OfflineBannerBlur"];
  [(CarStatusBannerLabel *)self _bannerWidthFull];
  v9.width = v5 + 30.0;
  width = v9.width;
  v9.height = 50.0;
  UIGraphicsBeginImageContextWithOptions(v9, 0, 0.0);
  [v3 drawInRect:{0.0, 0.0, width, 50.0}];
  v6 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v6;
}

- (void)dealloc
{
  v3 = +[MapsLightLevelController sharedController];
  [v3 removeObserver:self];

  GEOConfigRemoveDelegateListenerForAllKeys();
  v4.receiver = self;
  v4.super_class = CarStatusBannerLabel;
  [(CarStatusBannerLabel *)&v4 dealloc];
}

- (CarStatusBannerLabel)initWithChromeViewController:(id)a3
{
  v4 = a3;
  v76.receiver = self;
  v76.super_class = CarStatusBannerLabel;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v8 = [(CarFocusableBlurControl *)&v76 initWithFrame:CGRectZero.origin.x, y, width, height];
  v9 = v8;
  if (v8)
  {
    [(CarFocusableBlurControl *)v8 setCastsShadow:0];
    [(CarFocusableBlurControl *)v9 setHidesBlur:1];
    [(CarStatusBannerLabel *)v9 setAccessibilityIdentifier:@"CarStatusBannerLabel"];
    v10 = objc_storeWeak(&v9->_chromeViewController, v4);
    v9->_sceneType = [v4 sceneType];
    v75 = v4;

    v11 = [MUBlurView alloc];
    v12 = [(CarStatusBannerLabel *)v9 maskImage];
    v13 = [v11 initWithVariableBlurWithRadius:v12 maskImage:2.0];
    blurView = v9->_blurView;
    v9->_blurView = v13;

    [(MUBlurView *)v9->_blurView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CarFocusableControl *)v9 addSubview:v9->_blurView];
    v15 = [[MUFadingLabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    titleLabel = v9->_titleLabel;
    v9->_titleLabel = v15;

    [(MUFadingLabel *)v9->_titleLabel setAccessibilityIdentifier:@"TitleLabel"];
    [(MUFadingLabel *)v9->_titleLabel setNumberOfLines:1];
    [(MUFadingLabel *)v9->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v17) = 1148846080;
    [(MUFadingLabel *)v9->_titleLabel setContentHuggingPriority:0 forAxis:v17];
    LODWORD(v18) = 1132068864;
    [(MUFadingLabel *)v9->_titleLabel setContentCompressionResistancePriority:0 forAxis:v18];
    [(MUFadingLabel *)v9->_titleLabel setTextAlignment:1];
    v19 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCaption2 weight:UIFontWeightRegular];
    [(MUFadingLabel *)v9->_titleLabel setFont:v19];

    v20 = +[UIColor clearColor];
    [(MUFadingLabel *)v9->_titleLabel setBackgroundColor:v20];

    [(MUFadingLabel *)v9->_titleLabel setBaselineAdjustment:1];
    v21 = objc_alloc_init(UIImageView);
    chevronImageView = v9->_chevronImageView;
    v9->_chevronImageView = v21;

    [(UIImageView *)v9->_chevronImageView setAccessibilityIdentifier:@"ChevronImageView"];
    [(UIImageView *)v9->_chevronImageView setContentMode:1];
    v23 = +[UIColor darkGrayColor];
    [(UIImageView *)v9->_chevronImageView setTintColor:v23];

    [(UIImageView *)v9->_chevronImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v24) = 1148846080;
    [(UIImageView *)v9->_chevronImageView setContentHuggingPriority:0 forAxis:v24];
    LODWORD(v25) = 1148846080;
    [(UIImageView *)v9->_chevronImageView setContentCompressionResistancePriority:0 forAxis:v25];
    [(UIImageView *)v9->_chevronImageView setHidden:1];
    v26 = [UIStackView alloc];
    v78[0] = v9->_titleLabel;
    v78[1] = v9->_chevronImageView;
    v27 = [NSArray arrayWithObjects:v78 count:2];
    v28 = [v26 initWithArrangedSubviews:v27];

    [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v28 setAxis:0];
    [v28 setDistribution:0];
    [v28 setSpacing:3.0];
    [v28 setAlignment:3];
    [(CarFocusableControl *)v9 addSubview:v28];
    v29 = [(MUBlurView *)v9->_blurView widthAnchor];
    v30 = [v29 constraintEqualToConstant:172.0];
    widthConstraint = v9->_widthConstraint;
    v9->_widthConstraint = v30;

    WeakRetained = objc_loadWeakRetained(&v9->_chromeViewController);
    v33 = [WeakRetained sceneType];

    if (v33 == 1)
    {
      [(NSLayoutConstraint *)v9->_widthConstraint setActive:1];
    }

    v34 = [(MUBlurView *)v9->_blurView topAnchor];
    v35 = [(CarStatusBannerLabel *)v9 topAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];
    topConstraint = v9->_topConstraint;
    v9->_topConstraint = v36;

    v38 = [(MUBlurView *)v9->_blurView bottomAnchor];
    v39 = [(CarStatusBannerLabel *)v9 bottomAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];
    bottomConstraint = v9->_bottomConstraint;
    v9->_bottomConstraint = v40;

    v42 = [v28 leadingAnchor];
    v43 = [(CarStatusBannerLabel *)v9 leadingAnchor];
    v44 = [v42 constraintGreaterThanOrEqualToAnchor:v43 constant:6.0];
    leadingConstraint = v9->_leadingConstraint;
    v9->_leadingConstraint = v44;

    v46 = [v28 trailingAnchor];
    v47 = [(CarStatusBannerLabel *)v9 trailingAnchor];
    v48 = [v46 constraintLessThanOrEqualToAnchor:v47 constant:-6.0];
    trailingConstraint = v9->_trailingConstraint;
    v9->_trailingConstraint = v48;

    v74 = [(MUBlurView *)v9->_blurView leadingAnchor];
    v73 = [(CarStatusBannerLabel *)v9 leadingAnchor];
    v72 = [v74 constraintEqualToAnchor:v73];
    v77[0] = v72;
    v71 = [(MUBlurView *)v9->_blurView trailingAnchor];
    v70 = [(CarStatusBannerLabel *)v9 trailingAnchor];
    v69 = [v71 constraintEqualToAnchor:v70];
    v77[1] = v69;
    v77[2] = v9->_topConstraint;
    v77[3] = v9->_bottomConstraint;
    v68 = [v28 topAnchor];
    v67 = [(CarStatusBannerLabel *)v9 topAnchor];
    v66 = [v68 constraintEqualToAnchor:v67];
    v77[4] = v66;
    v65 = [v28 bottomAnchor];
    v64 = [(CarStatusBannerLabel *)v9 bottomAnchor];
    v63 = [v65 constraintEqualToAnchor:v64];
    v77[5] = v63;
    v77[6] = v9->_leadingConstraint;
    v77[7] = v9->_trailingConstraint;
    v62 = [v28 centerXAnchor];
    v61 = [(CarStatusBannerLabel *)v9 centerXAnchor];
    v50 = [v62 constraintEqualToAnchor:v61];
    v77[8] = v50;
    v51 = [v28 heightAnchor];
    v52 = [v51 constraintEqualToConstant:20.0];
    v77[9] = v52;
    v53 = [(UIImageView *)v9->_chevronImageView widthAnchor];
    v54 = [v53 constraintEqualToConstant:14.0];
    v77[10] = v54;
    v55 = [(UIImageView *)v9->_chevronImageView heightAnchor];
    v56 = [v55 constraintEqualToConstant:14.0];
    v77[11] = v56;
    v57 = [NSArray arrayWithObjects:v77 count:12];
    [NSLayoutConstraint activateConstraints:v57];

    v58 = +[MapsLightLevelController sharedController];
    [v58 addObserver:v9];

    _GEOConfigAddDelegateListenerForKey();
    v59 = +[NSNotificationCenter defaultCenter];
    [v59 addObserver:v9 selector:"guidanceSignStyleUpdatedNotification:" name:@"CarNavigationGuidanceSignStyleUpdatedNotification" object:0];

    v9->_navigationGuidanceSignStyle = 0;
    v9->_disableBlur = GEOConfigGetBOOL();
    [(CarStatusBannerLabel *)v9 reloadContent];

    v4 = v75;
  }

  return v9;
}

@end