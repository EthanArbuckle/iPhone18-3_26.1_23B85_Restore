@interface CycleChartSectionView
- (NSString)description;
- (_TtC24MenstrualCyclesAppPlugin21CycleChartSectionView)initWithCoder:(id)a3;
- (void)drawRect:(CGRect)a3;
@end

@implementation CycleChartSectionView

- (NSString)description
{
  v2 = self;
  sub_29DEFA680();

  v3 = sub_29E2C33A4();

  return v3;
}

- (_TtC24MenstrualCyclesAppPlugin21CycleChartSectionView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartSectionView_role) = 0;
  v4 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartSectionView_header;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[32] = 1;
  v5 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartSectionView_footer;
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartSectionView_cycle;
  v7 = type metadata accessor for CycleChartCycle(0);
  (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartSectionView_dayProvider) = 0;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_29DEFAA88(x, y, width, height);
}

@end