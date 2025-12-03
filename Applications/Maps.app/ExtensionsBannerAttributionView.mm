@interface ExtensionsBannerAttributionView
- (CGSize)intrinsicContentSize;
- (ExtensionsBannerAttributionView)initWithCoder:(id)coder;
- (ExtensionsBannerAttributionView)initWithFrame:(CGRect)frame;
- (void)_commonInit;
- (void)_setupConstraints;
@end

@implementation ExtensionsBannerAttributionView

- (CGSize)intrinsicContentSize
{
  v2 = UIViewNoIntrinsicMetric;
  v3 = 24.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_setupConstraints
{
  leadingAnchor = [(UILabel *)self->_attributionLabel leadingAnchor];
  leadingAnchor2 = [(ExtensionsBannerAttributionView *)self leadingAnchor];
  v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v16[0] = v13;
  trailingAnchor = [(UILabel *)self->_attributionLabel trailingAnchor];
  trailingAnchor2 = [(ExtensionsBannerAttributionView *)self trailingAnchor];
  v5 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  v16[1] = v5;
  topAnchor = [(UILabel *)self->_attributionLabel topAnchor];
  topAnchor2 = [(ExtensionsBannerAttributionView *)self topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
  v16[2] = v8;
  bottomAnchor = [(UILabel *)self->_attributionLabel bottomAnchor];
  bottomAnchor2 = [(ExtensionsBannerAttributionView *)self bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
  v16[3] = v11;
  v12 = [NSArray arrayWithObjects:v16 count:4];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)_commonInit
{
  [(ExtensionsBannerAttributionView *)self setTopHairlineHidden:1];
  [(ExtensionsBannerAttributionView *)self setBottomHairlineHidden:1];
  v3 = +[UIColor blackColor];
  v4 = [v3 colorWithAlphaComponent:0.0700000003];
  [(ExtensionsBannerAttributionView *)self setBackgroundColor:v4];

  v5 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  attributionLabel = self->_attributionLabel;
  self->_attributionLabel = v5;

  [(UILabel *)self->_attributionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_attributionLabel setTextAlignment:1];
  [(UILabel *)self->_attributionLabel setNumberOfLines:1];
  v7 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_attributionLabel setTextColor:v7];

  [DynamicTypeWizard autorefreshLabel:self->_attributionLabel withFontProvider:&stru_10165D988];
  [(ExtensionsBannerAttributionView *)self addSubview:self->_attributionLabel];

  [(ExtensionsBannerAttributionView *)self _setupConstraints];
}

- (ExtensionsBannerAttributionView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = ExtensionsBannerAttributionView;
  v3 = [(ExtensionsBannerAttributionView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(ExtensionsBannerAttributionView *)v3 _commonInit];
  }

  return v4;
}

- (ExtensionsBannerAttributionView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ExtensionsBannerAttributionView;
  v3 = [(ExtensionsBannerAttributionView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(ExtensionsBannerAttributionView *)v3 _commonInit];
  }

  return v4;
}

@end