@interface BCReadingStatisticsSync
- (BOOL)isEqualExceptForDate:(id)a3 ignoringEmptySalt:(BOOL)a4;
- (NSString)debugDescription;
- (id)mutableCopy;
- (void)_configureFromReadingStatistics:(id)a3 withMergers:(id)a4;
- (void)_mergeInAssetID:(id)a3 assetVersion:(id)a4 serializedData:(id)a5;
- (void)configureFromCloudData:(id)a3 withMergers:(id)a4;
- (void)resolveConflictsFromRecord:(id)a3 withResolvers:(id)a4;
@end

@implementation BCReadingStatisticsSync

- (id)mutableCopy
{
  v3 = [BCMutableReadingStatisticsSync alloc];

  return [(BCMutableReadingStatisticsSync *)v3 initWithCloudData:self];
}

- (void)configureFromCloudData:(id)a3 withMergers:(id)a4
{
  v5 = a4;
  v6 = BUProtocolCast();
  if (v6)
  {
    [(BCReadingStatisticsSync *)self _configureFromReadingStatistics:v6 withMergers:v5];
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

- (BOOL)isEqualExceptForDate:(id)a3 ignoringEmptySalt:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = BUProtocolCast();
  v17.receiver = self;
  v17.super_class = BCReadingStatisticsSync;
  LOBYTE(v4) = [(BCReadingStatisticsSync *)&v17 isEqualExceptForDate:v6 ignoringEmptySalt:v4];

  v8 = [(BCReadingStatisticsSync *)self assetID];
  v9 = [v7 assetID];
  v10 = [v8 isEqualToString:v9];

  v11 = [(BCReadingStatisticsSync *)self assetVersion];
  v12 = [v7 assetVersion];
  v13 = [v11 isEqualToString:v12];

  v14 = [(BCReadingStatisticsSync *)self readingStatisticsBook];
  v15 = [v7 readingStatisticsBook];
  LOBYTE(v12) = [v14 isEqual:v15];

  return v4 & v10 & v13 & v12;
}

- (void)_configureFromReadingStatistics:(id)a3 withMergers:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = BCReadingStatisticsSync;
  [(BCReadingStatisticsSync *)&v11 configureFromCloudData:v6 withMergers:a4];
  v7 = [v6 assetID];
  v8 = [v6 assetVersion];
  v9 = [v6 readingStatisticsBook];
  [(BCReadingStatisticsSync *)self _mergeInAssetID:v7 assetVersion:v8 serializedData:v9];

  v10 = BCCloudKitLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1E8700(self, v6, v10);
  }
}

- (void)_mergeInAssetID:(id)a3 assetVersion:(id)a4 serializedData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(BCReadingStatisticsProtoBook);
  v12 = [[PBDataReader alloc] initWithData:v10];
  if (!BCReadingStatisticsProtoBookReadFrom(v11, v12))
  {
    v50 = BCCloudKitLog();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      sub_1E87E8(self);
    }

    goto LABEL_60;
  }

  v13 = [(BCReadingStatisticsSync *)self assetID];
  v14 = [v13 isEqualToString:v8];

  if ((v14 & 1) == 0)
  {
    v15 = BCCloudKitLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1E8874(self);
    }

    [(BCReadingStatisticsSync *)self setAssetID:v8];
  }

  v16 = objc_alloc_init(BCReadingStatisticsProtoBook);
  [(BCReadingStatisticsProtoBook *)v16 setAssetID:v8];
  v17 = +[BCReadingStatisticsSyncManager sharedInstance];
  v18 = [v17 _appVersion];
  [(BCReadingStatisticsProtoBook *)v16 setAppVersion:v18];

  v19 = [(BCReadingStatisticsSync *)self readingStatisticsBook];
  v20 = [v19 length];

  if (!v20)
  {
LABEL_59:
    [(BCReadingStatisticsSync *)self setAssetVersion:v9];
    v75 = objc_alloc_init(PBDataWriter);
    [(BCReadingStatisticsProtoBook *)v16 writeTo:v75];
    v76 = [v75 immutableData];
    [(BCReadingStatisticsSync *)self setReadingStatisticsBook:v76];

    v50 = v16;
    goto LABEL_60;
  }

  v21 = [PBDataReader alloc];
  v22 = [(BCReadingStatisticsSync *)self readingStatisticsBook];
  v23 = [v21 initWithData:v22];

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
  v80 = self;
  v83 = v9;
  v84 = v8;

  v78 = v16;
  v24 = v16;
  v85 = v11;
  v25 = +[NSMutableDictionary dictionary];
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v86 = v24;
  v26 = [(BCReadingStatisticsProtoBook *)v24 tocEntrys];
  v27 = [v26 countByEnumeratingWithState:&v96 objects:v107 count:16];
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
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v96 + 1) + 8 * i);
        v32 = [v31 href];
        [v25 setObject:v31 forKeyedSubscript:v32];
      }

      v28 = [v26 countByEnumeratingWithState:&v96 objects:v107 count:16];
    }

    while (v28);
  }

  v81 = v11;
  v82 = v10;

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v33 = [(BCReadingStatisticsProtoBook *)v85 tocEntrys];
  v34 = [v33 countByEnumeratingWithState:&v92 objects:v106 count:16];
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
        objc_enumerationMutation(v33);
      }

      v39 = *(*(&v92 + 1) + 8 * j);
      v40 = [v39 href];
      v41 = [v25 objectForKeyedSubscript:v40];
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
          v103 = v40;
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
          v103 = v40;
          v104 = 2048;
          v105 = v49 * 100.0;
          _os_log_impl(&dword_0, v48, OS_LOG_TYPE_INFO, "Reading statistics updated: %@ now %.0lf%% read", buf, 0x16u);
        }
      }

      v36 = 1;
