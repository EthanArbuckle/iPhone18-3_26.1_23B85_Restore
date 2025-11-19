@interface BKLibraryDataSourcePlistImporting
- (BKAssetImportingDelegate)importingDelegate;
- (BKAssetMetadataCaching)metadataCache;
- (BKLibraryDataSourcePlistImporting)init;
- (BKLibraryDataSourcePlistImporting)initWithMetadataCache:(id)a3 importingDelegate:(id)a4;
- (BKLibraryDataSourcePlistWriting)plistWriter;
- (BKLibraryManager)libraryManager;
- (BOOL)_cleanupBackupAttributeOnItemAtURL:(id)a3;
- (BOOL)_cleanupFileProtectionOnItemAtURL:(id)a3;
- (BOOL)_hasCleanedUpBackupAttributeOnImportedFiles;
- (BOOL)_hasCleanedUpFileProtectionOnImportedFiles;
- (BOOL)canImportURL:(id)a3 openInPlace:(BOOL)a4 options:(id)a5;
- (BOOL)hasCleanedUpImportedFiles;
- (BOOL)importURL:(id)a3 openInPlace:(BOOL)a4 options:(id)a5 completion:(id)a6;
- (BOOL)p_createPurchasesDirectory;
- (id)p_assetIdentifierFromExtractionFileOp:(id)a3;
- (id)p_coverImageFromZipArchive:(id)a3 error:(id *)a4;
- (id)p_destPathFromSrcPath:(id)a3;
- (id)p_itemIdStringFromPlistEntry:(id)a3;
- (id)p_storeIdFromEpubDirectory:(id)a3;
- (void)assetForLibraryAsset:(id)a3 completion:(id)a4;
- (void)bookCoverForLibraryAssetProperties:(id)a3 size:(CGSize)a4 completion:(id)a5;
- (void)cleanupImportedFiles;
- (void)clearAgingDocumentInbox;
- (void)deleteAssets:(id)a3 exhaustive:(BOOL)a4 completion:(id)a5;
- (void)extractOperationDidFail:(id)a3;
- (void)extractOperationDidFinish:(id)a3;
- (void)extractOperationDidUpdateProgress:(id)a3;
- (void)fetchAssetsWithCompletion:(id)a3;
- (void)p_deletePath:(id)a3;
- (void)p_importBookWithAssetID:(id)a3 srcPath:(id)a4 completion:(id)a5;
- (void)resolveLibraryAsset:(id)a3 options:(id)a4 completion:(id)a5;
@end

@implementation BKLibraryDataSourcePlistImporting

- (BOOL)p_createPurchasesDirectory
{
  v3 = [(BKLibraryDataSourcePlistImporting *)self importingDelegate];
  v4 = [v3 importDestinationPathForAssetImporter:self];

  v5 = +[NSFileManager defaultManager];
  v9 = 0;
  v6 = [v5 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v9];
  v7 = v9;

  if (v7)
  {
    [v7 logRecursively];
  }

  return v6;
}

- (BKAssetImportingDelegate)importingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_importingDelegate);

  return WeakRetained;
}

- (BOOL)hasCleanedUpImportedFiles
{
  v3 = [(BKLibraryDataSourcePlistImporting *)self _hasCleanedUpFileProtectionOnImportedFiles];
  if (v3)
  {

    LOBYTE(v3) = [(BKLibraryDataSourcePlistImporting *)self _hasCleanedUpBackupAttributeOnImportedFiles];
  }

  return v3;
}

- (BOOL)_hasCleanedUpFileProtectionOnImportedFiles
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"BKPlistImportingHasCheckedFileProtection"];

  return v3;
}

- (BOOL)_hasCleanedUpBackupAttributeOnImportedFiles
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"BKPlistImportingHasCheckedBackupAttribute"];

  return v3;
}

- (BKLibraryDataSourcePlistImporting)init
{
  BCReportAssertionFailureWithMessage();

  return 0;
}

