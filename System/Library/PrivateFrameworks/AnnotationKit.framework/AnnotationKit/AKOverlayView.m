@interface AKOverlayView
+ (void)initialize;
- (AKMainEventHandler)mainEventHandler;
- (AKOverlayView)initWithPageController:(id)a3;
- (AKPageController)pageController;
- (BOOL)_hasResizeHandleAtLocation:(CGPoint)a3;
- (BOOL)_isEditingTextBoxAnnotation;
- (BOOL)_scribbleInteraction:(id)a3 shouldBeginAtLocation:(CGPoint)a4;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (CGRect)_findResizeHandleRectAtLocation:(CGPoint)a3 withVisualStyle:(id *)a4;
- (CGRect)_scribbleInteraction:(id)a3 frameForElement:(id)a4;
- (UIEdgeInsets)_scribbleInteraction:(id)a3 hitToleranceInsetsForElement:(id)a4 defaultInsets:(UIEdgeInsets)a5;
- (id)_liftOffHandleViewForRegion:(id)a3;
- (id)_liftOffHandleViewInFrame:(CGRect)a3 withPointStyle:(unint64_t)a4;
- (id)_singleSelectedAnnotation;
- (id)annotationController;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)keyCommands;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)_addLiftOffHandleViewForRegion:(id)a3;
- (void)_postScrollViewRectChangedNotification;
- (void)_postScrollViewScrollOrMagnifyEndNotification;
- (void)_removeAllLiftOffHandleViews;
- (void)_removeLiftOffHandleViewForRegion:(id)a3;
- (void)_scribbleInteraction:(id)a3 focusElement:(id)a4 initialFocusSelectionReferencePoint:(CGPoint)a5 completion:(id)a6;
- (void)_scribbleInteraction:(id)a3 requestElementsInRect:(CGRect)a4 completion:(id)a5;
- (void)_scrollViewDidEndAnimation:(id)a3;
- (void)_scrollViewDidEndDecelerating:(id)a3;
- (void)_scrollViewDidEndDragging:(id)a3;
- (void)_scrollViewDidScrollToTop:(id)a3;
- (void)_setupObservation;
- (void)_startObservingAnnotationEventHandlers;
- (void)_stopObservingAnnotationEventHandlers;
- (void)_teardownObservation;
- (void)_updateLayersUsingScrollViewWithForcedUpdate:(BOOL)a3 dismissSelectionMenu:(BOOL)a4;
- (void)_wasMovedToNewSuperview;
- (void)_willEndLiveMagnify:(id)a3;
- (void)_willStartLiveMagnify:(id)a3;
- (void)copy:(id)a3;
- (void)cut:(id)a3;
- (void)dealloc;
- (void)delete:(id)a3;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)duplicate:(id)a3;
- (void)editTextAnnotation:(id)a3;
- (void)layoutSublayersOfLayer:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)paste:(id)a3;
- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5;
- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation AKOverlayView

+ (void)initialize
{
  if (qword_280AC71B8 != -1)
  {
    sub_23F4BD5A4();
  }
}

- (AKOverlayView)initWithPageController:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = AKOverlayView;
  v5 = [(AKOverlayView *)&v16 init];
  v6 = v5;
  if (v5)
  {
    [(AKOverlayView *)v5 setPageController:v4];
    v7 = [v4 controller];
    v8 = [v7 mainEventHandler];
    [(AKOverlayView *)v6 setMainEventHandler:v8];

    v9 = [v4 layerPresentationManager];
    v10 = [v9 rootLayer];

    v11 = [(AKOverlayView *)v6 layer];
    [v11 addSublayer:v10];

    [(AKOverlayView *)v6 setUserInteractionEnabled:0];
    v12 = objc_alloc_init(MEMORY[0x277CD9660]);
    [v12 setDelegate:v6];
    [v12 setElementSource:v6];
    [(AKOverlayView *)v6 addInteraction:v12];
    v13 = [objc_alloc(MEMORY[0x277D75870]) initWithDelegate:v6];
    [(AKOverlayView *)v6 setPointerInteraction:v13];

    v14 = [(AKOverlayView *)v6 pointerInteraction];
    [(AKOverlayView *)v6 addInteraction:v14];
  }

  return v6;
}

- (void)dealloc
{
  [(AKOverlayView *)self _teardownObservation];
  v3.receiver = self;
  v3.super_class = AKOverlayView;
  [(AKOverlayView *)&v3 dealloc];
}

- (void)willMoveToSuperview:(id)a3
{
  v4 = a3;
  [(AKOverlayView *)self _willRemoveFromOldSuperview];
  v5.receiver = self;
  v5.super_class = AKOverlayView;
  [(AKOverlayView *)&v5 willMoveToSuperview:v4];
}

- (void)didMoveToSuperview
{
  v5.receiver = self;
  v5.super_class = AKOverlayView;
  [(AKOverlayView *)&v5 didMoveToSuperview];
  v3 = [(AKOverlayView *)self superview];

  if (v3)
  {
    v4 = [(AKOverlayView *)self window];

    if (v4)
    {
      [(AKOverlayView *)self _wasMovedToNewSuperview];
    }

    else
    {
      [(AKOverlayView *)self setDeferWasMovedToSuperviewUntilMoveToWindow:1];
    }
  }
}

