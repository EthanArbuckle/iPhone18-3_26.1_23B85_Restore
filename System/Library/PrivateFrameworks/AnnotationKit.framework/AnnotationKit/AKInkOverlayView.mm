@interface AKInkOverlayView
+ (CGRect)_convertRect:(CGRect)rect fromPageControllerModelSpace:(id)space toDrawingInCanvasViewSpace:(id)viewSpace;
+ (id)newAKInkOverlayViewForCurrentPlatformWithPageController:(id)controller drawingUndoTarget:(id)target;
+ (id)newDrawingUndoTargetWithPageController:(id)controller;
- (AKInkOverlayView)initWithFrame:(CGRect)frame;
- (AKInkOverlayView)initWithPageController:(id)controller drawingUndoTarget:(id)target;
- (AKInkOverlayViewDelegate)delegate;
- (AKPageController)pageController;
- (BOOL)_canvasView:(id)view shouldBeginDrawingWithTouch:(id)touch;
- (BOOL)canvasNeedsUpdate;
- (CGRect)previousPageRectInAKModel;
- (CGSize)canvasSizeInPKDrawingSpace;
- (PKRulerHostingDelegate)rulerHostingDelegate;
- (UIGestureRecognizer)drawingGestureRecognizer;
- (UIGestureRecognizer)pinchGestureRecognizer;
- (id)drawingUndoTarget;
- (id)updatedDrawingForPageRectUpdate;
- (void)_calculateFixedPixelSize:(CGSize *)size drawingScale:(double *)scale;
- (void)_canvasView:(id)view beganStroke:(id)stroke;
- (void)_canvasView:(id)view cancelledStroke:(id)stroke;
- (void)_canvasView:(id)view endedStroke:(id)stroke;
- (void)_updateCanvasViewInk;
- (void)_updatedSelectedStrokesWithColor:(id)color;
- (void)awakeFromNib;
- (void)canvasViewDidBeginDrawing:(id)drawing;
- (void)canvasViewDidEndDrawing:(id)drawing;
- (void)canvasViewDrawingDidChange:(id)change;
- (void)commonInit;
- (void)commonPostInit;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)removeStrokesFromDrawing:(id)drawing;
- (void)setInk:(id)ink;
- (void)setRulerHostingDelegate:(id)delegate;
- (void)setupInkView;
- (void)teardown;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation AKInkOverlayView

+ (id)newAKInkOverlayViewForCurrentPlatformWithPageController:(id)controller drawingUndoTarget:(id)target
{
  targetCopy = target;
  controllerCopy = controller;
  v7 = [objc_alloc(objc_opt_class()) initWithPageController:controllerCopy drawingUndoTarget:targetCopy];

  return v7;
}

+ (id)newDrawingUndoTargetWithPageController:(id)controller
{
  controllerCopy = controller;
  v4 = [[_AKInkOverlayDrawingUndoTarget alloc] initWithPageController:controllerCopy];

  return v4;
}

- (AKInkOverlayView)initWithPageController:(id)controller drawingUndoTarget:(id)target
{
  controllerCopy = controller;
  targetCopy = target;
  v8 = [(AKInkOverlayView *)self initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v9 = v8;
  if (v8)
  {
    [(AKInkOverlayView *)v8 setPageController:controllerCopy];
    [(AKInkOverlayView *)v9 setDrawingUndoTarget:targetCopy];
    [(AKInkOverlayView *)v9 commonPostInit];
  }

  return v9;
}

- (AKInkOverlayView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = AKInkOverlayView;
  v3 = [(AKInkOverlayView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(AKInkOverlayView *)v3 commonInit];
  }

  return v4;
}

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = AKInkOverlayView;
  [(AKInkOverlayView *)&v3 awakeFromNib];
  [(AKInkOverlayView *)self commonInit];
}

- (void)commonInit
{
  v3 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:10];
  reportedStrokes = self->_reportedStrokes;
  self->_reportedStrokes = v3;

  v5 = *(MEMORY[0x277CBF398] + 16);
  self->_previousPageRectInAKModel.origin = *MEMORY[0x277CBF398];
  self->_previousPageRectInAKModel.size = v5;
}

