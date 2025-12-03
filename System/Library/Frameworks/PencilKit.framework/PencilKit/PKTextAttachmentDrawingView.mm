@interface PKTextAttachmentDrawingView
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)gestureRecognizerShouldDelayLift:(id)lift;
- (BOOL)hitByTouchLocation:(CGPoint)location bounds:(CGRect)bounds;
- (BOOL)hitChrome:(CGPoint)chrome isStylus:(BOOL)stylus event:(id)event;
- (BOOL)hitTestResizeHandles:(CGPoint)handles threshold:(double)threshold;
- (BOOL)isAtBeginningOfDocument;
- (BOOL)isAtEndOfDocument;
- (BOOL)resignFirstResponder;
- (CGAffineTransform)drawingTransform;
- (CGAffineTransform)drawingTransformForViewWidth:(SEL)width;
- (CGPoint)textViewContentOffsetStartLocation;
- (CGPoint)zoomStartLocationInAttachment;
- (CGPoint)zoomStartLocationInWindow;
- (CGRect)drawingBounds;
- (CGRect)drawingBoundsForViewWidth:(double)width;
- (CGRect)drawingCanvasBounds;
- (CGRect)drawingContentBounds;
- (CGRect)drawingTextAttachmentBounds;
- (CGRect)drawingTextAttachmentBoundsForContainerView:(id)view;
- (CGRect)liveResizeAttachmentBounds;
- (CGRect)resizeViewDrawingBounds:(id)bounds;
- (CGSize)desiredTextAttachmentSizeForContainerView:(id)view;
- (CGSize)drawingVisibleSize;
- (NSTextAttachment)textAttachment;
- (PKTextAttachmentDrawingView)initWithAttachment:(id)attachment drawingClass:(Class)class inserted:(BOOL)inserted;
- (PKTextAttachmentDrawingView)initWithFrame:(CGRect)frame;
- (PKTextAttachmentDrawingView)initWithFrame:(CGRect)frame drawing:(id)drawing;
- (double)canvasHeightFromDrawingViewHeight:(double)height;
- (double)canvasHeightFromDrawingViewHeight:(double)height drawingViewWidth:(double)width;
- (double)desiredAttachmentViewWidthForContainerView:(id)view;
- (double)heightFromDrawing:(id)drawing delta:(double)delta;
- (id)_drawingGestureRecognizer;
- (id)_textView;
- (id)dataForTextAttachment:(id)attachment;
- (id)drawingForTextAttachment:(id)attachment drawingClass:(Class)class;
- (id)keyCommands;
- (id)linedPaperLayerLinedPaper:(id)paper;
- (id)tiledView;
- (id)tiledViewAttachmentViews;
- (int64_t)_characterIndex;
- (void)_adjustResizeIndicatorVisibility:(BOOL)visibility highlightBackground:(BOOL)background;
- (void)_adjustResizeIndicatorVisibilityNotification;
- (void)_sceneDidActivate:(id)activate;
- (void)_setAdjustResizeIndicatorVisible:(BOOL)visible animated:(BOOL)animated highlightBackground:(BOOL)background;
- (void)_setHeight:(double)height originalHeight:(double)originalHeight growFromTop:(BOOL)top;
- (void)_share:(id)_share;
- (void)_triggerRedraw;
- (void)_updateAfterBackgroundSnapshotting:(id)snapshotting;
- (void)_updateAttachmentBoundsEnsureLayout:(BOOL)layout;
- (void)_updateResizeTouchInsetsFingerDrawingEnabled:(BOOL)enabled;
- (void)_updateViewHeightIfNecessary;
- (void)beginLiveResize;
- (void)cleanupViewProviders;
- (void)copy:(id)copy;
- (void)copyStrokeSelection:(id)selection;
- (void)cut:(id)cut;
- (void)cutStrokeSelection:(id)selection;
- (void)dealloc;
- (void)delete:(id)delete;
- (void)deleteStrokeSelection:(id)selection;
- (void)didBeginDrawing;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)drawingDataDidChange:(id)change;
- (void)drawingDidChangeVisibleStrokes:(BOOL)strokes;
- (void)fingerDrawingEnabledDidChange;
- (void)handleDoubleTap:(id)tap;
- (void)hideDrawingMenu:(id)menu;
- (void)higlightResize:(id)resize;
- (void)insertSpace:(id)space;
- (void)layoutSubviews;
- (void)layoutTileViews;
- (void)paste:(id)paste;
- (void)resetZoom;
- (void)resizeDrawing:(id)drawing;
- (void)resizeView:(id)view finishedWithOriginalDrawingBounds:(CGRect)bounds originalViewBounds:(CGRect)viewBounds;
- (void)resizeViewDidUpdate:(id)update;
- (void)resizeViewRemoveAttachment:(id)attachment;
- (void)scaleDrawing:(double)drawing;
- (void)scaleDrawing:(double)drawing withOffset:(CGPoint)offset animated:(BOOL)animated;
- (void)scrollViewDidEndZooming:(id)zooming withView:(id)view atScale:(double)scale;
- (void)scrollViewDidZoom:(id)zoom;
- (void)scrollViewWillBeginZooming:(id)zooming withView:(id)view;
- (void)selectAll:(id)all;
- (void)setContentHidden:(BOOL)hidden;
- (void)setDrawingCanvasBounds:(CGRect)bounds;
- (void)setHidden:(BOOL)hidden;
- (void)showDrawingMenu:(id)menu;
- (void)tapBelowDrawingGesture:(id)gesture;
- (void)toolPickerDidHide;
- (void)toolPickerDidShow;
- (void)updateDrawingHeight:(double)height notifyDrawingDidChange:(BOOL)change;
- (void)updateFrameForTextContainer;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation PKTextAttachmentDrawingView

- (PKTextAttachmentDrawingView)initWithFrame:(CGRect)frame drawing:(id)drawing
{
  v5.receiver = self;
  v5.super_class = PKTextAttachmentDrawingView;
  return [(PKAttachmentView *)&v5 initWithFrame:drawing drawing:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

- (PKTextAttachmentDrawingView)initWithAttachment:(id)attachment drawingClass:(Class)class inserted:(BOOL)inserted
{
  attachmentCopy = attachment;
  v9 = [(PKTextAttachmentDrawingView *)self drawingForTextAttachment:attachmentCopy drawingClass:class];
  [(PKTextAttachmentDrawingView *)self setZoomScale:1.0];
  v10 = [[PKTextAttachmentResizeView alloc] initAtTop:1 delegate:self];
  v11 = [[PKTextAttachmentResizeView alloc] initAtTop:0 delegate:self];
  v12 = *MEMORY[0x1E695EFF8];
  v13 = *(MEMORY[0x1E695EFF8] + 8);
  v59.receiver = self;
  v59.super_class = PKTextAttachmentDrawingView;
  v14 = [(PKAttachmentView *)&v59 initWithFrame:v9 drawing:v12, v13, 0.0, 1024.0];
  v15 = v14;
  if (v14)
  {
    v16 = MEMORY[0x1E695EFD0];
    v17 = *(MEMORY[0x1E695EFD0] + 16);
    *(v14 + 712) = *MEMORY[0x1E695EFD0];
    *(v14 + 728) = v17;
    *(v14 + 744) = *(v16 + 32);
    *(v14 + 95) = 0;
    objc_storeWeak(v14 + 99, attachmentCopy);
    v15->_inserted = inserted;
    v18 = [_PKInlineDrawingScrollView alloc];
    [(PKTextAttachmentDrawingView *)v15 bounds];
    v19 = [(_PKInlineDrawingScrollView *)v18 initWithFrame:?];
    tileMaskView = v15->_tileMaskView;
    v15->_tileMaskView = v19;

    [(PKTextAttachmentDrawingView *)v15 drawingVisibleSize];
    [(UIScrollView *)v15->_tileMaskView setContentSize:?];
    [(UIScrollView *)v15->_tileMaskView setDelegate:v15];
    [(UIScrollView *)v15->_tileMaskView setMinimumZoomScale:0.0];
    [(UIScrollView *)v15->_tileMaskView setMaximumZoomScale:10.0];
    [(UIScrollView *)v15->_tileMaskView setClipsToBounds:1];
    [(UIScrollView *)v15->_tileMaskView setScrollEnabled:0];
    [(UIScrollView *)v15->_tileMaskView setZoomEnabled:0];
    traitCollection = [(PKTextAttachmentDrawingView *)v15 traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (!userInterfaceIdiom)
    {
      [(UIScrollView *)v15->_tileMaskView setZoomEnabled:1];
      v23 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v15 action:sel_handleDoubleTap_];
      [v23 setName:@"com.apple.PencilKit.zoomDrawingOnPhone"];
      [v23 setNumberOfTapsRequired:2];
      [(UIScrollView *)v15->_tileMaskView addGestureRecognizer:v23];
    }

    [(PKTextAttachmentDrawingView *)v15 addSubview:v15->_tileMaskView];
    v24 = objc_alloc(MEMORY[0x1E69DD250]);
    [(PKTextAttachmentDrawingView *)v15 bounds];
    v25 = [v24 initWithFrame:?];
    tileScaleView = v15->_tileScaleView;
    v15->_tileScaleView = v25;

    [(UIScrollView *)v15->_tileMaskView addSubview:v15->_tileScaleView];
    v27 = [[PKLinedPaperLayer alloc] initWithLinedPaperLayerDelegate:v15];
    linesLayer = v15->_linesLayer;
    v15->_linesLayer = v27;

    layer = [(UIView *)v15->_tileScaleView layer];
    [layer addSublayer:v15->_linesLayer];

    [(PKTextAttachmentDrawingView *)v15 bounds];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    tileContainerView = [(PKAttachmentView *)v15 tileContainerView];
    [tileContainerView setFrame:{v31, v33, v35, v37}];

    tileContainerView2 = [(PKAttachmentView *)v15 tileContainerView];
    [tileContainerView2 setUserInteractionEnabled:1];

    v40 = v15->_tileScaleView;
    tileContainerView3 = [(PKAttachmentView *)v15 tileContainerView];
    [(UIView *)v40 addSubview:tileContainerView3];

    objc_storeStrong(&v15->_topResizeView, v10);
    objc_storeStrong(&v15->_bottomResizeView, v11);
    [(PKTextAttachmentDrawingView *)v15 addSubview:v15->_topResizeView];
    [(PKTextAttachmentDrawingView *)v15 addSubview:v15->_bottomResizeView];
    [(PKTextAttachmentDrawingView *)v15 _adjustResizeIndicatorVisibility];
    v42 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:v15 action:sel_resizeDrawing_];
    resizeDragGestureRecognizer = v15->_resizeDragGestureRecognizer;
    v15->_resizeDragGestureRecognizer = v42;

    [(UIPanGestureRecognizer *)v15->_resizeDragGestureRecognizer setDelegate:v15];
    [(UIPanGestureRecognizer *)v15->_resizeDragGestureRecognizer setName:@"com.apple.PencilKit.resizeDragGestureRecognizer"];
    [(PKTextAttachmentDrawingView *)v15 addGestureRecognizer:v15->_resizeDragGestureRecognizer];
    v44 = [[PKTextAttachmentDrawingViewTouchRecognizer alloc] initWithTarget:v15 action:sel_higlightResize_];
    resizeHighlightGestureRecognizer = v15->_resizeHighlightGestureRecognizer;
    v15->_resizeHighlightGestureRecognizer = v44;

    [(PKTextAttachmentDrawingViewTouchRecognizer *)v15->_resizeHighlightGestureRecognizer setDelegate:v15];
    [(PKTextAttachmentDrawingViewTouchRecognizer *)v15->_resizeHighlightGestureRecognizer setName:@"com.apple.PencilKit.resizeHighlightGestureRecognizer"];
    [(PKTextAttachmentDrawingView *)v15 addGestureRecognizer:v15->_resizeHighlightGestureRecognizer];
    v46 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v15 action:sel__noOpForGesture_];
    eatKeyboardGestureRecognizer = v15->_eatKeyboardGestureRecognizer;
    v15->_eatKeyboardGestureRecognizer = v46;

    [(UITapGestureRecognizer *)v15->_eatKeyboardGestureRecognizer setName:@"com.apple.PencilKit.eatKeyboardGR"];
    [(UITapGestureRecognizer *)v15->_eatKeyboardGestureRecognizer setDelegate:v15];
    [(PKTextAttachmentDrawingView *)v15 addGestureRecognizer:v15->_eatKeyboardGestureRecognizer];
    v48 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v15 action:sel_tapBelowDrawingGesture_];
    tapBelowDrawingGestureRecognizer = v15->_tapBelowDrawingGestureRecognizer;
    v15->_tapBelowDrawingGestureRecognizer = v48;

    [(UITapGestureRecognizer *)v15->_tapBelowDrawingGestureRecognizer setDelegate:v15];
    [(PKTextAttachmentDrawingView *)v15 addGestureRecognizer:v15->_tapBelowDrawingGestureRecognizer];
    v50 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v15 action:sel_showDrawingMenu_];
    showMenuGestureRecognizer = v15->_showMenuGestureRecognizer;
    v15->_showMenuGestureRecognizer = v50;

    [(UITapGestureRecognizer *)v15->_showMenuGestureRecognizer setName:@"com.apple.PencilKit.showMenuGR"];
    [(UITapGestureRecognizer *)v15->_showMenuGestureRecognizer setDelegate:v15];
    [(PKTextAttachmentDrawingView *)v15 addGestureRecognizer:v15->_showMenuGestureRecognizer];
    v52 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v15 action:sel_hideDrawingMenu_];
    hideMenuGestureRecognizer = v15->_hideMenuGestureRecognizer;
    v15->_hideMenuGestureRecognizer = v52;

    [(UILongPressGestureRecognizer *)v15->_hideMenuGestureRecognizer setName:@"com.apple.PencilKit.hideMenuGR"];
    [(UILongPressGestureRecognizer *)v15->_hideMenuGestureRecognizer setDelegate:v15];
    [(UILongPressGestureRecognizer *)v15->_hideMenuGestureRecognizer setMinimumPressDuration:0.0];
    [(PKTextAttachmentDrawingView *)v15 addGestureRecognizer:v15->_hideMenuGestureRecognizer];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v55 = *MEMORY[0x1E69DE0E0];
    mEMORY[0x1E69DCC68] = [MEMORY[0x1E69DCC68] sharedMenuController];
    [defaultCenter addObserver:v15 selector:sel_menuDidHide_ name:v55 object:mEMORY[0x1E69DCC68]];

    [(PKTextAttachmentDrawingView *)v15 layoutSubviews];
    v57 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v15];
    [(PKTextAttachmentDrawingView *)v15 addInteraction:v57];
  }

  return v15;
}

