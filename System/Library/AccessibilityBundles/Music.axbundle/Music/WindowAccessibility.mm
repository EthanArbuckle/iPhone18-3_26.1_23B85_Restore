@interface WindowAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityViewIsModal;
@end

@implementation WindowAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"Music.MainSceneDelegate"];
  [validationsCopy validateClass:@"Music.MainSceneDelegate" hasInstanceMethod:@"window" withFullSignature:{"@", 0}];
}

- (BOOL)accessibilityViewIsModal
{
  v8.receiver = self;
  v8.super_class = WindowAccessibility;
  if (![(WindowAccessibility *)&v8 accessibilityViewIsModal])
  {
    return 0;
  }

  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  windowScene = [v2 windowScene];
  delegate = [windowScene delegate];

  MEMORY[0x29C2E2910](@"Music.MainSceneDelegate");
  if (objc_opt_isKindOfClass())
  {
    v5 = [delegate safeValueForKey:@"window"];
    v6 = v5 != v2;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

@end