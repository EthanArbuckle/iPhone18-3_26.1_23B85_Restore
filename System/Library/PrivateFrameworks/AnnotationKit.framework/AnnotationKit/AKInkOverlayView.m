@interface AKInkOverlayView
+ (CGRect)_convertRect:(CGRect)a3 fromPageControllerModelSpace:(id)a4 toDrawingInCanvasViewSpace:(id)a5;
+ (id)newAKInkOverlayViewForCurrentPlatformWithPageController:(id)a3 drawingUndoTarget:(id)a4;
+ (id)newDrawingUndoTargetWithPageController:(id)a3;
- (AKInkOverlayView)initWithFrame:(CGRect)a3;
- (AKInkOverlayView)initWithPageController:(id)a3 drawingUndoTarget:(id)a4;
- (AKInkOverlayViewDelegate)delegate;
- (AKPageController)pageController;
- (BOOL)_canvasView:(id)a3 shouldBeginDrawingWithTouch:(id)a4;
- (BOOL)canvasNeedsUpdate;
- (CGRect)previousPageRectInAKModel;
- (CGSize)canvasSizeInPKDrawingSpace;
- (PKRulerHostingDelegate)rulerHostingDelegate;
- (UIGestureRecognizer)drawingGestureRecognizer;
- (UIGestureRecognizer)pinchGestureRecognizer;
- (id)drawingUndoTarget;
- (id)updatedDrawingForPageRectUpdate;
- (void)_calculateFixedPixelSize:(CGSize *)a3 drawingScale:(double *)a4;
- (void)_canvasView:(id)a3 beganStroke:(id)a4;
- (void)_canvasView:(id)a3 cancelledStroke:(id)a4;
- (void)_canvasView:(id)a3 endedStroke:(id)a4;
- (void)_updateCanvasViewInk;
- (void)_updatedSelectedStrokesWithColor:(id)a3;
- (void)awakeFromNib;
- (void)canvasViewDidBeginDrawing:(id)a3;
- (void)canvasViewDidEndDrawing:(id)a3;
- (void)canvasViewDrawingDidChange:(id)a3;
- (void)commonInit;
- (void)commonPostInit;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)removeStrokesFromDrawing:(id)a3;
- (void)setInk:(id)a3;
- (void)setRulerHostingDelegate:(id)a3;
- (void)setupInkView;
- (void)teardown;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation AKInkOverlayView

+ (id)newAKInkOverlayViewForCurrentPlatformWithPageController:(id)a3 drawingUndoTarget:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithPageController:v6 drawingUndoTarget:v5];

  return v7;
}

+ (id)newDrawingUndoTargetWithPageController:(id)a3
{
  v3 = a3;
  v4 = [[_AKInkOverlayDrawingUndoTarget alloc] initWithPageController:v3];

  return v4;
}

- (AKInkOverlayView)initWithPageController:(id)a3 drawingUndoTarget:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AKInkOverlayView *)self initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v9 = v8;
  if (v8)
  {
    [(AKInkOverlayView *)v8 setPageController:v6];
    [(AKInkOverlayView *)v9 setDrawingUndoTarget:v7];
    [(AKInkOverlayView *)v9 commonPostInit];
  }

  return v9;
}

