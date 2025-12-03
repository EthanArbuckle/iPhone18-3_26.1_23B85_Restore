@interface SBCallAlertDisplayAccessibility
+ (id)newBottomLockBarForDisplay:(id)display;
@end

@implementation SBCallAlertDisplayAccessibility

+ (id)newBottomLockBarForDisplay:(id)display
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___SBCallAlertDisplayAccessibility;
  v3 = objc_msgSendSuper2(&v6, sel_newBottomLockBarForDisplay_, display);
  v4 = accessibilityLocalizedString(@"slide.to.answer");
  [v3 setAccessibilityLabel:v4];

  return v3;
}

@end