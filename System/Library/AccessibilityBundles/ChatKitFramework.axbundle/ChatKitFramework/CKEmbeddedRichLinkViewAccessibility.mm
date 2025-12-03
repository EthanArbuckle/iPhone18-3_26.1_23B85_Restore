@interface CKEmbeddedRichLinkViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
@end

@implementation CKEmbeddedRichLinkViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ChatKit.CKEmbeddedRichLinkView" hasSwiftField:@"pluginEntryViewController" withSwiftType:"Optional<CKDefaultPluginEntryViewController>"];
  [validationsCopy validateClass:@"CKDefaultPluginEntryViewController" hasInstanceMethod:@"balloonView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ChatKit.CKEmbeddedRichLinkView" hasInstanceMethod:@"didTapDiscardButton" withFullSignature:{"v", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(CKEmbeddedRichLinkViewAccessibility *)self safeSwiftValueForKey:@"pluginEntryViewController"];
  v4 = [v3 safeValueForKey:@"balloonView"];
  v5 = v4;
  if (v4)
  {
    accessibilityLabel = [v4 accessibilityLabel];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CKEmbeddedRichLinkViewAccessibility;
    accessibilityLabel = [(CKEmbeddedRichLinkViewAccessibility *)&v9 accessibilityLabel];
  }

  v7 = accessibilityLabel;

  return v7;
}

- (id)accessibilityCustomActions
{
  array = [MEMORY[0x29EDB8DE8] array];
  v15.receiver = self;
  v15.super_class = CKEmbeddedRichLinkViewAccessibility;
  accessibilityCustomActions = [(CKEmbeddedRichLinkViewAccessibility *)&v15 accessibilityCustomActions];
  [array axSafelyAddObjectsFromArray:accessibilityCustomActions];

  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x29EDC78E0]);
  v6 = accessibilityLocalizedString(@"delete.button.label");
  v9 = MEMORY[0x29EDCA5F8];
  v10 = 3221225472;
  v11 = __65__CKEmbeddedRichLinkViewAccessibility_accessibilityCustomActions__block_invoke;
  v12 = &unk_29F2B0958;
  objc_copyWeak(&v13, &location);
  v7 = [v5 initWithName:v6 actionHandler:&v9];

  [array axSafelyAddObject:{v7, v9, v10, v11, v12}];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return array;
}

uint64_t __65__CKEmbeddedRichLinkViewAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  AXPerformSafeBlock();

  return 1;
}

@end