@interface PKCompactNavigationContainerControllerInvertColorsAccessibility
+ (id)dimmingColor;
@end

@implementation PKCompactNavigationContainerControllerInvertColorsAccessibility

+ (id)dimmingColor
{
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___PKCompactNavigationContainerControllerInvertColorsAccessibility;
  v2 = objc_msgSendSuper2(&v10, "dimmingColor");
  if (!UIAccessibilityIsInvertColorsEnabled())
  {
    goto LABEL_4;
  }

  v3 = AXUIApplicationWindows();
  v4 = [v3 firstObject];
  v5 = [v4 traitCollection];
  v6 = [v5 userInterfaceStyle];

  if (v6 == &dword_0 + 2)
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