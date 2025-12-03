@interface BuddyExpressSetupFeatureCardCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation BuddyExpressSetupFeatureCardCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BuddyExpressSetupFeatureCardCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BuddyExpressSetupFeatureCardCell" hasInstanceMethod:@"stateLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BuddyExpressSetupFeatureCardCell" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
}

@end