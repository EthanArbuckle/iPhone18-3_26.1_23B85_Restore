@interface CLVehicleHeadingInternal
- (CLVehicleHeadingInternal)initWithClientVehicleHeading:(id)heading;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CLVehicleHeadingInternal

- (CLVehicleHeadingInternal)initWithClientVehicleHeading:(id)heading
{
  var1 = heading.var1;
  var0 = heading.var0;
  v6.receiver = self;
  v6.super_class = CLVehicleHeadingInternal;
  result = [(CLVehicleHeadingInternal *)&v6 init];
  if (result)
  {
    result->fHeading.trueHeading = var0;
    result->fHeading.timestamp = var1;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  trueHeading = self->fHeading.trueHeading;
  timestamp = self->fHeading.timestamp;

  return [v4 initWithClientVehicleHeading:{trueHeading, timestamp}];
}

@end