@interface AVSampleBufferDisplayLayer
+ (CGRect)_destRectForAspectRatio:(CGSize)ratio;
- (AVLayerVideoGravity)videoGravity;
- (AVQueuedSampleBufferRenderingStatus)status;
- (AVSampleBufferDisplayLayer)init;
- (AVSampleBufferVideoOutput)output;
- (BOOL)_disallowsVideoLayerDisplayCompositing;
- (BOOL)hasSufficientMediaDataForReliablePlaybackStart;
- (BOOL)isReadyForDisplay;
- (BOOL)isReadyForMoreMediaData;
- (BOOL)outputObscuredDueToInsufficientExternalProtection;
- (BOOL)overridesPreferredDynamicRangeForVideo;
- (BOOL)preventsAutomaticBackgroundingDuringVideoPlayback;
- (BOOL)preventsCapture;
- (BOOL)preventsDisplaySleepDuringVideoPlayback;
- (BOOL)requiresFlushToResumeDecoding;
- (BOOL)setRenderSynchronizer:(id)synchronizer error:(id *)error;
- (CGRect)videoRect;
- (CMTimebaseRef)controlTimebase;
- (CMTimebaseRef)timebase;
- (NSError)error;
- (__CVBuffer)copyDisplayedPixelBuffer;
- (id)_STSLabel;
- (id)_loggingDescription;
- (id)makeVideoRenderer;
- (id)videoPerformanceMetrics;
- (void)_setDisallowsVideoLayerDisplayCompositing:(BOOL)compositing;
- (void)_updateLayerTreeGeometryWithVideoGravity:(id)gravity presentationSize:(CGSize)size videoGravityShouldTriggerAnimation:(BOOL)animation;
- (void)_updatePresentationSize:(CGSize)size;
- (void)copyFigSampleBufferAudioRenderer:(OpaqueFigSampleBufferAudioRenderer *)renderer;
- (void)dealloc;
- (void)enqueueSampleBuffer:(CMSampleBufferRef)sampleBuffer;
- (void)expectMinimumUpcomingSampleBufferPresentationTime:(id *)time;
- (void)expectMonotonicallyIncreasingUpcomingSampleBufferPresentationTimes;
- (void)flush;
- (void)flushAndRemoveImage;
- (void)flushWithRemovalOfDisplayedImage:(BOOL)image completionHandler:(id)handler;
- (void)layerDidBecomeVisible:(BOOL)visible;
- (void)layoutSublayers;
- (void)postVideoRectDidChangeNotification;
- (void)prerollDecodeWithCompletionHandler:(id)handler;
- (void)requestMediaDataWhenReadyOnQueue:(dispatch_queue_t)queue usingBlock:(void *)block;
- (void)resetUpcomingSampleBufferPresentationTimeExpectations;
- (void)setBounds:(CGRect)bounds;
- (void)setControlTimebase:(CMTimebaseRef)controlTimebase;
- (void)setOutput:(id)output;
- (void)setOverridesPreferredDynamicRangeForVideo:(BOOL)video;
- (void)setPreferredDynamicRange:(id)range;
- (void)setPreventsAutomaticBackgroundingDuringVideoPlayback:(BOOL)preventsAutomaticBackgroundingDuringVideoPlayback;
- (void)setPreventsCapture:(BOOL)preventsCapture;
- (void)setPreventsDisplaySleepDuringVideoPlayback:(BOOL)preventsDisplaySleepDuringVideoPlayback;
- (void)setSTSLabel:(id)label;
- (void)setToneMapToStandardDynamicRange:(BOOL)range;
- (void)setVideoGravity:(AVLayerVideoGravity)videoGravity;
- (void)stopRequestingMediaData;
@end

@implementation AVSampleBufferDisplayLayer

- (void)_updateLayerTreeGeometryWithVideoGravity:(id)gravity presentationSize:(CGSize)size videoGravityShouldTriggerAnimation:(BOOL)animation
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __123__AVSampleBufferDisplayLayer__updateLayerTreeGeometryWithVideoGravity_presentationSize_videoGravityShouldTriggerAnimation___block_invoke;
  v6[3] = &unk_1E7460D08;
  sizeCopy = size;
  v6[4] = self;
  v6[5] = gravity;
  animationCopy = animation;
  AVSerializeOnQueueAsyncIfNecessary(MEMORY[0x1E69E96A0], v6);
  [(AVSampleBufferDisplayLayer *)self postVideoRectDidChangeNotification];
}

