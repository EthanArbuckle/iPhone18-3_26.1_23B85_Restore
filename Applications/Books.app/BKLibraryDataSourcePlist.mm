@interface BKLibraryDataSourcePlist
+ (id)iTunesSyncedBooksPlistDataSourceWithAssetMetadataProvider:(id)a3 coverImageHelper:(id)a4 assetMetadataCache:(id)a5;
+ (id)managedBooksPlistDataSourceWithAssetMetadataProvider:(id)a3 coverImageHelper:(id)a4 assetMetadataCache:(id)a5;
+ (id)sampleBooksPlistDataSourceWithAssetMetadataProvider:(id)a3 coverImageHelper:(id)a4 assetMetadataCache:(id)a5;
+ (id)stashedSampleBooksPlistDataSourceWithAssetMetadataProvider:(id)a3 coverImageHelper:(id)a4 assetMetadataCache:(id)a5;
+ (id)untetheredBooksPlistDataSourceWithAssetMetadataProvider:(id)a3 coverImageHelper:(id)a4 assetMetadataCache:(id)a5;
- (BKAssetCoverImageHelping)coverImageHelper;
- (BKAssetMetadataCaching)assetMetadataCache;
- (BKAssetMetadataProvider)assetMetadataProvider;
- (BKLibraryDataSourcePlist)initWithPlistKind:(int64_t)a3 identifier:(id)a4 assetMetadataProvider:(id)a5 coverImageHelper:(id)a6 assetMetadataCache:(id)a7;
- (BKLibraryDataSourcePlist)initWithTestPlist:(id)a3 identifier:(id)a4 assetMetadataProvider:(id)a5 coverImageHelper:(id)a6 assetMetadataCache:(id)a7;
- (BKLibraryManager)libraryManager;
- (BOOL)_isEntryFamilyPurchase:(id)a3;
- (BOOL)_isFamilyPurchaseAtPath:(id)a3;
- (BOOL)_isSupplementalPDFFromPlistEntry:(id)a3;
- (BOOL)_isiTunesSyncedPlist;
- (BOOL)hasDigestChangedSinceFetch;
- (BOOL)q_rewritePlistDictionary:(id)a3 path:(id)a4 notify:(BOOL)a5;
- (BOOL)removeFileWithURL:(id)a3 error:(id *)a4;
- (NSFileManager)fileManager;
- (NSString)description;
- (id)_newEntryFromSummary:(id)a3;
- (id)_pathStringWithoutDirectoryPrefix:(id)a3;
- (id)booksRootPath;
- (id)coverWritingModeLanguageAndPageProgressionDirectionFromAssetID:(id)a3;
- (id)importDestinationPathForAssetImporter:(id)a3;
- (id)plistAssetWithAsset:(id)a3 andURL:(id)a4;
- (id)plistDigest;
- (id)plistEntryAsDictionaryFromAssetID:(id)a3 path:(id)a4 needsCoordination:(BOOL)a5;
- (id)q_plistContentsArrayWithError:(id *)a3;
- (id)q_plistContentsWithError:(id *)a3;
- (signed)_contentTypeFromPlistEntry:(id)a3 logFailure:(BOOL)a4;
- (unsigned)qualitySetting;
- (void)_addAssetIDsToCacheManager:(id)a3;
- (void)_deleteAssetIDs:(id)a3 assetIDToPath:(id)a4 completion:(id)a5;
- (void)_prioritizeRestorePlistAsset:(id)a3;
- (void)_removeAssetIDsFromCacheManager:(id)a3;
- (void)_setPropertiesOfAsset:(id)a3 withPlistEntry:(id)a4;
- (void)assetAccountIdentifiersForAssetID:(id)a3 storeID:(id)a4 path:(id)a5 completion:(id)a6;
- (void)assetForLibraryAsset:(id)a3 completion:(id)a4;
- (void)bookCoverForLibraryAssetProperties:(id)a3 size:(CGSize)a4 completion:(id)a5;
- (void)deleteAssets:(id)a3 exhaustive:(BOOL)a4 completion:(id)a5;
- (void)fetchAssetIDsWithCompletion:(id)a3;
- (void)fetchAssetsWithIDs:(id)a3 completion:(id)a4;
- (void)p_addPlistAssets:(id)a3 checkForDuplicates:(BOOL)a4 completion:(id)a5;
- (void)prioritizeAssetRestoreWithAssetID:(id)a3;
- (void)q_asyncAddAssetDictionaries:(id)a3 completion:(id)a4;
- (void)q_asyncRemovePlistAssets:(id)a3 notify:(BOOL)a4 completion:(id)a5;
- (void)q_asyncRemovePlistEntriesMatching:(id)a3 notify:(BOOL)a4 completion:(id)a5;
- (void)q_asyncRemovePlistPaths:(id)a3 completion:(id)a4;
- (void)q_asyncReplacePlistEntries:(id)a3 notify:(BOOL)a4 completion:(id)a5;
- (void)q_clearAssetCaches;
- (void)q_deletePlistEntries:(id)a3;
- (void)q_evictFromAssetCaches:(id)a3;
- (void)q_plistWasChangedOnDisk;
- (void)q_processAssetStateChanges:(id)a3;
- (void)q_refreshAssetCachesFromPlistContents:(id)a3;
- (void)reload;
- (void)reloadAssetsForAddingWithAssetIDs:(id)a3;
- (void)reloadIfChanged;
- (void)reloadInGroup:(id)a3;
- (void)removePlistAssets:(id)a3 completion:(id)a4;
- (void)resolveLibraryAsset:(id)a3 options:(id)a4 completion:(id)a5;
- (void)updateAsset:(id)a3 isEphemeral:(BOOL)a4 completion:(id)a5;
- (void)updateAsset:(id)a3 userEditedTitle:(id)a4 completion:(id)a5;
- (void)updateFetchDigest;
- (void)updatePlistAssets:(id)a3 completion:(id)a4;
@end

@implementation BKLibraryDataSourcePlist

- (id)plistDigest
{
  v2 = [(BKLibraryDataSourcePlist *)self plist];
  v3 = [v2 calculateChecksum];

  return v3;
}

- (BKLibraryManager)libraryManager
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryManager);

  return WeakRetained;
}

+ (id)iTunesSyncedBooksPlistDataSourceWithAssetMetadataProvider:(id)a3 coverImageHelper:(id)a4 assetMetadataCache:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[BKLibraryDataSourcePlist alloc] initWithPlistKind:0 identifier:@"com.apple.ibooks.plist.iTunesSynced" assetMetadataProvider:v9 coverImageHelper:v8 assetMetadataCache:v7];

  return v10;
}

+ (id)untetheredBooksPlistDataSourceWithAssetMetadataProvider:(id)a3 coverImageHelper:(id)a4 assetMetadataCache:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[BKLibraryDataSourcePlistUntetheredBooks alloc] initWithPlistKind:1 identifier:@"com.apple.ibooks.plist.untethered" assetMetadataProvider:v9 coverImageHelper:v8 assetMetadataCache:v7];

  return v10;
}

+ (id)managedBooksPlistDataSourceWithAssetMetadataProvider:(id)a3 coverImageHelper:(id)a4 assetMetadataCache:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[BKLibraryDataSourcePlistManagedBooks alloc] initWithPlistKind:2 identifier:@"com.apple.ibooks.plist.managed" assetMetadataProvider:v9 coverImageHelper:v8 assetMetadataCache:v7];

  return v10;
}

+ (id)sampleBooksPlistDataSourceWithAssetMetadataProvider:(id)a3 coverImageHelper:(id)a4 assetMetadataCache:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[BKLibraryDataSourcePlistSampleBooks alloc] initWithPlistKind:4 identifier:@"com.apple.iBooks.plist.sample" assetMetadataProvider:v9 coverImageHelper:v8 assetMetadataCache:v7];

  return v10;
}

+ (id)stashedSampleBooksPlistDataSourceWithAssetMetadataProvider:(id)a3 coverImageHelper:(id)a4 assetMetadataCache:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[BKLibraryDataSourcePlistStashedSampleBooks alloc] initWithPlistKind:5 identifier:@"com.apple.iBooks.plist.sample.stashed" assetMetadataProvider:v9 coverImageHelper:v8 assetMetadataCache:v7];

  return v10;
}

