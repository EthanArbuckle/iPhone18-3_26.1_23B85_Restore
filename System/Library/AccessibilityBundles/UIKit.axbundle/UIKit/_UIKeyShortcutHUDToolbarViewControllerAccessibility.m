@interface _UIKeyShortcutHUDToolbarViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)didCompleteSearchTransition;
- (void)setSearching:(BOOL)a3;
@end

@implementation _UIKeyShortcutHUDToolbarViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v8 = location;
  v7 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"_UIKeyShortcutHUDToolbarViewController";
  v6 = "@";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"searchBar" withFullSignature:{v6, 0}];
  [location[0] validateClass:v3 hasInstanceMethod:@"searchButton" withFullSignature:{v6, 0}];
  v4 = "v";
  [location[0] validateClass:v3 hasInstanceMethod:@"didCompleteSearchTransition" withFullSignature:0];
  v5 = "B";
  [location[0] validateClass:v3 hasInstanceMethod:@"setSearching:" withFullSignature:{v4, "B", 0}];
  [location[0] validateClass:@"_UIKeyShortcutHUDViewController" hasInstanceMethod:@"isSearching" withFullSignature:{v5, 0}];
  [location[0] validateClass:@"_UIKeyShortcutHUDSearchBar" hasInstanceMethod:@"searchTextField" withFullSignature:{v6, 0}];
  objc_storeStrong(v8, v7);
}

- (void)didCompleteSearchTransition
{
  v9 = self;
  v8 = a2;
  v7.receiver = self;
  v7.super_class = _UIKeyShortcutHUDToolbarViewControllerAccessibility;
  [(_UIKeyShortcutHUDToolbarViewControllerAccessibility *)&v7 didCompleteSearchTransition];
  v5 = [(_UIKeyShortcutHUDToolbarViewControllerAccessibility *)v9 safeValueForKey:@"delegate"];
  v6 = [v5 safeBoolForKey:@"isSearching"];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (v6)
  {
    notification = *MEMORY[0x29EDC7ED8];
    v4 = [(_UIKeyShortcutHUDToolbarViewControllerAccessibility *)v9 safeValueForKeyPath:@"searchBar.searchTextField", v2];
    UIAccessibilityPostNotification(notification, v4);
    MEMORY[0x29EDC9740](v4);
  }
}

- (void)setSearching:(BOOL)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v5.receiver = self;
  v5.super_class = _UIKeyShortcutHUDToolbarViewControllerAccessibility;
  [(_UIKeyShortcutHUDToolbarViewControllerAccessibility *)&v5 setSearching:a3];
  if (!v6)
  {
    notification = *MEMORY[0x29EDC7ED8];
    v4 = [(_UIKeyShortcutHUDToolbarViewControllerAccessibility *)v8 safeValueForKey:@"searchButton"];
    UIAccessibilityPostNotification(notification, v4);
    MEMORY[0x29EDC9740](v4);
  }
}

@end