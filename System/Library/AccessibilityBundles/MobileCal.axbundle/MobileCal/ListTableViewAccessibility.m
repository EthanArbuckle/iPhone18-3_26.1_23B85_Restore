@interface ListTableViewAccessibility
- (id)_accessibilityFirstContainedElementForTechnology:(id)a3 honoringGroups:(BOOL)a4 shouldAlwaysScroll:(BOOL)a5;
@end

@implementation ListTableViewAccessibility

- (id)_accessibilityFirstContainedElementForTechnology:(id)a3 honoringGroups:(BOOL)a4 shouldAlwaysScroll:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  objc_opt_class();
  v8 = __UIAccessibilityCastAsClass();
  v9 = [v8 visibleCells];
  v10 = [v9 firstObject];
  v11 = [v10 _accessibilityFirstContainedElementForTechnology:v7 honoringGroups:v6 shouldAlwaysScroll:v5];

  return v11;
}

@end