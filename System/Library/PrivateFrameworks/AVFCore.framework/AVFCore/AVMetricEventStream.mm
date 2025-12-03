@interface AVMetricEventStream
+ (id)contentKeyRequestEventWithFigMetricEvent:(OpaqueFigMetricEvent *)event;
+ (id)downloadSummaryEventWithFigMetricEvent:(OpaqueFigMetricEvent *)event;
+ (id)errorEventWithFigMetricEvent:(OpaqueFigMetricEvent *)event;
+ (id)eventStream;
+ (id)initialLikelyToKeepUpEventWithFigMetricEvent:(OpaqueFigMetricEvent *)event;
+ (id)likelyToKeepUpEventWithFigMetricEvent:(OpaqueFigMetricEvent *)event;
+ (id)mediaSegmentRequestEventWithFigMetricEvent:(OpaqueFigMetricEvent *)event;
+ (id)metricEventForFigMetricEvent:(OpaqueFigMetricEvent *)event;
+ (id)playbackSummaryEventWithFigMetricEvent:(OpaqueFigMetricEvent *)event;
+ (id)playlistRequestEventWithFigMetricEvent:(OpaqueFigMetricEvent *)event;
+ (id)rateChangeEventWithFigMetricEvent:(OpaqueFigMetricEvent *)event;
+ (id)resourceRequestEventWithFigMetricEvent:(OpaqueFigMetricEvent *)event;
+ (id)seekDidCompleteEventWithFigMetricEvent:(OpaqueFigMetricEvent *)event;
+ (id)seekEventWithFigMetricEvent:(OpaqueFigMetricEvent *)event;
+ (id)stallEventWithFigMetricEvent:(OpaqueFigMetricEvent *)event;
+ (id)variantChangeEventWithFigMetricEvent:(OpaqueFigMetricEvent *)event;
+ (id)variantChangeStartEventWithFigMetricEvent:(OpaqueFigMetricEvent *)event;
- (AVMetricEventStream)init;
- (BOOL)addPublisher:(id)publisher;
- (BOOL)setSubscriber:(id)subscriber queue:(id)queue;
- (int64_t)getFigMetricEventIDForAVMetricClass:(Class)class;
- (void)addPublisher:(id)publisher eventTimeline:(OpaqueFigMetricEventTimeline *)timeline;
- (void)dealloc;
- (void)didReceiveEventForMetricEventTimeline:(OpaqueFigMetricEventTimeline *)timeline event:(OpaqueFigMetricEvent *)event;
- (void)subscribeToAllMetricEvents;
- (void)subscribeToMetricEvent:(Class)event;
- (void)subscribeToMetricEvents:(id)events;
@end

@implementation AVMetricEventStream

- (AVMetricEventStream)init
{
  v5.receiver = self;
  v5.super_class = AVMetricEventStream;
  v2 = [(AVMetricEventStream *)&v5 init];
  if (v2)
  {
    v3 = *MEMORY[0x1E695E480];
    v2->_publisherByEventTimeline = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v2->_eventTimelines = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
    v2->_internalQueue = dispatch_queue_create("com.apple.avfoundation.avmetrics", 0);
    v2->_metricEventClassesToSubscribe = objc_alloc_init(MEMORY[0x1E695DF70]);
    v2->_weakSelf = [[AVWeakReference alloc] initWithReferencedObject:v2];
    FigMetricInstallAllPlaybackDeserializationHandlers();
  }

  return v2;
}

- (void)dealloc
{
  publisherByEventTimeline = self->_publisherByEventTimeline;
  if (publisherByEventTimeline)
  {
    CFRelease(publisherByEventTimeline);
  }

  eventTimelines = self->_eventTimelines;
  if (eventTimelines)
  {
    CFRelease(eventTimelines);
  }

  internalQueue = self->_internalQueue;
  if (internalQueue)
  {
    dispatch_release(internalQueue);
  }

  v6.receiver = self;
  v6.super_class = AVMetricEventStream;
  [(AVMetricEventStream *)&v6 dealloc];
}

+ (id)eventStream
{
  v2 = objc_alloc_init(AVMetricEventStream);

  return v2;
}

