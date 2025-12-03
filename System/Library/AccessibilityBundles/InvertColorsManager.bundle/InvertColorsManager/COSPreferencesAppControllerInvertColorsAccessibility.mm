@interface COSPreferencesAppControllerInvertColorsAccessibility
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (void)_accessibilityLoadInvertColors;
@end

@implementation COSPreferencesAppControllerInvertColorsAccessibility

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  v7.receiver = self;
  v7.super_class = COSPreferencesAppControllerInvertColorsAccessibility;
  v5 = [(COSPreferencesAppControllerInvertColorsAccessibility *)&v7 application:application didFinishLaunchingWithOptions:options];
  [(COSPreferencesAppControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
  return v5;
}

- (void)_accessibilityLoadInvertColors
{
  v3 = [(COSPreferencesAppControllerInvertColorsAccessibility *)self safeValueForKey:@"_window"];
  [(COSPreferencesAppControllerInvertColorsAccessibility *)self accessibilityApplyIgnoreInvertToWindow:v3];
}

@end