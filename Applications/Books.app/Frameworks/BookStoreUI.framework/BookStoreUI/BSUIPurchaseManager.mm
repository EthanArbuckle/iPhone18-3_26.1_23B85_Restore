@interface BSUIPurchaseManager
+ (void)purchaseAsset:(id)asset parameters:(id)parameters completion:(id)completion;
+ (void)purchaseBook:(id)book :(id)a4 :(BOOL)a5 :(id)a6 :(id)a7 :(BOOL)a8 :(id)a9 :(id)self0;
@end

@implementation BSUIPurchaseManager

+ (void)purchaseBook:(id)book :(id)a4 :(BOOL)a5 :(id)a6 :(id)a7 :(BOOL)a8 :(id)a9 :(id)self0
{
  v10 = a8;
  v13 = a5;
  bookCopy = book;
  v16 = a4;
  v17 = a6;
  v18 = a9;
  v19 = a10;
  v20 = a7;
  v21 = JSALog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447234;
    v31 = "+[BSUIPurchaseManager purchaseBook::::::::]";
    v32 = 2112;
    v33 = bookCopy;
    v34 = 2112;
    v35 = v16;
    v36 = 1024;
    v37 = v13;
    v38 = 1024;
    v39 = v10;
    _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%{public}s adamID=%@, buyParams=%@, isAudiobook=%{BOOL}d, hasRacSupport=%{BOOL}d", buf, 0x2Cu);
  }

  if ([v18 isBoolean])
  {
    toNumber = [v18 toNumber];
  }

  else
  {
    toNumber = 0;
  }

  if ([v19 isString])
  {
    toString = [v19 toString];
  }

  else
  {
    toString = 0;
  }

  v24 = [[BSUIPurchaseParameters alloc] initWithBuyParams:v16 isAudiobook:v13 hasRacSupport:v10 supportsUnifiedProductPage:toNumber editionKind:toString tracker:v20];

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_105EC;
  v28[3] = &unk_387308;
  v29 = v17;
  v25 = v17;
  [v27 purchaseAsset:bookCopy parameters:v24 completion:v28];
}

+ (void)purchaseAsset:(id)asset parameters:(id)parameters completion:(id)completion
{
  assetCopy = asset;
  parametersCopy = parameters;
  completionCopy = completion;
  buyParams = [parametersCopy buyParams];
  v11 = [NSMutableString stringWithString:buyParams];

  pageId = [parametersCopy pageId];
  pageType = [parametersCopy pageType];
  pageContext = [parametersCopy pageContext];
  v15 = [JSAApplication purchaseEventFieldsWithPageId:pageId pageType:pageType pageContext:pageContext topic:0];

  if ([v11 length] && objc_msgSend(v15, "length"))
  {
    if (([v11 hasSuffix:@"&"] & 1) == 0)
    {
      [v11 appendString:@"&"];
    }

    [v11 appendString:v15];
  }

  v16 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [assetCopy longLongValue]);
  v17 = [BLPurchaseRequest requestWithBuyParameters:v11 storeIdentifier:v16];

  [v17 setAudiobook:{objc_msgSend(parametersCopy, "isAudiobook")}];
  [v17 setSuppressNetworkEvaluatorDialogs:{objc_msgSend(parametersCopy, "isAudiobook")}];
  tracker = [parametersCopy tracker];

  if (tracker)
  {
    v19 = objc_opt_new();
    tracker2 = [parametersCopy tracker];
    [v19 setObject:tracker2 forKeyedSubscript:@"BATracker"];

    v21 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [parametersCopy hasRacSupport]);
    [v19 setObject:v21 forKeyedSubscript:@"hasRacSupport"];

    if (_os_feature_enabled_impl())
    {
      v22 = objc_opt_new();
      supportsUnifiedProductPage = [parametersCopy supportsUnifiedProductPage];

      if (supportsUnifiedProductPage)
      {
        supportsUnifiedProductPage2 = [parametersCopy supportsUnifiedProductPage];
        v25 = +[BAAppAnalyticsAdditionalData supportsUnifiedProductPageKey];
        [v22 setObject:supportsUnifiedProductPage2 forKeyedSubscript:v25];
      }

      editionKind = [parametersCopy editionKind];

      if (editionKind)
      {
        editionKind2 = [parametersCopy editionKind];
        v28 = +[BAAppAnalyticsAdditionalData editionKindKey];
        [v22 setObject:editionKind2 forKeyedSubscript:v28];
      }

      if ([v22 count])
      {
        v29 = [v22 copy];
        [v19 setObject:v29 forKeyedSubscript:BAAppAnalyticsAdditionalDataKey];
      }
    }

    [v17 setAnalyticsInfo:v19];
  }

  else
  {
    v30 = JSALog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_2BD1C0(v30);
    }

    v46 = @"hasRacSupport";
    v19 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [parametersCopy hasRacSupport]);
    v47 = v19;
    v31 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    [v17 setAnalyticsInfo:v31];
  }

  v32 = +[JSABridge sharedInstance];
  windowManager = [v32 windowManager];

  v34 = JSALog();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v36 = 136447234;
    v37 = "+[BSUIPurchaseManager purchaseAsset:parameters:completion:]";
    v38 = 2112;
    v39 = v17;
    v40 = 2160;
    v41 = 1752392040;
    v42 = 2112;
    v43 = assetCopy;
    v44 = 2112;
    v45 = v11;
    _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "%{public}s Purchasing: request=%@, assetID=%{mask.hash}@, buyParams=%@", &v36, 0x34u);
  }

  v35 = +[BLDownloadQueue sharedInstance];
  [v35 purchaseWithRequest:v17 uiManager:windowManager completion:completionCopy];
}

@end