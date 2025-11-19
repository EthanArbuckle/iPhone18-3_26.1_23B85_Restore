@interface MessageListSearchViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation MessageListSearchViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MessageListSearchViewController" hasInstanceMethod:@"setSearchSuggestionsVisible:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"MessageListSearchViewController" hasInstanceMethod:@"isSearchSuggestionsVisible" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MessageListSearchViewController" isKindOfClass:@"UIViewController"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = MessageListSearchViewControllerAccessibility;
  [(MessageListSearchViewControllerAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(MessageListSearchViewControllerAccessibility *)self safeValueForKey:@"view"];
  v4 = [v3 _accessibilityFindAncestor:&__block_literal_global_10 startWithSelf:1];
  if ([(MessageListSearchViewControllerAccessibility *)self safeBoolForKey:@"isSearchSuggestionsVisible"])
  {
    v5 = &__block_literal_global_307;
    v6 = v4;
  }

  else
  {
    v6 = v4;
    v5 = 0;
  }

  [v6 _setIsAccessibilityElementBlock:v5];
}

uint64_t __90__MessageListSearchViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 accessibilityIdentification];
  v3 = [v2 isEqualToString:@"AXUISearchControllerDimmingView"];

  return v3;
}

@end