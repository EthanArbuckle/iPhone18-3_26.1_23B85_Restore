@interface SFSiteCardCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation SFSiteCardCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SFSiteCardCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"SFSiteCardCell" hasInstanceVariable:@"_subtitleLabel" withType:"UILabel"];
}

@end