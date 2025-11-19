@interface SSHBHIDMotionSample
- (NSString)description;
- (id)csv;
@end

@implementation SSHBHIDMotionSample

- (NSString)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithString:v5];

  [(SSHBHIDMotionSample *)self timestamp];
  [v6 appendFormat:@"\nt: %f", v7];
  [(SSHBHIDMotionSample *)self x];
  [v6 appendFormat:@"\nx: %f", v8];
  [(SSHBHIDMotionSample *)self y];
  [v6 appendFormat:@"\ny: %f", v9];
  [(SSHBHIDMotionSample *)self z];
  [v6 appendFormat:@"\nz: %f", v10];
  [v6 appendFormat:@"\ns: %u", -[SSHBHIDMotionSample sequence](self, "sequence")];

  return v6;
}

- (id)csv
{
  [(SSHBHIDMotionSample *)self timestamp];
  v4 = v3;
  [(SSHBHIDMotionSample *)self x];
  v6 = v5;
  [(SSHBHIDMotionSample *)self y];
  v8 = v7;
  [(SSHBHIDMotionSample *)self z];
  return [NSString stringWithFormat:@"%f, %f, %f, %f, %d", v4, *&v6, *&v8, v9, [(SSHBHIDMotionSample *)self sequence]];
}

@end