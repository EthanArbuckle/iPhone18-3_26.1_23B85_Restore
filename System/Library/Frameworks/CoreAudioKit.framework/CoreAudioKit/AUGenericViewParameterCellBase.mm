@interface AUGenericViewParameterCellBase
- (NSLayoutConstraint)parameterWidthConstraint;
- (NSLayoutConstraint)valueStackWidthConstraint;
- (UIColor)tintColor;
- (UILabel)parameterName;
- (UILabel)valueLabel;
- (_TtC12CoreAudioKit30AUGenericViewParameterCellBase)initWithFrame:(CGRect)a3;
- (void)setTintColor:(id)a3;
@end

@implementation AUGenericViewParameterCellBase

- (UILabel)parameterName
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UILabel)valueLabel
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSLayoutConstraint)parameterWidthConstraint
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSLayoutConstraint)valueStackWidthConstraint
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIColor)tintColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AUGenericViewParameterCellBase();
  v2 = [(AUGenericViewParameterCellBase *)&v4 tintColor];

  return v2;
}

- (void)setTintColor:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for AUGenericViewParameterCellBase();
  v4 = a3;
  v5 = v6.receiver;
  [(AUGenericViewParameterCellBase *)&v6 setTintColor:v4];
  sub_2371530BC();
}

- (_TtC12CoreAudioKit30AUGenericViewParameterCellBase)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end