@interface AFEventStore
+ (id)sharedInstance;
- (BOOL)_filterAppleAudioEventsMoreThanADayOld:(id)old;
- (BOOL)_filterHeadUnitEventsMoreThanADayOld:(id)old;
- (BOOL)_isEvent:(id)event olderThan:(int64_t)than;
- (id)_getPublisher;
- (id)_mapIDsToProduct:(id)product;
- (id)_mapIDsToSELFEvents:(id)events;
- (void)_populateBTCarEventOUID:(id)d carBluetoothHeadunit:(id)headunit;
- (void)deleteAllBTEventsWithQueue:(id)queue withCompletionHandler:(id)handler;
- (void)deleteAllSiriServiceEventsWithQueue:(id)queue withCompletionHandler:(id)handler;
- (void)fetchAppleAudioDeviceConnectedInLast24HoursWithCompletionHandler:(id)handler;
- (void)fetchEventsBetweenStartDate:(id)date endDate:(id)endDate withQueue:(id)queue withCompletionHandler:(id)handler;
- (void)fetchHeadunitsConnectedInLast24HoursWithCompletionHandler:(id)handler;
- (void)storeBTEvent:(id)event withQueue:(id)queue withCompletionHandler:(id)handler;
- (void)storeSiriServiceEvent:(id)event withQueue:(id)queue atTime:(id)time withCompletionHandler:(id)handler;
@end

@implementation AFEventStore

- (void)deleteAllSiriServiceEventsWithQueue:(id)queue withCompletionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  handlerCopy = handler;
  v7 = SoftBiomeLibrary();
  siri = [v7 Siri];
  service = [siri Service];

  if (!service)
  {
    v10 = AFSiriLogContextEvent;
    if (os_log_type_enabled(AFSiriLogContextEvent, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v19 = "[AFEventStore(SiriService) deleteAllSiriServiceEventsWithQueue:withCompletionHandler:]";
      _os_log_error_impl(&dword_1912FE000, v10, OS_LOG_TYPE_ERROR, "%s Biome stream unavailable", buf, 0xCu);
    }

    v11 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"kAFAssistantEventDomain" code:10001 userInfo:0];
    handlerCopy[2](handlerCopy, v11);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __87__AFEventStore_SiriService__deleteAllSiriServiceEventsWithQueue_withCompletionHandler___block_invoke;
  v15[3] = &unk_1E7349838;
  v16 = service;
  v17 = handlerCopy;
  v12 = handlerCopy;
  v13 = service;
  dispatch_async(queueCopy, v15);

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __87__AFEventStore_SiriService__deleteAllSiriServiceEventsWithQueue_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pruner];
  [v2 deleteWithPolicy:@"assistant.siriservice.delete" eventsPassingTest:&__block_literal_global_15_27040];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)fetchEventsBetweenStartDate:(id)date endDate:(id)endDate withQueue:(id)queue withCompletionHandler:(id)handler
{
  v33 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  endDateCopy = endDate;
  queueCopy = queue;
  handlerCopy = handler;
  v13 = AFSiriLogContextEvent;
  if (os_log_type_enabled(AFSiriLogContextEvent, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v28 = "[AFEventStore(SiriService) fetchEventsBetweenStartDate:endDate:withQueue:withCompletionHandler:]";
    v29 = 2112;
    v30 = dateCopy;
    v31 = 2112;
    v32 = endDateCopy;
    _os_log_debug_impl(&dword_1912FE000, v13, OS_LOG_TYPE_DEBUG, "%s Fetching SiriServices Biome events between startData: %@, endDate: %@", buf, 0x20u);
  }

  v14 = SoftBiomeLibrary();
  siri = [v14 Siri];
  service = [siri Service];

  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (service)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __97__AFEventStore_SiriService__fetchEventsBetweenStartDate_endDate_withQueue_withCompletionHandler___block_invoke;
    block[3] = &unk_1E7348AF8;
    v22 = service;
    v23 = dateCopy;
    v24 = endDateCopy;
    v25 = v17;
    v26 = handlerCopy;
    dispatch_async(queueCopy, block);

    v18 = v22;
  }

  else
  {
    v19 = AFSiriLogContextEvent;
    if (os_log_type_enabled(AFSiriLogContextEvent, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v28 = "[AFEventStore(SiriService) fetchEventsBetweenStartDate:endDate:withQueue:withCompletionHandler:]";
      _os_log_error_impl(&dword_1912FE000, v19, OS_LOG_TYPE_ERROR, "%s Biome stream unavailable", buf, 0xCu);
    }

    v18 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"kAFAssistantEventDomain" code:10001 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v18);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __97__AFEventStore_SiriService__fetchEventsBetweenStartDate_endDate_withQueue_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) publisherWithUseCase:@"Assistant"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __97__AFEventStore_SiriService__fetchEventsBetweenStartDate_endDate_withQueue_withCompletionHandler___block_invoke_2;
  v7[3] = &unk_1E7345FB0;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v3 = [v2 filterWithIsIncluded:v7];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __97__AFEventStore_SiriService__fetchEventsBetweenStartDate_endDate_withQueue_withCompletionHandler___block_invoke_7;
  v5[3] = &unk_1E7349020;
  v6 = *(a1 + 56);
  v4 = [v3 sinkWithCompletion:&__block_literal_global_27060 receiveInput:v5];

  (*(*(a1 + 64) + 16))(*(a1 + 64), *(a1 + 56), 0);
}

