@interface SearchUIDescriptionCardSectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (void)didPressMoreButton;
@end

@implementation SearchUIDescriptionCardSectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SearchUIDescriptionCardSectionView" hasProperty:@"contentView" withType:"@"];
  [v3 validateClass:@"SearchUIDescriptionCardSectionView" hasInstanceMethod:@"didPressMoreButton" withFullSignature:{"v", 0}];
  [v3 validateClass:@"TLKDescriptionView" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(SearchUIDescriptionCardSectionViewAccessibility *)self safeValueForKey:@"contentView"];
  v3 = [v2 safeValueForKey:@"text"];
  v4 = [v3 accessibilityLabel];

  return v4;
}

- (void)didPressMoreButton
{
  v2.receiver = self;
  v2.super_class = SearchUIDescriptionCardSectionViewAccessibility;
  [(SearchUIDescriptionCardSectionViewAccessibility *)&v2 didPressMoreButton];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end