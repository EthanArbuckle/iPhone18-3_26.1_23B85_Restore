@interface BKUIPearlInstructionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axNavigationControllerParent;
- (void)setDetail:(id)detail;
@end

@implementation BKUIPearlInstructionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BKUIPearlInstructionView" hasInstanceMethod:@"setDetail:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"BKUIPearlInstructionView" hasInstanceMethod:@"instruction" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BKUIPearlInstructionView" hasInstanceMethod:@"instructionLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BKUIPearlInstructionView" hasInstanceMethod:@"detailLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BKUIPearlInstructionView" hasInstanceVariable:@"_detail" withType:"NSString"];
}

- (id)_axNavigationControllerParent
{
  v2 = [(BKUIPearlInstructionViewAccessibility *)self _accessibilityFindViewAncestor:&__block_literal_global_0 startWithSelf:0];
  _accessibilityViewController = [v2 _accessibilityViewController];
  navigationController = [_accessibilityViewController navigationController];

  return navigationController;
}

BOOL __70__BKUIPearlInstructionViewAccessibility__axNavigationControllerParent__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  v3 = [v2 navigationController];
  v4 = v3 != 0;

  return v4;
}

- (void)setDetail:(id)detail
{
  detailCopy = detail;
  v5 = [(BKUIPearlInstructionViewAccessibility *)self safeStringForKey:@"_detail"];
  if ([v5 isEqualToString:detailCopy])
  {
    v14.receiver = self;
    v14.super_class = BKUIPearlInstructionViewAccessibility;
    [(BKUIPearlInstructionViewAccessibility *)&v14 setDetail:detailCopy];
  }

  else
  {
    v6 = [detailCopy length];
    v14.receiver = self;
    v14.super_class = BKUIPearlInstructionViewAccessibility;
    [(BKUIPearlInstructionViewAccessibility *)&v14 setDetail:detailCopy];
    if (v6)
    {
      _axNavigationControllerParent = [(BKUIPearlInstructionViewAccessibility *)self _axNavigationControllerParent];
      if ([_axNavigationControllerParent _isTransitioning])
      {
      }

      else
      {
        v8 = [(BKUIPearlInstructionViewAccessibility *)self safeUIViewForKey:@"detailLabel"];
        window = [v8 window];

        if (window)
        {
          UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], detailCopy);
        }
      }
    }
  }

  v10 = [(BKUIPearlInstructionViewAccessibility *)self safeStringForKey:@"instruction"];
  v11 = v10;
  if (!detailCopy && v5 && v10)
  {
    v12 = *MEMORY[0x29EDC7ED8];
    v13 = [(BKUIPearlInstructionViewAccessibility *)self safeUIViewForKey:@"instructionLabel"];
    UIAccessibilityPostNotification(v12, v13);
  }
}

@end