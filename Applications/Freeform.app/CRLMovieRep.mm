@interface CRLMovieRep
+ (id)CRLMovieButtonFillColor;
+ (void)initialize;
- (BOOL)canUseSpecializedHitRegionForKnob:(id)a3;
- (BOOL)directlyManagesLayerContent;
- (BOOL)directlyManagesVisibilityOfKnob:(id)a3;
- (BOOL)handleSingleTapAtPoint:(CGPoint)a3 inputType:(int64_t)a4;
- (BOOL)isPlaying;
- (BOOL)manuallyControlsMiniFormatter;
- (BOOL)noKnobTogglePlayAndMiniFormatter;
- (BOOL)p_cornerRadiusValueIsSignificant;
- (BOOL)p_isLoopingSticker;
- (BOOL)p_isMiniFormatterShowing;
- (BOOL)p_isMovieKnob:(id)a3;
- (BOOL)p_isPresentingMiniFormatterOrPlayButtonVisible;
- (BOOL)p_miniFormatterIsPresentingSecondLayer;
- (BOOL)p_needsTilingForStroke:(id)a3;
- (BOOL)p_playButtonFitsInFrame;
- (BOOL)shouldDisplayAsSpatial;
- (BOOL)shouldShowLoadingUI;
- (CGPoint)positionOfPlayKnobForBounds:(CGRect)a3 viewScale:(double)a4;
- (CGPoint)positionOfStandardKnob:(id)a3 forBounds:(CGRect)a4;
- (CGRect)p_strokeFrameForRenderableFrame:(CGRect)a3;
- (CRLMediaPlayerController)playerControllerForcingCreationIfNotPreExisting;
- (CRLMovieRep)initWithLayout:(id)a3 canvas:(id)a4;
- (_TtC8Freeform12CRLMovieItem)movieItem;
- (double)absoluteCurrentTime;
- (double)visibleTime;
- (float)volume;
- (id)additionalRenderablesOverRenderable;
- (id)dynamicResizeDidBegin;
- (id)movieLayout;
- (id)newTrackerForKnob:(id)a3;
- (id)nowPlayingImageProviderWithPlaybackController:(id)a3;
- (id)nowPlayingTitleWithPlaybackController:(id)a3;
- (id)p_pathForRoundedCornerMaskWithBounds:(CGRect)a3;
- (id)p_playButtonKnob;
- (id)p_posterImageProvider;
- (id)p_selectionPath;
- (id)p_shapeRenderableForPlayerStroke;
- (id)pauseButtonImage;
- (id)playButtonImage;
- (id)resizedGeometryForTransform:(CGAffineTransform *)a3;
- (id)visuallySignificantDataSet;
- (unint64_t)enabledKnobMask;
- (void)addKnobsToArray:(id)a3;
- (void)becameNotSelected;
- (void)becameSelected;
- (void)dealloc;
- (void)didEndZooming;
- (void)didFinishPencilKitStroke;
- (void)didUpdateRenderable:(id)a3;
- (void)documentEditabilityDidChange;
- (void)drawInContextWithoutEffects:(CGContext *)a3 withContent:(BOOL)a4 strokeDrawOptions:(unint64_t)a5 withOpacity:(BOOL)a6 forAlphaOnly:(BOOL)a7 drawChildren:(BOOL)a8 keepingChildrenPassingTest:(id)a9;
- (void)drawLayer:(id)a3 inContext:(CGContext *)a4;
- (void)dynamicFreeTransformDidBeginWithTracker:(id)a3;
- (void)dynamicFreeTransformDidEndWithTracker:(id)a3;
- (void)dynamicResizeDidEndWithTracker:(id)a3;
- (void)dynamicVisibleTimeChangeDidBegin;
- (void)dynamicVisibleTimeChangeDidEnd;
- (void)dynamicVisibleTimeUpdateToValue:(double)a3 withTolerance:(double)a4 completionHandler:(id)a5;
- (void)dynamicVolumeChangeDidBegin;
- (void)enterPreviewMode;
- (void)handleFadeInForZoom;
- (void)handleFadeOutForZoom;
- (void)i_hidePlayButtonIndependently;
- (void)i_togglePlayPauseTriggeredFromKnob;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)p_addPlayButtonToKnobs:(id)a3;
- (void)p_applyBasicStroke:(id)a3 toRenderable:(id)a4 bounds:(CGRect)a5;
- (void)p_applyRoundedCornersTo:(id)a3;
- (void)p_arrangeRenderableVisibility:(id)a3;
- (void)p_checkAndSyncTilingState:(BOOL)a3;
- (void)p_commonDrawStrokeInContext:(CGContext *)a3;
- (void)p_disposeStrokeRenderable;
- (void)p_drawInContext:(CGContext *)a3 withContent:(BOOL)a4 withStroke:(BOOL)a5 withOpacity:(double)a6 forShadowOrHitTest:(BOOL)a7;
- (void)p_drawPlayButtonForNonInteractiveCanvasInContext:(CGContext *)a3;
- (void)p_drawPosterImageInContext:(CGContext *)a3 forShadowOrHitTest:(BOOL)a4;
- (void)p_handleAssetPreparationCompletionForAsset:(id)a3;
- (void)p_hideControls;
- (void)p_hideControlsWithDelay:(double)a3;
- (void)p_hideMiniFormatter;
- (void)p_hidePlayPauseButtonKnob;
- (void)p_invalidateHideControlsTimeoutTimer;
- (void)p_listenForAssetChangesIfAppropriate;
- (void)p_playTriggeredFromKnob;
- (void)p_positionPauseButtonImage;
- (void)p_positionPlayButtonImage;
- (void)p_removeRoundedCornersFrom:(id)a3;
- (void)p_setPositionAndBoundsIfDifferent:(id)a3 position:(CGPoint)a4 bounds:(CGRect)a5;
- (void)p_setupPlayerControllerIfNecessary;
- (void)p_setupPlayerLayerIfNecessary;
- (void)p_setupPlayerStrokeRenderables:(BOOL)a3;
- (void)p_setupShapePlayerStrokeRenderable;
- (void)p_setupStrokeRenderables:(BOOL)a3;
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
- (void)p_updateStrokeRenderablesForStroke:(id)a3 repRenderable:(id)a4;
- (void)p_updateUIStateForMoviePlayability;
- (void)p_updateUsePlayPauseButtonToMatchIsPlaying:(BOOL)a3;
- (void)p_updateVolume;
- (void)p_usePauseButtonKnobImage;
- (void)p_usePlayButtonKnobImage;
- (void)pausePlaybackIfNeeded;
- (void)playbackDidStopForPlayerController:(id)a3;
- (void)playerController:(id)a3 playbackDidFailWithError:(id)a4;
- (void)prepareForPreview;
- (void)processChangedProperty:(unint64_t)a3;
- (void)screenScaleDidChange;
- (void)setNeedsDisplay;
- (void)stopPlaybackIfNeeded;
- (void)toggleMiniFormatter;
- (void)toggleShowingControls;
- (void)updateFromLayout;
- (void)updateRenderableGeometryFromLayout:(id)a3;
- (void)updateUI_toMatchPlayer;
- (void)willBeRemoved;
- (void)willBeginEyedropperMode;
- (void)willUpdateRenderable:(id)a3;
@end

@implementation CRLMovieRep

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [[CRLWidthLimitedQueue alloc] initWithLimit:10];
    v3 = qword_101A34788;
    qword_101A34788 = v2;
  }
}

