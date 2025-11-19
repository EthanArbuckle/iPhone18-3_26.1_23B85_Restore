@interface PDFileSyncAgent
+ (BOOL)isUbiquitousURL:(id)a3;
+ (BOOL)isUploaded:(id)a3;
+ (BOOL)removeItemAtURL:(id)a3 error:(id *)a4;
+ (id)documentsURL:(id *)a3;
+ (id)draftsURL:(id *)a3;
+ (id)ubiquitousContainerURL:(id *)a3;
- (BOOL)cacheAssetURLFromCKRecord:(id)a3 usingAsset:(id)a4 error:(id *)a5;
- (BOOL)cacheThumbnailAssetURLFromCKRecord:(id)a3 usingAsset:(id)a4 error:(id *)a5;
- (BOOL)updateAssetIfExists:(id)a3;
- (NSOperationQueue)presentedItemOperationQueue;
- (NSSet)observedPresentedItemUbiquityAttributes;
- (PDFileSyncAgent)initWithAsset:(id)a3 database:(id)a4;
- (id)copyAssetToCloudKitContentStoreCache:(id)a3 createThumbnailIfNeeded:(BOOL)a4;
- (id)copyToiCloudDrive;
- (id)downloadObservers;
- (id)moveDownloadedAssetFileToContentStoreCacheForAsset:(id)a3;
- (id)moveDownloadedAssetThumbnailFileToContentStoreCacheForAsset:(id)a3;
- (id)uploadAfterValidatingURLWithAuditToken:(id *)a3 createThumbnailIfNeeded:(BOOL)a4;
- (id)uploadObservers;
- (void)addDownloadObserver:(id)a3;
- (void)addToFilePresenter;
- (void)addUploadObserver:(id)a3;
- (void)compressAssetIfNecessary:(id)a3;
- (void)createiCloudDriveCKShare:(id)a3;
- (void)decompressAssetIfNecessary:(id)a3;
- (void)deleteBackingStoreWithCompletion:(id)a3;
- (void)downloadCloudKitPrimaryFileWithCompletion:(id)a3;
- (void)downloadCloudKitThumbnailWithCompletion:(id)a3;
- (void)fetchCloudKitStreamingURLWithCompletion:(id)a3;
- (void)insertOrUpdateAssetInDBWithCoalescing:(BOOL)a3;
- (void)insertStagedAssetInDBToBeginUploading;
- (void)notifyUploadCompleted;
- (void)notifyUploadProgress;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)presentedItemDidChangeUbiquityAttributes:(id)a3;
- (void)queued_notifyDownloadCompleted:(BOOL)a3 error:(id)a4;
- (void)queued_notifyDownloadProgressFraction:(double)a3 error:(id)a4;
- (void)queued_notifyUploadCompleted:(BOOL)a3 url:(id)a4 thumbnailURL:(id)a5 relativePathWithinContainer:(id)a6 ubiquitousContainerName:(id)a7 brItemID:(id)a8 brOwnerName:(id)a9 brZoneName:(id)a10 brShareName:(id)a11 fractionUploaded:(double)a12 isTemporary:(BOOL)a13 isStaged:(BOOL)a14 error:(id)a15;
- (void)queued_notifyUploadProgressFraction:(double)a3 error:(id)a4;
- (void)queued_startObservingiCloudDriveUploadProgress;
- (void)queued_stopObservingiCloudDriveUploadProgress;
- (void)removeDownloadObserver:(id)a3;
- (void)removeDownloadObservers:(id)a3;
- (void)removeFromFilePresenter;
- (void)removeUploadObserver:(id)a3;
- (void)removeUploadObservers:(id)a3;
- (void)uploadStateChanged:(unint64_t)a3;
- (void)uploadToCloudKitContentStore;
@end

@implementation PDFileSyncAgent

