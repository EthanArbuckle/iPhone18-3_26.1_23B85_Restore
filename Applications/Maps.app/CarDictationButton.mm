@interface CarDictationButton
- (CarDictationButton)initWithFrame:(CGRect)frame;
- (void)setKeyboardDisabled:(BOOL)disabled;
@end

@implementation CarDictationButton

- (void)setKeyboardDisabled:(BOOL)disabled
{
  configuration = [(UIButton *)self->_siriButton configuration];
  if (disabled)
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"CarPlay_UserInputCell" value:@"localized string not found" table:0];
    [configuration setTitle:v6];
  }

  else
  {
    [configuration setTitle:0];
  }

  [(UIButton *)self->_siriButton setConfiguration:configuration];
}

- (CarDictationButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
    topAnchor = [(UIButton *)v7->_siriButton topAnchor];
    topAnchor2 = [(CarDictationButton *)v7 topAnchor];
    v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v27[0] = v23;
    bottomAnchor = [(UIButton *)v7->_siriButton bottomAnchor];
    bottomAnchor2 = [(CarDictationButton *)v7 bottomAnchor];
    v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v27[1] = v12;
    leadingAnchor = [(UIButton *)v7->_siriButton leadingAnchor];
    leadingAnchor2 = [(CarDictationButton *)v7 leadingAnchor];
    v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v27[2] = v15;
    trailingAnchor = [(UIButton *)v7->_siriButton trailingAnchor];
    trailingAnchor2 = [(CarDictationButton *)v7 trailingAnchor];
    v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v27[3] = v18;
    v19 = [NSArray arrayWithObjects:v27 count:4];
    [NSLayoutConstraint activateConstraints:v19];
  }

  return v7;
}

@end