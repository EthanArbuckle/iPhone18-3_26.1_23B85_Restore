@interface UIToolbarAccessibility
@end

@implementation UIToolbarAccessibility

uint64_t __65__UIToolbarAccessibility__PassKitUI__UIKit_accessibilityElements__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _axIsCheckmarkButton:v3])
  {
    v4 = accessibilityLocalizedString(@"done.button");
    [v3 setAccessibilityLabel:v4];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v3 isAccessibilityElement] || (objc_msgSend(v3, "_accessibilityViewIsVisible") & 1) == 0)
    {
      v5 = 0;
      goto LABEL_8;
    }
  }

  v5 = 1;
LABEL_8:

  return v5;
}

@end