- (BKLibraryDataSourcePlist)initWithPlistKind:(int64_t)a3 identifier:(id)a4 assetMetadataProvider:(id)a5 coverImageHelper:(id)a6 assetMetadataCache:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  kdebug_trace();
  v41.receiver = self;
  v41.super_class = BKLibraryDataSourcePlist;
  v17 = [(BKLibraryDataSourcePlist *)&v41 init];
  if (v17)
  {
    v18 = [IMLibraryPlist libraryPlistWithKind:a3];
    plist = v17->_plist;
    v17->_plist = v18;

    objc_storeStrong(&v17->_identifier, a4);
    v20 = objc_alloc_init(NSCache);
    assetCache = v17->_assetCache;
    v17->_assetCache = v20;

    [(NSCache *)v17->_assetCache setName:@"assetCache"];
    v22 = objc_alloc_init(NSCache);
    assetCacheByTemporaryAssetID = v17->_assetCacheByTemporaryAssetID;
    v17->_assetCacheByTemporaryAssetID = v22;

    [(NSCache *)v17->_assetCacheByTemporaryAssetID setName:@"assetCacheByTemporaryAssetID"];
    v24 = +[NSMutableSet set];
    restoringFromBackupAssetIDs = v17->_restoringFromBackupAssetIDs;
    v17->_restoringFromBackupAssetIDs = v24;

    v26 = +[NSMutableSet set];
    restoringFromBackupTemporaryAssetIDs = v17->_restoringFromBackupTemporaryAssetIDs;
    v17->_restoringFromBackupTemporaryAssetIDs = v26;

    v28 = dispatch_queue_create("BKLibraryDataSourcePlist.assetsQueue", 0);
    assetsQueue = v17->_assetsQueue;
    v17->_assetsQueue = v28;

    v30 = dispatch_queue_create("BKLibraryDataSourcePlist.updateAssetMetadataQueue", 0);
    updateAssetMetadataQueue = v17->_updateAssetMetadataQueue;
    v17->_updateAssetMetadataQueue = v30;

    objc_storeWeak(&v17->_assetMetadataProvider, v14);
    objc_storeWeak(&v17->_assetMetadataCache, v16);
    objc_storeWeak(&v17->_coverImageHelper, v15);
    v32 = dispatch_queue_create("BKLibraryDataSourcePlist.ioQueue", 0);
    ioQueue = v17->_ioQueue;
    v17->_ioQueue = v32;

    v34 = +[NSMutableDictionary dictionary];
    fullPathToAssetID = v17->_fullPathToAssetID;
    v17->_fullPathToAssetID = v34;

    v36 = dispatch_queue_create("com.apple.iBooks.BKLibraryDataSourcePlist.iTunesU", 0);
    itunesuQueue = v17->_itunesuQueue;
    v17->_itunesuQueue = v36;

    v38 = [(BKLibraryDataSourcePlist *)v17 plistDigest];
    lastReloadDigest = v17->_lastReloadDigest;
    v17->_lastReloadDigest = v38;
  }

  kdebug_trace();

  return v17;
}

- (BKLibraryDataSourcePlist)initWithTestPlist:(id)a3 identifier:(id)a4 assetMetadataProvider:(id)a5 coverImageHelper:(id)a6 assetMetadataCache:(id)a7
{
  v12 = a3;
  v13 = [(BKLibraryDataSourcePlist *)self initWithPlistKind:0 identifier:a4 assetMetadataProvider:a5 coverImageHelper:a6 assetMetadataCache:a7];
  plist = v13->_plist;
  v13->_plist = v12;

  return v13;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(BKLibraryDataSourcePlist *)self identifier];
  v6 = [(BKLibraryDataSourcePlist *)self plist];
  v7 = [v6 path];
  v8 = [v7 lastPathComponent];
  v9 = [NSString stringWithFormat:@"<%@=%p id=%@ plist=%@ rank=%ld>", v4, self, v5, v8, [(BKLibraryDataSourcePlist *)self rank]];

  return v9;
}

- (void)fetchAssetIDsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryDataSourcePlist *)self assetsQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D4C70;
  v7[3] = &unk_100A03788;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_addAssetIDsToCacheManager:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 assetID];
        v12 = [(BKLibraryDataSourcePlist *)self identifier];
        v13 = [BKCoverCacheURLSchemeHandler urlStringForAssetID:v11 dataSourceID:v12];
        v14 = [v10 assetID];
        [v5 setObject:v13 forKeyedSubscript:v14];
      }

      v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  if ([v5 count])
  {
    v15 = +[BCCacheManager defaultCacheManager];
    [v15 addURLs:v5 priority:3 quality:-[BKLibraryDataSourcePlist qualitySetting](self expiresAfter:{"qualitySetting"), 0}];
  }
}

- (void)_removeAssetIDsFromCacheManager:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 assetID];
        v12 = [(BKLibraryDataSourcePlist *)self identifier];
        v13 = [BKCoverCacheURLSchemeHandler urlStringForAssetID:v11 dataSourceID:v12];
        v14 = [v10 assetID];
        [v5 setObject:v13 forKeyedSubscript:v14];
      }

      v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  if ([v5 count])
  {
    v15 = +[BCCacheManager defaultCacheManager];
    [v15 removeURLs:v5 priority:3 quality:{-[BKLibraryDataSourcePlist qualitySetting](self, "qualitySetting")}];
  }
}

- (unsigned)qualitySetting
{
  v3 = [(BKLibraryDataSourcePlist *)self identifier];
  v4 = [v3 isEqualToString:@"com.apple.iBooks.plist.sample"];

  if (v4)
  {
    return 204;
  }

  v6 = [(BKLibraryDataSourcePlist *)self identifier];
  v7 = [v6 isEqualToString:@"com.apple.iBooks.plist.sample.stashed"];

  if (v7)
  {
    return 205;
  }

  else
  {
    return 206;
  }
}

- (BOOL)_isSupplementalPDFFromPlistEntry:(id)a3
{
  v4 = a3;
  v5 = [IMLibraryPlist isSupplementalContentFromPlistEntry:v4];
  LODWORD(self) = [(BKLibraryDataSourcePlist *)self _contentTypeFromPlistEntry:v4 logFailure:0];

  if (self == 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

- (void)fetchAssetsWithIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  kdebug_trace();
  v8 = [(BKLibraryDataSourcePlist *)self assetsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D56D8;
  block[3] = &unk_100A049A0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)bookCoverForLibraryAssetProperties:(id)a3 size:(CGSize)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v7 objectForKey:@"assetID"];
  v10 = [v7 objectForKey:@"permlink"];
  v11 = [NSURL URLWithString:v10];
  v12 = [(BKLibraryDataSourcePlist *)self coverImageHelper];
  if (v12)
  {
    v13 = [v7 objectForKey:@"path"];
    if (v13)
    {
      v14 = [NSURL fileURLWithPath:v13];
    }

    else
    {
      v14 = 0;
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1001D6198;
    v17[3] = &unk_100A0B560;
    v21 = v8;
    v18 = v11;
    v19 = self;
    v20 = v9;
    [v12 coverImageFromURL:v14 completion:v17];
  }

  else
  {
    v15 = objc_retainBlock(v8);
    if (v15)
    {
      v16 = [NSError errorWithDomain:kBKLibraryDataSourceDomain code:kBKLibraryDataSourceErrorInvalidAssetError userInfo:0];
      (*(v15 + 2))(v15, 0, 0, v16);
    }
  }
}

- (void)deleteAssets:(id)a3 exhaustive:(BOOL)a4 completion:(id)a5
{
  v6 = a3;
  v25 = a5;
  v7 = BKLibraryLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1007947D8();
  }

  v8 = objc_opt_new();
  v26 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v31 + 1) + 8 * i);
        v14 = [v13 assetID];
        if (v14)
        {
          [v8 addObject:v14];
          v15 = [v13 path];
          if (v15)
          {
            v16 = v15;
            v17 = [v13 dataSourceIdentifier];
            v18 = [(BKLibraryDataSourcePlist *)self identifier];
            v19 = [v17 isEqualToString:v18];

            if (v19)
            {
              v20 = [v13 path];
              [v26 setObject:v20 forKey:v14];
            }
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v10);
  }

  if ([v8 count])
  {
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1001D6698;
    v29[3] = &unk_100A063F0;
    v21 = v25;
    v30 = v25;
    v22 = v26;
    [(BKLibraryDataSourcePlist *)self _deleteAssetIDs:v8 assetIDToPath:v26 completion:v29];
    v23 = v30;
  }

  else
  {
    v21 = v25;
    v24 = objc_retainBlock(v25);
    v23 = v24;
    v22 = v26;
    if (v24)
    {
      (*(v24 + 2))(v24, 1, 0);
    }
  }
}

- (void)resolveLibraryAsset:(id)a3 options:(id)a4 completion:(id)a5
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001D67F0;
  v8[3] = &unk_100A09AD0;
  v9 = self;
  v10 = a3;
  v11 = a5;
  v6 = v11;
  v7 = v10;
  [(BKLibraryDataSourcePlist *)v9 assetForLibraryAsset:v7 completion:v8];
}

- (void)assetForLibraryAsset:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = BKLibraryLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100794938();
  }

  v9 = [v6 assetID];
  v14 = v9;
  v10 = [NSArray arrayWithObjects:&v14 count:1];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001D6A10;
  v12[3] = &unk_100A06300;
  v13 = v7;
  v11 = v7;
  [(BKLibraryDataSourcePlist *)self fetchAssetsWithIDs:v10 completion:v12];
}

