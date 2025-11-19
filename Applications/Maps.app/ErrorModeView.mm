@interface ErrorModeView
- (ErrorModeView)init;
- (double)fittingHeight;
- (void)_buttonTapped:(id)a3;
- (void)insertErrorIcon:(id)a3 atIndex:(unint64_t)a4;
- (void)removeErrorIconImageView;
- (void)setButtonTitle:(id)a3 glyphName:(id)a4 backgroundColor:(id)a5 handler:(id)a6;
- (void)setButtonTitle:(id)a3 handler:(id)a4;
- (void)setTitle:(id)a3 andMessage:(id)a4;
- (void)setTopPadding:(double)a3;
- (void)setupConstraints;
@end

@implementation ErrorModeView

- (void)removeErrorIconImageView
{
  errorIconImageView = self->_errorIconImageView;
  if (errorIconImageView)
  {
    [(UIImageView *)errorIconImageView removeFromSuperview];
    v4 = self->_errorIconImageView;
    self->_errorIconImageView = 0;
  }
}

- (void)insertErrorIcon:(id)a3 atIndex:(unint64_t)a4
{
  if (!self->_errorIconImageView)
  {
    v6 = a3;
    v7 = +[UIFont system28Medium];
    v12 = [UIImageSymbolConfiguration configurationWithFont:v7 scale:3];

    v8 = [UIImage systemImageNamed:v6 withConfiguration:v12];

    v9 = [[UIImageView alloc] initWithImage:v8];
    errorIconImageView = self->_errorIconImageView;
    self->_errorIconImageView = v9;

    v11 = +[UIColor systemGrayColor];
    [(UIImageView *)self->_errorIconImageView setTintColor:v11];

    [(UIImageView *)self->_errorIconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)self->_stackView insertArrangedSubview:self->_errorIconImageView atIndex:a4];
    [(UIStackView *)self->_stackView setCustomSpacing:self->_errorIconImageView afterView:8.0];
    [(UIStackView *)self->_stackView setAlignment:3];
  }
}

- (double)fittingHeight
{
  [(UIStackView *)self->_stackView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height];
  v4 = v3 + 30.0;
  [(NSLayoutConstraint *)self->_verticalAdjustmentConstraint constant];
  return v4 + fabs(v5);
}

- (void)setTopPadding:(double)a3
{
  [(NSLayoutConstraint *)self->_verticalAdjustmentConstraint setActive:0];
  v5 = [(UIStackView *)self->_stackView topAnchor];
  v6 = [(ErrorModeView *)self topAnchor];
  v7 = [v5 constraintGreaterThanOrEqualToAnchor:v6 constant:a3];
  v12[0] = v7;
  v8 = [(UIStackView *)self->_stackView bottomAnchor];
  v9 = [(ErrorModeView *)self bottomAnchor];
  v10 = [v8 constraintGreaterThanOrEqualToAnchor:v9 constant:0.0];
  v12[1] = v10;
  v11 = [NSArray arrayWithObjects:v12 count:2];
  [NSLayoutConstraint activateConstraints:v11];
}

- (void)_buttonTapped:(id)a3
{
  handler = self->_handler;
  if (handler)
  {
    handler[2](handler, a3);
  }
}