- (void)commonPostInit
{
  pageController = [(AKInkOverlayView *)self pageController];
  controller = [pageController controller];
  attributeController = [controller attributeController];
  v12 = [attributeController ink];

  if (!v12 || ([v12 identifier], v6 = objc_claimAutoreleasedReturnValue(), v6, v7 = v12, !v6))
  {
    NSLog(&cfstr_SInvalidInitia.isa, "[AKInkOverlayView commonPostInit]");
    v8 = MEMORY[0x277CD9638];
    v9 = *MEMORY[0x277CD96E0];
    blackColor = [MEMORY[0x277D75348] blackColor];
    v11 = [v8 inkWithIdentifier:v9 color:blackColor weight:0.0];

    v7 = v11;
  }

  v13 = v7;
  [(AKInkOverlayView *)self setInk:v7];
}

- (void)teardown
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  canvasView = [(AKInkOverlayView *)self canvasView];
  [canvasView setDelegate:0];

  canvasView2 = [(AKInkOverlayView *)self canvasView];
  [canvasView2 removeFromSuperview];

  [(AKInkOverlayView *)self setCanvasView:0];

  [(AKInkOverlayView *)self setDelegate:0];
}

- (void)setInk:(id)ink
{
  inkCopy = ink;
  if (([inkCopy isEqual:self->_ink] & 1) == 0)
  {
    objc_storeStrong(&self->_ink, ink);
    [(AKInkOverlayView *)self _updateCanvasViewInk];
  }

  if (-[PKInk _isLassoInk](self->_ink, "_isLassoInk") && [inkCopy _isLassoInk])
  {
    color = [inkCopy color];
    [(AKInkOverlayView *)self _updatedSelectedStrokesWithColor:color];
  }

  MEMORY[0x2821F96F8]();
}

- (void)_updateCanvasViewInk
{
  canvasView = [(AKInkOverlayView *)self canvasView];

  if (canvasView)
  {
    v5 = [(AKInkOverlayView *)self ink];
    canvasView2 = [(AKInkOverlayView *)self canvasView];
    [canvasView2 setInk:v5];
  }
}

- (void)_updatedSelectedStrokesWithColor:(id)color
{
  colorCopy = color;
  canvasView = [(AKInkOverlayView *)self canvasView];

  if (canvasView)
  {
    canvasView2 = [(AKInkOverlayView *)self canvasView];
    [canvasView2 _setSelectedStrokesColor:colorCopy];
  }
}

- (void)removeStrokesFromDrawing:(id)drawing
{
  drawingCopy = drawing;
  canvasView = [(AKInkOverlayView *)self canvasView];
  drawing = [canvasView drawing];
  strokes = [drawing strokes];
  v7 = [strokes mutableCopy];

  [v7 minusOrderedSet:drawingCopy];
  v8 = objc_alloc(MEMORY[0x277CD95F8]);
  v9 = [v7 copy];
  canvasView2 = [(AKInkOverlayView *)self canvasView];
  drawing2 = [canvasView2 drawing];
  v12 = [v8 initWithStrokes:v9 fromDrawing:drawing2];
  [canvasView setDrawing:v12];
}

- (void)willMoveToSuperview:(id)superview
{
  canvasView = [(AKInkOverlayView *)self canvasView];
  if (canvasView)
  {
    v5 = canvasView;
    [canvasView setDelegate:0];
    [v5 setDrawingUndoTarget:0];
    [(AKInkOverlayView *)self setCanvasView:0];
    canvasView = v5;
  }
}

- (void)didMoveToSuperview
{
  superview = [(AKInkOverlayView *)self superview];

  if (superview)
  {
    [(AKInkOverlayView *)self bounds];
    if (![AKGeometryHelper isUnpresentableRect:?])
    {

      MEMORY[0x2821F9670](self, sel_setupInkView);
    }
  }
}

