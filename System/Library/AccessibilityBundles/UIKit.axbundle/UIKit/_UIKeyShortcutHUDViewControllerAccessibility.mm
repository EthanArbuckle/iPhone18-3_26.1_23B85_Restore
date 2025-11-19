@interface _UIKeyShortcutHUDViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityPerformEscape;
- (void)setHidden:(BOOL)a3 completionHandler:(id)a4;
@end

@implementation _UIKeyShortcutHUDViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v7 = location;
  v6 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"_UIKeyShortcutHUDViewController";
  v4 = "@";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"toolbarVC" withFullSignature:{v4, 0}];
  v5 = "v";
  [location[0] validateClass:v3 hasInstanceMethod:@"setHidden:completionHandler:" withFullSignature:{"B", "@?", 0}];
  [location[0] validateClass:@"_UIKeyShortcutHUDToolbarViewController" hasInstanceMethod:@"searchButton" withFullSignature:{v4, 0}];
  [location[0] validateClass:@"_UIKeyShortcutHUDServer" hasInstanceMethod:@"_dismissHUD" withFullSignature:{v5, 0}];
  objc_storeStrong(v7, v6);
}

- (BOOL)accessibilityPerformEscape
{
  v8[2] = self;
  v8[1] = a2;
  v7 = 0;
  v3 = [(_UIKeyShortcutHUDViewControllerAccessibility *)self safeValueForKey:@"delegate"];
  v6 = __UIAccessibilitySafeClass();
  MEMORY[0x29EDC9740](v3);
  v5 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  v8[0] = v5;
  v4 = MEMORY[0x29EDC9748](v5);
  AXPerformSafeBlock();
  objc_storeStrong(&v4, 0);
  objc_storeStrong(v8, 0);
  return 1;
}

- (void)setHidden:(BOOL)a3 completionHandler:(id)a4
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v4 = v17;
  v5 = v15;
  v7 = MEMORY[0x29EDCA5F8];
  v8 = -1073741824;
  v9 = 0;
  v10 = __76___UIKeyShortcutHUDViewControllerAccessibility_setHidden_completionHandler___block_invoke;
  v11 = &unk_29F30CB58;
  v12 = MEMORY[0x29EDC9748](location);
  v13 = v15;
  v6.receiver = v4;
  v6.super_class = _UIKeyShortcutHUDViewControllerAccessibility;
  [(_UIKeyShortcutHUDViewControllerAccessibility *)&v6 setHidden:v5 completionHandler:?];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&location, 0);
}

@end