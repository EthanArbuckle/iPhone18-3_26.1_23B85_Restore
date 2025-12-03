@interface PKCanvasView
- (BOOL)_canvasViewSnapshottingDisabled:(id)disabled;
- (BOOL)_hasObserver:(id)observer;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)canvasView:(id)view hoverShouldBeActiveAt:(CGPoint)at;
- (BOOL)canvasView:(id)view shouldBeginDrawingWithTouch:(id)touch;
- (BOOL)predictionDisabled;
- (BOOL)rulerHostWantsSharedRuler;
- (CGAffineTransform)drawingTransform;
- (CGAffineTransform)strokeTransform;
- (CGPoint)rulerSnapLineOriginAndNormal:(CGPoint *)normal topSide:(BOOL)side;
- (CGSize)_fixedPixelSize;
- (CGSize)_metalViewDrawableSize;
- (CGSize)_rendererControllerPixelSize;
- (NSHashTable)_observers;
- (PKCanvasView)initWithFrame:(CGRect)frame drawingWidth:(double)width fixedPixelSizeScrollView:(id)view;
- (PKCanvasView)initWithFrame:(CGRect)frame fixedPixelSize:(CGSize)size drawingScale:(double)scale layerFixedPixelSize:(BOOL)pixelSize;
- (PKCanvasView)initWithFrame:(CGRect)frame sixChannelBlend:(BOOL)blend snapshotView:(id)view;
- (PKDrawing)drawing;
- (PKRulerHostingDelegate)rulerHostingDelegate;
- (PKTool)tool;
- (UIGestureRecognizer)drawingGestureRecognizer;
- (UIHoverGestureRecognizer)_hoverGestureRecognizer;
- (UIView)selectionView;
- (id)_allowedDrawingTouchTypes;
- (id)_selectionInteraction;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)rulerHostingView;
- (void)_addObserver:(id)observer;
- (void)_canvasViewWillBeginDrawing:(id)drawing;
- (void)_canvasViewWillCreateSnapshot:(id)snapshot;
- (void)_drawingDidChange;
- (void)_fullyRendered;
- (void)_keepPencilShadowVisible;
- (void)_removeObserver:(id)observer;
- (void)_setChildrenBackgroundColor:(id)color;
- (void)_setContentViewOpaqueBackgroundColorIfApplicable;
- (void)_setDrawing:(id)drawing fullyRenderedCompletionBlock:(id)block;
- (void)_setFixedPixelSize:(CGSize)size drawingScale:(double)scale;
- (void)_setupTiledViewWantsExtendedDynamicRangeContent;
- (void)_updateCanvas;
- (void)_updateChildrenOpaque;
- (void)_updatePencilShadowViewWithInputPoint:(id *)point;
- (void)awakeFromNib;
- (void)canvasView:(id)view beganStroke:(id)stroke;
- (void)canvasView:(id)view cancelledStroke:(id)stroke;
- (void)canvasView:(id)view didChangeHiddenState:(BOOL)state;
- (void)canvasView:(id)view didRefineStrokes:(id)strokes withNewStrokes:(id)newStrokes;
- (void)canvasView:(id)view endedStroke:(id)stroke shapeStrokes:(id)strokes;
- (void)canvasView:(id)view scratchOutStrokes:(id)strokes drawing:(id)drawing;
- (void)canvasViewDidBeginDrawing:(id)drawing;
- (void)canvasViewDidBeginLasso:(id)lasso;
- (void)canvasViewDidEndDrawing:(id)drawing;
- (void)canvasViewDidEndLasso:(id)lasso;
- (void)didMoveToWindow;
- (void)imageWithCompletionBlock:(id)block;
- (void)layoutSubviews;
- (void)setAllowsFingerDrawing:(BOOL)allowsFingerDrawing;
- (void)setBackgroundColor:(id)color;
- (void)setContentSize:(CGSize)size;
- (void)setDelegate:(id)delegate;
- (void)setDrawing:(PKDrawing *)drawing;
- (void)setDrawingTransform:(CGAffineTransform *)transform;
- (void)setInk:(id)ink;
- (void)setMaximumZoomScale:(double)scale;
- (void)setOpaque:(BOOL)opaque;
- (void)setPredictionDisabled:(BOOL)disabled;
- (void)setRulerHostingDelegate:(id)delegate;
- (void)setTool:(PKTool *)tool;
- (void)setupDrawingWidth:(double)width fixedPixelSizeScrollView:(id)view sixChannelBlend:(BOOL)blend drawBitmapEraserMask:(BOOL)mask;
- (void)toolPickerIsRulerActiveDidChange:(id)change;
- (void)toolPickerSelectedToolItemDidChange:(id)change;
- (void)traitCollectionDidChange:(id)change;
- (void)updateFixedPixelSizeViewForBounds:(CGRect)bounds;
- (void)updateSubviewsForBounds:(CGRect)bounds;
@end

