@interface BKAssetPresentingViewController
- (void)_trackProgressForLibraryAsset:(id)asset;
- (void)assetViewControllerRequestToBuy:(id)buy completion:(id)completion;
@end

@implementation BKAssetPresentingViewController

- (void)assetViewControllerRequestToBuy:(id)buy completion:(id)completion
{
  buyCopy = buy;
  completionCopy = completion;
  storeID = [(BKBasePresentingViewController *)self storeID];
  if (storeID)
  {
    permanentAssetID = storeID;
LABEL_4:
    ba_effectiveAnalyticsTracker = [(BKAssetPresentingViewController *)self ba_effectiveAnalyticsTracker];
    objc_initWeak(&location, self);
    sampleProfileFuture = [(BKBasePresentingViewController *)self sampleProfileFuture];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10006C32C;
    v16[3] = &unk_100A04278;
    objc_copyWeak(&v21, &location);
    v13 = ba_effectiveAnalyticsTracker;
    v17 = v13;
    v14 = permanentAssetID;
    v18 = v14;
    v19 = buyCopy;
    v20 = completionCopy;
    [sampleProfileFuture get:v16];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);

    goto LABEL_5;
  }

  assetIdentifier = [(BKBasePresentingViewController *)self assetIdentifier];
  permanentAssetID = [assetIdentifier permanentAssetID];

  if (permanentAssetID)
  {
    goto LABEL_4;
  }

  v15 = objc_retainBlock(completionCopy);
  v14 = v15;
  if (v15)
  {
    (*(v15 + 2))(v15, 0, 0);
  }

LABEL_5:
}

- (void)_trackProgressForLibraryAsset:(id)asset
{
  assetCopy = asset;
  if (([assetCopy isSample] & 1) == 0 && (objc_msgSend(assetCopy, "isAudiobook") & 1) == 0)
  {
    assetViewController = [(BKBasePresentingViewController *)self assetViewController];
    if (objc_opt_respondsToSelector())
    {
      assetViewController2 = [(BKBasePresentingViewController *)self assetViewController];
      pageCountIncludingUpsell = [assetViewController2 pageCountIncludingUpsell];
    }

    else
    {
      pageCountIncludingUpsell = 0x7FFFFFFFFFFFFFFFLL;
    }

    assetViewController3 = [(BKBasePresentingViewController *)self assetViewController];
    v9 = BUProtocolCast();

    v10 = BCProgressKitLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_100789C28(assetCopy, v10);
    }

    title = [assetCopy title];
    if ([title length])
    {
      [assetCopy title];
    }

    else
    {
      [assetCopy sortTitle];
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

    assetIdentifier = [(BKBasePresentingViewController *)self assetIdentifier];
    permanentAssetID = [assetIdentifier permanentAssetID];

    objc_initWeak(&location, self);
    v18 = ([assetCopy isSample] & 1) == 0 && (objc_msgSend(assetCopy, "isAudiobook") & 1) == 0 && objc_msgSend(assetCopy, "contentType") != 3;
    versionNumberHumanReadable = [assetCopy versionNumberHumanReadable];
    storeID = [assetCopy storeID];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10006CE68;
    v26[3] = &unk_100A04318;
    v21 = permanentAssetID;
    v27 = v21;
    v22 = versionNumberHumanReadable;
    v28 = v22;
    v23 = v12;
    v29 = v23;
    v32[1] = pageCountIncludingUpsell;
    v24 = storeID;
    v30 = v24;
    objc_copyWeak(v32, &location);
    v33 = v18;
    v25 = v9;
    v31 = v25;
    [BKLibraryManager fetchImageForAsset:assetCopy size:0 includeSpine:0 includeShadow:0 coverEffectsEnvironment:v26 completion:240.0, 240.0];

    objc_destroyWeak(v32);
    objc_destroyWeak(&location);
  }
}

@end