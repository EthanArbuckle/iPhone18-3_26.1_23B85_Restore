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

  identifier = [(SSHBHIDPowerSensorSample *)self identifier];
  [v6 appendFormat:@"\nidentifier: %@", identifier];

  name = [(SSHBHIDPowerSensorSample *)self name];
  [v6 appendFormat:@"\nname: %@", name];

  [(SSHBHIDPowerSensorSample *)self wattage];
  [v6 appendFormat:@"\ntemperature: %f", v9];

  return v6;
}

- (id)csv
{
  identifier = [(SSHBHIDPowerSensorSample *)self identifier];
  name = [(SSHBHIDPowerSensorSample *)self name];
  [(SSHBHIDPowerSensorSample *)self wattage];
  v6 = [NSString stringWithFormat:@"%@, %@, %f", identifier, name, v5];

  return v6;
}

@end