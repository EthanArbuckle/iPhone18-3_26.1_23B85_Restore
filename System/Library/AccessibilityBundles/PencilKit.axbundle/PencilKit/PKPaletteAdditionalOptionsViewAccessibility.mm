@interface PKPaletteAdditionalOptionsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation PKPaletteAdditionalOptionsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKPaletteAdditionalOptionsView" hasInstanceMethod:@"plusButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKPaletteAdditionalOptionsView" hasInstanceMethod:@"ellipsisButton" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v8.receiver = self;
  v8.super_class = PKPaletteAdditionalOptionsViewAccessibility;
  [(PKPaletteAdditionalOptionsViewAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
  v3 = [(PKPaletteAdditionalOptionsViewAccessibility *)self safeValueForKey:@"plusButton"];
  v4 = [(PKPaletteAdditionalOptionsViewAccessibility *)self safeValueForKey:@"ellipsisButton"];
  [v3 setIsAccessibilityElement:1];
  v5 = accessibilityPencilKitLocalizedString(@"add.annotations.button");
  [v3 setAccessibilityLabel:v5];

  v6 = *MEMORY[0x29EDC7F70];
  [v3 setAccessibilityTraits:{objc_msgSend(v3, "accessibilityTraits") | *MEMORY[0x29EDC7F70]}];
  [v4 setIsAccessibilityElement:1];
  v7 = accessibilityPencilKitLocalizedString(@"more.options.button");
  [v4 setAccessibilityLabel:v7];

  [v4 setAccessibilityTraits:{objc_msgSend(v4, "accessibilityTraits") | v6}];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKPaletteAdditionalOptionsViewAccessibility;
  [(PKPaletteAdditionalOptionsViewAccessibility *)&v3 layoutSubviews];
  [(PKPaletteAdditionalOptionsViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end