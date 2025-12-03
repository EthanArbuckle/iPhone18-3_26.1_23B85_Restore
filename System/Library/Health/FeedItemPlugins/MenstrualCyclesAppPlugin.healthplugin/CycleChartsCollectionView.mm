@interface CycleChartsCollectionView
- (_TtC24MenstrualCyclesAppPlugin25CycleChartsCollectionView)initWithCoder:(id)coder;
- (_TtC24MenstrualCyclesAppPlugin25CycleChartsCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
- (id)ax_cycleChartDayForIndexPath:(id)path;
- (id)ax_cycles;
- (id)ax_predominantCycle;
@end

@implementation CycleChartsCollectionView

- (id)ax_cycles
{
  selfCopy = self;
  CycleChartsCollectionView.ax_cycles()();

  sub_29E187194(0, &qword_2A181E078, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC98E0]);
  v3 = sub_29E2C3604();

  return v3;
}

- (id)ax_predominantCycle
{
  sub_29E1855C0(0, &qword_2A18189E8, type metadata accessor for CycleChartCycle, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v10 - v4;
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_29E2C1214();

  v7 = type metadata accessor for CycleChartCycle(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_29E187874(v5, &qword_2A18189E8, type metadata accessor for CycleChartCycle, MEMORY[0x29EDC9C68], sub_29E1855C0);
    sub_29E1853E0(MEMORY[0x29EDCA190]);
  }

  else
  {
    sub_29E17FDD8();
    sub_29E185624(v5, type metadata accessor for CycleChartCycle);
  }

  v8 = sub_29E2C31F4();

  return v8;
}

- (id)ax_cycleChartDayForIndexPath:(id)path
{
  v4 = sub_29E2BCFB4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  selfCopy = self;
  CycleChartsCollectionView.ax_cycleChartDay(forIndexPath:)();

  (*(v5 + 8))(v7, v4);
  v9 = sub_29E2C31F4();

  return v9;
}

- (_TtC24MenstrualCyclesAppPlugin25CycleChartsCollectionView)initWithCoder:(id)coder
{
  if (MEMORY[0x29EDCA190] >> 62 && sub_29E2C4484())
  {
    v4 = sub_29DE92AF0(MEMORY[0x29EDCA190]);
  }

  else
  {
    v4 = MEMORY[0x29EDCA1A0];
  }

  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25CycleChartsCollectionView_subscriptions) = v4;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin25CycleChartsCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end