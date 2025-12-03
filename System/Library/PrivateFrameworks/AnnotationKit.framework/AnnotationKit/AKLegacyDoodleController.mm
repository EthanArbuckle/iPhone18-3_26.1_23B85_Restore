@interface AKLegacyDoodleController
- (AKController)controller;
- (AKLegacyDoodleController)initWithController:(id)controller;
- (AKSmoothPathView)intelligentSketchOverlayView;
- (BOOL)isShowingCandidatePicker;
- (BOOL)shapeDetectionController:(id)controller shouldSelectCandidateAnnotation:(id)annotation;
- (CGRect)_frameForOurOverlayInHostingView:(id)view;
- (CGRect)recentDrawingBoundsInInputView;
- (CGRect)shapeDetectionControllerPositioningRectForCandidatePicker:(id)picker;
- (id)createDoodleAnnotationWithPath:(CGPath *)path drawingBoundsInView:(CGRect)view drawingCenter:(CGPoint)center pathIsPrestroked:(BOOL)prestroked shouldGoToPageController:(id *)controller;
- (id)overlayView:(id)view;
- (void)_addAnnotationImmediatelyFor:(CGPath *)for withDrawingCenter:(CGPoint)center drawingBoundsInView:(CGRect)view pathIsPrestroked:(BOOL)prestroked isSingelDot:(BOOL)dot fromInputView:(id)inputView;
- (void)_beginOrExtendCoalescingTimer;
- (void)_clearCoalescingState;
- (void)_coalesceDrawingsCancelled;
- (void)_coalesceRecentDrawings;
- (void)_executeDeferredRecognition;
- (void)_inputView:(id)view didCollectPath:(CGPath *)path isPrestroked:(BOOL)prestroked;
- (void)_removeAnnotations:(id)annotations mostLikelyFromPageController:(id)controller;
- (void)_scheduleDelayedRecognitionForDrawing:(id)drawing withPath:(CGPath *)path boundsInView:(CGRect)view center:(CGPoint)center isPrestroked:(BOOL)prestroked;
- (void)dealloc;
- (void)dismissCandidatePicker;
- (void)enclosingScrollViewNotification:(id)notification;
- (void)handleDragAction:(id)action;
- (void)handleForwardedEvent:(id)event;
- (void)handleTapAction:(id)action;
- (void)inputViewWillStartDrawing:(id)drawing;
- (void)removeOverlay;
- (void)setShapeDetectionEnabled:(BOOL)enabled;
- (void)shapeDetectionControllerWillPickCandidate:(id)candidate isInk:(BOOL)ink;
- (void)showOverlay;
- (void)toolbarNotification:(id)notification;
- (void)updateOverlayBoundsAndBackingScale:(id)scale;
- (void)updateStrokeAttributes;
@end

@implementation AKLegacyDoodleController

- (AKLegacyDoodleController)initWithController:(id)controller
{
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = AKLegacyDoodleController;
  v5 = [(AKLegacyDoodleController *)&v12 init];
  v6 = v5;
  if (v5)
  {
    [(AKLegacyDoodleController *)v5 setController:controllerCopy];
    [(AKLegacyDoodleController *)v6 setSelectNewlyCreatedAnnotations:1];
    array = [MEMORY[0x277CBEB18] array];
    [(AKLegacyDoodleController *)v6 setRecentDoodlesAnnotations:array];

    array2 = [MEMORY[0x277CBEB18] array];
    [(AKLegacyDoodleController *)v6 setRecentDoodlePaths:array2];

    [(AKLegacyDoodleController *)v6 setRecentDrawingBoundsInInputView:*MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24)];
    [(AKLegacyDoodleController *)v6 setIsWaitingToCoalesceStrokes:0];
    v9 = [[AKShapeDetectionController alloc] initWithController:controllerCopy];
    [(AKLegacyDoodleController *)v6 setShapeDetectionController:v9];

    shapeDetectionController = [(AKLegacyDoodleController *)v6 shapeDetectionController];
    [shapeDetectionController setDelegate:v6];

    -[AKLegacyDoodleController setShapeDetectionEnabled:](v6, "setShapeDetectionEnabled:", [controllerCopy shapeDetectionEnabled]);
  }

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel_updateOverlayBoundsAndBackingScale_ object:0];
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel__coalesceRecentDrawings object:0];
  v4.receiver = self;
  v4.super_class = AKLegacyDoodleController;
  [(AKLegacyDoodleController *)&v4 dealloc];
}

