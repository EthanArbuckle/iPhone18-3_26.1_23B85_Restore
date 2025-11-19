@interface SiriRestaurantsLogoButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation SiriRestaurantsLogoButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SiriRestaurantsLogoButton" hasInstanceMethod:@"punchOut" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SAUIAppPunchOut" hasInstanceMethod:@"appDisplayName" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(SiriRestaurantsLogoButtonAccessibility *)self safeValueForKey:@"punchOut"];
  v3 = __UIAccessibilitySafeClass();

  v4 = [v3 safeValueForKey:@"appDisplayName"];

  return v4;
}

@end