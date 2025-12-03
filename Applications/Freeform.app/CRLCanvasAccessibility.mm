@interface CRLCanvasAccessibility
+ (id)crlaxCastFrom:(id)from;
- (BOOL)crlaxIsDoingLayout;
- (BOOL)crlaxIsPreventingReloadingChildren;
- (BOOL)p_updateRepsFromLayouts;
- (CGPoint)crlaxScreenPointFromUnscaledCanvas:(CGPoint)canvas;
- (CGRect)crlaxConvertUnscaledToBoundsRect:(CGRect)rect;
- (CGRect)crlaxScreenFrameFromUnscaledCanvas:(CGRect)canvas;
- (CRLCanvasInteractiveCanvasControllerAccessibility)crlaxInteractiveCanvasController;
- (CRLCanvasViewAccessibility)crlaxCanvasContainerView;
- (NSArray)crlaxMiniFormatterElements;
- (NSArray)crlaxTopLevelReps;
- (NSArray)crlaxTopLevelRepsOmittingMiniFormatterElements;
- (NSSet)crlaxAllReps;
- (UIView)crlaxMiniFormatterView;
- (double)crlaxViewScale;
- (id)_adjustRepOrderForMiniFormatterWith:(id)with forResults:(id)results withFormatterViews:(id)views;
- (id)_crlaxMiniFormatterVC;
- (void)crlaxPreventReloadingChildren;
- (void)crlaxRevertReloadingChildrenTo:(BOOL)to andReloadForChanges:(BOOL)changes;
- (void)i_registerRep:(id)rep;
- (void)i_unregisterRep:(id)rep;
- (void)teardown;
@end

@implementation CRLCanvasAccessibility

- (BOOL)p_updateRepsFromLayouts
{
  v7.receiver = self;
  v7.super_class = CRLCanvasAccessibility;
  p_updateRepsFromLayouts = [(CRLCanvasAccessibility *)&v7 p_updateRepsFromLayouts];
  if (p_updateRepsFromLayouts)
  {
    crlaxInteractiveCanvasController = [(CRLCanvasAccessibility *)self crlaxInteractiveCanvasController];
    crlaxCanvasView = [crlaxInteractiveCanvasController crlaxCanvasView];
    [crlaxCanvasView crlaxInvalidateChildren];
  }

  return p_updateRepsFromLayouts;
}

- (void)i_registerRep:(id)rep
{
  v6.receiver = self;
  v6.super_class = CRLCanvasAccessibility;
  [(CRLCanvasAccessibility *)&v6 i_registerRep:rep];
  crlaxInteractiveCanvasController = [(CRLCanvasAccessibility *)self crlaxInteractiveCanvasController];
  crlaxCanvasView = [crlaxInteractiveCanvasController crlaxCanvasView];
  [crlaxCanvasView crlaxInvalidateChildren];
}

- (void)i_unregisterRep:(id)rep
{
  repCopy = rep;
  crlaxInteractiveCanvasController = [(CRLCanvasAccessibility *)self crlaxInteractiveCanvasController];
  crlaxCanvasView = [crlaxInteractiveCanvasController crlaxCanvasView];
  crlaxShouldPreventReloadingChildren = [crlaxCanvasView crlaxShouldPreventReloadingChildren];

  crlaxInteractiveCanvasController2 = [(CRLCanvasAccessibility *)self crlaxInteractiveCanvasController];
  crlaxCanvasView2 = [crlaxInteractiveCanvasController2 crlaxCanvasView];
  [crlaxCanvasView2 crlaxSetShouldPreventReloadingChildren:1];

  crlaxInteractiveCanvasController3 = [(CRLCanvasAccessibility *)self crlaxInteractiveCanvasController];
  crlaxCanvasView3 = [crlaxInteractiveCanvasController3 crlaxCanvasView];
  [crlaxCanvasView3 crlaxInvalidateChildren];

  v14.receiver = self;
  v14.super_class = CRLCanvasAccessibility;
  [(CRLCanvasAccessibility *)&v14 i_unregisterRep:repCopy];

  crlaxInteractiveCanvasController4 = [(CRLCanvasAccessibility *)self crlaxInteractiveCanvasController];
  crlaxCanvasView4 = [crlaxInteractiveCanvasController4 crlaxCanvasView];
  [crlaxCanvasView4 crlaxSetShouldPreventReloadingChildren:crlaxShouldPreventReloadingChildren];
}

