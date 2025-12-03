@interface ShowcaseCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityCustomActions;
- (id)accessibilityUserInputLabels;
@end

@implementation ShowcaseCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ShelfKitCollectionViews.ShowcaseCollectionViewCell" hasInstanceMethod:@"accessibilityCaptionLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ShelfKitCollectionViews.ShowcaseCollectionViewCell" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ShelfKitCollectionViews.ShowcaseCollectionViewCell" hasInstanceMethod:@"accessibilitySubtitleLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityUserInputLabels
{
  objc_opt_class();
  v3 = [(ShowcaseCollectionViewCellAccessibility *)self safeValueForKey:@"accessibilityCaptionLabel"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = __UIAXStringForVariables();
  v6 = MEMORY[0x29C2E7860](v5);

  return v6;
}

- (id)accessibilityCustomActions
{
  v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  objc_initWeak(&location, self);
  v4 = objc_alloc(MEMORY[0x29EDC78E0]);
  v5 = accessibilityLocalizedString(@"show.context.menu");
  v8 = MEMORY[0x29EDCA5F8];
  v9 = 3221225472;
  v10 = __69__ShowcaseCollectionViewCellAccessibility_accessibilityCustomActions__block_invoke;
  v11 = &unk_29F2EA1C0;
  objc_copyWeak(&v12, &location);
  v6 = [v4 initWithName:v5 actionHandler:&v8];

  [v3 axSafelyAddObject:{v6, v8, v9, v10, v11}];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v3;
}

uint64_t __69__ShowcaseCollectionViewCellAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accessibilityShowContextMenuForElement:WeakRetained targetPointValue:0];

  return 1;
}

@end