@interface PKCanvasView
- (BOOL)_canvasViewSnapshottingDisabled:(id)a3;
- (BOOL)_hasObserver:(id)a3;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)canvasView:(id)a3 hoverShouldBeActiveAt:(CGPoint)a4;
- (BOOL)canvasView:(id)a3 shouldBeginDrawingWithTouch:(id)a4;
- (BOOL)predictionDisabled;
- (BOOL)rulerHostWantsSharedRuler;
- (CGAffineTransform)drawingTransform;
- (CGAffineTransform)strokeTransform;
- (CGPoint)rulerSnapLineOriginAndNormal:(CGPoint *)a3 topSide:(BOOL)a4;
- (CGSize)_fixedPixelSize;
- (CGSize)_metalViewDrawableSize;
- (CGSize)_rendererControllerPixelSize;
- (NSHashTable)_observers;
- (PKCanvasView)initWithFrame:(CGRect)a3 drawingWidth:(double)a4 fixedPixelSizeScrollView:(id)a5;
- (PKCanvasView)initWithFrame:(CGRect)a3 fixedPixelSize:(CGSize)a4 drawingScale:(double)a5 layerFixedPixelSize:(BOOL)a6;
- (PKCanvasView)initWithFrame:(CGRect)a3 sixChannelBlend:(BOOL)a4 snapshotView:(id)a5;
- (PKDrawing)drawing;
- (PKRulerHostingDelegate)rulerHostingDelegate;
- (PKTool)tool;
- (UIGestureRecognizer)drawingGestureRecognizer;
- (UIHoverGestureRecognizer)_hoverGestureRecognizer;
- (UIView)selectionView;
- (id)_allowedDrawingTouchTypes;
- (id)_selectionInteraction;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)rulerHostingView;
- (void)_addObserver:(id)a3;
- (void)_canvasViewWillBeginDrawing:(id)a3;
- (void)_canvasViewWillCreateSnapshot:(id)a3;
- (void)_drawingDidChange;
- (void)_fullyRendered;
- (void)_keepPencilShadowVisible;
- (void)_removeObserver:(id)a3;
- (void)_setChildrenBackgroundColor:(id)a3;
- (void)_setContentViewOpaqueBackgroundColorIfApplicable;
- (void)_setDrawing:(id)a3 fullyRenderedCompletionBlock:(id)a4;
- (void)_setFixedPixelSize:(CGSize)a3 drawingScale:(double)a4;
- (void)_setupTiledViewWantsExtendedDynamicRangeContent;
- (void)_updateCanvas;
- (void)_updateChildrenOpaque;
- (void)_updatePencilShadowViewWithInputPoint:(id *)a3;
- (void)awakeFromNib;
- (void)canvasView:(id)a3 beganStroke:(id)a4;
- (void)canvasView:(id)a3 cancelledStroke:(id)a4;
- (void)canvasView:(id)a3 didChangeHiddenState:(BOOL)a4;
- (void)canvasView:(id)a3 didRefineStrokes:(id)a4 withNewStrokes:(id)a5;
- (void)canvasView:(id)a3 endedStroke:(id)a4 shapeStrokes:(id)a5;
- (void)canvasView:(id)a3 scratchOutStrokes:(id)a4 drawing:(id)a5;
- (void)canvasViewDidBeginDrawing:(id)a3;
- (void)canvasViewDidBeginLasso:(id)a3;
- (void)canvasViewDidEndDrawing:(id)a3;
- (void)canvasViewDidEndLasso:(id)a3;
- (void)didMoveToWindow;
- (void)imageWithCompletionBlock:(id)a3;
- (void)layoutSubviews;
- (void)setAllowsFingerDrawing:(BOOL)allowsFingerDrawing;
- (void)setBackgroundColor:(id)a3;
- (void)setContentSize:(CGSize)a3;
- (void)setDelegate:(id)delegate;
- (void)setDrawing:(PKDrawing *)drawing;
- (void)setDrawingTransform:(CGAffineTransform *)a3;
- (void)setInk:(id)a3;
- (void)setMaximumZoomScale:(double)a3;
- (void)setOpaque:(BOOL)a3;
- (void)setPredictionDisabled:(BOOL)a3;
- (void)setRulerHostingDelegate:(id)a3;
- (void)setTool:(PKTool *)tool;
- (void)setupDrawingWidth:(double)a3 fixedPixelSizeScrollView:(id)a4 sixChannelBlend:(BOOL)a5 drawBitmapEraserMask:(BOOL)a6;
- (void)toolPickerIsRulerActiveDidChange:(id)a3;
- (void)toolPickerSelectedToolItemDidChange:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateFixedPixelSizeViewForBounds:(CGRect)a3;
- (void)updateSubviewsForBounds:(CGRect)a3;
@end

@implementation PKCanvasView

- (PKCanvasView)initWithFrame:(CGRect)a3 drawingWidth:(double)a4 fixedPixelSizeScrollView:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v14.receiver = self;
  v14.super_class = PKCanvasView;
  v10 = a5;
  v11 = [(PKCanvasView *)&v14 initWithFrame:x, y, width, height];
  v12 = +[PKContentVersionUtility sharedUtility];
  v11->__observers = [(PKContentVersionUtility *)v12 contentVersionForCurrentSDK];

  [(PKCanvasView *)v11 setupDrawingWidth:v10 fixedPixelSizeScrollView:a4, v14.receiver, v14.super_class];
  return v11;
}

- (PKCanvasView)initWithFrame:(CGRect)a3 sixChannelBlend:(BOOL)a4 snapshotView:(id)a5
{
  v5 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v14.receiver = self;
  v14.super_class = PKCanvasView;
  v10 = a5;
  v11 = [(PKCanvasView *)&v14 initWithFrame:x, y, width, height];
  v12 = +[PKContentVersionUtility sharedUtility];
  v11->__observers = [(PKContentVersionUtility *)v12 contentVersionForCurrentSDK];

  [(PKCanvasView *)v11 setupDrawingWidth:0 fixedPixelSizeScrollView:v5 sixChannelBlend:0 drawBitmapEraserMask:0.0, v14.receiver, v14.super_class];
  [(PKTiledView *)v11->_tiledView setContentSnapshottingView:v10];

  return v11;
}

