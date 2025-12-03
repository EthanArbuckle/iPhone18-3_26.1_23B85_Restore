@interface PXUIScrollViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGRect)scrollViewActiveRect;
- (void)_axAdjustScrollViewInsetsWithNavController:(id)controller;
@end

@implementation PXUIScrollViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PXUIScrollViewController" hasInstanceVariable:@"_scrollView" withType:"_PXUIScrollView"];
  [validationsCopy validateClass:@"PXUIScrollViewController" hasInstanceMethod:@"scrollViewActiveRect" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
}

- (void)_axAdjustScrollViewInsetsWithNavController:(id)controller
{
  controllerCopy = controller;
  accessibilityIdentification = [(PXUIScrollViewControllerAccessibility *)self accessibilityIdentification];
  v6 = [accessibilityIdentification isEqualToString:@"AXPhotosDetailsUIViewController"];

  if (v6)
  {
    v7 = [(PXUIScrollViewControllerAccessibility *)self safeUIViewForKey:@"_scrollView"];
    window = [v7 window];
    windowScene = [window windowScene];
    statusBarManager = [windowScene statusBarManager];
    [statusBarManager statusBarFrame];
    v12 = v11;

    if (controllerCopy)
    {
      navigationBar = [controllerCopy navigationBar];
      [navigationBar bounds];
      v12 = v12 + CGRectGetHeight(v23);
    }

    MEMORY[0x29C2E6930](@"PUNavigationController");
    if (objc_opt_isKindOfClass())
    {
      v14 = [controllerCopy safeValueForKey:@"_extendedToolbar"];
      v15 = [v14 _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_5];
    }

    else
    {
      v15 = 0;
    }

    objc_opt_class();
    firstObject = [v15 firstObject];
    v17 = __UIAccessibilityCastAsClass();

    if (v17)
    {
      [v17 frame];
      v19 = v18;
    }

    else
    {
      v19 = 0.0;
    }

    _applicationKeyWindow = [MEMORY[0x29EDC7DD0] _applicationKeyWindow];
    rootViewController = [_applicationKeyWindow rootViewController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      tabBar = [rootViewController tabBar];
      [tabBar bounds];
      v19 = v19 + CGRectGetHeight(v24);
    }

    [v7 _accessibilitySetVisibleContentInset:{v12, 0.0, v19, 0.0}];
  }
}

uint64_t __84__PXUIScrollViewControllerAccessibility__axAdjustScrollViewInsetsWithNavController___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2E6930](@"PUScrubberView");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (CGRect)scrollViewActiveRect
{
  v21.receiver = self;
  v21.super_class = PXUIScrollViewControllerAccessibility;
  [(PXUIScrollViewControllerAccessibility *)&v21 scrollViewActiveRect];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  accessibilityIdentification = [(PXUIScrollViewControllerAccessibility *)self accessibilityIdentification];
  v12 = [accessibilityIdentification isEqualToString:@"AXExplorerViewControllerScrollViewController"];

  if (v12)
  {
    v13 = -100.0;
    v14 = 0.0;
LABEL_5:
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    v23 = CGRectInset(v22, v13, v14);
    x = v23.origin.x;
    y = v23.origin.y;
    width = v23.size.width;
    height = v23.size.height;
    goto LABEL_6;
  }

  accessibilityIdentification2 = [(PXUIScrollViewControllerAccessibility *)self accessibilityIdentification];
  v16 = [accessibilityIdentification2 isEqualToString:@"AXPhotosDetailsUIViewController"];

  if (v16)
  {
    v14 = -height;
    v13 = 0.0;
    goto LABEL_5;
  }

LABEL_6:
  v17 = x;
  v18 = y;
  v19 = width;
  v20 = height;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

@end