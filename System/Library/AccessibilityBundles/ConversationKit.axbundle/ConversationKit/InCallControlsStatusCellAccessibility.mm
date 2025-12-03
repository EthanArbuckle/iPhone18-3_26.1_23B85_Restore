@interface InCallControlsStatusCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityActivateActionButton;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
@end

@implementation InCallControlsStatusCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ConversationKit.InCallControlsStatusCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ConversationKit.InCallControlsStatusCell" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ConversationKit.InCallControlsStatusCell" hasInstanceMethod:@"actionButton" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(InCallControlsStatusCellAccessibility *)self safeValueForKey:@"titleLabel"];
  v4 = [(InCallControlsStatusCellAccessibility *)self safeValueForKey:@"subtitleLabel"];
  accessibilityLabel = [v3 accessibilityLabel];
  accessibilityLabel2 = [v4 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

- (id)accessibilityCustomActions
{
  v3 = objc_opt_new();
  v4 = [(InCallControlsStatusCellAccessibility *)self safeUIViewForKey:@"actionButton"];
  if ([v4 _accessibilityViewIsVisible])
  {
    v5 = objc_alloc(MEMORY[0x29EDC78E0]);
    accessibilityLabel = [v4 accessibilityLabel];
    v7 = [v5 initWithName:accessibilityLabel target:self selector:sel__accessibilityActivateActionButton];
    [v3 addObject:v7];
  }

  return v3;
}

- (BOOL)_accessibilityActivateActionButton
{
  v2 = [(InCallControlsStatusCellAccessibility *)self safeValueForKey:@"actionButton"];
  v3 = __UIAccessibilitySafeClass();

  [v3 sendActionsForControlEvents:64];
  return v3 != 0;
}

@end