- (void)awakeFromNib
{
  v5.receiver = self;
  v5.super_class = PKCanvasView;
  [(PKCanvasView *)&v5 awakeFromNib];
  if (!self->__observers)
  {
    v3 = +[PKContentVersionUtility sharedUtility];
    self->__observers = [(PKContentVersionUtility *)v3 contentVersionForCurrentSDK];
  }

  [(PKCanvasView *)self setupDrawingWidth:0 fixedPixelSizeScrollView:0.0];
  v4 = [(PKCanvasView *)self backgroundColor];
  [(PKCanvasView *)self _setChildrenBackgroundColor:v4];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(PKCanvasView *)self _tiledView];
  v9 = [v8 disableTileRendering];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PKCanvasView;
    v10 = [(PKCanvasView *)&v12 hitTest:v7 withEvent:x, y];
  }

  return v10;
}

- (void)setupDrawingWidth:(double)a3 fixedPixelSizeScrollView:(id)a4 sixChannelBlend:(BOOL)a5 drawBitmapEraserMask:(BOOL)a6
{
  v6 = a5;
  v64 = a4;
  v10 = objc_opt_class();
  if (v64)
  {
    [v64 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    objc_storeStrong(&self->_fixedPixelSizeScrollView, a4);
    v19 = objc_alloc(MEMORY[0x1E69DD250]);
    [(UIScrollView *)self->_fixedPixelSizeScrollView bounds];
    v20 = [v19 initWithFrame:?];
    fixedPixelSizeScrollViewWrapper = self->_fixedPixelSizeScrollViewWrapper;
    self->_fixedPixelSizeScrollViewWrapper = v20;

    [(UIView *)self->_fixedPixelSizeScrollViewWrapper addSubview:self->_fixedPixelSizeScrollView];
    v22 = [(UIView *)self->_fixedPixelSizeScrollViewWrapper layer];
    [v22 setAnchorPoint:{0.0, 0.0}];

    [(PKCanvasView *)self bounds];
    [(PKCanvasView *)self updateFixedPixelSizeViewForBounds:?];
  }

  else
  {
    [(PKCanvasView *)self bounds];
    v12 = v23;
    v14 = v24;
    v16 = v25;
    v18 = v26;
  }

  v27 = [(PKCanvasView *)self panGestureRecognizer];
  [v27 setAllowedTouchTypes:&unk_1F47C1E38];

  v28 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v12, v14, v16, v18}];
  rulerHostingDelegate = self->_rulerHostingDelegate;
  self->_rulerHostingDelegate = v28;

  v30 = [PKCanvasAttachmentView alloc];
  v31 = objc_alloc_init(v10);
  v32 = [(PKAttachmentView *)v30 initWithFrame:v31 drawing:v12, v14, v16, v18];
  pageView = self->_pageView;
  self->_pageView = v32;

  [(PKCanvasAttachmentView *)self->_pageView setCanvasView:self];
  [(PKAttachmentView *)self->_pageView setSixChannelBlending:v6];
  [(PKCanvasAttachmentView *)self->_pageView setUserInteractionEnabled:0];
  [(PKCanvasAttachmentView *)self->_pageView setDrawingWidth:a3];
  [(PKRulerHostingDelegate *)self->_rulerHostingDelegate addSubview:self->_pageView];
  v34 = [PKTiledView alloc];
  if (self->_fixedPixelSizeScrollView)
  {
    fixedPixelSizeScrollView = self->_fixedPixelSizeScrollView;
  }

  else
  {
    fixedPixelSizeScrollView = self;
  }

  v36 = [(PKTiledView *)v34 initInScrollView:fixedPixelSizeScrollView sixChannelBlending:v6 defaultDrawingClass:objc_opt_class()];
  tiledView = self->_tiledView;
  self->_tiledView = v36;

  [(PKCanvasView *)self _setupTiledViewWantsExtendedDynamicRangeContent];
  [(PKTiledView *)self->_tiledView setAttachmentContainerView:self->_rulerHostingDelegate];
  [(PKTiledView *)self->_tiledView setDelegate:self];
  [(PKTiledView *)self->_tiledView setRulerHostingDelegate:self];
  [(PKTiledView *)self->_tiledView setMaximumSupportedContentVersion:self->__observers];
  if ((+[PKShapeDrawingController hasSnapToShapeEntitlement]& 1) != 0)
  {
    goto LABEL_16;
  }

  v38 = [MEMORY[0x1E696AAE8] mainBundle];
  v39 = [v38 bundleIdentifier];
  v40 = [v39 isEqualToString:@"com.apple.mobilenotes"];

  if (v40)
  {
    goto LABEL_16;
  }

  v41 = [MEMORY[0x1E696AAE8] mainBundle];
  v42 = [v41 bundleIdentifier];
  v43 = [v42 hasPrefix:@"com.apple.sidecar.extension."];

  if (v43)
  {
    goto LABEL_16;
  }

  v44 = [MEMORY[0x1E696AAE8] mainBundle];
  v45 = [v44 bundleIdentifier];
  v46 = [v45 isEqualToString:@"com.apple.ScreenshotServicesService"];

  if (v46)
  {
    goto LABEL_16;
  }

  if (PKIsInternalTestApp())
  {
    goto LABEL_16;
  }

  v47 = [MEMORY[0x1E696AAE8] mainBundle];
  v48 = [v47 bundleIdentifier];
  v49 = [v48 isEqualToString:@"com.apple.PaperKit.MarkupPhotoEditingExtension"];

  if (v49)
  {
    goto LABEL_16;
  }

  v50 = [MEMORY[0x1E696AAE8] mainBundle];
  v51 = [v50 bundleIdentifier];
  if ([v51 isEqualToString:@"com.apple.quicklook.extension.previewUI"])
  {

LABEL_16:
    [(PKTiledView *)self->_tiledView setAllowSnapToShape:1];
    goto LABEL_17;
  }

  v62 = [MEMORY[0x1E696AAE8] mainBundle];
  v52 = [v62 bundleIdentifier];
  v63 = [v52 isEqualToString:@"com.apple.quicklook.UIExtension"];

  if (v63)
  {
    goto LABEL_16;
  }

  v61 = [MEMORY[0x1E695E000] standardUserDefaults];
  -[PKTiledView setAllowSnapToShape:](self->_tiledView, "setAllowSnapToShape:", [v61 BOOLForKey:@"internalSettings.shapeRecognition.enableEverywhere"]);