uint64_t __123__AVSampleBufferDisplayLayer__updateLayerTreeGeometryWithVideoGravity_presentationSize_videoGravityShouldTriggerAnimation___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [AVSampleBufferDisplayLayer _destRectForAspectRatio:*(a1 + 48), *(a1 + 56)];
  v3 = v2;
  v5 = v4;
  [*(a1 + 32) bounds];
  v8 = v7;
  v10 = v9;
  v11 = v6;
  v13 = v12;
  v14 = (v6 - v3) * 0.5;
  v15 = (v12 - v5) * 0.5;
  v16 = v12 == *(MEMORY[0x1E695F060] + 8) && v6 == *MEMORY[0x1E695F060];
  [*(*(a1 + 32) + 48) setHidden:v16];
  memset(&v41, 0, sizeof(v41));
  CATransform3DMakeTranslation(&v41, v14, v15, 0.0);
  memset(&v40, 0, sizeof(v40));
  AVLayerTransformForPlacement(*(a1 + 40), 1, &v40, v3, v5, v11, v13);
  memset(&v39, 0, sizeof(v39));
  a = v41;
  b = v40;
  CATransform3DConcat(&v39, &a, &b);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v17 = [*(a1 + 32) animationKeys];
  v18 = [v17 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = *v34;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v34 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v23 = [*(a1 + 32) animationForKey:*(*(&v33 + 1) + 8 * i)];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v23 = 0;
        }

        if ([objc_msgSend(v23 "keyPath")])
        {
          v20 = [v23 copy];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v19);
  }

  else
  {
    v20 = 0;
  }

  [v20 duration];
  if (v24 > 0.0 || *(a1 + 64) == 1)
  {
    [v20 duration];
    v26 = v25;
    v27 = [v20 timingFunction];
    v28 = [MEMORY[0x1E6979318] animationWithKeyPath:@"sublayerTransform"];
    [v28 setDuration:v26];
    [v28 setTimingFunction:v27];
    [*(*(a1 + 32) + 48) addAnimation:v28 forKey:@"sublayerTransform"];
    v29 = [MEMORY[0x1E6979318] animationWithKeyPath:@"position"];
    [v29 setDuration:v26];
    [v29 setTimingFunction:v27];
    [*(*(a1 + 32) + 48) addAnimation:v29 forKey:@"position"];
    v30 = [MEMORY[0x1E6979318] animationWithKeyPath:@"bounds"];
    [v30 setDuration:v26];
    [v30 setTimingFunction:v27];
    [*(*(a1 + 32) + 48) addAnimation:v30 forKey:@"bounds"];
  }

  v31 = *(*(a1 + 32) + 48);
  a = v39;
  [v31 setSublayerTransform:&a];
  [*(*(a1 + 32) + 48) setPosition:{v8 + v11 * 0.5, v10 + v13 * 0.5}];
  [*(*(a1 + 32) + 48) setBounds:{v8, v10, v11, v13}];
  return [MEMORY[0x1E6979518] commit];
}

- (void)_updatePresentationSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__34;
  v13 = __Block_byref_object_dispose__34;
  v14 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__AVSampleBufferDisplayLayer__updatePresentationSize___block_invoke;
  block[3] = &unk_1E74659C0;
  sizeCopy = size;
  block[4] = self;
  block[5] = &v15;
  block[6] = &v9;
  dispatch_sync(serialQueue, block);
  if (*(v16 + 24) == 1)
  {
    [(AVSampleBufferDisplayLayer *)self _updateLayerTreeGeometryWithVideoGravity:v10[5] presentationSize:0 videoGravityShouldTriggerAnimation:width, height];
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v15, 8);
}