- (CRLMovieRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = CRLMovieRep;
  v7 = [(CRLCanvasRep *)&v13 initWithLayout:a3 canvas:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [(CRLMovieRep *)v7 movieItem];

    if (v9)
    {
      v10 = objc_alloc_init(NSUUID);
      downloadObserverIdentifier = v8->_downloadObserverIdentifier;
      v8->_downloadObserverIdentifier = v10;

      if ([v6 isCanvasInteractive])
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
  v4 = [(CRLCanvasRep *)self info];
  v5 = sub_100014370(v3, v4);

  return v5;
}

- (id)movieLayout
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasRep *)self layout];
  v5 = sub_100014370(v3, v4);

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
  v4 = [(CRLMovieRep *)self movieItem];
  v5 = [v4 posterImageAssetPayload];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [v3 providerForAsset:v5 shouldValidate:1];
    v8 = sub_100014370(v6, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)p_drawPosterImageInContext:(CGContext *)a3 forShadowOrHitTest:(BOOL)a4
{
  v4 = a4;
  CGContextSaveGState(a3);
  v7 = [(CRLMediaRep *)self mediaLayout];
  [v7 boundsForStandardKnobs];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  memset(&v45, 0, sizeof(v45));
  v16 = [(CRLMediaRep *)self mediaLayout];
  v17 = [v16 geometryInRoot];
  v18 = v17;
  if (v17)
  {
    [v17 transform];
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
    v23 = sub_100510A7C(a3);
    v24 = [(CRLCanvasRep *)self canvas];
    [v24 viewScale];
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

  v34 = [(CRLMovieRep *)self p_posterImageProvider];
  if (v34)
  {
    CGContextSaveGState(a3);
    v35 = [(CRLMovieRep *)self p_pathForRoundedCornerMaskWithBounds:v9, v11, v13, v15];
    v36 = v35;
    if (v35)
    {
      CGContextAddPath(a3, [v35 CGPath]);
      CGContextClip(a3);
    }

    if (v4 && [v34 isOpaque])
    {
      v37 = +[CRLColor blackColor];
      CGContextSetFillColorWithColor(a3, [v37 CGColor]);

      v50.origin.x = v9;
      v50.origin.y = v11;
      v50.size.width = v13;
      v50.size.height = v15;
      CGContextFillRect(a3, v50);
    }

    else
    {
      [v34 drawImageInContext:a3 rect:{v9, v11, v13, v15}];
    }

    CGContextRestoreGState(a3);
  }

  else if ([(CRLMovieRep *)self shouldShowLoadingUI])
  {
    v38 = [_TtC8Freeform33CRLUndownloadedAssetDrawingHelper alloc];
    v39 = [(CRLMovieRep *)self movieItem];
    v40 = [v39 posterImageAssetPayload];
    v41 = [(CRLUndownloadedAssetDrawingHelper *)v38 initWithRep:self asset:v40];

    [(CRLUndownloadedAssetDrawingHelper *)v41 drawInContext:a3];
  }

  else if (v4)
  {
    v42 = +[CRLColor blackColor];
    CGContextSetFillColorWithColor(a3, [v42 CGColor]);

    v51.origin.x = v9;
    v51.origin.y = v11;
    v51.size.width = v13;
    v51.size.height = v15;
    CGContextFillRect(a3, v51);
  }

  CGContextRestoreGState(a3);
}

- (void)p_drawInContext:(CGContext *)a3 withContent:(BOOL)a4 withStroke:(BOOL)a5 withOpacity:(double)a6 forShadowOrHitTest:(BOOL)a7
{
  v7 = a7;
  v9 = a5;
  v10 = a4;
  v13 = [(CRLStyledRep *)self styledLayout];
  v14 = [v13 isInvisible];

  if (v14)
  {
    return;
  }

  v15 = [(CRLCanvasRep *)self layout];
  v33 = [v15 stroke];

  if (v33)
  {
    if (![v33 shouldRender])
    {
      v18 = 0;
      goto LABEL_8;
    }

    v16 = [(CRLCanvasRep *)self canvas];
    v17 = [v16 shouldSuppressBackgrounds];

    if (v17)
    {
      v18 = [v33 mutableCopy];

      v33 = +[CRLColor blackColor];
      [v18 setColor:?];
LABEL_8:

      v33 = v18;
    }
  }

  else
  {
    v33 = 0;
  }

  v19 = a6 < 1.0 && v9;
  v20 = v19 && v10;
  if (v19 && v10 && (CGContextSaveGState(a3), CGContextSetAlpha(a3, a6), v33))
  {
    CGContextBeginTransparencyLayer(a3, 0);
    v21 = 1;
  }

  else
  {
    v21 = 0;
  }

  CGContextSaveGState(a3);
  v22 = [(CRLMediaRep *)self mediaLayout];
  [v22 boundsForStandardKnobs];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  if (v10)
  {
    [(CRLMovieRep *)self p_drawPosterImageInContext:a3 forShadowOrHitTest:v7];
  }

  CGContextRestoreGState(a3);
  if (v9 && v33)
  {
    CGContextSaveGState(a3);
    [v33 paintRect:a3 inContext:{v24, v26, v28, v30}];
    CGContextRestoreGState(a3);
  }

  if (!v7)
  {
    v31 = [(CRLCanvasRep *)self canvas];
    if ([v31 isCanvasInteractive])
    {
    }

    else
    {
      v32 = [(CRLMovieRep *)self p_playButtonFitsInFrame];

      if (v32)
      {
        CGContextSaveGState(a3);
        [(CRLMovieRep *)self p_drawPlayButtonForNonInteractiveCanvasInContext:a3];
        CGContextRestoreGState(a3);
      }
    }
  }

  if (v21)
  {
    CGContextEndTransparencyLayer(a3);
  }

  if (v20)
  {
    CGContextRestoreGState(a3);
  }
}

- (void)p_drawPlayButtonForNonInteractiveCanvasInContext:(CGContext *)a3
{
  v5 = [(CRLMediaRep *)self mediaLayout];
  [v5 boundsForStandardKnobs];
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
  CGContextSetFillColorWithColor(a3, [v23 CGColor]);

  v44.origin.x = v16;
  v44.origin.y = v18;
  v44.size.width = v20;
  v44.size.height = v22;
  CGContextFillEllipseInRect(a3, v44);
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

  v41 = [v42 CGImageForSize:a3 inContext:0 orContentsScaleProvider:{v30, v32}];
  v45.origin.x = v33;
  v45.origin.y = v35;
  v45.size.width = v37;
  v45.size.height = v39;
  CGContextDrawImage(a3, v45, v41);
}

- (void)drawInContextWithoutEffects:(CGContext *)a3 withContent:(BOOL)a4 strokeDrawOptions:(unint64_t)a5 withOpacity:(BOOL)a6 forAlphaOnly:(BOOL)a7 drawChildren:(BOOL)a8 keepingChildrenPassingTest:(id)a9
{
  v9 = a7;
  v10 = a5;
  v11 = a4;
  v14 = 1.0;
  if (a6)
  {
    [(CRLStyledRep *)self opacity:a3];
  }

  [(CRLMovieRep *)self p_drawInContext:a3 withContent:v11 withStroke:v10 & 1 withOpacity:v9 forShadowOrHitTest:a7, a8, v14];
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
  v14 = self;
  if (+[NSThread isMainThread])
  {
    v12(block);
  }

  else
  {
    dispatch_async(&_dispatch_main_q, block);
  }

  [(CRLMovieRep *)self p_invalidateHideControlsTimeoutTimer];
  v3 = [(CRLCanvasKnob *)self->_playButtonKnob renderable];
  [v3 setDelegate:0];

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

  v8 = [(CRLMovieRep *)self movieItem];
  v9 = [v8 store];
  v10 = [v9 assetManager];
  [v10 removeAllDownloadObserversWithIdentifier:self->_downloadObserverIdentifier];
}

- (BOOL)directlyManagesLayerContent
{
  v3 = [(CRLMovieRep *)self shouldShowLoadingUI];
  v4 = v3 ^ 1;
  if (self->_directlyManagesLayerContent != (v3 ^ 1))
  {
    self->_directlyManagesLayerContent = v4;
    if (v3)
    {
      [(CRLMovieRep *)self setNeedsDisplay];
    }

    else
    {
      v5 = [(CRLCanvasRep *)self canvas];
      v6 = [v5 isCanvasInteractive];

      if (v6)
      {
        v7 = [(CRLCanvasRep *)self interactiveCanvasController];
        v8 = [v7 renderableForRep:self];

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
    v3 = [(CRLCanvasRenderableMediaPlayerController *)self->_playerController newRenderable];
    playerRenderable = self->_playerRenderable;
    self->_playerRenderable = v3;

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
    v9 = [(CRLCanvasRep *)self info];
    v10 = [v9 geometry];
    v11 = v10;
    if (v10)
    {
      [v10 transformBasedOnPoint:CGPointZero.x centeredAtPoint:{CGPointZero.y, CGPointZero.x, CGPointZero.y}];
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

    v13 = [(CRLCanvasRep *)self canvas];
    v14 = [(CRLCanvasRep *)self layout];
    v15 = [v14 geometry];
    [v15 size];
    [v13 convertUnscaledToBoundsRect:sub_10011ECB4()];
    [(CRLCanvasRenderable *)self->_playerRenderable setBounds:?];

    v16 = [(CRLCanvasRep *)self canvas];
    v17 = [(CRLCanvasRep *)self layout];
    v18 = [v17 geometry];
    [v18 frame];
    [v16 convertUnscaledToBoundsPoint:{sub_100120414(v19, v20, v21, v22)}];
    [(CRLCanvasRenderable *)self->_playerRenderable setPosition:?];

    [(CRLStyledRep *)self opacity];
    *&v23 = v23;
    [(CRLCanvasRenderable *)self->_playerRenderable setOpacity:v23];
    v24 = [(CRLCanvasRenderable *)self->_playerRenderable layer];
    [(CRLMovieRep *)self p_applyRoundedCornersTo:v24];

    v25 = [(CRLCanvasRep *)self canvas];
    [v25 invalidateContentLayersForRep:self];
  }
}

- (BOOL)p_cornerRadiusValueIsSignificant
{
  v2 = [(CRLMovieRep *)self movieItem];
  [v2 cornerRadius];
  v4 = v3 >= 0.001;

  return v4;
}

- (void)p_updateRoundedCornersForPlayerRenderableIfNeeded
{
  if (self->_playerRenderable)
  {
    v3 = [(CRLMovieRep *)self movieItem];
    v4 = [v3 hasRoundedCorners];

    v5 = [(CRLCanvasRenderable *)self->_playerRenderable layer];
    if (v4)
    {
      [(CRLMovieRep *)self p_applyRoundedCornersTo:v5];
    }

    else
    {
      [(CRLMovieRep *)self p_removeRoundedCornersFrom:v5];
    }
  }
}

- (void)p_applyRoundedCornersTo:(id)a3
{
  v9 = a3;
  if ([(CRLMovieRep *)self p_cornerRadiusValueIsSignificant])
  {
    v4 = [(CRLMovieRep *)self movieItem];
    [v4 cornerRadius];
    v6 = v5;
    v7 = [(CRLCanvasRep *)self canvas];
    [v7 viewScale];
    [v9 setCornerRadius:v8 * v6];

    [v9 setMasksToBounds:1];
    [v9 setCornerCurve:kCACornerCurveContinuous];
  }
}

- (void)p_removeRoundedCornersFrom:(id)a3
{
  v3 = a3;
  [v3 setCornerRadius:0.0];
  [v3 setMasksToBounds:0];
}

- (id)p_pathForRoundedCornerMaskWithBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(CRLMovieRep *)self p_cornerRadiusValueIsSignificant])
  {
    v8 = [(CRLMovieRep *)self movieItem];
    [v8 cornerRadius];
    v10 = [CRLBezierPath bezierPathWithContinuousCornerRoundedRect:x cornerRadius:y, width, height, v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)drawLayer:(id)a3 inContext:(CGContext *)a4
{
  v6 = a3;
  v7 = [(CRLCanvasRenderable *)self->_playerStrokeRenderable layer];

  if (v7 == v6)
  {
    [(CRLMovieRep *)self p_drawStrokeInContext:a4];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CRLMovieRep;
    [(CRLMovieRep *)&v8 drawLayer:v6 inContext:a4];
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

- (BOOL)p_needsTilingForStroke:(id)a3
{
  v4 = a3;
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

- (void)p_setupPlayerStrokeRenderables:(BOOL)a3
{
  if (a3)
  {
    [(CRLMovieRep *)self p_setupTilingPlayerStrokeRenderable];
  }

  else
  {
    [(CRLMovieRep *)self p_setupShapePlayerStrokeRenderable];
  }
}

- (void)p_checkAndSyncTilingState:(BOOL)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != v3)
  {

    [(CRLMovieRep *)self p_disposeStrokeRenderable];
  }
}

- (void)p_setupStrokeRenderables:(BOOL)a3
{
  v3 = a3;
  [(CRLMovieRep *)self p_checkAndSyncTilingState:?];

  [(CRLMovieRep *)self p_setupPlayerStrokeRenderables:v3];
}

- (void)p_commonDrawStrokeInContext:(CGContext *)a3
{
  CGContextSaveGState(a3);
  v5 = [(CRLCanvasRep *)self canvas];
  [v5 viewScale];
  v7 = v6;

  CGContextScaleCTM(a3, v7, v7);
  [(CRLMovieRep *)self p_drawInContext:a3 withContent:0 withStroke:1 withOpacity:0 forShadowOrHitTest:0.0];

  CGContextRestoreGState(a3);
}

- (CGRect)p_strokeFrameForRenderableFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(CRLCanvasRep *)self layout];
  v9 = [v8 stroke];

  v10 = [(CRLCanvasRep *)self canvas];
  [v10 viewScale];
  v12 = v11;

  [v9 renderedWidth];
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

- (void)p_arrangeRenderableVisibility:(id)a3
{
  v6 = a3;
  if (self->_playerLayerShouldBeDisplayed && !self->_needsTeardownPlayerController)
  {
    [(CRLCanvasRenderable *)self->_playerRenderable setHidden:0];
    [(CRLCanvasRenderable *)v6 setHidden:1];
    playerRenderable = self->_playerRenderable;
  }

  else
  {
    [(CRLCanvasRenderable *)v6 setHidden:0];
    [(CRLCanvasRenderable *)self->_playerRenderable setHidden:1];
    playerRenderable = v6;
  }

  v5 = playerRenderable;
  if (![(CRLCanvasRenderable *)v5 isEqual:self->_renderableToStroke])
  {
    [(CRLMovieRep *)self p_disposeStrokeRenderable];
    objc_storeStrong(&self->_renderableToStroke, playerRenderable);
  }
}

- (void)willUpdateRenderable:(id)a3
{
  v7.receiver = self;
  v7.super_class = CRLMovieRep;
  v4 = a3;
  [(CRLCanvasRep *)&v7 willUpdateRenderable:v4];
  v5 = [(CRLCanvasRep *)self layout:v7.receiver];
  v6 = [v5 stroke];

  [(CRLMovieRep *)self p_arrangeRenderableVisibility:v4];
  if ([(CRLMediaRep *)self i_shouldRenderStroke:v6])
  {
    [(CRLMovieRep *)self p_setupStrokeRenderables:[(CRLMovieRep *)self p_needsTilingForStroke:v6]];
  }

  else
  {
    [(CRLMovieRep *)self p_disposeStrokeRenderable];
  }
}

- (void)didUpdateRenderable:(id)a3
{
  v4 = a3;
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
  [(CRLCanvasRep *)&v37 didUpdateRenderable:v4];
  [(CRLCanvasRenderable *)v4 crl_ignoreAccessibilityInvertColorsIfNeeded];
  [(CRLStyledRep *)self opacity];
  v7 = v6;
  if ([(CRLMovieRep *)self shouldShowLoadingUI]&& ![(CRLMovieRep *)self directlyManagesLayerContent])
  {
    v7 = 1.0;
  }

  [(CRLCanvasRenderable *)v4 opacity];
  v9 = v8;
  if (v7 != v9)
  {
    *&v9 = v7;
    [(CRLCanvasRenderable *)v4 setOpacity:v9];
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

  v13 = [(CRLCanvasRep *)self layout];
  v14 = [v13 stroke];

  if ([(CRLMediaRep *)self i_shouldRenderStroke:v14])
  {
    v15 = v4;
    if (self->_playerLayerShouldBeDisplayed)
    {
      v15 = self->_playerRenderable;
    }

    [(CRLMovieRep *)self p_updateStrokeRenderablesForStroke:v14 repRenderable:v15];
  }

  [(CRLMediaRep *)self updateSpatialLabel];
  if ([(CRLMovieRep *)self directlyManagesLayerContent])
  {
    v16 = [(CRLMovieRep *)self p_posterImageProvider];
    if (v16)
    {
      v31 = 0;
      v32 = &v31;
      v33 = 0x3010000000;
      v35 = 0;
      v36 = 0;
      v34 = &unk_1016A8115;
      v17 = [(CRLCanvasRep *)self canvas];
      v18 = [(CRLCanvasRep *)self layout];
      v19 = [v18 geometry];
      [v19 size];
      [v17 convertUnscaledToBoundsSize:?];
      v35 = v20;
      v36 = v21;

      v22 = [v16 cachedCGImageOfNearestSizeOrNULLPreferringSize:v4 withContentsScaleProvider:{v32[4], v32[5]}];
      if (v22)
      {
        [(CRLCanvasRenderable *)v4 setContents:v22];
      }

      else
      {
        -[CRLCanvasRenderable setContents:](v4, "setContents:", [v16 CGImageOfAnySize]);
      }

      v23 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100185D48;
      block[3] = &unk_101842C68;
      v27 = v16;
      v30 = &v31;
      v24 = v4;
      v28 = v24;
      v29 = self;
      dispatch_async(v23, block);

      v25 = [(CRLCanvasRenderable *)v24 layer];
      [(CRLMovieRep *)self p_applyRoundedCornersTo:v25];

      _Block_object_dispose(&v31, 8);
    }
  }

  +[CATransaction commit];
}

- (BOOL)shouldDisplayAsSpatial
{
  v3 = [(CRLMovieRep *)self movieItem];
  if ([v3 isSpatial])
  {
    v4 = ![(CRLMovieRep *)self isPlaying];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)p_setPositionAndBoundsIfDifferent:(id)a3 position:(CGPoint)a4 bounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a4.y;
  v10 = a4.x;
  v18 = a3;
  [v18 position];
  if (v12 != v10 || v11 != v9)
  {
    [v18 setPosition:{v10, v9}];
  }

  [v18 bounds];
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
    [v18 setBounds:{x, y, width, height}];
  }
}

- (void)updateRenderableGeometryFromLayout:(id)a3
{
  v4 = a3;
  if ([(CRLMovieRep *)self directlyManagesLayerContent])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    v5 = [(CRLMovieRep *)self movieLayout];
    v6 = [v5 pureGeometry];
    [(CRLCanvasRep *)self computeDirectLayerFrame:&v14 andTransform:&v11 basedOnLayoutGeometry:v6];
    [(CRLCanvasRep *)self antiAliasDefeatLayerTransform:&v11 forFrame:v14, v15];
    v8 = v11;
    v9 = v12;
    v10 = v13;
    [v4 setIfDifferentFrame:&v8 orTransform:{v14, v15}];
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
    [(CRLCanvasRep *)&v16 updateRenderableGeometryFromLayout:v4];
  }
}

- (void)p_applyBasicStroke:(id)a3 toRenderable:(id)a4 bounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4;
  v12 = a3;
  v13 = [(CRLCanvasRep *)self canvas];
  [v13 viewScale];
  v15 = v14;

  [v11 setBounds:{x, y, width, height}];
  [v12 applyToShapeRenderable:v11 withScale:v15];

  Mutable = CGPathCreateMutable();
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  CGPathAddRect(Mutable, 0, v18);
  [v11 setHidden:0];
  [v11 setPath:Mutable];

  CGPathRelease(Mutable);
}

- (void)p_updateStrokeRenderablesForStroke:(id)a3 repRenderable:(id)a4
{
  v5 = a3;
  v6 = [(CRLMovieRep *)self p_playerStrokeRenderable];
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  v7 = [(CRLMovieRep *)self p_needsTilingForStroke:v5];
  v35 = 0u;
  memset(&v36, 0, sizeof(v36));
  v34 = 0u;
  v8 = [(CRLCanvasRep *)self layout];
  v9 = [v8 pureGeometry];
  [(CRLCanvasRep *)self computeDirectLayerFrame:&v34 andTransform:&v36 basedOnLayoutGeometry:v9];

  v10 = v35;
  v11 = sub_10011ECB4();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = sub_100120414(*&v34, *(&v34 + 1), *&v10, *(&v10 + 1));
  v20 = v19;
  [v6 position];
  if (v22 == v18 && v21 == v20)
  {
    if (v6)
    {
LABEL_4:
      [v6 affineTransform];
      goto LABEL_7;
    }
  }

  else
  {
    [v6 setPosition:{v18, v20}];
    if (v6)
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
    [v6 setAffineTransform:&t1];
  }

  [(CRLStyledRep *)self opacity];
  v24 = v23;
  [v6 opacity];
  v26 = v25;
  if (v24 != v26)
  {
    *&v26 = v24;
    [v6 setOpacity:v26];
  }

  [(CRLMovieRep *)self p_strokeFrameForRenderableFrame:v11, v13, v15, v17];
  [(CRLMovieRep *)self p_setPositionAndBoundsIfDifferent:v6 position:v18 bounds:v20, v27, v28, v29, v30];
  if ((v7 & 1) == 0)
  {
    v31 = [(CRLMovieRep *)self p_shapeRenderableForPlayerStroke];
    [(CRLMovieRep *)self p_applyBasicStroke:v5 toRenderable:v31 bounds:v11, v13, v15, v17];
  }

  +[CATransaction commit];
}

- (void)processChangedProperty:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = CRLMovieRep;
  [(CRLMediaRep *)&v8 processChangedProperty:?];
  if (a3 <= 44)
  {
    if (a3 <= 18)
    {
      if (a3 == 16)
      {
        [(CRLMovieRep *)self p_disposeStrokeRenderable];
      }

      else if (a3 != 17)
      {
        return;
      }

      goto LABEL_22;
    }

    if (a3 == 19)
    {
      [(CRLMovieRep *)self p_setNeedsTeardownPlayerControllerOnUpdateRenderable];
      v6 = [(CRLCanvasRep *)self canvas];
      [v6 invalidateContentLayersForRep:self];

      [(CRLMovieRep *)self p_listenForAssetChangesIfAppropriate];
      [(CRLMovieRep *)self p_stopUpdatingUIStateForMoviePlayability];
      [(CRLMovieRep *)self p_updateUIStateForMoviePlayability];
      [(CRLMovieRep *)self p_updatePlayButtonVisibility];
    }

    else if (a3 == 44)
    {
      [(CRLMovieRep *)self setNeedsDisplay];
      v5 = [(CRLCanvasRep *)self canvas];
      [v5 invalidateContentLayersForRep:self];

      [(CRLMovieRep *)self p_updatePlayButtonVisibility];
      [(CRLMovieRep *)self p_listenForAssetChangesIfAppropriate];
    }
  }

  else
  {
    if (a3 > 47)
    {
      if (a3 == 48)
      {
        [(CRLMovieRep *)self p_updateVolume];
        return;
      }

      if (a3 != 49)
      {
        if (a3 == 56)
        {
          [(CRLMovieRep *)self p_startOrStopLoopingStickerIfNecessary];
          [(CRLMovieRep *)self p_updateLoopingSettingForMoviePlaybackIfNeeded];
        }

        return;
      }

      [(CRLMovieRep *)self p_updateRoundedCornersForPlayerRenderableIfNeeded];
      v7 = [(CRLCanvasRep *)self canvas];
      [v7 invalidateContentLayersForRep:self];

LABEL_22:
      [(CRLMovieRep *)self setNeedsDisplay];
      return;
    }

    if (a3 == 45)
    {
      [(CRLMovieRep *)self p_updateStartTime];
    }

    else if (a3 == 46)
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
    v6 = self;
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
  v3 = [(CRLCanvasRep *)self isSelected];
  v4 = [(CRLCanvasRep *)self interactiveCanvasController];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 editorController];
    v7 = [v6 selectionPath];
  }

  else
  {
    v6 = [v4 canvasEditor];
    v8 = [(CRLMovieRep *)self movieItem];
    v7 = [v6 selectionPathWithInfo:v8];
  }

  return v7;
}

