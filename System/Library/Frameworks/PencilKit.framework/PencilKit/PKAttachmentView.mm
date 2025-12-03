@interface PKAttachmentView
- (BOOL)_checkStrokesForExtendedDynamicRange:(id)range;
- (BOOL)_isDrawing;
- (BOOL)canConvertTextToHandwriting:(id)handwriting;
- (BOOL)hitByTouchLocation:(CGPoint)location bounds:(CGRect)bounds;
- (BOOL)wantsAutoRefine;
- (CGAffineTransform)drawingTransform;
- (CGAffineTransform)preResizeDrawingTransform;
- (CGAffineTransform)tileDrawingTransform;
- (CGRect)boundingBoxForHashtagOrMentionWithUUID:(id)d;
- (CGRect)cachedBounds;
- (PKAttachmentView)initWithFrame:(CGRect)frame;
- (PKAttachmentView)initWithFrame:(CGRect)frame drawing:(id)drawing;
- (PKAttachmentViewHashtagsAndMentionsDelegate)hashtagAndMentionsDelegate;
- (PKRecognitionController)recognitionController;
- (PKRecognitionSessionManager)recognitionManager;
- (double)dataDetectorInteractionHelperInputScale:(id)scale;
- (double)heightFromDrawing:(id)drawing delta:(double)delta;
- (id)_accessibilityUserTestingChildren;
- (id)_firstStrokesInSelectedStrokes:(id)strokes;
- (id)_lastStrokesInSelectedStrokes:(id)strokes;
- (id)autoRefineTaskCoordinatorAutoRefineController:(id)controller;
- (id)autoRefineTaskCoordinatorCurrentStroke:(id)stroke;
- (id)dataDetectorInteractionHelperSelectionInteraction:(id)interaction;
- (id)inlineViewAtPoint:(CGPoint)point;
- (int64_t)contentTypeForIntersectedStrokes:(id)strokes;
- (void)_cancelOffscreenTiles;
- (void)_handleAutoRefineSettingsDidChange;
- (void)_handleProofreadingSettingsDidChange;
- (void)_hideHUD;
- (void)_initializeRecognitionForDrawingIfNecessary:(id)necessary withVisibleOnscreenStrokes:(id)strokes createIfDrawingIfEmpty:(BOOL)empty;
- (void)_logHDRStrokesForDrawing:(id)drawing;
- (void)_progressChanged;
- (void)_purgeAllTiles;
- (void)_showHUDWithProgress:(id)progress;
- (void)_toolPickerDidShowHide:(id)hide;
- (void)_unregisterProgressObserver;
- (void)containingScrollViewDidScroll;
- (void)convertTextToHandwriting:(id)handwriting bounds:(CGRect)bounds suggestedHeight:(double)height suggestedDrawing:(id)drawing inkColor:(id)color completion:(id)completion;
- (void)dataDetectorInteractionHelper:(id)helper registerUndoCommand:(id)command;
- (void)dataDetectorInteractionHelperNeedsLayout:(id)layout;
- (void)dealloc;
- (void)didBeginDrawing;
- (void)didBeginModifyDrawing;
- (void)didEndModifyDrawing;
- (void)didFinishCalculatingVisibleOnscreenStrokes:(id)strokes drawing:(id)drawing;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)drawingDidChangeVisibleStrokes:(BOOL)strokes;
- (void)fetchIntersectedStrokesAtPoint:(CGPoint)point selectionType:(int64_t)type inputType:(int64_t)inputType visibleOnscreenStrokes:(id)strokes completion:(id)completion;
- (void)fetchIntersectedStrokesBetweenTopPoint:(CGPoint)point bottomPoint:(CGPoint)bottomPoint liveScrollOffset:(CGPoint)offset completion:(id)completion;
- (void)fetchStrokesAmbiguouslyBelowAndAboveInsertSpaceHandleWithStrokes:(id)strokes completion:(id)completion;
- (void)fetchTranscriptionForStrokes:(id)strokes completion:(id)completion;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pixelAlignForContentScale:(double)scale enclosingScrollView:(id)view;
- (void)recognitionController:(id)controller foundDataDetectorItems:(id)items;
- (void)recognitionController:(id)controller foundHashtagItems:(id)items;
- (void)recognitionController:(id)controller foundMentionItems:(id)items;
- (void)recognitionController:(id)controller foundProofreadingItems:(id)items;
- (void)replaceStrokes:(id)strokes withString:(id)string inBounds:(CGRect)bounds completion:(id)completion;
- (void)setAdditionalStrokes:(id)strokes;
- (void)setContentHidden:(BOOL)hidden;
- (void)setDrawing:(id)drawing;
- (void)setFrame:(CGRect)frame;
- (void)setHashtagAndMentionsDelegate:(id)delegate;
- (void)setPreResizeDrawingTransform:(CGAffineTransform *)transform;
- (void)setReflowingStrokeIds:(id)ids;
- (void)setSixChannelBlending:(BOOL)blending;
- (void)setTileDrawingTransform:(CGAffineTransform *)transform;
- (void)setTileTransform:(CGAffineTransform *)transform;
- (void)setTransform:(CGAffineTransform *)transform;
- (void)setWantsDataDetection:(BOOL)detection;
- (void)setWantsHashtagDetection:(BOOL)detection;
- (void)setWantsMentionDetection:(BOOL)detection;
- (void)toolPickerDidHide;
- (void)toolPickerDidShow;
- (void)updateAllPossibleParticipantNameTokens;
- (void)updateDrawingHeight:(double)height;
- (void)updateDrawingHeight:(double)height notifyDrawingDidChange:(BOOL)change;
- (void)updateTileContainerViewFrame;
- (void)visibleOnscreenBoundsDidChange:(CGRect)change;
- (void)willMoveToWindow:(id)window;
@end

@implementation PKAttachmentView

- (PKAttachmentView)initWithFrame:(CGRect)frame drawing:(id)drawing
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  drawingCopy = drawing;
  v36.receiver = self;
  v36.super_class = PKAttachmentView;
  height = [(PKAttachmentView *)&v36 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    height->_renderingEnabled = 1;
    uUID = [MEMORY[0x1E696AFB0] UUID];
    listenerID = v12->_listenerID;
    v12->_listenerID = uUID;

    v15 = objc_alloc(MEMORY[0x1E69DD250]);
    [(PKAttachmentView *)v12 bounds];
    v16 = [v15 initWithFrame:?];
    tileContainerView = v12->_tileContainerView;
    v12->_tileContainerView = v16;

    [(UIView *)v12->_tileContainerView setUserInteractionEnabled:0];
    [(PKAttachmentView *)v12 addSubview:v12->_tileContainerView];
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    tiles = v12->_tiles;
    v12->_tiles = v18;

    v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
    offscreenTiles = v12->_offscreenTiles;
    v12->_offscreenTiles = v20;

    v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
    purgedTiles = v12->_purgedTiles;
    v12->_purgedTiles = v22;

    objc_storeStrong(&v12->_drawing, drawing);
    if (+[PKTiledView showDebugOutlines])
    {
      layer = [(PKAttachmentView *)v12 layer];
      [layer setBorderWidth:1.0];

      blueColor = [MEMORY[0x1E69DC888] blueColor];
      cGColor = [blueColor CGColor];
      layer2 = [(PKAttachmentView *)v12 layer];
      [layer2 setBorderColor:cGColor];
    }

    v28 = objc_alloc_init(PKStrokeSpatialCache);
    strokeSpatialCache = v12->_strokeSpatialCache;
    v12->_strokeSpatialCache = v28;

    v30 = v12->_strokeSpatialCache;
    if (v30)
    {
      objc_storeWeak(&v30->_delegate, v12);
    }

    [(PKAttachmentView *)v12 _initializeRecognitionForDrawingIfNecessary:v12->_drawing];
    strokes = [(PKDrawing *)v12->_drawing strokes];
    v32 = [(PKAttachmentView *)v12 _checkStrokesForExtendedDynamicRange:strokes];

    if (v32)
    {
      v33 = os_log_create("com.apple.pencilkit", "EDR");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *v35 = 0;
        _os_log_impl(&dword_1C7CCA000, v33, OS_LOG_TYPE_DEFAULT, "Detected EDR strokes when creating attachment.", v35, 2u);
      }
    }

    [(PKAttachmentView *)v12 _logHDRStrokesForDrawing:v12->_drawing];
  }

  return v12;
}