+ (id)ubiquitousContainerURL:(id *)a3
{
  v4 = sub_10003E1B4();
  v5 = v4;
  if (v4)
  {
    v6 = *(v4 + 80);
    if (v6)
    {
      v7 = v6;
      goto LABEL_7;
    }
  }

  CLSInitLog();
  v8 = CLSLogAsset;
  if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR))
  {
    v12 = v8;
    if (v5)
    {
      v13 = v5[11];
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    v16 = 138412290;
    v17 = v14;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "schoolworkUbiquitousContainerURL is nil; schoolworkUbiquitousContainerURL = '%@'. Refreshing accountInfo.", &v16, 0xCu);
  }

  sub_10003E328(PDAccountInfo, 0);
  [CLSUtil postNotificationAsync:"com.apple.progressd.accountChanged"];
  v9 = sub_10003E1B4();

  if (v9)
  {
    v7 = *(v9 + 80);
    v5 = v9;
LABEL_7:
    v10 = v5[11];
    if (!a3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v15 = 0;
  v10 = 0;
  v7 = 0;
  v5 = 0;
  if (a3)
  {
LABEL_8:
    *a3 = v10;
  }

LABEL_9:

  return v7;
}

+ (id)documentsURL:(id *)a3
{
  v4 = [a1 ubiquitousContainerURL:?];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 URLByAppendingPathComponent:@"Documents" isDirectory:1];
    v11 = 0;
    v7 = [v6 cls_createDirectoryIfNeeded:&v11];
    v8 = v11;
    v9 = v8;
    if (a3)
    {
      *a3 = v8;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)draftsURL:(id *)a3
{
  v4 = [a1 documentsURL:?];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 URLByAppendingPathComponent:@".Drafts" isDirectory:1];
    v11 = 0;
    v7 = [v6 cls_createDirectoryIfNeeded:&v11];
    v8 = v11;
    v9 = v8;
    if (a3)
    {
      *a3 = v8;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)isUbiquitousURL:(id)a3
{
  v4 = a3;
  v5 = [a1 ubiquitousContainerURL:0];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 cls_isParentOfURL:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)isUploaded:(id)a3
{
  v4 = a3;
  if ([a1 isUbiquitousURL:v4])
  {
    v19[0] = NSURLUbiquitousItemIsUploadedKey;
    v19[1] = NSURLUbiquitousItemIsUploadingKey;
    v19[2] = NSURLUbiquitousItemDownloadingStatusKey;
    v5 = [NSArray arrayWithObjects:v19 count:3];
    [v4 cls_removeCachedResourceValueForKeys:v5];
    v14 = 0;
    v6 = [v4 resourceValuesForKeys:v5 error:&v14];
    v7 = v14;
    if (v6)
    {
      v8 = [v6 objectForKeyedSubscript:NSURLUbiquitousItemIsUploadedKey];
      v9 = [v6 objectForKeyedSubscript:NSURLUbiquitousItemIsUploadingKey];
      v10 = [v6 objectForKeyedSubscript:NSURLUbiquitousItemDownloadingStatusKey];
      if ([v8 BOOLValue] && (objc_msgSend(v9, "BOOLValue") & 1) == 0)
      {
        v11 = [NSURLUbiquitousItemDownloadingStatusCurrent isEqualToString:v10];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      CLSInitLog();
      v12 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v16 = v4;
        v17 = 2112;
        v18 = v7;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unable to get upload status for URL: '%@'. Error: %@", buf, 0x16u);
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (PDFileSyncAgent)initWithAsset:(id)a3 database:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = PDFileSyncAgent;
  v9 = [(PDFileSyncAgent *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_asset, a3);
    objc_storeStrong(&v10->_database, a4);
    v11 = objc_alloc_init(PDClassKitServiceOperations);
    assetDownloadOperations = v10->_assetDownloadOperations;
    v10->_assetDownloadOperations = v11;

    v13 = objc_opt_new();
    uploadObservers = v10->_uploadObservers;
    v10->_uploadObservers = v13;

    v15 = objc_opt_new();
    downloadObservers = v10->_downloadObservers;
    v10->_downloadObservers = v15;

    v10->_lock = 0;
  }

  return v10;
}

- (void)addUploadObserver:(id)a3
{
  v4 = a3;
  [(PDFileSyncAgent *)self lock];
  [(NSMutableSet *)self->_uploadObservers addObject:v4];

  if (self->_uploadState == 8)
  {
    [(PDFileSyncAgent *)self notifyUploadCompleted];
  }

  [(PDFileSyncAgent *)self unlock];
}

- (void)removeUploadObserver:(id)a3
{
  v4 = a3;
  [(PDFileSyncAgent *)self lock];
  [(NSMutableSet *)self->_uploadObservers removeObject:v4];

  if (![(NSMutableSet *)self->_uploadObservers count])
  {
    sub_10012D788(PDFileSyncManager, self->_asset, 1);
  }

  [(PDFileSyncAgent *)self unlock];
}

- (void)removeUploadObservers:(id)a3
{
  v4 = a3;
  [(PDFileSyncAgent *)self lock];
  [(NSMutableSet *)self->_uploadObservers minusSet:v4];

  if (![(NSMutableSet *)self->_uploadObservers count])
  {
    sub_10012D788(PDFileSyncManager, self->_asset, 1);
  }

  [(PDFileSyncAgent *)self unlock];
}

- (void)addDownloadObserver:(id)a3
{
  v4 = a3;
  [(PDFileSyncAgent *)self lock];
  [(NSMutableSet *)self->_downloadObservers addObject:v4];

  [(PDFileSyncAgent *)self unlock];
}

- (void)removeDownloadObserver:(id)a3
{
  v4 = a3;
  [(PDFileSyncAgent *)self lock];
  [(NSMutableSet *)self->_downloadObservers removeObject:v4];

  if (![(NSMutableSet *)self->_downloadObservers count])
  {
    sub_10012D788(PDFileSyncManager, self->_asset, 0);
  }

  [(PDFileSyncAgent *)self unlock];
}

- (void)removeDownloadObservers:(id)a3
{
  v4 = a3;
  [(PDFileSyncAgent *)self lock];
  [(NSMutableSet *)self->_downloadObservers minusSet:v4];

  if (![(NSMutableSet *)self->_downloadObservers count])
  {
    sub_10012D788(PDFileSyncManager, self->_asset, 0);
  }

  [(PDFileSyncAgent *)self unlock];
}

- (id)uploadObservers
{
  [(PDFileSyncAgent *)self lock];
  v3 = [(NSMutableSet *)self->_uploadObservers copy];
  [(PDFileSyncAgent *)self unlock];

  return v3;
}

- (id)downloadObservers
{
  [(PDFileSyncAgent *)self lock];
  v3 = [(NSMutableSet *)self->_downloadObservers copy];
  [(PDFileSyncAgent *)self unlock];

  return v3;
}

- (void)queued_notifyUploadProgressFraction:(double)a3 error:(id)a4
{
  v6 = a4;
  v7 = [(PDFileSyncAgent *)self uploadObservers];
  if ([v7 count])
  {
    objc_initWeak(&location, self);
    v8 = sub_100051D9C();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100052A40;
    block[3] = &unk_1002032A8;
    objc_copyWeak(v12, &location);
    v10 = v7;
    v12[1] = *&a3;
    v11 = v6;
    dispatch_async(v8, block);

    objc_destroyWeak(v12);
    objc_destroyWeak(&location);
  }
}

- (void)queued_notifyUploadCompleted:(BOOL)a3 url:(id)a4 thumbnailURL:(id)a5 relativePathWithinContainer:(id)a6 ubiquitousContainerName:(id)a7 brItemID:(id)a8 brOwnerName:(id)a9 brZoneName:(id)a10 brShareName:(id)a11 fractionUploaded:(double)a12 isTemporary:(BOOL)a13 isStaged:(BOOL)a14 error:(id)a15
{
  v36 = a4;
  v35 = a5;
  v34 = a6;
  v33 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a15;
  objc_initWeak(location, self);
  queue = sub_100051D9C();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100052DF8;
  block[3] = &unk_1002032D0;
  objc_copyWeak(v52, location);
  v53 = a3;
  v42 = v36;
  v43 = v35;
  v44 = v34;
  v45 = v33;
  v46 = v21;
  v47 = v22;
  v48 = v23;
  v49 = v24;
  v52[1] = *&a12;
  v54 = a13;
  v55 = a14;
  v50 = v25;
  v51 = self;
  v40 = v25;
  v26 = v24;
  v39 = v23;
  v27 = v22;
  v28 = v21;
  v29 = v33;
  v30 = v34;
  v31 = v35;
  v32 = v36;
  dispatch_async(queue, block);

  objc_destroyWeak(v52);
  objc_destroyWeak(location);
}

- (void)queued_notifyDownloadProgressFraction:(double)a3 error:(id)a4
{
  v6 = a4;
  v7 = [(PDFileSyncAgent *)self downloadObservers];
  if ([v7 count])
  {
    objc_initWeak(&location, self);
    v8 = sub_100051D9C();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000530A4;
    block[3] = &unk_1002032A8;
    objc_copyWeak(v12, &location);
    v10 = v7;
    v12[1] = *&a3;
    v11 = v6;
    dispatch_async(v8, block);

    objc_destroyWeak(v12);
    objc_destroyWeak(&location);
  }
}

- (void)queued_notifyDownloadCompleted:(BOOL)a3 error:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  v7 = sub_100051D9C();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000532F0;
  block[3] = &unk_100202FB0;
  objc_copyWeak(&v12, &location);
  v13 = a3;
  v10 = v6;
  v11 = self;
  v8 = v6;
  dispatch_async(v7, block);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (id)uploadAfterValidatingURLWithAuditToken:(id *)a3 createThumbnailIfNeeded:(BOOL)a4
{
  v7 = [(CLSAbstractAsset *)self->_asset URL];
  v8 = [v7 fileSystemRepresentation];

  v9 = *&a3->var0[4];
  *location = *a3->var0;
  v19 = v9;
  v10 = sandbox_check_by_audit_token();
  if (v10)
  {
    if (v10 == 1)
    {
      [NSError cls_createErrorWithCode:315 format:@"Cannot upload asset since the client does not have read access to file at '%s'", v8, v14];
    }

    else
    {
      [NSError cls_createErrorWithCode:315 format:@"Cannot upload asset since the client's sanbox blocks access to file at '%s' [error: %d]", v8, *__error()];
    }
    v12 = ;
    [v12 cls_log:CLSLogAsset];
  }

  else
  {
    objc_initWeak(location, self);
    if (qword_10024D920 != -1)
    {
      dispatch_once(&qword_10024D920, &stru_100203260);
    }

    v11 = qword_10024D928;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100053628;
    block[3] = &unk_1002032F8;
    objc_copyWeak(&v16, location);
    block[4] = self;
    v17 = a4;
    dispatch_async(v11, block);

    objc_destroyWeak(&v16);
    objc_destroyWeak(location);
    v12 = 0;
  }

  return v12;
}

- (void)deleteBackingStoreWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_10003E1B4();
  v6 = self->_asset;
  database = self->_database;
  v8 = [(CLSAbstractAsset *)v6 objectID];
  LOBYTE(database) = sub_10015CF38(database, v8);

  if ((database & 1) == 0)
  {
    v14 = [NSError cls_createErrorWithCode:341 format:@"Cannot delete a file associated with a published asset"];
LABEL_19:
    v30 = v14;
    [v14 cls_log:CLSLogAsset];
    v4[2](v4, 0, v30);
LABEL_20:

    goto LABEL_21;
  }

  v9 = [(CLSAbstractAsset *)v6 type];
  if (v9 != 3)
  {
    if (v9 == 1)
    {
      if (v5)
      {
        v10 = *(v5 + 80);
        v11 = *(v5 + 72);
      }

      else
      {
        v10 = 0;
        v11 = 0;
      }

      v12 = v11;
      location[1] = _NSConcreteStackBlock;
      location[2] = 3221225472;
      location[3] = sub_100053C50;
      location[4] = &unk_100202920;
      v41 = v6;
      v42 = v10;
      v43 = v4;
      v13 = v10;
      CLSPerformWithPersona();

      goto LABEL_21;
    }
    v14 = ;
    goto LABEL_19;
  }

  if (([(CLSAbstractAsset *)v6 isStaged]& 1) == 0)
  {
    v30 = [(CLSAbstractAsset *)v6 URL];
    v31 = [v30 path];
    v32 = objc_claimAutoreleasedReturnValue();
    v33 = [NSError cls_createErrorWithCode:341 description:v32];
    v4[2](v4, 0, v33);

    goto LABEL_20;
  }

  objc_initWeak(location, self);
  v15 = sub_10008E290([PDCKUploadAssetsOperation alloc], self->_database);
  assetsOperation = self->_assetsOperation;
  self->_assetsOperation = v15;

  newValue[0] = _NSConcreteStackBlock;
  newValue[1] = 3221225472;
  newValue[2] = sub_100053DF8;
  newValue[3] = &unk_100203348;
  v39 = v4;
  v18 = self->_assetsOperation;
  if (v18)
  {
    objc_setProperty_nonatomic_copy(v18, v17, newValue, 48);
  }

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100053EE8;
  v36[3] = &unk_100203370;
  objc_copyWeak(&v37, location);
  v20 = self->_assetsOperation;
  if (v20)
  {
    objc_setProperty_nonatomic_copy(v20, v19, v36, 40);
  }

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100053FEC;
  v34[3] = &unk_100203738;
  objc_copyWeak(&v35, location);
  v22 = self->_assetsOperation;
  if (v22)
  {
    objc_setProperty_nonatomic_copy(v22, v21, v34, 32);
  }

  v23 = [CKRecordID alloc];
  v24 = [(CLSAbstractAsset *)self->_asset brItemID];
  v25 = self->_assetsOperation;
  if (v25)
  {
    v25 = v25->_assetZoneID;
  }

  v26 = v25;
  v27 = [v23 initWithRecordName:v24 zoneID:v26];

  v28 = self->_assetsOperation;
  v44 = v27;
  v29 = [NSArray arrayWithObjects:&v44 count:1];
  sub_10008E480(&v28->super.isa, &__NSArray0__struct, v29);

  objc_destroyWeak(&v35);
  objc_destroyWeak(&v37);

  objc_destroyWeak(location);
LABEL_21:
}

- (void)uploadStateChanged:(unint64_t)a3
{
  v5 = self->_asset;
  v6 = [(CLSAbstractAsset *)v5 URL];
  v7 = [v6 path];
  v8 = [(CLSAbstractAsset *)v5 type];
  if (a3 <= 3)
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        CLSInitLog();
        v33 = CLSLogAsset;
        if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
        {
          uploadState = self->_uploadState;
          v35 = v33;
          v36 = sub_100051D10(uploadState);
          *buf = 141558530;
          v59 = 1752392040;
          v60 = 2112;
          v61 = v7;
          v62 = 2114;
          v63 = v36;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "asset.path: %{mask.hash}@, uploadStateChanged: %{public}@ ---> PDFileUploadStateUploading", buf, 0x20u);
        }

        self->_uploadState = 2;
        [(PDFileSyncAgent *)self notifyUploadProgress];
        goto LABEL_61;
      }

      if (v8 == 3)
      {
LABEL_47:
        v23 = self;
        v24 = 8;
        goto LABEL_60;
      }

      if (v8 != 1)
      {
        goto LABEL_61;
      }

      [(PDFileSyncAgent *)self queued_stopObservingiCloudDriveUploadProgress];
      if (self->_uploadState > 2)
      {
        goto LABEL_61;
      }

      CLSInitLog();
      v19 = CLSLogAsset;
      if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
      {
        v20 = self->_uploadState;
        v21 = v19;
        v22 = sub_100051D10(v20);
        *buf = 141558530;
        v59 = 1752392040;
        v60 = 2112;
        v61 = v7;
        v62 = 2114;
        v63 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "asset.path: %{mask.hash}@, uploadStateChanged: %{public}@ ---> PDFileUploadStateUploaded", buf, 0x20u);
      }

      self->_uploadState = 3;
      v23 = self;
      v24 = 5;
    }

    else if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_61;
      }

      if (v8 == 3)
      {
        if (![(CLSAbstractAsset *)v5 isUploaded])
        {
          CLSInitLog();
          v52 = CLSLogAsset;
          if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
          {
            v53 = self->_uploadState;
            v54 = v52;
            v55 = sub_100051D10(v53);
            *buf = 141558530;
            v59 = 1752392040;
            v60 = 2112;
            v61 = v7;
            v62 = 2114;
            v63 = v55;
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "asset.path: %{mask.hash}@, uploadStateChanged: %{public}@ ---> PDFileUploadStateNotUploaded", buf, 0x20u);
          }

          self->_uploadState = 1;
          [(PDFileSyncAgent *)self uploadToCloudKitContentStore];
          goto LABEL_61;
        }
      }

      else
      {
        if (v8 != 1)
        {
          goto LABEL_61;
        }

        v14 = self->_uploadState;
        if (v14 > 8 || ((1 << v14) & 0x191) == 0)
        {
          goto LABEL_61;
        }

        CLSInitLog();
        v15 = CLSLogAsset;
        if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
        {
          v16 = self->_uploadState;
          v17 = v15;
          v18 = sub_100051D10(v16);
          *buf = 141558530;
          v59 = 1752392040;
          v60 = 2112;
          v61 = v7;
          v62 = 2114;
          v63 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "asset.path: %{mask.hash}@, uploadStateChanged: %{public}@ ---> PDFileUploadStateNotUploaded", buf, 0x20u);
        }

        self->_uploadState = 1;
        [(PDFileSyncAgent *)self queued_startObservingiCloudDriveUploadProgress];
        if (![PDFileSyncAgent isUploaded:v6])
        {
          goto LABEL_61;
        }

        [(CLSAbstractAsset *)v5 setFractionUploaded:0.9];
        [(PDFileSyncAgent *)self notifyUploadProgress];
      }

      v23 = self;
      v24 = 3;
    }

    else
    {
      CLSInitLog();
      v29 = CLSLogAsset;
      if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
      {
        v30 = self->_uploadState;
        v31 = v29;
        v32 = sub_100051D10(v30);
        *buf = 141558530;
        v59 = 1752392040;
        v60 = 2112;
        v61 = v7;
        v62 = 2114;
        v63 = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "asset.path: %{mask.hash}@, uploadStateChanged asset: %{public}@ ---> PDFileUploadStateUnknown", buf, 0x20u);
      }

      self->_uploadState = 0;
      v23 = self;
      v24 = 1;
    }

