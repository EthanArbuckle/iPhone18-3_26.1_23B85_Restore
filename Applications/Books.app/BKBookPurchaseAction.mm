@interface BKBookPurchaseAction
+ (void)_executePurchaseOfBookWithParameters:(id)parameters storeID:(id)d isAudiobook:(BOOL)audiobook suppressNetworkEvaluatorDialogs:(BOOL)dialogs shouldSuppressError:(BOOL)error analyticsInfo:(id)info completion:(id)completion;
+ (void)tryToPurchaseBook:(id)book libraryAssetProvider:(id)provider buyParameters:(id)parameters allowPurchaseFromNonSampleBuyButton:(BOOL)button suppressNetworkEvaluatorDialogs:(BOOL)dialogs analyticsInfo:(id)info completion:(id)completion;
+ (void)tryToUpdateBook:(id)book libraryAssetProvider:(id)provider analyticsInfo:(id)info;
@end

@implementation BKBookPurchaseAction

+ (void)tryToPurchaseBook:(id)book libraryAssetProvider:(id)provider buyParameters:(id)parameters allowPurchaseFromNonSampleBuyButton:(BOOL)button suppressNetworkEvaluatorDialogs:(BOOL)dialogs analyticsInfo:(id)info completion:(id)completion
{
  dialogsCopy = dialogs;
  bookCopy = book;
  providerCopy = provider;
  parametersCopy = parameters;
  infoCopy = info;
  completionCopy = completion;
  storeID = [bookCopy storeID];
  if ([bookCopy isCloud])
  {
    objc_initWeak(location, self);
    v21 = +[BLJaliscoDAAPClient sharedClient];
    v22 = [NSSet setWithObject:storeID];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10016E1AC;
    v37[3] = &unk_100A09240;
    objc_copyWeak(&v42, location);
    v38 = storeID;
    v39 = bookCopy;
    v43 = dialogsCopy;
    v40 = infoCopy;
    v41 = completionCopy;
    [v21 fetchItemsForStoreIDs:v22 completion:v37];

    objc_destroyWeak(&v42);
    objc_destroyWeak(location);
  }

  else if ([bookCopy isSeriesItem])
  {
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10016E32C;
    v30[3] = &unk_100A09268;
    selfCopy = self;
    v23 = storeID;
    v31 = v23;
    v24 = bookCopy;
    v32 = v24;
    v36 = dialogsCopy;
    v33 = infoCopy;
    v34 = completionCopy;
    v25 = objc_retainBlock(v30);
    v26 = +[BKSeriesManager sharedManager];
    [v26 fetchBuyParametersForSeriesWithAdamID:v23 isAudiobook:objc_msgSend(v24 completionHandler:{"isAudiobook"), v25}];
  }

  else if ([parametersCopy length] && objc_msgSend(storeID, "length") && (button || objc_msgSend(bookCopy, "isSample")))
  {
    [self _executePurchaseOfBookWithParameters:parametersCopy storeID:storeID isAudiobook:objc_msgSend(bookCopy suppressNetworkEvaluatorDialogs:"isAudiobook") shouldSuppressError:dialogsCopy analyticsInfo:1 completion:{infoCopy, completionCopy}];
  }

  else
  {
    v27 = BKLibraryLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_100791B44(storeID, v27);
    }

    v28 = objc_retainBlock(completionCopy);
    v29 = v28;
    if (v28)
    {
      (*(v28 + 2))(v28, 0, 0);
    }
  }
}

+ (void)tryToUpdateBook:(id)book libraryAssetProvider:(id)provider analyticsInfo:(id)info
{
  bookCopy = book;
  providerCopy = provider;
  infoCopy = info;
  objc_initWeak(&location, self);
  storeID = [bookCopy storeID];
  isAudiobook = [bookCopy isAudiobook];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10016E554;
  v15[3] = &unk_100A09290;
  objc_copyWeak(&v18, &location);
  v13 = storeID;
  v16 = v13;
  v19 = isAudiobook;
  v14 = infoCopy;
  v17 = v14;
  [BKUpdatesParameterProvider fetchUpdateParametersForLibraryAsset:bookCopy completion:v15];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

+ (void)_executePurchaseOfBookWithParameters:(id)parameters storeID:(id)d isAudiobook:(BOOL)audiobook suppressNetworkEvaluatorDialogs:(BOOL)dialogs shouldSuppressError:(BOOL)error analyticsInfo:(id)info completion:(id)completion
{
  dialogsCopy = dialogs;
  audiobookCopy = audiobook;
  completionCopy = completion;
  infoCopy = info;
  parametersCopy = parameters;
  v18 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [d longLongValue]);
  v19 = [BLPurchaseRequest requestWithBuyParameters:parametersCopy storeIdentifier:v18];

  [v19 setAudiobook:audiobookCopy];
  [v19 setSuppressNetworkEvaluatorDialogs:dialogsCopy];
  [v19 setAnalyticsInfo:infoCopy];

  v20 = +[JSABridge sharedInstance];
  windowManager = [v20 windowManager];

  v22 = +[BLDownloadQueue sharedInstance];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10016E884;
  v24[3] = &unk_100A092B8;
  errorCopy = error;
  v25 = completionCopy;
  v23 = completionCopy;
  [v22 purchaseWithRequest:v19 uiManager:windowManager completion:v24];
}

@end