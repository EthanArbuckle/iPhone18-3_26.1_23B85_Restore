@interface VGVehicleState
- (NSNumber)currentBatteryCharge;
@end

@implementation VGVehicleState

- (NSNumber)currentBatteryCharge
{
  v2 = [(VGVehicleState *)self currentBatteryCapacity];
  v3 = +[NSUnitEnergy kilowattHours];
  v4 = [v2 measurementByConvertingToUnit:v3];
  [v4 doubleValue];
  v6 = [NSNumber numberWithUnsignedInteger:(v5 * 1000.0)];

  return v6;
}

@end