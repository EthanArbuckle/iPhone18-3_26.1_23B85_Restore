@interface AKOverlayView
+ (void)initialize;
- (AKMainEventHandler)mainEventHandler;
- (AKOverlayView)initWithPageController:(id)controller;
- (AKPageController)pageController;
- (BOOL)_hasResizeHandleAtLocation:(CGPoint)location;
- (BOOL)_isEditingTextBoxAnnotation;
- (BOOL)_scribbleInteraction:(id)interaction shouldBeginAtLocation:(CGPoint)location;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (CGRect)_findResizeHandleRectAtLocation:(CGPoint)location withVisualStyle:(id *)style;
- (CGRect)_scribbleInteraction:(id)interaction frameForElement:(id)element;
- (UIEdgeInsets)_scribbleInteraction:(id)interaction hitToleranceInsetsForElement:(id)element defaultInsets:(UIEdgeInsets)insets;
- (id)_liftOffHandleViewForRegion:(id)region;
- (id)_liftOffHandleViewInFrame:(CGRect)frame withPointStyle:(unint64_t)style;
- (id)_singleSelectedAnnotation;
- (id)annotationController;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)keyCommands;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)_addLiftOffHandleViewForRegion:(id)region;
- (void)_postScrollViewRectChangedNotification;
- (void)_postScrollViewScrollOrMagnifyEndNotification;
- (void)_removeAllLiftOffHandleViews;
- (void)_removeLiftOffHandleViewForRegion:(id)region;
- (void)_scribbleInteraction:(id)interaction focusElement:(id)element initialFocusSelectionReferencePoint:(CGPoint)point completion:(id)completion;
- (void)_scribbleInteraction:(id)interaction requestElementsInRect:(CGRect)rect completion:(id)completion;
- (void)_scrollViewDidEndAnimation:(id)animation;
- (void)_scrollViewDidEndDecelerating:(id)decelerating;
- (void)_scrollViewDidEndDragging:(id)dragging;
- (void)_scrollViewDidScrollToTop:(id)top;
- (void)_setupObservation;
- (void)_startObservingAnnotationEventHandlers;
- (void)_stopObservingAnnotationEventHandlers;
- (void)_teardownObservation;
- (void)_updateLayersUsingScrollViewWithForcedUpdate:(BOOL)update dismissSelectionMenu:(BOOL)menu;
- (void)_wasMovedToNewSuperview;
- (void)_willEndLiveMagnify:(id)magnify;
- (void)_willStartLiveMagnify:(id)magnify;
- (void)copy:(id)copy;
- (void)cut:(id)cut;
- (void)dealloc;
- (void)delete:(id)delete;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)duplicate:(id)duplicate;
- (void)editTextAnnotation:(id)annotation;
- (void)layoutSublayersOfLayer:(id)layer;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)paste:(id)paste;
- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator;
- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation AKOverlayView

+ (void)initialize
{
  if (qword_280AC71B8 != -1)
  {
    sub_23F4BD5A4();
  }
}

