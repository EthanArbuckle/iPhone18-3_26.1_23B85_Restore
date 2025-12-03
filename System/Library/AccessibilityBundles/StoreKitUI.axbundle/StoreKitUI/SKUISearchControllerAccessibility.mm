@interface SKUISearchControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_setSuffix:(id)suffix;
@end

@implementation SKUISearchControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKUISearchController" hasInstanceMethod:@"_setSuffix:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SKUISearchController" hasInstanceMethod:@"setActive:" withFullSignature:{"v", "B", 0}];
}

- (void)_setSuffix:(id)suffix
{
  v13.receiver = self;
  v13.super_class = SKUISearchControllerAccessibility;
  suffixCopy = suffix;
  [(SKUISearchControllerAccessibility *)&v13 _setSuffix:suffixCopy];
  v5 = [(SKUISearchControllerAccessibility *)self safeValueForKey:@"searchBar", v13.receiver, v13.super_class];
  v6 = [v5 safeValueForKey:@"searchField"];

  v7 = [suffixCopy length];
  if (v7)
  {
    v8 = [v6 safeValueForKey:@"_clearButton"];
    v9 = accessibilitySKUILocalizedString(@"clear.search.results.button");
    [v8 setAccessibilityLabel:v9];

    v10 = [v6 safeValueForKey:@"_clearButton"];
    v11 = accessibilitySKUILocalizedString(@"clear.search.results.hint");
    [v10 setAccessibilityHint:v11];
  }

  v12 = [v6 safeValueForKey:@"_clearButton"];
  [v12 setAccessibilityIdentifier:@"ClearText"];
}

@end