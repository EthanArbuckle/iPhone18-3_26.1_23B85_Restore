@interface ChicletMetadataAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation ChicletMetadataAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"GameCenterDashboardExtension.ChicletMetadata" hasInstanceMethod:@"accessibilityChicletRank" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GameCenterDashboardExtension.ChicletMetadata" hasInstanceMethod:@"accessibilityChicletCaption" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GameCenterDashboardExtension.ChicletMetadata" hasInstanceMethod:@"accessibilityChicletSubtitle" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(ChicletMetadataAccessibility *)self safeValueForKey:@"accessibilityChicletRank"];
  v4 = __UIAccessibilityCastAsClass();

  if ([v4 _accessibilityViewIsVisible])
  {
    v5 = @"accessibilityChicletCaption, accessibilityChicletRank, accessibilityChicletSubtitle";
  }

  else
  {
    v5 = @"accessibilityChicletCaption, accessibilityChicletSubtitle";
  }

  v6 = [(ChicletMetadataAccessibility *)self _accessibilityStringForLabelKeyValues:v5];

  return v6;
}

@end