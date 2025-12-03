@interface SFSearchResultAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation SFSearchResultAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SFSearchResult" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SFText"];
  [validationsCopy validateClass:@"SFText" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(SFSearchResultAccessibility *)self safeValueForKey:@"title"];
  v3 = [v2 safeValueForKey:@"text"];

  return v3;
}

@end