- (void)didMoveToWindow
{
  v3 = [(AKOverlayView *)self window];

  if (v3 && [(AKOverlayView *)self deferWasMovedToSuperviewUntilMoveToWindow])
  {
    [(AKOverlayView *)self setDeferWasMovedToSuperviewUntilMoveToWindow:0];

    [(AKOverlayView *)self _wasMovedToNewSuperview];
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v40 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v38.receiver = self;
  v38.super_class = AKOverlayView;
  v8 = [(AKOverlayView *)&v38 hitTest:v7 withEvent:x, y];
  v9 = [(AKOverlayView *)self pageController];
  v10 = [v9 controller];
  v11 = v10;
  if (!v8)
  {
    v12 = [v10 textEditorController];
    v13 = [v12 textView];

    if (!v13 || (-[AKOverlayView convertPoint:toView:](self, "convertPoint:toView:", v13, x, y), v15 = v14, v17 = v16, ![v13 pointInside:v7 withEvent:?]) || (objc_msgSend(v13, "hitTest:withEvent:", v7, v15, v17), (v8 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v33 = v13;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v18 = [(AKOverlayView *)self subviews];
      v19 = [v18 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v35;
LABEL_7:
        v22 = 0;
        while (1)
        {
          if (*v35 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v34 + 1) + 8 * v22);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            break;
          }

          if (v20 == ++v22)
          {
            v20 = [v18 countByEnumeratingWithState:&v34 objects:v39 count:16];
            if (v20)
            {
              goto LABEL_7;
            }

            goto LABEL_13;
          }
        }

        v24 = v23;

        if (!v24)
        {
          goto LABEL_17;
        }

        [(AKOverlayView *)self convertPoint:v24 toView:x, y];
        v26 = v25;
        v28 = v27;
        v13 = v33;
        if ([v24 pointInside:v7 withEvent:?])
        {
          v8 = [v24 hitTest:v7 withEvent:{v26, v28}];
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
LABEL_13:

        v24 = 0;
LABEL_17:
        v8 = 0;
        v13 = v33;
      }
    }
  }

  v29 = [v11 overlayInteractionDelegate];
  v30 = v29;
  if (v8)
  {
    v31 = v29 == 0;
  }

  else
  {
    v31 = 1;
  }

  if (!v31 && ([v29 annotationController:v11 shouldAllowOverlayHitTestAtPoint:self forOverlayView:v8 currentHitTest:{x, y}] & 1) == 0)
  {

    v8 = 0;
  }

  return v8;
}

- (void)_startObservingAnnotationEventHandlers
{
  if (![(AKOverlayView *)self isObservingEventHandling])
  {
    v5 = [(AKOverlayView *)self pageController];
    v3 = [v5 controller];
    v4 = [v3 mainEventHandler];
    [v4 addObserver:self forKeyPath:@"annotationEventHandler" options:0 context:@"AKOverlayView.eventHandlingObservationContext"];
    [(AKOverlayView *)self setIsObservingEventHandling:1];
  }
}

- (void)_stopObservingAnnotationEventHandlers
{
  if ([(AKOverlayView *)self isObservingEventHandling])
  {
    v5 = [(AKOverlayView *)self pageController];
    v3 = [v5 controller];
    v4 = [v3 mainEventHandler];
    [v4 removeObserver:self forKeyPath:@"annotationEventHandler" context:@"AKOverlayView.eventHandlingObservationContext"];
    [(AKOverlayView *)self setIsObservingEventHandling:0];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(AKOverlayView *)self pageController];
  v14 = [v13 controller];

  if (a6 == @"AKOverlayView.contentViewMagnificationObservationContext")
  {
    [(AKOverlayView *)self _updateLayersUsingScrollView];
    [(AKOverlayView *)self _postScrollViewRectChangedNotification];
    goto LABEL_27;
  }

  if (a6 == @"AKOverlayView.overlayViewSizeObservationContext")
  {
    v15 = [v12 objectForKey:*MEMORY[0x277CCA300]];
    v16 = [v12 objectForKey:*MEMORY[0x277CCA2F0]];
    [v15 akRectValue];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    [v16 akRectValue];
    v44.origin.x = v25;
    v44.origin.y = v26;
    v28 = v27;
    v30 = v29;
    v43.origin.x = v18;
    v43.origin.y = v20;
    v43.size.width = v22;
    v43.size.height = v24;
    v44.size.width = v28;
    v44.size.height = v30;
    if (CGRectEqualToRect(v43, v44))
    {
LABEL_23:

      goto LABEL_27;
    }

    if (v22 == v28 && v24 == v30)
    {
LABEL_22:
      [(AKOverlayView *)self _postScrollViewRectChangedNotification];
      goto LABEL_23;
    }

LABEL_21:
    [(AKOverlayView *)self _updateLayersUsingScrollViewWithForcedUpdate:1];
    goto LABEL_22;
  }

  if (a6 == @"AKOverlayView.contentViewContentSizeObservationContext")
  {
    v15 = [v12 objectForKey:*MEMORY[0x277CCA300]];
    v16 = [v12 objectForKey:*MEMORY[0x277CCA2F0]];
    [v15 akSizeValue];
    v33 = v32;
    v35 = v34;
    [v16 akSizeValue];
    if (v33 == v37 && v35 == v36)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (a6 == @"AKOverlayView.controllerAnnotationEditingContext")
  {
    v39 = [v14 annotationEditingEnabled];
LABEL_26:
    v40 = v39;
    v41 = [(AKOverlayView *)self pointerInteraction];
    [v41 setEnabled:v40];

    goto LABEL_27;
  }

  if (a6 == @"AKOverlayView.controllerFormFillingContext")
  {
    v39 = [v14 formFillingEnabled];
    goto LABEL_26;
  }

  if (a6 == @"AKOverlayView.eventHandlingObservationContext")
  {
    [(AKOverlayView *)self _removeAllLiftOffHandleViews];
  }

  else if (a6 != @"AKOverlayView.selectedAnnotationsContext")
  {
    v42.receiver = self;
    v42.super_class = AKOverlayView;
    [(AKOverlayView *)&v42 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }

LABEL_27:
}

- (void)layoutSublayersOfLayer:(id)a3
{
  v8 = a3;
  v4 = [(AKOverlayView *)self layer];

  if (v4 == v8)
  {
    v5 = [(AKOverlayView *)self pageController];
    v6 = [v5 layerPresentationManager];
    v7 = [v6 rootLayer];

    [v8 bounds];
    [v7 setFrame:?];
  }
}

- (id)keyCommands
{
  v2 = [(AKOverlayView *)self annotationController];
  v3 = [v2 keyCommandsForAnnotations];

  return v3;
}

- (id)annotationController
{
  v2 = [(AKOverlayView *)self pageController];
  v3 = [v2 controller];

  return v3;
}

- (void)cut:(id)a3
{
  v4 = a3;
  v5 = [(AKOverlayView *)self annotationController];
  [v5 cut:v4];
}

- (void)copy:(id)a3
{
  v4 = a3;
  v5 = [(AKOverlayView *)self annotationController];
  [v5 copy:v4];
}

- (void)paste:(id)a3
{
  v4 = a3;
  v5 = [(AKOverlayView *)self annotationController];
  [v5 paste:v4];
}

- (void)delete:(id)a3
{
  v4 = a3;
  v5 = [(AKOverlayView *)self annotationController];
  [v5 delete:v4];
}

- (void)duplicate:(id)a3
{
  v4 = a3;
  v5 = [(AKOverlayView *)self annotationController];
  [v5 duplicate:v4];
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v7 = [(AKOverlayView *)self annotationController];
  v8 = [v7 textEditorController];
  v9 = [v8 textView];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v9 isBlockedAction:a3])
  {
    goto LABEL_3;
  }

  v18 = 0;
  v11 = [v7 canPerformKeyCommandAction:a3 withSender:v6 handled:&v18];
  if (v18)
  {
LABEL_22:
    v10 = v11;
    goto LABEL_23;
  }

  v12 = [MEMORY[0x277D75718] sharedMenuController];
  v13 = v12;
  if (v12 == v6)
  {
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v16.receiver = self;
      v16.super_class = AKOverlayView;
      v11 = [(AKOverlayView *)&v16 canPerformAction:a3 withSender:v6];
      goto LABEL_22;
    }
  }

  if (sel_editTextAnnotation_ == a3)
  {
    v11 = [v7 validateEditTextAnnotation:v6];
    goto LABEL_22;
  }

  if (sel_duplicate_ == a3)
  {
    v11 = [v7 validateDuplicate:v6];
    goto LABEL_22;
  }

  if (sel_delete_ == a3)
  {
    v11 = [v7 validateDelete:v6];
    goto LABEL_22;
  }

  if (sel_cut_ == a3)
  {
    v11 = [v7 validateCut:v6];
    goto LABEL_22;
  }

  if (sel_copy_ == a3)
  {
    v11 = [v7 validateCopy:v6];
    goto LABEL_22;
  }

  if (sel_paste_ != a3)
  {
    v17.receiver = self;
    v17.super_class = AKOverlayView;
    v11 = [(AKOverlayView *)&v17 canPerformAction:a3 withSender:v6];
    goto LABEL_22;
  }

LABEL_3:
  v10 = 0;
LABEL_23:

  return v10;
}

- (void)editTextAnnotation:(id)a3
{
  v6 = a3;
  v4 = [(AKOverlayView *)self pageController];
  v5 = [v4 controller];
  if ([v5 validateEditTextAnnotation:v6])
  {
    [v5 editTextAnnotation:v6];
  }
}

- (id)_singleSelectedAnnotation
{
  v2 = [(AKOverlayView *)self pageController];
  v3 = [v2 controller];
  v4 = [v3 modelController];
  v5 = [v4 allSelectedAnnotations];

  if ([v5 count] == 1)
  {
    v6 = [v5 firstObject];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_postScrollViewRectChangedNotification
{
  v2 = MEMORY[0x277CCAB88];
  v3 = [(AKOverlayView *)self observedScrollView];
  v5 = [v2 notificationWithName:@"AKOverlayView.AKContentScrollViewVisibleRectChangeNotification" object:v3];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotification:v5];
}

- (void)_postScrollViewScrollOrMagnifyEndNotification
{
  v2 = MEMORY[0x277CCAB88];
  v3 = [(AKOverlayView *)self observedScrollView];
  v5 = [v2 notificationWithName:@"AKOverlayView.AKContentScrollViewEndScrollOrMagnifyNotification" object:v3];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotification:v5];
}

- (void)_updateLayersUsingScrollViewWithForcedUpdate:(BOOL)a3 dismissSelectionMenu:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(AKOverlayView *)self window];

  if (v7)
  {
    v8 = [(AKOverlayView *)self observedScrollView];
    v9 = [v8 isZooming];

    v10 = [(AKOverlayView *)self scrollViewIsInLiveMagnify];
    v11 = [(AKOverlayView *)self observedScrollView];
    v12 = 1.0;
    if (v11)
    {
      v13 = v11;
      v14 = [(AKOverlayView *)self observedScrollView];
      v15 = [v14 window];

      if (v15)
      {
        v16 = [(AKOverlayView *)self observedScrollView];
        [v16 zoomScale];
        v12 = v17;
      }
    }

    v19 = [(AKOverlayView *)self pageController];
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    [v19 updateScaleFactor:v9 | v10 isLiveUpdate:v5 forceUpdate:v12];
    [MEMORY[0x277CD9FF0] commit];
    if (v4)
    {
      v18 = [v19 controller];
      [v18 hideSelectionMenu:0];
    }
  }
}