@implementation PKCanvasView

- (PKCanvasView)initWithFrame:(CGRect)frame drawingWidth:(double)width fixedPixelSizeScrollView:(id)view
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v14.receiver = self;
  v14.super_class = PKCanvasView;
  viewCopy = view;
  height = [(PKCanvasView *)&v14 initWithFrame:x, y, width, height];
  v12 = +[PKContentVersionUtility sharedUtility];
  height->__observers = [(PKContentVersionUtility *)v12 contentVersionForCurrentSDK];

  [(PKCanvasView *)height setupDrawingWidth:viewCopy fixedPixelSizeScrollView:width, v14.receiver, v14.super_class];
  return height;
}

- (PKCanvasView)initWithFrame:(CGRect)frame sixChannelBlend:(BOOL)blend snapshotView:(id)view
{
  blendCopy = blend;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v14.receiver = self;
  v14.super_class = PKCanvasView;
  viewCopy = view;
  height = [(PKCanvasView *)&v14 initWithFrame:x, y, width, height];
  v12 = +[PKContentVersionUtility sharedUtility];
  height->__observers = [(PKContentVersionUtility *)v12 contentVersionForCurrentSDK];

  [(PKCanvasView *)height setupDrawingWidth:0 fixedPixelSizeScrollView:blendCopy sixChannelBlend:0 drawBitmapEraserMask:0.0, v14.receiver, v14.super_class];
  [(PKTiledView *)height->_tiledView setContentSnapshottingView:viewCopy];

  return height;
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
  backgroundColor = [(PKCanvasView *)self backgroundColor];
  [(PKCanvasView *)self _setChildrenBackgroundColor:backgroundColor];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  _tiledView = [(PKCanvasView *)self _tiledView];
  disableTileRendering = [_tiledView disableTileRendering];

  if (disableTileRendering)
  {
    v10 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PKCanvasView;
    v10 = [(PKCanvasView *)&v12 hitTest:eventCopy withEvent:x, y];
  }

  return v10;
}

