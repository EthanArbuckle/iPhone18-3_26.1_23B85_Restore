@interface _UIFloatingContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGRect)accessibilityFrame;
- (id)accessibilityPath;
@end

@implementation _UIFloatingContentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"_UIFloatingContentView" hasInstanceMethod:@"highlightView" withFullSignature:{"@", 0}];
  objc_storeStrong(v4, obj);
}

- (CGRect)accessibilityFrame
{
  selfCopy = self;
  v14[1] = a2;
  v13 = 0;
  objc_opt_class();
  v12 = __UIAccessibilityCastAsClass();
  v11 = MEMORY[0x29EDC9748](v12);
  objc_storeStrong(&v12, 0);
  v14[0] = v11;
  v10 = [(_UIFloatingContentViewAccessibility *)selfCopy safeValueForKey:@"scaleFactor"];
  [v10 floatValue];
  MEMORY[0x29EDC9740](v10);
  [v14[0] bounds];
  UIAccessibilityFrameForBounds();
  v16 = v2;
  v17 = v3;
  v18 = v4;
  v19 = v5;
  objc_storeStrong(v14, 0);
  v6 = v16;
  v7 = v17;
  v8 = v18;
  v9 = v19;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (id)accessibilityPath
{
  v3 = [(_UIFloatingContentViewAccessibility *)self safeValueForKey:@"highlightView"];
  accessibilityPath = [v3 accessibilityPath];
  MEMORY[0x29EDC9740](v3);

  return accessibilityPath;
}

@end