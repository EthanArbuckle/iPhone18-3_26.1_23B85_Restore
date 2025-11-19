@interface UIPopoverPresentationControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)preferredFocusEnvironments;
- (id)preferredFocusedView;
- (void)presentationTransitionWillBegin;
@end

@implementation UIPopoverPresentationControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v7 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"UIPopoverPresentationController";
  v4 = @"UIPresentationController";
  [location[0] validateClass:? isKindOfClass:?];
  [location[0] validateClass:@"UIPopoverPresentationController" hasInstanceMethod:@"presentationTransitionWillBegin" withFullSignature:{"v", 0}];
  v5 = "@";
  [location[0] validateClass:v4 hasInstanceMethod:@"preferredFocusedView" withFullSignature:0];
  [location[0] validateClass:v4 hasInstanceMethod:@"preferredFocusEnvironments" withFullSignature:{v5, 0}];
  objc_storeStrong(v7, obj);
}

- (id)preferredFocusedView
{
  v14 = self;
  v13[1] = a2;
  v12 = 0;
  objc_opt_class();
  v11 = __UIAccessibilityCastAsClass();
  v10 = MEMORY[0x29EDC9748](v11);
  objc_storeStrong(&v11, 0);
  v13[0] = v10;
  v6 = [v10 presentedView];
  v7 = [v6 _accessibilityIsFKARunningForFocusItem];
  *&v2 = MEMORY[0x29EDC9740](v6).n128_u64[0];
  if (v7)
  {
    v5 = [v13[0] passthroughViews];
    v15 = [v5 firstObject];
    MEMORY[0x29EDC9740](v5);
  }

  else
  {
    v8.receiver = v14;
    v8.super_class = UIPopoverPresentationControllerAccessibility;
    v15 = [(UIPopoverPresentationControllerAccessibility *)&v8 preferredFocusedView];
  }

  v9 = 1;
  objc_storeStrong(v13, 0);
  v3 = v15;

  return v3;
}

- (id)preferredFocusEnvironments
{
  v20 = self;
  v19[1] = a2;
  v18 = 0;
  objc_opt_class();
  v17 = __UIAccessibilityCastAsClass();
  v16 = MEMORY[0x29EDC9748](v17);
  objc_storeStrong(&v17, 0);
  v19[0] = v16;
  v10 = [v16 presentedView];
  v11 = [v10 _accessibilityIsFKARunningForFocusItem];
  *&v2 = MEMORY[0x29EDC9740](v10).n128_u64[0];
  if (v11)
  {
    v15 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v6 = v15;
    v7 = [(UIPopoverPresentationControllerAccessibility *)v20 safeArrayForKey:@"passthroughViews"];
    [v6 axSafelyAddObjectsFromArray:?];
    *&v3 = MEMORY[0x29EDC9740](v7).n128_u64[0];
    v8 = v15;
    v14.receiver = v20;
    v14.super_class = UIPopoverPresentationControllerAccessibility;
    v9 = [(UIPopoverPresentationControllerAccessibility *)&v14 preferredFocusEnvironments];
    [v8 axSafelyAddObjectsFromArray:?];
    MEMORY[0x29EDC9740](v9);
    v21 = MEMORY[0x29EDC9748](v15);
    v13 = 1;
    objc_storeStrong(&v15, 0);
  }

  else
  {
    v12.receiver = v20;
    v12.super_class = UIPopoverPresentationControllerAccessibility;
    v21 = [(UIPopoverPresentationControllerAccessibility *)&v12 preferredFocusEnvironments];
    v13 = 1;
  }

  objc_storeStrong(v19, 0);
  v4 = v21;

  return v4;
}

- (void)presentationTransitionWillBegin
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UIPopoverPresentationControllerAccessibility;
  [(UIPopoverPresentationControllerAccessibility *)&v2 presentationTransitionWillBegin];
}

@end