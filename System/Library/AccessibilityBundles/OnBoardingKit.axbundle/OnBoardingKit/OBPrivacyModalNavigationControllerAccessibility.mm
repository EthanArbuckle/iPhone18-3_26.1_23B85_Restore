@interface OBPrivacyModalNavigationControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityPerformEscape;
@end

@implementation OBPrivacyModalNavigationControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"OBPrivacyModalNavigationController" hasInstanceMethod:@"_doneButtonPressed" withFullSignature:{"v", 0}];
  [v3 validateClass:@"OBPrivacyModalNavigationController" isKindOfClass:@"UINavigationController"];
}

- (BOOL)accessibilityPerformEscape
{
  LOBYTE(v14) = 0;
  objc_opt_class();
  v3 = [(OBPrivacyModalNavigationControllerAccessibility *)self safeValueForKey:@"viewControllers"];
  v4 = __UIAccessibilityCastAsClass();

  if ([v4 count] == 1)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v8 = MEMORY[0x29EDCA5F8];
    v9 = 3221225472;
    v10 = __77__OBPrivacyModalNavigationControllerAccessibility_accessibilityPerformEscape__block_invoke;
    v11 = &unk_29F2DFE28;
    v12 = self;
    v13 = &v14;
    AXPerformSafeBlock();
    v5 = *(v15 + 24);
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = OBPrivacyModalNavigationControllerAccessibility;
    v5 = [(OBPrivacyModalNavigationControllerAccessibility *)&v7 accessibilityPerformEscape];
  }

  return v5 & 1;
}

uint64_t __77__OBPrivacyModalNavigationControllerAccessibility_accessibilityPerformEscape__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _doneButtonPressed];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

@end