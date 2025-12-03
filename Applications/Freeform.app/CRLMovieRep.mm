@interface CRLMovieRep
+ (id)CRLMovieButtonFillColor;
+ (void)initialize;
- (BOOL)canUseSpecializedHitRegionForKnob:(id)knob;
- (BOOL)directlyManagesLayerContent;
- (BOOL)directlyManagesVisibilityOfKnob:(id)knob;
- (BOOL)handleSingleTapAtPoint:(CGPoint)point inputType:(int64_t)type;
- (BOOL)isPlaying;
- (BOOL)manuallyControlsMiniFormatter;
- (BOOL)noKnobTogglePlayAndMiniFormatter;
- (BOOL)p_cornerRadiusValueIsSignificant;
- (BOOL)p_isLoopingSticker;
- (BOOL)p_isMiniFormatterShowing;
- (BOOL)p_isMovieKnob:(id)knob;
- (BOOL)p_isPresentingMiniFormatterOrPlayButtonVisible;
- (BOOL)p_miniFormatterIsPresentingSecondLayer;
- (BOOL)p_needsTilingForStroke:(id)stroke;
- (BOOL)p_playButtonFitsInFrame;
- (BOOL)shouldDisplayAsSpatial;
- (BOOL)shouldShowLoadingUI;
- (CGPoint)positionOfPlayKnobForBounds:(CGRect)bounds viewScale:(double)scale;
- (CGPoint)positionOfStandardKnob:(id)knob forBounds:(CGRect)bounds;
- (CGRect)p_strokeFrameForRenderableFrame:(CGRect)frame;
- (CRLMediaPlayerController)playerControllerForcingCreationIfNotPreExisting;
- (CRLMovieRep)initWithLayout:(id)layout canvas:(id)canvas;
- (_TtC8Freeform12CRLMovieItem)movieItem;
- (double)absoluteCurrentTime;
- (double)visibleTime;
- (float)volume;
- (id)additionalRenderablesOverRenderable;
- (id)dynamicResizeDidBegin;
- (id)movieLayout;
- (id)newTrackerForKnob:(id)knob;
- (id)nowPlayingImageProviderWithPlaybackController:(id)controller;
- (id)nowPlayingTitleWithPlaybackController:(id)controller;
- (id)p_pathForRoundedCornerMaskWithBounds:(CGRect)bounds;
- (id)p_playButtonKnob;
- (id)p_posterImageProvider;
- (id)p_selectionPath;
- (id)p_shapeRenderableForPlayerStroke;
- (id)pauseButtonImage;
- (id)playButtonImage;
- (id)resizedGeometryForTransform:(CGAffineTransform *)transform;
- (id)visuallySignificantDataSet;
- (unint64_t)enabledKnobMask;
- (void)addKnobsToArray:(id)array;
- (void)becameNotSelected;
- (void)becameSelected;
- (void)dealloc;
- (void)didEndZooming;
- (void)didFinishPencilKitStroke;
- (void)didUpdateRenderable:(id)renderable;
- (void)documentEditabilityDidChange;
- (void)drawInContextWithoutEffects:(CGContext *)effects withContent:(BOOL)content strokeDrawOptions:(unint64_t)options withOpacity:(BOOL)opacity forAlphaOnly:(BOOL)only drawChildren:(BOOL)children keepingChildrenPassingTest:(id)test;
- (void)drawLayer:(id)layer inContext:(CGContext *)context;
- (void)dynamicFreeTransformDidBeginWithTracker:(id)tracker;
- (void)dynamicFreeTransformDidEndWithTracker:(id)tracker;
- (void)dynamicResizeDidEndWithTracker:(id)tracker;
- (void)dynamicVisibleTimeChangeDidBegin;
- (void)dynamicVisibleTimeChangeDidEnd;
- (void)dynamicVisibleTimeUpdateToValue:(double)value withTolerance:(double)tolerance completionHandler:(id)handler;
- (void)dynamicVolumeChangeDidBegin;
- (void)enterPreviewMode;
- (void)handleFadeInForZoom;
- (void)handleFadeOutForZoom;
- (void)i_hidePlayButtonIndependently;
- (void)i_togglePlayPauseTriggeredFromKnob;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)p_addPlayButtonToKnobs:(id)knobs;
- (void)p_applyBasicStroke:(id)stroke toRenderable:(id)renderable bounds:(CGRect)bounds;
- (void)p_applyRoundedCornersTo:(id)to;
- (void)p_arrangeRenderableVisibility:(id)visibility;
- (void)p_checkAndSyncTilingState:(BOOL)state;
- (void)p_commonDrawStrokeInContext:(CGContext *)context;
- (void)p_disposeStrokeRenderable;
- (void)p_drawInContext:(CGContext *)context withContent:(BOOL)content withStroke:(BOOL)stroke withOpacity:(double)opacity forShadowOrHitTest:(BOOL)test;
- (void)p_drawPlayButtonForNonInteractiveCanvasInContext:(CGContext *)context;
- (void)p_drawPosterImageInContext:(CGContext *)context forShadowOrHitTest:(BOOL)test;
- (void)p_handleAssetPreparationCompletionForAsset:(id)asset;
- (void)p_hideControls;
- (void)p_hideControlsWithDelay:(double)delay;
- (void)p_hideMiniFormatter;
- (void)p_hidePlayPauseButtonKnob;
- (void)p_invalidateHideControlsTimeoutTimer;
- (void)p_listenForAssetChangesIfAppropriate;
- (void)p_playTriggeredFromKnob;
- (void)p_positionPauseButtonImage;
- (void)p_positionPlayButtonImage;
- (void)p_removeRoundedCornersFrom:(id)from;
- (void)p_setPositionAndBoundsIfDifferent:(id)different position:(CGPoint)position bounds:(CGRect)bounds;
- (void)p_setupPlayerControllerIfNecessary;
- (void)p_setupPlayerLayerIfNecessary;
- (void)p_setupPlayerStrokeRenderables:(BOOL)renderables;
- (void)p_setupShapePlayerStrokeRenderable;
- (void)p_setupStrokeRenderables:(BOOL)renderables;
- (void)p_setupTilingPlayerStrokeRenderable;
- (void)p_showControls;
- (void)p_showMiniFormatter;
- (void)p_startOrStopLoopingStickerIfNecessary;
- (void)p_stopPlaybackForPencilKitIfNeeded;
- (void)p_stopUpdatingUIStateForMoviePlayability;
- (void)p_teardownPlayerController;
- (void)p_teardownPlayerControllerIfNeeded;
- (void)p_togglePlaying;
- (void)p_updateEndTime;
- (void)p_updateLoopingSettingForMoviePlaybackIfNeeded;
- (void)p_updatePlayButtonVisibility;
- (void)p_updateRoundedCornersForPlayerRenderableIfNeeded;
- (void)p_updateStartTime;
- (void)p_updateStrokeRenderablesForStroke:(id)stroke repRenderable:(id)renderable;
- (void)p_updateUIStateForMoviePlayability;
- (void)p_updateUsePlayPauseButtonToMatchIsPlaying:(BOOL)playing;
- (void)p_updateVolume;
- (void)p_usePauseButtonKnobImage;
- (void)p_usePlayButtonKnobImage;
- (void)pausePlaybackIfNeeded;
- (void)playbackDidStopForPlayerController:(id)controller;
- (void)playerController:(id)controller playbackDidFailWithError:(id)error;
- (void)prepareForPreview;
- (void)processChangedProperty:(unint64_t)property;
- (void)screenScaleDidChange;
- (void)setNeedsDisplay;
- (void)stopPlaybackIfNeeded;
- (void)toggleMiniFormatter;
- (void)toggleShowingControls;
- (void)updateFromLayout;
- (void)updateRenderableGeometryFromLayout:(id)layout;
- (void)updateUI_toMatchPlayer;
- (void)willBeRemoved;
- (void)willBeginEyedropperMode;
- (void)willUpdateRenderable:(id)renderable;
@end

@implementation CRLMovieRep

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [[CRLWidthLimitedQueue alloc] initWithLimit:10];
    v3 = qword_101A34788;
    qword_101A34788 = v2;
  }
}

- (CRLMovieRep)initWithLayout:(id)layout canvas:(id)canvas
{
  canvasCopy = canvas;
  v13.receiver = self;
  v13.super_class = CRLMovieRep;
  v7 = [(CRLCanvasRep *)&v13 initWithLayout:layout canvas:canvasCopy];
  v8 = v7;
  if (v7)
  {
    movieItem = [(CRLMovieRep *)v7 movieItem];

    if (movieItem)
    {
      v10 = objc_alloc_init(NSUUID);
      downloadObserverIdentifier = v8->_downloadObserverIdentifier;
      v8->_downloadObserverIdentifier = v10;

      if ([canvasCopy isCanvasInteractive])
      {
        [(CRLMovieRep *)v8 p_listenForAssetChangesIfAppropriate];
        [(CRLMovieRep *)v8 p_startOrStopLoopingStickerIfNecessary];
      }
    }

    else
    {

      v8 = 0;
    }
  }

  return v8;
}

- (_TtC8Freeform12CRLMovieItem)movieItem
{
  v3 = objc_opt_class();
  info = [(CRLCanvasRep *)self info];
  v5 = sub_100014370(v3, info);

  return v5;
}

- (id)movieLayout
{
  v3 = objc_opt_class();
  layout = [(CRLCanvasRep *)self layout];
  v5 = sub_100014370(v3, layout);

  return v5;
}

- (void)dealloc
{
  if (self->_hideControlsTimeoutTimer)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101325028();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132503C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013250D8();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLMovieRep dealloc]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:218 isFatal:0 description:"expected nil value for '%{public}s'", "_hideControlsTimeoutTimer"];
  }

  [(CRLCanvasRenderable *)self->_playerStrokeRenderable setDelegate:0];
  [(CRLCanvasRenderable *)self->_playerRenderable setDelegate:0];
  v6.receiver = self;
  v6.super_class = CRLMovieRep;
  [(CRLCanvasRep *)&v6 dealloc];
}

- (void)updateFromLayout
{
  v3.receiver = self;
  v3.super_class = CRLMovieRep;
  [(CRLCanvasRep *)&v3 updateFromLayout];
  [(CRLMovieRep *)self p_updatePlayButtonVisibility];
}