- (AKSmoothPathView)intelligentSketchOverlayView
{
  intelligentSketchOverlayView = self->_intelligentSketchOverlayView;
  if (!intelligentSketchOverlayView)
  {
    controller = [(AKLegacyDoodleController *)self controller];
    v5 = [AKSmoothPathView newSmoothPathViewForCurrentPlatformWithController:controller];
    v6 = self->_intelligentSketchOverlayView;
    self->_intelligentSketchOverlayView = v5;

    [(AKSmoothPathView *)self->_intelligentSketchOverlayView setDelegate:self];
    [(AKSmoothPathView *)self->_intelligentSketchOverlayView setUserInteractionEnabled:0];
    intelligentSketchOverlayView = self->_intelligentSketchOverlayView;
  }

  return intelligentSketchOverlayView;
}

- (void)showOverlay
{
  if (![(AKLegacyDoodleController *)self isShowingOverlay])
  {
    [(AKLegacyDoodleController *)self setIsShowingOverlay:1];
    controller = [(AKLegacyDoodleController *)self controller];
    currentPageController = [controller currentPageController];
    overlayView = [currentPageController overlayView];
    superview = [overlayView superview];
    delegate = [controller delegate];
    if (objc_opt_respondsToSelector())
    {
      intelligentSketchOverlayView = [(AKLegacyDoodleController *)self intelligentSketchOverlayView];
      [delegate positionSketchOverlay:intelligentSketchOverlayView forAnnotationController:controller];
    }

    else
    {
      [(AKLegacyDoodleController *)self _frameForOurOverlayInHostingView:superview];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      intelligentSketchOverlayView2 = [(AKLegacyDoodleController *)self intelligentSketchOverlayView];
      [intelligentSketchOverlayView2 setFrame:{v9, v11, v13, v15}];

      intelligentSketchOverlayView3 = [(AKLegacyDoodleController *)self intelligentSketchOverlayView];
      [intelligentSketchOverlayView3 setAutoresizingMask:18];

      intelligentSketchOverlayView4 = [(AKLegacyDoodleController *)self intelligentSketchOverlayView];
      [superview insertSubview:intelligentSketchOverlayView4 aboveSubview:overlayView];

      intelligentSketchOverlayView = [superview akEnclosingScrollView];
      if (intelligentSketchOverlayView)
      {
        [(AKLegacyDoodleController *)self updateOverlayBoundsAndBackingScale:intelligentSketchOverlayView];
      }
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_enclosingScrollViewNotification_ name:@"AKOverlayView.AKContentScrollViewVisibleRectChangeNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel_toolbarNotification_ name:@"AKAttributeToolbarDidShowNotification" object:0];

    [(AKLegacyDoodleController *)self updateStrokeAttributes];
  }
}

- (void)removeOverlay
{
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel_updateOverlayBoundsAndBackingScale_ object:0];
  if ([(AKLegacyDoodleController *)self isShowingOverlay])
  {
    [(AKLegacyDoodleController *)self setIsShowingOverlay:0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:@"AKOverlayView.AKContentScrollViewVisibleRectChangeNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 removeObserver:self name:@"AKAttributeToolbarDidShowNotification" object:0];

    shapeDetectionController = [(AKLegacyDoodleController *)self shapeDetectionController];
    [shapeDetectionController reset];

    intelligentSketchOverlayView = [(AKLegacyDoodleController *)self intelligentSketchOverlayView];
    [intelligentSketchOverlayView removeFromSuperview];

    intelligentSketchOverlayView2 = [(AKLegacyDoodleController *)self intelligentSketchOverlayView];
    [intelligentSketchOverlayView2 teardown];

    MEMORY[0x2821F9670](self, sel_setIntelligentSketchOverlayView_);
  }
}

- (void)enclosingScrollViewNotification:(id)notification
{
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel_updateOverlayBoundsAndBackingScale_ object:0];

  [(AKLegacyDoodleController *)self performSelector:sel_updateOverlayBoundsAndBackingScale_ withObject:0 afterDelay:0.1];
}

