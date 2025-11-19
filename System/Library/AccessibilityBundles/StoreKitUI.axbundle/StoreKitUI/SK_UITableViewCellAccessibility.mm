@interface SK_UITableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)tableTextAccessibleLabel:(id)a3;
@end

@implementation SK_UITableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SKUICircleProgressIndicator"];
  [v3 validateClass:@"UITableViewCell" hasInstanceMethod:@"tableTextAccessibleLabel:" withFullSignature:{"@", 0}];
}

- (id)tableTextAccessibleLabel:(id)a3
{
  v10.receiver = self;
  v10.super_class = SK_UITableViewCellAccessibility;
  v4 = [(SK_UITableViewCellAccessibility *)&v10 tableTextAccessibleLabel:a3];
  v5 = [(SK_UITableViewCellAccessibility *)self accessoryView];
  NSClassFromString(&cfstr_Skuicircleprog_0.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = accessibilitySKUILocalizedString(@"loading.status");
    v8 = __UIAXStringForVariables();

    v4 = v8;
  }

  return v4;
}

@end