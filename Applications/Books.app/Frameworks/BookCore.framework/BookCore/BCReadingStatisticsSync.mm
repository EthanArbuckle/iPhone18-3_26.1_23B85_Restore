@interface BCReadingStatisticsSync
- (BOOL)isEqualExceptForDate:(id)date ignoringEmptySalt:(BOOL)salt;
- (NSString)debugDescription;
- (id)mutableCopy;
- (void)_configureFromReadingStatistics:(id)statistics withMergers:(id)mergers;
- (void)_mergeInAssetID:(id)d assetVersion:(id)version serializedData:(id)data;
- (void)configureFromCloudData:(id)data withMergers:(id)mergers;
- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers;
@end

@implementation BCReadingStatisticsSync

- (id)mutableCopy
{
  v3 = [BCMutableReadingStatisticsSync alloc];

  return [(BCMutableReadingStatisticsSync *)v3 initWithCloudData:self];
}

- (void)configureFromCloudData:(id)data withMergers:(id)mergers
{
  mergersCopy = mergers;
  v6 = BUProtocolCast();
  if (v6)
  {
    [(BCReadingStatisticsSync *)self _configureFromReadingStatistics:v6 withMergers:mergersCopy];
  }

  else
  {
    v7 = BCCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E86C4();
    }
  }
}

- (BOOL)isEqualExceptForDate:(id)date ignoringEmptySalt:(BOOL)salt
{
  saltCopy = salt;
  dateCopy = date;
  v7 = BUProtocolCast();
  v17.receiver = self;
  v17.super_class = BCReadingStatisticsSync;
  LOBYTE(saltCopy) = [(BCReadingStatisticsSync *)&v17 isEqualExceptForDate:dateCopy ignoringEmptySalt:saltCopy];

  assetID = [(BCReadingStatisticsSync *)self assetID];
  assetID2 = [v7 assetID];
  v10 = [assetID isEqualToString:assetID2];

  assetVersion = [(BCReadingStatisticsSync *)self assetVersion];
  assetVersion2 = [v7 assetVersion];
  v13 = [assetVersion isEqualToString:assetVersion2];

  readingStatisticsBook = [(BCReadingStatisticsSync *)self readingStatisticsBook];
  readingStatisticsBook2 = [v7 readingStatisticsBook];
  LOBYTE(assetVersion2) = [readingStatisticsBook isEqual:readingStatisticsBook2];

  return saltCopy & v10 & v13 & assetVersion2;
}

- (void)_configureFromReadingStatistics:(id)statistics withMergers:(id)mergers
{
  statisticsCopy = statistics;
  v11.receiver = self;
  v11.super_class = BCReadingStatisticsSync;
  [(BCReadingStatisticsSync *)&v11 configureFromCloudData:statisticsCopy withMergers:mergers];
  assetID = [statisticsCopy assetID];
  assetVersion = [statisticsCopy assetVersion];
  readingStatisticsBook = [statisticsCopy readingStatisticsBook];
  [(BCReadingStatisticsSync *)self _mergeInAssetID:assetID assetVersion:assetVersion serializedData:readingStatisticsBook];

  v10 = BCCloudKitLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1E8700(self, statisticsCopy, v10);
  }
}

