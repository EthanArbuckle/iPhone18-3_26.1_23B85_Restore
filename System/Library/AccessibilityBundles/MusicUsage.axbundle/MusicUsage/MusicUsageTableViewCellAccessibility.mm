@interface MusicUsageTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation MusicUsageTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicUsageTableViewCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"MusicUsageTableViewCell" hasInstanceVariable:@"_subtitleLabel" withType:"MPUAbbreviatingLabel"];
  [validationsCopy validateClass:@"MusicUsageTableViewCell" hasInstanceVariable:@"_fileSizeLabel" withType:"UILabel"];
}

@end