- (id)p_posterImageProvider
{
  v3 = +[CRLImageProviderPool sharedPool];
  movieItem = [(CRLMovieRep *)self movieItem];
  posterImageAssetPayload = [movieItem posterImageAssetPayload];
  if (posterImageAssetPayload)
  {
    v6 = objc_opt_class();
    v7 = [v3 providerForAsset:posterImageAssetPayload shouldValidate:1];
    v8 = sub_100014370(v6, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)p_drawPosterImageInContext:(CGContext *)context forShadowOrHitTest:(BOOL)test
{
  testCopy = test;
  CGContextSaveGState(context);
  mediaLayout = [(CRLMediaRep *)self mediaLayout];
  [mediaLayout boundsForStandardKnobs];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  memset(&v45, 0, sizeof(v45));
  mediaLayout2 = [(CRLMediaRep *)self mediaLayout];
  geometryInRoot = [mediaLayout2 geometryInRoot];
  v18 = geometryInRoot;
  if (geometryInRoot)
  {
    [geometryInRoot transform];
  }

  else
  {
    memset(&v45, 0, sizeof(v45));
  }

  v44 = v45;
  if (sub_100139B5C(&v44.a))
  {
    v44 = v45;
    v46.origin.x = v9;
    v46.origin.y = v11;
    v46.size.width = v13;
    v46.size.height = v15;
    v47 = CGRectApplyAffineTransform(v46, &v44);
    x = v47.origin.x;
    y = v47.origin.y;
    width = v47.size.width;
    height = v47.size.height;
    v23 = sub_100510A7C(context);
    canvas = [(CRLCanvasRep *)self canvas];
    [canvas viewScale];
    v26 = v23 * v25;

    v27 = sub_1001221E8(x, y, width, height, v26);
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v43 = v45;
    CGAffineTransformInvert(&v44, &v43);
    v48.origin.x = v27;
    v48.origin.y = v29;
    v48.size.width = v31;
    v48.size.height = v33;
    v49 = CGRectApplyAffineTransform(v48, &v44);
    v9 = v49.origin.x;
    v11 = v49.origin.y;
    v13 = v49.size.width;
    v15 = v49.size.height;
  }

  p_posterImageProvider = [(CRLMovieRep *)self p_posterImageProvider];
  if (p_posterImageProvider)
  {
    CGContextSaveGState(context);
    v35 = [(CRLMovieRep *)self p_pathForRoundedCornerMaskWithBounds:v9, v11, v13, v15];
    v36 = v35;
    if (v35)
    {
      CGContextAddPath(context, [v35 CGPath]);
      CGContextClip(context);
    }

    if (testCopy && [p_posterImageProvider isOpaque])
    {
      v37 = +[CRLColor blackColor];
      CGContextSetFillColorWithColor(context, [v37 CGColor]);

      v50.origin.x = v9;
      v50.origin.y = v11;
      v50.size.width = v13;
      v50.size.height = v15;
      CGContextFillRect(context, v50);
    }

    else
    {
      [p_posterImageProvider drawImageInContext:context rect:{v9, v11, v13, v15}];
    }

    CGContextRestoreGState(context);
  }

  else if ([(CRLMovieRep *)self shouldShowLoadingUI])
  {
    v38 = [_TtC8Freeform33CRLUndownloadedAssetDrawingHelper alloc];
    movieItem = [(CRLMovieRep *)self movieItem];
    posterImageAssetPayload = [movieItem posterImageAssetPayload];
    v41 = [(CRLUndownloadedAssetDrawingHelper *)v38 initWithRep:self asset:posterImageAssetPayload];

    [(CRLUndownloadedAssetDrawingHelper *)v41 drawInContext:context];
  }

  else if (testCopy)
  {
    v42 = +[CRLColor blackColor];
    CGContextSetFillColorWithColor(context, [v42 CGColor]);

    v51.origin.x = v9;
    v51.origin.y = v11;
    v51.size.width = v13;
    v51.size.height = v15;
    CGContextFillRect(context, v51);
  }

  CGContextRestoreGState(context);
}

- (void)p_drawInContext:(CGContext *)context withContent:(BOOL)content withStroke:(BOOL)stroke withOpacity:(double)opacity forShadowOrHitTest:(BOOL)test
{
  testCopy = test;
  strokeCopy = stroke;
  contentCopy = content;
  styledLayout = [(CRLStyledRep *)self styledLayout];
  isInvisible = [styledLayout isInvisible];

  if (isInvisible)
  {
    return;
  }

  layout = [(CRLCanvasRep *)self layout];
  stroke = [layout stroke];

  if (stroke)
  {
    if (![stroke shouldRender])
    {
      v18 = 0;
      goto LABEL_8;
    }

    canvas = [(CRLCanvasRep *)self canvas];
    shouldSuppressBackgrounds = [canvas shouldSuppressBackgrounds];

    if (shouldSuppressBackgrounds)
    {
      v18 = [stroke mutableCopy];

      stroke = +[CRLColor blackColor];
      [v18 setColor:?];
LABEL_8:

      stroke = v18;
    }
  }

  else
  {
    stroke = 0;
  }

  v19 = opacity < 1.0 && strokeCopy;
  v20 = v19 && contentCopy;
  if (v19 && contentCopy && (CGContextSaveGState(context), CGContextSetAlpha(context, opacity), stroke))
  {
    CGContextBeginTransparencyLayer(context, 0);
    v21 = 1;
  }

  else
  {
    v21 = 0;
  }

  CGContextSaveGState(context);
  mediaLayout = [(CRLMediaRep *)self mediaLayout];
  [mediaLayout boundsForStandardKnobs];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  if (contentCopy)
  {
    [(CRLMovieRep *)self p_drawPosterImageInContext:context forShadowOrHitTest:testCopy];
  }

  CGContextRestoreGState(context);
  if (strokeCopy && stroke)
  {
    CGContextSaveGState(context);
    [stroke paintRect:context inContext:{v24, v26, v28, v30}];
    CGContextRestoreGState(context);
  }

  if (!testCopy)
  {
    canvas2 = [(CRLCanvasRep *)self canvas];
    if ([canvas2 isCanvasInteractive])
    {
    }

    else
    {
      p_playButtonFitsInFrame = [(CRLMovieRep *)self p_playButtonFitsInFrame];

      if (p_playButtonFitsInFrame)
      {
        CGContextSaveGState(context);
        [(CRLMovieRep *)self p_drawPlayButtonForNonInteractiveCanvasInContext:context];
        CGContextRestoreGState(context);
      }
    }
  }

  if (v21)
  {
    CGContextEndTransparencyLayer(context);
  }

  if (v20)
  {
    CGContextRestoreGState(context);
  }
}

- (void)p_drawPlayButtonForNonInteractiveCanvasInContext:(CGContext *)context
{
  mediaLayout = [(CRLMediaRep *)self mediaLayout];
  [mediaLayout boundsForStandardKnobs];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(CRLMovieRep *)self positionOfPlayKnobForBounds:v7 viewScale:v9, v11, v13, 1.0];
  v16 = sub_10011EC70(v14, v15, 48.0);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = +[CRLMovieRep CRLMovieButtonFillColor];
  CGContextSetFillColorWithColor(context, [v23 CGColor]);

  v44.origin.x = v16;
  v44.origin.y = v18;
  v44.size.width = v20;
  v44.size.height = v22;
  CGContextFillEllipseInRect(context, v44);
  v24 = sub_100120414(v16, v18, v20, v22);
  v26 = v25;
  v27 = v24 + 2.88;
  v28 = [CRLImage imageWithSystemImageNamed:@"play.fill" pointSize:22.0];
  [v28 size];
  v30 = v29;
  v32 = v31;
  v33 = sub_10011EC70(v27, v26, v29);
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = +[CRLColor whiteColor];
  v42 = [v28 compositedImageWithColor:v40 alpha:20 blendMode:1.0];

  v41 = [v42 CGImageForSize:context inContext:0 orContentsScaleProvider:{v30, v32}];
  v45.origin.x = v33;
  v45.origin.y = v35;
  v45.size.width = v37;
  v45.size.height = v39;
  CGContextDrawImage(context, v45, v41);
}

- (void)drawInContextWithoutEffects:(CGContext *)effects withContent:(BOOL)content strokeDrawOptions:(unint64_t)options withOpacity:(BOOL)opacity forAlphaOnly:(BOOL)only drawChildren:(BOOL)children keepingChildrenPassingTest:(id)test
{
  onlyCopy = only;
  optionsCopy = options;
  contentCopy = content;
  v14 = 1.0;
  if (opacity)
  {
    [(CRLStyledRep *)self opacity:effects];
  }

  [(CRLMovieRep *)self p_drawInContext:effects withContent:contentCopy withStroke:optionsCopy & 1 withOpacity:onlyCopy forShadowOrHitTest:only, children, v14];
}

- (void)willBeRemoved
{
  v15.receiver = self;
  v15.super_class = CRLMovieRep;
  [(CRLCanvasRep *)&v15 willBeRemoved];
  [(CRLMovieRep *)self p_cancelUpdatingUIStateForMoviePlayability];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  v12 = sub_100184C94;
  v13 = &unk_10183AB38;
  selfCopy = self;
  if (+[NSThread isMainThread])
  {
    v12(block);
  }

  else
  {
    dispatch_async(&_dispatch_main_q, block);
  }

  [(CRLMovieRep *)self p_invalidateHideControlsTimeoutTimer];
  renderable = [(CRLCanvasKnob *)self->_playButtonKnob renderable];
  [renderable setDelegate:0];

  playButtonKnob = self->_playButtonKnob;
  self->_playButtonKnob = 0;

  if (!self->_downloadObserverIdentifier)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101325100();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101325128();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013251C4();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLMovieRep willBeRemoved]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:422 isFatal:0 description:"invalid nil value for '%{public}s'", "_downloadObserverIdentifier"];
  }

  movieItem = [(CRLMovieRep *)self movieItem];
  store = [movieItem store];
  assetManager = [store assetManager];
  [assetManager removeAllDownloadObserversWithIdentifier:self->_downloadObserverIdentifier];
}

- (BOOL)directlyManagesLayerContent
{
  shouldShowLoadingUI = [(CRLMovieRep *)self shouldShowLoadingUI];
  v4 = shouldShowLoadingUI ^ 1;
  if (self->_directlyManagesLayerContent != (shouldShowLoadingUI ^ 1))
  {
    self->_directlyManagesLayerContent = v4;
    if (shouldShowLoadingUI)
    {
      [(CRLMovieRep *)self setNeedsDisplay];
    }

    else
    {
      canvas = [(CRLCanvasRep *)self canvas];
      isCanvasInteractive = [canvas isCanvasInteractive];

      if (isCanvasInteractive)
      {
        interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
        v8 = [interactiveCanvasController renderableForRep:self];

        [v8 setContents:0];
      }
    }
  }

  return v4;
}

- (void)p_disposeStrokeRenderable
{
  playerStrokeRenderable = self->_playerStrokeRenderable;
  if (playerStrokeRenderable)
  {
    [(CRLCanvasRenderable *)playerStrokeRenderable setDelegate:0];
    v4 = self->_playerStrokeRenderable;
    self->_playerStrokeRenderable = 0;
  }
}

- (void)p_setupPlayerLayerIfNecessary
{
  if (!self->_playerRenderable)
  {
    newRenderable = [(CRLCanvasRenderableMediaPlayerController *)self->_playerController newRenderable];
    playerRenderable = self->_playerRenderable;
    self->_playerRenderable = newRenderable;

    [(CRLCanvasRenderable *)self->_playerRenderable setDelegate:self];
    [(CRLCanvasRenderable *)self->_playerRenderable setHidden:1];
    v5 = objc_opt_class();
    v6 = sub_100014370(v5, self->_playerRenderable);
    v7 = v6;
    if (v6)
    {
      self->_playerLayerShouldBeDisplayed = 0;
      [v6 addReadyToDisplayObserver:self options:5 context:off_1019EDD00];
      v8 = 1;
    }

    else
    {
      v8 = 0;
      self->_playerLayerShouldBeDisplayed = 1;
    }

    self->_currentlyObservingPlayerLayer = v8;
    info = [(CRLCanvasRep *)self info];
    geometry = [info geometry];
    v11 = geometry;
    if (geometry)
    {
      [geometry transformBasedOnPoint:CGPointZero.x centeredAtPoint:{CGPointZero.y, CGPointZero.x, CGPointZero.y}];
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
      v27 = 0u;
    }

    v12 = self->_playerRenderable;
    v26[0] = v27;
    v26[1] = v28;
    v26[2] = v29;
    [(CRLCanvasRenderable *)v12 setAffineTransform:v26];

    canvas = [(CRLCanvasRep *)self canvas];
    layout = [(CRLCanvasRep *)self layout];
    geometry2 = [layout geometry];
    [geometry2 size];
    [canvas convertUnscaledToBoundsRect:sub_10011ECB4()];
    [(CRLCanvasRenderable *)self->_playerRenderable setBounds:?];

    canvas2 = [(CRLCanvasRep *)self canvas];
    layout2 = [(CRLCanvasRep *)self layout];
    geometry3 = [layout2 geometry];
    [geometry3 frame];
    [canvas2 convertUnscaledToBoundsPoint:{sub_100120414(v19, v20, v21, v22)}];
    [(CRLCanvasRenderable *)self->_playerRenderable setPosition:?];

    [(CRLStyledRep *)self opacity];
    *&v23 = v23;
    [(CRLCanvasRenderable *)self->_playerRenderable setOpacity:v23];
    layer = [(CRLCanvasRenderable *)self->_playerRenderable layer];
    [(CRLMovieRep *)self p_applyRoundedCornersTo:layer];

    canvas3 = [(CRLCanvasRep *)self canvas];
    [canvas3 invalidateContentLayersForRep:self];
  }
}

- (BOOL)p_cornerRadiusValueIsSignificant
{
  movieItem = [(CRLMovieRep *)self movieItem];
  [movieItem cornerRadius];
  v4 = v3 >= 0.001;

  return v4;
}

- (void)p_updateRoundedCornersForPlayerRenderableIfNeeded
{
  if (self->_playerRenderable)
  {
    movieItem = [(CRLMovieRep *)self movieItem];
    hasRoundedCorners = [movieItem hasRoundedCorners];

    layer = [(CRLCanvasRenderable *)self->_playerRenderable layer];
    if (hasRoundedCorners)
    {
      [(CRLMovieRep *)self p_applyRoundedCornersTo:layer];
    }

    else
    {
      [(CRLMovieRep *)self p_removeRoundedCornersFrom:layer];
    }
  }
}

- (void)p_applyRoundedCornersTo:(id)to
{
  toCopy = to;
  if ([(CRLMovieRep *)self p_cornerRadiusValueIsSignificant])
  {
    movieItem = [(CRLMovieRep *)self movieItem];
    [movieItem cornerRadius];
    v6 = v5;
    canvas = [(CRLCanvasRep *)self canvas];
    [canvas viewScale];
    [toCopy setCornerRadius:v8 * v6];

    [toCopy setMasksToBounds:1];
    [toCopy setCornerCurve:kCACornerCurveContinuous];
  }
}

- (void)p_removeRoundedCornersFrom:(id)from
{
  fromCopy = from;
  [fromCopy setCornerRadius:0.0];
  [fromCopy setMasksToBounds:0];
}

- (id)p_pathForRoundedCornerMaskWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if ([(CRLMovieRep *)self p_cornerRadiusValueIsSignificant])
  {
    movieItem = [(CRLMovieRep *)self movieItem];
    [movieItem cornerRadius];
    v10 = [CRLBezierPath bezierPathWithContinuousCornerRoundedRect:x cornerRadius:y, width, height, v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)drawLayer:(id)layer inContext:(CGContext *)context
{
  layerCopy = layer;
  layer = [(CRLCanvasRenderable *)self->_playerStrokeRenderable layer];

  if (layer == layerCopy)
  {
    [(CRLMovieRep *)self p_drawStrokeInContext:context];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CRLMovieRep;
    [(CRLMovieRep *)&v8 drawLayer:layerCopy inContext:context];
  }
}

- (id)p_shapeRenderableForPlayerStroke
{
  v3 = objc_opt_class();
  playerStrokeRenderable = self->_playerStrokeRenderable;

  return sub_100014370(v3, playerStrokeRenderable);
}

- (void)p_setupTilingPlayerStrokeRenderable
{
  if (!self->_playerStrokeRenderable)
  {
    v3 = +[CRLTilingRenderable renderable];
    playerStrokeRenderable = self->_playerStrokeRenderable;
    self->_playerStrokeRenderable = v3;
    v5 = v3;

    [(CRLCanvasRenderable *)v5 setDelegate:self];
    [(CRLCanvasRenderable *)v5 setNeedsDisplay];
  }
}

- (void)p_setupShapePlayerStrokeRenderable
{
  if (!self->_playerStrokeRenderable)
  {
    v3 = +[CRLCanvasShapeRenderable renderable];
    playerStrokeRenderable = self->_playerStrokeRenderable;
    self->_playerStrokeRenderable = v3;
    v5 = v3;

    [(CRLCanvasRenderable *)v5 setDelegate:self];
    [(CRLCanvasRenderable *)v5 setFillColor:0];
  }
}

- (BOOL)p_needsTilingForStroke:(id)stroke
{
  strokeCopy = stroke;
  if ([(CRLCanvasRep *)self isBeingResized])
  {
    isKindOfClass = 0;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)p_setupPlayerStrokeRenderables:(BOOL)renderables
{
  if (renderables)
  {
    [(CRLMovieRep *)self p_setupTilingPlayerStrokeRenderable];
  }

  else
  {
    [(CRLMovieRep *)self p_setupShapePlayerStrokeRenderable];
  }
}

- (void)p_checkAndSyncTilingState:(BOOL)state
{
  stateCopy = state;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != stateCopy)
  {

    [(CRLMovieRep *)self p_disposeStrokeRenderable];
  }
}

- (void)p_setupStrokeRenderables:(BOOL)renderables
{
  renderablesCopy = renderables;
  [(CRLMovieRep *)self p_checkAndSyncTilingState:?];

  [(CRLMovieRep *)self p_setupPlayerStrokeRenderables:renderablesCopy];
}

- (void)p_commonDrawStrokeInContext:(CGContext *)context
{
  CGContextSaveGState(context);
  canvas = [(CRLCanvasRep *)self canvas];
  [canvas viewScale];
  v7 = v6;

  CGContextScaleCTM(context, v7, v7);
  [(CRLMovieRep *)self p_drawInContext:context withContent:0 withStroke:1 withOpacity:0 forShadowOrHitTest:0.0];

  CGContextRestoreGState(context);
}

- (CGRect)p_strokeFrameForRenderableFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  layout = [(CRLCanvasRep *)self layout];
  stroke = [layout stroke];

  canvas = [(CRLCanvasRep *)self canvas];
  [canvas viewScale];
  v12 = v11;

  [stroke renderedWidth];
  v14 = v12 * (v13 * -0.5);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  CGRectInset(v26, v14, v14);
  v15 = sub_10011ECB4();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (void)p_arrangeRenderableVisibility:(id)visibility
{
  visibilityCopy = visibility;
  if (self->_playerLayerShouldBeDisplayed && !self->_needsTeardownPlayerController)
  {
    [(CRLCanvasRenderable *)self->_playerRenderable setHidden:0];
    [(CRLCanvasRenderable *)visibilityCopy setHidden:1];
    playerRenderable = self->_playerRenderable;
  }

  else
  {
    [(CRLCanvasRenderable *)visibilityCopy setHidden:0];
    [(CRLCanvasRenderable *)self->_playerRenderable setHidden:1];
    playerRenderable = visibilityCopy;
  }

  v5 = playerRenderable;
  if (![(CRLCanvasRenderable *)v5 isEqual:self->_renderableToStroke])
  {
    [(CRLMovieRep *)self p_disposeStrokeRenderable];
    objc_storeStrong(&self->_renderableToStroke, playerRenderable);
  }
}

- (void)willUpdateRenderable:(id)renderable
{
  v7.receiver = self;
  v7.super_class = CRLMovieRep;
  renderableCopy = renderable;
  [(CRLCanvasRep *)&v7 willUpdateRenderable:renderableCopy];
  v5 = [(CRLCanvasRep *)self layout:v7.receiver];
  stroke = [v5 stroke];

  [(CRLMovieRep *)self p_arrangeRenderableVisibility:renderableCopy];
  if ([(CRLMediaRep *)self i_shouldRenderStroke:stroke])
  {
    [(CRLMovieRep *)self p_setupStrokeRenderables:[(CRLMovieRep *)self p_needsTilingForStroke:stroke]];
  }

  else
  {
    [(CRLMovieRep *)self p_disposeStrokeRenderable];
  }
}

- (void)didUpdateRenderable:(id)renderable
{
  renderableCopy = renderable;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100185D40;
  v38[3] = &unk_10183AB38;
  v38[4] = self;
  v5 = objc_retainBlock(v38);
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [CATransaction setCompletionBlock:v5];
  v37.receiver = self;
  v37.super_class = CRLMovieRep;
  [(CRLCanvasRep *)&v37 didUpdateRenderable:renderableCopy];
  [(CRLCanvasRenderable *)renderableCopy crl_ignoreAccessibilityInvertColorsIfNeeded];
  [(CRLStyledRep *)self opacity];
  v7 = v6;
  if ([(CRLMovieRep *)self shouldShowLoadingUI]&& ![(CRLMovieRep *)self directlyManagesLayerContent])
  {
    v7 = 1.0;
  }

  [(CRLCanvasRenderable *)renderableCopy opacity];
  v9 = v8;
  if (v7 != v9)
  {
    *&v9 = v7;
    [(CRLCanvasRenderable *)renderableCopy setOpacity:v9];
  }

  playerRenderable = self->_playerRenderable;
  if (playerRenderable)
  {
    [(CRLCanvasRenderable *)playerRenderable opacity];
    v12 = v11;
    if (v7 != v12)
    {
      *&v12 = v7;
      [(CRLCanvasRenderable *)self->_playerRenderable setOpacity:v12];
    }
  }

  layout = [(CRLCanvasRep *)self layout];
  stroke = [layout stroke];

  if ([(CRLMediaRep *)self i_shouldRenderStroke:stroke])
  {
    v15 = renderableCopy;
    if (self->_playerLayerShouldBeDisplayed)
    {
      v15 = self->_playerRenderable;
    }

    [(CRLMovieRep *)self p_updateStrokeRenderablesForStroke:stroke repRenderable:v15];
  }

  [(CRLMediaRep *)self updateSpatialLabel];
  if ([(CRLMovieRep *)self directlyManagesLayerContent])
  {
    p_posterImageProvider = [(CRLMovieRep *)self p_posterImageProvider];
    if (p_posterImageProvider)
    {
      v31 = 0;
      v32 = &v31;
      v33 = 0x3010000000;
      v35 = 0;
      v36 = 0;
      v34 = &unk_1016A8115;
      canvas = [(CRLCanvasRep *)self canvas];
      layout2 = [(CRLCanvasRep *)self layout];
      geometry = [layout2 geometry];
      [geometry size];
      [canvas convertUnscaledToBoundsSize:?];
      v35 = v20;
      v36 = v21;

      v22 = [p_posterImageProvider cachedCGImageOfNearestSizeOrNULLPreferringSize:renderableCopy withContentsScaleProvider:{v32[4], v32[5]}];
      if (v22)
      {
        [(CRLCanvasRenderable *)renderableCopy setContents:v22];
      }

      else
      {
        -[CRLCanvasRenderable setContents:](renderableCopy, "setContents:", [p_posterImageProvider CGImageOfAnySize]);
      }

      v23 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100185D48;
      block[3] = &unk_101842C68;
      v27 = p_posterImageProvider;
      v30 = &v31;
      v24 = renderableCopy;
      v28 = v24;
      selfCopy = self;
      dispatch_async(v23, block);

      layer = [(CRLCanvasRenderable *)v24 layer];
      [(CRLMovieRep *)self p_applyRoundedCornersTo:layer];

      _Block_object_dispose(&v31, 8);
    }
  }

  +[CATransaction commit];
}

- (BOOL)shouldDisplayAsSpatial
{
  movieItem = [(CRLMovieRep *)self movieItem];
  if ([movieItem isSpatial])
  {
    v4 = ![(CRLMovieRep *)self isPlaying];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)p_setPositionAndBoundsIfDifferent:(id)different position:(CGPoint)position bounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v9 = position.y;
  v10 = position.x;
  differentCopy = different;
  [differentCopy position];
  if (v12 != v10 || v11 != v9)
  {
    [differentCopy setPosition:{v10, v9}];
  }

  [differentCopy bounds];
  v21.origin.x = v14;
  v21.origin.y = v15;
  v21.size.width = v16;
  v21.size.height = v17;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  if (!CGRectEqualToRect(v20, v21))
  {
    [differentCopy setBounds:{x, y, width, height}];
  }
}

- (void)updateRenderableGeometryFromLayout:(id)layout
{
  layoutCopy = layout;
  if ([(CRLMovieRep *)self directlyManagesLayerContent])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    movieLayout = [(CRLMovieRep *)self movieLayout];
    pureGeometry = [movieLayout pureGeometry];
    [(CRLCanvasRep *)self computeDirectLayerFrame:&v14 andTransform:&v11 basedOnLayoutGeometry:pureGeometry];
    [(CRLCanvasRep *)self antiAliasDefeatLayerTransform:&v11 forFrame:v14, v15];
    v8 = v11;
    v9 = v12;
    v10 = v13;
    [layoutCopy setIfDifferentFrame:&v8 orTransform:{v14, v15}];
    if (self->_playerRenderable)
    {
      +[CATransaction begin];
      [CATransaction setDisableActions:1];
      playerRenderable = self->_playerRenderable;
      v8 = v11;
      v9 = v12;
      v10 = v13;
      [(CRLCanvasRenderable *)playerRenderable setIfDifferentFrame:&v8 orTransform:v14, v15];
      +[CATransaction commit];
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = CRLMovieRep;
    [(CRLCanvasRep *)&v16 updateRenderableGeometryFromLayout:layoutCopy];
  }
}

- (void)p_applyBasicStroke:(id)stroke toRenderable:(id)renderable bounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  renderableCopy = renderable;
  strokeCopy = stroke;
  canvas = [(CRLCanvasRep *)self canvas];
  [canvas viewScale];
  v15 = v14;

  [renderableCopy setBounds:{x, y, width, height}];
  [strokeCopy applyToShapeRenderable:renderableCopy withScale:v15];

  Mutable = CGPathCreateMutable();
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  CGPathAddRect(Mutable, 0, v18);
  [renderableCopy setHidden:0];
  [renderableCopy setPath:Mutable];

  CGPathRelease(Mutable);
}

- (void)p_updateStrokeRenderablesForStroke:(id)stroke repRenderable:(id)renderable
{
  strokeCopy = stroke;
  p_playerStrokeRenderable = [(CRLMovieRep *)self p_playerStrokeRenderable];
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  v7 = [(CRLMovieRep *)self p_needsTilingForStroke:strokeCopy];
  v35 = 0u;
  memset(&v36, 0, sizeof(v36));
  v34 = 0u;
  layout = [(CRLCanvasRep *)self layout];
  pureGeometry = [layout pureGeometry];
  [(CRLCanvasRep *)self computeDirectLayerFrame:&v34 andTransform:&v36 basedOnLayoutGeometry:pureGeometry];

  v10 = v35;
  v11 = sub_10011ECB4();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = sub_100120414(*&v34, *(&v34 + 1), *&v10, *(&v10 + 1));
  v20 = v19;
  [p_playerStrokeRenderable position];
  if (v22 == v18 && v21 == v20)
  {
    if (p_playerStrokeRenderable)
    {
LABEL_4:
      [p_playerStrokeRenderable affineTransform];
      goto LABEL_7;
    }
  }

  else
  {
    [p_playerStrokeRenderable setPosition:{v18, v20}];
    if (p_playerStrokeRenderable)
    {
      goto LABEL_4;
    }
  }

  memset(&t1, 0, sizeof(t1));
LABEL_7:
  v32 = v36;
  if (!CGAffineTransformEqualToTransform(&t1, &v32))
  {
    t1 = v36;
    [p_playerStrokeRenderable setAffineTransform:&t1];
  }

  [(CRLStyledRep *)self opacity];
  v24 = v23;
  [p_playerStrokeRenderable opacity];
  v26 = v25;
  if (v24 != v26)
  {
    *&v26 = v24;
    [p_playerStrokeRenderable setOpacity:v26];
  }

  [(CRLMovieRep *)self p_strokeFrameForRenderableFrame:v11, v13, v15, v17];
  [(CRLMovieRep *)self p_setPositionAndBoundsIfDifferent:p_playerStrokeRenderable position:v18 bounds:v20, v27, v28, v29, v30];
  if ((v7 & 1) == 0)
  {
    p_shapeRenderableForPlayerStroke = [(CRLMovieRep *)self p_shapeRenderableForPlayerStroke];
    [(CRLMovieRep *)self p_applyBasicStroke:strokeCopy toRenderable:p_shapeRenderableForPlayerStroke bounds:v11, v13, v15, v17];
  }

  +[CATransaction commit];
}