- (void)setupInkView
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [(AKInkOverlayView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v36 = *MEMORY[0x277CBF3A8];
  v35 = 1.0;
  if ([AKGeometryHelper isUnpresentableRect:v3])
  {
    __asm { FMOV            V0.2D, #5.0 }

    v36 = _Q0;
    v6 = 0.0;
    v10 = 5.0;
    v8 = 5.0;
    v4 = 0.0;
  }

  else
  {
    [(AKInkOverlayView *)self _calculateFixedPixelSize:&v36 drawingScale:&v35];
  }

  v16 = objc_alloc(MEMORY[0x277CD95F0]);
  v17 = [v16 initWithFrame:1 fixedPixelSize:v4 drawingScale:v6 layerFixedPixelSize:{v8, v10, v36, v35}];
  [(AKInkOverlayView *)self setCanvasView:v17];
  [v17 setOpaque:0];
  [v17 setDelegate:self];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  WeakRetained = objc_loadWeakRetained(&self->_rulerHostingDelegate);
  if (WeakRetained)
  {
    [v17 setRulerHostingDelegate:WeakRetained];
  }

  [v17 setOverrideUserInterfaceStyle:1];
  [(AKInkOverlayView *)self _updateCanvasViewInk];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  layer = [v17 layer];
  [layer setAnchorPoint:{0.5, 0.5}];

  memset(&v34, 0, sizeof(v34));
  CGAffineTransformMakeScale(&v34, 1.0, -1.0);
  v33 = v34;
  [v17 setTransform:&v33];
  [v17 setFrame:{v4, v6, v8, v10}];
  drawingUndoTarget = [(AKInkOverlayView *)self drawingUndoTarget];
  [v17 setDrawingUndoTarget:drawingUndoTarget];

  [v17 setDrawingUndoSelector:sel_performUndo_];
  [(AKInkOverlayView *)self addSubview:v17];
  centerXAnchor = [v17 centerXAnchor];
  centerXAnchor2 = [(AKInkOverlayView *)self centerXAnchor];
  v23 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v23 setActive:1];

  centerYAnchor = [v17 centerYAnchor];
  centerYAnchor2 = [(AKInkOverlayView *)self centerYAnchor];
  v26 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v26 setActive:1];

  widthAnchor = [v17 widthAnchor];
  widthAnchor2 = [(AKInkOverlayView *)self widthAnchor];
  v29 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [v29 setActive:1];

  heightAnchor = [v17 heightAnchor];
  heightAnchor2 = [(AKInkOverlayView *)self heightAnchor];
  v32 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  [v32 setActive:1];

  [MEMORY[0x277CD9FF0] commit];
}

- (BOOL)canvasNeedsUpdate
{
  [(AKInkOverlayView *)self previousPageRectInAKModel];
  if (CGRectIsNull(v24))
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    pageController = [(AKInkOverlayView *)self pageController];
    [pageController maxPageRect];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [(AKInkOverlayView *)self previousPageRectInAKModel];
    v28.origin.x = v13;
    v28.origin.y = v14;
    v28.size.width = v15;
    v28.size.height = v16;
    v25.origin.x = v6;
    v25.origin.y = v8;
    v25.size.width = v10;
    v25.size.height = v12;
    v3 = !CGRectEqualToRect(v25, v28);
  }

  canvasView = [(AKInkOverlayView *)self canvasView];
  if (canvasView)
  {
    canvasView2 = [(AKInkOverlayView *)self canvasView];
    [canvasView2 _fixedPixelSize];
    if (v19 == 5.0)
    {
      canvasView3 = [(AKInkOverlayView *)self canvasView];
      [canvasView3 frame];
      if (CGRectGetWidth(v26) <= 10.0)
      {
        v22 = 0;
      }

      else
      {
        canvasView4 = [(AKInkOverlayView *)self canvasView];
        [canvasView4 frame];
        v22 = CGRectGetHeight(v27) > 10.0;
      }
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v3 || v22;
}

- (id)updatedDrawingForPageRectUpdate
{
  [(AKInkOverlayView *)self previousPageRectInAKModel];
  if (CGRectIsNull(v52))
  {
    canvasView = [(AKInkOverlayView *)self canvasView];
    drawing = [canvasView drawing];
  }

  else
  {
    canvasView = [(AKInkOverlayView *)self pageController];
    v5 = objc_opt_class();
    [(AKInkOverlayView *)self previousPageRectInAKModel];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    canvasView2 = [(AKInkOverlayView *)self canvasView];
    [v5 _convertRect:canvasView fromPageControllerModelSpace:canvasView2 toDrawingInCanvasViewSpace:{v7, v9, v11, v13}];
    v16 = v15;
    recta = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v23 = objc_opt_class();
    [canvasView maxPageRect];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    canvasView3 = [(AKInkOverlayView *)self canvasView];
    [v23 _convertRect:canvasView fromPageControllerModelSpace:canvasView3 toDrawingInCanvasViewSpace:{v25, v27, v29, v31}];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;

    v53.origin.x = v16;
    v53.origin.y = v18;
    v53.size.width = v20;
    v53.size.height = v22;
    MinX = CGRectGetMinX(v53);
    v54.origin.x = v34;
    v54.origin.y = v36;
    v54.size.width = v38;
    v54.size.height = v40;
    v42 = MinX - CGRectGetMinX(v54);
    v55.origin.x = recta;
    v55.origin.y = v18;
    v55.size.width = v20;
    v55.size.height = v22;
    MinY = CGRectGetMinY(v55);
    v56.origin.x = v34;
    v56.origin.y = v36;
    v56.size.width = v38;
    v56.size.height = v40;
    v44 = CGRectGetMinY(v56);
    memset(&v50, 0, sizeof(v50));
    CGAffineTransformMakeTranslation(&v50, v42, MinY - v44);
    canvasView4 = [(AKInkOverlayView *)self canvasView];
    drawing2 = [canvasView4 drawing];
    rect_8 = v50;
    drawing = [drawing2 drawingByApplyingTransform:&rect_8];
  }

  return drawing;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = AKInkOverlayView;
  [(AKInkOverlayView *)&v9 layoutSubviews];
  pageController = [(AKInkOverlayView *)self pageController];
  if ([(AKInkOverlayView *)self canvasNeedsUpdate])
  {
    v8 = *MEMORY[0x277CBF3A8];
    v7 = 1.0;
    [(AKInkOverlayView *)self _calculateFixedPixelSize:&v8 drawingScale:&v7];
    canvasView = [(AKInkOverlayView *)self canvasView];
    [canvasView _setFixedPixelSize:v8 drawingScale:v7];

    updatedDrawingForPageRectUpdate = [(AKInkOverlayView *)self updatedDrawingForPageRectUpdate];
    canvasView2 = [(AKInkOverlayView *)self canvasView];
    [canvasView2 setDrawing:updatedDrawingForPageRectUpdate];

    [pageController updateOverlayViewLayers];
  }

  [pageController maxPageRect];
  [(AKInkOverlayView *)self setPreviousPageRectInAKModel:?];
}

- (void)setRulerHostingDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_rulerHostingDelegate, delegateCopy);
  canvasView = [(AKInkOverlayView *)self canvasView];

  if (canvasView)
  {
    canvasView2 = [(AKInkOverlayView *)self canvasView];
    [canvasView2 setRulerHostingDelegate:delegateCopy];
  }
}

