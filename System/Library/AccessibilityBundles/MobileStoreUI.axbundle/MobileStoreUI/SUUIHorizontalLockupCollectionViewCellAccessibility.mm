@interface SUUIHorizontalLockupCollectionViewCellAccessibility
- (BOOL)accessibilityScrollToVisible;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)_accessibilityScrollParentForComparingByXAxis;
- (void)layoutSubviews;
@end

@implementation SUUIHorizontalLockupCollectionViewCellAccessibility

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([(SUUIHorizontalLockupCollectionViewCellAccessibility *)self pointInside:v7 withEvent:x, y])
  {
    v8 = [(SUUIHorizontalLockupCollectionViewCellAccessibility *)self _accessibilityParentView];
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
    v22 = __Block_byref_object_copy__0;
    v23 = __Block_byref_object_dispose__0;
    v24 = 0;
    v18[0] = MEMORY[0x29EDCA5F8];
    v18[1] = 3221225472;
    v18[2] = __87__SUUIHorizontalLockupCollectionViewCellAccessibility__accessibilityHitTest_withEvent___block_invoke;
    v18[3] = &unk_29F2D8E08;
    v18[6] = v10;
    v18[7] = v12;
    v18[4] = v25;
    v18[5] = &v19;
    [(SUUIHorizontalLockupCollectionViewCellAccessibility *)self accessibilityEnumerateContainerElementsUsingBlock:v18];
    v13 = v20[5];
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v17.receiver = self;
      v17.super_class = SUUIHorizontalLockupCollectionViewCellAccessibility;
      v14 = [(SUUIHorizontalLockupCollectionViewCellAccessibility *)&v17 _accessibilityHitTest:v7 withEvent:x, y];
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

void __87__SUUIHorizontalLockupCollectionViewCellAccessibility__accessibilityHitTest_withEvent___block_invoke(void *a1, void *a2)
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
  v10.super_class = SUUIHorizontalLockupCollectionViewCellAccessibility;
  v3 = [(SUUIHorizontalLockupCollectionViewCellAccessibility *)&v10 accessibilityScrollToVisible];
  v4 = [(SUUIHorizontalLockupCollectionViewCellAccessibility *)self _accessibilityViewAncestorIsKindOf:NSClassFromString(&cfstr_Suuicollection.isa)];
  v5 = [v4 delegate];
  [v4 contentOffset];
  v9[0] = v6;
  v9[1] = v7;
  if (objc_opt_respondsToSelector())
  {
    [v5 scrollViewWillEndDragging:v4 withVelocity:v9 targetContentOffset:{*MEMORY[0x29EDB90B8], *(MEMORY[0x29EDB90B8] + 8)}];
  }

  return v3;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SUUIHorizontalLockupCollectionViewCellAccessibility;
  [(SUUIHorizontalLockupCollectionViewCellAccessibility *)&v4 layoutSubviews];
  if (_AXSAutomationEnabled())
  {
    v3 = [(SUUIHorizontalLockupCollectionViewCellAccessibility *)self safeValueForKey:@"_lockupView"];
    [v3 layoutIfNeeded];
  }
}

- (id)_accessibilityScrollParentForComparingByXAxis
{
  v3 = objc_opt_class();

  return [(SUUIHorizontalLockupCollectionViewCellAccessibility *)self _accessibilityAncestorIsKindOf:v3];
}

@end