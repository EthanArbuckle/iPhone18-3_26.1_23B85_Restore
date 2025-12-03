@interface CarCameraToggleButton
- (CarCameraToggleButton)initWithFrame:(CGRect)frame;
- (id)accessibilityUserInputLabels;
- (void)setButtonState:(unint64_t)state;
@end

@implementation CarCameraToggleButton

- (id)accessibilityUserInputLabels
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"CarPlay_Camera" value:@"localized string not found" table:0];

  buttonState = [(CarCameraToggleButton *)self buttonState];
  if (buttonState == 2)
  {
    v6 = @"CarPlay_Detail";
  }

  else
  {
    if (buttonState != 1)
    {
      goto LABEL_6;
    }

    v6 = @"CarPlay_Overview";
  }

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:v6 value:@"localized string not found" table:0];

  v4 = v8;
LABEL_6:
  v11 = v4;
  v9 = [NSArray arrayWithObjects:&v11 count:1];

  return v9;
}

- (void)setButtonState:(unint64_t)state
{
  if (self->_buttonState == state)
  {
    return;
  }

  self->_buttonState = state;
  if (state > 2)
  {
    v6 = @".Unknown";
  }

  else
  {
    v6 = *(&off_1016373E0 + state);
  }

  v7 = [@"CarCameraToggleButton" stringByAppendingString:v6];
  [(CarCameraToggleButton *)self setAccessibilityIdentifier:v7];

  if (state == 2)
  {
    v8 = &OBJC_IVAR___CarCameraToggleButton__detailImage;
  }

  else
  {
    if (state != 1)
    {
      v9 = 0;
      goto LABEL_11;
    }

    v8 = &OBJC_IVAR___CarCameraToggleButton__overviewImage;
  }

  v9 = *(&self->super.super.super.super.super.super.super.isa + *v8);
LABEL_11:
  v10 = v9;
  [(CarFocusableImageButton *)self setImage:v9];
}

- (CarCameraToggleButton)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = CarCameraToggleButton;
  v3 = [(CarFocusableImageButton *)&v12 initWithImage:0 edgeInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  if (v3)
  {
    v4 = [UIImage _mapsCar_systemImageNamed:@"location.north.line.fill" textStyle:UIFontTextStyleCallout];
    detailImage = v3->_detailImage;
    v3->_detailImage = v4;

    v6 = +[CarDisplayController sharedInstance];
    screenTraitCollection = [v6 screenTraitCollection];
    v8 = [UIImage imageNamed:@"CameraModeOverview" inBundle:0 compatibleWithTraitCollection:screenTraitCollection];
    v9 = [v8 imageWithRenderingMode:2];
    overviewImage = v3->_overviewImage;
    v3->_overviewImage = v9;

    [(CarCameraToggleButton *)v3 setAccessibilityIdentifier:@"CarCameraToggleButton.Unspecified"];
  }

  return v3;
}

@end