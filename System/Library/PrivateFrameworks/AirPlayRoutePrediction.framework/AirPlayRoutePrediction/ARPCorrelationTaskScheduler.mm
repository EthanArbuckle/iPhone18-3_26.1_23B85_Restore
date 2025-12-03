@interface ARPCorrelationTaskScheduler
- (ARPCorrelationTaskScheduler)initWithKnowledgeStore:(id)store;
- (void)_executeCorrelationTask;
- (void)_executeHomeControlMicrolocationCorrelationTask;
- (void)_executeHomeControlNextActionCorrelationTask;
- (void)dealloc;
- (void)executeCorrelationTask;
- (void)homeKitEventInserted;
- (void)microLocationEventInserted:(id)inserted;
- (void)nowPlayingEventInserted:(id)inserted;
@end

@implementation ARPCorrelationTaskScheduler

- (ARPCorrelationTaskScheduler)initWithKnowledgeStore:(id)store
{
  storeCopy = store;
  v48.receiver = self;
  v48.super_class = ARPCorrelationTaskScheduler;
  v6 = [(ARPCorrelationTaskScheduler *)&v48 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_knowledgeStore, store);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.AirPlayRoutePrediction.correlation-task-queue", v8);
    queue = v7->_queue;
    v7->_queue = v9;

    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    bookmark = v7->_bookmark;
    v7->_bookmark = distantPast;

    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    v14 = *MEMORY[0x277CFE2E8];
    nowPlayingStream = [MEMORY[0x277CFE298] nowPlayingStream];
    name = [nowPlayingStream name];
    [defaultCenter addObserver:v7 selector:sel_nowPlayingEventInserted_ name:v14 object:name];

    defaultCenter2 = [MEMORY[0x277CCA9A0] defaultCenter];
    microLocationVisitStream = [MEMORY[0x277CFE298] microLocationVisitStream];
    name2 = [microLocationVisitStream name];
    [defaultCenter2 addObserver:v7 selector:sel_microLocationEventInserted_ name:v14 object:name2];

    v20 = [objc_alloc(getBMBiomeSchedulerClass()) initWithIdentifier:@"com.apple.AirPlayRoutePrediction.HomeControlAccessoryEventNotification" targetQueue:v7->_queue];
    v21 = [objc_alloc(getBMBiomeSchedulerClass()) initWithIdentifier:@"com.apple.AirPlayRoutePrediction.HomeControlMediaAccessoryEventNotification" targetQueue:v7->_queue];
    v22 = [objc_alloc(getBMBiomeSchedulerClass()) initWithIdentifier:@"com.apple.AirPlayRoutePrediction.HomeControlActionSetEventNotification" targetQueue:v7->_queue];
    homeKitClientAccessoryControlStream = [getBMStreamsClass() homeKitClientAccessoryControlStream];
    publisher = [homeKitClientAccessoryControlStream publisher];
    v25 = [publisher subscribeOn:v20];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __54__ARPCorrelationTaskScheduler_initWithKnowledgeStore___block_invoke_2;
    v46[3] = &unk_278C64678;
    v26 = v7;
    v47 = v26;
    v27 = [v25 sinkWithCompletion:&__block_literal_global_3 receiveInput:v46];
    sinkAccessories = v26->_sinkAccessories;
    v26->_sinkAccessories = v27;

    homeKitClientMediaAccessoryControlStream = [getBMStreamsClass() homeKitClientMediaAccessoryControlStream];
    publisher2 = [homeKitClientMediaAccessoryControlStream publisher];
    v31 = [publisher2 subscribeOn:v21];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __54__ARPCorrelationTaskScheduler_initWithKnowledgeStore___block_invoke_4;
    v44[3] = &unk_278C64678;
    v32 = v26;
    v45 = v32;
    v33 = [v31 sinkWithCompletion:&__block_literal_global_20 receiveInput:v44];
    sinkMediaAccessories = v32->_sinkMediaAccessories;
    v32->_sinkMediaAccessories = v33;

    homeKitClientActionSetStream = [getBMStreamsClass() homeKitClientActionSetStream];
    publisher3 = [homeKitClientActionSetStream publisher];
    v37 = [publisher3 subscribeOn:v22];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __54__ARPCorrelationTaskScheduler_initWithKnowledgeStore___block_invoke_6;
    v42[3] = &unk_278C64678;
    v38 = v32;
    v43 = v38;
    v39 = [v37 sinkWithCompletion:&__block_literal_global_22 receiveInput:v42];
    sinkScenes = v38->_sinkScenes;
    v38->_sinkScenes = v39;
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  v4 = *MEMORY[0x277CFE2E8];
  nowPlayingStream = [MEMORY[0x277CFE298] nowPlayingStream];
  name = [nowPlayingStream name];
  [defaultCenter removeObserver:self name:v4 object:name];

  [(BPSSink *)self->_sinkAccessories cancel];
  [(BPSSink *)self->_sinkMediaAccessories cancel];
  [(BPSSink *)self->_sinkScenes cancel];
  v7.receiver = self;
  v7.super_class = ARPCorrelationTaskScheduler;
  [(ARPCorrelationTaskScheduler *)&v7 dealloc];
}

