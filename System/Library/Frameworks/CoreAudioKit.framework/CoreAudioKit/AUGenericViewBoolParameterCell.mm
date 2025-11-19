@interface AUGenericViewBoolParameterCell
- (BOOL)accessibilityActivate;
- (UIColor)tintColor;
- (UISwitch)valueSwitch;
- (_TtC12CoreAudioKit30AUGenericViewBoolParameterCell)initWithCoder:(id)a3;
- (void)setTintColor:(id)a3;
- (void)switchValueChangedWithSender:(id)a3;
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
  v2 = [(AUGenericViewParameterCellBase *)&v4 tintColor];

  return v2;
}

- (void)setTintColor:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for AUGenericViewBoolParameterCell();
  v4 = a3;
  v5 = v6.receiver;
  [(AUGenericViewParameterCellBase *)&v6 setTintColor:v4];
  sub_237174F34();
}

- (BOOL)accessibilityActivate
{
  v2 = self;
  sub_2371750A0();

  return 1;
}

- (void)switchValueChangedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_237175768();
}

- (_TtC12CoreAudioKit30AUGenericViewBoolParameterCell)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for AUGenericViewBoolParameterCell();
  v5 = a3;
  v6 = [(AUGenericViewParameterCellBase *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end