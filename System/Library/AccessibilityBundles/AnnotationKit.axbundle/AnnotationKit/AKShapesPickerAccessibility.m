@interface AKShapesPickerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setShapes:(id)a3;
@end

@implementation AKShapesPickerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AKShapesPicker" hasInstanceMethod:@"setShapes:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"AKShapesPicker" isKindOfClass:@"AKModernToolbarPicker"];
  [v3 validateClass:@"AKModernToolbarPicker" hasInstanceMethod:@"stackview" withFullSignature:{"@", 0}];
}

- (void)setShapes:(id)a3
{
  v4.receiver = self;
  v4.super_class = AKShapesPickerAccessibility;
  [(AKShapesPickerAccessibility *)&v4 setShapes:a3];
  [(AKShapesPickerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v19 = *MEMORY[0x29EDCA608];
  v17.receiver = self;
  v17.super_class = AKShapesPickerAccessibility;
  [(AKShapesPickerAccessibility *)&v17 _accessibilityLoadAccessibilityInformation];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(AKShapesPickerAccessibility *)self safeUIViewForKey:@"stackview", 0];
  v4 = [v3 subviews];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 tag] - 764000;
        if (v10 <= 7 && ((0xA5u >> v10) & 1) != 0)
        {
          v11 = accessibilityLocalizedString(off_29F29D510[v10]);
          [v9 setAccessibilityLabel:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x29EDCA608];
}

@end