- (void)processChangedProperty:(unint64_t)property
{
  v8.receiver = self;
  v8.super_class = CRLMovieRep;
  [(CRLMediaRep *)&v8 processChangedProperty:?];
  if (property <= 44)
  {
    if (property <= 18)
    {
      if (property == 16)
      {
        [(CRLMovieRep *)self p_disposeStrokeRenderable];
      }

      else if (property != 17)
      {
        return;
      }

      goto LABEL_22;
    }

    if (property == 19)
    {
      [(CRLMovieRep *)self p_setNeedsTeardownPlayerControllerOnUpdateRenderable];
      canvas = [(CRLCanvasRep *)self canvas];
      [canvas invalidateContentLayersForRep:self];

      [(CRLMovieRep *)self p_listenForAssetChangesIfAppropriate];
      [(CRLMovieRep *)self p_stopUpdatingUIStateForMoviePlayability];
      [(CRLMovieRep *)self p_updateUIStateForMoviePlayability];
      [(CRLMovieRep *)self p_updatePlayButtonVisibility];
    }

    else if (property == 44)
    {
      [(CRLMovieRep *)self setNeedsDisplay];
      canvas2 = [(CRLCanvasRep *)self canvas];
      [canvas2 invalidateContentLayersForRep:self];

      [(CRLMovieRep *)self p_updatePlayButtonVisibility];
      [(CRLMovieRep *)self p_listenForAssetChangesIfAppropriate];
    }
  }

  else
  {
    if (property > 47)
    {
      if (property == 48)
      {
        [(CRLMovieRep *)self p_updateVolume];
        return;
      }

      if (property != 49)
      {
        if (property == 56)
        {
          [(CRLMovieRep *)self p_startOrStopLoopingStickerIfNecessary];
          [(CRLMovieRep *)self p_updateLoopingSettingForMoviePlaybackIfNeeded];
        }

        return;
      }

      [(CRLMovieRep *)self p_updateRoundedCornersForPlayerRenderableIfNeeded];
      canvas3 = [(CRLCanvasRep *)self canvas];
      [canvas3 invalidateContentLayersForRep:self];

LABEL_22:
      [(CRLMovieRep *)self setNeedsDisplay];
      return;
    }

    if (property == 45)
    {
      [(CRLMovieRep *)self p_updateStartTime];
    }

    else if (property == 46)
    {
      [(CRLMovieRep *)self p_updateEndTime];
    }
  }
}

- (void)becameSelected
{
  v7.receiver = self;
  v7.super_class = CRLMovieRep;
  [(CRLCanvasRep *)&v7 becameSelected];
  if ([(CRLMovieRep *)self p_shouldPlayerControllerExistThroughoutSelection])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    v4 = sub_100186750;
    v5 = &unk_10183AB38;
    selfCopy = self;
    if (+[NSThread isMainThread])
    {
      v4(block);
    }

    else
    {
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  else
  {
    [(CRLMovieRep *)self p_updatePlayButtonVisibility];
  }
}

- (void)becameNotSelected
{
  if ([(CRLMovieRep *)self p_shouldStopPlayingWhenDeselected])
  {
    [(CRLMovieRep *)self p_setNeedsTeardownPlayerControllerOnUpdateRenderable];
    [(CRLMovieRep *)self p_updatePlayButtonVisibility];
  }

  v3.receiver = self;
  v3.super_class = CRLMovieRep;
  [(CRLCanvasRep *)&v3 becameNotSelected];
}

- (void)screenScaleDidChange
{
  playButtonKnob = self->_playButtonKnob;
  self->_playButtonKnob = 0;

  v4.receiver = self;
  v4.super_class = CRLMovieRep;
  [(CRLCanvasRep *)&v4 screenScaleDidChange];
}

- (BOOL)manuallyControlsMiniFormatter
{
  if (!self->_isPlayable || ![(CRLMovieRep *)self p_playButtonFitsInFrame])
  {
    return 0;
  }

  return [(CRLMovieRep *)self isPlaying];
}

- (id)p_selectionPath
{
  isSelected = [(CRLCanvasRep *)self isSelected];
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  v5 = interactiveCanvasController;
  if (isSelected)
  {
    editorController = [interactiveCanvasController editorController];
    selectionPath = [editorController selectionPath];
  }

  else
  {
    editorController = [interactiveCanvasController canvasEditor];
    movieItem = [(CRLMovieRep *)self movieItem];
    selectionPath = [editorController selectionPathWithInfo:movieItem];
  }

  return selectionPath;
}

- (void)toggleMiniFormatter
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  layerHost = [interactiveCanvasController layerHost];
  miniFormatterPresenter = [layerHost miniFormatterPresenter];
  isPresentingMiniFormatter = [miniFormatterPresenter isPresentingMiniFormatter];

  if (isPresentingMiniFormatter)
  {

    [(CRLMovieRep *)self p_hideMiniFormatter];
  }

  else
  {

    [(CRLMovieRep *)self p_showMiniFormatter];
  }
}

- (void)p_showMiniFormatter
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  if (([interactiveCanvasController documentIsSharedReadOnly] & 1) == 0)
  {
    layerHost = [interactiveCanvasController layerHost];
    miniFormatterPresenter = [layerHost miniFormatterPresenter];
    p_selectionPath = [(CRLMovieRep *)self p_selectionPath];
    [miniFormatterPresenter presentMiniFormatterForSelectionPath:p_selectionPath];
  }
}

- (void)p_hideMiniFormatter
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  layerHost = [interactiveCanvasController layerHost];
  miniFormatterPresenter = [layerHost miniFormatterPresenter];
  [miniFormatterPresenter dismissMiniFormatterForRep:self];
}

- (BOOL)p_isMiniFormatterShowing
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  layerHost = [interactiveCanvasController layerHost];
  miniFormatterPresenter = [layerHost miniFormatterPresenter];
  isPresentingMiniFormatter = [miniFormatterPresenter isPresentingMiniFormatter];

  return isPresentingMiniFormatter;
}

- (BOOL)p_miniFormatterIsPresentingSecondLayer
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  layerHost = [interactiveCanvasController layerHost];
  miniFormatterPresenter = [layerHost miniFormatterPresenter];
  isPresentingSecondLayerPopover = [miniFormatterPresenter isPresentingSecondLayerPopover];

  return isPresentingSecondLayerPopover;
}

- (BOOL)noKnobTogglePlayAndMiniFormatter
{
  if (!self->_isPlayable)
  {
    return 0;
  }

  if ([(CRLMovieRep *)self p_playButtonFitsInFrame])
  {
    return 0;
  }

  if ([(CRLCanvasRep *)self isSelected])
  {
    [(CRLMovieRep *)self i_togglePlayPauseTriggeredFromKnob];
  }

  return 1;
}

- (id)pauseButtonImage
{
  v3 = [CRLImage imageWithSystemImageNamed:@"pause.fill" pointSize:22.0];
  v4 = +[CRLColor whiteColor];
  v5 = [v3 compositedImageWithColor:v4 alpha:20 blendMode:1.0];

  [(CRLMovieRep *)self p_positionPauseButtonImage];

  return v5;
}

- (void)p_addPlayButtonToKnobs:(id)knobs
{
  knobsCopy = knobs;
  p_playButtonKnob = [(CRLMovieRep *)self p_playButtonKnob];
  [knobsCopy crl_addObjects:{p_playButtonKnob, 0}];

  [(CRLMovieRep *)self p_updateUIStateForMoviePlayability];
  [(CRLMovieRep *)self p_updatePlayButtonVisibility];
}

- (void)addKnobsToArray:(id)array
{
  v5.receiver = self;
  v5.super_class = CRLMovieRep;
  arrayCopy = array;
  [(CRLCanvasRep *)&v5 addKnobsToArray:arrayCopy];
  [(CRLMovieRep *)self p_addPlayButtonToKnobs:arrayCopy, v5.receiver, v5.super_class];
}

- (unint64_t)enabledKnobMask
{
  v5.receiver = self;
  v5.super_class = CRLMovieRep;
  enabledKnobMask = [(CRLCanvasRep *)&v5 enabledKnobMask];
  if ([(CRLCanvasRep *)self shouldCreateKnobs]&& [(CRLCanvasRep *)self isSelected]&& ![(CRLMovieRep *)self p_playButtonFitsInFrame])
  {
    return enabledKnobMask & 0x28A;
  }

  return enabledKnobMask;
}

- (id)newTrackerForKnob:(id)knob
{
  knobCopy = knob;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[CRLCanvasButtonKnobTracker alloc] initWithRep:self knob:knobCopy];
    [(CRLCanvasButtonKnobTracker *)v5 setTarget:self];
    p_playButtonKnob = [(CRLMovieRep *)self p_playButtonKnob];

    if (p_playButtonKnob == knobCopy)
    {
      [(CRLCanvasButtonKnobTracker *)v5 setAction:"i_togglePlayPauseTriggeredFromKnob"];
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CRLMovieRep;
    v5 = [(CRLCanvasRep *)&v8 newTrackerForKnob:knobCopy];
  }

  return v5;
}

- (void)p_showControls
{
  movieItem = [(CRLMovieRep *)self movieItem];
  posterImageAssetPayload = [movieItem posterImageAssetPayload];
  needsDownload = [posterImageAssetPayload needsDownload];

  if ([(CRLMovieRep *)self p_playButtonFitsInFrame]&& (needsDownload & 1) == 0 && ![(CRLMovieRep *)self p_isLoopingSticker])
  {
    p_playButtonKnob = [(CRLMovieRep *)self p_playButtonKnob];
    [p_playButtonKnob setHidden:0];

    p_playButtonKnob2 = [(CRLMovieRep *)self p_playButtonKnob];
    renderable = [p_playButtonKnob2 renderable];
    [renderable removeAnimationForKey:@"hidden"];

    v14 = [CABasicAnimation animationWithKeyPath:@"opacity"];
    v9 = [NSNumber numberWithFloat:0.0];
    [v14 setFromValue:v9];

    LODWORD(v10) = 1.0;
    v11 = [NSNumber numberWithFloat:v10];
    [v14 setToValue:v11];

    [v14 setDuration:0.2];
    p_playButtonKnob3 = [(CRLMovieRep *)self p_playButtonKnob];
    renderable2 = [p_playButtonKnob3 renderable];
    [renderable2 addAnimation:v14 forKey:@"hidden"];
  }
}

- (void)i_hidePlayButtonIndependently
{
  p_playButtonKnob = [(CRLMovieRep *)self p_playButtonKnob];
  [p_playButtonKnob setHidden:1];

  p_playButtonKnob2 = [(CRLMovieRep *)self p_playButtonKnob];
  renderable = [p_playButtonKnob2 renderable];
  [renderable removeAnimationForKey:@"hidden"];

  v11 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  LODWORD(v6) = 1.0;
  v7 = [NSNumber numberWithFloat:v6];
  [v11 setFromValue:v7];

  v8 = [NSNumber numberWithFloat:0.0];
  [v11 setToValue:v8];

  [v11 setDuration:0.2];
  p_playButtonKnob3 = [(CRLMovieRep *)self p_playButtonKnob];
  renderable2 = [p_playButtonKnob3 renderable];
  [renderable2 addAnimation:v11 forKey:@"hidden"];
}

- (void)p_hideControls
{
  [(CRLMovieRep *)self i_hidePlayButtonIndependently];
  if (![(CRLMovieRep *)self p_miniFormatterIsPresentingSecondLayer]&& [(CRLMovieRep *)self manuallyControlsMiniFormatter])
  {

    [(CRLMovieRep *)self p_hideMiniFormatter];
  }
}