- (void)_calculateFixedPixelSize:(CGSize *)size drawingScale:(double *)scale
{
  v7 = *MEMORY[0x277CBF3A8];
  v8 = *(MEMORY[0x277CBF3A8] + 8);
  pageController = [(AKInkOverlayView *)self pageController];
  controller = [pageController controller];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v13 = [bundleIdentifier isEqualToString:@"com.apple.ScreenshotServicesService"];

  selfCopy = self;
  [pageController maxPageRect];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [controller akModelToCanvasFixedPixelScaleOfFirstEncounteredPage];
  v24 = v23;
  [controller screenPixelsToCanvasPixelsDownscale];
  if (v24 == 0.0)
  {
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier2 = [mainBundle2 bundleIdentifier];
    v28 = [bundleIdentifier2 isEqualToString:@"com.apple.iBooks"];

    v29 = v8;
    v30 = v7;
    v77 = v16;
    if (v28)
    {
      window = [(AKInkOverlayView *)selfCopy window];
      screen = [window screen];
      [screen scale];
      v34 = v33;

      v35 = fmax(v34, 1.0);
      [(AKInkOverlayView *)selfCopy bounds];
      if (v36 >= v37)
      {
        v38 = v37;
      }

      else
      {
        v38 = v36;
      }

      if (v38 > 0.0 && v38 < 768.0)
      {
        v39 = 768.0 / v38;
        v36 = v36 * v39;
        v37 = v37 * v39;
      }

      v30 = v35 * v36;
      v29 = v35 * v37;
    }

    if (v30 == v7 && v29 == v8)
    {
      [(AKInkOverlayView *)selfCopy bounds];
      [AKGeometryHelper convertRect:selfCopy fromViewToScreenPixels:1 useNativeScale:?];
    }

    v41 = v20;
    v42 = v29 * v30;
    v43 = 1.0;
    v44 = v22;
    if (v29 * v30 > 5595136.0)
    {
      v42 = sqrt(v42);
      v43 = 2365.40398 / v42;
      v30 = v30 * (2365.40398 / v42);
      v29 = v29 * (2365.40398 / v42);
    }

    v45 = round(v30);
    v46 = round(v29);
    v47 = +[AKGeometryHelper exifOrientationHasReversedAxes:](AKGeometryHelper, "exifOrientationHasReversedAxes:", [pageController currentModelToScreenExifOrientation]);
    if (v47)
    {
      v48 = v45;
    }

    else
    {
      v48 = v46;
    }

    if (v47)
    {
      v45 = v46;
    }

    v79.origin.y = v76;
    v79.origin.x = v77;
    v79.size.width = v41;
    v79.size.height = v44;
    [controller setAkModelToCanvasFixedPixelScaleOfFirstEncounteredPage:v45 / CGRectGetWidth(v79)];
    [controller setScreenPixelsToCanvasPixelsDownscale:v43];
  }

  else
  {
    v43 = v25;
    CGAffineTransformMakeScale(&v78, v24, v24);
    v80.origin.x = v16;
    v80.origin.y = v18;
    v80.size.width = v20;
    v80.size.height = v22;
    v81 = CGRectApplyAffineTransform(v80, &v78);
    v45 = round(v81.size.width);
    v48 = round(v81.size.height);
  }

  pageModelController = [pageController pageModelController];
  inkCanvasAnnotation = [pageModelController inkCanvasAnnotation];

  v51 = v8;
  v52 = v7;
  if (inkCanvasAnnotation)
  {
    [inkCanvasAnnotation drawingSize];
    v54 = v53;
    v56 = v55;
    v57 = [AKGeometryHelper isUnpresentableSize:?];
    if (v57)
    {
      v51 = v8;
    }

    else
    {
      v51 = v56;
    }

    if (v57)
    {
      v52 = v7;
    }

    else
    {
      v52 = v54;
    }
  }

  if (v52 == v7 && v51 == v8)
  {
    if (v13)
    {
      [controller akModelToCanvasFixedPixelScaleOfFirstEncounteredPage];
      v60 = v61;
    }

    else
    {
      window2 = [(AKInkOverlayView *)selfCopy window];
      screen2 = [window2 screen];
      [screen2 bounds];
      v67 = v66;
      v69 = v68;

      if (v67 >= v69)
      {
        v70 = v69;
      }

      else
      {
        v70 = v67;
      }

      v71 = v70 / 768.0;
      window3 = [(AKInkOverlayView *)selfCopy window];
      screen3 = [window3 screen];
      [screen3 nativeScale];
      v75 = v71 * v74;

      v60 = v43 * v75;
    }

    [(AKInkOverlayView *)selfCopy setCanvasSizeInPKDrawingSpace:v45 / v60, v48 / v60];
  }

  else if (v13)
  {
    [controller akModelToCanvasFixedPixelScaleOfFirstEncounteredPage];
    v60 = v59;
  }

  else
  {
    v62 = v45 / v52;
    v63 = v48 / v51;
    if (v62 >= v63)
    {
      v60 = v62;
    }

    else
    {
      v60 = v63;
    }
  }

  if (size)
  {
    size->width = v45;
    size->height = v48;
  }

  if (scale)
  {
    *scale = v60;
  }
}

