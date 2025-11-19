@interface CRLUIViewAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (BOOL)_accessibilityShouldUseViewHierarchyForFindingScrollParent;
- (BOOL)accessibilityPerformEscape;
- (CGRect)_accessibilityFrameForSorting;
- (id)_accessibilityContainingParentForOrdering;
- (id)_crlaxParentCanvasView;
- (id)accessibilityContainer;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_crlaxInvalidateChildrenOnParentCanvasView;
- (void)addSubview:(id)a3;
- (void)crlaxLoadAccessibilityInformation;
- (void)removeFromSuperview;
- (void)setAlpha:(double)a3;
- (void)setHidden:(BOOL)a3;
- (void)setIsAccessibilityElement:(BOOL)a3;
@end

@implementation CRLUIViewAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (void)crlaxLoadAccessibilityInformation
{
  v8.receiver = self;
  v8.super_class = CRLUIViewAccessibility;
  [(CRLUIViewAccessibility *)&v8 crlaxLoadAccessibilityInformation];
  v7 = 0;
  v3 = [(CRLUIViewAccessibility *)self crlaxValueForKey:@"_accessibilityViewController"];
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsClass(v4, v3, 1, &v7);
  if (v7 == 1)
  {
    abort();
  }

  v6 = v5;

  [v6 crlaxLoadAccessibilityInformation];
}

- (CGRect)_accessibilityFrameForSorting
{
  v20.receiver = self;
  v20.super_class = CRLUIViewAccessibility;
  [(CRLUIViewAccessibility *)&v20 _accessibilityFrameForSorting];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = objc_opt_class();
  v12 = [(CRLUIViewAccessibility *)self crlaxValueForKey:@"superview"];
  v13 = __CRLAccessibilityCastAsClass(v11, v12, 0, 0);

  if (v13)
  {
    [v13 accessibilityFrame];
    v6 = v14;
    v10 = v15;
  }

  v16 = v4;
  v17 = v6;
  v18 = v8;
  v19 = v10;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (BOOL)accessibilityPerformEscape
{
  v16.receiver = self;
  v16.super_class = CRLUIViewAccessibility;
  if ([(CRLUIViewAccessibility *)&v16 accessibilityPerformEscape])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v15 = 0;
    v4 = self;
    v5 = objc_opt_class();
    v6 = __CRLAccessibilityCastAsClass(v5, v4, 1, &v15);
    if (v15 == 1 || (v7 = v6, v4, v15 = 0, [v7 nextResponder], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_opt_class(), __CRLAccessibilityCastAsClass(v9, v8, 1, &v15), v10 = objc_claimAutoreleasedReturnValue(), v15 == 1))
    {
      abort();
    }

    v11 = v10;

    v12 = [v11 miniFormatterPresenter];
    v3 = [v12 isPresentingMiniFormatter];

    if (v3)
    {
      v13 = [v11 miniFormatterPresenter];
      [v13 dismissMiniFormatter];
    }
  }

  return v3;
}

- (id)_accessibilityContainingParentForOrdering
{
  v6.receiver = self;
  v6.super_class = CRLUIViewAccessibility;
  v3 = [(CRLUIViewAccessibility *)&v6 _accessibilityContainingParentForOrdering];
  if (!v3)
  {
    v3 = self;
    do
    {
      v4 = v3;
      v3 = [(CRLUIViewAccessibility *)v3 superview];
    }

    while (([(CRLUIViewAccessibility *)v3 crlaxServesAsContainingParentForOrdering]& 1) == 0 && v3);
  }

  return v3;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = CRLUIViewAccessibility;
  [(CRLUIViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(CRLUIViewAccessibility *)self crlaxLoadAccessibilityInformation];
}

- (id)_crlaxParentCanvasView
{
  v3 = NSClassFromString(@"CRLCanvasView");

  return [(CRLUIViewAccessibility *)self crlaxViewAncestorOfType:v3];
}

- (void)_crlaxInvalidateChildrenOnParentCanvasView
{
  [(CRLUIViewAccessibility *)self _crlaxParentCanvasView];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10049D68C;
  v2 = v3[3] = &unk_10183AB38;
  v4 = v2;
  if (__CRLAccessibilityPerformSafeBlock(v3))
  {
    abort();
  }
}

- (BOOL)_accessibilityShouldUseViewHierarchyForFindingScrollParent
{
  NSClassFromString(@"CRLCanvasView");
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = [(CRLUIViewAccessibility *)self _crlaxParentCanvasView];

    if (v3)
    {
      return 1;
    }
  }

  v5.receiver = self;
  v5.super_class = CRLUIViewAccessibility;
  return [(CRLUIViewAccessibility *)&v5 _accessibilityShouldUseViewHierarchyForFindingScrollParent];
}

- (id)accessibilityContainer
{
  NSClassFromString(@"CRLCanvasView");
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_10;
  }

  v3 = [(CRLUIViewAccessibility *)self _crlaxParentCanvasView];
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v3;
  v5 = [(CRLUIViewAccessibility *)self superview];
  v6 = v5;
  if (v5 && v5 != v4)
  {
    do
    {
      v7 = v6;
      v8 = [v4 crlaxViewCanBeAddedToContainerElements:v6];
      v6 = [v6 superview];
    }

    while (v6 && v6 != v4 && !v8);
    if (v8)
    {

LABEL_10:
      v10.receiver = self;
      v10.super_class = CRLUIViewAccessibility;
      v4 = [(CRLUIViewAccessibility *)&v10 accessibilityContainer];
      goto LABEL_12;
    }
  }

LABEL_12:

  return v4;
}

- (void)setIsAccessibilityElement:(BOOL)a3
{
  v3 = a3;
  v5 = [(CRLUIViewAccessibility *)self isAccessibilityElement];
  v6.receiver = self;
  v6.super_class = CRLUIViewAccessibility;
  [(CRLUIViewAccessibility *)&v6 setIsAccessibilityElement:v3];
  if (v5 != v3)
  {
    [(CRLUIViewAccessibility *)self _crlaxInvalidateChildrenOnParentCanvasView];
  }
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(CRLUIViewAccessibility *)self isHidden];
  v6.receiver = self;
  v6.super_class = CRLUIViewAccessibility;
  [(CRLUIViewAccessibility *)&v6 setHidden:v3];
  if (v5 != v3)
  {
    [(CRLUIViewAccessibility *)self _crlaxInvalidateChildrenOnParentCanvasView];
  }
}

- (void)setAlpha:(double)a3
{
  [(CRLUIViewAccessibility *)self alpha];
  v6 = v5;
  v7.receiver = self;
  v7.super_class = CRLUIViewAccessibility;
  [(CRLUIViewAccessibility *)&v7 setAlpha:a3];
  if (a3 == 0.0 && v6 > 0.0 || a3 > 0.0 && v6 == 0.0)
  {
    [(CRLUIViewAccessibility *)self _crlaxInvalidateChildrenOnParentCanvasView];
  }
}

- (void)addSubview:(id)a3
{
  v5.receiver = self;
  v5.super_class = CRLUIViewAccessibility;
  [(CRLUIViewAccessibility *)&v5 addSubview:?];
  if (a3)
  {
    [(CRLUIViewAccessibility *)self _crlaxInvalidateChildrenOnParentCanvasView];
  }
}

- (void)removeFromSuperview
{
  [(CRLUIViewAccessibility *)self _crlaxInvalidateChildrenOnParentCanvasView];
  v3.receiver = self;
  v3.super_class = CRLUIViewAccessibility;
  [(CRLUIViewAccessibility *)&v3 removeFromSuperview];
}

@end