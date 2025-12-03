@interface ATDetailedRequestInfoForAssetType
+ (id)serializedRequestInfoFromATDetailedRequestInfoForAssetType:(id)type;
- (ATDetailedRequestInfoForAssetType)init;
- (void)updateBytesToSync:(unint64_t)sync forItemIdentifier:(id)identifier;
@end

@implementation ATDetailedRequestInfoForAssetType

- (void)updateBytesToSync:(unint64_t)sync forItemIdentifier:(id)identifier
{
  self->_totalBytesToSync += sync;
  if (identifier)
  {
    mutableContributors = self->_mutableContributors;
    v6 = MEMORY[0x277CCABB0];
    identifierCopy = identifier;
    v8 = [v6 numberWithUnsignedLongLong:sync];
    [(NSMutableDictionary *)mutableContributors setObject:v8 forKey:identifierCopy];
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
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    mutableContributors = v3->_mutableContributors;
    v3->_mutableContributors = dictionary;
  }

  return v3;
}

+ (id)serializedRequestInfoFromATDetailedRequestInfoForAssetType:(id)type
{
  v3 = MEMORY[0x277CBEAC0];
  v4 = MEMORY[0x277CCABB0];
  typeCopy = type;
  v6 = [v4 numberWithUnsignedLongLong:{objc_msgSend(typeCopy, "getTotalAssetsToSync")}];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(typeCopy, "getTotalBytesToSync")}];
  v8 = MEMORY[0x277CCABB0];
  getTotalBytesSynced = [typeCopy getTotalBytesSynced];

  v10 = [v8 numberWithUnsignedLongLong:getTotalBytesSynced];
  v11 = [v3 dictionaryWithObjectsAndKeys:{v6, @"TotalAssetsToSync", v7, @"TotalBytesToSync", v10, @"TotalBytesSynced", 0}];

  return v11;
}

@end