@interface ExtensionsRidesharingTemplatedBannerView
- (CGSize)intrinsicContentSize;
- (ExtensionsRidesharingTemplatedBannerView)initWithCoder:(id)a3;
- (ExtensionsRidesharingTemplatedBannerView)initWithFrame:(CGRect)a3;
- (void)_commonInit;
- (void)_updateConstraints;
- (void)setAppIcon:(id)a3;
@end

@implementation ExtensionsRidesharingTemplatedBannerView

- (void)setAppIcon:(id)a3
{
  v4 = a3;
  if (v4)
  {
    desaturatedAppIcon = self->_desaturatedAppIcon;
    if (!desaturatedAppIcon)
    {
      v6 = [[CIImage alloc] initWithImage:v4];
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

      v12 = [v8 outputImage];
      [v12 extent];
      v13 = [v11 createCGImage:v12 fromRect:?];
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
  v49 = [v7 centerYAnchor];
  v48 = [(ExtensionsRidesharingTemplatedBannerView *)self centerYAnchor];
  v47 = [v49 constraintEqualToAnchor:v48];
  v50[0] = v47;
  v46 = [v7 centerXAnchor];
  v45 = [(ExtensionsRidesharingTemplatedBannerView *)self centerXAnchor];
  v44 = [v46 constraintEqualToAnchor:v45];
  v50[1] = v44;
  v42 = [v7 topAnchor];
  v43 = [(ExtensionsRidesharingTemplatedBannerView *)self layoutMarginsGuide];
  v41 = [v43 topAnchor];
  v40 = [v42 constraintGreaterThanOrEqualToAnchor:v41 constant:12.0];
  v50[2] = v40;
  v38 = [v7 bottomAnchor];
  v39 = [(ExtensionsRidesharingTemplatedBannerView *)self layoutMarginsGuide];
  v37 = [v39 bottomAnchor];
  v36 = [v38 constraintLessThanOrEqualToAnchor:v37 constant:-12.0];
  v50[3] = v36;
  v35 = [(UIImageView *)self->_appIconImageView topAnchor];
  v31 = v7;
  v34 = [v7 topAnchor];
  v33 = [v35 constraintEqualToAnchor:v34];
  v50[4] = v33;
  v32 = [(UIImageView *)self->_appIconImageView heightAnchor];
  v30 = [v32 constraintEqualToConstant:60.0];
  v50[5] = v30;
  v29 = [(UIImageView *)self->_appIconImageView widthAnchor];
  v28 = [(UIImageView *)self->_appIconImageView heightAnchor];
  v27 = [v29 constraintEqualToAnchor:v28 multiplier:1.0];
  v50[6] = v27;
  v26 = [(UILabel *)self->_primaryLabel firstBaselineAnchor];
  v25 = [(UIImageView *)self->_appIconImageView bottomAnchor];
  v24 = [v26 constraintEqualToAnchor:v25 constant:26.0];
  v50[7] = v24;
  v23 = [(UILabel *)self->_secondaryLabel firstBaselineAnchor];
  v22 = [(UILabel *)self->_primaryLabel lastBaselineAnchor];
  v21 = [v23 constraintEqualToAnchor:v22 constant:20.0];
  v50[8] = v21;
  v20 = [v7 bottomAnchor];
  v19 = [(UILabel *)self->_secondaryLabel lastBaselineAnchor];
  v18 = [v20 constraintEqualToAnchor:v19];
  v50[9] = v18;
  v8 = [(ExtensionsRidesharingTemplatedBannerView *)self centerXAnchor];
  v9 = [(UIImageView *)self->_appIconImageView centerXAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v50[10] = v10;
  v11 = [(ExtensionsRidesharingTemplatedBannerView *)self centerXAnchor];
  v12 = [(UILabel *)self->_primaryLabel centerXAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v50[11] = v13;
  v14 = [(ExtensionsRidesharingTemplatedBannerView *)self centerXAnchor];
  v15 = [(UILabel *)self->_secondaryLabel centerXAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
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

- (ExtensionsRidesharingTemplatedBannerView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = ExtensionsRidesharingTemplatedBannerView;
  v3 = [(ExtensionsRidesharingTemplatedBannerView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(ExtensionsRidesharingTemplatedBannerView *)v3 _commonInit];
  }

  return v4;
}

- (ExtensionsRidesharingTemplatedBannerView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ExtensionsRidesharingTemplatedBannerView;
  v3 = [(ExtensionsRidesharingTemplatedBannerView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(ExtensionsRidesharingTemplatedBannerView *)v3 _commonInit];
  }

  return v4;
}

@end