BOOL __97__AFEventStore_SiriService__fetchEventsBetweenStartDate_endDate_withQueue_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E695DF00]);
  [v3 timestamp];
  v5 = [v4 initWithTimeIntervalSinceReferenceDate:?];
  v6 = [v3 eventBody];
  v7 = AFSiriLogContextEvent;
  if (os_log_type_enabled(AFSiriLogContextEvent, OS_LOG_TYPE_DEBUG))
  {
    v17 = 136315650;
    v18 = "[AFEventStore(SiriService) fetchEventsBetweenStartDate:endDate:withQueue:withCompletionHandler:]_block_invoke_2";
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v5;
  }

  [v3 timestamp];
  v9 = v8;
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  if (v9 >= v10)
  {
    [v3 timestamp];
    v13 = v12;
    [*(a1 + 40) timeIntervalSinceReferenceDate];
    v11 = v13 <= v14;
  }

  else
  {
    v11 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

void __97__AFEventStore_SiriService__fetchEventsBetweenStartDate_endDate_withQueue_withCompletionHandler___block_invoke_7(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextEvent;
  if (os_log_type_enabled(AFSiriLogContextEvent, OS_LOG_TYPE_DEBUG))
  {
    v10 = v4;
    v11 = [v3 eventBody];
    v12 = 136315650;
    v13 = "[AFEventStore(SiriService) fetchEventsBetweenStartDate:endDate:withQueue:withCompletionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    v16 = 1024;
    v17 = [v11 dismissalReason];
    _os_log_debug_impl(&dword_1912FE000, v10, OS_LOG_TYPE_DEBUG, "%s Received event %@ {dismissal reason:%d}", &v12, 0x1Cu);
  }

  v5 = *(a1 + 32);
  v6 = [AFSiriServiceEvent alloc];
  v7 = [v3 eventBody];
  v8 = [(AFEvent *)v6 initWithBMEvent:v7];
  [v5 addObject:v8];

  v9 = *MEMORY[0x1E69E9840];
}

void __97__AFEventStore_SiriService__fetchEventsBetweenStartDate_endDate_withQueue_withCompletionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if ([v2 state] == 1)
  {
    v4 = AFSiriLogContextEvent;
    if (os_log_type_enabled(AFSiriLogContextEvent, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v2 error];
      v7 = 136315394;
      v8 = "[AFEventStore(SiriService) fetchEventsBetweenStartDate:endDate:withQueue:withCompletionHandler:]_block_invoke";
      v9 = 2112;
      v10 = v6;
      _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s Error fetching bluetooth event: %@", &v7, 0x16u);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)storeSiriServiceEvent:(id)event withQueue:(id)queue atTime:(id)time withCompletionHandler:(id)handler
{
  v45 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  queueCopy = queue;
  timeCopy = time;
  handlerCopy = handler;
  bmEvent = [eventCopy bmEvent];

  if (bmEvent)
  {
    bmEvent2 = [eventCopy bmEvent];
    v38 = 0;
    v39 = &v38;
    v40 = 0x2050000000;
    v15 = getBMSiriServiceClass_softClass_27070;
    v41 = getBMSiriServiceClass_softClass_27070;
    if (!getBMSiriServiceClass_softClass_27070)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getBMSiriServiceClass_block_invoke_27071;
      v43 = &unk_1E7349228;
      v44 = &v38;
      BiomeLibraryLibraryCore();
      Class = objc_getClass("BMSiriService");
      *(v44[1] + 24) = Class;
      getBMSiriServiceClass_softClass_27070 = *(v44[1] + 24);
      v15 = v39[3];
    }

    v17 = v15;
    _Block_object_dispose(&v38, 8);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v19 = SoftBiomeLibrary();
      siri = [v19 Siri];
      service = [siri Service];

      if (service)
      {
        source = [service source];
        v23 = AFSiriLogContextEvent;
        if (source)
        {
          if (os_log_type_enabled(AFSiriLogContextEvent, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            *&buf[4] = "[AFEventStore(SiriService) storeSiriServiceEvent:withQueue:atTime:withCompletionHandler:]";
            *&buf[12] = 2112;
            *&buf[14] = eventCopy;
            _os_log_debug_impl(&dword_1912FE000, v23, OS_LOG_TYPE_DEBUG, "%s Dispatching event %@ to event source", buf, 0x16u);
          }

          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __90__AFEventStore_SiriService__storeSiriServiceEvent_withQueue_atTime_withCompletionHandler___block_invoke;
          block[3] = &unk_1E7348AF8;
          v33 = eventCopy;
          v34 = timeCopy;
          v35 = source;
          v36 = service;
          v37 = handlerCopy;
          dispatch_async(queueCopy, block);

          v24 = v33;
        }

        else
        {
          if (os_log_type_enabled(AFSiriLogContextEvent, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            *&buf[4] = "[AFEventStore(SiriService) storeSiriServiceEvent:withQueue:atTime:withCompletionHandler:]";
            _os_log_error_impl(&dword_1912FE000, v23, OS_LOG_TYPE_ERROR, "%s Biome event stream unavailable", buf, 0xCu);
          }

          v24 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"kAFAssistantEventDomain" code:10003 userInfo:0];
          (*(handlerCopy + 2))(handlerCopy, v24);
        }
      }

      else
      {
        v31 = AFSiriLogContextEvent;
        if (os_log_type_enabled(AFSiriLogContextEvent, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *&buf[4] = "[AFEventStore(SiriService) storeSiriServiceEvent:withQueue:atTime:withCompletionHandler:]";
          _os_log_error_impl(&dword_1912FE000, v31, OS_LOG_TYPE_ERROR, "%s Biome event stream unavailable", buf, 0xCu);
        }

        source = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"kAFAssistantEventDomain" code:10001 userInfo:0];
        (*(handlerCopy + 2))(handlerCopy, source);
      }
    }

    else
    {
      v25 = AFSiriLogContextEvent;
      if (os_log_type_enabled(AFSiriLogContextEvent, OS_LOG_TYPE_DEBUG))
      {
        v27 = v25;
        v28 = objc_opt_class();
        *buf = 136315394;
        *&buf[4] = "[AFEventStore(SiriService) storeSiriServiceEvent:withQueue:atTime:withCompletionHandler:]";
        *&buf[12] = 2112;
        *&buf[14] = v28;
        v29 = v28;
      }

      service = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"kAFAssistantEventDomain" code:10005 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, service);
    }
  }

  else
  {
    v30 = AFSiriLogContextEvent;
    if (os_log_type_enabled(AFSiriLogContextEvent, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "[AFEventStore(SiriService) storeSiriServiceEvent:withQueue:atTime:withCompletionHandler:]";
      _os_log_error_impl(&dword_1912FE000, v30, OS_LOG_TYPE_ERROR, "%s Biome base event unavailable for AFBTEvent", buf, 0xCu);
    }

    service = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"kAFAssistantEventDomain" code:10002 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, service);
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __90__AFEventStore_SiriService__storeSiriServiceEvent_withQueue_atTime_withCompletionHandler___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) bmEvent];
  v3 = AFSiriLogContextEvent;
  if (os_log_type_enabled(AFSiriLogContextEvent, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315394;
    v10 = "[AFEventStore(SiriService) storeSiriServiceEvent:withQueue:atTime:withCompletionHandler:]_block_invoke";
    v11 = 2112;
    v12 = v2;
    _os_log_debug_impl(&dword_1912FE000, v3, OS_LOG_TYPE_DEBUG, "%s Sending event %@ to event source", &v9, 0x16u);
  }

  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  if (v4)
  {
    [v4 timeIntervalSinceReferenceDate];
    [v5 sendEvent:v2 timestamp:?];
  }

  else
  {
    [*(a1 + 48) sendEvent:v2];
  }

  v6 = AFSiriLogContextEvent;
  if (os_log_type_enabled(AFSiriLogContextEvent, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 56);
    v9 = 136315650;
    v10 = "[AFEventStore(SiriService) storeSiriServiceEvent:withQueue:atTime:withCompletionHandler:]_block_invoke";
    v11 = 2112;
    v12 = v2;
    v13 = 2112;
    v14 = v8;
    _os_log_debug_impl(&dword_1912FE000, v6, OS_LOG_TYPE_DEBUG, "%s Sent event %@ to stream %@", &v9, 0x20u);
  }

  (*(*(a1 + 64) + 16))();

  v7 = *MEMORY[0x1E69E9840];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_37232 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_37232, &__block_literal_global_37233);
  }

  v3 = sharedInstance_store;

  return v3;
}