LABEL_60:
    [(PDFileSyncAgent *)v23 uploadStateChanged:v24];
    goto LABEL_61;
  }

  if (a3 <= 5)
  {
    if (a3 == 4)
    {
      v13 = 4;
LABEL_49:
      self->_uploadState = v13;
LABEL_50:
      [(PDFileSyncAgent *)self notifyUploadCompleted];
      goto LABEL_61;
    }

    if (v8 != 3)
    {
      if (v8 == 1)
      {
        CLSInitLog();
        v25 = CLSLogAsset;
        if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
        {
          v26 = self->_uploadState;
          v27 = v25;
          v28 = sub_100051D10(v26);
          *buf = 141558530;
          v59 = 1752392040;
          v60 = 2112;
          v61 = v7;
          v62 = 2114;
          v63 = v28;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "asset.path: %{mask.hash}@, uploadStateChanged: %{public}@ ---> PDFileUploadStateSettingUpShare", buf, 0x20u);
        }

        self->_uploadState = 5;
        v57[0] = _NSConcreteStackBlock;
        v57[1] = 3221225472;
        v57[2] = sub_100054BB4;
        v57[3] = &unk_100203398;
        v57[4] = self;
        [(PDFileSyncAgent *)self createiCloudDriveCKShare:v57];
      }

      goto LABEL_61;
    }

    CLSInitLog();
    v51 = CLSLogAsset;
    if (!os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_61;
    }

LABEL_67:
    *buf = 141558274;
    v59 = 1752392040;
    v60 = 2112;
    v61 = v7;
    _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Should not set up CK Share for a file uploaded to CloudKit Content Store. Asset at: '%{mask.hash}@'", buf, 0x16u);
    goto LABEL_61;
  }

  switch(a3)
  {
    case 6uLL:
      if (v8 == 3)
      {
        CLSInitLog();
        v51 = CLSLogAsset;
        if (!os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR))
        {
          break;
        }

        goto LABEL_67;
      }

      if (v8 != 1)
      {
        break;
      }

      CLSInitLog();
      v37 = CLSLogAsset;
      if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
      {
        v38 = self->_uploadState;
        v39 = v37;
        v40 = sub_100051D10(v38);
        *buf = 141558530;
        v59 = 1752392040;
        v60 = 2112;
        v61 = v7;
        v62 = 2114;
        v63 = v40;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "asset.path: %{mask.hash}@, uploadStateChanged: %{public}@ ---> PDFileUploadStateShared", buf, 0x20u);
      }

      self->_uploadState = 6;
      uploadError = self->_uploadError;
      self->_uploadError = 0;

      [(CLSAbstractAsset *)v5 setFractionUploaded:1.0];
      [(CLSAbstractAsset *)v5 setUploaded:1];
      CLSInitLog();
      v42 = CLSLogAsset;
      if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
      {
        v43 = v42;
        [(CLSAbstractAsset *)v5 fractionUploaded];
        *buf = 141558530;
        v59 = 1752392040;
        v60 = 2112;
        v61 = v7;
        v62 = 2048;
        v63 = v44;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Completed upload of asset at '%{mask.hash}@' [reported upload progress as: %f]", buf, 0x20u);
      }

      CLSInitLog();
      v45 = CLSLogAsset;
      if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 141558274;
        v59 = 1752392040;
        v60 = 2112;
        v61 = v7;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Created a CKShare for asset at '%{mask.hash}@'", buf, 0x16u);
      }

      goto LABEL_47;
    case 7uLL:
      if (v8 != 3)
      {
        if (v8 != 1)
        {
          break;
        }

        CLSInitLog();
        v46 = CLSLogAsset;
        if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
        {
          v47 = self->_uploadState;
          v48 = v46;
          v49 = sub_100051D10(v47);
          *buf = 141558530;
          v59 = 1752392040;
          v60 = 2112;
          v61 = v7;
          v62 = 2114;
          v63 = v49;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "asset.path: %{mask.hash}@, uploadStateChanged: %{public}@ ---> PDFileUploadStateSharingFailed", buf, 0x20u);
        }

        self->_uploadState = 7;
        CLSInitLog();
        v50 = CLSLogAsset;
        if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR))
        {
          sharingError = self->_sharingError;
          *buf = 141558530;
          v59 = 1752392040;
          v60 = 2112;
          v61 = v7;
          v62 = 2112;
          v63 = sharingError;
          _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "Failed to create a CKShare for asset at '%{mask.hash}@', error: %@", buf, 0x20u);
        }

        objc_storeStrong(&self->_uploadError, self->_sharingError);
        goto LABEL_50;
      }

      CLSInitLog();
      v51 = CLSLogAsset;
      if (!os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR))
      {
        break;
      }

      goto LABEL_67;
    case 8uLL:
      CLSInitLog();
      v9 = CLSLogAsset;
      if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
      {
        v10 = self->_uploadState;
        v11 = v9;
        v12 = sub_100051D10(v10);
        *buf = 141558530;
        v59 = 1752392040;
        v60 = 2112;
        v61 = v7;
        v62 = 2114;
        v63 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "asset.path: %{mask.hash}@, uploadStateChanged: %{public}@ ---> PDFileUploadStateCompleted", buf, 0x20u);
      }

      v13 = 8;
      goto LABEL_49;
  }