LABEL_17:
  v53 = [MEMORY[0x1E696AAE8] mainBundle];
  v54 = [v53 bundleIdentifier];
  v55 = [v54 isEqualToString:@"com.apple.Pages"];

  if ((v55 & 1) == 0)
  {
    v56 = [(PKTiledView *)self->_tiledView selectionInteraction];
    [v56 setDelegate:self];
  }

  if (v6)
  {
    v57 = [(PKTiledView *)self->_tiledView canvasView];
    [v57 setOpaque:1];

    [(PKTiledView *)self->_tiledView setCanvasViewZOrderPolicy:1];
  }

  [(PKTiledView *)self->_tiledView setInsertSpaceEnabled:self->_fixedPixelSizeScrollView == 0];
  v58 = self->_fixedPixelSizeScrollView;
  v59 = self->_rulerHostingDelegate;
  if (v58)
  {
    [(UIScrollView *)v58 insertSubview:v59 atIndex:0];
    v59 = self->_fixedPixelSizeScrollViewWrapper;
  }

  [(PKCanvasView *)self insertSubview:v59 atIndex:0];
  v60 = [MEMORY[0x1E696AD88] defaultCenter];
  [v60 addObserver:self selector:sel__drawingDidChange name:@"drawingDidChange" object:self->_pageView];

  [(PKCanvasView *)self _setContentViewOpaqueBackgroundColorIfApplicable];
  [(PKTiledView *)self->_tiledView _layoutSubviews];
}

- (void)setOpaque:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKCanvasView;
  [(PKCanvasView *)&v4 setOpaque:a3];
  [(PKCanvasView *)self _updateChildrenOpaque];
}

- (void)_updateChildrenOpaque
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [(PKCanvasView *)self backgroundColor];

  if (v3)
  {
    *(&v8 + 1) = unk_1C801EC90;
    v4 = [(PKCanvasView *)self backgroundColor:0];
    DKUColorGetRGBAComponents([v4 CGColor], &v7);

    v5 = *(&v8 + 1) >= 1.0;
  }

  else
  {
    v5 = [(PKCanvasView *)self isOpaque];
  }

  v6 = [(PKTiledView *)self->_tiledView canvasView];
  [v6 setOpaque:v5];

  [(PKRulerHostingDelegate *)self->_rulerHostingDelegate setOpaque:v5];
  [(PKCanvasAttachmentView *)self->_pageView setOpaque:v5];
  if (v5)
  {
    [(PKCanvasView *)self _setContentViewOpaqueBackgroundColorIfApplicable];
  }

  else
  {
    [(PKRulerHostingDelegate *)self->_rulerHostingDelegate setBackgroundColor:0];
  }
}

- (void)_setContentViewOpaqueBackgroundColorIfApplicable
{
  if ([(PKCanvasView *)self isOpaque])
  {
    v9 = [(PKCanvasView *)self backgroundColor];
    if (!v9)
    {
      v3 = [(PKCanvasView *)self traitCollection];
      if ([v3 userInterfaceStyle] == 2)
      {
        [MEMORY[0x1E69DC888] blackColor];
      }

      else
      {
        [MEMORY[0x1E69DC888] whiteColor];
      }
      v9 = ;
    }

    v4 = [(PKRulerHostingDelegate *)self->_rulerHostingDelegate backgroundColor];
    v5 = [v4 isEqual:v9];

    if ((v5 & 1) == 0)
    {
      [(PKRulerHostingDelegate *)self->_rulerHostingDelegate setBackgroundColor:v9];
    }

    v6 = [(PKCanvasView *)self traitCollection];
    v7 = [v9 resolvedColorWithTraitCollection:v6];

    v8 = [(PKTiledView *)self->_tiledView canvasView];
    [v8 setCanvasBackgroundColor:v7];
  }
}

- (void)setBackgroundColor:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKCanvasView;
  v4 = a3;
  [(PKCanvasView *)&v5 setBackgroundColor:v4];
  [(PKCanvasView *)self _setChildrenBackgroundColor:v4, v5.receiver, v5.super_class];
}