+ (id)errorEventWithFigMetricEvent:(OpaqueFigMetricEvent *)event
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v4)
  {
    v5 = v4(event);
  }

  else
  {
    v5 = 0;
  }

  v18 = 0uLL;
  v19 = 0;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v6)
  {
    v6(&v18, event);
  }

  else
  {
    v18 = *MEMORY[0x1E6960C70];
    v19 = *(MEMORY[0x1E6960C70] + 16);
  }

  v7 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v7)
  {
    v8 = v7(event);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = [AVMetricErrorEvent alloc];
  v11 = *(*(CMBaseObjectGetVTable() + 24) + 16);
  if (v11)
  {
    v12 = v11(event) != 0;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(*(CMBaseObjectGetVTable() + 24) + 8);
  if (v13)
  {
    v14 = v13(event);
  }

  else
  {
    v14 = 0;
  }

  v16 = v18;
  v17 = v19;
  return [(AVMetricErrorEvent *)v10 initWithDate:v5 mediaTime:&v16 sessionID:v9 didRecover:v12 error:v14];
}

+ (id)resourceRequestEventWithFigMetricEvent:(OpaqueFigMetricEvent *)event
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v4)
  {
    v37 = v4(event);
  }

  else
  {
    v37 = 0;
  }

  v40 = 0uLL;
  v41 = 0;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v5)
  {
    v5(&v40, event);
  }

  else
  {
    v40 = *MEMORY[0x1E6960C70];
    v41 = *(MEMORY[0x1E6960C70] + 16);
  }

  v6 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v6)
  {
    v7 = v6(event);
  }

  else
  {
    v7 = 0;
  }

  v36 = v7;
  v8 = *(*(CMBaseObjectGetVTable() + 32) + 8);
  if (v8)
  {
    v35 = v8(event);
  }

  else
  {
    v35 = 0;
  }

  v9 = *(*(CMBaseObjectGetVTable() + 32) + 16);
  if (v9)
  {
    v10 = v9(event);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(*(CMBaseObjectGetVTable() + 32) + 24);
  if (v11)
  {
    v12 = v11(event);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(*(CMBaseObjectGetVTable() + 32) + 32);
  if (v13)
  {
    v14 = v13(event);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(*(CMBaseObjectGetVTable() + 32) + 40);
  if (v15)
  {
    v16 = v15(event);
  }

  else
  {
    v16 = 0;
  }

  v17 = *(*(CMBaseObjectGetVTable() + 32) + 48);
  if (v17)
  {
    v18 = v17(event);
  }

  else
  {
    v18 = 0;
  }

  v19 = *(*(CMBaseObjectGetVTable() + 32) + 56);
  if (v19)
  {
    v20 = v19(event);
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v23 = *(*(CMBaseObjectGetVTable() + 32) + 64);
  if (v23)
  {
    v24 = v23(event) != 0;
  }

  else
  {
    v24 = 0;
  }

  v25 = *(*(CMBaseObjectGetVTable() + 32) + 72);
  if (v25 && v25(event))
  {
    v26 = [AVMetricErrorEvent alloc];
    v27 = *(*(CMBaseObjectGetVTable() + 32) + 72);
    if (v27)
    {
      v28 = v27(event);
    }

    else
    {
      v28 = 0;
    }

    v38 = v40;
    v39 = v41;
    v29 = [(AVMetricErrorEvent *)v26 initWithDate:v37 mediaTime:&v38 sessionID:v36 didRecover:1 error:v28];
  }

  else
  {
    v29 = 0;
  }

  v30 = *(*(CMBaseObjectGetVTable() + 32) + 80);
  if (v30)
  {
    v31 = v30(event);
  }

  else
  {
    v31 = 0;
  }

  v32 = [AVMetricMediaResourceRequestEvent alloc];
  v38 = v40;
  v39 = v41;
  LOBYTE(v34) = v24;
  return [(AVMetricMediaResourceRequestEvent *)v32 initWithDate:v37 mediaTime:&v38 sessionID:v36 url:v35 serverAddress:v10 requestStartTime:v12 requestEndTime:v14 responseStartTime:v16 responseEndTime:v18 byteRange:v20 readFromCache:v22 errorEvent:v34 networkTransactionMetrics:v29, v31];
}

+ (id)playlistRequestEventWithFigMetricEvent:(OpaqueFigMetricEvent *)event
{
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v5)
  {
    v6 = v5(event);
  }

  else
  {
    v6 = 0;
  }

  v23 = 0uLL;
  v24 = 0;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v7)
  {
    v7(&v23, event);
  }

  else
  {
    v23 = *MEMORY[0x1E6960C70];
    v24 = *(MEMORY[0x1E6960C70] + 16);
  }

  v8 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v8)
  {
    v9 = v8(event);
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = *(*(CMBaseObjectGetVTable() + 32) + 8);
  if (v11)
  {
    v12 = v11(event);
  }

  else
  {
    v12 = 0;
  }

  v13 = 1836415096;
  v14 = *(*(CMBaseObjectGetVTable() + 32) + 96);
  if (v14)
  {
    v13 = v14(event);
  }

  v15 = AVMediaTypeFromCMMediaType(v13);
  v16 = [self resourceRequestEventWithFigMetricEvent:event];
  v17 = [AVMetricHLSPlaylistRequestEvent alloc];
  v18 = *(*(CMBaseObjectGetVTable() + 32) + 88);
  if (v18)
  {
    v19 = v18(event) != 0;
  }

  else
  {
    v19 = 0;
  }

  v21 = v23;
  v22 = v24;
  return [(AVMetricHLSPlaylistRequestEvent *)v17 initWithDate:v6 mediaTime:&v21 sessionID:v10 url:v12 isMultivariantPlaylist:v19 mediaType:v15 mediaResourceRequestEvent:v16];
}

+ (id)mediaSegmentRequestEventWithFigMetricEvent:(OpaqueFigMetricEvent *)event
{
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v5)
  {
    v6 = v5(event);
  }

  else
  {
    v6 = 0;
  }

  v29 = 0uLL;
  v30 = 0;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v7)
  {
    v7(&v29, event);
  }

  else
  {
    v29 = *MEMORY[0x1E6960C70];
    v30 = *(MEMORY[0x1E6960C70] + 16);
  }

  v8 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v8)
  {
    v9 = v8(event);
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = *(*(CMBaseObjectGetVTable() + 32) + 128);
  if (v11)
  {
    v12 = v11(event);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(*(CMBaseObjectGetVTable() + 32) + 56);
  if (v13)
  {
    v14 = v13(event);
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = 1836415096;
  v18 = [self resourceRequestEventWithFigMetricEvent:event];
  v19 = *(*(CMBaseObjectGetVTable() + 32) + 96);
  if (v19)
  {
    v17 = v19(event);
  }

  v20 = AVMediaTypeFromCMMediaType(v17);
  v21 = *(*(CMBaseObjectGetVTable() + 32) + 136);
  v22 = 0.0;
  if (v21)
  {
    v22 = v21(event);
  }

  v23 = [AVMetricHLSMediaSegmentRequestEvent alloc];
  v24 = *(*(CMBaseObjectGetVTable() + 32) + 104);
  if (v24)
  {
    LOBYTE(v24) = v24(event) != 0;
  }

  v27 = v29;
  v28 = v30;
  LOBYTE(v26) = v24;
  return [(AVMetricHLSMediaSegmentRequestEvent *)v23 initWithDate:v6 mediaTime:&v27 sessionID:v10 indexFileURL:v12 byteRange:v14 isMapSegment:v16 mediaType:v22 segmentDuration:v26 mediaResourceRequestEvent:v20, v18];
}

+ (id)contentKeyRequestEventWithFigMetricEvent:(OpaqueFigMetricEvent *)event
{
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v5)
  {
    v6 = v5(event);
  }

  else
  {
    v6 = 0;
  }

  v25 = 0uLL;
  v26 = 0;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v7)
  {
    v7(&v25, event);
  }

  else
  {
    v25 = *MEMORY[0x1E6960C70];
    v26 = *(MEMORY[0x1E6960C70] + 16);
  }

  v8 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v8)
  {
    v9 = v8(event);
  }

  else
  {
    v9 = 0;
  }

  v10 = 1836415096;
  v11 = v9;
  v12 = [self resourceRequestEventWithFigMetricEvent:event];
  v13 = *(*(CMBaseObjectGetVTable() + 32) + 96);
  if (v13)
  {
    v10 = v13(event);
  }

  v14 = AVMediaTypeFromCMMediaType(v10);
  v15 = *(*(CMBaseObjectGetVTable() + 32) + 112);
  if (v15)
  {
    v15(event);
  }

  if (FigContentKeySpecifierGetKeySystem() == 1)
  {
    v16 = @"FairPlayStreaming";
  }

  else
  {
    v16 = @"ClearKeySystem";
    if (FigContentKeySpecifierGetKeySystem() != 2 && FigContentKeySpecifierGetKeySystem() == 3)
    {
      v16 = @"AuthorizationTokenSystem";
    }
  }

  v17 = [AVContentKeySpecifier alloc];
  v18 = [(AVContentKeySpecifier *)v17 initForKeySystem:v16 identifier:FigContentKeySpecifierGetIdentifier() options:MEMORY[0x1E695E0F8]];
  v19 = [AVMetricContentKeyRequestEvent alloc];
  v20 = *(*(CMBaseObjectGetVTable() + 32) + 120);
  if (v20)
  {
    v21 = v20(event) != 0;
  }

  else
  {
    v21 = 0;
  }

  v23 = v25;
  v24 = v26;
  return [(AVMetricContentKeyRequestEvent *)v19 initWithDate:v6 mediaTime:&v23 sessionID:v11 contentKeySpecifier:v18 mediaType:v14 isClientInitiated:v21 mediaResourceRequestEvent:v12];
}

