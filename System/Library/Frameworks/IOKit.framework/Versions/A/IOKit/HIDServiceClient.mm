@interface HIDServiceClient
- (id)description;
- (void)dealloc;
@end

@implementation HIDServiceClient

- (void)dealloc
{
  _IOHIDServiceClientReleasePrivate(self);
  v3.receiver = self;
  v3.super_class = HIDServiceClient;
  [(HIDServiceClient *)&v3 dealloc];
}

- (id)description
{
  v2 = IOHIDServiceClientCopyDescription(self);

  return v2;
}

@end