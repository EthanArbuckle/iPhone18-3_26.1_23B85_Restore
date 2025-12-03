@interface TimelineDayCell
- (HKMCDayViewModel)axCycleDayViewModel;
- (NSDate)axCycleDay;
- (void)adaptToColorSchemeChanges;
- (void)adaptToContentSizeChanges;
- (void)adaptToHorizontalSizeChanges;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
@end

@implementation TimelineDayCell

- (void)adaptToContentSizeChanges
{
  selfCopy = self;
  sub_29E03350C();
}

- (void)adaptToColorSchemeChanges
{
  selfCopy = self;
  sub_29E0336F4();
}

- (void)adaptToHorizontalSizeChanges
{
  selfCopy = self;
  sub_29E03314C();
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  sub_29E0338D4(attributesCopy);
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

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  finishedCopy = finished;
  stopCopy = stop;
  selfCopy = self;
  sub_29E034A60(stopCopy, finishedCopy);
}

@end