+ (id)likelyToKeepUpEventWithFigMetricEvent:(OpaqueFigMetricEvent *)event
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v4)
  {
    v5 = v4(event);
  }

  else
  {
    v5 = 0;
  }

  v20 = 0uLL;
  v21 = 0;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v6)
  {
    v6(&v20, event);
  }

  else
  {
    v20 = *MEMORY[0x1E6960C70];
    v21 = *(MEMORY[0x1E6960C70] + 16);
  }

  v7 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v7)
  {
    v8 = v7(event);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = *(*(CMBaseObjectGetVTable() + 40) + 8);
  if (v10)
  {
    v11 = v10(event);
    if (v11)
    {
      v11 = [[AVAssetVariant alloc] initWithFigAlternate:v11];
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = [AVMetricPlayerItemLikelyToKeepUpEvent alloc];
  v13 = *(*(CMBaseObjectGetVTable() + 40) + 48);
  v14 = 0.0;
  if (v13)
  {
    v14 = v13(event);
  }

  v15 = *(*(CMBaseObjectGetVTable() + 40) + 16);
  if (v15)
  {
    v16 = v15(event);
  }

  else
  {
    v16 = 0;
  }

  v18 = v20;
  v19 = v21;
  return [(AVMetricPlayerItemLikelyToKeepUpEvent *)v12 initWithDate:v5 mediaTime:&v18 sessionID:v9 variant:v11 timeTaken:v16 loadedTimeRanges:v14];
}

+ (id)initialLikelyToKeepUpEventWithFigMetricEvent:(OpaqueFigMetricEvent *)event
{
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v5)
  {
    v6 = v5(event);
  }

  else
  {
    v6 = 0;
  }

  v36 = 0uLL;
  v37 = 0;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v7)
  {
    v7(&v36, event);
  }

  else
  {
    v36 = *MEMORY[0x1E6960C70];
    v37 = *(MEMORY[0x1E6960C70] + 16);
  }

  v8 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v8)
  {
    v9 = v8(event);
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  v14 = *(*(CMBaseObjectGetVTable() + 40) + 8);
  if (v14)
  {
    v15 = v14(event);
    if (v15)
    {
      v15 = [[AVAssetVariant alloc] initWithFigAlternate:v15];
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = *(*(CMBaseObjectGetVTable() + 40) + 24);
  if (v16)
  {
    v17 = v16(event);
  }

  else
  {
    v17 = 0;
  }

  v18 = 0;
  if (!v17)
  {
    goto LABEL_19;
  }

LABEL_18:
  for (i = CFArrayGetCount(v17); v18 < i; i = 0)
  {
    [array addObject:{objc_msgSend(self, "playlistRequestEventWithFigMetricEvent:", CFArrayGetValueAtIndex(v17, v18++))}];
    if (v17)
    {
      goto LABEL_18;
    }

LABEL_19:
    ;
  }

  v20 = *(*(CMBaseObjectGetVTable() + 40) + 32);
  if (v20)
  {
    v21 = v20(event);
  }

  else
  {
    v21 = 0;
  }

  v22 = 0;
  if (!v21)
  {
    goto LABEL_28;
  }

LABEL_27:
  for (j = CFArrayGetCount(v21); v22 < j; j = 0)
  {
    [array2 addObject:{objc_msgSend(self, "mediaSegmentRequestEventWithFigMetricEvent:", CFArrayGetValueAtIndex(v21, v22++))}];
    if (v21)
    {
      goto LABEL_27;
    }

LABEL_28:
    ;
  }

  v24 = *(*(CMBaseObjectGetVTable() + 40) + 40);
  if (v24)
  {
    v25 = v24(event);
  }

  else
  {
    v25 = 0;
  }

  v26 = 0;
  if (!v25)
  {
    goto LABEL_37;
  }

LABEL_36:
  for (k = CFArrayGetCount(v25); v26 < k; k = 0)
  {
    [array3 addObject:{objc_msgSend(self, "contentKeyRequestEventWithFigMetricEvent:", CFArrayGetValueAtIndex(v25, v26++))}];
    if (v25)
    {
      goto LABEL_36;
    }

LABEL_37:
    ;
  }

  v28 = [AVMetricPlayerItemInitialLikelyToKeepUpEvent alloc];
  v29 = *(*(CMBaseObjectGetVTable() + 40) + 48);
  v30 = 0.0;
  if (v29)
  {
    v30 = v29(event);
  }

  v31 = *(*(CMBaseObjectGetVTable() + 40) + 16);
  if (v31)
  {
    v32 = v31(event);
  }

  else
  {
    v32 = 0;
  }

  v34 = v36;
  v35 = v37;
  return [(AVMetricPlayerItemInitialLikelyToKeepUpEvent *)v28 initWithDate:v6 mediaTime:&v34 sessionID:v10 variant:v15 timeTaken:v32 loadedTimeRanges:array playlistRequestEvents:v30 mediaSegmentRequestEvents:array2 contentKeyRequestEvents:array3];
}

+ (id)rateChangeEventWithFigMetricEvent:(OpaqueFigMetricEvent *)event
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v4)
  {
    v5 = v4(event);
  }

  else
  {
    v5 = 0;
  }

  v20 = 0uLL;
  v21 = 0;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v6)
  {
    v6(&v20, event);
  }

  else
  {
    v20 = *MEMORY[0x1E6960C70];
    v21 = *(MEMORY[0x1E6960C70] + 16);
  }

  v7 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v7)
  {
    v8 = v7(event);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = *(*(CMBaseObjectGetVTable() + 48) + 8);
  if (v10)
  {
    v11 = v10(event);
    if (v11)
    {
      v11 = [[AVAssetVariant alloc] initWithFigAlternate:v11];
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = [AVMetricPlayerItemRateChangeEvent alloc];
  v13 = *(*(CMBaseObjectGetVTable() + 48) + 16);
  v14 = 0.0;
  v15 = 0.0;
  if (v13)
  {
    v15 = v13(event);
  }

  v16 = *(*(CMBaseObjectGetVTable() + 48) + 24);
  if (v16)
  {
    v14 = v16(event);
  }

  v18 = v20;
  v19 = v21;
  return [(AVMetricPlayerItemRateChangeEvent *)v12 initWithDate:v5 mediaTime:&v18 sessionID:v9 variant:v11 rate:v15 previousRate:v14];
}

+ (id)stallEventWithFigMetricEvent:(OpaqueFigMetricEvent *)event
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v4)
  {
    v5 = v4(event);
  }

  else
  {
    v5 = 0;
  }

  v20 = 0uLL;
  v21 = 0;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v6)
  {
    v6(&v20, event);
  }

  else
  {
    v20 = *MEMORY[0x1E6960C70];
    v21 = *(MEMORY[0x1E6960C70] + 16);
  }

  v7 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v7)
  {
    v8 = v7(event);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = *(*(CMBaseObjectGetVTable() + 48) + 8);
  if (v10)
  {
    v11 = v10(event);
    if (v11)
    {
      v11 = [[AVAssetVariant alloc] initWithFigAlternate:v11];
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = [AVMetricPlayerItemStallEvent alloc];
  v13 = *(*(CMBaseObjectGetVTable() + 48) + 16);
  v14 = 0.0;
  v15 = 0.0;
  if (v13)
  {
    v15 = v13(event);
  }

  v16 = *(*(CMBaseObjectGetVTable() + 48) + 24);
  if (v16)
  {
    v14 = v16(event);
  }

  v18 = v20;
  v19 = v21;
  return [(AVMetricPlayerItemRateChangeEvent *)v12 initWithDate:v5 mediaTime:&v18 sessionID:v9 variant:v11 rate:v15 previousRate:v14];
}

+ (id)seekEventWithFigMetricEvent:(OpaqueFigMetricEvent *)event
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v4)
  {
    v5 = v4(event);
  }

  else
  {
    v5 = 0;
  }

  v20 = 0uLL;
  v21 = 0;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v6)
  {
    v6(&v20, event);
  }

  else
  {
    v20 = *MEMORY[0x1E6960C70];
    v21 = *(MEMORY[0x1E6960C70] + 16);
  }

  v7 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v7)
  {
    v8 = v7(event);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = *(*(CMBaseObjectGetVTable() + 48) + 8);
  if (v10)
  {
    v11 = v10(event);
    if (v11)
    {
      v11 = [[AVAssetVariant alloc] initWithFigAlternate:v11];
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = [AVMetricPlayerItemSeekEvent alloc];
  v13 = *(*(CMBaseObjectGetVTable() + 48) + 16);
  v14 = 0.0;
  v15 = 0.0;
  if (v13)
  {
    v15 = v13(event);
  }

  v16 = *(*(CMBaseObjectGetVTable() + 48) + 24);
  if (v16)
  {
    v14 = v16(event);
  }

  v18 = v20;
  v19 = v21;
  return [(AVMetricPlayerItemRateChangeEvent *)v12 initWithDate:v5 mediaTime:&v18 sessionID:v9 variant:v11 rate:v15 previousRate:v14];
}

+ (id)seekDidCompleteEventWithFigMetricEvent:(OpaqueFigMetricEvent *)event
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v4)
  {
    v5 = v4(event);
  }

  else
  {
    v5 = 0;
  }

  v22 = 0uLL;
  v23 = 0;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v6)
  {
    v6(&v22, event);
  }

  else
  {
    v22 = *MEMORY[0x1E6960C70];
    v23 = *(MEMORY[0x1E6960C70] + 16);
  }

  v7 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v7)
  {
    v8 = v7(event);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = *(*(CMBaseObjectGetVTable() + 48) + 8);
  if (v10)
  {
    v11 = v10(event);
    if (v11)
    {
      v11 = [[AVAssetVariant alloc] initWithFigAlternate:v11];
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = [AVMetricPlayerItemSeekDidCompleteEvent alloc];
  v13 = *(*(CMBaseObjectGetVTable() + 48) + 32);
  if (v13)
  {
    v14 = v13(event) != 0;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(*(CMBaseObjectGetVTable() + 48) + 16);
  v16 = 0.0;
  v17 = 0.0;
  if (v15)
  {
    v17 = v15(event);
  }

  v18 = *(*(CMBaseObjectGetVTable() + 48) + 24);
  if (v18)
  {
    v16 = v18(event);
  }

  v20 = v22;
  v21 = v23;
  return [(AVMetricPlayerItemSeekDidCompleteEvent *)v12 initWithDate:v5 mediaTime:&v20 sessionID:v9 variant:v11 didSeekInBuffer:v14 rate:v17 previousRate:v16];
}

+ (id)variantChangeEventWithFigMetricEvent:(OpaqueFigMetricEvent *)event
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v4)
  {
    v5 = v4(event);
  }

  else
  {
    v5 = 0;
  }

  v37 = 0uLL;
  v38 = 0;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v6)
  {
    v6(&v37, event);
  }

  else
  {
    v37 = *MEMORY[0x1E6960C70];
    v38 = *(MEMORY[0x1E6960C70] + 16);
  }

  v7 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v7)
  {
    v8 = v7(event);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = *(*(CMBaseObjectGetVTable() + 56) + 16);
  if (v10)
  {
    v11 = v10(event);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(*(CMBaseObjectGetVTable() + 56) + 8);
  if (v12)
  {
    v13 = v12(event);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(*(CMBaseObjectGetVTable() + 56) + 32);
  if (v14)
  {
    v15 = v14(event);
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = [[AVMetricMediaRendition alloc] initWithStableID:v15 URL:v17];
  v19 = *(*(CMBaseObjectGetVTable() + 56) + 40);
  if (v19)
  {
    v20 = v19(event);
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v23 = [[AVMetricMediaRendition alloc] initWithStableID:v20 URL:v22];
  v24 = *(*(CMBaseObjectGetVTable() + 56) + 48);
  if (v24)
  {
    v25 = v24(event);
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v28 = [[AVMetricMediaRendition alloc] initWithStableID:v25 URL:v27];
  if (v13)
  {
    v13 = [[AVAssetVariant alloc] initWithFigAlternate:v13];
  }

  if (v11)
  {
    v11 = [[AVAssetVariant alloc] initWithFigAlternate:v11];
  }

  v29 = [AVMetricPlayerItemVariantSwitchEvent alloc];
  v30 = *(*(CMBaseObjectGetVTable() + 56) + 24);
  if (v30)
  {
    v31 = v30(event);
  }

  else
  {
    v31 = 0;
  }

  v32 = *(*(CMBaseObjectGetVTable() + 56) + 56);
  if (v32)
  {
    LOBYTE(v32) = v32(event) != 0;
  }

  v35 = v37;
  v36 = v38;
  LOBYTE(v34) = v32;
  return [(AVMetricPlayerItemVariantSwitchEvent *)v29 initWithDate:v5 mediaTime:&v35 sessionID:v9 fromVariant:v11 toVariant:v13 videoRendition:v18 audioRendition:v23 subtitleRendition:v28 loadedTimeRanges:v31 didSucceed:v34];
}

+ (id)variantChangeStartEventWithFigMetricEvent:(OpaqueFigMetricEvent *)event
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v4)
  {
    v5 = v4(event);
  }

  else
  {
    v5 = 0;
  }

  v35 = 0uLL;
  v36 = 0;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v6)
  {
    v6(&v35, event);
  }

  else
  {
    v35 = *MEMORY[0x1E6960C70];
    v36 = *(MEMORY[0x1E6960C70] + 16);
  }

  v7 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v7)
  {
    v8 = v7(event);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = *(*(CMBaseObjectGetVTable() + 80) + 16);
  if (v10)
  {
    v11 = v10(event);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(*(CMBaseObjectGetVTable() + 80) + 8);
  if (v12)
  {
    v13 = v12(event);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(*(CMBaseObjectGetVTable() + 80) + 32);
  if (v14)
  {
    v15 = v14(event);
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = [[AVMetricMediaRendition alloc] initWithStableID:v15 URL:v17];
  v19 = *(*(CMBaseObjectGetVTable() + 80) + 40);
  if (v19)
  {
    v20 = v19(event);
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v23 = [[AVMetricMediaRendition alloc] initWithStableID:v20 URL:v22];
  v24 = *(*(CMBaseObjectGetVTable() + 80) + 48);
  if (v24)
  {
    v25 = v24(event);
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v28 = [[AVMetricMediaRendition alloc] initWithStableID:v25 URL:v27];
  if (v13)
  {
    v13 = [[AVAssetVariant alloc] initWithFigAlternate:v13];
  }

  if (v11)
  {
    v11 = [[AVAssetVariant alloc] initWithFigAlternate:v11];
  }

  v29 = [AVMetricPlayerItemVariantSwitchStartEvent alloc];
  v30 = *(*(CMBaseObjectGetVTable() + 80) + 24);
  if (v30)
  {
    v31 = v30(event);
  }

  else
  {
    v31 = 0;
  }

  v33 = v35;
  v34 = v36;
  return [(AVMetricPlayerItemVariantSwitchStartEvent *)v29 initWithDate:v5 mediaTime:&v33 sessionID:v9 fromVariant:v11 toVariant:v13 videoRendition:v18 audioRendition:v23 subtitleRendition:v28 loadedTimeRanges:v31];
}

+ (id)playbackSummaryEventWithFigMetricEvent:(OpaqueFigMetricEvent *)event
{
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v5)
  {
    v33 = v5(event);
  }

  else
  {
    v33 = 0;
  }

  v36 = 0uLL;
  v37 = 0;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v6)
  {
    v6(&v36, event);
  }

  else
  {
    v36 = *MEMORY[0x1E6960C70];
    v37 = *(MEMORY[0x1E6960C70] + 16);
  }

  v7 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v7)
  {
    v8 = v7(event);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = *(*(CMBaseObjectGetVTable() + 72) + 8);
  if (v10 && (v11 = v10(event)) != 0)
  {
    v12 = [self errorEventWithFigMetricEvent:v11];
  }

  else
  {
    v12 = 0;
  }

  v13 = [AVMetricPlayerItemPlaybackSummaryEvent alloc];
  v14 = *(*(CMBaseObjectGetVTable() + 72) + 16);
  if (v14)
  {
    v15 = v14(event);
  }

  else
  {
    v15 = 0;
  }

  v16 = *(*(CMBaseObjectGetVTable() + 72) + 24);
  if (v16)
  {
    v17 = v16(event);
  }

  else
  {
    v17 = 0;
  }

  v18 = *(*(CMBaseObjectGetVTable() + 72) + 32);
  if (v18)
  {
    v19 = v18(event);
  }

  else
  {
    v19 = 0;
  }

  v20 = *(*(CMBaseObjectGetVTable() + 72) + 40);
  if (v20)
  {
    v21 = v20(event);
  }

  else
  {
    v21 = 0;
  }

  v22 = *(*(CMBaseObjectGetVTable() + 72) + 48);
  if (v22)
  {
    v23 = v22(event);
  }

  else
  {
    v23 = 0;
  }

  v24 = *(*(CMBaseObjectGetVTable() + 72) + 56);
  v25 = 0.0;
  v26 = 0.0;
  if (v24)
  {
    v26 = v24(event);
  }

  v27 = *(*(CMBaseObjectGetVTable() + 72) + 64);
  if (v27)
  {
    v25 = v27(event);
  }

  v28 = *(*(CMBaseObjectGetVTable() + 72) + 72);
  if (v28)
  {
    v29 = v28(event);
  }

  else
  {
    v29 = 0;
  }

  v30 = *(*(CMBaseObjectGetVTable() + 72) + 80);
  if (v30)
  {
    v31 = v30(event);
  }

  else
  {
    v31 = 0;
  }

  v34 = v36;
  v35 = v37;
  return [(AVMetricPlayerItemPlaybackSummaryEvent *)v13 initWithDate:v33 mediaTime:&v34 sessionID:v9 errorEvent:v12 recoverableErrorCount:v15 stallCount:v17 variantSwitchCount:v26 playbackDuration:v25 mediaResourceRequestCount:v19 timeSpentRecoveringFromStall:v21 timeSpentInInitialStartup:v23 timeWeightedAverageBitrate:v29 timeWeightedPeakBitrate:v31];
}

+ (id)downloadSummaryEventWithFigMetricEvent:(OpaqueFigMetricEvent *)event
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v4)
  {
    v5 = v4(event);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v6)
  {
    v7 = v6(event);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v32 = 0uLL;
  v33 = 0;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v9)
  {
    v9(&v32, event);
  }

  else
  {
    v32 = *MEMORY[0x1E6960C70];
    v33 = *(MEMORY[0x1E6960C70] + 16);
  }

  v10 = *(*(CMBaseObjectGetVTable() + 24) + 8);
  if (v10)
  {
    v11 = v10(event);
    if (v11)
    {
      v12 = [AVMetricErrorEvent alloc];
      v30 = v32;
      v31 = v33;
      v11 = [(AVMetricErrorEvent *)v12 initWithDate:v5 mediaTime:&v30 sessionID:v8 didRecover:0 error:v11];
    }
  }

  else
  {
    v11 = 0;
  }

  array = [MEMORY[0x1E695DF70] array];
  v14 = *(*(CMBaseObjectGetVTable() + 24) + 48);
  if (v14)
  {
    v15 = v14(event);
    if (v15)
    {
      v16 = v15;
      Count = CFArrayGetCount(v15);
      if (Count >= 1)
      {
        v18 = Count;
        for (i = 0; i != v18; ++i)
        {
          [array addObject:{-[AVAssetVariant initWithFigAlternate:]([AVAssetVariant alloc], "initWithFigAlternate:", CFArrayGetValueAtIndex(v16, i))}];
        }
      }
    }
  }

  v20 = [AVMetricDownloadSummaryEvent alloc];
  v21 = *(*(CMBaseObjectGetVTable() + 24) + 16);
  if (v21)
  {
    v22 = v21(event);
  }

  else
  {
    v22 = 0;
  }

  v23 = *(*(CMBaseObjectGetVTable() + 24) + 24);
  if (v23)
  {
    v24 = v23(event);
  }

  else
  {
    v24 = 0;
  }

  v25 = *(*(CMBaseObjectGetVTable() + 24) + 32);
  if (v25)
  {
    v26 = v25(event);
  }

  else
  {
    v26 = 0;
  }

  v27 = *(*(CMBaseObjectGetVTable() + 24) + 40);
  v28.n128_u64[0] = 0;
  if (v27)
  {
    v27(event, v28);
  }

  v30 = v32;
  v31 = v33;
  return [(AVMetricDownloadSummaryEvent *)v20 initWithDate:v5 mediaTime:&v30 sessionID:v8 errorEvent:v11 recoverableErrorCount:v22 mediaResourceRequestCount:v24 bytesDownloadedCount:v28.n128_f64[0] downloadDuration:v26 variants:array];
}

+ (id)metricEventForFigMetricEvent:(OpaqueFigMetricEvent *)event
{
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v5)
  {
    return 0;
  }

  v6 = v5(event);
  switch(v6)
  {
    case 0:
      v7 = objc_opt_class();

      result = [v7 resourceRequestEventWithFigMetricEvent:event];
      break;
    case 1:
      v13 = objc_opt_class();

      result = [v13 playlistRequestEventWithFigMetricEvent:event];
      break;
    case 2:
      v18 = objc_opt_class();

      result = [v18 mediaSegmentRequestEventWithFigMetricEvent:event];
      break;
    case 3:
      v12 = objc_opt_class();

      result = [v12 contentKeyRequestEventWithFigMetricEvent:event];
      break;
    case 4:
    case 14:
      return 0;
    case 5:
      v19 = objc_opt_class();

      result = [v19 initialLikelyToKeepUpEventWithFigMetricEvent:event];
      break;
    case 6:
      v11 = objc_opt_class();

      result = [v11 likelyToKeepUpEventWithFigMetricEvent:event];
      break;
    case 7:
      v20 = objc_opt_class();

      result = [v20 variantChangeEventWithFigMetricEvent:event];
      break;
    case 8:
      v15 = objc_opt_class();

      result = [v15 variantChangeStartEventWithFigMetricEvent:event];
      break;
    case 9:
      v14 = objc_opt_class();

      result = [v14 stallEventWithFigMetricEvent:event];
      break;
    case 10:
      v21 = objc_opt_class();

      result = [v21 rateChangeEventWithFigMetricEvent:event];
      break;
    case 11:
      v10 = objc_opt_class();

      result = [v10 seekEventWithFigMetricEvent:event];
      break;
    case 12:
      v17 = objc_opt_class();

      result = [v17 seekDidCompleteEventWithFigMetricEvent:event];
      break;
    case 13:

      result = [self errorEventWithFigMetricEvent:event];
      break;
    case 15:
      v16 = objc_opt_class();

      result = [v16 playbackSummaryEventWithFigMetricEvent:event];
      break;
    default:
      if (v6 != 0x100000000000000)
      {
        return 0;
      }

      v9 = objc_opt_class();

      result = [v9 downloadSummaryEventWithFigMetricEvent:event];
      break;
  }

  return result;
}

- (int64_t)getFigMetricEventIDForAVMetricClass:(Class)class
{
  if (objc_opt_class() == class)
  {
    return 13;
  }

  if (objc_opt_class() == class)
  {
    return 0;
  }

  if (objc_opt_class() == class)
  {
    return 2;
  }

  if (objc_opt_class() == class)
  {
    return 1;
  }

  if (objc_opt_class() == class)
  {
    return 3;
  }

  if (objc_opt_class() == class)
  {
    return 6;
  }

  if (objc_opt_class() == class)
  {
    return 5;
  }

  if (objc_opt_class() == class)
  {
    return 10;
  }

  if (objc_opt_class() == class)
  {
    return 9;
  }

  if (objc_opt_class() == class)
  {
    return 11;
  }

  if (objc_opt_class() == class)
  {
    return 12;
  }

  if (objc_opt_class() == class)
  {
    return 7;
  }

  if (objc_opt_class() == class)
  {
    return 15;
  }

  if (objc_opt_class() == class)
  {
    return 8;
  }

  return -1;
}

- (void)didReceiveEventForMetricEventTimeline:(OpaqueFigMetricEventTimeline *)timeline event:(OpaqueFigMetricEvent *)event
{
  if (timeline)
  {
    if (event)
    {
      v6 = [objc_opt_class() metricEventForFigMetricEvent:event];
      v7 = [CFDictionaryGetValue(self->_publisherByEventTimeline timeline)];
      delegateStorage = self->_delegateStorage;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __67__AVMetricEventStream_didReceiveEventForMetricEventTimeline_event___block_invoke;
      v9[3] = &unk_1E7465140;
      v9[4] = v7;
      v9[5] = v6;
      [(AVWeakReferencingDelegateStorage *)delegateStorage invokeDelegateCallbackWithBlock:v9];
    }
  }
}

uint64_t __67__AVMetricEventStream_didReceiveEventForMetricEventTimeline_event___block_invoke(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    return [a2 publisher:v5 didReceiveEvent:v6];
  }

  return result;
}

- (void)addPublisher:(id)publisher eventTimeline:(OpaqueFigMetricEventTimeline *)timeline
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__AVMetricEventStream_addPublisher_eventTimeline___block_invoke;
  block[3] = &unk_1E7460FF0;
  block[5] = self;
  block[6] = timeline;
  block[4] = publisher;
  dispatch_sync(internalQueue, block);
}