- (PKAttachmentView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = objc_alloc_init(PKDrawing);
  height = [(PKAttachmentView *)self initWithFrame:v8 drawing:x, y, width, height];

  return height;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  recognitionManager = [(PKAttachmentView *)self recognitionManager];
  [(PKRecognitionSessionManager *)recognitionManager removeListener:?];

  v5.receiver = self;
  v5.super_class = PKAttachmentView;
  [(PKAttachmentView *)&v5 dealloc];
}

- (void)didMoveToSuperview
{
  v15 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = PKAttachmentView;
  [(PKAttachmentView *)&v12 didMoveToSuperview];
  superview = [(PKAttachmentView *)self superview];

  if (superview)
  {
    if ([(PKAttachmentView *)self hasSeenAnyExtendedDynamicRangeStrokes])
    {
      v4 = os_log_create("com.apple.pencilkit", "EDR");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        tiledView = [(PKAttachmentView *)self tiledView];
        *buf = 134217984;
        v14 = tiledView;
        _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "EDR strokes when moving to superview for tiled view: %p", buf, 0xCu);
      }

      tiledView2 = [(PKAttachmentView *)self tiledView];
      [tiledView2 _setHasSeenAnyExtendedDynamicRangeInks];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__toolPickerDidShowHide_ name:@"PKToolPickerDidShowNotification" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel__toolPickerDidShowHide_ name:@"PKToolPickerDidHideNotification" object:0];

    attachmentContainerView = [(PKAttachmentView *)self attachmentContainerView];
    if (_os_feature_enabled_impl())
    {
      traitOverrides = [attachmentContainerView traitOverrides];
      [traitOverrides setNSIntegerValue:1 forTrait:objc_opt_class()];
    }
  }

  else
  {
    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 removeObserver:self name:@"PKToolPickerDidShowNotification" object:0];

    attachmentContainerView = [MEMORY[0x1E696AD88] defaultCenter];
    [attachmentContainerView removeObserver:self name:@"PKToolPickerDidHideNotification" object:0];
  }
}

- (void)setWantsDataDetection:(BOOL)detection
{
  detectionCopy = detection;
  self->_wantsDataDetection = detection;
  dataDetectorHelper = [(PKAttachmentView *)self dataDetectorHelper];
  [(PKDataDetectorInteractionHelper *)dataDetectorHelper setWantsDataDetection:detectionCopy];
}

- (void)setWantsHashtagDetection:(BOOL)detection
{
  detectionCopy = detection;
  self->_wantsHashtagDetection = detection;
  dataDetectorHelper = [(PKAttachmentView *)self dataDetectorHelper];
  [(PKDataDetectorInteractionHelper *)dataDetectorHelper setWantsHashtagDetection:detectionCopy];
}

- (void)setWantsMentionDetection:(BOOL)detection
{
  detectionCopy = detection;
  self->_wantsMentionDetection = detection;
  dataDetectorHelper = [(PKAttachmentView *)self dataDetectorHelper];
  [(PKDataDetectorInteractionHelper *)dataDetectorHelper setWantsMentionDetection:detectionCopy];
}

- (void)setTileDrawingTransform:(CGAffineTransform *)transform
{
  self->_didSetTileDrawingTransform = 1;
  v3 = *&transform->a;
  v4 = *&transform->tx;
  *&self->_tileDrawingTransform.c = *&transform->c;
  *&self->_tileDrawingTransform.tx = v4;
  *&self->_tileDrawingTransform.a = v3;
}

- (CGAffineTransform)tileDrawingTransform
{
  if ((LOBYTE(self[8].tx) & 1) == 0)
  {
    return [(CGAffineTransform *)self drawingTransform];
  }

  v3 = *&self[13].a;
  *&retstr->a = *&self[12].tx;
  *&retstr->c = v3;
  *&retstr->tx = *&self[13].c;
  return self;
}

- (void)setTileTransform:(CGAffineTransform *)transform
{
  v27 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  tileContainerView = [(PKAttachmentView *)self tileContainerView];
  layer = [tileContainerView layer];
  sublayers = [layer sublayers];

  v8 = [sublayers countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    v17 = *(MEMORY[0x1E695EFD0] + 16);
    v18 = *MEMORY[0x1E695EFD0];
    v16 = *(MEMORY[0x1E695EFD0] + 32);
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(sublayers);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        *&v21.a = v18;
        *&v21.c = v17;
        *&v21.tx = v16;
        [v12 setAffineTransform:{&v21, v16, v17, v18}];
        [v12 frame];
        MidX = CGRectGetMidX(v28);
        [v12 frame];
        MidY = CGRectGetMidY(v29);
        CGAffineTransformMakeTranslation(&v21, MidX, MidY);
        v15 = *&transform->c;
        v19[0] = *&transform->a;
        v19[1] = v15;
        v19[2] = *&transform->tx;
        DKDTransformInTransformSpace(v19, &v21, &v20);
        v21 = v20;
        [v12 setAffineTransform:&v21];
        ++v11;
      }

      while (v9 != v11);
      v9 = [sublayers countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  [MEMORY[0x1E6979518] commit];
}

- (void)setAdditionalStrokes:(id)strokes
{
  strokesCopy = strokes;
  v4 = [strokesCopy count];
  if (v4)
  {
    v4 = strokesCopy;
  }

  additionalStrokes = self->_additionalStrokes;
  self->_additionalStrokes = v4;

  dataDetectorHelper = [(PKAttachmentView *)self dataDetectorHelper];
  [(PKDataDetectorInteractionHelper *)dataDetectorHelper setAdditionalStrokes:strokesCopy];
}

- (void)setContentHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  self->_contentHidden = hidden;
  tileContainerView = [(PKAttachmentView *)self tileContainerView];
  [tileContainerView setHidden:hiddenCopy];
}

- (void)setSixChannelBlending:(BOOL)blending
{
  if (self->_sixChannelBlending != blending)
  {
    blendingCopy = blending;
    self->_sixChannelBlending = blending;
    tileContainerView = [(PKAttachmentView *)self tileContainerView];
    layer = [tileContainerView layer];
    [layer setAllowsGroupBlending:!blendingCopy];

    dataDetectorHelper = [(PKAttachmentView *)self dataDetectorHelper];
    v9 = dataDetectorHelper;
    if (dataDetectorHelper)
    {
      v10 = *(dataDetectorHelper + 144);
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    layer2 = [v11 layer];
    [layer2 setAllowsGroupBlending:!blendingCopy];

    [(PKAttachmentView *)self _purgeAllTiles];
  }
}

- (void)_purgeAllTiles
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  tiles = [(PKAttachmentView *)self tiles];
  allValues = [tiles allValues];

  v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        [(PKRendererTile *)*(*(&v10 + 1) + 8 * v8++) purgeTileLayers];
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  tiles2 = [(PKAttachmentView *)self tiles];
  [tiles2 removeAllObjects];

  [(NSMutableDictionary *)self->_purgedTiles removeAllObjects];
}

