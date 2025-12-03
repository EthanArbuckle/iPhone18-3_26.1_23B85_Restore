@interface UIActionAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (UIActionAccessibility)initWithAction:(id)action;
@end

@implementation UIActionAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"UIAction" hasInstanceMethod:@"initWithAction:" withFullSignature:{"@", 0}];
  objc_storeStrong(v4, obj);
}

- (UIActionAccessibility)initWithAction:(id)action
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, action);
  v3 = selfCopy;
  selfCopy = 0;
  v18.receiver = v3;
  v18.super_class = UIActionAccessibility;
  selfCopy = [(UIActionAccessibility *)&v18 initWithAction:location[0]];
  v19 = MEMORY[0x29EDC9748](selfCopy);
  v9 = v19;
  accessibilityLabel = [location[0] accessibilityLabel];
  [v9 setAccessibilityLabel:?];
  *&v4 = MEMORY[0x29EDC9740](accessibilityLabel).n128_u64[0];
  v11 = v19;
  accessibilityValue = [location[0] accessibilityValue];
  [v11 setAccessibilityValue:?];
  *&v5 = MEMORY[0x29EDC9740](accessibilityValue).n128_u64[0];
  v13 = v19;
  accessibilityHint = [location[0] accessibilityHint];
  [v13 setAccessibilityHint:?];
  *&v6 = MEMORY[0x29EDC9740](accessibilityHint).n128_u64[0];
  [v19 setAccessibilityTraits:{objc_msgSend(location[0], "accessibilityTraits", v6)}];
  v15 = v19;
  accessibilityUserInputLabels = [location[0] accessibilityUserInputLabels];
  [v15 setAccessibilityUserInputLabels:?];
  *&v7 = MEMORY[0x29EDC9740](accessibilityUserInputLabels).n128_u64[0];
  [v19 setAccessibilityElementsHidden:{objc_msgSend(location[0], "accessibilityElementsHidden", v7)}];
  v17 = MEMORY[0x29EDC9748](v19);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v17;
}

@end