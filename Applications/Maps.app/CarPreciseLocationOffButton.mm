@interface CarPreciseLocationOffButton
+ (id)preciseLocationOffButtonWithTitle:(id)title;
- (CarPreciseLocationOffButton)initWithTitle:(id)title;
- (void)setTintColor:(id)color;
@end

@implementation CarPreciseLocationOffButton

- (void)setTintColor:(id)color
{
  v5.receiver = self;
  v5.super_class = CarPreciseLocationOffButton;
  colorCopy = color;
  [(CarPreciseLocationOffButton *)&v5 setTintColor:colorCopy];
  [(UILabel *)self->_titleLabel setTextColor:colorCopy, v5.receiver, v5.super_class];
}

- (CarPreciseLocationOffButton)initWithTitle:(id)title
{
  titleCopy = title;
  v28.receiver = self;
  v28.super_class = CarPreciseLocationOffButton;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(CarFocusableBlurControl *)&v28 initWithFrame:CGRectZero.origin.x, y, width, height];
  v9 = height;
  if (height)
  {
    [(CarFocusableBlurControl *)height setCastsShadow:0];
    [(CarFocusableBlurControl *)v9 setRoundedCornerRadius:14.0];
    [(CarPreciseLocationOffButton *)v9 setAccessibilityIdentifier:@"CarPreciseLocationOffButton"];
    v10 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    titleLabel = v9->_titleLabel;
    v9->_titleLabel = v10;

    [(UILabel *)v9->_titleLabel setAccessibilityIdentifier:@"TitleLabel"];
    [(UILabel *)v9->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v12) = 1148846080;
    [(UILabel *)v9->_titleLabel setContentCompressionResistancePriority:1 forAxis:v12];
    [(UILabel *)v9->_titleLabel setText:titleCopy];
    v13 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleFootnote weight:UIFontWeightSemibold];
    [(UILabel *)v9->_titleLabel setFont:v13];

    [(UILabel *)v9->_titleLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v9->_titleLabel setMinimumScaleFactor:0.699999988];
    [(UILabel *)v9->_titleLabel setBaselineAdjustment:1];
    [(UILabel *)v9->_titleLabel setTextAlignment:1];
    [(CarFocusableControl *)v9 addSubview:v9->_titleLabel];
    firstBaselineAnchor = [(UILabel *)v9->_titleLabel firstBaselineAnchor];
    topAnchor = [(CarPreciseLocationOffButton *)v9 topAnchor];
    v25 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:18.0];
    v29[0] = v25;
    bottomAnchor = [(CarPreciseLocationOffButton *)v9 bottomAnchor];
    firstBaselineAnchor2 = [(UILabel *)v9->_titleLabel firstBaselineAnchor];
    v14 = [bottomAnchor constraintEqualToAnchor:firstBaselineAnchor2 constant:10.0];
    v29[1] = v14;
    leadingAnchor = [(UILabel *)v9->_titleLabel leadingAnchor];
    leadingAnchor2 = [(CarPreciseLocationOffButton *)v9 leadingAnchor];
    v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:15.0];
    v29[2] = v17;
    trailingAnchor = [(CarPreciseLocationOffButton *)v9 trailingAnchor];
    trailingAnchor2 = [(UILabel *)v9->_titleLabel trailingAnchor];
    v20 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2 constant:15.0];
    v29[3] = v20;
    v21 = [NSArray arrayWithObjects:v29 count:4];
    [NSLayoutConstraint activateConstraints:v21];
  }

  return v9;
}

+ (id)preciseLocationOffButtonWithTitle:(id)title
{
  titleCopy = title;
  v5 = [[self alloc] initWithTitle:titleCopy];

  return v5;
}

@end