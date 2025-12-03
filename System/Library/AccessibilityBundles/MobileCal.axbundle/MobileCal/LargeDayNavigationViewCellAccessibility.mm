@interface LargeDayNavigationViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityUserInputLabels;
@end

@implementation LargeDayNavigationViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"DayNavigationViewCell" hasInstanceMethod:@"date" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"LargeDayNavigationViewCell" isKindOfClass:@"DayNavigationViewCell"];
}

- (id)accessibilityUserInputLabels
{
  objc_opt_class();
  v3 = [(LargeDayNavigationViewCellAccessibility *)self safeValueForKey:@"date"];
  v4 = __UIAccessibilityCastAsClass();

  if (v4)
  {
    v5 = MEMORY[0x29C2DF270](v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = MEMORY[0x29EDB8D80];
  v7 = [(LargeDayNavigationViewCellAccessibility *)self safeValueForKey:@"_leftString"];
  v8 = [(LargeDayNavigationViewCellAccessibility *)self safeValueForKey:@"_centerString"];
  v9 = [(LargeDayNavigationViewCellAccessibility *)self safeValueForKey:@"_rightString"];
  v10 = [v6 axArrayByIgnoringNilElementsWithCount:{3, v7, v8, v9}];
  v11 = [v10 componentsJoinedByString:@" "];

  v12 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{2, v5, v11}];

  return v12;
}

@end