@interface CLVehicleSpeedInternal
- (CLVehicleSpeedInternal)initWithClientVehicleSpeed:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CLVehicleSpeedInternal

- (CLVehicleSpeedInternal)initWithClientVehicleSpeed:(id)a3
{
  var3 = a3.var3;
  var2 = a3.var2;
  var1 = a3.var1;
  var0 = a3.var0;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  speed = self->fSpeed.speed;
  timestamp = self->fSpeed.timestamp;
  machContinuousTime = self->fSpeed.machContinuousTime;
  machAbsoluteTime = self->fSpeed.machAbsoluteTime;

  return [v4 initWithClientVehicleSpeed:{speed, timestamp, machContinuousTime, machAbsoluteTime}];
}

@end