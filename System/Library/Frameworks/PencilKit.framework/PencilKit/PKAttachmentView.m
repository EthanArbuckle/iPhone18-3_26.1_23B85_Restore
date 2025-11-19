@interface PKAttachmentView
- (BOOL)_checkStrokesForExtendedDynamicRange:(id)a3;
- (BOOL)_isDrawing;
- (BOOL)canConvertTextToHandwriting:(id)a3;
- (BOOL)hitByTouchLocation:(CGPoint)a3 bounds:(CGRect)a4;
- (BOOL)wantsAutoRefine;
- (CGAffineTransform)drawingTransform;
- (CGAffineTransform)preResizeDrawingTransform;
- (CGAffineTransform)tileDrawingTransform;
- (CGRect)boundingBoxForHashtagOrMentionWithUUID:(id)a3;
- (CGRect)cachedBounds;
- (PKAttachmentView)initWithFrame:(CGRect)a3;
- (PKAttachmentView)initWithFrame:(CGRect)a3 drawing:(id)a4;
- (PKAttachmentViewHashtagsAndMentionsDelegate)hashtagAndMentionsDelegate;
- (PKRecognitionController)recognitionController;
- (PKRecognitionSessionManager)recognitionManager;
- (double)dataDetectorInteractionHelperInputScale:(id)a3;
- (double)heightFromDrawing:(id)a3 delta:(double)a4;
- (id)_accessibilityUserTestingChildren;
- (id)_firstStrokesInSelectedStrokes:(id)a3;
- (id)_lastStrokesInSelectedStrokes:(id)a3;
- (id)autoRefineTaskCoordinatorAutoRefineController:(id)a3;
- (id)autoRefineTaskCoordinatorCurrentStroke:(id)a3;
- (id)dataDetectorInteractionHelperSelectionInteraction:(id)a3;
- (id)inlineViewAtPoint:(CGPoint)a3;
- (int64_t)contentTypeForIntersectedStrokes:(id)a3;
- (void)_cancelOffscreenTiles;
- (void)_handleAutoRefineSettingsDidChange;
- (void)_handleProofreadingSettingsDidChange;
- (void)_hideHUD;
- (void)_initializeRecognitionForDrawingIfNecessary:(id)a3 withVisibleOnscreenStrokes:(id)a4 createIfDrawingIfEmpty:(BOOL)a5;
- (void)_logHDRStrokesForDrawing:(id)a3;
- (void)_progressChanged;
- (void)_purgeAllTiles;
- (void)_showHUDWithProgress:(id)a3;
- (void)_toolPickerDidShowHide:(id)a3;
- (void)_unregisterProgressObserver;
- (void)containingScrollViewDidScroll;
- (void)convertTextToHandwriting:(id)a3 bounds:(CGRect)a4 suggestedHeight:(double)a5 suggestedDrawing:(id)a6 inkColor:(id)a7 completion:(id)a8;
- (void)dataDetectorInteractionHelper:(id)a3 registerUndoCommand:(id)a4;
- (void)dataDetectorInteractionHelperNeedsLayout:(id)a3;
- (void)dealloc;
- (void)didBeginDrawing;
- (void)didBeginModifyDrawing;
- (void)didEndModifyDrawing;
- (void)didFinishCalculatingVisibleOnscreenStrokes:(id)a3 drawing:(id)a4;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)drawingDidChangeVisibleStrokes:(BOOL)a3;
- (void)fetchIntersectedStrokesAtPoint:(CGPoint)a3 selectionType:(int64_t)a4 inputType:(int64_t)a5 visibleOnscreenStrokes:(id)a6 completion:(id)a7;
- (void)fetchIntersectedStrokesBetweenTopPoint:(CGPoint)a3 bottomPoint:(CGPoint)a4 liveScrollOffset:(CGPoint)a5 completion:(id)a6;
- (void)fetchStrokesAmbiguouslyBelowAndAboveInsertSpaceHandleWithStrokes:(id)a3 completion:(id)a4;
- (void)fetchTranscriptionForStrokes:(id)a3 completion:(id)a4;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pixelAlignForContentScale:(double)a3 enclosingScrollView:(id)a4;
- (void)recognitionController:(id)a3 foundDataDetectorItems:(id)a4;
- (void)recognitionController:(id)a3 foundHashtagItems:(id)a4;
- (void)recognitionController:(id)a3 foundMentionItems:(id)a4;
- (void)recognitionController:(id)a3 foundProofreadingItems:(id)a4;
- (void)replaceStrokes:(id)a3 withString:(id)a4 inBounds:(CGRect)a5 completion:(id)a6;
- (void)setAdditionalStrokes:(id)a3;
- (void)setContentHidden:(BOOL)a3;
- (void)setDrawing:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHashtagAndMentionsDelegate:(id)a3;
- (void)setPreResizeDrawingTransform:(CGAffineTransform *)a3;
- (void)setReflowingStrokeIds:(id)a3;
- (void)setSixChannelBlending:(BOOL)a3;
- (void)setTileDrawingTransform:(CGAffineTransform *)a3;
- (void)setTileTransform:(CGAffineTransform *)a3;
- (void)setTransform:(CGAffineTransform *)a3;
- (void)setWantsDataDetection:(BOOL)a3;
- (void)setWantsHashtagDetection:(BOOL)a3;
- (void)setWantsMentionDetection:(BOOL)a3;
- (void)toolPickerDidHide;
- (void)toolPickerDidShow;
- (void)updateAllPossibleParticipantNameTokens;
- (void)updateDrawingHeight:(double)a3;
- (void)updateDrawingHeight:(double)a3 notifyDrawingDidChange:(BOOL)a4;
- (void)updateTileContainerViewFrame;
- (void)visibleOnscreenBoundsDidChange:(CGRect)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation PKAttachmentView

