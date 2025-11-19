@interface UGCPOIEnrichmentHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation UGCPOIEnrichmentHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UGCPOIEnrichmentHeaderView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"UGCPOIEnrichmentHeaderView" hasInstanceVariable:@"_secondaryLabel" withType:"UILabel"];
}

@end