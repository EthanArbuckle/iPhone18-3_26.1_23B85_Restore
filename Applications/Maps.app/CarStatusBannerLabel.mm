@interface CarStatusBannerLabel
- (CarStatusBannerLabel)initWithChromeViewController:(id)controller;
- (id)maskImage;
- (void)dealloc;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)reloadContent;
- (void)valueChangedForGEOConfigKey:(id)key;
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
    isHighlighted = 1;
  }

  else
  {
    isHighlighted = [(CarStatusBannerLabel *)self isHighlighted];
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
  if (isHighlighted)
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
  lightLevelController = [WeakRetained lightLevelController];
  if ([lightLevelController shouldUseNightMode])
  {
    +[UIColor systemWhiteColor];
  }

  else
  {
    +[UIColor systemBlackColor];
  }
  v27 = ;

  v16 = objc_loadWeakRetained(&self->_chromeViewController);
  lightLevelController2 = [v16 lightLevelController];
  if ([lightLevelController2 shouldUseNightMode])
  {
    +[UIColor systemBlackColor];
  }

  else
  {
    +[UIColor systemWhiteColor];
  }
  v18 = ;

  if (isHighlighted)
  {
    v19 = v18;
  }

  else
  {
    v19 = v27;
  }

  [(MUFadingLabel *)self->_titleLabel setTextColor:v19];
  [(UIImageView *)self->_chevronImageView setTintColor:v19];
  if (isHighlighted)
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

- (void)valueChangedForGEOConfigKey:(id)key
{
  if (key.var0 == 569 && key.var1 == &unk_101642C20)
  {
    [(CarStatusBannerLabel *)self reloadContent];
  }
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = CarStatusBannerLabel;
  [(CarFocusableControl *)&v10 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinator];
  nextFocusedItem = [contextCopy nextFocusedItem];
  v8 = nextFocusedItem;
  if (nextFocusedItem == self)
  {

LABEL_5:
    [(CarStatusBannerLabel *)self reloadContent];
    goto LABEL_6;
  }

  previouslyFocusedItem = [contextCopy previouslyFocusedItem];

  if (previouslyFocusedItem == self)
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

- (CarStatusBannerLabel)initWithChromeViewController:(id)controller
{
  controllerCopy = controller;
  v76.receiver = self;
  v76.super_class = CarStatusBannerLabel;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(CarFocusableBlurControl *)&v76 initWithFrame:CGRectZero.origin.x, y, width, height];
  v9 = height;
  if (height)
  {
    [(CarFocusableBlurControl *)height setCastsShadow:0];
    [(CarFocusableBlurControl *)v9 setHidesBlur:1];
    [(CarStatusBannerLabel *)v9 setAccessibilityIdentifier:@"CarStatusBannerLabel"];
    v10 = objc_storeWeak(&v9->_chromeViewController, controllerCopy);
    v9->_sceneType = [controllerCopy sceneType];
    v75 = controllerCopy;

    v11 = [MUBlurView alloc];
    maskImage = [(CarStatusBannerLabel *)v9 maskImage];
    v13 = [v11 initWithVariableBlurWithRadius:maskImage maskImage:2.0];
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
    widthAnchor = [(MUBlurView *)v9->_blurView widthAnchor];
    v30 = [widthAnchor constraintEqualToConstant:172.0];
    widthConstraint = v9->_widthConstraint;
    v9->_widthConstraint = v30;

    WeakRetained = objc_loadWeakRetained(&v9->_chromeViewController);
    sceneType = [WeakRetained sceneType];

    if (sceneType == 1)
    {
      [(NSLayoutConstraint *)v9->_widthConstraint setActive:1];
    }

    topAnchor = [(MUBlurView *)v9->_blurView topAnchor];
    topAnchor2 = [(CarStatusBannerLabel *)v9 topAnchor];
    v36 = [topAnchor constraintEqualToAnchor:topAnchor2];
    topConstraint = v9->_topConstraint;
    v9->_topConstraint = v36;

    bottomAnchor = [(MUBlurView *)v9->_blurView bottomAnchor];
    bottomAnchor2 = [(CarStatusBannerLabel *)v9 bottomAnchor];
    v40 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    bottomConstraint = v9->_bottomConstraint;
    v9->_bottomConstraint = v40;

    leadingAnchor = [v28 leadingAnchor];
    leadingAnchor2 = [(CarStatusBannerLabel *)v9 leadingAnchor];
    v44 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:6.0];
    leadingConstraint = v9->_leadingConstraint;
    v9->_leadingConstraint = v44;

    trailingAnchor = [v28 trailingAnchor];
    trailingAnchor2 = [(CarStatusBannerLabel *)v9 trailingAnchor];
    v48 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-6.0];
    trailingConstraint = v9->_trailingConstraint;
    v9->_trailingConstraint = v48;

    leadingAnchor3 = [(MUBlurView *)v9->_blurView leadingAnchor];
    leadingAnchor4 = [(CarStatusBannerLabel *)v9 leadingAnchor];
    v72 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v77[0] = v72;
    trailingAnchor3 = [(MUBlurView *)v9->_blurView trailingAnchor];
    trailingAnchor4 = [(CarStatusBannerLabel *)v9 trailingAnchor];
    v69 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v77[1] = v69;
    v77[2] = v9->_topConstraint;
    v77[3] = v9->_bottomConstraint;
    topAnchor3 = [v28 topAnchor];
    topAnchor4 = [(CarStatusBannerLabel *)v9 topAnchor];
    v66 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v77[4] = v66;
    bottomAnchor3 = [v28 bottomAnchor];
    bottomAnchor4 = [(CarStatusBannerLabel *)v9 bottomAnchor];
    v63 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v77[5] = v63;
    v77[6] = v9->_leadingConstraint;
    v77[7] = v9->_trailingConstraint;
    centerXAnchor = [v28 centerXAnchor];
    centerXAnchor2 = [(CarStatusBannerLabel *)v9 centerXAnchor];
    v50 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v77[8] = v50;
    heightAnchor = [v28 heightAnchor];
    v52 = [heightAnchor constraintEqualToConstant:20.0];
    v77[9] = v52;
    widthAnchor2 = [(UIImageView *)v9->_chevronImageView widthAnchor];
    v54 = [widthAnchor2 constraintEqualToConstant:14.0];
    v77[10] = v54;
    heightAnchor2 = [(UIImageView *)v9->_chevronImageView heightAnchor];
    v56 = [heightAnchor2 constraintEqualToConstant:14.0];
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

    controllerCopy = v75;
  }

  return v9;
}

@end