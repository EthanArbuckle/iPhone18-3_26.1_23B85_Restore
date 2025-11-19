@interface UIKBHandwritingStrokeViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGPoint)accessibilityActivationPoint;
- (CGRect)accessibilityFrame;
@end

@implementation UIKBHandwritingStrokeViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"UIHandwritingAssistantView"];
  [location[0] validateClass:@"UIKBKeyplaneView"];
  objc_storeStrong(location, 0);
}

- (CGPoint)accessibilityActivationPoint
{
  v3 = *(MEMORY[0x29EDB90B8] + 8);
  v2 = *MEMORY[0x29EDB90B8];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGRect)accessibilityFrame
{
  v16 = self;
  v15 = a2;
  [(UIKBHandwritingStrokeViewAccessibility *)self bounds];
  v14.origin.x = v2;
  v14.origin.y = v3;
  v14.size.width = v4;
  v14.size.height = v5;
  v13 = [(UIView *)v16 _accessibilityFindAncestor:&__block_literal_global_22 startWithSelf:0];
  if (AXDeviceIsPhoneIdiom())
  {
    v12 = [v13 _accessibilityFindSubviewDescendant:&__block_literal_global_318];
    [v12 frame];
    v14.origin.y = v14.origin.y + v6;
    [v12 frame];
    v14.size.height = v14.size.height - v7;
    objc_storeStrong(&v12, 0);
  }

  v17 = UIAccessibilityConvertFrameToScreenCoordinates(v14, v16);
  objc_storeStrong(&v13, 0);
  y = v17.origin.y;
  x = v17.origin.x;
  height = v17.size.height;
  width = v17.size.width;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

uint64_t __60__UIKBHandwritingStrokeViewAccessibility_accessibilityFrame__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  NSClassFromString(&cfstr_Uikbkeyplanevi.isa);
  isKindOfClass = objc_opt_isKindOfClass();
  objc_storeStrong(location, 0);
  return isKindOfClass & 1;
}

uint64_t __60__UIKBHandwritingStrokeViewAccessibility_accessibilityFrame__block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  NSClassFromString(&cfstr_Uihandwritinga.isa);
  isKindOfClass = objc_opt_isKindOfClass();
  objc_storeStrong(location, 0);
  return isKindOfClass & 1;
}

@end