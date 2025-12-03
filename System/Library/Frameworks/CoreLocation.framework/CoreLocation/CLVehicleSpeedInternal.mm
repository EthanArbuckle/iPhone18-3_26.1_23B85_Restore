@interface CLVehicleSpeedInternal
- (CLVehicleSpeedInternal)initWithClientVehicleSpeed:(id)speed;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CLVehicleSpeedInternal

- (CLVehicleSpeedInternal)initWithClientVehicleSpeed:(id)speed
{
  var3 = speed.var3;
  var2 = speed.var2;
  var1 = speed.var1;
  var0 = speed.var0;
  v8.receiver = self;
  v8.super_class = CLVehicleSpeedInternal;
  result = [(CLVehicleSpeedInternal *)&v8 init];
  if (result)
  {
    result->fSpeed.speed = var0;
    result->fSpeed.timestamp = var1;
    result->fSpeed.machContinuousTime = var2;
    result->fSpeed.machAbsoluteTime = var3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  speed = self->fSpeed.speed;
  timestamp = self->fSpeed.timestamp;
  machContinuousTime = self->fSpeed.machContinuousTime;
  machAbsoluteTime = self->fSpeed.machAbsoluteTime;

  return [v4 initWithClientVehicleSpeed:{speed, timestamp, machContinuousTime, machAbsoluteTime}];
}

@end