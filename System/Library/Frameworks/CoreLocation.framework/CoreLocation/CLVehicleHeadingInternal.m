@interface CLVehicleHeadingInternal
- (CLVehicleHeadingInternal)initWithClientVehicleHeading:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CLVehicleHeadingInternal

- (CLVehicleHeadingInternal)initWithClientVehicleHeading:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  trueHeading = self->fHeading.trueHeading;
  timestamp = self->fHeading.timestamp;

  return [v4 initWithClientVehicleHeading:{trueHeading, timestamp}];
}

@end