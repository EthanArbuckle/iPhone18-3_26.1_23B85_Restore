@interface QuickActionsContainerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation QuickActionsContainerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CommunicationDetails.QuickActionView" hasSwiftField:@"button" withSwiftType:"Button"];
  [validationsCopy validateClass:@"CommunicationDetails.QuickActionsContainerView" hasInstanceMethod:@"handleAction:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CommunicationDetails.QuickActionsContainerView" hasSwiftField:@"actionButtons" withSwiftType:{"Dictionary<ButtonType, QuickActionView>"}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = QuickActionsContainerViewAccessibility;
  [(QuickActionsContainerViewAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  objc_initWeak(&location, self);
  v3 = [(QuickActionsContainerViewAccessibility *)self safeSwiftDictionaryForKey:@"actionButtons"];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __84__QuickActionsContainerViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v4[3] = &unk_29F2B4030;
  objc_copyWeak(&v5, &location);
  [v3 enumerateKeysAndObjectsUsingBlock:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __84__QuickActionsContainerViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  LOBYTE(location) = 0;
  objc_opt_class();
  v7 = [v6 safeSwiftValueForKey:@"button"];
  v8 = __UIAccessibilityCastAsClass();

  objc_initWeak(&location, v8);
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __84__QuickActionsContainerViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v9[3] = &unk_29F2B4008;
  objc_copyWeak(&v10, &location);
  objc_copyWeak(&v11, (a1 + 32));
  [v8 setAccessibilityActivateBlock:v9];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

uint64_t __84__QuickActionsContainerViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained && ([WeakRetained showsMenuAsPrimaryAction] & 1) == 0)
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    [v5 handleAction:v3];

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end