@interface UIFocusBehaviorTVAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)showsFocusRingForItem:(id)item;
@end

@implementation UIFocusBehaviorTVAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"_UIFocusBehavior_TV" hasInstanceMethod:@"showsFocusRingForItem:" withFullSignature:{"B", "@", 0}];
  objc_storeStrong(v4, obj);
}

- (BOOL)showsFocusRingForItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v10 = 0;
  objc_opt_class();
  v9 = __UIAccessibilityCastAsClass();
  v8 = MEMORY[0x29EDC9748](v9);
  objc_storeStrong(&v9, 0);
  _accessibilityDisplayFocusIndicatorForFocusEverywhereView = [v8 _accessibilityDisplayFocusIndicatorForFocusEverywhereView];
  *&v3 = MEMORY[0x29EDC9740](v8).n128_u64[0];
  if (_accessibilityDisplayFocusIndicatorForFocusEverywhereView)
  {
    v13 = 1;
  }

  else
  {
    v6.receiver = selfCopy;
    v6.super_class = UIFocusBehaviorTVAccessibility;
    v13 = [(UIFocusBehaviorTVAccessibility *)&v6 showsFocusRingForItem:location[0], v3];
  }

  v7 = 1;
  objc_storeStrong(location, 0);
  return v13 & 1;
}

@end