- (void)toggleMiniFormatter
{
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  v4 = [v3 layerHost];
  v5 = [v4 miniFormatterPresenter];
  v6 = [v5 isPresentingMiniFormatter];

  if (v6)
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
  v6 = [(CRLCanvasRep *)self interactiveCanvasController];
  if (([v6 documentIsSharedReadOnly] & 1) == 0)
  {
    v3 = [v6 layerHost];
    v4 = [v3 miniFormatterPresenter];
    v5 = [(CRLMovieRep *)self p_selectionPath];
    [v4 presentMiniFormatterForSelectionPath:v5];
  }
}

- (void)p_hideMiniFormatter
{
  v5 = [(CRLCanvasRep *)self interactiveCanvasController];
  v3 = [v5 layerHost];
  v4 = [v3 miniFormatterPresenter];
  [v4 dismissMiniFormatterForRep:self];
}

- (BOOL)p_isMiniFormatterShowing
{
  v2 = [(CRLCanvasRep *)self interactiveCanvasController];
  v3 = [v2 layerHost];
  v4 = [v3 miniFormatterPresenter];
  v5 = [v4 isPresentingMiniFormatter];

  return v5;
}

- (BOOL)p_miniFormatterIsPresentingSecondLayer
{
  v2 = [(CRLCanvasRep *)self interactiveCanvasController];
  v3 = [v2 layerHost];
  v4 = [v3 miniFormatterPresenter];
  v5 = [v4 isPresentingSecondLayerPopover];

  return v5;
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

- (void)p_addPlayButtonToKnobs:(id)a3
{
  v4 = a3;
  v5 = [(CRLMovieRep *)self p_playButtonKnob];
  [v4 crl_addObjects:{v5, 0}];

  [(CRLMovieRep *)self p_updateUIStateForMoviePlayability];
  [(CRLMovieRep *)self p_updatePlayButtonVisibility];
}

- (void)addKnobsToArray:(id)a3
{
  v5.receiver = self;
  v5.super_class = CRLMovieRep;
  v4 = a3;
  [(CRLCanvasRep *)&v5 addKnobsToArray:v4];
  [(CRLMovieRep *)self p_addPlayButtonToKnobs:v4, v5.receiver, v5.super_class];
}

- (unint64_t)enabledKnobMask
{
  v5.receiver = self;
  v5.super_class = CRLMovieRep;
  v3 = [(CRLCanvasRep *)&v5 enabledKnobMask];
  if ([(CRLCanvasRep *)self shouldCreateKnobs]&& [(CRLCanvasRep *)self isSelected]&& ![(CRLMovieRep *)self p_playButtonFitsInFrame])
  {
    return v3 & 0x28A;
  }

  return v3;
}

- (id)newTrackerForKnob:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[CRLCanvasButtonKnobTracker alloc] initWithRep:self knob:v4];
    [(CRLCanvasButtonKnobTracker *)v5 setTarget:self];
    v6 = [(CRLMovieRep *)self p_playButtonKnob];

    if (v6 == v4)
    {
      [(CRLCanvasButtonKnobTracker *)v5 setAction:"i_togglePlayPauseTriggeredFromKnob"];
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CRLMovieRep;
    v5 = [(CRLCanvasRep *)&v8 newTrackerForKnob:v4];
  }

  return v5;
}

