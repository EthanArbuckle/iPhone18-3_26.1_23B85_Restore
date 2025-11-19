@interface HIDElement
- (BOOL)isEqual:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  Cookie = IOHIDElementGetCookie(self);
  return Cookie == IOHIDElementGetCookie(a3);
}

@end