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

  v7 = [(SSHBHIDVoltageSensorSample *)self identifier];
  [v6 appendFormat:@"\nidentifier: %@", v7];

  v8 = [(SSHBHIDVoltageSensorSample *)self name];
  [v6 appendFormat:@"\nname: %@", v8];

  [(SSHBHIDVoltageSensorSample *)self voltage];
  [v6 appendFormat:@"\nvoltage: %f", v9];

  return v6;
}

- (id)csv
{
  v3 = [(SSHBHIDVoltageSensorSample *)self identifier];
  v4 = [(SSHBHIDVoltageSensorSample *)self name];
  [(SSHBHIDVoltageSensorSample *)self voltage];
  v6 = [NSString stringWithFormat:@"%@, %@, %f", v3, v4, v5];

  return v6;
}

@end