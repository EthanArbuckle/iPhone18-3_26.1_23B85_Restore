@interface SU_UITableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)tableTextAccessibleLabel:(id)label;
@end

@implementation SU_UITableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SUUICircleProgressIndicator"];
  [validationsCopy validateClass:@"UITableViewCell" hasInstanceMethod:@"tableTextAccessibleLabel:" withFullSignature:{"@", 0}];
}

- (id)tableTextAccessibleLabel:(id)label
{
  v10.receiver = self;
  v10.super_class = SU_UITableViewCellAccessibility;
  v4 = [(SU_UITableViewCellAccessibility *)&v10 tableTextAccessibleLabel:label];
  accessoryView = [(SU_UITableViewCellAccessibility *)self accessoryView];
  NSClassFromString(&cfstr_Suuicircleprog_0.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = accessibilityLocalizedString(@"loading.status");
    v8 = __UIAXStringForVariables();

    v4 = v8;
  }

  return v4;
}

@end