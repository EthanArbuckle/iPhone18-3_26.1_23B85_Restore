@interface PKPaletteUndoRedoViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (PKPaletteUndoRedoViewAccessibility)initWithFrame:(CGRect)frame;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PKPaletteUndoRedoViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AKToolbarView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"PKPaletteUndoRedoView" hasInstanceMethod:@"undoButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKPaletteUndoRedoView" hasInstanceMethod:@"redoButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKPaletteButton" hasInstanceMethod:@"button" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKPaletteButton" isKindOfClass:@"UIControl"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v14.receiver = self;
  v14.super_class = PKPaletteUndoRedoViewAccessibility;
  [(PKPaletteUndoRedoViewAccessibility *)&v14 _accessibilityLoadAccessibilityInformation];
  v3 = [(PKPaletteUndoRedoViewAccessibility *)self safeValueForKey:@"undoButton"];
  v4 = [v3 safeValueForKey:@"button"];

  [v4 setIsAccessibilityElement:1];
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __80__PKPaletteUndoRedoViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v11[3] = &unk_29F2E3FD0;
  objc_copyWeak(&v12, &location);
  [v4 _setAccessibilityTraitsBlock:v11];
  v5 = accessibilityPencilKitLocalizedString(@"palette.undo");
  [v4 setAccessibilityLabel:v5];

  v6 = [(PKPaletteUndoRedoViewAccessibility *)self safeValueForKey:@"redoButton"];
  v7 = [v6 safeValueForKey:@"button"];

  [v7 setIsAccessibilityElement:1];
  v8 = accessibilityPencilKitLocalizedString(@"palette.redo");
  [v7 setAccessibilityLabel:v8];

  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __80__PKPaletteUndoRedoViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v9[3] = &unk_29F2E3FD0;
  objc_copyWeak(&v10, &location);
  [v7 _setAccessibilityTraitsBlock:v9];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

uint64_t __80__PKPaletteUndoRedoViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeValueForKey:@"undoButton"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = *MEMORY[0x29EDC7F70];
  v6 = [v4 isEnabled];
  v7 = MEMORY[0x29EDC7FA0];
  if (!v6)
  {
    v7 = MEMORY[0x29EDC7FA8];
  }

  v8 = *v7;

  return v8 | v5;
}

uint64_t __80__PKPaletteUndoRedoViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeValueForKey:@"redoButton"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = *MEMORY[0x29EDC7F70];
  v6 = [v4 isEnabled];
  v7 = MEMORY[0x29EDC7FA0];
  if (!v6)
  {
    v7 = MEMORY[0x29EDC7FA8];
  }

  v8 = *v7;

  return v8 | v5;
}

- (PKPaletteUndoRedoViewAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = PKPaletteUndoRedoViewAccessibility;
  v3 = [(PKPaletteUndoRedoViewAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(PKPaletteUndoRedoViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

@end