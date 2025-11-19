@interface TimelineDayCell
- (HKMCDayViewModel)axCycleDayViewModel;
- (NSDate)axCycleDay;
- (void)adaptToColorSchemeChanges;
- (void)adaptToContentSizeChanges;
- (void)adaptToHorizontalSizeChanges;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
@end

@implementation TimelineDayCell

- (void)adaptToContentSizeChanges
{
  v2 = self;
  sub_29E03350C();
}

- (void)adaptToColorSchemeChanges
{
  v2 = self;
  sub_29E0336F4();
}

- (void)adaptToHorizontalSizeChanges
{
  v2 = self;
  sub_29E03314C();
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_29E0338D4(v4);
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for TimelineDayCell(0);
  v2 = v4.receiver;
  [(TimelineDayCell *)&v4 layoutSubviews];
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_didUpdateFromCycleDay;
  if (v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_didUpdateFromCycleDay] == 1)
  {
    sub_29E033A60();
    v2[v3] = 0;
  }
}

- (HKMCDayViewModel)axCycleDayViewModel
{
  v2 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_cycleDay;
  swift_beginAccess();
  return *&v2[*(type metadata accessor for CycleDay() + 20)];
}

- (NSDate)axCycleDay
{
  v3 = sub_29E2BCBB4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_startDate;
  swift_beginAccess();
  (*(v4 + 16))(v6, self + v7, v3);
  v8 = sub_29E2BCB04();
  (*(v4 + 8))(v6, v3);

  return v8;
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  sub_29E034A60(v6, v4);
}

@end