@interface CarDictationButton
- (CarDictationButton)initWithFrame:(CGRect)a3;
- (void)setKeyboardDisabled:(BOOL)a3;
@end

@implementation CarDictationButton

- (void)setKeyboardDisabled:(BOOL)a3
{
  v7 = [(UIButton *)self->_siriButton configuration];
  if (a3)
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"CarPlay_UserInputCell" value:@"localized string not found" table:0];
    [v7 setTitle:v6];
  }

  else
  {
    [v7 setTitle:0];
  }

  [(UIButton *)self->_siriButton setConfiguration:v7];
}

- (CarDictationButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v26.receiver = self;
  v26.super_class = CarDictationButton;
  v7 = [(CarFocusableControl *)&v26 initWithFrame:?];
  if (v7)
  {
    v8 = [[UIButton alloc] initWithFrame:{x, y, width, height}];
    siriButton = v7->_siriButton;
    v7->_siriButton = v8;

    [(UIButton *)v7->_siriButton setAccessibilityIdentifier:@"SiriButton"];
    [(UIButton *)v7->_siriButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v7->_siriButton setContentMode:1];
    v10 = +[UIButtonConfiguration plainButtonConfiguration];
    v11 = [UIImage _mapsCar_privateSystemImageNamed:@"siri" textStyle:UIFontTextStyleTitle3 scale:2];
    [v10 setImage:v11];

    [v10 setImagePadding:10.0];
    [v10 setImagePlacement:2];
    [(UIButton *)v7->_siriButton setConfiguration:v10];
    [(CarFocusableControl *)v7 addSubview:v7->_siriButton];
    v25 = [(UIButton *)v7->_siriButton topAnchor];
    v24 = [(CarDictationButton *)v7 topAnchor];
    v23 = [v25 constraintEqualToAnchor:v24];
    v27[0] = v23;
    v22 = [(UIButton *)v7->_siriButton bottomAnchor];
    v21 = [(CarDictationButton *)v7 bottomAnchor];
    v12 = [v22 constraintEqualToAnchor:v21];
    v27[1] = v12;
    v13 = [(UIButton *)v7->_siriButton leadingAnchor];
    v14 = [(CarDictationButton *)v7 leadingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v27[2] = v15;
    v16 = [(UIButton *)v7->_siriButton trailingAnchor];
    v17 = [(CarDictationButton *)v7 trailingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v27[3] = v18;
    v19 = [NSArray arrayWithObjects:v27 count:4];
    [NSLayoutConstraint activateConstraints:v19];
  }

  return v7;
}

@end