- (void)_setupObservation
{
  if (![(AKOverlayView *)self isObserving])
  {
    [(AKOverlayView *)self setIsObserving:1];
    [(AKOverlayView *)self _startObservingAnnotationEventHandlers];
    v3 = [(UIView *)self akEnclosingScrollView];
    [(AKOverlayView *)self setObservedScrollView:v3];

    v4 = [(AKOverlayView *)self observedScrollView];

    if (v4)
    {
      v5 = [(AKOverlayView *)self observedScrollView];
      [v5 addObserver:self forKeyPath:@"contentSize" options:3 context:@"AKOverlayView.contentViewContentSizeObservationContext"];

      [(AKOverlayView *)self addObserver:self forKeyPath:@"pageController.controller.annotationEditingEnabled" options:0 context:@"AKOverlayView.controllerAnnotationEditingContext"];
      [(AKOverlayView *)self addObserver:self forKeyPath:@"pageController.controller.formFillingEnabled" options:0 context:@"AKOverlayView.controllerFormFillingContext"];
      v6 = [MEMORY[0x277CCAB98] defaultCenter];
      v7 = [(AKOverlayView *)self observedScrollView];
      [v6 addObserver:self selector:sel__willStartLiveMagnify_ name:@"UITextSelectionWillZoom" object:v7];

      v8 = [MEMORY[0x277CCAB98] defaultCenter];
      v9 = [(AKOverlayView *)self observedScrollView];
      [v8 addObserver:self selector:sel__willEndLiveMagnify_ name:@"UITextSelectionDidZoom" object:v9];

      v10 = [MEMORY[0x277CCAB98] defaultCenter];
      v11 = *MEMORY[0x277D77560];
      v12 = [(AKOverlayView *)self observedScrollView];
      [v10 addObserver:self selector:sel__scrollViewDidEndDragging_ name:v11 object:v12];

      v13 = [MEMORY[0x277CCAB98] defaultCenter];
      v14 = *MEMORY[0x277D77558];
      v15 = [(AKOverlayView *)self observedScrollView];
      [v13 addObserver:self selector:sel__scrollViewDidEndDecelerating_ name:v14 object:v15];

      v16 = [MEMORY[0x277CCAB98] defaultCenter];
      v17 = [(AKOverlayView *)self observedScrollView];
      [v16 addObserver:self selector:sel__scrollViewDidEndAnimation_ name:@"_UIScrollViewAnimationEndedNotification" object:v17];

      v18 = [MEMORY[0x277CCAB98] defaultCenter];
      v19 = [(AKOverlayView *)self observedScrollView];
      [v18 addObserver:self selector:sel__scrollViewDidScrollToTop_ name:@"AKScrollViewDidScrollToTopNotification" object:v19];

      v20 = [(AKOverlayView *)self observedScrollView];
      [v20 addObserver:self forKeyPath:@"frame" options:3 context:@"AKOverlayView.overlayViewSizeObservationContext"];

      v21 = [(AKOverlayView *)self observedScrollView];
      [v21 addObserver:self forKeyPath:@"bounds" options:3 context:@"AKOverlayView.overlayViewSizeObservationContext"];

      [(AKOverlayView *)self addObserver:self forKeyPath:@"frame" options:3 context:@"AKOverlayView.overlayViewSizeObservationContext"];

      [(AKOverlayView *)self addObserver:self forKeyPath:@"bounds" options:3 context:@"AKOverlayView.overlayViewSizeObservationContext"];
    }

    else
    {
      NSLog(&cfstr_CouldnTFindAnE.isa);
    }
  }
}

