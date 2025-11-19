@interface BuddyExpressSetupFeatureCardPrimaryCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (int64_t)_accessibilityExpandedStatus;
@end

@implementation BuddyExpressSetupFeatureCardPrimaryCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"BuddyExpressSetupFeatureCardPrimaryCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"BuddyExpressSetupFeatureCardPrimaryCell" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"BuddyExpressSetupFeatureCardPrimaryCell" hasInstanceMethod:@"setExpanded:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"BuddyExpressSetupFeatureCardPrimaryCell" hasInstanceMethod:@"isExpanded" withFullSignature:{"B", 0}];
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