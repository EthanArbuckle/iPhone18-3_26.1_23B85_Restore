@interface AUGenericViewMeterParameterCell
- (NSLayoutConstraint)minWidthConstraint;
- (UIColor)tintColor;
- (UILabel)maxLabel;
- (UILabel)minLabel;
- (UILabel)unitLabel;
- (_TtC12CoreAudioKit11AUMeterView)meter;
- (void)setTintColor:(id)a3;
@end

@implementation AUGenericViewMeterParameterCell

- (_TtC12CoreAudioKit11AUMeterView)meter
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UILabel)unitLabel
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UILabel)minLabel
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UILabel)maxLabel
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSLayoutConstraint)minWidthConstraint
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIColor)tintColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AUGenericViewMeterParameterCell();
  v2 = [(AUGenericViewParameterCellBase *)&v4 tintColor];

  return v2;
}

- (void)setTintColor:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for AUGenericViewMeterParameterCell();
  v4 = a3;
  v5 = v6.receiver;
  [(AUGenericViewParameterCellBase *)&v6 setTintColor:v4];
  sub_237149010();
}

@end