@interface WFWidgetCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (id)_axWorkflowCellName;
- (void)setRunningState:(int64_t)a3;
@end

@implementation WFWidgetCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"WFWidgetCell" hasInstanceMethod:@"nameView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"WFWidgetCell" hasInstanceMethod:@"setRunningState:" withFullSignature:{"v", "q", 0}];
}

- (BOOL)isAccessibilityElement
{
  v2 = [(WFWidgetCellAccessibility *)self _axWorkflowCellName];
  v3 = v2 != 0;

  return v3;
}

- (void)setRunningState:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = WFWidgetCellAccessibility;
  [(WFWidgetCellAccessibility *)&v7 setRunningState:?];
  if (a3 <= 3)
  {
    v4 = off_29F323648[a3];
    v5 = *MEMORY[0x29EDC7EA8];
    v6 = accessibilityLocalizedString(v4);
    UIAccessibilityPostNotification(v5, v6);
  }
}

- (id)_axWorkflowCellName
{
  v2 = [(WFWidgetCellAccessibility *)self safeUIViewForKey:@"nameView"];
  v3 = [v2 accessibilityValue];

  return v3;
}

@end