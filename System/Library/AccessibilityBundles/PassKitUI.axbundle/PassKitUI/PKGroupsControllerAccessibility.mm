@interface PKGroupsControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation PKGroupsControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKGroupsController" hasInstanceMethod:@"indexOfSeparationGroup" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"PKGroupsController" hasInstanceMethod:@"_moveGroup:fromIndex:toIndex:notify:" withFullSignature:{"v", "@", "Q", "Q", "B", 0}];
  [v3 validateClass:@"PKGroupsController" hasInstanceVariable:@"_groups" withType:"NSMutableArray"];
}

uint64_t __71__PKGroupsControllerAccessibility__moveGroup_fromIndex_toIndex_notify___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectAtIndex:*(a1 + 48) + 1];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

uint64_t __71__PKGroupsControllerAccessibility__moveGroup_fromIndex_toIndex_notify___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) objectAtIndex:*(a1 + 48) - 1];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

@end