- (void)_teardownObservation
{
  if ([(AKOverlayView *)self isObserving])
  {
    [(AKOverlayView *)self setIsObserving:0];
    [(AKOverlayView *)self _stopObservingAnnotationEventHandlers];
    v3 = [(AKOverlayView *)self observedScrollView];

    if (v3)
    {
      v4 = [(AKOverlayView *)self observedScrollView];
      [v4 removeObserver:self forKeyPath:@"contentSize" context:@"AKOverlayView.contentViewContentSizeObservationContext"];

      [(AKOverlayView *)self removeObserver:self forKeyPath:@"pageController.controller.annotationEditingEnabled" context:@"AKOverlayView.controllerAnnotationEditingContext"];
      [(AKOverlayView *)self removeObserver:self forKeyPath:@"pageController.controller.formFillingEnabled" context:@"AKOverlayView.controllerFormFillingContext"];
      v5 = [MEMORY[0x277CCAB98] defaultCenter];
      v6 = [(AKOverlayView *)self observedScrollView];
      [v5 removeObserver:self name:@"UITextSelectionWillZoom" object:v6];

      v7 = [MEMORY[0x277CCAB98] defaultCenter];
      v8 = [(AKOverlayView *)self observedScrollView];
      [v7 removeObserver:self name:@"UITextSelectionDidZoom" object:v8];

      v9 = [MEMORY[0x277CCAB98] defaultCenter];
      v10 = *MEMORY[0x277D77560];
      v11 = [(AKOverlayView *)self observedScrollView];
      [v9 removeObserver:self name:v10 object:v11];

      v12 = [MEMORY[0x277CCAB98] defaultCenter];
      v13 = *MEMORY[0x277D77558];
      v14 = [(AKOverlayView *)self observedScrollView];
      [v12 removeObserver:self name:v13 object:v14];

      v15 = [MEMORY[0x277CCAB98] defaultCenter];
      v16 = [(AKOverlayView *)self observedScrollView];
      [v15 removeObserver:self name:@"_UIScrollViewAnimationEndedNotification" object:v16];

      v17 = [MEMORY[0x277CCAB98] defaultCenter];
      v18 = [(AKOverlayView *)self observedScrollView];
      [v17 removeObserver:self name:@"AKScrollViewDidScrollToTopNotification" object:v18];

      v19 = [(AKOverlayView *)self observedScrollView];
      [v19 removeObserver:self forKeyPath:@"frame" context:@"AKOverlayView.overlayViewSizeObservationContext"];

      v20 = [(AKOverlayView *)self observedScrollView];
      [v20 removeObserver:self forKeyPath:@"bounds" context:@"AKOverlayView.overlayViewSizeObservationContext"];

      [(AKOverlayView *)self removeObserver:self forKeyPath:@"frame" context:@"AKOverlayView.overlayViewSizeObservationContext"];
      [(AKOverlayView *)self removeObserver:self forKeyPath:@"bounds" context:@"AKOverlayView.overlayViewSizeObservationContext"];

      [(AKOverlayView *)self setObservedScrollView:0];
    }
  }
}

