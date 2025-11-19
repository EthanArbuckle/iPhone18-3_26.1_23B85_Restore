@interface TrendsScrubberFlagpoleView
+ (uint64_t)layerClass;
- (_TtC10FitnessApp26TrendsScrubberFlagpoleView)initWithCoder:(id)a3;
- (_TtC10FitnessApp26TrendsScrubberFlagpoleView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation TrendsScrubberFlagpoleView

+ (uint64_t)layerClass
{
  sub_1000059F8(0, &qword_1008F6008);

  return swift_getObjCClassFromMetadata();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100609888();
}

- (_TtC10FitnessApp26TrendsScrubberFlagpoleView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC10FitnessApp26TrendsScrubberFlagpoleView_platterColor;
  *(&self->super.super.super.isa + v8) = [objc_opt_self() whiteColor];
  v10.receiver = self;
  v10.super_class = type metadata accessor for TrendsScrubberFlagpoleView();
  return [(TrendsScrubberFlagpoleView *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC10FitnessApp26TrendsScrubberFlagpoleView)initWithCoder:(id)a3
{
  v5 = OBJC_IVAR____TtC10FitnessApp26TrendsScrubberFlagpoleView_platterColor;
  v6 = objc_opt_self();
  v7 = a3;
  *(&self->super.super.super.isa + v5) = [v6 whiteColor];
  v10.receiver = self;
  v10.super_class = type metadata accessor for TrendsScrubberFlagpoleView();
  v8 = [(TrendsScrubberFlagpoleView *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end