void __50__AVMetricEventStream_addPublisher_eventTimeline___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    v2 = [[AVWeakReference alloc] initWithReferencedObject:*(a1 + 32)];
    CFArrayAppendValue(*(*(a1 + 40) + 16), *(a1 + 48));
    CFDictionarySetValue(*(*(a1 + 40) + 8), *(a1 + 48), v2);
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = *(v3 + 48);
    v5 = *(v3 + 56);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v7)
    {
      v7(v4, v6, &_block_invoke_subscriberCallbacks, v5);
    }

    v8 = *(a1 + 40);
    if (*(v8 + 40) == 1)
    {
      v9 = *(a1 + 48);
      v10 = *(v8 + 48);
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v11)
      {
        v11(v9, v10);
      }
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v12 = *(v8 + 32);
      v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v22;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v22 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [*(a1 + 40) getFigMetricEventIDForAVMetricClass:*(*(&v21 + 1) + 8 * i)];
            v18 = *(a1 + 48);
            v19 = *(*(a1 + 40) + 48);
            v20 = *(*(CMBaseObjectGetVTable() + 16) + 16);
            if (v20)
            {
              v20(v18, v19, v17);
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v14);
      }
    }
  }

  else
  {
    v2 = 0;
  }
}

- (BOOL)addPublisher:(id)publisher
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__AVMetricEventStream_addPublisher___block_invoke;
  v5[3] = &unk_1E7465168;
  objc_copyWeak(&v6, &location);
  v5[4] = publisher;
  [publisher getEventTimelineWithCompletionHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
  return 1;
}

