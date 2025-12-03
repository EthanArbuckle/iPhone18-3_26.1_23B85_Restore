@interface ExtensionsPayView
- (CGSize)intrinsicContentSize;
- (ExtensionsPayView)initWithCoder:(id)coder;
- (ExtensionsPayView)initWithFrame:(CGRect)frame;
- (void)_change:(id)_change;
- (void)_commonInit;
- (void)callChangeBlock;
- (void)configureForTitle:(id)title subtitle:(id)subtitle image:(id)image;
@end

@implementation ExtensionsPayView

- (void)_change:(id)_change
{
  performChangeCommand = [(ExtensionsPayView *)self performChangeCommand];
  if (performChangeCommand)
  {
    v5 = performChangeCommand;
    (performChangeCommand)[2](performChangeCommand, self);
    performChangeCommand = v5;
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = UIViewNoIntrinsicMetric;
  v3 = 75.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)configureForTitle:(id)title subtitle:(id)subtitle image:(id)image
{
  subtitleCopy = subtitle;
  paymentMethodView = self->_paymentMethodView;
  imageCopy = image;
  titleCopy = title;
  paymentTitleLabel = [(PaymentMethodView *)paymentMethodView paymentTitleLabel];
  [paymentTitleLabel setText:titleCopy];

  v12 = [subtitleCopy length] == 0;
  paymentSubtitleLabel = [(PaymentMethodView *)self->_paymentMethodView paymentSubtitleLabel];
  [paymentSubtitleLabel setHidden:v12];

  paymentSubtitleLabel2 = [(PaymentMethodView *)self->_paymentMethodView paymentSubtitleLabel];
  [paymentSubtitleLabel2 setText:subtitleCopy];

  paymentMethodImageView = [(PaymentMethodView *)self->_paymentMethodView paymentMethodImageView];
  [paymentMethodImageView setImage:imageCopy];
}

- (void)callChangeBlock
{
  performChangeCommand = [(ExtensionsPayView *)self performChangeCommand];

  if (performChangeCommand)
  {
    performChangeCommand2 = [(ExtensionsPayView *)self performChangeCommand];
    performChangeCommand2[2](performChangeCommand2, self);
  }
}

- (void)_commonInit
{
  [(ExtensionsPayView *)self setLeftHairlineInset:16.0];
  [(ExtensionsPayView *)self setRightHairlineInset:0.0];
  theme = [(ExtensionsPayView *)self theme];
  hairlineColor = [theme hairlineColor];
  [(ExtensionsPayView *)self setHairlineColor:hairlineColor];

  [(ExtensionsPayView *)self setTopHairlineHidden:0];
  [(ExtensionsPayView *)self setBottomHairlineHidden:1];
  layoutMarginsGuide = [(ExtensionsPayView *)self layoutMarginsGuide];
  v5 = +[NSMutableArray array];
  v6 = objc_alloc_init(PaymentMethodView);
  paymentMethodView = self->_paymentMethodView;
  self->_paymentMethodView = v6;

  [(PaymentMethodView *)self->_paymentMethodView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ExtensionsPayView *)self addSubview:self->_paymentMethodView];
  leadingAnchor = [(PaymentMethodView *)self->_paymentMethodView leadingAnchor];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  [v5 addObject:v10];

  topAnchor = [(PaymentMethodView *)self->_paymentMethodView topAnchor];
  topAnchor2 = [layoutMarginsGuide topAnchor];
  v13 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:5.0];
  [v5 addObject:v13];

  bottomAnchor = [(PaymentMethodView *)self->_paymentMethodView bottomAnchor];
  bottomAnchor2 = [layoutMarginsGuide bottomAnchor];
  v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-5.0];
  [v5 addObject:v16];

  LODWORD(v17) = 1148846080;
  [(PaymentMethodView *)self->_paymentMethodView setContentHuggingPriority:0 forAxis:v17];
  LODWORD(v18) = 1148829696;
  [(PaymentMethodView *)self->_paymentMethodView setContentCompressionResistancePriority:0 forAxis:v18];
  v19 = [UIButton buttonWithType:1];
  changePaymentMethodButton = self->_changePaymentMethodButton;
  self->_changePaymentMethodButton = v19;

  [(UIButton *)self->_changePaymentMethodButton setTranslatesAutoresizingMaskIntoConstraints:0];
  titleLabel = [(UIButton *)self->_changePaymentMethodButton titleLabel];
  [DynamicTypeWizard autorefreshLabel:titleLabel withFontProvider:&stru_10165D8C8];

  v22 = self->_changePaymentMethodButton;
  v23 = +[NSBundle mainBundle];
  v24 = [v23 localizedStringForKey:@"ChangePaymentButtonTitle" value:@"localized string not found" table:0];
  [(UIButton *)v22 setTitle:v24 forState:0];

  [(ExtensionsPayView *)self addSubview:self->_changePaymentMethodButton];
  centerYAnchor = [(UIButton *)self->_changePaymentMethodButton centerYAnchor];
  centerYAnchor2 = [layoutMarginsGuide centerYAnchor];
  v27 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v5 addObject:v27];

  trailingAnchor = [(UIButton *)self->_changePaymentMethodButton trailingAnchor];
  trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
  v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  [v5 addObject:v30];

  trailingAnchor3 = [(PaymentMethodView *)self->_paymentMethodView trailingAnchor];
  leadingAnchor3 = [(UIButton *)self->_changePaymentMethodButton leadingAnchor];
  v33 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:leadingAnchor3 constant:-7.0];
  [v5 addObject:v33];

  LODWORD(v34) = 1148846080;
  [(UIButton *)self->_changePaymentMethodButton setContentCompressionResistancePriority:0 forAxis:v34];
  [NSLayoutConstraint activateConstraints:v5];
  [(UIButton *)self->_changePaymentMethodButton addTarget:self action:"_change:" forControlEvents:0x2000];
  v35 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"callChangeBlock"];
  [(ExtensionsPayView *)self addGestureRecognizer:v35];
}

- (ExtensionsPayView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = ExtensionsPayView;
  v3 = [(ExtensionsPayView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(ExtensionsPayView *)v3 _commonInit];
  }

  return v4;
}

- (ExtensionsPayView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ExtensionsPayView;
  v3 = [(ExtensionsPayView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(ExtensionsPayView *)v3 _commonInit];
  }

  return v4;
}

@end