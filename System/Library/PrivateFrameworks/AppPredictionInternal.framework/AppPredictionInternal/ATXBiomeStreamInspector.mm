@interface ATXBiomeStreamInspector
+ (void)_makeStreamJSONForStream:(id)stream publisher:(id)publisher maxNumEvents:(unint64_t)events callback:(id)callback;
+ (void)makeJSONRepresentationForStreamWithBlock:(id)block;
+ (void)makeJSONRepresentationForStreamWithBlock:(id)block blendingPublisher:(id)publisher clientPublisher:(id)clientPublisher uiPublisher:(id)uiPublisher spotlightUIPublisher:(id)iPublisher appLaunchPublisher:(id)launchPublisher appIntentPublisher:(id)intentPublisher inferredModePublisher:(id)self0;
@end

@implementation ATXBiomeStreamInspector

+ (void)makeJSONRepresentationForStreamWithBlock:(id)block
{
  v3 = MEMORY[0x277CBEAA8];
  blockCopy = block;
  [v3 timeIntervalSinceReferenceDate];
  v6 = v5 + -7200.0;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v8 = v7 + -86400.0;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v10 = v9 + -604800.0;
  v11 = objc_opt_class();
  v31 = objc_opt_new();
  v34 = [v31 publisherFromStartTime:v6];
  v30 = objc_opt_new();
  v33 = [v30 publisherFromStartTime:v6];
  v29 = objc_opt_new();
  v32 = [v29 genericEventPublisherFromStartTime:v8];
  v28 = objc_opt_new();
  v12 = [v28 publisherFromStartTime:v8];
  v27 = BiomeLibrary();
  v26 = [v27 App];
  inFocus = [v26 InFocus];
  v24 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
  v20 = [inFocus atx_publisherFromStartTime:v24];
  v23 = BiomeLibrary();
  v22 = [v23 App];
  intent = [v22 Intent];
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
  v14 = [intent atx_publisherFromStartTime:v13];
  v15 = BiomeLibrary();
  userFocus = [v15 UserFocus];
  inferredMode = [userFocus InferredMode];
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
  v19 = [inferredMode atx_publisherFromStartTime:v18];
  [v11 makeJSONRepresentationForStreamWithBlock:blockCopy blendingPublisher:v34 clientPublisher:v33 uiPublisher:v32 spotlightUIPublisher:v12 appLaunchPublisher:v20 appIntentPublisher:v14 inferredModePublisher:v19];
}

+ (void)makeJSONRepresentationForStreamWithBlock:(id)block blendingPublisher:(id)publisher clientPublisher:(id)clientPublisher uiPublisher:(id)uiPublisher spotlightUIPublisher:(id)iPublisher appLaunchPublisher:(id)launchPublisher appIntentPublisher:(id)intentPublisher inferredModePublisher:(id)self0
{
  blockCopy = block;
  publisherCopy = publisher;
  clientPublisherCopy = clientPublisher;
  uiPublisherCopy = uiPublisher;
  iPublisherCopy = iPublisher;
  launchPublisherCopy = launchPublisher;
  intentPublisherCopy = intentPublisher;
  modePublisherCopy = modePublisher;
  v23 = objc_autoreleasePoolPush();
  [self _makeStreamJSONForStream:@"blending" publisher:publisherCopy maxNumEvents:500 callback:blockCopy];
  objc_autoreleasePoolPop(v23);
  v24 = objc_autoreleasePoolPush();
  [self _makeStreamJSONForStream:@"clientModel" publisher:clientPublisherCopy maxNumEvents:250 callback:blockCopy];
  objc_autoreleasePoolPop(v24);
  v25 = objc_autoreleasePoolPush();
  [self _makeStreamJSONForStream:@"ui" publisher:uiPublisherCopy maxNumEvents:2000 callback:blockCopy];
  objc_autoreleasePoolPop(v25);
  v26 = objc_autoreleasePoolPush();
  [self _makeStreamJSONForStream:@"spotlightUI" publisher:iPublisherCopy maxNumEvents:1000 callback:blockCopy];
  objc_autoreleasePoolPop(v26);
  v27 = objc_autoreleasePoolPush();
  [self _makeStreamJSONForStream:@"appLaunch" publisher:launchPublisherCopy maxNumEvents:500 callback:blockCopy];
  objc_autoreleasePoolPop(v27);
  v28 = objc_autoreleasePoolPush();
  [self _makeStreamJSONForStream:@"appIntent" publisher:intentPublisherCopy maxNumEvents:500 callback:blockCopy];
  objc_autoreleasePoolPop(v28);
  v29 = objc_autoreleasePoolPush();
  [self _makeStreamJSONForStream:@"inferredMode" publisher:modePublisherCopy maxNumEvents:500 callback:blockCopy];
  objc_autoreleasePoolPop(v29);
}

