@interface PKPaletteColorSwatchAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation PKPaletteColorSwatchAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKPaletteMulticolorSwatch"];
  [validationsCopy validateClass:@"PKPaletteColorSwatch" hasInstanceMethod:@"isSelected" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"PKPaletteColorSwatch" hasInstanceMethod:@"swatchColor" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKSwatchColor" hasInstanceMethod:@"identifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKSwatchColor" hasInstanceMethod:@"color" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3 = [(PKPaletteColorSwatchAccessibility *)self safeBoolForKey:@"isSelected"];
  v7.receiver = self;
  v7.super_class = PKPaletteColorSwatchAccessibility;
  accessibilityTraits = [(PKPaletteColorSwatchAccessibility *)&v7 accessibilityTraits];
  v5 = MEMORY[0x29EDC7FC0];
  if (!v3)
  {
    v5 = MEMORY[0x29EDC7FA0];
  }

  return *MEMORY[0x29EDC7F70] | accessibilityTraits | *v5;
}

- (id)accessibilityLabel
{
  MEMORY[0x29C2E5800](@"PKPaletteMulticolorSwatch", a2);
  if (objc_opt_isKindOfClass())
  {
    v3 = accessibilityPencilKitLocalizedString(@"color.picker");
    goto LABEL_17;
  }

  v4 = [(PKPaletteColorSwatchAccessibility *)self safeValueForKey:@"swatchColor"];
  v5 = [v4 safeStringForKey:@"identifier"];
  if ([v5 isEqualToString:@"blue"])
  {
    v6 = @"blue.color";
  }

  else if ([v5 isEqualToString:@"red"])
  {
    v6 = @"red.color";
  }

  else if ([v5 isEqualToString:@"yellow"])
  {
    v6 = @"yellow.color";
  }

  else if ([v5 isEqualToString:@"black"])
  {
    v6 = @"black.color";
  }

  else if ([v5 isEqualToString:@"white"])
  {
    v6 = @"white.color";
  }

  else
  {
    if (![v5 isEqualToString:@"green"])
    {
      v3 = 0;
      goto LABEL_16;
    }

    v6 = @"green.color";
  }

  v3 = accessibilityPencilKitLocalizedString(v6);
LABEL_16:

LABEL_17:

  return v3;
}

- (id)accessibilityValue
{
  MEMORY[0x29C2E5800](@"PKPaletteMulticolorSwatch", a2);
  if (objc_opt_isKindOfClass())
  {
    v3 = [(PKPaletteColorSwatchAccessibility *)self safeValueForKey:@"swatchColor"];
    v4 = [v3 safeValueForKey:@"color"];

    if (v4)
    {
      v12 = 0;
      objc_opt_class();
      v5 = __UIAccessibilityCastAsClass();
      v6 = AXColorStringForColor();
      if ([v6 length])
      {
        v7 = MEMORY[0x29EDBA0F8];
        v8 = accessibilityPencilKitLocalizedString(@"color.picker.current");
        accessibilityValue = [v7 stringWithFormat:v8, v6];

        goto LABEL_8;
      }
    }
  }

  v11.receiver = self;
  v11.super_class = PKPaletteColorSwatchAccessibility;
  accessibilityValue = [(PKPaletteColorSwatchAccessibility *)&v11 accessibilityValue];
LABEL_8:

  return accessibilityValue;
}

@end