- (PKTextAttachmentDrawingView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = [(PKTextAttachmentDrawingView *)self init];
  v8 = v7;
  if (v7)
  {
    [(PKAttachmentView *)v7 setFrame:x, y, width, height];
  }

  return v8;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PKTextAttachmentDrawingView;
  [(PKAttachmentView *)&v4 dealloc];
}

- (id)tiledViewAttachmentViews
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = self;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)beginLiveResize
{
  [(PKTextAttachmentDrawingView *)self setIsLiveResizing:1];
  [(PKTextAttachmentDrawingView *)self bounds];

  [(PKTextAttachmentDrawingView *)self setLiveResizeAttachmentBounds:?];
}

- (CGRect)drawingTextAttachmentBoundsForContainerView:(id)view
{
  viewCopy = view;
  if ([(PKTextAttachmentDrawingView *)self isLiveResizing])
  {
    [(PKTextAttachmentDrawingView *)self liveResizeAttachmentBounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v6 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    [(PKTextAttachmentDrawingView *)self desiredTextAttachmentSizeForContainerView:viewCopy];
    v10 = v13;
    v15 = v14;
    window = [viewCopy window];
    screen = [window screen];
    [screen scale];
    v19 = v18;

    v20 = 1.0;
    if (v19 > 0.0)
    {
      v20 = v19;
    }

    v12 = round(v15 * v20) / v20;
  }

  v21 = v6;
  v22 = v8;
  v23 = v10;
  v24 = v12;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CGRect)drawingTextAttachmentBounds
{
  _textView = [(PKTextAttachmentDrawingView *)self _textView];
  [(PKTextAttachmentDrawingView *)self drawingTextAttachmentBoundsForContainerView:_textView];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (id)drawingForTextAttachment:(id)attachment drawingClass:(Class)class
{
  v16 = *MEMORY[0x1E69E9840];
  attachmentCopy = attachment;
  fileWrapper = [attachmentCopy fileWrapper];
  regularFileContents = [fileWrapper regularFileContents];

  if ((regularFileContents && [regularFileContents length] || (objc_msgSend(attachmentCopy, "contents"), v8 = objc_claimAutoreleasedReturnValue(), regularFileContents, (regularFileContents = v8) != 0)) && objc_msgSend(regularFileContents, "length"))
  {
    v13 = 0;
    v9 = [[class alloc] initWithData:regularFileContents error:&v13];
    v10 = v13;
    if (v10)
    {
      v11 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v10;
        _os_log_error_impl(&dword_1C7CCA000, v11, OS_LOG_TYPE_ERROR, "Error loading drawing: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v9 = [PKTiledView newInlineDrawingOfClass:class];
  }

  return v9;
}

- (CGRect)drawingCanvasBounds
{
  drawing = [(PKAttachmentView *)self drawing];
  [drawing _canvasBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setDrawingCanvasBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  drawing = [(PKAttachmentView *)self drawing];
  [drawing set_canvasBounds:{x, y, width, height}];
}

- (void)_updateResizeTouchInsetsFingerDrawingEnabled:(BOOL)enabled
{
  v6 = *MEMORY[0x1E69DDCE0];
  v5 = *(MEMORY[0x1E69DDCE0] + 8);
  v8 = *(MEMORY[0x1E69DDCE0] + 16);
  v7 = *(MEMORY[0x1E69DDCE0] + 24);
  isFirstResponder = [(PKTextAttachmentDrawingView *)self isFirstResponder];
  v10 = -10.0;
  v11 = 0.0;
  if (enabled)
  {
    v12 = v7;
  }

  else
  {
    v12 = 0.0;
  }

  if (enabled)
  {
    v13 = v8;
  }

  else
  {
    v13 = -10.0;
  }

  if (enabled)
  {
    v11 = v5;
    v10 = v6;
  }

  if (isFirstResponder)
  {
    v7 = v12;
    v8 = v13;
    v5 = v11;
    v6 = v10;
  }

  [(PKTextAttachmentDrawingView *)self _setTouchInsets:v6, v5, v8, v7];
  topResizeView = [(PKTextAttachmentDrawingView *)self topResizeView];
  [topResizeView _setTouchInsets:{v6, v5, v8, v7}];

  bottomResizeView = [(PKTextAttachmentDrawingView *)self bottomResizeView];
  [bottomResizeView _setTouchInsets:{v6, v5, v8, v7}];
}

- (void)cleanupViewProviders
{
  _textView = [(PKTextAttachmentDrawingView *)self _textView];
  v3 = _textView;
  if (_textView)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__PKTextAttachmentDrawingView_cleanupViewProviders__block_invoke;
    block[3] = &unk_1E82D7148;
    v5 = _textView;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = PKTextAttachmentDrawingView;
  [(PKAttachmentView *)&v4 didMoveToWindow];
  window = [(PKTextAttachmentDrawingView *)self window];

  if (window)
  {
    [(PKAttachmentView *)self setWantsDataDetection:1];
  }
}

- (void)willMoveToSuperview:(id)superview
{
  superviewCopy = superview;
  v8.receiver = self;
  v8.super_class = PKTextAttachmentDrawingView;
  [(PKTextAttachmentDrawingView *)&v8 willMoveToSuperview:superviewCopy];
  textAttachment = [(PKTextAttachmentDrawingView *)self textAttachment];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    textAttachment2 = [(PKTextAttachmentDrawingView *)self textAttachment];
    [textAttachment2 attachmentView:self willMoveToSuperview:superviewCopy];
  }
}

- (void)didMoveToSuperview
{
  v51.receiver = self;
  v51.super_class = PKTextAttachmentDrawingView;
  [(PKAttachmentView *)&v51 didMoveToSuperview];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *MEMORY[0x1E69DE750];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE750] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = *MEMORY[0x1E69DB738];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x1E69DB738] object:0];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = *MEMORY[0x1E69DEA28];
  [defaultCenter3 removeObserver:self name:*MEMORY[0x1E69DEA28] object:0];

  defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
  v10 = *MEMORY[0x1E69DE338];
  [defaultCenter4 removeObserver:self name:*MEMORY[0x1E69DE338] object:0];

  superview = [(PKTextAttachmentDrawingView *)self superview];

  if (superview)
  {
    [(PKTextAttachmentDrawingView *)self cleanupViewProviders];
    tiledView = [(PKTextAttachmentDrawingView *)self tiledView];
    [tiledView _didAddDrawingAttachmentView];
    [(PKTextAttachmentDrawingView *)self updateFrameForTextContainer];
    [(PKTextAttachmentDrawingView *)self _triggerRedraw];
    [(PKTextAttachmentDrawingView *)self _adjustResizeIndicatorVisibility];
    if ([(PKTextAttachmentDrawingView *)self inserted])
    {
      v13 = v10;
      window = [(PKTextAttachmentDrawingView *)self window];
      firstResponder = [window firstResponder];

      window2 = [(PKTextAttachmentDrawingView *)self window];
      v16 = [PKToolPicker activeToolPickerForWindow:window2];
      isVisible = [v16 isVisible];

      [(PKTextAttachmentDrawingView *)self becomeFirstResponder];
      [(PKTextAttachmentDrawingView *)self setInserted:0];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v18 = v17;
      v19 = [(PKTextAttachmentDrawingView *)self _characterIndex]- 1;
      v20 = 13.0;
      if (v19 <= 0x7FFFFFFFFFFFFFFDLL)
      {
        _textView = [(PKTextAttachmentDrawingView *)self _textView];
        [_textView _pk_lineFragmentRectForGlyphAtCharacterIndex:v19];
        v23 = v22;

        v20 = fmax(v23, 13.0);
      }

      if ([(PKTextAttachmentDrawingView *)self isAtEndOfDocument])
      {
        [(PKTextAttachmentDrawingView *)self _updateAttachmentBoundsEnsureLayout:0];
        v10 = v13;
      }

      else
      {
        [(PKTextAttachmentDrawingView *)self bounds];
        [(PKTextAttachmentDrawingView *)self setBounds:?];
        [(PKTextAttachmentDrawingView *)self _updateAttachmentBoundsEnsureLayout:0];
        [(PKTextAttachmentDrawingView *)self bounds];
        v10 = v13;
        if (v26 < 240.0)
        {
          drawing = [(PKAttachmentView *)self drawing];
          strokes = [drawing strokes];
          v29 = [strokes count];

          v10 = v13;
          if (!v29)
          {
            [(PKTextAttachmentDrawingView *)self beginLiveResize];
            v50[0] = MEMORY[0x1E69E9820];
            v50[1] = 3221225472;
            v50[2] = __49__PKTextAttachmentDrawingView_didMoveToSuperview__block_invoke;
            v50[3] = &unk_1E82DB338;
            v50[4] = self;
            *&v50[5] = v20;
            v50[6] = v18;
            v30 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:1 repeats:v50 block:0.0166666667];
          }
        }
      }

      if (isVisible)
      {
        [firstResponder becomeFirstResponder];
      }
    }

    traitCollection = [(PKTextAttachmentDrawingView *)self traitCollection];
    if (![traitCollection userInterfaceIdiom])
    {
      window3 = [(PKTextAttachmentDrawingView *)self window];
      v33 = [PKToolPicker isActiveToolPickerVisibleForWindow:window3];

      if (v33)
      {
        goto LABEL_19;
      }

      traitCollection = [(PKTextAttachmentDrawingView *)self tiledView];
      selectionController = [traitCollection selectionController];
      selectionInteraction = [(PKSelectionController *)selectionController selectionInteraction];
      [selectionInteraction setEnabled:0];
    }

LABEL_19:
    defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
    _textView2 = [(PKTextAttachmentDrawingView *)self _textView];
    [defaultCenter5 addObserver:self selector:sel__adjustResizeIndicatorVisibilityNotification name:v4 object:_textView2];

    defaultCenter6 = [MEMORY[0x1E696AD88] defaultCenter];
    _textView3 = [(PKTextAttachmentDrawingView *)self _textView];
    textStorage = [_textView3 textStorage];
    [defaultCenter6 addObserver:self selector:sel__adjustResizeIndicatorVisibilityNotification name:v6 object:textStorage];

    defaultCenter7 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter7 addObserver:self selector:sel__updateAfterBackgroundSnapshotting_ name:v8 object:0];

    defaultCenter8 = [MEMORY[0x1E696AD88] defaultCenter];
    window4 = [(PKTextAttachmentDrawingView *)self window];
    windowScene = [window4 windowScene];
    [defaultCenter8 addObserver:self selector:sel__sceneDidActivate_ name:v10 object:windowScene];

    textAttachment = [(PKTextAttachmentDrawingView *)self textAttachment];
    LOBYTE(defaultCenter8) = objc_opt_respondsToSelector();

    if (defaultCenter8)
    {
      textAttachment2 = [(PKTextAttachmentDrawingView *)self textAttachment];
      superview2 = [(PKTextAttachmentDrawingView *)self superview];
      [textAttachment2 attachmentView:self didMoveToSuperview:superview2];
    }

    goto LABEL_21;
  }

  textAttachment3 = [(PKTextAttachmentDrawingView *)self textAttachment];
  v25 = objc_opt_respondsToSelector();

  if ((v25 & 1) == 0)
  {
    return;
  }

  tiledView = [(PKTextAttachmentDrawingView *)self textAttachment];
  [tiledView attachmentView:self didMoveToSuperview:0];
LABEL_21:
}

