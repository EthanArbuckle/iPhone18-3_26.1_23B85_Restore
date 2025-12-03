@interface PublisherHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PublisherHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PublisherHeaderView" hasInstanceMethod:@"publisherLogoImageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PublisherHeaderView" hasInstanceMethod:@"attribution" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = PublisherHeaderViewAccessibility;
  [(PublisherHeaderViewAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(PublisherHeaderViewAccessibility *)self safeValueForKey:@"publisherLogoImageView"];
  [v3 setIsAccessibilityElement:1];
  v4 = [(PublisherHeaderViewAccessibility *)self safeValueForKey:@"attribution"];
  v6 = AXPublisherDescriptionForAttribution(v4, v5);

  [v3 setAccessibilityLabel:v6];
}

@end