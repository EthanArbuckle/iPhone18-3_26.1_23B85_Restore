@interface SSHBHIDVoltageSensorSample
- (NSString)description;
- (id)csv;
@end

@implementation SSHBHIDVoltageSensorSample

- (NSString)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithString:v5];

  identifier = [(SSHBHIDVoltageSensorSample *)self identifier];
  [v6 appendFormat:@"\nidentifier: %@", identifier];

  name = [(SSHBHIDVoltageSensorSample *)self name];
  [v6 appendFormat:@"\nname: %@", name];

  [(SSHBHIDVoltageSensorSample *)self voltage];
  [v6 appendFormat:@"\nvoltage: %f", v9];

  return v6;
}

- (id)csv
{
  identifier = [(SSHBHIDVoltageSensorSample *)self identifier];
  name = [(SSHBHIDVoltageSensorSample *)self name];
  [(SSHBHIDVoltageSensorSample *)self voltage];
  v6 = [NSString stringWithFormat:@"%@, %@, %f", identifier, name, v5];

  return v6;
}

@end