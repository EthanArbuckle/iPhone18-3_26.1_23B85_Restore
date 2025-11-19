@interface GEOComposedRouteEVChargingStationInfo
+ (id)chargeToStringForChargePercentage:(double)a3;
@end

@implementation GEOComposedRouteEVChargingStationInfo

+ (id)chargeToStringForChargePercentage:(double)a3
{
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (a3 >= 100.0)
  {
    v6 = @"Charge to %ld%%";
  }

  else
  {
    v6 = @"Charge to at least %ld%%";
  }

  v7 = [v4 localizedStringForKey:v6 value:@"localized string not found" table:0];
  v8 = [NSString stringWithFormat:v7, a3];

  return v8;
}

@end