- (void)p_showControls
{
  v3 = [(CRLMovieRep *)self movieItem];
  v4 = [v3 posterImageAssetPayload];
  v5 = [v4 needsDownload];

  if ([(CRLMovieRep *)self p_playButtonFitsInFrame]&& (v5 & 1) == 0 && ![(CRLMovieRep *)self p_isLoopingSticker])
  {
    v6 = [(CRLMovieRep *)self p_playButtonKnob];
    [v6 setHidden:0];

    v7 = [(CRLMovieRep *)self p_playButtonKnob];
    v8 = [v7 renderable];
    [v8 removeAnimationForKey:@"hidden"];

    v14 = [CABasicAnimation animationWithKeyPath:@"opacity"];
    v9 = [NSNumber numberWithFloat:0.0];
    [v14 setFromValue:v9];

    LODWORD(v10) = 1.0;
    v11 = [NSNumber numberWithFloat:v10];
    [v14 setToValue:v11];

    [v14 setDuration:0.2];
    v12 = [(CRLMovieRep *)self p_playButtonKnob];
    v13 = [v12 renderable];
    [v13 addAnimation:v14 forKey:@"hidden"];
  }
}

- (void)i_hidePlayButtonIndependently
{
  v3 = [(CRLMovieRep *)self p_playButtonKnob];
  [v3 setHidden:1];

  v4 = [(CRLMovieRep *)self p_playButtonKnob];
  v5 = [v4 renderable];
  [v5 removeAnimationForKey:@"hidden"];

  v11 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  LODWORD(v6) = 1.0;
  v7 = [NSNumber numberWithFloat:v6];
  [v11 setFromValue:v7];

  v8 = [NSNumber numberWithFloat:0.0];
  [v11 setToValue:v8];

  [v11 setDuration:0.2];
  v9 = [(CRLMovieRep *)self p_playButtonKnob];
  v10 = [v9 renderable];
  [v10 addAnimation:v11 forKey:@"hidden"];
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
    v7 = [(CRLCanvasRep *)self interactiveCanvasController];
    v3 = [v7 canvasEditor];
    v4 = [(CRLMovieRep *)self movieItem];
    v5 = [v3 selectionPathWithInfo:v4];
    v6 = [v7 editorController];
    [v6 setSelectionPath:v5];

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

- (void)p_hideControlsWithDelay:(double)a3
{
  v5 = [(CRLCanvasRep *)self interactiveCanvasController];
  v6 = [v5 freehandDrawingToolkit];
  v7 = [v6 isLassoSelectionForMixedTypeEnabledInDrawingMode];

  if (!self->_hideControlsTimeoutTimer && (v7 & 1) == 0)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100187430;
    v10[3] = &unk_101842CB0;
    v10[4] = self;
    v8 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v10 block:a3];
    hideControlsTimeoutTimer = self->_hideControlsTimeoutTimer;
    self->_hideControlsTimeoutTimer = v8;
  }
}

