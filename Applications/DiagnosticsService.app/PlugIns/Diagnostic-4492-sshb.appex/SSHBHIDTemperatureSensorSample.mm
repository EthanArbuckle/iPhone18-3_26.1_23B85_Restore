@interface SSHBHIDTemperatureSensorSample
- (NSString)description;
- (id)csv;
@end

@implementation SSHBHIDTemperatureSensorSample

- (NSString)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithString:v5];

  identifier = [(SSHBHIDTemperatureSensorSample *)self identifier];
  [v6 appendFormat:@"\nidentifier: %@", identifier];

  name = [(SSHBHIDTemperatureSensorSample *)self name];
  [v6 appendFormat:@"\nname: %@", name];

  [(SSHBHIDTemperatureSensorSample *)self temperature];
  [v6 appendFormat:@"\ntemperature: %f", v9];

  return v6;
}

- (id)csv
{
  identifier = [(SSHBHIDTemperatureSensorSample *)self identifier];
  name = [(SSHBHIDTemperatureSensorSample *)self name];
  [(SSHBHIDTemperatureSensorSample *)self temperature];
  v6 = [NSString stringWithFormat:@"%@, %@, %f", identifier, name, v5];

  return v6;
}

@end