- (void)toggleShowingControls
{
  if ([(CRLMovieRep *)self p_isPresentingMiniFormatterOrPlayButtonVisible])
  {

    [(CRLMovieRep *)self p_hideControls];
  }

  else
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    canvasEditor = [interactiveCanvasController canvasEditor];
    movieItem = [(CRLMovieRep *)self movieItem];
    v5 = [canvasEditor selectionPathWithInfo:movieItem];
    editorController = [interactiveCanvasController editorController];
    [editorController setSelectionPath:v5];

    [(CRLMovieRep *)self p_invalidateHideControlsTimeoutTimer];
    [(CRLMovieRep *)self p_showControls];
    [(CRLMovieRep *)self p_showMiniFormatter];
  }
}

- (void)p_invalidateHideControlsTimeoutTimer
{
  [(NSTimer *)self->_hideControlsTimeoutTimer invalidate];
  hideControlsTimeoutTimer = self->_hideControlsTimeoutTimer;
  self->_hideControlsTimeoutTimer = 0;
}

- (void)p_hideControlsWithDelay:(double)delay
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  freehandDrawingToolkit = [interactiveCanvasController freehandDrawingToolkit];
  isLassoSelectionForMixedTypeEnabledInDrawingMode = [freehandDrawingToolkit isLassoSelectionForMixedTypeEnabledInDrawingMode];

  if (!self->_hideControlsTimeoutTimer && (isLassoSelectionForMixedTypeEnabledInDrawingMode & 1) == 0)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100187430;
    v10[3] = &unk_101842CB0;
    v10[4] = self;
    v8 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v10 block:delay];
    hideControlsTimeoutTimer = self->_hideControlsTimeoutTimer;
    self->_hideControlsTimeoutTimer = v8;
  }
}

- (BOOL)p_isPresentingMiniFormatterOrPlayButtonVisible
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  layerHost = [interactiveCanvasController layerHost];
  miniFormatterPresenter = [layerHost miniFormatterPresenter];
  isPresentingMiniFormatter = [miniFormatterPresenter isPresentingMiniFormatter];

  return isPresentingMiniFormatter;
}

- (BOOL)p_isMovieKnob:(id)knob
{
  knobCopy = knob;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)directlyManagesVisibilityOfKnob:(id)knob
{
  knobCopy = knob;
  if ([(CRLMovieRep *)self p_isMovieKnob:knobCopy])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CRLMovieRep;
    v5 = [(CRLCanvasRep *)&v7 directlyManagesVisibilityOfKnob:knobCopy];
  }

  return v5;
}

- (void)handleFadeOutForZoom
{
  [(CRLMovieRep *)self i_hidePlayButtonIndependently];
  v3.receiver = self;
  v3.super_class = CRLMovieRep;
  [(CRLMediaRep *)&v3 handleFadeOutForZoom];
}

- (void)handleFadeInForZoom
{
  [(CRLMovieRep *)self p_updatePlayButtonVisibility];
  v3.receiver = self;
  v3.super_class = CRLMovieRep;
  [(CRLMediaRep *)&v3 handleFadeInForZoom];
}

- (void)didEndZooming
{
  layer = [(CRLCanvasRenderable *)self->_playerRenderable layer];
  [(CRLMovieRep *)self p_applyRoundedCornersTo:layer];
}

- (BOOL)canUseSpecializedHitRegionForKnob:(id)knob
{
  knobCopy = knob;
  if ([(CRLMovieRep *)self p_isMovieKnob:knobCopy])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CRLMovieRep;
    v5 = [(CRLCanvasRep *)&v7 canUseSpecializedHitRegionForKnob:knobCopy];
  }

  return v5;
}

- (CGPoint)positionOfPlayKnobForBounds:(CGRect)bounds viewScale:(double)scale
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  MinX = CGRectGetMinX(bounds);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  MaxY = CGRectGetMaxY(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  MaxX = CGRectGetMaxX(v19);
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v12 = CGRectGetMaxY(v20);
  v13 = sub_1004A48FC();
  v14 = MaxX - 36.0 / scale;
  if (v13)
  {
    v15 = MaxY;
  }

  else
  {
    v15 = v12;
  }

  if (v13)
  {
    v14 = 36.0 / scale + MinX;
  }

  v16 = v15 - 36.0 / scale;
  result.y = v16;
  result.x = v14;
  return result;
}

- (CGPoint)positionOfStandardKnob:(id)knob forBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v21.receiver = self;
  v21.super_class = CRLMovieRep;
  knobCopy = knob;
  [(CRLCanvasRep *)&v21 positionOfStandardKnob:knobCopy forBounds:x, y, width, height];
  v11 = v10;
  v13 = v12;
  v14 = [(CRLMovieRep *)self p_playButtonKnob:v21.receiver];

  if (v14 == knobCopy)
  {
    if (![(CRLMovieRep *)self p_playButtonFitsInFrame])
    {
      [(CRLMovieRep *)self p_updatePlayButtonVisibility];
    }

    canvas = [(CRLCanvasRep *)self canvas];
    [canvas viewScale];
    [(CRLMovieRep *)self positionOfPlayKnobForBounds:x viewScale:y, width, height, v16];
    v11 = v17;
    v13 = v18;
  }

  v19 = v11;
  v20 = v13;
  result.y = v20;
  result.x = v19;
  return result;
}

- (void)documentEditabilityDidChange
{
  v5.receiver = self;
  v5.super_class = CRLMovieRep;
  [(CRLCanvasRep *)&v5 documentEditabilityDidChange];
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  editingDisabled = [interactiveCanvasController editingDisabled];

  if (editingDisabled)
  {
    [(CRLMovieRep *)self p_teardownPlayerController];
  }

  [(CRLMovieRep *)self p_updatePlayButtonVisibility];
}

- (id)playButtonImage
{
  v3 = [CRLImage imageWithSystemImageNamed:@"play.fill" pointSize:22.0];
  v4 = +[CRLColor whiteColor];
  v5 = [v3 compositedImageWithColor:v4 alpha:20 blendMode:1.0];

  [(CRLMovieRep *)self p_positionPlayButtonImage];

  return v5;
}

- (id)p_playButtonKnob
{
  playButtonKnob = self->_playButtonKnob;
  if (!playButtonKnob)
  {
    v4 = [CRLMovieKnob alloc];
    playButtonImage = [(CRLMovieRep *)self playButtonImage];
    v6 = +[CRLMovieRep CRLMovieButtonFillColor];
    v7 = [(CRLMovieKnob *)v4 initWithImage:playButtonImage radius:v6 backgroundColor:self onRep:24.0];
    v8 = self->_playButtonKnob;
    self->_playButtonKnob = v7;

    if (!self->_isPlayable)
    {
      [(CRLCanvasButtonKnob *)self->_playButtonKnob setEnabled:0];
    }

    [(CRLMovieRep *)self p_positionPlayButtonImage];
    [(CRLMovieKnob *)self->_playButtonKnob setHidden:0];
    playButtonKnob = self->_playButtonKnob;
  }

  return playButtonKnob;
}

- (void)p_usePauseButtonKnobImage
{
  if (!self->_playButtonShowingPause)
  {
    self->_playButtonShowingPause = 1;
    pauseButtonImage = [(CRLMovieRep *)self pauseButtonImage];
    p_playButtonKnob = [(CRLMovieRep *)self p_playButtonKnob];
    [p_playButtonKnob setImage:pauseButtonImage];
  }
}

- (void)p_usePlayButtonKnobImage
{
  if (self->_playButtonShowingPause)
  {
    self->_playButtonShowingPause = 0;
    playButtonImage = [(CRLMovieRep *)self playButtonImage];
    p_playButtonKnob = [(CRLMovieRep *)self p_playButtonKnob];
    [p_playButtonKnob setImage:playButtonImage];
  }
}

- (void)p_hidePlayPauseButtonKnob
{
  p_playButtonKnob = [(CRLMovieRep *)self p_playButtonKnob];
  [p_playButtonKnob setHidden:1];
}

- (void)p_updateUsePlayPauseButtonToMatchIsPlaying:(BOOL)playing
{
  playingCopy = playing;
  if ([(CRLMovieRep *)self p_isLoopingSticker])
  {

    [(CRLMovieRep *)self p_hidePlayPauseButtonKnob];
  }

  else if (playingCopy)
  {

    [(CRLMovieRep *)self p_usePauseButtonKnobImage];
  }

  else
  {

    [(CRLMovieRep *)self p_usePlayButtonKnobImage];
  }
}

- (void)p_positionPlayButtonImage
{
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  renderable = [(CRLCanvasKnob *)self->_playButtonKnob renderable];
  [renderable bounds];
  v8 = sub_100120414(v4, v5, v6, v7);
  v10 = v9;

  imageRenderable = [(CRLCanvasButtonKnob *)self->_playButtonKnob imageRenderable];
  [imageRenderable setPosition:{v8 + 2.88, v10}];

  +[CATransaction commit];
}

- (void)p_positionPauseButtonImage
{
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  renderable = [(CRLCanvasKnob *)self->_playButtonKnob renderable];
  [renderable bounds];
  v8 = sub_100120414(v4, v5, v6, v7);
  v10 = v9;
  imageRenderable = [(CRLCanvasButtonKnob *)self->_playButtonKnob imageRenderable];
  [imageRenderable setPosition:{v8, v10}];

  +[CATransaction commit];
}

- (void)p_updateUIStateForMoviePlayability
{
  if (!self->_didCheckPlayability && !self->_assetForPlayability)
  {
    movieItem = [(CRLMovieRep *)self movieItem];
    movieAssetPayload = [movieItem movieAssetPayload];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100188138;
    v15[3] = &unk_10183AB38;
    v15[4] = self;
    v5 = objc_retainBlock(v15);
    if (movieAssetPayload)
    {
      if ([movieAssetPayload needsDownload])
      {
        self->_isPlayable = 0;
        self->_didCheckPlayability = 1;
      }

      else
      {
        type = [movieAssetPayload type];
        identifier = [type identifier];
        v8 = [CRLAnimatedGIFController canInitWithDataType:identifier];

        if (!v8)
        {
          v9 = [movieAssetPayload AVAssetAndReturnError:0];
          self->_didCheckPlayability = 1;
          objc_storeStrong(&self->_assetForPlayability, v9);
          self->_isPlayable = 0;
          v10 = qword_101A34788;
          v12[0] = _NSConcreteStackBlock;
          v12[1] = 3221225472;
          v12[2] = sub_100188288;
          v12[3] = &unk_101842CD8;
          v12[4] = self;
          v13 = v9;
          v14 = v5;
          v11 = v9;
          [v10 performAsync:v12];

          goto LABEL_10;
        }

        self->_didCheckPlayability = 1;
        self->_isPlayable = [movieAssetPayload needsDownload] ^ 1;
      }

      (v5[2])(v5);
    }

LABEL_10:
  }
}

- (void)p_stopUpdatingUIStateForMoviePlayability
{
  [(AVAsset *)self->_assetForPlayability cancelLoading];
  assetForPlayability = self->_assetForPlayability;
  self->_assetForPlayability = 0;

  self->_didCheckPlayability = 0;
}

- (BOOL)p_playButtonFitsInFrame
{
  canvas = [(CRLCanvasRep *)self canvas];
  if ([canvas isCanvasInteractive])
  {
    canvas2 = [(CRLCanvasRep *)self canvas];
    [(CRLCanvasRep *)self naturalBounds];
    [canvas2 convertUnscaledToBoundsSize:{v5, v6}];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    [(CRLCanvasRep *)self naturalBounds];
    v8 = v11;
    v10 = v12;
  }

  return v10 >= 72.0 && v8 >= 72.0;
}