+ (CGRect)_convertRect:(CGRect)rect fromPageControllerModelSpace:(id)space toDrawingInCanvasViewSpace:(id)viewSpace
{
  if (space && viewSpace)
  {
    height = rect.size.height;
    width = rect.size.width;
    y = rect.origin.y;
    x = rect.origin.x;
    memset(&v30, 0, sizeof(v30));
    viewSpaceCopy = viewSpace;
    spaceCopy = space;
    [viewSpaceCopy drawingTransform];
    CGAffineTransformInvert(&v30, &v29);
    [spaceCopy convertRectFromModelToOverlay:{x, y, width, height}];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    overlayView = [spaceCopy overlayView];

    [overlayView convertRect:viewSpaceCopy toView:{v13, v15, v17, v19}];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v29 = v30;
    v31.origin.x = v22;
    v31.origin.y = v24;
    v31.size.width = v26;
    v31.size.height = v28;
    return CGRectApplyAffineTransform(v31, &v29);
  }

  else
  {
    return **&MEMORY[0x277CBF3A0];
  }
}

- (BOOL)_canvasView:(id)view shouldBeginDrawingWithTouch:(id)touch
{
  touchCopy = touch;
  delegate = [(AKInkOverlayView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate inputViewCanBeginDrawing:self withTouch:touchCopy];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)canvasViewDidBeginDrawing:(id)drawing
{
  drawingCopy = drawing;
  delegate = [(AKInkOverlayView *)self delegate];
  [delegate inputViewDidBeginStroke:self];

  pageController = [(AKInkOverlayView *)self pageController];
  controller = [pageController controller];

  modernToolbarView = [controller modernToolbarView];
  window = [(AKInkOverlayView *)self window];
  firstResponder = [window firstResponder];
  if (firstResponder)
  {
  }

  else
  {
    shouldHide = [modernToolbarView shouldHide];

    if ((shouldHide & 1) == 0)
    {
      [drawingCopy becomeFirstResponder];
    }
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:qword_27E399B38 object:controller];
}

- (void)canvasViewDidEndDrawing:(id)drawing
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = off_27E399B30;
  pageController = [(AKInkOverlayView *)self pageController];
  controller = [pageController controller];
  [defaultCenter postNotificationName:v4 object:controller];
}

