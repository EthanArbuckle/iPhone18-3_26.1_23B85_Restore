@interface ATDetailedRequestInfoForAssetType
+ (id)serializedRequestInfoFromATDetailedRequestInfoForAssetType:(id)a3;
- (ATDetailedRequestInfoForAssetType)init;
- (void)updateBytesToSync:(unint64_t)a3 forItemIdentifier:(id)a4;
@end

@implementation ATDetailedRequestInfoForAssetType

- (void)updateBytesToSync:(unint64_t)a3 forItemIdentifier:(id)a4
{
  self->_totalBytesToSync += a3;
  if (a4)
  {
    mutableContributors = self->_mutableContributors;
    v6 = MEMORY[0x277CCABB0];
    v7 = a4;
    v8 = [v6 numberWithUnsignedLongLong:a3];
    [(NSMutableDictionary *)mutableContributors setObject:v8 forKey:v7];
  }
}

- (ATDetailedRequestInfoForAssetType)init
{
  v7.receiver = self;
  v7.super_class = ATDetailedRequestInfoForAssetType;
  v2 = [(ATDetailedRequestInfoForAssetType *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_totalBytesSynced = 0;
    v2->_totalBytesToSync = 0;
    v2->_totalAssetsToSync = 0;
    v4 = [MEMORY[0x277CBEB38] dictionary];
    mutableContributors = v3->_mutableContributors;
    v3->_mutableContributors = v4;
  }

  return v3;
}

+ (id)serializedRequestInfoFromATDetailedRequestInfoForAssetType:(id)a3
{
  v3 = MEMORY[0x277CBEAC0];
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithUnsignedLongLong:{objc_msgSend(v5, "getTotalAssetsToSync")}];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v5, "getTotalBytesToSync")}];
  v8 = MEMORY[0x277CCABB0];
  v9 = [v5 getTotalBytesSynced];

  v10 = [v8 numberWithUnsignedLongLong:v9];
  v11 = [v3 dictionaryWithObjectsAndKeys:{v6, @"TotalAssetsToSync", v7, @"TotalBytesToSync", v10, @"TotalBytesSynced", 0}];

  return v11;
}

@end