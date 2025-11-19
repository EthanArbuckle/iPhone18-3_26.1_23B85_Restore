@interface AVPlayerLayer
+ (AVPlayerLayer)playerLayerWithPlayer:(AVPlayer *)player;
+ (id)keyPathsForValuesAffecting_presentationSize;
+ (id)makeClosedCaptionLayer;
+ (void)_swapSublayersBetweenPlayerLayer:(id)a3 andPlayerLayer:(id)a4;
- (AVLayerVideoGravity)videoGravity;
- (AVPlayer)player;
- (AVPlayerLayer)init;
- (AVPlayerLayer)initWithLayer:(id)a3;
- (BOOL)_currentWindowSceneIsForeground;
- (BOOL)_currentWindowSceneIsForegroundDefault;
- (BOOL)_interstitialLayerIsVisible;
- (BOOL)_isPartOfForegroundScene;
- (BOOL)_overridesPreferredDynamicRangeForVideo;
- (BOOL)_showInterstitialInstead;
- (BOOL)_willManageSublayersAsSwappedLayers;
- (BOOL)isLanczosFilterDownscalingEnabled;
- (BOOL)isOverscanSubtitleSupportEnabled;
- (BOOL)isReadyForDisplay;
- (CGRect)_videoRectForBounds:(CGRect)a3;
- (CGRect)videoRect;
- (CGSize)_displaySize;
- (CGSize)_presentationSize;
- (CVPixelBufferRef)copyDisplayedPixelBuffer;
- (NSDictionary)pixelBufferAttributes;
- (NSEdgeInsets)legibleContentInsets;
- (float)_percentCoverageRelativeToRootLayer;
- (id)_STSLabel;
- (id)_associatedRemoteModeLayer;
- (id)_closedCaptionLayer;
- (id)_interstitialLayer;
- (id)_maskLayer;
- (id)_sublayersForPIP;
- (id)_subtitleLayer;
- (id)_videoLayer;
- (id)videoPerformanceMetrics;
- (int64_t)_activeMode;
- (int64_t)lanczosFilterDownscaleFactor;
- (void)_addAnimationsForClosedCaptionLayer:(id)a3 gravity:(id)a4 forKey:(id)a5;
- (void)_addAnimationsForMaskLayer:(id)a3 forKey:(id)a4;
- (void)_addAnimationsForPIPPlaceholderLayer:(id)a3 forKey:(id)a4;
- (void)_addAnimationsForVideoLayer:(id)a3 size:(CGSize)a4 gravity:(id)a5 forKey:(id)a6;
- (void)_addBoundsAnimationToLayer:(id)a3 usingAnimation:(id)a4 forKey:(id)a5;
- (void)_addObserversForVideoLayer:(id)a3;
- (void)_addPositionAnimationToLayer:(id)a3 usingAnimation:(id)a4 forKey:(id)a5;
- (void)_addSublayerTransformAnimationToLayer:(id)a3 fromTransform:(CATransform3D *)a4 usingAnimation:(id)a5 gravity:(id)a6 presentationSize:(CGSize)a7 forKey:(id)a8;
- (void)_applyCurrentItemPresentationSizeChangeAndForceUpdate:(BOOL)a3;
- (void)_applyPresentationSizeChange:(CGSize)a3 andForceUpdate:(BOOL)a4;
- (void)_associateWithLayer:(id)a3 forMode:(int64_t)a4;
- (void)_configurePlayerWhenEnteringPIP;
- (void)_configurePlayerWhenLeavingPIP;
- (void)_disassociateWithLayerForMode:(int64_t)a3;
- (void)_enterPIPModeRedirectingVideoToLayer:(id)a3;
- (void)_enterSecondScreenModeRedirectingVideoToLayer:(id)a3;
- (void)_forBoundsAnimations:(id)a3 applyBlock:(id)a4;
- (void)_forceWindowSceneEvent:(BOOL)a3;
- (void)_getMaskLayer:(id *)a3 videoLayer:(id *)a4 subtitleLayer:(id *)a5 closedCaptionLayer:(id *)a6 interstitialLayer:(id *)a7;
- (void)_handleIsDisplayingClosedCaptionsDidChange:(BOOL)a3 player:(id)a4;
- (void)_handleNonForcedSubtitleDisplayDidChange:(BOOL)a3 player:(id)a4;
- (void)_handlePlayerCurrentItemDidChangeForPlayer:(id)a3;
- (void)_leavePIPModeForLayer:(id)a3;
- (void)_leaveSecondScreenModeForLayer:(id)a3;
- (void)_mergeClientLayersIntoMaskLayer:(id)a3;
- (void)_notifyPlayerOfDisplaySize;
- (void)_notifyPlayerOfLayerForegroundStateChange;
- (void)_rebuildVideoLayerIfNecessary;
- (void)_removeObserversForVideoLayer:(id)a3;
- (void)_restoreClientLayers:(id)a3 intoMaskLayer:(id)a4;
- (void)_setIsConnectedToSecondScreen:(BOOL)a3;
- (void)_setIsPartOfForegroundScene:(BOOL)a3;
- (void)_setOverridesPreferredDynamicRangeForVideo:(BOOL)a3;
- (void)_setPlayer:(id)a3 forPIP:(BOOL)a4;
- (void)_setPreventsChangesToSublayerHierarchy:(BOOL)a3;
- (void)_setShowInterstitialInstead:(BOOL)a3 afterDelay:(double)a4;
- (void)_setSublayersForPIP:(id)a3 updateReadyForDisplay:(BOOL)a4;
- (void)_setSublayersPreventChangesToSublayerHierarchy:(BOOL)a3;
- (void)_setWillManageSublayersAsSwappedLayers:(BOOL)a3;
- (void)_startObservingPlayer:(id)a3;
- (void)_stashClientLayers;
- (void)_stopObservingPlayer:(id)a3;
- (void)_unstashClientLayers;
- (void)_updateIsPartOfForegroundScene;
- (void)_updatePreferredDynamicRangeWithAnimation:(BOOL)a3;
- (void)_updateReadyForDisplay:(BOOL)a3 skipInformingParent:(BOOL)a4 forceKVO:(BOOL)a5;
- (void)_updateReadyForDisplayForPlayerCurrentItemAndForceKVO:(BOOL)a3;
- (void)_updateReadyForDisplayOnMainQueue:(BOOL)a3 skipInformingParent:(BOOL)a4 forceKVO:(BOOL)a5;
- (void)_windowSceneDidEnterBackground:(id)a3;
- (void)_windowSceneWillEnterForeground:(id)a3;
- (void)addAnimation:(id)a3 forKey:(id)a4;
- (void)addSublayer:(id)a3;
- (void)dealloc;
- (void)declareKeyPathDependenciesWithRegistry:(id)a3;
- (void)enterPIPModeRedirectingVideoToLayer:(id)a3;
- (void)hasEnqueuedVideoFrameChanged:(id)a3;
- (void)insertSublayer:(id)a3 above:(id)a4;
- (void)insertSublayer:(id)a3 atIndex:(unsigned int)a4;
- (void)insertSublayer:(id)a3 below:(id)a4;
- (void)layerDidBecomeVisible:(BOOL)a3;
- (void)layoutSublayers;
- (void)leavePIPMode;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeAllAnimations;
- (void)removeAnimationForKey:(id)a3;
- (void)removeFromSuperlayer;
- (void)replaceSublayer:(id)a3 with:(id)a4;
- (void)setBounds:(CGRect)a3;
- (void)setContentsScale:(double)a3;
- (void)setForScrubbingOnly:(BOOL)a3;
- (void)setLanczosFilterDownscaleFactor:(int64_t)a3;
- (void)setLanczosFilterDownscalingEnabled:(BOOL)a3;
- (void)setLegibleContentInsets:(NSEdgeInsets)a3;
- (void)setLegibleDisplayEnabled:(BOOL)a3;
- (void)setOverscanSubtitleSupportEnabled:(BOOL)a3;
- (void)setPIPModeEnabled:(BOOL)a3;
- (void)setPixelBufferAttributes:(NSDictionary *)pixelBufferAttributes;
- (void)setPlaceholderContentLayerDuringPIPMode:(id)a3;
- (void)setPreferredDynamicRange:(id)a3;
- (void)setSublayers:(id)a3;
- (void)setToneMapToStandardDynamicRange:(BOOL)a3;
- (void)setVideoGravity:(AVLayerVideoGravity)videoGravity;
- (void)startRedirectingVideoToLayer:(id)a3 forMode:(int64_t)a4;
- (void)stopRedirectingVideoToLayer:(id)a3;
@end

@implementation AVPlayerLayer

uint64_t __32__AVPlayerLayer_layoutSublayers__block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v2 = (a1 + 96);
  v3 = (a1 + 104);
  [*(*(*(a1 + 32) + 48) + 248) setFrame:{*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)}];
  [*(a1 + 40) setFrame:{*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)}];
  [*(a1 + 48) setFrame:{*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)}];
  v4 = *(a1 + 56);
  if (v4)
  {
    if (*(a1 + 304) == 1)
    {
      [v4 setVideosize:{*(a1 + 112), *(a1 + 120)}];
      [*(a1 + 56) setVideoRelativeToViewport:{*(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152)}];
      v4 = *(a1 + 56);
    }

    [v4 setViewport:{*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)}];
  }

  v5 = *(a1 + 304);
  if (v5)
  {
    v2 = (a1 + 112);
    v3 = (a1 + 120);
    VideoPresentationBounds = getVideoPresentationBounds(@"AVLayerVideoGravityResizeAspect", *(a1 + 112), *(a1 + 120), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104));
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    VideoPresentationBounds = *(a1 + 80);
    v8 = *(a1 + 88);
    v10 = *(a1 + 96);
    v12 = *(a1 + 104);
  }

  [*(a1 + 64) setHidden:v5 ^ 1];
  [*(a1 + 64) setShouldResizeVideoLayer:v5];
  [*(a1 + 64) setBounds:{0.0, 0.0, *v2, *v3}];
  [*(a1 + 64) setNeedsLayout];
  v13 = *(a1 + 72);
  v23.origin.x = VideoPresentationBounds;
  v23.origin.y = v8;
  v23.size.width = v10;
  v23.size.height = v12;
  MidX = CGRectGetMidX(v23);
  v24.origin.x = VideoPresentationBounds;
  v24.origin.y = v8;
  v24.size.width = v10;
  v24.size.height = v12;
  [v13 setPosition:{MidX, CGRectGetMidY(v24)}];
  [*(a1 + 72) setBounds:{VideoPresentationBounds, v8, v10, v12}];
  [*(*(*(a1 + 32) + 48) + 8) setBounds:{*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)}];
  [*(a1 + 64) setPosition:{*(a1 + 160), *(a1 + 168)}];
  v15 = *(a1 + 64);
  v16 = *(a1 + 256);
  v22[4] = *(a1 + 240);
  v22[5] = v16;
  v17 = *(a1 + 288);
  v22[6] = *(a1 + 272);
  v22[7] = v17;
  v18 = *(a1 + 192);
  v22[0] = *(a1 + 176);
  v22[1] = v18;
  v19 = *(a1 + 224);
  v22[2] = *(a1 + 208);
  v22[3] = v19;
  [v15 setSublayerTransform:v22];
  if ([*(a1 + 32) isLanczosFilterDownscalingEnabled])
  {
    v20 = [objc_msgSend(objc_msgSend(*(a1 + 32) "_videoLayer")];
    [v20 setMinificationFilter:*MEMORY[0x1E6979820]];
  }

  return [MEMORY[0x1E6979518] commit];
}

- (void)layoutSublayers
{
  v52 = 0;
  v53 = 0;
  v50 = 0;
  v51 = 0;
  v49 = 0;
  [(AVPlayerLayer *)self _getMaskLayer:&v53 videoLayer:&v52 subtitleLayer:&v51 closedCaptionLayer:&v50 interstitialLayer:&v49];
  if (self->_playerLayer)
  {
    v3 = v52 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    [(AVPlayerLayer *)self bounds];
    x = v54.origin.x;
    y = v54.origin.y;
    width = v54.size.width;
    height = v54.size.height;
    v8 = fabs(CGRectGetMidX(v54));
    v55.origin.x = x;
    v55.origin.y = y;
    v55.size.width = width;
    v55.size.height = height;
    v9 = fabs(CGRectGetMidY(v55));
    [(AVPlayerLayer *)self _presentationSize];
    v11 = v10;
    v13 = v12;
    v14 = *(MEMORY[0x1E69792E8] + 80);
    v45 = *(MEMORY[0x1E69792E8] + 64);
    v46 = v14;
    v15 = *(MEMORY[0x1E69792E8] + 112);
    v47 = *(MEMORY[0x1E69792E8] + 96);
    v48 = v15;
    v16 = *(MEMORY[0x1E69792E8] + 16);
    v41 = *MEMORY[0x1E69792E8];
    v42 = v16;
    v17 = *(MEMORY[0x1E69792E8] + 48);
    v43 = *(MEMORY[0x1E69792E8] + 32);
    v44 = v17;
    v18 = *(MEMORY[0x1E695F058] + 16);
    v39 = *MEMORY[0x1E695F058];
    v40 = v18;
    AVLayerTransformForPlacement([(AVPlayerLayer *)self videoGravity], 0, &v41, v10, v13, width, height);
    v19 = *(MEMORY[0x1E695F060] + 8) != v13 || *MEMORY[0x1E695F060] != v11;
    if (v19)
    {
      *&v39 = getVideoPresentationBounds([(AVPlayerLayer *)self videoGravity], v11, v13, x, y, width, height);
      *(&v39 + 1) = v20;
      *&v40 = v21;
      *(&v40 + 1) = v22;
    }

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __32__AVPlayerLayer_layoutSublayers__block_invoke;
    v25[3] = &unk_1E7460C48;
    *&v25[10] = x;
    *&v25[11] = y;
    *&v25[12] = width;
    *&v25[13] = height;
    v25[4] = self;
    v25[5] = v53;
    v25[6] = v49;
    v25[7] = v51;
    v38 = v19;
    *&v25[14] = v11;
    *&v25[15] = v13;
    v27 = v40;
    v26 = v39;
    v25[8] = v52;
    v25[9] = v50;
    v28 = v8;
    v29 = v9;
    v33 = v44;
    v32 = v43;
    v31 = v42;
    v30 = v41;
    v37 = v48;
    v36 = v47;
    v35 = v46;
    v34 = v45;
    AVSerializeOnQueueAsyncIfNecessary(MEMORY[0x1E69E96A0], v25);
    v23 = [(AVPlayerLayer *)self player];
    [(AVPlayer *)v23 _updateClosedCaptionLayerBounds:v50 videoRelativeToViewport:&v39 captionsAvoidanceMargins:&self->_playerLayer->legibleContentInsets];
  }

  v24.receiver = self;
  v24.super_class = AVPlayerLayer;
  [(AVPlayerLayer *)&v24 layoutSublayers];
}

