@interface CKStickerDetailCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
@end

@implementation CKStickerDetailCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKStickerDetailCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKStickerDetailCell" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKStickerDetailCell" hasInstanceMethod:@"timestampLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(CKStickerDetailCellAccessibility *)self _axStickerDescription];
  objc_opt_class();
  v4 = [(CKStickerDetailCellAccessibility *)self safeValueForKey:@"titleLabel"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = [v5 accessibilityLabel];

  v7 = MEMORY[0x29EDBA0F8];
  v8 = accessibilityLocalizedString(@"message.from.format");
  v9 = [v7 localizedStringWithFormat:v8, v6];

  objc_opt_class();
  v10 = [(CKStickerDetailCellAccessibility *)self safeValueForKey:@"subtitleLabel"];
  v11 = __UIAccessibilityCastAsClass();

  v12 = [v11 accessibilityLabel];

  objc_opt_class();
  v13 = [(CKStickerDetailCellAccessibility *)self safeValueForKey:@"timestampLabel"];
  v14 = __UIAccessibilityCastAsClass();

  v15 = [v14 accessibilityLabel];

  v16 = __UIAXStringForVariables();

  return v16;
}

- (id)accessibilityCustomActions
{
  v16[1] = *MEMORY[0x29EDCA608];
  LOBYTE(location) = 0;
  objc_opt_class();
  v3 = [(CKStickerDetailCellAccessibility *)self safeValueForKey:@"viewButton"];
  v4 = __UIAccessibilityCastAsClass();

  objc_initWeak(&location, v4);
  v5 = objc_alloc(MEMORY[0x29EDC78E0]);
  v6 = [v4 accessibilityLabel];
  v10 = MEMORY[0x29EDCA5F8];
  v11 = 3221225472;
  v12 = __62__CKStickerDetailCellAccessibility_accessibilityCustomActions__block_invoke;
  v13 = &unk_29F2B0958;
  objc_copyWeak(&v14, &location);
  v7 = [v5 initWithName:v6 actionHandler:&v10];

  v16[0] = v7;
  v8 = [MEMORY[0x29EDB8D80] arrayWithObjects:v16 count:{1, v10, v11, v12, v13}];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v8;
}

uint64_t __62__CKStickerDetailCellAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sendActionsForControlEvents:0x2000];

  return 1;
}

@end