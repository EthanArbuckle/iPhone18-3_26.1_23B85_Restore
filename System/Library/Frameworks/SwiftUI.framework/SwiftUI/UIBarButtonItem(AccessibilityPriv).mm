@interface UIBarButtonItem(AccessibilityPriv)
- (uint64_t)resetAccessibilityLabel;
@end

@implementation UIBarButtonItem(AccessibilityPriv)

- (uint64_t)resetAccessibilityLabel
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    result = [self _accessibilityGetBlockForAttribute:1];
    if (!result)
    {

      return [self _setAccessibilityLabelBlock:0];
    }
  }

  return result;
}

@end