void __30__AFEventStore_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(AFEventStore);
  v1 = sharedInstance_store;
  sharedInstance_store = v0;
}

- (void)fetchAppleAudioDeviceConnectedInLast24HoursWithCompletionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFA8];
  handlerCopy = handler;
  v6 = objc_alloc_init(v4);
  _getPublisher = [(AFEventStore *)self _getPublisher];
  v8 = _getPublisher;
  if (_getPublisher)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __97__AFEventStore_BluetoothEvent__fetchAppleAudioDeviceConnectedInLast24HoursWithCompletionHandler___block_invoke;
    v17[3] = &unk_1E7348F88;
    v17[4] = self;
    v9 = [_getPublisher filterWithIsIncluded:v17];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __97__AFEventStore_BluetoothEvent__fetchAppleAudioDeviceConnectedInLast24HoursWithCompletionHandler___block_invoke_32;
    v15[3] = &unk_1E7349020;
    v10 = v6;
    v16 = v10;
    v11 = [v9 sinkWithCompletion:&__block_literal_global_31 receiveInput:v15];

    handlerCopy[2](handlerCopy, v10, 0);
  }

  else
  {
    v13 = AFSiriLogContextEvent;
    if (os_log_type_enabled(AFSiriLogContextEvent, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v19 = "[AFEventStore(BluetoothEvent) fetchAppleAudioDeviceConnectedInLast24HoursWithCompletionHandler:]";
      _os_log_error_impl(&dword_1912FE000, v13, OS_LOG_TYPE_ERROR, "%s Error creating Biome publisher", buf, 0xCu);
    }

    v14 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"kAFAssistantEventDomain" code:10001 userInfo:0];
    (handlerCopy)[2](handlerCopy, 0, v14);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __97__AFEventStore_BluetoothEvent__fetchAppleAudioDeviceConnectedInLast24HoursWithCompletionHandler___block_invoke_32(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 hasProductID];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = MEMORY[0x1E696AEC0];
    v8 = [v3 eventBody];
    v9 = [v7 stringWithFormat:@"%d", objc_msgSend(v8, "productID")];
    [v6 addObject:v9];
  }

  else
  {
    v10 = AFSiriLogContextEvent;
    if (os_log_type_enabled(AFSiriLogContextEvent, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v13 = "[AFEventStore(BluetoothEvent) fetchAppleAudioDeviceConnectedInLast24HoursWithCompletionHandler:]_block_invoke";
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_1912FE000, v10, OS_LOG_TYPE_INFO, "%s Received event '%@' with no product id", buf, 0x16u);
    }

    [*(a1 + 32) addObject:@"unknown_product_id"];
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __97__AFEventStore_BluetoothEvent__fetchAppleAudioDeviceConnectedInLast24HoursWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if ([v2 state] == 1)
  {
    v4 = AFSiriLogContextEvent;
    if (os_log_type_enabled(AFSiriLogContextEvent, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v2 error];
      v7 = 136315394;
      v8 = "[AFEventStore(BluetoothEvent) fetchAppleAudioDeviceConnectedInLast24HoursWithCompletionHandler:]_block_invoke_2";
      v9 = 2112;
      v10 = v6;
      _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s Error fetching bluetooth event: %@", &v7, 0x16u);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)fetchHeadunitsConnectedInLast24HoursWithCompletionHandler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFA8];
  handlerCopy = handler;
  v6 = objc_alloc_init(v4);
  _getPublisher = [(AFEventStore *)self _getPublisher];
  v8 = _getPublisher;
  if (_getPublisher)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __90__AFEventStore_BluetoothEvent__fetchHeadunitsConnectedInLast24HoursWithCompletionHandler___block_invoke;
    v20[3] = &unk_1E7348F88;
    v20[4] = self;
    v9 = [_getPublisher filterWithIsIncluded:v20];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __90__AFEventStore_BluetoothEvent__fetchHeadunitsConnectedInLast24HoursWithCompletionHandler___block_invoke_2;
    v19[3] = &unk_1E7348FB0;
    v19[4] = self;
    v10 = [v9 mapWithTransform:v19];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __90__AFEventStore_BluetoothEvent__fetchHeadunitsConnectedInLast24HoursWithCompletionHandler___block_invoke_28;
    v17[3] = &unk_1E7348FF8;
    v11 = v6;
    v18 = v11;
    v12 = [v10 sinkWithCompletion:&__block_literal_global_27 receiveInput:v17];

    allObjects = [v11 allObjects];
    handlerCopy[2](handlerCopy, allObjects, 0);
  }

  else
  {
    v15 = AFSiriLogContextEvent;
    if (os_log_type_enabled(AFSiriLogContextEvent, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v22 = "[AFEventStore(BluetoothEvent) fetchHeadunitsConnectedInLast24HoursWithCompletionHandler:]";
      _os_log_error_impl(&dword_1912FE000, v15, OS_LOG_TYPE_ERROR, "%s Error creating Biome publisher", buf, 0xCu);
    }

    v16 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"kAFAssistantEventDomain" code:10001 userInfo:0];
    (handlerCopy)[2](handlerCopy, 0, v16);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __90__AFEventStore_BluetoothEvent__fetchHeadunitsConnectedInLast24HoursWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if ([v2 state] == 1)
  {
    v4 = AFSiriLogContextEvent;
    if (os_log_type_enabled(AFSiriLogContextEvent, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v2 error];
      v7 = 136315394;
      v8 = "[AFEventStore(BluetoothEvent) fetchHeadunitsConnectedInLast24HoursWithCompletionHandler:]_block_invoke_3";
      v9 = 2112;
      v10 = v6;
      _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s Error fetching bluetooth event: %@", &v7, 0x16u);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (id)_getPublisher
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = SoftBiomeLibrary_45782();
  device = [v2 Device];
  wireless = [device Wireless];
  bluetooth = [wireless Bluetooth];

  if (bluetooth)
  {
    v6 = [bluetooth publisherWithUseCase:@"Assistant"];
  }

  else
  {
    v9 = AFSiriLogContextEvent;
    if (os_log_type_enabled(AFSiriLogContextEvent, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[AFEventStore(BluetoothEvent) _getPublisher]";
      _os_log_error_impl(&dword_1912FE000, v9, OS_LOG_TYPE_ERROR, "%s Error creating Biome stream", &v10, 0xCu);
    }

    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_mapIDsToProduct:(id)product
{
  eventBody = [product eventBody];
  v5 = objc_alloc_init(MEMORY[0x1E69CF578]);
  if ([eventBody hasProductID])
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(eventBody, "productID")];
    [v5 setHeadUnitProductId:v6];
  }

  if ([eventBody hasVendorID])
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(eventBody, "vendorID")];
    [v5 setHeadUnitVendorId:v7];
  }

  [(AFEventStore *)self _populateBTCarEventOUID:eventBody carBluetoothHeadunit:v5];

  return v5;
}

- (id)_mapIDsToSELFEvents:(id)events
{
  eventBody = [events eventBody];
  v5 = objc_alloc_init(MEMORY[0x1E69CF578]);
  if ([eventBody hasProductID])
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(eventBody, "productID")];
    [v5 setHeadUnitProductId:v6];
  }

  if ([eventBody hasVendorID])
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(eventBody, "vendorID")];
    [v5 setHeadUnitVendorId:v7];
  }

  [(AFEventStore *)self _populateBTCarEventOUID:eventBody carBluetoothHeadunit:v5];

  return v5;
}