void __49__PKTextAttachmentDrawingView_didMoveToSuperview__block_invoke(uint64_t a1, void *a2)
{
  v22 = a2;
  [*(a1 + 32) bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (v8 < 240.0)
  {
    v10 = v3;
    v11 = [*(a1 + 32) drawing];
    v12 = [v11 strokes];
    v13 = [v12 count];

    if (!v13)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      UIRoundToViewScale();
      v9 = fmin(v14, 240.0);
      [*(a1 + 32) setBounds:{v5, v10, v7, v9}];
      [*(a1 + 32) setLiveResizeAttachmentBounds:{v5, v10, v7, v9}];
      [*(a1 + 32) _updateAttachmentBoundsEnsureLayout:0];
    }
  }

  if (v9 >= 240.0)
  {
    [v22 invalidate];
    [*(a1 + 32) endLiveResize];
    if (([*(a1 + 32) isFirstResponder] & 1) == 0)
    {
      [*(a1 + 32) becomeFirstResponder];
    }

    [*(a1 + 32) drawingBounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [*(a1 + 32) canvasHeightFromDrawingViewHeight:v9 drawingViewWidth:v7];
    [*(a1 + 32) setDrawingCanvasBounds:{v16, v18, v20, v21}];
  }
}

- (void)_sceneDidActivate:(id)activate
{
  textAttachment = [(PKTextAttachmentDrawingView *)self textAttachment];
  pkAttachmentBoundsMightBeInvalid = [textAttachment pkAttachmentBoundsMightBeInvalid];

  if (pkAttachmentBoundsMightBeInvalid)
  {

    [(PKTextAttachmentDrawingView *)self updateFrameForTextContainer];
  }
}

- (void)_updateAfterBackgroundSnapshotting:(id)snapshotting
{
  textAttachment = [(PKTextAttachmentDrawingView *)self textAttachment];
  if ([textAttachment pkAttachmentBoundsMightBeInvalid])
  {
    window = [(PKTextAttachmentDrawingView *)self window];
    windowScene = [window windowScene];
    activationState = [windowScene activationState];

    if (!activationState)
    {

      [(PKTextAttachmentDrawingView *)self updateFrameForTextContainer];
    }
  }

  else
  {
  }
}

- (id)tiledView
{
  _textView = [(PKTextAttachmentDrawingView *)self _textView];
  _pkTiledViewIfEnabled = [_textView _pkTiledViewIfEnabled];

  return _pkTiledViewIfEnabled;
}

- (void)setContentHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v5.receiver = self;
  v5.super_class = PKTextAttachmentDrawingView;
  [(PKAttachmentView *)&v5 setContentHidden:?];
  [(PKLinedPaperLayer *)self->_linesLayer setHidden:hiddenCopy];
}

- (void)_triggerRedraw
{
  tiledView = [(PKTextAttachmentDrawingView *)self tiledView];
  [tiledView _layoutSubviews];
  [tiledView updateTilesForVisibleRect];
}

- (id)_textView
{
  superview = [(PKTextAttachmentDrawingView *)self superview];
  if (superview)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v2Superview = [superview superview];

      superview = v2Superview;
    }

    while (v2Superview);
  }

  return superview;
}

- (int64_t)_characterIndex
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  _textView = [(PKTextAttachmentDrawingView *)self _textView];
  textStorage = [_textView textStorage];

  v5 = [textStorage length];
  v6 = *MEMORY[0x1E69DB5F8];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__PKTextAttachmentDrawingView__characterIndex__block_invoke;
  v9[3] = &unk_1E82DB360;
  v9[4] = self;
  v9[5] = &v10;
  [textStorage enumerateAttribute:v6 inRange:0 options:v5 usingBlock:{0, v9}];
  v7 = v11[3];

  _Block_object_dispose(&v10, 8);
  return v7;
}

void __46__PKTextAttachmentDrawingView__characterIndex__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v8 = *(a1 + 32);
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((v8 + 792));

  if (WeakRetained == v9)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a5 = 1;
  }
}

