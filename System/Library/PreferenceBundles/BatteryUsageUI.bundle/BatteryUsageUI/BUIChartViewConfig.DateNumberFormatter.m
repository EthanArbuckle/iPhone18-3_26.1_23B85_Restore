@interface BUIChartViewConfig.DateNumberFormatter
- (_TtCC14BatteryUsageUI18BUIChartViewConfig19DateNumberFormatter)init;
- (_TtCC14BatteryUsageUI18BUIChartViewConfig19DateNumberFormatter)initWithCoder:(id)a3;
- (id)stringForObjectValue:(id)a3;
@end

@implementation BUIChartViewConfig.DateNumberFormatter

- (_TtCC14BatteryUsageUI18BUIChartViewConfig19DateNumberFormatter)initWithCoder:(id)a3
{
  result = sub_117810();
  __break(1u);
  return result;
}

- (id)stringForObjectValue:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_117660();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  sub_585D8(v8);

  sub_488C8(v8, &qword_182FC8, &qword_124DD0);
  v6 = sub_117170();

  return v6;
}

- (_TtCC14BatteryUsageUI18BUIChartViewConfig19DateNumberFormatter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end