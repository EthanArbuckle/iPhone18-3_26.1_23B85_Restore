@interface CNAutocompleteSearchControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)autocompleteResultsController:(id)a3 didSelectRecipient:(id)a4 atIndex:(unint64_t)a5;
@end

@implementation CNAutocompleteSearchControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CNAutocompleteSearchController" hasInstanceMethod:@"autocompleteResultsController:didSelectRecipient:atIndex:" withFullSignature:{"v", "@", "@", "Q", 0}];
  [v3 validateClass:@"CNAutocompleteSearchController" hasInstanceMethod:@"composeField" withFullSignature:{"@", 0}];
}

- (void)autocompleteResultsController:(id)a3 didSelectRecipient:(id)a4 atIndex:(unint64_t)a5
{
  v8.receiver = self;
  v8.super_class = CNAutocompleteSearchControllerAccessibility;
  [(CNAutocompleteSearchControllerAccessibility *)&v8 autocompleteResultsController:a3 didSelectRecipient:a4 atIndex:a5];
  v6 = *MEMORY[0x29EDC7ED8];
  v7 = [(CNAutocompleteSearchControllerAccessibility *)self safeValueForKey:@"composeField"];
  UIAccessibilityPostNotification(v6, v7);
}

@end