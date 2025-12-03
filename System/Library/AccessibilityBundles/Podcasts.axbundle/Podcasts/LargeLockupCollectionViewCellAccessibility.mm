@interface LargeLockupCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (unint64_t)accessibilityTraits;
@end

@implementation LargeLockupCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ShelfKitCollectionViews.LargeLockupCollectionViewCell" hasInstanceMethod:@"accessibilityEmbeddedView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ShelfKitCollectionViews.LargeLockupCollectionViewCell" hasSwiftField:@"deletionButton" withSwiftType:"Optional<MTMPButton>"];
  [validationsCopy validateClass:@"ShelfKitCollectionViews.LargeLockupView" hasSwiftField:@"explicitLabel" withSwiftType:"Optional<UILabel>"];
  [validationsCopy validateClass:@"MTMPButton" isKindOfClass:@"UIView"];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = LargeLockupCollectionViewCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(LargeLockupCollectionViewCellAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(LargeLockupCollectionViewCellAccessibility *)self safeValueForKey:@"accessibilityEmbeddedView"];
  v4 = [v3 safeSwiftValueForKey:@"explicitLabel"];
  v5 = __UIAccessibilityCastAsClass();

  if (v5)
  {
    isHidden = [v5 isHidden];
    v7 = [(LargeLockupCollectionViewCellAccessibility *)self _accessibilityStringForLabelKeyValues:@"accessibilityEmbeddedView"];
    if (!isHidden)
    {
      v10 = accessibilityLocalizedString(@"explicit");
      v8 = __UIAXStringForVariables();

      goto LABEL_6;
    }
  }

  else
  {
    v7 = [(LargeLockupCollectionViewCellAccessibility *)self _accessibilityStringForLabelKeyValues:@"accessibilityEmbeddedView"];
  }

  v8 = __UIAXStringForVariables();
LABEL_6:

  return v8;
}

- (id)accessibilityCustomActions
{
  v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v4 = [(LargeLockupCollectionViewCellAccessibility *)self safeValueForKey:@"accessibilityEmbeddedView"];
  accessibilityCustomActions = [v4 accessibilityCustomActions];
  [v3 axSafelyAddObjectsFromArray:accessibilityCustomActions];

  v6 = [(LargeLockupCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"deletionButton"];
  [v6 alpha];
  if (v7 > 0.0)
  {
    v8 = objc_alloc(MEMORY[0x29EDC78E0]);
    v9 = accessibilityLocalizedString(@"delete.button");
    v18[0] = MEMORY[0x29EDCA5F8];
    v18[1] = 3221225472;
    v18[2] = __72__LargeLockupCollectionViewCellAccessibility_accessibilityCustomActions__block_invoke;
    v18[3] = &unk_29F2EA170;
    v19 = v6;
    v10 = [v8 initWithName:v9 actionHandler:v18];

    [v3 axSafelyAddObject:v10];
  }

  objc_initWeak(&location, self);
  v11 = objc_alloc(MEMORY[0x29EDC78E0]);
  v12 = accessibilityLocalizedString(@"show.context.menu");
  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 3221225472;
  v15[2] = __72__LargeLockupCollectionViewCellAccessibility_accessibilityCustomActions__block_invoke_2;
  v15[3] = &unk_29F2EA1C0;
  objc_copyWeak(&v16, &location);
  v13 = [v11 initWithName:v12 actionHandler:v15];

  [v3 axSafelyAddObject:v13];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v3;
}

uint64_t __72__LargeLockupCollectionViewCellAccessibility_accessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accessibilityShowContextMenuForElement:WeakRetained targetPointValue:0];

  return 1;
}

- (id)accessibilityUserInputLabels
{
  v2 = [(LargeLockupCollectionViewCellAccessibility *)self safeValueForKey:@"accessibilityEmbeddedView"];
  accessibilityUserInputLabels = [v2 accessibilityUserInputLabels];

  return accessibilityUserInputLabels;
}

@end