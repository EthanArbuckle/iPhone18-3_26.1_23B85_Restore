@interface _UIKeyShortcutHUDToolbarSearchCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation _UIKeyShortcutHUDToolbarSearchCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"_UIKeyShortcutHUDViewController";
  [location[0] validateClass:?];
  [location[0] validateClass:@"_UIKeyShortcutHUDViewController" hasInstanceMethod:@"isSearching" withFullSignature:{"B", 0}];
  objc_storeStrong(v5, obj);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = _UIKeyShortcutHUDToolbarSearchCellAccessibility;
  [(_UIKeyShortcutHUDToolbarSearchCellAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  v2 = [(_UIKeyShortcutHUDToolbarSearchCellAccessibility *)selfCopy _accessibilityDescendantOfType:objc_opt_class()];
  [v2 setIsAccessibilityElement:0];
  objc_storeStrong(&v2, 0);
}

- (BOOL)isAccessibilityElement
{
  v5[2] = self;
  v5[1] = a2;
  v5[0] = [(_UIKeyShortcutHUDToolbarSearchCellAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_9 startWithSelf:0];
  _accessibilityViewController = [v5[0] _accessibilityViewController];
  v4 = [_accessibilityViewController safeBoolForKey:@"isSearching"] ^ 1;
  MEMORY[0x29EDC9740](_accessibilityViewController);
  objc_storeStrong(v5, 0);
  return v4;
}

@end