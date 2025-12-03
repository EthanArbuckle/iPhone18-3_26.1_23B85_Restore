@interface TrendDetailVO2MaxMeter
- (CGSize)intrinsicContentSize;
- (_TtC10FitnessApp22TrendDetailVO2MaxMeter)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation TrendDetailVO2MaxMeter

- (CGSize)intrinsicContentSize
{
  v2 = 119.0;
  v3 = 10.0;
  result.height = v2;
  result.width = v3;
  return result;
}

- (_TtC10FitnessApp22TrendDetailVO2MaxMeter)initWithCoder:(id)coder
{
  v5 = OBJC_IVAR____TtC10FitnessApp22TrendDetailVO2MaxMeter_gradientLayer;
  v6 = objc_allocWithZone(CAGradientLayer);
  coderCopy = coder;
  *(&self->super.super.super.isa + v5) = [v6 init];
  v8 = OBJC_IVAR____TtC10FitnessApp22TrendDetailVO2MaxMeter_shapeLayer;
  v9 = [objc_allocWithZone(CAShapeLayer) init];

  *(&self->super.super.super.isa + v8) = v9;
  type metadata accessor for TrendDetailVO2MaxMeter();
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for TrendDetailVO2MaxMeter();
  v2 = v4.receiver;
  [(TrendDetailVO2MaxMeter *)&v4 layoutSubviews];
  v3 = objc_opt_self();
  [v3 begin];
  [v3 setDisableActions:1];
  sub_10031E374(v2);
  [v3 commit];
}

@end