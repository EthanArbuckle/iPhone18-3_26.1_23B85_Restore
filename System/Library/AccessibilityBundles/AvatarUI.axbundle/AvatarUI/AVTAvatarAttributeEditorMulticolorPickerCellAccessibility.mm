@interface AVTAvatarAttributeEditorMulticolorPickerCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityCustomActions;
- (id)accessibilityValue;
@end

@implementation AVTAvatarAttributeEditorMulticolorPickerCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AVTAvatarAttributeEditorMulticolorPickerCell" hasInstanceMethod:@"item" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVTAvatarAttributeEditorMulticolorPickerSectionItem" hasInstanceMethod:@"colorItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVTAvatarAttributeEditorSectionColorItem" hasInstanceMethod:@"color" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVTCoreModelColor" hasInstanceMethod:@"localizedName" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVTAvatarAttributeEditorMulticolorPickerCell" hasInstanceMethod:@"clearButton" withFullSignature:{"@", 0}];
}

- (id)accessibilityValue
{
  v2 = [(AVTAvatarAttributeEditorMulticolorPickerCellAccessibility *)self safeValueForKeyPath:@"item.colorItem.color"];
  v3 = [v2 safeStringForKey:@"localizedName"];

  return v3;
}

- (id)accessibilityCustomActions
{
  v17.receiver = self;
  v17.super_class = AVTAvatarAttributeEditorMulticolorPickerCellAccessibility;
  v3 = [(AVTAvatarAttributeEditorMulticolorPickerCellAccessibility *)&v17 accessibilityCustomActions];
  v4 = [v3 mutableCopy];

  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  }

  LOBYTE(location) = 0;
  objc_opt_class();
  v5 = [(AVTAvatarAttributeEditorMulticolorPickerCellAccessibility *)self safeValueForKey:@"clearButton"];
  v6 = __UIAccessibilityCastAsClass();

  if (([v6 isHidden] & 1) == 0)
  {
    objc_initWeak(&location, v6);
    v7 = objc_alloc(MEMORY[0x29EDC78E0]);
    v8 = MEMORY[0x29EDBA0F8];
    v9 = accessibilityLocalizedString(@"clear.memoji.trait");
    v10 = [(AVTAvatarAttributeEditorMulticolorPickerCellAccessibility *)self accessibilityLabel];
    v11 = [v8 localizedStringWithFormat:v9, v10];
    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 3221225472;
    v14[2] = __87__AVTAvatarAttributeEditorMulticolorPickerCellAccessibility_accessibilityCustomActions__block_invoke;
    v14[3] = &unk_29F2A3B70;
    objc_copyWeak(&v15, &location);
    v12 = [v7 initWithName:v11 actionHandler:v14];

    [v4 addObject:v12];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v4;
}

uint64_t __87__AVTAvatarAttributeEditorMulticolorPickerCellAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sendActionsForControlEvents:64];

  return 1;
}

@end