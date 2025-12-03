@interface CNAutocompleteSearchControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)autocompleteResultsController:(id)controller didSelectRecipient:(id)recipient atIndex:(unint64_t)index;
@end

@implementation CNAutocompleteSearchControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CNAutocompleteSearchController" hasInstanceMethod:@"autocompleteResultsController:didSelectRecipient:atIndex:" withFullSignature:{"v", "@", "@", "Q", 0}];
  [validationsCopy validateClass:@"CNAutocompleteSearchController" hasInstanceMethod:@"composeField" withFullSignature:{"@", 0}];
}

- (void)autocompleteResultsController:(id)controller didSelectRecipient:(id)recipient atIndex:(unint64_t)index
{
  v8.receiver = self;
  v8.super_class = CNAutocompleteSearchControllerAccessibility;
  [(CNAutocompleteSearchControllerAccessibility *)&v8 autocompleteResultsController:controller didSelectRecipient:recipient atIndex:index];
  v6 = *MEMORY[0x29EDC7ED8];
  v7 = [(CNAutocompleteSearchControllerAccessibility *)self safeValueForKey:@"composeField"];
  UIAccessibilityPostNotification(v6, v7);
}

@end