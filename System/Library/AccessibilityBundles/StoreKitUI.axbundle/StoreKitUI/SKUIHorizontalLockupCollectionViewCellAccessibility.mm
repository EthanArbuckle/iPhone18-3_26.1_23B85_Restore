@interface SKUIHorizontalLockupCollectionViewCellAccessibility
- (BOOL)accessibilityScrollToVisible;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)_accessibilityScrollParentForComparingByXAxis;
- (void)layoutSubviews;
@end

@implementation SKUIHorizontalLockupCollectionViewCellAccessibility

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if ([(SKUIHorizontalLockupCollectionViewCellAccessibility *)self pointInside:eventCopy withEvent:x, y])
  {
    _accessibilityParentView = [(SKUIHorizontalLockupCollectionViewCellAccessibility *)self _accessibilityParentView];
    UIAccessibilityPointForPoint();
    v10 = v9;
    v12 = v11;

    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x2020000000;
    v25[3] = 0x47EFFFFFE0000000;
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy_;
    v23 = __Block_byref_object_dispose_;
    v24 = 0;
    v18[0] = MEMORY[0x29EDCA5F8];
    v18[1] = 3221225472;
    v18[2] = __87__SKUIHorizontalLockupCollectionViewCellAccessibility__accessibilityHitTest_withEvent___block_invoke;
    v18[3] = &unk_29F3041B8;
    v18[6] = v10;
    v18[7] = v12;
    v18[4] = v25;
    v18[5] = &v19;
    [(SKUIHorizontalLockupCollectionViewCellAccessibility *)self accessibilityEnumerateContainerElementsUsingBlock:v18];
    v13 = v20[5];
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v17.receiver = self;
      v17.super_class = SKUIHorizontalLockupCollectionViewCellAccessibility;
      v14 = [(SKUIHorizontalLockupCollectionViewCellAccessibility *)&v17 _accessibilityHitTest:eventCopy withEvent:x, y];
    }

    v15 = v14;
    _Block_object_dispose(&v19, 8);

    _Block_object_dispose(v25, 8);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __87__SKUIHorizontalLockupCollectionViewCellAccessibility__accessibilityHitTest_withEvent___block_invoke(void *a1, void *a2)
{
  v8 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _AXAssert();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v8 isAccessibilityElement])
    {
      [v8 accessibilityActivationPoint];
      v4 = a1[6];
      v5 = a1[7];
      AX_CGPointGetDistanceToPoint();
      v7 = *(a1[4] + 8);
      if (v6 < *(v7 + 24))
      {
        *(v7 + 24) = v6;
        objc_storeStrong((*(a1[5] + 8) + 40), a2);
      }
    }
  }
}

- (BOOL)accessibilityScrollToVisible
{
  v10.receiver = self;
  v10.super_class = SKUIHorizontalLockupCollectionViewCellAccessibility;
  accessibilityScrollToVisible = [(SKUIHorizontalLockupCollectionViewCellAccessibility *)&v10 accessibilityScrollToVisible];
  v4 = [(SKUIHorizontalLockupCollectionViewCellAccessibility *)self _accessibilityViewAncestorIsKindOf:NSClassFromString(&cfstr_Skuicollection_0.isa)];
  delegate = [v4 delegate];
  [v4 contentOffset];
  v9[0] = v6;
  v9[1] = v7;
  if (objc_opt_respondsToSelector())
  {
    [delegate scrollViewWillEndDragging:v4 withVelocity:v9 targetContentOffset:{*MEMORY[0x29EDB90B8], *(MEMORY[0x29EDB90B8] + 8)}];
  }

  return accessibilityScrollToVisible;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SKUIHorizontalLockupCollectionViewCellAccessibility;
  [(SKUIHorizontalLockupCollectionViewCellAccessibility *)&v4 layoutSubviews];
  if (_AXSAutomationEnabled())
  {
    v3 = [(SKUIHorizontalLockupCollectionViewCellAccessibility *)self safeValueForKey:@"_lockupView"];
    [v3 layoutIfNeeded];
  }
}

- (id)_accessibilityScrollParentForComparingByXAxis
{
  v3 = objc_opt_class();

  return [(SKUIHorizontalLockupCollectionViewCellAccessibility *)self _accessibilityAncestorIsKindOf:v3];
}

@end