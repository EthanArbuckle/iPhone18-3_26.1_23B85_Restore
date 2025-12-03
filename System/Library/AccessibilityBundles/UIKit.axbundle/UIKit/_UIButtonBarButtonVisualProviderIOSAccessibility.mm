@interface _UIButtonBarButtonVisualProviderIOSAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)configureButton:(id)button fromBarButtonItem:(id)item;
@end

@implementation _UIButtonBarButtonVisualProviderIOSAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"_UIButtonBarButtonVisualProviderIOS" hasInstanceMethod:@"configureButton:fromBarButtonItem:" withFullSignature:{"v", "@", "@", 0}];
  objc_storeStrong(v4, obj);
}

- (void)configureButton:(id)button fromBarButtonItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  v9 = 0;
  objc_storeStrong(&v9, item);
  v8.receiver = selfCopy;
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