- (void)_cancelOffscreenTiles
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  offscreenTiles = [(PKAttachmentView *)self offscreenTiles];
  objectEnumerator = [offscreenTiles objectEnumerator];

  v5 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (v9)
        {
          atomic_fetch_add((v9 + 16), 1uLL);
        }

        [(PKRendererTile *)v9 purgeTileLayers];
        ++v8;
      }

      while (v6 != v8);
      v6 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  offscreenTiles2 = [(PKAttachmentView *)self offscreenTiles];
  [offscreenTiles2 removeAllObjects];
}

- (BOOL)hitByTouchLocation:(CGPoint)location bounds:(CGRect)bounds
{
  y = location.y;
  x = location.x;
  v7.x = x;
  v7.y = y;
  return CGRectContainsPoint(bounds, v7);
}

- (void)_toolPickerDidShowHide:(id)hide
{
  hideCopy = hide;
  userInfo = [hideCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"PKToolPickerNotificationWindowSceneUserInfoKey"];
  window = [(PKAttachmentView *)self window];
  windowScene = [window windowScene];

  v8 = hideCopy;
  if (v5 == windowScene)
  {
    object = [hideCopy object];
    if ([object isVisible])
    {
      [(PKAttachmentView *)self toolPickerDidShow];
    }

    else
    {
      [(PKAttachmentView *)self toolPickerDidHide];
    }

    v8 = hideCopy;
  }
}

- (void)toolPickerDidShow
{
  dataDetectorHelper = [(PKAttachmentView *)self dataDetectorHelper];
  if (dataDetectorHelper)
  {
    dataDetectorHelper[17] = 1;
  }

  dataDetectorHelper2 = [(PKAttachmentView *)self dataDetectorHelper];
  if (dataDetectorHelper2)
  {
    dataDetectorHelper2[18] = 0;
  }

  dataDetectorHelper3 = [(PKAttachmentView *)self dataDetectorHelper];
  [(PKDataDetectorInteractionHelper *)dataDetectorHelper3 updateDetectionViewVisibility];
}

- (void)toolPickerDidHide
{
  dataDetectorHelper = [(PKAttachmentView *)self dataDetectorHelper];
  if (dataDetectorHelper)
  {
    dataDetectorHelper[17] = 0;
  }

  dataDetectorHelper2 = [(PKAttachmentView *)self dataDetectorHelper];
  [(PKDataDetectorInteractionHelper *)dataDetectorHelper2 updateDetectionViewVisibility];
}

- (void)drawingDidChangeVisibleStrokes:(BOOL)strokes
{
  if (strokes)
  {
    [(NSMutableDictionary *)self->_purgedTiles removeAllObjects];
    strokeSpatialCache = self->_strokeSpatialCache;
    drawing = [(PKAttachmentView *)self drawing];
    v6 = 1;
    [(PKStrokeSpatialCache *)strokeSpatialCache _invalidateCacheForBounds:drawing inDrawing:1 force:self->_cachedBounds.origin.x, self->_cachedBounds.origin.y, self->_cachedBounds.size.width, self->_cachedBounds.size.height];

    dataDetectorHelper = [(PKAttachmentView *)self dataDetectorHelper];
    v8 = dataDetectorHelper;
    if (dataDetectorHelper)
    {
      v6 = *(dataDetectorHelper + 17) ^ 1;
    }

    dataDetectorHelper2 = [(PKAttachmentView *)self dataDetectorHelper];
    if (dataDetectorHelper2)
    {
      dataDetectorHelper2[18] = v6 & 1;
    }

    dataDetectorHelper3 = [(PKAttachmentView *)self dataDetectorHelper];
    [(PKDataDetectorInteractionHelper *)dataDetectorHelper3 setDetectionViewsHidden:?];

    dataDetectorHelper4 = [(PKAttachmentView *)self dataDetectorHelper];
    if (dataDetectorHelper4)
    {
      dataDetectorHelper4[11] = 0;
    }
  }

  else
  {
    dataDetectorHelper5 = [(PKAttachmentView *)self dataDetectorHelper];
    [(PKDataDetectorInteractionHelper *)dataDetectorHelper5 updateHashtagsAndMentionsActivationState];
    dataDetectorHelper4 = dataDetectorHelper5;
  }
}

- (void)visibleOnscreenBoundsDidChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  self->_cachedBounds = change;
  strokeSpatialCache = self->_strokeSpatialCache;
  drawing = [(PKAttachmentView *)self drawing];
  if (strokeSpatialCache)
  {
    v9 = drawing;
    [(PKStrokeSpatialCache *)strokeSpatialCache _invalidateCacheForBounds:drawing inDrawing:0 force:x, y, width, height];
    drawing = v9;
  }
}

- (void)setDrawing:(id)drawing
{
  drawingCopy = drawing;
  if (self->_drawing != drawingCopy)
  {
    v6 = drawingCopy;
    objc_storeStrong(&self->_drawing, drawing);
    [(PKAttachmentView *)self _initializeRecognitionForDrawingIfNecessary:v6];
    [(PKAttachmentView *)self drawingDidChange];
    drawingCopy = v6;
  }
}

- (CGAffineTransform)drawingTransform
{
  [(PKAttachmentView *)self bounds];

  return CGAffineTransformMakeScale(retstr, v4 / 768.0, v4 / 768.0);
}

- (BOOL)_checkStrokesForExtendedDynamicRange:(id)range
{
  v19 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  if ([(PKAttachmentView *)self hasSeenAnyExtendedDynamicRangeStrokes])
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = rangeCopy;
    v5 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v5; i = (i + 1))
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v6);
          }

          v9 = [*(*(&v14 + 1) + 8 * i) ink];
          [v9 hdrHeadroom];
          v11 = v10;

          if (v11 > 1.0)
          {
            v5 = os_log_create("com.apple.pencilkit", "EDR");
            if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
            {
              *v13 = 0;
              _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "Detected EDR strokes in attachment.", v13, 2u);
            }

            LOBYTE(v5) = 1;
            [(PKAttachmentView *)self setHasSeenAnyExtendedDynamicRangeStrokes:1];
            goto LABEL_15;
          }
        }

        v5 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  return v5;
}

- (void)didFinishCalculatingVisibleOnscreenStrokes:(id)strokes drawing:(id)drawing
{
  strokesCopy = strokes;
  drawingCopy = drawing;
  drawing = [(PKAttachmentView *)self drawing];
  v9 = [drawingCopy isEqual:drawing];

  if ((v9 & 1) == 0)
  {
    v10 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_DEFAULT, "PKStrokeSpatialCache drawing did not match current drawing", buf, 2u);
    }
  }

  strokes = [drawingCopy strokes];
  v12 = [(PKAttachmentView *)self _checkStrokesForExtendedDynamicRange:strokes];

  if (v12)
  {
    v13 = os_log_create("com.apple.pencilkit", "EDR");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_DEFAULT, "Attachment notifying tiled view about EDR strokes.", v15, 2u);
    }

    tiledView = [(PKAttachmentView *)self tiledView];
    [tiledView _setHasSeenAnyExtendedDynamicRangeInks];
  }

  [(PKAttachmentView *)self _initializeRecognitionForDrawingIfNecessary:drawingCopy withVisibleOnscreenStrokes:strokesCopy];
}

