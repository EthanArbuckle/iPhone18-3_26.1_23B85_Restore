@interface UIInterfaceActionRepresentationViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_showsFocusForFocusedView:(id)a3;
- (id)accessibilityPath;
@end

@implementation UIInterfaceActionRepresentationViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = "@";
  v3 = @"UIInterfaceActionRepresentationView";
  [location[0] validateClass:"@" hasInstanceMethod:0 withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"backgroundHighlightView" withFullSignature:{v4, 0}];
  objc_storeStrong(v6, obj);
}

- (id)accessibilityPath
{
  v11 = self;
  v10 = a2;
  v5 = [(UIInterfaceActionRepresentationViewAccessibility *)self safeValueForKey:@"backgroundHighlightView"];
  v6 = [v5 accessibilityPath];
  v7 = 0;
  if (v6)
  {
    v2 = MEMORY[0x29EDC9748](v6);
  }

  else
  {
    v9.receiver = v11;
    v9.super_class = UIInterfaceActionRepresentationViewAccessibility;
    v8 = [(UIInterfaceActionRepresentationViewAccessibility *)&v9 accessibilityPath];
    v7 = 1;
    v2 = MEMORY[0x29EDC9748](v8);
  }

  v12 = v2;
  if (v7)
  {
    MEMORY[0x29EDC9740](v8);
  }

  MEMORY[0x29EDC9740](v6);
  MEMORY[0x29EDC9740](v5);
  v3 = v12;

  return v3;
}

- (BOOL)_showsFocusForFocusedView:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5.receiver = v8;
  v5.super_class = UIInterfaceActionRepresentationViewAccessibility;
  v6 = [(UIInterfaceActionRepresentationViewAccessibility *)&v5 _showsFocusForFocusedView:location[0]];
  if (([(UIInterfaceActionRepresentationViewAccessibility *)v8 _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    v6 = 0;
  }

  v4 = v6;
  objc_storeStrong(location, 0);
  return v4 & 1;
}

@end