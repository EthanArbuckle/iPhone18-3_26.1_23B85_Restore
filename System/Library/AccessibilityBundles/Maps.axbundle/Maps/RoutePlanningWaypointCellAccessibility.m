@interface RoutePlanningWaypointCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySupplementaryFooterViews;
- (id)automationElements;
@end

@implementation RoutePlanningWaypointCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"RoutePlanningWaypointCell" isKindOfClass:@"UITableViewCell"];
  [v3 validateClass:@"UITableViewCell" hasInstanceMethod:@"_reorderControlImage" withFullSignature:{"@", 0}];
  [v3 validateClass:@"RoutePlanningWaypointCell" hasInstanceMethod:@"currentText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"RoutePlanningWaypointCell" hasInstanceVariable:@"_iconView" withType:"UIImageView"];
  [v3 validateClass:@"RoutePlanningWaypointCell" hasInstanceVariable:@"_titleTextField" withType:"RoutePlanningWaypointTextField"];
  [v3 validateClass:@"UITableViewCell" hasInstanceMethod:@"_accessibilityTextElementText" withFullSignature:{"@", 0}];
}

- (id)_accessibilitySupplementaryFooterViews
{
  v2 = [(RoutePlanningWaypointCellAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_3];
  v3 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, v2}];

  return v3;
}

uint64_t __80__RoutePlanningWaypointCellAccessibility__accessibilitySupplementaryFooterViews__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Uitableviewcel_0.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)automationElements
{
  v3 = MEMORY[0x29EDB8D80];
  v4 = [(RoutePlanningWaypointCellAccessibility *)self safeValueForKey:@"_reorderControlImage"];
  v5 = [(RoutePlanningWaypointCellAccessibility *)self safeValueForKey:@"_iconView"];
  v6 = [(RoutePlanningWaypointCellAccessibility *)self safeValueForKey:@"_titleTextField"];
  v7 = [v3 axArrayByIgnoringNilElementsWithCount:{3, v4, v5, v6}];

  return v7;
}

@end