@interface BRShareSettingsButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation BRShareSettingsButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"BRShareSettingsButton" hasInstanceMethod:@"titleLabel" withFullSignature:{"v", 0}];
  [v3 validateClass:@"BRShareSettingsButton" hasInstanceMethod:@"detailLabel" withFullSignature:{"v", 0}];
}

@end