- (BOOL)p_isPresentingMiniFormatterOrPlayButtonVisible
{
  v2 = [(CRLCanvasRep *)self interactiveCanvasController];
  v3 = [v2 layerHost];
  v4 = [v3 miniFormatterPresenter];
  v5 = [v4 isPresentingMiniFormatter];

  return v5;
}

- (BOOL)p_isMovieKnob:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)directlyManagesVisibilityOfKnob:(id)a3
{
  v4 = a3;
  if ([(CRLMovieRep *)self p_isMovieKnob:v4])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CRLMovieRep;
    v5 = [(CRLCanvasRep *)&v7 directlyManagesVisibilityOfKnob:v4];
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
  v3 = [(CRLCanvasRenderable *)self->_playerRenderable layer];
  [(CRLMovieRep *)self p_applyRoundedCornersTo:v3];
}

- (BOOL)canUseSpecializedHitRegionForKnob:(id)a3
{
  v4 = a3;
  if ([(CRLMovieRep *)self p_isMovieKnob:v4])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CRLMovieRep;
    v5 = [(CRLCanvasRep *)&v7 canUseSpecializedHitRegionForKnob:v4];
  }

  return v5;
}

- (CGPoint)positionOfPlayKnobForBounds:(CGRect)a3 viewScale:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  MinX = CGRectGetMinX(a3);
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
  v14 = MaxX - 36.0 / a4;
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
    v14 = 36.0 / a4 + MinX;
  }

  v16 = v15 - 36.0 / a4;
  result.y = v16;
  result.x = v14;
  return result;
}

- (CGPoint)positionOfStandardKnob:(id)a3 forBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v21.receiver = self;
  v21.super_class = CRLMovieRep;
  v9 = a3;
  [(CRLCanvasRep *)&v21 positionOfStandardKnob:v9 forBounds:x, y, width, height];
  v11 = v10;
  v13 = v12;
  v14 = [(CRLMovieRep *)self p_playButtonKnob:v21.receiver];

  if (v14 == v9)
  {
    if (![(CRLMovieRep *)self p_playButtonFitsInFrame])
    {
      [(CRLMovieRep *)self p_updatePlayButtonVisibility];
    }

    v15 = [(CRLCanvasRep *)self canvas];
    [v15 viewScale];
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
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  v4 = [v3 editingDisabled];

  if (v4)
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
    v5 = [(CRLMovieRep *)self playButtonImage];
    v6 = +[CRLMovieRep CRLMovieButtonFillColor];
    v7 = [(CRLMovieKnob *)v4 initWithImage:v5 radius:v6 backgroundColor:self onRep:24.0];
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
    v5 = [(CRLMovieRep *)self pauseButtonImage];
    v4 = [(CRLMovieRep *)self p_playButtonKnob];
    [v4 setImage:v5];
  }
}

