@interface SSHBHIDCurrentSensorSample
- (NSString)description;
- (id)csv;
@end

@implementation SSHBHIDCurrentSensorSample

- (NSString)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithString:v5];

  identifier = [(SSHBHIDCurrentSensorSample *)self identifier];
  [v6 appendFormat:@"\nidentifier: %@", identifier];

  name = [(SSHBHIDCurrentSensorSample *)self name];
  [v6 appendFormat:@"\nname: %@", name];

  [(SSHBHIDCurrentSensorSample *)self current];
  [v6 appendFormat:@"\ncurrent: %f", v9];

  return v6;
}

- (id)csv
{
  identifier = [(SSHBHIDCurrentSensorSample *)self identifier];
  name = [(SSHBHIDCurrentSensorSample *)self name];
  [(SSHBHIDCurrentSensorSample *)self current];
  v6 = [NSString stringWithFormat:@"%@, %@, %f", identifier, name, v5];

  return v6;
}

@end