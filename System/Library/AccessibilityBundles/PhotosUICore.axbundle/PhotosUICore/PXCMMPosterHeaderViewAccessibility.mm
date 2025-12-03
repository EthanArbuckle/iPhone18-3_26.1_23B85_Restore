@interface PXCMMPosterHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation PXCMMPosterHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PXCMMPosterHeaderView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PXCMMPosterHeaderView" hasInstanceVariable:@"_subtitleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PXCMMPosterHeaderView" hasInstanceVariable:@"_statusLabel" withType:"UILabel"];
}

@end