- (void)_wasMovedToNewSuperview
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v3 = [(AKOverlayView *)self pageController];
  [v3 overlayWasAddedToSuperview];
  [(AKOverlayView *)self _setupObservation];
  [(AKOverlayView *)self _updateLayersUsingScrollView];
  [MEMORY[0x277CD9FF0] commit];
}

- (void)_willStartLiveMagnify:(id)a3
{
  v4 = [a3 object];
  v5 = [(AKOverlayView *)self observedScrollView];

  if (v4 == v5)
  {

    [(AKOverlayView *)self setScrollViewIsInLiveMagnify:1];
  }
}

- (void)_willEndLiveMagnify:(id)a3
{
  v4 = [a3 object];
  v5 = [(AKOverlayView *)self observedScrollView];

  if (v4 == v5)
  {
    [(AKOverlayView *)self setScrollViewIsInLiveMagnify:0];
    [(AKOverlayView *)self _updateLayersUsingScrollViewWithForcedUpdate:1 dismissSelectionMenu:0];

    [(AKOverlayView *)self _postScrollViewScrollOrMagnifyEndNotification];
  }
}

- (void)_scrollViewDidEndDragging:(id)a3
{
  v9 = a3;
  v4 = [v9 object];
  v5 = [(AKOverlayView *)self observedScrollView];

  if (v4 == v5)
  {
    v6 = [v9 userInfo];
    v7 = [v6 objectForKey:*MEMORY[0x277D77568]];
    v8 = [v7 BOOLValue];

    if ((v8 & 1) == 0)
    {
      [(AKOverlayView *)self _updateLayersUsingScrollViewWithForcedUpdate:1];
      [(AKOverlayView *)self _postScrollViewScrollOrMagnifyEndNotification];
    }
  }
}

- (void)_scrollViewDidEndDecelerating:(id)a3
{
  v4 = [a3 object];
  v5 = [(AKOverlayView *)self observedScrollView];

  if (v4 == v5)
  {
    [(AKOverlayView *)self _updateLayersUsingScrollViewWithForcedUpdate:1];

    [(AKOverlayView *)self _postScrollViewScrollOrMagnifyEndNotification];
  }
}

- (void)_scrollViewDidEndAnimation:(id)a3
{
  v4 = [a3 object];
  v5 = [(AKOverlayView *)self observedScrollView];

  if (v4 == v5)
  {
    [(AKOverlayView *)self _updateLayersUsingScrollViewWithForcedUpdate:1];

    [(AKOverlayView *)self _postScrollViewScrollOrMagnifyEndNotification];
  }
}

- (void)_scrollViewDidScrollToTop:(id)a3
{
  v4 = [a3 object];
  v5 = [(AKOverlayView *)self observedScrollView];

  if (v4 == v5)
  {
    [(AKOverlayView *)self _updateLayersUsingScrollViewWithForcedUpdate:1];

    [(AKOverlayView *)self _postScrollViewScrollOrMagnifyEndNotification];
  }
}

