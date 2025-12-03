@interface AUGenericViewBoolParameterCell
- (BOOL)accessibilityActivate;
- (UIColor)tintColor;
- (UISwitch)valueSwitch;
- (_TtC12CoreAudioKit30AUGenericViewBoolParameterCell)initWithCoder:(id)coder;
- (void)setTintColor:(id)color;
- (void)switchValueChangedWithSender:(id)sender;
@end

@implementation AUGenericViewBoolParameterCell

- (UISwitch)valueSwitch
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIColor)tintColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AUGenericViewBoolParameterCell();
  tintColor = [(AUGenericViewParameterCellBase *)&v4 tintColor];

  return tintColor;
}

- (void)setTintColor:(id)color
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for AUGenericViewBoolParameterCell();
  colorCopy = color;
  v5 = v6.receiver;
  [(AUGenericViewParameterCellBase *)&v6 setTintColor:colorCopy];
  sub_237174F34();
}

- (BOOL)accessibilityActivate
{
  selfCopy = self;
  sub_2371750A0();

  return 1;
}

- (void)switchValueChangedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_237175768();
}

- (_TtC12CoreAudioKit30AUGenericViewBoolParameterCell)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for AUGenericViewBoolParameterCell();
  coderCopy = coder;
  v6 = [(AUGenericViewParameterCellBase *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end