- (void)containingScrollViewDidScroll
{
  dataDetectorHelper = [(PKAttachmentView *)self dataDetectorHelper];
  if (dataDetectorHelper)
  {
    dataDetectorHelper[18] = 0;
  }

  dataDetectorHelper2 = [(PKAttachmentView *)self dataDetectorHelper];
  if (dataDetectorHelper2)
  {
    v5 = dataDetectorHelper2[13];

    if (v5 != 1)
    {
      return;
    }

    dataDetectorHelper3 = [(PKAttachmentView *)self dataDetectorHelper];
    [dataDetectorHelper3 revealDetectionViews];
  }

  else
  {
    dataDetectorHelper3 = 0;
  }
}

- (void)pixelAlignForContentScale:(double)scale enclosingScrollView:(id)view
{
  viewCopy = view;
  superview = [viewCopy superview];
  [(PKAttachmentView *)self bounds];
  [superview convertRect:self fromView:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = DKDRoundedRectForScale(v9, v11, v13, v15, scale);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  superview2 = [viewCopy superview];

  [superview2 convertRect:self toView:{v16, v18, v20, v22}];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  tileContainerView = [(PKAttachmentView *)self tileContainerView];
  [tileContainerView setFrame:{v25, v27, v29, v31}];

  dataDetectorHelper = [(PKAttachmentView *)self dataDetectorHelper];
  v36 = dataDetectorHelper;
  if (dataDetectorHelper)
  {
    v34 = *(dataDetectorHelper + 144);
  }

  else
  {
    v34 = 0;
  }

  v35 = v34;
  [v35 setFrame:{v25, v27, v29, v31}];
}

- (double)heightFromDrawing:(id)drawing delta:(double)delta
{
  [drawing bounds];
  v6 = CGRectGetMaxY(v10) + delta;
  [(PKAttachmentView *)self drawingTransform];
  return v6 * sqrt(v9 * v9 + v8 * v8);
}

- (void)updateDrawingHeight:(double)height
{
  drawing = [(PKAttachmentView *)self drawing];
  [drawing set_canvasBounds:{0.0, 0.0, 768.0, height}];
}

- (void)updateDrawingHeight:(double)height notifyDrawingDidChange:(BOOL)change
{
  changeCopy = change;
  [(PKAttachmentView *)self updateDrawingHeight:height];
  if (changeCopy)
  {

    [(PKAttachmentView *)self drawingDidChange];
  }
}

- (void)updateTileContainerViewFrame
{
  [(PKAttachmentView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  tileContainerView = [(PKAttachmentView *)self tileContainerView];
  [tileContainerView setFrame:{v4, v6, v8, v10}];

  [(PKAttachmentView *)self bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  dataDetectorHelper = [(PKAttachmentView *)self dataDetectorHelper];
  v23 = dataDetectorHelper;
  if (dataDetectorHelper)
  {
    v21 = *(dataDetectorHelper + 144);
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;
  [v22 setFrame:{v13, v15, v17, v19}];
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = PKAttachmentView;
  [(PKAttachmentView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(PKAttachmentView *)self updateTileContainerViewFrame];
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = PKAttachmentView;
  [(PKAttachmentView *)&v6 layoutSubviews];
  tileMaskView = [(PKAttachmentView *)self tileMaskView];
  [tileMaskView setClipsToBounds:1];

  [(PKAttachmentView *)self updateTileContainerViewFrame];
  dataDetectorHelper = [(PKAttachmentView *)self dataDetectorHelper];
  [(PKAttachmentView *)self drawingTransform];
  [(PKDataDetectorInteractionHelper *)dataDetectorHelper layoutInlineViewsDrawingTransform:v5];
}

- (void)didBeginDrawing
{
  dataDetectorHelper = [(PKAttachmentView *)self dataDetectorHelper];
  [(PKDataDetectorInteractionHelper *)dataDetectorHelper setDetectionViewsHidden:?];
}

- (void)setTransform:(CGAffineTransform *)transform
{
  v5.receiver = self;
  v5.super_class = PKAttachmentView;
  v3 = *&transform->c;
  v4[0] = *&transform->a;
  v4[1] = v3;
  v4[2] = *&transform->tx;
  [(PKAttachmentView *)&v5 setTransform:v4];
}

- (void)setReflowingStrokeIds:(id)ids
{
  idsCopy = ids;
  dataDetectorHelper = [(PKAttachmentView *)self dataDetectorHelper];
  [(PKDataDetectorInteractionHelper *)dataDetectorHelper setReflowingStrokeIds:idsCopy];
}

- (void)didBeginModifyDrawing
{
  dataDetectorHelper = [(PKAttachmentView *)self dataDetectorHelper];
  if (dataDetectorHelper)
  {
    dataDetectorHelper[16] = 1;
  }

  dataDetectorHelper2 = [(PKAttachmentView *)self dataDetectorHelper];
  [(PKDataDetectorInteractionHelper *)dataDetectorHelper2 updateDetectionViewVisibility];
}

- (void)didEndModifyDrawing
{
  dataDetectorHelper = [(PKAttachmentView *)self dataDetectorHelper];
  if (dataDetectorHelper)
  {
    dataDetectorHelper[16] = 0;
  }
}

- (PKRecognitionSessionManager)recognitionManager
{
  recognitionController = self->_recognitionController;
  if (recognitionController)
  {
    return recognitionController->_sessionManager;
  }

  else
  {
    return 0;
  }
}

- (PKRecognitionController)recognitionController
{
  recognitionController = self->_recognitionController;
  if (!recognitionController)
  {
    drawing = [(PKAttachmentView *)self drawing];
    [(PKAttachmentView *)self _initializeRecognitionForDrawingIfNecessary:drawing withVisibleOnscreenStrokes:0 createIfDrawingIfEmpty:1];

    recognitionController = self->_recognitionController;
  }

  return recognitionController;
}

- (void)_initializeRecognitionForDrawingIfNecessary:(id)necessary withVisibleOnscreenStrokes:(id)strokes createIfDrawingIfEmpty:(BOOL)empty
{
  emptyCopy = empty;
  necessaryCopy = necessary;
  strokesCopy = strokes;
  if (self->_recognitionController || [necessaryCopy _isEmpty] && !emptyCopy)
  {
    v10 = [strokesCopy count];
    recognitionController = self->_recognitionController;
    if (v10)
    {
      [(PKRecognitionController *)recognitionController setDrawing:necessaryCopy withVisibleOnscreenStrokes:strokesCopy];
    }

    else
    {
      [(PKRecognitionController *)recognitionController setDrawing:necessaryCopy];
    }
  }

  else
  {
    v12 = [[PKRecognitionController alloc] initWithDrawing:necessaryCopy visibleOnscreenStrokes:strokesCopy];
    v13 = self->_recognitionController;
    self->_recognitionController = v12;

    v14 = self->_recognitionController;
    if (v14)
    {
      v14 = v14->_sessionManager;
    }

    v15 = v14;
    [(PKRecognitionSessionManager *)v15 addListener:?];

    v16 = self->_recognitionController;
    if (v16)
    {
      objc_storeWeak(&v16->_internalDelegate, self);
    }

    v17 = [PKDataDetectorInteractionHelper alloc];
    tileContainerView = [(PKAttachmentView *)self tileContainerView];
    v19 = [(PKDataDetectorInteractionHelper *)&v17->super.isa initWithView:tileContainerView parentView:self->_recognitionController recognitionController:?];
    dataDetectorHelper = self->_dataDetectorHelper;
    self->_dataDetectorHelper = v19;

    window = [(PKAttachmentView *)self window];
    v22 = [PKToolPicker isActiveToolPickerVisibleForWindow:window];
    v23 = self->_dataDetectorHelper;
    if (v23)
    {
      v23->_toolPickerVisible = v22;
    }

    v24 = self->_dataDetectorHelper;
    if (v24)
    {
      objc_storeWeak(&v24->_delegate, self);
      v25 = self->_dataDetectorHelper;
    }

    else
    {
      v25 = 0;
    }

    [(PKDataDetectorInteractionHelper *)&v25->super.isa setAttachmentView:?];
    WeakRetained = objc_loadWeakRetained(&self->_hashtagAndMentionsDelegate);
    [(PKDataDetectorInteractionHelper *)self->_dataDetectorHelper setHashtagAndMentionsDelegate:?];

    window2 = [(PKAttachmentView *)self window];
    if (window2)
    {
      wantsDataDetection = self->_wantsDataDetection;
    }

    else
    {
      wantsDataDetection = 0;
    }

    dataDetectorHelper = [(PKAttachmentView *)self dataDetectorHelper];
    [(PKDataDetectorInteractionHelper *)dataDetectorHelper setWantsDataDetection:?];

    window3 = [(PKAttachmentView *)self window];
    if (window3)
    {
      wantsHashtagDetection = self->_wantsHashtagDetection;
    }

    else
    {
      wantsHashtagDetection = 0;
    }

    dataDetectorHelper2 = [(PKAttachmentView *)self dataDetectorHelper];
    [(PKDataDetectorInteractionHelper *)dataDetectorHelper2 setWantsHashtagDetection:?];

    window4 = [(PKAttachmentView *)self window];
    if (window4)
    {
      wantsMentionDetection = self->_wantsMentionDetection;
    }

    else
    {
      wantsMentionDetection = 0;
    }

    dataDetectorHelper3 = [(PKAttachmentView *)self dataDetectorHelper];
    [(PKDataDetectorInteractionHelper *)dataDetectorHelper3 setWantsMentionDetection:?];

    [(PKAttachmentView *)self _handleAutoRefineSettingsDidChange];
    [(PKAttachmentView *)self _handleProofreadingSettingsDidChange];
    if (!self->_autoRefineSettingsObserver)
    {
      objc_initWeak(&location, self);
      v36 = [PKAutoRefineSettingsObserver alloc];
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __114__PKAttachmentView__initializeRecognitionForDrawingIfNecessary_withVisibleOnscreenStrokes_createIfDrawingIfEmpty___block_invoke;
      v44[3] = &unk_1E82D7618;
      objc_copyWeak(&v45, &location);
      v37 = [(PKAutoRefineSettingsObserver *)v36 initWithHandler:v44];
      autoRefineSettingsObserver = self->_autoRefineSettingsObserver;
      self->_autoRefineSettingsObserver = v37;

      objc_destroyWeak(&v45);
      objc_destroyWeak(&location);
    }

    if (!self->_proofreadingSettingsObserver)
    {
      objc_initWeak(&location, self);
      v39 = [PKProofreadingSettingsObserver alloc];
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __114__PKAttachmentView__initializeRecognitionForDrawingIfNecessary_withVisibleOnscreenStrokes_createIfDrawingIfEmpty___block_invoke_3;
      v42[3] = &unk_1E82D7640;
      objc_copyWeak(&v43, &location);
      v40 = [(PKProofreadingSettingsObserver *)v39 initWithHandler:v42];
      proofreadingSettingsObserver = self->_proofreadingSettingsObserver;
      self->_proofreadingSettingsObserver = v40;

      objc_destroyWeak(&v43);
      objc_destroyWeak(&location);
    }
  }
}

void __114__PKAttachmentView__initializeRecognitionForDrawingIfNecessary_withVisibleOnscreenStrokes_createIfDrawingIfEmpty___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __114__PKAttachmentView__initializeRecognitionForDrawingIfNecessary_withVisibleOnscreenStrokes_createIfDrawingIfEmpty___block_invoke_2;
  v4[3] = &unk_1E82D69B8;
  objc_copyWeak(&v5, (a1 + 32));
  PKPerformOnMainThread(v4);
  objc_destroyWeak(&v5);
}

void __114__PKAttachmentView__initializeRecognitionForDrawingIfNecessary_withVisibleOnscreenStrokes_createIfDrawingIfEmpty___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAutoRefineSettingsDidChange];
}

void __114__PKAttachmentView__initializeRecognitionForDrawingIfNecessary_withVisibleOnscreenStrokes_createIfDrawingIfEmpty___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __114__PKAttachmentView__initializeRecognitionForDrawingIfNecessary_withVisibleOnscreenStrokes_createIfDrawingIfEmpty___block_invoke_4;
  v4[3] = &unk_1E82D69B8;
  objc_copyWeak(&v5, (a1 + 32));
  PKPerformOnMainThread(v4);
  objc_destroyWeak(&v5);
}

void __114__PKAttachmentView__initializeRecognitionForDrawingIfNecessary_withVisibleOnscreenStrokes_createIfDrawingIfEmpty___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleProofreadingSettingsDidChange];
}