- (void)p_updatePlayButtonVisibility
{
  canvas = [(CRLCanvasRep *)self canvas];
  if ([canvas isCanvasInteractive])
  {
    didCancelUpdatingPlayButtonVisibility = self->_didCancelUpdatingPlayButtonVisibility;

    if (didCancelUpdatingPlayButtonVisibility)
    {
      return;
    }

    canvas = [(CRLCanvasRep *)self interactiveCanvasController];
    editorController = [canvas editorController];
    selectionPath = [editorController selectionPath];
    v6 = [canvas modelsForSelectionPath:selectionPath];

    movieItem = [(CRLMovieRep *)self movieItem];
    if ([v6 count] == 1)
    {
      anyObject = [v6 anyObject];
    }

    else
    {
      anyObject = 0;
    }

    p_playButtonFitsInFrame = [(CRLMovieRep *)self p_playButtonFitsInFrame];
    if ([(CRLMovieRep *)self p_isLoopingSticker])
    {
      if ([canvas editingDisabled])
      {
        v8 = ![(CRLMovieRep *)self p_shouldAllowPlaybackWhenEditingDisabled];
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = 0;
    }

    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    layerHost = [interactiveCanvasController layerHost];
    asiOSCVC = [layerHost asiOSCVC];
    isCurrentlyInQuickSelectMode = [asiOSCVC isCurrentlyInQuickSelectMode];

    v12 = objc_opt_class();
    interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
    layerHost2 = [interactiveCanvasController2 layerHost];
    v15 = sub_100014370(v12, layerHost2);

    delegate = [v15 delegate];
    if (objc_opt_respondsToSelector())
    {
      v17 = [delegate allowsMoviePlayButton] ^ 1;
    }

    else
    {
      v17 = 0;
    }

    editingCoordinator = [canvas editingCoordinator];
    followCoordinator = [editingCoordinator followCoordinator];
    isFollowing = [followCoordinator isFollowing];

    v21 = 0;
    if ((v8 | isCurrentlyInQuickSelectMode) & 1) != 0 || (v17)
    {
      goto LABEL_21;
    }

    if (self->_didCheckPlayability)
    {
      v21 = 0;
      if ([(CRLMovieRep *)self isPlaying]|| ((p_playButtonFitsInFrame ^ 1) & 1) != 0)
      {
        goto LABEL_21;
      }

      if (!self->_isChangingDynamicVisibleTimeCount)
      {
        repForSelecting = [(CRLCanvasRep *)self repForSelecting];
        if (repForSelecting == self)
        {
          v21 = 1;
        }

        else
        {
          repForSelecting2 = [(CRLCanvasRep *)self repForSelecting];
          v21 = (repForSelecting2 == 0) & isFollowing;
        }

        goto LABEL_21;
      }
    }

    v21 = 0;
LABEL_21:
    p_playButtonKnob = [(CRLMovieRep *)self p_playButtonKnob];
    isHidden = [p_playButtonKnob isHidden];

    if (v21 == isHidden)
    {
      [(CRLMovieRep *)self p_updateUsePlayPauseButtonToMatchIsPlaying:[(CRLMovieRep *)self isPlaying]];
      [(CRLMovieRep *)self p_invalidateHideControlsTimeoutTimer];
      v24 = anyObject;
      if (v21)
      {
        [(CRLMovieRep *)self p_showControls];
        canvas2 = [(CRLCanvasRep *)self canvas];
        [canvas2 invalidateContentLayersForRep:self];
      }

      else
      {
        if (anyObject == movieItem)
        {
          v26 = 0;
        }

        else
        {
          v26 = [objc_msgSend(anyObject "repClass")];
        }

        if (p_playButtonFitsInFrame && (v26 & 1) == 0 && self->_didCheckPlayability && (-[CRLMovieRep p_playButtonKnob](self, "p_playButtonKnob"), v27 = objc_claimAutoreleasedReturnValue(), [v27 renderable], v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v28, "superlayer"), v29 = objc_claimAutoreleasedReturnValue(), v30 = v29 == 0, v29, v28, v27, ((v30 | isCurrentlyInQuickSelectMode) & 1) == 0))
        {
          [(CRLMovieRep *)self p_hideControlsWithDelay:3.25];
        }

        else
        {
          [(CRLMovieRep *)self p_hideControls];
        }
      }
    }

    else
    {
      v24 = anyObject;
      if (v21 && self->_hideControlsTimeoutTimer)
      {
        [(CRLMovieRep *)self p_invalidateHideControlsTimeoutTimer];
        [(CRLMovieRep *)self p_updateUsePlayPauseButtonToMatchIsPlaying:[(CRLMovieRep *)self isPlaying]];
      }
    }

    [(CRLMediaRep *)self updateSpatialLabel];
  }
}

- (CRLMediaPlayerController)playerControllerForcingCreationIfNotPreExisting
{
  [(CRLMovieRep *)self p_setupPlayerControllerIfNecessary];
  playerController = self->_playerController;

  return playerController;
}

- (void)pausePlaybackIfNeeded
{
  if ([(CRLMovieRep *)self isPlaying])
  {

    [(CRLMovieRep *)self p_togglePlaying];
  }
}

- (void)stopPlaybackIfNeeded
{
  if (![(CRLMovieRep *)self p_isLoopingSticker])
  {
    if (self->_playerController)
    {
      [(CRLMovieRep *)self p_setNeedsTeardownPlayerControllerOnUpdateRenderable];
      interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
      [interactiveCanvasController invalidateContentLayersForRep:self];
    }

    [(CRLMovieRep *)self p_invalidateHideControlsTimeoutTimer];
  }
}

- (void)playerController:(id)controller playbackDidFailWithError:(id)error
{
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100188C84;
  v10 = &unk_10183AE28;
  selfCopy = self;
  errorCopy = error;
  v5 = errorCopy;
  Main = CFRunLoopGetMain();
  CFRunLoopPerformBlock(Main, kCFRunLoopDefaultMode, &v7);
  CFRunLoopWakeUp(Main);
  [(CRLMovieRep *)self p_updateUsePlayPauseButtonToMatchIsPlaying:0, v7, v8, v9, v10, selfCopy];
  [(CRLMovieRep *)self p_invalidateHideControlsTimeoutTimer];
}

- (void)playbackDidStopForPlayerController:(id)controller
{
  [(CRLMovieRep *)self p_setNeedsTeardownPlayerControllerOnUpdateRenderable];
  canvas = [(CRLCanvasRep *)self canvas];
  [canvas invalidateContentLayersForRep:self];
}

- (id)nowPlayingTitleWithPlaybackController:(id)controller
{
  if (self->_playerController == controller)
  {
    movieItem = [(CRLMovieRep *)self movieItem];
    title = [movieItem title];
  }

  else
  {
    title = 0;
  }

  return title;
}

- (id)nowPlayingImageProviderWithPlaybackController:(id)controller
{
  if (self->_playerController == controller)
  {
    p_posterImageProvider = [(CRLMovieRep *)self p_posterImageProvider];
  }

  else
  {
    p_posterImageProvider = 0;
  }

  return p_posterImageProvider;
}

- (BOOL)isPlaying
{
  playerController = self->_playerController;
  if (playerController)
  {
    LOBYTE(playerController) = [(CRLCanvasRenderableMediaPlayerController *)playerController isPlaying];
  }

  return playerController;
}

- (void)p_playTriggeredFromKnob
{
  if ([(CRLMovieRep *)self isPlayable])
  {
    playerControllerForcingCreationIfNotPreExisting = [(CRLMovieRep *)self playerControllerForcingCreationIfNotPreExisting];
    [playerControllerForcingCreationIfNotPreExisting setPlaying:1];

    [(CRLMovieRep *)self p_updateUsePlayPauseButtonToMatchIsPlaying:1];

    [(CRLMovieRep *)self p_updateLoopingSettingForMoviePlaybackIfNeeded];
  }
}

- (void)i_togglePlayPauseTriggeredFromKnob
{
  if (![(CRLCanvasRep *)self isSelected])
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    canvasEditor = [interactiveCanvasController canvasEditor];
    movieItem = [(CRLMovieRep *)self movieItem];
    v6 = [canvasEditor selectionPathWithInfo:movieItem];
    editorController = [interactiveCanvasController editorController];
    [editorController setSelectionPath:v6];
  }

  if ([(CRLMovieRep *)self isPlaying])
  {
    [(CRLMovieRep *)self p_pauseTriggeredFromKnob];
  }

  else
  {
    [(CRLMovieRep *)self p_playTriggeredFromKnob];
  }

  interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
  freehandDrawingToolkit = [interactiveCanvasController2 freehandDrawingToolkit];
  isLassoSelectionForMixedTypeEnabledInDrawingMode = [freehandDrawingToolkit isLassoSelectionForMixedTypeEnabledInDrawingMode];

  if (isLassoSelectionForMixedTypeEnabledInDrawingMode)
  {
    canvasEditor2 = [interactiveCanvasController2 canvasEditor];
    [canvasEditor2 hideLassoSelectionEditMenuInDrawingModeIfLassoToolIsSelected];
  }
}

- (void)p_togglePlaying
{
  if ([(CRLMovieRep *)self isPlayable])
  {
    playerControllerForcingCreationIfNotPreExisting = [(CRLMovieRep *)self playerControllerForcingCreationIfNotPreExisting];
    isPlaying = [playerControllerForcingCreationIfNotPreExisting isPlaying];

    playerControllerForcingCreationIfNotPreExisting2 = [(CRLMovieRep *)self playerControllerForcingCreationIfNotPreExisting];
    [playerControllerForcingCreationIfNotPreExisting2 setPlaying:isPlaying ^ 1];

    [(CRLMovieRep *)self p_updateUsePlayPauseButtonToMatchIsPlaying:isPlaying ^ 1];

    [(CRLMovieRep *)self p_invalidateHideControlsTimeoutTimer];
  }
}

- (void)updateUI_toMatchPlayer
{
  playerControllerForcingCreationIfNotPreExisting = [(CRLMovieRep *)self playerControllerForcingCreationIfNotPreExisting];
  [playerControllerForcingCreationIfNotPreExisting updatePlayingToMatchPlayer];

  isPlaying = [(CRLMovieRep *)self isPlaying];
  self->_playerLayerShouldBeDisplayed = isPlaying;
  [(CRLMovieRep *)self p_updateUsePlayPauseButtonToMatchIsPlaying:isPlaying];
  [(CRLMovieRep *)self p_updatePlayButtonVisibility];
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  [interactiveCanvasController invalidateContentLayersForRep:self];
}

- (void)p_setupPlayerControllerIfNecessary
{
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101325200();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101325214();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132529C();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLMovieRep p_setupPlayerControllerIfNecessary]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:1755 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  if (!self->_playerController)
  {
    if (!self->_isPlayable)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013252C4();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013252EC();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101325374();
      }

      v6 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v6);
      }

      v7 = [NSString stringWithUTF8String:"[CRLMovieRep p_setupPlayerControllerIfNecessary]"];
      v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieRep.m"];
      [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:1757 isFatal:0 description:"Setting up player controller when movie isn't playable!"];
    }

    movieItem = [(CRLMovieRep *)self movieItem];
    movieAssetPayload = [movieItem movieAssetPayload];

    if ([movieAssetPayload needsDownload])
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10132539C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013253C4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10132544C();
      }

      v11 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v11);
      }

      v12 = [NSString stringWithUTF8String:"[CRLMovieRep p_setupPlayerControllerIfNecessary]"];
      v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieRep.m"];
      [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:1759 isFatal:0 description:"Setting up player controller for data that needs to be downloaded!"];
    }

    type = [movieAssetPayload type];
    identifier = [type identifier];
    v16 = [CRLAnimatedGIFController canInitWithDataType:identifier];

    if (v16)
    {
      [(CRLMovieRep *)self willChangeValueForKey:@"playerController"];
      v17 = [[CRLAnimatedGIFController alloc] initWithData:movieAssetPayload delegate:self];
      playerController = self->_playerController;
      self->_playerController = v17;

      [(CRLMovieRep *)self didChangeValueForKey:@"playerController"];
    }

    else
    {
      movieItem2 = [(CRLMovieRep *)self movieItem];
      v20 = [movieItem2 makeAVAssetAndReturnError:0];

      if (v20)
      {
        v21 = [AVPlayerItem playerItemWithAsset:v20];
        [(CRLMovieRep *)self willChangeValueForKey:@"playerController"];
        v22 = [[CRLAVPlayerController alloc] initWithPlayerItem:v21 delegate:self];
        v23 = self->_playerController;
        self->_playerController = v22;

        [(CRLMovieRep *)self didChangeValueForKey:@"playerController"];
      }

      else
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101325474();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10132549C();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101325538();
        }

        v24 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v24);
        }

        v21 = [NSString stringWithUTF8String:"[CRLMovieRep p_setupPlayerControllerIfNecessary]"];
        v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieRep.m"];
        [CRLAssertionHandler handleFailureInFunction:v21 file:v25 lineNumber:1766 isFatal:0 description:"invalid nil value for '%{public}s'", "asset"];
      }
    }

    if (qword_101AD5CA8 != -1)
    {
      sub_101325560();
    }

    v26 = off_1019EFDC0;
    if (os_log_type_enabled(off_1019EFDC0, OS_LOG_TYPE_DEFAULT))
    {
      v27 = self->_playerController;
      *buf = 134218240;
      selfCopy = self;
      v43 = 2048;
      v44 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "movie rep %p creating player controller %p", buf, 0x16u);
    }

    [(CRLMovieRep *)self p_updateStartTime];
    movieItem3 = [(CRLMovieRep *)self movieItem];
    [movieItem3 endTime];
    v30 = v29;

    if (v30 != 0.0)
    {
      [(CRLMovieRep *)self p_updateEndTime];
    }

    [(CRLMovieRep *)self p_updateVolume];
    v31 = [(CRLCanvasRenderableMediaPlayerController *)self->_playerController crl_addObserver:self forKeyPath:@"playing" options:4 context:off_1019EDD08];
    observationTokenForPlayingStatus = self->_observationTokenForPlayingStatus;
    self->_observationTokenForPlayingStatus = v31;

    [(CRLCanvasRenderableMediaPlayerController *)self->_playerController addObservationToken:self->_observationTokenForPlayingStatus];
    [(CRLMovieRep *)self p_setupPlayerLayerIfNecessary];
    v39 = @"CRLInteractiveCanvasControllerMediaRepKey";
    selfCopy2 = self;
    v33 = [NSDictionary dictionaryWithObjects:&selfCopy2 forKeys:&v39 count:1];
    v34 = [v33 mutableCopy];
    v35 = v34;
    v36 = self->_playerController;
    if (v36)
    {
      [v34 setObject:v36 forKeyedSubscript:@"CRLInteractiveCanvasControllerPlayerControllerKey"];
    }

    v37 = +[NSNotificationCenter defaultCenter];
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    [v37 postNotificationName:@"CRLInteractiveCanvasControllerDidUpdateMoviePlayerControllerNotification" object:interactiveCanvasController userInfo:v35];
  }
}