- (void)_updateAttachmentBoundsEnsureLayout:(BOOL)layout
{
  layoutCopy = layout;
  _textView = [(PKTextAttachmentDrawingView *)self _textView];
  textLayoutManager = [_textView textLayoutManager];

  _textView2 = [(PKTextAttachmentDrawingView *)self _textView];
  _characterIndex = [(PKTextAttachmentDrawingView *)self _characterIndex];
  WeakRetained = objc_loadWeakRetained(&self->_textAttachment);
  [WeakRetained bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(PKTextAttachmentDrawingView *)self bounds];
  v34.origin.x = v17;
  v34.origin.y = v18;
  v34.size.width = v19;
  v34.size.height = v20;
  v33.origin.x = v10;
  v33.origin.y = v12;
  v33.size.width = v14;
  v33.size.height = v16;
  v21 = CGRectEqualToRect(v33, v34);

  [(PKTextAttachmentDrawingView *)self bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = objc_loadWeakRetained(&self->_textAttachment);
  [v30 setBounds:{v23, v25, v27, v29}];

  if (layoutCopy || !textLayoutManager || !v21)
  {
    [_textView2 _pk_invalidateLayoutForCharacterRange:_characterIndex invalidateDisplay:1 ensureLayout:{1, layoutCopy}];
  }

  [(PKTextAttachmentDrawingView *)self _triggerRedraw];
}

- (CGSize)drawingVisibleSize
{
  _textView = [(PKTextAttachmentDrawingView *)self _textView];
  [(PKTextAttachmentDrawingView *)self desiredAttachmentViewWidthForContainerView:_textView];
  v5 = v4;

  [(PKTextAttachmentDrawingView *)self drawingScaleForViewWidth:v5];
  v7 = v6;
  [(PKTextAttachmentDrawingView *)self drawingCanvasBounds];
  v9 = fmax(v7 * v8, 58.0);
  v10 = v5;
  result.height = v9;
  result.width = v10;
  return result;
}

- (CGRect)drawingBounds
{
  [(PKTextAttachmentDrawingView *)self drawingCanvasBounds];
  v6 = v5;
  if ((v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    drawing = [(PKAttachmentView *)self drawing];
    [drawing bounds];
    v8 = v10;
    v6 = v11;
  }

  else
  {
    v8 = v3;
  }

  v12 = 0.0;
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v8;
  }

  v14 = 768.0;
  v15 = v6;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)didBeginDrawing
{
  v3.receiver = self;
  v3.super_class = PKTextAttachmentDrawingView;
  [(PKAttachmentView *)&v3 didBeginDrawing];
  [(PKTextAttachmentDrawingView *)self becomeFirstResponder];
}

- (void)drawingDidChangeVisibleStrokes:(BOOL)strokes
{
  v18 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = PKTextAttachmentDrawingView;
  [(PKAttachmentView *)&v15 drawingDidChangeVisibleStrokes:strokes];
  textAttachment = [(PKTextAttachmentDrawingView *)self textAttachment];
  v5 = objc_opt_respondsToSelector();
  drawing = [(PKAttachmentView *)self drawing];
  if (v5)
  {
    [textAttachment drawingDataDidChange:drawing view:self];
  }

  else
  {
    v7 = objc_opt_class();
    v8 = objc_opt_class();

    if (v7 == v8)
    {
      drawing = [(PKAttachmentView *)self drawing];
      serialize = [drawing serialize];
      textAttachment2 = [(PKTextAttachmentDrawingView *)self textAttachment];
      [textAttachment2 setContents:serialize];
    }

    else
    {
      drawing = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(drawing, OS_LOG_TYPE_ERROR))
      {
        drawing2 = [(PKAttachmentView *)self drawing];
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        *buf = 138412290;
        v17 = v13;
        _os_log_error_impl(&dword_1C7CCA000, drawing, OS_LOG_TYPE_ERROR, "Unexpected drawing class in attachment view: %@", buf, 0xCu);
      }
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__PKTextAttachmentDrawingView_drawingDidChangeVisibleStrokes___block_invoke;
  block[3] = &unk_1E82D7148;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __62__PKTextAttachmentDrawingView_drawingDidChangeVisibleStrokes___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _textView];
  v2 = [v5 _pkTiledViewIfEnabled];
  v3 = [v2 selectionController];
  v4 = [*(a1 + 32) drawing];
  [(PKSelectionController *)v3 updateCurrentSelectionWithNewDrawingIfNecessary:v4];
}

- (void)toolPickerDidShow
{
  v8.receiver = self;
  v8.super_class = PKTextAttachmentDrawingView;
  [(PKAttachmentView *)&v8 toolPickerDidShow];
  [(PKTextAttachmentDrawingView *)self resetZoom];
  traitCollection = [(PKTextAttachmentDrawingView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    tiledView = [(PKTextAttachmentDrawingView *)self tiledView];
    selectionController = [tiledView selectionController];
    selectionInteraction = [(PKSelectionController *)selectionController selectionInteraction];
    [selectionInteraction setEnabled:1];
  }
}

- (void)toolPickerDidHide
{
  v8.receiver = self;
  v8.super_class = PKTextAttachmentDrawingView;
  [(PKAttachmentView *)&v8 toolPickerDidHide];
  traitCollection = [(PKTextAttachmentDrawingView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    tiledView = [(PKTextAttachmentDrawingView *)self tiledView];
    selectionController = [tiledView selectionController];
    selectionInteraction = [(PKSelectionController *)selectionController selectionInteraction];
    [selectionInteraction setEnabled:0];
  }
}

- (void)fingerDrawingEnabledDidChange
{
  tiledView = [(PKTextAttachmentDrawingView *)self tiledView];
  allowsFingerDrawing = [tiledView allowsFingerDrawing];

  [(PKTextAttachmentResizeView *)self->_topResizeView setEnabled:allowsFingerDrawing ^ 1];
  [(PKTextAttachmentResizeView *)self->_bottomResizeView setEnabled:allowsFingerDrawing ^ 1];

  [(PKTextAttachmentDrawingView *)self _updateResizeTouchInsetsFingerDrawingEnabled:allowsFingerDrawing];
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  isHidden = [(PKTextAttachmentDrawingView *)self isHidden];
  v6.receiver = self;
  v6.super_class = PKTextAttachmentDrawingView;
  [(PKTextAttachmentDrawingView *)&v6 setHidden:hiddenCopy];
  if (isHidden)
  {
    if (!hiddenCopy)
    {
      [(PKTextAttachmentDrawingView *)self _triggerRedraw];
    }
  }
}

- (CGSize)desiredTextAttachmentSizeForContainerView:(id)view
{
  [(PKTextAttachmentDrawingView *)self desiredAttachmentViewWidthForContainerView:view];
  v5 = v4;
  [(PKTextAttachmentDrawingView *)self drawingScaleForViewWidth:?];
  v7 = v6;
  [(PKTextAttachmentDrawingView *)self drawingBounds];
  v9 = v8;
  [(PKTextAttachmentResizeView *)self->_topResizeView resizeContentInset];
  v11 = v10;
  [(PKTextAttachmentResizeView *)self->_bottomResizeView resizeContentInset];
  v13 = v11 + v12;
  [(PKTextAttachmentDrawingView *)self zoomScale];
  v15 = v13 + fmax(v7 * v9 * v14, 58.0);
  v16 = v5;
  result.height = v15;
  result.width = v16;
  return result;
}

- (void)updateFrameForTextContainer
{
  [(PKTextAttachmentDrawingView *)self frame];
  v4 = v3;
  _textView = [(PKTextAttachmentDrawingView *)self _textView];
  v47 = _textView;
  if (_textView)
  {
    window = [_textView window];
    screen = [window screen];
    [screen scale];
    v9 = v8;
  }

  else
  {
    window = [MEMORY[0x1E69DCEB0] mainScreen];
    [window scale];
    v9 = v10;
  }

  [(PKTextAttachmentDrawingView *)self desiredTextAttachmentSizeForContainerView:v47];
  v12 = v11;
  v14 = v13;
  [(PKAttachmentView *)self setFrame:DKDRoundedRectForScale(0.0, v4, v11, v13, v9)];
  window2 = [(PKTextAttachmentDrawingView *)self window];
  windowScene = [window2 windowScene];
  _isPerformingSystemSnapshot = [windowScene _isPerformingSystemSnapshot];

  textAttachment = [(PKTextAttachmentDrawingView *)self textAttachment];
  LOBYTE(windowScene) = [textAttachment pkAttachmentBoundsMightBeInvalid] | _isPerformingSystemSnapshot;

  [(PKTextAttachmentDrawingView *)self _updateAttachmentBoundsEnsureLayout:windowScene & 1];
  [(UIScrollView *)self->_tileMaskView contentSize];
  v20 = v19;
  [(UIScrollView *)self->_tileMaskView contentOffset];
  v22 = v21;
  v24 = v23;
  [(UIScrollView *)self->_tileMaskView frame];
  v26 = v25;
  [(UIScrollView *)self->_tileMaskView setFrame:0.0, 0.0, v12, v14];
  [(PKTextAttachmentDrawingView *)self drawingVisibleSize];
  v28 = v27;
  v30 = v29;
  [(PKTextAttachmentDrawingView *)self zoomScale];
  v32 = v28 * v31;
  [(PKTextAttachmentDrawingView *)self zoomScale];
  [(UIScrollView *)self->_tileMaskView setContentSize:v32, v30 * v33];
  [(UIScrollView *)self->_tileMaskView setContentOffset:v22, v24];
  [(UIView *)self->_tileScaleView frame];
  v35 = v34;
  v37 = v36;
  [(PKTextAttachmentDrawingView *)self zoomScale];
  v39 = v12 * v38;
  [(PKTextAttachmentDrawingView *)self zoomScale];
  [(UIView *)self->_tileScaleView setFrame:v35, v37, v39, v14 * v40];
  [(UIScrollView *)self->_tileMaskView frame];
  if (v41 != v26 && v22 != 0.0 && v20 > 0.0)
  {
    [(UIScrollView *)self->_tileMaskView contentSize];
    [(UIScrollView *)self->_tileMaskView setContentOffset:v22 / v20 * v42, 0.0];
  }

  if ((_isPerformingSystemSnapshot & 1) != 0 || (-[PKTextAttachmentDrawingView window](self, "window"), v43 = objc_claimAutoreleasedReturnValue(), [v43 windowScene], v44 = objc_claimAutoreleasedReturnValue(), v45 = objc_msgSend(v44, "activationState"), v44, v43, !v45))
  {
    textAttachment2 = [(PKTextAttachmentDrawingView *)self textAttachment];
    [textAttachment2 setPkAttachmentBoundsMightBeInvalid:_isPerformingSystemSnapshot & 1];
  }
}

- (void)_updateViewHeightIfNecessary
{
  [(PKTextAttachmentDrawingView *)self drawingCanvasBounds];
  v4 = v3;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    [(PKTextAttachmentDrawingView *)self drawingTransform];
    [(PKTextAttachmentResizeView *)self->_topResizeView resizeContentInset];
    v9 = v8;
    [(PKTextAttachmentResizeView *)self->_bottomResizeView resizeContentInset];
    v7 = -(v9 + v10 - v4 * sqrt(v12 * v12 + v11 * v11));
  }

  else
  {
    drawing = [(PKAttachmentView *)self drawing];
    [(PKTextAttachmentDrawingView *)self heightFromDrawing:drawing delta:0.0];
    v7 = v6;
  }

  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    [(PKTextAttachmentDrawingView *)self updateDrawingHeight:0 notifyDrawingDidChange:v7];
  }
}

- (void)_adjustResizeIndicatorVisibilityNotification
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {

    [(PKTextAttachmentDrawingView *)self _adjustResizeIndicatorVisibility];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__PKTextAttachmentDrawingView__adjustResizeIndicatorVisibilityNotification__block_invoke;
    block[3] = &unk_1E82D7148;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_adjustResizeIndicatorVisibility:(BOOL)visibility highlightBackground:(BOOL)background
{
  backgroundCopy = background;
  visibilityCopy = visibility;
  isFirstResponder = [(PKTextAttachmentDrawingView *)self isFirstResponder];

  [(PKTextAttachmentDrawingView *)self _setAdjustResizeIndicatorVisible:isFirstResponder animated:visibilityCopy highlightBackground:backgroundCopy];
}

- (void)_setAdjustResizeIndicatorVisible:(BOOL)visible animated:(BOOL)animated highlightBackground:(BOOL)background
{
  animatedCopy = animated;
  if (visible)
  {
    [(PKTextAttachmentDrawingView *)self frame];
    v8 = 0;
    v9 = 0;
    if (v10 > 1.0 && !background)
    {
      v8 = [(PKTextAttachmentDrawingView *)self isAtBeginningOfDocument]^ 1;
      v9 = [(PKTextAttachmentDrawingView *)self isAtEndOfDocument]^ 1;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  topResizeView = self->_topResizeView;
  tiledView = [(PKTextAttachmentDrawingView *)self tiledView];
  -[PKTextAttachmentResizeView show:enabled:animated:](topResizeView, "show:enabled:animated:", v8, [tiledView allowsFingerDrawing] ^ 1, animatedCopy);

  bottomResizeView = self->_bottomResizeView;
  tiledView2 = [(PKTextAttachmentDrawingView *)self tiledView];
  -[PKTextAttachmentResizeView show:enabled:animated:](bottomResizeView, "show:enabled:animated:", v9, [tiledView2 allowsFingerDrawing] ^ 1, animatedCopy);

  if (background)
  {
    _textView = [(PKTextAttachmentDrawingView *)self _textView];
    selectionHighlightColor = [_textView selectionHighlightColor];
    [(PKTextAttachmentDrawingView *)self setBackgroundColor:selectionHighlightColor];
  }

  else
  {
    [(PKTextAttachmentDrawingView *)self setBackgroundColor:0];
  }

  tiledView3 = [(PKTextAttachmentDrawingView *)self tiledView];
  -[PKTextAttachmentDrawingView _updateResizeTouchInsetsFingerDrawingEnabled:](self, "_updateResizeTouchInsetsFingerDrawingEnabled:", [tiledView3 allowsFingerDrawing]);

  drawing = [(PKAttachmentView *)self drawing];

  if (drawing)
  {

    [(PKTextAttachmentDrawingView *)self layoutTileViews];
  }
}

- (double)heightFromDrawing:(id)drawing delta:(double)delta
{
  [drawing bounds];
  v6 = CGRectGetMaxY(v11) + delta;
  [(PKTextAttachmentDrawingView *)self drawingBounds];
  v7 = v6 - CGRectGetMinY(v12);
  [(PKTextAttachmentDrawingView *)self drawingTransform];
  return v7 * sqrt(v10 * v10 + v9 * v9);
}

- (double)canvasHeightFromDrawingViewHeight:(double)height
{
  [(PKTextAttachmentDrawingView *)self frame];

  [(PKTextAttachmentDrawingView *)self canvasHeightFromDrawingViewHeight:height drawingViewWidth:v5];
  return result;
}

- (double)canvasHeightFromDrawingViewHeight:(double)height drawingViewWidth:(double)width
{
  [(PKTextAttachmentDrawingView *)self drawingScaleForViewWidth:width];
  v7 = v6;
  [(PKTextAttachmentResizeView *)self->_topResizeView resizeContentInset];
  v9 = v8;
  [(PKTextAttachmentResizeView *)self->_bottomResizeView resizeContentInset];
  v11 = height - (v9 + v10);
  [(PKTextAttachmentDrawingView *)self zoomScale];
  return v11 / (v7 * v12);
}

- (void)updateDrawingHeight:(double)height notifyDrawingDidChange:(BOOL)change
{
  changeCopy = change;
  [(PKTextAttachmentResizeView *)self->_topResizeView resizeContentInset];
  v8 = v7 + height;
  [(PKTextAttachmentResizeView *)self->_bottomResizeView resizeContentInset];
  v10 = v8 + v9;
  [(PKTextAttachmentDrawingView *)self bounds];
  [(PKTextAttachmentDrawingView *)self _setHeight:0 originalHeight:v10 growFromTop:v11];
  if (changeCopy)
  {

    [(PKTextAttachmentDrawingView *)self drawingDidChangeVisibleStrokes:0];
  }
}

- (void)_setHeight:(double)height originalHeight:(double)originalHeight growFromTop:(BOOL)top
{
  topCopy = top;
  _textView = [(PKTextAttachmentDrawingView *)self _textView];
  [(PKTextAttachmentDrawingView *)self frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = v14 * 58.0;
  [(PKTextAttachmentDrawingView *)self drawingBounds];
  v20 = fmax(v18 / v19, 8.0);
  if (v20 < height && (*&height & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    heightCopy = height;
  }

  else
  {
    heightCopy = v20;
  }

  if (heightCopy != v17)
  {
    v80 = v17;
    originalHeightCopy = originalHeight;
    v84 = v13;
    v85 = v11;
    v77 = heightCopy - v17;
    [_textView contentOffset];
    [(PKTextAttachmentDrawingView *)self drawingBounds];
    v82 = v23;
    v79 = v24;
    v86 = v25;
    rect = v26;
    [(PKTextAttachmentDrawingView *)self frame];
    [(PKTextAttachmentDrawingView *)self drawingBoundsForViewWidth:v27];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v83 = v15;
    [(PKTextAttachmentDrawingView *)self drawingScaleForViewWidth:v15];
    v78 = 1.0 / v36;
    [_textView contentInset];
    v38 = v37;
    [_textView _contentScrollInset];
    if (topCopy)
    {
      v89.origin.x = v29;
      v89.origin.y = v31;
      v89.size.width = v33;
      v89.size.height = v35;
      if (CGRectIsEmpty(v89))
      {
        v40 = _textView;
        v42 = v82;
        v41 = v15;
        v43 = v77;
        v44 = v78;
      }

      else
      {
        v92.origin.x = v29;
        v92.origin.y = v31;
        v92.size.width = v33;
        v92.size.height = v35;
        MinY = CGRectGetMinY(v92);
        [(PKTextAttachmentDrawingView *)self drawingBounds];
        v55 = MinY * v54 / -768.0;
        v42 = v82;
        v93.origin.x = v82;
        v93.origin.y = v79;
        v93.size.width = v86;
        v93.size.height = rect;
        v56 = CGRectGetMinY(v93) + v55;
        [(PKTextAttachmentResizeView *)self->_bottomResizeView resizeContentInset];
        v58 = fmin(v57 + v56, 0.0);
        v43 = v77;
        v44 = v78;
        if (v77 < v58)
        {
          v43 = v58;
        }

        v40 = _textView;
        v41 = v15;
      }

      v59 = v43;
      [v40 contentOffset];
      [_textView setContentOffset:?];
      v60 = v80 + v59;
      v61 = v80 + v59 - originalHeightCopy;
      [(PKTextAttachmentDrawingView *)self canvasHeightFromDrawingViewHeight:v80 + v59];
      v63 = v62;
      [(PKTextAttachmentResizeView *)self->_topResizeView originalDrawingBounds];
      v65 = v64;
      [(PKTextAttachmentDrawingView *)self zoomScale];
      v67 = v65 - v44 * v61 / v66;
      v50 = v84;
    }

    else
    {
      v45 = v38 + v39;
      [_textView contentSize];
      v47 = v45 + v46;
      [_textView bounds];
      v48 = v47 - CGRectGetMaxY(v90);
      if (v48 >= 0.0)
      {
        v49 = v48;
      }

      else
      {
        v49 = 0.0;
      }

      v91.origin.x = v29;
      v91.origin.y = v31;
      v91.size.width = v33;
      v91.size.height = v35;
      if (CGRectIsEmpty(v91))
      {
        v41 = v15;
        v50 = v84;
        v42 = v82;
        v51 = v77;
        v52 = v78;
      }

      else
      {
        v94.origin.x = v29;
        v94.origin.y = v31;
        v94.size.width = v33;
        v94.size.height = v35;
        MaxY = CGRectGetMaxY(v94);
        v42 = v82;
        v95.origin.x = v82;
        v95.origin.y = v79;
        v95.size.width = v86;
        v95.size.height = rect;
        v52 = v78;
        v69 = (MaxY - CGRectGetMaxY(v95)) / v78;
        [(PKTextAttachmentResizeView *)self->_topResizeView resizeContentInset];
        v71 = fmin(v69 - v70, 0.0);
        v51 = v77;
        if (v77 < v71)
        {
          v51 = v71;
        }

        v41 = v83;
        v50 = v84;
      }

      v72 = heightCopy - originalHeightCopy;
      if (v49 >= heightCopy - originalHeightCopy)
      {
        v72 = v49;
      }

      v73 = -v72;
      if (v51 >= v73)
      {
        v73 = v51;
      }

      v60 = v80 + v73;
      v74 = v52 * (v80 + v73);
      [(PKTextAttachmentDrawingView *)self zoomScale];
      v63 = v74 / v75;
      v67 = v79;
    }

    [(PKTextAttachmentDrawingView *)self setDrawingCanvasBounds:v42, v67, v86, v63];
    [(PKAttachmentView *)self setFrame:v85, v50, v41, v60];
    [(PKTextAttachmentDrawingView *)self _updateAttachmentBoundsEnsureLayout:1];
  }
}

- (BOOL)hitChrome:(CGPoint)chrome isStylus:(BOOL)stylus event:(id)event
{
  v5 = 80.0;
  if (stylus)
  {
    v5 = 40.0;
  }

  return [(PKTextAttachmentDrawingView *)self hitTestResizeHandles:chrome.x threshold:chrome.y, v5];
}

- (BOOL)hitByTouchLocation:(CGPoint)location bounds:(CGRect)bounds
{
  y = location.y;
  x = location.x;
  v20 = CGRectInset(bounds, -64.0, 0.0);
  v7 = v20.origin.x;
  v8 = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  _characterIndex = [(PKTextAttachmentDrawingView *)self _characterIndex];
  if (_characterIndex)
  {
    v12 = v8;
  }

  else
  {
    v12 = v8 + -16.0;
  }

  if (_characterIndex)
  {
    v13 = height;
  }

  else
  {
    v13 = height + 16.0;
  }

  v14 = v7;
  v15 = width;
  v16 = x;
  v17 = y;

  return CGRectContainsPoint(*(&v12 - 1), *&v16);
}

- (BOOL)hitTestResizeHandles:(CGPoint)handles threshold:(double)threshold
{
  y = handles.y;
  x = handles.x;
  [(PKTextAttachmentDrawingView *)self bounds];
  v10 = v9;
  v11 = v8;
  v12 = threshold * 0.5;
  if (threshold * 0.5 + v8 * 0.5 >= threshold)
  {
    thresholdCopy = threshold;
  }

  else
  {
    thresholdCopy = threshold * 0.5 + v8 * 0.5;
  }

  if ([(PKTextAttachmentDrawingView *)self effectiveUserInterfaceLayoutDirection]== 1)
  {
    v14 = v10 - v12;
  }

  else
  {
    v14 = threshold * -0.5;
  }

  v21.origin.x = v14;
  v21.size.width = threshold;
  v21.size.height = thresholdCopy;
  v19.x = x;
  v19.y = y;
  v21.origin.y = threshold * -0.5;
  if (CGRectContainsPoint(v21, v19) && [(PKTextAttachmentResizeView *)self->_topResizeView shown])
  {
    LOBYTE(v15) = 1;
  }

  else
  {
    v22.origin.y = v12 + v11 - thresholdCopy;
    v22.origin.x = v14;
    v22.size.width = threshold;
    v22.size.height = thresholdCopy;
    v20.x = x;
    v20.y = y;
    v15 = CGRectContainsPoint(v22, v20);
    if (v15)
    {
      bottomResizeView = self->_bottomResizeView;

      LOBYTE(v15) = [(PKTextAttachmentResizeView *)bottomResizeView shown];
    }
  }

  return v15;
}

- (void)tapBelowDrawingGesture:(id)gesture
{
  if ([(PKTextAttachmentDrawingView *)self isFirstResponder])
  {
    [(PKTextAttachmentDrawingView *)self resignFirstResponder];
    window = [(PKTextAttachmentDrawingView *)self window];
    firstResponder = [window firstResponder];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [firstResponder resignFirstResponder];
    }
  }

  window2 = [(PKTextAttachmentDrawingView *)self window];
  v7 = [PKToolPicker activeToolPickerForWindow:window2];

  [v7 _tellDelegateToHideToolPicker];
}

- (id)_drawingGestureRecognizer
{
  _textView = [(PKTextAttachmentDrawingView *)self _textView];
  _pkTiledViewIfEnabled = [_textView _pkTiledViewIfEnabled];
  drawingGestureRecognizer = [_pkTiledViewIfEnabled drawingGestureRecognizer];

  return drawingGestureRecognizer;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  v8 = touchCopy;
  if (self->_resizeDragGestureRecognizer == recognizerCopy || self->_resizeHighlightGestureRecognizer == recognizerCopy || self->_showMenuGestureRecognizer == recognizerCopy)
  {
    [touchCopy locationInView:self];
    v11 = v10;
    v13 = v12;
    +[PKTextAttachmentResizeView resizeHitSize];
    if ([(PKTextAttachmentDrawingView *)self hitTestResizeHandles:v11 threshold:v13, v14])
    {
      if (self->_showMenuGestureRecognizer != recognizerCopy)
      {
        mEMORY[0x1E69DCC68] = [MEMORY[0x1E69DCC68] sharedMenuController];
        [mEMORY[0x1E69DCC68] hideMenu];

        [(PKTextAttachmentDrawingView *)self _adjustResizeIndicatorVisibility];
      }

      v9 = 1;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    NSClassFromString(&cfstr_Uitextselectio.isa);
    v9 = objc_opt_isKindOfClass() ^ 1;
  }

  return v9 & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  showMenuGestureRecognizer = [(PKTextAttachmentDrawingView *)self showMenuGestureRecognizer];
  v9 = showMenuGestureRecognizer;
  if (showMenuGestureRecognizer == gestureRecognizerCopy)
  {
    NSClassFromString(&cfstr_Uitextselectio.isa);
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
LABEL_7:
      v13 = 1;
      goto LABEL_8;
    }
  }

  else
  {
  }

  if (self->_resizeDragGestureRecognizer == recognizerCopy)
  {
    showMenuGestureRecognizer2 = [(PKTextAttachmentDrawingView *)self showMenuGestureRecognizer];

    if (showMenuGestureRecognizer2 == gestureRecognizerCopy)
    {
      goto LABEL_7;
    }
  }

  _drawingGestureRecognizer = [(PKTextAttachmentDrawingView *)self _drawingGestureRecognizer];
  v13 = _drawingGestureRecognizer == gestureRecognizerCopy;

LABEL_8:
  return v13;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  _drawingGestureRecognizer = [(PKTextAttachmentDrawingView *)self _drawingGestureRecognizer];
  v9 = _drawingGestureRecognizer;
  if (_drawingGestureRecognizer == recognizerCopy)
  {

    goto LABEL_7;
  }

  _drawingGestureRecognizer2 = [(PKTextAttachmentDrawingView *)self _drawingGestureRecognizer];

  if (_drawingGestureRecognizer2 == gestureRecognizerCopy)
  {
    goto LABEL_7;
  }

  resizeDragGestureRecognizer = self->_resizeDragGestureRecognizer;
  resizeHighlightGestureRecognizer = self->_resizeHighlightGestureRecognizer;
  if (resizeDragGestureRecognizer == recognizerCopy)
  {
    v14 = resizeHighlightGestureRecognizer == gestureRecognizerCopy;
    goto LABEL_11;
  }

  if (resizeHighlightGestureRecognizer != recognizerCopy)
  {
    NSClassFromString(&cfstr_Uitextselectio.isa);
    objc_opt_isKindOfClass();
    v13 = 0;
    goto LABEL_14;
  }

  if (resizeDragGestureRecognizer == gestureRecognizerCopy)
  {
LABEL_7:
    v13 = 1;
    goto LABEL_14;
  }

  v14 = self->_showMenuGestureRecognizer == gestureRecognizerCopy;
LABEL_11:
  v13 = v14;
LABEL_14:

  return v13;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  [(UITapGestureRecognizer *)beginCopy locationInView:self];
  v6 = v5;
  v8 = v7;
  [(PKTextAttachmentDrawingView *)self bounds];
  v13 = [(PKTextAttachmentDrawingView *)self hitByTouchLocation:v6 bounds:v8, v9, v10, v11, v12];
  if (self->_tapBelowDrawingGestureRecognizer != beginCopy)
  {
    v14 = [(PKAttachmentView *)self inlineViewAtPoint:v6, v8];
    v15 = v14;
    if (!v14 || ([v14 alpha], v16 <= 0.0))
    {
      if (self->_eatKeyboardGestureRecognizer == beginCopy)
      {
        isMenuVisible = 1;
        goto LABEL_16;
      }

      if (self->_showMenuGestureRecognizer == beginCopy)
      {
        if ([(PKTextAttachmentDrawingView *)self isFirstResponder])
        {
          mEMORY[0x1E69DCC68] = [MEMORY[0x1E69DCC68] sharedMenuController];
          isMenuVisible = [mEMORY[0x1E69DCC68] isMenuVisible] ^ 1;
LABEL_14:

          goto LABEL_16;
        }
      }

      else
      {
        if (self->_hideMenuGestureRecognizer != beginCopy)
        {
          NSClassFromString(&cfstr_Uitextselectio.isa);
          isMenuVisible = objc_opt_isKindOfClass() ^ 1;
LABEL_16:

          goto LABEL_17;
        }

        if ([(PKTextAttachmentDrawingView *)self isFirstResponder])
        {
          mEMORY[0x1E69DCC68] = [MEMORY[0x1E69DCC68] sharedMenuController];
          isMenuVisible = [mEMORY[0x1E69DCC68] isMenuVisible];
          goto LABEL_14;
        }
      }
    }

    isMenuVisible = 0;
    goto LABEL_16;
  }

  isMenuVisible = !v13;
LABEL_17:

  return isMenuVisible & 1;
}

- (BOOL)gestureRecognizerShouldDelayLift:(id)lift
{
  liftCopy = lift;
  v5 = liftCopy;
  if (self->_resizeHighlightGestureRecognizer == liftCopy || self->_resizeDragGestureRecognizer == liftCopy)
  {
    v9 = 1;
  }

  else
  {
    tiledView = [(PKTextAttachmentDrawingView *)self tiledView];
    canvasView = [tiledView canvasView];
    drawingGestureRecognizer = [canvasView drawingGestureRecognizer];
    v9 = drawingGestureRecognizer == v5 || self->_showMenuGestureRecognizer == v5;
  }

  return v9;
}

- (void)higlightResize:(id)resize
{
  resizeCopy = resize;
  state = [resizeCopy state];
  if (state == 5 || state == 3)
  {
    v6 = &OBJC_IVAR___PKTextAttachmentDrawingView__bottomResizeView;
    [(PKTextAttachmentResizeView *)self->_topResizeView setHighlighted:0];
    v7 = 0;
  }

  else
  {
    if (state != 1)
    {
      goto LABEL_13;
    }

    [resizeCopy locationInView:self];
    v9 = v8;
    [(PKTextAttachmentDrawingView *)self bounds];
    if (v9 >= CGRectGetMidY(v12))
    {
      v6 = &OBJC_IVAR___PKTextAttachmentDrawingView__bottomResizeView;
    }

    else
    {
      v6 = &OBJC_IVAR___PKTextAttachmentDrawingView__topResizeView;
    }

    v7 = 1;
  }

  [*(&self->super.super.super.super.super.isa + *v6) setHighlighted:v7];
LABEL_13:
}

- (void)resizeDrawing:(id)drawing
{
  drawingCopy = drawing;
  if ([drawingCopy state] != 1)
  {
    v7 = &OBJC_IVAR___PKTextAttachmentDrawingView__topResizeView;
    if (self->_resizeUpper)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  [drawingCopy locationInView:self];
  v5 = v4;
  [(PKTextAttachmentDrawingView *)self bounds];
  MidY = CGRectGetMidY(v10);
  v7 = &OBJC_IVAR___PKTextAttachmentDrawingView__topResizeView;
  self->_resizeUpper = v5 < MidY;
  if (v5 >= MidY)
  {
LABEL_5:
    v7 = &OBJC_IVAR___PKTextAttachmentDrawingView__bottomResizeView;
  }

LABEL_6:
  [*(&self->super.super.super.super.super.isa + *v7) handleGesture:drawingCopy];
}

- (void)hideDrawingMenu:(id)menu
{
  mEMORY[0x1E69DCC68] = [MEMORY[0x1E69DCC68] sharedMenuController];
  [mEMORY[0x1E69DCC68] hideMenu];

  _textView = [(PKTextAttachmentDrawingView *)self _textView];
  [_textView setSelectedTextRange:0];

  [(PKTextAttachmentDrawingView *)self resignFirstResponder];
}

- (void)showDrawingMenu:(id)menu
{
  menuCopy = menu;
  if (([(PKTextAttachmentDrawingView *)self isFirstResponder]& 1) == 0)
  {
    [(PKTextAttachmentDrawingView *)self becomeFirstResponder];
  }

  if ([menuCopy state] == 3)
  {
    mEMORY[0x1E69DCC68] = [MEMORY[0x1E69DCC68] sharedMenuController];
    if ([mEMORY[0x1E69DCC68] isMenuVisible])
    {
      [mEMORY[0x1E69DCC68] hideMenu];
    }

    else
    {
      [menuCopy locationInView:self];
      [mEMORY[0x1E69DCC68] showMenuFromView:self rect:?];
    }

    [(PKTextAttachmentDrawingView *)self _adjustResizeIndicatorVisibility:1 highlightBackground:1];
  }
}

- (BOOL)canBecomeFirstResponder
{
  _textView = [(PKTextAttachmentDrawingView *)self _textView];
  _canSelectDrawing = [_textView _canSelectDrawing];

  return _canSelectDrawing;
}

- (BOOL)becomeFirstResponder
{
  v5.receiver = self;
  v5.super_class = PKTextAttachmentDrawingView;
  becomeFirstResponder = [(PKTextAttachmentDrawingView *)&v5 becomeFirstResponder];
  [(PKTextAttachmentDrawingView *)self _adjustResizeIndicatorVisibility:1 highlightBackground:0];
  return becomeFirstResponder;
}

- (BOOL)resignFirstResponder
{
  v5.receiver = self;
  v5.super_class = PKTextAttachmentDrawingView;
  resignFirstResponder = [(PKTextAttachmentDrawingView *)&v5 resignFirstResponder];
  [(PKTextAttachmentDrawingView *)self _adjustResizeIndicatorVisibility:1 highlightBackground:0];
  return resignFirstResponder;
}

- (id)keyCommands
{
  v20[4] = *MEMORY[0x1E69E9840];
  tiledView = [(PKTextAttachmentDrawingView *)self tiledView];
  _hasSelection = [tiledView _hasSelection];

  _PencilKitBundle();
  if (_hasSelection)
    v17 = {;
    v4 = [v17 localizedStringForKey:@"Copy strokes" value:@"Copy strokes" table:@"Localizable"];
    v5 = __42__PKTextAttachmentDrawingView_keyCommands__block_invoke(@"c", 0x100000, sel_copyStrokeSelection_, v4);
    v20[0] = v5;
    v18 = _PencilKitBundle();
    v16 = [v18 localizedStringForKey:@"Cut strokes" value:@"Cut strokes" table:@"Localizable"];
    v6 = __42__PKTextAttachmentDrawingView_keyCommands__block_invoke(@"x", 0x100000, sel_cutStrokeSelection_, v16);
    v20[1] = v6;
    v7 = _PencilKitBundle();
    v8 = [v7 localizedStringForKey:@"Paste strokes" value:@"Paste strokes" table:@"Localizable"];
    v9 = __42__PKTextAttachmentDrawingView_keyCommands__block_invoke(@"v", 0x100000, sel_paste_, v8);
    v20[2] = v9;
    v10 = _PencilKitBundle();
    v11 = [v10 localizedStringForKey:@"Delete strokes" value:@"Delete strokes" table:@"Localizable"];
    v12 = __42__PKTextAttachmentDrawingView_keyCommands__block_invoke(@"\b", 0, sel_deleteStrokeSelection_, v11);
    v20[3] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];

    v14 = v17;
  }

  else
    v14 = {;
    v4 = [v14 localizedStringForKey:@"Select All" value:@"Select All" table:@"Localizable"];
    v5 = __42__PKTextAttachmentDrawingView_keyCommands__block_invoke(@"a", 0x100000, sel_selectAll_, v4);
    v19 = v5;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  }

  return v13;
}

id __42__PKTextAttachmentDrawingView_keyCommands__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = MEMORY[0x1E69DCBA0];
  v8 = a4;
  v9 = [v7 keyCommandWithInput:a1 modifierFlags:a2 action:a3];
  [v9 setDiscoverabilityTitle:v8];

  return v9;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  v22[1] = *MEMORY[0x1E69E9840];
  senderCopy = sender;
  if (sel__share_ == action)
  {
    drawing = [(PKAttachmentView *)self drawing];
    [drawing bounds];
    if (!CGRectIsEmpty(v23))
    {
      window = [(PKTextAttachmentDrawingView *)self window];
      screen = [window screen];
      displayIdentity = [screen displayIdentity];
      v7 = [displayIdentity expectsSecureRendering] ^ 1;

LABEL_20:
      goto LABEL_21;
    }

LABEL_10:
    v7 = 0;
LABEL_21:

    goto LABEL_22;
  }

  if (sel_cut_ == action)
  {
    drawing2 = [(PKAttachmentView *)self drawing];
    [drawing2 bounds];
    if (CGRectIsEmpty(v24))
    {
      v7 = 0;
    }

    else
    {
      mEMORY[0x1E69DCC68] = [MEMORY[0x1E69DCC68] sharedMenuController];
      v7 = mEMORY[0x1E69DCC68] == senderCopy;
    }

    goto LABEL_16;
  }

  if (sel_copy_ == action)
  {
    drawing2 = [(PKAttachmentView *)self drawing];
    [drawing2 bounds];
    v7 = !CGRectIsEmpty(v25);
LABEL_16:

    goto LABEL_22;
  }

  if (sel_delete_ == action)
  {
    drawing = [(PKAttachmentView *)self drawing];
    [drawing bounds];
    if (!CGRectIsEmpty(v26) || ![(PKTextAttachmentDrawingView *)self isAtEndOfDocument])
    {
      window = [(PKTextAttachmentDrawingView *)self _textView];
      screen = [window textStorage];
      v7 = [screen length] != 0;
      goto LABEL_20;
    }

    goto LABEL_10;
  }

  if (sel_paste_ == action)
  {
    generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
    v22[0] = @"com.apple.drawing";
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    v17 = [generalPasteboard containsPasteboardTypes:v16];

    tiledView = [(PKTextAttachmentDrawingView *)self tiledView];
    selectionController = [tiledView selectionController];
    v20 = [(PKSelectionController *)selectionController _selectionInteractionCanPerformAction:senderCopy withSender:0 inAttachment:?];

    v7 = v17 | v20;
  }

  else
  {
    v7 = 0;
    if (sel_insertSpace_ != action && sel_selectAll_ != action)
    {
      v21.receiver = self;
      v21.super_class = PKTextAttachmentDrawingView;
      v7 = [(PKTextAttachmentDrawingView *)&v21 canPerformAction:action withSender:senderCopy];
    }
  }

LABEL_22:

  return v7 & 1;
}

- (void)cutStrokeSelection:(id)selection
{
  selectionCopy = selection;
  tiledView = [(PKTextAttachmentDrawingView *)self tiledView];
  [tiledView cut:selectionCopy];
}

- (void)copyStrokeSelection:(id)selection
{
  selectionCopy = selection;
  tiledView = [(PKTextAttachmentDrawingView *)self tiledView];
  [tiledView copy:selectionCopy];
}

- (void)deleteStrokeSelection:(id)selection
{
  selectionCopy = selection;
  tiledView = [(PKTextAttachmentDrawingView *)self tiledView];
  [tiledView delete:selectionCopy];
}

- (void)cut:(id)cut
{
  [(PKTextAttachmentDrawingView *)self copy:cut];
  _textView = [(PKTextAttachmentDrawingView *)self _textView];
  textAttachment = [(PKTextAttachmentDrawingView *)self textAttachment];
  [_textView _removeDrawingAttachment:textAttachment withView:self forDeletion:0];
}

- (void)copy:(id)copy
{
  drawing = [(PKAttachmentView *)self drawing];
  serializeTransiently = [drawing serializeTransiently];

  drawing2 = [(PKAttachmentView *)self drawing];
  [drawing2 bounds];
  v8 = v7;
  v10 = v9;

  if (v10 <= 2048.0)
  {
    v11 = 1.0;
  }

  else
  {
    v11 = 2048.0 / v10;
    v8 = ceil(v8 * (2048.0 / v10));
    v10 = 2048.0;
  }

  v12 = [PKImageRenderer alloc];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v15 = [(PKImageRenderer *)v12 initWithSize:v8 scale:v10, v14];

  drawing3 = [(PKAttachmentView *)self drawing];
  drawing4 = [(PKAttachmentView *)self drawing];
  [drawing4 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __36__PKTextAttachmentDrawingView_copy___block_invoke;
  v27[3] = &unk_1E82DB388;
  v28 = serializeTransiently;
  v26 = serializeTransiently;
  [(PKImageRenderer *)v15 renderDrawing:drawing3 clippedToStrokeSpaceRect:v27 scale:v19 completion:v21, v23, v25, v11];
}

void __36__PKTextAttachmentDrawingView_copy___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = UIImagePNGRepresentation(v3);
LABEL_5:
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__PKTextAttachmentDrawingView_copy___block_invoke_2;
    block[3] = &unk_1E82DACE8;
    v8 = v4;
    v9 = v5;
    v10 = *(a1 + 32);
    v6 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    goto LABEL_6;
  }

  if (*(a1 + 32))
  {
    v5 = 0;
    goto LABEL_5;
  }

LABEL_6:
}

void __36__PKTextAttachmentDrawingView_copy___block_invoke_2(void *a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  if (a1[4])
  {
    v3 = a1[5];
    v4 = [*MEMORY[0x1E6982F28] identifier];
    [v2 setObject:v3 forKeyedSubscript:v4];
  }

  v5 = a1[6];
  if (v5)
  {
    [v2 setObject:v5 forKeyedSubscript:@"com.apple.drawing"];
  }

  if ([v2 count])
  {
    v6 = [MEMORY[0x1E69DCD50] generalPasteboard];
    v8[0] = v2;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [v6 setItems:v7];
  }
}

- (void)paste:(id)paste
{
  pasteCopy = paste;
  tiledView = [(PKTextAttachmentDrawingView *)self tiledView];
  [tiledView paste:pasteCopy];
}

- (void)delete:(id)delete
{
  _textView = [(PKTextAttachmentDrawingView *)self _textView];
  textAttachment = [(PKTextAttachmentDrawingView *)self textAttachment];
  [_textView _removeDrawingAttachment:textAttachment withView:self forDeletion:1];
}

- (void)insertSpace:(id)space
{
  spaceCopy = space;
  tiledView = [(PKTextAttachmentDrawingView *)self tiledView];
  [tiledView insertSpace:spaceCopy];
}

- (void)selectAll:(id)all
{
  allCopy = all;
  tiledView = [(PKTextAttachmentDrawingView *)self tiledView];
  [tiledView selectAll:allCopy];
}

- (void)_share:(id)_share
{
  v55[1] = *MEMORY[0x1E69E9840];
  _shareCopy = _share;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__25;
  v52 = __Block_byref_object_dispose__25;
  v53 = 0;
  v5 = dispatch_semaphore_create(0);
  v6 = [PKImageRenderer alloc];
  drawing = [(PKAttachmentView *)self drawing];
  [drawing bounds];
  v9 = v8;
  v11 = v10;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v14 = [(PKImageRenderer *)v6 initWithSize:v9 scale:v11, v13];

  drawing2 = [(PKAttachmentView *)self drawing];
  drawing3 = [(PKAttachmentView *)self drawing];
  [drawing3 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __38__PKTextAttachmentDrawingView__share___block_invoke;
  v45[3] = &unk_1E82D82B8;
  v47 = &v48;
  v25 = v5;
  v46 = v25;
  [(PKImageRenderer *)v14 renderDrawing:drawing2 clippedToStrokeSpaceRect:v45 scale:v18 completion:v20, v22, v24, 1.0];

  v26 = dispatch_time(0, 4000000000);
  dispatch_semaphore_wait(v25, v26);
  if (v49[5])
  {
    v27 = objc_alloc(MEMORY[0x1E69CD9F8]);
    v55[0] = v49[5];
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:1];
    v29 = [v27 initWithActivityItems:v28 applicationActivities:0];

    [v29 setModalPresentationStyle:7];
    popoverPresentationController = [v29 popoverPresentationController];
    [popoverPresentationController setSourceView:self];

    [(PKTextAttachmentDrawingView *)self bounds];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    popoverPresentationController2 = [v29 popoverPresentationController];
    [popoverPresentationController2 setSourceRect:{v32, v34, v36, v38}];

    popoverPresentationController3 = [v29 popoverPresentationController];
    [popoverPresentationController3 setPermittedArrowDirections:3];

    popoverPresentationController4 = [v29 popoverPresentationController];
    [popoverPresentationController4 setCanOverlapSourceViewRect:1];

    v54 = *MEMORY[0x1E69CDAA8];
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
    [v29 setExcludedActivityTypes:v42];

    window = [(PKTextAttachmentDrawingView *)self window];
    rootViewController = [window rootViewController];
    [rootViewController presentViewController:v29 animated:1 completion:0];
  }

  _Block_object_dispose(&v48, 8);
}

void __38__PKTextAttachmentDrawingView__share___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)scaleDrawing:(double)drawing
{
  [(UIScrollView *)self->_tileMaskView contentOffset];

  [(PKTextAttachmentDrawingView *)self scaleDrawing:0 withOffset:drawing animated:v5, v6];
}

- (void)scaleDrawing:(double)drawing withOffset:(CGPoint)offset animated:(BOOL)animated
{
  if (animated)
  {
    y = offset.y;
    x = offset.x;
    [(PKTextAttachmentDrawingView *)self zoomScale];
    v10 = dbl_1C801EA00[v9 < drawing];
    [(PKTextAttachmentDrawingView *)self zoomScale];
    v12 = v11;
    [(UIScrollView *)self->_tileMaskView contentOffset];
    UIRoundToViewScale();
    v14 = v13;
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x2020000000;
    [(PKTextAttachmentDrawingView *)self zoomScale];
    v23[3] = v15;
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x2020000000;
    [(UIScrollView *)self->_tileMaskView contentOffset];
    v22[3] = v16;
    [(PKTextAttachmentDrawingView *)self setZoomingProgramatically:1];
    _textView = [(PKTextAttachmentDrawingView *)self _textView];
    WeakRetained = objc_loadWeakRetained(&self->_textAttachment);
    _characterIndex = [(PKTextAttachmentDrawingView *)self _characterIndex];
    v21[1] = 3221225472;
    v21[0] = MEMORY[0x1E69E9820];
    v21[2] = __64__PKTextAttachmentDrawingView_scaleDrawing_withOffset_animated___block_invoke;
    v21[3] = &unk_1E82DB3B0;
    *&v21[7] = (drawing - v12) * v10;
    *&v21[8] = drawing;
    v21[4] = self;
    v21[5] = v23;
    v21[6] = v22;
    v21[9] = v14;
    *&v21[10] = x;
    *&v21[11] = y;
    [_textView _growView:self textAttachment:WeakRetained atCharacterIndex:_characterIndex step:v21 stop:?];

    _Block_object_dispose(v22, 8);
    _Block_object_dispose(v23, 8);
  }

  else
  {
    [(PKTextAttachmentDrawingView *)self setZoomScale:drawing, offset.x, offset.y];
    [(PKTextAttachmentDrawingView *)self zoomScale];
    [(UIScrollView *)self->_tileMaskView setScrollEnabled:v20 > 1.0];

    [(PKTextAttachmentDrawingView *)self updateFrameForTextContainer];
  }
}

uint64_t __64__PKTextAttachmentDrawingView_scaleDrawing_withOffset_animated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 == 0.0 || (v4 = *(*(a1 + 40) + 8), v5 = *(v4 + 24), v2 < 0.0) && v5 <= *(a1 + 64) || v2 > 0.0 && v5 >= *(a1 + 64))
  {
    v3 = 1;
  }

  else
  {
    *(v4 + 24) = v2 + v5;
    v6 = *(a1 + 56);
    v7 = *(a1 + 40);
    if ((v6 >= 0.0 || (v8 = *(v7 + 8), v9 = *(a1 + 64), *(v8 + 24) >= v9)) && (v6 <= 0.0 || (v8 = *(v7 + 8), v9 = *(a1 + 64), *(v8 + 24) <= v9)))
    {
      v3 = 0;
    }

    else
    {
      *(v8 + 24) = v9;
      v7 = *(a1 + 40);
      v3 = 1;
    }

    [*(a1 + 32) scaleDrawing:*(*(v7 + 8) + 24)];
    [*(*(a1 + 32) + 704) setZoomScale:*(*(*(a1 + 40) + 8) + 24)];
  }

  v10 = *(a1 + 72);
  if (v10 == 0.0 || (v12 = *(*(a1 + 48) + 8), v13 = *(v12 + 24), v10 < 0.0) && v13 <= *(a1 + 80) || v10 > 0.0 && v13 >= *(a1 + 80))
  {
    v11 = 1;
  }

  else
  {
    *(v12 + 24) = v10 + v13;
    v14 = *(a1 + 72);
    v15 = *(a1 + 48);
    if (v14 < 0.0 && (v16 = *(v15 + 8), v17 = *(a1 + 80), *(v16 + 24) <= v17) || v14 > 0.0 && (v16 = *(v15 + 8), v17 = *(a1 + 80), *(v16 + 24) >= v17))
    {
      *(v16 + 24) = v17;
      v15 = *(a1 + 48);
      v11 = 1;
    }

    else
    {
      v11 = 0;
    }

    [*(*(a1 + 32) + 704) setContentOffset:{*(*(v15 + 8) + 24), 0.0}];
  }

  v18 = v3 & v11;
  if (v18 == 1)
  {
    [*(a1 + 32) setZoomingProgramatically:0];
  }

  return v18;
}