- (void)setupDrawingWidth:(double)width fixedPixelSizeScrollView:(id)view sixChannelBlend:(BOOL)blend drawBitmapEraserMask:(BOOL)mask
{
  blendCopy = blend;
  viewCopy = view;
  v10 = objc_opt_class();
  if (viewCopy)
  {
    [viewCopy bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    objc_storeStrong(&self->_fixedPixelSizeScrollView, view);
    v19 = objc_alloc(MEMORY[0x1E69DD250]);
    [(UIScrollView *)self->_fixedPixelSizeScrollView bounds];
    v20 = [v19 initWithFrame:?];
    fixedPixelSizeScrollViewWrapper = self->_fixedPixelSizeScrollViewWrapper;
    self->_fixedPixelSizeScrollViewWrapper = v20;

    [(UIView *)self->_fixedPixelSizeScrollViewWrapper addSubview:self->_fixedPixelSizeScrollView];
    layer = [(UIView *)self->_fixedPixelSizeScrollViewWrapper layer];
    [layer setAnchorPoint:{0.0, 0.0}];

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

  panGestureRecognizer = [(PKCanvasView *)self panGestureRecognizer];
  [panGestureRecognizer setAllowedTouchTypes:&unk_1F47C1E38];

  v28 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v12, v14, v16, v18}];
  rulerHostingDelegate = self->_rulerHostingDelegate;
  self->_rulerHostingDelegate = v28;

  v30 = [PKCanvasAttachmentView alloc];
  v31 = objc_alloc_init(v10);
  v32 = [(PKAttachmentView *)v30 initWithFrame:v31 drawing:v12, v14, v16, v18];
  pageView = self->_pageView;
  self->_pageView = v32;

  [(PKCanvasAttachmentView *)self->_pageView setCanvasView:self];
  [(PKAttachmentView *)self->_pageView setSixChannelBlending:blendCopy];
  [(PKCanvasAttachmentView *)self->_pageView setUserInteractionEnabled:0];
  [(PKCanvasAttachmentView *)self->_pageView setDrawingWidth:width];
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

  v36 = [(PKTiledView *)v34 initInScrollView:fixedPixelSizeScrollView sixChannelBlending:blendCopy defaultDrawingClass:objc_opt_class()];
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

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v40 = [bundleIdentifier isEqualToString:@"com.apple.mobilenotes"];

  if (v40)
  {
    goto LABEL_16;
  }

  mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier2 = [mainBundle2 bundleIdentifier];
  v43 = [bundleIdentifier2 hasPrefix:@"com.apple.sidecar.extension."];

  if (v43)
  {
    goto LABEL_16;
  }

  mainBundle3 = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier3 = [mainBundle3 bundleIdentifier];
  v46 = [bundleIdentifier3 isEqualToString:@"com.apple.ScreenshotServicesService"];

  if (v46)
  {
    goto LABEL_16;
  }

  if (PKIsInternalTestApp())
  {
    goto LABEL_16;
  }

  mainBundle4 = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier4 = [mainBundle4 bundleIdentifier];
  v49 = [bundleIdentifier4 isEqualToString:@"com.apple.PaperKit.MarkupPhotoEditingExtension"];

  if (v49)
  {
    goto LABEL_16;
  }

  mainBundle5 = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier5 = [mainBundle5 bundleIdentifier];
  if ([bundleIdentifier5 isEqualToString:@"com.apple.quicklook.extension.previewUI"])
  {

LABEL_16:
    [(PKTiledView *)self->_tiledView setAllowSnapToShape:1];
    goto LABEL_17;
  }

  mainBundle6 = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier6 = [mainBundle6 bundleIdentifier];
  v63 = [bundleIdentifier6 isEqualToString:@"com.apple.quicklook.UIExtension"];

  if (v63)
  {
    goto LABEL_16;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  -[PKTiledView setAllowSnapToShape:](self->_tiledView, "setAllowSnapToShape:", [standardUserDefaults BOOLForKey:@"internalSettings.shapeRecognition.enableEverywhere"]);

LABEL_17:
  mainBundle7 = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier7 = [mainBundle7 bundleIdentifier];
  v55 = [bundleIdentifier7 isEqualToString:@"com.apple.Pages"];

  if ((v55 & 1) == 0)
  {
    selectionInteraction = [(PKTiledView *)self->_tiledView selectionInteraction];
    [selectionInteraction setDelegate:self];
  }

  if (blendCopy)
  {
    canvasView = [(PKTiledView *)self->_tiledView canvasView];
    [canvasView setOpaque:1];

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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__drawingDidChange name:@"drawingDidChange" object:self->_pageView];

  [(PKCanvasView *)self _setContentViewOpaqueBackgroundColorIfApplicable];
  [(PKTiledView *)self->_tiledView _layoutSubviews];
}

- (void)setOpaque:(BOOL)opaque
{
  v4.receiver = self;
  v4.super_class = PKCanvasView;
  [(PKCanvasView *)&v4 setOpaque:opaque];
  [(PKCanvasView *)self _updateChildrenOpaque];
}

- (void)_updateChildrenOpaque
{
  v9 = *MEMORY[0x1E69E9840];
  backgroundColor = [(PKCanvasView *)self backgroundColor];

  if (backgroundColor)
  {
    *(&v8 + 1) = unk_1C801EC90;
    v4 = [(PKCanvasView *)self backgroundColor:0];
    DKUColorGetRGBAComponents([v4 CGColor], &v7);

    isOpaque = *(&v8 + 1) >= 1.0;
  }

  else
  {
    isOpaque = [(PKCanvasView *)self isOpaque];
  }

  canvasView = [(PKTiledView *)self->_tiledView canvasView];
  [canvasView setOpaque:isOpaque];

  [(PKRulerHostingDelegate *)self->_rulerHostingDelegate setOpaque:isOpaque];
  [(PKCanvasAttachmentView *)self->_pageView setOpaque:isOpaque];
  if (isOpaque)
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
    backgroundColor = [(PKCanvasView *)self backgroundColor];
    if (!backgroundColor)
    {
      traitCollection = [(PKCanvasView *)self traitCollection];
      if ([traitCollection userInterfaceStyle] == 2)
      {
        [MEMORY[0x1E69DC888] blackColor];
      }

      else
      {
        [MEMORY[0x1E69DC888] whiteColor];
      }
      backgroundColor = ;
    }

    backgroundColor2 = [(PKRulerHostingDelegate *)self->_rulerHostingDelegate backgroundColor];
    v5 = [backgroundColor2 isEqual:backgroundColor];

    if ((v5 & 1) == 0)
    {
      [(PKRulerHostingDelegate *)self->_rulerHostingDelegate setBackgroundColor:backgroundColor];
    }

    traitCollection2 = [(PKCanvasView *)self traitCollection];
    v7 = [backgroundColor resolvedColorWithTraitCollection:traitCollection2];

    canvasView = [(PKTiledView *)self->_tiledView canvasView];
    [canvasView setCanvasBackgroundColor:v7];
  }
}

- (void)setBackgroundColor:(id)color
{
  v5.receiver = self;
  v5.super_class = PKCanvasView;
  colorCopy = color;
  [(PKCanvasView *)&v5 setBackgroundColor:colorCopy];
  [(PKCanvasView *)self _setChildrenBackgroundColor:colorCopy, v5.receiver, v5.super_class];
}

