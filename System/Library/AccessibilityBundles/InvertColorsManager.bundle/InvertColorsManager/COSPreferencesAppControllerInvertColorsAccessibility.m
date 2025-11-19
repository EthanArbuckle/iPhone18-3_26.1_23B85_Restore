@interface COSPreferencesAppControllerInvertColorsAccessibility
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (void)_accessibilityLoadInvertColors;
@end

@implementation COSPreferencesAppControllerInvertColorsAccessibility

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v7.receiver = self;
  v7.super_class = COSPreferencesAppControllerInvertColorsAccessibility;
  v5 = [(COSPreferencesAppControllerInvertColorsAccessibility *)&v7 application:a3 didFinishLaunchingWithOptions:a4];
  [(COSPreferencesAppControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
  return v5;
}

- (void)_accessibilityLoadInvertColors
{
  v3 = [(COSPreferencesAppControllerInvertColorsAccessibility *)self safeValueForKey:@"_window"];
  [(COSPreferencesAppControllerInvertColorsAccessibility *)self accessibilityApplyIgnoreInvertToWindow:v3];
}

@end