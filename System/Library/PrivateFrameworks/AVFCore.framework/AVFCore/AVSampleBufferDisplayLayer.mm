@interface AVSampleBufferDisplayLayer
+ (CGRect)_destRectForAspectRatio:(CGSize)a3;
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
- (BOOL)setRenderSynchronizer:(id)a3 error:(id *)a4;
- (CGRect)videoRect;
- (CMTimebaseRef)controlTimebase;
- (CMTimebaseRef)timebase;
- (NSError)error;
- (__CVBuffer)copyDisplayedPixelBuffer;
- (id)_STSLabel;
- (id)_loggingDescription;
- (id)makeVideoRenderer;
- (id)videoPerformanceMetrics;
- (void)_setDisallowsVideoLayerDisplayCompositing:(BOOL)a3;
- (void)_updateLayerTreeGeometryWithVideoGravity:(id)a3 presentationSize:(CGSize)a4 videoGravityShouldTriggerAnimation:(BOOL)a5;
- (void)_updatePresentationSize:(CGSize)a3;
- (void)copyFigSampleBufferAudioRenderer:(OpaqueFigSampleBufferAudioRenderer *)a3;
- (void)dealloc;
- (void)enqueueSampleBuffer:(CMSampleBufferRef)sampleBuffer;
- (void)expectMinimumUpcomingSampleBufferPresentationTime:(id *)a3;
- (void)expectMonotonicallyIncreasingUpcomingSampleBufferPresentationTimes;
- (void)flush;
- (void)flushAndRemoveImage;
- (void)flushWithRemovalOfDisplayedImage:(BOOL)a3 completionHandler:(id)a4;
- (void)layerDidBecomeVisible:(BOOL)a3;
- (void)layoutSublayers;
- (void)postVideoRectDidChangeNotification;
- (void)prerollDecodeWithCompletionHandler:(id)a3;
- (void)requestMediaDataWhenReadyOnQueue:(dispatch_queue_t)queue usingBlock:(void *)block;
- (void)resetUpcomingSampleBufferPresentationTimeExpectations;
- (void)setBounds:(CGRect)a3;
- (void)setControlTimebase:(CMTimebaseRef)controlTimebase;
- (void)setOutput:(id)a3;
- (void)setOverridesPreferredDynamicRangeForVideo:(BOOL)a3;
- (void)setPreferredDynamicRange:(id)a3;
- (void)setPreventsAutomaticBackgroundingDuringVideoPlayback:(BOOL)preventsAutomaticBackgroundingDuringVideoPlayback;
- (void)setPreventsCapture:(BOOL)preventsCapture;
- (void)setPreventsDisplaySleepDuringVideoPlayback:(BOOL)preventsDisplaySleepDuringVideoPlayback;
- (void)setSTSLabel:(id)a3;
- (void)setToneMapToStandardDynamicRange:(BOOL)a3;
- (void)setVideoGravity:(AVLayerVideoGravity)videoGravity;
- (void)stopRequestingMediaData;
@end

@implementation AVSampleBufferDisplayLayer

- (void)_updateLayerTreeGeometryWithVideoGravity:(id)a3 presentationSize:(CGSize)a4 videoGravityShouldTriggerAnimation:(BOOL)a5
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __123__AVSampleBufferDisplayLayer__updateLayerTreeGeometryWithVideoGravity_presentationSize_videoGravityShouldTriggerAnimation___block_invoke;
  v6[3] = &unk_1E7460D08;
  v7 = a4;
  v6[4] = self;
  v6[5] = a3;
  v8 = a5;
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

- (void)_updatePresentationSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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
  v8 = a3;
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

+ (CGRect)_destRectForAspectRatio:(CGSize)a3
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  if (a3.width > 0.0 && a3.height > 0.0)
  {
    v10.size.width = 1600.0;
    v10.origin.x = 0.0;
    v10.origin.y = 0.0;
    v10.size.height = 1600.0;
    *(&v5 - 2) = AVMakeRectWithAspectRatioInsideRect(a3, v10);
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
    v6 = [(AVSampleBufferDisplayLayer *)v2 makeVideoRenderer];
    v2->_sampleBufferVideoRenderer = v6;
    v2->_loggingIdentifier = [-[AVSampleBufferVideoRenderer _commonLoggingIdentifier](v6 "_commonLoggingIdentifier")];
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
  v2 = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  return [(AVSampleBufferVideoRenderer *)v2 controlTimebase];
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
  v2 = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  return [(AVSampleBufferVideoRenderer *)v2 isReadyForDisplay];
}