- (void)_setChildrenBackgroundColor:(id)a3
{
  tiledView = self->_tiledView;
  v5 = a3;
  v6 = [(PKTiledView *)tiledView canvasView];
  [v6 setCanvasBackgroundColor:v5];

  [(PKRulerHostingDelegate *)self->_rulerHostingDelegate setBackgroundColor:v5];

  [(PKCanvasView *)self _updateChildrenOpaque];
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = PKCanvasView;
  v4 = a3;
  [(PKCanvasView *)&v8 traitCollectionDidChange:v4];
  v5 = [v4 userInterfaceStyle];

  v6 = [(PKCanvasView *)self traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (v5 != v7)
  {
    [(PKCanvasView *)self _setContentViewOpaqueBackgroundColorIfApplicable];
  }
}

- (void)setDelegate:(id)delegate
{
  v25.receiver = self;
  v25.super_class = PKCanvasView;
  v4 = delegate;
  [(PKCanvasView *)&v25 setDelegate:v4];
  self->_canvasViewFlags = (*&self->_canvasViewFlags & 0xFFFFFFFE | objc_opt_respondsToSelector() & 1);
  if (objc_opt_respondsToSelector())
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  self->_canvasViewFlags = (*&self->_canvasViewFlags & 0xFFFFFFFD | v5);
  if (objc_opt_respondsToSelector())
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  self->_canvasViewFlags = (*&self->_canvasViewFlags & 0xFFFFFFFB | v6);
  if (objc_opt_respondsToSelector())
  {
    v7 = 8;
  }

  else
  {
    v7 = 0;
  }

  self->_canvasViewFlags = (*&self->_canvasViewFlags & 0xFFFFFFF7 | v7);
  if (objc_opt_respondsToSelector())
  {
    v8 = 16;
  }

  else
  {
    v8 = 0;
  }

  self->_canvasViewFlags = (*&self->_canvasViewFlags & 0xFFFFFFEF | v8);
  if (objc_opt_respondsToSelector())
  {
    v9 = 32;
  }

  else
  {
    v9 = 0;
  }

  self->_canvasViewFlags = (*&self->_canvasViewFlags & 0xFFFFFFDF | v9);
  if (objc_opt_respondsToSelector())
  {
    v10 = 64;
  }

  else
  {
    v10 = 0;
  }

  self->_canvasViewFlags = (*&self->_canvasViewFlags & 0xFFFFFFBF | v10);
  if (objc_opt_respondsToSelector())
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  self->_canvasViewFlags = (*&self->_canvasViewFlags & 0xFFFFFEFF | v11);
  if (objc_opt_respondsToSelector())
  {
    v12 = 512;
  }

  else
  {
    v12 = 0;
  }

  self->_canvasViewFlags = (*&self->_canvasViewFlags & 0xFFFFFDFF | v12);
  if (objc_opt_respondsToSelector())
  {
    v13 = 1024;
  }

  else
  {
    v13 = 0;
  }

  self->_canvasViewFlags = (*&self->_canvasViewFlags & 0xFFFFFBFF | v13);
  if (objc_opt_respondsToSelector())
  {
    v14 = 4096;
  }

  else
  {
    v14 = 0;
  }

  self->_canvasViewFlags = (*&self->_canvasViewFlags & 0xFFFFEFFF | v14);
  if (objc_opt_respondsToSelector())
  {
    v15 = 0x2000;
  }

  else
  {
    v15 = 0;
  }

  self->_canvasViewFlags = (*&self->_canvasViewFlags & 0xFFFFDFFF | v15);
  if (objc_opt_respondsToSelector())
  {
    v16 = 2048;
  }

  else
  {
    v16 = 0;
  }

  self->_canvasViewFlags = (*&self->_canvasViewFlags & 0xFFFFF7FF | v16);
  if (objc_opt_respondsToSelector())
  {
    v17 = 0x4000;
  }

  else
  {
    v17 = 0;
  }

  self->_canvasViewFlags = (*&self->_canvasViewFlags & 0xFFFFBFFF | v17);
  if (objc_opt_respondsToSelector())
  {
    v18 = 0x8000;
  }

  else
  {
    v18 = 0;
  }

  self->_canvasViewFlags = (*&self->_canvasViewFlags & 0xFFFF7FFF | v18);
  if (objc_opt_respondsToSelector())
  {
    v19 = 0x10000;
  }

  else
  {
    v19 = 0;
  }

  self->_canvasViewFlags = (*&self->_canvasViewFlags & 0xFFFEFFFF | v19);
  if (objc_opt_respondsToSelector())
  {
    v20 = 0x20000;
  }

  else
  {
    v20 = 0;
  }

  self->_canvasViewFlags = (*&self->_canvasViewFlags & 0xFFFDFFFF | v20);
  if (objc_opt_respondsToSelector())
  {
    v21 = 0x40000;
  }

  else
  {
    v21 = 0;
  }

  self->_canvasViewFlags = (*&self->_canvasViewFlags & 0xFFFBFFFF | v21);
  v22 = objc_opt_respondsToSelector();

  if (v22)
  {
    v23 = 0x80000;
  }

  else
  {
    v23 = 0;
  }

  self->_canvasViewFlags = (*&self->_canvasViewFlags & 0xFFF7FFFF | v23);
  v24 = [(PKTiledView *)self->_tiledView rulerHostingDelegate:v25.receiver];

  if (v24 == self)
  {
    [(PKTiledView *)self->_tiledView setRulerHostingDelegate:self];
  }
}

- (void)setMaximumZoomScale:(double)a3
{
  v3.receiver = self;
  v3.super_class = PKCanvasView;
  [(PKCanvasView *)&v3 setMaximumZoomScale:fmin(a3, 10.0)];
}

- (void)_fullyRendered
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(PKCanvasAttachmentView *)self->_pageView _wantsFullyRenderedNotification])
  {
    if ((*&self->_canvasViewFlags & 2) != 0)
    {
      v3 = [(PKCanvasView *)self delegate];
      [v3 canvasViewDidFinishRendering:self];
    }

    [(PKCanvasAttachmentView *)self->_pageView set_wantsFullyRenderedNotification:0];
  }

  v4 = [(PKCanvasAttachmentView *)self->_pageView fullyRenderedCompletionBlocks];
  v5 = [v4 count];

  if (v5)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(PKCanvasAttachmentView *)self->_pageView fullyRenderedCompletionBlocks];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          (*(*(*(&v12 + 1) + 8 * v10++) + 16))();
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    v11 = [(PKCanvasAttachmentView *)self->_pageView fullyRenderedCompletionBlocks];
    [v11 removeAllObjects];
  }
}

- (void)_drawingDidChange
{
  if (*&self->_canvasViewFlags)
  {
    v3 = [(PKAttachmentView *)self->_pageView drawing];
    v4 = [v3 containsInternalStrokes];

    if ((v4 & 1) == 0)
    {
      v5 = [(PKCanvasView *)self delegate];
      [v5 canvasViewDrawingDidChange:self];
    }
  }
}

- (PKDrawing)drawing
{
  v3 = [(PKAttachmentView *)self->_pageView drawing];
  v4 = [v3 containsInternalStrokes];

  v5 = [(PKAttachmentView *)self->_pageView drawing];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 copyWithoutInternalStrokes];
  }

  else
  {
    v7 = [v5 copy];
  }

  v8 = v7;

  return v8;
}

- (void)setDrawing:(PKDrawing *)drawing
{
  v11 = drawing;
  if (-[PKTiledView disableTileRendering](self->_tiledView, "disableTileRendering") && (-[PKDrawing strokes](v11, "strokes"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 count], v4, !v5))
  {
    v8 = [(PKAttachmentView *)self->_pageView drawing];
    v9 = [(PKAttachmentView *)self->_pageView drawing];
    v10 = [v9 strokes];
    [v8 deleteStrokes:v10];
  }

  else
  {
    v6 = v11;
    if (!v11)
    {
      v6 = objc_alloc_init(objc_opt_class());
    }

    v11 = v6;
    [(PKTiledView *)self->_tiledView _resetDrawingState];
    [(PKCanvasView *)self layoutIfNeeded];
    v7 = [(PKDrawing *)v11 copy];
    [(PKAttachmentView *)self->_pageView setDrawing:v7];

    if ((*&self->_canvasViewFlags & 2) != 0)
    {
      [(PKCanvasAttachmentView *)self->_pageView set_wantsFullyRenderedNotification:1];
    }

    [(PKTiledView *)self->_tiledView _layoutSubviews];
    [(PKTiledView *)self->_tiledView updateTilesForVisibleRect];
  }
}

- (void)setInk:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = [MEMORY[0x1E69DC888] blackColor];
    v6 = [PKInk inkWithIdentifier:@"com.apple.ink.pen" color:v5 weight:-1.0];

    v4 = v6;
  }

  v7 = v4;
  [(PKTiledView *)self->_tiledView setInk:v4];
}

- (PKTool)tool
{
  tool = self->_tool;
  if (tool)
  {
    v3 = tool;
  }

  else
  {
    v4 = [(PKTiledView *)self->_tiledView ink];
    v3 = [PKTool _toolWithInk:v4];
  }

  return v3;
}

- (void)setTool:(PKTool *)tool
{
  v8 = tool;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Can not use PKCustomTool with PKCanvasView." userInfo:0];
    objc_exception_throw(v7);
  }

  v5 = v8;
  if (v8)
  {
    v6 = [(PKTool *)v8 ink];
    [(PKTiledView *)self->_tiledView setInk:v6];

    objc_storeStrong(&self->_tool, tool);
    v5 = v8;
  }
}

