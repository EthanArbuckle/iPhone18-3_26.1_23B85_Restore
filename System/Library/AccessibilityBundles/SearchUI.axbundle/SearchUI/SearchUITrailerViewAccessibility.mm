@interface SearchUITrailerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (SearchUITrailerViewAccessibility)initWithMediaItem:(id)item cardSectionView:(id)view;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SearchUITrailerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SearchUITrailerView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SearchUITrailerView" hasInstanceMethod:@"playButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SearchUITrailerView" hasInstanceMethod:@"initWithMediaItem: cardSectionView:" withFullSignature:{"@", "@", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = SearchUITrailerViewAccessibility;
  [(SearchUITrailerViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(SearchUITrailerViewAccessibility *)self safeValueForKey:@"playButton"];
  [v3 setIsAccessibilityElement:0];

  v4 = [(SearchUITrailerViewAccessibility *)self safeValueForKey:@"titleLabel"];
  [v4 setIsAccessibilityElement:0];
}

- (id)accessibilityLabel
{
  v2 = [(SearchUITrailerViewAccessibility *)self safeValueForKey:@"titleLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SearchUITrailerViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(SearchUITrailerViewAccessibility *)&v3 accessibilityTraits];
}

- (SearchUITrailerViewAccessibility)initWithMediaItem:(id)item cardSectionView:(id)view
{
  v7.receiver = self;
  v7.super_class = SearchUITrailerViewAccessibility;
  v4 = [(SearchUITrailerViewAccessibility *)&v7 initWithMediaItem:item cardSectionView:view];
  v5 = v4;
  if (v4)
  {
    [(SearchUITrailerViewAccessibility *)v4 _accessibilityLoadAccessibilityInformation];
  }

  return v5;
}

@end