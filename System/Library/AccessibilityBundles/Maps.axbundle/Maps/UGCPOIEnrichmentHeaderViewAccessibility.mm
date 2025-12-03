@interface UGCPOIEnrichmentHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation UGCPOIEnrichmentHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UGCPOIEnrichmentHeaderView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"UGCPOIEnrichmentHeaderView" hasInstanceVariable:@"_secondaryLabel" withType:"UILabel"];
}

@end