@interface CARIconScrollViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)automationElements;
@end

@implementation CARIconScrollViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CARFolderView"];
  [validationsCopy validateClass:@"_CARDashboardHomeViewController"];
  [validationsCopy validateClass:@"CARTodayViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"_CARDashboardHomeViewController" hasInstanceMethod:@"todayViewController" withFullSignature:{"@", 0}];
}

- (id)automationElements
{
  objc_opt_class();
  v3 = [(CARIconScrollViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_0 startWithSelf:0];
  _accessibilityViewController = [v3 _accessibilityViewController];
  v5 = [_accessibilityViewController safeValueForKey:@"todayViewController"];
  v6 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v7 = [(CARIconScrollViewAccessibility *)self _accessibilityAncestorIsKindOf:MEMORY[0x29C2CF930](@"CARFolderView")];
  v8 = __UIAccessibilityCastAsSafeCategory();

  v9 = MEMORY[0x29EDB8D80];
  view = [v6 view];
  v11 = [v9 axArrayByIgnoringNilElementsWithCount:{1, view}];
  automationElements = [v8 automationElements];
  v13 = [v9 axArrayWithPossiblyNilArrays:{2, v11, automationElements}];

  return v13;
}

uint64_t __52__CARIconScrollViewAccessibility_automationElements__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  MEMORY[0x29C2CF930](@"_CARDashboardHomeViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end