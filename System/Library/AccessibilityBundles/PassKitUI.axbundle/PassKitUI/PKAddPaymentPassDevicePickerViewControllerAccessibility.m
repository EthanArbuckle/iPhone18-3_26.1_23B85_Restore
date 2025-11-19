@interface PKAddPaymentPassDevicePickerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PKAddPaymentPassDevicePickerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKAddPaymentPassDevicePickerViewController" isKindOfClass:@"UITableViewController"];
  [v3 validateClass:@"UITableViewController" hasInstanceMethod:@"tableView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKAddPaymentPassDevicePickerViewController" hasInstanceMethod:@"tableView:cellForRowAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v21 = *MEMORY[0x29EDCA608];
  v19.receiver = self;
  v19.super_class = PKAddPaymentPassDevicePickerViewControllerAccessibility;
  [(PKAddPaymentPassDevicePickerViewControllerAccessibility *)&v19 _accessibilityLoadAccessibilityInformation];
  v18 = 0;
  objc_opt_class();
  v3 = [(PKAddPaymentPassDevicePickerViewControllerAccessibility *)self safeValueForKey:@"tableView"];
  v4 = __UIAccessibilityCastAsClass();

  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 visibleCells];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 accessibilityTraits];
        v13[0] = MEMORY[0x29EDCA5F8];
        v13[1] = 3221225472;
        v13[2] = __101__PKAddPaymentPassDevicePickerViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
        v13[3] = &__block_descriptor_40_e5_Q8__0l;
        v13[4] = v11;
        [v10 _setAccessibilityTraitsBlock:v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x29EDCA608];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v8.receiver = self;
  v8.super_class = PKAddPaymentPassDevicePickerViewControllerAccessibility;
  v4 = [(PKAddPaymentPassDevicePickerViewControllerAccessibility *)&v8 tableView:a3 cellForRowAtIndexPath:a4];
  v5 = [v4 accessibilityTraits];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __91__PKAddPaymentPassDevicePickerViewControllerAccessibility_tableView_cellForRowAtIndexPath___block_invoke;
  v7[3] = &__block_descriptor_40_e5_Q8__0l;
  v7[4] = v5;
  [v4 _setAccessibilityTraitsBlock:v7];

  return v4;
}

@end