- (void)p_teardownPlayerController
{
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101325588();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132559C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101325624();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLMovieRep p_teardownPlayerController]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:1810 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  [(CRLMovieRep *)self p_setNeedsTeardownPlayerControllerOnUpdateRenderable];
  [(CRLMovieRep *)self p_teardownPlayerControllerIfNeeded];
}

- (void)p_teardownPlayerControllerIfNeeded
{
  isChangingDynamicVisibleTimeCount = self->_isChangingDynamicVisibleTimeCount;
  if (isChangingDynamicVisibleTimeCount && self->_needsTeardownPlayerController)
  {
    LOBYTE(isChangingDynamicVisibleTimeCount) = 1;
    v4 = &OBJC_IVAR___CRLMovieRep__delayTearingDownPlayerController;
LABEL_33:
    *(&self->super.super.super.super.isa + *v4) = isChangingDynamicVisibleTimeCount;
    goto LABEL_34;
  }

  playerController = self->_playerController;
  if (playerController && self->_needsTeardownPlayerController)
  {
    if (self->_delayTearingDownPlayerController)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10132564C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101325660();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013256E8();
      }

      v6 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v6);
      }

      v7 = [NSString stringWithUTF8String:"[CRLMovieRep p_teardownPlayerControllerIfNeeded]"];
      v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieRep.m"];
      [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:1824 isFatal:0 description:"Attempting to tear down the player controller with inconsistent flag/dynamic time state"];

      playerController = self->_playerController;
    }

    isPlaying = [(CRLCanvasRenderableMediaPlayerController *)playerController isPlaying];
    v10 = self->_playerController;
    if (isPlaying)
    {
      [(CRLCanvasRenderableMediaPlayerController *)v10 setPlaying:0];
    }

    else
    {
      isFastReversing = [(CRLCanvasRenderableMediaPlayerController *)v10 isFastReversing];
      v12 = self->_playerController;
      if (isFastReversing)
      {
        [(CRLCanvasRenderableMediaPlayerController *)v12 setFastReversing:0];
      }

      else if ([(CRLCanvasRenderableMediaPlayerController *)v12 isFastForwarding])
      {
        [(CRLCanvasRenderableMediaPlayerController *)self->_playerController setFastForwarding:0];
      }
    }

    [(CRLCanvasRenderableMediaPlayerController *)self->_playerController crl_removeObserverForToken:self->_observationTokenForPlayingStatus];
    [(CRLCanvasRenderableMediaPlayerController *)self->_playerController removeObservationToken:self->_observationTokenForPlayingStatus];
    observationTokenForPlayingStatus = self->_observationTokenForPlayingStatus;
    self->_observationTokenForPlayingStatus = 0;

    if (self->_currentlyObservingPlayerLayer)
    {
      v14 = objc_opt_class();
      v15 = sub_100013F00(v14, self->_playerRenderable);
      [v15 removeReadyToDisplayObserver:self context:off_1019EDD00];
    }

    [(CRLMovieRep *)self willChangeValueForKey:@"playerController"];
    [(CRLCanvasRenderableMediaPlayerController *)self->_playerController teardown];
    if (qword_101AD5CA8 != -1)
    {
      sub_101325710();
    }

    v16 = off_1019EFDC0;
    if (os_log_type_enabled(off_1019EFDC0, OS_LOG_TYPE_DEFAULT))
    {
      v17 = self->_playerController;
      *buf = 134218240;
      selfCopy = self;
      v28 = 2048;
      v29 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "movie rep %p clearing player controller %p in p_teardownPlayerController", buf, 0x16u);
    }

    v18 = self->_playerController;
    self->_playerController = 0;

    [(CRLMovieRep *)self didChangeValueForKey:@"playerController"];
    self->_playerLayerShouldBeDisplayed = 0;
    if ([(CRLCanvasRenderable *)self->_renderableToStroke isEqual:self->_playerRenderable])
    {
      renderableToStroke = self->_renderableToStroke;
      self->_renderableToStroke = 0;
    }

    [(CRLMovieRep *)self p_invalidateHideControlsTimeoutTimer];
    [(CRLMovieRep *)self p_updateUsePlayPauseButtonToMatchIsPlaying:0];
    [(CRLCanvasRenderable *)self->_playerRenderable setDelegate:0];
    playerRenderable = self->_playerRenderable;
    self->_playerRenderable = 0;

    v21 = +[NSNotificationCenter defaultCenter];
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    v24 = @"CRLInteractiveCanvasControllerMediaRepKey";
    selfCopy2 = self;
    v23 = [NSDictionary dictionaryWithObjects:&selfCopy2 forKeys:&v24 count:1];
    [v21 postNotificationName:@"CRLInteractiveCanvasControllerDidUpdateMoviePlayerControllerNotification" object:interactiveCanvasController userInfo:v23];

    isChangingDynamicVisibleTimeCount = self->_isChangingDynamicVisibleTimeCount;
  }

  if (!isChangingDynamicVisibleTimeCount)
  {
    v4 = &OBJC_IVAR___CRLMovieRep__needsTeardownPlayerController;
    goto LABEL_33;
  }

LABEL_34:
  [(CRLMediaRep *)self updateSpatialLabel];
}

- (void)p_updateVolume
{
  if (self->_playerController)
  {
    [(CRLMovieRep *)self volume];
    v4 = v3;
    playerControllerForcingCreationIfNotPreExisting = [(CRLMovieRep *)self playerControllerForcingCreationIfNotPreExisting];
    LODWORD(v5) = v4;
    [playerControllerForcingCreationIfNotPreExisting setVolume:v5];
  }
}

- (void)p_updateStartTime
{
  if (self->_playerController)
  {
    movieItem = [(CRLMovieRep *)self movieItem];
    [movieItem startTime];
    v5 = v4;

    playerControllerForcingCreationIfNotPreExisting = [(CRLMovieRep *)self playerControllerForcingCreationIfNotPreExisting];
    [playerControllerForcingCreationIfNotPreExisting setStartTime:v5];
  }
}

- (void)p_updateEndTime
{
  if (self->_playerController)
  {
    movieItem = [(CRLMovieRep *)self movieItem];
    [movieItem endTime];
    v5 = v4;

    playerControllerForcingCreationIfNotPreExisting = [(CRLMovieRep *)self playerControllerForcingCreationIfNotPreExisting];
    [playerControllerForcingCreationIfNotPreExisting setEndTime:v5];
  }
}

- (void)p_startOrStopLoopingStickerIfNecessary
{
  canvas = [(CRLCanvasRep *)self canvas];
  if ([canvas isCanvasInteractive])
  {
    movieItem = [(CRLMovieRep *)self movieItem];
    isAnimatedImage = [movieItem isAnimatedImage];

    if (isAnimatedImage)
    {
      if (self->_isPlayable)
      {
        if (!+[NSThread isMainThread])
        {
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101325738();
          }

          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10132574C();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_1013257D4();
          }

          v5 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10130DA10(v5);
          }

          v6 = [NSString stringWithUTF8String:"[CRLMovieRep p_startOrStopLoopingStickerIfNecessary]"];
          v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieRep.m"];
          [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:1912 isFatal:0 description:"This operation must only be performed on the main thread."];
        }

        if (self->_currentlyDrawingPencilKitStroke)
        {
          isLooping = 0;
        }

        else
        {
          movieItem2 = [(CRLMovieRep *)self movieItem];
          isLooping = [movieItem2 isLooping];
        }

        isPlaying = [(CRLMovieRep *)self isPlaying];
        playerController = self->_playerController;
        if (playerController)
        {
          v12 = [(CRLCanvasRenderableMediaPlayerController *)playerController repeatMode]!= 1;
        }

        else
        {
          v12 = 1;
        }

        v13 = isPlaying ^ 1 | v12;
        if (isLooping)
        {
          if (v13)
          {
            [(CRLMovieRep *)self p_setupPlayerControllerIfNecessary];
            [(CRLCanvasRenderableMediaPlayerController *)self->_playerController setRepeatMode:1];
            [(CRLCanvasRenderableMediaPlayerController *)self->_playerController setPlaying:1];
            self->_playerLayerShouldBeDisplayed = 1;
            interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
            v15 = [interactiveCanvasController renderableForRep:self];
            [(CRLMovieRep *)self p_arrangeRenderableVisibility:v15];
          }
        }

        else if ((v13 & 1) == 0)
        {
          [(CRLMovieRep *)self stopPlaybackIfNeeded];
          [(CRLMovieRep *)self p_showControls];
        }
      }

      else
      {

        [(CRLMovieRep *)self p_updateUIStateForMoviePlayability];
      }
    }
  }

  else
  {
  }
}

- (void)p_updateLoopingSettingForMoviePlaybackIfNeeded
{
  if (self->_playerController)
  {
    movieItem = [(CRLMovieRep *)self movieItem];
    isAnimatedImage = [movieItem isAnimatedImage];

    if ((isAnimatedImage & 1) == 0)
    {
      movieItem2 = [(CRLMovieRep *)self movieItem];
      isLooping = [movieItem2 isLooping];

      playerController = self->_playerController;

      [(CRLCanvasRenderableMediaPlayerController *)playerController setRepeatMode:isLooping];
    }
  }
}

- (BOOL)p_isLoopingSticker
{
  movieItem = [(CRLMovieRep *)self movieItem];
  if ([movieItem isAnimatedImage])
  {
    movieItem2 = [(CRLMovieRep *)self movieItem];
    isLooping = [movieItem2 isLooping];
  }

  else
  {
    isLooping = 0;
  }

  return isLooping;
}

- (id)additionalRenderablesOverRenderable
{
  v3 = objc_alloc_init(NSMutableArray);
  [(CRLMovieRep *)self p_startOrStopLoopingStickerIfNecessary];
  if (self->_playerRenderable)
  {
    [v3 addObject:?];
  }

  p_playerStrokeRenderable = [(CRLMovieRep *)self p_playerStrokeRenderable];
  if (p_playerStrokeRenderable)
  {
    [v3 addObject:p_playerStrokeRenderable];
  }

  v7.receiver = self;
  v7.super_class = CRLMovieRep;
  additionalRenderablesOverRenderable = [(CRLMediaRep *)&v7 additionalRenderablesOverRenderable];
  [v3 addObjectsFromArray:additionalRenderablesOverRenderable];

  return v3;
}

- (void)setNeedsDisplay
{
  v3.receiver = self;
  v3.super_class = CRLMovieRep;
  [(CRLStyledRep *)&v3 setNeedsDisplay];
  [(CRLMovieRep *)self p_disposeStrokeRenderable];
}

- (void)p_listenForAssetChangesIfAppropriate
{
  downloadObserverIdentifier = self->_downloadObserverIdentifier;
  if (!downloadObserverIdentifier)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013257FC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101325810();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013258AC();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLMovieRep p_listenForAssetChangesIfAppropriate]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:1986 isFatal:0 description:"invalid nil value for '%{public}s'", "_downloadObserverIdentifier"];

    downloadObserverIdentifier = self->_downloadObserverIdentifier;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10018AB10;
  v13[3] = &unk_101842F90;
  v13[4] = self;
  v13[5] = downloadObserverIdentifier;
  v7 = downloadObserverIdentifier;
  v8 = objc_retainBlock(v13);
  movieItem = [(CRLMovieRep *)self movieItem];
  movieAssetPayload = [movieItem movieAssetPayload];
  (v8[2])(v8, movieAssetPayload);

  movieItem2 = [(CRLMovieRep *)self movieItem];
  posterImageAssetPayload = [movieItem2 posterImageAssetPayload];
  (v8[2])(v8, posterImageAssetPayload);
}

