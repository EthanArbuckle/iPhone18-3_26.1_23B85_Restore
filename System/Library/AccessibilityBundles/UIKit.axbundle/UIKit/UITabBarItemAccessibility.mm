@interface UITabBarItemAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_createViewForTabBar:(id)a3 asProxyView:(BOOL)a4;
- (id)selectedImage;
- (id)unselectedImage;
- (void)setAccessibilityAttributedHint:(id)a3;
- (void)setAccessibilityAttributedLabel:(id)a3;
- (void)setAccessibilityAttributedValue:(id)a3;
- (void)setAccessibilityHint:(id)a3;
- (void)setAccessibilityLabel:(id)a3;
- (void)setAccessibilityValue:(id)a3;
@end

@implementation UITabBarItemAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v7 = location;
  v6 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = @"UITabBarItem";
  v3 = "UIImage";
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  [location[0] validateClass:@"UITabBarItem" hasInstanceVariable:@"_selectedImage" withType:"UIImage"];
  [location[0] validateClass:@"UITabBarItem" hasInstanceVariable:@"_unselectedImage" withType:"UIImage"];
  v5 = "@";
  [location[0] validateClass:@"UITabBarItem" hasInstanceMethod:@"view" withFullSignature:0];
  [location[0] validateClass:v4 hasInstanceMethod:@"_createViewForTabBar: asProxyView:" withFullSignature:{v5, "B", 0}];
  objc_storeStrong(v7, v6);
}

- (id)selectedImage
{
  v18 = self;
  v17 = a2;
  v2 = [(UITabBarItemAccessibility *)self safeValueForKey:@"_selectedImage"];
  v13 = v2 == 0;
  *&v3 = MEMORY[0x29EDC9740](v2).n128_u64[0];
  v16 = v13;
  v14.receiver = v18;
  v14.super_class = UITabBarItemAccessibility;
  v15 = [(UITabBarItemAccessibility *)&v14 selectedImage];
  if (v16)
  {
    v7 = v15;
    v9 = [(UITabBarItemAccessibility *)v18 safeValueForKey:?];
    v8 = [v9 accessibilityIdentification];
    [v7 accessibilitySetIdentification:?];
    MEMORY[0x29EDC9740](v8);
    *&v4 = MEMORY[0x29EDC9740](v9).n128_u64[0];
    v10 = v15;
    v12 = [(UITabBarItemAccessibility *)v18 safeValueForKey:@"_templateImage", v4];
    v11 = [v12 accessibilityIdentifier];
    [v10 setAccessibilityIdentifier:?];
    MEMORY[0x29EDC9740](v11);
    MEMORY[0x29EDC9740](v12);
  }

  v6 = MEMORY[0x29EDC9748](v15);
  objc_storeStrong(&v15, 0);

  return v6;
}

- (id)unselectedImage
{
  v18 = self;
  v17 = a2;
  v2 = [(UITabBarItemAccessibility *)self safeValueForKey:@"_unselectedImage"];
  v13 = v2 == 0;
  *&v3 = MEMORY[0x29EDC9740](v2).n128_u64[0];
  v16 = v13;
  v14.receiver = v18;
  v14.super_class = UITabBarItemAccessibility;
  v15 = [(UITabBarItemAccessibility *)&v14 unselectedImage];
  if (v16)
  {
    v7 = v15;
    v9 = [(UITabBarItemAccessibility *)v18 safeValueForKey:?];
    v8 = [v9 accessibilityIdentification];
    [v7 accessibilitySetIdentification:?];
    MEMORY[0x29EDC9740](v8);
    *&v4 = MEMORY[0x29EDC9740](v9).n128_u64[0];
    v10 = v15;
    v12 = [(UITabBarItemAccessibility *)v18 safeValueForKey:@"_templateImage", v4];
    v11 = [v12 accessibilityIdentifier];
    [v10 setAccessibilityIdentifier:?];
    MEMORY[0x29EDC9740](v11);
    MEMORY[0x29EDC9740](v12);
  }

  v6 = MEMORY[0x29EDC9748](v15);
  objc_storeStrong(&v15, 0);

  return v6;
}

- (void)setAccessibilityLabel:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4.receiver = v6;
  v4.super_class = UITabBarItemAccessibility;
  [(UITabBarItemAccessibility *)&v4 setAccessibilityLabel:location[0]];
  v3 = [(UITabBarItemAccessibility *)v6 safeValueForKey:@"view"];
  [v3 setAccessibilityLabel:location[0]];
  MEMORY[0x29EDC9740](v3);
  objc_storeStrong(location, 0);
}

- (void)setAccessibilityAttributedLabel:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4.receiver = v6;
  v4.super_class = UITabBarItemAccessibility;
  [(UITabBarItemAccessibility *)&v4 setAccessibilityAttributedLabel:location[0]];
  v3 = [(UITabBarItemAccessibility *)v6 safeValueForKey:@"view"];
  [v3 setAccessibilityAttributedLabel:location[0]];
  MEMORY[0x29EDC9740](v3);
  objc_storeStrong(location, 0);
}

- (void)setAccessibilityValue:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4.receiver = v6;
  v4.super_class = UITabBarItemAccessibility;
  [(UITabBarItemAccessibility *)&v4 setAccessibilityValue:location[0]];
  v3 = [(UITabBarItemAccessibility *)v6 safeValueForKey:@"view"];
  [v3 setAccessibilityValue:location[0]];
  MEMORY[0x29EDC9740](v3);
  objc_storeStrong(location, 0);
}

- (void)setAccessibilityAttributedValue:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4.receiver = v6;
  v4.super_class = UITabBarItemAccessibility;
  [(UITabBarItemAccessibility *)&v4 setAccessibilityAttributedValue:location[0]];
  v3 = [(UITabBarItemAccessibility *)v6 safeValueForKey:@"view"];
  [v3 setAccessibilityAttributedValue:location[0]];
  MEMORY[0x29EDC9740](v3);
  objc_storeStrong(location, 0);
}

- (void)setAccessibilityHint:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4.receiver = v6;
  v4.super_class = UITabBarItemAccessibility;
  [(UITabBarItemAccessibility *)&v4 setAccessibilityHint:location[0]];
  v3 = [(UITabBarItemAccessibility *)v6 safeValueForKey:@"view"];
  [v3 setAccessibilityHint:location[0]];
  MEMORY[0x29EDC9740](v3);
  objc_storeStrong(location, 0);
}

- (void)setAccessibilityAttributedHint:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4.receiver = v6;
  v4.super_class = UITabBarItemAccessibility;
  [(UITabBarItemAccessibility *)&v4 setAccessibilityAttributedHint:location[0]];
  v3 = [(UITabBarItemAccessibility *)v6 safeValueForKey:@"view"];
  [v3 setAccessibilityAttributedHint:location[0]];
  MEMORY[0x29EDC9740](v3);
  objc_storeStrong(location, 0);
}

- (id)_createViewForTabBar:(id)a3 asProxyView:(BOOL)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = a4;
  v7.receiver = v11;
  v7.super_class = UITabBarItemAccessibility;
  v8 = [(UITabBarItemAccessibility *)&v7 _createViewForTabBar:location[0] asProxyView:a4];
  AXApplyTabBarItemPropertiesToView(v11, v8);
  v6 = MEMORY[0x29EDC9748](v8);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return v6;
}

@end