- (PKAttachmentView)initWithFrame:(CGRect)a3 drawing:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v36.receiver = self;
  v36.super_class = PKAttachmentView;
  v11 = [(PKAttachmentView *)&v36 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    v11->_renderingEnabled = 1;
    v13 = [MEMORY[0x1E696AFB0] UUID];
    listenerID = v12->_listenerID;
    v12->_listenerID = v13;

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

    objc_storeStrong(&v12->_drawing, a4);
    if (+[PKTiledView showDebugOutlines])
    {
      v24 = [(PKAttachmentView *)v12 layer];
      [v24 setBorderWidth:1.0];

      v25 = [MEMORY[0x1E69DC888] blueColor];
      v26 = [v25 CGColor];
      v27 = [(PKAttachmentView *)v12 layer];
      [v27 setBorderColor:v26];
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
    v31 = [(PKDrawing *)v12->_drawing strokes];
    v32 = [(PKAttachmentView *)v12 _checkStrokesForExtendedDynamicRange:v31];

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

- (PKAttachmentView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = objc_alloc_init(PKDrawing);
  v9 = [(PKAttachmentView *)self initWithFrame:v8 drawing:x, y, width, height];

  return v9;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4 = [(PKAttachmentView *)self recognitionManager];
  [(PKRecognitionSessionManager *)v4 removeListener:?];

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
  v3 = [(PKAttachmentView *)self superview];

  if (v3)
  {
    if ([(PKAttachmentView *)self hasSeenAnyExtendedDynamicRangeStrokes])
    {
      v4 = os_log_create("com.apple.pencilkit", "EDR");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [(PKAttachmentView *)self tiledView];
        *buf = 134217984;
        v14 = v5;
        _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "EDR strokes when moving to superview for tiled view: %p", buf, 0xCu);
      }

      v6 = [(PKAttachmentView *)self tiledView];
      [v6 _setHasSeenAnyExtendedDynamicRangeInks];
    }

    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:self selector:sel__toolPickerDidShowHide_ name:@"PKToolPickerDidShowNotification" object:0];

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:self selector:sel__toolPickerDidShowHide_ name:@"PKToolPickerDidHideNotification" object:0];

    v9 = [(PKAttachmentView *)self attachmentContainerView];
    if (_os_feature_enabled_impl())
    {
      v10 = [v9 traitOverrides];
      [v10 setNSIntegerValue:1 forTrait:objc_opt_class()];
    }
  }

  else
  {
    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 removeObserver:self name:@"PKToolPickerDidShowNotification" object:0];

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 removeObserver:self name:@"PKToolPickerDidHideNotification" object:0];
  }
}

- (void)setWantsDataDetection:(BOOL)a3
{
  v3 = a3;
  self->_wantsDataDetection = a3;
  v4 = [(PKAttachmentView *)self dataDetectorHelper];
  [(PKDataDetectorInteractionHelper *)v4 setWantsDataDetection:v3];
}

- (void)setWantsHashtagDetection:(BOOL)a3
{
  v3 = a3;
  self->_wantsHashtagDetection = a3;
  v4 = [(PKAttachmentView *)self dataDetectorHelper];
  [(PKDataDetectorInteractionHelper *)v4 setWantsHashtagDetection:v3];
}

- (void)setWantsMentionDetection:(BOOL)a3
{
  v3 = a3;
  self->_wantsMentionDetection = a3;
  v4 = [(PKAttachmentView *)self dataDetectorHelper];
  [(PKDataDetectorInteractionHelper *)v4 setWantsMentionDetection:v3];
}

