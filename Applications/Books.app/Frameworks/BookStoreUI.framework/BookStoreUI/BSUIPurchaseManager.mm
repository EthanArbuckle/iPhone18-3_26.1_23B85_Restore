@interface BSUIPurchaseManager
+ (void)purchaseAsset:(id)a3 parameters:(id)a4 completion:(id)a5;
+ (void)purchaseBook:(id)a3 :(id)a4 :(BOOL)a5 :(id)a6 :(id)a7 :(BOOL)a8 :(id)a9 :(id)a10;
@end

@implementation BSUIPurchaseManager

+ (void)purchaseBook:(id)a3 :(id)a4 :(BOOL)a5 :(id)a6 :(id)a7 :(BOOL)a8 :(id)a9 :(id)a10
{
  v10 = a8;
  v13 = a5;
  v15 = a3;
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
    v33 = v15;
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
    v22 = [v18 toNumber];
  }

  else
  {
    v22 = 0;
  }

  if ([v19 isString])
  {
    v23 = [v19 toString];
  }

  else
  {
    v23 = 0;
  }

  v24 = [[BSUIPurchaseParameters alloc] initWithBuyParams:v16 isAudiobook:v13 hasRacSupport:v10 supportsUnifiedProductPage:v22 editionKind:v23 tracker:v20];

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_105EC;
  v28[3] = &unk_387308;
  v29 = v17;
  v25 = v17;
  [v27 purchaseAsset:v15 parameters:v24 completion:v28];
}

+ (void)purchaseAsset:(id)a3 parameters:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 buyParams];
  v11 = [NSMutableString stringWithString:v10];

  v12 = [v8 pageId];
  v13 = [v8 pageType];
  v14 = [v8 pageContext];
  v15 = [JSAApplication purchaseEventFieldsWithPageId:v12 pageType:v13 pageContext:v14 topic:0];

  if ([v11 length] && objc_msgSend(v15, "length"))
  {
    if (([v11 hasSuffix:@"&"] & 1) == 0)
    {
      [v11 appendString:@"&"];
    }

    [v11 appendString:v15];
  }

  v16 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v7 longLongValue]);
  v17 = [BLPurchaseRequest requestWithBuyParameters:v11 storeIdentifier:v16];

  [v17 setAudiobook:{objc_msgSend(v8, "isAudiobook")}];
  [v17 setSuppressNetworkEvaluatorDialogs:{objc_msgSend(v8, "isAudiobook")}];
  v18 = [v8 tracker];

  if (v18)
  {
    v19 = objc_opt_new();
    v20 = [v8 tracker];
    [v19 setObject:v20 forKeyedSubscript:@"BATracker"];

    v21 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 hasRacSupport]);
    [v19 setObject:v21 forKeyedSubscript:@"hasRacSupport"];

    if (_os_feature_enabled_impl())
    {
      v22 = objc_opt_new();
      v23 = [v8 supportsUnifiedProductPage];

      if (v23)
      {
        v24 = [v8 supportsUnifiedProductPage];
        v25 = +[BAAppAnalyticsAdditionalData supportsUnifiedProductPageKey];
        [v22 setObject:v24 forKeyedSubscript:v25];
      }

      v26 = [v8 editionKind];

      if (v26)
      {
        v27 = [v8 editionKind];
        v28 = +[BAAppAnalyticsAdditionalData editionKindKey];
        [v22 setObject:v27 forKeyedSubscript:v28];
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
    v19 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 hasRacSupport]);
    v47 = v19;
    v31 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    [v17 setAnalyticsInfo:v31];
  }

  v32 = +[JSABridge sharedInstance];
  v33 = [v32 windowManager];

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
    v43 = v7;
    v44 = 2112;
    v45 = v11;
    _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "%{public}s Purchasing: request=%@, assetID=%{mask.hash}@, buyParams=%@", &v36, 0x34u);
  }

  v35 = +[BLDownloadQueue sharedInstance];
  [v35 purchaseWithRequest:v17 uiManager:v33 completion:v9];
}

@end