- (void)updateSubviewsForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (self->_fixedPixelSizeScrollView)
  {

    [(PKCanvasView *)self updateFixedPixelSizeViewForBounds:?];
  }

  else
  {
    [(PKCanvasView *)self contentSize];
    if (v9 == *MEMORY[0x1E695F060] && v8 == *(MEMORY[0x1E695F060] + 8))
    {
      [(PKTiledView *)self->_tiledView setFrame:x, y, width, height];
      v11 = *MEMORY[0x1E695EFF8];
      v12 = *(MEMORY[0x1E695EFF8] + 8);
      [(PKRulerHostingDelegate *)self->_rulerHostingDelegate frame];
      v16.origin.x = v11;
      v16.origin.y = v12;
      v16.size.width = width;
      v16.size.height = height;
      if (!CGRectEqualToRect(v15, v16))
      {
        [(PKRulerHostingDelegate *)self->_rulerHostingDelegate setFrame:v11, v12, width, height];
        [(PKAttachmentView *)self->_pageView setFrame:v11, v12, width, height];
        [(PKTiledView *)self->_tiledView _layoutSubviews];
        tiledView = self->_tiledView;

        [(PKTiledView *)tiledView updateTilesForVisibleRect];
      }
    }
  }
}

- (void)_setupTiledViewWantsExtendedDynamicRangeContent
{
  v3 = [(PKCanvasView *)self window];

  if (v3)
  {
    v4 = [MEMORY[0x1E696AAE8] mainBundle];
    v5 = [v4 bundleIdentifier];
    v6 = [v5 isEqualToString:@"com.apple.freeform"];

    if ((v6 & 1) == 0)
    {
      v11 = [(PKCanvasView *)self window];
      v7 = [v11 screen];
      [v7 potentialEDRHeadroom];
      v9 = v8 >= 2.0;
      v10 = [(PKCanvasView *)self _tiledView];
      [v10 setWantsExtendedDynamicRangeContent:v9];
    }
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = PKCanvasView;
  [(PKCanvasView *)&v3 didMoveToWindow];
  [(PKCanvasView *)self _setupTiledViewWantsExtendedDynamicRangeContent];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKCanvasView;
  [(PKCanvasView *)&v5 layoutSubviews];
  [(PKCanvasView *)self bounds];
  [(PKCanvasView *)self updateSubviewsForBounds:?];
  [(PKCanvasView *)self _setContentViewOpaqueBackgroundColorIfApplicable];
  v3 = [(PKTiledView *)self->_tiledView canvasView];
  v4 = [v3 rulerController];
  [(PKRulerController *)v4 ensureRulerIsFullyOnscreen];
}

- (void)setContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v13.receiver = self;
  v13.super_class = PKCanvasView;
  [(PKCanvasView *)&v13 setContentSize:?];
  [(PKCanvasAttachmentView *)self->_pageView frame];
  if (fabs(v9) >= 0.01 || fabs(v6) >= 0.01 || vabdd_f64(v7, width) >= 0.01 || vabdd_f64(v8, height) >= 0.01)
  {
    [(PKRulerHostingDelegate *)self->_rulerHostingDelegate setFrame:0.0, 0.0, width, height];
    [(PKCanvasView *)self zoomScale];
    v11 = width / v10;
    [(PKCanvasView *)self zoomScale];
    [(PKAttachmentView *)self->_pageView setFrame:0.0, 0.0, v11, height / v12];
  }
}

- (UIGestureRecognizer)drawingGestureRecognizer
{
  v2 = [(PKTiledView *)self->_tiledView canvasView];
  v3 = [v2 drawingGestureRecognizer];

  return v3;
}

- (void)setAllowsFingerDrawing:(BOOL)allowsFingerDrawing
{
  if (allowsFingerDrawing)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [(PKTiledView *)self->_tiledView setDrawingPolicy:v3];
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (sel_paste_ != a3)
  {
    return 0;
  }

  v5 = [MEMORY[0x1E69DCD50] generalPasteboard];
  v8[0] = @"com.apple.drawing";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v4 = [v5 containsPasteboardTypes:v6];

  return v4;
}

- (void)toolPickerSelectedToolItemDidChange:(id)a3
{
  v8 = a3;
  v4 = [v8 selectedToolItem];
  v5 = [v4 _toolShouldBeSetOnCanvasView];
  if (v5)
  {
    v6 = [v8 selectedToolItem];
    v7 = [v6 _tool];
    [(PKCanvasView *)self setTool:v7];
  }

  [(PKCanvasView *)self setDrawingEnabled:v5];
}

- (void)toolPickerIsRulerActiveDidChange:(id)a3
{
  v4 = [a3 isRulerActive];

  [(PKCanvasView *)self setRulerActive:v4];
}

- (PKCanvasView)initWithFrame:(CGRect)a3 fixedPixelSize:(CGSize)a4 drawingScale:(double)a5 layerFixedPixelSize:(BOOL)a6
{
  v6 = a6;
  height = a4.height;
  width = a4.width;
  v9 = a3.size.height;
  v10 = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (a5 == 0.0)
  {
    v14 = 1.0;
  }

  else
  {
    v14 = a5;
  }

  +[PKMetalUtility layerContentsScale];
  if (v6)
  {
    +[PKMetalUtility layerContentsScale];
    v17 = [objc_alloc(MEMORY[0x1E69DCEF8]) initWithFrame:{0.0, 0.0, width / v16, height / v16}];
    [v17 setScrollEnabled:0];
    [v17 setDelaysContentTouches:0];
    [v17 setCanCancelContentTouches:0];
    [v17 setMinimumZoomScale:1.0];
    [v17 setMaximumZoomScale:1.0];
    v18 = width / v14;
  }

  else
  {
    v17 = 0;
    v18 = v10 / v14 * v15;
  }

  v19 = [(PKCanvasView *)self initWithFrame:v17 drawingWidth:x fixedPixelSizeScrollView:y, v10, v9, v18];
  [(PKCanvasView *)v19 setScrollEnabled:0];
  [(PKCanvasView *)v19 setDelaysContentTouches:0];
  [(PKCanvasView *)v19 setCanCancelContentTouches:0];
  [(PKCanvasView *)v19 setMinimumZoomScale:1.0];
  [(PKCanvasView *)v19 setMaximumZoomScale:1.0];

  return v19;
}

- (void)_setDrawing:(id)a3 fullyRenderedCompletionBlock:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(PKCanvasAttachmentView *)self->_pageView fullyRenderedCompletionBlocks];

  if (!v7)
  {
    v8 = [MEMORY[0x1E695DF70] array];
    [(PKCanvasAttachmentView *)self->_pageView setFullyRenderedCompletionBlocks:v8];
  }

  if (v6)
  {
    v9 = [(PKCanvasAttachmentView *)self->_pageView fullyRenderedCompletionBlocks];
    v10 = _Block_copy(v6);
    [v9 addObject:v10];
  }

  [(PKCanvasView *)self setDrawing:v11];
}