- (void)_handleAutoRefineSettingsDidChange
{
  v3 = os_log_create("com.apple.pencilkit", "AttachmentView");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_DEFAULT, "handle AutoRefine settings did change", v12, 2u);
  }

  wantsAutoRefine = [(PKAttachmentView *)self wantsAutoRefine];
  recognitionManager = [(PKAttachmentView *)self recognitionManager];
  [(PKRecognitionSessionManager *)recognitionManager setWantsAutoRefine:wantsAutoRefine];

  if (wantsAutoRefine)
  {
    autoRefineTaskCoordinator = self->_autoRefineTaskCoordinator;
    if (!autoRefineTaskCoordinator)
    {
      if (self->_recognitionController)
      {
        v7 = [[PKAutoRefineTaskCoordinator alloc] initWithDelegate:self->_recognitionController recognitionController:?];
        v8 = self->_autoRefineTaskCoordinator;
        self->_autoRefineTaskCoordinator = v7;

        autoRefineTaskCoordinator = self->_autoRefineTaskCoordinator;
      }

      else
      {
        autoRefineTaskCoordinator = 0;
      }
    }

    recognitionManager2 = [(PKAttachmentView *)self recognitionManager];
    v10 = recognitionManager2;
    v11 = autoRefineTaskCoordinator;
  }

  else
  {
    recognitionManager2 = [(PKAttachmentView *)self recognitionManager];
    v10 = recognitionManager2;
    v11 = 0;
  }

  [(PKRecognitionSessionManager *)recognitionManager2 setAutoRefineViewDelegate:v11];
}

- (void)_handleProofreadingSettingsDidChange
{
  v3 = os_log_create("com.apple.pencilkit", "AttachmentView");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_DEFAULT, "handle Proofreading settings did change", v10, 2u);
  }

  if (PKCurrentDeviceSupportsProofreading() && PKCurrentAppSupportsRefinement() && +[PKSettingsDaemon proofreadingEnabled])
  {
    window = [(PKAttachmentView *)self window];
    v5 = window != 0;
  }

  else
  {
    v5 = 0;
  }

  dataDetectorHelper = [(PKAttachmentView *)self dataDetectorHelper];
  if (dataDetectorHelper)
  {
    v7 = dataDetectorHelper[10];

    if (v5 == v7)
    {
      return;
    }
  }

  else if ((v5 & 1) == 0)
  {
    return;
  }

  dataDetectorHelper2 = [(PKAttachmentView *)self dataDetectorHelper];
  [(PKDataDetectorInteractionHelper *)dataDetectorHelper2 setWantsProofreadingDetection:v5];

  recognitionManager = [(PKAttachmentView *)self recognitionManager];
  [(PKRecognitionSessionManager *)recognitionManager setWantsProofreadingDetection:v5];
}