- (void)p_usePlayButtonKnobImage
{
  if (self->_playButtonShowingPause)
  {
    self->_playButtonShowingPause = 0;
    v5 = [(CRLMovieRep *)self playButtonImage];
    v4 = [(CRLMovieRep *)self p_playButtonKnob];
    [v4 setImage:v5];
  }
}

- (void)p_hidePlayPauseButtonKnob
{
  v2 = [(CRLMovieRep *)self p_playButtonKnob];
  [v2 setHidden:1];
}

- (void)p_updateUsePlayPauseButtonToMatchIsPlaying:(BOOL)a3
{
  v3 = a3;
  if ([(CRLMovieRep *)self p_isLoopingSticker])
  {

    [(CRLMovieRep *)self p_hidePlayPauseButtonKnob];
  }

  else if (v3)
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
  v3 = [(CRLCanvasKnob *)self->_playButtonKnob renderable];
  [v3 bounds];
  v8 = sub_100120414(v4, v5, v6, v7);
  v10 = v9;

  v11 = [(CRLCanvasButtonKnob *)self->_playButtonKnob imageRenderable];
  [v11 setPosition:{v8 + 2.88, v10}];

  +[CATransaction commit];
}

- (void)p_positionPauseButtonImage
{
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  v3 = [(CRLCanvasKnob *)self->_playButtonKnob renderable];
  [v3 bounds];
  v8 = sub_100120414(v4, v5, v6, v7);
  v10 = v9;
  v11 = [(CRLCanvasButtonKnob *)self->_playButtonKnob imageRenderable];
  [v11 setPosition:{v8, v10}];

  +[CATransaction commit];
}