- (void)imageWithCompletionBlock:(id)a3
{
  v4 = a3;
  if (self->_fixedPixelSizeScrollView)
  {
    fixedPixelSizeScrollView = self->_fixedPixelSizeScrollView;
  }

  else
  {
    fixedPixelSizeScrollView = self;
  }

  [(PKCanvasView *)fixedPixelSizeScrollView bounds];
  v7 = v6;
  v9 = v8;
  v10 = [PKImageRenderer alloc];
  +[PKMetalUtility layerContentsScale];
  v12 = [(PKImageRenderer *)v10 initWithSize:v7 scale:v9, v11];
  v13 = [(PKCanvasView *)self drawing];
  pageView = self->_pageView;
  if (pageView)
  {
    [(PKCanvasAttachmentView *)pageView drawingTransform];
    v16 = v25;
    v15 = v26;
  }

  else
  {
    v15 = 0.0;
    v16 = 0.0;
  }

  v17 = sqrt(v15 * v15 + v16 * v16);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __41__PKCanvasView_imageWithCompletionBlock___block_invoke;
  v23[3] = &unk_1E82DC070;
  v24 = v4;
  v18 = *MEMORY[0x1E695F050];
  v19 = *(MEMORY[0x1E695F050] + 8);
  v20 = *(MEMORY[0x1E695F050] + 16);
  v21 = *(MEMORY[0x1E695F050] + 24);
  v22 = v4;
  [(PKImageRenderer *)v12 renderDrawing:v13 clippedToStrokeSpaceRect:v23 scale:v18 completion:v19, v20, v21, v17];
}

uint64_t __41__PKCanvasView_imageWithCompletionBlock___block_invoke(uint64_t a1, id a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [a2 CGImage];
  v6 = *(v3 + 16);

  return v6(v3, v5);
}

