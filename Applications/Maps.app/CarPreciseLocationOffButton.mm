@interface CarPreciseLocationOffButton
+ (id)preciseLocationOffButtonWithTitle:(id)a3;
- (CarPreciseLocationOffButton)initWithTitle:(id)a3;
- (void)setTintColor:(id)a3;
@end

@implementation CarPreciseLocationOffButton

- (void)setTintColor:(id)a3
{
  v5.receiver = self;
  v5.super_class = CarPreciseLocationOffButton;
  v4 = a3;
  [(CarPreciseLocationOffButton *)&v5 setTintColor:v4];
  [(UILabel *)self->_titleLabel setTextColor:v4, v5.receiver, v5.super_class];
}

- (CarPreciseLocationOffButton)initWithTitle:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = CarPreciseLocationOffButton;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v8 = [(CarFocusableBlurControl *)&v28 initWithFrame:CGRectZero.origin.x, y, width, height];
  v9 = v8;
  if (v8)
  {
    [(CarFocusableBlurControl *)v8 setCastsShadow:0];
    [(CarFocusableBlurControl *)v9 setRoundedCornerRadius:14.0];
    [(CarPreciseLocationOffButton *)v9 setAccessibilityIdentifier:@"CarPreciseLocationOffButton"];
    v10 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    titleLabel = v9->_titleLabel;
    v9->_titleLabel = v10;

    [(UILabel *)v9->_titleLabel setAccessibilityIdentifier:@"TitleLabel"];
    [(UILabel *)v9->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v12) = 1148846080;
    [(UILabel *)v9->_titleLabel setContentCompressionResistancePriority:1 forAxis:v12];
    [(UILabel *)v9->_titleLabel setText:v4];
    v13 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleFootnote weight:UIFontWeightSemibold];
    [(UILabel *)v9->_titleLabel setFont:v13];

    [(UILabel *)v9->_titleLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v9->_titleLabel setMinimumScaleFactor:0.699999988];
    [(UILabel *)v9->_titleLabel setBaselineAdjustment:1];
    [(UILabel *)v9->_titleLabel setTextAlignment:1];
    [(CarFocusableControl *)v9 addSubview:v9->_titleLabel];
    v27 = [(UILabel *)v9->_titleLabel firstBaselineAnchor];
    v26 = [(CarPreciseLocationOffButton *)v9 topAnchor];
    v25 = [v27 constraintEqualToAnchor:v26 constant:18.0];
    v29[0] = v25;
    v24 = [(CarPreciseLocationOffButton *)v9 bottomAnchor];
    v23 = [(UILabel *)v9->_titleLabel firstBaselineAnchor];
    v14 = [v24 constraintEqualToAnchor:v23 constant:10.0];
    v29[1] = v14;
    v15 = [(UILabel *)v9->_titleLabel leadingAnchor];
    v16 = [(CarPreciseLocationOffButton *)v9 leadingAnchor];
    v17 = [v15 constraintEqualToAnchor:v16 constant:15.0];
    v29[2] = v17;
    v18 = [(CarPreciseLocationOffButton *)v9 trailingAnchor];
    v19 = [(UILabel *)v9->_titleLabel trailingAnchor];
    v20 = [v18 constraintGreaterThanOrEqualToAnchor:v19 constant:15.0];
    v29[3] = v20;
    v21 = [NSArray arrayWithObjects:v29 count:4];
    [NSLayoutConstraint activateConstraints:v21];
  }

  return v9;
}

+ (id)preciseLocationOffButtonWithTitle:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithTitle:v4];

  return v5;
}

@end