@interface SU_UITableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)tableTextAccessibleLabel:(id)a3;
@end

@implementation SU_UITableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SUUICircleProgressIndicator"];
  [v3 validateClass:@"UITableViewCell" hasInstanceMethod:@"tableTextAccessibleLabel:" withFullSignature:{"@", 0}];
}

- (id)tableTextAccessibleLabel:(id)a3
{
  v10.receiver = self;
  v10.super_class = SU_UITableViewCellAccessibility;
  v4 = [(SU_UITableViewCellAccessibility *)&v10 tableTextAccessibleLabel:a3];
  v5 = [(SU_UITableViewCellAccessibility *)self accessoryView];
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