LABEL_61:
}

- (void)insertOrUpdateAssetInDBWithCoalescing:(BOOL)a3
{
  if (!a3 || (+[NSDate now](NSDate, "now"), v4 = objc_claimAutoreleasedReturnValue(), [v4 timeIntervalSinceDate:self->_lastDBUpdate], v6 = v5 * 1000.0, v4, v6 >= 500.0))
  {
    CLSInitLog();
    v7 = CLSLogAsset;
    if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PDFileSyncAgent insertOrUpdateAssetInDBWithCoalescing", v10, 2u);
    }

    if ([(PDDatabase *)self->_database insertOrUpdateObject:self->_asset])
    {
      v8 = +[NSDate now];
      lastDBUpdate = self->_lastDBUpdate;
      self->_lastDBUpdate = v8;
    }
  }
}

- (void)insertStagedAssetInDBToBeginUploading
{
  [(CLSAbstractAsset *)self->_asset setStaged:1];
  [(PDFileSyncAgent *)self insertOrUpdateAssetInDBWithCoalescing:0];

  [(PDFileSyncAgent *)self queued_notifyUploadProgressFraction:0 error:0.0];
}

- (void)notifyUploadProgress
{
  v3 = self->_asset;
  [(PDFileSyncAgent *)self insertOrUpdateAssetInDBWithCoalescing:1];
  [(CLSAbstractAsset *)v3 fractionUploaded];
  [(PDFileSyncAgent *)self queued_notifyUploadProgressFraction:self->_uploadError error:?];
}

- (void)notifyUploadCompleted
{
  v3 = self->_asset;
  [(CLSAbstractAsset *)v3 setTemporary:0];
  [(CLSAbstractAsset *)v3 setModified:1];
  [(PDFileSyncAgent *)self insertOrUpdateAssetInDBWithCoalescing:0];
  v4 = [(CLSAbstractAsset *)v3 URL];
  v5 = [(CLSAbstractAsset *)v3 type];
  if (v4)
  {
    v49 = 0;
    v6 = [FPSandboxingURLWrapper wrapperWithURL:v4 readonly:0 error:&v49];
    v7 = v49;
    if (v7)
    {
      v8 = v7;
      CLSInitLog();
      v9 = CLSLogAsset;
      if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v51 = v4;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "FPSandboxingURLWrapper failed to wrap '%@'", buf, 0xCu);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = [(CLSAbstractAsset *)v3 thumbnailURL];
  if (v10)
  {
    v48 = 0;
    v11 = [FPSandboxingURLWrapper wrapperWithURL:v10 readonly:0 error:&v48];
    v12 = v48;
    if (v12)
    {
      CLSInitLog();
      v13 = CLSLogAsset;
      if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v51 = v10;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "FPSandboxingURLWrapper failed to wrap '%@'", buf, 0xCu);
      }
    }
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  if (v5 == 3)
  {
    v47 = v10;
    v46 = v11;
    v44 = [(CLSAbstractAsset *)v3 isUploaded];
    v28 = [(CLSAbstractAsset *)v3 brItemID];
    v29 = [(CLSAbstractAsset *)v3 brOwnerName];
    v14 = [(CLSAbstractAsset *)v3 brZoneName];
    v15 = [(CLSAbstractAsset *)v3 brShareName];
    [(CLSAbstractAsset *)v3 fractionUploaded];
    v31 = v30;
    v32 = v6;
    v33 = [(CLSAbstractAsset *)v3 isTemporary];
    v34 = [(CLSAbstractAsset *)v3 isStaged];
    uploadError = self->_uploadError;
    BYTE1(v37) = v34;
    LOBYTE(v37) = v33;
    v6 = v32;
    v27 = v29;
    v36 = v29;
    v35 = self;
    v26 = v28;
    v11 = v46;
    [(PDFileSyncAgent *)v35 queued_notifyUploadCompleted:v44 url:v6 thumbnailURL:v46 relativePathWithinContainer:0 ubiquitousContainerName:0 brItemID:v28 brOwnerName:v31 brZoneName:v36 brShareName:v14 fractionUploaded:v15 isTemporary:v37 isStaged:uploadError error:?];
    goto LABEL_16;
  }

  if (v5 == 1)
  {
    v47 = v10;
    v42 = [PDFileSyncAgent ubiquitousContainerURL:0];
    v41 = [v4 cls_pathRelativeToURL:v42];
    v40 = [(CLSAbstractAsset *)v3 isUploaded];
    v14 = CLSUbiquitousContainerID();
    v15 = [(CLSAbstractAsset *)v3 brItemID];
    [(CLSAbstractAsset *)v3 brOwnerName];
    v16 = v45 = v4;
    [(CLSAbstractAsset *)v3 brZoneName];
    v18 = v17 = v11;
    [(CLSAbstractAsset *)v3 brShareName];
    v43 = v12;
    v20 = v19 = v6;
    [(CLSAbstractAsset *)v3 fractionUploaded];
    v22 = v21;
    v23 = [(CLSAbstractAsset *)v3 isTemporary];
    v24 = [(CLSAbstractAsset *)v3 isStaged];
    v38 = self->_uploadError;
    BYTE1(v37) = v24;
    LOBYTE(v37) = v23;
    v25 = self;
    v27 = v41;
    v26 = v42;
    [(PDFileSyncAgent *)v25 queued_notifyUploadCompleted:v40 url:v19 thumbnailURL:v17 relativePathWithinContainer:v41 ubiquitousContainerName:v14 brItemID:v15 brOwnerName:v22 brZoneName:v16 brShareName:v18 fractionUploaded:v20 isTemporary:v37 isStaged:v38 error:?];

    v6 = v19;
    v12 = v43;

    v11 = v17;
    v4 = v45;
LABEL_16:

    v10 = v47;
  }
}

- (void)compressAssetIfNecessary:(id)a3
{
  v3 = a3;
  if ([v3 type] == 3)
  {
    v18 = 0;
    v4 = +[NSFileManager defaultManager];
    v5 = [v3 URL];
    v6 = [v5 path];
    v7 = [v4 fileExistsAtPath:v6 isDirectory:&v18];

    if (v7)
    {
      if (v18 == 1)
      {
        v17 = 0;
        v8 = sub_10012D100(PDFileSyncManager, &v17);
        v9 = v17;
        v10 = [v3 URL];
        v11 = [v8 url];
        v16 = v9;
        v12 = [CLSCompressorObjC compressWithDirectoryURL:v10 destinationURL:v11 error:&v16];
        v13 = v16;

        if (v12 && !v13)
        {
          [v3 setCompressedURL:v12];
          v14 = [v3 originalFilename];
          v15 = [v14 stringByAppendingString:@".classkit.compressed.aar"];
          [v3 setOriginalFilename:v15];
        }
      }
    }
  }
}

- (void)decompressAssetIfNecessary:(id)a3
{
  v3 = a3;
  if ([v3 type] == 3)
  {
    v4 = [v3 URL];
    v5 = [CLSCompressorObjC isAppleArchiveWithFileURL:v4];

    if (v5)
    {
      v6 = [v3 URL];
      v8 = 0;
      v7 = [CLSCompressorObjC uncompressWithArchiveAt:v6 error:&v8];

      if (v7)
      {
        [v3 setURL:v7];
      }
    }
  }
}

