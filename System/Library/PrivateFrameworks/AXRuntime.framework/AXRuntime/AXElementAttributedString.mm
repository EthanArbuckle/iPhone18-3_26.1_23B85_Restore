@interface AXElementAttributedString
- (void)dealloc;
@end

@implementation AXElementAttributedString

- (void)dealloc
{
  if (objc_opt_respondsToSelector())
  {
    [(AXElementAttributedString *)self _accessibilityUnregister];
  }

  v3.receiver = self;
  v3.super_class = AXElementAttributedString;
  [(AXAttributedString *)&v3 dealloc];
}

@end