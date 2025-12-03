@interface SiriRestaurantsLogoButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation SiriRestaurantsLogoButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SiriRestaurantsLogoButton" hasInstanceMethod:@"punchOut" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SAUIAppPunchOut" hasInstanceMethod:@"appDisplayName" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(SiriRestaurantsLogoButtonAccessibility *)self safeValueForKey:@"punchOut"];
  v3 = __UIAccessibilitySafeClass();

  v4 = [v3 safeValueForKey:@"appDisplayName"];

  return v4;
}

@end