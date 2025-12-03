@interface BKLibraryDataSourcePlist
+ (id)iTunesSyncedBooksPlistDataSourceWithAssetMetadataProvider:(id)provider coverImageHelper:(id)helper assetMetadataCache:(id)cache;
+ (id)managedBooksPlistDataSourceWithAssetMetadataProvider:(id)provider coverImageHelper:(id)helper assetMetadataCache:(id)cache;
+ (id)sampleBooksPlistDataSourceWithAssetMetadataProvider:(id)provider coverImageHelper:(id)helper assetMetadataCache:(id)cache;
+ (id)stashedSampleBooksPlistDataSourceWithAssetMetadataProvider:(id)provider coverImageHelper:(id)helper assetMetadataCache:(id)cache;
+ (id)untetheredBooksPlistDataSourceWithAssetMetadataProvider:(id)provider coverImageHelper:(id)helper assetMetadataCache:(id)cache;
- (BKAssetCoverImageHelping)coverImageHelper;
- (BKAssetMetadataCaching)assetMetadataCache;
- (BKAssetMetadataProvider)assetMetadataProvider;
- (BKLibraryDataSourcePlist)initWithPlistKind:(int64_t)kind identifier:(id)identifier assetMetadataProvider:(id)provider coverImageHelper:(id)helper assetMetadataCache:(id)cache;
- (BKLibraryDataSourcePlist)initWithTestPlist:(id)plist identifier:(id)identifier assetMetadataProvider:(id)provider coverImageHelper:(id)helper assetMetadataCache:(id)cache;
- (BKLibraryManager)libraryManager;
- (BOOL)_isEntryFamilyPurchase:(id)purchase;
- (BOOL)_isFamilyPurchaseAtPath:(id)path;
- (BOOL)_isSupplementalPDFFromPlistEntry:(id)entry;
- (BOOL)_isiTunesSyncedPlist;
- (BOOL)hasDigestChangedSinceFetch;
- (BOOL)q_rewritePlistDictionary:(id)dictionary path:(id)path notify:(BOOL)notify;
- (BOOL)removeFileWithURL:(id)l error:(id *)error;
- (NSFileManager)fileManager;
- (NSString)description;
- (id)_newEntryFromSummary:(id)summary;
- (id)_pathStringWithoutDirectoryPrefix:(id)prefix;
- (id)booksRootPath;
- (id)coverWritingModeLanguageAndPageProgressionDirectionFromAssetID:(id)d;
- (id)importDestinationPathForAssetImporter:(id)importer;
- (id)plistAssetWithAsset:(id)asset andURL:(id)l;
- (id)plistDigest;
- (id)plistEntryAsDictionaryFromAssetID:(id)d path:(id)path needsCoordination:(BOOL)coordination;
- (id)q_plistContentsArrayWithError:(id *)error;
- (id)q_plistContentsWithError:(id *)error;
- (signed)_contentTypeFromPlistEntry:(id)entry logFailure:(BOOL)failure;
- (unsigned)qualitySetting;
- (void)_addAssetIDsToCacheManager:(id)manager;
- (void)_deleteAssetIDs:(id)ds assetIDToPath:(id)path completion:(id)completion;
- (void)_prioritizeRestorePlistAsset:(id)asset;
- (void)_removeAssetIDsFromCacheManager:(id)manager;
- (void)_setPropertiesOfAsset:(id)asset withPlistEntry:(id)entry;
- (void)assetAccountIdentifiersForAssetID:(id)d storeID:(id)iD path:(id)path completion:(id)completion;
- (void)assetForLibraryAsset:(id)asset completion:(id)completion;
- (void)bookCoverForLibraryAssetProperties:(id)properties size:(CGSize)size completion:(id)completion;
- (void)deleteAssets:(id)assets exhaustive:(BOOL)exhaustive completion:(id)completion;
- (void)fetchAssetIDsWithCompletion:(id)completion;
- (void)fetchAssetsWithIDs:(id)ds completion:(id)completion;
- (void)p_addPlistAssets:(id)assets checkForDuplicates:(BOOL)duplicates completion:(id)completion;
- (void)prioritizeAssetRestoreWithAssetID:(id)d;
- (void)q_asyncAddAssetDictionaries:(id)dictionaries completion:(id)completion;
- (void)q_asyncRemovePlistAssets:(id)assets notify:(BOOL)notify completion:(id)completion;
- (void)q_asyncRemovePlistEntriesMatching:(id)matching notify:(BOOL)notify completion:(id)completion;
- (void)q_asyncRemovePlistPaths:(id)paths completion:(id)completion;
- (void)q_asyncReplacePlistEntries:(id)entries notify:(BOOL)notify completion:(id)completion;
- (void)q_clearAssetCaches;
- (void)q_deletePlistEntries:(id)entries;
- (void)q_evictFromAssetCaches:(id)caches;
- (void)q_plistWasChangedOnDisk;
- (void)q_processAssetStateChanges:(id)changes;
- (void)q_refreshAssetCachesFromPlistContents:(id)contents;
- (void)reload;
- (void)reloadAssetsForAddingWithAssetIDs:(id)ds;
- (void)reloadIfChanged;
- (void)reloadInGroup:(id)group;
- (void)removePlistAssets:(id)assets completion:(id)completion;
- (void)resolveLibraryAsset:(id)asset options:(id)options completion:(id)completion;
- (void)updateAsset:(id)asset isEphemeral:(BOOL)ephemeral completion:(id)completion;
- (void)updateAsset:(id)asset userEditedTitle:(id)title completion:(id)completion;
- (void)updateFetchDigest;
- (void)updatePlistAssets:(id)assets completion:(id)completion;
@end

@implementation BKLibraryDataSourcePlist

- (id)plistDigest
{
  plist = [(BKLibraryDataSourcePlist *)self plist];
  calculateChecksum = [plist calculateChecksum];

  return calculateChecksum;
}

- (BKLibraryManager)libraryManager
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryManager);

  return WeakRetained;
}

+ (id)iTunesSyncedBooksPlistDataSourceWithAssetMetadataProvider:(id)provider coverImageHelper:(id)helper assetMetadataCache:(id)cache
{
  cacheCopy = cache;
  helperCopy = helper;
  providerCopy = provider;
  v10 = [[BKLibraryDataSourcePlist alloc] initWithPlistKind:0 identifier:@"com.apple.ibooks.plist.iTunesSynced" assetMetadataProvider:providerCopy coverImageHelper:helperCopy assetMetadataCache:cacheCopy];

  return v10;
}

+ (id)untetheredBooksPlistDataSourceWithAssetMetadataProvider:(id)provider coverImageHelper:(id)helper assetMetadataCache:(id)cache
{
  cacheCopy = cache;
  helperCopy = helper;
  providerCopy = provider;
  v10 = [[BKLibraryDataSourcePlistUntetheredBooks alloc] initWithPlistKind:1 identifier:@"com.apple.ibooks.plist.untethered" assetMetadataProvider:providerCopy coverImageHelper:helperCopy assetMetadataCache:cacheCopy];

  return v10;
}

+ (id)managedBooksPlistDataSourceWithAssetMetadataProvider:(id)provider coverImageHelper:(id)helper assetMetadataCache:(id)cache
{
  cacheCopy = cache;
  helperCopy = helper;
  providerCopy = provider;
  v10 = [[BKLibraryDataSourcePlistManagedBooks alloc] initWithPlistKind:2 identifier:@"com.apple.ibooks.plist.managed" assetMetadataProvider:providerCopy coverImageHelper:helperCopy assetMetadataCache:cacheCopy];

  return v10;
}

