@interface ListTableViewAccessibility
- (id)_accessibilityFirstContainedElementForTechnology:(id)technology honoringGroups:(BOOL)groups shouldAlwaysScroll:(BOOL)scroll;
@end

@implementation ListTableViewAccessibility

- (id)_accessibilityFirstContainedElementForTechnology:(id)technology honoringGroups:(BOOL)groups shouldAlwaysScroll:(BOOL)scroll
{
  scrollCopy = scroll;
  groupsCopy = groups;
  technologyCopy = technology;
  objc_opt_class();
  v8 = __UIAccessibilityCastAsClass();
  visibleCells = [v8 visibleCells];
  firstObject = [visibleCells firstObject];
  v11 = [firstObject _accessibilityFirstContainedElementForTechnology:technologyCopy honoringGroups:groupsCopy shouldAlwaysScroll:scrollCopy];

  return v11;
}

@end