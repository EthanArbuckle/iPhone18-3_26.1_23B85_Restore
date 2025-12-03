@interface _UIEditMenuListViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_reloadMenuAnimated:(BOOL)animated;
@end

@implementation _UIEditMenuListViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"_UIEditMenuListView" hasInstanceMethod:@"_reloadMenuAnimated:" withFullSignature:{"v", "B", 0}];
  objc_storeStrong(v4, obj);
}

- (void)_reloadMenuAnimated:(BOOL)animated
{
  selfCopy = self;
  v11 = a2;
  animatedCopy = animated;
  v9.receiver = self;
  v9.super_class = _UIEditMenuListViewAccessibility;
  [(_UIEditMenuListViewAccessibility *)&v9 _reloadMenuAnimated:animated];
  v3 = MEMORY[0x29EDCA5F8];
  v4 = -1073741824;
  v5 = 0;
  v6 = __56___UIEditMenuListViewAccessibility__reloadMenuAnimated___block_invoke;
  v7 = &unk_29F30C7C8;
  v8 = MEMORY[0x29EDC9748](selfCopy);
  AXPerformBlockOnMainThreadAfterDelay();
  objc_storeStrong(&v8, 0);
}

@end