- (BKLibraryDataSourcePlistImporting)initWithMetadataCache:(id)a3 importingDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  kdebug_trace();
  v20.receiver = self;
  v20.super_class = BKLibraryDataSourcePlistImporting;
  v8 = [(BKLibraryDataSourcePlistImporting *)&v20 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_metadataCache, v6);
    objc_storeWeak(&v9->_importingDelegate, v7);
    v10 = objc_opt_new();
    assetImportingQueue = v9->_assetImportingQueue;
    v9->_assetImportingQueue = v10;

    [(NSOperationQueue *)v9->_assetImportingQueue setMaxConcurrentOperationCount:1];
    v12 = objc_opt_new();
    importingOperationsInFlight = v9->_importingOperationsInFlight;
    v9->_importingOperationsInFlight = v12;

    identifier = v9->_identifier;
    v9->_identifier = @"com.apple.ibooks.plist.importing";

    v15 = dispatch_queue_create("com.apple.ibooks.BKLibraryDataSourcePlistImporting.ivarSerialQueue", 0);
    ivarSerialQueue = v9->_ivarSerialQueue;
    v9->_ivarSerialQueue = v15;

    v17 = dispatch_queue_create("com.apple.ibooks.BKLibraryDataSourcePlistImporting.workQueue", 0);
    workQueue = v9->_workQueue;
    v9->_workQueue = v17;

    [(BKLibraryDataSourcePlistImporting *)v9 p_createPurchasesDirectory];
  }

  kdebug_trace();

  return v9;
}

- (id)p_destPathFromSrcPath:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryDataSourcePlistImporting *)self importingDelegate];
  v6 = [v5 importDestinationPathForAssetImporter:self];

  v7 = objc_alloc_init(NSFileManager);
  v8 = [v4 lastPathComponent];

  v9 = [v8 stringByReplacingOccurrencesOfString:@":" withString:@"_"];

  v10 = [v7 bu_nonCollidingNameForFileName:v9 inDestPath:v6];
  v11 = [v6 stringByAppendingPathComponent:v10];

  return v11;
}

- (void)p_deletePath:(id)a3
{
  v4 = a3;
  v3 = +[NSFileManager defaultManager];
  if ([v4 length] && objc_msgSend(v3, "fileExistsAtPath:", v4))
  {
    [v3 removeItemAtPath:v4 error:0];
  }
}

- (id)p_assetIdentifierFromExtractionFileOp:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 userContext];

  v5 = BUDynamicCast();

  v6 = [v5 assetID];
  if (v6)
  {
    [v5 assetID];
  }

  else
  {
    [v5 temporaryAssetID];
  }
  v7 = ;

  return v7;
}

- (id)p_storeIdFromEpubDirectory:(id)a3
{
  v4 = [a3 stringByAppendingPathComponent:@"iTunesMetadata.plist"];
  if (v4)
  {
    v5 = [NSDictionary dictionaryWithContentsOfFile:v4];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 valueForKey:@"itemId"];
      v8 = [(BKLibraryDataSourcePlistImporting *)self p_itemIdStringFromPlistEntry:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)p_itemIdStringFromPlistEntry:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = BUDynamicCast();
  if (v4)
  {
    v5 = v4;
    goto LABEL_3;
  }

  objc_opt_class();
  v6 = BUDynamicCast();
  if (!v6)
  {
LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  v7 = v6;
  v5 = [v6 stringValue];

  if (v5)
  {
LABEL_3:
    if ([v5 length] > 1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_9:

  return v5;
}

- (void)fetchAssetsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryDataSourcePlistImporting *)self ivarSerialQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009DE80;
  v7[3] = &unk_100A03788;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)bookCoverForLibraryAssetProperties:(id)a3 size:(CGSize)a4 completion:(id)a5
{
  v5 = objc_retainBlock(a5);
  if (v5)
  {
    v6 = v5;
    (*(v5 + 2))(v5, 0, 0, 0);
    v5 = v6;
  }
}

- (void)deleteAssets:(id)a3 exhaustive:(BOOL)a4 completion:(id)a5
{
  v5 = objc_retainBlock(a5);
  if (v5)
  {
    v6 = v5;
    (*(v5 + 2))(v5, 0, 0);
    v5 = v6;
  }
}

- (BOOL)canImportURL:(id)a3 openInPlace:(BOOL)a4 options:(id)a5
{
  v6 = a3;
  v7 = [v6 path];
  v8 = [BKAssetUtilities contentTypeForPath:v7];

  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v10 = [v6 isFileURL];
    v12 = v8 == 4 || (v8 & 0xFFFFFFFD) == 1;
    if (v10)
    {
      v9 = v12;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)resolveLibraryAsset:(id)a3 options:(id)a4 completion:(id)a5
{
  v5 = objc_retainBlock(a5);
  if (v5)
  {
    v6 = v5;
    (*(v5 + 2))(v5, 0, 0, 0);
    v5 = v6;
  }
}

- (void)assetForLibraryAsset:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 temporaryAssetID];
  if (v7)
  {
    v8 = [(BKLibraryDataSourcePlistImporting *)self ivarSerialQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009E1DC;
    block[3] = &unk_100A049A0;
    block[4] = self;
    v12 = v7;
    v13 = v6;
    dispatch_async(v8, block);
  }

  else
  {
    v9 = objc_retainBlock(v6);
    v10 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9, 0, 0);
    }
  }
}