- (void)setTileDrawingTransform:(CGAffineTransform *)a3
{
  self->_didSetTileDrawingTransform = 1;
  v3 = *&a3->a;
  v4 = *&a3->tx;
  *&self->_tileDrawingTransform.c = *&a3->c;
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

- (void)setTileTransform:(CGAffineTransform *)a3
{
  v27 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [(PKAttachmentView *)self tileContainerView];
  v6 = [v5 layer];
  v7 = [v6 sublayers];

  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(v7);
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
        v15 = *&a3->c;
        v19[0] = *&a3->a;
        v19[1] = v15;
        v19[2] = *&a3->tx;
        DKDTransformInTransformSpace(v19, &v21, &v20);
        v21 = v20;
        [v12 setAffineTransform:&v21];
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  [MEMORY[0x1E6979518] commit];
}

- (void)setAdditionalStrokes:(id)a3
{
  v7 = a3;
  v4 = [v7 count];
  if (v4)
  {
    v4 = v7;
  }

  additionalStrokes = self->_additionalStrokes;
  self->_additionalStrokes = v4;

  v6 = [(PKAttachmentView *)self dataDetectorHelper];
  [(PKDataDetectorInteractionHelper *)v6 setAdditionalStrokes:v7];
}

- (void)setContentHidden:(BOOL)a3
{
  v3 = a3;
  self->_contentHidden = a3;
  v4 = [(PKAttachmentView *)self tileContainerView];
  [v4 setHidden:v3];
}

- (void)setSixChannelBlending:(BOOL)a3
{
  if (self->_sixChannelBlending != a3)
  {
    v4 = a3;
    self->_sixChannelBlending = a3;
    v6 = [(PKAttachmentView *)self tileContainerView];
    v7 = [v6 layer];
    [v7 setAllowsGroupBlending:!v4];

    v8 = [(PKAttachmentView *)self dataDetectorHelper];
    v9 = v8;
    if (v8)
    {
      v10 = *(v8 + 144);
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    v12 = [v11 layer];
    [v12 setAllowsGroupBlending:!v4];

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
  v3 = [(PKAttachmentView *)self tiles];
  v4 = [v3 allValues];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(PKRendererTile *)*(*(&v10 + 1) + 8 * v8++) purgeTileLayers];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = [(PKAttachmentView *)self tiles];
  [v9 removeAllObjects];

  [(NSMutableDictionary *)self->_purgedTiles removeAllObjects];
}

- (void)_cancelOffscreenTiles
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(PKAttachmentView *)self offscreenTiles];
  v4 = [v3 objectEnumerator];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
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
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = [(PKAttachmentView *)self offscreenTiles];
  [v10 removeAllObjects];
}

- (BOOL)hitByTouchLocation:(CGPoint)a3 bounds:(CGRect)a4
{
  y = a3.y;
  x = a3.x;
  v7.x = x;
  v7.y = y;
  return CGRectContainsPoint(a4, v7);
}

- (void)_toolPickerDidShowHide:(id)a3
{
  v10 = a3;
  v4 = [v10 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"PKToolPickerNotificationWindowSceneUserInfoKey"];
  v6 = [(PKAttachmentView *)self window];
  v7 = [v6 windowScene];

  v8 = v10;
  if (v5 == v7)
  {
    v9 = [v10 object];
    if ([v9 isVisible])
    {
      [(PKAttachmentView *)self toolPickerDidShow];
    }

    else
    {
      [(PKAttachmentView *)self toolPickerDidHide];
    }

    v8 = v10;
  }
}

- (void)toolPickerDidShow
{
  v3 = [(PKAttachmentView *)self dataDetectorHelper];
  if (v3)
  {
    v3[17] = 1;
  }

  v4 = [(PKAttachmentView *)self dataDetectorHelper];
  if (v4)
  {
    v4[18] = 0;
  }

  v5 = [(PKAttachmentView *)self dataDetectorHelper];
  [(PKDataDetectorInteractionHelper *)v5 updateDetectionViewVisibility];
}

- (void)toolPickerDidHide
{
  v3 = [(PKAttachmentView *)self dataDetectorHelper];
  if (v3)
  {
    v3[17] = 0;
  }

  v4 = [(PKAttachmentView *)self dataDetectorHelper];
  [(PKDataDetectorInteractionHelper *)v4 updateDetectionViewVisibility];
}

- (void)drawingDidChangeVisibleStrokes:(BOOL)a3
{
  if (a3)
  {
    [(NSMutableDictionary *)self->_purgedTiles removeAllObjects];
    strokeSpatialCache = self->_strokeSpatialCache;
    v5 = [(PKAttachmentView *)self drawing];
    v6 = 1;
    [(PKStrokeSpatialCache *)strokeSpatialCache _invalidateCacheForBounds:v5 inDrawing:1 force:self->_cachedBounds.origin.x, self->_cachedBounds.origin.y, self->_cachedBounds.size.width, self->_cachedBounds.size.height];

    v7 = [(PKAttachmentView *)self dataDetectorHelper];
    v8 = v7;
    if (v7)
    {
      v6 = *(v7 + 17) ^ 1;
    }

    v9 = [(PKAttachmentView *)self dataDetectorHelper];
    if (v9)
    {
      v9[18] = v6 & 1;
    }

    v10 = [(PKAttachmentView *)self dataDetectorHelper];
    [(PKDataDetectorInteractionHelper *)v10 setDetectionViewsHidden:?];

    v11 = [(PKAttachmentView *)self dataDetectorHelper];
    if (v11)
    {
      v11[11] = 0;
    }
  }

  else
  {
    v12 = [(PKAttachmentView *)self dataDetectorHelper];
    [(PKDataDetectorInteractionHelper *)v12 updateHashtagsAndMentionsActivationState];
    v11 = v12;
  }
}

- (void)visibleOnscreenBoundsDidChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  self->_cachedBounds = a3;
  strokeSpatialCache = self->_strokeSpatialCache;
  v8 = [(PKAttachmentView *)self drawing];
  if (strokeSpatialCache)
  {
    v9 = v8;
    [(PKStrokeSpatialCache *)strokeSpatialCache _invalidateCacheForBounds:v8 inDrawing:0 force:x, y, width, height];
    v8 = v9;
  }
}

- (void)setDrawing:(id)a3
{
  v5 = a3;
  if (self->_drawing != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_drawing, a3);
    [(PKAttachmentView *)self _initializeRecognitionForDrawingIfNecessary:v6];
    [(PKAttachmentView *)self drawingDidChange];
    v5 = v6;
  }
}

- (CGAffineTransform)drawingTransform
{
  [(PKAttachmentView *)self bounds];

  return CGAffineTransformMakeScale(retstr, v4 / 768.0, v4 / 768.0);
}

- (BOOL)_checkStrokesForExtendedDynamicRange:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
    v6 = v4;
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

- (void)didFinishCalculatingVisibleOnscreenStrokes:(id)a3 drawing:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKAttachmentView *)self drawing];
  v9 = [v7 isEqual:v8];

  if ((v9 & 1) == 0)
  {
    v10 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_DEFAULT, "PKStrokeSpatialCache drawing did not match current drawing", buf, 2u);
    }
  }

  v11 = [v7 strokes];
  v12 = [(PKAttachmentView *)self _checkStrokesForExtendedDynamicRange:v11];

  if (v12)
  {
    v13 = os_log_create("com.apple.pencilkit", "EDR");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_DEFAULT, "Attachment notifying tiled view about EDR strokes.", v15, 2u);
    }

    v14 = [(PKAttachmentView *)self tiledView];
    [v14 _setHasSeenAnyExtendedDynamicRangeInks];
  }

  [(PKAttachmentView *)self _initializeRecognitionForDrawingIfNecessary:v7 withVisibleOnscreenStrokes:v6];
}

- (void)containingScrollViewDidScroll
{
  v3 = [(PKAttachmentView *)self dataDetectorHelper];
  if (v3)
  {
    v3[18] = 0;
  }

  v4 = [(PKAttachmentView *)self dataDetectorHelper];
  if (v4)
  {
    v5 = v4[13];

    if (v5 != 1)
    {
      return;
    }

    v6 = [(PKAttachmentView *)self dataDetectorHelper];
    [v6 revealDetectionViews];
  }

  else
  {
    v6 = 0;
  }
}

