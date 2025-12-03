@interface AUGenericViewParameterCellBase
- (NSLayoutConstraint)parameterWidthConstraint;
- (NSLayoutConstraint)valueStackWidthConstraint;
- (UIColor)tintColor;
- (UILabel)parameterName;
- (UILabel)valueLabel;
- (_TtC12CoreAudioKit30AUGenericViewParameterCellBase)initWithFrame:(CGRect)frame;
- (void)setTintColor:(id)color;
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
  tintColor = [(AUGenericViewParameterCellBase *)&v4 tintColor];

  return tintColor;
}

- (void)setTintColor:(id)color
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for AUGenericViewParameterCellBase();
  colorCopy = color;
  v5 = v6.receiver;
  [(AUGenericViewParameterCellBase *)&v6 setTintColor:colorCopy];
  sub_2371530BC();
}

- (_TtC12CoreAudioKit30AUGenericViewParameterCellBase)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end