uint64_t __54__AVSampleBufferDisplayLayer__updatePresentationSize___block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 64) != *(result + 56) || *(*(result + 32) + 72) != *(result + 64))
  {
    v2 = result;
    *(*(*(result + 40) + 8) + 24) = 1;
    *(*(result + 32) + 64) = *(result + 56);
    result = [*(*(result + 32) + 56) copy];
    *(*(*(v2 + 48) + 8) + 40) = result;
  }

  return result;
}

+ (CGRect)_destRectForAspectRatio:(CGSize)ratio
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  if (ratio.width > 0.0 && ratio.height > 0.0)
  {
    v10.size.width = 1600.0;
    v10.origin.x = 0.0;
    v10.origin.y = 0.0;
    v10.size.height = 1600.0;
    *(&v5 - 2) = AVMakeRectWithAspectRatioInsideRect(ratio, v10);
  }

  v7 = v3;
  v8 = v4;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (id)_loggingDescription
{
  loggingIdentifier = self->_loggingIdentifier;
  if (loggingIdentifier)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@|%p>", -[AVLoggingIdentifier name](loggingIdentifier, "name"), self];
  }

  else
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%p>", self, v5];
  }
}

- (AVSampleBufferDisplayLayer)init
{
  v9.receiver = self;
  v9.super_class = AVSampleBufferDisplayLayer;
  v10 = [[AVTelemetryInterval alloc] initAndStartWith:48];
  v2 = [(AVSampleBufferDisplayLayer *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2->_serialQueue = dispatch_queue_create("AVSampleBufferDisplayLayerQueue", v3);
    v4 = objc_alloc_init(AVSampleBufferDisplayLayerContentLayer);
    v2->_contentLayer = &v4->super;
    [(AVSampleBufferDisplayLayer *)v2 addSublayer:v4];
    [(CALayer *)v2->_contentLayer setEdgeAntialiasingMask:0];
    [(AVSampleBufferDisplayLayer *)v2 setVideoGravity:@"AVLayerVideoGravityResizeAspect"];
    v2->_presentationSize = *MEMORY[0x1E695F060];
    v5 = *(MEMORY[0x1E695F058] + 16);
    v2->_bounds.origin = *MEMORY[0x1E695F058];
    v2->_bounds.size = v5;
    [(CALayer *)v2->_contentLayer setHidden:1];
    [(CALayer *)v2->_contentLayer setMasksToBounds:1];
    makeVideoRenderer = [(AVSampleBufferDisplayLayer *)v2 makeVideoRenderer];
    v2->_sampleBufferVideoRenderer = makeVideoRenderer;
    v2->_loggingIdentifier = [-[AVSampleBufferVideoRenderer _commonLoggingIdentifier](makeVideoRenderer "_commonLoggingIdentifier")];
    sampleBufferVideoRenderer = v2->_sampleBufferVideoRenderer;
    if (!sampleBufferVideoRenderer)
    {

      v2 = 0;
      goto LABEL_6;
    }

    [(AVSampleBufferVideoRenderer *)sampleBufferVideoRenderer addSampleBufferDisplayLayer:v2];
    [(AVSampleBufferDisplayLayer *)v2 setPreferredDynamicRange:*MEMORY[0x1E69792A0]];
    [(AVSampleBufferDisplayLayer *)v2 resetUpcomingSampleBufferPresentationTimeExpectations];
  }

  FigObjectRecordMethodCallsForObject();
LABEL_6:
  AVTelemetryIntervalEnd(&v10);
  return v2;
}

- (void)dealloc
{
  FigObjectRecordMethodCallsForObject();

  [(AVSampleBufferVideoRenderer *)self->_sampleBufferVideoRenderer removeDisplayLayer];
  serialQueue = self->_serialQueue;
  if (serialQueue)
  {
    dispatch_release(serialQueue);
    self->_serialQueue = 0;
  }

  v4.receiver = self;
  v4.super_class = AVSampleBufferDisplayLayer;
  [(AVSampleBufferDisplayLayer *)&v4 dealloc];
}

- (void)setControlTimebase:(CMTimebaseRef)controlTimebase
{
  v5 = [[AVTelemetryInterval alloc] initAndStartWith:49];
  [(AVSampleBufferVideoRenderer *)[(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer] setControlTimebase:controlTimebase];
  AVTelemetryIntervalEnd(&v5);
}

- (CMTimebaseRef)controlTimebase
{
  _sampleBufferVideoRenderer = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  return [(AVSampleBufferVideoRenderer *)_sampleBufferVideoRenderer controlTimebase];
}

- (void)setVideoGravity:(AVLayerVideoGravity)videoGravity
{
  v16 = [[AVTelemetryInterval alloc] initAndStartWith:51];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3010000000;
  v10 = &unk_19626E495;
  v11 = *MEMORY[0x1E695F060];
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__AVSampleBufferDisplayLayer_setVideoGravity___block_invoke;
  block[3] = &unk_1E7460F08;
  block[4] = self;
  block[5] = videoGravity;
  block[6] = &v7;
  block[7] = &v12;
  dispatch_sync(serialQueue, block);
  if (*(v13 + 24) == 1)
  {
    -[AVSampleBufferDisplayLayer _updateLayerTreeGeometryWithVideoGravity:presentationSize:videoGravityShouldTriggerAnimation:](self, "_updateLayerTreeGeometryWithVideoGravity:presentationSize:videoGravityShouldTriggerAnimation:", videoGravity, [MEMORY[0x1E6979518] disableActions] ^ 1, v8[4], v8[5]);
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v12, 8);
  AVTelemetryIntervalEnd(&v16);
}

__n128 __46__AVSampleBufferDisplayLayer_setVideoGravity___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 56);
  if ((v3 == 0) != (v2 != 0))
  {
    if ([v3 isEqualToString:?])
    {
      return result;
    }

    v3 = *(*(a1 + 32) + 56);
  }

  *(*(a1 + 32) + 56) = [*(a1 + 40) copy];
  result = *(*(a1 + 32) + 64);
  *(*(*(a1 + 48) + 8) + 32) = result;
  *(*(*(a1 + 56) + 8) + 24) = 1;
  return result;
}