id __36__AVMetricEventStream_addPublisher___block_invoke(uint64_t a1, uint64_t a2)
{
  result = objc_loadWeak((a1 + 40));
  if (a2)
  {
    v5 = *(a1 + 32);

    return [result addPublisher:v5 eventTimeline:a2];
  }

  return result;
}

- (BOOL)setSubscriber:(id)subscriber queue:(id)queue
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__AVMetricEventStream_setSubscriber_queue___block_invoke;
  block[3] = &unk_1E7460E90;
  block[4] = self;
  block[5] = subscriber;
  block[6] = queue;
  dispatch_sync(internalQueue, block);
  return 1;
}

uint64_t __43__AVMetricEventStream_setSubscriber_queue___block_invoke(void *a1)
{
  v2 = *(a1[4] + 24);
  if (!v2)
  {
    *(a1[4] + 24) = objc_alloc_init(AVWeakReferencingDelegateStorage);
    v2 = *(a1[4] + 24);
  }

  v3 = a1[5];
  v4 = a1[6];

  return [v2 setDelegate:v3 queue:v4];
}

- (void)subscribeToMetricEvent:(Class)event
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__AVMetricEventStream_subscribeToMetricEvent___block_invoke;
  v4[3] = &unk_1E7460DF0;
  v4[4] = self;
  v4[5] = event;
  dispatch_async(internalQueue, v4);
}