- (void)updateAsset:(id)a3 userEditedTitle:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = BKLibraryLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(BKLibraryDataSourcePlist *)self identifier];
    v13 = [v8 assetID];
    *buf = 138544130;
    v25 = v12;
    v26 = 2160;
    v27 = 1752392040;
    v28 = 2112;
    v29 = v13;
    v30 = 2112;
    v31 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "DataSourcePlist: %{public}@ Updating assetID:%{mask.hash}@ with title:(%@)", buf, 0x2Au);
  }

  v14 = [v8 assetID];
  v15 = [(BKLibraryDataSourcePlist *)self assetsQueue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001D6D28;
  v19[3] = &unk_100A04FE8;
  v20 = v14;
  v21 = self;
  v22 = v9;
  v23 = v10;
  v16 = v10;
  v17 = v9;
  v18 = v14;
  dispatch_async(v15, v19);
}

- (void)updateAsset:(id)a3 isEphemeral:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = BKLibraryLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v15 = [(BKLibraryDataSourcePlist *)self identifier];
    v16 = [v8 assetID];
    v17 = [NSNumber numberWithBool:v6];
    *buf = 138543874;
    v24 = v15;
    v25 = 2112;
    v26 = v16;
    v27 = 2112;
    v28 = v17;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%{public}@ Updating asset %@ isEphemeral: %@", buf, 0x20u);
  }

  v11 = [v8 assetID];
  v12 = [(BKLibraryDataSourcePlist *)self assetsQueue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001D71EC;
  v18[3] = &unk_100A057C8;
  v19 = v11;
  v20 = self;
  v22 = v6;
  v21 = v9;
  v13 = v9;
  v14 = v11;
  dispatch_async(v12, v18);
}

- (void)reloadIfChanged
{
  v3 = [(BKLibraryDataSourcePlist *)self lastReloadDigest];
  if (!v3 || (v4 = v3, -[BKLibraryDataSourcePlist lastReloadDigest](self, "lastReloadDigest"), v5 = objc_claimAutoreleasedReturnValue(), -[BKLibraryDataSourcePlist plistDigest](self, "plistDigest"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v5 isEqual:v6], v6, v5, v4, (v7 & 1) == 0))
  {

    [(BKLibraryDataSourcePlist *)self reload];
  }
}

- (void)reload
{
  v3 = [(BKLibraryDataSourcePlist *)self libraryManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001D76C4;
  v4[3] = &unk_100A0B5D8;
  v4[4] = self;
  [v3 libraryDataSource:self updateWithName:@"reload" block:v4];
}

- (void)reloadInGroup:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryDataSourcePlist *)self plistDigest];
  [(BKLibraryDataSourcePlist *)self setLastReloadDigest:v5];

  v6 = [(BKLibraryDataSourcePlist *)self libraryManager];
  [v6 libraryDataSource:self reloadInGroup:v4];
}

- (void)reloadAssetsForAddingWithAssetIDs:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001D77C8;
  v3[3] = &unk_100A08418;
  v3[4] = self;
  [(BKLibraryDataSourcePlist *)self fetchAssetsWithIDs:a3 completion:v3];
}

- (BOOL)hasDigestChangedSinceFetch
{
  v3 = [(BKLibraryDataSourcePlist *)self lastFetchDigest];
  if (v3)
  {
    v4 = [(BKLibraryDataSourcePlist *)self lastFetchDigest];
    v5 = [(BKLibraryDataSourcePlist *)self plistDigest];
    v6 = [v4 isEqual:v5] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (void)updateFetchDigest
{
  v3 = [(BKLibraryDataSourcePlist *)self plistDigest];
  [(BKLibraryDataSourcePlist *)self setLastFetchDigest:v3];
}

- (id)importDestinationPathForAssetImporter:(id)a3
{
  v3 = [(BKLibraryDataSourcePlist *)self identifier];
  v4 = [v3 isEqualToString:@"com.apple.ibooks.plist.untethered"];

  if (v4)
  {
    v5 = +[IMLibraryPlist purchasesRepositoryPath];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)assetAccountIdentifiersForAssetID:(id)a3 storeID:(id)a4 path:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = kBKLibraryDataSourceErrorInvalidAssetError;
  v14 = objc_autoreleasePoolPush();
  if ([v11 length])
  {
    v15 = +[BLLibrary defaultBookLibrary];
    v16 = [NSURL fileURLWithPath:v11];
    v17 = [v15 _perUserBookURLForBookURL:v16];

    if (v17)
    {
      v33 = v9;
      v18 = [v17 URLByAppendingPathComponent:@"iTunesMetadata.plist"];
      v19 = [NSDictionary dictionaryWithContentsOfURL:v18];
      if (v19)
      {
        v20 = objc_opt_new();
        v21 = [v19 objectForKey:@"com.apple.iTunesStore.downloadInfo"];
        v22 = [v21 valueForKeyPath:@"accountInfo.FamilyID"];
        BUStoreIdStringFromObject();
        v23 = v32 = v10;
        [v20 setFamilyID:v23];

        v24 = [v21 valueForKeyPath:@"accountInfo.DSPersonID"];
        v25 = BUStoreIdStringFromObject();
        [v20 setDownloadedDSID:v25];

        v26 = [v21 valueForKeyPath:@"accountInfo.PurchaserID"];
        v27 = BUStoreIdStringFromObject();
        [v20 setPurchasedDSID:v27];

        v10 = v32;
        v13 = 0;
      }

      else
      {
        v20 = 0;
      }

      v9 = v33;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v28 = BKLibraryLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_1007949E0();
    }

    v20 = 0;
  }

  objc_autoreleasePoolPop(v14);
  v29 = objc_retainBlock(v12);
  v30 = v29;
  if (v13)
  {
    if (v29)
    {
      v31 = [NSError errorWithDomain:kBKLibraryDataSourceDomain code:v13 userInfo:0];
      (v30)[2](v30, 0, v31);
    }
  }

  else if (v29)
  {
    (*(v29 + 2))(v29, v20, 0);
  }
}

- (void)p_addPlistAssets:(id)a3 checkForDuplicates:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v7 = a3;
  v56 = a5;
  v8 = BKLibraryLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100794A78();
  }

  v58 = objc_opt_new();
  v57 = objc_opt_new();
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v67 objects:v71 count:16];
  if (v9)
  {
    v10 = v9;
    v62 = *v68;
    do
    {
      v11 = 0;
      v59 = v10;
      do
      {
        if (*v68 != v62)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v67 + 1) + 8 * v11);
        v13 = [v12 url];
        v14 = [v12 assetID];
        if (v6)
        {
          v15 = [(BKLibraryDataSourcePlist *)self plist];
          v16 = [v15 contents];
          v17 = [IMLibraryPlist entryForAssetID:v14 contents:v16];

          v18 = v17 == 0;
        }

        else
        {
          v18 = 1;
        }

        if ([v13 isFileURL])
        {
          v19 = [v13 path];
          v20 = [v19 length] != 0 && v18;

          if (v20 == 1)
          {
            v21 = objc_alloc_init(NSMutableDictionary);
            v22 = [v12 author];
            v23 = [v22 length];

            if (v23)
            {
              v24 = [v12 author];
              [v21 setObject:v24 forKey:@"author"];
            }

            v25 = [v12 title];
            v26 = [v25 length];

            if (v26)
            {
              v27 = [v12 title];
              [v21 setObject:v27 forKey:@"title"];
            }

            v28 = [v12 genre];
            v29 = [v28 length];

            if (v29)
            {
              v30 = [v12 genre];
              [v21 setObject:v30 forKey:@"genre"];
            }

            v31 = [v12 storeID];
            v32 = [v31 length];

            if (v32)
            {
              v33 = [v12 storeID];
              [v21 setObject:v33 forKey:@"storeId"];
            }

            v34 = [v12 assetID];
            v35 = [v34 length];

            if (v35)
            {
              v36 = [v12 assetID];
              [v21 setObject:v36 forKey:@"assetID"];
            }

            v37 = [v12 sortTitle];
            v38 = [v37 length];

            if (v38)
            {
              v39 = [v12 sortTitle];
              [v21 setObject:v39 forKey:@"sortTitle"];
            }

            v40 = [v12 sortAuthor];
            v41 = [v40 length];

            if (v41)
            {
              v42 = [v12 sortAuthor];
              [v21 setObject:v42 forKey:@"sortAuthor"];
            }

            if ([v12 isProof])
            {
              v43 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v12 isProof]);
              [v21 setObject:v43 forKey:@"proof"];
            }

            if ([v12 isEphemeral])
            {
              v44 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v12 isEphemeral]);
              [v21 setObject:v44 forKey:@"ephemeral"];
            }

            v45 = [v12 purchaseDate];

            if (v45)
            {
              v46 = [v12 purchaseDate];
              [v21 setObject:v46 forKey:@"importDate"];
            }

            v47 = [v13 path];
            [v21 setObject:v47 forKey:@"path"];

            v48 = [(BKLibraryDataSourcePlist *)self _newEntryFromSummary:v21];
            [v58 addObject:v48];
            v49 = +[BKPlistAsset newBlankAsset];
            [(BKLibraryDataSourcePlist *)self _setPropertiesOfAsset:v49 withPlistEntry:v48];
            v50 = [v12 assetID];
            [v57 setObject:v49 forKeyedSubscript:v50];

            v10 = v59;
          }
        }

        v11 = v11 + 1;
      }

      while (v10 != v11);
      v10 = [obj countByEnumeratingWithState:&v67 objects:v71 count:16];
    }

    while (v10);
  }

  if ([v58 count])
  {
    v51 = [(BKLibraryDataSourcePlist *)self assetsQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001D832C;
    block[3] = &unk_100A04FE8;
    block[4] = self;
    v52 = v57;
    v64 = v57;
    v65 = v58;
    v53 = v56;
    v66 = v56;
    dispatch_async(v51, block);
  }

  else
  {
    v53 = v56;
    v54 = objc_retainBlock(v56);
    v55 = v54;
    v52 = v57;
    if (v54)
    {
      (*(v54 + 2))(v54, 1, 0);
    }
  }
}