- (void)_setChildrenBackgroundColor:(id)color
{
  tiledView = self->_tiledView;
  colorCopy = color;
  canvasView = [(PKTiledView *)tiledView canvasView];
  [canvasView setCanvasBackgroundColor:colorCopy];

  [(PKRulerHostingDelegate *)self->_rulerHostingDelegate setBackgroundColor:colorCopy];

  [(PKCanvasView *)self _updateChildrenOpaque];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = PKCanvasView;
  changeCopy = change;
  [(PKCanvasView *)&v8 traitCollectionDidChange:changeCopy];
  userInterfaceStyle = [changeCopy userInterfaceStyle];

  traitCollection = [(PKCanvasView *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
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

- (void)setMaximumZoomScale:(double)scale
{
  v3.receiver = self;
  v3.super_class = PKCanvasView;
  [(PKCanvasView *)&v3 setMaximumZoomScale:fmin(scale, 10.0)];
}

- (void)_fullyRendered
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(PKCanvasAttachmentView *)self->_pageView _wantsFullyRenderedNotification])
  {
    if ((*&self->_canvasViewFlags & 2) != 0)
    {
      delegate = [(PKCanvasView *)self delegate];
      [delegate canvasViewDidFinishRendering:self];
    }

    [(PKCanvasAttachmentView *)self->_pageView set_wantsFullyRenderedNotification:0];
  }

  fullyRenderedCompletionBlocks = [(PKCanvasAttachmentView *)self->_pageView fullyRenderedCompletionBlocks];
  v5 = [fullyRenderedCompletionBlocks count];

  if (v5)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    fullyRenderedCompletionBlocks2 = [(PKCanvasAttachmentView *)self->_pageView fullyRenderedCompletionBlocks];
    v7 = [fullyRenderedCompletionBlocks2 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(fullyRenderedCompletionBlocks2);
          }

          (*(*(*(&v12 + 1) + 8 * v10++) + 16))();
        }

        while (v8 != v10);
        v8 = [fullyRenderedCompletionBlocks2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    fullyRenderedCompletionBlocks3 = [(PKCanvasAttachmentView *)self->_pageView fullyRenderedCompletionBlocks];
    [fullyRenderedCompletionBlocks3 removeAllObjects];
  }
}

- (void)_drawingDidChange
{
  if (*&self->_canvasViewFlags)
  {
    drawing = [(PKAttachmentView *)self->_pageView drawing];
    containsInternalStrokes = [drawing containsInternalStrokes];

    if ((containsInternalStrokes & 1) == 0)
    {
      delegate = [(PKCanvasView *)self delegate];
      [delegate canvasViewDrawingDidChange:self];
    }
  }
}

- (PKDrawing)drawing
{
  drawing = [(PKAttachmentView *)self->_pageView drawing];
  containsInternalStrokes = [drawing containsInternalStrokes];

  drawing2 = [(PKAttachmentView *)self->_pageView drawing];
  v6 = drawing2;
  if (containsInternalStrokes)
  {
    copyWithoutInternalStrokes = [drawing2 copyWithoutInternalStrokes];
  }

  else
  {
    copyWithoutInternalStrokes = [drawing2 copy];
  }

  v8 = copyWithoutInternalStrokes;

  return v8;
}

