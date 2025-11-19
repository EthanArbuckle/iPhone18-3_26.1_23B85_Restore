@interface UIFocusGuideAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGRect)accessibilityFrame;
@end

@implementation UIFocusGuideAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (CGRect)accessibilityFrame
{
  v18[2] = self;
  v18[1] = a2;
  v17 = 0;
  objc_opt_class();
  v16 = __UIAccessibilityCastAsClass();
  v15 = MEMORY[0x29EDC9748](v16);
  objc_storeStrong(&v16, 0);
  v18[0] = v15;
  v14 = [v15 owningView];
  [v18[0] layoutFrame];
  [v14 convertRect:0 toView:{v2, v3, v4, v5}];
  v19 = v6;
  v20 = v7;
  v21 = v8;
  v22 = v9;
  MEMORY[0x29EDC9740](v14);
  objc_storeStrong(v18, 0);
  v10 = v19;
  v11 = v20;
  v12 = v21;
  v13 = v22;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

@end