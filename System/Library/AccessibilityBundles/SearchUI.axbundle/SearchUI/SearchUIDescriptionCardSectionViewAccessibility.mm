@interface SearchUIDescriptionCardSectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (void)didPressMoreButton;
@end

@implementation SearchUIDescriptionCardSectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SearchUIDescriptionCardSectionView" hasProperty:@"contentView" withType:"@"];
  [validationsCopy validateClass:@"SearchUIDescriptionCardSectionView" hasInstanceMethod:@"didPressMoreButton" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"TLKDescriptionView" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(SearchUIDescriptionCardSectionViewAccessibility *)self safeValueForKey:@"contentView"];
  v3 = [v2 safeValueForKey:@"text"];
  accessibilityLabel = [v3 accessibilityLabel];

  return accessibilityLabel;
}

- (void)didPressMoreButton
{
  v2.receiver = self;
  v2.super_class = SearchUIDescriptionCardSectionViewAccessibility;
  [(SearchUIDescriptionCardSectionViewAccessibility *)&v2 didPressMoreButton];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end