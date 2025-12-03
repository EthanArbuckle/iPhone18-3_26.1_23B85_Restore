@interface ATAssetLinkPowerLogger
+ (id)sharedInstance;
- (ATAssetLinkPowerLogger)init;
- (id)_aggregatesForKey:(id)key createIfNotExistsWithTimestamp:(id)timestamp;
- (void)_flushMessagesToPowerlog;
- (void)_incrementCountForAggregates:(id)aggregates key:(id)key;
- (void)_scheduleFlushTimer;
- (void)logAssetLinkOfType:(int64_t)type didBeginDownloadingAsset:(id)asset;
- (void)logAssetLinkOfType:(int64_t)type didFinishAsset:(id)asset withError:(id)error;
@end

@implementation ATAssetLinkPowerLogger

- (void)_flushMessagesToPowerlog
{
  v10[1] = *MEMORY[0x277D85DE8];
  aggregation = [(ATAssetLinkPowerLogger *)self aggregation];
  allValues = [aggregation allValues];

  if ([allValues count])
  {
    v9 = @"messages";
    v10[0] = allValues;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    PLLogRegisteredEvent();
    aggregation2 = [(ATAssetLinkPowerLogger *)self aggregation];
    [aggregation2 removeAllObjects];
  }

  flushTimer = [(ATAssetLinkPowerLogger *)self flushTimer];

  if (flushTimer)
  {
    flushTimer2 = [(ATAssetLinkPowerLogger *)self flushTimer];
    dispatch_source_cancel(flushTimer2);

    [(ATAssetLinkPowerLogger *)self setFlushTimer:0];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_incrementCountForAggregates:(id)aggregates key:(id)key
{
  v5 = MEMORY[0x277CCABB0];
  keyCopy = key;
  aggregatesCopy = aggregates;
  v9 = [aggregatesCopy objectForKeyedSubscript:keyCopy];
  v8 = [v5 numberWithUnsignedInteger:{objc_msgSend(v9, "unsignedIntegerValue") + 1}];
  [aggregatesCopy setObject:v8 forKeyedSubscript:keyCopy];
}

- (id)_aggregatesForKey:(id)key createIfNotExistsWithTimestamp:(id)timestamp
{
  keyCopy = key;
  timestampCopy = timestamp;
  aggregation = [(ATAssetLinkPowerLogger *)self aggregation];
  v9 = [aggregation objectForKeyedSubscript:keyCopy];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v9 setObject:timestampCopy forKeyedSubscript:@"timestamp"];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(keyCopy, "linkType")}];
    [v9 setObject:v10 forKeyedSubscript:@"linkType"];

    dataclass = [keyCopy dataclass];
    [v9 setObject:dataclass forKeyedSubscript:@"dataclass"];

    assetType = [keyCopy assetType];
    if (assetType)
    {
      [keyCopy assetType];
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    v13 = ;
    [v9 setObject:v13 forKeyedSubscript:@"assetType"];

    aggregation2 = [(ATAssetLinkPowerLogger *)self aggregation];
    [aggregation2 setObject:v9 forKeyedSubscript:keyCopy];
  }

  return v9;
}

- (void)_scheduleFlushTimer
{
  flushTimer = [(ATAssetLinkPowerLogger *)self flushTimer];

  if (!flushTimer)
  {
    loggerQueue = [(ATAssetLinkPowerLogger *)self loggerQueue];
    v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, loggerQueue);
    [(ATAssetLinkPowerLogger *)self setFlushTimer:v5];

    flushTimer2 = [(ATAssetLinkPowerLogger *)self flushTimer];
    v7 = dispatch_walltime(0, 1800000000000);
    dispatch_source_set_timer(flushTimer2, v7, 0xFFFFFFFFFFFFFFFFLL, 0x29E8D60800uLL);

    flushTimer3 = [(ATAssetLinkPowerLogger *)self flushTimer];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __45__ATAssetLinkPowerLogger__scheduleFlushTimer__block_invoke;
    handler[3] = &unk_2784E94D0;
    handler[4] = self;
    dispatch_source_set_event_handler(flushTimer3, handler);

    flushTimer4 = [(ATAssetLinkPowerLogger *)self flushTimer];
    dispatch_resume(flushTimer4);
  }
}

