@interface AUGenericViewFloatParameterCell
- (UIColor)tintColor;
- (UILabel)unitLabel;
- (UISlider)valueSlider;
- (_TtC12CoreAudioKit31AUGenericViewFloatParameterCell)initWithCoder:(id)a3;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)setTintColor:(id)a3;
- (void)sliderReleasedWithSender:(id)a3;
- (void)sliderTouchedWithSender:(id)a3;
- (void)sliderValueChangedWithSender:(id)a3;
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

- (void)sliderValueChangedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23713F35C();
}

- (void)accessibilityIncrement
{
  v2 = self;
  sub_23713E1F4();
}

- (void)accessibilityDecrement
{
  v2 = self;
  sub_23713E394();
}

- (void)sliderTouchedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23713E534(v4);
}

- (void)sliderReleasedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23713E5C0(v4);
}

- (UIColor)tintColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AUGenericViewFloatParameterCell();
  v2 = [(AUGenericViewParameterCellBase *)&v4 tintColor];

  return v2;
}

- (void)setTintColor:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_23713EA60(a3);
}

- (_TtC12CoreAudioKit31AUGenericViewFloatParameterCell)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for AUGenericViewFloatParameterCell();
  v5 = a3;
  v6 = [(AUGenericViewParameterCellBase *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end