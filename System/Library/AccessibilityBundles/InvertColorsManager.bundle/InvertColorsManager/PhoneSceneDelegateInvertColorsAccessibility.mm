@interface PhoneSceneDelegateInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)applicationDidFinishLaunching:(id)launching;
@end

@implementation PhoneSceneDelegateInvertColorsAccessibility

- (void)applicationDidFinishLaunching:(id)launching
{
  v4.receiver = self;
  v4.super_class = PhoneSceneDelegateInvertColorsAccessibility;
  [(PhoneSceneDelegateInvertColorsAccessibility *)&v4 applicationDidFinishLaunching:launching];
  [(PhoneSceneDelegateInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  v3 = [(PhoneSceneDelegateInvertColorsAccessibility *)self safeValueForKey:@"window"];
  [(PhoneSceneDelegateInvertColorsAccessibility *)self accessibilityApplyIgnoreInvertToWindow:v3];
}

@end