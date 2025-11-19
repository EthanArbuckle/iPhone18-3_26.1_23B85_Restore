@interface ATAssetLinkPowerLogger
+ (id)sharedInstance;
- (ATAssetLinkPowerLogger)init;
- (id)_aggregatesForKey:(id)a3 createIfNotExistsWithTimestamp:(id)a4;
- (void)_flushMessagesToPowerlog;
- (void)_incrementCountForAggregates:(id)a3 key:(id)a4;
- (void)_scheduleFlushTimer;
- (void)logAssetLinkOfType:(int64_t)a3 didBeginDownloadingAsset:(id)a4;
- (void)logAssetLinkOfType:(int64_t)a3 didFinishAsset:(id)a4 withError:(id)a5;
@end

@implementation ATAssetLinkPowerLogger

- (void)_flushMessagesToPowerlog
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [(ATAssetLinkPowerLogger *)self aggregation];
  v4 = [v3 allValues];

  if ([v4 count])
  {
    v9 = @"messages";
    v10[0] = v4;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    PLLogRegisteredEvent();
    v5 = [(ATAssetLinkPowerLogger *)self aggregation];
    [v5 removeAllObjects];
  }

  v6 = [(ATAssetLinkPowerLogger *)self flushTimer];

  if (v6)
  {
    v7 = [(ATAssetLinkPowerLogger *)self flushTimer];
    dispatch_source_cancel(v7);

    [(ATAssetLinkPowerLogger *)self setFlushTimer:0];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_incrementCountForAggregates:(id)a3 key:(id)a4
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a4;
  v7 = a3;
  v9 = [v7 objectForKeyedSubscript:v6];
  v8 = [v5 numberWithUnsignedInteger:{objc_msgSend(v9, "unsignedIntegerValue") + 1}];
  [v7 setObject:v8 forKeyedSubscript:v6];
}

- (id)_aggregatesForKey:(id)a3 createIfNotExistsWithTimestamp:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ATAssetLinkPowerLogger *)self aggregation];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v9 setObject:v7 forKeyedSubscript:@"timestamp"];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "linkType")}];
    [v9 setObject:v10 forKeyedSubscript:@"linkType"];

    v11 = [v6 dataclass];
    [v9 setObject:v11 forKeyedSubscript:@"dataclass"];

    v12 = [v6 assetType];
    if (v12)
    {
      [v6 assetType];
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    v13 = ;
    [v9 setObject:v13 forKeyedSubscript:@"assetType"];

    v14 = [(ATAssetLinkPowerLogger *)self aggregation];
    [v14 setObject:v9 forKeyedSubscript:v6];
  }

  return v9;
}

- (void)_scheduleFlushTimer
{
  v3 = [(ATAssetLinkPowerLogger *)self flushTimer];

  if (!v3)
  {
    v4 = [(ATAssetLinkPowerLogger *)self loggerQueue];
    v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v4);
    [(ATAssetLinkPowerLogger *)self setFlushTimer:v5];

    v6 = [(ATAssetLinkPowerLogger *)self flushTimer];
    v7 = dispatch_walltime(0, 1800000000000);
    dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x29E8D60800uLL);

    v8 = [(ATAssetLinkPowerLogger *)self flushTimer];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __45__ATAssetLinkPowerLogger__scheduleFlushTimer__block_invoke;
    handler[3] = &unk_2784E94D0;
    handler[4] = self;
    dispatch_source_set_event_handler(v8, handler);

    v9 = [(ATAssetLinkPowerLogger *)self flushTimer];
    dispatch_resume(v9);
  }
}

- (void)logAssetLinkOfType:(int64_t)a3 didFinishAsset:(id)a4 withError:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [MEMORY[0x277CBEAA8] date];
  v10 = [v7 dataclass];
  v11 = [v7 assetType];
  v12 = [v7 totalBytes];
  if (v8)
  {
    v12 -= [v7 bytesRemaining];
  }

  v13 = [MEMORY[0x277D7FA90] sharedMonitor];
  v14 = [v13 isCharging];
  v15 = [v13 networkType];
  v16 = @"Unknown";
  v27 = v13;
  v26 = v14;
  v17 = v11;
  if (v15 > 99)
  {
    if (v15 > 1000)
    {
      if (v15 == 1001)
      {
        v18 = v9;
        v19 = v10;
        v20 = a3;
        v16 = @"Bridged WiFi";
      }

      else
      {
        v19 = v10;
        v18 = v9;
        v20 = a3;
        if (v15 == 2000)
        {
          v16 = @"Wired Ethernet";
        }

        else if (v15 == 3000)
        {
          v16 = @"Other";
        }
      }
    }

    else
    {
      v18 = v9;
      v19 = v10;
      v20 = a3;
      switch(v15)
      {
        case 100:
          goto LABEL_5;
        case 500:
          v16 = @"Bluetooth";
          break;
        case 1000:
          v16 = @"WiFi";
          break;
      }
    }
  }

  else
  {
    v18 = v9;
    v19 = v10;
    v20 = a3;
    if ((v15 - 1) < 8)
    {
LABEL_5:
      v16 = @"Cellular";
    }
  }

  v21 = [(ATAssetLinkPowerLogger *)self loggerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__ATAssetLinkPowerLogger_logAssetLinkOfType_didFinishAsset_withError___block_invoke;
  block[3] = &unk_2784E93C0;
  v30 = v19;
  v31 = v17;
  v32 = self;
  v33 = v18;
  v36 = v20;
  v37 = v12;
  v38 = v26;
  v34 = v8;
  v35 = v16;
  v22 = v8;
  v23 = v18;
  v24 = v17;
  v25 = v19;
  dispatch_async(v21, block);
}

