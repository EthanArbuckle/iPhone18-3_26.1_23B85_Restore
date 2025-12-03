@interface BKSHIDEventKeyCommandDispatchingRoot
- (id)decodePayload:(id)payload;
@end

@implementation BKSHIDEventKeyCommandDispatchingRoot

- (id)decodePayload:(id)payload
{
  payloadCopy = payload;
  v4 = [payloadCopy decodeObjectOfClass:objc_opt_class() forKey:@"payload"];

  return v4;
}

@end