@interface SearchUIHomeScreenAppIconViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation SearchUIHomeScreenAppIconViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SearchUIHomeScreenAppIconView" hasInstanceMethod:@"rowModel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SearchUIRowModel" hasInstanceMethod:@"identifyingResult" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SFSearchResult" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(SearchUIHomeScreenAppIconViewAccessibility *)self safeValueForKeyPath:@"rowModel.identifyingResult.title"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end