- (CGSize)_presentationSize
{
  if (avPlayerLayerUseVideoLayerPresentationSize())
  {
    v3 = [(AVPlayerLayer *)self _videoLayer];
    if (v3)
    {
      [v3 presentationSize];
    }

    else
    {
      v4 = *MEMORY[0x1E695F060];
      v5 = *(MEMORY[0x1E695F060] + 8);
    }
  }

  else
  {
    [[(AVPlayerLayer *)self player] _cachedPresentationSizeOfCurrentItem];
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (id)_videoLayer
{
  v3 = 0;
  [(AVPlayerLayer *)self _getMaskLayer:0 videoLayer:&v3 subtitleLayer:0 closedCaptionLayer:0 interstitialLayer:0];
  return v3;
}

- (AVPlayer)player
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  playerLayer = self->_playerLayer;
  if (playerLayer->isPresentationLayer)
  {
    v3 = playerLayer->player;
    v9[5] = v3;
  }

  else
  {
    serialQueue = playerLayer->serialQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __23__AVPlayerLayer_player__block_invoke;
    v7[3] = &unk_1E7460E68;
    v7[4] = self;
    v7[5] = &v8;
    dispatch_sync(serialQueue, v7);
    v3 = v9[5];
  }

  v5 = v3;
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (AVLayerVideoGravity)videoGravity
{
  v14 = [[AVTelemetryInterval alloc] initAndStartWith:78];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = @"AVLayerVideoGravityResizeAspect";
  playerLayer = self->_playerLayer;
  if (playerLayer->isPresentationLayer)
  {
    videoGravity = playerLayer->videoGravity;
    v13 = videoGravity;
  }

  else
  {
    serialQueue = playerLayer->serialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __29__AVPlayerLayer_videoGravity__block_invoke;
    block[3] = &unk_1E7460EE0;
    block[4] = self;
    block[5] = &v8;
    dispatch_sync(serialQueue, block);
    videoGravity = v9[5];
  }

  _Block_object_dispose(&v8, 8);
  AVTelemetryIntervalEnd(&v14);
  return videoGravity;
}

- (BOOL)isLanczosFilterDownscalingEnabled
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  playerLayer = self->_playerLayer;
  v10 = 0;
  serialQueue = playerLayer->serialQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__AVPlayerLayer_isLanczosFilterDownscalingEnabled__block_invoke;
  v6[3] = &unk_1E7460E68;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

id __29__AVPlayerLayer_videoGravity__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 48) + 88);
  if (result)
  {
    result = [result copyWithZone:0];
    *(*(*(a1 + 40) + 8) + 40) = result;
  }

  return result;
}

id __23__AVPlayerLayer_player__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 48) + 80);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (AVPlayerLayer)init
{
  v27 = [[AVTelemetryInterval alloc] initAndStartWith:77];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work();
  fig_note_initialize_category_with_default_work();
  v26.receiver = self;
  v26.super_class = AVPlayerLayer;
  v3 = [(AVPlayerLayer *)&v26 init];
  if (v3)
  {
    v4 = objc_alloc_init(AVPlayerLayerInternal);
    v3->_playerLayer = v4;
    if (v4)
    {
      CFRetain(v4);
      v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v3->_playerLayer->serialQueue = dispatch_queue_create("AVPlayerLayerQueue", v5);
      v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v3->_playerLayer->configurationQueue = dispatch_queue_create("com.apple.avfoundation.playerlayer.configuration", v6);
      v3->_playerLayer->maskLayer = objc_alloc_init(AVPlayerLayerIntermediateLayer);
      [(FigBaseCALayer *)v3->_playerLayer->maskLayer setEdgeAntialiasingMask:0];
      [(FigBaseCALayer *)v3->_playerLayer->maskLayer setMasksToBounds:1];
      [(AVPlayerLayer *)v3 addSublayer:v3->_playerLayer->maskLayer];
      v3->_playerLayer->isReadyForDisplayMutex = FigSimpleMutexCreate();
      v3->_playerLayer->isReadyForDisplay = 0;
      if (FigUseVideoReceiverForCALayer())
      {
        v7 = [objc_alloc(MEMORY[0x1E6970AE0]) initWithVideoReceiverAndUUID:0];
      }

      else
      {
        v7 = objc_alloc_init(MEMORY[0x1E6970AE0]);
      }

      v3->_playerLayer->videoLayer = v7;
      [(AVPlayerLayer *)v3 _addObserversForVideoLayer:v3->_playerLayer->videoLayer];
      [(FigBaseCALayer *)v3->_playerLayer->maskLayer addSublayer:v3->_playerLayer->videoLayer];
      [(FigVideoContainerLayer *)v3->_playerLayer->videoLayer setEdgeAntialiasingMask:0];
      [(AVPlayerLayer *)v3 setVideoGravity:@"AVLayerVideoGravityResizeAspect"];
      v3->_playerLayer->subtitleLayer = objc_alloc_init(MEMORY[0x1E6970AD8]);
      [(FigBaseCALayer *)v3->_playerLayer->maskLayer addSublayer:v3->_playerLayer->subtitleLayer];
      [(FigSubtitleCALayer *)v3->_playerLayer->subtitleLayer setEdgeAntialiasingMask:0];
      v3->_playerLayer->closedCaptionLayer = [objc_opt_class() makeClosedCaptionLayer];
      [(FigBaseCALayer *)v3->_playerLayer->closedCaptionLayer setHidden:1];
      [(FigBaseCALayer *)v3->_playerLayer->maskLayer addSublayer:v3->_playerLayer->closedCaptionLayer];
      [(FigBaseCALayer *)v3->_playerLayer->closedCaptionLayer setEdgeAntialiasingMask:0];
      v3->_playerLayer->loggingIdentifier = [[AVCommonLoggingIdentifier alloc] initWithIdentifierSuffix:0x1F0A91890 prefixlength:3];
      v3->_playerLayer->hudLayer = objc_alloc_init(AVNetworkPlaybackPerfHUDLayer);
      hudLayer = v3->_playerLayer->hudLayer;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __21__AVPlayerLayer_init__block_invoke;
      v25[3] = &unk_1E7460C00;
      v25[4] = v3;
      [(AVNetworkPlaybackPerfHUDLayer *)hudLayer readHudSettingsAndCallCompletionHandler:v25];
      [(FigSubtitleCALayer *)v3->_playerLayer->subtitleLayer setSubtitleGravityNonObscuring:1];
      v3->_playerLayer->latestAppliedPresentationSize = *MEMORY[0x1E695F060];
      v3->_playerLayer->lanczosDownscalingEnabled = 0;
      v3->_playerLayer->lanczosDownscalingFactor = 2;
      p_top = &v3->_playerLayer->legibleContentInsets.top;
      v10 = *(MEMORY[0x1E696A2A0] + 16);
      *p_top = *MEMORY[0x1E696A2A0];
      p_top[1] = v10;
      *&v3->_playerLayer->isLegibleDisplayEnabled = 1;
      [(FigVideoContainerLayer *)v3->_playerLayer->videoLayer setHidden:1];
      [(AVPlayerLayer *)v3 setPreferredDynamicRange:*MEMORY[0x1E69792A0]];
      [(FigVideoContainerLayer *)v3->_playerLayer->videoLayer addObserver:v3 forKeyPath:@"videoLayer" options:5 context:@"AVPlayerLayerVideoLayerObservationContext"];
      [(AVPlayerLayer *)v3 addObserver:v3 forKeyPath:@"contentsAreFlipped" options:4 context:@"AVPlayerLayerContentsAreFlippedObservationContext"];
      objc_initWeak(&location, v3);
      v11 = [MEMORY[0x1E696AD88] defaultCenter];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __21__AVPlayerLayer_init__block_invoke_2;
      v22[3] = &unk_1E7460BB0;
      objc_copyWeak(&v23, &location);
      v3->_playerLayer->playerItemHasEnqueuedVideoFrameListener = [v11 addObserverForName:@"AVPlayerItemHasEnqueuedVideoFrameDidChangeNotification" object:0 queue:0 usingBlock:v22];
      v12 = [MEMORY[0x1E696AD88] defaultCenter];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __21__AVPlayerLayer_init__block_invoke_3;
      v20[3] = &unk_1E7460BB0;
      objc_copyWeak(&v21, &location);
      v3->_playerLayer->windowSceneDidEnterBackgroundListener = [v12 addObserverForName:@"UISceneDidEnterBackgroundNotification" object:0 queue:0 usingBlock:v20];
      v13 = [MEMORY[0x1E696AD88] defaultCenter];
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __21__AVPlayerLayer_init__block_invoke_4;
      v18 = &unk_1E7460BB0;
      objc_copyWeak(&v19, &location);
      v3->_playerLayer->windowSceneWillEnterForegroundListener = [v13 addObserverForName:@"UISceneWillEnterForegroundNotification" object:0 queue:0 usingBlock:&v15];
      v3->_playerLayer->isPartOfForegroundScene = [(AVPlayerLayer *)v3 _currentWindowSceneIsForegroundDefault:v15];
      v3->_playerLayer->dependencyManager = [[AVKeyPathDependencyManager alloc] initWithDependencyHost:v3];
      [(AVKeyPathDependencyManager *)v3->_playerLayer->dependencyManager dependencyHostIsFullyInitialized];
      v3->_playerLayer->screenScale = 1.0;
      v3->_playerLayer->honorContentScale = 0;
      if (sniffUIWindowOnce != -1)
      {
        [AVPlayerLayer init];
      }

      objc_destroyWeak(&v19);
      objc_destroyWeak(&v21);
      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
    }

    else
    {

      v3 = 0;
    }
  }

  AVTelemetryIntervalEnd(&v27);
  return v3;
}

- (id)_subtitleLayer
{
  v3 = 0;
  [(AVPlayerLayer *)self _getMaskLayer:0 videoLayer:0 subtitleLayer:&v3 closedCaptionLayer:0 interstitialLayer:0];
  return v3;
}

+ (AVPlayerLayer)playerLayerWithPlayer:(AVPlayer *)player
{
  v4 = objc_alloc_init(AVPlayerLayer);
  [(AVPlayerLayer *)v4 setPlayer:player];
  return v4;
}

+ (id)makeClosedCaptionLayer
{
  v2 = objc_alloc_init(AVPlayerLayerIntermediateLayer);

  return v2;
}

- (void)_addObserversForVideoLayer:(id)a3
{
  objc_initWeak(&location, self);
  if (avPlayerLayerUseVideoLayerPresentationSize())
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = *MEMORY[0x1E6973C30];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __44__AVPlayerLayer__addObserversForVideoLayer___block_invoke;
    v11[3] = &unk_1E7460BB0;
    objc_copyWeak(&v12, &location);
    self->_playerLayer->videoLayerPresentationSizeDidChangeListener = [v5 addObserverForName:v6 object:a3 queue:0 usingBlock:v11];
    objc_destroyWeak(&v12);
  }

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = *MEMORY[0x1E6973C28];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__AVPlayerLayer__addObserversForVideoLayer___block_invoke_2;
  v9[3] = &unk_1E7460BD8;
  objc_copyWeak(&v10, &location);
  v9[4] = a3;
  self->_playerLayer->videoLayerIsReadyForDisplayDidChangeListener = [v7 addObserverForName:v8 object:a3 queue:0 usingBlock:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

id __44__AVPlayerLayer__addObserversForVideoLayer___block_invoke(uint64_t a1)
{
  result = objc_loadWeak((a1 + 32));
  if (result)
  {

    return [result _applyCurrentItemPresentationSizeChangeAndForceUpdate:0];
  }

  return result;
}

id __44__AVPlayerLayer__addObserversForVideoLayer___block_invoke_2(uint64_t a1)
{
  result = objc_loadWeak((a1 + 40));
  if (result)
  {
    v3 = result;
    v4 = [*(a1 + 32) isReadyForDisplay];

    return [v3 _updateReadyForDisplay:v4];
  }

  return result;
}

- (void)_removeObserversForVideoLayer:(id)a3
{
  playerLayer = self->_playerLayer;
  if (playerLayer->videoLayerPresentationSizeDidChangeListener)
  {
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 removeObserver:self->_playerLayer->videoLayerPresentationSizeDidChangeListener name:*MEMORY[0x1E6973C30] object:a3];
    playerLayer = self->_playerLayer;
  }

  if (playerLayer->videoLayerIsReadyForDisplayDidChangeListener)
  {
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    videoLayerIsReadyForDisplayDidChangeListener = self->_playerLayer->videoLayerIsReadyForDisplayDidChangeListener;
    v9 = *MEMORY[0x1E6973C28];

    [v7 removeObserver:videoLayerIsReadyForDisplayDidChangeListener name:v9 object:a3];
  }
}

uint64_t __21__AVPlayerLayer_init__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 48) + 8) hudEnabled];
  if (result)
  {
    [*(*(*(a1 + 32) + 48) + 8) setName:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"AVPlayerLayer <%p> (perfHUD)", *(a1 + 32))}];
    [*(*(*(a1 + 32) + 48) + 8) setPlayerLayer:?];
    [*(*(*(a1 + 32) + 48) + 8) startDispatchTimer];
    [*(*(*(a1 + 32) + 48) + 8) currentItemChanged];
    v3 = *(*(*(a1 + 32) + 48) + 8);

    return [v3 currentItemTracksChanged];
  }

  return result;
}

uint64_t __21__AVPlayerLayer_init__block_invoke_2(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak hasEnqueuedVideoFrameChanged:a2];
}

uint64_t __21__AVPlayerLayer_init__block_invoke_3(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak _windowSceneDidEnterBackground:a2];
}

uint64_t __21__AVPlayerLayer_init__block_invoke_4(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak _windowSceneWillEnterForeground:a2];
}

Class __21__AVPlayerLayer_init__block_invoke_5()
{
  result = NSClassFromString(&cfstr_Uiwindow.isa);
  uiWindowClass = result;
  return result;
}

- (AVPlayerLayer)initWithLayer:(id)a3
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work();
  fig_note_initialize_category_with_default_work();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  v9.receiver = self;
  v9.super_class = AVPlayerLayer;
  self = [(AVPlayerLayer *)&v9 initWithLayer:a3];
  if (self)
  {
    v5 = objc_alloc_init(AVPlayerLayerInternal);
    self->_playerLayer = v5;
    if (v5)
    {
      CFRetain(v5);
      v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      self->_playerLayer->serialQueue = dispatch_queue_create("AVPlayerLayerQueue", v6);
      v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      self->_playerLayer->configurationQueue = dispatch_queue_create("com.apple.avfoundation.playerlayer.configuration", v7);
      self->_playerLayer->isPresentationLayer = 1;
      self->_playerLayer->videoGravity = [a3 videoGravity];
      self->_playerLayer->player = [a3 player];
      self->_playerLayer->dependencyManager = [[AVKeyPathDependencyManager alloc] initWithDependencyHost:self];
      [(AVKeyPathDependencyManager *)self->_playerLayer->dependencyManager dependencyHostIsFullyInitialized];
      return self;
    }

LABEL_5:

    return 0;
  }

  return self;
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(AVPlayerLayer *)self bounds];
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  if (!CGRectEqualToRect(v9, v10))
  {
    v8.receiver = self;
    v8.super_class = AVPlayerLayer;
    [(AVPlayerLayer *)&v8 setBounds:x, y, width, height];
    [(AVPlayerLayer *)self setNeedsLayout];
    [(AVPlayerLayer *)self _notifyPlayerOfDisplaySize];
  }
}

- (void)setContentsScale:(double)a3
{
  self->_playerLayer->honorContentScale = 1;
  v4.receiver = self;
  v4.super_class = AVPlayerLayer;
  [(AVPlayerLayer *)&v4 setContentsScale:a3];
  [(AVPlayerLayer *)self _notifyPlayerOfDisplaySize];
}

- (void)_addBoundsAnimationToLayer:(id)a3 usingAnimation:(id)a4 forKey:(id)a5
{
  v8 = _animationByTransformingValues(a4, &__block_literal_global_131);
  if ([a4 isAdditive])
  {
    v9 = @"bounds.size";
  }

  else
  {
    v9 = @"bounds";
  }

  [v8 setKeyPath:v9];
  [v8 setDelegate:0];

  [a3 addAnimation:v8 forKey:a5];
}

- (void)_addPositionAnimationToLayer:(id)a3 usingAnimation:(id)a4 forKey:(id)a5
{
  if ([a4 isAdditive])
  {
    v8 = &__block_literal_global_139;
  }

  else
  {
    v8 = &__block_literal_global_142;
  }

  v9 = _animationByTransformingValues(a4, v8);
  [v9 setKeyPath:@"position"];
  [v9 setDelegate:0];

  [a3 addAnimation:v9 forKey:a5];
}

uint64_t __68__AVPlayerLayer__addPositionAnimationToLayer_usingAnimation_forKey___block_invoke(uint64_t a1, void *a2)
{
  [a2 sizeValue];
  v2 = MEMORY[0x1E696B098];
  v4 = v3 * 0.5;
  v6 = v5 * 0.5;

  return [v2 valueWithPoint:{v4, v6}];
}

