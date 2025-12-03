@interface ExtensionsRidesharingTemplatedBannerView
- (CGSize)intrinsicContentSize;
- (ExtensionsRidesharingTemplatedBannerView)initWithCoder:(id)coder;
- (ExtensionsRidesharingTemplatedBannerView)initWithFrame:(CGRect)frame;
- (void)_commonInit;
- (void)_updateConstraints;
- (void)setAppIcon:(id)icon;
@end

@implementation ExtensionsRidesharingTemplatedBannerView

- (void)setAppIcon:(id)icon
{
  iconCopy = icon;
  if (iconCopy)
  {
    desaturatedAppIcon = self->_desaturatedAppIcon;
    if (!desaturatedAppIcon)
    {
      v6 = [[CIImage alloc] initWithImage:iconCopy];
      v19[0] = kCIInputImageKey;
      v19[1] = kCIInputSaturationKey;
      v20[0] = v6;
      v20[1] = &off_1016EDE18;
      v7 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
      v8 = [CIFilter filterWithName:@"CIColorControls" withInputParameters:v7];

      v9 = [CIContext alloc];
      v17 = kCIContextUseSoftwareRenderer;
      v18 = &__kCFBooleanFalse;
      v10 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v11 = [v9 initWithOptions:v10];

      outputImage = [v8 outputImage];
      [outputImage extent];
      v13 = [v11 createCGImage:outputImage fromRect:?];
      v14 = [[UIImage alloc] initWithCGImage:v13];
      v15 = self->_desaturatedAppIcon;
      self->_desaturatedAppIcon = v14;

      CGImageRelease(v13);
      desaturatedAppIcon = self->_desaturatedAppIcon;
    }

    appIconImageView = self->_appIconImageView;
  }

  else
  {
    appIconImageView = self->_appIconImageView;
    desaturatedAppIcon = 0;
  }

  [(UIImageView *)appIconImageView setImage:desaturatedAppIcon];
}

- (CGSize)intrinsicContentSize
{
  v2 = UIViewNoIntrinsicMetric;
  v3 = 145.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_updateConstraints
{
  [(ExtensionsRidesharingTemplatedBannerView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_appIconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_primaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_secondaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v3) = 1148846080;
  [(UIImageView *)self->_appIconImageView setContentCompressionResistancePriority:1 forAxis:v3];
  LODWORD(v4) = 1148846080;
  [(UIImageView *)self->_appIconImageView setContentCompressionResistancePriority:0 forAxis:v4];
  LODWORD(v5) = 1148846080;
  [(UILabel *)self->_primaryLabel setContentCompressionResistancePriority:1 forAxis:v5];
  LODWORD(v6) = 1148846080;
  [(UILabel *)self->_secondaryLabel setContentCompressionResistancePriority:1 forAxis:v6];
  v7 = objc_alloc_init(UILayoutGuide);
  [(ExtensionsRidesharingTemplatedBannerView *)self addLayoutGuide:v7];
  centerYAnchor = [v7 centerYAnchor];
  centerYAnchor2 = [(ExtensionsRidesharingTemplatedBannerView *)self centerYAnchor];
  v47 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v50[0] = v47;
  centerXAnchor = [v7 centerXAnchor];
  centerXAnchor2 = [(ExtensionsRidesharingTemplatedBannerView *)self centerXAnchor];
  v44 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v50[1] = v44;
  topAnchor = [v7 topAnchor];
  layoutMarginsGuide = [(ExtensionsRidesharingTemplatedBannerView *)self layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide topAnchor];
  v40 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:12.0];
  v50[2] = v40;
  bottomAnchor = [v7 bottomAnchor];
  layoutMarginsGuide2 = [(ExtensionsRidesharingTemplatedBannerView *)self layoutMarginsGuide];
  bottomAnchor2 = [layoutMarginsGuide2 bottomAnchor];
  v36 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2 constant:-12.0];
  v50[3] = v36;
  topAnchor3 = [(UIImageView *)self->_appIconImageView topAnchor];
  v31 = v7;
  topAnchor4 = [v7 topAnchor];
  v33 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v50[4] = v33;
  heightAnchor = [(UIImageView *)self->_appIconImageView heightAnchor];
  v30 = [heightAnchor constraintEqualToConstant:60.0];
  v50[5] = v30;
  widthAnchor = [(UIImageView *)self->_appIconImageView widthAnchor];
  heightAnchor2 = [(UIImageView *)self->_appIconImageView heightAnchor];
  v27 = [widthAnchor constraintEqualToAnchor:heightAnchor2 multiplier:1.0];
  v50[6] = v27;
  firstBaselineAnchor = [(UILabel *)self->_primaryLabel firstBaselineAnchor];
  bottomAnchor3 = [(UIImageView *)self->_appIconImageView bottomAnchor];
  v24 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor3 constant:26.0];
  v50[7] = v24;
  firstBaselineAnchor2 = [(UILabel *)self->_secondaryLabel firstBaselineAnchor];
  lastBaselineAnchor = [(UILabel *)self->_primaryLabel lastBaselineAnchor];
  v21 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor constant:20.0];
  v50[8] = v21;
  bottomAnchor4 = [v7 bottomAnchor];
  lastBaselineAnchor2 = [(UILabel *)self->_secondaryLabel lastBaselineAnchor];
  v18 = [bottomAnchor4 constraintEqualToAnchor:lastBaselineAnchor2];
  v50[9] = v18;
  centerXAnchor3 = [(ExtensionsRidesharingTemplatedBannerView *)self centerXAnchor];
  centerXAnchor4 = [(UIImageView *)self->_appIconImageView centerXAnchor];
  v10 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v50[10] = v10;
  centerXAnchor5 = [(ExtensionsRidesharingTemplatedBannerView *)self centerXAnchor];
  centerXAnchor6 = [(UILabel *)self->_primaryLabel centerXAnchor];
  v13 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  v50[11] = v13;
  centerXAnchor7 = [(ExtensionsRidesharingTemplatedBannerView *)self centerXAnchor];
  centerXAnchor8 = [(UILabel *)self->_secondaryLabel centerXAnchor];
  v16 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
  v50[12] = v16;
  v17 = [NSArray arrayWithObjects:v50 count:13];
  [NSLayoutConstraint activateConstraints:v17];
}