- (void)pixelAlignForContentScale:(double)a3 enclosingScrollView:(id)a4
{
  v6 = a4;
  v7 = [v6 superview];
  [(PKAttachmentView *)self bounds];
  [v7 convertRect:self fromView:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = DKDRoundedRectForScale(v9, v11, v13, v15, a3);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [v6 superview];

  [v23 convertRect:self toView:{v16, v18, v20, v22}];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = [(PKAttachmentView *)self tileContainerView];
  [v32 setFrame:{v25, v27, v29, v31}];

  v33 = [(PKAttachmentView *)self dataDetectorHelper];
  v36 = v33;
  if (v33)
  {
    v34 = *(v33 + 144);
  }

  else
  {
    v34 = 0;
  }

  v35 = v34;
  [v35 setFrame:{v25, v27, v29, v31}];
}

- (double)heightFromDrawing:(id)a3 delta:(double)a4
{
  [a3 bounds];
  v6 = CGRectGetMaxY(v10) + a4;
  [(PKAttachmentView *)self drawingTransform];
  return v6 * sqrt(v9 * v9 + v8 * v8);
}

- (void)updateDrawingHeight:(double)a3
{
  v4 = [(PKAttachmentView *)self drawing];
  [v4 set_canvasBounds:{0.0, 0.0, 768.0, a3}];
}

- (void)updateDrawingHeight:(double)a3 notifyDrawingDidChange:(BOOL)a4
{
  v4 = a4;
  [(PKAttachmentView *)self updateDrawingHeight:a3];
  if (v4)
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
  v11 = [(PKAttachmentView *)self tileContainerView];
  [v11 setFrame:{v4, v6, v8, v10}];

  [(PKAttachmentView *)self bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(PKAttachmentView *)self dataDetectorHelper];
  v23 = v20;
  if (v20)
  {
    v21 = *(v20 + 144);
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;
  [v22 setFrame:{v13, v15, v17, v19}];
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = PKAttachmentView;
  [(PKAttachmentView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(PKAttachmentView *)self updateTileContainerViewFrame];
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = PKAttachmentView;
  [(PKAttachmentView *)&v6 layoutSubviews];
  v3 = [(PKAttachmentView *)self tileMaskView];
  [v3 setClipsToBounds:1];

  [(PKAttachmentView *)self updateTileContainerViewFrame];
  v4 = [(PKAttachmentView *)self dataDetectorHelper];
  [(PKAttachmentView *)self drawingTransform];
  [(PKDataDetectorInteractionHelper *)v4 layoutInlineViewsDrawingTransform:v5];
}

- (void)didBeginDrawing
{
  v2 = [(PKAttachmentView *)self dataDetectorHelper];
  [(PKDataDetectorInteractionHelper *)v2 setDetectionViewsHidden:?];
}

- (void)setTransform:(CGAffineTransform *)a3
{
  v5.receiver = self;
  v5.super_class = PKAttachmentView;
  v3 = *&a3->c;
  v4[0] = *&a3->a;
  v4[1] = v3;
  v4[2] = *&a3->tx;
  [(PKAttachmentView *)&v5 setTransform:v4];
}

- (void)setReflowingStrokeIds:(id)a3
{
  v4 = a3;
  v5 = [(PKAttachmentView *)self dataDetectorHelper];
  [(PKDataDetectorInteractionHelper *)v5 setReflowingStrokeIds:v4];
}

- (void)didBeginModifyDrawing
{
  v3 = [(PKAttachmentView *)self dataDetectorHelper];
  if (v3)
  {
    v3[16] = 1;
  }

  v4 = [(PKAttachmentView *)self dataDetectorHelper];
  [(PKDataDetectorInteractionHelper *)v4 updateDetectionViewVisibility];
}

- (void)didEndModifyDrawing
{
  v2 = [(PKAttachmentView *)self dataDetectorHelper];
  if (v2)
  {
    v2[16] = 0;
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
    v4 = [(PKAttachmentView *)self drawing];
    [(PKAttachmentView *)self _initializeRecognitionForDrawingIfNecessary:v4 withVisibleOnscreenStrokes:0 createIfDrawingIfEmpty:1];

    recognitionController = self->_recognitionController;
  }

  return recognitionController;
}

- (void)_initializeRecognitionForDrawingIfNecessary:(id)a3 withVisibleOnscreenStrokes:(id)a4 createIfDrawingIfEmpty:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (self->_recognitionController || [v8 _isEmpty] && !v5)
  {
    v10 = [v9 count];
    recognitionController = self->_recognitionController;
    if (v10)
    {
      [(PKRecognitionController *)recognitionController setDrawing:v8 withVisibleOnscreenStrokes:v9];
    }

    else
    {
      [(PKRecognitionController *)recognitionController setDrawing:v8];
    }
  }

  else
  {
    v12 = [[PKRecognitionController alloc] initWithDrawing:v8 visibleOnscreenStrokes:v9];
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
    v18 = [(PKAttachmentView *)self tileContainerView];
    v19 = [(PKDataDetectorInteractionHelper *)&v17->super.isa initWithView:v18 parentView:self->_recognitionController recognitionController:?];
    dataDetectorHelper = self->_dataDetectorHelper;
    self->_dataDetectorHelper = v19;

    v21 = [(PKAttachmentView *)self window];
    v22 = [PKToolPicker isActiveToolPickerVisibleForWindow:v21];
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

    v27 = [(PKAttachmentView *)self window];
    if (v27)
    {
      wantsDataDetection = self->_wantsDataDetection;
    }

    else
    {
      wantsDataDetection = 0;
    }

    v29 = [(PKAttachmentView *)self dataDetectorHelper];
    [(PKDataDetectorInteractionHelper *)v29 setWantsDataDetection:?];

    v30 = [(PKAttachmentView *)self window];
    if (v30)
    {
      wantsHashtagDetection = self->_wantsHashtagDetection;
    }

    else
    {
      wantsHashtagDetection = 0;
    }

    v32 = [(PKAttachmentView *)self dataDetectorHelper];
    [(PKDataDetectorInteractionHelper *)v32 setWantsHashtagDetection:?];

    v33 = [(PKAttachmentView *)self window];
    if (v33)
    {
      wantsMentionDetection = self->_wantsMentionDetection;
    }

    else
    {
      wantsMentionDetection = 0;
    }

    v35 = [(PKAttachmentView *)self dataDetectorHelper];
    [(PKDataDetectorInteractionHelper *)v35 setWantsMentionDetection:?];

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

  v4 = [(PKAttachmentView *)self wantsAutoRefine];
  v5 = [(PKAttachmentView *)self recognitionManager];
  [(PKRecognitionSessionManager *)v5 setWantsAutoRefine:v4];

  if (v4)
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

    v9 = [(PKAttachmentView *)self recognitionManager];
    v10 = v9;
    v11 = autoRefineTaskCoordinator;
  }

  else
  {
    v9 = [(PKAttachmentView *)self recognitionManager];
    v10 = v9;
    v11 = 0;
  }

  [(PKRecognitionSessionManager *)v9 setAutoRefineViewDelegate:v11];
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
    v4 = [(PKAttachmentView *)self window];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(PKAttachmentView *)self dataDetectorHelper];
  if (v6)
  {
    v7 = v6[10];

    if (v5 == v7)
    {
      return;
    }
  }

  else if ((v5 & 1) == 0)
  {
    return;
  }

  v8 = [(PKAttachmentView *)self dataDetectorHelper];
  [(PKDataDetectorInteractionHelper *)v8 setWantsProofreadingDetection:v5];

  v9 = [(PKAttachmentView *)self recognitionManager];
  [(PKRecognitionSessionManager *)v9 setWantsProofreadingDetection:v5];
}

- (void)fetchIntersectedStrokesAtPoint:(CGPoint)a3 selectionType:(int64_t)a4 inputType:(int64_t)a5 visibleOnscreenStrokes:(id)a6 completion:(id)a7
{
  y = a3.y;
  x = a3.x;
  v13 = a7;
  v14 = a6;
  v15 = [(PKAttachmentView *)self recognitionManager];
  [(PKRecognitionSessionManager *)v15 fetchIntersectedStrokesAtPoint:a4 selectionType:a5 inputType:v14 visibleOnscreenStrokes:v13 completion:x, y];
}

- (void)fetchIntersectedStrokesBetweenTopPoint:(CGPoint)a3 bottomPoint:(CGPoint)a4 liveScrollOffset:(CGPoint)a5 completion:(id)a6
{
  y = a5.y;
  x = a5.x;
  v8 = a4.y;
  v9 = a4.x;
  v10 = a3.y;
  v11 = a3.x;
  v13 = a6;
  v14 = [(PKAttachmentView *)self recognitionManager];
  [(PKRecognitionSessionManager *)v14 fetchIntersectedStrokesBetweenTopPoint:v13 bottomPoint:v11 liveScrollOffset:v10 isRTL:v9 completion:v8, x, y];
}

- (id)_firstStrokesInSelectedStrokes:(id)a3
{
  v4 = a3;
  v5 = [(PKAttachmentView *)self recognitionManager];
  v6 = [(PKRecognitionSessionManager *)v5 _firstStrokesInSelectedStrokes:v4 isRTL:[(PKAttachmentView *)self isRTL]];

  return v6;
}

- (id)_lastStrokesInSelectedStrokes:(id)a3
{
  v4 = a3;
  v5 = [(PKAttachmentView *)self recognitionManager];
  v6 = [(PKRecognitionSessionManager *)v5 _lastStrokesInSelectedStrokes:v4 isRTL:[(PKAttachmentView *)self isRTL]];

  return v6;
}

- (void)fetchStrokesAmbiguouslyBelowAndAboveInsertSpaceHandleWithStrokes:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKAttachmentView *)self recognitionManager];
  [(PKRecognitionSessionManager *)v8 fetchStrokesAmbiguouslyBelowAndAboveInsertSpaceHandleWithStrokes:v7 completion:v6];
}

