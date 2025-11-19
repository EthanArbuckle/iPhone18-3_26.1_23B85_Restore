@interface PKPaletteInkingToolViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
@end

@implementation PKPaletteInkingToolViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKPaletteInkingToolView" hasInstanceMethod:@"ink" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKInk" hasInstanceMethod:@"color" withFullSignature:{"@", 0}];
}

- (id)accessibilityValue
{
  v14.receiver = self;
  v14.super_class = PKPaletteInkingToolViewAccessibility;
  v3 = [(PKPaletteInkingToolViewAccessibility *)&v14 accessibilityValue];
  v4 = [(PKPaletteInkingToolViewAccessibility *)self safeStringForKey:@"toolIdentifier"];
  if ([v4 isEqualToString:*MEMORY[0x29EDBB9A0]])
  {
    v5 = v3;
  }

  else
  {
    v6 = [(PKPaletteInkingToolViewAccessibility *)self safeValueForKeyPath:@"ink.color"];
    v7 = v6;
    if (v6)
    {
      [v6 alphaComponent];
      v8 = accessibilityPencilKitLocalizedString(@"tool.color");
      v9 = AXColorStringForColor();
      v10 = accessibilityPencilKitLocalizedString(@"tool.opacity");
      v13 = AXFormatFloatWithPercentage();
      v11 = __UIAXStringForVariables();

      v3 = v11;
    }

    v5 = v3;
  }

  return v5;
}

@end