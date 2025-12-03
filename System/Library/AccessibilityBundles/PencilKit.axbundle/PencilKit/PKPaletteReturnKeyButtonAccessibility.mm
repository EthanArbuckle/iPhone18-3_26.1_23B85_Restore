@interface PKPaletteReturnKeyButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation PKPaletteReturnKeyButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKPaletteReturnKeyButton" isKindOfClass:@"UIControl"];
  [validationsCopy validateClass:@"PKPaletteReturnKeyButton" hasInstanceMethod:@"contentView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKPaletteReturnKeyButtonContentView" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(PKPaletteReturnKeyButtonAccessibility *)self safeUIViewForKey:@"contentView"];
  v4 = [v3 safeStringForKey:@"text"];

  if (![v4 length])
  {
    v7.receiver = self;
    v7.super_class = PKPaletteReturnKeyButtonAccessibility;
    accessibilityLabel = [(PKPaletteReturnKeyButtonAccessibility *)&v7 accessibilityLabel];

    v4 = accessibilityLabel;
  }

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = PKPaletteReturnKeyButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(PKPaletteReturnKeyButtonAccessibility *)&v3 accessibilityTraits];
}

@end