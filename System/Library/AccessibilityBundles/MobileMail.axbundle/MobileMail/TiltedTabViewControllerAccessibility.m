@interface TiltedTabViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)tiltedTabView:(id)a3 contentViewForItemAtIndex:(unint64_t)a4;
- (id)tiltedTabView:(id)a3 snapshotViewForItemAtIndex:(unint64_t)a4;
- (void)_accessibilityUpdateDraftLabelForBorrowedView:(id)a3 withActorAtIndex:(int64_t)a4;
- (void)_axPrepareDockedLabelForIndex:(int64_t)a3;
- (void)dismiss;
- (void)tiltedTabViewDidDismiss:(id)a3;
- (void)tiltedTabViewDidPresent:(id)a3;
@end

@implementation TiltedTabViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TiltedTabViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"TiltedTabViewController" hasInstanceMethod:@"tiltedTabView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TiltedTabViewController" hasInstanceMethod:@"dockedStates" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TiltedTabViewController" hasInstanceMethod:@"tiltedTabViewDidPresent:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"TiltedTabViewController" hasInstanceMethod:@"tiltedTabViewDidDismiss:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"TiltedTabViewController" hasInstanceMethod:@"tiltedTabView:contentViewForItemAtIndex:" withFullSignature:{"@", "@", "Q", 0}];
  [v3 validateClass:@"TiltedTabViewController" hasInstanceMethod:@"tiltedTabView:snapshotViewForItemAtIndex:" withFullSignature:{"@", "@", "Q", 0}];
  [v3 validateClass:@"TiltedTabViewController" hasInstanceMethod:@"dismiss" withFullSignature:{"v", 0}];
  [v3 validateClass:@"MFTiltedTabView" hasInstanceVariable:@"_visibleItems" withType:"NSMutableArray"];
  [v3 validateClass:@"_MFTiltedTabItemView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"_MFTiltedTabItemView" hasInstanceMethod:@"borrowedContentView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_MFTiltedTabItemView" hasInstanceMethod:@"contentShadowView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"DockedViewControllerState" isKindOfClass:@"RestorableViewControllerState"];
  [v3 validateClass:@"RestorableViewControllerState" hasInstanceMethod:@"storedUserActivity" withFullSignature:{"@", 0}];
}

- (void)_axPrepareDockedLabelForIndex:(int64_t)a3
{
  v5 = [(TiltedTabViewControllerAccessibility *)self safeValueForKey:@"tiltedTabView"];
  v6 = [v5 safeArrayForKey:@"_visibleItems"];

  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__6;
  v14 = __Block_byref_object_dispose__6;
  v15 = 0;
  v9 = v6;
  AXPerformSafeBlock();
  v7 = v11[5];

  _Block_object_dispose(&v10, 8);
  v8 = [v7 safeValueForKey:@"borrowedContentView"];

  [(TiltedTabViewControllerAccessibility *)self _accessibilityUpdateDraftLabelForBorrowedView:v8 withActorAtIndex:a3];
}

uint64_t __70__TiltedTabViewControllerAccessibility__axPrepareDockedLabelForIndex___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectAtIndex:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (void)tiltedTabViewDidPresent:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TiltedTabViewControllerAccessibility;
  [(TiltedTabViewControllerAccessibility *)&v8 tiltedTabViewDidPresent:v4];
  v5 = [v4 safeArrayForKey:@"_visibleItems"];
  if ([v5 count])
  {
    v6 = 0;
    do
    {
      [(TiltedTabViewControllerAccessibility *)self _axPrepareDockedLabelForIndex:v6++];
    }

    while ([v5 count] > v6);
  }

  [v4 _accessibilityLoadAccessibilityInformation];
  v7 = [(TiltedTabViewControllerAccessibility *)self safeValueForKey:@"view"];
  [v7 setAccessibilityViewIsModal:1];

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

- (void)dismiss
{
  v2.receiver = self;
  v2.super_class = TiltedTabViewControllerAccessibility;
  [(TiltedTabViewControllerAccessibility *)&v2 dismiss];
  AXPerformBlockOnMainThreadAfterDelay();
}

- (void)tiltedTabViewDidDismiss:(id)a3
{
  v3.receiver = self;
  v3.super_class = TiltedTabViewControllerAccessibility;
  [(TiltedTabViewControllerAccessibility *)&v3 tiltedTabViewDidDismiss:a3];
  AXPerformBlockOnMainThreadAfterDelay();
}