- (void)_canvasView:(id)view beganStroke:(id)stroke
{
  strokeCopy = stroke;
  pageController = [(AKInkOverlayView *)self pageController];
  controller = [pageController controller];
  sidecarController = [controller sidecarController];
  [sidecarController handleLiveStrokeBegan:strokeCopy onInkOverlayView:self];
}

- (void)_canvasView:(id)view endedStroke:(id)stroke
{
  v6 = [(AKInkOverlayView *)self pageController:view];
  controller = [v6 controller];
  sidecarController = [controller sidecarController];
  [sidecarController handleLiveStrokeComplete:1];
}

- (void)_canvasView:(id)view cancelledStroke:(id)stroke
{
  v4 = [(AKInkOverlayView *)self pageController:view];
  controller = [v4 controller];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:qword_27E399B40 object:controller];

  sidecarController = [controller sidecarController];
  [sidecarController handleLiveStrokeComplete:0];
}

- (void)canvasViewDrawingDidChange:(id)change
{
  v28 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  pageController = [(AKInkOverlayView *)self pageController];
  controller = [pageController controller];
  undoController = [controller undoController];
  undoManager = [undoController undoManager];

  isUndoRegistrationEnabled = [undoManager isUndoRegistrationEnabled];
  if (isUndoRegistrationEnabled)
  {
    [undoManager disableUndoRegistration];
  }

  drawing = [changeCopy drawing];
  if (drawing)
  {
    v22 = isUndoRegistrationEnabled;
    v11 = objc_opt_new();
    strokes = [drawing strokes];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = [strokes countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(strokes);
          }

          v17 = *(*(&v23 + 1) + 8 * i);
          if (![(NSHashTable *)self->_reportedStrokes containsObject:v17])
          {
            [(NSHashTable *)self->_reportedStrokes addObject:v17];
            [v11 addObject:v17];
          }
        }

        v14 = [strokes countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v14);
    }

    v18 = objc_alloc(MEMORY[0x277CD95F8]);
    v19 = [v11 copy];
    v20 = [v18 initWithStrokes:v19 fromDrawing:drawing];

    delegate = [(AKInkOverlayView *)self delegate];
    [delegate inputView:self didCollectDrawingForAnalysis:v20];

    isUndoRegistrationEnabled = v22;
  }

  if (isUndoRegistrationEnabled)
  {
    [undoManager enableUndoRegistration];
  }
}

- (UIGestureRecognizer)drawingGestureRecognizer
{
  canvasView = [(AKInkOverlayView *)self canvasView];
  drawingGestureRecognizer = [canvasView drawingGestureRecognizer];

  return drawingGestureRecognizer;
}

- (UIGestureRecognizer)pinchGestureRecognizer
{
  canvasView = [(AKInkOverlayView *)self canvasView];
  pinchGestureRecognizer = [canvasView pinchGestureRecognizer];

  return pinchGestureRecognizer;
}

- (AKPageController)pageController
{
  WeakRetained = objc_loadWeakRetained(&self->_pageController);

  return WeakRetained;
}

- (id)drawingUndoTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_drawingUndoTarget);

  return WeakRetained;
}

- (AKInkOverlayViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)canvasSizeInPKDrawingSpace
{
  objc_copyStruct(v4, &self->_canvasSizeInPKDrawingSpace, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (PKRulerHostingDelegate)rulerHostingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_rulerHostingDelegate);

  return WeakRetained;
}

- (CGRect)previousPageRectInAKModel
{
  x = self->_previousPageRectInAKModel.origin.x;
  y = self->_previousPageRectInAKModel.origin.y;
  width = self->_previousPageRectInAKModel.size.width;
  height = self->_previousPageRectInAKModel.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end