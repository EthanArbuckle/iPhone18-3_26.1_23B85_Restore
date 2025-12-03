@interface UIPopoverPresentationControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)preferredFocusEnvironments;
- (id)preferredFocusedView;
- (void)presentationTransitionWillBegin;
@end

@implementation UIPopoverPresentationControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v7 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
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
  selfCopy = self;
  v13[1] = a2;
  v12 = 0;
  objc_opt_class();
  v11 = __UIAccessibilityCastAsClass();
  v10 = MEMORY[0x29EDC9748](v11);
  objc_storeStrong(&v11, 0);
  v13[0] = v10;
  presentedView = [v10 presentedView];
  _accessibilityIsFKARunningForFocusItem = [presentedView _accessibilityIsFKARunningForFocusItem];
  *&v2 = MEMORY[0x29EDC9740](presentedView).n128_u64[0];
  if (_accessibilityIsFKARunningForFocusItem)
  {
    passthroughViews = [v13[0] passthroughViews];
    firstObject = [passthroughViews firstObject];
    MEMORY[0x29EDC9740](passthroughViews);
  }

  else
  {
    v8.receiver = selfCopy;
    v8.super_class = UIPopoverPresentationControllerAccessibility;
    firstObject = [(UIPopoverPresentationControllerAccessibility *)&v8 preferredFocusedView];
  }

  v9 = 1;
  objc_storeStrong(v13, 0);
  v3 = firstObject;

  return v3;
}

- (id)preferredFocusEnvironments
{
  selfCopy = self;
  v19[1] = a2;
  v18 = 0;
  objc_opt_class();
  v17 = __UIAccessibilityCastAsClass();
  v16 = MEMORY[0x29EDC9748](v17);
  objc_storeStrong(&v17, 0);
  v19[0] = v16;
  presentedView = [v16 presentedView];
  _accessibilityIsFKARunningForFocusItem = [presentedView _accessibilityIsFKARunningForFocusItem];
  *&v2 = MEMORY[0x29EDC9740](presentedView).n128_u64[0];
  if (_accessibilityIsFKARunningForFocusItem)
  {
    v15 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v6 = v15;
    v7 = [(UIPopoverPresentationControllerAccessibility *)selfCopy safeArrayForKey:@"passthroughViews"];
    [v6 axSafelyAddObjectsFromArray:?];
    *&v3 = MEMORY[0x29EDC9740](v7).n128_u64[0];
    v8 = v15;
    v14.receiver = selfCopy;
    v14.super_class = UIPopoverPresentationControllerAccessibility;
    preferredFocusEnvironments = [(UIPopoverPresentationControllerAccessibility *)&v14 preferredFocusEnvironments];
    [v8 axSafelyAddObjectsFromArray:?];
    MEMORY[0x29EDC9740](preferredFocusEnvironments);
    preferredFocusEnvironments2 = MEMORY[0x29EDC9748](v15);
    v13 = 1;
    objc_storeStrong(&v15, 0);
  }

  else
  {
    v12.receiver = selfCopy;
    v12.super_class = UIPopoverPresentationControllerAccessibility;
    preferredFocusEnvironments2 = [(UIPopoverPresentationControllerAccessibility *)&v12 preferredFocusEnvironments];
    v13 = 1;
  }

  objc_storeStrong(v19, 0);
  v4 = preferredFocusEnvironments2;

  return v4;
}

- (void)presentationTransitionWillBegin
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UIPopoverPresentationControllerAccessibility;
  [(UIPopoverPresentationControllerAccessibility *)&v2 presentationTransitionWillBegin];
}

@end