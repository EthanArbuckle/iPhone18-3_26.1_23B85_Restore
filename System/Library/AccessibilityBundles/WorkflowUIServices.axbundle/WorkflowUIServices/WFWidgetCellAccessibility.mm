@interface WFWidgetCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (id)_axWorkflowCellName;
- (void)setRunningState:(int64_t)state;
@end

@implementation WFWidgetCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"WFWidgetCell" hasInstanceMethod:@"nameView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WFWidgetCell" hasInstanceMethod:@"setRunningState:" withFullSignature:{"v", "q", 0}];
}

- (BOOL)isAccessibilityElement
{
  _axWorkflowCellName = [(WFWidgetCellAccessibility *)self _axWorkflowCellName];
  v3 = _axWorkflowCellName != 0;

  return v3;
}

- (void)setRunningState:(int64_t)state
{
  v7.receiver = self;
  v7.super_class = WFWidgetCellAccessibility;
  [(WFWidgetCellAccessibility *)&v7 setRunningState:?];
  if (state <= 3)
  {
    v4 = off_29F323648[state];
    v5 = *MEMORY[0x29EDC7EA8];
    v6 = accessibilityLocalizedString(v4);
    UIAccessibilityPostNotification(v5, v6);
  }
}

- (id)_axWorkflowCellName
{
  v2 = [(WFWidgetCellAccessibility *)self safeUIViewForKey:@"nameView"];
  accessibilityValue = [v2 accessibilityValue];

  return accessibilityValue;
}

@end