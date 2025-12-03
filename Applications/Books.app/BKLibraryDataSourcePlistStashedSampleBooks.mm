@interface BKLibraryDataSourcePlistStashedSampleBooks
- (BKLibraryDataSourcePlistStashedSampleBooks)initWithPlistKind:(int64_t)kind identifier:(id)identifier assetMetadataProvider:(id)provider coverImageHelper:(id)helper assetMetadataCache:(id)cache;
- (id)_newEntryFromSummary:(id)summary;
- (id)_pathStringWithoutDirectoryPrefix:(id)prefix;
- (void)_handleOwnershipChange:(id)change;
- (void)dealloc;
- (void)setLibraryManager:(id)manager;
@end

@implementation BKLibraryDataSourcePlistStashedSampleBooks

- (BKLibraryDataSourcePlistStashedSampleBooks)initWithPlistKind:(int64_t)kind identifier:(id)identifier assetMetadataProvider:(id)provider coverImageHelper:(id)helper assetMetadataCache:(id)cache
{
  v14.receiver = self;
  v14.super_class = BKLibraryDataSourcePlistStashedSampleBooks;
  v7 = [(BKLibraryDataSourcePlist *)&v14 initWithPlistKind:kind identifier:identifier assetMetadataProvider:provider coverImageHelper:helper assetMetadataCache:cache];
  if (v7)
  {
    v15[0] = NSFileOwnerAccountName;
    v15[1] = NSFileGroupOwnerAccountName;
    v16[0] = @"mobile";
    v16[1] = @"mobile";
    v8 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
    v9 = +[NSFileManager defaultManager];
    directory = [(BKLibraryDataSourcePlist *)v7 directory];
    [v9 createDirectoryAtPath:directory withIntermediateDirectories:1 attributes:v8 error:0];

    v11 = objc_opt_new();
    pendingDeleteAssetIDs = v7->_pendingDeleteAssetIDs;
    v7->_pendingDeleteAssetIDs = v11;
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = BKLibraryDataSourcePlistStashedSampleBooks;
  [(BKLibraryDataSourcePlistStashedSampleBooks *)&v4 dealloc];
}

- (void)setLibraryManager:(id)manager
{
  managerCopy = manager;
  v5 = +[NSNotificationCenter defaultCenter];
  libraryManager = [(BKLibraryDataSourcePlist *)self libraryManager];

  if (libraryManager)
  {
    v7 = BKLibraryOwnershipDidChangeNotification;
    libraryManager2 = [(BKLibraryDataSourcePlist *)self libraryManager];
    [v5 removeObserver:self name:v7 object:libraryManager2];
  }

  v10.receiver = self;
  v10.super_class = BKLibraryDataSourcePlistStashedSampleBooks;
  [(BKLibraryDataSourcePlist *)&v10 setLibraryManager:managerCopy];
  if (managerCopy)
  {
    [v5 addObserver:self selector:"_handleOwnershipChange:" name:BKLibraryOwnershipDidChangeNotification object:managerCopy];
  }

  else
  {
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 removeObserver:self];
  }
}

- (void)_handleOwnershipChange:(id)change
{
  userInfo = [change userInfo];
  v20 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v19 = userInfo;
  obj = [userInfo objectForKeyedSubscript:BKLibraryOwnershipAssetsKey];
  v5 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v25 = *v27;
    v24 = BKLibraryOwnershipOldDatasourceKey;
    v23 = BKLibraryOwnershipNewDatasourceKey;
    v22 = BKLibraryOwnershipAssetIDKey;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v27 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:v24];
        v10 = [v8 objectForKeyedSubscript:v23];
        v11 = [v8 objectForKeyedSubscript:v22];
        identifier = [(BKLibraryDataSourcePlist *)self identifier];
        if ([v9 isEqualToString:identifier])
        {

          if ([v10 isEqualToString:@"com.apple.ibooks.plist.untethered"])
          {
            goto LABEL_11;
          }

          v13 = 1;
        }

        else
        {
          pendingDeleteAssetIDs = [(BKLibraryDataSourcePlistStashedSampleBooks *)self pendingDeleteAssetIDs];
          v13 = [pendingDeleteAssetIDs containsObject:v11];

          if ([v10 isEqualToString:@"com.apple.ibooks.plist.untethered"])
          {
            if (!v13)
            {
              goto LABEL_17;
            }

LABEL_11:
            pendingDeleteAssetIDs2 = [(BKLibraryDataSourcePlistStashedSampleBooks *)self pendingDeleteAssetIDs];
            [pendingDeleteAssetIDs2 removeObject:v11];

            [v20 addObject:v11];
            goto LABEL_17;
          }
        }

        identifier2 = [(BKLibraryDataSourcePlist *)self identifier];
        v17 = [v10 isEqualToString:identifier2];

        if (v17)
        {
          pendingDeleteAssetIDs3 = [(BKLibraryDataSourcePlistStashedSampleBooks *)self pendingDeleteAssetIDs];
          [pendingDeleteAssetIDs3 removeObject:v11];
        }

        else
        {
          if (!v13)
          {
            goto LABEL_17;
          }

          pendingDeleteAssetIDs3 = [(BKLibraryDataSourcePlistStashedSampleBooks *)self pendingDeleteAssetIDs];
          [pendingDeleteAssetIDs3 addObject:v11];
        }

LABEL_17:
      }

      v6 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v6);
  }

  if ([v20 count])
  {
    [(BKLibraryDataSourcePlist *)self deleteAssetIDs:v20 completion:0];
  }
}

- (id)_pathStringWithoutDirectoryPrefix:(id)prefix
{
  prefixCopy = prefix;
  directory = [(BKLibraryDataSourcePlist *)self directory];
  v6 = [prefixCopy stringByReplacingOccurrencesOfString:directory withString:&stru_100A30A68];

  return v6;
}

- (id)_newEntryFromSummary:(id)summary
{
  v6.receiver = self;
  v6.super_class = BKLibraryDataSourcePlistStashedSampleBooks;
  v3 = [(BKLibraryDataSourcePlist *)&v6 _newEntryFromSummary:summary];
  v4 = [v3 mutableCopy];

  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"isSample"];
  return v4;
}

@end