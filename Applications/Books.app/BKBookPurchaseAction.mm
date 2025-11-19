@interface BKBookPurchaseAction
+ (void)_executePurchaseOfBookWithParameters:(id)a3 storeID:(id)a4 isAudiobook:(BOOL)a5 suppressNetworkEvaluatorDialogs:(BOOL)a6 shouldSuppressError:(BOOL)a7 analyticsInfo:(id)a8 completion:(id)a9;
+ (void)tryToPurchaseBook:(id)a3 libraryAssetProvider:(id)a4 buyParameters:(id)a5 allowPurchaseFromNonSampleBuyButton:(BOOL)a6 suppressNetworkEvaluatorDialogs:(BOOL)a7 analyticsInfo:(id)a8 completion:(id)a9;
+ (void)tryToUpdateBook:(id)a3 libraryAssetProvider:(id)a4 analyticsInfo:(id)a5;
@end

@implementation BKBookPurchaseAction

+ (void)tryToPurchaseBook:(id)a3 libraryAssetProvider:(id)a4 buyParameters:(id)a5 allowPurchaseFromNonSampleBuyButton:(BOOL)a6 suppressNetworkEvaluatorDialogs:(BOOL)a7 analyticsInfo:(id)a8 completion:(id)a9
{
  v10 = a7;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a8;
  v19 = a9;
  v20 = [v15 storeID];
  if ([v15 isCloud])
  {
    objc_initWeak(location, a1);
    v21 = +[BLJaliscoDAAPClient sharedClient];
    v22 = [NSSet setWithObject:v20];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10016E1AC;
    v37[3] = &unk_100A09240;
    objc_copyWeak(&v42, location);
    v38 = v20;
    v39 = v15;
    v43 = v10;
    v40 = v18;
    v41 = v19;
    [v21 fetchItemsForStoreIDs:v22 completion:v37];

    objc_destroyWeak(&v42);
    objc_destroyWeak(location);
  }

  else if ([v15 isSeriesItem])
  {
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10016E32C;
    v30[3] = &unk_100A09268;
    v35 = a1;
    v23 = v20;
    v31 = v23;
    v24 = v15;
    v32 = v24;
    v36 = v10;
    v33 = v18;
    v34 = v19;
    v25 = objc_retainBlock(v30);
    v26 = +[BKSeriesManager sharedManager];
    [v26 fetchBuyParametersForSeriesWithAdamID:v23 isAudiobook:objc_msgSend(v24 completionHandler:{"isAudiobook"), v25}];
  }

  else if ([v17 length] && objc_msgSend(v20, "length") && (a6 || objc_msgSend(v15, "isSample")))
  {
    [a1 _executePurchaseOfBookWithParameters:v17 storeID:v20 isAudiobook:objc_msgSend(v15 suppressNetworkEvaluatorDialogs:"isAudiobook") shouldSuppressError:v10 analyticsInfo:1 completion:{v18, v19}];
  }

  else
  {
    v27 = BKLibraryLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_100791B44(v20, v27);
    }

    v28 = objc_retainBlock(v19);
    v29 = v28;
    if (v28)
    {
      (*(v28 + 2))(v28, 0, 0);
    }
  }
}

+ (void)tryToUpdateBook:(id)a3 libraryAssetProvider:(id)a4 analyticsInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, a1);
  v11 = [v8 storeID];
  v12 = [v8 isAudiobook];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10016E554;
  v15[3] = &unk_100A09290;
  objc_copyWeak(&v18, &location);
  v13 = v11;
  v16 = v13;
  v19 = v12;
  v14 = v10;
  v17 = v14;
  [BKUpdatesParameterProvider fetchUpdateParametersForLibraryAsset:v8 completion:v15];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

+ (void)_executePurchaseOfBookWithParameters:(id)a3 storeID:(id)a4 isAudiobook:(BOOL)a5 suppressNetworkEvaluatorDialogs:(BOOL)a6 shouldSuppressError:(BOOL)a7 analyticsInfo:(id)a8 completion:(id)a9
{
  v11 = a6;
  v12 = a5;
  v15 = a9;
  v16 = a8;
  v17 = a3;
  v18 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [a4 longLongValue]);
  v19 = [BLPurchaseRequest requestWithBuyParameters:v17 storeIdentifier:v18];

  [v19 setAudiobook:v12];
  [v19 setSuppressNetworkEvaluatorDialogs:v11];
  [v19 setAnalyticsInfo:v16];

  v20 = +[JSABridge sharedInstance];
  v21 = [v20 windowManager];

  v22 = +[BLDownloadQueue sharedInstance];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10016E884;
  v24[3] = &unk_100A092B8;
  v26 = a7;
  v25 = v15;
  v23 = v15;
  [v22 purchaseWithRequest:v19 uiManager:v21 completion:v24];
}

@end