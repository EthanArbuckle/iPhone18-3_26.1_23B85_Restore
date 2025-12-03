@interface MTPodcastInfoViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation MTPodcastInfoViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MTPodcastInfoView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTPodcastInfoView" hasInstanceMethod:@"authorLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTPodcastInfoView" hasInstanceMethod:@"descriptionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"IMExpandingLabel" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
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