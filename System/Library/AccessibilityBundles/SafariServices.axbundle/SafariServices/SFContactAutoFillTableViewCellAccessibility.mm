@interface SFContactAutoFillTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SFContactAutoFillTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SFContactAutoFillTableViewCell" hasInstanceMethod:@"checked" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SFContactAutoFillTableViewCell" hasInstanceMethod:@"checkmarkButtonTapped:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v8.receiver = self;
  v8.super_class = SFContactAutoFillTableViewCellAccessibility;
  [(SFContactAutoFillTableViewCellAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
  v7.receiver = self;
  v7.super_class = SFContactAutoFillTableViewCellAccessibility;
  accessibilityTraits = [(SFContactAutoFillTableViewCellAccessibility *)&v7 accessibilityTraits];
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __89__SFContactAutoFillTableViewCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v4[3] = &unk_29F2F29E0;
  v5[1] = accessibilityTraits;
  objc_copyWeak(v5, &location);
  [(SFContactAutoFillTableViewCellAccessibility *)self _setAccessibilityTraitsBlock:v4];
  objc_destroyWeak(v5);
  objc_destroyWeak(&location);
}

uint64_t __89__SFContactAutoFillTableViewCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained safeBoolForKey:@"checked"])
  {
    v3 = *MEMORY[0x29EDC7FC0];
  }

  else
  {
    v3 = 0;
  }

  return v3 | v1;
}

@end