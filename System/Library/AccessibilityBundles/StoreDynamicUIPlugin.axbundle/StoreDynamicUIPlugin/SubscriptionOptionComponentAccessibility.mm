@interface SubscriptionOptionComponentAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation SubscriptionOptionComponentAccessibility

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = SubscriptionOptionComponentAccessibility;
  accessibilityTraits = [(SubscriptionOptionComponentAccessibility *)&v7 accessibilityTraits];
  v4 = [(SubscriptionOptionComponentAccessibility *)self safeSwiftBoolForKey:@"isOptionSelected"];
  v5 = *MEMORY[0x29EDC7FC0];
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | accessibilityTraits;
}

@end