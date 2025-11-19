@interface _UIEditMenuListViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_reloadMenuAnimated:(BOOL)a3;
@end

@implementation _UIEditMenuListViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"_UIEditMenuListView" hasInstanceMethod:@"_reloadMenuAnimated:" withFullSignature:{"v", "B", 0}];
  objc_storeStrong(v4, obj);
}

- (void)_reloadMenuAnimated:(BOOL)a3
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  v9.receiver = self;
  v9.super_class = _UIEditMenuListViewAccessibility;
  [(_UIEditMenuListViewAccessibility *)&v9 _reloadMenuAnimated:a3];
  v3 = MEMORY[0x29EDCA5F8];
  v4 = -1073741824;
  v5 = 0;
  v6 = __56___UIEditMenuListViewAccessibility__reloadMenuAnimated___block_invoke;
  v7 = &unk_29F30C7C8;
  v8 = MEMORY[0x29EDC9748](v12);
  AXPerformBlockOnMainThreadAfterDelay();
  objc_storeStrong(&v8, 0);
}

@end