@interface ChargingStatusViewFactory
+ (id)createCellWith:(id)a3;
- (_TtC14BatteryUsageUI25ChargingStatusViewFactory)init;
@end

@implementation ChargingStatusViewFactory

+ (id)createCellWith:(id)a3
{
  v4 = a3;
  v5 = sub_A81A4(a3);

  return v5;
}

- (_TtC14BatteryUsageUI25ChargingStatusViewFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ChargingStatusViewFactory();
  return [(ChargingStatusViewFactory *)&v3 init];
}

@end