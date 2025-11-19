@interface PKPaletteReturnKeyButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation PKPaletteReturnKeyButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKPaletteReturnKeyButton" isKindOfClass:@"UIControl"];
  [v3 validateClass:@"PKPaletteReturnKeyButton" hasInstanceMethod:@"contentView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKPaletteReturnKeyButtonContentView" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(PKPaletteReturnKeyButtonAccessibility *)self safeUIViewForKey:@"contentView"];
  v4 = [v3 safeStringForKey:@"text"];

  if (![v4 length])
  {
    v7.receiver = self;
    v7.super_class = PKPaletteReturnKeyButtonAccessibility;
    v5 = [(PKPaletteReturnKeyButtonAccessibility *)&v7 accessibilityLabel];

    v4 = v5;
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