- (void)p_handleAssetPreparationCompletionForAsset:(id)asset
{
  assetCopy = asset;
  if (![(CRLCanvasRep *)self hasBeenRemoved])
  {
    [(CRLMovieRep *)self setNeedsDisplay];
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    [interactiveCanvasController invalidateContentLayersForRep:self];

    movieItem = [(CRLMovieRep *)self movieItem];
    movieAssetPayload = [movieItem movieAssetPayload];

    if (movieAssetPayload == assetCopy)
    {
      [(CRLMovieRep *)self p_stopUpdatingUIStateForMoviePlayability];
      [(CRLMovieRep *)self p_updateUIStateForMoviePlayability];
      v10 = +[NSNotificationCenter defaultCenter];
      interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
      v13 = @"CRLInteractiveCanvasControllerMediaRepKey";
      selfCopy = self;
      v12 = [NSDictionary dictionaryWithObjects:&selfCopy forKeys:&v13 count:1];
      [v10 postNotificationName:@"CRLInteractiveCanvasControllerDidLoadAssetForMediaRepNotification" object:interactiveCanvasController2 userInfo:v12];
    }

    else
    {
      movieItem2 = [(CRLMovieRep *)self movieItem];
      posterImageAssetPayload = [movieItem2 posterImageAssetPayload];

      if (posterImageAssetPayload == assetCopy)
      {
        [(CRLMovieRep *)self p_showControls];
      }
    }

    [(CRLMovieRep *)self p_updatePlayButtonVisibility];
  }
}

- (id)visuallySignificantDataSet
{
  movieItem = [(CRLMovieRep *)self movieItem];
  posterImageAssetPayload = [movieItem posterImageAssetPayload];

  movieItem2 = [(CRLMovieRep *)self movieItem];
  movieAssetPayload = [movieItem2 movieAssetPayload];

  v7 = [[NSMutableSet alloc] initWithCapacity:2];
  v8 = v7;
  if (posterImageAssetPayload)
  {
    [v7 addObject:posterImageAssetPayload];
  }

  if (movieAssetPayload)
  {
    [v8 addObject:movieAssetPayload];
  }

  if ([v8 count])
  {
    v9 = v8;
  }

  else
  {
    v9 = +[NSSet set];
  }

  v10 = v9;

  return v10;
}

- (BOOL)shouldShowLoadingUI
{
  movieItem = [(CRLMovieRep *)self movieItem];
  posterImageAssetPayload = [movieItem posterImageAssetPayload];
  if ([posterImageAssetPayload needsDownload])
  {
    v5 = !self->_playerLayerShouldBeDisplayed;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)dynamicResizeDidBegin
{
  [(CRLMovieRep *)self p_disposeStrokeRenderable];
  v5.receiver = self;
  v5.super_class = CRLMovieRep;
  dynamicResizeDidBegin = [(CRLCanvasRep *)&v5 dynamicResizeDidBegin];

  return dynamicResizeDidBegin;
}

- (void)dynamicResizeDidEndWithTracker:(id)tracker
{
  trackerCopy = tracker;
  [(CRLMovieRep *)self p_disposeStrokeRenderable];
  v5.receiver = self;
  v5.super_class = CRLMovieRep;
  [(CRLCanvasRep *)&v5 dynamicResizeDidEndWithTracker:trackerCopy];
}

- (id)resizedGeometryForTransform:(CGAffineTransform *)transform
{
  memset(&v12, 0, sizeof(v12));
  layout = [(CRLCanvasRep *)self layout];
  originalPureGeometry = [layout originalPureGeometry];
  v6 = originalPureGeometry;
  if (originalPureGeometry)
  {
    [originalPureGeometry fullTransform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  v7 = *&transform->c;
  *&v10.a = *&transform->a;
  *&v10.c = v7;
  *&v10.tx = *&transform->tx;
  CGAffineTransformConcat(&v12, &t1, &v10);

  t1 = v12;
  v8 = [CRLCanvasInfoGeometry geometryFromFullTransform:&t1];

  return v8;
}

- (void)dynamicFreeTransformDidBeginWithTracker:(id)tracker
{
  [(CRLMovieRep *)self p_disposeStrokeRenderable];
  v5.receiver = self;
  v5.super_class = CRLMovieRep;
  dynamicResizeDidBegin = [(CRLCanvasRep *)&v5 dynamicResizeDidBegin];
}

- (void)dynamicFreeTransformDidEndWithTracker:(id)tracker
{
  trackerCopy = tracker;
  [(CRLMovieRep *)self p_disposeStrokeRenderable];
  v5.receiver = self;
  v5.super_class = CRLMovieRep;
  [(CRLCanvasRep *)&v5 dynamicFreeTransformDidEndWithTracker:trackerCopy];
}

- (double)visibleTime
{
  if (self->_isChangingDynamicVisibleTimeCount)
  {
    playerControllerForcingCreationIfNotPreExisting = [(CRLMovieRep *)self playerControllerForcingCreationIfNotPreExisting];
    [playerControllerForcingCreationIfNotPreExisting absoluteCurrentTime];
  }

  else
  {
    playerControllerForcingCreationIfNotPreExisting = [(CRLMovieRep *)self movieItem];
    [playerControllerForcingCreationIfNotPreExisting posterTime];
  }

  v4 = v3;

  return v4;
}

- (double)absoluteCurrentTime
{
  playerControllerForcingCreationIfNotPreExisting = [(CRLMovieRep *)self playerControllerForcingCreationIfNotPreExisting];
  [playerControllerForcingCreationIfNotPreExisting absoluteCurrentTime];
  v4 = v3;

  return v4;
}

- (void)dynamicVisibleTimeChangeDidBegin
{
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013258D4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013258E8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101325970();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLMovieRep dynamicVisibleTimeChangeDidBegin]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:2096 isFatal:0 description:"Dynamic poster time changes can only be made on the main thread"];
  }

  isChangingDynamicVisibleTimeCount = self->_isChangingDynamicVisibleTimeCount;
  self->_isChangingDynamicVisibleTimeCount = isChangingDynamicVisibleTimeCount + 1;
  if (!isChangingDynamicVisibleTimeCount)
  {
    [(CRLMovieRep *)self p_updatePlayButtonVisibility];
    playerControllerForcingCreationIfNotPreExisting = [(CRLMovieRep *)self playerControllerForcingCreationIfNotPreExisting];
    [playerControllerForcingCreationIfNotPreExisting beginScrubbing];
  }
}

- (void)dynamicVisibleTimeUpdateToValue:(double)value withTolerance:(double)tolerance completionHandler:(id)handler
{
  handlerCopy = handler;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101325998();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013259AC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101325A34();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLMovieRep dynamicVisibleTimeUpdateToValue:withTolerance:completionHandler:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:2106 isFatal:0 description:"Dynamic poster time changes can only be made on the main thread"];
  }

  if (!self->_isChangingDynamicVisibleTimeCount)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101325A5C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101325A84();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101325B0C();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v12);
    }

    v13 = [NSString stringWithUTF8String:"[CRLMovieRep dynamicVisibleTimeUpdateToValue:withTolerance:completionHandler:]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:2107 isFatal:0 description:"A dynamic poster time change must be in progress"];
  }

  playerControllerForcingCreationIfNotPreExisting = [(CRLMovieRep *)self playerControllerForcingCreationIfNotPreExisting];
  [playerControllerForcingCreationIfNotPreExisting scrubToTime:handlerCopy withTolerance:value completionHandler:tolerance];
}

- (void)dynamicVisibleTimeChangeDidEnd
{
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101325B34();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101325B48();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101325BD0();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLMovieRep dynamicVisibleTimeChangeDidEnd]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:2113 isFatal:0 description:"Dynamic poster time changes can only be made on the main thread"];
  }

  isChangingDynamicVisibleTimeCount = self->_isChangingDynamicVisibleTimeCount;
  if (!isChangingDynamicVisibleTimeCount)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101325BF8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101325C20();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101325CA8();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLMovieRep dynamicVisibleTimeChangeDidEnd]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:2114 isFatal:0 description:"Mismatch between starting and ending dynamic visible poster time changes"];

    isChangingDynamicVisibleTimeCount = self->_isChangingDynamicVisibleTimeCount;
  }

  v10 = isChangingDynamicVisibleTimeCount - 1;
  self->_isChangingDynamicVisibleTimeCount = v10;
  if (!v10)
  {
    [(CRLCanvasRenderableMediaPlayerController *)self->_playerController cancelPendingSeeks];
    [(CRLCanvasRenderableMediaPlayerController *)self->_playerController endScrubbing];
    [(CRLMovieRep *)self p_updatePlayButtonVisibility];
    if (self->_delayTearingDownPlayerController)
    {
      self->_delayTearingDownPlayerController = 0;
      [(CRLMovieRep *)self p_teardownPlayerController];
    }
  }
}

- (float)volume
{
  if (self->_isChangingDynamicVolume)
  {
    return self->_dynamicVolume;
  }

  movieItem = [(CRLMovieRep *)self movieItem];
  [movieItem volume];
  v5 = v4;

  return v5;
}

- (void)dynamicVolumeChangeDidBegin
{
  [(CRLMovieRep *)self volume];
  self->_dynamicVolume = v3;
  self->_isChangingDynamicVolume = 1;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = changeCopy;
  if (off_1019EDD08 == context)
  {
    [(CRLMovieRep *)self p_updatePlayButtonVisibility];
    [(CRLCanvasRep *)self invalidateKnobs];
  }

  else if (off_1019EDD00 == context)
  {
    v14 = [changeCopy objectForKey:NSKeyValueChangeNewKey];
    bOOLValue = [v14 BOOLValue];

    if (bOOLValue)
    {
      v16 = objc_opt_class();
      v17 = sub_100013F00(v16, self->_playerRenderable);
      [v17 removeReadyToDisplayObserver:self context:off_1019EDD00];
      self->_currentlyObservingPlayerLayer = 0;
      self->_playerLayerShouldBeDisplayed = 1;
      interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
      [interactiveCanvasController invalidateContentLayersForRep:self];
    }
  }

  else
  {
    v19.receiver = self;
    v19.super_class = CRLMovieRep;
    [(CRLMovieRep *)&v19 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

+ (id)CRLMovieButtonFillColor
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10018BED4;
  v10 = sub_10018BEE4;
  v11 = 0;
  v2 = [UITraitCollection traitCollectionWithUserInterfaceStyle:1];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10018BEEC;
  v5[3] = &unk_1018430F8;
  v5[4] = &v6;
  [UITraitCollection crl_withTraitCollectionAsCurrent:v2 performBlock:v5];
  v3 = v7[5];

  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)handleSingleTapAtPoint:(CGPoint)point inputType:(int64_t)type
{
  if ([(CRLMovieRep *)self noKnobTogglePlayAndMiniFormatter:type])
  {
    LOBYTE(isPlaying) = 0;
  }

  else
  {
    isPlaying = [(CRLMovieRep *)self isPlaying];
    if (isPlaying)
    {
      [(CRLMovieRep *)self toggleShowingControls];
      LOBYTE(isPlaying) = 1;
    }
  }

  return isPlaying;
}

- (void)willBeginEyedropperMode
{
  if ([(CRLMovieRep *)self isPlaying])
  {
    [(CRLMovieRep *)self p_togglePlaying];
    [(CRLMovieRep *)self p_setNeedsTeardownPlayerControllerOnUpdateRenderable];
  }

  v3.receiver = self;
  v3.super_class = CRLMovieRep;
  [(CRLCanvasRep *)&v3 willBeginEyedropperMode];
}

- (void)p_stopPlaybackForPencilKitIfNeeded
{
  if ([(CRLMovieRep *)self isPlaying])
  {
    [(CRLMovieRep *)self p_togglePlaying];
  }

  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  v3 = [interactiveCanvasController renderableForRep:self];
  self->_playerLayerShouldBeDisplayed = 0;
  [(CRLMovieRep *)self p_arrangeRenderableVisibility:v3];
  [(CRLMovieRep *)self p_teardownPlayerController];
}

- (void)didFinishPencilKitStroke
{
  self->_currentlyDrawingPencilKitStroke = 0;
  if ([(CRLMovieRep *)self p_isLoopingSticker])
  {
    self->_playerLayerShouldBeDisplayed = 1;
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    v3 = [interactiveCanvasController renderableForRep:self];
    [(CRLMovieRep *)self p_arrangeRenderableVisibility:v3];
    [(CRLMovieRep *)self p_startOrStopLoopingStickerIfNecessary];
  }
}

- (void)prepareForPreview
{
  selfCopy = self;
  if ([(CRLMovieRep *)selfCopy isPlaying])
  {
    [(CRLMovieRep *)selfCopy pausePlaybackIfNeeded];
  }
}

- (void)enterPreviewMode
{
  selfCopy = self;
  [(CRLMovieRep *)selfCopy prepareForPreview];
  info = [(CRLCanvasRep *)selfCopy info];
  type metadata accessor for CRLBoardItem(0);
  v3 = swift_isaMask & *swift_dynamicCastClassUnconditional();
  v4 = (*(v3 + 624))();
  swift_unknownObjectRelease();
  if (v4)
  {
    sub_10125C744();
  }

  else
  {
    sub_10125D8FC();
  }
}

@end