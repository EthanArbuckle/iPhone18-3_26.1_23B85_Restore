@interface ExtensionsPayView
- (CGSize)intrinsicContentSize;
- (ExtensionsPayView)initWithCoder:(id)a3;
- (ExtensionsPayView)initWithFrame:(CGRect)a3;
- (void)_change:(id)a3;
- (void)_commonInit;
- (void)callChangeBlock;
- (void)configureForTitle:(id)a3 subtitle:(id)a4 image:(id)a5;
@end

@implementation ExtensionsPayView

- (void)_change:(id)a3
{
  v4 = [(ExtensionsPayView *)self performChangeCommand];
  if (v4)
  {
    v5 = v4;
    (v4)[2](v4, self);
    v4 = v5;
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

- (void)configureForTitle:(id)a3 subtitle:(id)a4 image:(id)a5
{
  v16 = a4;
  paymentMethodView = self->_paymentMethodView;
  v9 = a5;
  v10 = a3;
  v11 = [(PaymentMethodView *)paymentMethodView paymentTitleLabel];
  [v11 setText:v10];

  v12 = [v16 length] == 0;
  v13 = [(PaymentMethodView *)self->_paymentMethodView paymentSubtitleLabel];
  [v13 setHidden:v12];

  v14 = [(PaymentMethodView *)self->_paymentMethodView paymentSubtitleLabel];
  [v14 setText:v16];

  v15 = [(PaymentMethodView *)self->_paymentMethodView paymentMethodImageView];
  [v15 setImage:v9];
}

- (void)callChangeBlock
{
  v3 = [(ExtensionsPayView *)self performChangeCommand];

  if (v3)
  {
    v4 = [(ExtensionsPayView *)self performChangeCommand];
    v4[2](v4, self);
  }
}

- (void)_commonInit
{
  [(ExtensionsPayView *)self setLeftHairlineInset:16.0];
  [(ExtensionsPayView *)self setRightHairlineInset:0.0];
  v3 = [(ExtensionsPayView *)self theme];
  v4 = [v3 hairlineColor];
  [(ExtensionsPayView *)self setHairlineColor:v4];

  [(ExtensionsPayView *)self setTopHairlineHidden:0];
  [(ExtensionsPayView *)self setBottomHairlineHidden:1];
  v36 = [(ExtensionsPayView *)self layoutMarginsGuide];
  v5 = +[NSMutableArray array];
  v6 = objc_alloc_init(PaymentMethodView);
  paymentMethodView = self->_paymentMethodView;
  self->_paymentMethodView = v6;

  [(PaymentMethodView *)self->_paymentMethodView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ExtensionsPayView *)self addSubview:self->_paymentMethodView];
  v8 = [(PaymentMethodView *)self->_paymentMethodView leadingAnchor];
  v9 = [v36 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:16.0];
  [v5 addObject:v10];

  v11 = [(PaymentMethodView *)self->_paymentMethodView topAnchor];
  v12 = [v36 topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:5.0];
  [v5 addObject:v13];

  v14 = [(PaymentMethodView *)self->_paymentMethodView bottomAnchor];
  v15 = [v36 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:-5.0];
  [v5 addObject:v16];

  LODWORD(v17) = 1148846080;
  [(PaymentMethodView *)self->_paymentMethodView setContentHuggingPriority:0 forAxis:v17];
  LODWORD(v18) = 1148829696;
  [(PaymentMethodView *)self->_paymentMethodView setContentCompressionResistancePriority:0 forAxis:v18];
  v19 = [UIButton buttonWithType:1];
  changePaymentMethodButton = self->_changePaymentMethodButton;
  self->_changePaymentMethodButton = v19;

  [(UIButton *)self->_changePaymentMethodButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = [(UIButton *)self->_changePaymentMethodButton titleLabel];
  [DynamicTypeWizard autorefreshLabel:v21 withFontProvider:&stru_10165D8C8];

  v22 = self->_changePaymentMethodButton;
  v23 = +[NSBundle mainBundle];
  v24 = [v23 localizedStringForKey:@"ChangePaymentButtonTitle" value:@"localized string not found" table:0];
  [(UIButton *)v22 setTitle:v24 forState:0];

  [(ExtensionsPayView *)self addSubview:self->_changePaymentMethodButton];
  v25 = [(UIButton *)self->_changePaymentMethodButton centerYAnchor];
  v26 = [v36 centerYAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  [v5 addObject:v27];

  v28 = [(UIButton *)self->_changePaymentMethodButton trailingAnchor];
  v29 = [v36 trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:-16.0];
  [v5 addObject:v30];

  v31 = [(PaymentMethodView *)self->_paymentMethodView trailingAnchor];
  v32 = [(UIButton *)self->_changePaymentMethodButton leadingAnchor];
  v33 = [v31 constraintLessThanOrEqualToAnchor:v32 constant:-7.0];
  [v5 addObject:v33];

  LODWORD(v34) = 1148846080;
  [(UIButton *)self->_changePaymentMethodButton setContentCompressionResistancePriority:0 forAxis:v34];
  [NSLayoutConstraint activateConstraints:v5];
  [(UIButton *)self->_changePaymentMethodButton addTarget:self action:"_change:" forControlEvents:0x2000];
  v35 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"callChangeBlock"];
  [(ExtensionsPayView *)self addGestureRecognizer:v35];
}

- (ExtensionsPayView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = ExtensionsPayView;
  v3 = [(ExtensionsPayView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(ExtensionsPayView *)v3 _commonInit];
  }

  return v4;
}

- (ExtensionsPayView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ExtensionsPayView;
  v3 = [(ExtensionsPayView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(ExtensionsPayView *)v3 _commonInit];
  }

  return v4;
}

@end