- (int64_t)contentTypeForIntersectedStrokes:(id)a3
{
  v4 = a3;
  v5 = [(PKAttachmentView *)self recognitionManager];
  v6 = [(PKRecognitionSessionManager *)v5 contentTypeForIntersectedStrokes:v4];

  return v6;
}

- (void)willMoveToWindow:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = PKAttachmentView;
  [(PKAttachmentView *)&v25 willMoveToWindow:v4];
  v5 = [(PKAttachmentView *)self dataDetectorHelper];
  [(PKDataDetectorInteractionHelper *)v5 setWantsDataDetection:?];

  v6 = [(PKAttachmentView *)self dataDetectorHelper];
  [(PKDataDetectorInteractionHelper *)v6 setWantsHashtagDetection:?];

  v7 = [(PKAttachmentView *)self dataDetectorHelper];
  [(PKDataDetectorInteractionHelper *)v7 setWantsMentionDetection:?];

  v8 = [(PKAttachmentView *)self dataDetectorHelper];
  [(PKDataDetectorInteractionHelper *)v8 setWantsProofreadingDetection:?];

  v9 = [(PKAttachmentView *)self dataDetectorHelper];
  [(PKDataDetectorInteractionHelper *)v9 removeDetectionViews];

  v10 = MEMORY[0x1E69DE360];
  v11 = MEMORY[0x1E69DE348];
  if (v4)
  {
    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    v13 = *v10;
    v14 = [v4 windowScene];
    [v12 addObserver:self selector:sel__willEnterForeground_ name:v13 object:v14];

    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    v16 = *v11;
    v17 = [v4 windowScene];
    [v15 addObserver:self selector:sel__didEnterBackground_ name:v16 object:v17];
  }

  v18 = [(PKAttachmentView *)self window];
  if (v18)
  {
    v19 = [MEMORY[0x1E696AD88] defaultCenter];
    v20 = *v10;
    v21 = [v18 windowScene];
    [v19 removeObserver:self name:v20 object:v21];

    v22 = [MEMORY[0x1E696AD88] defaultCenter];
    v23 = *v11;
    v24 = [v18 windowScene];
    [v22 removeObserver:self name:v23 object:v24];
  }
}