- (AKInkOverlayView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = AKInkOverlayView;
  v3 = [(AKInkOverlayView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [(AKInkOverlayView *)self pageController];
  v4 = [v3 controller];
  v5 = [v4 attributeController];
  v12 = [v5 ink];

  if (!v12 || ([v12 identifier], v6 = objc_claimAutoreleasedReturnValue(), v6, v7 = v12, !v6))
  {
    NSLog(&cfstr_SInvalidInitia.isa, "[AKInkOverlayView commonPostInit]");
    v8 = MEMORY[0x277CD9638];
    v9 = *MEMORY[0x277CD96E0];
    v10 = [MEMORY[0x277D75348] blackColor];
    v11 = [v8 inkWithIdentifier:v9 color:v10 weight:0.0];

    v7 = v11;
  }

  v13 = v7;
  [(AKInkOverlayView *)self setInk:v7];
}

- (void)teardown
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4 = [(AKInkOverlayView *)self canvasView];
  [v4 setDelegate:0];

  v5 = [(AKInkOverlayView *)self canvasView];
  [v5 removeFromSuperview];

  [(AKInkOverlayView *)self setCanvasView:0];

  [(AKInkOverlayView *)self setDelegate:0];
}

- (void)setInk:(id)a3
{
  v6 = a3;
  if (([v6 isEqual:self->_ink] & 1) == 0)
  {
    objc_storeStrong(&self->_ink, a3);
    [(AKInkOverlayView *)self _updateCanvasViewInk];
  }

  if (-[PKInk _isLassoInk](self->_ink, "_isLassoInk") && [v6 _isLassoInk])
  {
    v5 = [v6 color];
    [(AKInkOverlayView *)self _updatedSelectedStrokesWithColor:v5];
  }

  MEMORY[0x2821F96F8]();
}

- (void)_updateCanvasViewInk
{
  v3 = [(AKInkOverlayView *)self canvasView];

  if (v3)
  {
    v5 = [(AKInkOverlayView *)self ink];
    v4 = [(AKInkOverlayView *)self canvasView];
    [v4 setInk:v5];
  }
}

- (void)_updatedSelectedStrokesWithColor:(id)a3
{
  v6 = a3;
  v4 = [(AKInkOverlayView *)self canvasView];

  if (v4)
  {
    v5 = [(AKInkOverlayView *)self canvasView];
    [v5 _setSelectedStrokesColor:v6];
  }
}

- (void)removeStrokesFromDrawing:(id)a3
{
  v4 = a3;
  v13 = [(AKInkOverlayView *)self canvasView];
  v5 = [v13 drawing];
  v6 = [v5 strokes];
  v7 = [v6 mutableCopy];

  [v7 minusOrderedSet:v4];
  v8 = objc_alloc(MEMORY[0x277CD95F8]);
  v9 = [v7 copy];
  v10 = [(AKInkOverlayView *)self canvasView];
  v11 = [v10 drawing];
  v12 = [v8 initWithStrokes:v9 fromDrawing:v11];
  [v13 setDrawing:v12];
}

- (void)willMoveToSuperview:(id)a3
{
  v4 = [(AKInkOverlayView *)self canvasView];
  if (v4)
  {
    v5 = v4;
    [v4 setDelegate:0];
    [v5 setDrawingUndoTarget:0];
    [(AKInkOverlayView *)self setCanvasView:0];
    v4 = v5;
  }
}

- (void)didMoveToSuperview
{
  v3 = [(AKInkOverlayView *)self superview];

  if (v3)
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
  v19 = [v17 layer];
  [v19 setAnchorPoint:{0.5, 0.5}];

  memset(&v34, 0, sizeof(v34));
  CGAffineTransformMakeScale(&v34, 1.0, -1.0);
  v33 = v34;
  [v17 setTransform:&v33];
  [v17 setFrame:{v4, v6, v8, v10}];
  v20 = [(AKInkOverlayView *)self drawingUndoTarget];
  [v17 setDrawingUndoTarget:v20];

  [v17 setDrawingUndoSelector:sel_performUndo_];
  [(AKInkOverlayView *)self addSubview:v17];
  v21 = [v17 centerXAnchor];
  v22 = [(AKInkOverlayView *)self centerXAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];
  [v23 setActive:1];

  v24 = [v17 centerYAnchor];
  v25 = [(AKInkOverlayView *)self centerYAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];
  [v26 setActive:1];

  v27 = [v17 widthAnchor];
  v28 = [(AKInkOverlayView *)self widthAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];
  [v29 setActive:1];

  v30 = [v17 heightAnchor];
  v31 = [(AKInkOverlayView *)self heightAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];
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
    v4 = [(AKInkOverlayView *)self pageController];
    [v4 maxPageRect];
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

  v17 = [(AKInkOverlayView *)self canvasView];
  if (v17)
  {
    v18 = [(AKInkOverlayView *)self canvasView];
    [v18 _fixedPixelSize];
    if (v19 == 5.0)
    {
      v20 = [(AKInkOverlayView *)self canvasView];
      [v20 frame];
      if (CGRectGetWidth(v26) <= 10.0)
      {
        v22 = 0;
      }

      else
      {
        v21 = [(AKInkOverlayView *)self canvasView];
        [v21 frame];
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
    v3 = [(AKInkOverlayView *)self canvasView];
    v4 = [v3 drawing];
  }

  else
  {
    v3 = [(AKInkOverlayView *)self pageController];
    v5 = objc_opt_class();
    [(AKInkOverlayView *)self previousPageRectInAKModel];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(AKInkOverlayView *)self canvasView];
    [v5 _convertRect:v3 fromPageControllerModelSpace:v14 toDrawingInCanvasViewSpace:{v7, v9, v11, v13}];
    v16 = v15;
    recta = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v23 = objc_opt_class();
    [v3 maxPageRect];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = [(AKInkOverlayView *)self canvasView];
    [v23 _convertRect:v3 fromPageControllerModelSpace:v32 toDrawingInCanvasViewSpace:{v25, v27, v29, v31}];
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
    v45 = [(AKInkOverlayView *)self canvasView];
    v46 = [v45 drawing];
    rect_8 = v50;
    v4 = [v46 drawingByApplyingTransform:&rect_8];
  }

  return v4;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = AKInkOverlayView;
  [(AKInkOverlayView *)&v9 layoutSubviews];
  v3 = [(AKInkOverlayView *)self pageController];
  if ([(AKInkOverlayView *)self canvasNeedsUpdate])
  {
    v8 = *MEMORY[0x277CBF3A8];
    v7 = 1.0;
    [(AKInkOverlayView *)self _calculateFixedPixelSize:&v8 drawingScale:&v7];
    v4 = [(AKInkOverlayView *)self canvasView];
    [v4 _setFixedPixelSize:v8 drawingScale:v7];

    v5 = [(AKInkOverlayView *)self updatedDrawingForPageRectUpdate];
    v6 = [(AKInkOverlayView *)self canvasView];
    [v6 setDrawing:v5];

    [v3 updateOverlayViewLayers];
  }

  [v3 maxPageRect];
  [(AKInkOverlayView *)self setPreviousPageRectInAKModel:?];
}

- (void)setRulerHostingDelegate:(id)a3
{
  v6 = a3;
  objc_storeWeak(&self->_rulerHostingDelegate, v6);
  v4 = [(AKInkOverlayView *)self canvasView];

  if (v4)
  {
    v5 = [(AKInkOverlayView *)self canvasView];
    [v5 setRulerHostingDelegate:v6];
  }
}

- (void)_calculateFixedPixelSize:(CGSize *)a3 drawingScale:(double *)a4
{
  v7 = *MEMORY[0x277CBF3A8];
  v8 = *(MEMORY[0x277CBF3A8] + 8);
  v9 = [(AKInkOverlayView *)self pageController];
  v10 = [v9 controller];
  v11 = [MEMORY[0x277CCA8D8] mainBundle];
  v12 = [v11 bundleIdentifier];
  v13 = [v12 isEqualToString:@"com.apple.ScreenshotServicesService"];

  v14 = self;
  [v9 maxPageRect];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [v10 akModelToCanvasFixedPixelScaleOfFirstEncounteredPage];
  v24 = v23;
  [v10 screenPixelsToCanvasPixelsDownscale];
  if (v24 == 0.0)
  {
    v26 = [MEMORY[0x277CCA8D8] mainBundle];
    v27 = [v26 bundleIdentifier];
    v28 = [v27 isEqualToString:@"com.apple.iBooks"];

    v29 = v8;
    v30 = v7;
    v77 = v16;
    if (v28)
    {
      v31 = [(AKInkOverlayView *)v14 window];
      v32 = [v31 screen];
      [v32 scale];
      v34 = v33;

      v35 = fmax(v34, 1.0);
      [(AKInkOverlayView *)v14 bounds];
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
      [(AKInkOverlayView *)v14 bounds];
      [AKGeometryHelper convertRect:v14 fromViewToScreenPixels:1 useNativeScale:?];
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
    v47 = +[AKGeometryHelper exifOrientationHasReversedAxes:](AKGeometryHelper, "exifOrientationHasReversedAxes:", [v9 currentModelToScreenExifOrientation]);
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
    [v10 setAkModelToCanvasFixedPixelScaleOfFirstEncounteredPage:v45 / CGRectGetWidth(v79)];
    [v10 setScreenPixelsToCanvasPixelsDownscale:v43];
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

  v49 = [v9 pageModelController];
  v50 = [v49 inkCanvasAnnotation];

  v51 = v8;
  v52 = v7;
  if (v50)
  {
    [v50 drawingSize];
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
      [v10 akModelToCanvasFixedPixelScaleOfFirstEncounteredPage];
      v60 = v61;
    }

    else
    {
      v64 = [(AKInkOverlayView *)v14 window];
      v65 = [v64 screen];
      [v65 bounds];
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
      v72 = [(AKInkOverlayView *)v14 window];
      v73 = [v72 screen];
      [v73 nativeScale];
      v75 = v71 * v74;

      v60 = v43 * v75;
    }

    [(AKInkOverlayView *)v14 setCanvasSizeInPKDrawingSpace:v45 / v60, v48 / v60];
  }

  else if (v13)
  {
    [v10 akModelToCanvasFixedPixelScaleOfFirstEncounteredPage];
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

  if (a3)
  {
    a3->width = v45;
    a3->height = v48;
  }

  if (a4)
  {
    *a4 = v60;
  }
}

+ (CGRect)_convertRect:(CGRect)a3 fromPageControllerModelSpace:(id)a4 toDrawingInCanvasViewSpace:(id)a5
{
  if (a4 && a5)
  {
    height = a3.size.height;
    width = a3.size.width;
    y = a3.origin.y;
    x = a3.origin.x;
    memset(&v30, 0, sizeof(v30));
    v10 = a5;
    v11 = a4;
    [v10 drawingTransform];
    CGAffineTransformInvert(&v30, &v29);
    [v11 convertRectFromModelToOverlay:{x, y, width, height}];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = [v11 overlayView];

    [v20 convertRect:v10 toView:{v13, v15, v17, v19}];
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

- (BOOL)_canvasView:(id)a3 shouldBeginDrawingWithTouch:(id)a4
{
  v5 = a4;
  v6 = [(AKInkOverlayView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 inputViewCanBeginDrawing:self withTouch:v5];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)canvasViewDidBeginDrawing:(id)a3
{
  v12 = a3;
  v4 = [(AKInkOverlayView *)self delegate];
  [v4 inputViewDidBeginStroke:self];

  v5 = [(AKInkOverlayView *)self pageController];
  v6 = [v5 controller];

  v7 = [v6 modernToolbarView];
  v8 = [(AKInkOverlayView *)self window];
  v9 = [v8 firstResponder];
  if (v9)
  {
  }

  else
  {
    v10 = [v7 shouldHide];

    if ((v10 & 1) == 0)
    {
      [v12 becomeFirstResponder];
    }
  }

  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  [v11 postNotificationName:qword_27E399B38 object:v6];
}

- (void)canvasViewDidEndDrawing:(id)a3
{
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = off_27E399B30;
  v5 = [(AKInkOverlayView *)self pageController];
  v6 = [v5 controller];
  [v7 postNotificationName:v4 object:v6];
}

- (void)_canvasView:(id)a3 beganStroke:(id)a4
{
  v5 = a4;
  v8 = [(AKInkOverlayView *)self pageController];
  v6 = [v8 controller];
  v7 = [v6 sidecarController];
  [v7 handleLiveStrokeBegan:v5 onInkOverlayView:self];
}

- (void)_canvasView:(id)a3 endedStroke:(id)a4
{
  v6 = [(AKInkOverlayView *)self pageController:a3];
  v4 = [v6 controller];
  v5 = [v4 sidecarController];
  [v5 handleLiveStrokeComplete:1];
}

- (void)_canvasView:(id)a3 cancelledStroke:(id)a4
{
  v4 = [(AKInkOverlayView *)self pageController:a3];
  v7 = [v4 controller];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:qword_27E399B40 object:v7];

  v6 = [v7 sidecarController];
  [v6 handleLiveStrokeComplete:0];
}

- (void)canvasViewDrawingDidChange:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AKInkOverlayView *)self pageController];
  v6 = [v5 controller];
  v7 = [v6 undoController];
  v8 = [v7 undoManager];

  v9 = [v8 isUndoRegistrationEnabled];
  if (v9)
  {
    [v8 disableUndoRegistration];
  }

  v10 = [v4 drawing];
  if (v10)
  {
    v22 = v9;
    v11 = objc_opt_new();
    v12 = [v10 strokes];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v23 + 1) + 8 * i);
          if (![(NSHashTable *)self->_reportedStrokes containsObject:v17])
          {
            [(NSHashTable *)self->_reportedStrokes addObject:v17];
            [v11 addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v14);
    }

    v18 = objc_alloc(MEMORY[0x277CD95F8]);
    v19 = [v11 copy];
    v20 = [v18 initWithStrokes:v19 fromDrawing:v10];

    v21 = [(AKInkOverlayView *)self delegate];
    [v21 inputView:self didCollectDrawingForAnalysis:v20];

    v9 = v22;
  }

  if (v9)
  {
    [v8 enableUndoRegistration];
  }
}

- (UIGestureRecognizer)drawingGestureRecognizer
{
  v2 = [(AKInkOverlayView *)self canvasView];
  v3 = [v2 drawingGestureRecognizer];

  return v3;
}

- (UIGestureRecognizer)pinchGestureRecognizer
{
  v2 = [(AKInkOverlayView *)self canvasView];
  v3 = [v2 pinchGestureRecognizer];

  return v3;
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