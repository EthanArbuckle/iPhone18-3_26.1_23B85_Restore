@interface ChargingStatusViewModel
- (_TtC14BatteryUsageUI23ChargingStatusViewModel)init;
- (void)dataChanged;
- (void)lastChargeInfoChangedWithLevel:(id)a3 dateInterval:(id)a4;
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
  v2 = self;
  sub_4FDE0();
}

- (void)lastChargeInfoChangedWithLevel:(id)a3 dateInterval:(id)a4
{
  v6 = a4;
  v10 = self;
  if (a3)
  {
    v7 = [a3 integerValue];
    if (v6)
    {
LABEL_3:
      [v6 doubleValue];
      v9 = v8;
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  sub_4CAD8(v7, a3 == 0, v9, v6 == 0);
}

@end