- (void)p_updateUIStateForMoviePlayability
{
  if (!self->_didCheckPlayability && !self->_assetForPlayability)
  {
    v3 = [(CRLMovieRep *)self movieItem];
    v4 = [v3 movieAssetPayload];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100188138;
    v15[3] = &unk_10183AB38;
    v15[4] = self;
    v5 = objc_retainBlock(v15);
    if (v4)
    {
      if ([v4 needsDownload])
      {
        self->_isPlayable = 0;
        self->_didCheckPlayability = 1;
      }

      else
      {
        v6 = [v4 type];
        v7 = [v6 identifier];
        v8 = [CRLAnimatedGIFController canInitWithDataType:v7];

        if (!v8)
        {
          v9 = [v4 AVAssetAndReturnError:0];
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
        self->_isPlayable = [v4 needsDownload] ^ 1;
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
  v3 = [(CRLCanvasRep *)self canvas];
  if ([v3 isCanvasInteractive])
  {
    v4 = [(CRLCanvasRep *)self canvas];
    [(CRLCanvasRep *)self naturalBounds];
    [v4 convertUnscaledToBoundsSize:{v5, v6}];
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
  v36 = [(CRLCanvasRep *)self canvas];
  if ([v36 isCanvasInteractive])
  {
    didCancelUpdatingPlayButtonVisibility = self->_didCancelUpdatingPlayButtonVisibility;

    if (didCancelUpdatingPlayButtonVisibility)
    {
      return;
    }

    v36 = [(CRLCanvasRep *)self interactiveCanvasController];
    v4 = [v36 editorController];
    v5 = [v4 selectionPath];
    v6 = [v36 modelsForSelectionPath:v5];

    v7 = [(CRLMovieRep *)self movieItem];
    if ([v6 count] == 1)
    {
      v34 = [v6 anyObject];
    }

    else
    {
      v34 = 0;
    }

    v33 = [(CRLMovieRep *)self p_playButtonFitsInFrame];
    if ([(CRLMovieRep *)self p_isLoopingSticker])
    {
      if ([v36 editingDisabled])
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

    v9 = [(CRLCanvasRep *)self interactiveCanvasController];
    v10 = [v9 layerHost];
    v11 = [v10 asiOSCVC];
    v35 = [v11 isCurrentlyInQuickSelectMode];

    v12 = objc_opt_class();
    v13 = [(CRLCanvasRep *)self interactiveCanvasController];
    v14 = [v13 layerHost];
    v15 = sub_100014370(v12, v14);

    v16 = [v15 delegate];
    if (objc_opt_respondsToSelector())
    {
      v17 = [v16 allowsMoviePlayButton] ^ 1;
    }

    else
    {
      v17 = 0;
    }

    v18 = [v36 editingCoordinator];
    v19 = [v18 followCoordinator];
    v20 = [v19 isFollowing];

    v21 = 0;
    if ((v8 | v35) & 1) != 0 || (v17)
    {
      goto LABEL_21;
    }

    if (self->_didCheckPlayability)
    {
      v21 = 0;
      if ([(CRLMovieRep *)self isPlaying]|| ((v33 ^ 1) & 1) != 0)
      {
        goto LABEL_21;
      }

      if (!self->_isChangingDynamicVisibleTimeCount)
      {
        v31 = [(CRLCanvasRep *)self repForSelecting];
        if (v31 == self)
        {
          v21 = 1;
        }

        else
        {
          v32 = [(CRLCanvasRep *)self repForSelecting];
          v21 = (v32 == 0) & v20;
        }

        goto LABEL_21;
      }
    }

    v21 = 0;
LABEL_21:
    v22 = [(CRLMovieRep *)self p_playButtonKnob];
    v23 = [v22 isHidden];

    if (v21 == v23)
    {
      [(CRLMovieRep *)self p_updateUsePlayPauseButtonToMatchIsPlaying:[(CRLMovieRep *)self isPlaying]];
      [(CRLMovieRep *)self p_invalidateHideControlsTimeoutTimer];
      v24 = v34;
      if (v21)
      {
        [(CRLMovieRep *)self p_showControls];
        v25 = [(CRLCanvasRep *)self canvas];
        [v25 invalidateContentLayersForRep:self];
      }

      else
      {
        if (v34 == v7)
        {
          v26 = 0;
        }

        else
        {
          v26 = [objc_msgSend(v34 "repClass")];
        }

        if (v33 && (v26 & 1) == 0 && self->_didCheckPlayability && (-[CRLMovieRep p_playButtonKnob](self, "p_playButtonKnob"), v27 = objc_claimAutoreleasedReturnValue(), [v27 renderable], v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v28, "superlayer"), v29 = objc_claimAutoreleasedReturnValue(), v30 = v29 == 0, v29, v28, v27, ((v30 | v35) & 1) == 0))
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
      v24 = v34;
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
      v3 = [(CRLCanvasRep *)self interactiveCanvasController];
      [v3 invalidateContentLayersForRep:self];
    }

    [(CRLMovieRep *)self p_invalidateHideControlsTimeoutTimer];
  }
}

- (void)playerController:(id)a3 playbackDidFailWithError:(id)a4
{
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100188C84;
  v10 = &unk_10183AE28;
  v11 = self;
  v12 = a4;
  v5 = v12;
  Main = CFRunLoopGetMain();
  CFRunLoopPerformBlock(Main, kCFRunLoopDefaultMode, &v7);
  CFRunLoopWakeUp(Main);
  [(CRLMovieRep *)self p_updateUsePlayPauseButtonToMatchIsPlaying:0, v7, v8, v9, v10, v11];
  [(CRLMovieRep *)self p_invalidateHideControlsTimeoutTimer];
}

- (void)playbackDidStopForPlayerController:(id)a3
{
  [(CRLMovieRep *)self p_setNeedsTeardownPlayerControllerOnUpdateRenderable];
  v4 = [(CRLCanvasRep *)self canvas];
  [v4 invalidateContentLayersForRep:self];
}

- (id)nowPlayingTitleWithPlaybackController:(id)a3
{
  if (self->_playerController == a3)
  {
    v4 = [(CRLMovieRep *)self movieItem];
    v3 = [v4 title];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)nowPlayingImageProviderWithPlaybackController:(id)a3
{
  if (self->_playerController == a3)
  {
    v5 = [(CRLMovieRep *)self p_posterImageProvider];
  }

  else
  {
    v5 = 0;
  }

  return v5;
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
    v3 = [(CRLMovieRep *)self playerControllerForcingCreationIfNotPreExisting];
    [v3 setPlaying:1];

    [(CRLMovieRep *)self p_updateUsePlayPauseButtonToMatchIsPlaying:1];

    [(CRLMovieRep *)self p_updateLoopingSettingForMoviePlaybackIfNeeded];
  }
}

- (void)i_togglePlayPauseTriggeredFromKnob
{
  if (![(CRLCanvasRep *)self isSelected])
  {
    v3 = [(CRLCanvasRep *)self interactiveCanvasController];
    v4 = [v3 canvasEditor];
    v5 = [(CRLMovieRep *)self movieItem];
    v6 = [v4 selectionPathWithInfo:v5];
    v7 = [v3 editorController];
    [v7 setSelectionPath:v6];
  }

  if ([(CRLMovieRep *)self isPlaying])
  {
    [(CRLMovieRep *)self p_pauseTriggeredFromKnob];
  }

  else
  {
    [(CRLMovieRep *)self p_playTriggeredFromKnob];
  }

  v11 = [(CRLCanvasRep *)self interactiveCanvasController];
  v8 = [v11 freehandDrawingToolkit];
  v9 = [v8 isLassoSelectionForMixedTypeEnabledInDrawingMode];

  if (v9)
  {
    v10 = [v11 canvasEditor];
    [v10 hideLassoSelectionEditMenuInDrawingModeIfLassoToolIsSelected];
  }
}

- (void)p_togglePlaying
{
  if ([(CRLMovieRep *)self isPlayable])
  {
    v3 = [(CRLMovieRep *)self playerControllerForcingCreationIfNotPreExisting];
    v4 = [v3 isPlaying];

    v5 = [(CRLMovieRep *)self playerControllerForcingCreationIfNotPreExisting];
    [v5 setPlaying:v4 ^ 1];

    [(CRLMovieRep *)self p_updateUsePlayPauseButtonToMatchIsPlaying:v4 ^ 1];

    [(CRLMovieRep *)self p_invalidateHideControlsTimeoutTimer];
  }
}

- (void)updateUI_toMatchPlayer
{
  v3 = [(CRLMovieRep *)self playerControllerForcingCreationIfNotPreExisting];
  [v3 updatePlayingToMatchPlayer];

  v4 = [(CRLMovieRep *)self isPlaying];
  self->_playerLayerShouldBeDisplayed = v4;
  [(CRLMovieRep *)self p_updateUsePlayPauseButtonToMatchIsPlaying:v4];
  [(CRLMovieRep *)self p_updatePlayButtonVisibility];
  v5 = [(CRLCanvasRep *)self interactiveCanvasController];
  [v5 invalidateContentLayersForRep:self];
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

    v9 = [(CRLMovieRep *)self movieItem];
    v10 = [v9 movieAssetPayload];

    if ([v10 needsDownload])
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

    v14 = [v10 type];
    v15 = [v14 identifier];
    v16 = [CRLAnimatedGIFController canInitWithDataType:v15];

    if (v16)
    {
      [(CRLMovieRep *)self willChangeValueForKey:@"playerController"];
      v17 = [[CRLAnimatedGIFController alloc] initWithData:v10 delegate:self];
      playerController = self->_playerController;
      self->_playerController = v17;

      [(CRLMovieRep *)self didChangeValueForKey:@"playerController"];
    }

    else
    {
      v19 = [(CRLMovieRep *)self movieItem];
      v20 = [v19 makeAVAssetAndReturnError:0];

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
      v42 = self;
      v43 = 2048;
      v44 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "movie rep %p creating player controller %p", buf, 0x16u);
    }

    [(CRLMovieRep *)self p_updateStartTime];
    v28 = [(CRLMovieRep *)self movieItem];
    [v28 endTime];
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
    v40 = self;
    v33 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v34 = [v33 mutableCopy];
    v35 = v34;
    v36 = self->_playerController;
    if (v36)
    {
      [v34 setObject:v36 forKeyedSubscript:@"CRLInteractiveCanvasControllerPlayerControllerKey"];
    }

    v37 = +[NSNotificationCenter defaultCenter];
    v38 = [(CRLCanvasRep *)self interactiveCanvasController];
    [v37 postNotificationName:@"CRLInteractiveCanvasControllerDidUpdateMoviePlayerControllerNotification" object:v38 userInfo:v35];
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

    v9 = [(CRLCanvasRenderableMediaPlayerController *)playerController isPlaying];
    v10 = self->_playerController;
    if (v9)
    {
      [(CRLCanvasRenderableMediaPlayerController *)v10 setPlaying:0];
    }

    else
    {
      v11 = [(CRLCanvasRenderableMediaPlayerController *)v10 isFastReversing];
      v12 = self->_playerController;
      if (v11)
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
      v27 = self;
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
    v22 = [(CRLCanvasRep *)self interactiveCanvasController];
    v24 = @"CRLInteractiveCanvasControllerMediaRepKey";
    v25 = self;
    v23 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    [v21 postNotificationName:@"CRLInteractiveCanvasControllerDidUpdateMoviePlayerControllerNotification" object:v22 userInfo:v23];

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
    v6 = [(CRLMovieRep *)self playerControllerForcingCreationIfNotPreExisting];
    LODWORD(v5) = v4;
    [v6 setVolume:v5];
  }
}

- (void)p_updateStartTime
{
  if (self->_playerController)
  {
    v3 = [(CRLMovieRep *)self movieItem];
    [v3 startTime];
    v5 = v4;

    v6 = [(CRLMovieRep *)self playerControllerForcingCreationIfNotPreExisting];
    [v6 setStartTime:v5];
  }
}

- (void)p_updateEndTime
{
  if (self->_playerController)
  {
    v3 = [(CRLMovieRep *)self movieItem];
    [v3 endTime];
    v5 = v4;

    v6 = [(CRLMovieRep *)self playerControllerForcingCreationIfNotPreExisting];
    [v6 setEndTime:v5];
  }
}

- (void)p_startOrStopLoopingStickerIfNecessary
{
  v16 = [(CRLCanvasRep *)self canvas];
  if ([v16 isCanvasInteractive])
  {
    v3 = [(CRLMovieRep *)self movieItem];
    v4 = [v3 isAnimatedImage];

    if (v4)
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
          v8 = 0;
        }

        else
        {
          v9 = [(CRLMovieRep *)self movieItem];
          v8 = [v9 isLooping];
        }

        v10 = [(CRLMovieRep *)self isPlaying];
        playerController = self->_playerController;
        if (playerController)
        {
          v12 = [(CRLCanvasRenderableMediaPlayerController *)playerController repeatMode]!= 1;
        }

        else
        {
          v12 = 1;
        }

        v13 = v10 ^ 1 | v12;
        if (v8)
        {
          if (v13)
          {
            [(CRLMovieRep *)self p_setupPlayerControllerIfNecessary];
            [(CRLCanvasRenderableMediaPlayerController *)self->_playerController setRepeatMode:1];
            [(CRLCanvasRenderableMediaPlayerController *)self->_playerController setPlaying:1];
            self->_playerLayerShouldBeDisplayed = 1;
            v14 = [(CRLCanvasRep *)self interactiveCanvasController];
            v15 = [v14 renderableForRep:self];
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
    v3 = [(CRLMovieRep *)self movieItem];
    v4 = [v3 isAnimatedImage];

    if ((v4 & 1) == 0)
    {
      v5 = [(CRLMovieRep *)self movieItem];
      v6 = [v5 isLooping];

      playerController = self->_playerController;

      [(CRLCanvasRenderableMediaPlayerController *)playerController setRepeatMode:v6];
    }
  }
}

- (BOOL)p_isLoopingSticker
{
  v3 = [(CRLMovieRep *)self movieItem];
  if ([v3 isAnimatedImage])
  {
    v4 = [(CRLMovieRep *)self movieItem];
    v5 = [v4 isLooping];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)additionalRenderablesOverRenderable
{
  v3 = objc_alloc_init(NSMutableArray);
  [(CRLMovieRep *)self p_startOrStopLoopingStickerIfNecessary];
  if (self->_playerRenderable)
  {
    [v3 addObject:?];
  }

  v4 = [(CRLMovieRep *)self p_playerStrokeRenderable];
  if (v4)
  {
    [v3 addObject:v4];
  }

  v7.receiver = self;
  v7.super_class = CRLMovieRep;
  v5 = [(CRLMediaRep *)&v7 additionalRenderablesOverRenderable];
  [v3 addObjectsFromArray:v5];

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
  v9 = [(CRLMovieRep *)self movieItem];
  v10 = [v9 movieAssetPayload];
  (v8[2])(v8, v10);

  v11 = [(CRLMovieRep *)self movieItem];
  v12 = [v11 posterImageAssetPayload];
  (v8[2])(v8, v12);
}

- (void)p_handleAssetPreparationCompletionForAsset:(id)a3
{
  v4 = a3;
  if (![(CRLCanvasRep *)self hasBeenRemoved])
  {
    [(CRLMovieRep *)self setNeedsDisplay];
    v5 = [(CRLCanvasRep *)self interactiveCanvasController];
    [v5 invalidateContentLayersForRep:self];

    v6 = [(CRLMovieRep *)self movieItem];
    v7 = [v6 movieAssetPayload];

    if (v7 == v4)
    {
      [(CRLMovieRep *)self p_stopUpdatingUIStateForMoviePlayability];
      [(CRLMovieRep *)self p_updateUIStateForMoviePlayability];
      v10 = +[NSNotificationCenter defaultCenter];
      v11 = [(CRLCanvasRep *)self interactiveCanvasController];
      v13 = @"CRLInteractiveCanvasControllerMediaRepKey";
      v14 = self;
      v12 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      [v10 postNotificationName:@"CRLInteractiveCanvasControllerDidLoadAssetForMediaRepNotification" object:v11 userInfo:v12];
    }

    else
    {
      v8 = [(CRLMovieRep *)self movieItem];
      v9 = [v8 posterImageAssetPayload];

      if (v9 == v4)
      {
        [(CRLMovieRep *)self p_showControls];
      }
    }

    [(CRLMovieRep *)self p_updatePlayButtonVisibility];
  }
}

- (id)visuallySignificantDataSet
{
  v3 = [(CRLMovieRep *)self movieItem];
  v4 = [v3 posterImageAssetPayload];

  v5 = [(CRLMovieRep *)self movieItem];
  v6 = [v5 movieAssetPayload];

  v7 = [[NSMutableSet alloc] initWithCapacity:2];
  v8 = v7;
  if (v4)
  {
    [v7 addObject:v4];
  }

  if (v6)
  {
    [v8 addObject:v6];
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
  v3 = [(CRLMovieRep *)self movieItem];
  v4 = [v3 posterImageAssetPayload];
  if ([v4 needsDownload])
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
  v3 = [(CRLCanvasRep *)&v5 dynamicResizeDidBegin];

  return v3;
}

- (void)dynamicResizeDidEndWithTracker:(id)a3
{
  v4 = a3;
  [(CRLMovieRep *)self p_disposeStrokeRenderable];
  v5.receiver = self;
  v5.super_class = CRLMovieRep;
  [(CRLCanvasRep *)&v5 dynamicResizeDidEndWithTracker:v4];
}

- (id)resizedGeometryForTransform:(CGAffineTransform *)a3
{
  memset(&v12, 0, sizeof(v12));
  v4 = [(CRLCanvasRep *)self layout];
  v5 = [v4 originalPureGeometry];
  v6 = v5;
  if (v5)
  {
    [v5 fullTransform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  v7 = *&a3->c;
  *&v10.a = *&a3->a;
  *&v10.c = v7;
  *&v10.tx = *&a3->tx;
  CGAffineTransformConcat(&v12, &t1, &v10);

  t1 = v12;
  v8 = [CRLCanvasInfoGeometry geometryFromFullTransform:&t1];

  return v8;
}

- (void)dynamicFreeTransformDidBeginWithTracker:(id)a3
{
  [(CRLMovieRep *)self p_disposeStrokeRenderable];
  v5.receiver = self;
  v5.super_class = CRLMovieRep;
  v4 = [(CRLCanvasRep *)&v5 dynamicResizeDidBegin];
}

- (void)dynamicFreeTransformDidEndWithTracker:(id)a3
{
  v4 = a3;
  [(CRLMovieRep *)self p_disposeStrokeRenderable];
  v5.receiver = self;
  v5.super_class = CRLMovieRep;
  [(CRLCanvasRep *)&v5 dynamicFreeTransformDidEndWithTracker:v4];
}

- (double)visibleTime
{
  if (self->_isChangingDynamicVisibleTimeCount)
  {
    v2 = [(CRLMovieRep *)self playerControllerForcingCreationIfNotPreExisting];
    [v2 absoluteCurrentTime];
  }

  else
  {
    v2 = [(CRLMovieRep *)self movieItem];
    [v2 posterTime];
  }

  v4 = v3;

  return v4;
}

- (double)absoluteCurrentTime
{
  v2 = [(CRLMovieRep *)self playerControllerForcingCreationIfNotPreExisting];
  [v2 absoluteCurrentTime];
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
    v7 = [(CRLMovieRep *)self playerControllerForcingCreationIfNotPreExisting];
    [v7 beginScrubbing];
  }
}

- (void)dynamicVisibleTimeUpdateToValue:(double)a3 withTolerance:(double)a4 completionHandler:(id)a5
{
  v8 = a5;
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

  v15 = [(CRLMovieRep *)self playerControllerForcingCreationIfNotPreExisting];
  [v15 scrubToTime:v8 withTolerance:a3 completionHandler:a4];
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

  v3 = [(CRLMovieRep *)self movieItem];
  [v3 volume];
  v5 = v4;

  return v5;
}

- (void)dynamicVolumeChangeDidBegin
{
  [(CRLMovieRep *)self volume];
  self->_dynamicVolume = v3;
  self->_isChangingDynamicVolume = 1;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (off_1019EDD08 == a6)
  {
    [(CRLMovieRep *)self p_updatePlayButtonVisibility];
    [(CRLCanvasRep *)self invalidateKnobs];
  }

  else if (off_1019EDD00 == a6)
  {
    v14 = [v12 objectForKey:NSKeyValueChangeNewKey];
    v15 = [v14 BOOLValue];

    if (v15)
    {
      v16 = objc_opt_class();
      v17 = sub_100013F00(v16, self->_playerRenderable);
      [v17 removeReadyToDisplayObserver:self context:off_1019EDD00];
      self->_currentlyObservingPlayerLayer = 0;
      self->_playerLayerShouldBeDisplayed = 1;
      v18 = [(CRLCanvasRep *)self interactiveCanvasController];
      [v18 invalidateContentLayersForRep:self];
    }
  }

  else
  {
    v19.receiver = self;
    v19.super_class = CRLMovieRep;
    [(CRLMovieRep *)&v19 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
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

- (BOOL)handleSingleTapAtPoint:(CGPoint)a3 inputType:(int64_t)a4
{
  if ([(CRLMovieRep *)self noKnobTogglePlayAndMiniFormatter:a4])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = [(CRLMovieRep *)self isPlaying];
    if (v5)
    {
      [(CRLMovieRep *)self toggleShowingControls];
      LOBYTE(v5) = 1;
    }
  }

  return v5;
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

  v4 = [(CRLCanvasRep *)self interactiveCanvasController];
  v3 = [v4 renderableForRep:self];
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
    v4 = [(CRLCanvasRep *)self interactiveCanvasController];
    v3 = [v4 renderableForRep:self];
    [(CRLMovieRep *)self p_arrangeRenderableVisibility:v3];
    [(CRLMovieRep *)self p_startOrStopLoopingStickerIfNecessary];
  }
}

- (void)prepareForPreview
{
  v2 = self;
  if ([(CRLMovieRep *)v2 isPlaying])
  {
    [(CRLMovieRep *)v2 pausePlaybackIfNeeded];
  }
}

- (void)enterPreviewMode
{
  v5 = self;
  [(CRLMovieRep *)v5 prepareForPreview];
  v2 = [(CRLCanvasRep *)v5 info];
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