- (void)_populateBTCarEventOUID:(id)d carBluetoothHeadunit:(id)headunit
{
  headunitCopy = headunit;
  address = [d address];
  v6 = [address dataUsingEncoding:4];

  if ([v6 length] < 9)
  {
    [headunitCopy setOrganizationallyUniqueId:@"N/A"];
  }

  else
  {
    v7 = [v6 subdataWithRange:{0, 9}];
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v7 encoding:4];
    v9 = [v8 stringByReplacingOccurrencesOfString:@":" withString:&stru_1F0512680];

    if (v9)
    {
      [headunitCopy setOrganizationallyUniqueId:v9];
    }
  }
}

- (BOOL)_filterAppleAudioEventsMoreThanADayOld:(id)old
{
  oldCopy = old;
  if ([(AFEventStore *)self _isEvent:oldCopy olderThan:24])
  {
    eventBody = [oldCopy eventBody];
    if (eventBody)
    {
      eventBody2 = [oldCopy eventBody];
      hasAppleAudioDevice = [eventBody2 hasAppleAudioDevice];
    }

    else
    {
      hasAppleAudioDevice = 0;
    }
  }

  else
  {
    hasAppleAudioDevice = 0;
  }

  return hasAppleAudioDevice;
}

- (BOOL)_filterHeadUnitEventsMoreThanADayOld:(id)old
{
  oldCopy = old;
  eventBody = [oldCopy eventBody];
  if ([eventBody deviceType] == 18)
  {
    v6 = 1;
  }

  else
  {
    eventBody2 = [oldCopy eventBody];
    v6 = [eventBody2 deviceType] == 23;
  }

  v8 = [(AFEventStore *)self _isEvent:oldCopy olderThan:24];
  return v8 && v6;
}