- (BOOL)crlaxIsPreventingReloadingChildren
{
  v8 = 0;
  crlaxCanvasContainerView = [(CRLCanvasAccessibility *)self crlaxCanvasContainerView];
  v3 = objc_opt_class();
  v4 = __CRLAccessibilityCastAsClass(v3, crlaxCanvasContainerView, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v5 = v4;

  if (v5)
  {
    crlaxShouldPreventReloadingChildren = [v5 crlaxShouldPreventReloadingChildren];
  }

  else
  {
    crlaxShouldPreventReloadingChildren = 0;
  }

  return crlaxShouldPreventReloadingChildren;
}

- (void)crlaxPreventReloadingChildren
{
  v8.receiver = self;
  v8.super_class = CRLCanvasAccessibility;
  [(CRLCanvasAccessibility *)&v8 crlaxPreventReloadingChildren];
  v7 = 0;
  crlaxCanvasContainerView = [(CRLCanvasAccessibility *)self crlaxCanvasContainerView];
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsClass(v4, crlaxCanvasContainerView, 1, &v7);
  if (v7 == 1)
  {
    abort();
  }

  v6 = v5;

  [v6 crlaxSetShouldPreventReloadingChildren:1];
}

- (void)crlaxRevertReloadingChildrenTo:(BOOL)to andReloadForChanges:(BOOL)changes
{
  changesCopy = changes;
  toCopy = to;
  v12.receiver = self;
  v12.super_class = CRLCanvasAccessibility;
  [CRLCanvasAccessibility crlaxRevertReloadingChildrenTo:"crlaxRevertReloadingChildrenTo:andReloadForChanges:" andReloadForChanges:?];
  v11 = 0;
  crlaxCanvasContainerView = [(CRLCanvasAccessibility *)self crlaxCanvasContainerView];
  v8 = objc_opt_class();
  v9 = __CRLAccessibilityCastAsClass(v8, crlaxCanvasContainerView, 1, &v11);
  if (v11 == 1)
  {
    abort();
  }

  v10 = v9;

  [v10 crlaxSetShouldPreventReloadingChildren:toCopy];
  if (changesCopy && !toCopy)
  {
    [v10 crlaxInvalidateChildren];
  }
}

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (CRLCanvasInteractiveCanvasControllerAccessibility)crlaxInteractiveCanvasController
{
  v8 = 0;
  crlaxTarget = [(CRLCanvasAccessibility *)self crlaxTarget];
  canvasController = [crlaxTarget canvasController];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, canvasController, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (BOOL)crlaxIsDoingLayout
{
  crlaxTarget = [(CRLCanvasAccessibility *)self crlaxTarget];
  i_inLayout = [crlaxTarget i_inLayout];

  return i_inLayout;
}

- (NSArray)crlaxMiniFormatterElements
{
  _crlaxMiniFormatterVC = [(CRLCanvasAccessibility *)self _crlaxMiniFormatterVC];
  crlaxAccessibilityViews = [_crlaxMiniFormatterVC crlaxAccessibilityViews];

  return crlaxAccessibilityViews;
}

- (NSArray)crlaxTopLevelReps
{
  crlaxTopLevelRepsOmittingMiniFormatterElements = [(CRLCanvasAccessibility *)self crlaxTopLevelRepsOmittingMiniFormatterElements];
  _crlaxMiniFormatterVC = [(CRLCanvasAccessibility *)self _crlaxMiniFormatterVC];
  crlaxCurrentPresentedRep = [_crlaxMiniFormatterVC crlaxCurrentPresentedRep];
  crlaxAccessibilityViews = [_crlaxMiniFormatterVC crlaxAccessibilityViews];
  v7 = [(CRLCanvasAccessibility *)self _adjustRepOrderForMiniFormatterWith:crlaxCurrentPresentedRep forResults:crlaxTopLevelRepsOmittingMiniFormatterElements withFormatterViews:crlaxAccessibilityViews];

  return v7;
}

- (id)_adjustRepOrderForMiniFormatterWith:(id)with forResults:(id)results withFormatterViews:(id)views
{
  withCopy = with;
  resultsCopy = results;
  viewsCopy = views;
  v10 = +[NSMutableArray array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = resultsCopy;
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
        if (v15 == withCopy)
        {
          [v10 addObject:?];
          [v10 addObjectsFromArray:viewsCopy];
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

          allRepsContainedInGroup = [v19 allRepsContainedInGroup];
          v21 = [allRepsContainedInGroup containsObject:withCopy];

          [v10 addObject:v16];
          if (v21)
          {
            [v10 addObjectsFromArray:viewsCopy];
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
  crlaxInteractiveCanvasController = [(CRLCanvasAccessibility *)self crlaxInteractiveCanvasController];
  crlaxCurrentlyWaitingOnThreadedLayoutAndRender = [crlaxInteractiveCanvasController crlaxCurrentlyWaitingOnThreadedLayoutAndRender];

  if (crlaxCurrentlyWaitingOnThreadedLayoutAndRender)
  {
    allReps = 0;
  }

  else
  {
    crlaxTarget = [(CRLCanvasAccessibility *)self crlaxTarget];
    allReps = [crlaxTarget allReps];
  }

  return allReps;
}

- (CRLCanvasViewAccessibility)crlaxCanvasContainerView
{
  crlaxInteractiveCanvasController = [(CRLCanvasAccessibility *)self crlaxInteractiveCanvasController];
  crlaxCanvasView = [crlaxInteractiveCanvasController crlaxCanvasView];

  return crlaxCanvasView;
}

- (CGRect)crlaxScreenFrameFromUnscaledCanvas:(CGRect)canvas
{
  [(CRLCanvasAccessibility *)self crlaxConvertUnscaledToBoundsRect:canvas.origin.x, canvas.origin.y, canvas.size.width, canvas.size.height];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  crlaxCanvasContainerView = [(CRLCanvasAccessibility *)self crlaxCanvasContainerView];
  [crlaxCanvasContainerView crlaxFrameFromBounds:{v5, v7, v9, v11}];
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

- (CGPoint)crlaxScreenPointFromUnscaledCanvas:(CGPoint)canvas
{
  y = canvas.y;
  x = canvas.x;
  crlaxInteractiveCanvasController = [(CRLCanvasAccessibility *)self crlaxInteractiveCanvasController];
  crlaxCanvasView = [crlaxInteractiveCanvasController crlaxCanvasView];
  [crlaxInteractiveCanvasController crlaxConvertUnscaledToBoundsPoint:{x, y}];
  [crlaxCanvasView crlaxFramePointFromBoundsPoint:?];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGRect)crlaxConvertUnscaledToBoundsRect:(CGRect)rect
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
  rectCopy = rect;
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
  crlaxTarget = [(CRLCanvasAccessibility *)self crlaxTarget];
  [crlaxTarget viewScale];
  v4 = v3;

  return v4;
}

- (UIView)crlaxMiniFormatterView
{
  _crlaxMiniFormatterVC = [(CRLCanvasAccessibility *)self _crlaxMiniFormatterVC];
  view = [_crlaxMiniFormatterVC view];

  return view;
}

- (NSArray)crlaxTopLevelRepsOmittingMiniFormatterElements
{
  crlaxInteractiveCanvasController = [(CRLCanvasAccessibility *)self crlaxInteractiveCanvasController];
  crlaxCurrentlyWaitingOnThreadedLayoutAndRender = [crlaxInteractiveCanvasController crlaxCurrentlyWaitingOnThreadedLayoutAndRender];

  if (crlaxCurrentlyWaitingOnThreadedLayoutAndRender)
  {
    topLevelReps = 0;
  }

  else
  {
    crlaxTarget = [(CRLCanvasAccessibility *)self crlaxTarget];
    topLevelReps = [crlaxTarget topLevelReps];
  }

  return topLevelReps;
}

- (void)teardown
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  crlaxAllReps = [(CRLCanvasAccessibility *)self crlaxAllReps];
  v4 = [crlaxAllReps countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(crlaxAllReps);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 _crlaxSetShouldPreventAccessToCanvas:1];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [crlaxAllReps countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  crlaxTarget = [(CRLCanvasAccessibility *)self crlaxTarget];
  delegate = [crlaxTarget delegate];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsClass(v4, delegate, 1, &v22);
  if (v22 == 1)
  {
    goto LABEL_10;
  }

  v6 = v5;

  v21 = 0;
  canvasView = [v6 canvasView];
  nextResponder = [canvasView nextResponder];

  v9 = objc_opt_class();
  v10 = __CRLAccessibilityCastAsClass(v9, nextResponder, 1, &v21);
  if (v21 == 1)
  {
    goto LABEL_10;
  }

  v11 = v10;

  miniFormatterPresenter = [v11 miniFormatterPresenter];
  isPresentingMiniFormatter = [miniFormatterPresenter isPresentingMiniFormatter];

  if (isPresentingMiniFormatter)
  {
    v20 = 0;
    miniFormatterPresenter2 = [v11 miniFormatterPresenter];
    crlaxMiniFormatterViewController = [miniFormatterPresenter2 crlaxMiniFormatterViewController];

    v16 = objc_opt_class();
    v17 = __CRLAccessibilityCastAsClass(v16, crlaxMiniFormatterViewController, 1, &v20);
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