- (AVLayerVideoGravity)videoGravity
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__34;
  v10 = __Block_byref_object_dispose__34;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__AVSampleBufferDisplayLayer_videoGravity__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __42__AVSampleBufferDisplayLayer_videoGravity__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 56) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)isReadyForDisplay
{
  _sampleBufferVideoRenderer = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  return [(AVSampleBufferVideoRenderer *)_sampleBufferVideoRenderer isReadyForDisplay];
}

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = AVSampleBufferDisplayLayer;
  [(AVSampleBufferDisplayLayer *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(AVSampleBufferDisplayLayer *)self postVideoRectDidChangeNotification];
}

- (void)layoutSublayers
{
  v17.receiver = self;
  v17.super_class = AVSampleBufferDisplayLayer;
  v18 = [[AVTelemetryInterval alloc] initAndStartWith:52];
  [(AVSampleBufferDisplayLayer *)&v17 layoutSublayers];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__34;
  v15 = __Block_byref_object_dispose__34;
  v16 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3010000000;
  v9 = &unk_19626E495;
  serialQueue = self->_serialQueue;
  v10 = *MEMORY[0x1E695F060];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__AVSampleBufferDisplayLayer_layoutSublayers__block_invoke;
  v5[3] = &unk_1E74627B8;
  v5[4] = self;
  v5[5] = &v11;
  v5[6] = &v6;
  dispatch_sync(serialQueue, v5);
  [(AVSampleBufferDisplayLayer *)self _updateLayerTreeGeometryWithVideoGravity:v12[5] presentationSize:0 videoGravityShouldTriggerAnimation:v7[4], v7[5]];

  STSLayer = self->_STSLayer;
  [(AVSampleBufferDisplayLayer *)self bounds];
  [(CALayer *)STSLayer setFrame:?];
  [(AVSampleBufferVideoRenderer *)[(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer] setVideoLayerGeometryFlipped:[(AVSampleBufferDisplayLayer *)self contentsAreFlipped]^ 1];
  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v11, 8);
  AVTelemetryIntervalEnd(&v18);
}

__n128 __45__AVSampleBufferDisplayLayer_layoutSublayers__block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 40) = [*(a1[4] + 56) copy];
  result = *(a1[4] + 64);
  *(*(a1[6] + 8) + 32) = result;
  return result;
}

