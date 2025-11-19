@interface CARIconScrollViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)automationElements;
@end

@implementation CARIconScrollViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CARFolderView"];
  [v3 validateClass:@"_CARDashboardHomeViewController"];
  [v3 validateClass:@"CARTodayViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"_CARDashboardHomeViewController" hasInstanceMethod:@"todayViewController" withFullSignature:{"@", 0}];
}

- (id)automationElements
{
  objc_opt_class();
  v3 = [(CARIconScrollViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_0 startWithSelf:0];
  v4 = [v3 _accessibilityViewController];
  v5 = [v4 safeValueForKey:@"todayViewController"];
  v6 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v7 = [(CARIconScrollViewAccessibility *)self _accessibilityAncestorIsKindOf:MEMORY[0x29C2CF930](@"CARFolderView")];
  v8 = __UIAccessibilityCastAsSafeCategory();

  v9 = MEMORY[0x29EDB8D80];
  v10 = [v6 view];
  v11 = [v9 axArrayByIgnoringNilElementsWithCount:{1, v10}];
  v12 = [v8 automationElements];
  v13 = [v9 axArrayWithPossiblyNilArrays:{2, v11, v12}];

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