- (void)_commonInit
{
  [(ExtensionsRidesharingTemplatedBannerView *)self setLeftHairlineInset:16.0];
  [(ExtensionsRidesharingTemplatedBannerView *)self setRightHairlineInset:0.0];
  v3 = objc_alloc_init(UIImageView);
  appIconImageView = self->_appIconImageView;
  self->_appIconImageView = v3;

  [(UIImageView *)self->_appIconImageView setAlpha:0.100000001];
  v5 = objc_alloc_init(UILabel);
  primaryLabel = self->_primaryLabel;
  self->_primaryLabel = v5;

  v7 = objc_alloc_init(UILabel);
  secondaryLabel = self->_secondaryLabel;
  self->_secondaryLabel = v7;

  v9 = +[UIColor blackColor];
  [(UILabel *)self->_primaryLabel setTextColor:v9];

  v10 = [UIColor colorWithWhite:0.0 alpha:0.5];
  [(UILabel *)self->_secondaryLabel setTextColor:v10];

  v11 = [UIColor colorWithWhite:0.899999976 alpha:1.0];
  [(ExtensionsRidesharingTemplatedBannerView *)self setBackgroundColor:v11];

  [(ExtensionsRidesharingTemplatedBannerView *)self addSubview:self->_appIconImageView];
  [(ExtensionsRidesharingTemplatedBannerView *)self addSubview:self->_primaryLabel];
  [(ExtensionsRidesharingTemplatedBannerView *)self addSubview:self->_secondaryLabel];
  [DynamicTypeWizard autorefreshLabel:self->_primaryLabel withFontProvider:&stru_10165D908];
  [DynamicTypeWizard autorefreshLabel:self->_secondaryLabel withFontProvider:&stru_10165D908];

  [(ExtensionsRidesharingTemplatedBannerView *)self _updateConstraints];
}

- (ExtensionsRidesharingTemplatedBannerView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = ExtensionsRidesharingTemplatedBannerView;
  v3 = [(ExtensionsRidesharingTemplatedBannerView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(ExtensionsRidesharingTemplatedBannerView *)v3 _commonInit];
  }

  return v4;
}

- (ExtensionsRidesharingTemplatedBannerView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ExtensionsRidesharingTemplatedBannerView;
  v3 = [(ExtensionsRidesharingTemplatedBannerView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(ExtensionsRidesharingTemplatedBannerView *)v3 _commonInit];
  }

  return v4;
}

@end