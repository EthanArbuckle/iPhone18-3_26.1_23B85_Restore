@interface ATDetailedProgressInfoForAssetType
+ (id)serializedProgressInfoFromATDetailedProgressInfoForAssetType:(id)type;
- (ATDetailedProgressInfoForAssetType)initWithAssetType:(id)type assetCountToSync:(unint64_t)sync byteCountToSync:(unint64_t)toSync;
- (ATDetailedProgressInfoForAssetType)initWithAssetType:(id)type assetCountToSync:(unint64_t)sync byteCountToSync:(unint64_t)toSync assetCountSynced:(unint64_t)synced byteCountSyned:(unint64_t)syned;
- (void)_computeProgress;
- (void)updateAsset:(id)asset syncedWithSuccess:(BOOL)success bytesDownloaded:(unint64_t)downloaded;
- (void)updateBytesDownloaded:(unint64_t)downloaded;
@end

@implementation ATDetailedProgressInfoForAssetType

- (void)_computeProgress
{
  totalBytesToSync = self->_totalBytesToSync;
  if (totalBytesToSync)
  {
    self->_progress = self->_totalBytesSynced / totalBytesToSync;
  }
}

- (void)updateBytesDownloaded:(unint64_t)downloaded
{
  totalBytesToSync = self->_totalBytesSynced + downloaded;
  if (totalBytesToSync >= self->_totalBytesToSync)
  {
    totalBytesToSync = self->_totalBytesToSync;
  }

  self->_totalBytesSynced = totalBytesToSync;
  [(ATDetailedProgressInfoForAssetType *)self _computeProgress];
}

- (void)updateAsset:(id)asset syncedWithSuccess:(BOOL)success bytesDownloaded:(unint64_t)downloaded
{
  successCopy = success;
  assetCopy = asset;
  if (successCopy)
  {
    ++self->_totalAssetsSynced;
    [(ATDetailedProgressInfoForAssetType *)self updateBytesDownloaded:downloaded];
  }

  else
  {
    ++self->_failedAssetCount;
    if (assetCopy)
    {
      [(NSMutableSet *)self->failedAssetIds addObject:assetCopy];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (ATDetailedProgressInfoForAssetType)initWithAssetType:(id)type assetCountToSync:(unint64_t)sync byteCountToSync:(unint64_t)toSync assetCountSynced:(unint64_t)synced byteCountSyned:(unint64_t)syned
{
  typeCopy = type;
  v19.receiver = self;
  v19.super_class = ATDetailedProgressInfoForAssetType;
  v14 = [(ATDetailedProgressInfoForAssetType *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_atAssetType, type);
    v15->_totalBytesToSync = toSync;
    v15->_totalBytesSynced = syned;
    v15->_totalAssetsToSync = sync;
    v15->_totalAssetsSynced = synced;
    v15->_failedAssetCount = 0;
    v16 = [MEMORY[0x277CBEB58] set];
    failedAssetIds = v15->failedAssetIds;
    v15->failedAssetIds = v16;

    [(ATDetailedProgressInfoForAssetType *)v15 updateBytesDownloaded:0];
  }

  return v15;
}

- (ATDetailedProgressInfoForAssetType)initWithAssetType:(id)type assetCountToSync:(unint64_t)sync byteCountToSync:(unint64_t)toSync
{
  typeCopy = type;
  v15.receiver = self;
  v15.super_class = ATDetailedProgressInfoForAssetType;
  v10 = [(ATDetailedProgressInfoForAssetType *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_atAssetType, type);
    v11->_totalBytesToSync = toSync;
    v11->_totalBytesSynced = 0;
    v11->_totalAssetsToSync = sync;
    v11->_totalAssetsSynced = 0;
    v11->_failedAssetCount = 0;
    v11->_progress = 0.0;
    v12 = [MEMORY[0x277CBEB58] set];
    failedAssetIds = v11->failedAssetIds;
    v11->failedAssetIds = v12;
  }

  return v11;
}

+ (id)serializedProgressInfoFromATDetailedProgressInfoForAssetType:(id)type
{
  v3 = MEMORY[0x277CBEAC0];
  typeCopy = type;
  getAssetType = [typeCopy getAssetType];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(typeCopy, "getTotalBytesToSync")}];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(typeCopy, "getTotalAssetsToSync")}];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(typeCopy, "getTotalBytesSynced")}];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(typeCopy, "getTotalAssetsSynced")}];
  v10 = MEMORY[0x277CCABB0];
  [typeCopy getSyncProgress];
  v11 = [v10 numberWithDouble:?];
  v12 = MEMORY[0x277CCABB0];
  getFailedAssetsCount = [typeCopy getFailedAssetsCount];

  v14 = [v12 numberWithUnsignedLongLong:getFailedAssetsCount];
  v15 = [v3 dictionaryWithObjectsAndKeys:{getAssetType, @"AssetType", v6, @"TotalBytesToSync", v7, @"TotalAssetsToSync", v8, @"TotalBytesSynced", v9, @"TotalAssetsSynced", v11, @"SyncProgressForType", v14, @"FailedAssetCount", 0}];

  return v15;
}

@end