+ (BOOL)removeItemAtURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[NSFileManager defaultManager];
  v17 = 0;
  v7 = [v6 removeItemAtURL:v5 error:&v17];

  v8 = v17;
  v9 = v8;
  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v11 = [v8 underlyingErrors];
    v12 = [v11 firstObject];

    if ([v12 code] == 2 && (objc_msgSend(v12, "domain"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", NSPOSIXErrorDomain), v13, (v14 & 1) != 0))
    {
      v10 = 1;
    }

    else
    {
      v15 = v9;
      v10 = 0;
      if (a4)
      {
        *a4 = v9;
      }
    }
  }

  return v10;
}

- (id)moveDownloadedAssetFileToContentStoreCacheForAsset:(id)a3
{
  v3 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100055764;
  v20 = sub_100055774;
  v21 = 0;
  v4 = sub_10003E1B4();
  v5 = (v17 + 5);
  obj = v17[5];
  v6 = sub_1000E0F2C(PDFileManager, v4, &obj);
  objc_storeStrong(v5, obj);
  if (v6)
  {
    v7 = [v3 filenameForCKContentStoreCache];
    v8 = [v6 URLByAppendingPathComponent:v7 isDirectory:0];
    if (v4)
    {
      v9 = v4[9];
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    v13 = v3;
    v14 = v8;
    CLSPerformWithPersona();

    v11 = v17[5];
  }

  else
  {
    v11 = v17[5];
  }

  _Block_object_dispose(&v16, 8);

  return v11;
}

- (id)moveDownloadedAssetThumbnailFileToContentStoreCacheForAsset:(id)a3
{
  v3 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100055764;
  v20 = sub_100055774;
  v21 = 0;
  v4 = sub_10003E1B4();
  v5 = (v17 + 5);
  obj = v17[5];
  v6 = sub_1000E0F2C(PDFileManager, v4, &obj);
  objc_storeStrong(v5, obj);
  if (v6)
  {
    v7 = [v3 thumbnailFilenameForCKContentStoreCache];
    v8 = [v6 URLByAppendingPathComponent:v7 isDirectory:0];
    if (v4)
    {
      v9 = v4[9];
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    v13 = v3;
    v14 = v8;
    CLSPerformWithPersona();

    v11 = v17[5];
  }

  else
  {
    v11 = v17[5];
  }

  _Block_object_dispose(&v16, 8);

  return v11;
}

- (id)copyAssetToCloudKitContentStoreCache:(id)a3 createThumbnailIfNeeded:(BOOL)a4
{
  v6 = a3;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = sub_100055764;
  v57 = sub_100055774;
  v58 = 0;
  v7 = sub_10003E1B4();
  v8 = v54;
  v52 = v54[5];
  v9 = sub_1000E0F2C(PDFileManager, v7, &v52);
  objc_storeStrong(v8 + 5, v52);
  if (v9)
  {
    v10 = [v6 filenameForCKContentStoreCache];
    v11 = [v6 thumbnailFilenameForCKContentStoreCache];
    v12 = [v9 URLByAppendingPathComponent:v10 isDirectory:0];
    if (v11)
    {
      v13 = [v9 URLByAppendingPathComponent:v11 isDirectory:0];
    }

    else
    {
      v13 = 0;
    }

    v15 = [v6 URL];
    v46 = 0;
    v47 = &v46;
    v48 = 0x3032000000;
    v49 = sub_100055764;
    v50 = sub_100055774;
    v51 = [v6 thumbnailURL];
    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x2020000000;
    v45 = [v15 isEqual:v12];
    v42[0] = 0;
    v42[1] = v42;
    v42[2] = 0x2020000000;
    v26 = v11;
    v27 = v10;
    v43 = [v47[5] isEqual:v13];
    v16 = self;
    if (v7)
    {
      v17 = v7[9];
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;
    v29 = _NSConcreteStackBlock;
    v30 = 3221225472;
    v31 = sub_10005651C;
    v32 = &unk_100203488;
    v37 = v44;
    v19 = v12;
    v33 = v19;
    v38 = &v53;
    v39 = v42;
    v20 = v13;
    v34 = v20;
    v21 = v15;
    v35 = v21;
    v22 = v6;
    v41 = a4;
    v36 = v22;
    v40 = &v46;
    CLSPerformWithPersona();

    v14 = v54[5];
    if (v14)
    {
      v23 = v14;
    }

    else if (![(PDDatabase *)v16->_database insertOrUpdateObject:v22, v26, v27])
    {
      CLSInitLog();
      v24 = CLSLogAsset;
      if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to insert/update URL and thumbnailURL of asset.", buf, 2u);
      }
    }

    _Block_object_dispose(v42, 8);
    _Block_object_dispose(v44, 8);
    _Block_object_dispose(&v46, 8);
  }

  else
  {
    v14 = v54[5];
  }

  _Block_object_dispose(&v53, 8);
  return v14;
}

- (void)uploadToCloudKitContentStore
{
  v3 = self->_asset;
  if ([(CLSAbstractAsset *)v3 isUploaded])
  {
    [(PDFileSyncAgent *)self uploadStateChanged:8];
  }

  else
  {
    objc_initWeak(&location, self);
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x3032000000;
    v37[3] = sub_100055764;
    v37[4] = sub_100055774;
    v38 = sub_10016A49C(self->_database, @"PDCK_iCloudUserID");
    v4 = sub_10008E290([PDCKUploadAssetsOperation alloc], self->_database);
    assetsOperation = self->_assetsOperation;
    self->_assetsOperation = v4;

    v7 = self->_assetsOperation;
    if (v7)
    {
      objc_setProperty_nonatomic_copy(v7, v6, &stru_1002034C8, 48);
    }

    newValue[0] = _NSConcreteStackBlock;
    newValue[1] = 3221225472;
    newValue[2] = sub_100057468;
    newValue[3] = &unk_1002034F0;
    objc_copyWeak(&v36, &location);
    newValue[4] = v37;
    v9 = self->_assetsOperation;
    if (v9)
    {
      objc_setProperty_nonatomic_copy(v9, v8, newValue, 40);
    }

    v30 = _NSConcreteStackBlock;
    v31 = 3221225472;
    v32 = sub_100057798;
    v33 = &unk_100203738;
    objc_copyWeak(&v34, &location);
    v11 = self->_assetsOperation;
    if (v11)
    {
      objc_setProperty_nonatomic_copy(v11, v10, &v30, 32);
    }

    v12 = [CKRecordID alloc];
    v13 = [(CLSAbstractAsset *)self->_asset objectID:v30];
    v14 = self->_assetsOperation;
    if (v14)
    {
      v14 = v14->_assetZoneID;
    }

    v15 = v14;
    v16 = [v12 initWithRecordName:v13 zoneID:v15];

    v17 = [[CKRecord alloc] initWithRecordType:@"CLSCKAsset" recordID:v16];
    v18 = +[NSDate date];
    [v17 setObject:v18 forKeyedSubscript:@"dateCreated"];

    v19 = +[NSDate date];
    [v17 setObject:v19 forKeyedSubscript:@"dateLastModified"];

    [(PDFileSyncAgent *)self compressAssetIfNecessary:self->_asset];
    v20 = [(CLSAbstractAsset *)self->_asset compressedURL];

    if (v20)
    {
      v21 = [CKAsset alloc];
      [(CLSAbstractAsset *)self->_asset compressedURL];
    }

    else
    {
      v21 = [CKAsset alloc];
      [(CLSAbstractAsset *)self->_asset URL];
    }
    v22 = ;
    v23 = [v21 initWithFileURL:v22];

    [v17 setObject:v23 forKeyedSubscript:@"asset"];
    v24 = [(CLSAbstractAsset *)self->_asset thumbnailURL];
    LOBYTE(v22) = v24 == 0;

    if ((v22 & 1) == 0)
    {
      v25 = [CKAsset alloc];
      v26 = [(CLSAbstractAsset *)self->_asset thumbnailURL];
      v27 = [v25 initWithFileURL:v26];

      [v17 setObject:v27 forKeyedSubscript:@"assetThumbnail"];
    }

    [(PDFileSyncAgent *)self insertStagedAssetInDBToBeginUploading];
    v28 = self->_assetsOperation;
    v40 = v17;
    v29 = [NSArray arrayWithObjects:&v40 count:1];
    sub_10008E480(&v28->super.isa, v29, &__NSArray0__struct);

    objc_destroyWeak(&v34);
    objc_destroyWeak(&v36);
    _Block_object_dispose(v37, 8);

    objc_destroyWeak(&location);
  }
}

- (id)copyToiCloudDrive
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_100055764;
  v33 = sub_100055774;
  v34 = 0;
  v3 = [(CLSAbstractAsset *)self->_asset URL];
  v4 = [v3 startAccessingSecurityScopedResource];
  v5 = +[NSFileManager defaultManager];
  v6 = [v3 path];
  v7 = [v5 fileExistsAtPath:v6];

  if (v4)
  {
    [v3 stopAccessingSecurityScopedResource];
  }

  if (v7)
  {
    v8 = [(CLSAbstractAsset *)self->_asset brItemID];
    v9 = [v3 br_itemID];
    v10 = v9;
    if (v8)
    {
      if (v9 && ([v8 isEqualToString:v9] & 1) != 0)
      {
        v11 = 0;
      }

      else
      {
        v14 = [NSError cls_createErrorWithCode:315 format:@"Attempting to upload a file whose br_ItemID, '%@', does not match asset's br_itemID, '%@'", v10, v8];
        v15 = v30[5];
        v30[5] = v14;

        [v30[5] cls_log:CLSLogAsset];
        v11 = v30[5];
      }
    }

    else
    {
      v16 = (v30 + 5);
      obj = v30[5];
      v17 = [PDFileSyncAgent draftsURL:&obj];
      objc_storeStrong(v16, obj);
      if (v17)
      {
        v18 = sub_10003E1B4();
        v19 = v18;
        if (v18)
        {
          v20 = *(v18 + 72);
        }

        else
        {
          v20 = 0;
        }

        v21 = v20;
        v26 = v17;
        v27 = v3;
        CLSPerformWithPersona();

        v11 = v30[5];
        if (v11)
        {
          v22 = v11;
        }
      }

      else
      {
        v23 = [NSError cls_createErrorWithCode:315 underlyingError:v30[5] description:@"Drafts folder not found."];
        v24 = v30[5];
        v30[5] = v23;

        [v30[5] cls_log:CLSLogAsset];
        v11 = v30[5];
      }
    }
  }

  else
  {
    v12 = [NSError cls_createErrorWithCode:315 format:@"No file to upload at '%@'", v3];
    v13 = v30[5];
    v30[5] = v12;

    [v30[5] cls_log:CLSLogAsset];
    v11 = v30[5];
  }

  _Block_object_dispose(&v29, 8);
  return v11;
}

- (void)queued_startObservingiCloudDriveUploadProgress
{
  objc_initWeak(&location, self);
  v2 = sub_100051D9C();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000581AC;
  v3[3] = &unk_100203000;
  objc_copyWeak(&v4, &location);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)queued_stopObservingiCloudDriveUploadProgress
{
  objc_initWeak(&location, self);
  v2 = sub_100051D9C();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100058A4C;
  v3[3] = &unk_100203000;
  objc_copyWeak(&v4, &location);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)createiCloudDriveCKShare:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  if (qword_10024D930 != -1)
  {
    dispatch_once(&qword_10024D930, &stru_100203280);
  }

  v5 = qword_10024D938;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100058C44;
  v7[3] = &unk_1002035B8;
  objc_copyWeak(&v9, &location);
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (NSOperationQueue)presentedItemOperationQueue
{
  if (qword_10024D908 != -1)
  {
    dispatch_once(&qword_10024D908, &stru_100203220);
  }

  v3 = qword_10024D900;

  return v3;
}

- (NSSet)observedPresentedItemUbiquityAttributes
{
  if (qword_10024D948 != -1)
  {
    dispatch_once(&qword_10024D948, &stru_1002035D8);
  }

  v3 = qword_10024D940;

  return v3;
}

- (void)addToFilePresenter
{
  if (!self->_addedToFilePresenter)
  {
    [NSFileCoordinator addFilePresenter:self];
    CLSInitLog();
    v3 = CLSLogAsset;
    if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v13 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PDFileSyncAgent object '%{public}@' was added to NSFileCoordinator as FilePresenter", buf, 0xCu);
    }

    self->_addedToFilePresenter = 1;
    v4 = [(CLSAbstractAsset *)self->_asset URL];
    v5 = [(PDFileSyncAgent *)self observedPresentedItemUbiquityAttributes];
    v6 = [v5 allObjects];
    [v4 cls_removeCachedResourceValueForKeys:v6];

    v7 = [v5 allObjects];
    v11 = 0;
    v8 = [v4 resourceValuesForKeys:v7 error:&v11];
    v9 = v11;

    CLSInitLog();
    v10 = CLSLogAsset;
    if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v13 = v8;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Added to filePresenter and fetched initial state of attributes: %{public}@, error: %{public}@", buf, 0x16u);
    }
  }
}

