@interface NSObject(CoreAX)
- (id)swiftui_accessibilityLabel;
- (void)_swiftui_setAccessibilityLabel:()CoreAX;
@end

@implementation NSObject(CoreAX)

- (id)swiftui_accessibilityLabel
{
  if (objc_opt_respondsToSelector())
  {
    accessibilityLabel = [self accessibilityLabel];
  }

  else
  {
    accessibilityLabel = 0;
  }

  return accessibilityLabel;
}

- (void)_swiftui_setAccessibilityLabel:()CoreAX
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [self setAccessibilityLabel:v4];
  }
}

@end