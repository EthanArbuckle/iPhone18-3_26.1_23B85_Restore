@interface UIDatePickerIOSCompactViewAccessibility
@end

@implementation UIDatePickerIOSCompactViewAccessibility

uint64_t __65___UIDatePickerIOSCompactViewAccessibility_accessibilityActivate__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setActiveComponent:1];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    return [*(a1 + 40) _datePicker:*(a1 + 48) didSelectComponent:1];
  }

  return result;
}

uint64_t __65___UIDatePickerIOSCompactViewAccessibility_accessibilityActivate__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setActiveComponent:2];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    return [*(a1 + 40) _datePicker:*(a1 + 48) didSelectComponent:2];
  }

  return result;
}

@end