- (BOOL)isAtBeginningOfDocument
{
  textAttachment = [(PKTextAttachmentDrawingView *)self textAttachment];

  if (!textAttachment)
  {
    return 1;
  }

  _textView = [(PKTextAttachmentDrawingView *)self _textView];
  textStorage = [_textView textStorage];
  if ([textStorage length])
  {
    textStorage2 = [_textView textStorage];
    v7 = [textStorage2 attribute:*MEMORY[0x1E69DB5F8] atIndex:0 effectiveRange:0];
  }

  else
  {
    v7 = 0;
  }

  textAttachment2 = [(PKTextAttachmentDrawingView *)self textAttachment];
  v8 = v7 == textAttachment2;

  return v8;
}

- (BOOL)isAtEndOfDocument
{
  textAttachment = [(PKTextAttachmentDrawingView *)self textAttachment];

  if (!textAttachment)
  {
    return 1;
  }

  _textView = [(PKTextAttachmentDrawingView *)self _textView];
  textStorage = [_textView textStorage];
  v6 = [textStorage length];

  if (v6 && ([_textView textStorage], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "string"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E696AB08], "whitespaceAndNewlineCharacterSet"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "invertedSet"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v8, "rangeOfCharacterFromSet:options:", v10, 4), v10, v9, v8, v7, v11 != 0x7FFFFFFFFFFFFFFFLL))
  {
    textStorage2 = [_textView textStorage];
    v14 = [textStorage2 attribute:*MEMORY[0x1E69DB5F8] atIndex:v11 effectiveRange:0];

    textAttachment2 = [(PKTextAttachmentDrawingView *)self textAttachment];
    v12 = v14 == textAttachment2;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKTextAttachmentDrawingView;
  [(PKAttachmentView *)&v3 layoutSubviews];
  [(PKTextAttachmentResizeView *)self->_topResizeView layoutInsideSuperview];
  [(PKTextAttachmentResizeView *)self->_bottomResizeView layoutInsideSuperview];
  [(PKTextAttachmentDrawingView *)self layoutTileViews];
}