- (void)removePlistAssets:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = BKLibraryLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100794B28();
  }

  v9 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        v16 = [v15 assetID];
        v17 = [v16 length];

        if (v17)
        {
          v18 = [v15 assetID];
          [v9 addObject:v18];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v12);
  }

  v19 = [(BKLibraryDataSourcePlist *)self assetsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D87A8;
  block[3] = &unk_100A049A0;
  v23 = v9;
  v24 = self;
  v25 = v7;
  v20 = v7;
  v21 = v9;
  dispatch_async(v19, block);
}

- (void)updatePlistAssets:(id)a3 completion:(id)a4
{
  v4 = objc_retainBlock(a4);
  if (v4)
  {
    v5 = v4;
    (*(v4 + 2))(v4, 1, 0);
    v4 = v5;
  }
}

- (id)coverWritingModeLanguageAndPageProgressionDirectionFromAssetID:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_1000274FC;
  v37 = sub_1000276A8;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_1000274FC;
  v31 = sub_1000276A8;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1000274FC;
  v25 = sub_1000276A8;
  v26 = 0;
  v6 = [(BKLibraryDataSourcePlist *)self assetsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D8BE4;
  block[3] = &unk_100A03738;
  block[4] = self;
  v7 = v4;
  v17 = v7;
  v18 = &v33;
  v19 = &v27;
  v20 = &v21;
  dispatch_sync(v6, block);

  if (v34[5] && v28[5] && v22[5])
  {
    goto LABEL_14;
  }

  v8 = [(BKLibraryDataSourcePlist *)self assetMetadataProvider];
  v9 = [v8 coverWritingModeLanguageAndPageProgressionDirectionFromAssetID:v7];

  v10 = [v9 objectForKeyedSubscript:@"coverWritingMode"];
  v11 = [v9 objectForKeyedSubscript:@"language"];
  v12 = [v9 objectForKeyedSubscript:@"pageProgressionDirection"];
  if (!v34[5] && v10)
  {
    objc_storeStrong(v34 + 5, v10);
  }

  if (!v28[5] && v11)
  {
    objc_storeStrong(v28 + 5, v11);
  }

  if (!v22[5] && v12)
  {
    objc_storeStrong(v22 + 5, v12);
  }

  if (v34[5])
  {
LABEL_14:
    [v5 setObject:? forKey:?];
  }

  v13 = v28[5];
  if (v13)
  {
    [v5 setObject:v13 forKey:@"language"];
  }

  v14 = v22[5];
  if (v14)
  {
    [v5 setObject:v14 forKey:@"pageProgressionDirection"];
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);

  return v5;
}

- (id)plistEntryAsDictionaryFromAssetID:(id)a3 path:(id)a4 needsCoordination:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1000274FC;
  v22 = sub_1000276A8;
  v23 = 0;
  v9 = [(BKLibraryDataSourcePlist *)self assetsQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001D9008;
  v14[3] = &unk_100A0B600;
  v14[4] = self;
  v15 = v7;
  v16 = v8;
  v17 = &v18;
  v10 = v8;
  v11 = v7;
  dispatch_sync(v9, v14);

  v12 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v12;
}

- (void)q_refreshAssetCachesFromPlistContents:(id)a3
{
  v4 = [IMLibraryPlist booksArrayFromPlistEntry:a3];
  v5 = BKLibraryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(BKLibraryDataSourcePlist *)self identifier];
    *buf = 138543618;
    v28 = v6;
    v29 = 2048;
    v30 = [v4 count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: q_refreshAssetCachesFromPlistContents: Refreshing asset caches. count: %ld", buf, 0x16u);
  }

  [(BKLibraryDataSourcePlist *)self q_clearAssetCaches];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        v13 = +[BKPlistAsset newBlankAsset];
        [(BKLibraryDataSourcePlist *)self _setPropertiesOfAsset:v13 withPlistEntry:v12];
        v14 = [v13 assetID];
        v15 = [v14 length];

        if (v15)
        {
          v16 = [(BKLibraryDataSourcePlist *)self assetCache];
          v17 = [v13 assetID];
          [v16 setObject:v13 forKey:v17];
        }

        v18 = [v13 temporaryAssetID];
        v19 = [v18 length];

        if (v19)
        {
          v20 = [(BKLibraryDataSourcePlist *)self assetCacheByTemporaryAssetID];
          v21 = [v13 temporaryAssetID];
          [v20 setObject:v13 forKey:v21];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }
}

- (void)q_clearAssetCaches
{
  v3 = [(BKLibraryDataSourcePlist *)self assetCache];
  [v3 removeAllObjects];

  v4 = [(BKLibraryDataSourcePlist *)self assetCacheByTemporaryAssetID];
  [v4 removeAllObjects];
}

- (void)q_evictFromAssetCaches:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryDataSourcePlist *)self assetCache];
  [v5 removeObjectForKey:v4];

  v6 = [(BKLibraryDataSourcePlist *)self assetCacheByTemporaryAssetID];
  [v6 removeObjectForKey:v4];
}

- (id)_pathStringWithoutDirectoryPrefix:(id)a3
{
  v3 = a3;
  v4 = +[IMLibraryPlist purchasesRepositoryPath];
  v5 = [v3 stringByReplacingOccurrencesOfString:v4 withString:&stru_100A30A68];

  return v5;
}