- (void)didMoveToWindow
{
  v21.receiver = self;
  v21.super_class = PKAttachmentView;
  [(PKAttachmentView *)&v21 didMoveToWindow];
  v3 = [(PKAttachmentView *)self window];

  if (v3)
  {
    wantsDataDetection = self->_wantsDataDetection;
    v5 = [(PKAttachmentView *)self dataDetectorHelper];
    [(PKDataDetectorInteractionHelper *)v5 setWantsDataDetection:?];

    wantsHashtagDetection = self->_wantsHashtagDetection;
    v7 = [(PKAttachmentView *)self dataDetectorHelper];
    [(PKDataDetectorInteractionHelper *)v7 setWantsHashtagDetection:?];

    wantsMentionDetection = self->_wantsMentionDetection;
    v9 = [(PKAttachmentView *)self dataDetectorHelper];
    [(PKDataDetectorInteractionHelper *)v9 setWantsMentionDetection:?];

    v10 = [(PKAttachmentView *)self window];
    v11 = [PKToolPicker isActiveToolPickerVisibleForWindow:v10];
    v12 = [(PKAttachmentView *)self dataDetectorHelper];
    if (v12)
    {
      v12[17] = v11;
    }

    v13 = [(PKAttachmentView *)self dataDetectorHelper];
    if (v13)
    {
      v13[11] = 1;
    }

    [(PKAttachmentView *)self _handleAutoRefineSettingsDidChange];
    [(PKAttachmentView *)self _handleProofreadingSettingsDidChange];
    v14 = [(PKAttachmentView *)self drawing];
    v15 = [v14 _isEmpty];

    if ((v15 & 1) == 0)
    {
      v16 = [(PKAttachmentView *)self tiledView];
      v17 = [v16 welcomeController];
      v18 = [(PKAttachmentView *)self tiledView];
      v19 = [v18 window];
      v20 = [v19 rootViewController];
      [v17 presentHandwritingEducationPaneIfNecessaryIn:v20 withFeatures:3];
    }
  }
}

- (BOOL)wantsAutoRefine
{
  v3 = [(PKAttachmentView *)self window];
  if (v3)
  {
    v4 = [(PKAttachmentView *)self tiledView];
    v5 = [v4 isAutoRefineEnabled];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)recognitionController:(id)a3 foundDataDetectorItems:(id)a4
{
  v5 = a4;
  v6 = [(PKAttachmentView *)self dataDetectorHelper];
  if (v6)
  {
    [(PKDataDetectorInteractionHelper *)v6 updateDetectionViews:v5 withItems:v6[11] previousItems:?];
  }
}

- (void)recognitionController:(id)a3 foundHashtagItems:(id)a4
{
  v5 = a4;
  v6 = [(PKAttachmentView *)self dataDetectorHelper];
  if (v6)
  {
    [(PKDataDetectorInteractionHelper *)v6 updateDetectionViews:v5 withItems:v6[12] previousItems:?];
  }
}

- (void)recognitionController:(id)a3 foundMentionItems:(id)a4
{
  v5 = a4;
  v6 = [(PKAttachmentView *)self dataDetectorHelper];
  if (v6)
  {
    [(PKDataDetectorInteractionHelper *)v6 updateMentionResults:v5];
  }
}

- (void)recognitionController:(id)a3 foundProofreadingItems:(id)a4
{
  v5 = a4;
  v6 = [(PKAttachmentView *)self dataDetectorHelper];
  [(PKDataDetectorInteractionHelper *)v6 foundProofreadingItems:v5];
}

- (BOOL)canConvertTextToHandwriting:(id)a3
{
  v4 = a3;
  v5 = [(PKAttachmentView *)self recognitionController];
  v6 = [v5 canConvertTextToHandwriting:v4];

  return v6;
}

- (void)convertTextToHandwriting:(id)a3 bounds:(CGRect)a4 suggestedHeight:(double)a5 suggestedDrawing:(id)a6 inkColor:(id)a7 completion:(id)a8
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v17 = a3;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = [(PKAttachmentView *)self tintColor];
  }

  v22 = v21;
  v23 = [(PKAttachmentView *)self tiledView];
  [v23 inputScale];
  v25 = v24;

  self->_didReceiveTextConversion = 0;
  self->_shouldCancelConvertToHandwritting = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __105__PKAttachmentView_convertTextToHandwriting_bounds_suggestedHeight_suggestedDrawing_inkColor_completion___block_invoke;
  aBlock[3] = &unk_1E82D7668;
  aBlock[4] = self;
  v26 = _Block_copy(aBlock);
  v27 = [(PKAttachmentView *)self recognitionController];
  v30 = v20;
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
  v28 = v20;
  [v27 convertTextToHandwriting:v17 bounds:v22 inkColor:v18 inputScale:v31 suggestedHeight:v29 suggestedDrawing:v26 progress:x completion:y shouldCancel:{width, height, v25, a5}];
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

- (void)fetchTranscriptionForStrokes:(id)a3 completion:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(PKAttachmentView *)self recognitionManager];
  v8 = [(PKRecognitionSessionManager *)v7 fetchTranscriptionForStrokes:v9 cancelBlock:&__block_literal_global_11 withCompletion:v6];
}

- (void)replaceStrokes:(id)a3 withString:(id)a4 inBounds:(CGRect)a5 completion:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v13 = a6;
  v14 = a4;
  v15 = a3;
  v16 = [(PKAttachmentView *)self tiledView];
  [v16 inputScale];
  v18 = v17;

  v19 = [(PKAttachmentView *)self recognitionController];
  [v19 replaceStrokes:v15 withString:v14 inBounds:v13 inputScale:x completion:{y, width, height, v18}];
}

