@interface HIDEventService
- (id)description;
- (void)dealloc;
@end

@implementation HIDEventService

- (id)description
{
  v2 = IOHIDServiceCopyDescription(self);

  return v2;
}

- (void)dealloc
{
  _IOHIDServiceReleasePrivate(self);
  v3.receiver = self;
  v3.super_class = HIDEventService;
  [(HIDEventService *)&v3 dealloc];
}

@end