- (id)_newEntryFromSummary:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryDataSourcePlist *)self writesFullPaths];
  v6 = [v4 objectForKey:@"path"];
  if ((v5 & 1) == 0)
  {
    v7 = [(BKLibraryDataSourcePlist *)self _pathStringWithoutDirectoryPrefix:v6];

    if ([v7 characterAtIndex:0] == 47)
    {
      v8 = [v7 substringFromIndex:1];

      v7 = v8;
    }

    if ([v7 characterAtIndex:{objc_msgSend(v7, "length") - 1}] == 47)
    {
      v6 = [v7 substringToIndex:{objc_msgSend(v7, "length") - 1}];
    }

    else
    {
      v6 = v7;
    }
  }

  if ([v6 length])
  {
    v9 = objc_alloc_init(NSMutableDictionary);
    [v9 setObject:&__kCFBooleanTrue forKey:@"Inserted-By-iBooks"];
    v10 = +[IMLibraryPlist keyNameForPath];
    [v9 setObject:v6 forKey:v10];

    v11 = [v4 objectForKey:@"author"];
    v12 = [v11 length];

    if (v12)
    {
      v13 = [v4 objectForKey:@"author"];
      v14 = +[IMLibraryPlist keyNameForAuthor];
      [v9 setObject:v13 forKey:v14];
    }

    v15 = [v4 objectForKey:@"title"];
    v16 = [v15 length];

    if (v16)
    {
      v17 = [v4 objectForKey:@"title"];
      v18 = +[IMLibraryPlist keyNameForTitle];
      [v9 setObject:v17 forKey:v18];
    }

    v19 = [v4 objectForKey:@"genre"];
    v20 = [v19 length];

    if (v20)
    {
      v21 = [v4 objectForKey:@"genre"];
      v22 = +[IMLibraryPlist keyNameForGenre];
      [v9 setObject:v21 forKey:v22];
    }

    v23 = [v4 objectForKey:@"storeId"];
    v24 = [v23 length];

    if (v24)
    {
      v25 = [v4 objectForKey:@"storeId"];
      v26 = +[IMLibraryPlist keyNameForStoreId];
      [v9 setObject:v25 forKey:v26];
    }

    v27 = [v4 objectForKey:@"assetID"];
    v28 = [v27 length];

    if (v28)
    {
      v29 = [v4 objectForKey:@"assetID"];
      v30 = +[IMLibraryPlist keyNameForUniqueId];
      [v9 setObject:v29 forKey:v30];
    }

    v31 = [v4 objectForKey:@"sortAuthor"];
    v32 = [v31 length];

    if (v32)
    {
      v33 = [v4 objectForKey:@"sortAuthor"];
      v34 = [v4 objectForKey:@"author"];
      v35 = [v33 isEqualToString:v34];

      if ((v35 & 1) == 0)
      {
        v36 = [v4 objectForKey:@"sortAuthor"];
        v37 = +[IMLibraryPlist keyNameForSortAuthor];
        [v9 setObject:v36 forKey:v37];
      }
    }

    v38 = [v4 objectForKey:@"sortTitle"];
    v39 = [v38 length];

    if (v39)
    {
      v40 = [v4 objectForKey:@"sortTitle"];
      v41 = [v4 objectForKey:@"title"];
      v42 = [v40 isEqualToString:v41];

      if ((v42 & 1) == 0)
      {
        v43 = [v4 objectForKey:@"sortTitle"];
        v44 = +[IMLibraryPlist keyNameForSortTitle];
        [v9 setObject:v43 forKey:v44];
      }
    }

    v45 = [v4 objectForKey:@"pageProgressionDirection"];
    v46 = [v45 length];

    if (v46)
    {
      v47 = [v4 objectForKey:@"pageProgressionDirection"];
      v48 = +[IMLibraryPlist keyNameForPageProgression];
      [v9 setObject:v47 forKey:v48];
    }

    v49 = [v4 objectForKey:@"proof"];
    v50 = [v49 BOOLValue];

    if (v50)
    {
      v51 = [v4 objectForKey:@"proof"];
      v52 = +[IMLibraryPlist keyNameForProofedAsset];
      [v9 setObject:v51 forKey:v52];
    }

    v53 = [v4 objectForKey:@"ephemeral"];
    v54 = [v53 BOOLValue];

    if (v54)
    {
      v55 = [v4 objectForKey:@"ephemeral"];
      v56 = +[IMLibraryPlist keyNameForIsEphemeral];
      [v9 setObject:v55 forKey:v56];
    }

    v57 = [v4 objectForKey:@"importDate"];

    if (v57)
    {
      v58 = [v4 objectForKey:@"importDate"];
      v59 = +[IMLibraryPlist keyNameForImportDate];
      [v9 setObject:v58 forKey:v59];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_isiTunesSyncedPlist
{
  v2 = [(BKLibraryDataSourcePlist *)self identifier];
  v3 = [v2 isEqualToString:@"com.apple.ibooks.plist.iTunesSynced"];

  return v3;
}

- (id)q_plistContentsWithError:(id *)a3
{
  v5 = +[IMLibraryPlist keyNameForBooksArray];
  v9 = v5;
  v6 = [(BKLibraryDataSourcePlist *)self q_plistContentsArrayWithError:a3];
  v10 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];

  return v7;
}

- (id)q_plistContentsArrayWithError:(id *)a3
{
  v3 = BKLibraryLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100794D88(self);
  }

  v91 = objc_alloc_init(NSMutableArray);
  v96 = objc_alloc_init(NSMutableDictionary);
  v92 = objc_alloc_init(NSMutableArray);
  v93 = +[BLLibrary defaultBookLibrary];
  v95 = [(BKLibraryDataSourcePlist *)self plist];
  context = objc_autoreleasePoolPush();
  v4 = 0;
  v90 = 0;
  do
  {
    v5 = +[BLLockFile iTunesSyncLockFile];
    if ([v5 tryLock:0])
    {
      v6 = [(BKLibraryDataSourcePlist *)self plist];
      v7 = [v6 contents];

      v8 = 1;
      v9 = v5;
      v90 = v7;
    }

    else
    {
      v8 = 0;
      v9 = v5;
    }

    [v9 unlock];
    v10 = BKLibraryLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v13 = [(BKLibraryDataSourcePlist *)self identifier];
      v14 = v13;
      *buf = 138543874;
      v15 = "NO";
      if (v8)
      {
        v15 = "YES";
      }

      v109 = v13;
      v110 = 2082;
      v111 = v15;
      v112 = 1024;
      LODWORD(v113) = v4 + 1;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%{public}@ -- read succeeded: %{public}s -- Try # %d", buf, 0x1Cu);
    }

    v11 = v4 > 8;
    if (v4 > 8)
    {
      v12 = 1;
    }

    else
    {
      v12 = v8;
    }

    if ((v12 & 1) == 0)
    {
      usleep(0x61A8u);
      v11 = 0;
    }

    ++v4;
  }

  while ((v11 | v8) != 1);
  v16 = +[IMLibraryPlist keyNameForBooksArray];
  v17 = [v90 objectForKey:v16];

  v18 = [(BKLibraryDataSourcePlist *)self identifier];
  v97 = [v18 isEqualToString:@"com.apple.ibooks.plist.iTunesSynced"];

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  obj = v17;
  v100 = [obj countByEnumeratingWithState:&v104 objects:v120 count:16];
  if (v100)
  {
    v94 = 0;
    v99 = *v105;
    do
    {
      v19 = 0;
      do
      {
        if (*v105 != v99)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v104 + 1) + 8 * v19);
        if ([(BKLibraryDataSourcePlist *)self wantsPlistEntry:v20]&& (!v97 || [(BKLibraryDataSourcePlist *)self _contentTypeFromPlistEntry:v20 logFailure:0]))
        {
          v101 = [IMLibraryPlist storeIdFromPlistEntry:v20];
          v21 = [v20 mutableCopy];
          v22 = [IMLibraryPlist folderNameFromPlistEntry:v21];
          if ([v22 length])
          {
            v23 = [v95 directory];
            if ([v22 hasPrefix:@"/"] & 1) != 0 || (objc_msgSend(v22, "hasPrefix:", v23))
            {
              v24 = v22;
            }

            else
            {
              v25 = [v95 directory];
              v24 = [v25 stringByAppendingPathComponent:v22];
            }

            [v21 setObject:v24 forKey:@"BKLibraryDataSourcePlist-FullPath"];
            v26 = [(BKLibraryDataSourcePlist *)self fileManager];
            v27 = [v26 fileExistsAtPath:v24];

            if ((v27 & 1) == 0)
            {
              v37 = +[BKLibrarySharedContainerManager sharedInstance];
              v29 = [v37 sharedURLForEntry:v20];

              if (!v29)
              {
                goto LABEL_53;
              }

              v38 = [(BKLibraryDataSourcePlist *)self fileManager];
              v39 = [v29 path];
              v40 = [v38 fileExistsAtPath:v39];

              if (!v40)
              {
                goto LABEL_53;
              }

              v41 = [v29 path];
              [v21 setObject:v41 forKey:@"BKLibraryDataSourcePlist-FullPath"];

              goto LABEL_44;
            }

            if ([v93 _isMultiUser] && objc_msgSend(v93, "_isShareableBook:", v20))
            {
              v28 = +[BKLibrarySharedContainerManager sharedInstance];
              v29 = [v28 sharedURLForEntry:v20];

              if (!v29 || (-[BKLibraryDataSourcePlist fileManager](self, "fileManager"), v30 = objc_claimAutoreleasedReturnValue(), [v29 path], v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v30, "fileExistsAtPath:", v31), v31, v30, (v32 & 1) == 0))
              {
                [v21 removeObjectForKey:@"BKLibraryDataSourcePlist-FullPath"];
                v33 = [(BKLibraryDataSourcePlist *)self fileManager];
                v103 = 0;
                v34 = [v33 removeItemAtPath:v24 error:&v103];
                v35 = v103;

                if (v34)
                {
                  v36 = BKLibraryLog();
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412546;
                    v109 = v24;
                    v110 = 2112;
                    v111 = v35;
                    _os_log_debug_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "Failed to remove per-user file at path %@. Error: %@", buf, 0x16u);
                  }
                }

LABEL_53:
                v49 = [NSNumber numberWithBool:0];
                [v21 setObject:v49 forKey:@"BKLibraryDataSourcePlist-Exists"];

                if ((v94 & 1) == 0)
                {
                  v50 = [(BKLibraryDataSourcePlist *)self libraryManager];
                  v51 = [v50 delegate];

                  if (objc_opt_respondsToSelector())
                  {
                    BYTE4(v94) = [v51 isRestoringFromiCloud];
                  }

                  else
                  {
                    BYTE4(v94) = 0;
                  }
                }

                v62 = BKLibraryLog();
                if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
                {
                  v64 = [(BKLibraryDataSourcePlist *)self identifier];
                  v65 = [IMLibraryPlist folderNameFromPlistEntry:v21];
                  v66 = [v21 objectForKey:@"BKLibraryDataSourcePlist-FullPath"];
                  v67 = [v21 objectForKey:@"BKLibraryDataSourcePlist-Exists"];
                  v68 = v67;
                  *buf = 138544386;
                  v69 = &stru_100A30A68;
                  if ((v94 & 0x100000000) != 0)
                  {
                    v69 = @"BUT iCloud Restore in progress, not removing this entry";
                  }

                  v109 = v64;
                  v110 = 2112;
                  v111 = v65;
                  v112 = 2112;
                  v113 = v66;
                  v114 = 2112;
                  v115 = v67;
                  v116 = 2112;
                  v117 = v69;
                  _os_log_debug_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEBUG, "%{public}@ Dead Entry: [%@ ==> %@] [Exists: %@] %@", buf, 0x34u);
                }

                if ((v94 & 0x100000000) != 0)
                {
                  BYTE4(v94) = 1;
                }

                else
                {
                  [v92 addObject:v21];
                  BYTE4(v94) = 0;
                }

                LOBYTE(v94) = 1;
LABEL_87:

                goto LABEL_88;
              }

