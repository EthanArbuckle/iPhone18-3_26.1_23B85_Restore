@interface SK_UITableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)tableTextAccessibleLabel:(id)label;
@end

@implementation SK_UITableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKUICircleProgressIndicator"];
  [validationsCopy validateClass:@"UITableViewCell" hasInstanceMethod:@"tableTextAccessibleLabel:" withFullSignature:{"@", 0}];
}

- (id)tableTextAccessibleLabel:(id)label
{
  v10.receiver = self;
  v10.super_class = SK_UITableViewCellAccessibility;
  v4 = [(SK_UITableViewCellAccessibility *)&v10 tableTextAccessibleLabel:label];
  accessoryView = [(SK_UITableViewCellAccessibility *)self accessoryView];
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