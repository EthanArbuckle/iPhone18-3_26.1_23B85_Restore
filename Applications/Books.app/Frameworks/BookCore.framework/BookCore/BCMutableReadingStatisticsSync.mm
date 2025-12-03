@interface BCMutableReadingStatisticsSync
- (BCMutableReadingStatisticsSync)initWithAssetID:(id)d;
- (BCMutableReadingStatisticsSync)initWithCloudData:(id)data;
- (BCMutableReadingStatisticsSync)initWithRecord:(id)record;
- (NSString)debugDescription;
- (id)configuredRecordFromAttributes;
@end

@implementation BCMutableReadingStatisticsSync

- (BCMutableReadingStatisticsSync)initWithAssetID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    v7 = BCCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E8C64();
    }

    v5 = 0;
    goto LABEL_7;
  }

  v9.receiver = self;
  v9.super_class = BCMutableReadingStatisticsSync;
  v5 = [(BCMutableReadingStatisticsSync *)&v9 init];
  if (v5)
  {
    v6 = [dCopy copy];
    self = *(v5 + 1);
    *(v5 + 1) = v6;
LABEL_7:
  }

  return v5;
}

- (BCMutableReadingStatisticsSync)initWithCloudData:(id)data
{
  dataCopy = data;
  v18.receiver = self;
  v18.super_class = BCMutableReadingStatisticsSync;
  v5 = [(BCMutableReadingStatisticsSync *)&v18 initWithCloudData:dataCopy];
  if (v5)
  {
    v6 = BUProtocolCast();
    v7 = v6;
    if (v6)
    {
      assetID = [v6 assetID];
      v9 = [assetID copy];
      assetID = v5->_assetID;
      v5->_assetID = v9;

      assetVersion = [v7 assetVersion];
      v12 = [assetVersion copy];
      assetVersion = v5->_assetVersion;
      v5->_assetVersion = v12;

      readingStatisticsBook = [v7 readingStatisticsBook];
      readingStatisticsBook = v5->_readingStatisticsBook;
      v5->_readingStatisticsBook = readingStatisticsBook;
    }

    else
    {
      v16 = BCCloudKitLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1E8CA0();
      }

      readingStatisticsBook = v5;
      v5 = 0;
    }
  }

  return v5;
}

- (BCMutableReadingStatisticsSync)initWithRecord:(id)record
{
  recordCopy = record;
  if (!recordCopy)
  {
    fileURL = BCCloudKitLog();
    if (os_log_type_enabled(fileURL, OS_LOG_TYPE_ERROR))
    {
      sub_1E8D54();
    }

    v5 = 0;
    goto LABEL_11;
  }

  v15.receiver = self;
  v15.super_class = BCMutableReadingStatisticsSync;
  v5 = [(BCMutableReadingStatisticsSync *)&v15 initWithRecord:recordCopy];
  if (v5)
  {
    v6 = [BCCloudData localIdentifierFromRecord:recordCopy];
    assetID = v5->_assetID;
    v5->_assetID = v6;

    v8 = [recordCopy objectForKey:@"assetVersion"];
    assetVersion = v5->_assetVersion;
    v5->_assetVersion = v8;

    objc_opt_class();
    v10 = [recordCopy objectForKey:@"assetStatistics"];
    self = BUDynamicCast();

    fileURL = [(BCMutableReadingStatisticsSync *)self fileURL];
    if (fileURL)
    {
      v12 = [NSData dataWithContentsOfURL:fileURL];
      p_super = &v5->_readingStatisticsBook->super;
      v5->_readingStatisticsBook = v12;
    }

    else
    {
      p_super = BCReadingStatisticsLog();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        sub_1E8CDC();
      }
    }

LABEL_11:
  }

  return v5;
}

- (NSString)debugDescription
{
  assetID = [(BCMutableReadingStatisticsSync *)self assetID];
  assetVersion = [(BCMutableReadingStatisticsSync *)self assetVersion];
  readingStatisticsBook = [(BCMutableReadingStatisticsSync *)self readingStatisticsBook];
  v6 = [NSString stringWithFormat:@"assetID: %@, assetVersion: %@, statistics: %@", assetID, assetVersion, readingStatisticsBook];

  return v6;
}

- (id)configuredRecordFromAttributes
{
  v12.receiver = self;
  v12.super_class = BCMutableReadingStatisticsSync;
  configuredRecordFromAttributes = [(BCMutableReadingStatisticsSync *)&v12 configuredRecordFromAttributes];
  assetVersion = [(BCMutableReadingStatisticsSync *)self assetVersion];
  [configuredRecordFromAttributes setObject:assetVersion forKey:@"assetVersion"];

  v5 = +[BCReadingStatisticsSyncManager sharedInstance];
  assetID = [(BCMutableReadingStatisticsSync *)self assetID];
  v7 = [v5 fileURLForCachingCKAssetWithAssetID:assetID];

  readingStatisticsBook = [(BCMutableReadingStatisticsSync *)self readingStatisticsBook];
  LODWORD(v5) = [readingStatisticsBook writeToURL:v7 atomically:1];

  if (v5)
  {
    v9 = [[CKAsset alloc] initWithFileURL:v7];
    [configuredRecordFromAttributes setObject:v9 forKey:@"assetStatistics"];
  }

  else
  {
    v10 = BCReadingStatisticsLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1E8D90();
    }

    [configuredRecordFromAttributes setObject:0 forKey:@"assetStatistics"];
  }

  return configuredRecordFromAttributes;
}

@end