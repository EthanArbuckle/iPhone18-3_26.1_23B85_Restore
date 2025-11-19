@interface _UIKeyShortcutHUDShortcutCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation _UIKeyShortcutHUDShortcutCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v9 = location;
  v8 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = @"_UIKeyShortcutHUDShortcutCell";
  v3 = @"UICollectionViewCell";
  [location[0] validateClass:? isKindOfClass:?];
  v7 = "@";
  [location[0] validateClass:@"UICollectionViewCell" hasInstanceMethod:@"contentConfiguration" withFullSignature:0];
  [location[0] validateClass:v4 hasInstanceMethod:@"shortcutInputAccessoryView" withFullSignature:{v7, 0}];
  v5 = @"UIListContentConfiguration";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v5 hasInstanceMethod:@"secondaryText" withFullSignature:{v7, 0}];
  [location[0] validateClass:@"_UIKeyShortcutHUDShortcutInputAccessoryView" hasInstanceMethod:@"shortcutInputView" withFullSignature:{v7, 0}];
  v6 = @"_UIKeyboardShortcutView";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v6 hasInstanceMethod:@"inputLabel" withFullSignature:{v7, 0}];
  objc_storeStrong(v9, v8);
}

- (id)accessibilityLabel
{
  v14 = self;
  v13[1] = a2;
  v13[0] = [(_UIKeyShortcutHUDShortcutCellAccessibility *)self safeValueForKey:@"contentConfiguration"];
  v12 = [v13[0] safeStringForKey:@"text"];
  v11 = [v13[0] safeStringForKey:@"secondaryText"];
  v10 = [(_UIKeyShortcutHUDShortcutCellAccessibility *)v14 safeValueForKeyPath:@"shortcutInputAccessoryView.shortcutInputView"];
  v4 = [v10 safeValueForKey:@"modifiersLabel"];
  v9 = [v4 accessibilityLabel];
  *&v2 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  v6 = [v10 safeValueForKey:{@"inputLabel", v2}];
  v5 = [v6 accessibilityLabel];
  v8 = [v5 lowercaseString];
  MEMORY[0x29EDC9740](v5);
  MEMORY[0x29EDC9740](v6);
  v7 = __UIAXStringForVariables();
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(v13, 0);

  return v7;
}

@end