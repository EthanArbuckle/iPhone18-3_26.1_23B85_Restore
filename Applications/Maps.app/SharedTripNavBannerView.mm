@interface SharedTripNavBannerView
- (BOOL)bannerShouldShow;
- (SharedTripNavBannerView)initWithFrame:(CGRect)a3;
- (double)buttonHeightConstant;
- (void)_updateButtonHeightConstraint;
- (void)_updateFonts;
- (void)dealloc;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateButtonTitle;
- (void)updateTheme;
@end

@implementation SharedTripNavBannerView

- (void)updateTheme
{
  shareETAButton = self->_shareETAButton;
  v4 = [(SharedTripNavBannerView *)self theme];
  v3 = [v4 keyColor];
  [(UIButton *)shareETAButton setTitleColor:v3 forState:0];
}

- (double)buttonHeightConstant
{
  v2 = [(UIButton *)self->_shareETAButton titleLabel];
  v3 = [v2 font];
  [v3 _mapkit_scaledValueForValue:46.0];
  v5 = v4;

  return v5;
}

- (void)_updateFonts
{
  v6 = [(SharedTripNavBannerView *)self traitCollection];
  v3 = [v6 _maps_traitCollectionByClampingContentSizeCategoryWithMinimumContentSizeCategory:0 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  v4 = [UIFont system20CompatibleWithTraitCollection:v3];
  v5 = [(UIButton *)self->_shareETAButton titleLabel];
  [v5 setFont:v4];
}

- (void)_updateButtonHeightConstraint
{
  [(SharedTripNavBannerView *)self buttonHeightConstant];
  buttonHeightConstraint = self->_buttonHeightConstraint;

  [(NSLayoutConstraint *)buttonHeightConstraint setConstant:?];
}

- (void)updateButtonTitle
{
  v3 = +[MSPSharedTripService sharedInstance];
  v8 = [v3 receivers];

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"[Share ETA] nav banner button" value:@"localized string not found" table:0];

  shareETAButton = self->_shareETAButton;
  v7 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v5, [v8 count]);
  [(UIButton *)shareETAButton setTitle:v7 forState:0];
}

- (BOOL)bannerShouldShow
{
  v2 = +[MSPSharedTripService sharedInstance];
  v3 = [v2 receivers];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = SharedTripNavBannerView;
  v4 = a3;
  [(MapsThemeView *)&v9 traitCollectionDidChange:v4];
  v5 = [(SharedTripNavBannerView *)self traitCollection:v9.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  v8 = sub_10008FB5C(v6, v7);
  if (v8)
  {
    [(SharedTripNavBannerView *)self _updateFonts];
    [(SharedTripNavBannerView *)self _updateButtonHeightConstraint];
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SharedTripNavBannerView;
  [(SharedTripNavBannerView *)&v4 dealloc];
}

- (SharedTripNavBannerView)initWithFrame:(CGRect)a3
{
  v41.receiver = self;
  v41.super_class = SharedTripNavBannerView;
  v3 = [(SharedTripNavBannerView *)&v41 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MapsTheme visualEffectViewAllowingBlur:1];
    backgroundView = v3->_backgroundView;
    v3->_backgroundView = v4;

    [(UIVisualEffectView *)v3->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SharedTripNavBannerView *)v3 addSubview:v3->_backgroundView];
    v6 = [UIButton buttonWithType:0];
    shareETAButton = v3->_shareETAButton;
    v3->_shareETAButton = v6;

    [(UIButton *)v3->_shareETAButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [(UIVisualEffectView *)v3->_backgroundView contentView];
    [v8 addSubview:v3->_shareETAButton];

    v9 = v3->_backgroundView;
    v10 = [(UIVisualEffectView *)v9 window];
    v11 = [v10 screen];
    if (v11)
    {
      v12 = [(UIVisualEffectView *)v9 window];
      v13 = [v12 screen];
      [v13 nativeScale];
      v15 = v14;
    }

    else
    {
      v12 = +[UIScreen mainScreen];
      [v12 nativeScale];
      v15 = v16;
    }

    if (v15 <= 0.0)
    {
      v17 = 1.0;
    }

    else
    {
      v17 = 1.0 / v15;
    }

    v18 = [(UIButton *)v3->_shareETAButton heightAnchor];
    v19 = [v18 constraintEqualToConstant:0.0];
    buttonHeightConstraint = v3->_buttonHeightConstraint;
    v3->_buttonHeightConstraint = v19;

    v40 = [(UIVisualEffectView *)v3->_backgroundView heightAnchor];
    v39 = [(SharedTripNavBannerView *)v3 heightAnchor];
    v38 = [v40 constraintEqualToAnchor:v39 constant:-v17];
    v42[0] = v38;
    v37 = [(UIVisualEffectView *)v3->_backgroundView widthAnchor];
    v36 = [(SharedTripNavBannerView *)v3 widthAnchor];
    v35 = [v37 constraintEqualToAnchor:v36];
    v42[1] = v35;
    v34 = [(UIVisualEffectView *)v3->_backgroundView topAnchor];
    v33 = [(SharedTripNavBannerView *)v3 topAnchor];
    v32 = [v34 constraintEqualToAnchor:v33 constant:v17];
    v42[2] = v32;
    v31 = [(UIButton *)v3->_shareETAButton widthAnchor];
    v21 = [(SharedTripNavBannerView *)v3 widthAnchor];
    v22 = [v31 constraintEqualToAnchor:v21];
    v42[3] = v22;
    v42[4] = v3->_buttonHeightConstraint;
    v23 = [(UIButton *)v3->_shareETAButton centerXAnchor];
    v24 = [(SharedTripNavBannerView *)v3 centerXAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
    v42[5] = v25;
    v26 = [(UIButton *)v3->_shareETAButton topAnchor];
    v27 = [(SharedTripNavBannerView *)v3 topAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];
    v42[6] = v28;
    v29 = [NSArray arrayWithObjects:v42 count:7];
    [NSLayoutConstraint activateConstraints:v29];

    [(SharedTripNavBannerView *)v3 _updateFonts];
    [(SharedTripNavBannerView *)v3 _updateButtonHeightConstraint];
  }

  return v3;
}

@end