- (void)fetchIntersectedStrokesAtPoint:(CGPoint)point selectionType:(int64_t)type inputType:(int64_t)inputType visibleOnscreenStrokes:(id)strokes completion:(id)completion
{
  y = point.y;
  x = point.x;
  completionCopy = completion;
  strokesCopy = strokes;
  recognitionManager = [(PKAttachmentView *)self recognitionManager];
  [(PKRecognitionSessionManager *)recognitionManager fetchIntersectedStrokesAtPoint:type selectionType:inputType inputType:strokesCopy visibleOnscreenStrokes:completionCopy completion:x, y];
}

- (void)fetchIntersectedStrokesBetweenTopPoint:(CGPoint)point bottomPoint:(CGPoint)bottomPoint liveScrollOffset:(CGPoint)offset completion:(id)completion
{
  y = offset.y;
  x = offset.x;
  v8 = bottomPoint.y;
  v9 = bottomPoint.x;
  v10 = point.y;
  v11 = point.x;
  completionCopy = completion;
  recognitionManager = [(PKAttachmentView *)self recognitionManager];
  [(PKRecognitionSessionManager *)recognitionManager fetchIntersectedStrokesBetweenTopPoint:completionCopy bottomPoint:v11 liveScrollOffset:v10 isRTL:v9 completion:v8, x, y];
}

- (id)_firstStrokesInSelectedStrokes:(id)strokes
{
  strokesCopy = strokes;
  recognitionManager = [(PKAttachmentView *)self recognitionManager];
  v6 = [(PKRecognitionSessionManager *)recognitionManager _firstStrokesInSelectedStrokes:strokesCopy isRTL:[(PKAttachmentView *)self isRTL]];

  return v6;
}

- (id)_lastStrokesInSelectedStrokes:(id)strokes
{
  strokesCopy = strokes;
  recognitionManager = [(PKAttachmentView *)self recognitionManager];
  v6 = [(PKRecognitionSessionManager *)recognitionManager _lastStrokesInSelectedStrokes:strokesCopy isRTL:[(PKAttachmentView *)self isRTL]];

  return v6;
}

- (void)fetchStrokesAmbiguouslyBelowAndAboveInsertSpaceHandleWithStrokes:(id)strokes completion:(id)completion
{
  completionCopy = completion;
  strokesCopy = strokes;
  recognitionManager = [(PKAttachmentView *)self recognitionManager];
  [(PKRecognitionSessionManager *)recognitionManager fetchStrokesAmbiguouslyBelowAndAboveInsertSpaceHandleWithStrokes:strokesCopy completion:completionCopy];
}

- (int64_t)contentTypeForIntersectedStrokes:(id)strokes
{
  strokesCopy = strokes;
  recognitionManager = [(PKAttachmentView *)self recognitionManager];
  v6 = [(PKRecognitionSessionManager *)recognitionManager contentTypeForIntersectedStrokes:strokesCopy];

  return v6;
}

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  v25.receiver = self;
  v25.super_class = PKAttachmentView;
  [(PKAttachmentView *)&v25 willMoveToWindow:windowCopy];
  dataDetectorHelper = [(PKAttachmentView *)self dataDetectorHelper];
  [(PKDataDetectorInteractionHelper *)dataDetectorHelper setWantsDataDetection:?];

  dataDetectorHelper2 = [(PKAttachmentView *)self dataDetectorHelper];
  [(PKDataDetectorInteractionHelper *)dataDetectorHelper2 setWantsHashtagDetection:?];

  dataDetectorHelper3 = [(PKAttachmentView *)self dataDetectorHelper];
  [(PKDataDetectorInteractionHelper *)dataDetectorHelper3 setWantsMentionDetection:?];

  dataDetectorHelper4 = [(PKAttachmentView *)self dataDetectorHelper];
  [(PKDataDetectorInteractionHelper *)dataDetectorHelper4 setWantsProofreadingDetection:?];

  dataDetectorHelper5 = [(PKAttachmentView *)self dataDetectorHelper];
  [(PKDataDetectorInteractionHelper *)dataDetectorHelper5 removeDetectionViews];

  v10 = MEMORY[0x1E69DE360];
  v11 = MEMORY[0x1E69DE348];
  if (windowCopy)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v13 = *v10;
    windowScene = [windowCopy windowScene];
    [defaultCenter addObserver:self selector:sel__willEnterForeground_ name:v13 object:windowScene];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    v16 = *v11;
    windowScene2 = [windowCopy windowScene];
    [defaultCenter2 addObserver:self selector:sel__didEnterBackground_ name:v16 object:windowScene2];
  }

  window = [(PKAttachmentView *)self window];
  if (window)
  {
    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    v20 = *v10;
    windowScene3 = [window windowScene];
    [defaultCenter3 removeObserver:self name:v20 object:windowScene3];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    v23 = *v11;
    windowScene4 = [window windowScene];
    [defaultCenter4 removeObserver:self name:v23 object:windowScene4];
  }
}

- (void)didMoveToWindow
{
  v21.receiver = self;
  v21.super_class = PKAttachmentView;
  [(PKAttachmentView *)&v21 didMoveToWindow];
  window = [(PKAttachmentView *)self window];

  if (window)
  {
    wantsDataDetection = self->_wantsDataDetection;
    dataDetectorHelper = [(PKAttachmentView *)self dataDetectorHelper];
    [(PKDataDetectorInteractionHelper *)dataDetectorHelper setWantsDataDetection:?];

    wantsHashtagDetection = self->_wantsHashtagDetection;
    dataDetectorHelper2 = [(PKAttachmentView *)self dataDetectorHelper];
    [(PKDataDetectorInteractionHelper *)dataDetectorHelper2 setWantsHashtagDetection:?];

    wantsMentionDetection = self->_wantsMentionDetection;
    dataDetectorHelper3 = [(PKAttachmentView *)self dataDetectorHelper];
    [(PKDataDetectorInteractionHelper *)dataDetectorHelper3 setWantsMentionDetection:?];

    window2 = [(PKAttachmentView *)self window];
    v11 = [PKToolPicker isActiveToolPickerVisibleForWindow:window2];
    dataDetectorHelper4 = [(PKAttachmentView *)self dataDetectorHelper];
    if (dataDetectorHelper4)
    {
      dataDetectorHelper4[17] = v11;
    }

    dataDetectorHelper5 = [(PKAttachmentView *)self dataDetectorHelper];
    if (dataDetectorHelper5)
    {
      dataDetectorHelper5[11] = 1;
    }

    [(PKAttachmentView *)self _handleAutoRefineSettingsDidChange];
    [(PKAttachmentView *)self _handleProofreadingSettingsDidChange];
    drawing = [(PKAttachmentView *)self drawing];
    _isEmpty = [drawing _isEmpty];

    if ((_isEmpty & 1) == 0)
    {
      tiledView = [(PKAttachmentView *)self tiledView];
      welcomeController = [tiledView welcomeController];
      tiledView2 = [(PKAttachmentView *)self tiledView];
      window3 = [tiledView2 window];
      rootViewController = [window3 rootViewController];
      [welcomeController presentHandwritingEducationPaneIfNecessaryIn:rootViewController withFeatures:3];
    }
  }
}

