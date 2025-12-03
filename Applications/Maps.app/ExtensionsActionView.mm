@interface ExtensionsActionView
- (CGSize)intrinsicContentSize;
- (ExtensionsActionView)initWithCoder:(id)coder;
- (ExtensionsActionView)initWithFrame:(CGRect)frame;
- (void)_commonInit;
- (void)_didTap;
- (void)updateTheme;
@end

@implementation ExtensionsActionView

- (void)_didTap
{
  didTapButton = [(ExtensionsActionView *)self didTapButton];

  if (didTapButton)
  {
    didTapButton2 = [(ExtensionsActionView *)self didTapButton];
    didTapButton2[2]();
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = UIViewNoIntrinsicMetric;
  v3 = 60.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)updateTheme
{
  theme = [(ExtensionsActionView *)self theme];
  hairlineColor = [theme hairlineColor];
  [(ExtensionsActionView *)self setHairlineColor:hairlineColor];
}

- (void)_commonInit
{
  [(ExtensionsActionView *)self setLeftHairlineInset:16.0];
  [(ExtensionsActionView *)self setRightHairlineInset:0.0];
  [(ExtensionsActionView *)self setTopHairlineHidden:0];
  [(ExtensionsActionView *)self setBottomHairlineHidden:1];
  v3 = [UIButton buttonWithType:1];
  button = self->_button;
  self->_button = v3;

  [(ExtensionsActionView *)self addSubview:self->_button];
  titleLabel = [(UIButton *)self->_button titleLabel];
  [DynamicTypeWizard autorefreshLabel:titleLabel withFontProvider:&stru_10165D908];

  [(UIButton *)self->_button setTranslatesAutoresizingMaskIntoConstraints:0];
  leadingAnchor = [(UIButton *)self->_button leadingAnchor];
  leadingAnchor2 = [(ExtensionsActionView *)self leadingAnchor];
  v6 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v16[0] = v6;
  centerYAnchor = [(ExtensionsActionView *)self centerYAnchor];
  centerYAnchor2 = [(UIButton *)self->_button centerYAnchor];
  v9 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v16[1] = v9;
  trailingAnchor = [(ExtensionsActionView *)self trailingAnchor];
  trailingAnchor2 = [(UIButton *)self->_button trailingAnchor];
  v12 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2 constant:16.0];
  v16[2] = v12;
  v13 = [NSArray arrayWithObjects:v16 count:3];
  [NSLayoutConstraint activateConstraints:v13];

  [(UIButton *)self->_button addTarget:self action:"_didTap" forControlEvents:0x2000];
}

- (ExtensionsActionView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ExtensionsActionView;
  v3 = [(ExtensionsActionView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(ExtensionsActionView *)v3 _commonInit];
  }

  return v4;
}

- (ExtensionsActionView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = ExtensionsActionView;
  v3 = [(ExtensionsActionView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(ExtensionsActionView *)v3 _commonInit];
  }

  return v4;
}

@end