- (void)removeFromFilePresenter
{
  if (self->_addedToFilePresenter)
  {
    [NSFileCoordinator removeFilePresenter:self];
    CLSInitLog();
    v3 = CLSLogAsset;
    if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138543362;
      v5 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PDFileSyncAgent object '%{public}@' was removed from NSFileCoordinator as FilePresenter", &v4, 0xCu);
    }

    self->_addedToFilePresenter = 0;
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(CLSAbstractAsset *)self->_asset URL];

  if (v13 == a6)
  {
    v14 = v11;
    if (self->_uploadProgress != v14)
    {
      __assert_rtn("[PDFileSyncAgent observeValueForKeyPath:ofObject:change:context:]", "PDFileSyncAgent.m", 1550, "progress == _uploadProgress");
    }

    v15 = v14;
    v16 = self->_asset;
    [(NSProgress *)v15 fractionCompleted];
    v18 = v17 * 0.9;
    [(CLSAbstractAsset *)v16 setFractionUploaded:v17 * 0.9];
    v19 = [(CLSAbstractAsset *)self->_asset fileSizeInBytes];
    CLSInitLog();
    v20 = CLSLogAsset;
    if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v23 = (v18 * v19);
      v24 = 2048;
      v25 = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Uploaded: %ld of %ld bytes", buf, 0x16u);
    }

    [(PDFileSyncAgent *)self uploadStateChanged:2];
  }

  else
  {
    v21.receiver = self;
    v21.super_class = PDFileSyncAgent;
    [(PDFileSyncAgent *)&v21 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)presentedItemDidChangeUbiquityAttributes:(id)a3
{
  v4 = a3;
  v30 = self;
  v31 = [(CLSAbstractAsset *)self->_asset URL];
  CLSInitLog();
  v5 = CLSLogAsset;
  if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "presentedItemDidChangeUbiquityAttributes, attributes: %@", buf, 0xCu);
  }

  v6 = [v4 allObjects];
  [v31 cls_removeCachedResourceValueForKeys:v6];

  v7 = [v4 allObjects];
  v37 = 0;
  v8 = [v31 resourceValuesForKeys:v7 error:&v37];
  v9 = v37;

  CLSInitLog();
  v10 = CLSLogAsset;
  if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "presentedItemDidChangeUbiquityAttributes, resourceValues: %@", buf, 0xCu);
  }

  if (!v9)
  {
    v29 = v4;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = [v8 keyEnumerator];
    v11 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
    p_isa = &v30->super.isa;
    if (!v11)
    {
      goto LABEL_27;
    }

    v13 = v11;
    v14 = *v34;
    while (1)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v33 + 1) + 8 * i);
        if ([v16 isEqualToString:NSURLUbiquitousItemIsUploadedKey])
        {
          v17 = [v8 objectForKeyedSubscript:NSURLUbiquitousItemIsUploadedKey];
          v18 = [v17 BOOLValue];
          CLSInitLog();
          v19 = CLSLogAsset;
          if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
          {
            v20 = v19;
            v21 = [v31 path];
            v22 = v21;
            *buf = 138412546;
            v23 = "not ";
            if (v18)
            {
              v23 = "";
            }

            v39 = v21;
            v40 = 2080;
            v41 = v23;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "File at path '%@' has %suploaded", buf, 0x16u);

            p_isa = &v30->super.isa;
          }

          if (!v18)
          {
            goto LABEL_24;
          }

          [p_isa removeFromFilePresenter];
          v24 = p_isa;
          v25 = 3;
          goto LABEL_23;
        }

        if (![v16 isEqualToString:NSURLUbiquitousItemUploadingErrorKey])
        {
          continue;
        }

        v17 = [v8 objectForKeyedSubscript:NSURLUbiquitousItemUploadingErrorKey];
        if (v17)
        {
          objc_storeStrong(p_isa + 7, v17);
          CLSInitLog();
          v26 = CLSLogAsset;
          if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR))
          {
            v27 = v26;
            v28 = [v31 path];
            *buf = 138412546;
            v39 = v28;
            v40 = 2112;
            v41 = 0;
            _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "iCloud reported an error when uploading asset at '%@', error: %@", buf, 0x16u);

            p_isa = &v30->super.isa;
          }

          v24 = p_isa;
          v25 = 2;
LABEL_23:
          [v24 uploadStateChanged:v25];
        }

LABEL_24:
      }

      v13 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
      if (!v13)
      {
LABEL_27:

        v9 = 0;
        v4 = v29;
        break;
      }
    }
  }
}

- (BOOL)updateAssetIfExists:(id)a3
{
  v4 = a3;
  database = self->_database;
  v6 = objc_opt_class();
  v7 = [v4 objectID];
  LODWORD(database) = [(PDDatabase *)database entityExistsByClass:v6 identity:v7];

  if (database)
  {
    v8 = [(PDDatabase *)self->_database updateObject:v4];
  }

  else
  {
    CLSInitLog();
    v9 = CLSLogAsset;
    v8 = 1;
    if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "unable to update asset in the database -- asset not found", v11, 2u);
    }
  }

  return v8;
}

