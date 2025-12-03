@interface BuddyExpressSetupFeatureCardPrimaryCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (int64_t)_accessibilityExpandedStatus;
@end

@implementation BuddyExpressSetupFeatureCardPrimaryCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BuddyExpressSetupFeatureCardPrimaryCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BuddyExpressSetupFeatureCardPrimaryCell" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BuddyExpressSetupFeatureCardPrimaryCell" hasInstanceMethod:@"setExpanded:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"BuddyExpressSetupFeatureCardPrimaryCell" hasInstanceMethod:@"isExpanded" withFullSignature:{"B", 0}];
}

- (int64_t)_accessibilityExpandedStatus
{
  if ([(BuddyExpressSetupFeatureCardPrimaryCellAccessibility *)self safeBoolForKey:@"isExpanded"])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

@end