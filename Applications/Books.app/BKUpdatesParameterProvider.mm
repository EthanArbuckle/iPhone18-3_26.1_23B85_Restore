@interface BKUpdatesParameterProvider
+ (id)_fetchQueue;
+ (void)_fetchUpdateParametersForAdamID:(id)d version:(id)version completion:(id)completion;
+ (void)fetchUpdateParametersForLibraryAsset:(id)asset completion:(id)completion;
@end

@implementation BKUpdatesParameterProvider

+ (void)fetchUpdateParametersForLibraryAsset:(id)asset completion:(id)completion
{
  assetCopy = asset;
  completionCopy = completion;
  storeID = [assetCopy storeID];
  if ([storeID length])
  {
    if (([assetCopy isAudiobook] & 1) == 0)
    {
      versionNumber = [assetCopy versionNumber];
      stringValue = [versionNumber stringValue];
      [self _fetchUpdateParametersForAdamID:storeID version:stringValue completion:completionCopy];

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

  v14 = objc_retainBlock(completionCopy);
  v15 = v14;
  if (v14)
  {
    (*(v14 + 2))(v14, 0, v13);
  }

LABEL_11:
}

+ (void)_fetchUpdateParametersForAdamID:(id)d version:(id)version completion:(id)completion
{
  dCopy = d;
  versionCopy = version;
  completionCopy = completion;
  v11 = [[BKViewBookUpdatesOperation alloc] initWithAdamID:dCopy version:versionCopy];
  objc_initWeak(&location, v11);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100114378;
  v14[3] = &unk_100A04058;
  objc_copyWeak(&v16, &location);
  v12 = completionCopy;
  v15 = v12;
  [(BKViewBookUpdatesOperation *)v11 setCompletionBlock:v14];
  _fetchQueue = [self _fetchQueue];
  [_fetchQueue addOperation:v11];

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