- (void)setupConstraints
{
  v3 = [(UIStackView *)self->_stackView centerYAnchor];
  v4 = [(ErrorModeView *)self centerYAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];
  verticalAdjustmentConstraint = self->_verticalAdjustmentConstraint;
  self->_verticalAdjustmentConstraint = v5;

  v17[0] = self->_verticalAdjustmentConstraint;
  v7 = [(UIStackView *)self->_stackView centerXAnchor];
  v8 = [(ErrorModeView *)self centerXAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  v17[1] = v9;
  v10 = [(UIStackView *)self->_stackView leadingAnchor];
  v11 = [(ErrorModeView *)self leadingAnchor];
  v12 = [v10 constraintGreaterThanOrEqualToAnchor:v11 constant:30.0];
  v17[2] = v12;
  v13 = [(ErrorModeView *)self trailingAnchor];
  v14 = [(UIStackView *)self->_stackView trailingAnchor];
  v15 = [v13 constraintGreaterThanOrEqualToAnchor:v14 constant:30.0];
  v17[3] = v15;
  v16 = [NSArray arrayWithObjects:v17 count:4];

  [NSLayoutConstraint activateConstraints:v16];
}

- (ErrorModeView)init
{
  v28.receiver = self;
  v28.super_class = ErrorModeView;
  v2 = [(ErrorModeView *)&v28 init];
  v3 = v2;
  if (v2)
  {
    [(ErrorModeView *)v2 _setHostsLayoutEngine:1];
    v4 = +[UIColor clearColor];
    [(ErrorModeView *)v3 setBackgroundColor:v4];

    [(ErrorModeView *)v3 setClipsToBounds:1];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [(ErrorModeView *)v3 setAccessibilityIdentifier:v6];

    v7 = [UIStackView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v11 = [v7 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    stackView = v3->_stackView;
    v3->_stackView = v11;

    [(UIStackView *)v3->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v3->_stackView setAxis:1];
    [(UIStackView *)v3->_stackView setDistribution:3];
    [(UIStackView *)v3->_stackView setAlignment:0];
    [(ErrorModeView *)v3 setSpacing:10.0];
    [(ErrorModeView *)v3 addSubview:v3->_stackView];
    v13 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v13;

    [(UILabel *)v3->_titleLabel setHidden:1];
    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_titleLabel setTextAlignment:1];
    [(UILabel *)v3->_titleLabel setNumberOfLines:0];
    v15 = +[UIColor labelColor];
    [(UILabel *)v3->_titleLabel setTextColor:v15];

    [DynamicTypeWizard autorefreshLabel:v3->_titleLabel withFontProvider:&stru_10165DAC8];
    LODWORD(v16) = 1148829696;
    [(UILabel *)v3->_titleLabel setContentCompressionResistancePriority:1 forAxis:v16];
    [(UILabel *)v3->_titleLabel setAccessibilityIdentifier:@"ErrorModeTitle"];
    [(UIStackView *)v3->_stackView addArrangedSubview:v3->_titleLabel];
    v17 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    messageLabel = v3->_messageLabel;
    v3->_messageLabel = v17;

    [(UILabel *)v3->_messageLabel setHidden:1];
    [(UILabel *)v3->_messageLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_messageLabel setTextAlignment:1];
    [(UILabel *)v3->_messageLabel setNumberOfLines:0];
    v19 = +[UIColor secondaryLabelColor];
    [(UILabel *)v3->_messageLabel setTextColor:v19];

    [DynamicTypeWizard autorefreshLabel:v3->_messageLabel withFontProvider:&stru_10165D908];
    LODWORD(v20) = 1148829696;
    [(UILabel *)v3->_messageLabel setContentCompressionResistancePriority:1 forAxis:v20];
    [(UILabel *)v3->_messageLabel setAccessibilityIdentifier:@"ErrorModeMessage"];
    [(UIStackView *)v3->_stackView addArrangedSubview:v3->_messageLabel];
    v21 = [[MapsThemeButton alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    button = v3->_button;
    v3->_button = v21;

    [(MapsThemeButton *)v3->_button setHidden:1];
    [(MapsThemeButton *)v3->_button setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MapsThemeButton *)v3->_button setTitleColorProvider:&stru_1016309D0];
    v23 = [(MapsThemeButton *)v3->_button titleLabel];
    [DynamicTypeWizard autorefreshLabel:v23 withFontProvider:&stru_10165D908];

    [(MapsThemeButton *)v3->_button addTarget:v3 action:"_buttonTapped:" forControlEvents:64];
    LODWORD(v24) = 1148829696;
    [(MapsThemeButton *)v3->_button setContentCompressionResistancePriority:1 forAxis:v24];
    [(MapsThemeButton *)v3->_button setContentEdgeInsets:5.0, 10.0, 5.0, 10.0];
    [(MapsThemeButton *)v3->_button _setContinuousCornerRadius:5.0];
    [(MapsThemeButton *)v3->_button setAccessibilityIdentifier:@"ErrorModeButton"];
    v25 = [(MapsThemeButton *)v3->_button titleLabel];
    [v25 setNumberOfLines:0];

    v26 = [(MapsThemeButton *)v3->_button titleLabel];
    [v26 setTextAlignment:1];

    [(UIStackView *)v3->_stackView addArrangedSubview:v3->_button];
    [(ErrorModeView *)v3 setupConstraints];
  }

  return v3;
}

- (void)setButtonTitle:(id)a3 glyphName:(id)a4 backgroundColor:(id)a5 handler:(id)a6
{
  v13 = a5;
  v10 = a4;
  [(ErrorModeView *)self setButtonTitle:a3 handler:a6];
  button = self->_button;
  v12 = [UIImage _systemImageNamed:v10];

  [(MapsThemeButton *)button setImage:v12 forState:0];
  [(MapsThemeButton *)self->_button setBackgroundColor:v13];
}

- (void)setButtonTitle:(id)a3 handler:(id)a4
{
  button = self->_button;
  v7 = a4;
  v8 = a3;
  [(MapsThemeButton *)button setTitle:v8 forState:0];
  [(ErrorModeView *)self setHandler:v7];

  v9 = [v8 length];
  v10 = self->_button;

  [(MapsThemeButton *)v10 setHidden:v9 == 0];
}

- (void)setTitle:(id)a3 andMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = v6;
  v8 = v7;
  v9 = v11;
  v10 = v8;
  if (![v8 length])
  {

    v9 = 0;
    v10 = v11;
  }

  [(UILabel *)self->_titleLabel setText:v9];
  -[UILabel setHidden:](self->_titleLabel, "setHidden:", [v9 length] == 0);
  [(UILabel *)self->_messageLabel setText:v10];
  -[UILabel setHidden:](self->_messageLabel, "setHidden:", [v10 length] == 0);
}

@end