- (void)toolbarNotification:(id)notification
{
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel_updateOverlayBoundsAndBackingScale_ object:0];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [(AKLegacyDoodleController *)self performSelector:sel_updateOverlayBoundsAndBackingScale_ withObject:0 afterDelay:0.0];
  v4 = MEMORY[0x277CD9FF0];

  [v4 commit];
}

- (void)updateOverlayBoundsAndBackingScale:(id)scale
{
  scaleCopy = scale;
  controller = [(AKLegacyDoodleController *)self controller];
  delegate = [controller delegate];
  if (objc_opt_respondsToSelector())
  {
    intelligentSketchOverlayView = [(AKLegacyDoodleController *)self intelligentSketchOverlayView];
    [delegate positionSketchOverlay:intelligentSketchOverlayView forAnnotationController:controller];
LABEL_13:

    goto LABEL_14;
  }

  v7 = scaleCopy;
  if (scaleCopy || (-[AKLegacyDoodleController intelligentSketchOverlayView](self, "intelligentSketchOverlayView"), v8 = objc_claimAutoreleasedReturnValue(), [v8 akEnclosingScrollView], v34 = objc_claimAutoreleasedReturnValue(), v8, (v7 = v34) != 0))
  {
    scaleCopy = v7;
    window = [v7 window];

    if (!window)
    {
      goto LABEL_14;
    }

    window2 = [scaleCopy window];
    screen = [window2 screen];
    [screen scale];
    v13 = v12;

    [scaleCopy zoomScale];
    v15 = v13 * v14;
    if (v15 >= v13)
    {
      v16 = v13;
    }

    else
    {
      v16 = v15;
    }

    intelligentSketchOverlayView2 = [(AKLegacyDoodleController *)self intelligentSketchOverlayView];
    layer = [intelligentSketchOverlayView2 layer];
    if (v16 <= 0.0)
    {
      [layer setContentsScale:v13];

      intelligentSketchOverlayView3 = [(AKLegacyDoodleController *)self intelligentSketchOverlayView];
      layer2 = [intelligentSketchOverlayView3 layer];
      [layer2 setRasterizationScale:v13];
    }

    else
    {
      [layer setContentsScale:v16];

      intelligentSketchOverlayView3 = [(AKLegacyDoodleController *)self intelligentSketchOverlayView];
      layer2 = [intelligentSketchOverlayView3 layer];
      [layer2 setRasterizationScale:v16];
    }

    intelligentSketchOverlayView = [controller currentPageController];
    overlayView = [intelligentSketchOverlayView overlayView];
    superview = [overlayView superview];
    [(AKLegacyDoodleController *)self _frameForOurOverlayInHostingView:superview];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    intelligentSketchOverlayView4 = [(AKLegacyDoodleController *)self intelligentSketchOverlayView];
    [intelligentSketchOverlayView4 setFrame:{v24, v26, v28, v30}];

    intelligentSketchOverlayView5 = [(AKLegacyDoodleController *)self intelligentSketchOverlayView];
    [intelligentSketchOverlayView5 setAutoresizingMask:18];

    goto LABEL_13;
  }

  scaleCopy = 0;
LABEL_14:
}