- (AKOverlayView)initWithPageController:(id)controller
{
  controllerCopy = controller;
  v16.receiver = self;
  v16.super_class = AKOverlayView;
  v5 = [(AKOverlayView *)&v16 init];
  v6 = v5;
  if (v5)
  {
    [(AKOverlayView *)v5 setPageController:controllerCopy];
    controller = [controllerCopy controller];
    mainEventHandler = [controller mainEventHandler];
    [(AKOverlayView *)v6 setMainEventHandler:mainEventHandler];

    layerPresentationManager = [controllerCopy layerPresentationManager];
    rootLayer = [layerPresentationManager rootLayer];

    layer = [(AKOverlayView *)v6 layer];
    [layer addSublayer:rootLayer];

    [(AKOverlayView *)v6 setUserInteractionEnabled:0];
    v12 = objc_alloc_init(MEMORY[0x277CD9660]);
    [v12 setDelegate:v6];
    [v12 setElementSource:v6];
    [(AKOverlayView *)v6 addInteraction:v12];
    v13 = [objc_alloc(MEMORY[0x277D75870]) initWithDelegate:v6];
    [(AKOverlayView *)v6 setPointerInteraction:v13];

    pointerInteraction = [(AKOverlayView *)v6 pointerInteraction];
    [(AKOverlayView *)v6 addInteraction:pointerInteraction];
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

- (void)willMoveToSuperview:(id)superview
{
  superviewCopy = superview;
  [(AKOverlayView *)self _willRemoveFromOldSuperview];
  v5.receiver = self;
  v5.super_class = AKOverlayView;
  [(AKOverlayView *)&v5 willMoveToSuperview:superviewCopy];
}

- (void)didMoveToSuperview
{
  v5.receiver = self;
  v5.super_class = AKOverlayView;
  [(AKOverlayView *)&v5 didMoveToSuperview];
  superview = [(AKOverlayView *)self superview];

  if (superview)
  {
    window = [(AKOverlayView *)self window];

    if (window)
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
  window = [(AKOverlayView *)self window];

  if (window && [(AKOverlayView *)self deferWasMovedToSuperviewUntilMoveToWindow])
  {
    [(AKOverlayView *)self setDeferWasMovedToSuperviewUntilMoveToWindow:0];

    [(AKOverlayView *)self _wasMovedToNewSuperview];
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v40 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v38.receiver = self;
  v38.super_class = AKOverlayView;
  v8 = [(AKOverlayView *)&v38 hitTest:eventCopy withEvent:x, y];
  pageController = [(AKOverlayView *)self pageController];
  controller = [pageController controller];
  v11 = controller;
  if (!v8)
  {
    textEditorController = [controller textEditorController];
    textView = [textEditorController textView];

    if (!textView || (-[AKOverlayView convertPoint:toView:](self, "convertPoint:toView:", textView, x, y), v15 = v14, v17 = v16, ![textView pointInside:eventCopy withEvent:?]) || (objc_msgSend(textView, "hitTest:withEvent:", eventCopy, v15, v17), (v8 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v33 = textView;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      subviews = [(AKOverlayView *)self subviews];
      v19 = [subviews countByEnumeratingWithState:&v34 objects:v39 count:16];
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
            objc_enumerationMutation(subviews);
          }

          v23 = *(*(&v34 + 1) + 8 * v22);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            break;
          }

          if (v20 == ++v22)
          {
            v20 = [subviews countByEnumeratingWithState:&v34 objects:v39 count:16];
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
        textView = v33;
        if ([v24 pointInside:eventCopy withEvent:?])
        {
          v8 = [v24 hitTest:eventCopy withEvent:{v26, v28}];
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
        textView = v33;
      }
    }
  }

  overlayInteractionDelegate = [v11 overlayInteractionDelegate];
  v30 = overlayInteractionDelegate;
  if (v8)
  {
    v31 = overlayInteractionDelegate == 0;
  }

  else
  {
    v31 = 1;
  }

  if (!v31 && ([overlayInteractionDelegate annotationController:v11 shouldAllowOverlayHitTestAtPoint:self forOverlayView:v8 currentHitTest:{x, y}] & 1) == 0)
  {

    v8 = 0;
  }

  return v8;
}

- (void)_startObservingAnnotationEventHandlers
{
  if (![(AKOverlayView *)self isObservingEventHandling])
  {
    pageController = [(AKOverlayView *)self pageController];
    controller = [pageController controller];
    mainEventHandler = [controller mainEventHandler];
    [mainEventHandler addObserver:self forKeyPath:@"annotationEventHandler" options:0 context:@"AKOverlayView.eventHandlingObservationContext"];
    [(AKOverlayView *)self setIsObservingEventHandling:1];
  }
}

- (void)_stopObservingAnnotationEventHandlers
{
  if ([(AKOverlayView *)self isObservingEventHandling])
  {
    pageController = [(AKOverlayView *)self pageController];
    controller = [pageController controller];
    mainEventHandler = [controller mainEventHandler];
    [mainEventHandler removeObserver:self forKeyPath:@"annotationEventHandler" context:@"AKOverlayView.eventHandlingObservationContext"];
    [(AKOverlayView *)self setIsObservingEventHandling:0];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  pageController = [(AKOverlayView *)self pageController];
  controller = [pageController controller];

  if (context == @"AKOverlayView.contentViewMagnificationObservationContext")
  {
    [(AKOverlayView *)self _updateLayersUsingScrollView];
    [(AKOverlayView *)self _postScrollViewRectChangedNotification];
    goto LABEL_27;
  }

  if (context == @"AKOverlayView.overlayViewSizeObservationContext")
  {
    v15 = [changeCopy objectForKey:*MEMORY[0x277CCA300]];
    v16 = [changeCopy objectForKey:*MEMORY[0x277CCA2F0]];
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

  if (context == @"AKOverlayView.contentViewContentSizeObservationContext")
  {
    v15 = [changeCopy objectForKey:*MEMORY[0x277CCA300]];
    v16 = [changeCopy objectForKey:*MEMORY[0x277CCA2F0]];
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

  if (context == @"AKOverlayView.controllerAnnotationEditingContext")
  {
    annotationEditingEnabled = [controller annotationEditingEnabled];
LABEL_26:
    v40 = annotationEditingEnabled;
    pointerInteraction = [(AKOverlayView *)self pointerInteraction];
    [pointerInteraction setEnabled:v40];

    goto LABEL_27;
  }

  if (context == @"AKOverlayView.controllerFormFillingContext")
  {
    annotationEditingEnabled = [controller formFillingEnabled];
    goto LABEL_26;
  }

  if (context == @"AKOverlayView.eventHandlingObservationContext")
  {
    [(AKOverlayView *)self _removeAllLiftOffHandleViews];
  }

  else if (context != @"AKOverlayView.selectedAnnotationsContext")
  {
    v42.receiver = self;
    v42.super_class = AKOverlayView;
    [(AKOverlayView *)&v42 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }

LABEL_27:
}

- (void)layoutSublayersOfLayer:(id)layer
{
  layerCopy = layer;
  layer = [(AKOverlayView *)self layer];

  if (layer == layerCopy)
  {
    pageController = [(AKOverlayView *)self pageController];
    layerPresentationManager = [pageController layerPresentationManager];
    rootLayer = [layerPresentationManager rootLayer];

    [layerCopy bounds];
    [rootLayer setFrame:?];
  }
}

- (id)keyCommands
{
  annotationController = [(AKOverlayView *)self annotationController];
  keyCommandsForAnnotations = [annotationController keyCommandsForAnnotations];

  return keyCommandsForAnnotations;
}

- (id)annotationController
{
  pageController = [(AKOverlayView *)self pageController];
  controller = [pageController controller];

  return controller;
}

- (void)cut:(id)cut
{
  cutCopy = cut;
  annotationController = [(AKOverlayView *)self annotationController];
  [annotationController cut:cutCopy];
}

- (void)copy:(id)copy
{
  copyCopy = copy;
  annotationController = [(AKOverlayView *)self annotationController];
  [annotationController copy:copyCopy];
}

- (void)paste:(id)paste
{
  pasteCopy = paste;
  annotationController = [(AKOverlayView *)self annotationController];
  [annotationController paste:pasteCopy];
}

- (void)delete:(id)delete
{
  deleteCopy = delete;
  annotationController = [(AKOverlayView *)self annotationController];
  [annotationController delete:deleteCopy];
}

- (void)duplicate:(id)duplicate
{
  duplicateCopy = duplicate;
  annotationController = [(AKOverlayView *)self annotationController];
  [annotationController duplicate:duplicateCopy];
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  annotationController = [(AKOverlayView *)self annotationController];
  textEditorController = [annotationController textEditorController];
  textView = [textEditorController textView];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([textView isBlockedAction:action])
  {
    goto LABEL_3;
  }

  v18 = 0;
  v11 = [annotationController canPerformKeyCommandAction:action withSender:senderCopy handled:&v18];
  if (v18)
  {
LABEL_22:
    v10 = v11;
    goto LABEL_23;
  }

  mEMORY[0x277D75718] = [MEMORY[0x277D75718] sharedMenuController];
  v13 = mEMORY[0x277D75718];
  if (mEMORY[0x277D75718] == senderCopy)
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
      v11 = [(AKOverlayView *)&v16 canPerformAction:action withSender:senderCopy];
      goto LABEL_22;
    }
  }

  if (sel_editTextAnnotation_ == action)
  {
    v11 = [annotationController validateEditTextAnnotation:senderCopy];
    goto LABEL_22;
  }

  if (sel_duplicate_ == action)
  {
    v11 = [annotationController validateDuplicate:senderCopy];
    goto LABEL_22;
  }

  if (sel_delete_ == action)
  {
    v11 = [annotationController validateDelete:senderCopy];
    goto LABEL_22;
  }

  if (sel_cut_ == action)
  {
    v11 = [annotationController validateCut:senderCopy];
    goto LABEL_22;
  }

  if (sel_copy_ == action)
  {
    v11 = [annotationController validateCopy:senderCopy];
    goto LABEL_22;
  }

  if (sel_paste_ != action)
  {
    v17.receiver = self;
    v17.super_class = AKOverlayView;
    v11 = [(AKOverlayView *)&v17 canPerformAction:action withSender:senderCopy];
    goto LABEL_22;
  }

LABEL_3:
  v10 = 0;
LABEL_23:

  return v10;
}

- (void)editTextAnnotation:(id)annotation
{
  annotationCopy = annotation;
  pageController = [(AKOverlayView *)self pageController];
  controller = [pageController controller];
  if ([controller validateEditTextAnnotation:annotationCopy])
  {
    [controller editTextAnnotation:annotationCopy];
  }
}

- (id)_singleSelectedAnnotation
{
  pageController = [(AKOverlayView *)self pageController];
  controller = [pageController controller];
  modelController = [controller modelController];
  allSelectedAnnotations = [modelController allSelectedAnnotations];

  if ([allSelectedAnnotations count] == 1)
  {
    firstObject = [allSelectedAnnotations firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (void)_postScrollViewRectChangedNotification
{
  v2 = MEMORY[0x277CCAB88];
  observedScrollView = [(AKOverlayView *)self observedScrollView];
  v5 = [v2 notificationWithName:@"AKOverlayView.AKContentScrollViewVisibleRectChangeNotification" object:observedScrollView];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotification:v5];
}

- (void)_postScrollViewScrollOrMagnifyEndNotification
{
  v2 = MEMORY[0x277CCAB88];
  observedScrollView = [(AKOverlayView *)self observedScrollView];
  v5 = [v2 notificationWithName:@"AKOverlayView.AKContentScrollViewEndScrollOrMagnifyNotification" object:observedScrollView];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotification:v5];
}

- (void)_updateLayersUsingScrollViewWithForcedUpdate:(BOOL)update dismissSelectionMenu:(BOOL)menu
{
  menuCopy = menu;
  updateCopy = update;
  window = [(AKOverlayView *)self window];

  if (window)
  {
    observedScrollView = [(AKOverlayView *)self observedScrollView];
    isZooming = [observedScrollView isZooming];

    scrollViewIsInLiveMagnify = [(AKOverlayView *)self scrollViewIsInLiveMagnify];
    observedScrollView2 = [(AKOverlayView *)self observedScrollView];
    v12 = 1.0;
    if (observedScrollView2)
    {
      v13 = observedScrollView2;
      observedScrollView3 = [(AKOverlayView *)self observedScrollView];
      window2 = [observedScrollView3 window];

      if (window2)
      {
        observedScrollView4 = [(AKOverlayView *)self observedScrollView];
        [observedScrollView4 zoomScale];
        v12 = v17;
      }
    }

    pageController = [(AKOverlayView *)self pageController];
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    [pageController updateScaleFactor:isZooming | scrollViewIsInLiveMagnify isLiveUpdate:updateCopy forceUpdate:v12];
    [MEMORY[0x277CD9FF0] commit];
    if (menuCopy)
    {
      controller = [pageController controller];
      [controller hideSelectionMenu:0];
    }
  }
}

- (void)_setupObservation
{
  if (![(AKOverlayView *)self isObserving])
  {
    [(AKOverlayView *)self setIsObserving:1];
    [(AKOverlayView *)self _startObservingAnnotationEventHandlers];
    akEnclosingScrollView = [(UIView *)self akEnclosingScrollView];
    [(AKOverlayView *)self setObservedScrollView:akEnclosingScrollView];

    observedScrollView = [(AKOverlayView *)self observedScrollView];

    if (observedScrollView)
    {
      observedScrollView2 = [(AKOverlayView *)self observedScrollView];
      [observedScrollView2 addObserver:self forKeyPath:@"contentSize" options:3 context:@"AKOverlayView.contentViewContentSizeObservationContext"];

      [(AKOverlayView *)self addObserver:self forKeyPath:@"pageController.controller.annotationEditingEnabled" options:0 context:@"AKOverlayView.controllerAnnotationEditingContext"];
      [(AKOverlayView *)self addObserver:self forKeyPath:@"pageController.controller.formFillingEnabled" options:0 context:@"AKOverlayView.controllerFormFillingContext"];
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      observedScrollView3 = [(AKOverlayView *)self observedScrollView];
      [defaultCenter addObserver:self selector:sel__willStartLiveMagnify_ name:@"UITextSelectionWillZoom" object:observedScrollView3];

      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      observedScrollView4 = [(AKOverlayView *)self observedScrollView];
      [defaultCenter2 addObserver:self selector:sel__willEndLiveMagnify_ name:@"UITextSelectionDidZoom" object:observedScrollView4];

      defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
      v11 = *MEMORY[0x277D77560];
      observedScrollView5 = [(AKOverlayView *)self observedScrollView];
      [defaultCenter3 addObserver:self selector:sel__scrollViewDidEndDragging_ name:v11 object:observedScrollView5];

      defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
      v14 = *MEMORY[0x277D77558];
      observedScrollView6 = [(AKOverlayView *)self observedScrollView];
      [defaultCenter4 addObserver:self selector:sel__scrollViewDidEndDecelerating_ name:v14 object:observedScrollView6];

      defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
      observedScrollView7 = [(AKOverlayView *)self observedScrollView];
      [defaultCenter5 addObserver:self selector:sel__scrollViewDidEndAnimation_ name:@"_UIScrollViewAnimationEndedNotification" object:observedScrollView7];

      defaultCenter6 = [MEMORY[0x277CCAB98] defaultCenter];
      observedScrollView8 = [(AKOverlayView *)self observedScrollView];
      [defaultCenter6 addObserver:self selector:sel__scrollViewDidScrollToTop_ name:@"AKScrollViewDidScrollToTopNotification" object:observedScrollView8];

      observedScrollView9 = [(AKOverlayView *)self observedScrollView];
      [observedScrollView9 addObserver:self forKeyPath:@"frame" options:3 context:@"AKOverlayView.overlayViewSizeObservationContext"];

      observedScrollView10 = [(AKOverlayView *)self observedScrollView];
      [observedScrollView10 addObserver:self forKeyPath:@"bounds" options:3 context:@"AKOverlayView.overlayViewSizeObservationContext"];

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
    observedScrollView = [(AKOverlayView *)self observedScrollView];

    if (observedScrollView)
    {
      observedScrollView2 = [(AKOverlayView *)self observedScrollView];
      [observedScrollView2 removeObserver:self forKeyPath:@"contentSize" context:@"AKOverlayView.contentViewContentSizeObservationContext"];

      [(AKOverlayView *)self removeObserver:self forKeyPath:@"pageController.controller.annotationEditingEnabled" context:@"AKOverlayView.controllerAnnotationEditingContext"];
      [(AKOverlayView *)self removeObserver:self forKeyPath:@"pageController.controller.formFillingEnabled" context:@"AKOverlayView.controllerFormFillingContext"];
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      observedScrollView3 = [(AKOverlayView *)self observedScrollView];
      [defaultCenter removeObserver:self name:@"UITextSelectionWillZoom" object:observedScrollView3];

      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      observedScrollView4 = [(AKOverlayView *)self observedScrollView];
      [defaultCenter2 removeObserver:self name:@"UITextSelectionDidZoom" object:observedScrollView4];

      defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
      v10 = *MEMORY[0x277D77560];
      observedScrollView5 = [(AKOverlayView *)self observedScrollView];
      [defaultCenter3 removeObserver:self name:v10 object:observedScrollView5];

      defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
      v13 = *MEMORY[0x277D77558];
      observedScrollView6 = [(AKOverlayView *)self observedScrollView];
      [defaultCenter4 removeObserver:self name:v13 object:observedScrollView6];

      defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
      observedScrollView7 = [(AKOverlayView *)self observedScrollView];
      [defaultCenter5 removeObserver:self name:@"_UIScrollViewAnimationEndedNotification" object:observedScrollView7];

      defaultCenter6 = [MEMORY[0x277CCAB98] defaultCenter];
      observedScrollView8 = [(AKOverlayView *)self observedScrollView];
      [defaultCenter6 removeObserver:self name:@"AKScrollViewDidScrollToTopNotification" object:observedScrollView8];

      observedScrollView9 = [(AKOverlayView *)self observedScrollView];
      [observedScrollView9 removeObserver:self forKeyPath:@"frame" context:@"AKOverlayView.overlayViewSizeObservationContext"];

      observedScrollView10 = [(AKOverlayView *)self observedScrollView];
      [observedScrollView10 removeObserver:self forKeyPath:@"bounds" context:@"AKOverlayView.overlayViewSizeObservationContext"];

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
  pageController = [(AKOverlayView *)self pageController];
  [pageController overlayWasAddedToSuperview];
  [(AKOverlayView *)self _setupObservation];
  [(AKOverlayView *)self _updateLayersUsingScrollView];
  [MEMORY[0x277CD9FF0] commit];
}

- (void)_willStartLiveMagnify:(id)magnify
{
  object = [magnify object];
  observedScrollView = [(AKOverlayView *)self observedScrollView];

  if (object == observedScrollView)
  {

    [(AKOverlayView *)self setScrollViewIsInLiveMagnify:1];
  }
}

- (void)_willEndLiveMagnify:(id)magnify
{
  object = [magnify object];
  observedScrollView = [(AKOverlayView *)self observedScrollView];

  if (object == observedScrollView)
  {
    [(AKOverlayView *)self setScrollViewIsInLiveMagnify:0];
    [(AKOverlayView *)self _updateLayersUsingScrollViewWithForcedUpdate:1 dismissSelectionMenu:0];

    [(AKOverlayView *)self _postScrollViewScrollOrMagnifyEndNotification];
  }
}

- (void)_scrollViewDidEndDragging:(id)dragging
{
  draggingCopy = dragging;
  object = [draggingCopy object];
  observedScrollView = [(AKOverlayView *)self observedScrollView];

  if (object == observedScrollView)
  {
    userInfo = [draggingCopy userInfo];
    v7 = [userInfo objectForKey:*MEMORY[0x277D77568]];
    bOOLValue = [v7 BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      [(AKOverlayView *)self _updateLayersUsingScrollViewWithForcedUpdate:1];
      [(AKOverlayView *)self _postScrollViewScrollOrMagnifyEndNotification];
    }
  }
}

- (void)_scrollViewDidEndDecelerating:(id)decelerating
{
  object = [decelerating object];
  observedScrollView = [(AKOverlayView *)self observedScrollView];

  if (object == observedScrollView)
  {
    [(AKOverlayView *)self _updateLayersUsingScrollViewWithForcedUpdate:1];

    [(AKOverlayView *)self _postScrollViewScrollOrMagnifyEndNotification];
  }
}

- (void)_scrollViewDidEndAnimation:(id)animation
{
  object = [animation object];
  observedScrollView = [(AKOverlayView *)self observedScrollView];

  if (object == observedScrollView)
  {
    [(AKOverlayView *)self _updateLayersUsingScrollViewWithForcedUpdate:1];

    [(AKOverlayView *)self _postScrollViewScrollOrMagnifyEndNotification];
  }
}

- (void)_scrollViewDidScrollToTop:(id)top
{
  object = [top object];
  observedScrollView = [(AKOverlayView *)self observedScrollView];

  if (object == observedScrollView)
  {
    [(AKOverlayView *)self _updateLayersUsingScrollViewWithForcedUpdate:1];

    [(AKOverlayView *)self _postScrollViewScrollOrMagnifyEndNotification];
  }
}

- (CGRect)_findResizeHandleRectAtLocation:(CGPoint)location withVisualStyle:(id *)style
{
  y = location.y;
  x = location.x;
  _singleSelectedAnnotation = [(AKOverlayView *)self _singleSelectedAnnotation];
  if (_singleSelectedAnnotation)
  {
    pageController = [(AKOverlayView *)self pageController];
    v42 = 0;
    v43 = 0;
    [AKAnnotationPointOfInterestHelper pointsOfInterest:&v43 withVisualStyle:&v42 ofAnnotation:_singleSelectedAnnotation pageControllerForPixelAlignment:pageController];
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
    v13 = pageController;
    v24 = v13;
    v14 = v11;
    v28 = x;
    v29 = y;
    v25 = v14;
    v26 = &v36;
    v27 = &v30;
    [v10 enumerateObjectsUsingBlock:v23];
    if (style)
    {
      *style = v31[5];
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

- (BOOL)_hasResizeHandleAtLocation:(CGPoint)location
{
  v14 = 0;
  [(AKOverlayView *)self _findResizeHandleRectAtLocation:&v14 withVisualStyle:location.x, location.y];
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

- (id)_liftOffHandleViewInFrame:(CGRect)frame withPointStyle:(unint64_t)style
{
  if (style <= 1)
  {
    height = frame.size.height;
    width = frame.size.width;
    y = frame.origin.y;
    x = frame.origin.x;
    _singleSelectedAnnotation = [(AKOverlayView *)self _singleSelectedAnnotation];
    if (_singleSelectedAnnotation)
    {
      pageController = [(AKOverlayView *)self pageController];
      layerPresentationManager = [pageController layerPresentationManager];
      v14 = [layerPresentationManager adornmentLayerForAnnotation:_singleSelectedAnnotation];

      if (v14)
      {
        v15 = [v14 handleSublayerWithStyle:style];
        v4 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{x, y, width, height}];
        layer = [v4 layer];
        [layer addSublayer:v15];

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

- (id)_liftOffHandleViewForRegion:(id)region
{
  regionCopy = region;
  pointerRegionToHandleViewDict = [(AKOverlayView *)self pointerRegionToHandleViewDict];
  v6 = [pointerRegionToHandleViewDict objectForKey:regionCopy];

  return v6;
}

- (void)_addLiftOffHandleViewForRegion:(id)region
{
  regionCopy = region;
  if (regionCopy)
  {
    v14 = regionCopy;
    pointerRegionToHandleViewDict = [(AKOverlayView *)self pointerRegionToHandleViewDict];

    if (!pointerRegionToHandleViewDict)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [(AKOverlayView *)self setPointerRegionToHandleViewDict:v6];
    }

    pointerRegionToHandleViewDict2 = [(AKOverlayView *)self pointerRegionToHandleViewDict];
    v8 = [pointerRegionToHandleViewDict2 objectForKey:v14];

    if (!v8)
    {
      identifier = [v14 identifier];
      v10 = identifier;
      if (identifier)
      {
        integerValue = [identifier integerValue];
        if (integerValue <= 1)
        {
          v12 = integerValue;
          [v14 rect];
          v13 = [(AKOverlayView *)self _liftOffHandleViewInFrame:v12 withPointStyle:?];
          if (v13)
          {
            [(AKOverlayView *)self addSubview:v13];
            [pointerRegionToHandleViewDict2 setObject:v13 forKey:v14];
          }
        }
      }
    }

    regionCopy = v14;
  }
}

- (void)_removeAllLiftOffHandleViews
{
  pointerRegionToHandleViewDict = [(AKOverlayView *)self pointerRegionToHandleViewDict];
  if (pointerRegionToHandleViewDict)
  {
    v3 = pointerRegionToHandleViewDict;
    [pointerRegionToHandleViewDict enumerateKeysAndObjectsUsingBlock:&unk_28519E7D0];
    [v3 removeAllObjects];
    pointerRegionToHandleViewDict = v3;
  }
}

- (void)_removeLiftOffHandleViewForRegion:(id)region
{
  regionCopy = region;
  if (regionCopy)
  {
    v8 = regionCopy;
    pointerRegionToHandleViewDict = [(AKOverlayView *)self pointerRegionToHandleViewDict];
    v6 = [pointerRegionToHandleViewDict objectForKey:v8];
    v7 = v6;
    if (v6)
    {
      [v6 removeFromSuperview];
      [pointerRegionToHandleViewDict removeObjectForKey:v8];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (BOOL)_scribbleInteraction:(id)interaction shouldBeginAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  _isEditingTextBoxAnnotation = [(AKOverlayView *)self _isEditingTextBoxAnnotation];
  if (_isEditingTextBoxAnnotation)
  {
    LOBYTE(_isEditingTextBoxAnnotation) = ![(AKOverlayView *)self _hasResizeHandleAtLocation:x, y];
  }

  return _isEditingTextBoxAnnotation;
}

- (BOOL)_isEditingTextBoxAnnotation
{
  v17 = *MEMORY[0x277D85DE8];
  pageController = [(AKOverlayView *)self pageController];
  controller = [pageController controller];

  if ([controller annotationEditingEnabled])
  {
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    modelController = [controller modelController];
    allSelectedAnnotations = [modelController allSelectedAnnotations];

    v6 = [allSelectedAnnotations countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(allSelectedAnnotations);
          }

          objc_opt_class();
          v8 |= objc_opt_isKindOfClass();
        }

        v7 = [allSelectedAnnotations countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (UIEdgeInsets)_scribbleInteraction:(id)interaction hitToleranceInsetsForElement:(id)element defaultInsets:(UIEdgeInsets)insets
{
  v5 = insets.top + -30.0;
  v6 = insets.bottom + -30.0;
  v7 = insets.left + -100.0;
  v8 = insets.right + -100.0;
  result.right = v8;
  result.bottom = v6;
  result.left = v7;
  result.top = v5;
  return result;
}

- (void)_scribbleInteraction:(id)interaction requestElementsInRect:(CGRect)rect completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  pageController = [(AKOverlayView *)self pageController];
  controller = [pageController controller];

  textEditorController = [controller textEditorController];
  annotation = [textEditorController annotation];
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  if ([controller annotationEditingEnabled])
  {
    v22 = textEditorController;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    modelController = [controller modelController];
    allSelectedAnnotations = [modelController allSelectedAnnotations];

    v14 = [allSelectedAnnotations countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(allSelectedAnnotations);
          }

          v18 = *(*(&v23 + 1) + 8 * v17);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && ([v18 editingDisabled] & 1) == 0)
          {
            uUID = [v18 UUID];
            [v11 addObject:uUID];
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [allSelectedAnnotations countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v15);
    }

    textEditorController = v22;
  }

  if (annotation)
  {
    uUID2 = [annotation UUID];
    v21 = [v11 indexOfObject:uUID2];
  }

  else
  {
    v21 = 0x7FFFFFFFFFFFFFFFLL;
  }

  completionCopy[2](completionCopy, v11, v21);
}

- (CGRect)_scribbleInteraction:(id)interaction frameForElement:(id)element
{
  v38 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  pageController = [(AKOverlayView *)self pageController];
  controller = [pageController controller];
  v8 = *MEMORY[0x277CBF398];
  v9 = *(MEMORY[0x277CBF398] + 8);
  v10 = *(MEMORY[0x277CBF398] + 16);
  v11 = *(MEMORY[0x277CBF398] + 24);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  modelController = [controller modelController];
  allSelectedAnnotations = [modelController allSelectedAnnotations];

  v14 = [allSelectedAnnotations countByEnumeratingWithState:&v33 objects:v37 count:16];
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
          objc_enumerationMutation(allSelectedAnnotations);
        }

        v18 = *(*(&v33 + 1) + 8 * i);
        uUID = [v18 UUID];
        v20 = [uUID isEqual:elementCopy];

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

      v15 = [allSelectedAnnotations countByEnumeratingWithState:&v33 objects:v37 count:16];
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
    [pageController convertRectFromModelToOverlay:{v8, v9, v10, v11}];
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

- (void)_scribbleInteraction:(id)interaction focusElement:(id)element initialFocusSelectionReferencePoint:(CGPoint)point completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  completionCopy = completion;
  pageController = [(AKOverlayView *)self pageController];
  controller = [pageController controller];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  modelController = [controller modelController];
  allSelectedAnnotations = [modelController allSelectedAnnotations];

  v14 = [allSelectedAnnotations countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v23 = pageController;
    v16 = *v25;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(allSelectedAnnotations);
        }

        v18 = *(*(&v24 + 1) + 8 * i);
        uUID = [v18 UUID];
        v20 = [uUID isEqual:elementCopy];

        if (v20)
        {
          textEditorController = [controller textEditorController];
          pageController = v23;
          if (([textEditorController isEditing] & 1) == 0)
          {
            [textEditorController beginEditingAnnotation:v18 withPageController:v23 selectAllText:0 withPencil:1];
          }

          textView = [textEditorController textView];

          goto LABEL_14;
        }
      }

      v15 = [allSelectedAnnotations countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }

    textView = 0;
    pageController = v23;
  }

  else
  {
    textView = 0;
  }

LABEL_14:

  completionCopy[2](completionCopy, textView);
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  regionCopy = region;
  [request location];
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
    v17 = regionCopy;
  }

  else
  {
    v17 = [MEMORY[0x277D75880] regionWithRect:v16 identifier:{v9, v11, v13, v15}];
  }

  v18 = v17;

  return v18;
}

- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator
{
  if (region)
  {
    MEMORY[0x2821F9670](self, sel__addLiftOffHandleViewForRegion_);
  }
}

- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator
{
  interactionCopy = interaction;
  regionCopy = region;
  animatorCopy = animator;
  v11 = [(AKOverlayView *)self _liftOffHandleViewForRegion:regionCopy];
  if (v11)
  {
    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_23F48DC68;
    v12[3] = &unk_278C7C2C8;
    objc_copyWeak(&v14, &location);
    v13 = regionCopy;
    [animatorCopy addCompletion:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v35[2] = *MEMORY[0x277D85DE8];
  regionCopy = region;
  identifier = [regionCopy identifier];
  v7 = identifier;
  if (!identifier || [identifier integerValue] > 1)
  {
    hiddenPointerStyle = 0;
    goto LABEL_34;
  }

  _singleSelectedAnnotation = [(AKOverlayView *)self _singleSelectedAnnotation];
  if (_singleSelectedAnnotation)
  {
    pageController = [(AKOverlayView *)self pageController];
    [regionCopy rect];
    [AKGeometryHelper centerOfRect:?];
    [pageController convertPointFromOverlayToModel:?];
    v12 = v11;
    v14 = v13;
    [pageController currentModelToScreenScaleFactor];
    v16 = [AKAnnotationPointOfInterestHelper draggableAreaForPoint:_singleSelectedAnnotation onAnnotation:pageController withScale:v12 pageControllerForPixelAlignment:v14, v15];
    hiddenPointerStyle = [MEMORY[0x277D75890] hiddenPointerStyle];
    if (!v16)
    {
      goto LABEL_32;
    }

    v17 = [(AKOverlayView *)self _liftOffHandleViewForRegion:regionCopy];
    if (v17)
    {
      v18 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:v17];
      v19 = [MEMORY[0x277D75858] effectWithPreview:v18];
      v20 = [MEMORY[0x277D75890] styleWithEffect:v19 shape:0];

      hiddenPointerStyle = v20;
    }

    if (v16 <= 8)
    {
      conformsToAKRotatableAnnotationProtocol = [_singleSelectedAnnotation conformsToAKRotatableAnnotationProtocol];
      v22 = 0.0;
      if (conformsToAKRotatableAnnotationProtocol)
      {
        [_singleSelectedAnnotation rotationAngle];
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
          [hiddenPointerStyle setAccessories:v25];
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
        [hiddenPointerStyle setAccessories:v27];

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

  hiddenPointerStyle = 0;
LABEL_33:

LABEL_34:

  return hiddenPointerStyle;
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