@interface ATDetailedProgressInfoForAssetType
+ (id)serializedProgressInfoFromATDetailedProgressInfoForAssetType:(id)a3;
- (ATDetailedProgressInfoForAssetType)initWithAssetType:(id)a3 assetCountToSync:(unint64_t)a4 byteCountToSync:(unint64_t)a5;
- (ATDetailedProgressInfoForAssetType)initWithAssetType:(id)a3 assetCountToSync:(unint64_t)a4 byteCountToSync:(unint64_t)a5 assetCountSynced:(unint64_t)a6 byteCountSyned:(unint64_t)a7;
- (void)_computeProgress;
- (void)updateAsset:(id)a3 syncedWithSuccess:(BOOL)a4 bytesDownloaded:(unint64_t)a5;
- (void)updateBytesDownloaded:(unint64_t)a3;
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

- (void)updateBytesDownloaded:(unint64_t)a3
{
  totalBytesToSync = self->_totalBytesSynced + a3;
  if (totalBytesToSync >= self->_totalBytesToSync)
  {
    totalBytesToSync = self->_totalBytesToSync;
  }

  self->_totalBytesSynced = totalBytesToSync;
  [(ATDetailedProgressInfoForAssetType *)self _computeProgress];
}

- (void)updateAsset:(id)a3 syncedWithSuccess:(BOOL)a4 bytesDownloaded:(unint64_t)a5
{
  v6 = a4;
  v8 = a3;
  if (v6)
  {
    ++self->_totalAssetsSynced;
    [(ATDetailedProgressInfoForAssetType *)self updateBytesDownloaded:a5];
  }

  else
  {
    ++self->_failedAssetCount;
    if (v8)
    {
      [(NSMutableSet *)self->failedAssetIds addObject:v8];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (ATDetailedProgressInfoForAssetType)initWithAssetType:(id)a3 assetCountToSync:(unint64_t)a4 byteCountToSync:(unint64_t)a5 assetCountSynced:(unint64_t)a6 byteCountSyned:(unint64_t)a7
{
  v13 = a3;
  v19.receiver = self;
  v19.super_class = ATDetailedProgressInfoForAssetType;
  v14 = [(ATDetailedProgressInfoForAssetType *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_atAssetType, a3);
    v15->_totalBytesToSync = a5;
    v15->_totalBytesSynced = a7;
    v15->_totalAssetsToSync = a4;
    v15->_totalAssetsSynced = a6;
    v15->_failedAssetCount = 0;
    v16 = [MEMORY[0x277CBEB58] set];
    failedAssetIds = v15->failedAssetIds;
    v15->failedAssetIds = v16;

    [(ATDetailedProgressInfoForAssetType *)v15 updateBytesDownloaded:0];
  }

  return v15;
}

- (ATDetailedProgressInfoForAssetType)initWithAssetType:(id)a3 assetCountToSync:(unint64_t)a4 byteCountToSync:(unint64_t)a5
{
  v9 = a3;
  v15.receiver = self;
  v15.super_class = ATDetailedProgressInfoForAssetType;
  v10 = [(ATDetailedProgressInfoForAssetType *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_atAssetType, a3);
    v11->_totalBytesToSync = a5;
    v11->_totalBytesSynced = 0;
    v11->_totalAssetsToSync = a4;
    v11->_totalAssetsSynced = 0;
    v11->_failedAssetCount = 0;
    v11->_progress = 0.0;
    v12 = [MEMORY[0x277CBEB58] set];
    failedAssetIds = v11->failedAssetIds;
    v11->failedAssetIds = v12;
  }

  return v11;
}

+ (id)serializedProgressInfoFromATDetailedProgressInfoForAssetType:(id)a3
{
  v3 = MEMORY[0x277CBEAC0];
  v4 = a3;
  v5 = [v4 getAssetType];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "getTotalBytesToSync")}];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "getTotalAssetsToSync")}];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "getTotalBytesSynced")}];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "getTotalAssetsSynced")}];
  v10 = MEMORY[0x277CCABB0];
  [v4 getSyncProgress];
  v11 = [v10 numberWithDouble:?];
  v12 = MEMORY[0x277CCABB0];
  v13 = [v4 getFailedAssetsCount];

  v14 = [v12 numberWithUnsignedLongLong:v13];
  v15 = [v3 dictionaryWithObjectsAndKeys:{v5, @"AssetType", v6, @"TotalBytesToSync", v7, @"TotalAssetsToSync", v8, @"TotalBytesSynced", v9, @"TotalAssetsSynced", v11, @"SyncProgressForType", v14, @"FailedAssetCount", 0}];

  return v15;
}

@end