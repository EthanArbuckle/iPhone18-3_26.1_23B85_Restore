@interface TVApplicationAccessibility__TVMLKit__TVKit
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_atvaccessibilitySemanticContextCustomActions;
- (id)_atvaccessibilityTabBarViewController;
@end

@implementation TVApplicationAccessibility__TVMLKit__TVKit

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = MEMORY[0x29EDBD618];
  v4 = *MEMORY[0x29EDBD618];
  v5 = a3;
  [v5 client:v4 validateClass:@"TVAppDelegate"];
  [v5 client:*v3 validateClass:@"TVApplication"];
  [v5 client:*v3 validateClass:@"_TVAppDocumentController"];
  [v5 client:*v3 validateClass:@"TVAppDelegate" hasInstanceMethod:@"window" withFullSignature:{"@", 0}];
  [v5 client:*v3 validateClass:@"TVApplication" isKindOfClass:@"UIApplication"];
  [v5 client:*v3 validateClass:@"_TVAppDocumentController" hasInstanceMethod:@"templateViewController" withFullSignature:{"@", 0}];
}

- (id)_atvaccessibilitySemanticContextCustomActions
{
  v2 = [(TVApplicationAccessibility__TVMLKit__TVKit *)self _atvaccessibilityTabBarViewController];
  if (v2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = [v2 _atvaccessibilityTabBarCustomActions];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_atvaccessibilityTabBarViewController
{
  objc_opt_class();
  v3 = [(TVApplicationAccessibility__TVMLKit__TVKit *)self safeValueForKey:@"delegate"];
  v4 = [v3 safeValueForKey:@"window"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = [v5 rootViewController];
  v7 = [v6 childViewControllers];
  v8 = [v7 firstObject];

  NSClassFromString(&cfstr_Tvappdocumentc.isa);
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 safeValueForKey:@"templateViewController"];
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