@interface BKAssetPresentingViewController
- (void)_trackProgressForLibraryAsset:(id)a3;
- (void)assetViewControllerRequestToBuy:(id)a3 completion:(id)a4;
@end

@implementation BKAssetPresentingViewController

- (void)assetViewControllerRequestToBuy:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BKBasePresentingViewController *)self storeID];
  if (v8)
  {
    v9 = v8;
LABEL_4:
    v11 = [(BKAssetPresentingViewController *)self ba_effectiveAnalyticsTracker];
    objc_initWeak(&location, self);
    v12 = [(BKBasePresentingViewController *)self sampleProfileFuture];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10006C32C;
    v16[3] = &unk_100A04278;
    objc_copyWeak(&v21, &location);
    v13 = v11;
    v17 = v13;
    v14 = v9;
    v18 = v14;
    v19 = v6;
    v20 = v7;
    [v12 get:v16];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);

    goto LABEL_5;
  }

  v10 = [(BKBasePresentingViewController *)self assetIdentifier];
  v9 = [v10 permanentAssetID];

  if (v9)
  {
    goto LABEL_4;
  }

  v15 = objc_retainBlock(v7);
  v14 = v15;
  if (v15)
  {
    (*(v15 + 2))(v15, 0, 0);
  }

LABEL_5:
}

- (void)_trackProgressForLibraryAsset:(id)a3
{
  v4 = a3;
  if (([v4 isSample] & 1) == 0 && (objc_msgSend(v4, "isAudiobook") & 1) == 0)
  {
    v5 = [(BKBasePresentingViewController *)self assetViewController];
    if (objc_opt_respondsToSelector())
    {
      v6 = [(BKBasePresentingViewController *)self assetViewController];
      v7 = [v6 pageCountIncludingUpsell];
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v8 = [(BKBasePresentingViewController *)self assetViewController];
    v9 = BUProtocolCast();

    v10 = BCProgressKitLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_100789C28(v4, v10);
    }

    v11 = [v4 title];
    if ([v11 length])
    {
      [v4 title];
    }

    else
    {
      [v4 sortTitle];
    }
    v12 = ;

    if (![v12 length])
    {
      v13 = +[NSBundle mainBundle];
      v14 = [v13 localizedStringForKey:@"Untitled" value:&stru_100A30A68 table:0];

      v15 = BCProgressKitLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_100789CE8();
      }

      v12 = v14;
    }

    v16 = [(BKBasePresentingViewController *)self assetIdentifier];
    v17 = [v16 permanentAssetID];

    objc_initWeak(&location, self);
    v18 = ([v4 isSample] & 1) == 0 && (objc_msgSend(v4, "isAudiobook") & 1) == 0 && objc_msgSend(v4, "contentType") != 3;
    v19 = [v4 versionNumberHumanReadable];
    v20 = [v4 storeID];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10006CE68;
    v26[3] = &unk_100A04318;
    v21 = v17;
    v27 = v21;
    v22 = v19;
    v28 = v22;
    v23 = v12;
    v29 = v23;
    v32[1] = v7;
    v24 = v20;
    v30 = v24;
    objc_copyWeak(v32, &location);
    v33 = v18;
    v25 = v9;
    v31 = v25;
    [BKLibraryManager fetchImageForAsset:v4 size:0 includeSpine:0 includeShadow:0 coverEffectsEnvironment:v26 completion:240.0, 240.0];

    objc_destroyWeak(v32);
    objc_destroyWeak(&location);
  }
}

@end