- (BOOL)_isEvent:(id)event olderThan:(int64_t)than
{
  eventCopy = event;
  if (eventCopy)
  {
    date = [MEMORY[0x1E695DF00] date];
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v8 = [currentCalendar dateByAddingUnit:32 value:-than toDate:date options:0];

    [v8 timeIntervalSinceReferenceDate];
    v10 = v9;
    [date timeIntervalSinceReferenceDate];
    v12 = v11;
    [eventCopy timestamp];
    if (v13 >= v10)
    {
      [eventCopy timestamp];
      v14 = v15 <= v12;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)deleteAllBTEventsWithQueue:(id)queue withCompletionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  handlerCopy = handler;
  v7 = SoftBiomeLibrary_45782();
  device = [v7 Device];
  wireless = [device Wireless];
  bluetooth = [wireless Bluetooth];

  if (bluetooth)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __81__AFEventStore_BluetoothEvent__deleteAllBTEventsWithQueue_withCompletionHandler___block_invoke;
    v14[3] = &unk_1E7349838;
    v15 = bluetooth;
    v16 = handlerCopy;
    dispatch_async(queueCopy, v14);

    v11 = v15;
  }

  else
  {
    v12 = AFSiriLogContextEvent;
    if (os_log_type_enabled(AFSiriLogContextEvent, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v18 = "[AFEventStore(BluetoothEvent) deleteAllBTEventsWithQueue:withCompletionHandler:]";
      _os_log_error_impl(&dword_1912FE000, v12, OS_LOG_TYPE_ERROR, "%s Biome stream unavailable", buf, 0xCu);
    }

    v11 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"kAFAssistantEventDomain" code:10001 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v11);
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __81__AFEventStore_BluetoothEvent__deleteAllBTEventsWithQueue_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pruner];
  [v2 deleteWithPolicy:@"assistant.device.bt.delete" eventsPassingTest:&__block_literal_global_45814];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)storeBTEvent:(id)event withQueue:(id)queue withCompletionHandler:(id)handler
{
  v41 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  queueCopy = queue;
  handlerCopy = handler;
  bmEvent = [eventCopy bmEvent];

  if (bmEvent)
  {
    bmEvent2 = [eventCopy bmEvent];
    v34 = 0;
    v35 = &v34;
    v36 = 0x2050000000;
    v12 = getBMDeviceBluetoothClass_softClass;
    v37 = getBMDeviceBluetoothClass_softClass;
    if (!getBMDeviceBluetoothClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getBMDeviceBluetoothClass_block_invoke;
      v39 = &unk_1E7349228;
      v40 = &v34;
      BiomeLibraryLibraryCore_45796();
      Class = objc_getClass("BMDeviceBluetooth");
      *(v40[1] + 24) = Class;
      getBMDeviceBluetoothClass_softClass = *(v40[1] + 24);
      v12 = v35[3];
    }

    v14 = v12;
    _Block_object_dispose(&v34, 8);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v16 = SoftBiomeLibrary_45782();
      device = [v16 Device];
      wireless = [device Wireless];
      bluetooth = [wireless Bluetooth];

      if (bluetooth)
      {
        source = [bluetooth source];
        v21 = AFSiriLogContextEvent;
        if (source)
        {
          if (os_log_type_enabled(AFSiriLogContextEvent, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            *&buf[4] = "[AFEventStore(BluetoothEvent) storeBTEvent:withQueue:withCompletionHandler:]";
            *&buf[12] = 2112;
            *&buf[14] = eventCopy;
            _os_log_debug_impl(&dword_1912FE000, v21, OS_LOG_TYPE_DEBUG, "%s Dispatching event %@ to event source", buf, 0x16u);
          }

          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __77__AFEventStore_BluetoothEvent__storeBTEvent_withQueue_withCompletionHandler___block_invoke;
          block[3] = &unk_1E73496E8;
          v31 = eventCopy;
          v32 = source;
          v33 = handlerCopy;
          dispatch_async(queueCopy, block);

          v22 = v31;
        }

        else
        {
          if (os_log_type_enabled(AFSiriLogContextEvent, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            *&buf[4] = "[AFEventStore(BluetoothEvent) storeBTEvent:withQueue:withCompletionHandler:]";
            _os_log_error_impl(&dword_1912FE000, v21, OS_LOG_TYPE_ERROR, "%s Biome event stream unavailable for bluetooth device", buf, 0xCu);
          }

          v22 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"kAFAssistantEventDomain" code:10003 userInfo:0];
          (*(handlerCopy + 2))(handlerCopy, v22);
        }
      }

      else
      {
        v26 = AFSiriLogContextEvent;
        if (os_log_type_enabled(AFSiriLogContextEvent, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *&buf[4] = "[AFEventStore(BluetoothEvent) storeBTEvent:withQueue:withCompletionHandler:]";
          _os_log_error_impl(&dword_1912FE000, v26, OS_LOG_TYPE_ERROR, "%s Biome event stream unavailable for bluetooth device", buf, 0xCu);
        }

        source = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"kAFAssistantEventDomain" code:10001 userInfo:0];
        (*(handlerCopy + 2))(handlerCopy, source);
      }
    }

    else
    {
      v25 = AFSiriLogContextEvent;
      if (os_log_type_enabled(AFSiriLogContextEvent, OS_LOG_TYPE_DEBUG))
      {
        v27 = v25;
        v28 = objc_opt_class();
        *buf = 136315394;
        *&buf[4] = "[AFEventStore(BluetoothEvent) storeBTEvent:withQueue:withCompletionHandler:]";
        *&buf[12] = 2112;
        *&buf[14] = v28;
        v29 = v28;
      }

      bluetooth = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"kAFAssistantEventDomain" code:10005 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, bluetooth);
    }
  }

  else
  {
    v24 = AFSiriLogContextEvent;
    if (os_log_type_enabled(AFSiriLogContextEvent, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "[AFEventStore(BluetoothEvent) storeBTEvent:withQueue:withCompletionHandler:]";
      _os_log_error_impl(&dword_1912FE000, v24, OS_LOG_TYPE_ERROR, "%s Biome base event unavailable for AFBTEvent", buf, 0xCu);
    }

    bluetooth = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"kAFAssistantEventDomain" code:10002 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, bluetooth);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __77__AFEventStore_BluetoothEvent__storeBTEvent_withQueue_withCompletionHandler___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) bmEvent];
  v3 = AFSiriLogContextEvent;
  if (os_log_type_enabled(AFSiriLogContextEvent, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[AFEventStore(BluetoothEvent) storeBTEvent:withQueue:withCompletionHandler:]_block_invoke";
    v8 = 2112;
    v9 = v2;
    _os_log_debug_impl(&dword_1912FE000, v3, OS_LOG_TYPE_DEBUG, "%s Sending event %@ to event source", &v6, 0x16u);
  }

  [*(a1 + 40) sendEvent:v2];
  v4 = AFSiriLogContextEvent;
  if (os_log_type_enabled(AFSiriLogContextEvent, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[AFEventStore(BluetoothEvent) storeBTEvent:withQueue:withCompletionHandler:]_block_invoke";
    v8 = 2112;
    v9 = v2;
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s Sent event %@ to stream Device.Wireless.Bluetooth", &v6, 0x16u);
  }

  (*(*(a1 + 48) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

@end