- (id)rulerHostingView
{
  if ((*(&self->_canvasViewFlags + 1) & 0x40) != 0)
  {
    v9 = [(PKCanvasView *)self delegate];
    v8 = [v9 _canvasViewRulerHostingView:self];
  }

  else
  {
    v3 = [(PKCanvasView *)self rulerHostingDelegate];
    if (!v3 || (v4 = v3, -[PKCanvasView rulerHostingDelegate](self, "rulerHostingDelegate"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, v4, (v6 & 1) == 0) || (-[PKCanvasView rulerHostingDelegate](self, "rulerHostingDelegate"), v7 = objc_claimAutoreleasedReturnValue(), [v7 rulerHostingView], v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
    {
      v8 = self->_tiledView;
    }
  }

  return v8;
}

- (BOOL)rulerHostWantsSharedRuler
{
  v3 = [(PKCanvasView *)self rulerHostingDelegate];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [(PKCanvasView *)self rulerHostingDelegate];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = [(PKCanvasView *)self rulerHostingDelegate];
  v8 = [v7 rulerHostWantsSharedRuler];

  return v8;
}

- (UIView)selectionView
{
  v2 = [(PKTiledView *)self->_tiledView selectionController];
  v3 = v2;
  if (v2)
  {
    v4 = *(v2 + 152);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (CGSize)_metalViewDrawableSize
{
  v2 = [(PKTiledView *)self->_tiledView canvasView];
  [v2 _metalViewDrawableSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)_rendererControllerPixelSize
{
  v2 = [(PKTiledView *)self->_tiledView canvasView];
  [v2 _rendererControllerPixelSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)_updateCanvas
{
  [(PKTiledView *)self->_tiledView _layoutSubviews];
  tiledView = self->_tiledView;

  [(PKTiledView *)tiledView updateTilesForVisibleRect];
}

- (CGSize)_fixedPixelSize
{
  if (self->_fixedPixelSizeScrollView)
  {
    fixedPixelSizeScrollView = self->_fixedPixelSizeScrollView;
  }

  else
  {
    fixedPixelSizeScrollView = self->_rulerHostingDelegate;
  }

  [fixedPixelSizeScrollView bounds];
  v4 = v3;
  v6 = v5;
  +[PKMetalUtility layerContentsScale];
  v8 = v4 * v7;
  +[PKMetalUtility layerContentsScale];
  v10 = v6 * v9;
  v11 = v8;
  result.height = v10;
  result.width = v11;
  return result;
}

- (void)updateFixedPixelSizeViewForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(UIScrollView *)self->_fixedPixelSizeScrollView bounds];
  v7 = width / v6;
  [(UIScrollView *)self->_fixedPixelSizeScrollView bounds];
  v9 = height / v8;
  [(UIScrollView *)self->_fixedPixelSizeScrollView bounds];
  [(PKAttachmentView *)self->_pageView setFrame:?];
  [(UIScrollView *)self->_fixedPixelSizeScrollView bounds];
  [(PKRulerHostingDelegate *)self->_rulerHostingDelegate setFrame:?];
  fixedPixelSizeScrollViewWrapper = self->_fixedPixelSizeScrollViewWrapper;
  v11 = *(MEMORY[0x1E695EFD0] + 16);
  *&v15.a = *MEMORY[0x1E695EFD0];
  *&v15.c = v11;
  *&v15.tx = *(MEMORY[0x1E695EFD0] + 32);
  [(UIView *)fixedPixelSizeScrollViewWrapper setTransform:&v15];
  [(UIScrollView *)self->_fixedPixelSizeScrollView bounds];
  [(UIView *)self->_fixedPixelSizeScrollViewWrapper setFrame:?];
  CGAffineTransformMakeScale(&v14, v7, v9);
  v12 = self->_fixedPixelSizeScrollViewWrapper;
  v15 = v14;
  [(UIView *)v12 setTransform:&v15];
  v13.receiver = self;
  v13.super_class = PKCanvasView;
  [(PKCanvasView *)&v13 setContentSize:width, height];
  [MEMORY[0x1E6979518] commit];
}

- (void)_setFixedPixelSize:(CGSize)a3 drawingScale:(double)a4
{
  if (self->_fixedPixelSizeScrollView)
  {
    height = a3.height;
    width = a3.width;
    +[PKMetalUtility layerContentsScale];
    [(UIScrollView *)self->_fixedPixelSizeScrollView setFrame:0.0, 0.0, width / v8, height / v8];
    [(PKCanvasView *)self bounds];
    [(PKCanvasView *)self updateFixedPixelSizeViewForBounds:?];
  }

  [(PKRulerHostingDelegate *)self->_rulerHostingDelegate bounds:a3.width];
  v10 = v9 / a4;
  +[PKMetalUtility layerContentsScale];
  v12 = v11 * v10;
  pageView = self->_pageView;

  [(PKCanvasAttachmentView *)pageView setDrawingWidth:v12];
}

- (CGAffineTransform)strokeTransform
{
  v3 = MEMORY[0x1E695EFD0];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v4;
  *&retstr->tx = *(v3 + 32);
  return self;
}

- (CGAffineTransform)drawingTransform
{
  v4 = MEMORY[0x1E695EFD0];
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v5;
  *&retstr->tx = *(v4 + 32);
  if (*&self[45].c)
  {
    v6 = self;
    [(CGAffineTransform *)self bounds];
    v8 = v7;
    v10 = v9;
    [*&v6[45].c bounds];
    v12 = v11;
    v14 = v13;
    memset(&v18, 0, sizeof(v18));
    b = v6[45].b;
    if (b != 0.0)
    {
      [*&b drawingTransform];
    }

    CGAffineTransformMakeScale(&t1, v8 / v12, v10 / v14);
    v16 = v18;
    return CGAffineTransformConcat(retstr, &t1, &v16);
  }

  return self;
}

- (UIHoverGestureRecognizer)_hoverGestureRecognizer
{
  v2 = [(PKCanvasView *)self _tiledView];
  v3 = [v2 hoverGestureRecognizer];

  return v3;
}

- (void)_canvasViewWillBeginDrawing:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((*(&self->_canvasViewFlags + 1) & 0x20) != 0)
  {
    v5 = [(PKCanvasView *)self delegate];
    [v5 _canvasViewWillBeginDrawing:self];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(PKCanvasView *)self _observers];
  v7 = [v6 copy];

  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) _canvasViewWillBeginDrawing:self];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)_canvasViewWillCreateSnapshot:(id)a3
{
  if (*(&self->_canvasViewFlags + 2))
  {
    v5 = [(PKCanvasView *)self delegate];
    [v5 _canvasViewWillCreateSnapshot:self];
  }
}

- (BOOL)_canvasViewSnapshottingDisabled:(id)a3
{
  if ((*(&self->_canvasViewFlags + 2) & 2) == 0)
  {
    return 0;
  }

  v4 = self;
  v5 = [(PKCanvasView *)self delegate];
  LOBYTE(v4) = [v5 _canvasViewSnapshottingDisabled:v4];

  return v4;
}

- (void)canvasViewDidBeginDrawing:(id)a3
{
  v7 = a3;
  canvasViewFlags = self->_canvasViewFlags;
  if ((*&canvasViewFlags & 4) != 0)
  {
    v5 = [(PKCanvasView *)self delegate];
    [v5 canvasViewDidBeginDrawing:self];

    canvasViewFlags = self->_canvasViewFlags;
  }

  if ((*&canvasViewFlags & 0x10) != 0)
  {
    v6 = [(PKCanvasView *)self delegate];
    [v6 canvasViewDidBeginUsingTool:self];
  }
}

- (void)canvasViewDidEndDrawing:(id)a3
{
  v7 = a3;
  canvasViewFlags = self->_canvasViewFlags;
  if ((*&canvasViewFlags & 8) != 0)
  {
    v5 = [(PKCanvasView *)self delegate];
    [v5 canvasViewDidEndDrawing:self];

    canvasViewFlags = self->_canvasViewFlags;
  }

  if ((*&canvasViewFlags & 0x20) != 0)
  {
    v6 = [(PKCanvasView *)self delegate];
    [v6 canvasViewDidEndUsingTool:self];
  }
}

- (void)canvasViewDidBeginLasso:(id)a3
{
  if ((*&self->_canvasViewFlags & 0x10) != 0)
  {
    v5 = [(PKCanvasView *)self delegate];
    [v5 canvasViewDidBeginUsingTool:self];
  }
}

- (void)canvasViewDidEndLasso:(id)a3
{
  if ((*&self->_canvasViewFlags & 0x20) != 0)
  {
    v5 = [(PKCanvasView *)self delegate];
    [v5 canvasViewDidEndUsingTool:self];
  }
}

- (void)canvasView:(id)a3 beganStroke:(id)a4
{
  if ((*&self->_canvasViewFlags & 0x40) != 0)
  {
    v6 = a4;
    v7 = [(PKCanvasView *)self delegate];
    [v7 _canvasView:self beganStroke:v6];
  }
}

- (void)canvasView:(id)a3 endedStroke:(id)a4 shapeStrokes:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  canvasViewFlags = self->_canvasViewFlags;
  if ((*&canvasViewFlags & 0x200) != 0)
  {
    v11 = [(PKCanvasView *)self delegate];
    [v11 _canvasView:self endedStroke:v8 shapeStrokes:v9];
  }

  else
  {
    if ((*&canvasViewFlags & 0x100) == 0)
    {
      goto LABEL_6;
    }

    v11 = [(PKCanvasView *)self delegate];
    [v11 _canvasView:self endedStroke:v8];
  }

LABEL_6:
}

- (void)canvasView:(id)a3 cancelledStroke:(id)a4
{
  if ((*(&self->_canvasViewFlags + 1) & 4) != 0)
  {
    v6 = a4;
    v7 = [(PKCanvasView *)self delegate];
    [v7 _canvasView:self cancelledStroke:v6];
  }
}

- (void)canvasView:(id)a3 didRefineStrokes:(id)a4 withNewStrokes:(id)a5
{
  if ((*(&self->_canvasViewFlags + 2) & 4) != 0)
  {
    v8 = a5;
    v9 = a4;
    v10 = [(PKCanvasView *)self delegate];
    [v10 canvasView:self didRefineStrokes:v9 withNewStrokes:v8];
  }
}

- (void)canvasView:(id)a3 scratchOutStrokes:(id)a4 drawing:(id)a5
{
  if ((*(&self->_canvasViewFlags + 2) & 8) != 0)
  {
    v8 = a5;
    v9 = a4;
    v10 = [(PKCanvasView *)self delegate];
    [v10 _canvasView:self scratchOutStrokes:v9 drawing:v8];
  }
}

- (void)canvasView:(id)a3 didChangeHiddenState:(BOOL)a4
{
  if ((*(&self->_canvasViewFlags + 1) & 0x10) != 0)
  {
    v5 = a4;
    v7 = [(PKCanvasView *)self delegate];
    [v7 _canvasView:self didChangeHiddenState:v5];
  }
}

- (BOOL)canvasView:(id)a3 shouldBeginDrawingWithTouch:(id)a4
{
  v5 = a4;
  if ((*(&self->_canvasViewFlags + 1) & 8) != 0)
  {
    v7 = [(PKCanvasView *)self window];
    v8 = [PKToolPicker isActiveToolPickerVisibleForWindow:v7];

    if (v8)
    {
      v9 = [(PKCanvasView *)self drawingGestureRecognizer];
      v10 = [v9 allowedTouchTypes];
      v11 = [(PKCanvasView *)self _allowedDrawingTouchTypes];
      v12 = [v10 isEqualToArray:v11];

      if ((v12 & 1) == 0)
      {
        v13 = os_log_create("com.apple.pencilkit", "");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *v19 = 0;
          _os_log_error_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_ERROR, "Received an unexpected touch type according to the current drawing policy.", v19, 2u);
        }

        v14 = [(PKCanvasView *)self _allowedDrawingTouchTypes];
        v15 = [(PKCanvasView *)self drawingGestureRecognizer];
        [v15 setAllowedTouchTypes:v14];
      }
    }

    [v5 locationInView:self];
    v16 = [(PKCanvasView *)self hitTest:0 withEvent:?];
    if (v16)
    {
      v17 = [(PKCanvasView *)self delegate];
      v6 = [v17 _canvasView:self shouldBeginDrawingWithTouch:v5];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)canvasView:(id)a3 hoverShouldBeActiveAt:(CGPoint)a4
{
  if ((*(&self->_canvasViewFlags + 1) & 0x80) == 0)
  {
    return 1;
  }

  v5 = self;
  [(PKTiledView *)self->_tiledView convertPoint:self toView:a4.x, a4.y];
  v7 = v6;
  v9 = v8;
  v10 = [(PKCanvasView *)v5 delegate];
  LOBYTE(v5) = [v10 _canvasView:v5 hoverShouldBeActiveAt:{v7, v9}];

  return v5;
}

- (id)_allowedDrawingTouchTypes
{
  if ([(PKTiledView *)self->_tiledView allowsFingerDrawing])
  {
    v2 = &unk_1F47C1E50;
  }

  else
  {
    v2 = &unk_1F47C1E68;
  }

  return v2;
}

- (CGPoint)rulerSnapLineOriginAndNormal:(CGPoint *)a3 topSide:(BOOL)a4
{
  v4 = a4;
  v7 = [(PKCanvasView *)self _tiledView];
  v8 = [v7 rulerEnabled];

  if (v8)
  {
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    v9 = [(PKCanvasView *)self _tiledView];
    v10 = v9;
    if (v9)
    {
      [v9 rulerTransform];
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
    }

    v13 = [(PKCanvasView *)self _tiledView];
    [v13 rulerWidth];
    v15 = v14;

    if (v4)
    {
      v16 = v15 * 0.5;
    }

    else
    {
      v16 = -(v15 * 0.5);
    }

    _V4.D[1] = v25.f64[1];
    _D3 = 0xC059000000000000;
    __asm { FMLA            D2, D3, V4.D[1] }

    if (a3)
    {
      v24 = vsubq_f64(vaddq_f64(v27, vmlaq_f64(vmulq_n_f64(v26, v16 + v16), 0, v25)), vaddq_f64(v27, vmlaq_n_f64(vmulq_n_f64(v26, *(MEMORY[0x1E695EFF8] + 8)), v25, *MEMORY[0x1E695EFF8])));
      *a3 = vmulq_n_f64(v24, 1.0 / sqrt(COERCE_DOUBLE(*&vmulq_f64(v24, v24).f64[1]) + v24.f64[0] * v24.f64[0]));
    }

    v11 = v27.f64[0] + v16 * v26.f64[0] + v25.f64[0] * -100.0;
    v12 = v27.f64[1] + _D2;
  }

  else
  {
    if (a3)
    {
      a3->x = 0.0;
      a3->y = 0.0;
    }

    v11 = *MEMORY[0x1E695EFF8];
    v12 = *(MEMORY[0x1E695EFF8] + 8);
  }

  result.y = v12;
  result.x = v11;
  return result;
}

- (void)setRulerHostingDelegate:(id)a3
{
  v5 = a3;
  objc_storeWeak(&self->_drawingTransform, v5);
  if (v5)
  {
    v4 = v5;
  }

  else
  {
    v4 = self;
  }

  [(PKTiledView *)self->_tiledView setRulerHostingDelegate:v4];
}

- (void)setPredictionDisabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(PKTiledView *)self->_tiledView canvasView];
  [v4 setPredictionDisabled:v3];
}