uint64_t __68__AVPlayerLayer__addPositionAnimationToLayer_usingAnimation_forKey___block_invoke_2(uint64_t a1, void *a2)
{
  [a2 rectValue];
  v2 = MEMORY[0x1E696B098];
  v5 = v3 + v4 * 0.5;
  v8 = v6 + v7 * 0.5;

  return [v2 valueWithPoint:{v5, v8}];
}

- (void)_addSublayerTransformAnimationToLayer:(id)a3 fromTransform:(CATransform3D *)a4 usingAnimation:(id)a5 gravity:(id)a6 presentationSize:(CGSize)a7 forKey:(id)a8
{
  height = a7.height;
  width = a7.width;
  if ([a5 isAdditive])
  {
    v16 = [a5 copy];
    v17 = [a5 copy];
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    memset(v27, 0, sizeof(v27));
    [(AVPlayerLayer *)self bounds];
    AVLayerTransformForPlacement(a6, 0, v27, width, height, v18, v19);
    v20 = *(&v28 + 1);
    m22 = a4->m22;
    [v16 setFromValue:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", a4->m11 - *v27)}];
    [v16 setToValue:&unk_1F0AD3370];
    [v16 setDelegate:0];
    [v16 setKeyPath:@"sublayerTransform.scale.x"];
    [v17 setFromValue:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", m22 - v20)}];
    [v16 setToValue:&unk_1F0AD3370];
    [v16 setDelegate:0];
    [v17 setKeyPath:@"sublayerTransform.scale.y"];
    [a3 addAnimation:v16 forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@_x", a8)}];
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_y", a8];
    v23 = a3;
    v24 = v17;
  }

  else
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __116__AVPlayerLayer__addSublayerTransformAnimationToLayer_fromTransform_usingAnimation_gravity_presentationSize_forKey___block_invoke;
    v26[3] = &unk_1E7460C90;
    v26[4] = a6;
    *&v26[5] = width;
    *&v26[6] = height;
    v25 = _animationByTransformingValues(a5, v26);
    [v25 setKeyPath:@"sublayerTransform"];
    [v25 setDelegate:0];
    v23 = a3;
    v24 = v25;
    v22 = a8;
  }

  [v23 addAnimation:v24 forKey:v22];
}

uint64_t __116__AVPlayerLayer__addSublayerTransformAnimationToLayer_fromTransform_usingAnimation_gravity_presentationSize_forKey___block_invoke(uint64_t a1, void *a2)
{
  [a2 rectValue];
  v3 = MEMORY[0x1E696B098];
  AVLayerTransformForPlacement(*(a1 + 32), 0, v7, *(a1 + 40), *(a1 + 48), v4, v5);
  return [v3 valueWithCATransform3D:v7];
}

- (void)_addAnimationsForPIPPlaceholderLayer:(id)a3 forKey:(id)a4
{
  placeholderContentLayerDuringPIPMode = self->_playerLayer->placeholderContentLayerDuringPIPMode;
  if (placeholderContentLayerDuringPIPMode)
  {
    -[AVPlayerLayer _addBoundsAnimationToLayer:usingAnimation:forKey:](self, "_addBoundsAnimationToLayer:usingAnimation:forKey:", placeholderContentLayerDuringPIPMode, a3, [MEMORY[0x1E696AEC0] stringWithFormat:@"AVPlayerLayer_PIPPlaceholderLayer_Bounds_%@", a4]);
    v8 = self->_playerLayer->placeholderContentLayerDuringPIPMode;
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AVPlayerLayer_PIPPlaceholderLayer_Position_%@", a4];

    [(AVPlayerLayer *)self _addPositionAnimationToLayer:v8 usingAnimation:a3 forKey:v9];
  }
}

- (void)_addAnimationsForMaskLayer:(id)a3 forKey:(id)a4
{
  v7 = [(AVPlayerLayer *)self _maskLayer];
  -[AVPlayerLayer _addBoundsAnimationToLayer:usingAnimation:forKey:](self, "_addBoundsAnimationToLayer:usingAnimation:forKey:", v7, a3, [MEMORY[0x1E696AEC0] stringWithFormat:@"AVPlayerLayer_MaskLayer_Bounds_%@", a4]);
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AVPlayerLayer_MaskLayer_Position_%@", a4];

  [(AVPlayerLayer *)self _addPositionAnimationToLayer:v7 usingAnimation:a3 forKey:v8];
}

- (void)_addAnimationsForClosedCaptionLayer:(id)a3 gravity:(id)a4 forKey:(id)a5
{
  v9 = [(AVPlayerLayer *)self _closedCaptionLayer];
  -[AVPlayerLayer _addPositionAnimationToLayer:usingAnimation:forKey:](self, "_addPositionAnimationToLayer:usingAnimation:forKey:", v9, a3, [MEMORY[0x1E696AEC0] stringWithFormat:@"AVPlayerLayer_ClosedCaptionLayer_Position_%@", a5]);
  if (v9)
  {
    [v9 sublayerTransform];
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  [v9 bounds];
  -[AVPlayerLayer _addSublayerTransformAnimationToLayer:fromTransform:usingAnimation:gravity:presentationSize:forKey:](self, "_addSublayerTransformAnimationToLayer:fromTransform:usingAnimation:gravity:presentationSize:forKey:", v9, v12, a3, a4, [MEMORY[0x1E696AEC0] stringWithFormat:@"AVPlayerLayer_ClosedCaptionLayer_SublayerTransform_%@", a5], v10, v11);
}

- (void)_addAnimationsForVideoLayer:(id)a3 size:(CGSize)a4 gravity:(id)a5 forKey:(id)a6
{
  height = a4.height;
  width = a4.width;
  v12 = [(AVPlayerLayer *)self _videoLayer];
  -[AVPlayerLayer _addPositionAnimationToLayer:usingAnimation:forKey:](self, "_addPositionAnimationToLayer:usingAnimation:forKey:", v12, a3, [MEMORY[0x1E696AEC0] stringWithFormat:@"AVPlayerLayer_VideoLayer_Position_%@", a6]);
  if (v12)
  {
    [v12 sublayerTransform];
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  -[AVPlayerLayer _addSublayerTransformAnimationToLayer:fromTransform:usingAnimation:gravity:presentationSize:forKey:](self, "_addSublayerTransformAnimationToLayer:fromTransform:usingAnimation:gravity:presentationSize:forKey:", v12, v13, a3, a5, [MEMORY[0x1E696AEC0] stringWithFormat:@"AVPlayerLayer_VideoLayer_SublayerTransform_%@", a6], width, height);
}

- (void)_forBoundsAnimations:(id)a3 applyBlock:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (([@"bounds.size" isEqualToString:{objc_msgSend(a3, "keyPath")}] & 1) != 0 || objc_msgSend(@"bounds", "isEqualToString:", objc_msgSend(a3, "keyPath")))
    {
      v7 = *(a4 + 2);

      v7(a4, a3);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v8 = [a3 animations];
      v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v14;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v14 != v11)
            {
              objc_enumerationMutation(v8);
            }

            [(AVPlayerLayer *)self _forBoundsAnimations:*(*(&v13 + 1) + 8 * i) applyBlock:a4];
          }

          v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v10);
      }
    }
  }
}

- (void)addAnimation:(id)a3 forKey:(id)a4
{
  v11 = 0;
  v12 = 0;
  v10 = 0;
  [(AVPlayerLayer *)self _getMaskLayer:0 videoLayer:&v12 subtitleLayer:&v11 closedCaptionLayer:0 interstitialLayer:&v10];
  if (self->_playerLayer)
  {
    v7 = v12 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __37__AVPlayerLayer_addAnimation_forKey___block_invoke;
    v9[3] = &unk_1E7460CB8;
    v9[4] = self;
    v9[5] = a4;
    v9[6] = v11;
    v9[7] = v10;
    [(AVPlayerLayer *)self _forBoundsAnimations:a3 applyBlock:v9];
  }

  v8.receiver = self;
  v8.super_class = AVPlayerLayer;
  [(AVPlayerLayer *)&v8 addAnimation:a3 forKey:a4];
}

uint64_t __37__AVPlayerLayer_addAnimation_forKey___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) videoGravity];
  [*(a1 + 32) _presentationSize];
  v6 = v5;
  v8 = v7;
  [*(a1 + 32) _addAnimationsForPIPPlaceholderLayer:a2 forKey:*(a1 + 40)];
  [*(a1 + 32) _addAnimationsForMaskLayer:a2 forKey:*(a1 + 40)];
  [*(a1 + 32) _addAnimationsForVideoLayer:a2 size:v4 gravity:*(a1 + 40) forKey:{v6, v8}];
  [*(a1 + 32) _addAnimationsForClosedCaptionLayer:a2 gravity:v4 forKey:*(a1 + 40)];
  [*(a1 + 48) addAnimations:a2 forKey:*(a1 + 40)];
  v9 = *(a1 + 56);
  v10 = *(a1 + 40);

  return [v9 addAnimation:a2 forKey:v10];
}

- (void)removeAnimationForKey:(id)a3
{
  v12 = 0;
  v13 = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  [(AVPlayerLayer *)self _getMaskLayer:&v13 videoLayer:&v12 subtitleLayer:&v11 closedCaptionLayer:&v10 interstitialLayer:&v9];
  if (self->_playerLayer)
  {
    v5 = v12 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = [(AVPlayerLayer *)self animationForKey:a3];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __39__AVPlayerLayer_removeAnimationForKey___block_invoke;
    v8[3] = &unk_1E7460CE0;
    v8[4] = self;
    v8[5] = a3;
    v8[6] = v13;
    v8[7] = v12;
    v8[8] = v10;
    v8[9] = v11;
    v8[10] = v9;
    [(AVPlayerLayer *)self _forBoundsAnimations:v6 applyBlock:v8];
  }

  v7.receiver = self;
  v7.super_class = AVPlayerLayer;
  [(AVPlayerLayer *)&v7 removeAnimationForKey:a3];
}

uint64_t __39__AVPlayerLayer_removeAnimationForKey___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 48) + 248);
  if (v2)
  {
    [v2 removeAnimationForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"AVPlayerLayer_PIPPlaceholderLayer_Bounds_%@", *(a1 + 40))}];
    [*(*(*(a1 + 32) + 48) + 248) removeAnimationForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"AVPlayerLayer_PIPPlaceholderLayer_Position_%@", *(a1 + 40))}];
  }

  [*(a1 + 48) removeAnimationForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"AVPlayerLayer_MaskLayer_Bounds_%@", *(a1 + 40))}];
  [*(a1 + 48) removeAnimationForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"AVPlayerLayer_MaskLayer_Position_%@", *(a1 + 40))}];
  [*(a1 + 56) removeAnimationForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"AVPlayerLayer_VideoLayer_SublayerTransform_%@", *(a1 + 40))}];
  [*(a1 + 56) removeAnimationForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"AVPlayerLayer_VideoLayer_SublayerTransform_%@_x", *(a1 + 40))}];
  [*(a1 + 56) removeAnimationForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"AVPlayerLayer_VideoLayer_SublayerTransform_%@_y", *(a1 + 40))}];
  [*(a1 + 56) removeAnimationForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"AVPlayerLayer_VideoLayer_Position_%@", *(a1 + 40))}];
  [*(a1 + 64) removeAnimationForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"AVPlayerLayer_ClosedCaptionLayer_SublayerTransform_%@", *(a1 + 40))}];
  [*(a1 + 64) removeAnimationForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"AVPlayerLayer_ClosedCaptionLayer_SublayerTransform_%@_x", *(a1 + 40))}];
  [*(a1 + 64) removeAnimationForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"AVPlayerLayer_ClosedCaptionLayer_SublayerTransform_%@_y", *(a1 + 40))}];
  [*(a1 + 64) removeAnimationForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"AVPlayerLayer_ClosedCaptionLayer_Position_%@", *(a1 + 40))}];
  [*(a1 + 72) removeAnimationsForKey:*(a1 + 40)];
  v3 = *(a1 + 80);
  v4 = *(a1 + 40);

  return [v3 removeAnimationForKey:v4];
}

- (void)removeAllAnimations
{
  v9 = 0;
  v10 = 0;
  v7 = 0;
  v8 = 0;
  v6 = 0;
  [(AVPlayerLayer *)self _getMaskLayer:&v10 videoLayer:&v9 subtitleLayer:&v8 closedCaptionLayer:&v7 interstitialLayer:&v6];
  playerLayer = self->_playerLayer;
  if (playerLayer)
  {
    v4 = v9 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    [(CALayer *)playerLayer->placeholderContentLayerDuringPIPMode removeAllAnimations];
    [v10 removeAllAnimations];
    [v9 removeAllAnimations];
    [v7 removeAllAnimations];
    [v8 removeAllAnimations];
    [v6 removeAllAnimations];
  }

  v5.receiver = self;
  v5.super_class = AVPlayerLayer;
  [(AVPlayerLayer *)&v5 removeAllAnimations];
}

- (void)dealloc
{
  playerLayer = self->_playerLayer;
  if (playerLayer)
  {

    v4 = self->_playerLayer;
    if (v4->playerBeingObserved)
    {
      [(AVPlayerLayer *)self _stopObservingPlayer:?];
      v4 = self->_playerLayer;
    }

    if (v4->playerItemHasEnqueuedVideoFrameListener)
    {
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

      v4 = self->_playerLayer;
    }

    if (v4->windowSceneDidEnterBackgroundListener)
    {
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

      v4 = self->_playerLayer;
    }

    if (v4->windowSceneWillEnterForegroundListener)
    {
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

      v4 = self->_playerLayer;
    }

    [(AVKeyPathDependencyManager *)v4->dependencyManager cancelAllCallbacks];

    v5 = self->_playerLayer;
    if (!v5->isPresentationLayer)
    {
      [(AVPlayer *)v5->player _removeLayer:0 videoLayer:v5->videoLayer closedCaptionLayer:v5->closedCaptionLayer subtitleLayer:v5->subtitleLayer interstitialLayer:v5->interstitialLayer];
      [(AVPlayer *)self->_playerLayer->player _updateConnectionToSecondScreen];
      v5 = self->_playerLayer;
    }

    v6 = self->_playerLayer;
    if (!v6->isPresentationLayer)
    {
      [(AVPlayerLayer *)self removeObserver:self forKeyPath:@"contentsAreFlipped"];
      [(FigVideoContainerLayer *)self->_playerLayer->videoLayer removeObserver:self forKeyPath:@"videoLayer" context:@"AVPlayerLayerVideoLayerObservationContext"];
      v6 = self->_playerLayer;
    }

    [(AVPlayerLayer *)self _removeObserversForVideoLayer:v6->videoLayer];
    v7 = self->_playerLayer;
    serialQueue = v7->serialQueue;
    if (serialQueue)
    {
      dispatch_release(serialQueue);
      v7 = self->_playerLayer;
    }

    if (v7->isReadyForDisplayMutex)
    {
      FigSimpleMutexDestroy();
      v7 = self->_playerLayer;
    }

    configurationQueue = v7->configurationQueue;
    if (configurationQueue)
    {
      dispatch_release(configurationQueue);
      v7 = self->_playerLayer;
    }

    CFRelease(self->_playerLayer);
  }

  v10.receiver = self;
  v10.super_class = AVPlayerLayer;
  [(AVPlayerLayer *)&v10 dealloc];
}

- (float)_percentCoverageRelativeToRootLayer
{
  v3 = [(AVPlayerLayer *)self context];
  v4 = 0.0;
  if (v3)
  {
    v5 = v3;
    if ([v3 layer])
    {
      [(AVPlayerLayer *)self bounds];
      [(AVPlayerLayer *)self convertRect:0 toLayer:?];
      v7 = v6;
      v9 = v8;
      [objc_msgSend(v5 "layer")];
      return v7 * v9 / (v10 * v11);
    }
  }

  return v4;
}