void __70__ATAssetLinkPowerLogger_logAssetLinkOfType_didFinishAsset_withError___block_invoke(uint64_t a1)
{
  v2 = [[ATAssetLinkPowerLoggerAggregationKey alloc] initWithLinkType:*(a1 + 80) dataclass:*(a1 + 32) assetType:*(a1 + 40)];
  v3 = *(a1 + 56);
  v10 = v2;
  v4 = [*(a1 + 48) _aggregatesForKey:? createIfNotExistsWithTimestamp:?];
  v5 = MEMORY[0x277CCABB0];
  v6 = [v4 objectForKeyedSubscript:@"sumBytesDownloaded"];
  v7 = [v5 numberWithUnsignedLongLong:{*(a1 + 88) + objc_msgSend(v6, "unsignedLongLongValue")}];
  [v4 setObject:v7 forKeyedSubscript:@"sumBytesDownloaded"];

  if (*(a1 + 64))
  {
    v8 = @"countDownloadsFailed";
  }

  else
  {
    v8 = @"countDownloadsSucceeded";
  }

  [*(a1 + 48) _incrementCountForAggregates:v4 key:v8];
  if (*(a1 + 96) == 1)
  {
    [*(a1 + 48) _incrementCountForAggregates:v4 key:@"countFinishedOnCharger"];
  }

  v9 = [v4 objectForKeyedSubscript:@"countNetworkTypes"];
  if (!v9)
  {
    v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
    [v4 setObject:v9 forKeyedSubscript:@"countNetworkTypes"];
  }

  [*(a1 + 48) _incrementCountForAggregates:v9 key:*(a1 + 72)];
  [v4 setObject:*(a1 + 56) forKeyedSubscript:@"timestampEnd"];
  [*(a1 + 48) _scheduleFlushTimer];
}

- (void)logAssetLinkOfType:(int64_t)a3 didBeginDownloadingAsset:(id)a4
{
  v6 = MEMORY[0x277CBEAA8];
  v7 = a4;
  v8 = [v6 date];
  v9 = [v7 dataclass];
  v10 = [v7 assetType];
  v11 = [v7 totalBytes];
  v12 = [v7 canUseCellularData];
  v13 = [v7 isForeground];
  v14 = [v7 deviceWasChargingWhenEnqueued];

  v15 = [(ATAssetLinkPowerLogger *)self loggerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__ATAssetLinkPowerLogger_logAssetLinkOfType_didBeginDownloadingAsset___block_invoke;
  block[3] = &unk_2784E9398;
  v20 = v9;
  v21 = v10;
  v22 = self;
  v23 = v8;
  v24 = a3;
  v25 = v11;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v16 = v8;
  v17 = v10;
  v18 = v9;
  dispatch_async(v15, block);
}

void __70__ATAssetLinkPowerLogger_logAssetLinkOfType_didBeginDownloadingAsset___block_invoke(uint64_t a1)
{
  v2 = [[ATAssetLinkPowerLoggerAggregationKey alloc] initWithLinkType:*(a1 + 64) dataclass:*(a1 + 32) assetType:*(a1 + 40)];
  v3 = *(a1 + 56);
  v8 = v2;
  v4 = [*(a1 + 48) _aggregatesForKey:? createIfNotExistsWithTimestamp:?];
  v5 = MEMORY[0x277CCABB0];
  v6 = [v4 objectForKeyedSubscript:@"sumBytesRequested"];
  v7 = [v5 numberWithUnsignedLongLong:{*(a1 + 72) + objc_msgSend(v6, "unsignedLongLongValue")}];
  [v4 setObject:v7 forKeyedSubscript:@"sumBytesRequested"];

  [*(a1 + 48) _incrementCountForAggregates:v4 key:@"countDownloadsBegun"];
  if (*(a1 + 80) == 1)
  {
    [*(a1 + 48) _incrementCountForAggregates:v4 key:@"countCanUseCellular"];
  }

  if (*(a1 + 81) == 1)
  {
    [*(a1 + 48) _incrementCountForAggregates:v4 key:@"countIsForeground"];
  }

  if (*(a1 + 82) == 1)
  {
    [*(a1 + 48) _incrementCountForAggregates:v4 key:@"countEnqueuedOnCharger"];
  }

  [v4 setObject:*(a1 + 56) forKeyedSubscript:@"timestampEnd"];
  [*(a1 + 48) _scheduleFlushTimer];
}

- (ATAssetLinkPowerLogger)init
{
  v11.receiver = self;
  v11.super_class = ATAssetLinkPowerLogger;
  v2 = [(ATAssetLinkPowerLogger *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    aggregation = v2->_aggregation;
    v2->_aggregation = v3;

    v5 = objc_opt_class();
    Name = class_getName(v5);
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v8 = dispatch_queue_create(Name, v7);
    loggerQueue = v2->_loggerQueue;
    v2->_loggerQueue = v8;
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__ATAssetLinkPowerLogger_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_1749 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1749, block);
  }

  v2 = sharedInstance_logger;

  return v2;
}

uint64_t __40__ATAssetLinkPowerLogger_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance_logger = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

@end