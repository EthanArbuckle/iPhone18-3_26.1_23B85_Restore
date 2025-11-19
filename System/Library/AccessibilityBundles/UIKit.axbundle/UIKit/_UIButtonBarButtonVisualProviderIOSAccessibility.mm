@interface _UIButtonBarButtonVisualProviderIOSAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)configureButton:(id)a3 fromBarButtonItem:(id)a4;
@end

@implementation _UIButtonBarButtonVisualProviderIOSAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"_UIButtonBarButtonVisualProviderIOS" hasInstanceMethod:@"configureButton:fromBarButtonItem:" withFullSignature:{"v", "@", "@", 0}];
  objc_storeStrong(v4, obj);
}

- (void)configureButton:(id)a3 fromBarButtonItem:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8.receiver = v11;
  v8.super_class = _UIButtonBarButtonVisualProviderIOSAccessibility;
  [(_UIButtonBarButtonVisualProviderIOSAccessibility *)&v8 configureButton:location[0] fromBarButtonItem:v9];
  v7 = 0;
  objc_opt_class();
  v6 = __UIAccessibilityCastAsSafeCategory();
  v5 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  [(UIBarButtonItemAccessibility *)v5 _accessibilityAddIdForView:?];
  MEMORY[0x29EDC9740](v5);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

@end