- (void)_mergeInAssetID:(id)d assetVersion:(id)version serializedData:(id)data
{
  dCopy = d;
  versionCopy = version;
  dataCopy = data;
  v11 = objc_alloc_init(BCReadingStatisticsProtoBook);
  v12 = [[PBDataReader alloc] initWithData:dataCopy];
  if (!BCReadingStatisticsProtoBookReadFrom(v11, v12))
  {
    v50 = BCCloudKitLog();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      sub_1E87E8(self);
    }

    goto LABEL_60;
  }

  assetID = [(BCReadingStatisticsSync *)self assetID];
  v14 = [assetID isEqualToString:dCopy];

  if ((v14 & 1) == 0)
  {
    v15 = BCCloudKitLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1E8874(self);
    }

    [(BCReadingStatisticsSync *)self setAssetID:dCopy];
  }

  v16 = objc_alloc_init(BCReadingStatisticsProtoBook);
  [(BCReadingStatisticsProtoBook *)v16 setAssetID:dCopy];
  v17 = +[BCReadingStatisticsSyncManager sharedInstance];
  _appVersion = [v17 _appVersion];
  [(BCReadingStatisticsProtoBook *)v16 setAppVersion:_appVersion];

  readingStatisticsBook = [(BCReadingStatisticsSync *)self readingStatisticsBook];
  v20 = [readingStatisticsBook length];

  if (!v20)
  {
LABEL_59:
    [(BCReadingStatisticsSync *)self setAssetVersion:versionCopy];
    v75 = objc_alloc_init(PBDataWriter);
    [(BCReadingStatisticsProtoBook *)v16 writeTo:v75];
    immutableData = [v75 immutableData];
    [(BCReadingStatisticsSync *)self setReadingStatisticsBook:immutableData];

    v50 = v16;
    goto LABEL_60;
  }

  v21 = [PBDataReader alloc];
  readingStatisticsBook2 = [(BCReadingStatisticsSync *)self readingStatisticsBook];
  v23 = [v21 initWithData:readingStatisticsBook2];

  if ((BCReadingStatisticsProtoBookReadFrom(v16, v23) & 1) == 0)
  {
    v51 = BCCloudKitLog();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      sub_1E8918(self);
    }

    goto LABEL_59;
  }

  v79 = v12;
  selfCopy = self;
  v83 = versionCopy;
  v84 = dCopy;

  v78 = v16;
  v24 = v16;
  v85 = v11;
  v25 = +[NSMutableDictionary dictionary];
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v86 = v24;
  tocEntrys = [(BCReadingStatisticsProtoBook *)v24 tocEntrys];
  v27 = [tocEntrys countByEnumeratingWithState:&v96 objects:v107 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v97;
    do
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v97 != v29)
        {
          objc_enumerationMutation(tocEntrys);
        }

        v31 = *(*(&v96 + 1) + 8 * i);
        href = [v31 href];
        [v25 setObject:v31 forKeyedSubscript:href];
      }

      v28 = [tocEntrys countByEnumeratingWithState:&v96 objects:v107 count:16];
    }

    while (v28);
  }

  v81 = v11;
  v82 = dataCopy;

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  tocEntrys2 = [(BCReadingStatisticsProtoBook *)v85 tocEntrys];
  v34 = [tocEntrys2 countByEnumeratingWithState:&v92 objects:v106 count:16];
  if (!v34)
  {
    v36 = 0;
    goto LABEL_38;
  }

  v35 = v34;
  v36 = 0;
  v37 = *v93;
  do
  {
    for (j = 0; j != v35; j = j + 1)
    {
      if (*v93 != v37)
      {
        objc_enumerationMutation(tocEntrys2);
      }

      v39 = *(*(&v92 + 1) + 8 * j);
      href2 = [v39 href];
      v41 = [v25 objectForKeyedSubscript:href2];
      if (v41)
      {
        v42 = v41;
        [v39 readProportion];
        v44 = v43;
        [(BCReadingStatisticsProtoTOCEntry *)v42 readProportion];
        if (v44 <= v45)
        {
          goto LABEL_29;
        }

        v46 = BCReadingStatisticsLog();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          [v39 readProportion];
          *buf = 138412546;
          v103 = href2;
          v104 = 2048;
          v105 = v47 * 100.0;
          _os_log_impl(&dword_0, v46, OS_LOG_TYPE_INFO, "Reading statistics updated: %@ now %.0lf%% read", buf, 0x16u);
        }

        [v39 readProportion];
        [(BCReadingStatisticsProtoTOCEntry *)v42 setReadProportion:?];
        [v39 timestamp];
        [(BCReadingStatisticsProtoTOCEntry *)v42 setTimestamp:?];
      }

      else
      {
        v42 = objc_alloc_init(BCReadingStatisticsProtoTOCEntry);
        [v39 copyTo:v42];
        [v86 addTocEntry:v42];
        v48 = BCReadingStatisticsLog();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          [v39 readProportion];
          *buf = 138412546;
          v103 = href2;
          v104 = 2048;
          v105 = v49 * 100.0;
          _os_log_impl(&dword_0, v48, OS_LOG_TYPE_INFO, "Reading statistics updated: %@ now %.0lf%% read", buf, 0x16u);
        }
      }

      v36 = 1;
LABEL_29:
    }

    v35 = [tocEntrys2 countByEnumeratingWithState:&v92 objects:v106 count:16];
  }

  while (v35);
