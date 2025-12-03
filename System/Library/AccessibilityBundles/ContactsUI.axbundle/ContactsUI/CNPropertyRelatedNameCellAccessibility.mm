@interface CNPropertyRelatedNameCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CNPropertyRelatedNameCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CNPropertyCell" hasInstanceMethod:@"copy:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CNPropertyRelatedNameCell" isKindOfClass:@"CNPropertyCell"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v14[1] = *MEMORY[0x29EDCA608];
  v13.receiver = self;
  v13.super_class = CNPropertyRelatedNameCellAccessibility;
  [(CNPropertyRelatedNameCellAccessibility *)&v13 _accessibilityLoadAccessibilityInformation];
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x29EDC78E0]);
  v4 = accessibilityLocalizedString(@"copy.name.action");
  v7 = MEMORY[0x29EDCA5F8];
  v8 = 3221225472;
  v9 = __84__CNPropertyRelatedNameCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v10 = &unk_29F2B5CE0;
  objc_copyWeak(&v11, &location);
  v5 = [v3 initWithName:v4 actionHandler:&v7];

  v14[0] = v5;
  v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:v14 count:{1, v7, v8, v9, v10}];
  [(CNPropertyRelatedNameCellAccessibility *)self setAccessibilityCustomActions:v6];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

uint64_t __84__CNPropertyRelatedNameCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  AXPerformSafeBlock();
  objc_destroyWeak(&v5);

  return 1;
}

void __84__CNPropertyRelatedNameCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained copy:0];
}

@end