- (CGRect)_findResizeHandleRectAtLocation:(CGPoint)a3 withVisualStyle:(id *)a4
{
  y = a3.y;
  x = a3.x;
  v8 = [(AKOverlayView *)self _singleSelectedAnnotation];
  if (v8)
  {
    v9 = [(AKOverlayView *)self pageController];
    v42 = 0;
    v43 = 0;
    [AKAnnotationPointOfInterestHelper pointsOfInterest:&v43 withVisualStyle:&v42 ofAnnotation:v8 pageControllerForPixelAlignment:v9];
    v10 = v43;
    v11 = v42;
    v36 = 0;
    v37 = &v36;
    v38 = 0x4010000000;
    v39 = &unk_23F4DEFD5;
    v12 = *(MEMORY[0x277CBF3A0] + 16);
    v40 = *MEMORY[0x277CBF3A0];
    v41 = v12;
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = sub_23F48CC88;
    v34 = sub_23F48CC98;
    v35 = 0;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_23F48CCA0;
    v23[3] = &unk_278C7C280;
    v13 = v9;
    v24 = v13;
    v14 = v11;
    v28 = x;
    v29 = y;
    v25 = v14;
    v26 = &v36;
    v27 = &v30;
    [v10 enumerateObjectsUsingBlock:v23];
    if (a4)
    {
      *a4 = v31[5];
    }

    v15 = v37[4];
    v16 = v37[5];
    v17 = v37[6];
    v18 = v37[7];

    _Block_object_dispose(&v30, 8);
    _Block_object_dispose(&v36, 8);
  }

  else
  {
    v15 = *MEMORY[0x277CBF398];
    v16 = *(MEMORY[0x277CBF398] + 8);
    v17 = *(MEMORY[0x277CBF398] + 16);
    v18 = *(MEMORY[0x277CBF398] + 24);
  }

  v19 = v15;
  v20 = v16;
  v21 = v17;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (BOOL)_hasResizeHandleAtLocation:(CGPoint)a3
{
  v14 = 0;
  [(AKOverlayView *)self _findResizeHandleRectAtLocation:&v14 withVisualStyle:a3.x, a3.y];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v14;
  v15.origin.x = v4;
  v15.origin.y = v6;
  v15.size.width = v8;
  v15.size.height = v10;
  v12 = 0;
  if (!CGRectIsEmpty(v15) && v11)
  {
    v12 = [v11 integerValue] < 2;
  }

  return v12;
}

- (id)_liftOffHandleViewInFrame:(CGRect)a3 withPointStyle:(unint64_t)a4
{
  if (a4 <= 1)
  {
    height = a3.size.height;
    width = a3.size.width;
    y = a3.origin.y;
    x = a3.origin.x;
    v11 = [(AKOverlayView *)self _singleSelectedAnnotation];
    if (v11)
    {
      v12 = [(AKOverlayView *)self pageController];
      v13 = [v12 layerPresentationManager];
      v14 = [v13 adornmentLayerForAnnotation:v11];

      if (v14)
      {
        v15 = [v14 handleSublayerWithStyle:a4];
        v4 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{x, y, width, height}];
        v16 = [v4 layer];
        [v16 addSublayer:v15];

        [v4 bounds];
        v17 = v24.origin.x;
        v18 = v24.origin.y;
        v19 = v24.size.width;
        v20 = v24.size.height;
        MidX = CGRectGetMidX(v24);
        v25.origin.x = v17;
        v25.origin.y = v18;
        v25.size.width = v19;
        v25.size.height = v20;
        [v15 setPosition:{MidX, CGRectGetMidY(v25)}];
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_liftOffHandleViewForRegion:(id)a3
{
  v4 = a3;
  v5 = [(AKOverlayView *)self pointerRegionToHandleViewDict];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)_addLiftOffHandleViewForRegion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v14 = v4;
    v5 = [(AKOverlayView *)self pointerRegionToHandleViewDict];

    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [(AKOverlayView *)self setPointerRegionToHandleViewDict:v6];
    }

    v7 = [(AKOverlayView *)self pointerRegionToHandleViewDict];
    v8 = [v7 objectForKey:v14];

    if (!v8)
    {
      v9 = [v14 identifier];
      v10 = v9;
      if (v9)
      {
        v11 = [v9 integerValue];
        if (v11 <= 1)
        {
          v12 = v11;
          [v14 rect];
          v13 = [(AKOverlayView *)self _liftOffHandleViewInFrame:v12 withPointStyle:?];
          if (v13)
          {
            [(AKOverlayView *)self addSubview:v13];
            [v7 setObject:v13 forKey:v14];
          }
        }
      }
    }

    v4 = v14;
  }
}

- (void)_removeAllLiftOffHandleViews
{
  v2 = [(AKOverlayView *)self pointerRegionToHandleViewDict];
  if (v2)
  {
    v3 = v2;
    [v2 enumerateKeysAndObjectsUsingBlock:&unk_28519E7D0];
    [v3 removeAllObjects];
    v2 = v3;
  }
}

- (void)_removeLiftOffHandleViewForRegion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    v5 = [(AKOverlayView *)self pointerRegionToHandleViewDict];
    v6 = [v5 objectForKey:v8];
    v7 = v6;
    if (v6)
    {
      [v6 removeFromSuperview];
      [v5 removeObjectForKey:v8];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (BOOL)_scribbleInteraction:(id)a3 shouldBeginAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(AKOverlayView *)self _isEditingTextBoxAnnotation];
  if (v7)
  {
    LOBYTE(v7) = ![(AKOverlayView *)self _hasResizeHandleAtLocation:x, y];
  }

  return v7;
}