- (BOOL)predictionDisabled
{
  v2 = [(PKTiledView *)self->_tiledView canvasView];
  v3 = [v2 predictionDisabled];

  return v3;
}

- (id)_selectionInteraction
{
  v2 = [(PKTiledView *)self->_tiledView selectionController];
  v3 = [(PKSelectionController *)v2 selectionInteraction];

  return v3;
}

- (NSHashTable)_observers
{
  contentView = self->_contentView;
  if (!contentView)
  {
    v4 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v5 = self->_contentView;
    self->_contentView = v4;

    contentView = self->_contentView;
  }

  return contentView;
}

- (void)_addObserver:(id)a3
{
  v4 = a3;
  v5 = [(PKCanvasView *)self _observers];
  [v5 addObject:v4];
}

- (void)_removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(PKCanvasView *)self _observers];
  [v5 removeObject:v4];
}

- (BOOL)_hasObserver:(id)a3
{
  v4 = a3;
  v5 = [(PKCanvasView *)self _observers];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (void)_keepPencilShadowVisible
{
  v2 = [(PKCanvasView *)self _tiledView];
  [v2 _keepPencilShadowVisible];
}

- (void)_updatePencilShadowViewWithInputPoint:(id *)a3
{
  v4 = [(PKCanvasView *)self _tiledView];
  v5 = *&a3->var13;
  v9[6] = *&a3->var11;
  v9[7] = v5;
  var15 = a3->var15;
  v6 = *&a3->var5;
  v9[2] = *&a3->var3;
  v9[3] = v6;
  v7 = *&a3->var9;
  v9[4] = *&a3->var7;
  v9[5] = v7;
  v8 = *&a3->var1;
  v9[0] = a3->var0;
  v9[1] = v8;
  [v4 _updatePencilShadowView:v9];
}

- (PKRulerHostingDelegate)rulerHostingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_drawingTransform);

  return WeakRetained;
}

- (void)setDrawingTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v3 = *&a3->tx;
  *&self->_drawingTransform.b = *&a3->a;
  *&self->_drawingTransform.d = v4;
  *&self->_drawingTransform.ty = v3;
}

@end