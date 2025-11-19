@interface SBCallAlertDisplayAccessibility
+ (id)newBottomLockBarForDisplay:(id)a3;
@end

@implementation SBCallAlertDisplayAccessibility

+ (id)newBottomLockBarForDisplay:(id)a3
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___SBCallAlertDisplayAccessibility;
  v3 = objc_msgSendSuper2(&v6, sel_newBottomLockBarForDisplay_, a3);
  v4 = accessibilityLocalizedString(@"slide.to.answer");
  [v3 setAccessibilityLabel:v4];

  return v3;
}

@end