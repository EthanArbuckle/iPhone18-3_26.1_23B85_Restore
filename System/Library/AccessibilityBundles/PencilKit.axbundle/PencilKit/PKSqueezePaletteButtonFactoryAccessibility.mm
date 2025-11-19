@interface PKSqueezePaletteButtonFactoryAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)makeBackButton;
- (id)makeGearButton;
- (id)makeShapesButton;
- (id)makeSignatureButton;
- (id)makeStickersButton;
- (id)makeTextBoxButton;
@end

@implementation PKSqueezePaletteButtonFactoryAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKSqueezePaletteButtonFactory" hasInstanceMethod:@"makeBackButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKSqueezePaletteButtonFactory" hasInstanceMethod:@"makeTextBoxButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKSqueezePaletteButtonFactory" hasInstanceMethod:@"makeSignatureButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKSqueezePaletteButtonFactory" hasInstanceMethod:@"makeShapesButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKSqueezePaletteButtonFactory" hasInstanceMethod:@"makeStickersButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKSqueezePaletteButtonFactory" hasInstanceMethod:@"makeGearButton" withFullSignature:{"@", 0}];
}

- (id)makeBackButton
{
  v5.receiver = self;
  v5.super_class = PKSqueezePaletteButtonFactoryAccessibility;
  v2 = [(PKSqueezePaletteButtonFactoryAccessibility *)&v5 makeBackButton];
  v3 = accessibilityPencilKitLocalizedString(@"back");
  [v2 setAccessibilityLabel:v3];

  return v2;
}

- (id)makeTextBoxButton
{
  v5.receiver = self;
  v5.super_class = PKSqueezePaletteButtonFactoryAccessibility;
  v2 = [(PKSqueezePaletteButtonFactoryAccessibility *)&v5 makeTextBoxButton];
  v3 = accessibilityPencilKitLocalizedString(@"squeeze.add.textbox");
  [v2 setAccessibilityLabel:v3];

  return v2;
}

- (id)makeSignatureButton
{
  v5.receiver = self;
  v5.super_class = PKSqueezePaletteButtonFactoryAccessibility;
  v2 = [(PKSqueezePaletteButtonFactoryAccessibility *)&v5 makeSignatureButton];
  v3 = accessibilityPencilKitLocalizedString(@"squeeze.add.signature");
  [v2 setAccessibilityLabel:v3];

  return v2;
}

- (id)makeShapesButton
{
  v5.receiver = self;
  v5.super_class = PKSqueezePaletteButtonFactoryAccessibility;
  v2 = [(PKSqueezePaletteButtonFactoryAccessibility *)&v5 makeShapesButton];
  v3 = accessibilityPencilKitLocalizedString(@"squeeze.add.shape");
  [v2 setAccessibilityLabel:v3];

  return v2;
}

- (id)makeStickersButton
{
  v5.receiver = self;
  v5.super_class = PKSqueezePaletteButtonFactoryAccessibility;
  v2 = [(PKSqueezePaletteButtonFactoryAccessibility *)&v5 makeStickersButton];
  v3 = accessibilityPencilKitLocalizedString(@"squeeze.add.sticker");
  [v2 setAccessibilityLabel:v3];

  return v2;
}

- (id)makeGearButton
{
  v5.receiver = self;
  v5.super_class = PKSqueezePaletteButtonFactoryAccessibility;
  v2 = [(PKSqueezePaletteButtonFactoryAccessibility *)&v5 makeGearButton];
  v3 = accessibilityPencilKitLocalizedString(@"settings");
  [v2 setAccessibilityLabel:v3];

  return v2;
}

@end