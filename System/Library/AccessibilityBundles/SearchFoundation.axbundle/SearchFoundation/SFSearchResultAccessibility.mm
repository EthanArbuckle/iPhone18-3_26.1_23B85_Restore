@interface SFSearchResultAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation SFSearchResultAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SFSearchResult" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SFText"];
  [v3 validateClass:@"SFText" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(SFSearchResultAccessibility *)self safeValueForKey:@"title"];
  v3 = [v2 safeValueForKey:@"text"];

  return v3;
}

@end