- (CGSize)_displaySize
{
  playerLayer = self->_playerLayer;
  if (playerLayer->honorContentScale)
  {
    [(AVPlayerLayer *)self contentsScale];
    screenScale = v4;
  }

  else
  {
    screenScale = playerLayer->screenScale;
  }

  if ([(AVPlayerLayer *)self context])
  {
    v6 = 1.0;
    if (screenScale >= 1.0)
    {
      v6 = screenScale;
    }

    CGAffineTransformMakeScale(&v21, v6, v6);
    a = v21.a;
    b = v21.b;
    c = v21.c;
    d = v21.d;
    [(AVPlayerLayer *)self bounds];
    [(AVPlayerLayer *)self convertRect:0 toLayer:?];
  }

  else
  {
    a = *MEMORY[0x1E695EFD0];
    b = *(MEMORY[0x1E695EFD0] + 8);
    c = *(MEMORY[0x1E695EFD0] + 16);
    d = *(MEMORY[0x1E695EFD0] + 24);
    [(AVPlayerLayer *)self bounds];
  }

  v13 = c * v12 + a * v11;
  v14 = d * v12 + b * v11;
  [(AVPlayerLayer *)self _presentationSize];
  v17 = v14 > v13 && v16 < v15;
  if (!v17 && (v14 < v13 ? (v18 = v16 <= v15) : (v18 = 1), v18))
  {
    v19 = v14;
    v14 = v13;
  }

  else
  {
    v19 = v13;
  }

  v20 = v14;
  result.height = v19;
  result.width = v20;
  return result;
}

- (void)_notifyPlayerOfDisplaySize
{
  v2 = [(AVPlayerLayer *)self player];

  [(AVPlayer *)v2 _evaluateDisplaySizeOfAllAttachedLayers];
}

- (void)declareKeyPathDependenciesWithRegistry:(id)a3
{
  [a3 valueForKey:@"playerCurrentItemPresentationSize" dependsOnValueAtKeyPath:{AVTwoPartKeyPathMake(@"player", @"cachedPresentationSizeOfCurrentItem"}];
  v4 = AVTwoPartKeyPathMake(@"_videoLayer", @"presentationSize");

  [a3 valueForKey:@"videoLayerPresentationSize" dependsOnValueAtKeyPath:v4];
}

+ (id)keyPathsForValuesAffecting_presentationSize
{
  if (avPlayerLayerUseVideoLayerPresentationSize())
  {
    v2 = @"videoLayerPresentationSize";
  }

  else
  {
    v2 = @"playerCurrentItemPresentationSize";
  }

  v3 = MEMORY[0x1E695DFD8];

  return [v3 setWithObject:v2];
}

- (void)_applyCurrentItemPresentationSizeChangeAndForceUpdate:(BOOL)a3
{
  v3 = a3;
  [(AVPlayerLayer *)self _presentationSize];

  [(AVPlayerLayer *)self _applyPresentationSizeChange:v3 andForceUpdate:?];
}

- (void)_applyPresentationSizeChange:(CGSize)a3 andForceUpdate:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  [(AVPlayerLayer *)self _getMaskLayer:0 videoLayer:&v12 subtitleLayer:&v11 closedCaptionLayer:&v10 interstitialLayer:0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__AVPlayerLayer__applyPresentationSizeChange_andForceUpdate___block_invoke;
  v8[3] = &unk_1E7460D08;
  *&v8[6] = width;
  *&v8[7] = height;
  v9 = a4;
  v8[4] = v12;
  v8[5] = self;
  AVSerializeOnQueueAsyncIfNecessary(MEMORY[0x1E69E96A0], v8);
  [(AVPlayerLayer *)self _notifyPlayerOfDisplaySize];
}

void *__61__AVPlayerLayer__applyPresentationSizeChange_andForceUpdate___block_invoke(uint64_t a1)
{
  v2 = (a1 + 48);
  v4 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  if (*(a1 + 48) == *MEMORY[0x1E695F060] && *(a1 + 56) == v3)
  {
    [*(a1 + 32) bounds];
    v6 = v8 == v3 && v7 == v4;
  }

  else
  {
    v6 = 0;
  }

  result = *(a1 + 40);
  v10 = result[6];
  if ((*(a1 + 64) & 1) == 0 && (*(v10 + 208) == *(a1 + 48) ? (v11 = *(v10 + 216) == *(a1 + 56)) : (v11 = 0), v11))
  {
    if (!v6)
    {
      return result;
    }
  }

  else
  {
    *(v10 + 208) = *v2;
    result = *(a1 + 40);
  }

  return [result setNeedsLayout];
}

- (void)_startObservingPlayer:(id)a3
{
  if (a3 && !self->_playerLayer->playerBeingObserved)
  {
    self->_playerLayer->playerBeingObserved = a3;
    objc_initWeak(location, self);
    v5 = +[AVMapPublisher mapPublisherWithUpstream:transform:](AVMapPublisher, "mapPublisherWithUpstream:transform:", [a3 currentItemPublisher], &__block_literal_global_232);
    if ((avPlayerLayerUseVideoLayerPresentationSize() & 1) == 0)
    {
      v6 = [AVSwitchToLatestPublisher switchToLatestPublisherWithUpstream:v5];
      v7 = [AVSinkSubscriber alloc];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __39__AVPlayerLayer__startObservingPlayer___block_invoke_2;
      v25[3] = &unk_1E7460D50;
      objc_copyWeak(&v26, location);
      self->_playerLayer->currentItemPresentationSizeSink = [(AVSinkSubscriber *)v7 initWithPublisher:v6 requestingInitialValue:0 sink:v25];
      objc_destroyWeak(&v26);
    }

    [(AVPlayerLayer *)self _applyCurrentItemPresentationSizeChangeAndForceUpdate:0];
    v8 = [(AVPlayerLayer *)self _willManageSublayersAsSwappedLayers];
    v9 = [AVSinkSubscriber alloc];
    v10 = [a3 currentItemPublisher];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __39__AVPlayerLayer__startObservingPlayer___block_invoke_3;
    v23[3] = &unk_1E7460D78;
    objc_copyWeak(&v24, location);
    v23[4] = a3;
    self->_playerLayer->playerCurrentItemSink = [(AVSinkSubscriber *)v9 initWithPublisher:v10 requestingInitialValue:!v8 sink:v23];
    v11 = +[AVSwitchToLatestPublisher switchToLatestPublisherWithUpstream:](AVSwitchToLatestPublisher, "switchToLatestPublisherWithUpstream:", +[AVMapPublisher mapPublisherWithUpstream:transform:](AVMapPublisher, "mapPublisherWithUpstream:transform:", [a3 currentItemPublisher], &__block_literal_global_238));
    v12 = [AVSinkSubscriber alloc];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __39__AVPlayerLayer__startObservingPlayer___block_invoke_5;
    v21[3] = &unk_1E7460DA0;
    objc_copyWeak(&v22, location);
    self->_playerLayer->currentItemTracksSink = [(AVSinkSubscriber *)v12 initWithPublisher:v11 requestingInitialValue:1 sink:v21];
    v13 = +[AVSwitchToLatestPublisher switchToLatestPublisherWithUpstream:](AVSwitchToLatestPublisher, "switchToLatestPublisherWithUpstream:", +[AVMapPublisher mapPublisherWithUpstream:transform:](AVMapPublisher, "mapPublisherWithUpstream:transform:", [a3 currentItemPublisher], &__block_literal_global_241));
    v14 = [AVSinkSubscriber alloc];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __39__AVPlayerLayer__startObservingPlayer___block_invoke_7;
    v19[3] = &unk_1E7460DC8;
    objc_copyWeak(&v20, location);
    v19[4] = a3;
    self->_playerLayer->currentItemNonForcedSubtitlesEnabledSink = [(AVSinkSubscriber *)v14 initWithPublisher:v13 requestingInitialValue:1 sink:v19];
    v15 = [a3 closedCaptionsDisplayPublisher];
    v16 = [AVSinkSubscriber alloc];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __39__AVPlayerLayer__startObservingPlayer___block_invoke_8;
    v17[3] = &unk_1E7460DC8;
    objc_copyWeak(&v18, location);
    v17[4] = a3;
    self->_playerLayer->playerIsDisplayingClosedCaptionsSink = [(AVSinkSubscriber *)v16 initWithPublisher:v15 requestingInitialValue:1 sink:v17];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&v24);
    objc_destroyWeak(location);
  }
}

id __39__AVPlayerLayer__startObservingPlayer___block_invoke_2(uint64_t a1)
{
  result = objc_loadWeak((a1 + 32));
  if (result)
  {

    return [result _applyCurrentItemPresentationSizeChangeAndForceUpdate:0];
  }

  return result;
}

id __39__AVPlayerLayer__startObservingPlayer___block_invoke_3(uint64_t a1)
{
  result = objc_loadWeak((a1 + 40));
  if (result)
  {
    v3 = *(a1 + 32);

    return [result _handlePlayerCurrentItemDidChangeForPlayer:v3];
  }

  return result;
}

void *__39__AVPlayerLayer__startObservingPlayer___block_invoke_5(uint64_t a1)
{
  result = objc_loadWeak((a1 + 32));
  if (result)
  {
    v2 = *(result[6] + 8);

    return [v2 currentItemTracksChanged];
  }

  return result;
}

id __39__AVPlayerLayer__startObservingPlayer___block_invoke_7(uint64_t a1, void *a2)
{
  result = objc_loadWeak((a1 + 40));
  if (result)
  {
    v5 = result;
    v6 = [a2 BOOLValue];
    v7 = *(a1 + 32);

    return [v5 _handleNonForcedSubtitleDisplayDidChange:v6 player:v7];
  }

  return result;
}

id __39__AVPlayerLayer__startObservingPlayer___block_invoke_8(uint64_t a1, void *a2)
{
  result = objc_loadWeak((a1 + 40));
  if (result)
  {
    v5 = result;
    v6 = [a2 BOOLValue];
    v7 = *(a1 + 32);

    return [v5 _handleIsDisplayingClosedCaptionsDidChange:v6 player:v7];
  }

  return result;
}

- (void)_stopObservingPlayer:(id)a3
{
  if (a3)
  {
    playerBeingObserved = self->_playerLayer->playerBeingObserved;
    if (playerBeingObserved)
    {

      self->_playerLayer->playerBeingObserved = 0;
      [(AVSinkSubscriber *)self->_playerLayer->playerCurrentItemSink cancel];

      self->_playerLayer->playerCurrentItemSink = 0;
      if ((avPlayerLayerUseVideoLayerPresentationSize() & 1) == 0)
      {
        [(AVSinkSubscriber *)self->_playerLayer->currentItemPresentationSizeSink cancel];

        self->_playerLayer->currentItemPresentationSizeSink = 0;
      }

      [(AVSinkSubscriber *)self->_playerLayer->currentItemTracksSink cancel];

      self->_playerLayer->currentItemTracksSink = 0;
      [(AVSinkSubscriber *)self->_playerLayer->currentItemNonForcedSubtitlesEnabledSink cancel];

      self->_playerLayer->currentItemNonForcedSubtitlesEnabledSink = 0;
      [(AVSinkSubscriber *)self->_playerLayer->playerIsDisplayingClosedCaptionsSink cancel];

      self->_playerLayer->playerIsDisplayingClosedCaptionsSink = 0;
    }
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == @"AVPlayerLayerContentsAreFlippedObservationContext")
  {
    v7 = [(AVPlayerLayer *)self _videoLayer:a3];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __64__AVPlayerLayer_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v9[3] = &unk_1E7460DF0;
    v9[4] = self;
    v9[5] = v7;
    AVSerializeOnQueueAsyncIfNecessary(MEMORY[0x1E69E96A0], v9);
  }

  else if (a6 == @"AVPlayerLayerVideoLayerObservationContext")
  {

    [(AVPlayerLayer *)self _updatePreferredDynamicRangeWithAnimation:0, a4, a5];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = AVPlayerLayer;
    [(AVPlayerLayer *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

uint64_t __64__AVPlayerLayer_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  [*(a1 + 40) setGeometryFlipped:{objc_msgSend(*(a1 + 32), "contentsAreFlipped") ^ 1}];
  v2 = MEMORY[0x1E6979518];

  return [v2 commit];
}

- (void)_handleNonForcedSubtitleDisplayDidChange:(BOOL)a3 player:(id)a4
{
  configurationQueue = self->_playerLayer->configurationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__AVPlayerLayer__handleNonForcedSubtitleDisplayDidChange_player___block_invoke;
  v5[3] = &unk_1E7460E18;
  v5[4] = self;
  v5[5] = a4;
  v6 = a3;
  AVSerializeOnQueueAsyncIfNecessary(configurationQueue, v5);
}

void *__65__AVPlayerLayer__handleNonForcedSubtitleDisplayDidChange_player___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _subtitleLayer];
  if (*(a1 + 40) == *(*(*(a1 + 32) + 48) + 200) && result != 0)
  {
    v4 = *(a1 + 48);

    return [result updateNonForcedSubtitleDisplayEnabled:v4];
  }

  return result;
}

- (void)_handlePlayerCurrentItemDidChangeForPlayer:(id)a3
{
  v4 = [(AVPlayerLayer *)self _subtitleLayer];
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__AVPlayerLayer__handlePlayerCurrentItemDidChangeForPlayer___block_invoke;
    v6[3] = &unk_1E7460C00;
    v6[4] = v4;
    AVSerializeOnQueueAsyncIfNecessary(MEMORY[0x1E69E96A0], v6);
  }

  if (FigUseVideoReceiverForCALayer())
  {
    v5 = FigGetCFPreferenceBooleanWithDefault() != 0;
  }

  else
  {
    v5 = 0;
  }

  [(AVPlayerLayer *)self _updateReadyForDisplayForPlayerCurrentItemAndForceKVO:v5];
  [(AVNetworkPlaybackPerfHUDLayer *)self->_playerLayer->hudLayer currentItemChanged];
}

uint64_t __60__AVPlayerLayer__handlePlayerCurrentItemDidChangeForPlayer___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  [*(a1 + 32) clear];
  v2 = MEMORY[0x1E6979518];

  return [v2 commit];
}

- (void)_handleIsDisplayingClosedCaptionsDidChange:(BOOL)a3 player:(id)a4
{
  configurationQueue = self->_playerLayer->configurationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__AVPlayerLayer__handleIsDisplayingClosedCaptionsDidChange_player___block_invoke;
  v5[3] = &unk_1E7460E18;
  v5[4] = self;
  v5[5] = a4;
  v6 = a3;
  AVSerializeOnQueueAsyncIfNecessary(configurationQueue, v5);
}

void __67__AVPlayerLayer__handleIsDisplayingClosedCaptionsDidChange_player___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _closedCaptionLayer];
  if (*(a1 + 40) == *(*(*(a1 + 32) + 48) + 200))
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __67__AVPlayerLayer__handleIsDisplayingClosedCaptionsDidChange_player___block_invoke_2;
    v3[3] = &unk_1E7460E40;
    v3[4] = v2;
    v4 = *(a1 + 48);
    dispatch_async(MEMORY[0x1E69E96A0], v3);
  }
}

void *__67__AVPlayerLayer__handleIsDisplayingClosedCaptionsDidChange_player___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return [result setHidden:(*(a1 + 40) & 1) == 0];
  }

  return result;
}

- (void)_rebuildVideoLayerIfNecessary
{
  v2 = [(AVPlayerLayer *)self _videoLayer];
  if ([v2 requiresRebuild])
  {

    [v2 rebuild];
  }
}

