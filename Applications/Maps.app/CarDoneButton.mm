@interface CarDoneButton
- (CarDoneButton)initWithFrame:(CGRect)frame;
- (id)accessibilityUserInputLabels;
- (void)setTintColor:(id)color;
@end

@implementation CarDoneButton

- (id)accessibilityUserInputLabels
{
  text = [(UILabel *)self->_titleLabel text];
  v5 = text;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (void)setTintColor:(id)color
{
  v5.receiver = self;
  v5.super_class = CarDoneButton;
  colorCopy = color;
  [(CarDoneButton *)&v5 setTintColor:colorCopy];
  [(UILabel *)self->_titleLabel setTextColor:colorCopy, v5.receiver, v5.super_class];
}

- (CarDoneButton)initWithFrame:(CGRect)frame
{
  v31.receiver = self;
  v31.super_class = CarDoneButton;
  v3 = [(CarFocusableBlurControl *)&v31 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v4;

    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v6) = 1148846080;
    [(UILabel *)v3->_titleLabel setContentCompressionResistancePriority:1 forAxis:v6];
    LODWORD(v7) = 1148846080;
    [(UILabel *)v3->_titleLabel setContentCompressionResistancePriority:0 forAxis:v7];
    LODWORD(v8) = 1148846080;
    [(UILabel *)v3->_titleLabel setContentHuggingPriority:1 forAxis:v8];
    LODWORD(v9) = 1148846080;
    [(UILabel *)v3->_titleLabel setContentHuggingPriority:0 forAxis:v9];
    [(CarFocusableControl *)v3 addSubview:v3->_titleLabel];
    leadingAnchor = [(UILabel *)v3->_titleLabel leadingAnchor];
    leadingAnchor2 = [(CarDoneButton *)v3 leadingAnchor];
    v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:12.0];
    v33[0] = v28;
    trailingAnchor = [(CarDoneButton *)v3 trailingAnchor];
    trailingAnchor2 = [(UILabel *)v3->_titleLabel trailingAnchor];
    v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:12.0];
    v33[1] = v10;
    firstBaselineAnchor = [(UILabel *)v3->_titleLabel firstBaselineAnchor];
    topAnchor = [(CarDoneButton *)v3 topAnchor];
    v13 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:19.0];
    v33[2] = v13;
    bottomAnchor = [(CarDoneButton *)v3 bottomAnchor];
    lastBaselineAnchor = [(UILabel *)v3->_titleLabel lastBaselineAnchor];
    v16 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor constant:9.0];
    v33[3] = v16;
    v17 = [NSArray arrayWithObjects:v33 count:4];
    [NSLayoutConstraint activateConstraints:v17];

    v18 = +[NSBundle mainBundle];
    v19 = [v18 localizedStringForKey:@"CarGuidanceBar_Done" value:@"localized string not found" table:0];

    v20 = +[CarDisplayController sharedInstance];
    LODWORD(v16) = [v20 isCarAppSceneHostingNavigation];

    if (v16)
    {
      v21 = +[NSBundle mainBundle];
      v22 = [v21 localizedStringForKey:@"CarGuidanceBar_Resume" value:@"localized string not found" table:0];

      v19 = v22;
    }

    [(UILabel *)v3->_titleLabel setText:v19];
    v23 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCallout weight:UIFontWeightMedium];
    [(UILabel *)v3->_titleLabel setFont:v23];

    [(CarFocusableBlurControl *)v3 setRoundedCornerRadius:18.0];
    [(CarDoneButton *)v3 setAccessibilityIdentifier:@"CarDoneButton"];
    v32 = v19;
    v24 = [NSArray arrayWithObjects:&v32 count:1];
    [(CarDoneButton *)v3 setAccessibilityUserInputLabels:v24];
  }

  return v3;
}

@end