- (void)layerDidBecomeVisible:(BOOL)visible
{
  visibleCopy = visible;
  v5.receiver = self;
  v5.super_class = AVSampleBufferDisplayLayer;
  [(AVSampleBufferDisplayLayer *)&v5 layerDidBecomeVisible:?];
  FigObjectRecordMethodCallsForObject();
  [(AVSampleBufferVideoRenderer *)[(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer] setDisplayLayerVisibility:visibleCopy];
}

- (CGRect)videoRect
{
  v36 = [[AVTelemetryInterval alloc] initAndStartWith:53];
  [(AVSampleBufferDisplayLayer *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3052000000;
  v33 = __Block_byref_object_copy__34;
  v34 = __Block_byref_object_dispose__34;
  v35 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3010000000;
  v28 = &unk_19626E495;
  serialQueue = self->_serialQueue;
  v29 = *MEMORY[0x1E695F060];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __39__AVSampleBufferDisplayLayer_videoRect__block_invoke;
  v24[3] = &unk_1E74627B8;
  v24[4] = self;
  v24[5] = &v25;
  v24[6] = &v30;
  dispatch_sync(serialQueue, v24);
  AVLayerVideoRectForPlayerLayerBoundsPresentationSizeAndVideoGravity(v31[5], v4, v6, v8, v10, v26[4], v26[5]);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v30, 8);
  AVTelemetryIntervalEnd(&v36);
  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

uint64_t __39__AVSampleBufferDisplayLayer_videoRect__block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 32) = *(a1[4] + 64);
  result = [*(a1[4] + 56) copy];
  *(*(a1[6] + 8) + 40) = result;
  return result;
}

- (void)postVideoRectDidChangeNotification
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

  [defaultCenter postNotificationName:@"AVSampleBufferDisplayLayerVideoRectDidChangeNotification" object:self];
}

- (BOOL)setRenderSynchronizer:(id)synchronizer error:(id *)error
{
  _sampleBufferVideoRenderer = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  return [(AVSampleBufferVideoRenderer *)_sampleBufferVideoRenderer setRenderSynchronizer:synchronizer error:error];
}

- (void)copyFigSampleBufferAudioRenderer:(OpaqueFigSampleBufferAudioRenderer *)renderer
{
  if (renderer)
  {
    *renderer = 0;
  }
}

- (void)setSTSLabel:(id)label
{
  if ([(AVSampleBufferDisplayLayer *)self _STSLabel]!= label)
  {
    [(AVSampleBufferVideoRenderer *)[(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer] setSTSLabel:label];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __42__AVSampleBufferDisplayLayer_setSTSLabel___block_invoke;
    v5[3] = &unk_1E7460DF0;
    v5[4] = label;
    v5[5] = self;
    AVSerializeOnQueueAsyncIfNecessary(MEMORY[0x1E69E96A0], v5);
  }
}

uint64_t __42__AVSampleBufferDisplayLayer_setSTSLabel___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 152);
  if (v2)
  {
    if (!v3)
    {
      *(*(a1 + 40) + 152) = objc_alloc_init(MEMORY[0x1E6979398]);
      v4 = *(a1 + 40);
      v5 = v4[19];
      [v4 bounds];
      [v5 setFrame:?];
      [*(a1 + 40) addSublayer:*(*(a1 + 40) + 152)];
      v2 = *(a1 + 32);
      v3 = *(*(a1 + 40) + 152);
    }

    [v3 setValue:v2 forKeyPath:@"separatedOptions.STSLabel"];
  }

  else if (v3)
  {
    [v3 removeFromSuperlayer];

    *(*(a1 + 40) + 152) = 0;
  }

  v6 = MEMORY[0x1E6979518];

  return [v6 commit];
}

- (id)_STSLabel
{
  _sampleBufferVideoRenderer = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  return [(AVSampleBufferVideoRenderer *)_sampleBufferVideoRenderer _STSLabel];
}