- (BOOL)importURL:(id)a3 openInPlace:(BOOL)a4 options:(id)a5 completion:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a6;
  v12 = [(BKLibraryDataSourcePlistImporting *)self canImportURL:v10 openInPlace:v8 options:a5];
  if (v12)
  {
    v13 = BKLibraryBookImportLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "BKLibraryDataSourcePlistImporting: importURL:%@", buf, 0xCu);
    }

    v14 = [(BKLibraryDataSourcePlistImporting *)self assetImportingQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10009E414;
    v16[3] = &unk_100A049A0;
    v17 = v10;
    v18 = self;
    v19 = v11;
    [v14 addOperationWithBlock:v16];
  }

  return v12;
}

- (void)clearAgingDocumentInbox
{
  v3 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
  v4 = [v3 lastObject];
  v5 = [v4 stringByAppendingPathComponent:@"Inbox"];

  v6 = [(BKLibraryDataSourcePlistImporting *)self assetImportingQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10009E8EC;
  v8[3] = &unk_100A03440;
  v9 = v5;
  v10 = self;
  v7 = v5;
  [v6 addOperationWithBlock:v8];
}

- (id)p_coverImageFromZipArchive:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [[SFUZipArchive alloc] initWithPath:v5 collapseCommonRootDirectory:0];
  if (!v6)
  {
    v10 = 0;
    v20 = 0;
    goto LABEL_25;
  }

  v7 = NSTemporaryDirectory();
  v8 = [v6 entryWithName:kIMLibraryPlistArtworkName];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 data];
    if (v10)
    {
LABEL_19:
      if (([IMCoverUtilities isUndesirableImageData:v10 error:a4]& 1) == 0)
      {
        v20 = [[UIImage alloc] initWithData:v10];
        goto LABEL_22;
      }

      goto LABEL_20;
    }
  }

  v11 = kIMLibraryPlistMetadataName;
  v12 = [v6 entryWithName:kIMLibraryPlistMetadataName];
  if (v12)
  {
    v13 = v12;
    v14 = [v7 stringByAppendingPathComponent:v11];
    [v13 copyToFile:v14];
    v15 = [NSDictionary dictionaryWithContentsOfFile:v14];
    v16 = +[NSFileManager defaultManager];
    [v16 removeItemAtPath:v14 error:0];

    if (v15)
    {
      v23 = v7;
      v17 = [IMLibraryPlist coverPathFromPlistEntry:v15];
      if (v17)
      {
        v18 = [v6 entryWithName:v17];
        v19 = v18;
        if (v18)
        {
          v10 = [v18 data];
        }

        else
        {
          v10 = 0;
        }
      }

      else if (a4)
      {
        [NSError errorWithDomain:kBKLibraryDataSourceDomain code:kBKLibraryDataSourceErrorMissingCoverPath userInfo:0];
        *a4 = v10 = 0;
      }

      else
      {
        v10 = 0;
      }

      v7 = v23;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      goto LABEL_19;
    }

LABEL_20:
    v20 = 0;
    goto LABEL_22;
  }

  if (!a4)
  {
    v10 = 0;
    goto LABEL_20;
  }

  [NSError errorWithDomain:kBKLibraryDataSourceDomain code:kBKLibraryDataSourceErrorMissingiTunesMetadata userInfo:0];
  v10 = 0;
  *a4 = v20 = 0;
LABEL_22:

LABEL_25:
  v21 = v20;

  return v20;
}