LABEL_44:
            }

            v42 = [NSNumber numberWithBool:1];
            [v21 setObject:v42 forKey:@"BKLibraryDataSourcePlist-Exists"];
          }

          if (![v101 length])
          {
            [(BKLibraryDataSourcePlist *)self q_updateUniqueIDIfNeededInMutableEntry:v21 withOriginalBookEntry:v20];
            [v91 addObject:v21];
            goto LABEL_87;
          }

          v43 = [v96 objectForKey:v101];
          if (v43)
          {
            v44 = [IMLibraryPlist publicationVersionFromPlistEntry:v43];
            v45 = [IMLibraryPlist publicationVersionFromPlistEntry:v21];
            v46 = [v44 longLongValue];
            v47 = [(__CFString *)v45 longLongValue];
            if (v47 > v46)
            {
              v48 = BKLibraryLog();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
              {
                v70 = [(BKLibraryDataSourcePlist *)self identifier];
                v71 = [v43 objectForKey:@"BKLibraryDataSourcePlist-FullPath"];
                v72 = [v21 objectForKey:@"BKLibraryDataSourcePlist-FullPath"];
                *buf = 138544642;
                v109 = v70;
                v110 = 2112;
                v111 = v101;
                v112 = 2112;
                v113 = v44;
                v114 = 2112;
                v115 = v71;
                v116 = 2112;
                v117 = v45;
                v118 = 2112;
                v119 = v72;
                _os_log_debug_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "%{public}@ Newer item taking over: [Store ID: %@] [Older: %@ -- %@] [Newer: %@ -- %@]", buf, 0x3Eu);
              }

              goto LABEL_84;
            }

            if (v47 != v46)
            {
              v60 = BKLibraryLog();
              if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
              {
                v73 = [(BKLibraryDataSourcePlist *)self identifier];
                v74 = [v43 objectForKey:@"BKLibraryDataSourcePlist-FullPath"];
                v75 = [v21 objectForKey:@"BKLibraryDataSourcePlist-FullPath"];
                *buf = 138544642;
                v109 = v73;
                v110 = 2112;
                v111 = v101;
                v112 = 2112;
                v113 = v44;
                v114 = 2112;
                v115 = v74;
                v116 = 2112;
                v117 = v45;
                v118 = 2112;
                v119 = v75;
                _os_log_debug_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEBUG, "%{public}@ Newer item already in place: [Store ID: %@] [Current: %@ -- %@] [Contender: %@ -- %@]", buf, 0x3Eu);
              }

              goto LABEL_68;
            }

            v52 = [IMLibraryPlist isSampleFromPlistEntry:v43];
            v53 = [v52 BOOLValue];

            v54 = [IMLibraryPlist isSampleFromPlistEntry:v21];
            v55 = [v54 BOOLValue];

            v56 = [IMLibraryPlist folderNameFromPlistEntry:v43];
            v57 = v56 != 0;

            v58 = [IMLibraryPlist folderNameFromPlistEntry:v21];

            if (v58)
            {
              v59 = v57;
            }

            else
            {
              v59 = 1;
            }

            if ((v59 & 1) == 0)
            {
              v63 = BKLibraryLog();
              if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
              {
                v76 = [(BKLibraryDataSourcePlist *)self identifier];
                *buf = 138543618;
                v109 = v76;
                v110 = 2112;
                v111 = v101;
                _os_log_debug_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEBUG, "%{public}@ Item with path taking over item without path: [StoreID: %@]", buf, 0x16u);
              }

              [v92 addObject:v43];
              [v96 setObject:v21 forKey:v101];
              goto LABEL_85;
            }

            if (v55 & 1 | ((v53 & 1) == 0))
            {
              if (![(BKLibraryDataSourcePlist *)self _isEntryFamilyPurchase:v43]|| [(BKLibraryDataSourcePlist *)self _isEntryFamilyPurchase:v21])
              {
                v60 = BKLibraryLog();
                if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
                {
                  v80 = [(BKLibraryDataSourcePlist *)self identifier];
                  v81 = [v43 objectForKey:@"BKLibraryDataSourcePlist-FullPath"];
                  v82 = [v21 objectForKey:@"BKLibraryDataSourcePlist-FullPath"];
                  *buf = 138544642;
                  v109 = v80;
                  v110 = 2112;
                  v111 = v101;
                  v112 = 2112;
                  v113 = v44;
                  v114 = 2112;
                  v115 = v81;
                  v116 = 2112;
                  v117 = v45;
                  v118 = 2112;
                  v119 = v82;
                  _os_log_debug_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEBUG, "%{public}@ Same-Version Right-Rez item already in place: [Store ID: %@] [Current: %@ -- %@] [Contender: %@ -- %@]", buf, 0x3Eu);
                }

LABEL_68:

                [v92 addObject:v21];
LABEL_85:

LABEL_86:
                goto LABEL_87;
              }

              v48 = BKLibraryLog();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
              {
                v83 = [(BKLibraryDataSourcePlist *)self identifier];
                v84 = [v43 objectForKey:@"BKLibraryDataSourcePlist-FullPath"];
                v85 = [v21 objectForKey:@"BKLibraryDataSourcePlist-FullPath"];
                *buf = 138544130;
                v109 = v83;
                v110 = 2112;
                v111 = v101;
                v112 = 2112;
                v113 = v84;
                v114 = 2112;
                v115 = v85;
                _os_log_debug_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "%{public}@ Non-family purchase item taking over: [Store ID: %@] [Older: %@] [Newer: %@]", buf, 0x2Au);
              }
            }

            else
            {
              v48 = BKLibraryLog();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
              {
                v77 = [(BKLibraryDataSourcePlist *)self identifier];
                v78 = [v43 objectForKey:@"BKLibraryDataSourcePlist-FullPath"];
                v79 = [v21 objectForKey:@"BKLibraryDataSourcePlist-FullPath"];
                *buf = 138544642;
                v109 = v77;
                v110 = 2112;
                v111 = v101;
                v112 = 2112;
                v113 = v44;
                v114 = 2112;
                v115 = v78;
                v116 = 2112;
                v117 = v45;
                v118 = 2112;
                v119 = v79;
                _os_log_debug_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "%{public}@ Newer item (same version) taking over sample: [Store ID: %@] [Older: %@ -- %@] [Newer: %@ -- %@]", buf, 0x3Eu);
              }
            }

LABEL_84:

            [v92 addObject:v43];
            [v96 setObject:v21 forKey:v101];
            goto LABEL_85;
          }

          [v96 setObject:v21 forKey:v101];
          goto LABEL_86;
        }

LABEL_88:
        v19 = v19 + 1;
      }

      while (v100 != v19);
      v86 = [obj countByEnumeratingWithState:&v104 objects:v120 count:16];
      v100 = v86;
    }

    while (v86);
  }

  objc_autoreleasePoolPop(context);
  [(BKLibraryDataSourcePlist *)self q_deletePlistEntries:v92];
  v87 = [v96 allValues];
  [v91 addObjectsFromArray:v87];

  return v91;
}

- (void)q_deletePlistEntries:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [IMLibraryPlist folderNameFromPlistEntry:*(*(&v14 + 1) + 8 * v10), v14];
        if ([v11 length])
        {
          [v5 addObject:v11];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v12 = [(BKLibraryDataSourcePlist *)self plist];
    v13 = [v5 allObjects];
    [v12 addDeletedFiles:v13];

    [(BKLibraryDataSourcePlist *)self q_asyncRemovePlistPaths:v5 completion:0];
  }
}

- (NSFileManager)fileManager
{
  fileManager = self->_fileManager;
  if (!fileManager)
  {
    v4 = objc_alloc_init(NSFileManager);
    v5 = self->_fileManager;
    self->_fileManager = v4;

    fileManager = self->_fileManager;
  }

  return fileManager;
}

- (BOOL)_isFamilyPurchaseAtPath:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [v4 stringByAppendingPathComponent:@"iTunesMetadata.plist"];
  v7 = [NSDictionary dictionaryWithContentsOfFile:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKey:@"com.apple.iTunesStore.downloadInfo"];
    v10 = [v9 valueForKeyPath:@"accountInfo.FamilyID"];
    v11 = [v9 valueForKeyPath:@"accountInfo.DSPersonID"];
    v12 = [v9 valueForKeyPath:@"accountInfo.PurchaserID"];
    v13 = [(BKLibraryDataSourcePlist *)self libraryManager];
    v14 = [v13 isFamilyPurchaseWithFamilyID:v10 purchaserDSID:v12 downloaderDSID:v11];
  }

  else
  {
    v14 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return v14;
}

- (BOOL)_isEntryFamilyPurchase:(id)a3
{
  v4 = [a3 objectForKey:@"BKLibraryDataSourcePlist-FullPath"];
  LOBYTE(self) = [(BKLibraryDataSourcePlist *)self _isFamilyPurchaseAtPath:v4];

  return self;
}