const __CFArray *__46__AVMetricEventStream_subscribeToMetricEvent___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) addObject:*(a1 + 40)];
  for (i = 0; ; ++i)
  {
    result = *(*(a1 + 32) + 16);
    if (result)
    {
      result = CFArrayGetCount(result);
    }

    if (i >= result)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 32) + 16), i);
    v5 = [*(a1 + 32) getFigMetricEventIDForAVMetricClass:*(a1 + 40)];
    v6 = *(*(a1 + 32) + 48);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v7)
    {
      v7(ValueAtIndex, v6, v5);
    }
  }

  return result;
}

- (void)subscribeToMetricEvents:(id)events
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [events countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(events);
        }

        [(AVMetricEventStream *)self subscribeToMetricEvent:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [events countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)subscribeToAllMetricEvents
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__AVMetricEventStream_subscribeToAllMetricEvents__block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

const __CFArray *__49__AVMetricEventStream_subscribeToAllMetricEvents__block_invoke(uint64_t a1)
{
  v2 = 0;
  *(*(a1 + 32) + 40) = 1;
  while (1)
  {
    result = *(*(a1 + 32) + 16);
    if (result)
    {
      result = CFArrayGetCount(result);
    }

    if (v2 >= result)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 32) + 16), v2);
    v5 = *(*(a1 + 32) + 48);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v6)
    {
      v6(ValueAtIndex, v5);
    }

    ++v2;
  }

  return result;
}

@end