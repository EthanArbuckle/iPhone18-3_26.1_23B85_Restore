@interface UIRemoteKeyboardWindowAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGPoint)accessibilityActivationPoint;
@end

@implementation UIRemoteKeyboardWindowAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"UIInputWindowController" hasInstanceMethod:@"visibleInputViewFrame" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  objc_storeStrong(v4, obj);
}

- (CGPoint)accessibilityActivationPoint
{
  v18[2] = self;
  v18[1] = a2;
  v17 = 0;
  v16 = __UIAccessibilitySafeClass();
  v15 = MEMORY[0x29EDC9748](v16);
  objc_storeStrong(&v16, 0);
  v18[0] = v15;
  memset(&v14, 0, sizeof(v14));
  v13 = 0;
  v10 = [v15 rootViewController];
  v12 = __UIAccessibilitySafeClass();
  MEMORY[0x29EDC9740](v10);
  v11 = MEMORY[0x29EDC9748](v12);
  objc_storeStrong(&v12, 0);
  [v11 safeCGRectForKey:@"visibleInputViewFrame"];
  v14.origin.x = v2;
  v14.origin.y = v3;
  v14.size.width = v4;
  v14.size.height = v5;
  MEMORY[0x29EDC9740](v11);
  UIAccessibilityConvertFrameToScreenCoordinates(v14, v18[0]);
  AX_CGRectGetCenter();
  v19 = v6;
  v20 = v7;
  objc_storeStrong(v18, 0);
  v8 = v19;
  v9 = v20;
  result.y = v9;
  result.x = v8;
  return result;
}

@end