@interface BKSHIDEventKeyCommandDispatchingRoot
- (id)decodePayload:(id)a3;
@end

@implementation BKSHIDEventKeyCommandDispatchingRoot

- (id)decodePayload:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"payload"];

  return v4;
}

@end