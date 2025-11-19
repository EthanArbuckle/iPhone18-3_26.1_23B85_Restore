@interface SSHBHIDPowerSensorSample
- (NSString)description;
- (id)csv;
@end

@implementation SSHBHIDPowerSensorSample

- (NSString)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithString:v5];

  v7 = [(SSHBHIDPowerSensorSample *)self identifier];
  [v6 appendFormat:@"\nidentifier: %@", v7];

  v8 = [(SSHBHIDPowerSensorSample *)self name];
  [v6 appendFormat:@"\nname: %@", v8];

  [(SSHBHIDPowerSensorSample *)self wattage];
  [v6 appendFormat:@"\ntemperature: %f", v9];

  return v6;
}

- (id)csv
{
  v3 = [(SSHBHIDPowerSensorSample *)self identifier];
  v4 = [(SSHBHIDPowerSensorSample *)self name];
  [(SSHBHIDPowerSensorSample *)self wattage];
  v6 = [NSString stringWithFormat:@"%@, %@, %f", v3, v4, v5];

  return v6;
}

@end