- (BOOL)cacheAssetURLFromCKRecord:(id)a3 usingAsset:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a3 objectForKeyedSubscript:@"asset"];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 fileURL];
    v12 = [v8 filenameExtension];
    v13 = [v11 URLByAppendingPathExtension:v12];
    v14 = +[NSFileManager defaultManager];
    v30 = 0;
    v15 = [v14 moveItemAtURL:v11 toURL:v13 error:&v30];
    v29 = v30;

    if (v15)
    {
      v16 = v13;

      v11 = v16;
    }

    else
    {
      CLSInitLog();
      v19 = CLSLogAsset;
      if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v32 = v11;
        v33 = 2112;
        v34 = v13;
        v35 = 2112;
        v36 = v29;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "cacheAssetURLFromCKRecord unable to rename file from: '%@' to: '%@', error: %@", buf, 0x20u);
      }
    }

    v20 = [v8 URL];
    [v8 setURL:v11];
    v21 = [(PDFileSyncAgent *)self moveDownloadedAssetFileToContentStoreCacheForAsset:v8];
    if (v21)
    {
      CLSInitLog();
      v22 = CLSLogAsset;
      if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR))
      {
        v27 = v22;
        v28 = [v8 objectID];
        *buf = 138412546;
        v32 = v28;
        v33 = 2112;
        v34 = v21;
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "cacheAssetURLFromCKRecord unable to move file to cache location for CLSAsset.objectID: '%@', error: %@", buf, 0x16u);
      }

      [v8 setURL:v20];
      v23 = v21;
      if (a5)
      {
        v18 = 0;
        *a5 = v21;
LABEL_19:

        goto LABEL_20;
      }
    }

    else
    {
      if ([(PDFileSyncAgent *)self updateAssetIfExists:v8])
      {
        v18 = 1;
        goto LABEL_19;
      }

      v24 = [v8 objectID];
      v25 = [NSError cls_createErrorWithCode:342 format:@"unable to update URL of an asset with objectID: %@", v24];
      if (a5)
      {
        *a5 = v25;
      }
    }

    v18 = 0;
    goto LABEL_19;
  }

  v17 = [NSError cls_createErrorWithCode:342 format:@"asset record not found"];
  v18 = 0;
  if (a5)
  {
    *a5 = v17;
  }

LABEL_20:

  return v18;
}

- (BOOL)cacheThumbnailAssetURLFromCKRecord:(id)a3 usingAsset:(id)a4 error:(id *)a5
{
  v8 = a4;
  if (!a5)
  {
    v30 = 0;
    a5 = &v30;
  }

  v9 = [a3 objectForKeyedSubscript:@"assetThumbnail"];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 fileURL];
    v12 = [v11 pathExtension];
    v13 = [v12 isEqualToString:@"jpeg"];

    if ((v13 & 1) == 0)
    {
      v14 = [v11 URLByAppendingPathExtension:@"jpeg"];
      v15 = +[NSFileManager defaultManager];
      v29 = 0;
      v16 = [v15 moveItemAtURL:v11 toURL:v14 error:&v29];
      v17 = v29;

      if (v16)
      {
        v18 = v14;

        v11 = v18;
      }

      else
      {
        CLSInitLog();
        v20 = CLSLogAsset;
        if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v32 = v11;
          v33 = 2112;
          v34 = v14;
          v35 = 2112;
          v36 = v17;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "cacheThumbnailAssetURLFromCKRecord unable to rename thumbnail file from: '%@' to: '%@', error: %@", buf, 0x20u);
        }
      }
    }

    v21 = [v8 thumbnailURL];
    [v8 setThumbnailURL:v11];
    v22 = [(PDFileSyncAgent *)self moveDownloadedAssetThumbnailFileToContentStoreCacheForAsset:v8];
    if (v22)
    {
      CLSInitLog();
      v23 = CLSLogAsset;
      if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR))
      {
        v27 = v23;
        v28 = [v8 objectID];
        *buf = 138412546;
        v32 = v28;
        v33 = 2112;
        v34 = v22;
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "cacheThumbnailAssetURLFromCKRecord unable to move thumbnail file to cache location for CLSAsset.objectID: '%@', error: %@", buf, 0x16u);
      }

      [v8 setThumbnailURL:v21];
      v24 = v22;
      v19 = 0;
      *a5 = v22;
    }

    else if ([(PDFileSyncAgent *)self updateAssetIfExists:v8])
    {
      v19 = 1;
    }

    else
    {
      v25 = [v8 objectID];
      *a5 = [NSError cls_createErrorWithCode:342 format:@"unable to update thumbnailURL of an asset with objectID: %@", v25];

      v19 = 0;
    }
  }

  else
  {
    [NSError cls_createErrorWithCode:342 format:@"thumbnailAsset record not found"];
    *a5 = v19 = 0;
  }

  return v19;
}

- (void)downloadCloudKitPrimaryFileWithCompletion:(id)a3
{
  v4 = a3;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = sub_100055764;
  v55 = sub_100055774;
  v56 = 0;
  asset = self->_asset;
  objc_opt_class();
  objc_opt_isKindOfClass();
  database = self->_database;
  v7 = objc_opt_class();
  v8 = [(CLSAbstractAsset *)self->_asset objectID];
  v9 = [(PDDatabase *)database select:v7 identity:v8];
  v10 = v52[5];
  v52[5] = v9;

  if (v52[5])
  {
    v11 = sub_10003E1B4();
    v50 = 0;
    v12 = sub_1000E0F2C(PDFileManager, v11, &v50);
    v13 = v50;
    if (v12)
    {
      v14 = [v52[5] brItemID];
      v15 = v14 == 0;

      if (v15)
      {
        v24 = [v52[5] objectID];
        v25 = [NSError cls_createErrorWithCode:2 format:@"Cannot prefetch primary file for asset '%@', its brItemID is nil!", v24];

        [(PDFileSyncAgent *)v25 cls_log:CLSLogAsset];
        [(PDFileSyncAgent *)self queued_notifyDownloadCompleted:0 error:v25];
        v4[2](v4, 0, v25);
        v13 = v25;
      }

      else
      {
        v41 = [v52[5] filenameForCKContentStoreCache];
        v42 = [v12 URLByAppendingPathComponent:? isDirectory:?];
        v16 = +[NSFileManager defaultManager];
        v17 = [(PDFileSyncAgent *)v42 path];
        v18 = [v16 fileExistsAtPath:v17];

        if (v18)
        {
          v19 = [v52[5] URL];
          v20 = [v19 isEqual:v42];

          if ((v20 & 1) == 0)
          {
            [v52[5] setURL:v42];
            if (![(PDFileSyncAgent *)self updateAssetIfExists:v52[5]])
            {
              CLSInitLog();
              v21 = CLSLogAsset;
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                v35 = [v52[5] objectID];
                *buf = 138412290;
                v60 = v35;
                _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "unable to update URL of an asset '%@'", buf, 0xCu);
              }
            }
          }

          CLSInitLog();
          v22 = CLSLogAsset;
          if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v60 = v42;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "downloadCloudKitPrimaryFileWithCompletion returning URL from cache: '%@'", buf, 0xCu);
          }

          [(PDFileSyncAgent *)self queued_notifyDownloadCompleted:1 error:0];
          (v4)[2](v4, v42, 0);
        }

        else
        {
          objc_initWeak(&location, self);
          v26 = self->_database;
          v27 = [v52[5] objectID];
          v38 = sub_10015CF38(v26, v27);

          v39 = sub_1000716B8(self->_database);
          CLSInitLog();
          v28 = CLSLogAsset;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v29 = [v52[5] objectID];
            *buf = 134218242;
            v60 = self;
            v61 = 2112;
            v62 = v29;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "agent <%p> downloadCloudKitPrimaryFileWithCompletion calling fetchRecordsForDownloadingWithZoneName for asset '%@'", buf, 0x16u);
          }

          assetDownloadOperations = self->_assetDownloadOperations;
          v40 = [v52[5] brZoneName];
          v30 = [v52[5] brOwnerName];
          v31 = [v52[5] parentObjectID];
          v36 = [v52[5] parentEntityType];
          v32 = [v52[5] brItemID];
          v58 = v32;
          v33 = [NSArray arrayWithObjects:&v58 count:1];
          v57 = @"asset";
          v34 = [NSArray arrayWithObjects:&v57 count:1];
          v47[0] = _NSConcreteStackBlock;
          v47[1] = 3221225472;
          v47[2] = sub_10005ABE8;
          v47[3] = &unk_100203600;
          objc_copyWeak(&v48, &location);
          v43[0] = _NSConcreteStackBlock;
          v43[1] = 3221225472;
          v43[2] = sub_10005ADFC;
          v43[3] = &unk_100203668;
          objc_copyWeak(&v46, &location);
          v45 = &v51;
          v44 = v4;
          sub_100128488(assetDownloadOperations, v40, v30, v31, v36, v39, v33, v34, v38, v47, &stru_100203640, v43);

          objc_destroyWeak(&v46);
          objc_destroyWeak(&v48);

          objc_destroyWeak(&location);
        }
      }
    }

    else
    {
      CLSInitLog();
      v23 = CLSLogAsset;
      if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v60 = v13;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "downloadCloudKitPrimaryFileWithCompletion exiting with error: '%{public}@'", buf, 0xCu);
      }

      [(PDFileSyncAgent *)self queued_notifyDownloadCompleted:0 error:v13];
      v4[2](v4, 0, v13);
    }
  }

  else
  {
    v13 = [NSError cls_createErrorWithCode:2 format:@"Cannot download primary file for nil asset."];
    [(PDFileSyncAgent *)v13 cls_log:CLSLogAsset];
    [(PDFileSyncAgent *)self queued_notifyDownloadCompleted:0 error:v13];
    v4[2](v4, 0, v13);
  }

  _Block_object_dispose(&v51, 8);
}

