@interface AUGenericViewFloatParameterCell
- (UIColor)tintColor;
- (UILabel)unitLabel;
- (UISlider)valueSlider;
- (_TtC12CoreAudioKit31AUGenericViewFloatParameterCell)initWithCoder:(id)coder;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)setTintColor:(id)color;
- (void)sliderReleasedWithSender:(id)sender;
- (void)sliderTouchedWithSender:(id)sender;
- (void)sliderValueChangedWithSender:(id)sender;
@end

@implementation AUGenericViewFloatParameterCell

- (UISlider)valueSlider
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UILabel)unitLabel
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)sliderValueChangedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_23713F35C();
}

- (void)accessibilityIncrement
{
  selfCopy = self;
  sub_23713E1F4();
}

- (void)accessibilityDecrement
{
  selfCopy = self;
  sub_23713E394();
}

- (void)sliderTouchedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_23713E534(senderCopy);
}

- (void)sliderReleasedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_23713E5C0(senderCopy);
}

- (UIColor)tintColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AUGenericViewFloatParameterCell();
  tintColor = [(AUGenericViewParameterCellBase *)&v4 tintColor];

  return tintColor;
}

- (void)setTintColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_23713EA60(color);
}

- (_TtC12CoreAudioKit31AUGenericViewFloatParameterCell)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for AUGenericViewFloatParameterCell();
  coderCopy = coder;
  v6 = [(AUGenericViewParameterCellBase *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end