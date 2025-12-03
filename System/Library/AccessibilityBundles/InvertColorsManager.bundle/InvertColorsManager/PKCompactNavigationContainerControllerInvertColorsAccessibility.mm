@interface PKCompactNavigationContainerControllerInvertColorsAccessibility
+ (id)dimmingColor;
@end

@implementation PKCompactNavigationContainerControllerInvertColorsAccessibility

+ (id)dimmingColor
{
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___PKCompactNavigationContainerControllerInvertColorsAccessibility;
  v2 = objc_msgSendSuper2(&v10, "dimmingColor");
  if (!UIAccessibilityIsInvertColorsEnabled())
  {
    goto LABEL_4;
  }

  v3 = AXUIApplicationWindows();
  firstObject = [v3 firstObject];
  traitCollection = [firstObject traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == &dword_0 + 2)
  {
    v7 = +[UIColor whiteColor];
    v8 = [v7 colorWithAlphaComponent:0.75];
  }

  else
  {
LABEL_4:
    v8 = v2;
  }

  return v8;
}

@end