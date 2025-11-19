@interface SBFluidSwitcherGestureManagerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axItemContainerForGestureRecognizer:(id)a3;
- (void)_handleFluidGesture:(id)a3;
- (void)_handleWindowDragGestureRecognizer:(id)a3;
@end

@implementation SBFluidSwitcherGestureManagerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBFluidSwitcherGestureManager" hasInstanceMethod:@"_handleWindowDragGestureRecognizer:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"_itemContainerForAppLayoutIfExists:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"SBFluidSwitcherPanGestureRecognizer" hasInstanceMethod:@"initialTouchLeafAppLayout" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFluidSwitcherGestureManager" hasInstanceMethod:@"switcherContentController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFluidSwitcherGestureManager" hasInstanceMethod:@"_handleFluidGesture:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SBFluidSwitcherGestureManager" hasInstanceMethod:@"liveWindowResizeGestureRecognizer" withFullSignature:{"@", 0}];
}

- (void)_handleWindowDragGestureRecognizer:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBFluidSwitcherGestureManagerAccessibility;
  [(SBFluidSwitcherGestureManagerAccessibility *)&v9 _handleWindowDragGestureRecognizer:v4];
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  if ([v5 state] == 3)
  {
    v6 = [(SBFluidSwitcherGestureManagerAccessibility *)self _axItemContainerForGestureRecognizer:v4];
    v7 = v6;
    if (v6)
    {
      [v6 frame];
      v8 = [AXSBPositionUtilities positionDescriptionFromTopLeftCornerWithOrigin:?];
      UIAccessibilitySpeakAndDoNotBeInterrupted();
    }
  }
}

- (void)_handleFluidGesture:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SBFluidSwitcherGestureManagerAccessibility;
  [(SBFluidSwitcherGestureManagerAccessibility *)&v11 _handleFluidGesture:v4];
  v5 = [(SBFluidSwitcherGestureManagerAccessibility *)self safeValueForKey:@"liveWindowResizeGestureRecognizer"];
  if (![v4 isEqual:v5])
  {
LABEL_5:

    goto LABEL_6;
  }

  v6 = [v4 state];

  if (v6 == 3)
  {
    v7 = [(SBFluidSwitcherGestureManagerAccessibility *)self _axItemContainerForGestureRecognizer:v4];
    v5 = v7;
    if (v7)
    {
      [v7 frame];
      v8 = [AXSBPositionUtilities positionDescriptionFromTopLeftCornerWithOrigin:?];
      v9 = [AXSBPositionUtilities areaSizeDescriptionForContainer:v5];
      v10 = [MEMORY[0x29EDBA0F8] localizedStringWithFormat:@"%@ %@", v9, v8];
      UIAccessibilitySpeakAndDoNotBeInterrupted();
    }

    goto LABEL_5;
  }

LABEL_6:
}

- (id)_axItemContainerForGestureRecognizer:(id)a3
{
  v3 = a3;
  v4 = [v3 safeValueForKey:@"initialTouchLeafAppLayout"];
  v15 = 0;
  objc_opt_class();
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  v5 = v4;
  AXPerformSafeBlock();
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);
  v7 = __UIAccessibilityCastAsClass();

  if (v15 == 1)
  {
    abort();
  }

  return v7;
}

void __83__SBFluidSwitcherGestureManagerAccessibility__axItemContainerForGestureRecognizer___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) safeValueForKey:@"switcherContentController"];
  v2 = [v5 _itemContainerForAppLayoutIfExists:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end