- (void)layoutTileViews
{
  [(PKTextAttachmentDrawingView *)self bounds];
  if (v5 != 0.0)
  {
    v7 = v3;
    v8 = v4;
    v9 = v5;
    v10 = v6;
    if ([(PKTextAttachmentDrawingView *)self isAtEndOfDocument])
    {
      _textView = [(PKTextAttachmentDrawingView *)self _textView];
      [_textView bounds];
      v10 = v10 + v12;
    }

    [(PKTextAttachmentResizeView *)self->_topResizeView resizeContentInset];
    v14 = v8 + v13;
    [(PKTextAttachmentResizeView *)self->_topResizeView resizeContentInset];
    v16 = v15;
    [(PKTextAttachmentResizeView *)self->_bottomResizeView resizeContentInset];
    [(UIScrollView *)self->_tileMaskView setFrame:v7, v14, v9, v10 - (v16 + v17)];
    [(PKTextAttachmentDrawingView *)self drawingBounds];
    v19 = -(v18 * v9);
    [(PKTextAttachmentDrawingView *)self drawingBounds];
    v21 = floor(v19 / v20);
    tileContainerView = [(PKAttachmentView *)self tileContainerView];
    [tileContainerView setFrame:{0.0, v21, v9, v10}];

    linesLayer = self->_linesLayer;

    [(PKLinedPaperLayer *)linesLayer updateLinesFromAttachmentBounds:v7, v8, v9, v10];
  }
}