- (void)setToneMapToStandardDynamicRange:(BOOL)range
{
  rangeCopy = range;
  [(AVSampleBufferVideoRenderer *)[(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer] setToneMapToStandardDynamicRange:range];
  v5.receiver = self;
  v5.super_class = AVSampleBufferDisplayLayer;
  [(AVSampleBufferDisplayLayer *)&v5 setToneMapToStandardDynamicRange:rangeCopy];
}

- (id)makeVideoRenderer
{
  v2 = objc_alloc_init(AVSampleBufferVideoRenderer);

  return v2;
}

- (BOOL)isReadyForMoreMediaData
{
  _sampleBufferVideoRenderer = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  return [(AVSampleBufferVideoRenderer *)_sampleBufferVideoRenderer isReadyForMoreMediaData];
}

- (AVQueuedSampleBufferRenderingStatus)status
{
  _sampleBufferVideoRenderer = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  return [(AVSampleBufferVideoRenderer *)_sampleBufferVideoRenderer status];
}

- (NSError)error
{
  _sampleBufferVideoRenderer = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  return [(AVSampleBufferVideoRenderer *)_sampleBufferVideoRenderer error];
}

- (CMTimebaseRef)timebase
{
  _sampleBufferVideoRenderer = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  return [(AVSampleBufferVideoRenderer *)_sampleBufferVideoRenderer timebase];
}

- (void)enqueueSampleBuffer:(CMSampleBufferRef)sampleBuffer
{
  FormatDescription = CMSampleBufferGetFormatDescription(sampleBuffer);
  if (FormatDescription)
  {
    PresentationDimensions = CMVideoFormatDescriptionGetPresentationDimensions(FormatDescription, 1u, 1u);
    [(AVSampleBufferDisplayLayer *)self _updatePresentationSize:0, 0, *&PresentationDimensions.width, *&PresentationDimensions.height];
    [AVSampleBufferDisplayLayer _destRectForAspectRatio:PresentationDimensions.width, PresentationDimensions.height];
    v11[4] = v7;
    v11[5] = v8;
    v11[6] = v9;
    v11[7] = v10;
    [(AVSampleBufferVideoRenderer *)[(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer] enqueueSampleBuffer:sampleBuffer bufferEnqueueingInfo:v11];
  }
}

- (void)flush
{
  _sampleBufferVideoRenderer = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  [(AVSampleBufferVideoRenderer *)_sampleBufferVideoRenderer flush];
}

- (void)flushAndRemoveImage
{
  _sampleBufferVideoRenderer = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  [(AVSampleBufferVideoRenderer *)_sampleBufferVideoRenderer flushAndRemoveImage];
}

- (void)flushWithRemovalOfDisplayedImage:(BOOL)image completionHandler:(id)handler
{
  imageCopy = image;
  _sampleBufferVideoRenderer = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  [(AVSampleBufferVideoRenderer *)_sampleBufferVideoRenderer flushWithRemovalOfDisplayedImage:imageCopy completionHandler:handler];
}

- (void)prerollDecodeWithCompletionHandler:(id)handler
{
  _sampleBufferVideoRenderer = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  [(AVSampleBufferVideoRenderer *)_sampleBufferVideoRenderer prerollDecodeWithCompletionHandler:handler];
}

- (void)requestMediaDataWhenReadyOnQueue:(dispatch_queue_t)queue usingBlock:(void *)block
{
  _sampleBufferVideoRenderer = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  [(AVSampleBufferVideoRenderer *)_sampleBufferVideoRenderer requestMediaDataWhenReadyOnQueue:queue usingBlock:block];
}

- (void)stopRequestingMediaData
{
  _sampleBufferVideoRenderer = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  [(AVSampleBufferVideoRenderer *)_sampleBufferVideoRenderer stopRequestingMediaData];
}

- (BOOL)hasSufficientMediaDataForReliablePlaybackStart
{
  _sampleBufferVideoRenderer = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  return [(AVSampleBufferVideoRenderer *)_sampleBufferVideoRenderer hasSufficientMediaDataForReliablePlaybackStart];
}

- (BOOL)requiresFlushToResumeDecoding
{
  _sampleBufferVideoRenderer = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  return [(AVSampleBufferVideoRenderer *)_sampleBufferVideoRenderer requiresFlushToResumeDecoding];
}

- (id)videoPerformanceMetrics
{
  _sampleBufferVideoRenderer = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  return [(AVSampleBufferVideoRenderer *)_sampleBufferVideoRenderer videoPerformanceMetrics];
}

- (BOOL)outputObscuredDueToInsufficientExternalProtection
{
  _sampleBufferVideoRenderer = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  return [(AVSampleBufferVideoRenderer *)_sampleBufferVideoRenderer outputObscuredDueToInsufficientExternalProtection];
}

- (void)setPreventsCapture:(BOOL)preventsCapture
{
  v3 = preventsCapture;
  _sampleBufferVideoRenderer = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  [(AVSampleBufferVideoRenderer *)_sampleBufferVideoRenderer setPreventsCapture:v3];
}

- (BOOL)preventsCapture
{
  v4 = [[AVTelemetryInterval alloc] initAndStartWith:50];
  LOBYTE(self) = [(AVSampleBufferVideoRenderer *)[(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer] preventsCapture];
  AVTelemetryIntervalEnd(&v4);
  return self;
}

- (void)setPreventsDisplaySleepDuringVideoPlayback:(BOOL)preventsDisplaySleepDuringVideoPlayback
{
  v3 = preventsDisplaySleepDuringVideoPlayback;
  v5 = [[AVTelemetryInterval alloc] initAndStartWith:54];
  [(AVSampleBufferVideoRenderer *)[(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer] setPreventsDisplaySleepDuringVideoPlayback:v3];
  AVTelemetryIntervalEnd(&v5);
}

- (BOOL)preventsDisplaySleepDuringVideoPlayback
{
  v4 = [[AVTelemetryInterval alloc] initAndStartWith:55];
  LOBYTE(self) = [(AVSampleBufferVideoRenderer *)[(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer] preventsDisplaySleepDuringVideoPlayback];
  AVTelemetryIntervalEnd(&v4);
  return self;
}

- (void)setPreventsAutomaticBackgroundingDuringVideoPlayback:(BOOL)preventsAutomaticBackgroundingDuringVideoPlayback
{
  v3 = preventsAutomaticBackgroundingDuringVideoPlayback;
  v5 = [[AVTelemetryInterval alloc] initAndStartWith:56];
  [(AVSampleBufferVideoRenderer *)[(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer] setPreventsAutomaticBackgroundingDuringVideoPlayback:v3];
  AVTelemetryIntervalEnd(&v5);
}

- (BOOL)preventsAutomaticBackgroundingDuringVideoPlayback
{
  v4 = [[AVTelemetryInterval alloc] initAndStartWith:57];
  LOBYTE(self) = [(AVSampleBufferVideoRenderer *)[(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer] preventsAutomaticBackgroundingDuringVideoPlayback];
  AVTelemetryIntervalEnd(&v4);
  return self;
}

- (void)_setDisallowsVideoLayerDisplayCompositing:(BOOL)compositing
{
  compositingCopy = compositing;
  _sampleBufferVideoRenderer = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  [(AVSampleBufferVideoRenderer *)_sampleBufferVideoRenderer _setDisallowsVideoLayerDisplayCompositing:compositingCopy];
}

- (BOOL)_disallowsVideoLayerDisplayCompositing
{
  _sampleBufferVideoRenderer = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  return [(AVSampleBufferVideoRenderer *)_sampleBufferVideoRenderer _disallowsVideoLayerDisplayCompositing];
}

- (void)expectMinimumUpcomingSampleBufferPresentationTime:(id *)time
{
  _sampleBufferVideoRenderer = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];
  v5 = *time;
  [(AVSampleBufferVideoRenderer *)_sampleBufferVideoRenderer expectMinimumUpcomingSampleBufferPresentationTime:&v5];
}

- (void)expectMonotonicallyIncreasingUpcomingSampleBufferPresentationTimes
{
  _sampleBufferVideoRenderer = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  [(AVSampleBufferVideoRenderer *)_sampleBufferVideoRenderer expectMonotonicallyIncreasingUpcomingSampleBufferPresentationTimes];
}

- (void)resetUpcomingSampleBufferPresentationTimeExpectations
{
  _sampleBufferVideoRenderer = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  [(AVSampleBufferVideoRenderer *)_sampleBufferVideoRenderer resetUpcomingSampleBufferPresentationTimeExpectations];
}

- (AVSampleBufferVideoOutput)output
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__34;
  v12 = __Block_byref_object_dispose__34;
  v13 = 0;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__AVSampleBufferDisplayLayer_AVSampleBufferDisplayLayerOutput__output__block_invoke;
  v7[3] = &unk_1E7460E68;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(serialQueue, v7);
  outputs = [(AVSampleBufferVideoRenderer *)[(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer] outputs];
  if ([(NSArray *)outputs containsObject:v9[5]])
  {
    v5 = v9[5];
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

- (void)setOutput:(id)output
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__34;
  serialQueue = self->_serialQueue;
  v13 = __Block_byref_object_dispose__34;
  v14 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__AVSampleBufferDisplayLayer_AVSampleBufferDisplayLayerOutput__setOutput___block_invoke;
  block[3] = &unk_1E74658A8;
  block[5] = self;
  block[6] = &v9;
  block[4] = output;
  dispatch_sync(serialQueue, block);
  v6 = v10[5];
  if (v6 != output)
  {
    _sampleBufferVideoRenderer = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];
    [(AVSampleBufferVideoRenderer *)_sampleBufferVideoRenderer removeOutput:v10[5]];
    [(AVSampleBufferVideoRenderer *)_sampleBufferVideoRenderer addOutput:output];
    v6 = v10[5];
  }

  _Block_object_dispose(&v9, 8);
}

void __74__AVSampleBufferDisplayLayer_AVSampleBufferDisplayLayerOutput__setOutput___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(*(*(a1 + 48) + 8) + 40) = *(*(a1 + 40) + 128);

  *(*(a1 + 40) + 128) = *(a1 + 32);
}

- (void)setPreferredDynamicRange:(id)range
{
  overridesPreferredDynamicRangeForVideo = [(AVSampleBufferDisplayLayer *)self overridesPreferredDynamicRangeForVideo];
  sampleBufferVideoRenderer = self->_sampleBufferVideoRenderer;
  rangeCopy = range;
  if (overridesPreferredDynamicRangeForVideo)
  {
    rangeCopy = [(AVSampleBufferDisplayLayer *)self _preferredDynamicRangeForPiP];
  }

  [(AVSampleBufferVideoRenderer *)sampleBufferVideoRenderer setPreferredDynamicRange:rangeCopy];
  v8.receiver = self;
  v8.super_class = AVSampleBufferDisplayLayer;
  [(AVSampleBufferDisplayLayer *)&v8 setPreferredDynamicRange:range];
}

- (void)setOverridesPreferredDynamicRangeForVideo:(BOOL)video
{
  if (video)
  {
    [(AVSampleBufferVideoRenderer *)self->_sampleBufferVideoRenderer setPreferredDynamicRange:[(AVSampleBufferDisplayLayer *)self _preferredDynamicRangeForPiP]];
  }

  serialQueue = self->_serialQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __106__AVSampleBufferDisplayLayer_AVSampleBufferDisplayLayerOutput__setOverridesPreferredDynamicRangeForVideo___block_invoke;
  v6[3] = &unk_1E7460E40;
  v6[4] = self;
  videoCopy = video;
  dispatch_sync(serialQueue, v6);
  if (!video)
  {
    [(AVSampleBufferVideoRenderer *)self->_sampleBufferVideoRenderer setPreferredDynamicRange:[(AVSampleBufferDisplayLayer *)self preferredDynamicRange]];
  }
}

- (BOOL)overridesPreferredDynamicRangeForVideo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __102__AVSampleBufferDisplayLayer_AVSampleBufferDisplayLayerOutput__overridesPreferredDynamicRangeForVideo__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (__CVBuffer)copyDisplayedPixelBuffer
{
  _sampleBufferVideoRenderer = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  return [(AVSampleBufferVideoRenderer *)_sampleBufferVideoRenderer copyDisplayedPixelBuffer];
}

@end