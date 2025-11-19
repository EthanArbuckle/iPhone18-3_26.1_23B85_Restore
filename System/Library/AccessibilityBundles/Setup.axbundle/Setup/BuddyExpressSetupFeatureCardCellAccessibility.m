@interface BuddyExpressSetupFeatureCardCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation BuddyExpressSetupFeatureCardCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"BuddyExpressSetupFeatureCardCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"BuddyExpressSetupFeatureCardCell" hasInstanceMethod:@"stateLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"BuddyExpressSetupFeatureCardCell" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
}

@end