- (void)_logHDRStrokesForDrawing:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (os_variant_has_internal_diagnostics())
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = [v3 strokes];
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
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
            objc_enumerationMutation(v4);
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

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
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

- (void)_showHUDWithProgress:(id)a3
{
  v4 = a3;
  v5 = _PencilKitBundle();
  v16 = [v5 localizedStringForKey:@"Converting text to handwriting…" value:@"Converting text to handwriting…" table:@"Localizable"];

  v6 = _PencilKitBundle();
  v7 = [v6 localizedStringForKey:@"Cancel converting to handwriting" value:@"Cancel" table:@"Localizable"];

  v8 = [PKProgressAlertController newProgressAlertControllerWithTitle:v16 cancel:v7];
  progressAlertController = self->_progressAlertController;
  self->_progressAlertController = v8;

  [(PKProgressAlertController *)self->_progressAlertController setDelegate:self];
  v10 = self->_progressAlertController;
  [(NSProgress *)v4 fractionCompleted];
  [(PKProgressAlertController *)v10 setProgress:?];
  currentProgress = self->_currentProgress;
  self->_currentProgress = v4;
  v12 = v4;

  [(NSProgress *)self->_currentProgress addObserver:self forKeyPath:@"fractionCompleted" options:3 context:PKInkSynthesisContext];
  v13 = [(PKAttachmentView *)self viewRep];
  v14 = [v13 window];
  v15 = [v14 rootViewController];
  [v15 presentViewController:self->_progressAlertController animated:1 completion:&__block_literal_global_66];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (PKInkSynthesisContext == a6)
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
  v3 = [(PKProgressAlertController *)self->_progressAlertController presentingViewController];

  if (v3)
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
  v2 = [(PKAttachmentView *)self tiledView];
  v3 = [v2 canvasView];
  v4 = [v3 isHidden];

  return v4 ^ 1;
}

- (void)setHashtagAndMentionsDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_hashtagAndMentionsDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_hashtagAndMentionsDelegate, obj);
    v5 = [(PKAttachmentView *)self dataDetectorHelper];
    [(PKDataDetectorInteractionHelper *)v5 setHashtagAndMentionsDelegate:?];
  }
}

- (id)inlineViewAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(PKAttachmentView *)self dataDetectorHelper];
  v6 = [(PKDataDetectorInteractionHelper *)v5 inlineViewAtPoint:y];

  return v6;
}

- (void)updateAllPossibleParticipantNameTokens
{
  v2 = [(PKAttachmentView *)self dataDetectorHelper];
  [(PKDataDetectorInteractionHelper *)v2 updateAllPossibleParticipantNameTokens];
}

- (CGRect)boundingBoxForHashtagOrMentionWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(PKAttachmentView *)self dataDetectorHelper];

  if (v5)
  {
    v6 = [(PKAttachmentView *)self dataDetectorHelper];
    v7 = [(PKDataDetectorInteractionHelper *)v6 boundingBoxForHashtagOrMentionWithUUID:v4];
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

- (double)dataDetectorInteractionHelperInputScale:(id)a3
{
  v3 = [(PKAttachmentView *)self tiledView];
  [v3 inputScale];
  v5 = v4;

  return v5;
}

- (void)dataDetectorInteractionHelper:(id)a3 registerUndoCommand:(id)a4
{
  v5 = a4;
  v6 = [(PKAttachmentView *)self tiledView];
  [v6 registerUndoCommand:v5];
}

- (id)dataDetectorInteractionHelperSelectionInteraction:(id)a3
{
  v3 = [(PKAttachmentView *)self tiledView];
  v4 = [v3 selectionInteraction];

  return v4;
}

- (void)dataDetectorInteractionHelperNeedsLayout:(id)a3
{
  v4 = [(PKAttachmentView *)self dataDetectorHelper];
  if (v4)
  {
    v5 = v4[13];

    if (v5 != 1)
    {
      goto LABEL_5;
    }

    v6 = [(PKAttachmentView *)self dataDetectorHelper];
    [v6 revealDetectionViews];
  }

  else
  {
    v6 = 0;
  }

LABEL_5:

  [(PKAttachmentView *)self setNeedsLayout];
}

- (id)autoRefineTaskCoordinatorCurrentStroke:(id)a3
{
  v3 = [(PKAttachmentView *)self tiledView];
  v4 = [v3 _currentStroke];

  return v4;
}

- (id)autoRefineTaskCoordinatorAutoRefineController:(id)a3
{
  v3 = [(PKAttachmentView *)self tiledView];
  v4 = [v3 autoRefineController];

  return v4;
}

- (id)_accessibilityUserTestingChildren
{
  v2 = [(PKAttachmentView *)self dataDetectorHelper];
  v3 = [v2 _accessibilityUserTestingChildren];

  return v3;
}

- (CGAffineTransform)preResizeDrawingTransform
{
  v3 = *&self[14].a;
  *&retstr->a = *&self[13].tx;
  *&retstr->c = v3;
  *&retstr->tx = *&self[14].c;
  return self;
}

- (void)setPreResizeDrawingTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v3 = *&a3->tx;
  *&self->_preResizeDrawingTransform.a = *&a3->a;
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