@interface CalendarMonthCell
- (NSDate)ax_month;
- (_TtC24MenstrualCyclesAppPlugin17CalendarMonthCell)initWithCoder:(id)a3;
- (_TtC24MenstrualCyclesAppPlugin17CalendarMonthCell)initWithFrame:(CGRect)a3;
@end

@implementation CalendarMonthCell

- (NSDate)ax_month
{
  v3 = sub_29E2BCBB4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17CalendarMonthCell_viewModel;
  swift_beginAccess();
  v8 = type metadata accessor for CompactCalendarMonthViewModel(0);
  v9 = (*(*(v8 - 8) + 48))(self + v7, 1, v8);
  v10 = 0;
  if (!v9)
  {
    (*(v4 + 16))(v6, self + v7, v3);
    v11 = sub_29E2BCB04();
    (*(v4 + 8))(v6, v3);
    v10 = v11;
  }

  return v10;
}

- (_TtC24MenstrualCyclesAppPlugin17CalendarMonthCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17CalendarMonthCell_calendarView) = 0;
  v9 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17CalendarMonthCell_viewModel;
  v10 = type metadata accessor for CompactCalendarMonthViewModel(0);
  (*(*(v10 - 8) + 56))(self + v9, 1, 1, v10);
  v11 = MEMORY[0x29EDCA190];
  *(self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17CalendarMonthCell_ax_spottingDays) = MEMORY[0x29EDCA190];
  *(self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17CalendarMonthCell_ax_flowDays) = v11;
  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = [(CalendarMonthCell *)&v14 initWithFrame:x, y, width, height];
  [(CalendarMonthCell *)v12 setMaximumContentSizeCategory:*MEMORY[0x29EDC8070]];
  return v12;
}

- (_TtC24MenstrualCyclesAppPlugin17CalendarMonthCell)initWithCoder:(id)a3
{
  *(self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17CalendarMonthCell_calendarView) = 0;
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17CalendarMonthCell_viewModel;
  v5 = type metadata accessor for CompactCalendarMonthViewModel(0);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = MEMORY[0x29EDCA190];
  *(self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17CalendarMonthCell_ax_spottingDays) = MEMORY[0x29EDCA190];
  *(self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17CalendarMonthCell_ax_flowDays) = v6;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

@end