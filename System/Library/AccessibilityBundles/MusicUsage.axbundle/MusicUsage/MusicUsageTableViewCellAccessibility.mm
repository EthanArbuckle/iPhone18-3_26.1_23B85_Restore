@interface MusicUsageTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation MusicUsageTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MusicUsageTableViewCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"MusicUsageTableViewCell" hasInstanceVariable:@"_subtitleLabel" withType:"MPUAbbreviatingLabel"];
  [v3 validateClass:@"MusicUsageTableViewCell" hasInstanceVariable:@"_fileSizeLabel" withType:"UILabel"];
}

@end