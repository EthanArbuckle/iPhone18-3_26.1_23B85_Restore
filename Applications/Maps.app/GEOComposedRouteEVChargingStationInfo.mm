@interface GEOComposedRouteEVChargingStationInfo
+ (id)chargeToStringForChargePercentage:(double)percentage;
@end

@implementation GEOComposedRouteEVChargingStationInfo

+ (id)chargeToStringForChargePercentage:(double)percentage
{
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (percentage >= 100.0)
  {
    v6 = @"Charge to %ld%%";
  }

  else
  {
    v6 = @"Charge to at least %ld%%";
  }

  v7 = [v4 localizedStringForKey:v6 value:@"localized string not found" table:0];
  percentage = [NSString stringWithFormat:v7, percentage];

  return percentage;
}

@end