- (BOOL)wantsAutoRefine
{
  window = [(PKAttachmentView *)self window];
  if (window)
  {
    tiledView = [(PKAttachmentView *)self tiledView];
    isAutoRefineEnabled = [tiledView isAutoRefineEnabled];
  }

  else
  {
    isAutoRefineEnabled = 0;
  }

  return isAutoRefineEnabled;
}

- (void)recognitionController:(id)controller foundDataDetectorItems:(id)items
{
  itemsCopy = items;
  dataDetectorHelper = [(PKAttachmentView *)self dataDetectorHelper];
  if (dataDetectorHelper)
  {
    [(PKDataDetectorInteractionHelper *)dataDetectorHelper updateDetectionViews:itemsCopy withItems:dataDetectorHelper[11] previousItems:?];
  }
}

- (void)recognitionController:(id)controller foundHashtagItems:(id)items
{
  itemsCopy = items;
  dataDetectorHelper = [(PKAttachmentView *)self dataDetectorHelper];
  if (dataDetectorHelper)
  {
    [(PKDataDetectorInteractionHelper *)dataDetectorHelper updateDetectionViews:itemsCopy withItems:dataDetectorHelper[12] previousItems:?];
  }
}

- (void)recognitionController:(id)controller foundMentionItems:(id)items
{
  itemsCopy = items;
  dataDetectorHelper = [(PKAttachmentView *)self dataDetectorHelper];
  if (dataDetectorHelper)
  {
    [(PKDataDetectorInteractionHelper *)dataDetectorHelper updateMentionResults:itemsCopy];
  }
}

- (void)recognitionController:(id)controller foundProofreadingItems:(id)items
{
  itemsCopy = items;
  dataDetectorHelper = [(PKAttachmentView *)self dataDetectorHelper];
  [(PKDataDetectorInteractionHelper *)dataDetectorHelper foundProofreadingItems:itemsCopy];
}

- (BOOL)canConvertTextToHandwriting:(id)handwriting
{
  handwritingCopy = handwriting;
  recognitionController = [(PKAttachmentView *)self recognitionController];
  v6 = [recognitionController canConvertTextToHandwriting:handwritingCopy];

  return v6;
}

- (void)convertTextToHandwriting:(id)handwriting bounds:(CGRect)bounds suggestedHeight:(double)height suggestedDrawing:(id)drawing inkColor:(id)color completion:(id)completion
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  handwritingCopy = handwriting;
  drawingCopy = drawing;
  colorCopy = color;
  completionCopy = completion;
  if (colorCopy)
  {
    tintColor = colorCopy;
  }

  else
  {
    tintColor = [(PKAttachmentView *)self tintColor];
  }

  v22 = tintColor;
  tiledView = [(PKAttachmentView *)self tiledView];
  [tiledView inputScale];
  v25 = v24;

  self->_didReceiveTextConversion = 0;
  self->_shouldCancelConvertToHandwritting = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __105__PKAttachmentView_convertTextToHandwriting_bounds_suggestedHeight_suggestedDrawing_inkColor_completion___block_invoke;
  aBlock[3] = &unk_1E82D7668;
  aBlock[4] = self;
  v26 = _Block_copy(aBlock);
  recognitionController = [(PKAttachmentView *)self recognitionController];
  v30 = completionCopy;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __105__PKAttachmentView_convertTextToHandwriting_bounds_suggestedHeight_suggestedDrawing_inkColor_completion___block_invoke_2;
  v31[3] = &unk_1E82D76B8;
  v31[4] = self;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __105__PKAttachmentView_convertTextToHandwriting_bounds_suggestedHeight_suggestedDrawing_inkColor_completion___block_invoke_4;
  v29[3] = &unk_1E82D76E0;
  v29[4] = self;
  v28 = completionCopy;
  [recognitionController convertTextToHandwriting:handwritingCopy bounds:v22 inkColor:drawingCopy inputScale:v31 suggestedHeight:v29 suggestedDrawing:v26 progress:x completion:y shouldCancel:{width, height, v25, height}];
}

void __105__PKAttachmentView_convertTextToHandwriting_bounds_suggestedHeight_suggestedDrawing_inkColor_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v4 = dispatch_time(0, 2000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __105__PKAttachmentView_convertTextToHandwriting_bounds_suggestedHeight_suggestedDrawing_inkColor_completion___block_invoke_3;
  block[3] = &unk_1E82D7690;
  objc_copyWeak(&v8, &location);
  v7 = v3;
  v5 = v3;
  dispatch_after(v4, MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __105__PKAttachmentView_convertTextToHandwriting_bounds_suggestedHeight_suggestedDrawing_inkColor_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v5 = WeakRetained;
      v4 = [WeakRetained didReceiveTextConversion];
      v3 = v5;
      if ((v4 & 1) == 0)
      {
        [v5 _showHUDWithProgress:*(a1 + 32)];
        v3 = v5;
      }
    }
  }
}

void __105__PKAttachmentView_convertTextToHandwriting_bounds_suggestedHeight_suggestedDrawing_inkColor_completion___block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  *(*(a1 + 32) + 512) = 1;
  [*(a1 + 32) _hideHUD];
  if ([v9 count] && objc_msgSend(v7, "count") && objc_msgSend(v8, "count") && (*(*(a1 + 32) + 513) & 1) == 0)
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)fetchTranscriptionForStrokes:(id)strokes completion:(id)completion
{
  strokesCopy = strokes;
  completionCopy = completion;
  recognitionManager = [(PKAttachmentView *)self recognitionManager];
  v8 = [(PKRecognitionSessionManager *)recognitionManager fetchTranscriptionForStrokes:strokesCopy cancelBlock:&__block_literal_global_11 withCompletion:completionCopy];
}

- (void)replaceStrokes:(id)strokes withString:(id)string inBounds:(CGRect)bounds completion:(id)completion
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  completionCopy = completion;
  stringCopy = string;
  strokesCopy = strokes;
  tiledView = [(PKAttachmentView *)self tiledView];
  [tiledView inputScale];
  v18 = v17;

  recognitionController = [(PKAttachmentView *)self recognitionController];
  [recognitionController replaceStrokes:strokesCopy withString:stringCopy inBounds:completionCopy inputScale:x completion:{y, width, height, v18}];
}

- (void)_logHDRStrokesForDrawing:(id)drawing
{
  v23 = *MEMORY[0x1E69E9840];
  drawingCopy = drawing;
  if (os_variant_has_internal_diagnostics())
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    strokes = [drawingCopy strokes];
    v5 = [strokes countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = 0;
      v9 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(strokes);
          }

          v11 = [*(*(&v14 + 1) + 8 * i) ink];
          if (([v11 _isEraserInk] & 1) == 0)
          {
            [v11 hdrHeadroom];
            if (v12 <= 1.0)
            {
              ++v8;
            }

            else
            {
              ++v7;
            }
          }
        }

        v6 = [strokes countByEnumeratingWithState:&v14 objects:v22 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    v13 = os_log_create("com.apple.pencilkit", "HDR");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v19 = v8;
      v20 = 2048;
      v21 = v7;
      _os_log_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_DEFAULT, "Loaded drawing with %lu SDR strokes, and %lu HDR strokes", buf, 0x16u);
    }
  }
}

