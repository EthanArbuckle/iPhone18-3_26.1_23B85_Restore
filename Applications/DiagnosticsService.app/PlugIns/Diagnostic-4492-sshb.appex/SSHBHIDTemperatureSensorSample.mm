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

  v7 = [(SSHBHIDTemperatureSensorSample *)self identifier];
  [v6 appendFormat:@"\nidentifier: %@", v7];

  v8 = [(SSHBHIDTemperatureSensorSample *)self name];
  [v6 appendFormat:@"\nname: %@", v8];

  [(SSHBHIDTemperatureSensorSample *)self temperature];
  [v6 appendFormat:@"\ntemperature: %f", v9];

  return v6;
}

- (id)csv
{
  v3 = [(SSHBHIDTemperatureSensorSample *)self identifier];
  v4 = [(SSHBHIDTemperatureSensorSample *)self name];
  [(SSHBHIDTemperatureSensorSample *)self temperature];
  v6 = [NSString stringWithFormat:@"%@, %@, %f", v3, v4, v5];

  return v6;
}

@end