- (void)_setPropertiesOfAsset:(id)a3 withPlistEntry:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BKLibraryDataSourcePlist *)self _isSupplementalPDFFromPlistEntry:v7];
  v9 = [IMLibraryPlist storeIdFromPlistEntry:v7];
  v10 = v9;
  if (v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  v12 = v9;
  v90 = self;
  if (!v11)
  {
    if ([(BKLibraryDataSourcePlist *)self _contentTypeFromPlistEntry:v7 logFailure:0]!= 3)
    {
      goto LABEL_9;
    }

    v12 = [IMLibraryPlist uniqueIdFromPlistEntry:v7];
    v13 = BKLibraryLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_100794E18();
    }

    if (!v12)
    {
LABEL_9:
      v14 = v10;
      v15 = BKLibraryLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_100794E80(v15, v16, v17, v18, v19, v20, v21, v22);
      }

      objc_opt_class();
      v23 = [v7 objectForKey:@"BKLibraryDataSourcePlist-FullPath"];
      v24 = BUDynamicCast();

      if (v24)
      {
        v25 = [(BKLibraryDataSourcePlist *)self fullPathToAssetID];
        v26 = [v25 objectForKey:v24];

        if (v26)
        {
          v27 = v26;
          v28 = BKLibraryLog();
          v10 = v14;
          v12 = v27;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            sub_100794EF0();
          }

          goto LABEL_32;
        }

        v92 = 0;
        v40 = [BLLibraryUtility identifierFromBookPath:v24 allowHash:0 allowStoreID:0 error:&v92];
        v41 = v92;
        v42 = BKLibraryLog();
        v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG);
        v10 = v14;
        v12 = v40;
        if (v40 && !v41)
        {
          if (v43)
          {
            sub_100794F5C();
          }

          v28 = [(BKLibraryDataSourcePlist *)v90 fullPathToAssetID];
          [v28 setObject:v40 forKey:v24];
          goto LABEL_32;
        }

        if (v43)
        {
          sub_100794FC8();
        }

        self = v90;
        if (v12)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v29 = BKLibraryLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          sub_100794EB8(v29, v30, v31, v32, v33, v34, v35, v36);
        }

        v10 = v14;
      }

      v12 = [IMLibraryPlist uniqueIdFromPlistEntry:v7];
      v37 = BKLibraryLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        sub_100795030();
      }

      if (!v24 || v12)
      {
        goto LABEL_33;
      }

      v91 = 0;
      v12 = [BLLibraryUtility identifierFromBookPath:v24 allowHash:1 allowStoreID:0 error:&v91];
      v28 = v91;
      v38 = BKLibraryLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        sub_100795098();
      }

      if (v12 && !v28)
      {
        v39 = [(BKLibraryDataSourcePlist *)self fullPathToAssetID];
        [v39 setObject:v12 forKey:v24];
      }

LABEL_32:

LABEL_33:
    }
  }

  v44 = [IMLibraryPlist temporaryItemIdentifierFromPlistEntry:v7];
  if (v44)
  {
    v45 = v44;
    if (![v44 isEqualToString:&stru_100A30A68])
    {
      goto LABEL_46;
    }

    BCReportAssertionFailureWithMessage();

    v46 = BKLibraryLog();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      sub_100795100(v46, v47, v48, v49, v50, v51, v52, v53);
    }

    v45 = 0;
  }

  else if (v8)
  {
    v45 = v10;
    v46 = BKLibraryLog();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      sub_1007951A0();
    }
  }

  else
  {
    v46 = [IMLibraryPlist permlinkFromPlistEntry:v7];
    v45 = [v46 identifierFromPermlink];
    v54 = BKLibraryLog();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      sub_100795138();
    }
  }

LABEL_46:
  v55 = +[BKLibrarySharedContainerManager sharedInstance];
  v56 = [v55 sharedURLForEntry:v7];

  v57 = [IMLibraryPlist folderNameFromPlistEntry:v7];
  if (v57)
  {
    [v6 setIsRestoring:0];
  }

  else
  {
    v58 = [IMLibraryPlist backupFolderNameFromPlistEntry:v7];
    [v6 setIsRestoring:v58 != 0];
  }

  v59 = [IMLibraryPlist backupFolderNameFromPlistEntry:v7];

  if (v59)
  {
    [v6 setGeneration:0x7FFFFFFFFFFFFFFFLL];
  }

  if ([v6 isRestoring])
  {
    v60 = 2;
  }

  else
  {
    v60 = 1;
  }

  [v6 setState:v60];
  if (v56)
  {
    [v6 setUrl:v56];
  }

  else
  {
    v61 = [v7 objectForKeyedSubscript:@"BKLibraryDataSourcePlist-FullPath"];
    if (v61)
    {
      v62 = [v7 objectForKeyedSubscript:@"BKLibraryDataSourcePlist-FullPath"];
      v63 = [NSURL fileURLWithPath:v62];
      [v6 setUrl:v63];
    }

    else
    {
      [v6 setUrl:0];
    }
  }

  [v6 setStoreID:v10];
  v64 = [IMLibraryPlist storePlaylistIdFromPlistEntry:v7];
  [v6 setStorePlaylistID:v64];

  [v6 setSupplementalContent:{+[IMLibraryPlist isSupplementalContentFromPlistEntry:](IMLibraryPlist, "isSupplementalContentFromPlistEntry:", v7)}];
  [v6 setAssetID:v12];
  [v6 setTemporaryAssetID:v45];
  v65 = [IMLibraryPlist authorFromPlistEntry:v7];
  [v6 setAuthor:v65];

  v66 = [IMLibraryPlist sortAuthorFromPlistEntry:v7];
  [v6 setSortAuthor:v66];
  v67 = [IMLibraryPlist titleFromPlistEntry:v7];
  [v6 setTitle:v67];

  v68 = [IMLibraryPlist sortTitleFromPlistEntry:v7];
  if (![v68 length])
  {
    v69 = [v6 title];

    v68 = v69;
  }

  v89 = v12;
  [v6 setSortTitle:v68];
  v70 = [v6 title];
  if ([v70 length])
  {
    goto LABEL_65;
  }

  [v6 sortTitle];
  v72 = v71 = v10;
  v73 = [v72 length];

  v10 = v71;
  if (v73)
  {
    v70 = [v6 sortTitle];
    [v6 setTitle:v70];
LABEL_65:
  }

  v74 = [IMLibraryPlist genreFromPlistEntry:v7];
  [v6 setGenre:v74];

  v75 = [(BKLibraryDataSourcePlist *)v90 identifier];
  [v6 setDataSourceIdentifier:v75];

  [v6 setContentType:{-[BKLibraryDataSourcePlist _contentTypeFromPlistEntry:logFailure:](v90, "_contentTypeFromPlistEntry:logFailure:", v7, 1)}];
  v76 = [IMLibraryPlist isSampleFromPlistEntry:v7];
  [v6 setSample:{objc_msgSend(v76, "BOOLValue")}];

  v77 = [IMLibraryPlist isProofedAssetFromPlistEntry:v7];
  [v6 setProof:{objc_msgSend(v77, "BOOLValue")}];

  v78 = [IMLibraryPlist isExplicitContentFromPlistEntry:v7];
  [v6 setIsExplicit:v78];

  v79 = [IMLibraryPlist isEphemeralFromPlistEntry:v7];
  [v6 setEphemeral:{objc_msgSend(v79, "BOOLValue")}];

  v80 = [IMLibraryPlist publicationVersionNumberFromPlistEntry:v7];
  [v6 setVersionNumber:v80];

  v81 = [IMLibraryPlist humanReadablePublicationVersionFromPlistEntry:v7];
  [v6 setVersionNumberHumanReadable:v81];

  v82 = [IMLibraryPlist scrollDirectionFromPlistEntry:v7];
  v83 = v82;
  if (v82 && (([v82 isEqualToString:@"horizontal"] & 1) != 0 || objc_msgSend(v83, "isEqualToString:", @"vertical")))
  {
    [v6 setScrollDirection:v83];
  }

  v84 = [IMLibraryPlist languageFromPlistEntry:v7];
  [v6 setLanguage:v84];

  v85 = [IMLibraryPlist coverWritingModeFromPlistEntry:v7];
  [v6 setCoverWritingMode:v85];

  v86 = [IMLibraryPlist pageProgressionFromPlistEntry:v7];
  [v6 setPageProgressionDirection:v86];

  v87 = [IMLibraryPlist permlinkFromPlistEntry:v7];
  [v6 setPermlink:v87];

  v88 = [IMLibraryPlist importDateFromPlistEntry:v7];
  if (v88)
  {
    [v6 setPurchaseDate:v88];
  }
}

