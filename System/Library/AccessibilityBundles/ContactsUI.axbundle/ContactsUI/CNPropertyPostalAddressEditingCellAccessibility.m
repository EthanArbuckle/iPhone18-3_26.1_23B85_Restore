@interface CNPropertyPostalAddressEditingCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
@end

@implementation CNPropertyPostalAddressEditingCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CNPropertyEditingCell"];
  [v3 validateClass:@"CNAddressComponentTextFieldCell"];
  [v3 validateClass:@"CNAddressComponentTextFieldCell" hasInstanceMethod:@"textFields" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNPropertyEditingCell" hasProperty:@"labelButton" withType:"@"];
}

- (id)accessibilityElements
{
  v19 = *MEMORY[0x29EDCA608];
  v17 = 0;
  objc_opt_class();
  v3 = [(CNPropertyPostalAddressEditingCellAccessibility *)self safeUIViewForKey:@"labelButton"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = objc_opt_new();
  [v5 axSafelyAddObject:v4];
  v6 = [(CNPropertyPostalAddressEditingCellAccessibility *)self _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_4];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * i) safeArrayForKey:@"textFields"];
        [v5 axSafelyAddObjectsFromArray:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

uint64_t __72__CNPropertyPostalAddressEditingCellAccessibility_accessibilityElements__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2D1D40](@"CNAddressComponentTextFieldCell");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end