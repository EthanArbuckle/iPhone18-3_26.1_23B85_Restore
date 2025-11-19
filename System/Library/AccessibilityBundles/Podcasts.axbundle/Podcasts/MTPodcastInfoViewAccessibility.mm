@interface MTPodcastInfoViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation MTPodcastInfoViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MTPodcastInfoView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MTPodcastInfoView" hasInstanceMethod:@"authorLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MTPodcastInfoView" hasInstanceMethod:@"descriptionView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"IMExpandingLabel" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(MTPodcastInfoViewAccessibility *)self safeValueForKey:@"titleLabel"];
  v4 = [(MTPodcastInfoViewAccessibility *)self safeValueForKey:@"authorLabel"];
  v5 = [(MTPodcastInfoViewAccessibility *)self safeValueForKey:@"descriptionView"];
  v8 = [v5 safeValueForKey:@"text"];
  v6 = __UIAXStringForVariables();

  return v6;
}

@end