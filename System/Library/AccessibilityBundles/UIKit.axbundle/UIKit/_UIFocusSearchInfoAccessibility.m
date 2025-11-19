@interface _UIFocusSearchInfoAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)shouldIncludeFocusItem:(id)a3;
@end

@implementation _UIFocusSearchInfoAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"_UIFocusSearchInfo" hasInstanceMethod:@"shouldIncludeFocusItem:" withFullSignature:{"B", "@", 0}];
  objc_storeStrong(v4, obj);
}

- (BOOL)shouldIncludeFocusItem:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9.receiver = v12;
  v9.super_class = _UIFocusSearchInfoAccessibility;
  v10 = [(_UIFocusSearchInfoAccessibility *)&v9 shouldIncludeFocusItem:location[0]];
  v8 = 0;
  objc_opt_class();
  v7 = __UIAccessibilityCastAsClass();
  v6 = MEMORY[0x29EDC9748](v7);
  objc_storeStrong(&v7, 0);
  v5 = [v6 _accessibilityHandlesRemoteFocusMovement];
  MEMORY[0x29EDC9740](v6);
  if (v5)
  {
    v10 = 1;
  }

  v4 = v10;
  objc_storeStrong(location, 0);
  return v4 & 1;
}

@end