@interface AKLegacyDoodleController
- (AKController)controller;
- (AKLegacyDoodleController)initWithController:(id)a3;
- (AKSmoothPathView)intelligentSketchOverlayView;
- (BOOL)isShowingCandidatePicker;
- (BOOL)shapeDetectionController:(id)a3 shouldSelectCandidateAnnotation:(id)a4;
- (CGRect)_frameForOurOverlayInHostingView:(id)a3;
- (CGRect)recentDrawingBoundsInInputView;
- (CGRect)shapeDetectionControllerPositioningRectForCandidatePicker:(id)a3;
- (id)createDoodleAnnotationWithPath:(CGPath *)a3 drawingBoundsInView:(CGRect)a4 drawingCenter:(CGPoint)a5 pathIsPrestroked:(BOOL)a6 shouldGoToPageController:(id *)a7;
- (id)overlayView:(id)a3;
- (void)_addAnnotationImmediatelyFor:(CGPath *)a3 withDrawingCenter:(CGPoint)a4 drawingBoundsInView:(CGRect)a5 pathIsPrestroked:(BOOL)a6 isSingelDot:(BOOL)a7 fromInputView:(id)a8;
- (void)_beginOrExtendCoalescingTimer;
- (void)_clearCoalescingState;
- (void)_coalesceDrawingsCancelled;
- (void)_coalesceRecentDrawings;
- (void)_executeDeferredRecognition;
- (void)_inputView:(id)a3 didCollectPath:(CGPath *)a4 isPrestroked:(BOOL)a5;
- (void)_removeAnnotations:(id)a3 mostLikelyFromPageController:(id)a4;
- (void)_scheduleDelayedRecognitionForDrawing:(id)a3 withPath:(CGPath *)a4 boundsInView:(CGRect)a5 center:(CGPoint)a6 isPrestroked:(BOOL)a7;
- (void)dealloc;
- (void)dismissCandidatePicker;
- (void)enclosingScrollViewNotification:(id)a3;
- (void)handleDragAction:(id)a3;
- (void)handleForwardedEvent:(id)a3;
- (void)handleTapAction:(id)a3;
- (void)inputViewWillStartDrawing:(id)a3;
- (void)removeOverlay;
- (void)setShapeDetectionEnabled:(BOOL)a3;
- (void)shapeDetectionControllerWillPickCandidate:(id)a3 isInk:(BOOL)a4;
- (void)showOverlay;
- (void)toolbarNotification:(id)a3;
- (void)updateOverlayBoundsAndBackingScale:(id)a3;
- (void)updateStrokeAttributes;
@end

@implementation AKLegacyDoodleController

- (AKLegacyDoodleController)initWithController:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AKLegacyDoodleController;
  v5 = [(AKLegacyDoodleController *)&v12 init];
  v6 = v5;
  if (v5)
  {
    [(AKLegacyDoodleController *)v5 setController:v4];
    [(AKLegacyDoodleController *)v6 setSelectNewlyCreatedAnnotations:1];
    v7 = [MEMORY[0x277CBEB18] array];
    [(AKLegacyDoodleController *)v6 setRecentDoodlesAnnotations:v7];

    v8 = [MEMORY[0x277CBEB18] array];
    [(AKLegacyDoodleController *)v6 setRecentDoodlePaths:v8];

    [(AKLegacyDoodleController *)v6 setRecentDrawingBoundsInInputView:*MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24)];
    [(AKLegacyDoodleController *)v6 setIsWaitingToCoalesceStrokes:0];
    v9 = [[AKShapeDetectionController alloc] initWithController:v4];
    [(AKLegacyDoodleController *)v6 setShapeDetectionController:v9];

    v10 = [(AKLegacyDoodleController *)v6 shapeDetectionController];
    [v10 setDelegate:v6];

    -[AKLegacyDoodleController setShapeDetectionEnabled:](v6, "setShapeDetectionEnabled:", [v4 shapeDetectionEnabled]);
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

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
    v4 = [(AKLegacyDoodleController *)self controller];
    v5 = [AKSmoothPathView newSmoothPathViewForCurrentPlatformWithController:v4];
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
    v21 = [(AKLegacyDoodleController *)self controller];
    v3 = [v21 currentPageController];
    v4 = [v3 overlayView];
    v5 = [v4 superview];
    v6 = [v21 delegate];
    if (objc_opt_respondsToSelector())
    {
      v7 = [(AKLegacyDoodleController *)self intelligentSketchOverlayView];
      [v6 positionSketchOverlay:v7 forAnnotationController:v21];
    }

    else
    {
      [(AKLegacyDoodleController *)self _frameForOurOverlayInHostingView:v5];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v16 = [(AKLegacyDoodleController *)self intelligentSketchOverlayView];
      [v16 setFrame:{v9, v11, v13, v15}];

      v17 = [(AKLegacyDoodleController *)self intelligentSketchOverlayView];
      [v17 setAutoresizingMask:18];

      v18 = [(AKLegacyDoodleController *)self intelligentSketchOverlayView];
      [v5 insertSubview:v18 aboveSubview:v4];

      v7 = [v5 akEnclosingScrollView];
      if (v7)
      {
        [(AKLegacyDoodleController *)self updateOverlayBoundsAndBackingScale:v7];
      }
    }

    v19 = [MEMORY[0x277CCAB98] defaultCenter];
    [v19 addObserver:self selector:sel_enclosingScrollViewNotification_ name:@"AKOverlayView.AKContentScrollViewVisibleRectChangeNotification" object:0];

    v20 = [MEMORY[0x277CCAB98] defaultCenter];
    [v20 addObserver:self selector:sel_toolbarNotification_ name:@"AKAttributeToolbarDidShowNotification" object:0];

    [(AKLegacyDoodleController *)self updateStrokeAttributes];
  }
}