- (void)_setPlayer:(id)a3 forPIP:(BOOL)a4
{
  playerLayer = self->_playerLayer;
  if (!playerLayer->isPresentationLayer && playerLayer->player != a3)
  {
    if (a4)
    {
      [(AVPlayerLayer *)self setLegibleContentInsets:0.0, 0.0, 0.0, 0.0];
    }

    else if ([(AVPlayerLayer *)self _showInterstitialInstead])
    {
      [(AVPlayerLayer *)self _setShowInterstitialInstead:0];
    }

    v8 = [(AVPlayerLayer *)self _associatedRemoteModeLayer];
    if (v8)
    {
      if (![(AVPlayerLayer *)self _activeMode])
      {
        [(AVPlayerLayer *)self _configurePlayerWhenLeavingPIP];
      }

      [AVPlayerLayer _swapSublayersBetweenPlayerLayer:self andPlayerLayer:v8];
    }

    v9 = FigUseVideoReceiverForCALayer();
    v10 = self->_playerLayer;
    if (!v9 && v10->player)
    {
      [(AVPlayerLayer *)self willChangeValueForKey:@"readyForDisplay"];
      FigSimpleMutexLock();
      self->_playerLayer->isReadyForDisplay = 0;
      FigSimpleMutexUnlock();
      [(AVPlayerLayer *)self didChangeValueForKey:@"readyForDisplay"];
      v10 = self->_playerLayer;
    }

    [(AVNetworkPlaybackPerfHUDLayer *)v10->hudLayer setPlayer:a3];
    if (!a4)
    {
      [(AVPlayer *)self->_playerLayer->player _removeLayer:self];
    }

    [(AVPlayer *)self->_playerLayer->player _updateConnectionToSecondScreen];
    serialQueue = self->_playerLayer->serialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__AVPlayerLayer__setPlayer_forPIP___block_invoke;
    block[3] = &unk_1E7460DF0;
    block[4] = self;
    block[5] = a3;
    dispatch_sync(serialQueue, block);
    v12 = [MEMORY[0x1E696AD80] notificationWithName:@"AVPlayerLayerPlayerDidChangeNotification" object:self];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    if (![(AVPlayerLayer *)self _willManageSublayersAsSwappedLayers])
    {
      [(AVPlayerLayer *)self _applyCurrentItemPresentationSizeChangeAndForceUpdate:0];
      if (FigUseVideoReceiverForCALayer())
      {
        [(AVPlayerLayer *)self _updateReadyForDisplayForPlayerCurrentItem];
      }

      if ((avPlayerLayerUseVideoLayerPresentationSize() & 1) == 0)
      {
        configurationQueue = self->_playerLayer->configurationQueue;
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __35__AVPlayerLayer__setPlayer_forPIP___block_invoke_3;
        v14[3] = &unk_1E7460C00;
        v14[4] = self;
        dispatch_async(configurationQueue, v14);
      }
    }

    if (!a4)
    {
      [(AVPlayerLayer *)self _rebuildVideoLayerIfNecessary];
      [(AVPlayer *)self->_playerLayer->player _addLayer:self];
    }

    [(AVPlayer *)self->_playerLayer->player _updateConnectionToSecondScreen];
    [(AVPlayerLayer *)self _notifyPlayerOfDisplaySize];
    if (v8)
    {
      [AVPlayerLayer _swapSublayersBetweenPlayerLayer:self andPlayerLayer:v8];
      [v8 _setPlayer:a3 forPIP:1];
      if (![(AVPlayerLayer *)self _activeMode])
      {
        [(AVPlayerLayer *)self _configurePlayerWhenEnteringPIP];
      }
    }
  }
}

void __35__AVPlayerLayer__setPlayer_forPIP___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 48) + 80);

  *(*(*(a1 + 32) + 48) + 80) = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  v5 = *(v4 + 80);
  v6 = *(v4 + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__AVPlayerLayer__setPlayer_forPIP___block_invoke_2;
  block[3] = &unk_1E7460E90;
  block[4] = v3;
  block[5] = v2;
  block[6] = v5;
  dispatch_async(v6, block);
}

uint64_t __35__AVPlayerLayer__setPlayer_forPIP___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _stopObservingPlayer:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 _startObservingPlayer:v3];
}

uint64_t __35__AVPlayerLayer__setPlayer_forPIP___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) player];
  v2 = *(a1 + 32);

  return [v2 _applyCurrentItemPresentationSizeChangeAndForceUpdate:0];
}

- (void)layerDidBecomeVisible:(BOOL)a3
{
  v3 = a3;
  v15 = 0;
  v16 = 0;
  v13 = 0;
  v14 = 0;
  [(AVPlayerLayer *)self _getMaskLayer:&v16 videoLayer:&v15 subtitleLayer:&v14 closedCaptionLayer:&v13 interstitialLayer:0];
  playerLayer = self->_playerLayer;
  if (playerLayer)
  {
    v6 = v15 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    goto LABEL_16;
  }

  playerLayer->isVisible = v3;
  if (v3)
  {
    v7 = [(AVPlayerLayer *)self context];
    if (v7)
    {
      v8 = v7;
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
LABEL_12:
        [(AVPlayerLayer *)self _applyCurrentItemPresentationSizeChangeAndForceUpdate:0];
        goto LABEL_13;
      }

      [objc_msgSend(objc_msgSend(uiWindowClass _windowWithContextId:{objc_msgSend(v8, "contextId")), "screen"), "scale"}];
    }

    else
    {
      v9 = 1.0;
    }

    self->_playerLayer->screenScale = v9;
    goto LABEL_12;
  }

  self->_playerLayer->screenScale = 1.0;
LABEL_13:
  [(AVPlayerLayer *)self _updateIsPartOfForegroundScene];
  v10 = self->_playerLayer;
  if (v10->screenScale < 1.0)
  {
    v10->screenScale = 1.0;
  }

  v11 = [MEMORY[0x1E696AD80] notificationWithName:@"AVPlayerLayerVisibilityDidChangeNotification" object:self userInfo:0];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
LABEL_16:
  v12.receiver = self;
  v12.super_class = AVPlayerLayer;
  [(AVPlayerLayer *)&v12 layerDidBecomeVisible:v3];
}

- (void)hasEnqueuedVideoFrameChanged:(id)a3
{
  if (!FigUseVideoReceiverForCALayer() && [objc_msgSend(a3 "object")])
  {

    [(AVPlayerLayer *)self _updateReadyForDisplayForPlayerCurrentItem];
  }
}

- (void)_updateReadyForDisplayForPlayerCurrentItemAndForceKVO:(BOOL)a3
{
  if (!self->_playerLayer->isPresentationLayer)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __71__AVPlayerLayer__updateReadyForDisplayForPlayerCurrentItemAndForceKVO___block_invoke;
    v4[3] = &unk_1E7460E40;
    v4[4] = self;
    v5 = a3;
    AVSerializeOnQueueAsyncIfNecessary(MEMORY[0x1E69E96A0], v4);
  }

  [(AVPlayerLayer *)self _applyCurrentItemPresentationSizeChangeAndForceUpdate:1];
}

uint64_t __71__AVPlayerLayer__updateReadyForDisplayForPlayerCurrentItemAndForceKVO___block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "player")];
  v3 = [*(a1 + 32) _videoLayer];
  if (FigUseVideoReceiverForCALayer())
  {
    v4 = [v3 isReadyForDisplay];
  }

  else
  {
    v4 = [v2 _hasEnqueuedVideoFrame];
  }

  v5 = v4;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);

  return [v6 _updateReadyForDisplayOnMainQueue:v5 skipInformingParent:0 forceKVO:v7];
}

- (void)_updateReadyForDisplay:(BOOL)a3 skipInformingParent:(BOOL)a4 forceKVO:(BOOL)a5
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__AVPlayerLayer__updateReadyForDisplay_skipInformingParent_forceKVO___block_invoke;
  v7[3] = &unk_1E7460EB8;
  v7[4] = self;
  v8 = a3;
  v9 = a4;
  v10 = a5;
  AVSerializeOnQueueAsyncIfNecessary(MEMORY[0x1E69E96A0], v7);
  if (!a4)
  {
    [(AVPlayerLayer *)self _applyCurrentItemPresentationSizeChangeAndForceUpdate:1];
  }
}

- (void)_updateReadyForDisplayOnMainQueue:(BOOL)a3 skipInformingParent:(BOOL)a4 forceKVO:(BOOL)a5
{
  if (!self->_playerLayer->isPresentationLayer)
  {
    v5 = a5;
    v7 = a3;
    FigSimpleMutexLock();
    isReadyForDisplay = self->_playerLayer->isReadyForDisplay;
    FigSimpleMutexUnlock();
    if ((v7 & v5 & 1) != 0 || isReadyForDisplay != v7)
    {
      if (!a4 && [(AVPlayerLayer *)self superlayer]&& ([(AVPlayerLayer *)self superlayer], objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v10 = [(AVPlayerLayer *)self superlayer];
        v12 = 0;
        [v10 _getMaskLayer:0 videoLayer:0 subtitleLayer:0 closedCaptionLayer:0 interstitialLayer:&v12];
        v11 = v12 == self;
        if (v12 == self)
        {
          [v10 willChangeValueForKey:@"readyForDisplay"];
        }
      }

      else
      {
        v11 = 0;
      }

      [(AVPlayerLayer *)self willChangeValueForKey:@"readyForDisplay"];
      FigSimpleMutexLock();
      self->_playerLayer->isReadyForDisplay = v7;
      FigSimpleMutexUnlock();
      [(AVPlayerLayer *)self didChangeValueForKey:@"readyForDisplay"];
      if (v11)
      {
        [-[AVPlayerLayer superlayer](self "superlayer")];
      }
    }
  }
}

- (void)setVideoGravity:(AVLayerVideoGravity)videoGravity
{
  v18 = [[AVTelemetryInterval alloc] initAndStartWith:79];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  playerLayer = self->_playerLayer;
  if (!playerLayer->isPresentationLayer)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3052000000;
    v11 = __Block_byref_object_copy_;
    v12 = __Block_byref_object_dispose_;
    v13 = 0;
    serialQueue = playerLayer->serialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __33__AVPlayerLayer_setVideoGravity___block_invoke;
    block[3] = &unk_1E7460F08;
    block[4] = self;
    block[5] = videoGravity;
    block[6] = &v14;
    block[7] = &v8;
    dispatch_sync(serialQueue, block);
    if (*(v15 + 24) == 1)
    {
      if (([MEMORY[0x1E6979518] disableActions] & 1) == 0)
      {
        [v9[5] addAnimation:objc_msgSend(MEMORY[0x1E6979318] forKey:{"animation"), @"sublayerTransform"}];
      }

      [(AVPlayerLayer *)self setNeedsLayout];
    }

    _Block_object_dispose(&v8, 8);
  }

  [-[AVPlayerLayer _associatedRemoteModeLayer](self "_associatedRemoteModeLayer")];
  v8 = 0;
  [(AVPlayerLayer *)self _getMaskLayer:0 videoLayer:0 subtitleLayer:0 closedCaptionLayer:0 interstitialLayer:&v8];
  if (v8)
  {
    [v8 setVideoGravity:videoGravity];
  }

  _Block_object_dispose(&v14, 8);
  AVTelemetryIntervalEnd(&v18);
}

id __33__AVPlayerLayer_setVideoGravity___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(*(a1 + 32) + 48) + 88);
  if ((v3 == 0) == (v2 != 0))
  {
    goto LABEL_4;
  }

  if (([v3 isEqualToString:?] & 1) == 0)
  {
    v3 = *(*(*(a1 + 32) + 48) + 88);
LABEL_4:

    *(*(*(a1 + 32) + 48) + 88) = [*(a1 + 40) copyWithZone:0];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  result = *(*(*(a1 + 32) + 48) + 128);
  *(*(*(a1 + 56) + 8) + 40) = result;
  return result;
}

- (void)_updatePreferredDynamicRangeWithAnimation:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__AVPlayerLayer__updatePreferredDynamicRangeWithAnimation___block_invoke;
  v3[3] = &unk_1E7460E40;
  v3[4] = self;
  v4 = a3;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

uint64_t __59__AVPlayerLayer__updatePreferredDynamicRangeWithAnimation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _associatedRemoteModeLayer];
  v7 = 0;
  v8 = 0;
  [*(a1 + 32) _getMaskLayer:0 videoLayer:&v8 subtitleLayer:0 closedCaptionLayer:0 interstitialLayer:&v7];
  v3 = [*(a1 + 32) _overridesPreferredDynamicRangeForVideo];
  v4 = *(a1 + 32);
  if (v3)
  {
    result = [v4 _preferredDynamicRangeForPiP];
  }

  else
  {
    result = [v4 preferredDynamicRange];
  }

  v6 = result;
  if ((*(*(*(a1 + 32) + 48) + 24) & 1) == 0)
  {
    if (*(a1 + 40) == 1)
    {
      [MEMORY[0x1E6979518] begin];
    }

    [v8 setPreferredDynamicRange:v6];
    if (*(a1 + 40) == 1)
    {
      [MEMORY[0x1E6979518] commit];
    }

    [v2 setPreferredDynamicRange:v6];
    return [v7 setPreferredDynamicRange:v6];
  }

  return result;
}

- (void)setPreferredDynamicRange:(id)a3
{
  v4.receiver = self;
  v4.super_class = AVPlayerLayer;
  [(AVPlayerLayer *)&v4 setPreferredDynamicRange:a3];
  [(AVPlayerLayer *)self _updatePreferredDynamicRangeWithAnimation:1];
}

- (BOOL)isReadyForDisplay
{
  v7 = [[AVTelemetryInterval alloc] initAndStartWith:80];
  playerLayer = self->_playerLayer;
  if (playerLayer->isPresentationLayer)
  {
    isReadyForDisplay = 0;
  }

  else if (playerLayer->showInterstitialInstead)
  {
    v6 = 0;
    [(AVPlayerLayer *)self _getMaskLayer:0 videoLayer:0 subtitleLayer:0 closedCaptionLayer:0 interstitialLayer:&v6];
    isReadyForDisplay = [v6 isReadyForDisplay];
  }

  else
  {
    FigSimpleMutexLock();
    isReadyForDisplay = self->_playerLayer->isReadyForDisplay;
    FigSimpleMutexUnlock();
  }

  AVTelemetryIntervalEnd(&v7);
  return isReadyForDisplay & 1;
}

- (NSDictionary)pixelBufferAttributes
{
  v2 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  playerLayer = self->_playerLayer;
  if (!playerLayer->isPresentationLayer)
  {
    serialQueue = playerLayer->serialQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __38__AVPlayerLayer_pixelBufferAttributes__block_invoke;
    v6[3] = &unk_1E7460EE0;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(serialQueue, v6);
    v2 = v8[5];
  }

  _Block_object_dispose(&v7, 8);
  return v2;
}

id __38__AVPlayerLayer_pixelBufferAttributes__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 48) + 96);
  if (result)
  {
    result = [result copy];
    *(*(*(a1 + 40) + 8) + 40) = result;
  }

  return result;
}

- (void)setPixelBufferAttributes:(NSDictionary *)pixelBufferAttributes
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  playerLayer = self->_playerLayer;
  if (!playerLayer->isPresentationLayer)
  {
    serialQueue = playerLayer->serialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__AVPlayerLayer_setPixelBufferAttributes___block_invoke;
    block[3] = &unk_1E7460F30;
    block[4] = self;
    block[5] = pixelBufferAttributes;
    block[6] = &v7;
    dispatch_sync(serialQueue, block);
    if (*(v8 + 24) == 1)
    {
      [[(AVPlayerLayer *)self player] _pixelBufferAttributesDidChangeForLayer:self];
    }
  }

  _Block_object_dispose(&v7, 8);
}

uint64_t __42__AVPlayerLayer_setPixelBufferAttributes___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(*(a1 + 32) + 48) + 96);
  if ((v3 == 0) != (v2 != 0))
  {
    result = [v3 isEqual:?];
    if (result)
    {
      return result;
    }

    v3 = *(*(*(a1 + 32) + 48) + 96);
  }

  result = [*(a1 + 40) copyWithZone:0];
  *(*(*(a1 + 32) + 48) + 96) = result;
  *(*(*(a1 + 48) + 8) + 24) = 1;
  return result;
}

