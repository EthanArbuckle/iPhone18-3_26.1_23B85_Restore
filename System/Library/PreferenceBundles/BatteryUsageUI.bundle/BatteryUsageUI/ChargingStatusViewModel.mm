@interface ChargingStatusViewModel
- (_TtC14BatteryUsageUI23ChargingStatusViewModel)init;
- (void)dataChanged;
- (void)lastChargeInfoChangedWithLevel:(id)level dateInterval:(id)interval;
@end

@implementation ChargingStatusViewModel

- (_TtC14BatteryUsageUI23ChargingStatusViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)dataChanged
{
  selfCopy = self;
  sub_4FDE0();
}

- (void)lastChargeInfoChangedWithLevel:(id)level dateInterval:(id)interval
{
  intervalCopy = interval;
  selfCopy = self;
  if (level)
  {
    integerValue = [level integerValue];
    if (intervalCopy)
    {
LABEL_3:
      [intervalCopy doubleValue];
      v9 = v8;
      goto LABEL_6;
    }
  }

  else
  {
    integerValue = 0;
    if (intervalCopy)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  sub_4CAD8(integerValue, level == 0, v9, intervalCopy == 0);
}

@end