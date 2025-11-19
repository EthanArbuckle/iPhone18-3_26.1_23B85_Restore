@interface _UIStatusBarLockViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (unint64_t)accessibilityTraits;
- (void)animateUnlockWithCompletionBlock:(id)a3;
@end

@implementation _UIStatusBarLockViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"_UIStatusBarLockView" hasInstanceMethod:@"animateUnlockWithCompletionBlock:" withFullSignature:{"v", "@?", 0}];
  objc_storeStrong(v4, obj);
}

- (unint64_t)accessibilityTraits
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = _UIStatusBarLockViewAccessibility;
  return [(_UIStatusBarLockViewAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7580] | *MEMORY[0x29EDC74F8];
}

- (void)animateUnlockWithCompletionBlock:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v12;
  v5 = MEMORY[0x29EDCA5F8];
  v6 = -1073741824;
  v7 = 0;
  v8 = __70___UIStatusBarLockViewAccessibility_animateUnlockWithCompletionBlock___block_invoke;
  v9 = &unk_29F30E510;
  v10 = MEMORY[0x29EDC9748](location[0]);
  v4.receiver = v3;
  v4.super_class = _UIStatusBarLockViewAccessibility;
  [(_UIStatusBarLockViewAccessibility *)&v4 animateUnlockWithCompletionBlock:?];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

@end