- (void)p_importBookWithAssetID:(id)a3 srcPath:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v34 = a5;
  v10 = BKLibraryBookImportLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558786;
    v41 = 1752392040;
    v42 = 2112;
    v43 = v8;
    v44 = 2160;
    v45 = 1752392040;
    v46 = 2112;
    v47 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BKLibraryDataSourcePlistImporting: p_importBookWithAssetID: %{mask.hash}@, srcPath: %{mask.hash}@.", buf, 0x2Au);
  }

  v11 = 0;
  v39 = 0;
  if (v8 && v9)
  {
    v12 = +[NSFileManager defaultManager];
    v13 = [v12 fileExistsAtPath:v9 isDirectory:&v39];

    if (v13)
    {
      v11 = [(BKLibraryDataSourcePlistImporting *)self p_destPathFromSrcPath:v9];
      v14 = [BKAssetUtilities contentTypeForPath:v11];
      v15 = v39 | (v14 == 3);
      if (v39 & 1 | (v14 == 3))
      {
        v16 = 1;
LABEL_17:
        v18 = +[BKPlistImportingAsset newBlankAsset];
        [v18 setAssetID:v8];
        v21 = [(BKLibraryDataSourcePlistImporting *)self identifier];
        [v18 setDataSourceIdentifier:v21];

        [v18 setContentType:v14];
        [v18 setState:v16];
        v22 = [[BKPlistImportingOperationAttributes alloc] initWithAssetID:v8 contentType:v14];
        [(BKPlistImportingOperationAttributes *)v22 setAsset:v18];
        [(BKPlistImportingOperationAttributes *)v22 setAssetSourcePath:v9];
        [(BKPlistImportingOperationAttributes *)v22 setImportCompletionBlock:v34];
        [(BKPlistImportingOperationAttributes *)v22 setIsZipArchive:(v15 ^ 1) & 1];
        v23 = [(BKLibraryDataSourcePlistImporting *)self ivarSerialQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10009F4BC;
        block[3] = &unk_100A03A30;
        block[4] = self;
        v24 = v8;
        v37 = v24;
        v25 = v22;
        v38 = v25;
        dispatch_sync(v23, block);

        if (v15)
        {
          v26 = 2;
        }

        else
        {
          v35 = 0;
          v27 = [(BKLibraryDataSourcePlistImporting *)self p_coverImageFromZipArchive:v9 error:&v35];
          v28 = v35;
          if (v27)
          {
            v29 = +[BCCacheManager defaultCacheManager];
            v30 = v27;
            [v29 addCGImage:objc_msgSend(v27 withIdentifier:"CGImage") priority:v24 quality:{3, 206}];
          }

          v31 = [(BKLibraryDataSourcePlistImporting *)self libraryManager];
          [v31 libraryDataSource:self addedAsset:v18];

          v26 = 1;
        }

        v32 = objc_opt_new();
        [v32 setSourceFilePath:v9];
        [v32 setDestinationFilePath:v11];
        [v32 setSourceFileType:v26];
        [v32 setDelegate:self];
        [v32 setUserContext:v25];
        [v32 setForcedFileProtection:NSFileProtectionCompleteUntilFirstUserAuthentication];
        [v32 setFixFilePermissions:1];
        v33 = [(BKLibraryDataSourcePlistImporting *)self assetImportingQueue];
        [v33 addOperation:v32];

        goto LABEL_14;
      }

      if ([SFUZipArchive isZipArchiveAtPath:v9])
      {
        v16 = 2;
        goto LABEL_17;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  v17 = BKLibraryBookImportLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558274;
    v41 = 1752392040;
    v42 = 2112;
    v43 = v9;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "BKLibraryDataSourcePlistImporting: Not a valid asset.  Removing: %{mask.hash}@", buf, 0x16u);
  }

  v18 = [NSError errorWithDomain:kBKLibraryDataSourceDomain code:kBKLibraryDataSourceErrorInvalidAssetError userInfo:0];
  v19 = objc_retainBlock(v34);
  v20 = v19;
  if (v19)
  {
    (*(v19 + 2))(v19, 0, v18);
  }

  [(BKLibraryDataSourcePlistImporting *)self p_deletePath:v9];
LABEL_14:
}

- (void)extractOperationDidFinish:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryDataSourcePlistImporting *)self workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009F5CC;
  v7[3] = &unk_100A03440;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)extractOperationDidUpdateProgress:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryDataSourcePlistImporting *)self p_assetIdentifierFromExtractionFileOp:v4];
  if (v5)
  {
    [v4 progress];
    v7 = v6;
    v8 = BKLibraryBookImportLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v14 = [v4 destinationFilePath];
      *buf = 138412802;
      v18 = v5;
      v19 = 2112;
      v20 = v14;
      v21 = 2048;
      v22 = v7;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[BKLibraryDataSourcePlistImporting] extractOperationDidUpdateProgress with assetID/path/progress [%@ | %@ | %f]", buf, 0x20u);
    }

    if (v7 >= 1.0)
    {
      v9 = 5;
    }

    else
    {
      v9 = 4;
    }

    v10 = [[BKLibraryDownloadStatus alloc] initWithAssetID:v5 state:v9 progressValue:0 timeRemaining:0x7FFFFFFFFFFFFFFFLL bytesDownloaded:0x7FFFFFFFFFFFFFFFLL fileSize:v7];
    v11 = [NSSet setWithObject:v10, BKLibraryDownloadStatusKey];
    v16 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 postNotificationName:BKLibraryDownloadStatusNotification object:self userInfo:v12];
  }
}

