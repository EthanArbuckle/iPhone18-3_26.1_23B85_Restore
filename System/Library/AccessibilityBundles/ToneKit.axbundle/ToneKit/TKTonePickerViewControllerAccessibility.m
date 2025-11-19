@interface TKTonePickerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axUpdateCell:(id)a3;
@end

@implementation TKTonePickerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TKTonePickerViewController" isKindOfClass:@"UITableViewController"];
  [v3 validateClass:@"TKTonePickerViewController" hasInstanceMethod:@"_configureTextColorOfLabelInCell:shouldTintText:checked:" withFullSignature:{"v", "@", "B", "B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v18 = *MEMORY[0x29EDCA608];
  v16.receiver = self;
  v16.super_class = TKTonePickerViewControllerAccessibility;
  [(TKTonePickerViewControllerAccessibility *)&v16 _accessibilityLoadAccessibilityInformation];
  v15 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 tableView];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 visibleCells];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v17 count:16];
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

        [(TKTonePickerViewControllerAccessibility *)self _axUpdateCell:*(*(&v11 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x29EDCA608];
}

- (void)_axUpdateCell:(id)a3
{
  v8 = a3;
  v3 = [v8 accessibilityTraits];
  v4 = [v8 imageView];
  v5 = [v4 image];

  v6 = v3 & ~*MEMORY[0x29EDC7FC0];
  if (v5)
  {
    v7 = *MEMORY[0x29EDC7FC0] | v3;
  }

  else
  {
    v7 = v3 & ~*MEMORY[0x29EDC7FC0];
  }

  [v8 setAccessibilityTraits:v7];
}

@end