- (void)nowPlayingEventInserted:(id)inserted
{
  date = [MEMORY[0x277CBEAA8] date];
  +[ARPRoutingSession routingSessionTimeout];
  v6 = v5;
  bookmark = [(ARPCorrelationTaskScheduler *)self bookmark];
  v8 = [bookmark earlierDate:date];

  v9 = [date dateByAddingTimeInterval:-v6];
  v10 = [v9 laterDate:v8];

  [(ARPCorrelationTaskScheduler *)self setBookmark:date];
  v11 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v10 endDate:date];
  knowledgeStore = [(ARPCorrelationTaskScheduler *)self knowledgeStore];
  v13 = [ARPRoutingEvent mostRecentRoutingEventInDateInterval:v11 knowledgeStore:knowledgeStore eventLimit:1 longFormVideoFilter:0];

  if (v13)
  {
    queue = [(ARPCorrelationTaskScheduler *)self queue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __55__ARPCorrelationTaskScheduler_nowPlayingEventInserted___block_invoke;
    v19[3] = &unk_278C646A0;
    v19[4] = self;
    v15 = v19;
    v16 = os_transaction_create();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __cd_dispatch_async_capture_tx_block_invoke;
    block[3] = &unk_278C646F0;
    v21 = v16;
    v22 = v15;
    v17 = v16;
    dispatch_async(queue, block);
  }

  else
  {
    v18 = ARPLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [ARPCorrelationTaskScheduler nowPlayingEventInserted:v18];
    }
  }
}

- (void)_executeHomeControlMicrolocationCorrelationTask
{
  queue = [(ARPCorrelationTaskScheduler *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = [ARPHomeControlMicrolocationCorrelationTask alloc];
  v5 = +[ARPHomeControlSuggester defaultCorrelationsSessionFile];
  knowledgeStore = [(ARPCorrelationTaskScheduler *)self knowledgeStore];
  v7 = [(ARPHomeControlMicrolocationCorrelationTask *)v4 initWithCorrelationsFile:v5 knowledgeStore:knowledgeStore];

  [(ARPHomeControlMicrolocationCorrelationTask *)v7 execute];
}

- (void)_executeHomeControlNextActionCorrelationTask
{
  queue = [(ARPCorrelationTaskScheduler *)self queue];
  dispatch_assert_queue_V2(queue);

  v3 = [ARPHomeControlNextActionCorrelationTask alloc];
  v4 = +[ARPHomeControlSuggester defaultCorrelationsSessionFile];
  v5 = [(ARPHomeControlNextActionCorrelationTask *)v3 initWithCorrelationsFile:v4];

  [(ARPHomeControlNextActionCorrelationTask *)v5 execute];
}

- (void)microLocationEventInserted:(id)inserted
{
  queue = [(ARPCorrelationTaskScheduler *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__ARPCorrelationTaskScheduler_microLocationEventInserted___block_invoke;
  v8[3] = &unk_278C646A0;
  v8[4] = self;
  v5 = v8;
  v6 = os_transaction_create();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __cd_dispatch_async_capture_tx_block_invoke;
  block[3] = &unk_278C646F0;
  v10 = v6;
  v11 = v5;
  v7 = v6;
  dispatch_async(queue, block);
}

- (void)homeKitEventInserted
{
  queue = [(ARPCorrelationTaskScheduler *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__ARPCorrelationTaskScheduler_homeKitEventInserted__block_invoke;
  v7[3] = &unk_278C646A0;
  v7[4] = self;
  v4 = v7;
  v5 = os_transaction_create();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __cd_dispatch_async_capture_tx_block_invoke;
  block[3] = &unk_278C646F0;
  v9 = v5;
  v10 = v4;
  v6 = v5;
  dispatch_async(queue, block);
}

- (void)_executeCorrelationTask
{
  queue = [(ARPCorrelationTaskScheduler *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = [ARPCorrelationTask alloc];
  v5 = +[ARPRoutePredictor defaultFile];
  knowledgeStore = [(ARPCorrelationTaskScheduler *)self knowledgeStore];
  v7 = [(ARPCorrelationTask *)v4 initWithCorrelationsFile:v5 knowledgeStore:knowledgeStore];

  [(ARPCorrelationTask *)v7 execute];
}

- (void)executeCorrelationTask
{
  queue = [(ARPCorrelationTaskScheduler *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__ARPCorrelationTaskScheduler_executeCorrelationTask__block_invoke;
  block[3] = &unk_278C646A0;
  block[4] = self;
  dispatch_sync(queue, block);
}

@end