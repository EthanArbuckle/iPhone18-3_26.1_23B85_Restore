@interface HIDConnection
- (id)description;
- (void)dealloc;
@end

@implementation HIDConnection

- (id)description
{
  v2 = IOHIDEventSystemConnectionCopyDescription(self);

  return v2;
}

- (void)dealloc
{
  _IOHIDEventSystemConnectionReleasePrivate(self);
  v3.receiver = self;
  v3.super_class = HIDConnection;
  [(HIDConnection *)&v3 dealloc];
}

@end