- (void)scrollViewWillBeginZooming:(id)zooming withView:(id)view
{
  zoomingCopy = zooming;
  if (![(PKTextAttachmentDrawingView *)self zoomingProgramatically])
  {
    [(PKTextAttachmentDrawingView *)self zoomScale];
    [(PKTextAttachmentDrawingView *)self setZoomStartScale:?];
    pinchGestureRecognizer = [zoomingCopy pinchGestureRecognizer];
    [pinchGestureRecognizer locationInView:0];
    [(PKTextAttachmentDrawingView *)self setZoomStartLocationInWindow:?];

    tileScaleView = self->_tileScaleView;
    [(PKTextAttachmentDrawingView *)self zoomStartLocationInWindow];
    [(UIView *)tileScaleView convertPoint:0 fromView:?];
    [(PKTextAttachmentDrawingView *)self setZoomStartLocationInAttachment:?];
    _textView = [(PKTextAttachmentDrawingView *)self _textView];
    [_textView contentOffset];
    [(PKTextAttachmentDrawingView *)self setTextViewContentOffsetStartLocation:?];

    pinchGestureRecognizer2 = [zoomingCopy pinchGestureRecognizer];
    [pinchGestureRecognizer2 scale];
    [(PKTextAttachmentDrawingView *)self scaleDrawing:?];
  }
}

- (void)scrollViewDidZoom:(id)zoom
{
  zoomCopy = zoom;
  if (![(PKTextAttachmentDrawingView *)self zoomingProgramatically])
  {
    pinchGestureRecognizer = [zoomCopy pinchGestureRecognizer];
    [pinchGestureRecognizer scale];
    v6 = v5;

    [(PKTextAttachmentDrawingView *)self scaleDrawing:v6];
    _characterIndex = [(PKTextAttachmentDrawingView *)self _characterIndex];
    _textView = [(PKTextAttachmentDrawingView *)self _textView];
    [_textView _pk_ensureLayoutForCharacterRange:{_characterIndex, 1}];

    pinchGestureRecognizer2 = [zoomCopy pinchGestureRecognizer];
    [pinchGestureRecognizer2 locationInView:0];
    v11 = v10;

    [(PKTextAttachmentDrawingView *)self zoomStartLocationInWindow];
    v13 = v12 - v11;
    [(PKTextAttachmentDrawingView *)self zoomStartLocationInAttachment];
    v15 = v14;
    [(PKTextAttachmentDrawingView *)self zoomStartScale];
    v17 = v13 + v15 * (v6 - v16);
    [(PKTextAttachmentDrawingView *)self textViewContentOffsetStartLocation];
    v19 = v18;
    [(PKTextAttachmentDrawingView *)self textViewContentOffsetStartLocation];
    v21 = v17 + v20;
    _textView2 = [(PKTextAttachmentDrawingView *)self _textView];
    [_textView2 setContentOffset:{v19, v21}];
  }
}

- (void)scrollViewDidEndZooming:(id)zooming withView:(id)view atScale:(double)scale
{
  zoomingCopy = zooming;
  if (![(PKTextAttachmentDrawingView *)self zoomingProgramatically])
  {
    [(PKTextAttachmentDrawingView *)self scaleDrawing:scale];
    pinchGestureRecognizer = [zoomingCopy pinchGestureRecognizer];
    [pinchGestureRecognizer locationInView:0];

    [(PKTextAttachmentDrawingView *)self zoomStartLocationInWindow];
    [(PKTextAttachmentDrawingView *)self zoomStartLocationInAttachment];
    [(PKTextAttachmentDrawingView *)self zoomStartScale];
    window = [(PKTextAttachmentDrawingView *)self window];
    UIRoundToViewScale();
    v10 = v9;

    [(PKTextAttachmentDrawingView *)self textViewContentOffsetStartLocation];
    v12 = v11;
    [(PKTextAttachmentDrawingView *)self textViewContentOffsetStartLocation];
    v14 = v10 + v13;
    _textView = [(PKTextAttachmentDrawingView *)self _textView];
    [_textView setContentOffset:{v12, v14}];

    scaleCopy = 3.0;
    if (scale <= 3.0)
    {
      scaleCopy = scale;
    }

    if (scale >= 1.0)
    {
      v17 = scaleCopy;
    }

    else
    {
      v17 = 1.0;
    }

    [(PKTextAttachmentDrawingView *)self zoomStartLocationInWindow:1.0];
    [(PKTextAttachmentDrawingView *)self zoomStartLocationInAttachment];
    [(PKTextAttachmentDrawingView *)self zoomStartScale];
    window2 = [(PKTextAttachmentDrawingView *)self window];
    UIRoundToViewScale();
    v20 = v19;

    [(PKTextAttachmentDrawingView *)self textViewContentOffsetStartLocation];
    v22 = v21;
    [(PKTextAttachmentDrawingView *)self textViewContentOffsetStartLocation];
    v24 = v20 + v23;
    _textView2 = [(PKTextAttachmentDrawingView *)self _textView];
    [_textView2 adjustedContentInset];
    v27 = -v26;

    _textView3 = [(PKTextAttachmentDrawingView *)self _textView];
    [_textView3 contentSize];
    v30 = v29;
    _textView4 = [(PKTextAttachmentDrawingView *)self _textView];
    [_textView4 adjustedContentInset];
    v33 = v30 + v32;
    _textView5 = [(PKTextAttachmentDrawingView *)self _textView];
    [_textView5 adjustedContentInset];
    v36 = v33 + v35;
    _textView6 = [(PKTextAttachmentDrawingView *)self _textView];
    [_textView6 frame];
    v39 = v38;

    if (v24 < v27 || v36 <= v39)
    {
      v24 = v27;
    }

    _textView7 = [(PKTextAttachmentDrawingView *)self _textView];
    [_textView7 contentSize];
    v43 = v42;
    _textView8 = [(PKTextAttachmentDrawingView *)self _textView];
    [_textView8 frame];
    v46 = v43 - v45;
    _textView9 = [(PKTextAttachmentDrawingView *)self _textView];
    [_textView9 adjustedContentInset];
    v49 = v46 + v48;

    _textView10 = [(PKTextAttachmentDrawingView *)self _textView];
    [_textView10 contentSize];
    v52 = v51;
    _textView11 = [(PKTextAttachmentDrawingView *)self _textView];
    [_textView11 adjustedContentInset];
    v55 = v52 + v54;
    _textView12 = [(PKTextAttachmentDrawingView *)self _textView];
    [_textView12 adjustedContentInset];
    v58 = v55 + v57;
    _textView13 = [(PKTextAttachmentDrawingView *)self _textView];
    [_textView13 frame];
    v61 = v60;

    if (v24 <= v49 || v58 <= v61)
    {
      v63 = v24;
    }

    else
    {
      v63 = v49;
    }

    [(UIScrollView *)self->_tileMaskView contentOffset];
    UIRoundToViewScale();
    v65 = v64;
    [(UIScrollView *)self->_tileMaskView contentOffset];
    UIRoundToViewScale();
    [(PKTextAttachmentDrawingView *)self scaleDrawing:1 withOffset:v17 animated:v65, v66];
    _textView14 = [(PKTextAttachmentDrawingView *)self _textView];
    [_textView14 setContentOffset:1 animated:{v22, v63}];
  }
}