- (void)q_processAssetStateChanges:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v4;
  v27 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v27)
  {
    v6 = *v32;
    p_info = BKLibraryBookshelfSupplementaryDataSource.info;
    v26 = self;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(obj);
        }

        objc_opt_class();
        v9 = BUDynamicCast();
        v10 = v9;
        if (v9)
        {
          v11 = [v9 assetID];
          v12 = [v10 temporaryAssetID];
          if ([v11 length])
          {
            v13 = [(BKLibraryDataSourcePlist *)self restoringFromBackupAssetIDs];
            v14 = [v13 containsObject:v11];
          }

          else
          {
            v14 = 0;
          }

          if ([v12 length])
          {
            [(BKLibraryDataSourcePlist *)self restoringFromBackupTemporaryAssetIDs];
            v15 = p_info;
            v16 = v6;
            v18 = v17 = v5;
            v19 = [v18 containsObject:v12];

            v5 = v17;
            v6 = v16;
            p_info = v15;
          }

          else
          {
            v19 = 0;
          }

          v20 = v14 | v19;
          if ([v10 state] == 1 && (v20 & 1) != 0 && v11)
          {
            [v10 setGeneration:0x7FFFFFFFFFFFFFFFLL];
            [v5 addObject:v10];
            self = v26;
            v21 = [(BKLibraryDataSourcePlist *)v26 restoringFromBackupAssetIDs];
            [v21 removeObject:v11];

            if ([v12 length])
            {
              v22 = [(BKLibraryDataSourcePlist *)v26 restoringFromBackupTemporaryAssetIDs];
              [v22 removeObject:v12];
              goto LABEL_22;
            }
          }

          else
          {
            self = v26;
            if (!(([v10 state] != 2) | v20 & 1))
            {
              if (v11)
              {
                [v10 setGeneration:0x7FFFFFFFFFFFFFFFLL];
                [v5 addObject:v10];
                v23 = [(BKLibraryDataSourcePlist *)v26 restoringFromBackupAssetIDs];
                [v23 addObject:v11];

                if (v12)
                {
                  v22 = [(BKLibraryDataSourcePlist *)v26 restoringFromBackupTemporaryAssetIDs];
                  [v22 addObject:v12];
LABEL_22:
                }
              }
            }
          }
        }
      }

      v27 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v27);
  }

  if ([v5 count])
  {
    v24 = [(BKLibraryDataSourcePlist *)self libraryManager];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1001DBEA4;
    v28[3] = &unk_100A03440;
    v29 = v5;
    v30 = self;
    [v24 addCustomOperationBlock:v28];
  }
}

- (signed)_contentTypeFromPlistEntry:(id)a3 logFailure:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [IMLibraryPlist folderNameFromPlistEntry:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [IMLibraryPlist backupFolderNameFromPlistEntry:v5];
  }

  v9 = v8;

  if ([v9 length])
  {
    v10 = [BKAssetUtilities contentTypeForPath:v9];
  }

  else
  {
    objc_opt_class();
    v11 = [v5 objectForKey:@"AssetType"];
    v12 = BUDynamicCast();

    v10 = 4 * ([v12 length] != 0);
  }

  if (v10)
  {
    v13 = 1;
  }

  else
  {
    v13 = !v4;
  }

  if (!v13)
  {
    v14 = BKLibraryLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_100795208();
    }
  }

  return v10;
}

- (void)_deleteAssetIDs:(id)a3 assetIDToPath:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[NSMutableSet set];
  v12 = +[NSMutableSet set];
  v13 = +[NSMutableArray array];
  v14 = [(BKLibraryDataSourcePlist *)self assetsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DC268;
  block[3] = &unk_100A0B628;
  block[4] = self;
  v22 = v8;
  v23 = v9;
  v24 = v12;
  v25 = v11;
  v26 = v13;
  v27 = v10;
  v15 = v10;
  v16 = v13;
  v17 = v11;
  v18 = v12;
  v19 = v9;
  v20 = v8;
  dispatch_async(v14, block);
}

- (id)booksRootPath
{
  v2 = [(BKLibraryDataSourcePlist *)self plist];
  v3 = [v2 path];
  v4 = [v3 stringByDeletingLastPathComponent];

  return v4;
}

- (BOOL)removeFileWithURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[AEPdfCache sharedInstance];
  [v7 removeCacheObjectForURL:v6];

  v8 = [(BKLibraryDataSourcePlist *)self fileManager];
  LOBYTE(a4) = [v8 removeItemAtURL:v6 error:a4];

  return a4;
}

- (void)q_plistWasChangedOnDisk
{
  v3 = [(BKLibraryDataSourcePlist *)self libraryManager];
  [v3 reloadDataSource:self completion:0];

  v4 = [(BKLibraryDataSourcePlist *)self didWritePlistHandler];
  if (v4)
  {
    v5 = v4;
    v4[2]();
    v4 = v5;
  }
}

- (BOOL)q_rewritePlistDictionary:(id)a3 path:(id)a4 notify:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v12 = BKLibraryLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100795310();
    }

    goto LABEL_9;
  }

  v10 = [(BKLibraryDataSourcePlist *)self currentQueueGeneration];
  if (v10 == [(BKLibraryDataSourcePlist *)self startQueueGeneration])
  {
    v11 = [v8 writeToFile:v9 atomically:1];
    if (v11 && v5)
    {
      [(BKLibraryDataSourcePlist *)self q_plistWasChangedOnDisk];
LABEL_9:
      LOBYTE(v11) = 1;
    }
  }

  else
  {
    v13 = BKLibraryLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100795270();
    }

    LOBYTE(v11) = 0;
  }

  return v11;
}

- (void)q_asyncRemovePlistAssets:(id)a3 notify:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001DCC9C;
  v9[3] = &unk_100A0B650;
  v10 = a3;
  v8 = v10;
  [(BKLibraryDataSourcePlist *)self q_asyncRemovePlistEntriesMatching:v9 notify:v6 completion:a5];
}

- (void)q_asyncRemovePlistPaths:(id)a3 completion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001DCD94;
  v7[3] = &unk_100A0B650;
  v8 = a3;
  v6 = v8;
  [(BKLibraryDataSourcePlist *)self q_asyncRemovePlistEntriesMatching:v7 notify:1 completion:a4];
}

- (void)q_asyncRemovePlistEntriesMatching:(id)a3 notify:(BOOL)a4 completion:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001DCEB0;
  v9[3] = &unk_100A0B6A0;
  v9[4] = self;
  v10 = a3;
  v12 = a4;
  v11 = a5;
  v7 = v11;
  v8 = v10;
  dispatch_async(&_dispatch_main_q, v9);
}

- (void)q_asyncReplacePlistEntries:(id)a3 notify:(BOOL)a4 completion:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001DD750;
  v9[3] = &unk_100A0B6A0;
  v9[4] = self;
  v10 = a3;
  v12 = a4;
  v11 = a5;
  v7 = v11;
  v8 = v10;
  dispatch_async(&_dispatch_main_q, v9);
}

- (void)q_asyncAddAssetDictionaries:(id)a3 completion:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DDF64;
  block[3] = &unk_100A049A0;
  block[4] = self;
  v8 = a3;
  v9 = a4;
  v5 = v9;
  v6 = v8;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)plistAssetWithAsset:(id)a3 andURL:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[BKPlistAsset newBlankAsset];
  v8 = [v6 assetID];
  [v7 setAssetID:v8];

  v9 = [v6 storeID];
  [v7 setStoreID:v9];

  v10 = [v6 storePlaylistID];
  [v7 setStorePlaylistID:v10];

  [v7 setSupplementalContent:{objc_msgSend(v6, "isSupplementalContent")}];
  [v7 setUrl:v5];

  v11 = [v6 title];
  [v7 setTitle:v11];

  v12 = [v6 sortTitle];
  [v7 setSortTitle:v12];

  v13 = [v6 author];
  [v7 setAuthor:v13];

  v14 = [v6 sortAuthor];

  [v7 setSortAuthor:v14];

  return v7;
}

- (void)prioritizeAssetRestoreWithAssetID:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v7 = v4;
    v5 = [NSArray arrayWithObjects:&v7 count:1];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001DE808;
    v6[3] = &unk_100A08418;
    v6[4] = self;
    [(BKLibraryDataSourcePlist *)self fetchAssetsWithIDs:v5 completion:v6];
  }
}

- (void)_prioritizeRestorePlistAsset:(id)a3
{
  v4 = a3;
  if ([v4 isRestoring])
  {
    v5 = [v4 temporaryAssetID];
    if (v5)
    {
      v6 = objc_opt_new();
      [v6 prioritizeAsset:v5 forDataclass:@"Book"];
      v7 = BKLibraryLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [(BKLibraryDataSourcePlist *)self identifier];
        v9 = [v4 assetID];
        v10 = 138412546;
        v11 = v8;
        v12 = 2112;
        v13 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Prioritizing asset: %@ %@", &v10, 0x16u);
      }
    }

    else
    {
      sub_1007954E4();
    }
  }

  else
  {
    v5 = BKLibraryLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10079543C();
    }
  }
}

- (BKAssetMetadataProvider)assetMetadataProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_assetMetadataProvider);

  return WeakRetained;
}

- (BKAssetMetadataCaching)assetMetadataCache
{
  WeakRetained = objc_loadWeakRetained(&self->_assetMetadataCache);

  return WeakRetained;
}

- (BKAssetCoverImageHelping)coverImageHelper
{
  WeakRetained = objc_loadWeakRetained(&self->_coverImageHelper);

  return WeakRetained;
}

@end