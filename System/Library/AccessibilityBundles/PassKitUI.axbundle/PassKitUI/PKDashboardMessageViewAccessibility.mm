@interface PKDashboardMessageViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityCustomActions;
@end

@implementation PKDashboardMessageViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKDashboardMessageView" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKDashboardMessageView" hasInstanceMethod:@"message" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKDashboardMessageView" hasInstanceMethod:@"dismissButtonPressed:" withFullSignature:{"v", "@", 0}];
}

uint64_t __77__PKDashboardMessageViewAccessibility__accessibilitySupplementaryFooterViews__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v2 isAccessibilityElement])
  {
    v3 = [v2 _accessibilityViewIsActive];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)accessibilityCustomActions
{
  v9.receiver = self;
  v9.super_class = PKDashboardMessageViewAccessibility;
  v3 = [(PKDashboardMessageViewAccessibility *)&v9 accessibilityCustomActions];
  v4 = [v3 mutableCopy];

  if (!v4)
  {
    v4 = [MEMORY[0x29EDB8DE8] array];
  }

  v5 = objc_alloc(MEMORY[0x29EDC78E0]);
  v6 = accessibilityLocalizedString(@"dismiss.message");
  v7 = [v5 initWithName:v6 target:self selector:sel__axDismiss_];
  [v4 addObject:v7];

  return v4;
}

@end