LABEL_38:

  v52 = +[(BCCFISet *)BCMutableCFISet];
  readCFIs = [v86 readCFIs];
  v54 = readCFIs;
  if (readCFIs)
  {
    v55 = readCFIs;
  }

  else
  {
    v55 = &__NSArray0__struct;
  }

  v56 = v55;

  readCFIs2 = [(BCReadingStatisticsProtoBook *)v85 readCFIs];
  v58 = readCFIs2;
  if (readCFIs2)
  {
    v59 = readCFIs2;
  }

  else
  {
    v59 = &__NSArray0__struct;
  }

  v77 = v56;
  v60 = [v56 arrayByAddingObjectsFromArray:v59];

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v61 = v60;
  v62 = [v61 countByEnumeratingWithState:&v88 objects:buf count:16];
  if (v62)
  {
    v63 = v62;
    v64 = *v89;
    do
    {
      for (k = 0; k != v63; k = k + 1)
      {
        if (*v89 != v64)
        {
          objc_enumerationMutation(v61);
        }

        v66 = *(*(&v88 + 1) + 8 * k);
        v87 = 0;
        [v52 addCFIString:v66 error:&v87];
        v67 = v87;
        if (v67)
        {
          v68 = BCReadingStatisticsLog();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
          {
            *v100 = 138543362;
            v101 = v67;
            _os_log_error_impl(&dword_0, v68, OS_LOG_TYPE_ERROR, "Error merging read CFIs: %{public}@", v100, 0xCu);
          }
        }
      }

      v63 = [v61 countByEnumeratingWithState:&v88 objects:buf count:16];
    }

    while (v63);
  }

  allCFIStrings = [v52 allCFIStrings];
  v70 = [allCFIStrings mutableCopy];
  v50 = v86;
  [v86 setReadCFIs:v70];

  if (v36)
  {
    v71 = 1;
    versionCopy = v83;
    dCopy = v84;
    dataCopy = v82;
    v72 = v77;
  }

  else
  {
    readCFIs3 = [v86 readCFIs];
    v72 = v77;
    v74 = [v77 isEqual:readCFIs3] ^ 1;

    v71 = v74;
    versionCopy = v83;
    dCopy = v84;
    dataCopy = v82;
  }

  self = selfCopy;
  v11 = v81;
  v16 = v78;
  v12 = v79;
  if (v71)
  {
    goto LABEL_59;
  }

LABEL_60:
}

- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers
{
  recordCopy = record;
  v16.receiver = self;
  v16.super_class = BCReadingStatisticsSync;
  [(BCReadingStatisticsSync *)&v16 resolveConflictsFromRecord:recordCopy withResolvers:resolvers];
  if (recordCopy)
  {
    v7 = [BCCloudData localIdentifierFromRecord:recordCopy];
    objc_opt_class();
    v8 = [recordCopy objectForKey:@"assetStatistics"];
    v9 = BUDynamicCast();
    fileURL = [v9 fileURL];

    if (fileURL)
    {
      v11 = [NSData dataWithContentsOfURL:fileURL];
    }

    else
    {
      v11 = 0;
    }

    if (-[NSObject length](v7, "length") && [v11 length])
    {
      v12 = [recordCopy objectForKeyedSubscript:@"assetVersion"];
      [(BCReadingStatisticsSync *)self _mergeInAssetID:v7 assetVersion:v12 serializedData:v11];

      hasChanges = [(BCReadingStatisticsSync *)self hasChanges];
      v14 = BCReadingStatisticsLog();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
      if (hasChanges)
      {
        if (v15)
        {
          sub_1E8A78(self, recordCopy);
        }
      }

      else if (v15)
      {
        sub_1E89A4(self, recordCopy);
      }
    }

    else
    {
      v14 = BCReadingStatisticsLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1E8B4C(self);
      }
    }
  }

  else
  {
    v7 = BCCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E8BD8(self);
    }
  }
}

- (NSString)debugDescription
{
  assetID = [(BCReadingStatisticsSync *)self assetID];
  assetVersion = [(BCReadingStatisticsSync *)self assetVersion];
  readingStatisticsBook = [(BCReadingStatisticsSync *)self readingStatisticsBook];
  v6 = [NSString stringWithFormat:@"assetID: %@, assetVersion: %@, statistics: %@", assetID, assetVersion, readingStatisticsBook];

  return v6;
}

@end