+ (id)sampleBooksPlistDataSourceWithAssetMetadataProvider:(id)provider coverImageHelper:(id)helper assetMetadataCache:(id)cache
{
  cacheCopy = cache;
  helperCopy = helper;
  providerCopy = provider;
  v10 = [[BKLibraryDataSourcePlistSampleBooks alloc] initWithPlistKind:4 identifier:@"com.apple.iBooks.plist.sample" assetMetadataProvider:providerCopy coverImageHelper:helperCopy assetMetadataCache:cacheCopy];

  return v10;
}

+ (id)stashedSampleBooksPlistDataSourceWithAssetMetadataProvider:(id)provider coverImageHelper:(id)helper assetMetadataCache:(id)cache
{
  cacheCopy = cache;
  helperCopy = helper;
  providerCopy = provider;
  v10 = [[BKLibraryDataSourcePlistStashedSampleBooks alloc] initWithPlistKind:5 identifier:@"com.apple.iBooks.plist.sample.stashed" assetMetadataProvider:providerCopy coverImageHelper:helperCopy assetMetadataCache:cacheCopy];

  return v10;
}

- (BKLibraryDataSourcePlist)initWithPlistKind:(int64_t)kind identifier:(id)identifier assetMetadataProvider:(id)provider coverImageHelper:(id)helper assetMetadataCache:(id)cache
{
  identifierCopy = identifier;
  providerCopy = provider;
  helperCopy = helper;
  cacheCopy = cache;
  kdebug_trace();
  v41.receiver = self;
  v41.super_class = BKLibraryDataSourcePlist;
  v17 = [(BKLibraryDataSourcePlist *)&v41 init];
  if (v17)
  {
    v18 = [IMLibraryPlist libraryPlistWithKind:kind];
    plist = v17->_plist;
    v17->_plist = v18;

    objc_storeStrong(&v17->_identifier, identifier);
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

    objc_storeWeak(&v17->_assetMetadataProvider, providerCopy);
    objc_storeWeak(&v17->_assetMetadataCache, cacheCopy);
    objc_storeWeak(&v17->_coverImageHelper, helperCopy);
    v32 = dispatch_queue_create("BKLibraryDataSourcePlist.ioQueue", 0);
    ioQueue = v17->_ioQueue;
    v17->_ioQueue = v32;

    v34 = +[NSMutableDictionary dictionary];
    fullPathToAssetID = v17->_fullPathToAssetID;
    v17->_fullPathToAssetID = v34;

    v36 = dispatch_queue_create("com.apple.iBooks.BKLibraryDataSourcePlist.iTunesU", 0);
    itunesuQueue = v17->_itunesuQueue;
    v17->_itunesuQueue = v36;

    plistDigest = [(BKLibraryDataSourcePlist *)v17 plistDigest];
    lastReloadDigest = v17->_lastReloadDigest;
    v17->_lastReloadDigest = plistDigest;
  }

  kdebug_trace();

  return v17;
}

- (BKLibraryDataSourcePlist)initWithTestPlist:(id)plist identifier:(id)identifier assetMetadataProvider:(id)provider coverImageHelper:(id)helper assetMetadataCache:(id)cache
{
  plistCopy = plist;
  v13 = [(BKLibraryDataSourcePlist *)self initWithPlistKind:0 identifier:identifier assetMetadataProvider:provider coverImageHelper:helper assetMetadataCache:cache];
  plist = v13->_plist;
  v13->_plist = plistCopy;

  return v13;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  identifier = [(BKLibraryDataSourcePlist *)self identifier];
  plist = [(BKLibraryDataSourcePlist *)self plist];
  path = [plist path];
  lastPathComponent = [path lastPathComponent];
  v9 = [NSString stringWithFormat:@"<%@=%p id=%@ plist=%@ rank=%ld>", v4, self, identifier, lastPathComponent, [(BKLibraryDataSourcePlist *)self rank]];

  return v9;
}

