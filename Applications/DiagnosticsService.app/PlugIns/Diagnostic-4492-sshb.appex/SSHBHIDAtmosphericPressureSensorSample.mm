@interface SSHBHIDAtmosphericPressureSensorSample
- (NSString)description;
- (id)csv;
@end

@implementation SSHBHIDAtmosphericPressureSensorSample

- (NSString)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithString:v5];

  [(SSHBHIDAtmosphericPressureSensorSample *)self timestamp];
  [v6 appendFormat:@"\nt: %f", v7];
  [(SSHBHIDAtmosphericPressureSensorSample *)self level];
  [v6 appendFormat:@"\nlevel: %f", v8];
  [v6 appendFormat:@"\nsequence: %u", -[SSHBHIDAtmosphericPressureSensorSample sequence](self, "sequence")];
  [(SSHBHIDAtmosphericPressureSensorSample *)self temperature];
  [v6 appendFormat:@"\ntemperature: %f", v9];

  return v6;
}

- (id)csv
{
  [(SSHBHIDAtmosphericPressureSensorSample *)self timestamp];
  v4 = v3;
  [(SSHBHIDAtmosphericPressureSensorSample *)self level];
  v6 = v5;
  sequence = [(SSHBHIDAtmosphericPressureSensorSample *)self sequence];
  [(SSHBHIDAtmosphericPressureSensorSample *)self temperature];
  return [NSString stringWithFormat:@"%f, %f, %u, %f", v4, *&v6, sequence, v8];
}

@end