- (void)_getMaskLayer:(id *)a3 videoLayer:(id *)a4 subtitleLayer:(id *)a5 closedCaptionLayer:(id *)a6 interstitialLayer:(id *)a7
{
  v38 = 0;
  v39 = &v38;
  v40 = 0x3052000000;
  v41 = __Block_byref_object_copy_;
  v42 = __Block_byref_object_dispose_;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3052000000;
  v35 = __Block_byref_object_copy_;
  v36 = __Block_byref_object_dispose_;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3052000000;
  v29 = __Block_byref_object_copy_;
  v30 = __Block_byref_object_dispose_;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  serialQueue = self->_playerLayer->serialQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __93__AVPlayerLayer__getMaskLayer_videoLayer_subtitleLayer_closedCaptionLayer_interstitialLayer___block_invoke;
  v13[3] = &unk_1E7460F58;
  v13[4] = self;
  v13[5] = &v38;
  v13[6] = &v32;
  v13[7] = &v26;
  v13[8] = &v20;
  v13[9] = &v14;
  dispatch_sync(serialQueue, v13);
  if (a3)
  {
    *a3 = v39[5];
  }

  if (a4)
  {
    *a4 = v33[5];
  }

  if (a5)
  {
    *a5 = v27[5];
  }

  if (a6)
  {
    *a6 = v21[5];
  }

  if (a7)
  {
    *a7 = v15[5];
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);
}

id __93__AVPlayerLayer__getMaskLayer_videoLayer_subtitleLayer_closedCaptionLayer_interstitialLayer___block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 40) = *(*(a1[4] + 48) + 120);
  *(*(a1[6] + 8) + 40) = *(*(a1[4] + 48) + 128);
  *(*(a1[7] + 8) + 40) = *(*(a1[4] + 48) + 136);
  *(*(a1[8] + 8) + 40) = *(*(a1[4] + 48) + 144);
  result = *(*(a1[4] + 48) + 152);
  *(*(a1[9] + 8) + 40) = result;
  return result;
}

- (id)_maskLayer
{
  v3 = 0;
  [(AVPlayerLayer *)self _getMaskLayer:&v3 videoLayer:0 subtitleLayer:0 closedCaptionLayer:0 interstitialLayer:0];
  return v3;
}

- (id)_closedCaptionLayer
{
  v3 = 0;
  [(AVPlayerLayer *)self _getMaskLayer:0 videoLayer:0 subtitleLayer:0 closedCaptionLayer:&v3 interstitialLayer:0];
  return v3;
}

- (id)_interstitialLayer
{
  v12 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  [(AVPlayerLayer *)self _getMaskLayer:0 videoLayer:0 subtitleLayer:0 closedCaptionLayer:0 interstitialLayer:&v12];
  if (!v12)
  {
    v3 = objc_alloc_init(AVPlayerLayer);
    [(AVPlayerLayer *)self bounds];
    [(AVPlayerLayer *)v3 setFrame:?];
    [(AVPlayerLayer *)v3 setHidden:1];
    serialQueue = self->_playerLayer->serialQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __35__AVPlayerLayer__interstitialLayer__block_invoke;
    v7[3] = &unk_1E7460F30;
    v7[4] = self;
    v7[5] = v3;
    v7[6] = &v8;
    dispatch_sync(serialQueue, v7);
    [(AVPlayerLayer *)self addSublayer:v3];
    if (*(v9 + 24))
    {
      [(AVPlayerLayer *)self _setShowInterstitialInstead:1];
    }
  }

  [(AVPlayerLayer *)self _getMaskLayer:0 videoLayer:0 subtitleLayer:0 closedCaptionLayer:0 interstitialLayer:&v12];
  v5 = v12;
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __35__AVPlayerLayer__interstitialLayer__block_invoke(void *a1)
{
  v2 = *(a1[4] + 48);
  v3 = *(v2 + 152);
  if (v3)
  {
    [v3 removeFromSuperlayer];

    v2 = *(a1[4] + 48);
  }

  *(v2 + 152) = a1[5];
  v4 = *(a1[4] + 48);
  if (*(v4 + 193) == 1)
  {
    *(v4 + 193) = 0;
    *(*(a1[6] + 8) + 24) = 1;
  }
}

- (BOOL)_showInterstitialInstead
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  playerLayer = self->_playerLayer;
  if (playerLayer->isPresentationLayer)
  {
    showInterstitialInstead = playerLayer->showInterstitialInstead;
    v10 = showInterstitialInstead;
  }

  else
  {
    serialQueue = playerLayer->serialQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __41__AVPlayerLayer__showInterstitialInstead__block_invoke;
    v6[3] = &unk_1E7460E68;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(serialQueue, v6);
    showInterstitialInstead = *(v8 + 24);
  }

  _Block_object_dispose(&v7, 8);
  return showInterstitialInstead & 1;
}

- (BOOL)_interstitialLayerIsVisible
{
  playerLayer = self->_playerLayer;
  if (playerLayer->isPresentationLayer)
  {
    showInterstitialInstead = playerLayer->showInterstitialInstead;
  }

  else
  {
    v7[1] = v2;
    v7[2] = v3;
    v7[0] = 0;
    [(AVPlayerLayer *)self _getMaskLayer:0 videoLayer:0 subtitleLayer:0 closedCaptionLayer:0 interstitialLayer:v7];
    if (v7[0])
    {
      showInterstitialInstead = [v7[0] isHidden] ^ 1;
    }

    else
    {
      showInterstitialInstead = 0;
    }
  }

  return showInterstitialInstead & 1;
}

- (void)_setShowInterstitialInstead:(BOOL)a3 afterDelay:(double)a4
{
  if (!self->_playerLayer->isPresentationLayer)
  {
    v5 = a3;
    if ([(AVPlayerLayer *)self _showInterstitialInstead]!= a3)
    {
      v22 = 0;
      v23 = 0;
      v16 = 0;
      v17 = &v16;
      v18 = 0x3052000000;
      v19 = __Block_byref_object_copy_;
      playerLayer = self->_playerLayer;
      v20 = __Block_byref_object_dispose_;
      v21 = 0;
      serialQueue = playerLayer->serialQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __56__AVPlayerLayer__setShowInterstitialInstead_afterDelay___block_invoke;
      block[3] = &unk_1E7460E68;
      block[4] = self;
      block[5] = &v16;
      dispatch_sync(serialQueue, block);
      [v17[5] _setShowInterstitialInstead:v5 afterDelay:a4];

      v9 = self->_playerLayer->serialQueue;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __56__AVPlayerLayer__setShowInterstitialInstead_afterDelay___block_invoke_2;
      v13[3] = &unk_1E7460E40;
      v13[4] = self;
      v14 = v5;
      dispatch_sync(v9, v13);
      [(AVPlayerLayer *)self _getMaskLayer:&v22 videoLayer:0 subtitleLayer:0 closedCaptionLayer:0 interstitialLayer:&v23];
      if (v23)
      {
        v10 = CACurrentMediaTime();
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __56__AVPlayerLayer__setShowInterstitialInstead_afterDelay___block_invoke_3;
        v11[3] = &unk_1E7460F80;
        v11[4] = self;
        v11[5] = v23;
        v12 = v5;
        v11[6] = v22;
        *&v11[7] = a4;
        *&v11[8] = v10 + a4;
        AVSerializeOnQueueAsyncIfNecessary(MEMORY[0x1E69E96A0], v11);
      }

      _Block_object_dispose(&v16, 8);
    }
  }
}

id __56__AVPlayerLayer__setShowInterstitialInstead_afterDelay___block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 48) + 168);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

uint64_t __56__AVPlayerLayer__setShowInterstitialInstead_afterDelay___block_invoke_3(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) willChangeValueForKey:@"videoRect"];
  [MEMORY[0x1E6979518] begin];
  if (dword_1ED5AC278)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [MEMORY[0x1E6979518] setDisableActions:{1, v4, v5}];
  [*(a1 + 48) setHidden:*(a1 + 72)];
  [*(a1 + 40) setHidden:*(a1 + 72) == 0];
  [*(a1 + 32) setNeedsLayout];
  [MEMORY[0x1E6979518] setCommitTime:*(a1 + 64)];
  [MEMORY[0x1E6979518] commit];
  return [*(a1 + 32) didChangeValueForKey:@"videoRect"];
}

- (BOOL)isOverscanSubtitleSupportEnabled
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  playerLayer = self->_playerLayer;
  v10 = 0;
  serialQueue = playerLayer->serialQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__AVPlayerLayer_isOverscanSubtitleSupportEnabled__block_invoke;
  v6[3] = &unk_1E7460E68;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __49__AVPlayerLayer_isOverscanSubtitleSupportEnabled__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 48) + 136) isOverscanSubtitleSupportEnabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setOverscanSubtitleSupportEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(AVPlayerLayer *)self _subtitleLayer];

  [v4 setOverscanSubtitleSupportEnabled:v3];
}

- (id)videoPerformanceMetrics
{
  v2 = [[AVVideoPerformanceMetrics alloc] initWithDictionary:[[(AVPlayerLayer *)self player] _performanceDictionary]];

  return v2;
}

- (void)_setIsConnectedToSecondScreen:(BOOL)a3
{
  v3 = a3;
  playerLayer = self->_playerLayer;
  if (playerLayer->isConnectedToSecondScreen != a3)
  {
    playerLayer->isConnectedToSecondScreen = a3;
    [(AVPlayer *)self->_playerLayer->player _updateConnectionToSecondScreen];
  }

  v6 = 0;
  [(AVPlayerLayer *)self _getMaskLayer:0 videoLayer:0 subtitleLayer:0 closedCaptionLayer:0 interstitialLayer:&v6];
  [v6 _setIsConnectedToSecondScreen:v3];
}

- (void)setLanczosFilterDownscalingEnabled:(BOOL)a3
{
  serialQueue = self->_playerLayer->serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__AVPlayerLayer_setLanczosFilterDownscalingEnabled___block_invoke;
  v4[3] = &unk_1E7460E40;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(serialQueue, v4);
}

- (int64_t)lanczosFilterDownscaleFactor
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  playerLayer = self->_playerLayer;
  v10 = 0;
  serialQueue = playerLayer->serialQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__AVPlayerLayer_lanczosFilterDownscaleFactor__block_invoke;
  v6[3] = &unk_1E7460E68;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)setLanczosFilterDownscaleFactor:(int64_t)a3
{
  if ((a3 - 2) <= 6)
  {
    v6[6] = v3;
    v6[7] = v4;
    serialQueue = self->_playerLayer->serialQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __49__AVPlayerLayer_setLanczosFilterDownscaleFactor___block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = a3;
    dispatch_sync(serialQueue, v6);
  }
}

- (CGRect)videoRect
{
  v26 = [[AVTelemetryInterval alloc] initAndStartWith:81];
  if (self->_playerLayer->showInterstitialInstead)
  {
    v25 = 0;
    [(AVPlayerLayer *)self _getMaskLayer:0 videoLayer:0 subtitleLayer:0 closedCaptionLayer:0 interstitialLayer:&v25];
    [v25 videoRect];
  }

  else
  {
    [(AVPlayerLayer *)self bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [(AVPlayerLayer *)self _presentationSize];
    AVLayerVideoRectForPlayerLayerBoundsPresentationSizeAndVideoGravity([(AVPlayerLayer *)self videoGravity], v8, v10, v12, v14, v15, v16);
  }

  v17 = v3;
  v18 = v4;
  v19 = v5;
  v20 = v6;
  AVTelemetryIntervalEnd(&v26);
  v21 = v17;
  v22 = v18;
  v23 = v19;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CGRect)_videoRectForBounds:(CGRect)a3
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setLegibleContentInsets:(NSEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  *&v23 = a3.top;
  *(&v23 + 1) = *&a3.left;
  *&v24 = a3.bottom;
  *(&v24 + 1) = *&a3.right;
  v21 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  [(AVPlayerLayer *)self _getMaskLayer:&v22 videoLayer:&v21 subtitleLayer:&v20 closedCaptionLayer:&v19 interstitialLayer:&v18];
  playerLayer = self->_playerLayer;
  if (playerLayer)
  {
    v9 = v21 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    p_top = &playerLayer->legibleContentInsets.top;
    v11 = v24;
    *p_top = v23;
    p_top[1] = v11;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    FigGeometryDimensionMake();
    FigGeometryDimensionMake();
    FigGeometryDimensionMake();
    FigGeometryDimensionMake();
    FigGeometryMarginsMake();
    if (v20)
    {
      v13[0] = v14;
      v13[1] = v15;
      v13[2] = v16;
      v13[3] = v17;
      [v20 setCaptionsAvoidanceMargins:v13];
    }

    v12 = [(AVPlayerLayer *)self player];
    [(AVPlayer *)v12 _updateClosedCaptionLayerBounds:v19 videoRelativeToViewport:0 captionsAvoidanceMargins:&v23];
    left = *(&v23 + 1);
    top = *&v23;
    right = *(&v24 + 1);
    bottom = *&v24;
  }

  [v18 setLegibleContentInsets:{top, left, bottom, right}];
}

- (NSEdgeInsets)legibleContentInsets
{
  playerLayer = self->_playerLayer;
  top = playerLayer->legibleContentInsets.top;
  left = playerLayer->legibleContentInsets.left;
  bottom = playerLayer->legibleContentInsets.bottom;
  right = playerLayer->legibleContentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)setLegibleDisplayEnabled:(BOOL)a3
{
  playerLayer = self->_playerLayer;
  if (playerLayer->isLegibleDisplayEnabled != a3)
  {
    playerLayer->isLegibleDisplayEnabled = a3;
    if (a3)
    {
      [-[AVPlayerLayer _maskLayer](self "_maskLayer")];
      v5 = [(AVPlayerLayer *)self _maskLayer];
      v6 = [(AVPlayerLayer *)self _closedCaptionLayer];

      [v5 addSublayer:v6];
    }

    else
    {
      [-[AVPlayerLayer _closedCaptionLayer](self "_closedCaptionLayer")];
      v7 = [(AVPlayerLayer *)self _subtitleLayer];

      [v7 removeFromSuperlayer];
    }
  }
}

- (void)setForScrubbingOnly:(BOOL)a3
{
  playerLayer = self->_playerLayer;
  if (playerLayer->isForScrubbingOnly != a3)
  {
    playerLayer->isForScrubbingOnly = a3;
    [(FigVideoContainerLayer *)self->_playerLayer->videoLayer setForScrubbingOnly:?];
    videoLayer = self->_playerLayer->videoLayer;
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AVPlayerLayer <%p> (scrubber)", self];

    [(FigVideoContainerLayer *)videoLayer setName:v6];
  }
}

- (void)setToneMapToStandardDynamicRange:(BOOL)a3
{
  v3 = a3;
  [-[AVPlayerLayer _videoLayer](self "_videoLayer")];
  v5.receiver = self;
  v5.super_class = AVPlayerLayer;
  [(AVPlayerLayer *)&v5 setToneMapToStandardDynamicRange:v3];
}

- (CVPixelBufferRef)copyDisplayedPixelBuffer
{
  v13 = [[AVTelemetryInterval alloc] initAndStartWith:82];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  serialQueue = self->_playerLayer->serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__AVPlayerLayer_copyDisplayedPixelBuffer__block_invoke;
  v7[3] = &unk_1E7460E68;
  v7[5] = &v9;
  v8 = 0;
  v7[4] = self;
  dispatch_sync(serialQueue, v7);
  if (*(v10 + 24) == 1)
  {
    [(AVPlayerLayer *)self _getMaskLayer:0 videoLayer:0 subtitleLayer:0 closedCaptionLayer:0 interstitialLayer:&v8];
    v4 = [v8 copyDisplayedPixelBuffer];
  }

  else
  {
    v4 = [[(AVPlayerLayer *)self player] _copyDisplayedPixelBuffer:[(AVPlayerLayer *)self _videoLayer]];
  }

  v5 = v4;
  _Block_object_dispose(&v9, 8);
  AVTelemetryIntervalEnd(&v13);
  return v5;
}

- (void)_configurePlayerWhenEnteringPIP
{
  [[(AVPlayerLayer *)self player] setPlayerRole:@"PIP" synchronously:0];
  [[(AVPlayerLayer *)self player] setShouldReduceResourceUsage:1];
  v3 = 0;
  [(AVPlayerLayer *)self _getMaskLayer:0 videoLayer:0 subtitleLayer:0 closedCaptionLayer:0 interstitialLayer:&v3];
  [v3 _configurePlayerWhenEnteringPIP];
}

- (void)_configurePlayerWhenLeavingPIP
{
  [[(AVPlayerLayer *)self player] setPlayerRole:0 synchronously:0];
  [[(AVPlayerLayer *)self player] setShouldReduceResourceUsage:0];
  v3 = 0;
  [(AVPlayerLayer *)self _getMaskLayer:0 videoLayer:0 subtitleLayer:0 closedCaptionLayer:0 interstitialLayer:&v3];
  [v3 _configurePlayerWhenLeavingPIP];
}

+ (void)_swapSublayersBetweenPlayerLayer:(id)a3 andPlayerLayer:(id)a4
{
  if (a3 != a4)
  {
    v7 = [a3 _sublayersForPIP];
    v8 = [a4 _sublayersForPIP];
    [a3 _setSublayersForPIP:0 updateReadyForDisplay:0];
    [a4 _setSublayersForPIP:0 updateReadyForDisplay:0];
    [a3 _setSublayersForPIP:v8];

    [a4 _setSublayersForPIP:v7];
  }
}

- (void)_stashClientLayers
{
  v3 = [(AVPlayerLayer *)self _maskLayer];
  v4 = AVPlayerLayerFilterClientLayersFromLayerWithIndexPath(v3, [MEMORY[0x1E696AC88] indexPathWithIndex:0]);
  clientLayers = self->_playerLayer->clientLayers;
  if (clientLayers != v4)
  {

    self->_playerLayer->clientLayers = v4;
    clientLayers = self->_playerLayer->clientLayers;
  }

  [(NSDictionary *)clientLayers enumerateKeysAndObjectsUsingBlock:&__block_literal_global_278];
}

uint64_t __35__AVPlayerLayer__stashClientLayers__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  NSLog(&cfstr_LayerIsNotAPer.isa, a3);

  return [a3 removeFromSuperlayer];
}