- (void)fetchAssetIDsWithCompletion:(id)completion
{
  completionCopy = completion;
  assetsQueue = [(BKLibraryDataSourcePlist *)self assetsQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D4C70;
  v7[3] = &unk_100A03788;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(assetsQueue, v7);
}

- (void)_addAssetIDsToCacheManager:(id)manager
{
  managerCopy = manager;
  v5 = +[NSMutableDictionary dictionary];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = managerCopy;
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
        assetID = [v10 assetID];
        identifier = [(BKLibraryDataSourcePlist *)self identifier];
        v13 = [BKCoverCacheURLSchemeHandler urlStringForAssetID:assetID dataSourceID:identifier];
        assetID2 = [v10 assetID];
        [v5 setObject:v13 forKeyedSubscript:assetID2];
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

- (void)_removeAssetIDsFromCacheManager:(id)manager
{
  managerCopy = manager;
  v5 = +[NSMutableDictionary dictionary];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = managerCopy;
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
        assetID = [v10 assetID];
        identifier = [(BKLibraryDataSourcePlist *)self identifier];
        v13 = [BKCoverCacheURLSchemeHandler urlStringForAssetID:assetID dataSourceID:identifier];
        assetID2 = [v10 assetID];
        [v5 setObject:v13 forKeyedSubscript:assetID2];
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
  identifier = [(BKLibraryDataSourcePlist *)self identifier];
  v4 = [identifier isEqualToString:@"com.apple.iBooks.plist.sample"];

  if (v4)
  {
    return 204;
  }

  identifier2 = [(BKLibraryDataSourcePlist *)self identifier];
  v7 = [identifier2 isEqualToString:@"com.apple.iBooks.plist.sample.stashed"];

  if (v7)
  {
    return 205;
  }

  else
  {
    return 206;
  }
}

- (BOOL)_isSupplementalPDFFromPlistEntry:(id)entry
{
  entryCopy = entry;
  v5 = [IMLibraryPlist isSupplementalContentFromPlistEntry:entryCopy];
  LODWORD(self) = [(BKLibraryDataSourcePlist *)self _contentTypeFromPlistEntry:entryCopy logFailure:0];

  if (self == 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

- (void)fetchAssetsWithIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  kdebug_trace();
  assetsQueue = [(BKLibraryDataSourcePlist *)self assetsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D56D8;
  block[3] = &unk_100A049A0;
  v12 = dsCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = dsCopy;
  dispatch_async(assetsQueue, block);
}

- (void)bookCoverForLibraryAssetProperties:(id)properties size:(CGSize)size completion:(id)completion
{
  propertiesCopy = properties;
  completionCopy = completion;
  v9 = [propertiesCopy objectForKey:@"assetID"];
  v10 = [propertiesCopy objectForKey:@"permlink"];
  v11 = [NSURL URLWithString:v10];
  coverImageHelper = [(BKLibraryDataSourcePlist *)self coverImageHelper];
  if (coverImageHelper)
  {
    v13 = [propertiesCopy objectForKey:@"path"];
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
    v21 = completionCopy;
    v18 = v11;
    selfCopy = self;
    v20 = v9;
    [coverImageHelper coverImageFromURL:v14 completion:v17];
  }

  else
  {
    v15 = objc_retainBlock(completionCopy);
    if (v15)
    {
      v16 = [NSError errorWithDomain:kBKLibraryDataSourceDomain code:kBKLibraryDataSourceErrorInvalidAssetError userInfo:0];
      (*(v15 + 2))(v15, 0, 0, v16);
    }
  }
}

- (void)deleteAssets:(id)assets exhaustive:(BOOL)exhaustive completion:(id)completion
{
  assetsCopy = assets;
  completionCopy = completion;
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
  obj = assetsCopy;
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
        assetID = [v13 assetID];
        if (assetID)
        {
          [v8 addObject:assetID];
          path = [v13 path];
          if (path)
          {
            v16 = path;
            dataSourceIdentifier = [v13 dataSourceIdentifier];
            identifier = [(BKLibraryDataSourcePlist *)self identifier];
            v19 = [dataSourceIdentifier isEqualToString:identifier];

            if (v19)
            {
              path2 = [v13 path];
              [v26 setObject:path2 forKey:assetID];
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
    v21 = completionCopy;
    v30 = completionCopy;
    v22 = v26;
    [(BKLibraryDataSourcePlist *)self _deleteAssetIDs:v8 assetIDToPath:v26 completion:v29];
    v23 = v30;
  }

  else
  {
    v21 = completionCopy;
    v24 = objc_retainBlock(completionCopy);
    v23 = v24;
    v22 = v26;
    if (v24)
    {
      (*(v24 + 2))(v24, 1, 0);
    }
  }
}

- (void)resolveLibraryAsset:(id)asset options:(id)options completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001D67F0;
  v8[3] = &unk_100A09AD0;
  selfCopy = self;
  assetCopy = asset;
  completionCopy = completion;
  v6 = completionCopy;
  v7 = assetCopy;
  [(BKLibraryDataSourcePlist *)selfCopy assetForLibraryAsset:v7 completion:v8];
}

- (void)assetForLibraryAsset:(id)asset completion:(id)completion
{
  assetCopy = asset;
  completionCopy = completion;
  v8 = BKLibraryLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100794938();
  }

  assetID = [assetCopy assetID];
  v14 = assetID;
  v10 = [NSArray arrayWithObjects:&v14 count:1];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001D6A10;
  v12[3] = &unk_100A06300;
  v13 = completionCopy;
  v11 = completionCopy;
  [(BKLibraryDataSourcePlist *)self fetchAssetsWithIDs:v10 completion:v12];
}

- (void)updateAsset:(id)asset userEditedTitle:(id)title completion:(id)completion
{
  assetCopy = asset;
  titleCopy = title;
  completionCopy = completion;
  v11 = BKLibraryLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(BKLibraryDataSourcePlist *)self identifier];
    assetID = [assetCopy assetID];
    *buf = 138544130;
    v25 = identifier;
    v26 = 2160;
    v27 = 1752392040;
    v28 = 2112;
    v29 = assetID;
    v30 = 2112;
    v31 = titleCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "DataSourcePlist: %{public}@ Updating assetID:%{mask.hash}@ with title:(%@)", buf, 0x2Au);
  }

  assetID2 = [assetCopy assetID];
  assetsQueue = [(BKLibraryDataSourcePlist *)self assetsQueue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001D6D28;
  v19[3] = &unk_100A04FE8;
  v20 = assetID2;
  selfCopy = self;
  v22 = titleCopy;
  v23 = completionCopy;
  v16 = completionCopy;
  v17 = titleCopy;
  v18 = assetID2;
  dispatch_async(assetsQueue, v19);
}

- (void)updateAsset:(id)asset isEphemeral:(BOOL)ephemeral completion:(id)completion
{
  ephemeralCopy = ephemeral;
  assetCopy = asset;
  completionCopy = completion;
  v10 = BKLibraryLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    identifier = [(BKLibraryDataSourcePlist *)self identifier];
    assetID = [assetCopy assetID];
    v17 = [NSNumber numberWithBool:ephemeralCopy];
    *buf = 138543874;
    v24 = identifier;
    v25 = 2112;
    v26 = assetID;
    v27 = 2112;
    v28 = v17;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%{public}@ Updating asset %@ isEphemeral: %@", buf, 0x20u);
  }

  assetID2 = [assetCopy assetID];
  assetsQueue = [(BKLibraryDataSourcePlist *)self assetsQueue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001D71EC;
  v18[3] = &unk_100A057C8;
  v19 = assetID2;
  selfCopy = self;
  v22 = ephemeralCopy;
  v21 = completionCopy;
  v13 = completionCopy;
  v14 = assetID2;
  dispatch_async(assetsQueue, v18);
}

- (void)reloadIfChanged
{
  lastReloadDigest = [(BKLibraryDataSourcePlist *)self lastReloadDigest];
  if (!lastReloadDigest || (v4 = lastReloadDigest, -[BKLibraryDataSourcePlist lastReloadDigest](self, "lastReloadDigest"), v5 = objc_claimAutoreleasedReturnValue(), -[BKLibraryDataSourcePlist plistDigest](self, "plistDigest"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v5 isEqual:v6], v6, v5, v4, (v7 & 1) == 0))
  {

    [(BKLibraryDataSourcePlist *)self reload];
  }
}

- (void)reload
{
  libraryManager = [(BKLibraryDataSourcePlist *)self libraryManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001D76C4;
  v4[3] = &unk_100A0B5D8;
  v4[4] = self;
  [libraryManager libraryDataSource:self updateWithName:@"reload" block:v4];
}

- (void)reloadInGroup:(id)group
{
  groupCopy = group;
  plistDigest = [(BKLibraryDataSourcePlist *)self plistDigest];
  [(BKLibraryDataSourcePlist *)self setLastReloadDigest:plistDigest];

  libraryManager = [(BKLibraryDataSourcePlist *)self libraryManager];
  [libraryManager libraryDataSource:self reloadInGroup:groupCopy];
}

- (void)reloadAssetsForAddingWithAssetIDs:(id)ds
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001D77C8;
  v3[3] = &unk_100A08418;
  v3[4] = self;
  [(BKLibraryDataSourcePlist *)self fetchAssetsWithIDs:ds completion:v3];
}

- (BOOL)hasDigestChangedSinceFetch
{
  lastFetchDigest = [(BKLibraryDataSourcePlist *)self lastFetchDigest];
  if (lastFetchDigest)
  {
    lastFetchDigest2 = [(BKLibraryDataSourcePlist *)self lastFetchDigest];
    plistDigest = [(BKLibraryDataSourcePlist *)self plistDigest];
    v6 = [lastFetchDigest2 isEqual:plistDigest] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (void)updateFetchDigest
{
  plistDigest = [(BKLibraryDataSourcePlist *)self plistDigest];
  [(BKLibraryDataSourcePlist *)self setLastFetchDigest:plistDigest];
}

- (id)importDestinationPathForAssetImporter:(id)importer
{
  identifier = [(BKLibraryDataSourcePlist *)self identifier];
  v4 = [identifier isEqualToString:@"com.apple.ibooks.plist.untethered"];

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

- (void)assetAccountIdentifiersForAssetID:(id)d storeID:(id)iD path:(id)path completion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  pathCopy = path;
  completionCopy = completion;
  v13 = kBKLibraryDataSourceErrorInvalidAssetError;
  v14 = objc_autoreleasePoolPush();
  if ([pathCopy length])
  {
    v15 = +[BLLibrary defaultBookLibrary];
    v16 = [NSURL fileURLWithPath:pathCopy];
    v17 = [v15 _perUserBookURLForBookURL:v16];

    if (v17)
    {
      v33 = dCopy;
      v18 = [v17 URLByAppendingPathComponent:@"iTunesMetadata.plist"];
      v19 = [NSDictionary dictionaryWithContentsOfURL:v18];
      if (v19)
      {
        v20 = objc_opt_new();
        v21 = [v19 objectForKey:@"com.apple.iTunesStore.downloadInfo"];
        v22 = [v21 valueForKeyPath:@"accountInfo.FamilyID"];
        BUStoreIdStringFromObject();
        v23 = v32 = iDCopy;
        [v20 setFamilyID:v23];

        v24 = [v21 valueForKeyPath:@"accountInfo.DSPersonID"];
        v25 = BUStoreIdStringFromObject();
        [v20 setDownloadedDSID:v25];

        v26 = [v21 valueForKeyPath:@"accountInfo.PurchaserID"];
        v27 = BUStoreIdStringFromObject();
        [v20 setPurchasedDSID:v27];

        iDCopy = v32;
        v13 = 0;
      }

      else
      {
        v20 = 0;
      }

      dCopy = v33;
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
  v29 = objc_retainBlock(completionCopy);
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

- (void)p_addPlistAssets:(id)assets checkForDuplicates:(BOOL)duplicates completion:(id)completion
{
  duplicatesCopy = duplicates;
  assetsCopy = assets;
  completionCopy = completion;
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
  obj = assetsCopy;
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
        assetID = [v12 assetID];
        if (duplicatesCopy)
        {
          plist = [(BKLibraryDataSourcePlist *)self plist];
          contents = [plist contents];
          v17 = [IMLibraryPlist entryForAssetID:assetID contents:contents];

          v18 = v17 == 0;
        }

        else
        {
          v18 = 1;
        }

        if ([v13 isFileURL])
        {
          path = [v13 path];
          v20 = [path length] != 0 && v18;

          if (v20 == 1)
          {
            v21 = objc_alloc_init(NSMutableDictionary);
            author = [v12 author];
            v23 = [author length];

            if (v23)
            {
              author2 = [v12 author];
              [v21 setObject:author2 forKey:@"author"];
            }

            title = [v12 title];
            v26 = [title length];

            if (v26)
            {
              title2 = [v12 title];
              [v21 setObject:title2 forKey:@"title"];
            }

            genre = [v12 genre];
            v29 = [genre length];

            if (v29)
            {
              genre2 = [v12 genre];
              [v21 setObject:genre2 forKey:@"genre"];
            }

            storeID = [v12 storeID];
            v32 = [storeID length];

            if (v32)
            {
              storeID2 = [v12 storeID];
              [v21 setObject:storeID2 forKey:@"storeId"];
            }

            assetID2 = [v12 assetID];
            v35 = [assetID2 length];

            if (v35)
            {
              assetID3 = [v12 assetID];
              [v21 setObject:assetID3 forKey:@"assetID"];
            }

            sortTitle = [v12 sortTitle];
            v38 = [sortTitle length];

            if (v38)
            {
              sortTitle2 = [v12 sortTitle];
              [v21 setObject:sortTitle2 forKey:@"sortTitle"];
            }

            sortAuthor = [v12 sortAuthor];
            v41 = [sortAuthor length];

            if (v41)
            {
              sortAuthor2 = [v12 sortAuthor];
              [v21 setObject:sortAuthor2 forKey:@"sortAuthor"];
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

            purchaseDate = [v12 purchaseDate];

            if (purchaseDate)
            {
              purchaseDate2 = [v12 purchaseDate];
              [v21 setObject:purchaseDate2 forKey:@"importDate"];
            }

            path2 = [v13 path];
            [v21 setObject:path2 forKey:@"path"];

            v48 = [(BKLibraryDataSourcePlist *)self _newEntryFromSummary:v21];
            [v58 addObject:v48];
            v49 = +[BKPlistAsset newBlankAsset];
            [(BKLibraryDataSourcePlist *)self _setPropertiesOfAsset:v49 withPlistEntry:v48];
            assetID4 = [v12 assetID];
            [v57 setObject:v49 forKeyedSubscript:assetID4];

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
    assetsQueue = [(BKLibraryDataSourcePlist *)self assetsQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001D832C;
    block[3] = &unk_100A04FE8;
    block[4] = self;
    v52 = v57;
    v64 = v57;
    v65 = v58;
    v53 = completionCopy;
    v66 = completionCopy;
    dispatch_async(assetsQueue, block);
  }

  else
  {
    v53 = completionCopy;
    v54 = objc_retainBlock(completionCopy);
    v55 = v54;
    v52 = v57;
    if (v54)
    {
      (*(v54 + 2))(v54, 1, 0);
    }
  }
}

- (void)removePlistAssets:(id)assets completion:(id)completion
{
  assetsCopy = assets;
  completionCopy = completion;
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
  v10 = assetsCopy;
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
        assetID = [v15 assetID];
        v17 = [assetID length];

        if (v17)
        {
          assetID2 = [v15 assetID];
          [v9 addObject:assetID2];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v12);
  }

  assetsQueue = [(BKLibraryDataSourcePlist *)self assetsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D87A8;
  block[3] = &unk_100A049A0;
  v23 = v9;
  selfCopy = self;
  v25 = completionCopy;
  v20 = completionCopy;
  v21 = v9;
  dispatch_async(assetsQueue, block);
}

- (void)updatePlistAssets:(id)assets completion:(id)completion
{
  v4 = objc_retainBlock(completion);
  if (v4)
  {
    v5 = v4;
    (*(v4 + 2))(v4, 1, 0);
    v4 = v5;
  }
}

- (id)coverWritingModeLanguageAndPageProgressionDirectionFromAssetID:(id)d
{
  dCopy = d;
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
  assetsQueue = [(BKLibraryDataSourcePlist *)self assetsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D8BE4;
  block[3] = &unk_100A03738;
  block[4] = self;
  v7 = dCopy;
  v17 = v7;
  v18 = &v33;
  v19 = &v27;
  v20 = &v21;
  dispatch_sync(assetsQueue, block);

  if (v34[5] && v28[5] && v22[5])
  {
    goto LABEL_14;
  }

  assetMetadataProvider = [(BKLibraryDataSourcePlist *)self assetMetadataProvider];
  v9 = [assetMetadataProvider coverWritingModeLanguageAndPageProgressionDirectionFromAssetID:v7];

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

- (id)plistEntryAsDictionaryFromAssetID:(id)d path:(id)path needsCoordination:(BOOL)coordination
{
  dCopy = d;
  pathCopy = path;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1000274FC;
  v22 = sub_1000276A8;
  v23 = 0;
  assetsQueue = [(BKLibraryDataSourcePlist *)self assetsQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001D9008;
  v14[3] = &unk_100A0B600;
  v14[4] = self;
  v15 = dCopy;
  v16 = pathCopy;
  v17 = &v18;
  v10 = pathCopy;
  v11 = dCopy;
  dispatch_sync(assetsQueue, v14);

  v12 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v12;
}

- (void)q_refreshAssetCachesFromPlistContents:(id)contents
{
  v4 = [IMLibraryPlist booksArrayFromPlistEntry:contents];
  v5 = BKLibraryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(BKLibraryDataSourcePlist *)self identifier];
    *buf = 138543618;
    v28 = identifier;
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
        assetID = [v13 assetID];
        v15 = [assetID length];

        if (v15)
        {
          assetCache = [(BKLibraryDataSourcePlist *)self assetCache];
          assetID2 = [v13 assetID];
          [assetCache setObject:v13 forKey:assetID2];
        }

        temporaryAssetID = [v13 temporaryAssetID];
        v19 = [temporaryAssetID length];

        if (v19)
        {
          assetCacheByTemporaryAssetID = [(BKLibraryDataSourcePlist *)self assetCacheByTemporaryAssetID];
          temporaryAssetID2 = [v13 temporaryAssetID];
          [assetCacheByTemporaryAssetID setObject:v13 forKey:temporaryAssetID2];
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
  assetCache = [(BKLibraryDataSourcePlist *)self assetCache];
  [assetCache removeAllObjects];

  assetCacheByTemporaryAssetID = [(BKLibraryDataSourcePlist *)self assetCacheByTemporaryAssetID];
  [assetCacheByTemporaryAssetID removeAllObjects];
}

- (void)q_evictFromAssetCaches:(id)caches
{
  cachesCopy = caches;
  assetCache = [(BKLibraryDataSourcePlist *)self assetCache];
  [assetCache removeObjectForKey:cachesCopy];

  assetCacheByTemporaryAssetID = [(BKLibraryDataSourcePlist *)self assetCacheByTemporaryAssetID];
  [assetCacheByTemporaryAssetID removeObjectForKey:cachesCopy];
}

- (id)_pathStringWithoutDirectoryPrefix:(id)prefix
{
  prefixCopy = prefix;
  v4 = +[IMLibraryPlist purchasesRepositoryPath];
  v5 = [prefixCopy stringByReplacingOccurrencesOfString:v4 withString:&stru_100A30A68];

  return v5;
}

- (id)_newEntryFromSummary:(id)summary
{
  summaryCopy = summary;
  writesFullPaths = [(BKLibraryDataSourcePlist *)self writesFullPaths];
  v6 = [summaryCopy objectForKey:@"path"];
  if ((writesFullPaths & 1) == 0)
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

    v11 = [summaryCopy objectForKey:@"author"];
    v12 = [v11 length];

    if (v12)
    {
      v13 = [summaryCopy objectForKey:@"author"];
      v14 = +[IMLibraryPlist keyNameForAuthor];
      [v9 setObject:v13 forKey:v14];
    }

    v15 = [summaryCopy objectForKey:@"title"];
    v16 = [v15 length];

    if (v16)
    {
      v17 = [summaryCopy objectForKey:@"title"];
      v18 = +[IMLibraryPlist keyNameForTitle];
      [v9 setObject:v17 forKey:v18];
    }

    v19 = [summaryCopy objectForKey:@"genre"];
    v20 = [v19 length];

    if (v20)
    {
      v21 = [summaryCopy objectForKey:@"genre"];
      v22 = +[IMLibraryPlist keyNameForGenre];
      [v9 setObject:v21 forKey:v22];
    }

    v23 = [summaryCopy objectForKey:@"storeId"];
    v24 = [v23 length];

    if (v24)
    {
      v25 = [summaryCopy objectForKey:@"storeId"];
      v26 = +[IMLibraryPlist keyNameForStoreId];
      [v9 setObject:v25 forKey:v26];
    }

    v27 = [summaryCopy objectForKey:@"assetID"];
    v28 = [v27 length];

    if (v28)
    {
      v29 = [summaryCopy objectForKey:@"assetID"];
      v30 = +[IMLibraryPlist keyNameForUniqueId];
      [v9 setObject:v29 forKey:v30];
    }

    v31 = [summaryCopy objectForKey:@"sortAuthor"];
    v32 = [v31 length];

    if (v32)
    {
      v33 = [summaryCopy objectForKey:@"sortAuthor"];
      v34 = [summaryCopy objectForKey:@"author"];
      v35 = [v33 isEqualToString:v34];

      if ((v35 & 1) == 0)
      {
        v36 = [summaryCopy objectForKey:@"sortAuthor"];
        v37 = +[IMLibraryPlist keyNameForSortAuthor];
        [v9 setObject:v36 forKey:v37];
      }
    }

    v38 = [summaryCopy objectForKey:@"sortTitle"];
    v39 = [v38 length];

    if (v39)
    {
      v40 = [summaryCopy objectForKey:@"sortTitle"];
      v41 = [summaryCopy objectForKey:@"title"];
      v42 = [v40 isEqualToString:v41];

      if ((v42 & 1) == 0)
      {
        v43 = [summaryCopy objectForKey:@"sortTitle"];
        v44 = +[IMLibraryPlist keyNameForSortTitle];
        [v9 setObject:v43 forKey:v44];
      }
    }

    v45 = [summaryCopy objectForKey:@"pageProgressionDirection"];
    v46 = [v45 length];

    if (v46)
    {
      v47 = [summaryCopy objectForKey:@"pageProgressionDirection"];
      v48 = +[IMLibraryPlist keyNameForPageProgression];
      [v9 setObject:v47 forKey:v48];
    }

    v49 = [summaryCopy objectForKey:@"proof"];
    bOOLValue = [v49 BOOLValue];

    if (bOOLValue)
    {
      v51 = [summaryCopy objectForKey:@"proof"];
      v52 = +[IMLibraryPlist keyNameForProofedAsset];
      [v9 setObject:v51 forKey:v52];
    }

    v53 = [summaryCopy objectForKey:@"ephemeral"];
    bOOLValue2 = [v53 BOOLValue];

    if (bOOLValue2)
    {
      v55 = [summaryCopy objectForKey:@"ephemeral"];
      v56 = +[IMLibraryPlist keyNameForIsEphemeral];
      [v9 setObject:v55 forKey:v56];
    }

    v57 = [summaryCopy objectForKey:@"importDate"];

    if (v57)
    {
      v58 = [summaryCopy objectForKey:@"importDate"];
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
  identifier = [(BKLibraryDataSourcePlist *)self identifier];
  v3 = [identifier isEqualToString:@"com.apple.ibooks.plist.iTunesSynced"];

  return v3;
}

- (id)q_plistContentsWithError:(id *)error
{
  v5 = +[IMLibraryPlist keyNameForBooksArray];
  v9 = v5;
  v6 = [(BKLibraryDataSourcePlist *)self q_plistContentsArrayWithError:error];
  v10 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];

  return v7;
}

- (id)q_plistContentsArrayWithError:(id *)error
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
  plist = [(BKLibraryDataSourcePlist *)self plist];
  context = objc_autoreleasePoolPush();
  v4 = 0;
  v90 = 0;
  do
  {
    v5 = +[BLLockFile iTunesSyncLockFile];
    if ([v5 tryLock:0])
    {
      plist2 = [(BKLibraryDataSourcePlist *)self plist];
      contents = [plist2 contents];

      v8 = 1;
      v9 = v5;
      v90 = contents;
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
      identifier = [(BKLibraryDataSourcePlist *)self identifier];
      v14 = identifier;
      *buf = 138543874;
      v15 = "NO";
      if (v8)
      {
        v15 = "YES";
      }

      v109 = identifier;
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

  identifier2 = [(BKLibraryDataSourcePlist *)self identifier];
  v97 = [identifier2 isEqualToString:@"com.apple.ibooks.plist.iTunesSynced"];

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
            directory = [plist directory];
            if ([v22 hasPrefix:@"/"] & 1) != 0 || (objc_msgSend(v22, "hasPrefix:", directory))
            {
              v24 = v22;
            }

            else
            {
              directory2 = [plist directory];
              v24 = [directory2 stringByAppendingPathComponent:v22];
            }

            [v21 setObject:v24 forKey:@"BKLibraryDataSourcePlist-FullPath"];
            fileManager = [(BKLibraryDataSourcePlist *)self fileManager];
            v27 = [fileManager fileExistsAtPath:v24];

            if ((v27 & 1) == 0)
            {
              v37 = +[BKLibrarySharedContainerManager sharedInstance];
              v29 = [v37 sharedURLForEntry:v20];

              if (!v29)
              {
                goto LABEL_53;
              }

              fileManager2 = [(BKLibraryDataSourcePlist *)self fileManager];
              path = [v29 path];
              v40 = [fileManager2 fileExistsAtPath:path];

              if (!v40)
              {
                goto LABEL_53;
              }

              path2 = [v29 path];
              [v21 setObject:path2 forKey:@"BKLibraryDataSourcePlist-FullPath"];

              goto LABEL_44;
            }

            if ([v93 _isMultiUser] && objc_msgSend(v93, "_isShareableBook:", v20))
            {
              v28 = +[BKLibrarySharedContainerManager sharedInstance];
              v29 = [v28 sharedURLForEntry:v20];

              if (!v29 || (-[BKLibraryDataSourcePlist fileManager](self, "fileManager"), v30 = objc_claimAutoreleasedReturnValue(), [v29 path], v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v30, "fileExistsAtPath:", v31), v31, v30, (v32 & 1) == 0))
              {
                [v21 removeObjectForKey:@"BKLibraryDataSourcePlist-FullPath"];
                fileManager3 = [(BKLibraryDataSourcePlist *)self fileManager];
                v103 = 0;
                v34 = [fileManager3 removeItemAtPath:v24 error:&v103];
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
                  libraryManager = [(BKLibraryDataSourcePlist *)self libraryManager];
                  delegate = [libraryManager delegate];

                  if (objc_opt_respondsToSelector())
                  {
                    BYTE4(v94) = [delegate isRestoringFromiCloud];
                  }

                  else
                  {
                    BYTE4(v94) = 0;
                  }
                }

                v62 = BKLibraryLog();
                if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
                {
                  identifier3 = [(BKLibraryDataSourcePlist *)self identifier];
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

                  v109 = identifier3;
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
            longLongValue = [v44 longLongValue];
            longLongValue2 = [(__CFString *)v45 longLongValue];
            if (longLongValue2 > longLongValue)
            {
              v48 = BKLibraryLog();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
              {
                identifier4 = [(BKLibraryDataSourcePlist *)self identifier];
                v71 = [v43 objectForKey:@"BKLibraryDataSourcePlist-FullPath"];
                v72 = [v21 objectForKey:@"BKLibraryDataSourcePlist-FullPath"];
                *buf = 138544642;
                v109 = identifier4;
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

            if (longLongValue2 != longLongValue)
            {
              v60 = BKLibraryLog();
              if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
              {
                identifier5 = [(BKLibraryDataSourcePlist *)self identifier];
                v74 = [v43 objectForKey:@"BKLibraryDataSourcePlist-FullPath"];
                v75 = [v21 objectForKey:@"BKLibraryDataSourcePlist-FullPath"];
                *buf = 138544642;
                v109 = identifier5;
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
            bOOLValue = [v52 BOOLValue];

            v54 = [IMLibraryPlist isSampleFromPlistEntry:v21];
            bOOLValue2 = [v54 BOOLValue];

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
                identifier6 = [(BKLibraryDataSourcePlist *)self identifier];
                *buf = 138543618;
                v109 = identifier6;
                v110 = 2112;
                v111 = v101;
                _os_log_debug_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEBUG, "%{public}@ Item with path taking over item without path: [StoreID: %@]", buf, 0x16u);
              }

              [v92 addObject:v43];
              [v96 setObject:v21 forKey:v101];
              goto LABEL_85;
            }

            if (bOOLValue2 & 1 | ((bOOLValue & 1) == 0))
            {
              if (![(BKLibraryDataSourcePlist *)self _isEntryFamilyPurchase:v43]|| [(BKLibraryDataSourcePlist *)self _isEntryFamilyPurchase:v21])
              {
                v60 = BKLibraryLog();
                if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
                {
                  identifier7 = [(BKLibraryDataSourcePlist *)self identifier];
                  v81 = [v43 objectForKey:@"BKLibraryDataSourcePlist-FullPath"];
                  v82 = [v21 objectForKey:@"BKLibraryDataSourcePlist-FullPath"];
                  *buf = 138544642;
                  v109 = identifier7;
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
                identifier8 = [(BKLibraryDataSourcePlist *)self identifier];
                v84 = [v43 objectForKey:@"BKLibraryDataSourcePlist-FullPath"];
                v85 = [v21 objectForKey:@"BKLibraryDataSourcePlist-FullPath"];
                *buf = 138544130;
                v109 = identifier8;
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
                identifier9 = [(BKLibraryDataSourcePlist *)self identifier];
                v78 = [v43 objectForKey:@"BKLibraryDataSourcePlist-FullPath"];
                v79 = [v21 objectForKey:@"BKLibraryDataSourcePlist-FullPath"];
                *buf = 138544642;
                v109 = identifier9;
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
  allValues = [v96 allValues];
  [v91 addObjectsFromArray:allValues];

  return v91;
}

- (void)q_deletePlistEntries:(id)entries
{
  entriesCopy = entries;
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = entriesCopy;
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
    plist = [(BKLibraryDataSourcePlist *)self plist];
    allObjects = [v5 allObjects];
    [plist addDeletedFiles:allObjects];

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

- (BOOL)_isFamilyPurchaseAtPath:(id)path
{
  pathCopy = path;
  v5 = objc_autoreleasePoolPush();
  v6 = [pathCopy stringByAppendingPathComponent:@"iTunesMetadata.plist"];
  v7 = [NSDictionary dictionaryWithContentsOfFile:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKey:@"com.apple.iTunesStore.downloadInfo"];
    v10 = [v9 valueForKeyPath:@"accountInfo.FamilyID"];
    v11 = [v9 valueForKeyPath:@"accountInfo.DSPersonID"];
    v12 = [v9 valueForKeyPath:@"accountInfo.PurchaserID"];
    libraryManager = [(BKLibraryDataSourcePlist *)self libraryManager];
    v14 = [libraryManager isFamilyPurchaseWithFamilyID:v10 purchaserDSID:v12 downloaderDSID:v11];
  }

  else
  {
    v14 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return v14;
}

- (BOOL)_isEntryFamilyPurchase:(id)purchase
{
  v4 = [purchase objectForKey:@"BKLibraryDataSourcePlist-FullPath"];
  LOBYTE(self) = [(BKLibraryDataSourcePlist *)self _isFamilyPurchaseAtPath:v4];

  return self;
}

- (void)_setPropertiesOfAsset:(id)asset withPlistEntry:(id)entry
{
  assetCopy = asset;
  entryCopy = entry;
  v8 = [(BKLibraryDataSourcePlist *)self _isSupplementalPDFFromPlistEntry:entryCopy];
  v9 = [IMLibraryPlist storeIdFromPlistEntry:entryCopy];
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
  selfCopy = self;
  if (!v11)
  {
    if ([(BKLibraryDataSourcePlist *)self _contentTypeFromPlistEntry:entryCopy logFailure:0]!= 3)
    {
      goto LABEL_9;
    }

    v12 = [IMLibraryPlist uniqueIdFromPlistEntry:entryCopy];
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
      v23 = [entryCopy objectForKey:@"BKLibraryDataSourcePlist-FullPath"];
      v24 = BUDynamicCast();

      if (v24)
      {
        fullPathToAssetID = [(BKLibraryDataSourcePlist *)self fullPathToAssetID];
        v26 = [fullPathToAssetID objectForKey:v24];

        if (v26)
        {
          v27 = v26;
          fullPathToAssetID2 = BKLibraryLog();
          v10 = v14;
          v12 = v27;
          if (os_log_type_enabled(fullPathToAssetID2, OS_LOG_TYPE_DEBUG))
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

          fullPathToAssetID2 = [(BKLibraryDataSourcePlist *)selfCopy fullPathToAssetID];
          [fullPathToAssetID2 setObject:v40 forKey:v24];
          goto LABEL_32;
        }

        if (v43)
        {
          sub_100794FC8();
        }

        self = selfCopy;
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

      v12 = [IMLibraryPlist uniqueIdFromPlistEntry:entryCopy];
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
      fullPathToAssetID2 = v91;
      v38 = BKLibraryLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        sub_100795098();
      }

      if (v12 && !fullPathToAssetID2)
      {
        fullPathToAssetID3 = [(BKLibraryDataSourcePlist *)self fullPathToAssetID];
        [fullPathToAssetID3 setObject:v12 forKey:v24];
      }

LABEL_32:

LABEL_33:
    }
  }

  v44 = [IMLibraryPlist temporaryItemIdentifierFromPlistEntry:entryCopy];
  if (v44)
  {
    identifierFromPermlink = v44;
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

    identifierFromPermlink = 0;
  }

  else if (v8)
  {
    identifierFromPermlink = v10;
    v46 = BKLibraryLog();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      sub_1007951A0();
    }
  }

  else
  {
    v46 = [IMLibraryPlist permlinkFromPlistEntry:entryCopy];
    identifierFromPermlink = [v46 identifierFromPermlink];
    v54 = BKLibraryLog();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      sub_100795138();
    }
  }

LABEL_46:
  v55 = +[BKLibrarySharedContainerManager sharedInstance];
  v56 = [v55 sharedURLForEntry:entryCopy];

  v57 = [IMLibraryPlist folderNameFromPlistEntry:entryCopy];
  if (v57)
  {
    [assetCopy setIsRestoring:0];
  }

  else
  {
    v58 = [IMLibraryPlist backupFolderNameFromPlistEntry:entryCopy];
    [assetCopy setIsRestoring:v58 != 0];
  }

  v59 = [IMLibraryPlist backupFolderNameFromPlistEntry:entryCopy];

  if (v59)
  {
    [assetCopy setGeneration:0x7FFFFFFFFFFFFFFFLL];
  }

  if ([assetCopy isRestoring])
  {
    v60 = 2;
  }

  else
  {
    v60 = 1;
  }

  [assetCopy setState:v60];
  if (v56)
  {
    [assetCopy setUrl:v56];
  }

  else
  {
    v61 = [entryCopy objectForKeyedSubscript:@"BKLibraryDataSourcePlist-FullPath"];
    if (v61)
    {
      v62 = [entryCopy objectForKeyedSubscript:@"BKLibraryDataSourcePlist-FullPath"];
      v63 = [NSURL fileURLWithPath:v62];
      [assetCopy setUrl:v63];
    }

    else
    {
      [assetCopy setUrl:0];
    }
  }

  [assetCopy setStoreID:v10];
  v64 = [IMLibraryPlist storePlaylistIdFromPlistEntry:entryCopy];
  [assetCopy setStorePlaylistID:v64];

  [assetCopy setSupplementalContent:{+[IMLibraryPlist isSupplementalContentFromPlistEntry:](IMLibraryPlist, "isSupplementalContentFromPlistEntry:", entryCopy)}];
  [assetCopy setAssetID:v12];
  [assetCopy setTemporaryAssetID:identifierFromPermlink];
  v65 = [IMLibraryPlist authorFromPlistEntry:entryCopy];
  [assetCopy setAuthor:v65];

  v66 = [IMLibraryPlist sortAuthorFromPlistEntry:entryCopy];
  [assetCopy setSortAuthor:v66];
  v67 = [IMLibraryPlist titleFromPlistEntry:entryCopy];
  [assetCopy setTitle:v67];

  v68 = [IMLibraryPlist sortTitleFromPlistEntry:entryCopy];
  if (![v68 length])
  {
    title = [assetCopy title];

    v68 = title;
  }

  v89 = v12;
  [assetCopy setSortTitle:v68];
  title2 = [assetCopy title];
  if ([title2 length])
  {
    goto LABEL_65;
  }

  [assetCopy sortTitle];
  v72 = v71 = v10;
  v73 = [v72 length];

  v10 = v71;
  if (v73)
  {
    title2 = [assetCopy sortTitle];
    [assetCopy setTitle:title2];
LABEL_65:
  }

  v74 = [IMLibraryPlist genreFromPlistEntry:entryCopy];
  [assetCopy setGenre:v74];

  identifier = [(BKLibraryDataSourcePlist *)selfCopy identifier];
  [assetCopy setDataSourceIdentifier:identifier];

  [assetCopy setContentType:{-[BKLibraryDataSourcePlist _contentTypeFromPlistEntry:logFailure:](selfCopy, "_contentTypeFromPlistEntry:logFailure:", entryCopy, 1)}];
  v76 = [IMLibraryPlist isSampleFromPlistEntry:entryCopy];
  [assetCopy setSample:{objc_msgSend(v76, "BOOLValue")}];

  v77 = [IMLibraryPlist isProofedAssetFromPlistEntry:entryCopy];
  [assetCopy setProof:{objc_msgSend(v77, "BOOLValue")}];

  v78 = [IMLibraryPlist isExplicitContentFromPlistEntry:entryCopy];
  [assetCopy setIsExplicit:v78];

  v79 = [IMLibraryPlist isEphemeralFromPlistEntry:entryCopy];
  [assetCopy setEphemeral:{objc_msgSend(v79, "BOOLValue")}];

  v80 = [IMLibraryPlist publicationVersionNumberFromPlistEntry:entryCopy];
  [assetCopy setVersionNumber:v80];

  v81 = [IMLibraryPlist humanReadablePublicationVersionFromPlistEntry:entryCopy];
  [assetCopy setVersionNumberHumanReadable:v81];

  v82 = [IMLibraryPlist scrollDirectionFromPlistEntry:entryCopy];
  v83 = v82;
  if (v82 && (([v82 isEqualToString:@"horizontal"] & 1) != 0 || objc_msgSend(v83, "isEqualToString:", @"vertical")))
  {
    [assetCopy setScrollDirection:v83];
  }

  v84 = [IMLibraryPlist languageFromPlistEntry:entryCopy];
  [assetCopy setLanguage:v84];

  v85 = [IMLibraryPlist coverWritingModeFromPlistEntry:entryCopy];
  [assetCopy setCoverWritingMode:v85];

  v86 = [IMLibraryPlist pageProgressionFromPlistEntry:entryCopy];
  [assetCopy setPageProgressionDirection:v86];

  v87 = [IMLibraryPlist permlinkFromPlistEntry:entryCopy];
  [assetCopy setPermlink:v87];

  v88 = [IMLibraryPlist importDateFromPlistEntry:entryCopy];
  if (v88)
  {
    [assetCopy setPurchaseDate:v88];
  }
}

- (void)q_processAssetStateChanges:(id)changes
{
  changesCopy = changes;
  v5 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = changesCopy;
  v27 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v27)
  {
    v6 = *v32;
    p_info = BKLibraryBookshelfSupplementaryDataSource.info;
    selfCopy = self;
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
          assetID = [v9 assetID];
          temporaryAssetID = [v10 temporaryAssetID];
          if ([assetID length])
          {
            restoringFromBackupAssetIDs = [(BKLibraryDataSourcePlist *)self restoringFromBackupAssetIDs];
            v14 = [restoringFromBackupAssetIDs containsObject:assetID];
          }

          else
          {
            v14 = 0;
          }

          if ([temporaryAssetID length])
          {
            [(BKLibraryDataSourcePlist *)self restoringFromBackupTemporaryAssetIDs];
            v15 = p_info;
            v16 = v6;
            v18 = v17 = v5;
            v19 = [v18 containsObject:temporaryAssetID];

            v5 = v17;
            v6 = v16;
            p_info = v15;
          }

          else
          {
            v19 = 0;
          }

          v20 = v14 | v19;
          if ([v10 state] == 1 && (v20 & 1) != 0 && assetID)
          {
            [v10 setGeneration:0x7FFFFFFFFFFFFFFFLL];
            [v5 addObject:v10];
            self = selfCopy;
            restoringFromBackupAssetIDs2 = [(BKLibraryDataSourcePlist *)selfCopy restoringFromBackupAssetIDs];
            [restoringFromBackupAssetIDs2 removeObject:assetID];

            if ([temporaryAssetID length])
            {
              restoringFromBackupTemporaryAssetIDs = [(BKLibraryDataSourcePlist *)selfCopy restoringFromBackupTemporaryAssetIDs];
              [restoringFromBackupTemporaryAssetIDs removeObject:temporaryAssetID];
              goto LABEL_22;
            }
          }

          else
          {
            self = selfCopy;
            if (!(([v10 state] != 2) | v20 & 1))
            {
              if (assetID)
              {
                [v10 setGeneration:0x7FFFFFFFFFFFFFFFLL];
                [v5 addObject:v10];
                restoringFromBackupAssetIDs3 = [(BKLibraryDataSourcePlist *)selfCopy restoringFromBackupAssetIDs];
                [restoringFromBackupAssetIDs3 addObject:assetID];

                if (temporaryAssetID)
                {
                  restoringFromBackupTemporaryAssetIDs = [(BKLibraryDataSourcePlist *)selfCopy restoringFromBackupTemporaryAssetIDs];
                  [restoringFromBackupTemporaryAssetIDs addObject:temporaryAssetID];
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
    libraryManager = [(BKLibraryDataSourcePlist *)self libraryManager];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1001DBEA4;
    v28[3] = &unk_100A03440;
    v29 = v5;
    selfCopy2 = self;
    [libraryManager addCustomOperationBlock:v28];
  }
}

- (signed)_contentTypeFromPlistEntry:(id)entry logFailure:(BOOL)failure
{
  failureCopy = failure;
  entryCopy = entry;
  v6 = [IMLibraryPlist folderNameFromPlistEntry:entryCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [IMLibraryPlist backupFolderNameFromPlistEntry:entryCopy];
  }

  v9 = v8;

  if ([v9 length])
  {
    v10 = [BKAssetUtilities contentTypeForPath:v9];
  }

  else
  {
    objc_opt_class();
    v11 = [entryCopy objectForKey:@"AssetType"];
    v12 = BUDynamicCast();

    v10 = 4 * ([v12 length] != 0);
  }

  if (v10)
  {
    v13 = 1;
  }

  else
  {
    v13 = !failureCopy;
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

- (void)_deleteAssetIDs:(id)ds assetIDToPath:(id)path completion:(id)completion
{
  dsCopy = ds;
  pathCopy = path;
  completionCopy = completion;
  v11 = +[NSMutableSet set];
  v12 = +[NSMutableSet set];
  v13 = +[NSMutableArray array];
  assetsQueue = [(BKLibraryDataSourcePlist *)self assetsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DC268;
  block[3] = &unk_100A0B628;
  block[4] = self;
  v22 = dsCopy;
  v23 = pathCopy;
  v24 = v12;
  v25 = v11;
  v26 = v13;
  v27 = completionCopy;
  v15 = completionCopy;
  v16 = v13;
  v17 = v11;
  v18 = v12;
  v19 = pathCopy;
  v20 = dsCopy;
  dispatch_async(assetsQueue, block);
}

- (id)booksRootPath
{
  plist = [(BKLibraryDataSourcePlist *)self plist];
  path = [plist path];
  stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];

  return stringByDeletingLastPathComponent;
}

- (BOOL)removeFileWithURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = +[AEPdfCache sharedInstance];
  [v7 removeCacheObjectForURL:lCopy];

  fileManager = [(BKLibraryDataSourcePlist *)self fileManager];
  LOBYTE(error) = [fileManager removeItemAtURL:lCopy error:error];

  return error;
}

- (void)q_plistWasChangedOnDisk
{
  libraryManager = [(BKLibraryDataSourcePlist *)self libraryManager];
  [libraryManager reloadDataSource:self completion:0];

  didWritePlistHandler = [(BKLibraryDataSourcePlist *)self didWritePlistHandler];
  if (didWritePlistHandler)
  {
    v5 = didWritePlistHandler;
    didWritePlistHandler[2]();
    didWritePlistHandler = v5;
  }
}

- (BOOL)q_rewritePlistDictionary:(id)dictionary path:(id)path notify:(BOOL)notify
{
  notifyCopy = notify;
  dictionaryCopy = dictionary;
  pathCopy = path;
  if (!dictionaryCopy)
  {
    v12 = BKLibraryLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100795310();
    }

    goto LABEL_9;
  }

  currentQueueGeneration = [(BKLibraryDataSourcePlist *)self currentQueueGeneration];
  if (currentQueueGeneration == [(BKLibraryDataSourcePlist *)self startQueueGeneration])
  {
    v11 = [dictionaryCopy writeToFile:pathCopy atomically:1];
    if (v11 && notifyCopy)
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

- (void)q_asyncRemovePlistAssets:(id)assets notify:(BOOL)notify completion:(id)completion
{
  notifyCopy = notify;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001DCC9C;
  v9[3] = &unk_100A0B650;
  assetsCopy = assets;
  v8 = assetsCopy;
  [(BKLibraryDataSourcePlist *)self q_asyncRemovePlistEntriesMatching:v9 notify:notifyCopy completion:completion];
}

- (void)q_asyncRemovePlistPaths:(id)paths completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001DCD94;
  v7[3] = &unk_100A0B650;
  pathsCopy = paths;
  v6 = pathsCopy;
  [(BKLibraryDataSourcePlist *)self q_asyncRemovePlistEntriesMatching:v7 notify:1 completion:completion];
}

- (void)q_asyncRemovePlistEntriesMatching:(id)matching notify:(BOOL)notify completion:(id)completion
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001DCEB0;
  v9[3] = &unk_100A0B6A0;
  v9[4] = self;
  matchingCopy = matching;
  notifyCopy = notify;
  completionCopy = completion;
  v7 = completionCopy;
  v8 = matchingCopy;
  dispatch_async(&_dispatch_main_q, v9);
}

- (void)q_asyncReplacePlistEntries:(id)entries notify:(BOOL)notify completion:(id)completion
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001DD750;
  v9[3] = &unk_100A0B6A0;
  v9[4] = self;
  entriesCopy = entries;
  notifyCopy = notify;
  completionCopy = completion;
  v7 = completionCopy;
  v8 = entriesCopy;
  dispatch_async(&_dispatch_main_q, v9);
}

- (void)q_asyncAddAssetDictionaries:(id)dictionaries completion:(id)completion
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DDF64;
  block[3] = &unk_100A049A0;
  block[4] = self;
  dictionariesCopy = dictionaries;
  completionCopy = completion;
  v5 = completionCopy;
  v6 = dictionariesCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)plistAssetWithAsset:(id)asset andURL:(id)l
{
  lCopy = l;
  assetCopy = asset;
  v7 = +[BKPlistAsset newBlankAsset];
  assetID = [assetCopy assetID];
  [v7 setAssetID:assetID];

  storeID = [assetCopy storeID];
  [v7 setStoreID:storeID];

  storePlaylistID = [assetCopy storePlaylistID];
  [v7 setStorePlaylistID:storePlaylistID];

  [v7 setSupplementalContent:{objc_msgSend(assetCopy, "isSupplementalContent")}];
  [v7 setUrl:lCopy];

  title = [assetCopy title];
  [v7 setTitle:title];

  sortTitle = [assetCopy sortTitle];
  [v7 setSortTitle:sortTitle];

  author = [assetCopy author];
  [v7 setAuthor:author];

  sortAuthor = [assetCopy sortAuthor];

  [v7 setSortAuthor:sortAuthor];

  return v7;
}

- (void)prioritizeAssetRestoreWithAssetID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    v7 = dCopy;
    v5 = [NSArray arrayWithObjects:&v7 count:1];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001DE808;
    v6[3] = &unk_100A08418;
    v6[4] = self;
    [(BKLibraryDataSourcePlist *)self fetchAssetsWithIDs:v5 completion:v6];
  }
}

- (void)_prioritizeRestorePlistAsset:(id)asset
{
  assetCopy = asset;
  if ([assetCopy isRestoring])
  {
    temporaryAssetID = [assetCopy temporaryAssetID];
    if (temporaryAssetID)
    {
      v6 = objc_opt_new();
      [v6 prioritizeAsset:temporaryAssetID forDataclass:@"Book"];
      v7 = BKLibraryLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        identifier = [(BKLibraryDataSourcePlist *)self identifier];
        assetID = [assetCopy assetID];
        v10 = 138412546;
        v11 = identifier;
        v12 = 2112;
        v13 = assetID;
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
    temporaryAssetID = BKLibraryLog();
    if (os_log_type_enabled(temporaryAssetID, OS_LOG_TYPE_ERROR))
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