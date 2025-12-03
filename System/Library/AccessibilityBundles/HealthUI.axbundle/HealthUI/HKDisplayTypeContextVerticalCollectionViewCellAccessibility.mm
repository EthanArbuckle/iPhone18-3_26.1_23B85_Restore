@interface HKDisplayTypeContextVerticalCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation HKDisplayTypeContextVerticalCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HKDisplayTypeContextVerticalCollectionViewCell" isKindOfClass:@"UICollectionViewCell"];
  [validationsCopy validateClass:@"UICollectionViewCell" hasInstanceMethod:@"isSelected" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"HKDisplayTypeContextVerticalCollectionViewCell" hasInstanceMethod:@"infoButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKDisplayTypeContextVerticalCollectionViewCell" hasInstanceMethod:@"infoButtonTapped:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"HKDisplayTypeContextVerticalCollectionViewCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKDisplayTypeContextVerticalCollectionViewCell" hasInstanceMethod:@"valueAndUnitLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(HKDisplayTypeContextVerticalCollectionViewCellAccessibility *)self safeUIViewForKey:@"titleLabel"];
  accessibilityLabel = [v3 accessibilityLabel];

  v5 = [(HKDisplayTypeContextVerticalCollectionViewCellAccessibility *)self safeUIViewForKey:@"valueAndUnitLabel"];
  accessibilityLabel2 = [v5 accessibilityLabel];

  v7 = __UIAXStringForVariables();

  return v7;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = HKDisplayTypeContextVerticalCollectionViewCellAccessibility;
  v3 = *MEMORY[0x29EDC7F70] | [(HKDisplayTypeContextVerticalCollectionViewCellAccessibility *)&v7 accessibilityTraits];
  v4 = [(HKDisplayTypeContextVerticalCollectionViewCellAccessibility *)self safeBoolForKey:@"selected"];
  v5 = *MEMORY[0x29EDC7FC0];
  if (!v4)
  {
    v5 = 0;
  }

  return v3 | v5;
}

- (id)accessibilityCustomActions
{
  v3 = objc_opt_new();
  v4 = [(HKDisplayTypeContextVerticalCollectionViewCellAccessibility *)self safeUIViewForKey:@"infoButton"];
  v13 = 0;
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  v6 = objc_alloc(MEMORY[0x29EDC78E0]);
  v7 = accessibilityLocalizedString(@"more.info");
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __89__HKDisplayTypeContextVerticalCollectionViewCellAccessibility_accessibilityCustomActions__block_invoke;
  v11[3] = &unk_29F2C44F0;
  v11[4] = self;
  v12 = v5;
  v8 = v5;
  v9 = [v6 initWithName:v7 actionHandler:v11];
  [v3 addObject:v9];

  return v3;
}

uint64_t __89__HKDisplayTypeContextVerticalCollectionViewCellAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  objc_copyWeak(&v6, &location);
  v5 = *(a1 + 40);
  AXPerformSafeBlock();

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return 1;
}

void __89__HKDisplayTypeContextVerticalCollectionViewCellAccessibility_accessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained infoButtonTapped:*(a1 + 32)];
}

@end