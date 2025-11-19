@interface _UITextEffectsRemoteViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGPoint)accessibilityActivationPoint;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)accessibilityElements;
- (int64_t)_accessibilitySortPriority;
@end

@implementation _UITextEffectsRemoteViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"_UITextEffectsRemoteView" isKindOfClass:@"_UIRemoteView"];
  v3 = "@";
  [location[0] validateClass:@"UIPeripheralHost" hasInstanceMethod:@"containerRootController" withFullSignature:0];
  [location[0] validateClass:@"UIInputWindowController" hasInstanceMethod:@"inputViewSet" withFullSignature:{v3, 0}];
  [location[0] validateClass:@"UIInputViewSet" hasInstanceMethod:@"inputView" withFullSignature:{v3, 0}];
  [location[0] validateClass:@"UITextEffectsWindow" hasInstanceVariable:@"_activeEffectsCount" withType:"Q"];
  objc_storeStrong(v5, obj);
}

- (CGPoint)accessibilityActivationPoint
{
  v10[2] = self;
  v10[1] = a2;
  v9 = [MEMORY[0x29EDC7BB8] sharedInstance];
  v8 = [v9 safeValueForKey:@"containerRootController"];
  v7 = [v8 safeValueForKey:@"inputViewSet"];
  v10[0] = [v7 safeUIViewForKey:@"inputView"];
  MEMORY[0x29EDC9740](v7);
  MEMORY[0x29EDC9740](v8);
  *&v2 = MEMORY[0x29EDC9740](v9).n128_u64[0];
  [v10[0] bounds];
  UIAccessibilityConvertFrameToScreenCoordinates(v14, v10[0]);
  AX_CGRectGetCenter();
  v11 = v3;
  v12 = v4;
  objc_storeStrong(v10, 0);
  v5 = v11;
  v6 = v12;
  result.y = v6;
  result.x = v5;
  return result;
}

- (int64_t)_accessibilitySortPriority
{
  v10 = self;
  location[1] = a2;
  v8 = [(_UITextEffectsRemoteViewAccessibility *)self window];
  v7 = AXUIKeyboardWindow();
  MEMORY[0x29EDC9740](v7);
  *&v2 = MEMORY[0x29EDC9740](v8).n128_u64[0];
  if (v8 != v7)
  {
    return -1;
  }

  location[0] = [(_UITextEffectsRemoteViewAccessibility *)v10 accessibilityContainer];
  while (location[0])
  {
    v3 = [location[0] _accessibilitySortPriority];
    if (v3 == *MEMORY[0x29EDC7418])
    {
      [location[0] _accessibilitySetSortPriority:-2];
    }

    v4 = [location[0] accessibilityContainer];
    v5 = location[0];
    location[0] = v4;
    MEMORY[0x29EDC9740](v5);
  }

  v11 = -2;
  objc_storeStrong(location, 0);
  return v11;
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  v6 = a3;
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  objc_storeStrong(location, 0);
  return 0;
}

- (id)accessibilityElements
{
  v10 = self;
  v9[1] = a2;
  v9[0] = [(_UITextEffectsRemoteViewAccessibility *)self window];
  v4 = [v9[0] windowScene];
  v8 = [v4 safeValueForKey:@"_FBSScene"];
  location = [v8 identifier];
  if (AXUIKeyboardIsOOP() & 1) != 0 && ((axIsAutomaticArbiterClientKeyboardActive() & 1) == 0 && (axKeyboardInSeparateProcessAndScene(v9[0]) & 1) != 0 || ([location isEqualToString:*MEMORY[0x29EDBD670]]))
  {
    v11 = 0;
    v6 = 1;
  }

  else
  {
    v5.receiver = v10;
    v5.super_class = _UITextEffectsRemoteViewAccessibility;
    v11 = [(_UITextEffectsRemoteViewAccessibility *)&v5 accessibilityElements];
    v6 = 1;
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(v9, 0);
  v2 = v11;

  return v2;
}

@end