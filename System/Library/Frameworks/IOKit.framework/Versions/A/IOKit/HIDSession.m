@interface HIDSession
- (void)dealloc;
@end

@implementation HIDSession

- (void)dealloc
{
  _IOHIDSessionReleasePrivate(self);
  v3.receiver = self;
  v3.super_class = HIDSession;
  [(HIDSession *)&v3 dealloc];
}

@end