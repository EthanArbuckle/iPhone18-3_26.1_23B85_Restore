@interface TVApplicationAccessibility__TVMLKit__TVKit
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_atvaccessibilitySemanticContextCustomActions;
- (id)_atvaccessibilityTabBarViewController;
@end

@implementation TVApplicationAccessibility__TVMLKit__TVKit

+ (void)_accessibilityPerformValidations:(id)validations
{
  v3 = MEMORY[0x29EDBD618];
  v4 = *MEMORY[0x29EDBD618];
  validationsCopy = validations;
  [validationsCopy client:v4 validateClass:@"TVAppDelegate"];
  [validationsCopy client:*v3 validateClass:@"TVApplication"];
  [validationsCopy client:*v3 validateClass:@"_TVAppDocumentController"];
  [validationsCopy client:*v3 validateClass:@"TVAppDelegate" hasInstanceMethod:@"window" withFullSignature:{"@", 0}];
  [validationsCopy client:*v3 validateClass:@"TVApplication" isKindOfClass:@"UIApplication"];
  [validationsCopy client:*v3 validateClass:@"_TVAppDocumentController" hasInstanceMethod:@"templateViewController" withFullSignature:{"@", 0}];
}

- (id)_atvaccessibilitySemanticContextCustomActions
{
  _atvaccessibilityTabBarViewController = [(TVApplicationAccessibility__TVMLKit__TVKit *)self _atvaccessibilityTabBarViewController];
  if (_atvaccessibilityTabBarViewController && (objc_opt_respondsToSelector() & 1) != 0)
  {
    _atvaccessibilityTabBarCustomActions = [_atvaccessibilityTabBarViewController _atvaccessibilityTabBarCustomActions];
  }

  else
  {
    _atvaccessibilityTabBarCustomActions = 0;
  }

  return _atvaccessibilityTabBarCustomActions;
}

- (id)_atvaccessibilityTabBarViewController
{
  objc_opt_class();
  v3 = [(TVApplicationAccessibility__TVMLKit__TVKit *)self safeValueForKey:@"delegate"];
  v4 = [v3 safeValueForKey:@"window"];
  v5 = __UIAccessibilityCastAsClass();

  rootViewController = [v5 rootViewController];
  childViewControllers = [rootViewController childViewControllers];
  firstObject = [childViewControllers firstObject];

  NSClassFromString(&cfstr_Tvappdocumentc.isa);
  if (objc_opt_isKindOfClass())
  {
    v9 = [firstObject safeValueForKey:@"templateViewController"];
    NSClassFromString(&cfstr_Tvloadingviewc.isa);
    if (objc_opt_isKindOfClass())
    {
      v10 = 0;
    }

    else
    {
      objc_opt_class();
      v10 = __UIAccessibilityCastAsClass();
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end