- (void)setDrawing:(PKDrawing *)drawing
{
  v11 = drawing;
  if (-[PKTiledView disableTileRendering](self->_tiledView, "disableTileRendering") && (-[PKDrawing strokes](v11, "strokes"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 count], v4, !v5))
  {
    drawing = [(PKAttachmentView *)self->_pageView drawing];
    drawing2 = [(PKAttachmentView *)self->_pageView drawing];
    strokes = [drawing2 strokes];
    [drawing deleteStrokes:strokes];
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

- (void)setInk:(id)ink
{
  inkCopy = ink;
  if (!inkCopy)
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    v6 = [PKInk inkWithIdentifier:@"com.apple.ink.pen" color:blackColor weight:-1.0];

    inkCopy = v6;
  }

  v7 = inkCopy;
  [(PKTiledView *)self->_tiledView setInk:inkCopy];
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

- (void)updateSubviewsForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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
  window = [(PKCanvasView *)self window];

  if (window)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v6 = [bundleIdentifier isEqualToString:@"com.apple.freeform"];

    if ((v6 & 1) == 0)
    {
      window2 = [(PKCanvasView *)self window];
      screen = [window2 screen];
      [screen potentialEDRHeadroom];
      v9 = v8 >= 2.0;
      _tiledView = [(PKCanvasView *)self _tiledView];
      [_tiledView setWantsExtendedDynamicRangeContent:v9];
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
  canvasView = [(PKTiledView *)self->_tiledView canvasView];
  rulerController = [canvasView rulerController];
  [(PKRulerController *)rulerController ensureRulerIsFullyOnscreen];
}

- (void)setContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
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
  canvasView = [(PKTiledView *)self->_tiledView canvasView];
  drawingGestureRecognizer = [canvasView drawingGestureRecognizer];

  return drawingGestureRecognizer;
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

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (sel_paste_ != action)
  {
    return 0;
  }

  generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
  v8[0] = @"com.apple.drawing";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v4 = [generalPasteboard containsPasteboardTypes:v6];

  return v4;
}

- (void)toolPickerSelectedToolItemDidChange:(id)change
{
  changeCopy = change;
  selectedToolItem = [changeCopy selectedToolItem];
  _toolShouldBeSetOnCanvasView = [selectedToolItem _toolShouldBeSetOnCanvasView];
  if (_toolShouldBeSetOnCanvasView)
  {
    selectedToolItem2 = [changeCopy selectedToolItem];
    _tool = [selectedToolItem2 _tool];
    [(PKCanvasView *)self setTool:_tool];
  }

  [(PKCanvasView *)self setDrawingEnabled:_toolShouldBeSetOnCanvasView];
}

- (void)toolPickerIsRulerActiveDidChange:(id)change
{
  isRulerActive = [change isRulerActive];

  [(PKCanvasView *)self setRulerActive:isRulerActive];
}

- (PKCanvasView)initWithFrame:(CGRect)frame fixedPixelSize:(CGSize)size drawingScale:(double)scale layerFixedPixelSize:(BOOL)pixelSize
{
  pixelSizeCopy = pixelSize;
  height = size.height;
  width = size.width;
  v9 = frame.size.height;
  v10 = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (scale == 0.0)
  {
    scaleCopy = 1.0;
  }

  else
  {
    scaleCopy = scale;
  }

  +[PKMetalUtility layerContentsScale];
  if (pixelSizeCopy)
  {
    +[PKMetalUtility layerContentsScale];
    v17 = [objc_alloc(MEMORY[0x1E69DCEF8]) initWithFrame:{0.0, 0.0, width / v16, height / v16}];
    [v17 setScrollEnabled:0];
    [v17 setDelaysContentTouches:0];
    [v17 setCanCancelContentTouches:0];
    [v17 setMinimumZoomScale:1.0];
    [v17 setMaximumZoomScale:1.0];
    v18 = width / scaleCopy;
  }

  else
  {
    v17 = 0;
    v18 = v10 / scaleCopy * v15;
  }

  v19 = [(PKCanvasView *)self initWithFrame:v17 drawingWidth:x fixedPixelSizeScrollView:y, v10, v9, v18];
  [(PKCanvasView *)v19 setScrollEnabled:0];
  [(PKCanvasView *)v19 setDelaysContentTouches:0];
  [(PKCanvasView *)v19 setCanCancelContentTouches:0];
  [(PKCanvasView *)v19 setMinimumZoomScale:1.0];
  [(PKCanvasView *)v19 setMaximumZoomScale:1.0];

  return v19;
}

- (void)_setDrawing:(id)drawing fullyRenderedCompletionBlock:(id)block
{
  drawingCopy = drawing;
  blockCopy = block;
  fullyRenderedCompletionBlocks = [(PKCanvasAttachmentView *)self->_pageView fullyRenderedCompletionBlocks];

  if (!fullyRenderedCompletionBlocks)
  {
    array = [MEMORY[0x1E695DF70] array];
    [(PKCanvasAttachmentView *)self->_pageView setFullyRenderedCompletionBlocks:array];
  }

  if (blockCopy)
  {
    fullyRenderedCompletionBlocks2 = [(PKCanvasAttachmentView *)self->_pageView fullyRenderedCompletionBlocks];
    v10 = _Block_copy(blockCopy);
    [fullyRenderedCompletionBlocks2 addObject:v10];
  }

  [(PKCanvasView *)self setDrawing:drawingCopy];
}

- (void)imageWithCompletionBlock:(id)block
{
  blockCopy = block;
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
  drawing = [(PKCanvasView *)self drawing];
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
  v24 = blockCopy;
  v18 = *MEMORY[0x1E695F050];
  v19 = *(MEMORY[0x1E695F050] + 8);
  v20 = *(MEMORY[0x1E695F050] + 16);
  v21 = *(MEMORY[0x1E695F050] + 24);
  v22 = blockCopy;
  [(PKImageRenderer *)v12 renderDrawing:drawing clippedToStrokeSpaceRect:v23 scale:v18 completion:v19, v20, v21, v17];
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
    delegate = [(PKCanvasView *)self delegate];
    v8 = [delegate _canvasViewRulerHostingView:self];
  }

  else
  {
    rulerHostingDelegate = [(PKCanvasView *)self rulerHostingDelegate];
    if (!rulerHostingDelegate || (v4 = rulerHostingDelegate, -[PKCanvasView rulerHostingDelegate](self, "rulerHostingDelegate"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, v4, (v6 & 1) == 0) || (-[PKCanvasView rulerHostingDelegate](self, "rulerHostingDelegate"), v7 = objc_claimAutoreleasedReturnValue(), [v7 rulerHostingView], v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
    {
      v8 = self->_tiledView;
    }
  }

  return v8;
}

- (BOOL)rulerHostWantsSharedRuler
{
  rulerHostingDelegate = [(PKCanvasView *)self rulerHostingDelegate];
  if (!rulerHostingDelegate)
  {
    return 0;
  }

  v4 = rulerHostingDelegate;
  rulerHostingDelegate2 = [(PKCanvasView *)self rulerHostingDelegate];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  rulerHostingDelegate3 = [(PKCanvasView *)self rulerHostingDelegate];
  rulerHostWantsSharedRuler = [rulerHostingDelegate3 rulerHostWantsSharedRuler];

  return rulerHostWantsSharedRuler;
}

- (UIView)selectionView
{
  selectionController = [(PKTiledView *)self->_tiledView selectionController];
  v3 = selectionController;
  if (selectionController)
  {
    v4 = *(selectionController + 152);
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
  canvasView = [(PKTiledView *)self->_tiledView canvasView];
  [canvasView _metalViewDrawableSize];
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
  canvasView = [(PKTiledView *)self->_tiledView canvasView];
  [canvasView _rendererControllerPixelSize];
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

- (void)updateFixedPixelSizeViewForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
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

- (void)_setFixedPixelSize:(CGSize)size drawingScale:(double)scale
{
  if (self->_fixedPixelSizeScrollView)
  {
    height = size.height;
    width = size.width;
    +[PKMetalUtility layerContentsScale];
    [(UIScrollView *)self->_fixedPixelSizeScrollView setFrame:0.0, 0.0, width / v8, height / v8];
    [(PKCanvasView *)self bounds];
    [(PKCanvasView *)self updateFixedPixelSizeViewForBounds:?];
  }

  [(PKRulerHostingDelegate *)self->_rulerHostingDelegate bounds:size.width];
  v10 = v9 / scale;
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
    selfCopy = self;
    [(CGAffineTransform *)self bounds];
    v8 = v7;
    v10 = v9;
    [*&selfCopy[45].c bounds];
    v12 = v11;
    v14 = v13;
    memset(&v18, 0, sizeof(v18));
    b = selfCopy[45].b;
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
  _tiledView = [(PKCanvasView *)self _tiledView];
  hoverGestureRecognizer = [_tiledView hoverGestureRecognizer];

  return hoverGestureRecognizer;
}

- (void)_canvasViewWillBeginDrawing:(id)drawing
{
  v17 = *MEMORY[0x1E69E9840];
  drawingCopy = drawing;
  if ((*(&self->_canvasViewFlags + 1) & 0x20) != 0)
  {
    delegate = [(PKCanvasView *)self delegate];
    [delegate _canvasViewWillBeginDrawing:self];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  _observers = [(PKCanvasView *)self _observers];
  v7 = [_observers copy];

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

- (void)_canvasViewWillCreateSnapshot:(id)snapshot
{
  if (*(&self->_canvasViewFlags + 2))
  {
    delegate = [(PKCanvasView *)self delegate];
    [delegate _canvasViewWillCreateSnapshot:self];
  }
}

- (BOOL)_canvasViewSnapshottingDisabled:(id)disabled
{
  if ((*(&self->_canvasViewFlags + 2) & 2) == 0)
  {
    return 0;
  }

  selfCopy = self;
  delegate = [(PKCanvasView *)self delegate];
  LOBYTE(selfCopy) = [delegate _canvasViewSnapshottingDisabled:selfCopy];

  return selfCopy;
}

- (void)canvasViewDidBeginDrawing:(id)drawing
{
  drawingCopy = drawing;
  canvasViewFlags = self->_canvasViewFlags;
  if ((*&canvasViewFlags & 4) != 0)
  {
    delegate = [(PKCanvasView *)self delegate];
    [delegate canvasViewDidBeginDrawing:self];

    canvasViewFlags = self->_canvasViewFlags;
  }

  if ((*&canvasViewFlags & 0x10) != 0)
  {
    delegate2 = [(PKCanvasView *)self delegate];
    [delegate2 canvasViewDidBeginUsingTool:self];
  }
}

- (void)canvasViewDidEndDrawing:(id)drawing
{
  drawingCopy = drawing;
  canvasViewFlags = self->_canvasViewFlags;
  if ((*&canvasViewFlags & 8) != 0)
  {
    delegate = [(PKCanvasView *)self delegate];
    [delegate canvasViewDidEndDrawing:self];

    canvasViewFlags = self->_canvasViewFlags;
  }

  if ((*&canvasViewFlags & 0x20) != 0)
  {
    delegate2 = [(PKCanvasView *)self delegate];
    [delegate2 canvasViewDidEndUsingTool:self];
  }
}

- (void)canvasViewDidBeginLasso:(id)lasso
{
  if ((*&self->_canvasViewFlags & 0x10) != 0)
  {
    delegate = [(PKCanvasView *)self delegate];
    [delegate canvasViewDidBeginUsingTool:self];
  }
}

- (void)canvasViewDidEndLasso:(id)lasso
{
  if ((*&self->_canvasViewFlags & 0x20) != 0)
  {
    delegate = [(PKCanvasView *)self delegate];
    [delegate canvasViewDidEndUsingTool:self];
  }
}

- (void)canvasView:(id)view beganStroke:(id)stroke
{
  if ((*&self->_canvasViewFlags & 0x40) != 0)
  {
    strokeCopy = stroke;
    delegate = [(PKCanvasView *)self delegate];
    [delegate _canvasView:self beganStroke:strokeCopy];
  }
}

- (void)canvasView:(id)view endedStroke:(id)stroke shapeStrokes:(id)strokes
{
  viewCopy = view;
  strokeCopy = stroke;
  strokesCopy = strokes;
  canvasViewFlags = self->_canvasViewFlags;
  if ((*&canvasViewFlags & 0x200) != 0)
  {
    delegate = [(PKCanvasView *)self delegate];
    [delegate _canvasView:self endedStroke:strokeCopy shapeStrokes:strokesCopy];
  }

  else
  {
    if ((*&canvasViewFlags & 0x100) == 0)
    {
      goto LABEL_6;
    }

    delegate = [(PKCanvasView *)self delegate];
    [delegate _canvasView:self endedStroke:strokeCopy];
  }

LABEL_6:
}

- (void)canvasView:(id)view cancelledStroke:(id)stroke
{
  if ((*(&self->_canvasViewFlags + 1) & 4) != 0)
  {
    strokeCopy = stroke;
    delegate = [(PKCanvasView *)self delegate];
    [delegate _canvasView:self cancelledStroke:strokeCopy];
  }
}

- (void)canvasView:(id)view didRefineStrokes:(id)strokes withNewStrokes:(id)newStrokes
{
  if ((*(&self->_canvasViewFlags + 2) & 4) != 0)
  {
    newStrokesCopy = newStrokes;
    strokesCopy = strokes;
    delegate = [(PKCanvasView *)self delegate];
    [delegate canvasView:self didRefineStrokes:strokesCopy withNewStrokes:newStrokesCopy];
  }
}

- (void)canvasView:(id)view scratchOutStrokes:(id)strokes drawing:(id)drawing
{
  if ((*(&self->_canvasViewFlags + 2) & 8) != 0)
  {
    drawingCopy = drawing;
    strokesCopy = strokes;
    delegate = [(PKCanvasView *)self delegate];
    [delegate _canvasView:self scratchOutStrokes:strokesCopy drawing:drawingCopy];
  }
}

- (void)canvasView:(id)view didChangeHiddenState:(BOOL)state
{
  if ((*(&self->_canvasViewFlags + 1) & 0x10) != 0)
  {
    stateCopy = state;
    delegate = [(PKCanvasView *)self delegate];
    [delegate _canvasView:self didChangeHiddenState:stateCopy];
  }
}

- (BOOL)canvasView:(id)view shouldBeginDrawingWithTouch:(id)touch
{
  touchCopy = touch;
  if ((*(&self->_canvasViewFlags + 1) & 8) != 0)
  {
    window = [(PKCanvasView *)self window];
    v8 = [PKToolPicker isActiveToolPickerVisibleForWindow:window];

    if (v8)
    {
      drawingGestureRecognizer = [(PKCanvasView *)self drawingGestureRecognizer];
      allowedTouchTypes = [drawingGestureRecognizer allowedTouchTypes];
      _allowedDrawingTouchTypes = [(PKCanvasView *)self _allowedDrawingTouchTypes];
      v12 = [allowedTouchTypes isEqualToArray:_allowedDrawingTouchTypes];

      if ((v12 & 1) == 0)
      {
        v13 = os_log_create("com.apple.pencilkit", "");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *v19 = 0;
          _os_log_error_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_ERROR, "Received an unexpected touch type according to the current drawing policy.", v19, 2u);
        }

        _allowedDrawingTouchTypes2 = [(PKCanvasView *)self _allowedDrawingTouchTypes];
        drawingGestureRecognizer2 = [(PKCanvasView *)self drawingGestureRecognizer];
        [drawingGestureRecognizer2 setAllowedTouchTypes:_allowedDrawingTouchTypes2];
      }
    }

    [touchCopy locationInView:self];
    v16 = [(PKCanvasView *)self hitTest:0 withEvent:?];
    if (v16)
    {
      delegate = [(PKCanvasView *)self delegate];
      v6 = [delegate _canvasView:self shouldBeginDrawingWithTouch:touchCopy];
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

- (BOOL)canvasView:(id)view hoverShouldBeActiveAt:(CGPoint)at
{
  if ((*(&self->_canvasViewFlags + 1) & 0x80) == 0)
  {
    return 1;
  }

  selfCopy = self;
  [(PKTiledView *)self->_tiledView convertPoint:self toView:at.x, at.y];
  v7 = v6;
  v9 = v8;
  delegate = [(PKCanvasView *)selfCopy delegate];
  LOBYTE(selfCopy) = [delegate _canvasView:selfCopy hoverShouldBeActiveAt:{v7, v9}];

  return selfCopy;
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

- (CGPoint)rulerSnapLineOriginAndNormal:(CGPoint *)normal topSide:(BOOL)side
{
  sideCopy = side;
  _tiledView = [(PKCanvasView *)self _tiledView];
  rulerEnabled = [_tiledView rulerEnabled];

  if (rulerEnabled)
  {
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    _tiledView2 = [(PKCanvasView *)self _tiledView];
    v10 = _tiledView2;
    if (_tiledView2)
    {
      [_tiledView2 rulerTransform];
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
    }

    _tiledView3 = [(PKCanvasView *)self _tiledView];
    [_tiledView3 rulerWidth];
    v15 = v14;

    if (sideCopy)
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

    if (normal)
    {
      v24 = vsubq_f64(vaddq_f64(v27, vmlaq_f64(vmulq_n_f64(v26, v16 + v16), 0, v25)), vaddq_f64(v27, vmlaq_n_f64(vmulq_n_f64(v26, *(MEMORY[0x1E695EFF8] + 8)), v25, *MEMORY[0x1E695EFF8])));
      *normal = vmulq_n_f64(v24, 1.0 / sqrt(COERCE_DOUBLE(*&vmulq_f64(v24, v24).f64[1]) + v24.f64[0] * v24.f64[0]));
    }

    v11 = v27.f64[0] + v16 * v26.f64[0] + v25.f64[0] * -100.0;
    v12 = v27.f64[1] + _D2;
  }

  else
  {
    if (normal)
    {
      normal->x = 0.0;
      normal->y = 0.0;
    }

    v11 = *MEMORY[0x1E695EFF8];
    v12 = *(MEMORY[0x1E695EFF8] + 8);
  }

  result.y = v12;
  result.x = v11;
  return result;
}

- (void)setRulerHostingDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_drawingTransform, delegateCopy);
  if (delegateCopy)
  {
    selfCopy = delegateCopy;
  }

  else
  {
    selfCopy = self;
  }

  [(PKTiledView *)self->_tiledView setRulerHostingDelegate:selfCopy];
}

- (void)setPredictionDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  canvasView = [(PKTiledView *)self->_tiledView canvasView];
  [canvasView setPredictionDisabled:disabledCopy];
}

- (BOOL)predictionDisabled
{
  canvasView = [(PKTiledView *)self->_tiledView canvasView];
  predictionDisabled = [canvasView predictionDisabled];

  return predictionDisabled;
}

- (id)_selectionInteraction
{
  selectionController = [(PKTiledView *)self->_tiledView selectionController];
  selectionInteraction = [(PKSelectionController *)selectionController selectionInteraction];

  return selectionInteraction;
}

- (NSHashTable)_observers
{
  contentView = self->_contentView;
  if (!contentView)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v5 = self->_contentView;
    self->_contentView = weakObjectsHashTable;

    contentView = self->_contentView;
  }

  return contentView;
}

- (void)_addObserver:(id)observer
{
  observerCopy = observer;
  _observers = [(PKCanvasView *)self _observers];
  [_observers addObject:observerCopy];
}

- (void)_removeObserver:(id)observer
{
  observerCopy = observer;
  _observers = [(PKCanvasView *)self _observers];
  [_observers removeObject:observerCopy];
}

- (BOOL)_hasObserver:(id)observer
{
  observerCopy = observer;
  _observers = [(PKCanvasView *)self _observers];
  v6 = [_observers containsObject:observerCopy];

  return v6;
}

- (void)_keepPencilShadowVisible
{
  _tiledView = [(PKCanvasView *)self _tiledView];
  [_tiledView _keepPencilShadowVisible];
}

- (void)_updatePencilShadowViewWithInputPoint:(id *)point
{
  _tiledView = [(PKCanvasView *)self _tiledView];
  v5 = *&point->var13;
  v9[6] = *&point->var11;
  v9[7] = v5;
  var15 = point->var15;
  v6 = *&point->var5;
  v9[2] = *&point->var3;
  v9[3] = v6;
  v7 = *&point->var9;
  v9[4] = *&point->var7;
  v9[5] = v7;
  v8 = *&point->var1;
  v9[0] = point->var0;
  v9[1] = v8;
  [_tiledView _updatePencilShadowView:v9];
}

- (PKRulerHostingDelegate)rulerHostingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_drawingTransform);

  return WeakRetained;
}

- (void)setDrawingTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_drawingTransform.b = *&transform->a;
  *&self->_drawingTransform.d = v4;
  *&self->_drawingTransform.ty = v3;
}

@end