@interface UIKeyboardDockViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_accessibilitySupplementaryHeaderViews;
@end

@implementation UIKeyboardDockViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"UIKeyboardDockView";
  v4 = "@";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"rightDockItem" withFullSignature:{v4, 0}];
  [location[0] validateClass:@"UIKeyboardDockItem" hasInstanceMethod:@"view" withFullSignature:{v4, 0}];
  objc_storeStrong(v6, obj);
}

- (id)_accessibilitySupplementaryHeaderViews
{
  selfCopy = self;
  v8[1] = a2;
  v8[0] = [MEMORY[0x29EDB8DE8] array];
  v4 = v8[0];
  v6 = [(UIKeyboardDockViewAccessibility *)selfCopy safeValueForKey:@"leftDockItem"];
  v5 = [v6 safeUIViewForKey:@"view"];
  [v4 axSafelyAddObject:?];
  MEMORY[0x29EDC9740](v5);
  *&v2 = MEMORY[0x29EDC9740](v6).n128_u64[0];
  [v8[0] ax_removeObjectsFromArrayUsingBlock:{&__block_literal_global_23, v2}];
  v7 = MEMORY[0x29EDC9748](v8[0]);
  objc_storeStrong(v8, 0);

  return v7;
}

uint64_t __73__UIKeyboardDockViewAccessibility__accessibilitySupplementaryHeaderViews__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] isAccessibilityElement] ^ 1;
  objc_storeStrong(location, 0);
  return v3;
}

- (id)_accessibilitySupplementaryFooterViews
{
  selfCopy = self;
  v8[1] = a2;
  v8[0] = [MEMORY[0x29EDB8DE8] array];
  v4 = v8[0];
  v6 = [(UIKeyboardDockViewAccessibility *)selfCopy safeValueForKey:@"rightDockItem"];
  v5 = [v6 safeUIViewForKey:@"view"];
  [v4 axSafelyAddObject:?];
  MEMORY[0x29EDC9740](v5);
  *&v2 = MEMORY[0x29EDC9740](v6).n128_u64[0];
  [v8[0] ax_removeObjectsFromArrayUsingBlock:{&__block_literal_global_302, v2}];
  v7 = MEMORY[0x29EDC9748](v8[0]);
  objc_storeStrong(v8, 0);

  return v7;
}

uint64_t __73__UIKeyboardDockViewAccessibility__accessibilitySupplementaryFooterViews__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] isAccessibilityElement] ^ 1;
  objc_storeStrong(location, 0);
  return v3;
}

@end