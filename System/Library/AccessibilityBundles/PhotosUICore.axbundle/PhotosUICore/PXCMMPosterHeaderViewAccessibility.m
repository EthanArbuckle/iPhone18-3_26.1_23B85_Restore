@interface PXCMMPosterHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation PXCMMPosterHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PXCMMPosterHeaderView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"PXCMMPosterHeaderView" hasInstanceVariable:@"_subtitleLabel" withType:"UILabel"];
  [v3 validateClass:@"PXCMMPosterHeaderView" hasInstanceVariable:@"_statusLabel" withType:"UILabel"];
}

@end