- (void)removeOverlay
{
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel_updateOverlayBoundsAndBackingScale_ object:0];
  if ([(AKLegacyDoodleController *)self isShowingOverlay])
  {
    [(AKLegacyDoodleController *)self setIsShowingOverlay:0];
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:self name:@"AKOverlayView.AKContentScrollViewVisibleRectChangeNotification" object:0];

    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 removeObserver:self name:@"AKAttributeToolbarDidShowNotification" object:0];

    v5 = [(AKLegacyDoodleController *)self shapeDetectionController];
    [v5 reset];

    v6 = [(AKLegacyDoodleController *)self intelligentSketchOverlayView];
    [v6 removeFromSuperview];

    v7 = [(AKLegacyDoodleController *)self intelligentSketchOverlayView];
    [v7 teardown];

    MEMORY[0x2821F9670](self, sel_setIntelligentSketchOverlayView_);
  }
}

- (void)enclosingScrollViewNotification:(id)a3
{
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel_updateOverlayBoundsAndBackingScale_ object:0];

  [(AKLegacyDoodleController *)self performSelector:sel_updateOverlayBoundsAndBackingScale_ withObject:0 afterDelay:0.1];
}

- (void)toolbarNotification:(id)a3
{
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel_updateOverlayBoundsAndBackingScale_ object:0];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [(AKLegacyDoodleController *)self performSelector:sel_updateOverlayBoundsAndBackingScale_ withObject:0 afterDelay:0.0];
  v4 = MEMORY[0x277CD9FF0];

  [v4 commit];
}

- (void)updateOverlayBoundsAndBackingScale:(id)a3
{
  v33 = a3;
  v4 = [(AKLegacyDoodleController *)self controller];
  v5 = [v4 delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(AKLegacyDoodleController *)self intelligentSketchOverlayView];
    [v5 positionSketchOverlay:v6 forAnnotationController:v4];
LABEL_13:

    goto LABEL_14;
  }

  v7 = v33;
  if (v33 || (-[AKLegacyDoodleController intelligentSketchOverlayView](self, "intelligentSketchOverlayView"), v8 = objc_claimAutoreleasedReturnValue(), [v8 akEnclosingScrollView], v34 = objc_claimAutoreleasedReturnValue(), v8, (v7 = v34) != 0))
  {
    v33 = v7;
    v9 = [v7 window];

    if (!v9)
    {
      goto LABEL_14;
    }

    v10 = [v33 window];
    v11 = [v10 screen];
    [v11 scale];
    v13 = v12;

    [v33 zoomScale];
    v15 = v13 * v14;
    if (v15 >= v13)
    {
      v16 = v13;
    }

    else
    {
      v16 = v15;
    }

    v17 = [(AKLegacyDoodleController *)self intelligentSketchOverlayView];
    v18 = [v17 layer];
    if (v16 <= 0.0)
    {
      [v18 setContentsScale:v13];

      v19 = [(AKLegacyDoodleController *)self intelligentSketchOverlayView];
      v20 = [v19 layer];
      [v20 setRasterizationScale:v13];
    }

    else
    {
      [v18 setContentsScale:v16];

      v19 = [(AKLegacyDoodleController *)self intelligentSketchOverlayView];
      v20 = [v19 layer];
      [v20 setRasterizationScale:v16];
    }

    v6 = [v4 currentPageController];
    v21 = [v6 overlayView];
    v22 = [v21 superview];
    [(AKLegacyDoodleController *)self _frameForOurOverlayInHostingView:v22];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = [(AKLegacyDoodleController *)self intelligentSketchOverlayView];
    [v31 setFrame:{v24, v26, v28, v30}];

    v32 = [(AKLegacyDoodleController *)self intelligentSketchOverlayView];
    [v32 setAutoresizingMask:18];

    goto LABEL_13;
  }

  v33 = 0;
