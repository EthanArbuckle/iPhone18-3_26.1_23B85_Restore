@interface TKTonePickerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axUpdateCell:(id)cell;
@end

@implementation TKTonePickerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TKTonePickerViewController" isKindOfClass:@"UITableViewController"];
  [validationsCopy validateClass:@"TKTonePickerViewController" hasInstanceMethod:@"_configureTextColorOfLabelInCell:shouldTintText:checked:" withFullSignature:{"v", "@", "B", "B", 0}];
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
  tableView = [v3 tableView];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  visibleCells = [tableView visibleCells];
  v6 = [visibleCells countByEnumeratingWithState:&v11 objects:v17 count:16];
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
          objc_enumerationMutation(visibleCells);
        }

        [(TKTonePickerViewControllerAccessibility *)self _axUpdateCell:*(*(&v11 + 1) + 8 * i)];
      }

      v7 = [visibleCells countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x29EDCA608];
}

- (void)_axUpdateCell:(id)cell
{
  cellCopy = cell;
  accessibilityTraits = [cellCopy accessibilityTraits];
  imageView = [cellCopy imageView];
  image = [imageView image];

  v6 = accessibilityTraits & ~*MEMORY[0x29EDC7FC0];
  if (image)
  {
    v7 = *MEMORY[0x29EDC7FC0] | accessibilityTraits;
  }

  else
  {
    v7 = accessibilityTraits & ~*MEMORY[0x29EDC7FC0];
  }

  [cellCopy setAccessibilityTraits:v7];
}

@end