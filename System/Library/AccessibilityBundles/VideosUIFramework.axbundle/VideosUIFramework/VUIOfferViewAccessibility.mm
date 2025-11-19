@interface VUIOfferViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityCustomActions;
- (unint64_t)accessibilityTraits;
@end

@implementation VUIOfferViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VUIOfferView" hasProperty:@"titleLabel" withType:"@"];
  [v3 validateClass:@"VUIOfferView" hasProperty:@"subtitleLabel" withType:"@"];
  [v3 validateClass:@"VUIOfferView" hasProperty:@"textLabel" withType:"@"];
  [v3 validateClass:@"VUIOfferView" hasProperty:@"versionsButton" withType:"@"];
  [v3 validateClass:@"VUIOfferView" hasProperty:@"imageView" withType:"@"];
  [v3 validateClass:@"VUIOfferView" hasProperty:@"appIconView" withType:"@"];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = VUIOfferViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(VUIOfferViewAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityCustomActions
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v16.receiver = self;
  v16.super_class = VUIOfferViewAccessibility;
  v4 = [(VUIOfferViewAccessibility *)&v16 accessibilityCustomActions];
  [v3 axSafelyAddObjectsFromArray:v4];

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

    [v3 axSafelyAddObject:{v8, v10, v11, v12, v13}];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v3;
}

uint64_t __55__VUIOfferViewAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sendActionsForControlEvents:64];

  return 1;
}

@end