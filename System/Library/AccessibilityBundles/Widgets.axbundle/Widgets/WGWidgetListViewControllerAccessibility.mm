@interface WGWidgetListViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_invokeBlockWithPlatterViewsVisibleInBounds:(id)bounds;
@end

@implementation WGWidgetListViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"WGWidgetListViewController" hasInstanceMethod:@"_invokeBlockWithPlatterViewsVisibleInBounds:" withFullSignature:{"v", "@?", 0}];
  [validationsCopy validateClass:@"WGWidgetListViewController" hasInstanceMethod:@"_invokeBlockWithPlatterViewsVisibleInRect: block:" withFullSignature:{"v", "{CGRect={CGPoint=dd}{CGSize=dd}}", "@?", 0}];
  [validationsCopy validateClass:@"WGWidgetListViewController" hasInstanceMethod:@"_scrollViewIfLoaded" withFullSignature:{"@", 0}];
}

- (void)_invokeBlockWithPlatterViewsVisibleInBounds:(id)bounds
{
  boundsCopy = bounds;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v21 = 0;
    objc_opt_class();
    v5 = [(WGWidgetListViewControllerAccessibility *)self safeValueForKey:@"_scrollViewIfLoaded"];
    v6 = __UIAccessibilityCastAsClass();

    if (v6)
    {
      [v6 bounds];
      x = v26.origin.x;
      y = v26.origin.y;
      width = v26.size.width;
      height = v26.size.height;
      if (!CGRectIsEmpty(v26))
      {
        v27.origin.x = x;
        v27.origin.y = y;
        v27.size.width = width;
        v27.size.height = height;
        v11 = CGRectGetHeight(v27) * -0.5;
        v28.origin.x = x;
        v28.origin.y = y;
        v28.size.width = width;
        v28.size.height = height;
        v29 = CGRectInset(v28, 0.0, v11);
        v13 = MEMORY[0x29EDCA5F8];
        v14 = 3221225472;
        v15 = __87__WGWidgetListViewControllerAccessibility__invokeBlockWithPlatterViewsVisibleInBounds___block_invoke;
        v16 = &unk_29F322988;
        selfCopy = self;
        v20 = v29;
        v18 = boundsCopy;
        v19 = &v22;
        AXPerformSafeBlock();
      }
    }
  }

  if ((v23[3] & 1) == 0)
  {
    v12.receiver = self;
    v12.super_class = WGWidgetListViewControllerAccessibility;
    [(WGWidgetListViewControllerAccessibility *)&v12 _invokeBlockWithPlatterViewsVisibleInBounds:boundsCopy];
  }

  _Block_object_dispose(&v22, 8);
}

uint64_t __87__WGWidgetListViewControllerAccessibility__invokeBlockWithPlatterViewsVisibleInBounds___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _invokeBlockWithPlatterViewsVisibleInRect:*(a1 + 40) block:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  *(*(*(a1 + 48) + 8) + 24) = 1;
  return result;
}

@end