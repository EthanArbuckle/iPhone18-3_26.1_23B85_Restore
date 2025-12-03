@interface BKAudiobookPersistenceCloudKit
- (BKAudiobookPersistenceCloudKit)initWithAssetDetailManager:(id)manager;
- (void)bookmarkTimeForAudiobook:(id)audiobook completion:(id)completion;
- (void)saveBookmarkTime:(double)time audiobook:(id)audiobook completion:(id)completion;
@end

@implementation BKAudiobookPersistenceCloudKit

- (BKAudiobookPersistenceCloudKit)initWithAssetDetailManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = BKAudiobookPersistenceCloudKit;
  v6 = [(BKAudiobookPersistenceCloudKit *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetDetailManager, manager);
  }

  return v7;
}

- (void)bookmarkTimeForAudiobook:(id)audiobook completion:(id)completion
{
  audiobookCopy = audiobook;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_0, "Books/audiobook-query-cloud-bookmark", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1F000;
  block[3] = &unk_3D210;
  v12 = audiobookCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = audiobookCopy;
  os_activity_apply(v8, block);
}

- (void)saveBookmarkTime:(double)time audiobook:(id)audiobook completion:(id)completion
{
  audiobookCopy = audiobook;
  completionCopy = completion;
  assetDetailManager = [(BKAudiobookPersistenceCloudKit *)self assetDetailManager];
  assetID = [audiobookCopy assetID];
  if ([assetID length])
  {
    if (assetDetailManager)
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1F4B0;
      v17[3] = &unk_3D260;
      v18 = assetID;
      timeCopy = time;
      v19 = audiobookCopy;
      v20 = assetDetailManager;
      v21 = completionCopy;
      [v20 assetDetailForAssetID:v18 completion:v17];

      v12 = v18;
      goto LABEL_13;
    }

    v15 = BKAudiobooksPersistenceCloudKitLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_226E0();
    }

    v12 = objc_retainBlock(completionCopy);
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

    v12 = objc_retainBlock(completionCopy);
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