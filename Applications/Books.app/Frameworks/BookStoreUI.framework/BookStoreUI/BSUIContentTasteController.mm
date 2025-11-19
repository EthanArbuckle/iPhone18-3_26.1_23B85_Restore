@interface BSUIContentTasteController
+ (BSUIContentTasteController)sharedController;
- (BSUIContentTasteController)init;
- (signed)_tasteIntegerFromTasteType:(unint64_t)a3 explicitlyDeclined:(BOOL)a4;
- (void)fetchTasteTypeForStoreID:(id)a3 completion:(id)a4;
- (void)fetchTastesForStoreUploading:(id)a3;
- (void)setExplicitlyDeclined:(BOOL)a3 forStoreID:(id)a4 completion:(id)a5;
- (void)setTasteType:(unint64_t)a3 forStoreID:(id)a4 completion:(id)a5;
- (void)tastesForStoreUploading:(id)a3;
- (void)tastesUploadedToStore:(id)a3;
- (void)tastesUploadedToStore:(id)a3 completion:(id)a4;
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

- (void)tastesForStoreUploading:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_E2C4;
  v5[3] = &unk_387170;
  v6 = a3;
  v4 = v6;
  [(BSUIContentTasteController *)self fetchTastesForStoreUploading:v5];
}

- (void)tastesUploadedToStore:(id)a3
{
  v5 = a3;
  if ([v5 isObject])
  {
    v4 = [v5 toDictionary];
  }

  else
  {
    v4 = 0;
  }

  [(BSUIContentTasteController *)self tastesUploadedToStore:v4 completion:0];
}

- (void)fetchTasteTypeForStoreID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[BCCloudAssetManager sharedManager];
  v9 = [v8 assetDetailManager];

  if (v9)
  {
    objc_initWeak(&location, self);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_E584;
    v12[3] = &unk_387198;
    objc_copyWeak(&v14, &location);
    v13 = v7;
    [v9 assetDetailForAssetID:v6 completion:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = objc_retainBlock(v7);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, 0, 0);
    }
  }
}

- (void)setTasteType:(unint64_t)a3 forStoreID:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = +[BCCloudAssetManager sharedManager];
  v11 = [v10 assetDetailManager];

  if (v11)
  {
    objc_initWeak(&location, self);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_E854;
    v14[3] = &unk_387208;
    v15 = v8;
    objc_copyWeak(v18, &location);
    v18[1] = a3;
    v16 = v11;
    v17 = v9;
    [v16 assetDetailForAssetID:v15 completion:v14];

    objc_destroyWeak(v18);
    objc_destroyWeak(&location);
  }

  else
  {
    v12 = objc_retainBlock(v9);
    v13 = v12;
    if (v12)
    {
      (*(v12 + 2))(v12, 0);
    }
  }
}

- (void)setExplicitlyDeclined:(BOOL)a3 forStoreID:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = +[BCCloudAssetManager sharedManager];
  v11 = [v10 assetDetailManager];

  if (v11)
  {
    objc_initWeak(&location, self);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_ECDC;
    v14[3] = &unk_387250;
    v15 = v8;
    objc_copyWeak(&v19, &location);
    v16 = self;
    v20 = a3;
    v17 = v11;
    v18 = v9;
    [v17 assetDetailForAssetID:v15 completion:v14];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else
  {
    v12 = objc_retainBlock(v9);
    v13 = v12;
    if (v12)
    {
      (*(v12 + 2))(v12, 0);
    }
  }
}

- (void)fetchTastesForStoreUploading:(id)a3
{
  v4 = a3;
  v5 = +[BCCloudAssetManager sharedManager];
  v6 = [v5 assetDetailManager];

  if (v6)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_F0D0;
    v9[3] = &unk_387278;
    v9[4] = self;
    v10 = v4;
    [v6 fetchAssetDetailsForUnsyncedTastes:v9];
  }

  else
  {
    v7 = objc_retainBlock(v4);
    v8 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7, 0);
    }
  }
}

- (void)tastesUploadedToStore:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[BCCloudAssetManager sharedManager];
  v9 = [v8 assetDetailManager];

  if (v9)
  {
    v10 = [v6 allKeys];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_F41C;
    v13[3] = &unk_3872C8;
    v14 = v6;
    v15 = self;
    v16 = v9;
    v17 = v7;
    [v16 assetDetailsForAssetIDs:v10 completion:v13];
  }

  else
  {
    v11 = objc_retainBlock(v7);
    v12 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11, 0);
    }
  }
}

- (signed)_tasteIntegerFromTasteType:(unint64_t)a3 explicitlyDeclined:(BOOL)a4
{
  if (a4)
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4 | a3;
}

@end