- (void)_unstashClientLayers
{
  [(AVPlayerLayer *)self _restoreClientLayers:self->_playerLayer->clientLayers intoMaskLayer:[(AVPlayerLayer *)self _maskLayer]];

  self->_playerLayer->clientLayers = 0;
}

- (void)_associateWithLayer:(id)a3 forMode:(int64_t)a4
{
  v10 = 0;
  [(AVPlayerLayer *)self _getMaskLayer:0 videoLayer:0 subtitleLayer:0 closedCaptionLayer:0 interstitialLayer:&v10];
  serialQueue = self->_playerLayer->serialQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__AVPlayerLayer__associateWithLayer_forMode___block_invoke;
  v9[3] = &unk_1E7460FF0;
  v9[4] = self;
  v9[5] = a3;
  v9[6] = a4;
  dispatch_sync(serialQueue, v9);
  if (a4)
  {
    [AVPlayerLayer _swapSublayersBetweenPlayerLayer:self andPlayerLayer:a3];
  }

  else
  {
    [[(AVPlayerLayer *)self player] _ensureVideoLayersAreAttached];
    [objc_msgSend(v10 "player")];
    [(AVPlayerLayer *)self _setSublayersPreventChangesToSublayerHierarchy:1];
    [(AVPlayerLayer *)self _stashClientLayers];
    [v10 _stashClientLayers];
    [AVPlayerLayer _swapSublayersBetweenPlayerLayer:self andPlayerLayer:a3];
    [a3 _setPreventsChangesToSublayerHierarchy:1];
  }

  [a3 _setWillManageSublayersAsSwappedLayers:1];
  [a3 _setPlayer:-[AVPlayerLayer player](self forPIP:{"player"), 1}];
  v8 = [a3 _interstitialLayer];
  [v8 _setPlayer:objc_msgSend(v10 forPIP:{"player"), 1}];
  [a3 _setShowInterstitialInstead:{-[AVPlayerLayer _showInterstitialInstead](self, "_showInterstitialInstead")}];
}

id __45__AVPlayerLayer__associateWithLayer_forMode___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(*(a1 + 32) + 48) + 168) = result;
  *(*(*(a1 + 32) + 48) + 184) = *(a1 + 48);
  return result;
}

- (id)_associatedRemoteModeLayer
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy_;
  playerLayer = self->_playerLayer;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  serialQueue = playerLayer->serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__AVPlayerLayer__associatedRemoteModeLayer__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v13;
  dispatch_sync(serialQueue, block);
  if (!v14[5])
  {
    if ([(AVPlayerLayer *)self superlayer])
    {
      v7 = objc_opt_class();
      [(AVPlayerLayer *)self superlayer];
      if (v7 == objc_opt_class())
      {
        v8 = [(AVPlayerLayer *)self superlayer];
        v11 = 0;
        [v8 _getMaskLayer:0 videoLayer:0 subtitleLayer:0 closedCaptionLayer:0 interstitialLayer:&v11];
        if (v11 == self)
        {
          v9 = [v8 _associatedRemoteModeLayer];
          if (v9)
          {
            v10 = [v9 _interstitialLayer];
            v14[5] = v10;
          }
        }
      }
    }
  }

  v5 = v14[5];
  _Block_object_dispose(&v13, 8);
  return v5;
}

id __43__AVPlayerLayer__associatedRemoteModeLayer__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 48) + 168);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (int64_t)_activeMode
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  playerLayer = self->_playerLayer;
  v10 = -1;
  serialQueue = playerLayer->serialQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __28__AVPlayerLayer__activeMode__block_invoke;
  v6[3] = &unk_1E7460E68;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)_disassociateWithLayerForMode:(int64_t)a3
{
  v14 = 0;
  [(AVPlayerLayer *)self _getMaskLayer:0 videoLayer:0 subtitleLayer:0 closedCaptionLayer:0 interstitialLayer:&v14];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy_;
  playerLayer = self->_playerLayer;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  serialQueue = playerLayer->serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__AVPlayerLayer__disassociateWithLayerForMode___block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(serialQueue, block);
  [v9[5] _setPlayer:0 forPIP:1];
  [objc_msgSend(v9[5] "_interstitialLayer")];
  [v9[5] removeAllAnimations];
  if (!a3)
  {
    [v9[5] _setPreventsChangesToSublayerHierarchy:0];
    [v9[5] _setSublayersPreventChangesToSublayerHierarchy:0];
  }

  [AVPlayerLayer _swapSublayersBetweenPlayerLayer:self andPlayerLayer:v9[5]];
  [v9[5] _setWillManageSublayersAsSwappedLayers:0];
  if (!a3)
  {
    [v9[5] _mergeClientLayersIntoMaskLayer:{-[AVPlayerLayer _maskLayer](self, "_maskLayer")}];
    [(AVPlayerLayer *)self _unstashClientLayers];
    [v14 _unstashClientLayers];
  }

  _Block_object_dispose(&v8, 8);
}

void __47__AVPlayerLayer__disassociateWithLayerForMode___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = *(*(*(a1 + 32) + 48) + 168);

  *(*(*(a1 + 32) + 48) + 168) = 0;
  *(*(*(a1 + 32) + 48) + 184) = -1;
}

- (void)startRedirectingVideoToLayer:(id)a3 forMode:(int64_t)a4
{
  if (!a3)
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    v14 = "targetLayer != nil";
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    v14 = "[targetLayer isKindOfClass:[AVPlayerLayer class]]";
    goto LABEL_16;
  }

  if ([a3 player])
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    v14 = "[targetLayer player] == nil";
LABEL_16:
    v15 = [v12 exceptionWithName:v13 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", a4, v4, v5, v6, v7, v14), 0}];
    objc_exception_throw(v15);
  }

  if ([(AVPlayerLayer *)self _activeMode]!= a4)
  {
    [(AVPlayerLayer *)self stopRedirectingVideoToLayer:[(AVPlayerLayer *)self _associatedRemoteModeLayer]];
  }

  if (a4)
  {

    [(AVPlayerLayer *)self _enterSecondScreenModeRedirectingVideoToLayer:a3];
  }

  else
  {

    [(AVPlayerLayer *)self _enterPIPModeRedirectingVideoToLayer:a3];
  }
}

- (void)stopRedirectingVideoToLayer:(id)a3
{
  if ([(AVPlayerLayer *)self _activeMode])
  {

    [(AVPlayerLayer *)self _leaveSecondScreenModeForLayer:a3];
  }

  else
  {

    [(AVPlayerLayer *)self _leavePIPModeForLayer:a3];
  }
}

- (void)_enterSecondScreenModeRedirectingVideoToLayer:(id)a3
{
  if (![(AVPlayerLayer *)self _isConnectedToSecondScreen])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __63__AVPlayerLayer__enterSecondScreenModeRedirectingVideoToLayer___block_invoke;
    v5[3] = &unk_1E7460DF0;
    v5[4] = self;
    v5[5] = a3;
    AVSerializeOnQueueAsyncIfNecessary(MEMORY[0x1E69E96A0], v5);
  }
}

uint64_t __63__AVPlayerLayer__enterSecondScreenModeRedirectingVideoToLayer___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [*(a1 + 32) _associateWithLayer:*(a1 + 40) forMode:1];
  [*(a1 + 40) setVideoGravity:{objc_msgSend(*(a1 + 32), "videoGravity")}];
  [*(a1 + 32) _setIsConnectedToSecondScreen:1];
  v2 = MEMORY[0x1E6979518];

  return [v2 commit];
}

- (void)_leaveSecondScreenModeForLayer:(id)a3
{
  if ([-[AVPlayerLayer _associatedRemoteModeLayer](self "_associatedRemoteModeLayer")])
  {
    if ([(AVPlayerLayer *)self _isConnectedToSecondScreen])
    {
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __48__AVPlayerLayer__leaveSecondScreenModeForLayer___block_invoke;
      v4[3] = &unk_1E7460C00;
      v4[4] = self;
      AVSerializeOnQueueAsyncIfNecessary(MEMORY[0x1E69E96A0], v4);
    }
  }
}

uint64_t __48__AVPlayerLayer__leaveSecondScreenModeForLayer___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [*(a1 + 32) _disassociateWithLayerForMode:1];
  [*(a1 + 32) _setIsConnectedToSecondScreen:0];
  v2 = MEMORY[0x1E6979518];

  return [v2 commit];
}

- (void)enterPIPModeRedirectingVideoToLayer:(id)a3
{
  if (!a3)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = "newPlayerLayerForPIP != nil";
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = "[newPlayerLayerForPIP isKindOfClass:[AVPlayerLayer class]]";
    goto LABEL_10;
  }

  if ([a3 player])
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = "[newPlayerLayerForPIP player] == nil";
LABEL_10:
    v14 = [v11 exceptionWithName:v12 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v3, v4, v5, v6, v7, v13), 0}];
    objc_exception_throw(v14);
  }

  [(AVPlayerLayer *)self _enterPIPModeRedirectingVideoToLayer:a3];
}

- (void)_enterPIPModeRedirectingVideoToLayer:(id)a3
{
  v5 = [(AVPlayerLayer *)self _associatedRemoteModeLayer];
  if (v5 != a3)
  {
    v6 = v5;
    v7 = [(AVPlayerLayer *)self isPIPModeEnabled];
    if (!v7)
    {
      [(AVPlayerLayer *)self willChangeValueForKey:@"PIPModeEnabled"];
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__AVPlayerLayer__enterPIPModeRedirectingVideoToLayer___block_invoke;
    v8[3] = &unk_1E7460E90;
    v8[4] = v6;
    v8[5] = self;
    v8[6] = a3;
    AVSerializeOnQueueAsyncIfNecessary(MEMORY[0x1E69E96A0], v8);
    [(AVPlayerLayer *)self setPIPModeEnabled:1];
    if (!v7)
    {
      [(AVPlayerLayer *)self didChangeValueForKey:@"PIPModeEnabled"];
    }
  }
}

uint64_t __54__AVPlayerLayer__enterPIPModeRedirectingVideoToLayer___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  if (*(a1 + 32))
  {
    [*(a1 + 40) _disassociateWithLayerForMode:0];
  }

  [*(a1 + 40) _associateWithLayer:*(a1 + 48) forMode:0];
  v2 = *(a1 + 40);
  v3 = *(v2[6] + 248);
  if (v3)
  {
    [v2 insertSublayer:v3 above:{objc_msgSend(*(a1 + 40), "_maskLayer")}];
    v4 = *(a1 + 40);
    v5 = *(v4[6] + 248);
    [v4 bounds];
    [v5 setFrame:?];
    v2 = *(a1 + 40);
  }

  [*(a1 + 48) setVideoGravity:{objc_msgSend(v2, "videoGravity")}];
  v6 = MEMORY[0x1E6979518];

  return [v6 commit];
}

- (void)leavePIPMode
{
  v3 = [(AVPlayerLayer *)self _associatedRemoteModeLayer];

  [(AVPlayerLayer *)self _leavePIPModeForLayer:v3];
}

- (void)_leavePIPModeForLayer:(id)a3
{
  if ([-[AVPlayerLayer _associatedRemoteModeLayer](self "_associatedRemoteModeLayer")])
  {
    if ([(AVPlayerLayer *)self isPIPModeEnabled])
    {
      [(AVPlayerLayer *)self willChangeValueForKey:@"PIPModeEnabled"];
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __39__AVPlayerLayer__leavePIPModeForLayer___block_invoke;
      v4[3] = &unk_1E7460C00;
      v4[4] = self;
      AVSerializeOnQueueAsyncIfNecessary(MEMORY[0x1E69E96A0], v4);
      [(AVPlayerLayer *)self setPIPModeEnabled:0];
      [(AVPlayerLayer *)self didChangeValueForKey:@"PIPModeEnabled"];
    }
  }
}

uint64_t __39__AVPlayerLayer__leavePIPModeForLayer___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [*(*(*(a1 + 32) + 48) + 248) removeFromSuperlayer];
  [*(a1 + 32) _disassociateWithLayerForMode:0];
  v2 = MEMORY[0x1E6979518];

  return [v2 commit];
}

- (void)setPIPModeEnabled:(BOOL)a3
{
  v3 = a3;
  playerLayer = self->_playerLayer;
  if (playerLayer->isPIPModeEnabled != a3)
  {
    playerLayer->isPIPModeEnabled = a3;
    if (self->_playerLayer->isPIPModeEnabled)
    {
      [(AVPlayerLayer *)self _configurePlayerWhenEnteringPIP];
    }

    else
    {
      [(AVPlayerLayer *)self _configurePlayerWhenLeavingPIP];
    }
  }

  v8 = 0;
  [(AVPlayerLayer *)self _getMaskLayer:0 videoLayer:0 subtitleLayer:0 closedCaptionLayer:0 interstitialLayer:&v8];
  [v8 setPIPModeEnabled:v3];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__AVPlayerLayer_setPIPModeEnabled___block_invoke;
  block[3] = &unk_1E7460E40;
  block[4] = self;
  v7 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __35__AVPlayerLayer_setPIPModeEnabled___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  [*(a1 + 32) _setOverridesPreferredDynamicRangeForVideo:*(a1 + 40)];
  v2 = MEMORY[0x1E6979518];

  return [v2 commit];
}

- (id)_sublayersForPIP
{
  v12[5] = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = 0;
  v7 = 0;
  v8 = 0;
  v6 = 0;
  [(AVPlayerLayer *)self _getMaskLayer:&v10 videoLayer:&v9 subtitleLayer:&v8 closedCaptionLayer:&v7 interstitialLayer:&v6];
  v2 = [v6 _sublayersForPIP];
  v3 = 0;
  if (v10 && v9)
  {
    v11[0] = @"maskLayer";
    v11[1] = @"videoLayer";
    v4 = MEMORY[0x1E695E0F8];
    if (v2)
    {
      v4 = v2;
    }

    v12[0] = v10;
    v12[1] = v9;
    v11[2] = @"subtitleLayer";
    v11[3] = @"closedCaptionLayer";
    v12[2] = v8;
    v12[3] = v7;
    v11[4] = @"interstitialLayers";
    v12[4] = v4;
    return [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:5];
  }

  return v3;
}

