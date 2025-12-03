@interface PlatformSelectorViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation PlatformSelectorViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ASMessagesProvider.PlatformSelectorView" hasSwiftField:@"text" withSwiftType:"Optional<String>"];
  [validationsCopy validateClass:@"ASMessagesProvider.PlatformSelectorView" hasInstanceMethod:@"accessibilityDescriptionLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ASMessagesProvider.PlatformSelectorView" hasSwiftField:@"accessoryImageView" withSwiftType:"UIImageView"];
  [validationsCopy validateClass:@"AppStoreKit.DynamicTypeLabel" isKindOfClass:@"UILabel"];
}

- (id)accessibilityLabel
{
  v3 = [(PlatformSelectorViewAccessibility *)self safeSwiftValueForKey:@"text"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(PlatformSelectorViewAccessibility *)self safeValueForKey:@"accessibilityDescriptionLabel"];
    v5 = [v6 safeValueForKey:@"text"];
  }

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v10 = 0;
  objc_opt_class();
  v3 = [(PlatformSelectorViewAccessibility *)self safeSwiftValueForKey:@"accessoryImageView"];
  v4 = __UIAccessibilityCastAsClass();

  if (v4 && ([v4 image], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v9.receiver = self;
    v9.super_class = PlatformSelectorViewAccessibility;
    accessibilityTraits = *MEMORY[0x29EDC7F70] | [(PlatformSelectorViewAccessibility *)&v9 accessibilityTraits];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PlatformSelectorViewAccessibility;
    accessibilityTraits = [(PlatformSelectorViewAccessibility *)&v8 accessibilityTraits];
  }

  return accessibilityTraits;
}

@end