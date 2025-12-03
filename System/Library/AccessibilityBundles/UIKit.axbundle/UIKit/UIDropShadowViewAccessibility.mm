@interface UIDropShadowViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityIsScrollAncestor;
- (BOOL)accessibilityScrollDownPage;
- (BOOL)accessibilityScrollDownPageSupported;
- (BOOL)accessibilityScrollToVisibleWithChild:(id)child;
- (BOOL)accessibilityScrollUpPage;
- (BOOL)accessibilityScrollUpPageSupported;
- (id)_axSheetPresentationController;
@end

@implementation UIDropShadowViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"UIDropShadowView" hasInstanceMethod:@"_delegate" withFullSignature:{"@", 0}];
  objc_storeStrong(v4, obj);
}

- (BOOL)accessibilityScrollToVisibleWithChild:(id)child
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, child);
  _axSheetPresentationController = [(UIDropShadowViewAccessibility *)selfCopy _axSheetPresentationController];
  if (!_axSheetPresentationController)
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
    _accessibilityParentView = [location[0] _accessibilityParentView];
    [v33[0] bounds];
    v28.origin.x = v3;
    v28.origin.y = v4;
    v28.size.width = v5;
    v28.size.height = v6;
    *&v33[1] = v28;
    v24 = v33[0];
    [_accessibilityParentView bounds];
    [v24 convertRect:_accessibilityParentView fromView:{v7, v8, v9, v10}];
    v27.origin.x = v11;
    v27.origin.y = v12;
    v27.size.width = v13;
    v27.size.height = v14;
    v34 = v27;
    objc_storeStrong(&_accessibilityParentView, 0);
    objc_storeStrong(v33, 0);
  }

  else
  {
    [(UIDropShadowViewAccessibility *)selfCopy accessibilityFrame];
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
    v38 = [_axSheetPresentationController _accessibilityExpandSheet] & 1;
  }

  objc_storeStrong(&_axSheetPresentationController, 0);
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

  _axSheetPresentationController = [(UIDropShadowViewAccessibility *)self _axSheetPresentationController];
  v7 = 0;
  v5 = 0;
  if ([_axSheetPresentationController _accessibilityIsInverted])
  {
    _axSheetPresentationController2 = [(UIDropShadowViewAccessibility *)self _axSheetPresentationController];
    v7 = 1;
    _accessibilityCanExpandSheet = [_axSheetPresentationController2 _accessibilityCanExpandSheet];
  }

  else
  {
    _axSheetPresentationController3 = [(UIDropShadowViewAccessibility *)self _axSheetPresentationController];
    v5 = 1;
    _accessibilityCanExpandSheet = [_axSheetPresentationController3 _accessibilityCanCollapseSheet];
  }

  v10 = _accessibilityCanExpandSheet != 0;
  if (v5)
  {
    MEMORY[0x29EDC9740](_axSheetPresentationController3);
  }

  if (v7)
  {
    MEMORY[0x29EDC9740](_axSheetPresentationController2);
  }

  MEMORY[0x29EDC9740](_axSheetPresentationController);
  return v10;
}

- (BOOL)accessibilityScrollUpPage
{
  _axSheetPresentationController = [(UIDropShadowViewAccessibility *)self _axSheetPresentationController];
  v7 = 0;
  v5 = 0;
  if ([_axSheetPresentationController _accessibilityIsInverted])
  {
    _axSheetPresentationController2 = [(UIDropShadowViewAccessibility *)self _axSheetPresentationController];
    v7 = 1;
    _accessibilityExpandSheet = [_axSheetPresentationController2 _accessibilityExpandSheet];
  }

  else
  {
    _axSheetPresentationController3 = [(UIDropShadowViewAccessibility *)self _axSheetPresentationController];
    v5 = 1;
    _accessibilityExpandSheet = [_axSheetPresentationController3 _accessibilityCollapseSheet];
  }

  if (v5)
  {
    MEMORY[0x29EDC9740](_axSheetPresentationController3);
  }

  if (v7)
  {
    MEMORY[0x29EDC9740](_axSheetPresentationController2);
  }

  MEMORY[0x29EDC9740](_axSheetPresentationController);
  return _accessibilityExpandSheet != 0;
}

- (BOOL)accessibilityScrollDownPageSupported
{
  _axSheetPresentationController = [(UIDropShadowViewAccessibility *)self _axSheetPresentationController];
  v7 = 0;
  v5 = 0;
  if ([_axSheetPresentationController _accessibilityIsInverted])
  {
    _axSheetPresentationController2 = [(UIDropShadowViewAccessibility *)self _axSheetPresentationController];
    v7 = 1;
    _accessibilityCanCollapseSheet = [_axSheetPresentationController2 _accessibilityCanCollapseSheet];
  }

  else
  {
    _axSheetPresentationController3 = [(UIDropShadowViewAccessibility *)self _axSheetPresentationController];
    v5 = 1;
    _accessibilityCanCollapseSheet = [_axSheetPresentationController3 _accessibilityCanExpandSheet];
  }

  if (v5)
  {
    MEMORY[0x29EDC9740](_axSheetPresentationController3);
  }

  if (v7)
  {
    MEMORY[0x29EDC9740](_axSheetPresentationController2);
  }

  MEMORY[0x29EDC9740](_axSheetPresentationController);
  return _accessibilityCanCollapseSheet != 0;
}

- (BOOL)accessibilityScrollDownPage
{
  _axSheetPresentationController = [(UIDropShadowViewAccessibility *)self _axSheetPresentationController];
  v7 = 0;
  v5 = 0;
  if ([_axSheetPresentationController _accessibilityIsInverted])
  {
    _axSheetPresentationController2 = [(UIDropShadowViewAccessibility *)self _axSheetPresentationController];
    v7 = 1;
    _accessibilityCollapseSheet = [_axSheetPresentationController2 _accessibilityCollapseSheet];
  }

  else
  {
    _axSheetPresentationController3 = [(UIDropShadowViewAccessibility *)self _axSheetPresentationController];
    v5 = 1;
    _accessibilityCollapseSheet = [_axSheetPresentationController3 _accessibilityExpandSheet];
  }

  if (v5)
  {
    MEMORY[0x29EDC9740](_axSheetPresentationController3);
  }

  if (v7)
  {
    MEMORY[0x29EDC9740](_axSheetPresentationController2);
  }

  MEMORY[0x29EDC9740](_axSheetPresentationController);
  return _accessibilityCollapseSheet != 0;
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