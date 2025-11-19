@interface UIDropShadowViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityIsScrollAncestor;
- (BOOL)accessibilityScrollDownPage;
- (BOOL)accessibilityScrollDownPageSupported;
- (BOOL)accessibilityScrollToVisibleWithChild:(id)a3;
- (BOOL)accessibilityScrollUpPage;
- (BOOL)accessibilityScrollUpPageSupported;
- (id)_axSheetPresentationController;
@end

@implementation UIDropShadowViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"UIDropShadowView" hasInstanceMethod:@"_delegate" withFullSignature:{"@", 0}];
  objc_storeStrong(v4, obj);
}

- (BOOL)accessibilityScrollToVisibleWithChild:(id)a3
{
  v37 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v35 = [(UIDropShadowViewAccessibility *)v37 _axSheetPresentationController];
  if (!v35)
  {
    goto LABEL_7;
  }

  memset(&v34, 0, sizeof(v34));
  memset(&v33[1], 0, 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = 0;
    objc_opt_class();
    v31 = __UIAccessibilityCastAsClass();
    v30 = MEMORY[0x29EDC9748](v31);
    objc_storeStrong(&v31, 0);
    v33[0] = v30;
    v29 = [location[0] _accessibilityParentView];
    [v33[0] bounds];
    v28.origin.x = v3;
    v28.origin.y = v4;
    v28.size.width = v5;
    v28.size.height = v6;
    *&v33[1] = v28;
    v24 = v33[0];
    [v29 bounds];
    [v24 convertRect:v29 fromView:{v7, v8, v9, v10}];
    v27.origin.x = v11;
    v27.origin.y = v12;
    v27.size.width = v13;
    v27.size.height = v14;
    v34 = v27;
    objc_storeStrong(&v29, 0);
    objc_storeStrong(v33, 0);
  }

  else
  {
    [(UIDropShadowViewAccessibility *)v37 accessibilityFrame];
    v26.origin.x = v15;
    v26.origin.y = v16;
    v26.size.width = v17;
    v26.size.height = v18;
    *&v33[1] = v26;
    [location[0] accessibilityFrame];
    v25.origin.x = v19;
    v25.origin.y = v20;
    v25.size.width = v21;
    v25.size.height = v22;
    v34 = v25;
  }

  CGRectIntersection(*&v33[1], v34);
  if (AX_CGRectAlmostEqualToRect())
  {
LABEL_7:
    v38 = 0;
  }

  else
  {
    v38 = [v35 _accessibilityExpandSheet] & 1;
  }

  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
  return v38 & 1;
}

- (BOOL)_accessibilityIsScrollAncestor
{
  v6[2] = self;
  v6[1] = a2;
  v6[0] = [(UIDropShadowViewAccessibility *)self _axSheetPresentationController];
  v2 = objc_opt_class();
  v4 = NSStringFromClass(v2);
  v5 = ![(NSString *)v4 isEqualToString:@"_UIRootPresentationController"];
  MEMORY[0x29EDC9740](v4);
  objc_storeStrong(v6, 0);
  return v5;
}

- (BOOL)accessibilityScrollUpPageSupported
{
  if (AXRequestingClient() == 5)
  {
    return 0;
  }

  v4 = [(UIDropShadowViewAccessibility *)self _axSheetPresentationController];
  v7 = 0;
  v5 = 0;
  if ([v4 _accessibilityIsInverted])
  {
    v8 = [(UIDropShadowViewAccessibility *)self _axSheetPresentationController];
    v7 = 1;
    v3 = [v8 _accessibilityCanExpandSheet];
  }

  else
  {
    v6 = [(UIDropShadowViewAccessibility *)self _axSheetPresentationController];
    v5 = 1;
    v3 = [v6 _accessibilityCanCollapseSheet];
  }

  v10 = v3 != 0;
  if (v5)
  {
    MEMORY[0x29EDC9740](v6);
  }

  if (v7)
  {
    MEMORY[0x29EDC9740](v8);
  }

  MEMORY[0x29EDC9740](v4);
  return v10;
}

- (BOOL)accessibilityScrollUpPage
{
  v4 = [(UIDropShadowViewAccessibility *)self _axSheetPresentationController];
  v7 = 0;
  v5 = 0;
  if ([v4 _accessibilityIsInverted])
  {
    v8 = [(UIDropShadowViewAccessibility *)self _axSheetPresentationController];
    v7 = 1;
    v3 = [v8 _accessibilityExpandSheet];
  }

  else
  {
    v6 = [(UIDropShadowViewAccessibility *)self _axSheetPresentationController];
    v5 = 1;
    v3 = [v6 _accessibilityCollapseSheet];
  }

  if (v5)
  {
    MEMORY[0x29EDC9740](v6);
  }

  if (v7)
  {
    MEMORY[0x29EDC9740](v8);
  }

  MEMORY[0x29EDC9740](v4);
  return v3 != 0;
}

- (BOOL)accessibilityScrollDownPageSupported
{
  v4 = [(UIDropShadowViewAccessibility *)self _axSheetPresentationController];
  v7 = 0;
  v5 = 0;
  if ([v4 _accessibilityIsInverted])
  {
    v8 = [(UIDropShadowViewAccessibility *)self _axSheetPresentationController];
    v7 = 1;
    v3 = [v8 _accessibilityCanCollapseSheet];
  }

  else
  {
    v6 = [(UIDropShadowViewAccessibility *)self _axSheetPresentationController];
    v5 = 1;
    v3 = [v6 _accessibilityCanExpandSheet];
  }

  if (v5)
  {
    MEMORY[0x29EDC9740](v6);
  }

  if (v7)
  {
    MEMORY[0x29EDC9740](v8);
  }

  MEMORY[0x29EDC9740](v4);
  return v3 != 0;
}

- (BOOL)accessibilityScrollDownPage
{
  v4 = [(UIDropShadowViewAccessibility *)self _axSheetPresentationController];
  v7 = 0;
  v5 = 0;
  if ([v4 _accessibilityIsInverted])
  {
    v8 = [(UIDropShadowViewAccessibility *)self _axSheetPresentationController];
    v7 = 1;
    v3 = [v8 _accessibilityCollapseSheet];
  }

  else
  {
    v6 = [(UIDropShadowViewAccessibility *)self _axSheetPresentationController];
    v5 = 1;
    v3 = [v6 _accessibilityExpandSheet];
  }

  if (v5)
  {
    MEMORY[0x29EDC9740](v6);
  }

  if (v7)
  {
    MEMORY[0x29EDC9740](v8);
  }

  MEMORY[0x29EDC9740](v4);
  return v3 != 0;
}

- (id)_axSheetPresentationController
{
  v7[2] = self;
  v7[1] = a2;
  v7[0] = [(UIDropShadowViewAccessibility *)self safeValueForKey:@"_delegate"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = 0;
    objc_opt_class();
    v5 = __UIAccessibilityCastAsSafeCategory();
    v4 = MEMORY[0x29EDC9748](v5);
    objc_storeStrong(&v5, 0);
    v8 = v4;
  }

  else
  {
    v8 = 0;
  }

  objc_storeStrong(v7, 0);
  v2 = v8;

  return v2;
}

@end