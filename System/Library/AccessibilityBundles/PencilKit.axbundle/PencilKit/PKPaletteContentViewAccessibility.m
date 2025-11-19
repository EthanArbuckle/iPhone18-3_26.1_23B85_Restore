@interface PKPaletteContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
@end

@implementation PKPaletteContentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKPaletteContentView" hasInstanceMethod:@"undoRedoView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKPaletteContentView" hasInstanceMethod:@"toolPickerView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKPaletteContentView" hasInstanceMethod:@"colorPickerView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKPaletteContentView" hasInstanceMethod:@"additionalOptionsView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKPaletteContentView" hasInstanceMethod:@"contextualEditingView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKPaletteContentView" hasInstanceMethod:@"toolAndColorPickerContainerView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKPaletteToolPickerAndColorPickerView" hasInstanceMethod:@"lassoToolEditingContainerView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKPaletteContentView" hasInstanceMethod:@"paletteInputAssistantView" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  v26 = *MEMORY[0x29EDCA608];
  if (AXDoesRequestingClientDeserveAutomation())
  {
    v24.receiver = self;
    v24.super_class = PKPaletteContentViewAccessibility;
    v3 = [(PKPaletteContentViewAccessibility *)&v24 accessibilityElements];
  }

  else
  {
    v4 = [(PKPaletteContentViewAccessibility *)self safeValueForKey:@"undoRedoView"];
    v5 = [(PKPaletteContentViewAccessibility *)self safeValueForKey:@"toolPickerView"];
    v6 = [(PKPaletteContentViewAccessibility *)self safeValueForKey:@"paletteInputAssistantView"];
    v7 = [(PKPaletteContentViewAccessibility *)self safeValueForKey:@"colorPickerView"];
    v8 = [(PKPaletteContentViewAccessibility *)self safeValueForKey:@"additionalOptionsView"];
    v9 = [(PKPaletteContentViewAccessibility *)self safeValueForKey:@"contextualEditingView"];
    v10 = [(PKPaletteContentViewAccessibility *)self safeValueForKey:@"toolAndColorPickerContainerView"];
    v11 = [v10 safeValueForKey:@"lassoToolEditingContainerView"];
    v18 = v5;
    v19 = v4;
    v3 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{7, v4, v5, v9, v6, v7, v11, v8}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v20 + 1) + 8 * i) setShouldGroupAccessibilityChildren:1];
        }

        v13 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v13);
    }
  }

  v16 = *MEMORY[0x29EDCA608];

  return v3;
}

@end