- (CGRect)_frameForOurOverlayInHostingView:(id)view
{
  viewCopy = view;
  [viewCopy bounds];
  [viewCopy convertRect:0 toView:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  window = [viewCopy window];
  [window bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v33.origin.x = v5;
  v33.origin.y = v7;
  v33.size.width = v9;
  v33.size.height = v11;
  v36.origin.x = v14;
  v36.origin.y = v16;
  v36.size.width = v18;
  v36.size.height = v20;
  v34 = CGRectIntersection(v33, v36);
  [viewCopy convertRect:0 fromView:{v34.origin.x, v34.origin.y, v34.size.width, v34.size.height}];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v29 = v22;
  v30 = v24;
  v31 = v26;
  v32 = v28;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (void)handleForwardedEvent:(id)event
{
  eventCopy = event;
  intelligentSketchOverlayView = [(AKLegacyDoodleController *)self intelligentSketchOverlayView];
  [intelligentSketchOverlayView handleForwardedEvent:eventCopy];
}

- (void)handleTapAction:(id)action
{
  actionCopy = action;
  intelligentSketchOverlayView = [(AKLegacyDoodleController *)self intelligentSketchOverlayView];
  [intelligentSketchOverlayView handleTapAction:actionCopy];
}

- (void)handleDragAction:(id)action
{
  actionCopy = action;
  intelligentSketchOverlayView = [(AKLegacyDoodleController *)self intelligentSketchOverlayView];
  [intelligentSketchOverlayView handleDragAction:actionCopy];
}

- (void)updateStrokeAttributes
{
  controller = [(AKLegacyDoodleController *)self controller];
  attributeController = [controller attributeController];
  intelligentSketchOverlayView = [(AKLegacyDoodleController *)self intelligentSketchOverlayView];
  strokeColor = [attributeController strokeColor];
  [intelligentSketchOverlayView setStrokeColor:strokeColor];

  [attributeController strokeWidth];
  [intelligentSketchOverlayView setStrokeWidth:?];
  [intelligentSketchOverlayView setPrestrokedOutputMode:{-[AKLegacyDoodleController pressureSensitiveDoodleMode](self, "pressureSensitiveDoodleMode")}];
  [intelligentSketchOverlayView setHasShadow:{objc_msgSend(attributeController, "hasShadow")}];
}

- (BOOL)isShowingCandidatePicker
{
  shapeDetectionController = [(AKLegacyDoodleController *)self shapeDetectionController];
  isShowingCandidatePicker = [shapeDetectionController isShowingCandidatePicker];

  return isShowingCandidatePicker;
}

- (void)dismissCandidatePicker
{
  shapeDetectionController = [(AKLegacyDoodleController *)self shapeDetectionController];
  [shapeDetectionController dismissCandidatePicker];
}

- (void)setShapeDetectionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  self->_shapeDetectionEnabled = enabled;
  shapeDetectionController = [(AKLegacyDoodleController *)self shapeDetectionController];
  [shapeDetectionController setShapeDetectionEnabled:enabledCopy];
}

- (void)inputViewWillStartDrawing:(id)drawing
{
  [AKLegacyDoodleController cancelPreviousPerformRequestsWithTarget:self selector:sel__executeDeferredRecognition object:0];
  performRecognitionBlock = [(AKLegacyDoodleController *)self performRecognitionBlock];

  if (performRecognitionBlock)
  {
    performRecognitionBlock2 = [(AKLegacyDoodleController *)self performRecognitionBlock];
    performRecognitionBlock2[2](performRecognitionBlock2, 0);

    [(AKLegacyDoodleController *)self setPerformRecognitionBlock:0];
  }

  if ([(AKLegacyDoodleController *)self coalescesDoodles])
  {
    shapeDetectionController = [(AKLegacyDoodleController *)self shapeDetectionController];
    if ([shapeDetectionController isPreviousCandidateAnnotationUndecided])
    {
      isWaitingToCoalesceStrokes = [(AKLegacyDoodleController *)self isWaitingToCoalesceStrokes];

      if (isWaitingToCoalesceStrokes)
      {
LABEL_8:
        [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel__coalesceRecentDrawings object:0];
        goto LABEL_9;
      }

      shapeDetectionController = [(AKLegacyDoodleController *)self shapeDetectionController];
      [shapeDetectionController clearPreviousCandidateAnnotation];
    }

    goto LABEL_8;
  }

LABEL_9:

  [(AKLegacyDoodleController *)self dismissCandidatePicker];
}

- (void)_inputView:(id)view didCollectPath:(CGPath *)path isPrestroked:(BOOL)prestroked
{
  prestrokedCopy = prestroked;
  viewCopy = view;
  if ([(AKLegacyDoodleController *)self coalescesDoodles])
  {
    [(AKLegacyDoodleController *)self _beginOrExtendCoalescingTimer];
  }

  drawing = [viewCopy drawing];
  v9 = drawing;
  if (prestrokedCopy)
  {
    BoundingBox = CGPathGetBoundingBox(path);
  }

  else
  {
    [drawing bounds];
  }

  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;
  strokeCount = [v9 strokeCount];
  if (strokeCount)
  {
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    MidX = CGRectGetMidX(v26);
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    MidY = CGRectGetMidY(v27);
  }

  else
  {
    v28 = CGPathGetBoundingBox(path);
    v17 = v28.origin.x;
    v18 = v28.origin.y;
    v19 = v28.size.width;
    v20 = v28.size.height;
    x = CGRectGetMidX(v28);
    v29.origin.x = v17;
    v29.origin.y = v18;
    v29.size.width = v19;
    v29.size.height = v20;
    MidY = CGRectGetMidY(v29);
    y = MidY;
    width = *(MEMORY[0x277CBF3A0] + 16);
    height = *(MEMORY[0x277CBF3A0] + 24);
    MidX = x;
  }

  v21 = MidY;
  [(AKLegacyDoodleController *)self _addAnnotationImmediatelyFor:path withDrawingCenter:prestrokedCopy drawingBoundsInView:strokeCount == 0 pathIsPrestroked:viewCopy isSingelDot:MidX fromInputView:MidY, x, y, width, height];
  if (strokeCount && [(AKLegacyDoodleController *)self shapeDetectionEnabled])
  {
    v22 = [v9 copy];

    if ([AKShapeDetectionController drawingIsValidForRecognition:v22 withPath:path])
    {
      [(AKLegacyDoodleController *)self _scheduleDelayedRecognitionForDrawing:v22 withPath:path boundsInView:prestrokedCopy center:x isPrestroked:y, width, height, MidX, v21];
    }
  }

  else
  {
    v22 = v9;
  }
}

- (void)_scheduleDelayedRecognitionForDrawing:(id)drawing withPath:(CGPath *)path boundsInView:(CGRect)view center:(CGPoint)center isPrestroked:(BOOL)prestroked
{
  y = center.y;
  x = center.x;
  height = view.size.height;
  width = view.size.width;
  v12 = view.origin.y;
  v13 = view.origin.x;
  drawingCopy = drawing;
  objc_initWeak(&location, self);
  CGPathRetain(path);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_23F466F8C;
  v19[3] = &unk_278C7BF70;
  objc_copyWeak(v21, &location);
  v17 = drawingCopy;
  v20 = v17;
  v21[1] = path;
  v21[2] = *&v13;
  v21[3] = *&v12;
  v21[4] = *&width;
  v21[5] = *&height;
  v21[6] = *&x;
  v21[7] = *&y;
  prestrokedCopy = prestroked;
  v18 = MEMORY[0x245CAF110](v19);
  [(AKLegacyDoodleController *)self setPerformRecognitionBlock:v18];
  [(AKLegacyDoodleController *)self performSelector:sel__executeDeferredRecognition withObject:0 afterDelay:0.2];

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

- (void)_executeDeferredRecognition
{
  performRecognitionBlock = [(AKLegacyDoodleController *)self performRecognitionBlock];

  if (performRecognitionBlock)
  {
    performRecognitionBlock2 = [(AKLegacyDoodleController *)self performRecognitionBlock];
    performRecognitionBlock2[2](performRecognitionBlock2, 1);

    [(AKLegacyDoodleController *)self setPerformRecognitionBlock:0];
  }
}

- (void)_addAnnotationImmediatelyFor:(CGPath *)for withDrawingCenter:(CGPoint)center drawingBoundsInView:(CGRect)view pathIsPrestroked:(BOOL)prestroked isSingelDot:(BOOL)dot fromInputView:(id)inputView
{
  if (for)
  {
    dotCopy = dot;
    height = view.size.height;
    width = view.size.width;
    y = view.origin.y;
    x = view.origin.x;
    v23 = 0;
    v15 = [(AKLegacyDoodleController *)self createDoodleAnnotationWithPath:for drawingBoundsInView:prestroked drawingCenter:&v23 pathIsPrestroked:inputView shouldGoToPageController:view.origin.x, view.origin.y, view.size.width, view.size.height, center.x, center.y];
    v16 = v23;
    if (v15)
    {
      [(AKLegacyDoodleController *)self setIgnoreAnnotationAndSelectionKVO:1];
      if (dotCopy)
      {
        [v15 setPathIsDot:1];
      }

      controller = [(AKLegacyDoodleController *)self controller];
      toolController = [controller toolController];
      [toolController addNewAnnotation:v15 onPageController:v16 shouldSelect:-[AKLegacyDoodleController shapeDetectionController:shouldSelectCandidateAnnotation:](self shouldCascade:{"shapeDetectionController:shouldSelectCandidateAnnotation:", 0, v15), 0}];

      [(AKLegacyDoodleController *)self setIgnoreAnnotationAndSelectionKVO:0];
    }

    if ([(AKLegacyDoodleController *)self coalescesDoodles])
    {
      recentDoodlePaths = [(AKLegacyDoodleController *)self recentDoodlePaths];
      v20 = [MEMORY[0x277D75208] bezierPathWithCGPath:for];
      [recentDoodlePaths addObject:v20];

      if (v15)
      {
        recentDoodlesAnnotations = [(AKLegacyDoodleController *)self recentDoodlesAnnotations];
        [recentDoodlesAnnotations addObject:v15];
      }

      [(AKLegacyDoodleController *)self recentDrawingBoundsInInputView];
      v26.origin.x = x;
      v26.origin.y = y;
      v26.size.width = width;
      v26.size.height = height;
      v25 = CGRectUnion(v24, v26);
      [(AKLegacyDoodleController *)self setRecentDrawingBoundsInInputView:v25.origin.x, v25.origin.y, v25.size.width, v25.size.height];
    }

    shapeDetectionController = [(AKLegacyDoodleController *)self shapeDetectionController];
    [shapeDetectionController setCandidateAnnotation:v15];
  }
}

- (id)createDoodleAnnotationWithPath:(CGPath *)path drawingBoundsInView:(CGRect)view drawingCenter:(CGPoint)center pathIsPrestroked:(BOOL)prestroked shouldGoToPageController:(id *)controller
{
  prestrokedCopy = prestroked;
  height = view.size.height;
  width = view.size.width;
  y = view.origin.y;
  x = view.origin.x;
  v15 = [(AKLegacyDoodleController *)self controller:view.origin.x];
  toolController = [v15 toolController];
  v17 = [toolController createAnnotationOfType:764018 centeredAtPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];

  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  MidX = CGRectGetMidX(v32);
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  MidY = CGRectGetMidY(v33);
  if (path)
  {
    v20 = MidY;
    v21 = *(MEMORY[0x277CBF3A0] + 16);
    v29 = *MEMORY[0x277CBF3A0];
    v30 = v21;
    shapeDetectionController = [(AKLegacyDoodleController *)self shapeDetectionController];
    v23 = [shapeDetectionController convertDrawingBoundsInInputView:&v29 outBoundsInPageModel:{x, y, fmax(width, 1.0), fmax(height, 1.0)}];

    [v17 setRectangle:{v29, v30}];
    [v17 setPathIsPrestroked:prestrokedCopy];
    [AKGeometryHelper affineTransformForExifOrientation:4 aboutCenter:MidX, v20, 0, 0, 0, 0, 0, 0];
    v24 = MEMORY[0x245CAE590](path, &v28);
    v25 = [MEMORY[0x277D75208] bezierPathWithCGPath:v24];
    CGPathRelease(v24);
    [v17 setPath:v25];
  }

  else
  {
    v23 = 0;
  }

  [v17 setOriginalExifOrientation:{objc_msgSend(v23, "currentModelToScreenExifOrientation")}];
  [v23 modelBaseScaleFactor];
  [v17 setOriginalModelBaseScaleFactor:?];
  if (controller)
  {
    v26 = v23;
    *controller = v23;
  }

  return v17;
}

- (id)overlayView:(id)view
{
  intelligentSketchOverlayView = [(AKLegacyDoodleController *)self intelligentSketchOverlayView];

  return intelligentSketchOverlayView;
}

- (BOOL)shapeDetectionController:(id)controller shouldSelectCandidateAnnotation:(id)annotation
{
  annotationCopy = annotation;
  LOBYTE(self) = [(AKLegacyDoodleController *)self selectNewlyCreatedAnnotations];
  objc_opt_class();
  v6 = objc_opt_isKindOfClass() ^ 1;

  return self & v6;
}

- (void)shapeDetectionControllerWillPickCandidate:(id)candidate isInk:(BOOL)ink
{
  if ([(AKLegacyDoodleController *)self coalescesDoodles:candidate])
  {
    coalescedAnnotation = [(AKLegacyDoodleController *)self coalescedAnnotation];

    if (coalescedAnnotation)
    {
      [(AKLegacyDoodleController *)self setIgnoreAnnotationAndSelectionKVO:1];
      controller = [(AKLegacyDoodleController *)self controller];
      [controller undo:self];

      [(AKLegacyDoodleController *)self setCoalescedAnnotation:0];

      [(AKLegacyDoodleController *)self setIgnoreAnnotationAndSelectionKVO:0];
    }

    else
    {

      MEMORY[0x2821F9670](self, sel__coalesceDrawingsCancelled);
    }
  }
}

- (CGRect)shapeDetectionControllerPositioningRectForCandidatePicker:(id)picker
{
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)_coalesceRecentDrawings
{
  v36 = *MEMORY[0x277D85DE8];
  controller = [(AKLegacyDoodleController *)self controller];
  recentDoodlesAnnotations = [(AKLegacyDoodleController *)self recentDoodlesAnnotations];
  v5 = [recentDoodlesAnnotations count];

  if (v5 < 2)
  {
    [(AKLegacyDoodleController *)self _clearCoalescingState];
  }

  else
  {
    recentDoodlesAnnotations2 = [(AKLegacyDoodleController *)self recentDoodlesAnnotations];
    lastObject = [recentDoodlesAnnotations2 lastObject];
    pathIsPrestroked = [lastObject pathIsPrestroked];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    recentDoodlesAnnotations3 = [(AKLegacyDoodleController *)self recentDoodlesAnnotations];
    v10 = [recentDoodlesAnnotations3 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v10)
    {
      v11 = *v31;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(recentDoodlesAnnotations3);
        }

        if (pathIsPrestroked != [*(*(&v30 + 1) + 8 * v12) pathIsPrestroked])
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [recentDoodlesAnnotations3 countByEnumeratingWithState:&v30 objects:v35 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:

      recentDoodlesAnnotations3 = [MEMORY[0x277D75208] bezierPath];
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      recentDoodlePaths = [(AKLegacyDoodleController *)self recentDoodlePaths];
      v14 = [recentDoodlePaths countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v14)
      {
        v15 = *v27;
        do
        {
          v16 = 0;
          do
          {
            if (*v27 != v15)
            {
              objc_enumerationMutation(recentDoodlePaths);
            }

            [recentDoodlesAnnotations3 akAppendPath:*(*(&v26 + 1) + 8 * v16++)];
          }

          while (v14 != v16);
          v14 = [recentDoodlePaths countByEnumeratingWithState:&v26 objects:v34 count:16];
        }

        while (v14);
      }

      [(AKLegacyDoodleController *)self recentDrawingBoundsInInputView];
      CGRectGetMidX(v37);
      [(AKLegacyDoodleController *)self recentDrawingBoundsInInputView];
      CGRectGetMidY(v38);
      newCGPathForPlatformBezierPath = [recentDoodlesAnnotations3 newCGPathForPlatformBezierPath];
      [(AKLegacyDoodleController *)self recentDrawingBoundsInInputView];
      v25 = 0;
      v18 = [AKLegacyDoodleController createDoodleAnnotationWithPath:"createDoodleAnnotationWithPath:drawingBoundsInView:drawingCenter:pathIsPrestroked:shouldGoToPageController:" drawingBoundsInView:newCGPathForPlatformBezierPath drawingCenter:pathIsPrestroked pathIsPrestroked:&v25 shouldGoToPageController:?];
      v19 = v25;
      if (v18)
      {
        [(AKLegacyDoodleController *)self setIgnoreAnnotationAndSelectionKVO:1];
        toolController = [controller toolController];
        [toolController addNewAnnotation:v18 onPageController:v19 shouldSelect:0 shouldCascade:0];

        [(AKLegacyDoodleController *)self setCoalescedAnnotation:v18];
        pageModelController = [v19 pageModelController];
        recentDoodlesAnnotations4 = [(AKLegacyDoodleController *)self recentDoodlesAnnotations];
        [(AKLegacyDoodleController *)self _removeAnnotations:recentDoodlesAnnotations4 mostLikelyFromPageController:pageModelController];

        [(AKLegacyDoodleController *)self setIgnoreAnnotationAndSelectionKVO:0];
      }

      CGPathRelease(newCGPathForPlatformBezierPath);
    }

    recentDoodlesAnnotations5 = [(AKLegacyDoodleController *)self recentDoodlesAnnotations];
    [recentDoodlesAnnotations5 removeAllObjects];

    recentDoodlePaths2 = [(AKLegacyDoodleController *)self recentDoodlePaths];
    [recentDoodlePaths2 removeAllObjects];

    [(AKLegacyDoodleController *)self setRecentDrawingBoundsInInputView:*MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24)];
  }

  [(AKLegacyDoodleController *)self setIsWaitingToCoalesceStrokes:0];
}

- (void)_clearCoalescingState
{
  recentDoodlesAnnotations = [(AKLegacyDoodleController *)self recentDoodlesAnnotations];
  [recentDoodlesAnnotations removeAllObjects];

  recentDoodlePaths = [(AKLegacyDoodleController *)self recentDoodlePaths];
  [recentDoodlePaths removeAllObjects];

  [(AKLegacyDoodleController *)self setRecentDrawingBoundsInInputView:*MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24)];

  [(AKLegacyDoodleController *)self setCoalescedAnnotation:0];
}

- (void)_coalesceDrawingsCancelled
{
  [(AKLegacyDoodleController *)self setIsWaitingToCoalesceStrokes:0];
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel__coalesceRecentDrawings object:0];

  [(AKLegacyDoodleController *)self _clearCoalescingState];
}

