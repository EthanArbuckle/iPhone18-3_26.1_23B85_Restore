@interface SharedTripNavBannerView
- (BOOL)bannerShouldShow;
- (SharedTripNavBannerView)initWithFrame:(CGRect)frame;
- (double)buttonHeightConstant;
- (void)_updateButtonHeightConstraint;
- (void)_updateFonts;
- (void)dealloc;
- (void)traitCollectionDidChange:(id)change;
- (void)updateButtonTitle;
- (void)updateTheme;
@end

@implementation SharedTripNavBannerView

- (void)updateTheme
{
  shareETAButton = self->_shareETAButton;
  theme = [(SharedTripNavBannerView *)self theme];
  keyColor = [theme keyColor];
  [(UIButton *)shareETAButton setTitleColor:keyColor forState:0];
}

- (double)buttonHeightConstant
{
  titleLabel = [(UIButton *)self->_shareETAButton titleLabel];
  font = [titleLabel font];
  [font _mapkit_scaledValueForValue:46.0];
  v5 = v4;

  return v5;
}

- (void)_updateFonts
{
  traitCollection = [(SharedTripNavBannerView *)self traitCollection];
  v3 = [traitCollection _maps_traitCollectionByClampingContentSizeCategoryWithMinimumContentSizeCategory:0 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  v4 = [UIFont system20CompatibleWithTraitCollection:v3];
  titleLabel = [(UIButton *)self->_shareETAButton titleLabel];
  [titleLabel setFont:v4];
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
  receivers = [v3 receivers];

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"[Share ETA] nav banner button" value:@"localized string not found" table:0];

  shareETAButton = self->_shareETAButton;
  v7 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v5, [receivers count]);
  [(UIButton *)shareETAButton setTitle:v7 forState:0];
}

- (BOOL)bannerShouldShow
{
  v2 = +[MSPSharedTripService sharedInstance];
  receivers = [v2 receivers];
  v4 = [receivers count] != 0;

  return v4;
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = SharedTripNavBannerView;
  changeCopy = change;
  [(MapsThemeView *)&v9 traitCollectionDidChange:changeCopy];
  v5 = [(SharedTripNavBannerView *)self traitCollection:v9.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  v8 = sub_10008FB5C(preferredContentSizeCategory, preferredContentSizeCategory2);
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

- (SharedTripNavBannerView)initWithFrame:(CGRect)frame
{
  v41.receiver = self;
  v41.super_class = SharedTripNavBannerView;
  v3 = [(SharedTripNavBannerView *)&v41 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    contentView = [(UIVisualEffectView *)v3->_backgroundView contentView];
    [contentView addSubview:v3->_shareETAButton];

    v9 = v3->_backgroundView;
    window = [(UIVisualEffectView *)v9 window];
    screen = [window screen];
    if (screen)
    {
      window2 = [(UIVisualEffectView *)v9 window];
      screen2 = [window2 screen];
      [screen2 nativeScale];
      v15 = v14;
    }

    else
    {
      window2 = +[UIScreen mainScreen];
      [window2 nativeScale];
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

    heightAnchor = [(UIButton *)v3->_shareETAButton heightAnchor];
    v19 = [heightAnchor constraintEqualToConstant:0.0];
    buttonHeightConstraint = v3->_buttonHeightConstraint;
    v3->_buttonHeightConstraint = v19;

    heightAnchor2 = [(UIVisualEffectView *)v3->_backgroundView heightAnchor];
    heightAnchor3 = [(SharedTripNavBannerView *)v3 heightAnchor];
    v38 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3 constant:-v17];
    v42[0] = v38;
    widthAnchor = [(UIVisualEffectView *)v3->_backgroundView widthAnchor];
    widthAnchor2 = [(SharedTripNavBannerView *)v3 widthAnchor];
    v35 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v42[1] = v35;
    topAnchor = [(UIVisualEffectView *)v3->_backgroundView topAnchor];
    topAnchor2 = [(SharedTripNavBannerView *)v3 topAnchor];
    v32 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v17];
    v42[2] = v32;
    widthAnchor3 = [(UIButton *)v3->_shareETAButton widthAnchor];
    widthAnchor4 = [(SharedTripNavBannerView *)v3 widthAnchor];
    v22 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
    v42[3] = v22;
    v42[4] = v3->_buttonHeightConstraint;
    centerXAnchor = [(UIButton *)v3->_shareETAButton centerXAnchor];
    centerXAnchor2 = [(SharedTripNavBannerView *)v3 centerXAnchor];
    v25 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v42[5] = v25;
    topAnchor3 = [(UIButton *)v3->_shareETAButton topAnchor];
    topAnchor4 = [(SharedTripNavBannerView *)v3 topAnchor];
    v28 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v42[6] = v28;
    v29 = [NSArray arrayWithObjects:v42 count:7];
    [NSLayoutConstraint activateConstraints:v29];

    [(SharedTripNavBannerView *)v3 _updateFonts];
    [(SharedTripNavBannerView *)v3 _updateButtonHeightConstraint];
  }

  return v3;
}

@end