- (void)handleDoubleTap:(id)tap
{
  tapCopy = tap;
  window = [(PKTextAttachmentDrawingView *)self window];
  firstResponder = [window firstResponder];
  if (firstResponder)
  {
    v6 = firstResponder;
    window2 = [(PKTextAttachmentDrawingView *)self window];
    firstResponder2 = [window2 firstResponder];

    if (firstResponder2 == self)
    {
      goto LABEL_5;
    }

    window = [(PKTextAttachmentDrawingView *)self window];
    firstResponder3 = [window firstResponder];
    [firstResponder3 resignFirstResponder];
  }

LABEL_5:
  _textView = [(PKTextAttachmentDrawingView *)self _textView];
  isFingerDrawingEnabled = [_textView isFingerDrawingEnabled];

  if ((isFingerDrawingEnabled & 1) == 0)
  {
    [(PKTextAttachmentDrawingView *)self zoomScale];
    if (v12 <= 1.0)
    {
      [tapCopy locationInView:self];
      [(PKTextAttachmentDrawingView *)self bounds];
      UIRoundToViewScale();
      v16 = v15;
      [(PKTextAttachmentDrawingView *)self bounds];
      UIRoundToViewScale();
      UIRoundToViewScale();
      v18 = fmax(v17, 0.0);
      [(PKTextAttachmentDrawingView *)self bounds];
      if (v18 >= -(v16 - v19 * 2.0))
      {
        v14 = -(v16 - v19 * 2.0);
      }

      else
      {
        v14 = v18;
      }

      v13 = 2.0;
    }

    else
    {
      v13 = 1.0;
      v14 = 0.0;
    }

    [(PKTextAttachmentDrawingView *)self scaleDrawing:1 withOffset:v13 animated:v14, 0.0];
  }
}

- (CGRect)drawingContentBounds
{
  drawing = [(PKAttachmentView *)self drawing];
  [drawing bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v6;
  v13 = v4;

  v14 = (v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v12 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000;
  if (v14 || (*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v11 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    if ([MEMORY[0x1E69DD250] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[PKTextAttachmentDrawingView semanticContentAttribute](self, "semanticContentAttribute")}])
    {
      v11 = 0.0;
      *&v5 = 768.0;
      v9 = 0.0;
      v7 = 0.0;
    }

    else
    {
      v5 = *MEMORY[0x1E695F058];
      v7 = *(MEMORY[0x1E695F058] + 8);
      v9 = *(MEMORY[0x1E695F058] + 16);
      v11 = *(MEMORY[0x1E695F058] + 24);
    }
  }

  if (v11 >= 58.0)
  {
    v15 = v11;
  }

  else
  {
    v15 = 58.0;
  }

  v16 = *&v5;
  v17 = v7;
  v18 = v9;
  result.size.height = v15;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)drawingBoundsForViewWidth:(double)width
{
  [(PKTextAttachmentDrawingView *)self drawingContentBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  tiledView = [(PKTextAttachmentDrawingView *)self tiledView];
  cropDrawingAttachmentsWhenViewIsSmaller = [tiledView cropDrawingAttachmentsWhenViewIsSmaller];

  if (cropDrawingAttachmentsWhenViewIsSmaller)
  {
    if ([MEMORY[0x1E69DD250] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[PKTextAttachmentDrawingView semanticContentAttribute](self, "semanticContentAttribute")}])
    {
      v22.origin.x = v6;
      v22.origin.y = v8;
      v22.size.width = v10;
      v22.size.height = v12;
      MinX = CGRectGetMinX(v22);
      if (MinX >= 768.0 - width + -16.0)
      {
        MinX = 768.0 - width + -16.0;
      }

      v16 = fmax(MinX, 0.0);
      v17 = 768.0 - v16;
    }

    else
    {
      v16 = 0.0;
      v23.origin.x = 0.0;
      v23.origin.y = v8;
      v23.size.width = v10;
      v23.size.height = v12;
      widthCopy = CGRectGetMaxX(v23) + 16.0;
      if (widthCopy < width)
      {
        widthCopy = width;
      }

      if (widthCopy <= 768.0)
      {
        v17 = widthCopy;
      }

      else
      {
        v17 = 768.0;
      }
    }
  }

  else
  {
    v16 = 0.0;
    v17 = 768.0;
  }

  v19 = v16;
  v20 = v8;
  v21 = v12;
  result.size.height = v21;
  result.size.width = v17;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGAffineTransform)drawingTransformForViewWidth:(SEL)width
{
  selfCopy = self;
  v7 = a4 - self[15].ty;
  if (v7 < 0.0)
  {
    v7 = -v7;
  }

  if (v7 < 1.0)
  {
    p_ty = &self[14].ty;
LABEL_16:
    v18 = p_ty[1];
    *&retstr->a = *p_ty;
    *&retstr->c = v18;
    v19 = p_ty[2];
    goto LABEL_21;
  }

  self = [(CGAffineTransform *)self drawingBoundsForViewWidth:a4];
  v11 = a4 / v10;
  v12 = fabs(a4 / v10);
  v13 = (*&v12 - 1) < 0xFFFFFFFFFFFFFLL;
  v14 = (*&v12 - 0x10000000000000) >> 53 < 0x3FF;
  if (COERCE__INT64(a4 / v10) >= 0)
  {
    v14 = 0;
    v13 = 0;
  }

  v15 = fabs(a4 / v10);
  if (v15 == 0.0)
  {
    v13 = 1;
  }

  v16 = *&v15 <= 0x7FF0000000000000;
  v17 = v15 == INFINITY || v13;
  if (!v16)
  {
    v17 = 1;
  }

  if ((v17 | v14) == 1)
  {
    p_ty = MEMORY[0x1E695EFD0];
    goto LABEL_16;
  }

  v20 = v9;
  self = [MEMORY[0x1E69DD250] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[CGAffineTransform semanticContentAttribute](selfCopy, "semanticContentAttribute")}];
  v21 = &selfCopy[14].ty;
  if (self)
  {
    *v21 = v11;
    selfCopy[15].a = 0.0;
    selfCopy[15].b = 0.0;
    selfCopy[15].c = v11;
    selfCopy[15].d = -(v11 * v20);
    selfCopy[15].tx = 0.0;
  }

  else
  {
    self = CGAffineTransformMakeScale(&v24, v11, v11);
    v22 = *&v24.c;
    *v21 = *&v24.a;
    *&selfCopy[15].b = v22;
    *&selfCopy[15].d = *&v24.tx;
  }

  selfCopy[15].ty = a4;
  v23 = *&selfCopy[15].b;
  *&retstr->a = *v21;
  *&retstr->c = v23;
  v19 = *&selfCopy[15].d;
LABEL_21:
  *&retstr->tx = v19;
  return self;
}

- (double)desiredAttachmentViewWidthForContainerView:(id)view
{
  viewCopy = view;
  v4 = _UISolariumEnabled();
  if (viewCopy && v4)
  {
    [viewCopy bounds];
    v6 = v5;
    [viewCopy safeAreaInsets];
    v9 = v6 - (v7 + v8);
  }

  else if (viewCopy)
  {
    [viewCopy bounds];
    v9 = v10;
  }

  else
  {
    v9 = 768.0;
  }

  return v9;
}

- (CGAffineTransform)drawingTransform
{
  _textView = [(PKTextAttachmentDrawingView *)self _textView];
  [(PKTextAttachmentDrawingView *)self desiredAttachmentViewWidthForContainerView:_textView];
  [(PKTextAttachmentDrawingView *)self drawingTransformForViewWidth:?];

  return result;
}

- (CGRect)resizeViewDrawingBounds:(id)bounds
{
  drawing = [(PKAttachmentView *)self drawing];
  [drawing bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v17.origin.x = v6;
  v17.origin.y = v8;
  v17.size.width = v10;
  v17.size.height = v12;
  if (CGRectIsNull(v17))
  {
    v13 = *MEMORY[0x1E695F050];
    v14 = *(MEMORY[0x1E695F050] + 8);
    v15 = *(MEMORY[0x1E695F050] + 16);
    v16 = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    [(PKTextAttachmentDrawingView *)self drawingCanvasBounds];
  }

  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)resizeViewRemoveAttachment:(id)attachment
{
  _textView = [(PKTextAttachmentDrawingView *)self _textView];
  textAttachment = [(PKTextAttachmentDrawingView *)self textAttachment];
  [_textView _removeDrawingAttachment:textAttachment withView:self forDeletion:0];
}

- (void)resizeView:(id)view finishedWithOriginalDrawingBounds:(CGRect)bounds originalViewBounds:(CGRect)viewBounds
{
  height = viewBounds.size.height;
  width = viewBounds.size.width;
  y = viewBounds.origin.y;
  x = viewBounds.origin.x;
  v9 = bounds.size.height;
  v10 = bounds.size.width;
  v11 = bounds.origin.y;
  v12 = bounds.origin.x;
  undoManager = [(PKTextAttachmentDrawingView *)self undoManager];
  _textView = [(PKTextAttachmentDrawingView *)self _textView];
  v15 = [undoManager prepareWithInvocationTarget:_textView];
  drawing = [(PKAttachmentView *)self drawing];
  uuid = [drawing uuid];
  [v15 _undoDrawingBounds:uuid viewBounds:v12 ofAttachmentUUID:{v11, v10, v9, x, y, width, height}];
}

- (void)resizeViewDidUpdate:(id)update
{
  [(PKTextAttachmentDrawingView *)self _adjustResizeIndicatorVisibility];

  [(PKAttachmentView *)self drawingDidChange];
}

- (id)dataForTextAttachment:(id)attachment
{
  drawing = [(PKAttachmentView *)self drawing];
  serialize = [drawing serialize];

  return serialize;
}

- (void)drawingDataDidChange:(id)change
{
  changeCopy = change;
  v5 = os_log_create("com.apple.pencilkit", "Sketching");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEBUG, "drawingDataDidChange called", buf, 2u);
  }

  _textView = [(PKTextAttachmentDrawingView *)self _textView];
  _pkTiledViewIfEnabled = [_textView _pkTiledViewIfEnabled];
  [_pkTiledViewIfEnabled setAggd_didMergeWithCollaborator:1];

  drawing = [(PKAttachmentView *)self drawing];

  if (changeCopy && drawing)
  {
    drawing2 = [(PKAttachmentView *)self drawing];
    v10 = [drawing2 copy];

    v11 = [v10 mergeWithDrawing:changeCopy];
    v12 = +[PKStatisticsManager sharedStatisticsManager];
    [(PKStatisticsManager *)v12 recordCollaboration:v11];

    if (v11 == 2)
    {
      v16 = os_log_create("com.apple.pencilkit", "Sketching");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *v17 = 0;
        _os_log_debug_impl(&dword_1C7CCA000, v16, OS_LOG_TYPE_DEBUG, "drawing updated when merging", v17, 2u);
      }

      [(PKAttachmentView *)self setDrawing:v10];
      [(PKTextAttachmentDrawingView *)self _updateViewHeightIfNecessary];
      [(PKTextAttachmentDrawingView *)self _triggerRedraw];
      goto LABEL_15;
    }

    if (v11 == 1)
    {
      v13 = os_log_create("com.apple.pencilkit", "Sketching");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *v18 = 0;
        v14 = "No change when merging drawings";
        v15 = v18;
        goto LABEL_18;
      }
    }

    else
    {
      if (v11)
      {
LABEL_15:

        goto LABEL_16;
      }

      v13 = os_log_create("com.apple.pencilkit", "Sketching");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v19 = 0;
        v14 = "Fail when merging drawings";
        v15 = &v19;
LABEL_18:
        _os_log_debug_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_DEBUG, v14, v15, 2u);
      }
    }

    goto LABEL_15;
  }

LABEL_16:
}

- (void)resetZoom
{
  [(PKTextAttachmentDrawingView *)self zoomScale];
  if (v3 != 1.0)
  {

    [(PKTextAttachmentDrawingView *)self scaleDrawing:1 withOffset:1.0 animated:0.0, 0.0];
  }
}

- (id)linedPaperLayerLinedPaper:(id)paper
{
  _textView = [(PKTextAttachmentDrawingView *)self _textView];
  linedPaper = [_textView linedPaper];

  return linedPaper;
}

- (NSTextAttachment)textAttachment
{
  WeakRetained = objc_loadWeakRetained(&self->_textAttachment);

  return WeakRetained;
}

- (CGPoint)zoomStartLocationInWindow
{
  x = self->_zoomStartLocationInWindow.x;
  y = self->_zoomStartLocationInWindow.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)zoomStartLocationInAttachment
{
  x = self->_zoomStartLocationInAttachment.x;
  y = self->_zoomStartLocationInAttachment.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)textViewContentOffsetStartLocation
{
  x = self->_textViewContentOffsetStartLocation.x;
  y = self->_textViewContentOffsetStartLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)liveResizeAttachmentBounds
{
  x = self->_liveResizeAttachmentBounds.origin.x;
  y = self->_liveResizeAttachmentBounds.origin.y;
  width = self->_liveResizeAttachmentBounds.size.width;
  height = self->_liveResizeAttachmentBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end