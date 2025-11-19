@interface AMSUICommonViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation AMSUICommonViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v18 = *MEMORY[0x29EDCA608];
  v16.receiver = self;
  v16.super_class = AMSUICommonViewAccessibility;
  [(AMSUICommonViewAccessibility *)&v16 _accessibilityLoadAccessibilityInformation];
  if (!MEMORY[0x29C2C92B0](@"StoresDynamicPlugin.ArtworkHeaderComponent"))
  {
    v15[0] = MEMORY[0x29EDCA5F8];
    v15[1] = 3221225472;
    v15[2] = __74__AMSUICommonViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
    v15[3] = &__block_descriptor_40_e12_B24__0_8_B16lu32l8;
    v15[4] = 0;
    [(AMSUICommonViewAccessibility *)self _accessibilityFindSubviewDescendantsPassingTest:v15];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = v14 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          objc_opt_class();
          v9 = __UIAccessibilityCastAsClass();
          [v9 setIsAccessibilityElementBlock:&__block_literal_global_1];
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v17 count:16];
      }

      while (v5);
    }
  }

  v10 = *MEMORY[0x29EDCA608];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = AMSUICommonViewAccessibility;
  [(AMSUICommonViewAccessibility *)&v3 layoutSubviews];
  [(AMSUICommonViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end