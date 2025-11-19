@interface SSHBHIDSmartCoverSample
- (NSString)description;
@end

@implementation SSHBHIDSmartCoverSample

- (NSString)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithString:v5];

  v10.receiver = self;
  v10.super_class = SSHBHIDSmartCoverSample;
  v7 = [(SSHBHIDSmartCoverSample *)&v10 description];
  [v6 appendFormat:@"\n%@", v7];

  [v6 appendFormat:@"\nlocation: %d", -[SSHBHIDSmartCoverSample location](self, "location")];
  [v6 appendFormat:@"\ndownEvent: %d", -[SSHBHIDSmartCoverSample isDownEvent](self, "isDownEvent")];
  [(SSHBHIDSmartCoverSample *)self timestamp];
  [v6 appendFormat:@"\ntimestamp: %f", v8];

  return v6;
}

@end