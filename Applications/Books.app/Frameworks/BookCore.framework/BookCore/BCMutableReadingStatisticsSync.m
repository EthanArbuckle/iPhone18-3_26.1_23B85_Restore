@interface BCMutableReadingStatisticsSync
- (BCMutableReadingStatisticsSync)initWithAssetID:(id)a3;
- (BCMutableReadingStatisticsSync)initWithCloudData:(id)a3;
- (BCMutableReadingStatisticsSync)initWithRecord:(id)a3;
- (NSString)debugDescription;
- (id)configuredRecordFromAttributes;
@end

@implementation BCMutableReadingStatisticsSync

- (BCMutableReadingStatisticsSync)initWithAssetID:(id)a3
{
  v4 = a3;
  if (!v4)
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
    v6 = [v4 copy];
    self = *(v5 + 1);
    *(v5 + 1) = v6;
LABEL_7:
  }

  return v5;
}

- (BCMutableReadingStatisticsSync)initWithCloudData:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = BCMutableReadingStatisticsSync;
  v5 = [(BCMutableReadingStatisticsSync *)&v18 initWithCloudData:v4];
  if (v5)
  {
    v6 = BUProtocolCast();
    v7 = v6;
    if (v6)
    {
      v8 = [v6 assetID];
      v9 = [v8 copy];
      assetID = v5->_assetID;
      v5->_assetID = v9;

      v11 = [v7 assetVersion];
      v12 = [v11 copy];
      assetVersion = v5->_assetVersion;
      v5->_assetVersion = v12;

      v14 = [v7 readingStatisticsBook];
      readingStatisticsBook = v5->_readingStatisticsBook;
      v5->_readingStatisticsBook = v14;
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

- (BCMutableReadingStatisticsSync)initWithRecord:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v11 = BCCloudKitLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1E8D54();
    }

    v5 = 0;
    goto LABEL_11;
  }

  v15.receiver = self;
  v15.super_class = BCMutableReadingStatisticsSync;
  v5 = [(BCMutableReadingStatisticsSync *)&v15 initWithRecord:v4];
  if (v5)
  {
    v6 = [BCCloudData localIdentifierFromRecord:v4];
    assetID = v5->_assetID;
    v5->_assetID = v6;

    v8 = [v4 objectForKey:@"assetVersion"];
    assetVersion = v5->_assetVersion;
    v5->_assetVersion = v8;

    objc_opt_class();
    v10 = [v4 objectForKey:@"assetStatistics"];
    self = BUDynamicCast();

    v11 = [(BCMutableReadingStatisticsSync *)self fileURL];
    if (v11)
    {
      v12 = [NSData dataWithContentsOfURL:v11];
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
  v3 = [(BCMutableReadingStatisticsSync *)self assetID];
  v4 = [(BCMutableReadingStatisticsSync *)self assetVersion];
  v5 = [(BCMutableReadingStatisticsSync *)self readingStatisticsBook];
  v6 = [NSString stringWithFormat:@"assetID: %@, assetVersion: %@, statistics: %@", v3, v4, v5];

  return v6;
}

- (id)configuredRecordFromAttributes
{
  v12.receiver = self;
  v12.super_class = BCMutableReadingStatisticsSync;
  v3 = [(BCMutableReadingStatisticsSync *)&v12 configuredRecordFromAttributes];
  v4 = [(BCMutableReadingStatisticsSync *)self assetVersion];
  [v3 setObject:v4 forKey:@"assetVersion"];

  v5 = +[BCReadingStatisticsSyncManager sharedInstance];
  v6 = [(BCMutableReadingStatisticsSync *)self assetID];
  v7 = [v5 fileURLForCachingCKAssetWithAssetID:v6];

  v8 = [(BCMutableReadingStatisticsSync *)self readingStatisticsBook];
  LODWORD(v5) = [v8 writeToURL:v7 atomically:1];

  if (v5)
  {
    v9 = [[CKAsset alloc] initWithFileURL:v7];
    [v3 setObject:v9 forKey:@"assetStatistics"];
  }

  else
  {
    v10 = BCReadingStatisticsLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1E8D90();
    }

    [v3 setObject:0 forKey:@"assetStatistics"];
  }

  return v3;
}

@end