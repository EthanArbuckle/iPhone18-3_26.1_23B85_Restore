@interface SFSiteCardCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation SFSiteCardCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SFSiteCardCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"SFSiteCardCell" hasInstanceVariable:@"_subtitleLabel" withType:"UILabel"];
}

@end