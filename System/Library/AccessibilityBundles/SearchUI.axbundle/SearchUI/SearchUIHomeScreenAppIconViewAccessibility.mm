@interface SearchUIHomeScreenAppIconViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation SearchUIHomeScreenAppIconViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SearchUIHomeScreenAppIconView" hasInstanceMethod:@"rowModel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SearchUIRowModel" hasInstanceMethod:@"identifyingResult" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SFSearchResult" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(SearchUIHomeScreenAppIconViewAccessibility *)self safeValueForKeyPath:@"rowModel.identifyingResult.title"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end