@interface CRLCanvasAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (BOOL)crlaxIsDoingLayout;
- (BOOL)crlaxIsPreventingReloadingChildren;
- (BOOL)p_updateRepsFromLayouts;
- (CGPoint)crlaxScreenPointFromUnscaledCanvas:(CGPoint)a3;
- (CGRect)crlaxConvertUnscaledToBoundsRect:(CGRect)a3;
- (CGRect)crlaxScreenFrameFromUnscaledCanvas:(CGRect)a3;
- (CRLCanvasInteractiveCanvasControllerAccessibility)crlaxInteractiveCanvasController;
- (CRLCanvasViewAccessibility)crlaxCanvasContainerView;
- (NSArray)crlaxMiniFormatterElements;
- (NSArray)crlaxTopLevelReps;
- (NSArray)crlaxTopLevelRepsOmittingMiniFormatterElements;
- (NSSet)crlaxAllReps;
- (UIView)crlaxMiniFormatterView;
- (double)crlaxViewScale;
- (id)_adjustRepOrderForMiniFormatterWith:(id)a3 forResults:(id)a4 withFormatterViews:(id)a5;
- (id)_crlaxMiniFormatterVC;
- (void)crlaxPreventReloadingChildren;
- (void)crlaxRevertReloadingChildrenTo:(BOOL)a3 andReloadForChanges:(BOOL)a4;
- (void)i_registerRep:(id)a3;
- (void)i_unregisterRep:(id)a3;
- (void)teardown;
@end

@implementation CRLCanvasAccessibility

- (BOOL)p_updateRepsFromLayouts
{
  v7.receiver = self;
  v7.super_class = CRLCanvasAccessibility;
  v3 = [(CRLCanvasAccessibility *)&v7 p_updateRepsFromLayouts];
  if (v3)
  {
    v4 = [(CRLCanvasAccessibility *)self crlaxInteractiveCanvasController];
    v5 = [v4 crlaxCanvasView];
    [v5 crlaxInvalidateChildren];
  }

  return v3;
}

- (void)i_registerRep:(id)a3
{
  v6.receiver = self;
  v6.super_class = CRLCanvasAccessibility;
  [(CRLCanvasAccessibility *)&v6 i_registerRep:a3];
  v4 = [(CRLCanvasAccessibility *)self crlaxInteractiveCanvasController];
  v5 = [v4 crlaxCanvasView];
  [v5 crlaxInvalidateChildren];
}

- (void)i_unregisterRep:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasAccessibility *)self crlaxInteractiveCanvasController];
  v6 = [v5 crlaxCanvasView];
  v7 = [v6 crlaxShouldPreventReloadingChildren];

  v8 = [(CRLCanvasAccessibility *)self crlaxInteractiveCanvasController];
  v9 = [v8 crlaxCanvasView];
  [v9 crlaxSetShouldPreventReloadingChildren:1];

  v10 = [(CRLCanvasAccessibility *)self crlaxInteractiveCanvasController];
  v11 = [v10 crlaxCanvasView];
  [v11 crlaxInvalidateChildren];

  v14.receiver = self;
  v14.super_class = CRLCanvasAccessibility;
  [(CRLCanvasAccessibility *)&v14 i_unregisterRep:v4];

  v12 = [(CRLCanvasAccessibility *)self crlaxInteractiveCanvasController];
  v13 = [v12 crlaxCanvasView];
  [v13 crlaxSetShouldPreventReloadingChildren:v7];
}

- (BOOL)crlaxIsPreventingReloadingChildren
{
  v8 = 0;
  v2 = [(CRLCanvasAccessibility *)self crlaxCanvasContainerView];
  v3 = objc_opt_class();
  v4 = __CRLAccessibilityCastAsClass(v3, v2, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 crlaxShouldPreventReloadingChildren];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)crlaxPreventReloadingChildren
{
  v8.receiver = self;
  v8.super_class = CRLCanvasAccessibility;
  [(CRLCanvasAccessibility *)&v8 crlaxPreventReloadingChildren];
  v7 = 0;
  v3 = [(CRLCanvasAccessibility *)self crlaxCanvasContainerView];
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsClass(v4, v3, 1, &v7);
  if (v7 == 1)
  {
    abort();
  }

  v6 = v5;

  [v6 crlaxSetShouldPreventReloadingChildren:1];
}

