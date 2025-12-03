@interface PKSqueezePaletteButtonFactoryAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)makeBackButton;
- (id)makeGearButton;
- (id)makeShapesButton;
- (id)makeSignatureButton;
- (id)makeStickersButton;
- (id)makeTextBoxButton;
@end

@implementation PKSqueezePaletteButtonFactoryAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKSqueezePaletteButtonFactory" hasInstanceMethod:@"makeBackButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKSqueezePaletteButtonFactory" hasInstanceMethod:@"makeTextBoxButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKSqueezePaletteButtonFactory" hasInstanceMethod:@"makeSignatureButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKSqueezePaletteButtonFactory" hasInstanceMethod:@"makeShapesButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKSqueezePaletteButtonFactory" hasInstanceMethod:@"makeStickersButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKSqueezePaletteButtonFactory" hasInstanceMethod:@"makeGearButton" withFullSignature:{"@", 0}];
}

- (id)makeBackButton
{
  v5.receiver = self;
  v5.super_class = PKSqueezePaletteButtonFactoryAccessibility;
  makeBackButton = [(PKSqueezePaletteButtonFactoryAccessibility *)&v5 makeBackButton];
  v3 = accessibilityPencilKitLocalizedString(@"back");
  [makeBackButton setAccessibilityLabel:v3];

  return makeBackButton;
}

- (id)makeTextBoxButton
{
  v5.receiver = self;
  v5.super_class = PKSqueezePaletteButtonFactoryAccessibility;
  makeTextBoxButton = [(PKSqueezePaletteButtonFactoryAccessibility *)&v5 makeTextBoxButton];
  v3 = accessibilityPencilKitLocalizedString(@"squeeze.add.textbox");
  [makeTextBoxButton setAccessibilityLabel:v3];

  return makeTextBoxButton;
}

- (id)makeSignatureButton
{
  v5.receiver = self;
  v5.super_class = PKSqueezePaletteButtonFactoryAccessibility;
  makeSignatureButton = [(PKSqueezePaletteButtonFactoryAccessibility *)&v5 makeSignatureButton];
  v3 = accessibilityPencilKitLocalizedString(@"squeeze.add.signature");
  [makeSignatureButton setAccessibilityLabel:v3];

  return makeSignatureButton;
}

- (id)makeShapesButton
{
  v5.receiver = self;
  v5.super_class = PKSqueezePaletteButtonFactoryAccessibility;
  makeShapesButton = [(PKSqueezePaletteButtonFactoryAccessibility *)&v5 makeShapesButton];
  v3 = accessibilityPencilKitLocalizedString(@"squeeze.add.shape");
  [makeShapesButton setAccessibilityLabel:v3];

  return makeShapesButton;
}

- (id)makeStickersButton
{
  v5.receiver = self;
  v5.super_class = PKSqueezePaletteButtonFactoryAccessibility;
  makeStickersButton = [(PKSqueezePaletteButtonFactoryAccessibility *)&v5 makeStickersButton];
  v3 = accessibilityPencilKitLocalizedString(@"squeeze.add.sticker");
  [makeStickersButton setAccessibilityLabel:v3];

  return makeStickersButton;
}

- (id)makeGearButton
{
  v5.receiver = self;
  v5.super_class = PKSqueezePaletteButtonFactoryAccessibility;
  makeGearButton = [(PKSqueezePaletteButtonFactoryAccessibility *)&v5 makeGearButton];
  v3 = accessibilityPencilKitLocalizedString(@"settings");
  [makeGearButton setAccessibilityLabel:v3];

  return makeGearButton;
}

@end