- (void)_mergeClientLayersIntoMaskLayer:(id)a3
{
  v5 = [(AVPlayerLayer *)self _maskLayer];
  v6 = AVPlayerLayerFilterClientLayersFromLayerWithIndexPath(v5, [MEMORY[0x1E696AC88] indexPathWithIndex:0]);

  [(AVPlayerLayer *)self _restoreClientLayers:v6 intoMaskLayer:a3];
}

- (void)_restoreClientLayers:(id)a3 intoMaskLayer:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  if ([a3 count])
  {
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = [objc_msgSend(a3 "allKeys")];
    v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = [a3 objectForKey:v10];
        if ([v10 length] < 2)
        {
          break;
        }

        v12 = a4;
        if (([v10 length] - 3) > 0xFFFFFFFFFFFFFFFDLL)
        {
LABEL_12:
          if (v12)
          {
            [v12 insertSublayer:v11 atIndex:{objc_msgSend(v10, "indexAtPosition:", objc_msgSend(v10, "length") - 1)}];
          }
        }

        else
        {
          v13 = 1;
          v12 = a4;
          while (1)
          {
            v14 = [v10 indexAtPosition:v13];
            if (![objc_msgSend(v12 "sublayers")])
            {
              break;
            }

            v12 = [objc_msgSend(v12 "sublayers")];
            if ([v10 length] - 1 <= ++v13)
            {
              goto LABEL_12;
            }
          }
        }

        if (++v9 == v7)
        {
          v7 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          return;
        }
      }
    }
  }
}

- (void)_setSublayersPreventChangesToSublayerHierarchy:(BOOL)a3
{
  v3 = a3;
  v8 = 0;
  v6 = 0;
  v7 = 0;
  v4 = 0;
  v5 = 0;
  [(AVPlayerLayer *)self _getMaskLayer:&v8 videoLayer:&v7 subtitleLayer:&v6 closedCaptionLayer:&v5 interstitialLayer:&v4];
  [v7 setPreventsChangesToSublayerHierarchy:v3];
  [v6 setPreventsChangesToSublayerHierarchy:v3];
  [v5 setPreventsChangesToSublayerHierarchy:v3];
  [v8 setPreventsChangesToSublayerHierarchy:v3];
  [v4 _setSublayersPreventChangesToSublayerHierarchy:v3];
}

- (void)_setSublayersForPIP:(id)a3 updateReadyForDisplay:(BOOL)a4
{
  v4 = a4;
  if (a3)
  {
    v7 = [a3 objectForKeyedSubscript:@"videoLayer"];
    v8 = [a3 objectForKeyedSubscript:@"subtitleLayer"];
    v9 = [a3 objectForKeyedSubscript:@"closedCaptionLayer"];
    v10 = [a3 objectForKeyedSubscript:@"maskLayer"];
    v11 = [a3 objectForKeyedSubscript:@"interstitialLayers"];
  }

  else
  {
    v10 = 0;
    v8 = 0;
    v7 = 0;
    v9 = 0;
    v11 = 0;
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v12 = [v11 count];
  if (v12)
  {
    [(AVPlayerLayer *)self _interstitialLayer];
  }

  serialQueue = self->_playerLayer->serialQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __59__AVPlayerLayer__setSublayersForPIP_updateReadyForDisplay___block_invoke;
  v16[3] = &unk_1E7461018;
  v16[4] = self;
  v16[5] = v7;
  v16[6] = v8;
  v16[7] = v9;
  v16[10] = &v17;
  v16[11] = &v21;
  v16[8] = v10;
  v16[9] = v11;
  dispatch_sync(serialQueue, v16);
  if (*(v18 + 24) == 1 && v4)
  {
    [(AVPlayerLayer *)self _applyCurrentItemPresentationSizeChangeAndForceUpdate:0];
    if (FigUseVideoReceiverForCALayer())
    {
      v14 = [v7 isReadyForDisplay];
    }

    else
    {
      v14 = [(AVPlayerItem *)[[(AVPlayerLayer *)self player] currentItem] _hasEnqueuedVideoFrame];
    }

    [(AVPlayerLayer *)self _updateReadyForDisplay:v14 skipInformingParent:v12 == 0];
  }

  v15 = v22[5];
  if (v15 != v10)
  {
    [v15 removeFromSuperlayer];
    if (v10)
    {
      [(AVPlayerLayer *)self addSublayer:v10];
      [(AVPlayerLayer *)self _forceLayout];
    }
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
}

uint64_t __59__AVPlayerLayer__setSublayersForPIP_updateReadyForDisplay___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[6];
  v4 = *(v3 + 128);
  if (v4 != *(a1 + 40))
  {
    if ((*(v3 + 24) & 1) == 0)
    {
      [v4 removeObserver:v2 forKeyPath:@"videoLayer" context:@"AVPlayerLayerVideoLayerObservationContext"];
      v2 = *(a1 + 32);
      v4 = *(v2[6] + 128);
    }

    [v2 _removeObserversForVideoLayer:v4];

    *(*(*(a1 + 32) + 48) + 128) = *(a1 + 40);
    [*(a1 + 32) _addObserversForVideoLayer:*(a1 + 40)];
    v5 = *(*(a1 + 32) + 48);
    if ((*(v5 + 24) & 1) == 0)
    {
      [*(v5 + 128) addObserver:? forKeyPath:? options:? context:?];
    }

    *(*(*(a1 + 80) + 8) + 24) = 1;
    v3 = *(*(a1 + 32) + 48);
  }

  v6 = *(v3 + 136);
  if (v6 != *(a1 + 48))
  {

    *(*(*(a1 + 32) + 48) + 136) = *(a1 + 48);
    v3 = *(*(a1 + 32) + 48);
  }

  v7 = *(v3 + 144);
  if (v7 != *(a1 + 56))
  {

    *(*(*(a1 + 32) + 48) + 144) = *(a1 + 56);
    v3 = *(*(a1 + 32) + 48);
  }

  *(*(*(a1 + 88) + 8) + 40) = *(v3 + 120);
  if (*(*(*(a1 + 88) + 8) + 40) != *(a1 + 64))
  {

    *(*(*(a1 + 32) + 48) + 120) = *(a1 + 64);
  }

  v8 = *(*(*(a1 + 32) + 48) + 152);
  v9 = *(a1 + 72);

  return [v8 _setSublayersForPIP:v9];
}

- (BOOL)_willManageSublayersAsSwappedLayers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  playerLayer = self->_playerLayer;
  v10 = 0;
  serialQueue = playerLayer->serialQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__AVPlayerLayer__willManageSublayersAsSwappedLayers__block_invoke;
  v6[3] = &unk_1E7460E68;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)_setWillManageSublayersAsSwappedLayers:(BOOL)a3
{
  v3 = a3;
  v8 = 0;
  [(AVPlayerLayer *)self _getMaskLayer:0 videoLayer:0 subtitleLayer:0 closedCaptionLayer:0 interstitialLayer:&v8];
  [v8 _setWillManageSublayersAsSwappedLayers:v3];
  serialQueue = self->_playerLayer->serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__AVPlayerLayer__setWillManageSublayersAsSwappedLayers___block_invoke;
  block[3] = &unk_1E7460E40;
  block[4] = self;
  v7 = v3;
  dispatch_sync(serialQueue, block);
}

- (void)_setPreventsChangesToSublayerHierarchy:(BOOL)a3
{
  v3 = a3;
  v5 = 0;
  [(AVPlayerLayer *)self _getMaskLayer:0 videoLayer:0 subtitleLayer:0 closedCaptionLayer:0 interstitialLayer:&v5];
  [v5 _setPreventsChangesToSublayerHierarchy:v3];
  self->_playerLayer->preventsChangesToSublayerHierarchy = v3;
}

- (void)setPlaceholderContentLayerDuringPIPMode:(id)a3
{
  placeholderContentLayerDuringPIPMode = self->_playerLayer->placeholderContentLayerDuringPIPMode;
  if (placeholderContentLayerDuringPIPMode != a3)
  {
    [(CALayer *)placeholderContentLayerDuringPIPMode removeFromSuperlayer];

    self->_playerLayer->placeholderContentLayerDuringPIPMode = a3;
    if (self->_playerLayer->placeholderContentLayerDuringPIPMode)
    {
      if ([(AVPlayerLayer *)self isPIPModeEnabled])
      {
        [(AVPlayerLayer *)self insertSublayer:self->_playerLayer->placeholderContentLayerDuringPIPMode above:[(AVPlayerLayer *)self _maskLayer]];
        v6 = self->_playerLayer->placeholderContentLayerDuringPIPMode;
        [(AVPlayerLayer *)self bounds];

        [(CALayer *)v6 setFrame:?];
      }
    }
  }
}

- (void)setSublayers:(id)a3
{
  if (![(AVPlayerLayer *)self _preventsChangesToSublayerHierarchy])
  {
    v5.receiver = self;
    v5.super_class = AVPlayerLayer;
    [(AVPlayerLayer *)&v5 setSublayers:a3];
  }
}

- (void)addSublayer:(id)a3
{
  if (![(AVPlayerLayer *)self _preventsChangesToSublayerHierarchy]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5.receiver = self;
    v5.super_class = AVPlayerLayer;
    [(AVPlayerLayer *)&v5 addSublayer:a3];
  }
}

- (void)insertSublayer:(id)a3 atIndex:(unsigned int)a4
{
  v4 = *&a4;
  if (![(AVPlayerLayer *)self _preventsChangesToSublayerHierarchy])
  {
    v7.receiver = self;
    v7.super_class = AVPlayerLayer;
    [(AVPlayerLayer *)&v7 insertSublayer:a3 atIndex:v4];
  }
}

- (void)insertSublayer:(id)a3 below:(id)a4
{
  if (![(AVPlayerLayer *)self _preventsChangesToSublayerHierarchy])
  {
    v7.receiver = self;
    v7.super_class = AVPlayerLayer;
    [(AVPlayerLayer *)&v7 insertSublayer:a3 below:a4];
  }
}

- (void)insertSublayer:(id)a3 above:(id)a4
{
  if (![(AVPlayerLayer *)self _preventsChangesToSublayerHierarchy])
  {
    v7.receiver = self;
    v7.super_class = AVPlayerLayer;
    [(AVPlayerLayer *)&v7 insertSublayer:a3 above:a4];
  }
}

- (void)replaceSublayer:(id)a3 with:(id)a4
{
  if (![(AVPlayerLayer *)self _preventsChangesToSublayerHierarchy])
  {
    v7.receiver = self;
    v7.super_class = AVPlayerLayer;
    [(AVPlayerLayer *)&v7 replaceSublayer:a3 with:a4];
  }
}

- (void)removeFromSuperlayer
{
  v2.receiver = self;
  v2.super_class = AVPlayerLayer;
  [(AVPlayerLayer *)&v2 removeFromSuperlayer];
}

- (BOOL)_currentWindowSceneIsForegroundDefault
{
  lastWindowSceneEvent = self->_playerLayer->lastWindowSceneEvent;
  if (lastWindowSceneEvent)
  {
    return lastWindowSceneEvent == 2;
  }

  else
  {
    return [(AVPlayerLayer *)self context:v2]!= 0;
  }
}

- (BOOL)_currentWindowSceneIsForeground
{
  v3 = [(AVPlayerLayer *)self _currentWindowSceneIsForegroundDefault];
  v4 = [objc_msgSend(uiWindowClass _windowWithContextId:{objc_msgSend(-[AVPlayerLayer context](self, "context"), "contextId")), "windowScene"}];
  if (v4)
  {
    v5 = v4;
    return ![v4 activationState] || objc_msgSend(v5, "activationState") == 1;
  }

  return v3;
}

- (void)_windowSceneDidEnterBackground:(id)a3
{
  if ([objc_msgSend(objc_msgSend(uiWindowClass _windowWithContextId:{objc_msgSend(-[AVPlayerLayer context](self, "context"), "contextId")), "windowScene"), "isEqual:", objc_msgSend(a3, "object")}])
  {

    [(AVPlayerLayer *)self _windowSceneDidEnterBackground];
  }
}

- (void)_windowSceneWillEnterForeground:(id)a3
{
  if ([objc_msgSend(objc_msgSend(uiWindowClass _windowWithContextId:{objc_msgSend(-[AVPlayerLayer context](self, "context"), "contextId")), "windowScene"), "isEqual:", objc_msgSend(a3, "object")}])
  {

    [(AVPlayerLayer *)self _windowSceneWillEnterForeground];
  }
}

- (void)_forceWindowSceneEvent:(BOOL)a3
{
  if (a3)
  {
    [(AVPlayerLayer *)self _windowSceneWillEnterForeground];
  }

  else
  {
    [(AVPlayerLayer *)self _windowSceneDidEnterBackground];
  }
}

- (void)_updateIsPartOfForegroundScene
{
  v3 = [(AVPlayerLayer *)self _currentWindowSceneIsForeground];

  [(AVPlayerLayer *)self _setIsPartOfForegroundScene:v3];
}

- (void)_notifyPlayerOfLayerForegroundStateChange
{
  v3 = [(AVPlayerLayer *)self _isPartOfForegroundScene];
  playerLayer = self->_playerLayer;
  v5 = v3 || playerLayer->lastWindowSceneEvent == 0;
  if (playerLayer->isVisible)
  {
    v6 = [(AVPlayerLayer *)self _isPartOfForegroundScene];
    if (!self->_playerLayer->isVisible && !v5)
    {
      goto LABEL_9;
    }

LABEL_8:
    if (!v6)
    {
      return;
    }

    goto LABEL_9;
  }

  v6 = 0;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_9:
  v7 = [MEMORY[0x1E696AD80] notificationWithName:@"AVPlayerLayerIsPartOfForegroundSceneDidChangeNotification" object:self userInfo:0];
  v8 = [MEMORY[0x1E696AD88] defaultCenter];

  [v8 postNotification:v7];
}

- (void)_setIsPartOfForegroundScene:(BOOL)a3
{
  serialQueue = self->_playerLayer->serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__AVPlayerLayer__setIsPartOfForegroundScene___block_invoke;
  v5[3] = &unk_1E7460E40;
  v5[4] = self;
  v6 = a3;
  dispatch_sync(serialQueue, v5);
  [(AVPlayerLayer *)self _notifyPlayerOfLayerForegroundStateChange];
}

uint64_t __45__AVPlayerLayer__setIsPartOfForegroundScene___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 48);
  v2 = *(result + 40);
  if (*(v1 + 192) != v2)
  {
    *(v1 + 192) = v2;
  }

  return result;
}

- (BOOL)_isPartOfForegroundScene
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  playerLayer = self->_playerLayer;
  v10 = 1;
  serialQueue = playerLayer->serialQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__AVPlayerLayer__isPartOfForegroundScene__block_invoke;
  v6[3] = &unk_1E7460E68;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)_STSLabel
{
  result = [(AVPlayerLayer *)self _videoLayer];
  if (result)
  {

    return [result STSLabel];
  }

  return result;
}

- (BOOL)_overridesPreferredDynamicRangeForVideo
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  playerLayer = self->_playerLayer;
  v10 = 0;
  serialQueue = playerLayer->serialQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__AVPlayerLayer__overridesPreferredDynamicRangeForVideo__block_invoke;
  v6[3] = &unk_1E7460E68;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)_setOverridesPreferredDynamicRangeForVideo:(BOOL)a3
{
  serialQueue = self->_playerLayer->serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__AVPlayerLayer__setOverridesPreferredDynamicRangeForVideo___block_invoke;
  v5[3] = &unk_1E7460E40;
  v5[4] = self;
  v6 = a3;
  dispatch_sync(serialQueue, v5);
  [(AVPlayerLayer *)self _updatePreferredDynamicRangeWithAnimation:1];
}

@end