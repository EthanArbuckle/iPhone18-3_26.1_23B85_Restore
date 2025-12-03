@interface PKPaletteToolViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axToolPicker;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation PKPaletteToolViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKPaletteView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKToolPicker" hasInstanceMethod:@"isRulerActive" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"PKPaletteToolView" hasInstanceMethod:@"toolIdentifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIControl" hasInstanceMethod:@"isSelected" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"PKPaletteToolView" isKindOfClass:@"UIControl"];
}

- (id)_axToolPicker
{
  v2 = [(PKPaletteToolViewAccessibility *)self _accessibilityAncestorIsKindOf:MEMORY[0x29C2E5800](@"PKPaletteView", a2)];
  v3 = [v2 safeValueForKey:@"delegate"];

  return v3;
}

- (id)accessibilityLabel
{
  v10.receiver = self;
  v10.super_class = PKPaletteToolViewAccessibility;
  accessibilityLabel = [(PKPaletteToolViewAccessibility *)&v10 accessibilityLabel];
  v4 = [(PKPaletteToolViewAccessibility *)self safeStringForKey:@"toolIdentifier"];
  v5 = accessibilityNameForInkIdentifier(v4);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = accessibilityLabel;
  }

  v8 = v7;

  return v7;
}

- (unint64_t)accessibilityTraits
{
  v3 = [(PKPaletteToolViewAccessibility *)self safeStringForKey:@"toolIdentifier"];
  v9.receiver = self;
  v9.super_class = PKPaletteToolViewAccessibility;
  accessibilityTraits = [(PKPaletteToolViewAccessibility *)&v9 accessibilityTraits];
  if ([v3 isEqualToString:*MEMORY[0x29EDBB9F0]])
  {
    v5 = ~*MEMORY[0x29EDC7FC0];
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & accessibilityTraits;
  v7 = *MEMORY[0x29EDC7F70];

  return v6 | v7;
}

- (id)accessibilityValue
{
  v3 = [(PKPaletteToolViewAccessibility *)self safeStringForKey:@"toolIdentifier"];
  if ([v3 isEqualToString:*MEMORY[0x29EDBB9B0]])
  {
    accessibilityValue = 0;
  }

  else if ([v3 isEqualToString:*MEMORY[0x29EDBB9F0]])
  {
    _axToolPicker = [(PKPaletteToolViewAccessibility *)self _axToolPicker];
    v6 = _axToolPicker;
    if (_axToolPicker)
    {
      if ([_axToolPicker safeBoolForKey:@"isRulerActive"])
      {
        v7 = @"ruler.active";
      }

      else
      {
        v7 = @"ruler.inactive";
      }

      accessibilityValue = accessibilityPencilKitLocalizedString(v7);
    }

    else
    {
      accessibilityValue = 0;
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PKPaletteToolViewAccessibility;
    accessibilityValue = [(PKPaletteToolViewAccessibility *)&v9 accessibilityValue];
  }

  return accessibilityValue;
}

- (id)accessibilityHint
{
  v3 = [(PKPaletteToolViewAccessibility *)self safeStringForKey:@"toolIdentifier"];
  if ((([v3 isEqualToString:*MEMORY[0x29EDBB9A8]] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", *MEMORY[0x29EDBB9C0])) && -[PKPaletteToolViewAccessibility safeBoolForKey:](self, "safeBoolForKey:", @"isSelected"))
  {
    v4 = accessibilityPencilKitLocalizedString(@"object.eraser.tool.hint");
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end