- (void)setBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = AVSampleBufferDisplayLayer;
  [(AVSampleBufferDisplayLayer *)&v4 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)layerDidBecomeVisible:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = AVSampleBufferDisplayLayer;
  [(AVSampleBufferDisplayLayer *)&v5 layerDidBecomeVisible:?];
  FigObjectRecordMethodCallsForObject();
  [(AVSampleBufferVideoRenderer *)[(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer] setDisplayLayerVisibility:v3];
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];

  [v3 postNotificationName:@"AVSampleBufferDisplayLayerVideoRectDidChangeNotification" object:self];
}

- (BOOL)setRenderSynchronizer:(id)a3 error:(id *)a4
{
  v6 = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  return [(AVSampleBufferVideoRenderer *)v6 setRenderSynchronizer:a3 error:a4];
}

- (void)copyFigSampleBufferAudioRenderer:(OpaqueFigSampleBufferAudioRenderer *)a3
{
  if (a3)
  {
    *a3 = 0;
  }
}

- (void)setSTSLabel:(id)a3
{
  if ([(AVSampleBufferDisplayLayer *)self _STSLabel]!= a3)
  {
    [(AVSampleBufferVideoRenderer *)[(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer] setSTSLabel:a3];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __42__AVSampleBufferDisplayLayer_setSTSLabel___block_invoke;
    v5[3] = &unk_1E7460DF0;
    v5[4] = a3;
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
  v2 = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  return [(AVSampleBufferVideoRenderer *)v2 _STSLabel];
}

- (void)setToneMapToStandardDynamicRange:(BOOL)a3
{
  v3 = a3;
  [(AVSampleBufferVideoRenderer *)[(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer] setToneMapToStandardDynamicRange:a3];
  v5.receiver = self;
  v5.super_class = AVSampleBufferDisplayLayer;
  [(AVSampleBufferDisplayLayer *)&v5 setToneMapToStandardDynamicRange:v3];
}

- (id)makeVideoRenderer
{
  v2 = objc_alloc_init(AVSampleBufferVideoRenderer);

  return v2;
}

- (BOOL)isReadyForMoreMediaData
{
  v2 = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  return [(AVSampleBufferVideoRenderer *)v2 isReadyForMoreMediaData];
}

- (AVQueuedSampleBufferRenderingStatus)status
{
  v2 = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  return [(AVSampleBufferVideoRenderer *)v2 status];
}

- (NSError)error
{
  v2 = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  return [(AVSampleBufferVideoRenderer *)v2 error];
}

- (CMTimebaseRef)timebase
{
  v2 = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  return [(AVSampleBufferVideoRenderer *)v2 timebase];
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
  v2 = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  [(AVSampleBufferVideoRenderer *)v2 flush];
}

- (void)flushAndRemoveImage
{
  v2 = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  [(AVSampleBufferVideoRenderer *)v2 flushAndRemoveImage];
}

- (void)flushWithRemovalOfDisplayedImage:(BOOL)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  [(AVSampleBufferVideoRenderer *)v6 flushWithRemovalOfDisplayedImage:v5 completionHandler:a4];
}

- (void)prerollDecodeWithCompletionHandler:(id)a3
{
  v4 = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  [(AVSampleBufferVideoRenderer *)v4 prerollDecodeWithCompletionHandler:a3];
}

- (void)requestMediaDataWhenReadyOnQueue:(dispatch_queue_t)queue usingBlock:(void *)block
{
  v6 = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  [(AVSampleBufferVideoRenderer *)v6 requestMediaDataWhenReadyOnQueue:queue usingBlock:block];
}

- (void)stopRequestingMediaData
{
  v2 = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  [(AVSampleBufferVideoRenderer *)v2 stopRequestingMediaData];
}

- (BOOL)hasSufficientMediaDataForReliablePlaybackStart
{
  v2 = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  return [(AVSampleBufferVideoRenderer *)v2 hasSufficientMediaDataForReliablePlaybackStart];
}

- (BOOL)requiresFlushToResumeDecoding
{
  v2 = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  return [(AVSampleBufferVideoRenderer *)v2 requiresFlushToResumeDecoding];
}

- (id)videoPerformanceMetrics
{
  v2 = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  return [(AVSampleBufferVideoRenderer *)v2 videoPerformanceMetrics];
}

- (BOOL)outputObscuredDueToInsufficientExternalProtection
{
  v2 = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  return [(AVSampleBufferVideoRenderer *)v2 outputObscuredDueToInsufficientExternalProtection];
}

- (void)setPreventsCapture:(BOOL)preventsCapture
{
  v3 = preventsCapture;
  v4 = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  [(AVSampleBufferVideoRenderer *)v4 setPreventsCapture:v3];
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

- (void)_setDisallowsVideoLayerDisplayCompositing:(BOOL)a3
{
  v3 = a3;
  v4 = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  [(AVSampleBufferVideoRenderer *)v4 _setDisallowsVideoLayerDisplayCompositing:v3];
}

- (BOOL)_disallowsVideoLayerDisplayCompositing
{
  v2 = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  return [(AVSampleBufferVideoRenderer *)v2 _disallowsVideoLayerDisplayCompositing];
}

- (void)expectMinimumUpcomingSampleBufferPresentationTime:(id *)a3
{
  v4 = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];
  v5 = *a3;
  [(AVSampleBufferVideoRenderer *)v4 expectMinimumUpcomingSampleBufferPresentationTime:&v5];
}

- (void)expectMonotonicallyIncreasingUpcomingSampleBufferPresentationTimes
{
  v2 = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  [(AVSampleBufferVideoRenderer *)v2 expectMonotonicallyIncreasingUpcomingSampleBufferPresentationTimes];
}

- (void)resetUpcomingSampleBufferPresentationTimeExpectations
{
  v2 = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  [(AVSampleBufferVideoRenderer *)v2 resetUpcomingSampleBufferPresentationTimeExpectations];
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
  v4 = [(AVSampleBufferVideoRenderer *)[(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer] outputs];
  if ([(NSArray *)v4 containsObject:v9[5]])
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

- (void)setOutput:(id)a3
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
  block[4] = a3;
  dispatch_sync(serialQueue, block);
  v6 = v10[5];
  if (v6 != a3)
  {
    v7 = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];
    [(AVSampleBufferVideoRenderer *)v7 removeOutput:v10[5]];
    [(AVSampleBufferVideoRenderer *)v7 addOutput:a3];
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

- (void)setPreferredDynamicRange:(id)a3
{
  v5 = [(AVSampleBufferDisplayLayer *)self overridesPreferredDynamicRangeForVideo];
  sampleBufferVideoRenderer = self->_sampleBufferVideoRenderer;
  v7 = a3;
  if (v5)
  {
    v7 = [(AVSampleBufferDisplayLayer *)self _preferredDynamicRangeForPiP];
  }

  [(AVSampleBufferVideoRenderer *)sampleBufferVideoRenderer setPreferredDynamicRange:v7];
  v8.receiver = self;
  v8.super_class = AVSampleBufferDisplayLayer;
  [(AVSampleBufferDisplayLayer *)&v8 setPreferredDynamicRange:a3];
}

- (void)setOverridesPreferredDynamicRangeForVideo:(BOOL)a3
{
  if (a3)
  {
    [(AVSampleBufferVideoRenderer *)self->_sampleBufferVideoRenderer setPreferredDynamicRange:[(AVSampleBufferDisplayLayer *)self _preferredDynamicRangeForPiP]];
  }

  serialQueue = self->_serialQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __106__AVSampleBufferDisplayLayer_AVSampleBufferDisplayLayerOutput__setOverridesPreferredDynamicRangeForVideo___block_invoke;
  v6[3] = &unk_1E7460E40;
  v6[4] = self;
  v7 = a3;
  dispatch_sync(serialQueue, v6);
  if (!a3)
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
  v2 = [(AVSampleBufferDisplayLayer *)self _sampleBufferVideoRenderer];

  return [(AVSampleBufferVideoRenderer *)v2 copyDisplayedPixelBuffer];
}

@end