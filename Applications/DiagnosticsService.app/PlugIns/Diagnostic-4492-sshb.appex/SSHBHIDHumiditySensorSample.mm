@interface SSHBHIDHumiditySensorSample
- (NSString)description;
- (id)csv;
@end

@implementation SSHBHIDHumiditySensorSample

- (NSString)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithString:v5];

  [(SSHBHIDHumiditySensorSample *)self timestamp];
  [v6 appendFormat:@"\nt: %f", v7];
  [v6 appendFormat:@"\nsequence: %u", -[SSHBHIDHumiditySensorSample sequence](self, "sequence")];
  [(SSHBHIDHumiditySensorSample *)self humidity];
  [v6 appendFormat:@"\nhumidity: %f", v8];

  return v6;
}

- (id)csv
{
  [(SSHBHIDHumiditySensorSample *)self timestamp];
  v4 = v3;
  sequence = [(SSHBHIDHumiditySensorSample *)self sequence];
  [(SSHBHIDHumiditySensorSample *)self humidity];
  return [NSString stringWithFormat:@"%f, %u, %f", v4, sequence, v6];
}

@end