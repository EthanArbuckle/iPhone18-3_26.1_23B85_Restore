@interface _UIKeyShortcutHUDWindowAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)makeKeyAndVisible;
@end

@implementation _UIKeyShortcutHUDWindowAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, validations);
  objc_storeStrong(location, 0);
}

- (void)makeKeyAndVisible
{
  selfCopy = self;
  v9 = a2;
  v8.receiver = self;
  v8.super_class = _UIKeyShortcutHUDWindowAccessibility;
  [(_UIKeyShortcutHUDWindowAccessibility *)&v8 makeKeyAndVisible];
  v2 = MEMORY[0x29EDCA5F8];
  v3 = -1073741824;
  v4 = 0;
  v5 = __57___UIKeyShortcutHUDWindowAccessibility_makeKeyAndVisible__block_invoke;
  v6 = &unk_29F30C7C8;
  v7 = MEMORY[0x29EDC9748](selfCopy);
  AXPerformBlockOnMainThreadAfterDelay();
  objc_storeStrong(&v7, 0);
}

@end