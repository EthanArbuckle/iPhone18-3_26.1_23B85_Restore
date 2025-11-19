@interface _UINavigationBarVisualProviderModernIOSAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)layoutSubviews;
@end

@implementation _UINavigationBarVisualProviderModernIOSAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"_UINavigationBarVisualProviderModernIOS";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  v4 = @"_UINavigationBarVisualProvider";
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  [location[0] validateClass:v3 isKindOfClass:v4];
  [location[0] validateClass:@"UINavigationBarAccessibility" hasInstanceMethod:@"_accessibilityNavBarElements" withFullSignature:{"@", 0}];
  objc_storeStrong(v6, obj);
}

- (void)layoutSubviews
{
  v13 = self;
  v12[1] = a2;
  v12[0] = [(_UINavigationBarVisualProviderModernIOSAccessibility *)self safeValueForKey:@"_navigationBar"];
  v5 = [v12[0] safeArrayForKey:@"_accessibilityNavBarElements"];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (v5)
  {
    v4 = [v12[0] accessibilityElements];
    v9 = [v4 copy];
    *&v3 = MEMORY[0x29EDC9740](v4).n128_u64[0];
    v8.receiver = v13;
    v8.super_class = _UINavigationBarVisualProviderModernIOSAccessibility;
    [(_UINavigationBarVisualProviderModernIOSAccessibility *)&v8 layoutSubviews];
    v6 = MEMORY[0x29EDC9748](v12[0]);
    v7 = MEMORY[0x29EDC9748](v9);
    AXPerformBlockAsynchronouslyOnMainThread();
    objc_storeStrong(&v7, 0);
    objc_storeStrong(&v6, 0);
    objc_storeStrong(&v9, 0);
    v10 = 0;
  }

  else
  {
    v11.receiver = v13;
    v11.super_class = _UINavigationBarVisualProviderModernIOSAccessibility;
    [(_UINavigationBarVisualProviderModernIOSAccessibility *)&v11 layoutSubviews];
    v10 = 1;
  }

  objc_storeStrong(v12, 0);
}

@end