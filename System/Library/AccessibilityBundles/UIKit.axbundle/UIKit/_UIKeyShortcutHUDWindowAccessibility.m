@interface _UIKeyShortcutHUDWindowAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)makeKeyAndVisible;
@end

@implementation _UIKeyShortcutHUDWindowAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)makeKeyAndVisible
{
  v10 = self;
  v9 = a2;
  v8.receiver = self;
  v8.super_class = _UIKeyShortcutHUDWindowAccessibility;
  [(_UIKeyShortcutHUDWindowAccessibility *)&v8 makeKeyAndVisible];
  v2 = MEMORY[0x29EDCA5F8];
  v3 = -1073741824;
  v4 = 0;
  v5 = __57___UIKeyShortcutHUDWindowAccessibility_makeKeyAndVisible__block_invoke;
  v6 = &unk_29F30C7C8;
  v7 = MEMORY[0x29EDC9748](v10);
  AXPerformBlockOnMainThreadAfterDelay();
  objc_storeStrong(&v7, 0);
}

@end