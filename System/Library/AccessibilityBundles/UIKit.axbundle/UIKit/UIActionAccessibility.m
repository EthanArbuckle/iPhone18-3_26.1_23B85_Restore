@interface UIActionAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (UIActionAccessibility)initWithAction:(id)a3;
@end

@implementation UIActionAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"UIAction" hasInstanceMethod:@"initWithAction:" withFullSignature:{"@", 0}];
  objc_storeStrong(v4, obj);
}

- (UIActionAccessibility)initWithAction:(id)a3
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v21;
  v21 = 0;
  v18.receiver = v3;
  v18.super_class = UIActionAccessibility;
  v21 = [(UIActionAccessibility *)&v18 initWithAction:location[0]];
  v19 = MEMORY[0x29EDC9748](v21);
  v9 = v19;
  v10 = [location[0] accessibilityLabel];
  [v9 setAccessibilityLabel:?];
  *&v4 = MEMORY[0x29EDC9740](v10).n128_u64[0];
  v11 = v19;
  v12 = [location[0] accessibilityValue];
  [v11 setAccessibilityValue:?];
  *&v5 = MEMORY[0x29EDC9740](v12).n128_u64[0];
  v13 = v19;
  v14 = [location[0] accessibilityHint];
  [v13 setAccessibilityHint:?];
  *&v6 = MEMORY[0x29EDC9740](v14).n128_u64[0];
  [v19 setAccessibilityTraits:{objc_msgSend(location[0], "accessibilityTraits", v6)}];
  v15 = v19;
  v16 = [location[0] accessibilityUserInputLabels];
  [v15 setAccessibilityUserInputLabels:?];
  *&v7 = MEMORY[0x29EDC9740](v16).n128_u64[0];
  [v19 setAccessibilityElementsHidden:{objc_msgSend(location[0], "accessibilityElementsHidden", v7)}];
  v17 = MEMORY[0x29EDC9748](v19);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v21, 0);
  return v17;
}

@end