LABEL_29:
    }

    v35 = [v33 countByEnumeratingWithState:&v92 objects:v106 count:16];
  }

  while (v35);
LABEL_38:

  v52 = +[(BCCFISet *)BCMutableCFISet];
  v53 = [v86 readCFIs];
  v54 = v53;
  if (v53)
  {
    v55 = v53;
  }

  else
  {
    v55 = &__NSArray0__struct;
  }

  v56 = v55;

  v57 = [(BCReadingStatisticsProtoBook *)v85 readCFIs];
  v58 = v57;
  if (v57)
  {
    v59 = v57;
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

  v69 = [v52 allCFIStrings];
  v70 = [v69 mutableCopy];
  v50 = v86;
  [v86 setReadCFIs:v70];

  if (v36)
  {
    v71 = 1;
    v9 = v83;
    v8 = v84;
    v10 = v82;
    v72 = v77;
  }

  else
  {
    v73 = [v86 readCFIs];
    v72 = v77;
    v74 = [v77 isEqual:v73] ^ 1;

    v71 = v74;
    v9 = v83;
    v8 = v84;
    v10 = v82;
  }

  self = v80;
  v11 = v81;
  v16 = v78;
  v12 = v79;
  if (v71)
  {
    goto LABEL_59;
  }

LABEL_60:
}

- (void)resolveConflictsFromRecord:(id)a3 withResolvers:(id)a4
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = BCReadingStatisticsSync;
  [(BCReadingStatisticsSync *)&v16 resolveConflictsFromRecord:v6 withResolvers:a4];
  if (v6)
  {
    v7 = [BCCloudData localIdentifierFromRecord:v6];
    objc_opt_class();
    v8 = [v6 objectForKey:@"assetStatistics"];
    v9 = BUDynamicCast();
    v10 = [v9 fileURL];

    if (v10)
    {
      v11 = [NSData dataWithContentsOfURL:v10];
    }

    else
    {
      v11 = 0;
    }

    if (-[NSObject length](v7, "length") && [v11 length])
    {
      v12 = [v6 objectForKeyedSubscript:@"assetVersion"];
      [(BCReadingStatisticsSync *)self _mergeInAssetID:v7 assetVersion:v12 serializedData:v11];

      v13 = [(BCReadingStatisticsSync *)self hasChanges];
      v14 = BCReadingStatisticsLog();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
      if (v13)
      {
        if (v15)
        {
          sub_1E8A78(self, v6);
        }
      }

      else if (v15)
      {
        sub_1E89A4(self, v6);
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
  v3 = [(BCReadingStatisticsSync *)self assetID];
  v4 = [(BCReadingStatisticsSync *)self assetVersion];
  v5 = [(BCReadingStatisticsSync *)self readingStatisticsBook];
  v6 = [NSString stringWithFormat:@"assetID: %@, assetVersion: %@, statistics: %@", v3, v4, v5];

  return v6;
}

@end