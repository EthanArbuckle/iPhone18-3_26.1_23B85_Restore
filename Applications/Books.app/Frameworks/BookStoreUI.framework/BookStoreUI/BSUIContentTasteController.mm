@interface BSUIContentTasteController
+ (BSUIContentTasteController)sharedController;
- (BSUIContentTasteController)init;
- (signed)_tasteIntegerFromTasteType:(unint64_t)type explicitlyDeclined:(BOOL)declined;
- (void)fetchTasteTypeForStoreID:(id)d completion:(id)completion;
- (void)fetchTastesForStoreUploading:(id)uploading;
- (void)setExplicitlyDeclined:(BOOL)declined forStoreID:(id)d completion:(id)completion;
- (void)setTasteType:(unint64_t)type forStoreID:(id)d completion:(id)completion;
- (void)tastesForStoreUploading:(id)uploading;
- (void)tastesUploadedToStore:(id)store;
- (void)tastesUploadedToStore:(id)store completion:(id)completion;
@end

@implementation BSUIContentTasteController

+ (BSUIContentTasteController)sharedController
{
  if (qword_3CA700 != -1)
  {
    sub_2BCEC8();
  }

  v3 = qword_3CA6F8;

  return v3;
}

- (BSUIContentTasteController)init
{
  v6.receiver = self;
  v6.super_class = BSUIContentTasteController;
  v2 = [(BSUIContentTasteController *)&v6 init];
  if (v2)
  {
    v3 = [[BUCoalescingCallBlock alloc] initWithNotifyBlock:&stru_387148 blockDescription:@"BSUIContentTasteController"];
    syncTastesCallBlock = v2->_syncTastesCallBlock;
    v2->_syncTastesCallBlock = v3;

    [(BUCoalescingCallBlock *)v2->_syncTastesCallBlock setCoalescingDelay:0.5];
  }

  return v2;
}

- (void)tastesForStoreUploading:(id)uploading
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_E2C4;
  v5[3] = &unk_387170;
  uploadingCopy = uploading;
  v4 = uploadingCopy;
  [(BSUIContentTasteController *)self fetchTastesForStoreUploading:v5];
}

- (void)tastesUploadedToStore:(id)store
{
  storeCopy = store;
  if ([storeCopy isObject])
  {
    toDictionary = [storeCopy toDictionary];
  }

  else
  {
    toDictionary = 0;
  }

  [(BSUIContentTasteController *)self tastesUploadedToStore:toDictionary completion:0];
}

- (void)fetchTasteTypeForStoreID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = +[BCCloudAssetManager sharedManager];
  assetDetailManager = [v8 assetDetailManager];

  if (assetDetailManager)
  {
    objc_initWeak(&location, self);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_E584;
    v12[3] = &unk_387198;
    objc_copyWeak(&v14, &location);
    v13 = completionCopy;
    [assetDetailManager assetDetailForAssetID:dCopy completion:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = objc_retainBlock(completionCopy);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, 0, 0);
    }
  }
}

- (void)setTasteType:(unint64_t)type forStoreID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v10 = +[BCCloudAssetManager sharedManager];
  assetDetailManager = [v10 assetDetailManager];

  if (assetDetailManager)
  {
    objc_initWeak(&location, self);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_E854;
    v14[3] = &unk_387208;
    v15 = dCopy;
    objc_copyWeak(v18, &location);
    v18[1] = type;
    v16 = assetDetailManager;
    v17 = completionCopy;
    [v16 assetDetailForAssetID:v15 completion:v14];

    objc_destroyWeak(v18);
    objc_destroyWeak(&location);
  }

  else
  {
    v12 = objc_retainBlock(completionCopy);
    v13 = v12;
    if (v12)
    {
      (*(v12 + 2))(v12, 0);
    }
  }
}

- (void)setExplicitlyDeclined:(BOOL)declined forStoreID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v10 = +[BCCloudAssetManager sharedManager];
  assetDetailManager = [v10 assetDetailManager];

  if (assetDetailManager)
  {
    objc_initWeak(&location, self);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_ECDC;
    v14[3] = &unk_387250;
    v15 = dCopy;
    objc_copyWeak(&v19, &location);
    selfCopy = self;
    declinedCopy = declined;
    v17 = assetDetailManager;
    v18 = completionCopy;
    [v17 assetDetailForAssetID:v15 completion:v14];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else
  {
    v12 = objc_retainBlock(completionCopy);
    v13 = v12;
    if (v12)
    {
      (*(v12 + 2))(v12, 0);
    }
  }
}

- (void)fetchTastesForStoreUploading:(id)uploading
{
  uploadingCopy = uploading;
  v5 = +[BCCloudAssetManager sharedManager];
  assetDetailManager = [v5 assetDetailManager];

  if (assetDetailManager)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_F0D0;
    v9[3] = &unk_387278;
    v9[4] = self;
    v10 = uploadingCopy;
    [assetDetailManager fetchAssetDetailsForUnsyncedTastes:v9];
  }

  else
  {
    v7 = objc_retainBlock(uploadingCopy);
    v8 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7, 0);
    }
  }
}

- (void)tastesUploadedToStore:(id)store completion:(id)completion
{
  storeCopy = store;
  completionCopy = completion;
  v8 = +[BCCloudAssetManager sharedManager];
  assetDetailManager = [v8 assetDetailManager];

  if (assetDetailManager)
  {
    allKeys = [storeCopy allKeys];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_F41C;
    v13[3] = &unk_3872C8;
    v14 = storeCopy;
    selfCopy = self;
    v16 = assetDetailManager;
    v17 = completionCopy;
    [v16 assetDetailsForAssetIDs:allKeys completion:v13];
  }

  else
  {
    v11 = objc_retainBlock(completionCopy);
    v12 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11, 0);
    }
  }
}

- (signed)_tasteIntegerFromTasteType:(unint64_t)type explicitlyDeclined:(BOOL)declined
{
  if (declined)
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4 | type;
}

@end