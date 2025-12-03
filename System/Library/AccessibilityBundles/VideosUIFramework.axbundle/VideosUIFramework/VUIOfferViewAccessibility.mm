@interface VUIOfferViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityCustomActions;
- (unint64_t)accessibilityTraits;
@end

@implementation VUIOfferViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VUIOfferView" hasProperty:@"titleLabel" withType:"@"];
  [validationsCopy validateClass:@"VUIOfferView" hasProperty:@"subtitleLabel" withType:"@"];
  [validationsCopy validateClass:@"VUIOfferView" hasProperty:@"textLabel" withType:"@"];
  [validationsCopy validateClass:@"VUIOfferView" hasProperty:@"versionsButton" withType:"@"];
  [validationsCopy validateClass:@"VUIOfferView" hasProperty:@"imageView" withType:"@"];
  [validationsCopy validateClass:@"VUIOfferView" hasProperty:@"appIconView" withType:"@"];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = VUIOfferViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(VUIOfferViewAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityCustomActions
{
  array = [MEMORY[0x29EDB8DE8] array];
  v16.receiver = self;
  v16.super_class = VUIOfferViewAccessibility;
  accessibilityCustomActions = [(VUIOfferViewAccessibility *)&v16 accessibilityCustomActions];
  [array axSafelyAddObjectsFromArray:accessibilityCustomActions];

  v5 = [(VUIOfferViewAccessibility *)self safeValueForKey:@"versionsButton"];
  if (v5)
  {
    objc_initWeak(&location, v5);
    v6 = objc_alloc(MEMORY[0x29EDC78E0]);
    v7 = accessibilityLocalizedString(@"mls.versions");
    v10 = MEMORY[0x29EDCA5F8];
    v11 = 3221225472;
    v12 = __55__VUIOfferViewAccessibility_accessibilityCustomActions__block_invoke;
    v13 = &unk_29F31C0A8;
    objc_copyWeak(&v14, &location);
    v8 = [v6 initWithName:v7 actionHandler:&v10];

    [array axSafelyAddObject:{v8, v10, v11, v12, v13}];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return array;
}

uint64_t __55__VUIOfferViewAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sendActionsForControlEvents:64];

  return 1;
}

@end