- (void)crlaxRevertReloadingChildrenTo:(BOOL)a3 andReloadForChanges:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v12.receiver = self;
  v12.super_class = CRLCanvasAccessibility;
  [CRLCanvasAccessibility crlaxRevertReloadingChildrenTo:"crlaxRevertReloadingChildrenTo:andReloadForChanges:" andReloadForChanges:?];
  v11 = 0;
  v7 = [(CRLCanvasAccessibility *)self crlaxCanvasContainerView];
  v8 = objc_opt_class();
  v9 = __CRLAccessibilityCastAsClass(v8, v7, 1, &v11);
  if (v11 == 1)
  {
    abort();
  }

  v10 = v9;

  [v10 crlaxSetShouldPreventReloadingChildren:v5];
  if (v4 && !v5)
  {
    [v10 crlaxInvalidateChildren];
  }
}

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (CRLCanvasInteractiveCanvasControllerAccessibility)crlaxInteractiveCanvasController
{
  v8 = 0;
  v2 = [(CRLCanvasAccessibility *)self crlaxTarget];
  v3 = [v2 canvasController];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (BOOL)crlaxIsDoingLayout
{
  v2 = [(CRLCanvasAccessibility *)self crlaxTarget];
  v3 = [v2 i_inLayout];

  return v3;
}

- (NSArray)crlaxMiniFormatterElements
{
  v2 = [(CRLCanvasAccessibility *)self _crlaxMiniFormatterVC];
  v3 = [v2 crlaxAccessibilityViews];

  return v3;
}

- (NSArray)crlaxTopLevelReps
{
  v3 = [(CRLCanvasAccessibility *)self crlaxTopLevelRepsOmittingMiniFormatterElements];
  v4 = [(CRLCanvasAccessibility *)self _crlaxMiniFormatterVC];
  v5 = [v4 crlaxCurrentPresentedRep];
  v6 = [v4 crlaxAccessibilityViews];
  v7 = [(CRLCanvasAccessibility *)self _adjustRepOrderForMiniFormatterWith:v5 forResults:v3 withFormatterViews:v6];

  return v7;
}

- (id)_adjustRepOrderForMiniFormatterWith:(id)a3 forResults:(id)a4 withFormatterViews:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[NSMutableArray array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v8;
  v11 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        if (v15 == v7)
        {
          [v10 addObject:?];
          [v10 addObjectsFromArray:v9];
        }

        else
        {
          v25 = 0;
          v16 = v15;
          v17 = objc_opt_class();
          v18 = __CRLAccessibilityCastAsClass(v17, v16, 1, &v25);
          if (v25 == 1)
          {
            abort();
          }

          v19 = v18;

          v20 = [v19 allRepsContainedInGroup];
          v21 = [v20 containsObject:v7];

          [v10 addObject:v16];
          if (v21)
          {
            [v10 addObjectsFromArray:v9];
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v12);
  }

  v22 = [v10 copy];

  return v22;
}

- (NSSet)crlaxAllReps
{
  v3 = [(CRLCanvasAccessibility *)self crlaxInteractiveCanvasController];
  v4 = [v3 crlaxCurrentlyWaitingOnThreadedLayoutAndRender];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(CRLCanvasAccessibility *)self crlaxTarget];
    v5 = [v6 allReps];
  }

  return v5;
}

- (CRLCanvasViewAccessibility)crlaxCanvasContainerView
{
  v2 = [(CRLCanvasAccessibility *)self crlaxInteractiveCanvasController];
  v3 = [v2 crlaxCanvasView];

  return v3;
}

- (CGRect)crlaxScreenFrameFromUnscaledCanvas:(CGRect)a3
{
  [(CRLCanvasAccessibility *)self crlaxConvertUnscaledToBoundsRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(CRLCanvasAccessibility *)self crlaxCanvasContainerView];
  [v12 crlaxFrameFromBounds:{v5, v7, v9, v11}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CGPoint)crlaxScreenPointFromUnscaledCanvas:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(CRLCanvasAccessibility *)self crlaxInteractiveCanvasController];
  v6 = [v5 crlaxCanvasView];
  [v5 crlaxConvertUnscaledToBoundsPoint:{x, y}];
  [v6 crlaxFramePointFromBoundsPoint:?];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGRect)crlaxConvertUnscaledToBoundsRect:(CGRect)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x4010000000;
  v16 = &unk_1016A8115;
  v17 = 0u;
  v18 = 0u;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100595F28;
  v11[3] = &unk_101866938;
  v11[4] = self;
  v11[5] = &v13;
  v12 = a3;
  if (__CRLAccessibilityPerformSafeBlock(v11))
  {
    abort();
  }

  v3 = v14[4];
  v4 = v14[5];
  v5 = v14[6];
  v6 = v14[7];
  _Block_object_dispose(&v13, 8);
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (double)crlaxViewScale
{
  v2 = [(CRLCanvasAccessibility *)self crlaxTarget];
  [v2 viewScale];
  v4 = v3;

  return v4;
}

- (UIView)crlaxMiniFormatterView
{
  v2 = [(CRLCanvasAccessibility *)self _crlaxMiniFormatterVC];
  v3 = [v2 view];

  return v3;
}

- (NSArray)crlaxTopLevelRepsOmittingMiniFormatterElements
{
  v3 = [(CRLCanvasAccessibility *)self crlaxInteractiveCanvasController];
  v4 = [v3 crlaxCurrentlyWaitingOnThreadedLayoutAndRender];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(CRLCanvasAccessibility *)self crlaxTarget];
    v5 = [v6 topLevelReps];
  }

  return v5;
}

- (void)teardown
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(CRLCanvasAccessibility *)self crlaxAllReps];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 _crlaxSetShouldPreventAccessToCanvas:1];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9.receiver = self;
  v9.super_class = CRLCanvasAccessibility;
  [(CRLCanvasAccessibility *)&v9 teardown];
}

- (id)_crlaxMiniFormatterVC
{
  v22 = 0;
  v2 = [(CRLCanvasAccessibility *)self crlaxTarget];
  v3 = [v2 delegate];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsClass(v4, v3, 1, &v22);
  if (v22 == 1)
  {
    goto LABEL_10;
  }

  v6 = v5;

  v21 = 0;
  v7 = [v6 canvasView];
  v8 = [v7 nextResponder];

  v9 = objc_opt_class();
  v10 = __CRLAccessibilityCastAsClass(v9, v8, 1, &v21);
  if (v21 == 1)
  {
    goto LABEL_10;
  }

  v11 = v10;

  v12 = [v11 miniFormatterPresenter];
  v13 = [v12 isPresentingMiniFormatter];

  if (v13)
  {
    v20 = 0;
    v14 = [v11 miniFormatterPresenter];
    v15 = [v14 crlaxMiniFormatterViewController];

    v16 = objc_opt_class();
    v17 = __CRLAccessibilityCastAsClass(v16, v15, 1, &v20);
    if (v20 != 1)
    {
      v18 = v17;

      goto LABEL_7;
    }

LABEL_10:
    abort();
  }

  v18 = 0;
LABEL_7:

  return v18;
}

@end