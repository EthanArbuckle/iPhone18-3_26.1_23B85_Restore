@interface CarAudioControlButton
- (CarAudioControlButton)initWithFrame:(CGRect)frame;
- (id)accessibilityUserInputLabels;
- (void)setButtonAudioType:(unint64_t)type;
@end

@implementation CarAudioControlButton

- (id)accessibilityUserInputLabels
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"CarPlay_Audio" value:@"localized string not found" table:0];
  v8[0] = v3;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"CarPlay_Speaker" value:@"localized string not found" table:0];
  v8[1] = v5;
  v6 = [NSArray arrayWithObjects:v8 count:2];

  return v6;
}

- (void)setButtonAudioType:(unint64_t)type
{
  if (self->_buttonAudioType != type || !self->_hasButtonAudioType)
  {
    self->_buttonAudioType = type;
    self->_hasButtonAudioType = 1;
    v5 = [_TtC4Maps22NavAudioControlFactory stringFromAudioControlButtonType:type];
    v6 = [@"CarAudioControlButton" stringByAppendingString:v5];
    [(CarAudioControlButton *)self setAccessibilityIdentifier:v6];

    v7 = [_TtC4Maps22NavAudioControlFactory imageForNavAudioType:type];
    [(CarFocusableImageButton *)self setImage:v7];
  }
}

- (CarAudioControlButton)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CarAudioControlButton;
  v3 = [(CarFocusableImageButton *)&v6 initWithImage:0 edgeInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  v4 = v3;
  if (v3)
  {
    [(CarAudioControlButton *)v3 setAccessibilityIdentifier:@"CarAudioControlButton.Unspecified"];
  }

  return v4;
}

@end