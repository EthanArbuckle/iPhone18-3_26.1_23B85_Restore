@interface HIDElement
- (BOOL)isEqual:(id)equal;
- (void)dealloc;
@end

@implementation HIDElement

- (void)dealloc
{
  _IOHIDElementReleasePrivate(self);
  v3.receiver = self;
  v3.super_class = HIDElement;
  [(HIDElement *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  Cookie = IOHIDElementGetCookie(self);
  return Cookie == IOHIDElementGetCookie(equal);
}

@end