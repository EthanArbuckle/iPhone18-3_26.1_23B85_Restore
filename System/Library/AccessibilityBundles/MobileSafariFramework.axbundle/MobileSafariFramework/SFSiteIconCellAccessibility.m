@interface SFSiteIconCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation SFSiteIconCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SFSiteIconCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"SFSiteIconCell" hasInstanceVariable:@"_subtitleLabel" withType:"UILabel"];
}

@end