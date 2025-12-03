@interface GKLeaderboardMetadataViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation GKLeaderboardMetadataViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"GKLeaderboardMetadataView" hasInstanceMethod:@"rank" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GKLeaderboardMetadataView" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GKLeaderboardMetadataView" hasInstanceMethod:@"footnote" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(GKLeaderboardMetadataViewAccessibility *)self safeValueForKey:@"rank"];
  v4 = __UIAccessibilityCastAsClass();

  if ([v4 _accessibilityViewIsVisible])
  {
    v5 = @"rank, title, footnote";
  }

  else
  {
    v5 = @"title, footnote";
  }

  v6 = [(GKLeaderboardMetadataViewAccessibility *)self _accessibilityStringForLabelKeyValues:v5];

  return v6;
}

@end