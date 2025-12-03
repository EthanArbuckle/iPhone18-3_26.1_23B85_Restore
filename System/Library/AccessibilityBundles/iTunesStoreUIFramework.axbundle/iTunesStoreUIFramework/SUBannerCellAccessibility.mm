@interface SUBannerCellAccessibility
- (void)_reloadButtons;
@end

@implementation SUBannerCellAccessibility

- (void)_reloadButtons
{
  v25 = *MEMORY[0x29EDCA608];
  v23.receiver = self;
  v23.super_class = SUBannerCellAccessibility;
  [(SUBannerCellAccessibility *)&v23 _reloadButtons];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [(SUBannerCellAccessibility *)self safeValueForKey:@"subviews", 0];
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v19 + 1) + 8 * v7++) setIsAccessibilityElement:0];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }

  v8 = [(SUBannerCellAccessibility *)self safeValueForKey:@"_leftButton"];
  [v8 setIsAccessibilityElement:1];

  v9 = [(SUBannerCellAccessibility *)self safeValueForKey:@"_leftButton"];
  v10 = [(SUBannerCellAccessibility *)self safeValueForKey:@"_configurationView"];
  v11 = [v10 safeValueForKey:@"_configuration"];
  accessibilityTableViewCellText = [v11 accessibilityTableViewCellText];
  [v9 setAccessibilityLabel:accessibilityTableViewCellText];

  v13 = [(SUBannerCellAccessibility *)self safeValueForKey:@"_rightButton"];
  [v13 setIsAccessibilityElement:1];

  v14 = [(SUBannerCellAccessibility *)self safeValueForKey:@"_rightButton"];
  v15 = [(SUBannerCellAccessibility *)self safeValueForKey:@"_configurationView"];
  v16 = [v15 safeValueForKey:@"_configuration"];
  accessibilityTableViewCellText2 = [v16 accessibilityTableViewCellText];
  [v14 setAccessibilityLabel:accessibilityTableViewCellText2];

  v18 = *MEMORY[0x29EDCA608];
}

@end