- (id)tiltedTabView:(id)a3 contentViewForItemAtIndex:(unint64_t)a4
{
  v8.receiver = self;
  v8.super_class = TiltedTabViewControllerAccessibility;
  v6 = [(TiltedTabViewControllerAccessibility *)&v8 tiltedTabView:a3 contentViewForItemAtIndex:?];
  [(TiltedTabViewControllerAccessibility *)self _accessibilityUpdateDraftLabelForBorrowedView:v6 withActorAtIndex:a4];

  return v6;
}

- (id)tiltedTabView:(id)a3 snapshotViewForItemAtIndex:(unint64_t)a4
{
  v8.receiver = self;
  v8.super_class = TiltedTabViewControllerAccessibility;
  v6 = [(TiltedTabViewControllerAccessibility *)&v8 tiltedTabView:a3 snapshotViewForItemAtIndex:?];
  [(TiltedTabViewControllerAccessibility *)self _accessibilityUpdateDraftLabelForBorrowedView:v6 withActorAtIndex:a4];

  return v6;
}

- (void)_accessibilityUpdateDraftLabelForBorrowedView:(id)a3 withActorAtIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [(TiltedTabViewControllerAccessibility *)self safeValueForKey:@"tiltedTabView"];
  v8 = [v7 safeArrayForKey:@"_visibleItems"];

  v9 = [(TiltedTabViewControllerAccessibility *)self safeArrayForKey:@"dockedStates"];
  v10 = v9;
  if (a4 >= 1 && [v9 count] >= a4)
  {
    v12 = accessibilityLocalizedString(@"draft.label");
    [v6 setAccessibilityLabel:v12];

    v11 = [v10 objectAtIndex:a4 - 1];
    LOBYTE(location) = 0;
    objc_opt_class();
    v13 = [v11 safeValueForKey:@"storedUserActivity"];
    v14 = __UIAccessibilityCastAsClass();

    v15 = [v14 userInfo];
    v16 = [v15 objectForKey:@"ComposeNavTitle"];
    [v6 setAccessibilityValue:v16];
  }

  else
  {
    v11 = accessibilityLocalizedString(@"dismiss.draft.picker");
    [v6 setAccessibilityLabel:v11];
  }

  [v6 setIsAccessibilityElement:1];
  [v6 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  objc_initWeak(&location, v6);
  v21[0] = MEMORY[0x29EDCA5F8];
  v21[1] = 3221225472;
  v21[2] = __103__TiltedTabViewControllerAccessibility__accessibilityUpdateDraftLabelForBorrowedView_withActorAtIndex___block_invoke;
  v21[3] = &unk_29F2D44C8;
  objc_copyWeak(&v22, &location);
  [v6 _setAccessibilityActivationPointBlock:v21];
  if ((a4 & 0x8000000000000000) == 0 && [v8 count] > a4)
  {
    v17 = [v8 objectAtIndex:a4];
    v19[0] = MEMORY[0x29EDCA5F8];
    v19[1] = 3221225472;
    v19[2] = __103__TiltedTabViewControllerAccessibility__accessibilityUpdateDraftLabelForBorrowedView_withActorAtIndex___block_invoke_2;
    v19[3] = &unk_29F2D44F0;
    v18 = v17;
    v20 = v18;
    [v6 _setAccessibilityPathBlock:v19];
  }

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

double __103__TiltedTabViewControllerAccessibility__accessibilityUpdateDraftLabelForBorrowedView_withActorAtIndex___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained accessibilityFrame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v12.origin.x = v3;
  v12.origin.y = v5;
  v12.size.width = v7;
  v12.size.height = v9;
  MidX = CGRectGetMidX(v12);
  v13.origin.x = v3;
  v13.origin.y = v5;
  v13.size.width = v7;
  v13.size.height = v9;
  CGRectGetMinY(v13);
  return MidX;
}

id __103__TiltedTabViewControllerAccessibility__accessibilityUpdateDraftLabelForBorrowedView_withActorAtIndex___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) safeUIViewForKey:@"contentShadowView"];
  v3 = [v2 layer];
  v4 = v3;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  if (v3)
  {
    [v3 affineTransform];
  }

  LOBYTE(v11[0]) = 0;
  objc_opt_class();
  v5 = *(a1 + 32);
  v6 = __UIAccessibilityCastAsClass();
  v7 = MEMORY[0x29EDC7948];
  [(UIView *)v6 bounds];
  v8 = [v7 bezierPathWithRect:?];
  v11[0] = v12;
  v11[1] = v13;
  v11[2] = v14;
  [(UIBezierPath *)v8 applyTransform:v11];
  v9 = UIAccessibilityConvertPathToScreenCoordinates(v8, v6);

  return v9;
}

@end