- (void)extractOperationDidFail:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryDataSourcePlistImporting *)self p_assetIdentifierFromExtractionFileOp:v4];
  v6 = [(BKLibraryDataSourcePlistImporting *)self libraryManager];
  v7 = [v6 libraryAssetOnMainQueueWithAssetID:v5];

  v8 = BKLibraryBookImportLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_10078C0AC(v5, v4, v8);
  }

  if (v7)
  {
    v9 = [(BKLibraryDataSourcePlistImporting *)self libraryManager];
    v18 = v7;
    v10 = [NSArray arrayWithObjects:&v18 count:1];
    [v9 deleteAssets:v10 exhaustive:0];

LABEL_7:
    goto LABEL_8;
  }

  if (([v4 skipCleanupDestinationFile] & 1) == 0)
  {
    v9 = [v4 destinationFilePath];
    [(BKLibraryDataSourcePlistImporting *)self p_deletePath:v9];
    goto LABEL_7;
  }

LABEL_8:
  v11 = [(BKLibraryDataSourcePlistImporting *)self ivarSerialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A048C;
  block[3] = &unk_100A03A30;
  v15 = v4;
  v16 = self;
  v17 = v5;
  v12 = v5;
  v13 = v4;
  dispatch_async(v11, block);
}

- (void)cleanupImportedFiles
{
  if (![(BKLibraryDataSourcePlistImporting *)self hasCleanedUpImportedFiles])
  {
    v3 = dispatch_get_global_queue(17, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A06D4;
    block[3] = &unk_100A033C8;
    block[4] = self;
    dispatch_async(v3, block);
  }
}

- (BOOL)_cleanupFileProtectionOnItemAtURL:(id)a3
{
  v3 = a3;
  v20 = 0;
  v19 = 0;
  v4 = [v3 getResourceValue:&v20 forKey:NSURLFileProtectionKey error:&v19];
  v5 = v20;
  v6 = v19;
  if (!v4)
  {
    v14 = BCIMLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10078C1C8();
    }

    v11 = v5;
    goto LABEL_19;
  }

  if (([v5 isEqualToString:NSURLFileProtectionComplete] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", NSURLFileProtectionCompleteUnlessOpen))
  {
    v18 = v6;
    v7 = [v3 setResourceValue:NSURLFileProtectionCompleteUntilFirstUserAuthentication forKey:NSURLFileProtectionKey error:&v18];
    v8 = v18;

    if ((v7 & 1) == 0)
    {
      v9 = BCIMLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10078C230();
      }
    }

    v16 = 0;
    v17 = 0;
    v10 = [v3 getResourceValue:&v17 forKey:NSURLFileProtectionKey error:&v16];
    v11 = v17;

    v6 = v16;
    if (v10)
    {
      v12 = [v11 isEqualToString:NSURLFileProtectionCompleteUntilFirstUserAuthentication];
      if (v12)
      {
        v13 = v7 & v12;
LABEL_20:
        v5 = v11;
        goto LABEL_21;
      }

      v14 = BCIMLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10078C300(v3, v14);
      }
    }

    else
    {
      v14 = BCIMLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10078C298();
      }
    }

LABEL_19:

    v13 = 0;
    goto LABEL_20;
  }

  v13 = 1;
LABEL_21:

  return v13;
}

- (BOOL)_cleanupBackupAttributeOnItemAtURL:(id)a3
{
  v3 = a3;
  v15 = 0;
  v14 = 0;
  v4 = [v3 getResourceValue:&v15 forKey:NSURLIsExcludedFromBackupKey error:&v14];
  v5 = v15;
  v6 = v14;
  if (v4)
  {
    if (v5 && ![v5 BOOLValue])
    {
      v11 = 1;
      goto LABEL_15;
    }

    v13 = v6;
    v7 = [v3 setResourceValue:&__kCFBooleanFalse forKey:NSURLIsExcludedFromBackupKey error:&v13];
    v8 = v13;

    v9 = BCIMLog();
    v10 = v9;
    if (v7)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = v3;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "success setting NSURLIsExcludedFromBackupKey to NO on %@", buf, 0xCu);
      }

      v11 = 1;
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10078C3E0();
      }

      v11 = 0;
    }
  }

  else
  {
    v10 = BCIMLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10078C378();
    }

    v11 = 0;
    v8 = v6;
  }

  v6 = v8;
LABEL_15:

  return v11;
}

- (BKLibraryManager)libraryManager
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryManager);

  return WeakRetained;
}

- (BKLibraryDataSourcePlistWriting)plistWriter
{
  WeakRetained = objc_loadWeakRetained(&self->_plistWriter);

  return WeakRetained;
}

- (BKAssetMetadataCaching)metadataCache
{
  WeakRetained = objc_loadWeakRetained(&self->_metadataCache);

  return WeakRetained;
}

@end