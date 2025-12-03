@interface BUIChartViewConfig.DateNumberFormatter
- (_TtCC14BatteryUsageUI18BUIChartViewConfig19DateNumberFormatter)init;
- (_TtCC14BatteryUsageUI18BUIChartViewConfig19DateNumberFormatter)initWithCoder:(id)coder;
- (id)stringForObjectValue:(id)value;
@end

@implementation BUIChartViewConfig.DateNumberFormatter

- (_TtCC14BatteryUsageUI18BUIChartViewConfig19DateNumberFormatter)initWithCoder:(id)coder
{
  result = sub_117810();
  __break(1u);
  return result;
}

- (id)stringForObjectValue:(id)value
{
  if (value)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_117660();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
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