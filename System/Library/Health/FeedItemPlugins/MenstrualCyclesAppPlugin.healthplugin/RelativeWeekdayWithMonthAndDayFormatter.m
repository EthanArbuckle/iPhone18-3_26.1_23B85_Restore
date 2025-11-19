@interface RelativeWeekdayWithMonthAndDayFormatter
- (_TtC24MenstrualCyclesAppPlugin39RelativeWeekdayWithMonthAndDayFormatter)init;
- (_TtC24MenstrualCyclesAppPlugin39RelativeWeekdayWithMonthAndDayFormatter)initWithCoder:(id)a3;
- (id)stringFromDate:(id)a3;
@end

@implementation RelativeWeekdayWithMonthAndDayFormatter

- (_TtC24MenstrualCyclesAppPlugin39RelativeWeekdayWithMonthAndDayFormatter)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin39RelativeWeekdayWithMonthAndDayFormatter____lazy_storage___relativeDateFormatter) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin39RelativeWeekdayWithMonthAndDayFormatter____lazy_storage___nonRelativeDateFormatter) = 0;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

- (id)stringFromDate:(id)a3
{
  v4 = sub_29E2BCBB4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCB44();
  v8 = self;
  sub_29DFAB678();

  (*(v5 + 8))(v7, v4);
  v9 = sub_29E2C33A4();

  return v9;
}

- (_TtC24MenstrualCyclesAppPlugin39RelativeWeekdayWithMonthAndDayFormatter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end