- (void)logAssetLinkOfType:(int64_t)type didFinishAsset:(id)asset withError:(id)error
{
  assetCopy = asset;
  errorCopy = error;
  date = [MEMORY[0x277CBEAA8] date];
  dataclass = [assetCopy dataclass];
  assetType = [assetCopy assetType];
  totalBytes = [assetCopy totalBytes];
  if (errorCopy)
  {
    totalBytes -= [assetCopy bytesRemaining];
  }

  mEMORY[0x277D7FA90] = [MEMORY[0x277D7FA90] sharedMonitor];
  isCharging = [mEMORY[0x277D7FA90] isCharging];
  networkType = [mEMORY[0x277D7FA90] networkType];
  v16 = @"Unknown";
  v27 = mEMORY[0x277D7FA90];
  v26 = isCharging;
  v17 = assetType;
  if (networkType > 99)
  {
    if (networkType > 1000)
    {
      if (networkType == 1001)
      {
        v18 = date;
        v19 = dataclass;
        typeCopy4 = type;
        v16 = @"Bridged WiFi";
      }

      else
      {
        v19 = dataclass;
        v18 = date;
        typeCopy4 = type;
        if (networkType == 2000)
        {
          v16 = @"Wired Ethernet";
        }

        else if (networkType == 3000)
        {
          v16 = @"Other";
        }
      }
    }

    else
    {
      v18 = date;
      v19 = dataclass;
      typeCopy4 = type;
      switch(networkType)
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
    v18 = date;
    v19 = dataclass;
    typeCopy4 = type;
    if ((networkType - 1) < 8)
    {
LABEL_5:
      v16 = @"Cellular";
    }
  }

  loggerQueue = [(ATAssetLinkPowerLogger *)self loggerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__ATAssetLinkPowerLogger_logAssetLinkOfType_didFinishAsset_withError___block_invoke;
  block[3] = &unk_2784E93C0;
  v30 = v19;
  v31 = v17;
  selfCopy = self;
  v33 = v18;
  v36 = typeCopy4;
  v37 = totalBytes;
  v38 = v26;
  v34 = errorCopy;
  v35 = v16;
  v22 = errorCopy;
  v23 = v18;
  v24 = v17;
  v25 = v19;
  dispatch_async(loggerQueue, block);
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

- (void)logAssetLinkOfType:(int64_t)type didBeginDownloadingAsset:(id)asset
{
  v6 = MEMORY[0x277CBEAA8];
  assetCopy = asset;
  date = [v6 date];
  dataclass = [assetCopy dataclass];
  assetType = [assetCopy assetType];
  totalBytes = [assetCopy totalBytes];
  canUseCellularData = [assetCopy canUseCellularData];
  isForeground = [assetCopy isForeground];
  deviceWasChargingWhenEnqueued = [assetCopy deviceWasChargingWhenEnqueued];

  loggerQueue = [(ATAssetLinkPowerLogger *)self loggerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__ATAssetLinkPowerLogger_logAssetLinkOfType_didBeginDownloadingAsset___block_invoke;
  block[3] = &unk_2784E9398;
  v20 = dataclass;
  v21 = assetType;
  selfCopy = self;
  v23 = date;
  typeCopy = type;
  v25 = totalBytes;
  v26 = canUseCellularData;
  v27 = isForeground;
  v28 = deviceWasChargingWhenEnqueued;
  v16 = date;
  v17 = assetType;
  v18 = dataclass;
  dispatch_async(loggerQueue, block);
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
  block[4] = self;
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