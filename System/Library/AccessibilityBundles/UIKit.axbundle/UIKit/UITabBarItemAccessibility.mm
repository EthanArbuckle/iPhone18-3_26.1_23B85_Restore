@interface UITabBarItemAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_createViewForTabBar:(id)bar asProxyView:(BOOL)view;
- (id)selectedImage;
- (id)unselectedImage;
- (void)setAccessibilityAttributedHint:(id)hint;
- (void)setAccessibilityAttributedLabel:(id)label;
- (void)setAccessibilityAttributedValue:(id)value;
- (void)setAccessibilityHint:(id)hint;
- (void)setAccessibilityLabel:(id)label;
- (void)setAccessibilityValue:(id)value;
@end

@implementation UITabBarItemAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v7 = location;
  v6 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
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
  selfCopy = self;
  v17 = a2;
  v2 = [(UITabBarItemAccessibility *)self safeValueForKey:@"_selectedImage"];
  v13 = v2 == 0;
  *&v3 = MEMORY[0x29EDC9740](v2).n128_u64[0];
  v16 = v13;
  v14.receiver = selfCopy;
  v14.super_class = UITabBarItemAccessibility;
  selectedImage = [(UITabBarItemAccessibility *)&v14 selectedImage];
  if (v16)
  {
    v7 = selectedImage;
    v9 = [(UITabBarItemAccessibility *)selfCopy safeValueForKey:?];
    accessibilityIdentification = [v9 accessibilityIdentification];
    [v7 accessibilitySetIdentification:?];
    MEMORY[0x29EDC9740](accessibilityIdentification);
    *&v4 = MEMORY[0x29EDC9740](v9).n128_u64[0];
    v10 = selectedImage;
    v12 = [(UITabBarItemAccessibility *)selfCopy safeValueForKey:@"_templateImage", v4];
    accessibilityIdentifier = [v12 accessibilityIdentifier];
    [v10 setAccessibilityIdentifier:?];
    MEMORY[0x29EDC9740](accessibilityIdentifier);
    MEMORY[0x29EDC9740](v12);
  }

  v6 = MEMORY[0x29EDC9748](selectedImage);
  objc_storeStrong(&selectedImage, 0);

  return v6;
}

- (id)unselectedImage
{
  selfCopy = self;
  v17 = a2;
  v2 = [(UITabBarItemAccessibility *)self safeValueForKey:@"_unselectedImage"];
  v13 = v2 == 0;
  *&v3 = MEMORY[0x29EDC9740](v2).n128_u64[0];
  v16 = v13;
  v14.receiver = selfCopy;
  v14.super_class = UITabBarItemAccessibility;
  unselectedImage = [(UITabBarItemAccessibility *)&v14 unselectedImage];
  if (v16)
  {
    v7 = unselectedImage;
    v9 = [(UITabBarItemAccessibility *)selfCopy safeValueForKey:?];
    accessibilityIdentification = [v9 accessibilityIdentification];
    [v7 accessibilitySetIdentification:?];
    MEMORY[0x29EDC9740](accessibilityIdentification);
    *&v4 = MEMORY[0x29EDC9740](v9).n128_u64[0];
    v10 = unselectedImage;
    v12 = [(UITabBarItemAccessibility *)selfCopy safeValueForKey:@"_templateImage", v4];
    accessibilityIdentifier = [v12 accessibilityIdentifier];
    [v10 setAccessibilityIdentifier:?];
    MEMORY[0x29EDC9740](accessibilityIdentifier);
    MEMORY[0x29EDC9740](v12);
  }

  v6 = MEMORY[0x29EDC9748](unselectedImage);
  objc_storeStrong(&unselectedImage, 0);

  return v6;
}

- (void)setAccessibilityLabel:(id)label
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, label);
  v4.receiver = selfCopy;
  v4.super_class = UITabBarItemAccessibility;
  [(UITabBarItemAccessibility *)&v4 setAccessibilityLabel:location[0]];
  v3 = [(UITabBarItemAccessibility *)selfCopy safeValueForKey:@"view"];
  [v3 setAccessibilityLabel:location[0]];
  MEMORY[0x29EDC9740](v3);
  objc_storeStrong(location, 0);
}

- (void)setAccessibilityAttributedLabel:(id)label
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, label);
  v4.receiver = selfCopy;
  v4.super_class = UITabBarItemAccessibility;
  [(UITabBarItemAccessibility *)&v4 setAccessibilityAttributedLabel:location[0]];
  v3 = [(UITabBarItemAccessibility *)selfCopy safeValueForKey:@"view"];
  [v3 setAccessibilityAttributedLabel:location[0]];
  MEMORY[0x29EDC9740](v3);
  objc_storeStrong(location, 0);
}

- (void)setAccessibilityValue:(id)value
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, value);
  v4.receiver = selfCopy;
  v4.super_class = UITabBarItemAccessibility;
  [(UITabBarItemAccessibility *)&v4 setAccessibilityValue:location[0]];
  v3 = [(UITabBarItemAccessibility *)selfCopy safeValueForKey:@"view"];
  [v3 setAccessibilityValue:location[0]];
  MEMORY[0x29EDC9740](v3);
  objc_storeStrong(location, 0);
}

- (void)setAccessibilityAttributedValue:(id)value
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, value);
  v4.receiver = selfCopy;
  v4.super_class = UITabBarItemAccessibility;
  [(UITabBarItemAccessibility *)&v4 setAccessibilityAttributedValue:location[0]];
  v3 = [(UITabBarItemAccessibility *)selfCopy safeValueForKey:@"view"];
  [v3 setAccessibilityAttributedValue:location[0]];
  MEMORY[0x29EDC9740](v3);
  objc_storeStrong(location, 0);
}

- (void)setAccessibilityHint:(id)hint
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, hint);
  v4.receiver = selfCopy;
  v4.super_class = UITabBarItemAccessibility;
  [(UITabBarItemAccessibility *)&v4 setAccessibilityHint:location[0]];
  v3 = [(UITabBarItemAccessibility *)selfCopy safeValueForKey:@"view"];
  [v3 setAccessibilityHint:location[0]];
  MEMORY[0x29EDC9740](v3);
  objc_storeStrong(location, 0);
}

- (void)setAccessibilityAttributedHint:(id)hint
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, hint);
  v4.receiver = selfCopy;
  v4.super_class = UITabBarItemAccessibility;
  [(UITabBarItemAccessibility *)&v4 setAccessibilityAttributedHint:location[0]];
  v3 = [(UITabBarItemAccessibility *)selfCopy safeValueForKey:@"view"];
  [v3 setAccessibilityAttributedHint:location[0]];
  MEMORY[0x29EDC9740](v3);
  objc_storeStrong(location, 0);
}

- (id)_createViewForTabBar:(id)bar asProxyView:(BOOL)view
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, bar);
  viewCopy = view;
  v7.receiver = selfCopy;
  v7.super_class = UITabBarItemAccessibility;
  v8 = [(UITabBarItemAccessibility *)&v7 _createViewForTabBar:location[0] asProxyView:view];
  AXApplyTabBarItemPropertiesToView(selfCopy, v8);
  v6 = MEMORY[0x29EDC9748](v8);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return v6;
}

@end