@interface BKAudiobookPersistenceCloudKit
- (BKAudiobookPersistenceCloudKit)initWithAssetDetailManager:(id)a3;
- (void)bookmarkTimeForAudiobook:(id)a3 completion:(id)a4;
- (void)saveBookmarkTime:(double)a3 audiobook:(id)a4 completion:(id)a5;
@end

@implementation BKAudiobookPersistenceCloudKit

- (BKAudiobookPersistenceCloudKit)initWithAssetDetailManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BKAudiobookPersistenceCloudKit;
  v6 = [(BKAudiobookPersistenceCloudKit *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetDetailManager, a3);
  }

  return v7;
}

- (void)bookmarkTimeForAudiobook:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_0, "Books/audiobook-query-cloud-bookmark", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1F000;
  block[3] = &unk_3D210;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  os_activity_apply(v8, block);
}

- (void)saveBookmarkTime:(double)a3 audiobook:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(BKAudiobookPersistenceCloudKit *)self assetDetailManager];
  v11 = [v8 assetID];
  if ([v11 length])
  {
    if (v10)
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1F4B0;
      v17[3] = &unk_3D260;
      v18 = v11;
      v22 = a3;
      v19 = v8;
      v20 = v10;
      v21 = v9;
      [v20 assetDetailForAssetID:v18 completion:v17];

      v12 = v18;
      goto LABEL_13;
    }

    v15 = BKAudiobooksPersistenceCloudKitLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_226E0();
    }

    v12 = objc_retainBlock(v9);
    if (v12)
    {
      v14 = 2;
      goto LABEL_12;
    }
  }

  else
  {
    v13 = BKAudiobooksPersistenceCloudKitLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_22720();
    }

    v12 = objc_retainBlock(v9);
    if (v12)
    {
      v14 = 1;
LABEL_12:
      v16 = [NSError errorWithDomain:@"BKAudiobooksError" code:v14 userInfo:0];
      v12[2](v12, v16);
    }
  }

LABEL_13:
}

@end