+ (void)_makeStreamJSONForStream:(id)stream publisher:(id)publisher maxNumEvents:(unint64_t)events callback:(id)callback
{
  streamCopy = stream;
  publisherCopy = publisher;
  callbackCopy = callback;
  v12 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v12 setDateStyle:1];
  [v12 setTimeStyle:1];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__15;
  v24 = __Block_byref_object_dispose__15;
  v25 = objc_opt_new();
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __84__ATXBiomeStreamInspector__makeStreamJSONForStream_publisher_maxNumEvents_callback___block_invoke_2;
  v16[3] = &unk_278598AA0;
  v13 = v12;
  v17 = v13;
  v18 = &v20;
  eventsCopy = events;
  v14 = [publisherCopy sinkWithCompletion:&__block_literal_global_32 receiveInput:v16];
  v15 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v21[5] options:1 error:0];
  callbackCopy[2](callbackCopy, streamCopy, v15);

  _Block_object_dispose(&v20, 8);
}

void __84__ATXBiomeStreamInspector__makeStreamJSONForStream_publisher_maxNumEvents_callback___block_invoke_2(void *a1, void *a2)
{
  v27[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  context = objc_autoreleasePoolPush();
  v23 = [v3 eventBody];
  v26[0] = @"timestamp";
  v4 = a1[4];
  v5 = MEMORY[0x277CBEAA8];
  [v3 timestamp];
  v6 = [v5 dateWithTimeIntervalSinceReferenceDate:?];
  v7 = [v4 stringFromDate:v6];
  v27[0] = v7;
  v26[1] = @"timestampRaw";
  v8 = MEMORY[0x277CCABB0];
  [v3 timestamp];
  v9 = [v8 numberWithDouble:?];
  v27[1] = v9;
  v26[2] = @"data_size";
  v10 = MEMORY[0x277CCABB0];
  v11 = [v3 frame];
  v12 = [v11 data];
  v13 = [v10 numberWithUnsignedInteger:{objc_msgSend(v12, "length")}];
  v27[2] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
  v15 = [v14 mutableCopy];

  if (objc_opt_respondsToSelector())
  {
    v16 = MEMORY[0x277CCAAA0];
    v17 = [v23 json];
    v25 = 0;
    v18 = [v16 JSONObjectWithData:v17 options:2 error:&v25];
    v19 = v25;

    if (v19)
    {
      v20 = [v19 localizedDescription];
      printf("JSON deserialization error occurs: %s", [v20 UTF8String]);
    }
  }

  else
  {
    v21 = MEMORY[0x277CCACA8];
    v19 = [objc_msgSend(v3 "dataType")];
    v18 = [v21 stringWithFormat:@"Event class %@ does not support JSON output", v19];
  }

  [v15 setObject:v18 forKeyedSubscript:@"event"];

  if ([*(*(a1[5] + 8) + 40) count] == a1[6])
  {
    [*(*(a1[5] + 8) + 40) removeObjectAtIndex:0];
  }

  [*(*(a1[5] + 8) + 40) addObject:v15];

  objc_autoreleasePoolPop(context);
  v22 = *MEMORY[0x277D85DE8];
}

@end