- (void)_showHUDWithProgress:(id)progress
{
  progressCopy = progress;
  v5 = _PencilKitBundle();
  v16 = [v5 localizedStringForKey:@"Converting text to handwriting…" value:@"Converting text to handwriting…" table:@"Localizable"];

  v6 = _PencilKitBundle();
  v7 = [v6 localizedStringForKey:@"Cancel converting to handwriting" value:@"Cancel" table:@"Localizable"];

  v8 = [PKProgressAlertController newProgressAlertControllerWithTitle:v16 cancel:v7];
  progressAlertController = self->_progressAlertController;
  self->_progressAlertController = v8;

  [(PKProgressAlertController *)self->_progressAlertController setDelegate:self];
  v10 = self->_progressAlertController;
  [(NSProgress *)progressCopy fractionCompleted];
  [(PKProgressAlertController *)v10 setProgress:?];
  currentProgress = self->_currentProgress;
  self->_currentProgress = progressCopy;
  v12 = progressCopy;

  [(NSProgress *)self->_currentProgress addObserver:self forKeyPath:@"fractionCompleted" options:3 context:PKInkSynthesisContext];
  viewRep = [(PKAttachmentView *)self viewRep];
  window = [viewRep window];
  rootViewController = [window rootViewController];
  [rootViewController presentViewController:self->_progressAlertController animated:1 completion:&__block_literal_global_66];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (PKInkSynthesisContext == context)
  {
    if ([MEMORY[0x1E696AF00] isMainThread])
    {

      [(PKAttachmentView *)self _progressChanged];
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __67__PKAttachmentView_observeValueForKeyPath_ofObject_change_context___block_invoke;
      block[3] = &unk_1E82D7148;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

- (void)_progressChanged
{
  presentingViewController = [(PKProgressAlertController *)self->_progressAlertController presentingViewController];

  if (presentingViewController)
  {
    progressAlertController = self->_progressAlertController;
    [(NSProgress *)self->_currentProgress fractionCompleted];

    [(PKProgressAlertController *)progressAlertController setProgress:?];
  }
}

- (void)_unregisterProgressObserver
{
  [(NSProgress *)self->_currentProgress removeObserver:self forKeyPath:@"fractionCompleted" context:PKInkSynthesisContext];
  currentProgress = self->_currentProgress;
  self->_currentProgress = 0;
}

- (void)_hideHUD
{
  [(PKAttachmentView *)self _unregisterProgressObserver];
  progressAlertController = self->_progressAlertController;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __28__PKAttachmentView__hideHUD__block_invoke;
  v4[3] = &unk_1E82D7148;
  v4[4] = self;
  [(PKProgressAlertController *)progressAlertController dismissViewControllerAnimated:1 completion:v4];
}

void __28__PKAttachmentView__hideHUD__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 552);
  *(v1 + 552) = 0;
}

- (BOOL)_isDrawing
{
  tiledView = [(PKAttachmentView *)self tiledView];
  canvasView = [tiledView canvasView];
  isHidden = [canvasView isHidden];

  return isHidden ^ 1;
}

- (void)setHashtagAndMentionsDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_hashtagAndMentionsDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_hashtagAndMentionsDelegate, obj);
    dataDetectorHelper = [(PKAttachmentView *)self dataDetectorHelper];
    [(PKDataDetectorInteractionHelper *)dataDetectorHelper setHashtagAndMentionsDelegate:?];
  }
}

- (id)inlineViewAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  dataDetectorHelper = [(PKAttachmentView *)self dataDetectorHelper];
  v6 = [(PKDataDetectorInteractionHelper *)dataDetectorHelper inlineViewAtPoint:y];

  return v6;
}

- (void)updateAllPossibleParticipantNameTokens
{
  dataDetectorHelper = [(PKAttachmentView *)self dataDetectorHelper];
  [(PKDataDetectorInteractionHelper *)dataDetectorHelper updateAllPossibleParticipantNameTokens];
}

- (CGRect)boundingBoxForHashtagOrMentionWithUUID:(id)d
{
  dCopy = d;
  dataDetectorHelper = [(PKAttachmentView *)self dataDetectorHelper];

  if (dataDetectorHelper)
  {
    dataDetectorHelper2 = [(PKAttachmentView *)self dataDetectorHelper];
    v7 = [(PKDataDetectorInteractionHelper *)dataDetectorHelper2 boundingBoxForHashtagOrMentionWithUUID:dCopy];
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v7 = *MEMORY[0x1E695F058];
    v9 = *(MEMORY[0x1E695F058] + 8);
    v11 = *(MEMORY[0x1E695F058] + 16);
    v13 = *(MEMORY[0x1E695F058] + 24);
  }

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (double)dataDetectorInteractionHelperInputScale:(id)scale
{
  tiledView = [(PKAttachmentView *)self tiledView];
  [tiledView inputScale];
  v5 = v4;

  return v5;
}

- (void)dataDetectorInteractionHelper:(id)helper registerUndoCommand:(id)command
{
  commandCopy = command;
  tiledView = [(PKAttachmentView *)self tiledView];
  [tiledView registerUndoCommand:commandCopy];
}

- (id)dataDetectorInteractionHelperSelectionInteraction:(id)interaction
{
  tiledView = [(PKAttachmentView *)self tiledView];
  selectionInteraction = [tiledView selectionInteraction];

  return selectionInteraction;
}

- (void)dataDetectorInteractionHelperNeedsLayout:(id)layout
{
  dataDetectorHelper = [(PKAttachmentView *)self dataDetectorHelper];
  if (dataDetectorHelper)
  {
    v5 = dataDetectorHelper[13];

    if (v5 != 1)
    {
      goto LABEL_5;
    }

    dataDetectorHelper2 = [(PKAttachmentView *)self dataDetectorHelper];
    [dataDetectorHelper2 revealDetectionViews];
  }

  else
  {
    dataDetectorHelper2 = 0;
  }

LABEL_5:

  [(PKAttachmentView *)self setNeedsLayout];
}

- (id)autoRefineTaskCoordinatorCurrentStroke:(id)stroke
{
  tiledView = [(PKAttachmentView *)self tiledView];
  _currentStroke = [tiledView _currentStroke];

  return _currentStroke;
}

- (id)autoRefineTaskCoordinatorAutoRefineController:(id)controller
{
  tiledView = [(PKAttachmentView *)self tiledView];
  autoRefineController = [tiledView autoRefineController];

  return autoRefineController;
}

- (id)_accessibilityUserTestingChildren
{
  dataDetectorHelper = [(PKAttachmentView *)self dataDetectorHelper];
  _accessibilityUserTestingChildren = [dataDetectorHelper _accessibilityUserTestingChildren];

  return _accessibilityUserTestingChildren;
}

- (CGAffineTransform)preResizeDrawingTransform
{
  v3 = *&self[14].a;
  *&retstr->a = *&self[13].tx;
  *&retstr->c = v3;
  *&retstr->tx = *&self[14].c;
  return self;
}

- (void)setPreResizeDrawingTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_preResizeDrawingTransform.a = *&transform->a;
  *&self->_preResizeDrawingTransform.c = v4;
  *&self->_preResizeDrawingTransform.tx = v3;
}

- (PKAttachmentViewHashtagsAndMentionsDelegate)hashtagAndMentionsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_hashtagAndMentionsDelegate);

  return WeakRetained;
}

- (CGRect)cachedBounds
{
  x = self->_cachedBounds.origin.x;
  y = self->_cachedBounds.origin.y;
  width = self->_cachedBounds.size.width;
  height = self->_cachedBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end