@interface SFSiteIconCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation SFSiteIconCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SFSiteIconCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"SFSiteIconCell" hasInstanceVariable:@"_subtitleLabel" withType:"UILabel"];
}

@end