- (void)_beginOrExtendCoalescingTimer
{
  [(AKLegacyDoodleController *)self setIsWaitingToCoalesceStrokes:1];
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel__coalesceRecentDrawings object:0];

  [(AKLegacyDoodleController *)self performSelector:sel__coalesceRecentDrawings withObject:0 afterDelay:0.25];
}

- (void)_removeAnnotations:(id)annotations mostLikelyFromPageController:(id)controller
{
  v34 = *MEMORY[0x277D85DE8];
  annotationsCopy = annotations;
  controllerCopy = controller;
  annotations = [controllerCopy annotations];
  v7 = [annotationsCopy mutableCopy];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_23F467FB0;
  v29[3] = &unk_278C7BF98;
  v20 = annotationsCopy;
  v30 = v20;
  selfCopy = self;
  v22 = v7;
  v32 = v22;
  v21 = [annotations indexesOfObjectsPassingTest:v29];
  v8 = [controllerCopy mutableArrayValueForKey:@"annotations"];
  [v8 removeObjectsAtIndexes:v21];

  controller = [(AKLegacyDoodleController *)self controller];
  shapeDetectionController = [(AKLegacyDoodleController *)self shapeDetectionController];
  candidateAnnotation = [shapeDetectionController candidateAnnotation];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = v22;
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v13)
  {
    v14 = *v26;
    do
    {
      v15 = 0;
      do
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v25 + 1) + 8 * v15);
        if (v16 != candidateAnnotation)
        {
          modelController = [controller modelController];
          v18 = [modelController pageModelControllerForAnnotation:v16];

          v19 = [v18 mutableArrayValueForKey:@"annotations"];
          [v19 removeObject:v16];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v13);
  }
}

- (AKController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

- (CGRect)recentDrawingBoundsInInputView
{
  objc_copyStruct(v6, &self->_recentDrawingBoundsInInputView, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end