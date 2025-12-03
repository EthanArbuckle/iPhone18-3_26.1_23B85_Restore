@interface ErrorModeView
- (ErrorModeView)init;
- (double)fittingHeight;
- (void)_buttonTapped:(id)tapped;
- (void)insertErrorIcon:(id)icon atIndex:(unint64_t)index;
- (void)removeErrorIconImageView;
- (void)setButtonTitle:(id)title glyphName:(id)name backgroundColor:(id)color handler:(id)handler;
- (void)setButtonTitle:(id)title handler:(id)handler;
- (void)setTitle:(id)title andMessage:(id)message;
- (void)setTopPadding:(double)padding;
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

- (void)insertErrorIcon:(id)icon atIndex:(unint64_t)index
{
  if (!self->_errorIconImageView)
  {
    iconCopy = icon;
    v7 = +[UIFont system28Medium];
    v12 = [UIImageSymbolConfiguration configurationWithFont:v7 scale:3];

    v8 = [UIImage systemImageNamed:iconCopy withConfiguration:v12];

    v9 = [[UIImageView alloc] initWithImage:v8];
    errorIconImageView = self->_errorIconImageView;
    self->_errorIconImageView = v9;

    v11 = +[UIColor systemGrayColor];
    [(UIImageView *)self->_errorIconImageView setTintColor:v11];

    [(UIImageView *)self->_errorIconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)self->_stackView insertArrangedSubview:self->_errorIconImageView atIndex:index];
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

- (void)setTopPadding:(double)padding
{
  [(NSLayoutConstraint *)self->_verticalAdjustmentConstraint setActive:0];
  topAnchor = [(UIStackView *)self->_stackView topAnchor];
  topAnchor2 = [(ErrorModeView *)self topAnchor];
  v7 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:padding];
  v12[0] = v7;
  bottomAnchor = [(UIStackView *)self->_stackView bottomAnchor];
  bottomAnchor2 = [(ErrorModeView *)self bottomAnchor];
  v10 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2 constant:0.0];
  v12[1] = v10;
  v11 = [NSArray arrayWithObjects:v12 count:2];
  [NSLayoutConstraint activateConstraints:v11];
}

- (void)_buttonTapped:(id)tapped
{
  handler = self->_handler;
  if (handler)
  {
    handler[2](handler, tapped);
  }
}

- (void)setupConstraints
{
  centerYAnchor = [(UIStackView *)self->_stackView centerYAnchor];
  centerYAnchor2 = [(ErrorModeView *)self centerYAnchor];
  v5 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  verticalAdjustmentConstraint = self->_verticalAdjustmentConstraint;
  self->_verticalAdjustmentConstraint = v5;

  v17[0] = self->_verticalAdjustmentConstraint;
  centerXAnchor = [(UIStackView *)self->_stackView centerXAnchor];
  centerXAnchor2 = [(ErrorModeView *)self centerXAnchor];
  v9 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v17[1] = v9;
  leadingAnchor = [(UIStackView *)self->_stackView leadingAnchor];
  leadingAnchor2 = [(ErrorModeView *)self leadingAnchor];
  v12 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:30.0];
  v17[2] = v12;
  trailingAnchor = [(ErrorModeView *)self trailingAnchor];
  trailingAnchor2 = [(UIStackView *)self->_stackView trailingAnchor];
  v15 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2 constant:30.0];
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
    height = [[MapsThemeButton alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    button = v3->_button;
    v3->_button = height;

    [(MapsThemeButton *)v3->_button setHidden:1];
    [(MapsThemeButton *)v3->_button setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MapsThemeButton *)v3->_button setTitleColorProvider:&stru_1016309D0];
    titleLabel = [(MapsThemeButton *)v3->_button titleLabel];
    [DynamicTypeWizard autorefreshLabel:titleLabel withFontProvider:&stru_10165D908];

    [(MapsThemeButton *)v3->_button addTarget:v3 action:"_buttonTapped:" forControlEvents:64];
    LODWORD(v24) = 1148829696;
    [(MapsThemeButton *)v3->_button setContentCompressionResistancePriority:1 forAxis:v24];
    [(MapsThemeButton *)v3->_button setContentEdgeInsets:5.0, 10.0, 5.0, 10.0];
    [(MapsThemeButton *)v3->_button _setContinuousCornerRadius:5.0];
    [(MapsThemeButton *)v3->_button setAccessibilityIdentifier:@"ErrorModeButton"];
    titleLabel2 = [(MapsThemeButton *)v3->_button titleLabel];
    [titleLabel2 setNumberOfLines:0];

    titleLabel3 = [(MapsThemeButton *)v3->_button titleLabel];
    [titleLabel3 setTextAlignment:1];

    [(UIStackView *)v3->_stackView addArrangedSubview:v3->_button];
    [(ErrorModeView *)v3 setupConstraints];
  }

  return v3;
}

- (void)setButtonTitle:(id)title glyphName:(id)name backgroundColor:(id)color handler:(id)handler
{
  colorCopy = color;
  nameCopy = name;
  [(ErrorModeView *)self setButtonTitle:title handler:handler];
  button = self->_button;
  v12 = [UIImage _systemImageNamed:nameCopy];

  [(MapsThemeButton *)button setImage:v12 forState:0];
  [(MapsThemeButton *)self->_button setBackgroundColor:colorCopy];
}

- (void)setButtonTitle:(id)title handler:(id)handler
{
  button = self->_button;
  handlerCopy = handler;
  titleCopy = title;
  [(MapsThemeButton *)button setTitle:titleCopy forState:0];
  [(ErrorModeView *)self setHandler:handlerCopy];

  v9 = [titleCopy length];
  v10 = self->_button;

  [(MapsThemeButton *)v10 setHidden:v9 == 0];
}

- (void)setTitle:(id)title andMessage:(id)message
{
  titleCopy = title;
  messageCopy = message;
  v11 = titleCopy;
  v8 = messageCopy;
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