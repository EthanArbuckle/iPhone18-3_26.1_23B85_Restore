@interface ActionCoordinatorAccessibility
- (void)presentRoutePlanningViewType:(int64_t)type;
@end

@implementation ActionCoordinatorAccessibility

- (void)presentRoutePlanningViewType:(int64_t)type
{
  v3.receiver = self;
  v3.super_class = ActionCoordinatorAccessibility;
  [(ActionCoordinatorAccessibility *)&v3 presentRoutePlanningViewType:type];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end