- (void)downloadCloudKitThumbnailWithCompletion:(id)a3
{
  v4 = a3;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = sub_100055764;
  v54 = sub_100055774;
  v55 = 0;
  asset = self->_asset;
  objc_opt_class();
  objc_opt_isKindOfClass();
  database = self->_database;
  v7 = objc_opt_class();
  v8 = [(CLSAbstractAsset *)self->_asset objectID];
  v9 = [(PDDatabase *)database select:v7 identity:v8];
  v10 = v51[5];
  v51[5] = v9;

  if (v51[5])
  {
    v11 = sub_10003E1B4();
    v49 = 0;
    v12 = sub_1000E0F2C(PDFileManager, v11, &v49);
    v13 = v49;
    if (v12)
    {
      v43 = [v51[5] thumbnailFilenameForCKContentStoreCache];
      v14 = [v12 URLByAppendingPathComponent:? isDirectory:?];
      v15 = +[NSFileManager defaultManager];
      v16 = [(PDFileSyncAgent *)v14 path];
      v17 = [v15 fileExistsAtPath:v16];

      v18 = v51[5];
      if (v17)
      {
        v19 = [v18 thumbnailURL];
        v20 = [v19 isEqual:v14];

        if ((v20 & 1) == 0)
        {
          [v51[5] setThumbnailURL:v14];
          if (![(PDFileSyncAgent *)self updateAssetIfExists:v51[5]])
          {
            CLSInitLog();
            v21 = CLSLogAsset;
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              v36 = [v51[5] objectID];
              *buf = 138412290;
              v59 = v36;
              _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "unable to update thumbnailURL of an asset '%@'", buf, 0xCu);
            }
          }
        }

        CLSInitLog();
        v22 = CLSLogAsset;
        if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v59 = v14;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "downloadCloudKitThumbnailWithCompletion returning thumbFileURL from cache: '%@'", buf, 0xCu);
        }

        [(PDFileSyncAgent *)self queued_notifyDownloadCompleted:1 error:0];
        v4[2](v4, v14, 0);
      }

      else
      {
        v24 = [v18 brItemID];
        v25 = v24 == 0;

        if (v25)
        {
          v34 = [v51[5] objectID];
          v35 = [NSError cls_createErrorWithCode:2 format:@"Cannot download thumbnail file for asset '%@', its brItemID is nil!", v34];

          [(PDFileSyncAgent *)v35 cls_log:CLSLogAsset];
          [(PDFileSyncAgent *)self queued_notifyDownloadCompleted:0 error:v35];
          (v4)[2](v4, 0, v35);
          v13 = v35;
        }

        else
        {
          objc_initWeak(&location, self);
          v26 = self->_database;
          v27 = [v51[5] objectID];
          v39 = sub_10015CF38(v26, v27);

          v42 = sub_1000716B8(self->_database);
          CLSInitLog();
          v28 = CLSLogAsset;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v29 = [v51[5] objectID];
            *buf = 134218242;
            v59 = self;
            v60 = 2112;
            v61 = v29;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "agent <%p> downloadCloudKitThumbnailWithCompletion calling fetchRecordsForDownloadingWithZoneName for asset '%@'", buf, 0x16u);
          }

          assetDownloadOperations = self->_assetDownloadOperations;
          v41 = [v51[5] brZoneName];
          v40 = [v51[5] brOwnerName];
          v30 = [v51[5] parentObjectID];
          v37 = [v51[5] parentEntityType];
          v31 = [v51[5] brItemID];
          v57 = v31;
          v32 = [NSArray arrayWithObjects:&v57 count:1];
          v56 = @"assetThumbnail";
          v33 = [NSArray arrayWithObjects:&v56 count:1];
          v44[0] = _NSConcreteStackBlock;
          v44[1] = 3221225472;
          v44[2] = sub_10005B9C0;
          v44[3] = &unk_100203668;
          objc_copyWeak(&v47, &location);
          v46 = &v50;
          v45 = v4;
          sub_100128488(assetDownloadOperations, v41, v40, v30, v37, v42, v32, v33, v39, &stru_1002036A8, &stru_1002036C8, v44);

          objc_destroyWeak(&v47);
          objc_destroyWeak(&location);
        }
      }
    }

    else
    {
      CLSInitLog();
      v23 = CLSLogAsset;
      if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v59 = v13;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "downloadCloudKitThumbnailWithCompletion exiting with error: '%{public}@'", buf, 0xCu);
      }

      [(PDFileSyncAgent *)self queued_notifyDownloadCompleted:0 error:v13];
      (v4)[2](v4, 0, v13);
    }
  }

  else
  {
    v13 = [NSError cls_createErrorWithCode:2 format:@"Cannot download thumbnail file for nil asset."];
    [(PDFileSyncAgent *)v13 cls_log:CLSLogAsset];
    [(PDFileSyncAgent *)self queued_notifyDownloadCompleted:0 error:v13];
    (v4)[2](v4, 0, v13);
  }

  _Block_object_dispose(&v50, 8);
}

- (void)fetchCloudKitStreamingURLWithCompletion:(id)a3
{
  v4 = a3;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_100055764;
  v39 = sub_100055774;
  v40 = 0;
  asset = self->_asset;
  objc_opt_class();
  objc_opt_isKindOfClass();
  database = self->_database;
  v7 = objc_opt_class();
  v8 = [(CLSAbstractAsset *)self->_asset objectID];
  v9 = [(PDDatabase *)database select:v7 identity:v8];
  v10 = v36[5];
  v36[5] = v9;

  v11 = v36[5];
  if (v11)
  {
    v12 = [v11 originalFilename];
    v13 = v12 == 0;

    if (v13)
    {
      v24 = [NSError cls_createErrorWithCode:2 format:@"Asset must have originalFilename to fetch a valid streaming URL."];
      [v24 cls_log:CLSLogAsset];
      [(PDFileSyncAgent *)self queued_notifyDownloadCompleted:0 error:v24];
      (*(v4 + 2))(v4, 0, 0, v24);
    }

    else
    {
      CLSInitLog();
      v14 = CLSLogAsset;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [v36[5] objectID];
        *buf = 134218242;
        v44 = self;
        v45 = 2112;
        v46 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "agent <%p> fetchCloudKitStreamingURLWithCompletion calling fetchRecordsForStreamingWithZoneName for asset '%@'", buf, 0x16u);
      }

      objc_initWeak(buf, self);
      v16 = self->_database;
      v17 = [v36[5] objectID];
      v26 = sub_10015CF38(v16, v17);

      v27 = sub_1000716B8(self->_database);
      assetDownloadOperations = self->_assetDownloadOperations;
      v28 = [v36[5] brZoneName];
      v18 = [v36[5] brOwnerName];
      v19 = [v36[5] parentObjectID];
      v20 = [v36[5] parentEntityType];
      v21 = [v36[5] brItemID];
      v42 = v21;
      v22 = [NSArray arrayWithObjects:&v42 count:1];
      v41 = @"asset";
      v23 = [NSArray arrayWithObjects:&v41 count:1];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_10005C180;
      v33[3] = &unk_100203600;
      objc_copyWeak(&v34, buf);
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_10005C394;
      v29[3] = &unk_100203710;
      objc_copyWeak(&v32, buf);
      v31 = &v35;
      v29[4] = self;
      v30 = v4;
      sub_100128740(assetDownloadOperations, v28, v18, v19, v20, v27, v22, v23, v26, v33, &stru_1002036E8, v29);

      objc_destroyWeak(&v32);
      objc_destroyWeak(&v34);

      objc_destroyWeak(buf);
      v24 = 0;
    }
  }

  else
  {
    v24 = [NSError cls_createErrorWithCode:2 format:@"Cannot get streaming URL for nil asset."];
    [v24 cls_log:CLSLogAsset];
    [(PDFileSyncAgent *)self queued_notifyDownloadCompleted:0 error:v24];
    (*(v4 + 2))(v4, 0, 0, v24);
  }

  _Block_object_dispose(&v35, 8);
}

@end