@interface CNQuickActionButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_labelText;
- (id)button;
@end

@implementation CNQuickActionButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CNQuickActionButton" hasInstanceMethod:@"showTitle" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CNQuickActionButton" hasInstanceMethod:@"button" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNQuickActionButton" hasInstanceMethod:@"action" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNQuickAction" hasInstanceMethod:@"titleForContext:" withFullSignature:{"@", "q", 0}];
}

- (id)_labelText
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__5;
  v8 = __Block_byref_object_dispose__5;
  v9 = 0;
  AXPerformSafeBlock();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __46__CNQuickActionButtonAccessibility__labelText__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) safeValueForKey:@"action"];
  v2 = [v5 titleForContext:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)button
{
  v6.receiver = self;
  v6.super_class = CNQuickActionButtonAccessibility;
  button = [(CNQuickActionButtonAccessibility *)&v6 button];
  _labelText = [(CNQuickActionButtonAccessibility *)self _labelText];
  [button setAccessibilityLabel:_labelText];

  return button;
}

@end