- (BOOL)_isEditingTextBoxAnnotation
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [(AKOverlayView *)self pageController];
  v3 = [v2 controller];

  if ([v3 annotationEditingEnabled])
  {
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    v4 = [v3 modelController];
    v5 = [v4 allSelectedAnnotations];

    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v5);
          }

          objc_opt_class();
          v8 |= objc_opt_isKindOfClass();
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

- (UIEdgeInsets)_scribbleInteraction:(id)a3 hitToleranceInsetsForElement:(id)a4 defaultInsets:(UIEdgeInsets)a5
{
  v5 = a5.top + -30.0;
  v6 = a5.bottom + -30.0;
  v7 = a5.left + -100.0;
  v8 = a5.right + -100.0;
  result.right = v8;
  result.bottom = v6;
  result.left = v7;
  result.top = v5;
  return result;
}

- (void)_scribbleInteraction:(id)a3 requestElementsInRect:(CGRect)a4 completion:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = [(AKOverlayView *)self pageController];
  v8 = [v7 controller];

  v9 = [v8 textEditorController];
  v10 = [v9 annotation];
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  if ([v8 annotationEditingEnabled])
  {
    v22 = v9;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = [v8 modelController];
    v13 = [v12 allSelectedAnnotations];

    v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        v17 = 0;
        do
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v23 + 1) + 8 * v17);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && ([v18 editingDisabled] & 1) == 0)
          {
            v19 = [v18 UUID];
            [v11 addObject:v19];
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v15);
    }

    v9 = v22;
  }

  if (v10)
  {
    v20 = [v10 UUID];
    v21 = [v11 indexOfObject:v20];
  }

  else
  {
    v21 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v6[2](v6, v11, v21);
}

- (CGRect)_scribbleInteraction:(id)a3 frameForElement:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(AKOverlayView *)self pageController];
  v7 = [v6 controller];
  v8 = *MEMORY[0x277CBF398];
  v9 = *(MEMORY[0x277CBF398] + 8);
  v10 = *(MEMORY[0x277CBF398] + 16);
  v11 = *(MEMORY[0x277CBF398] + 24);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v12 = [v7 modelController];
  v13 = [v12 allSelectedAnnotations];

  v14 = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v34;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v34 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v33 + 1) + 8 * i);
        v19 = [v18 UUID];
        v20 = [v19 isEqual:v5];

        if (v20)
        {
          [v18 hitTestBounds];
          v8 = v21;
          v9 = v22;
          v10 = v23;
          v11 = v24;
          goto LABEL_11;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v39.origin.x = v8;
  v39.origin.y = v9;
  v39.size.width = v10;
  v39.size.height = v11;
  if (!CGRectIsNull(v39))
  {
    [v6 convertRectFromModelToOverlay:{v8, v9, v10, v11}];
    v8 = v25;
    v9 = v26;
    v10 = v27;
    v11 = v28;
  }

  v29 = v8;
  v30 = v9;
  v31 = v10;
  v32 = v11;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (void)_scribbleInteraction:(id)a3 focusElement:(id)a4 initialFocusSelectionReferencePoint:(CGPoint)a5 completion:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a6;
  v10 = [(AKOverlayView *)self pageController];
  v11 = [v10 controller];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = [v11 modelController];
  v13 = [v12 allSelectedAnnotations];

  v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v23 = v10;
    v16 = *v25;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v24 + 1) + 8 * i);
        v19 = [v18 UUID];
        v20 = [v19 isEqual:v8];

        if (v20)
        {
          v22 = [v11 textEditorController];
          v10 = v23;
          if (([v22 isEditing] & 1) == 0)
          {
            [v22 beginEditingAnnotation:v18 withPageController:v23 selectAllText:0 withPencil:1];
          }

          v21 = [v22 textView];

          goto LABEL_14;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }

    v21 = 0;
    v10 = v23;
  }

  else
  {
    v21 = 0;
  }

LABEL_14:

  v9[2](v9, v21);
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v7 = a5;
  [a4 location];
  v20 = 0;
  [(AKOverlayView *)self _findResizeHandleRectAtLocation:&v20 withVisualStyle:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v20;
  v22.origin.x = v9;
  v22.origin.y = v11;
  v22.size.width = v13;
  v22.size.height = v15;
  if (CGRectIsEmpty(v22))
  {
    v17 = v7;
  }

  else
  {
    v17 = [MEMORY[0x277D75880] regionWithRect:v16 identifier:{v9, v11, v13, v15}];
  }

  v18 = v17;

  return v18;
}

- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5
{
  if (a4)
  {
    MEMORY[0x2821F9670](self, sel__addLiftOffHandleViewForRegion_);
  }
}

- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(AKOverlayView *)self _liftOffHandleViewForRegion:v9];
  if (v11)
  {
    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_23F48DC68;
    v12[3] = &unk_278C7C2C8;
    objc_copyWeak(&v14, &location);
    v13 = v9;
    [v10 addCompletion:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v35[2] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 identifier];
  v7 = v6;
  if (!v6 || [v6 integerValue] > 1)
  {
    v8 = 0;
    goto LABEL_34;
  }

  v9 = [(AKOverlayView *)self _singleSelectedAnnotation];
  if (v9)
  {
    v10 = [(AKOverlayView *)self pageController];
    [v5 rect];
    [AKGeometryHelper centerOfRect:?];
    [v10 convertPointFromOverlayToModel:?];
    v12 = v11;
    v14 = v13;
    [v10 currentModelToScreenScaleFactor];
    v16 = [AKAnnotationPointOfInterestHelper draggableAreaForPoint:v9 onAnnotation:v10 withScale:v12 pageControllerForPixelAlignment:v14, v15];
    v8 = [MEMORY[0x277D75890] hiddenPointerStyle];
    if (!v16)
    {
      goto LABEL_32;
    }

    v17 = [(AKOverlayView *)self _liftOffHandleViewForRegion:v5];
    if (v17)
    {
      v18 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:v17];
      v19 = [MEMORY[0x277D75858] effectWithPreview:v18];
      v20 = [MEMORY[0x277D75890] styleWithEffect:v19 shape:0];

      v8 = v20;
    }

    if (v16 <= 8)
    {
      v21 = [v9 conformsToAKRotatableAnnotationProtocol];
      v22 = 0.0;
      if (v21)
      {
        [v9 rotationAngle];
      }

      v16 = ((v16 + vcvtad_u64_f64(v22 / 0.785398163) - 1) & 7) + 1;
    }

    if (v16 <= 4)
    {
      if (v16 <= 2)
      {
        if (v16 == 1)
        {
LABEL_25:
          v23 = [MEMORY[0x277D75850] arrowAccessoryWithPosition:{*MEMORY[0x277D76DF0], *(MEMORY[0x277D76DF0] + 8)}];
          v35[0] = v23;
          v24 = [MEMORY[0x277D75850] arrowAccessoryWithPosition:{*MEMORY[0x277D76E20], *(MEMORY[0x277D76E20] + 8)}];
          v35[1] = v24;
          v28 = MEMORY[0x277CBEA60];
          v29 = v35;
LABEL_30:
          v25 = [v28 arrayWithObjects:v29 count:2];
          [v8 setAccessories:v25];
          goto LABEL_31;
        }

        if (v16 != 2)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      if (v16 != 3)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v16 > 0x13)
      {
        goto LABEL_23;
      }

      if (((1 << v16) & 0xCE00) != 0)
      {
        v23 = [MEMORY[0x277D75850] arrowAccessoryWithPosition:{*MEMORY[0x277D76E10], *(MEMORY[0x277D76E10] + 8)}];
        v31[0] = v23;
        v24 = [MEMORY[0x277D75850] arrowAccessoryWithPosition:{*MEMORY[0x277D76DE8], *(MEMORY[0x277D76DE8] + 8)}];
        v31[1] = v24;
        v25 = [MEMORY[0x277D75850] arrowAccessoryWithPosition:{*MEMORY[0x277D76E00], *(MEMORY[0x277D76E00] + 8)}];
        v31[2] = v25;
        v26 = [MEMORY[0x277D75850] arrowAccessoryWithPosition:{*MEMORY[0x277D76E08], *(MEMORY[0x277D76E08] + 8)}];
        v31[3] = v26;
        v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
        [v8 setAccessories:v27];

LABEL_31:
        goto LABEL_32;
      }

      if (((1 << v16) & 0xC0080) == 0)
      {
        if (v16 != 8)
        {
LABEL_23:
          if (v16 != 6)
          {
            if (v16 == 5)
            {
              goto LABEL_25;
            }

LABEL_32:

            goto LABEL_33;
          }

LABEL_29:
          v23 = [MEMORY[0x277D75850] arrowAccessoryWithPosition:{*MEMORY[0x277D76E10], *(MEMORY[0x277D76E10] + 8)}];
          v34[0] = v23;
          v24 = [MEMORY[0x277D75850] arrowAccessoryWithPosition:{*MEMORY[0x277D76DE8], *(MEMORY[0x277D76DE8] + 8)}];
          v34[1] = v24;
          v28 = MEMORY[0x277CBEA60];
          v29 = v34;
          goto LABEL_30;
        }

LABEL_27:
        v23 = [MEMORY[0x277D75850] arrowAccessoryWithPosition:{*MEMORY[0x277D76E00], *(MEMORY[0x277D76E00] + 8)}];
        v32[0] = v23;
        v24 = [MEMORY[0x277D75850] arrowAccessoryWithPosition:{*MEMORY[0x277D76E08], *(MEMORY[0x277D76E08] + 8)}];
        v32[1] = v24;
        v28 = MEMORY[0x277CBEA60];
        v29 = v32;
        goto LABEL_30;
      }
    }

    v23 = [MEMORY[0x277D75850] arrowAccessoryWithPosition:{*MEMORY[0x277D76E18], *(MEMORY[0x277D76E18] + 8)}];
    v33[0] = v23;
    v24 = [MEMORY[0x277D75850] arrowAccessoryWithPosition:{*MEMORY[0x277D76DF8], *(MEMORY[0x277D76DF8] + 8)}];
    v33[1] = v24;
    v28 = MEMORY[0x277CBEA60];
    v29 = v33;
    goto LABEL_30;
  }

  v8 = 0;
LABEL_33:

LABEL_34:

  return v8;
}

- (AKPageController)pageController
{
  WeakRetained = objc_loadWeakRetained(&self->_pageController);

  return WeakRetained;
}

- (AKMainEventHandler)mainEventHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_mainEventHandler);

  return WeakRetained;
}

@end