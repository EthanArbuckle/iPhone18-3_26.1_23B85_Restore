@interface BKUpdatesParameterProvider
+ (id)_fetchQueue;
+ (void)_fetchUpdateParametersForAdamID:(id)a3 version:(id)a4 completion:(id)a5;
+ (void)fetchUpdateParametersForLibraryAsset:(id)a3 completion:(id)a4;
@end

@implementation BKUpdatesParameterProvider

+ (void)fetchUpdateParametersForLibraryAsset:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 storeID];
  if ([v8 length])
  {
    if (([v6 isAudiobook] & 1) == 0)
    {
      v16 = [v6 versionNumber];
      v17 = [v16 stringValue];
      [a1 _fetchUpdateParametersForAdamID:v8 version:v17 completion:v7];

      goto LABEL_11;
    }

    v20 = NSLocalizedDescriptionKey;
    v21 = @"Audiobook not supported for fetchUpdateParameters";
    v9 = &v21;
    v10 = &v20;
  }

  else
  {
    v11 = BKStoreBookUpdateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10078FE28(v11);
    }

    v18 = NSLocalizedDescriptionKey;
    v19 = @"book unexpectedly has nil/empty storeID.";
    v9 = &v19;
    v10 = &v18;
  }

  v12 = [NSDictionary dictionaryWithObjects:v9 forKeys:v10 count:1];
  v13 = [NSError errorWithDomain:@"BKUpdatesParameterProviderDomain" code:-1 userInfo:v12];

  v14 = objc_retainBlock(v7);
  v15 = v14;
  if (v14)
  {
    (*(v14 + 2))(v14, 0, v13);
  }

LABEL_11:
}

+ (void)_fetchUpdateParametersForAdamID:(id)a3 version:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[BKViewBookUpdatesOperation alloc] initWithAdamID:v8 version:v9];
  objc_initWeak(&location, v11);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100114378;
  v14[3] = &unk_100A04058;
  objc_copyWeak(&v16, &location);
  v12 = v10;
  v15 = v12;
  [(BKViewBookUpdatesOperation *)v11 setCompletionBlock:v14];
  v13 = [a1 _fetchQueue];
  [v13 addOperation:v11];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

+ (id)_fetchQueue
{
  if (qword_100AF7668 != -1)
  {
    sub_10078FE6C();
  }

  v3 = qword_100AF7660;

  return v3;
}

@end