@interface MailTrackingProtectionOnboardingViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_configureCell:(id)a3 viewModel:(id)a4;
@end

@implementation MailTrackingProtectionOnboardingViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MailTrackingProtectionOnboardingViewController" hasInstanceMethod:@"_configureCell:viewModel:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"MailTrackingProtectionOnboardingViewController" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v17 = *MEMORY[0x29EDCA608];
  v15.receiver = self;
  v15.super_class = MailTrackingProtectionOnboardingViewControllerAccessibility;
  [(MailTrackingProtectionOnboardingViewControllerAccessibility *)&v15 _accessibilityLoadAccessibilityInformation];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  objc_opt_class();
  v3 = [(MailTrackingProtectionOnboardingViewControllerAccessibility *)self safeValueForKey:@"collectionView"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 visibleCells];

  v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * i) _setAccessibilityAdditionalTraitsBlock:&__block_literal_global_0];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x29EDCA608];
}

- (void)_configureCell:(id)a3 viewModel:(id)a4
{
  v6.receiver = self;
  v6.super_class = MailTrackingProtectionOnboardingViewControllerAccessibility;
  v5 = a3;
  [(MailTrackingProtectionOnboardingViewControllerAccessibility *)&v6 _configureCell:v5 viewModel:a4];
  [v5 _setAccessibilityAdditionalTraitsBlock:{&__block_literal_global_300, v6.receiver, v6.super_class}];
}

@end