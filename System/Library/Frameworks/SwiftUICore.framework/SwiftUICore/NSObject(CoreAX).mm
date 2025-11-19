@interface NSObject(CoreAX)
- (id)swiftui_accessibilityLabel;
- (void)_swiftui_setAccessibilityLabel:()CoreAX;
@end

@implementation NSObject(CoreAX)

- (id)swiftui_accessibilityLabel
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 accessibilityLabel];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_swiftui_setAccessibilityLabel:()CoreAX
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [a1 setAccessibilityLabel:v4];
  }
}

@end