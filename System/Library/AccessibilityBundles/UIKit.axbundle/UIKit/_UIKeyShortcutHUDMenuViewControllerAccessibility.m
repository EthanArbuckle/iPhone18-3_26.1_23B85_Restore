@interface _UIKeyShortcutHUDMenuViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation _UIKeyShortcutHUDMenuViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:? isKindOfClass:?];
  [location[0] validateClass:@"_UIKeyShortcutHUDMenuViewController" hasInstanceVariable:@"_collectionView" withType:"UICollectionView"];
  objc_storeStrong(location, 0);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = _UIKeyShortcutHUDMenuViewControllerAccessibility;
  [(_UIKeyShortcutHUDMenuViewControllerAccessibility *)&v3 viewWillDisappear:a3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

- (void)viewWillAppear:(BOOL)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v5.receiver = self;
  v5.super_class = _UIKeyShortcutHUDMenuViewControllerAccessibility;
  [(_UIKeyShortcutHUDMenuViewControllerAccessibility *)&v5 viewWillAppear:a3];
  [(_UIKeyShortcutHUDMenuViewControllerAccessibility *)v8 _accessibilityLoadAccessibilityInformation];
  notification = *MEMORY[0x29EDC7F10];
  v4 = [(_UIKeyShortcutHUDMenuViewControllerAccessibility *)v8 safeUIViewForKey:@"_collectionView"];
  UIAccessibilityPostNotification(notification, v4);
  MEMORY[0x29EDC9740](v4);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9 = self;
  v8 = a2;
  v7.receiver = self;
  v7.super_class = _UIKeyShortcutHUDMenuViewControllerAccessibility;
  [(_UIKeyShortcutHUDMenuViewControllerAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v5 = 0;
  v2 = [(_UIKeyShortcutHUDMenuViewControllerAccessibility *)v9 safeUIViewForKey:@"_collectionView"];
  v4 = __UIAccessibilitySafeClass();
  MEMORY[0x29EDC9740](v2);
  v3 = MEMORY[0x29EDC9748](v4);
  objc_storeStrong(&v4, 0);
  v6 = v3;
  [v3 setAccessibilityComparatorForSorting:&__block_literal_global_8];
  objc_storeStrong(&v6, 0);
}

@end