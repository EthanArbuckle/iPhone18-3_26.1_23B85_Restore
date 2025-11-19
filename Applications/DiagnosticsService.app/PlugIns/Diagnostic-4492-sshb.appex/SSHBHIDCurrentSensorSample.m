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

  v7 = [(SSHBHIDCurrentSensorSample *)self identifier];
  [v6 appendFormat:@"\nidentifier: %@", v7];

  v8 = [(SSHBHIDCurrentSensorSample *)self name];
  [v6 appendFormat:@"\nname: %@", v8];

  [(SSHBHIDCurrentSensorSample *)self current];
  [v6 appendFormat:@"\ncurrent: %f", v9];

  return v6;
}

- (id)csv
{
  v3 = [(SSHBHIDCurrentSensorSample *)self identifier];
  v4 = [(SSHBHIDCurrentSensorSample *)self name];
  [(SSHBHIDCurrentSensorSample *)self current];
  v6 = [NSString stringWithFormat:@"%@, %@, %f", v3, v4, v5];

  return v6;
}

@end