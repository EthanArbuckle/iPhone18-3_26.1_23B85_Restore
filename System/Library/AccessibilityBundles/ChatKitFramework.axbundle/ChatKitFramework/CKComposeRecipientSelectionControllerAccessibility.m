@interface CKComposeRecipientSelectionControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_layoutFromFieldShouldHide:(BOOL)a3;
@end

@implementation CKComposeRecipientSelectionControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKComposeRecipientSelectionController" hasInstanceMethod:@"_layoutFromFieldShouldHide:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"CKComposeRecipientSelectionController" hasInstanceMethod:@"simSelectionFieldView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKSIMSelectionFieldView" hasInstanceMethod:@"contentStackView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKSIMSelectionFieldView" hasInstanceMethod:@"subscriptionSelectorButton" withFullSignature:{"@", 0}];
}

- (void)_layoutFromFieldShouldHide:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = CKComposeRecipientSelectionControllerAccessibility;
  [(CKComposeRecipientSelectionControllerAccessibility *)&v10 _layoutFromFieldShouldHide:?];
  if (!a3)
  {
    v5 = [(CKComposeRecipientSelectionControllerAccessibility *)self safeValueForKeyPath:@"simSelectionFieldView.contentStackView"];
    [v5 setIsAccessibilityElement:1];
    v6 = accessibilityLocalizedString(@"from.field");
    v9 = [(CKComposeRecipientSelectionControllerAccessibility *)self safeValueForKeyPath:@"simSelectionFieldView.subscriptionSelectorButton"];
    v7 = __UIAXStringForVariables();

    [v5 setAccessibilityLabel:{v7, v9, @"__AXStringForVariablesSentinel"}];
    [v5 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
    v8 = accessibilityLocalizedString(@"collapsed.from.field.hint");
    [v5 setAccessibilityHint:v8];
  }
}

@end