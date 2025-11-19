@interface SSHBHIDGyroscopeSample
- (NSString)description;
- (id)csv;
@end

@implementation SSHBHIDGyroscopeSample

- (NSString)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithString:v5];

  v10.receiver = self;
  v10.super_class = SSHBHIDGyroscopeSample;
  v7 = [(SSHBHIDMotionSample *)&v10 description];
  [v6 appendFormat:@"\n%@", v7];

  [(SSHBHIDGyroscopeSample *)self temperature];
  [v6 appendFormat:@"\ntemperature: %f", v8];

  return v6;
}

- (id)csv
{
  v8.receiver = self;
  v8.super_class = SSHBHIDGyroscopeSample;
  v3 = [(SSHBHIDMotionSample *)&v8 csv];
  [(SSHBHIDGyroscopeSample *)self temperature];
  v5 = [NSString stringWithFormat:@", %f", v4];
  v6 = [v3 stringByAppendingString:v5];

  return v6;
}

@end