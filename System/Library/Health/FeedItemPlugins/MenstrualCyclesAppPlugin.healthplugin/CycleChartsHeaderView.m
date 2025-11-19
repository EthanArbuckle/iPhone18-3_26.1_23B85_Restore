@interface CycleChartsHeaderView
- (_TtC24MenstrualCyclesAppPlugin21CycleChartsHeaderView)initWithCoder:(id)a3;
- (_TtC24MenstrualCyclesAppPlugin21CycleChartsHeaderView)initWithFrame:(CGRect)a3;
@end

@implementation CycleChartsHeaderView

- (_TtC24MenstrualCyclesAppPlugin21CycleChartsHeaderView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartsHeaderView_activeCycle;
  v5 = type metadata accessor for CycleChartCycle(0);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartsHeaderView_titleLabel;
  *(&self->super.super.super.isa + v6) = sub_29DFE3D84(MEMORY[0x29EDC80F8], 0);
  v7 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartsHeaderView_daysCountView;
  *(&self->super.super.super.isa + v7) = [objc_allocWithZone(type metadata accessor for CycleChartsDaysCountHeaderView()) init];
  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartsHeaderView_dateIntervalLabel;
  *(&self->super.super.super.isa + v8) = sub_29DFE3D84(MEMORY[0x29EDC8118], 0);
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin21CycleChartsHeaderView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end