LABEL_14:
}

- (CGRect)_frameForOurOverlayInHostingView:(id)a3
{
  v3 = a3;
  [v3 bounds];
  [v3 convertRect:0 toView:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [v3 window];
  [v12 bounds];
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
  [v3 convertRect:0 fromView:{v34.origin.x, v34.origin.y, v34.size.width, v34.size.height}];
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

- (void)handleForwardedEvent:(id)a3
{
  v5 = a3;
  v4 = [(AKLegacyDoodleController *)self intelligentSketchOverlayView];
  [v4 handleForwardedEvent:v5];
}

- (void)handleTapAction:(id)a3
{
  v5 = a3;
  v4 = [(AKLegacyDoodleController *)self intelligentSketchOverlayView];
  [v4 handleTapAction:v5];
}

- (void)handleDragAction:(id)a3
{
  v5 = a3;
  v4 = [(AKLegacyDoodleController *)self intelligentSketchOverlayView];
  [v4 handleDragAction:v5];
}

- (void)updateStrokeAttributes
{
  v6 = [(AKLegacyDoodleController *)self controller];
  v3 = [v6 attributeController];
  v4 = [(AKLegacyDoodleController *)self intelligentSketchOverlayView];
  v5 = [v3 strokeColor];
  [v4 setStrokeColor:v5];

  [v3 strokeWidth];
  [v4 setStrokeWidth:?];
  [v4 setPrestrokedOutputMode:{-[AKLegacyDoodleController pressureSensitiveDoodleMode](self, "pressureSensitiveDoodleMode")}];
  [v4 setHasShadow:{objc_msgSend(v3, "hasShadow")}];
}

- (BOOL)isShowingCandidatePicker
{
  v2 = [(AKLegacyDoodleController *)self shapeDetectionController];
  v3 = [v2 isShowingCandidatePicker];

  return v3;
}

- (void)dismissCandidatePicker
{
  v2 = [(AKLegacyDoodleController *)self shapeDetectionController];
  [v2 dismissCandidatePicker];
}

- (void)setShapeDetectionEnabled:(BOOL)a3
{
  v3 = a3;
  self->_shapeDetectionEnabled = a3;
  v4 = [(AKLegacyDoodleController *)self shapeDetectionController];
  [v4 setShapeDetectionEnabled:v3];
}

- (void)inputViewWillStartDrawing:(id)a3
{
  [AKLegacyDoodleController cancelPreviousPerformRequestsWithTarget:self selector:sel__executeDeferredRecognition object:0];
  v4 = [(AKLegacyDoodleController *)self performRecognitionBlock];

  if (v4)
  {
    v5 = [(AKLegacyDoodleController *)self performRecognitionBlock];
    v5[2](v5, 0);

    [(AKLegacyDoodleController *)self setPerformRecognitionBlock:0];
  }

  if ([(AKLegacyDoodleController *)self coalescesDoodles])
  {
    v6 = [(AKLegacyDoodleController *)self shapeDetectionController];
    if ([v6 isPreviousCandidateAnnotationUndecided])
    {
      v7 = [(AKLegacyDoodleController *)self isWaitingToCoalesceStrokes];

      if (v7)
      {
LABEL_8:
        [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel__coalesceRecentDrawings object:0];
        goto LABEL_9;
      }

      v6 = [(AKLegacyDoodleController *)self shapeDetectionController];
      [v6 clearPreviousCandidateAnnotation];
    }

    goto LABEL_8;
  }

LABEL_9:

  [(AKLegacyDoodleController *)self dismissCandidatePicker];
}

- (void)_inputView:(id)a3 didCollectPath:(CGPath *)a4 isPrestroked:(BOOL)a5
{
  v5 = a5;
  v23 = a3;
  if ([(AKLegacyDoodleController *)self coalescesDoodles])
  {
    [(AKLegacyDoodleController *)self _beginOrExtendCoalescingTimer];
  }

  v8 = [v23 drawing];
  v9 = v8;
  if (v5)
  {
    BoundingBox = CGPathGetBoundingBox(a4);
  }

  else
  {
    [v8 bounds];
  }

  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;
  v14 = [v9 strokeCount];
  if (v14)
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
    v28 = CGPathGetBoundingBox(a4);
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
  [(AKLegacyDoodleController *)self _addAnnotationImmediatelyFor:a4 withDrawingCenter:v5 drawingBoundsInView:v14 == 0 pathIsPrestroked:v23 isSingelDot:MidX fromInputView:MidY, x, y, width, height];
  if (v14 && [(AKLegacyDoodleController *)self shapeDetectionEnabled])
  {
    v22 = [v9 copy];

    if ([AKShapeDetectionController drawingIsValidForRecognition:v22 withPath:a4])
    {
      [(AKLegacyDoodleController *)self _scheduleDelayedRecognitionForDrawing:v22 withPath:a4 boundsInView:v5 center:x isPrestroked:y, width, height, MidX, v21];
    }
  }

  else
  {
    v22 = v9;
  }
}

- (void)_scheduleDelayedRecognitionForDrawing:(id)a3 withPath:(CGPath *)a4 boundsInView:(CGRect)a5 center:(CGPoint)a6 isPrestroked:(BOOL)a7
{
  y = a6.y;
  x = a6.x;
  height = a5.size.height;
  width = a5.size.width;
  v12 = a5.origin.y;
  v13 = a5.origin.x;
  v16 = a3;
  objc_initWeak(&location, self);
  CGPathRetain(a4);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_23F466F8C;
  v19[3] = &unk_278C7BF70;
  objc_copyWeak(v21, &location);
  v17 = v16;
  v20 = v17;
  v21[1] = a4;
  v21[2] = *&v13;
  v21[3] = *&v12;
  v21[4] = *&width;
  v21[5] = *&height;
  v21[6] = *&x;
  v21[7] = *&y;
  v22 = a7;
  v18 = MEMORY[0x245CAF110](v19);
  [(AKLegacyDoodleController *)self setPerformRecognitionBlock:v18];
  [(AKLegacyDoodleController *)self performSelector:sel__executeDeferredRecognition withObject:0 afterDelay:0.2];

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

- (void)_executeDeferredRecognition
{
  v3 = [(AKLegacyDoodleController *)self performRecognitionBlock];

  if (v3)
  {
    v4 = [(AKLegacyDoodleController *)self performRecognitionBlock];
    v4[2](v4, 1);

    [(AKLegacyDoodleController *)self setPerformRecognitionBlock:0];
  }
}

- (void)_addAnnotationImmediatelyFor:(CGPath *)a3 withDrawingCenter:(CGPoint)a4 drawingBoundsInView:(CGRect)a5 pathIsPrestroked:(BOOL)a6 isSingelDot:(BOOL)a7 fromInputView:(id)a8
{
  if (a3)
  {
    v8 = a7;
    height = a5.size.height;
    width = a5.size.width;
    y = a5.origin.y;
    x = a5.origin.x;
    v23 = 0;
    v15 = [(AKLegacyDoodleController *)self createDoodleAnnotationWithPath:a3 drawingBoundsInView:a6 drawingCenter:&v23 pathIsPrestroked:a8 shouldGoToPageController:a5.origin.x, a5.origin.y, a5.size.width, a5.size.height, a4.x, a4.y];
    v16 = v23;
    if (v15)
    {
      [(AKLegacyDoodleController *)self setIgnoreAnnotationAndSelectionKVO:1];
      if (v8)
      {
        [v15 setPathIsDot:1];
      }

      v17 = [(AKLegacyDoodleController *)self controller];
      v18 = [v17 toolController];
      [v18 addNewAnnotation:v15 onPageController:v16 shouldSelect:-[AKLegacyDoodleController shapeDetectionController:shouldSelectCandidateAnnotation:](self shouldCascade:{"shapeDetectionController:shouldSelectCandidateAnnotation:", 0, v15), 0}];

      [(AKLegacyDoodleController *)self setIgnoreAnnotationAndSelectionKVO:0];
    }

    if ([(AKLegacyDoodleController *)self coalescesDoodles])
    {
      v19 = [(AKLegacyDoodleController *)self recentDoodlePaths];
      v20 = [MEMORY[0x277D75208] bezierPathWithCGPath:a3];
      [v19 addObject:v20];

      if (v15)
      {
        v21 = [(AKLegacyDoodleController *)self recentDoodlesAnnotations];
        [v21 addObject:v15];
      }

      [(AKLegacyDoodleController *)self recentDrawingBoundsInInputView];
      v26.origin.x = x;
      v26.origin.y = y;
      v26.size.width = width;
      v26.size.height = height;
      v25 = CGRectUnion(v24, v26);
      [(AKLegacyDoodleController *)self setRecentDrawingBoundsInInputView:v25.origin.x, v25.origin.y, v25.size.width, v25.size.height];
    }

    v22 = [(AKLegacyDoodleController *)self shapeDetectionController];
    [v22 setCandidateAnnotation:v15];
  }
}

- (id)createDoodleAnnotationWithPath:(CGPath *)a3 drawingBoundsInView:(CGRect)a4 drawingCenter:(CGPoint)a5 pathIsPrestroked:(BOOL)a6 shouldGoToPageController:(id *)a7
{
  v8 = a6;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v15 = [(AKLegacyDoodleController *)self controller:a4.origin.x];
  v16 = [v15 toolController];
  v17 = [v16 createAnnotationOfType:764018 centeredAtPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];

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
  if (a3)
  {
    v20 = MidY;
    v21 = *(MEMORY[0x277CBF3A0] + 16);
    v29 = *MEMORY[0x277CBF3A0];
    v30 = v21;
    v22 = [(AKLegacyDoodleController *)self shapeDetectionController];
    v23 = [v22 convertDrawingBoundsInInputView:&v29 outBoundsInPageModel:{x, y, fmax(width, 1.0), fmax(height, 1.0)}];

    [v17 setRectangle:{v29, v30}];
    [v17 setPathIsPrestroked:v8];
    [AKGeometryHelper affineTransformForExifOrientation:4 aboutCenter:MidX, v20, 0, 0, 0, 0, 0, 0];
    v24 = MEMORY[0x245CAE590](a3, &v28);
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
  if (a7)
  {
    v26 = v23;
    *a7 = v23;
  }

  return v17;
}

- (id)overlayView:(id)a3
{
  v3 = [(AKLegacyDoodleController *)self intelligentSketchOverlayView];

  return v3;
}

- (BOOL)shapeDetectionController:(id)a3 shouldSelectCandidateAnnotation:(id)a4
{
  v5 = a4;
  LOBYTE(self) = [(AKLegacyDoodleController *)self selectNewlyCreatedAnnotations];
  objc_opt_class();
  v6 = objc_opt_isKindOfClass() ^ 1;

  return self & v6;
}

- (void)shapeDetectionControllerWillPickCandidate:(id)a3 isInk:(BOOL)a4
{
  if ([(AKLegacyDoodleController *)self coalescesDoodles:a3])
  {
    v5 = [(AKLegacyDoodleController *)self coalescedAnnotation];

    if (v5)
    {
      [(AKLegacyDoodleController *)self setIgnoreAnnotationAndSelectionKVO:1];
      v6 = [(AKLegacyDoodleController *)self controller];
      [v6 undo:self];

      [(AKLegacyDoodleController *)self setCoalescedAnnotation:0];

      [(AKLegacyDoodleController *)self setIgnoreAnnotationAndSelectionKVO:0];
    }

    else
    {

      MEMORY[0x2821F9670](self, sel__coalesceDrawingsCancelled);
    }
  }
}

- (CGRect)shapeDetectionControllerPositioningRectForCandidatePicker:(id)a3
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
  v3 = [(AKLegacyDoodleController *)self controller];
  v4 = [(AKLegacyDoodleController *)self recentDoodlesAnnotations];
  v5 = [v4 count];

  if (v5 < 2)
  {
    [(AKLegacyDoodleController *)self _clearCoalescingState];
  }

  else
  {
    v6 = [(AKLegacyDoodleController *)self recentDoodlesAnnotations];
    v7 = [v6 lastObject];
    v8 = [v7 pathIsPrestroked];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = [(AKLegacyDoodleController *)self recentDoodlesAnnotations];
    v10 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v10)
    {
      v11 = *v31;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v9);
        }

        if (v8 != [*(*(&v30 + 1) + 8 * v12) pathIsPrestroked])
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
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

      v9 = [MEMORY[0x277D75208] bezierPath];
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v13 = [(AKLegacyDoodleController *)self recentDoodlePaths];
      v14 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
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
              objc_enumerationMutation(v13);
            }

            [v9 akAppendPath:*(*(&v26 + 1) + 8 * v16++)];
          }

          while (v14 != v16);
          v14 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
        }

        while (v14);
      }

      [(AKLegacyDoodleController *)self recentDrawingBoundsInInputView];
      CGRectGetMidX(v37);
      [(AKLegacyDoodleController *)self recentDrawingBoundsInInputView];
      CGRectGetMidY(v38);
      v17 = [v9 newCGPathForPlatformBezierPath];
      [(AKLegacyDoodleController *)self recentDrawingBoundsInInputView];
      v25 = 0;
      v18 = [AKLegacyDoodleController createDoodleAnnotationWithPath:"createDoodleAnnotationWithPath:drawingBoundsInView:drawingCenter:pathIsPrestroked:shouldGoToPageController:" drawingBoundsInView:v17 drawingCenter:v8 pathIsPrestroked:&v25 shouldGoToPageController:?];
      v19 = v25;
      if (v18)
      {
        [(AKLegacyDoodleController *)self setIgnoreAnnotationAndSelectionKVO:1];
        v20 = [v3 toolController];
        [v20 addNewAnnotation:v18 onPageController:v19 shouldSelect:0 shouldCascade:0];

        [(AKLegacyDoodleController *)self setCoalescedAnnotation:v18];
        v21 = [v19 pageModelController];
        v22 = [(AKLegacyDoodleController *)self recentDoodlesAnnotations];
        [(AKLegacyDoodleController *)self _removeAnnotations:v22 mostLikelyFromPageController:v21];

        [(AKLegacyDoodleController *)self setIgnoreAnnotationAndSelectionKVO:0];
      }

      CGPathRelease(v17);
    }

    v23 = [(AKLegacyDoodleController *)self recentDoodlesAnnotations];
    [v23 removeAllObjects];

    v24 = [(AKLegacyDoodleController *)self recentDoodlePaths];
    [v24 removeAllObjects];

    [(AKLegacyDoodleController *)self setRecentDrawingBoundsInInputView:*MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24)];
  }

  [(AKLegacyDoodleController *)self setIsWaitingToCoalesceStrokes:0];
}

- (void)_clearCoalescingState
{
  v3 = [(AKLegacyDoodleController *)self recentDoodlesAnnotations];
  [v3 removeAllObjects];

  v4 = [(AKLegacyDoodleController *)self recentDoodlePaths];
  [v4 removeAllObjects];

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

- (void)_removeAnnotations:(id)a3 mostLikelyFromPageController:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v23 = a4;
  v24 = [v23 annotations];
  v7 = [v6 mutableCopy];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_23F467FB0;
  v29[3] = &unk_278C7BF98;
  v20 = v6;
  v30 = v20;
  v31 = self;
  v22 = v7;
  v32 = v22;
  v21 = [v24 indexesOfObjectsPassingTest:v29];
  v8 = [v23 mutableArrayValueForKey:@"annotations"];
  [v8 removeObjectsAtIndexes:v21];

  v9 = [(AKLegacyDoodleController *)self controller];
  v10 = [(AKLegacyDoodleController *)self shapeDetectionController];
  v11 = [v10 candidateAnnotation];

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
        if (v16 != v11)
        {
          v17 = [v9 modelController];
          v18 = [v17 pageModelControllerForAnnotation:v16];

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