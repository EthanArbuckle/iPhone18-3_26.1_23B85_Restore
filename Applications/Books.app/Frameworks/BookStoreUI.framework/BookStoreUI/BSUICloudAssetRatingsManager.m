@interface BSUICloudAssetRatingsManager
+ (void)_callOnJSBridge:(id)a3 options:(id)a4 completionHandler:(id)a5;
+ (void)_deleteRatingsDataForItem:(id)a3 shouldSuppressMetrics:(BOOL)a4 shouldSuppressResponseDialogs:(BOOL)a5 completionHandler:(id)a6;
+ (void)_fetchRatingsDataForItem:(id)a3 shouldSuppressMetrics:(BOOL)a4 shouldSuppressResponseDialogs:(BOOL)a5 completionHandler:(id)a6;
+ (void)_updateRatingsDataForItem:(id)a3 shouldSuppressMetrics:(BOOL)a4 shouldSuppressResponseDialogs:(BOOL)a5 updatingData:(id)a6 completionHandler:(id)a7;
+ (void)deleteRatingForItem:(id)a3 :(id)a4;
+ (void)deleteRatingForItem:(id)a3 shouldSuppressMetrics:(BOOL)a4 completion:(id)a5;
+ (void)getRatingForItem:(id)a3 :(id)a4 :(id)a5;
+ (void)getRatingForItem:(id)a3 forceFetch:(BOOL)a4 shouldSuppressMetrics:(BOOL)a5 completion:(id)a6;
+ (void)updateRating:(id)a3 :(id)a4 :(id)a5 :(id)a6 :(id)a7;
+ (void)updateRating:(id)a3 title:(id)a4 body:(id)a5 itemId:(id)a6 shouldSuppressMetrics:(BOOL)a7 completion:(id)a8;
+ (void)updateRatingValue:(double)a3 title:(id)a4 body:(id)a5 itemId:(id)a6 shouldSuppressMetrics:(BOOL)a7 completion:(id)a8;
@end

@implementation BSUICloudAssetRatingsManager

+ (void)getRatingForItem:(id)a3 forceFetch:(BOOL)a4 shouldSuppressMetrics:(BOOL)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = +[BUAccountsProvider sharedProvider];
  v12 = [v11 activeStoreAccount];

  if (v12)
  {
    v13 = +[BCCloudAssetManager sharedManager];
    v14 = [v13 assetReviewManager];

    v15 = [v12 ams_DSID];
    v16 = [v15 stringValue];
    v17 = [BCAssetReview assetReviewIDWithUserID:v16 assetID:v9];

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_2AE04;
    v22[3] = &unk_387CC0;
    v27 = a4;
    v26 = v10;
    v28 = a5;
    v23 = v9;
    v24 = v17;
    v25 = v14;
    v18 = v14;
    v19 = v17;
    [v18 assetReviewForAssetReviewID:v19 completion:v22];
  }

  else
  {
    v20 = objc_retainBlock(v10);
    if (v20)
    {
      v21 = [NSError errorWithDomain:@"BSUICloudAssetRatingsManager" code:403 userInfo:0];
      (*(v20 + 2))(v20, 0, v21, 0, 0, 0);
    }
  }
}

+ (void)getRatingForItem:(id)a3 :(id)a4 :(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (([v7 isString] & 1) == 0)
  {
    v10 = BSUICloudAssetRatingsManagerLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_2BD878();
    }
  }

  if (([v8 isBoolean] & 1) == 0)
  {
    v11 = BSUICloudAssetRatingsManagerLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_2BD8AC();
    }
  }

  v12 = [v7 toString];
  v13 = [v8 toBool];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_2B3A4;
  v15[3] = &unk_387CE8;
  v16 = v9;
  v14 = v9;
  [BSUICloudAssetRatingsManager getRatingForItem:v12 forceFetch:v13 shouldSuppressMetrics:0 completion:v15];
}

+ (void)updateRatingValue:(double)a3 title:(id)a4 body:(id)a5 itemId:(id)a6 shouldSuppressMetrics:(BOOL)a7 completion:(id)a8
{
  v8 = a7;
  v13 = a8;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = [NSNumber numberWithDouble:a3];
  [BSUICloudAssetRatingsManager updateRating:v17 title:v16 body:v15 itemId:v14 shouldSuppressMetrics:v8 completion:v13];
}

+ (void)updateRating:(id)a3 title:(id)a4 body:(id)a5 itemId:(id)a6 shouldSuppressMetrics:(BOOL)a7 completion:(id)a8
{
  v9 = a7;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v19 = +[BUAccountsProvider sharedProvider];
  v20 = [v19 activeStoreAccount];

  if (v20)
  {
    v21 = objc_alloc_init(NSMutableDictionary);
    [v21 setObject:v14 forKeyedSubscript:@"rating"];
    if (v15)
    {
      [v21 setObject:v15 forKeyedSubscript:@"title"];
      if (v16)
      {
        [v21 setObject:v16 forKeyedSubscript:@"body"];
      }
    }

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_2B844;
    v24[3] = &unk_387D38;
    v25 = v17;
    v26 = v14;
    v31 = a1;
    v27 = v20;
    v28 = v15;
    v29 = v16;
    v30 = v18;
    [BSUICloudAssetRatingsManager _updateRatingsDataForItem:v25 shouldSuppressMetrics:v9 shouldSuppressResponseDialogs:0 updatingData:v21 completionHandler:v24];
  }

  else
  {
    v22 = objc_retainBlock(v18);
    if (v22)
    {
      v23 = [NSError errorWithDomain:@"BSUICloudAssetRatingsManager" code:403 userInfo:0];
      v22[2](v22, 0, v23);
    }
  }
}

+ (void)updateRating:(id)a3 :(id)a4 :(id)a5 :(id)a6 :(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (([v11 isNumber] & 1) == 0)
  {
    v16 = BSUICloudAssetRatingsManagerLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_2BD8E0();
    }
  }

  if (([v12 isString] & 1) == 0)
  {
    v17 = BSUICloudAssetRatingsManagerLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_2BD914();
    }
  }

  if (([v13 isString] & 1) == 0)
  {
    v18 = BSUICloudAssetRatingsManagerLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_2BD948();
    }
  }

  if (([v14 isString] & 1) == 0)
  {
    v19 = BSUICloudAssetRatingsManagerLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_2BD878();
    }
  }

  v29 = v11;
  v20 = [v11 toNumber];
  v21 = [v12 isUndefined];
  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = [v12 toString];
  }

  v23 = [v13 isUndefined];
  v28 = v12;
  if (v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = [v13 toString];
  }

  v25 = v14;
  v26 = [v14 toString];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_2C038;
  v30[3] = &unk_387D60;
  v31 = v15;
  v27 = v15;
  [BSUICloudAssetRatingsManager updateRating:v20 title:v22 body:v24 itemId:v26 shouldSuppressMetrics:0 completion:v30];

  if ((v23 & 1) == 0)
  {
  }

  if ((v21 & 1) == 0)
  {
  }
}

+ (void)deleteRatingForItem:(id)a3 shouldSuppressMetrics:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = +[BUAccountsProvider sharedProvider];
  v11 = [v10 activeStoreAccount];

  if (v11)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_2C2D0;
    v14[3] = &unk_387DB0;
    v15 = v8;
    v18 = a1;
    v16 = v11;
    v17 = v9;
    [BSUICloudAssetRatingsManager _deleteRatingsDataForItem:v15 shouldSuppressMetrics:v6 shouldSuppressResponseDialogs:0 completionHandler:v14];
  }

  else
  {
    v12 = objc_retainBlock(v9);
    if (v12)
    {
      v13 = [NSError errorWithDomain:@"BSUICloudAssetRatingsManager" code:403 userInfo:0];
      v12[2](v12, 0, v13);
    }
  }
}

+ (void)deleteRatingForItem:(id)a3 :(id)a4
{
  v5 = a3;
  v6 = a4;
  if (([v5 isString] & 1) == 0)
  {
    v7 = BSUICloudAssetRatingsManagerLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_2BD878();
    }
  }

  v8 = [v5 toString];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_2C684;
  v10[3] = &unk_387D60;
  v11 = v6;
  v9 = v6;
  [BSUICloudAssetRatingsManager deleteRatingForItem:v8 shouldSuppressMetrics:0 completion:v10];
}

+ (void)_fetchRatingsDataForItem:(id)a3 shouldSuppressMetrics:(BOOL)a4 shouldSuppressResponseDialogs:(BOOL)a5 completionHandler:(id)a6
{
  v6 = a5;
  v7 = a4;
  v15[0] = a3;
  v14[0] = @"itemId";
  v14[1] = @"shouldSuppressMetrics";
  v9 = a6;
  v10 = a3;
  v11 = [NSNumber numberWithBool:v7];
  v15[1] = v11;
  v14[2] = @"shouldSuppressResponseDialogs";
  v12 = [NSNumber numberWithBool:v6];
  v15[2] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];

  [BSUICloudAssetRatingsManager _callOnJSBridge:@"getRatingFromServer" options:v13 completionHandler:v9];
}

+ (void)_updateRatingsDataForItem:(id)a3 shouldSuppressMetrics:(BOOL)a4 shouldSuppressResponseDialogs:(BOOL)a5 updatingData:(id)a6 completionHandler:(id)a7
{
  v8 = a5;
  v9 = a4;
  v18[0] = a3;
  v17[0] = @"itemId";
  v17[1] = @"shouldSuppressMetrics";
  v11 = a7;
  v12 = a6;
  v13 = a3;
  v14 = [NSNumber numberWithBool:v9];
  v18[1] = v14;
  v17[2] = @"shouldSuppressResponseDialogs";
  v15 = [NSNumber numberWithBool:v8];
  v17[3] = @"updatingData";
  v18[2] = v15;
  v18[3] = v12;
  v16 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:4];

  [BSUICloudAssetRatingsManager _callOnJSBridge:@"updateRatingOnServer" options:v16 completionHandler:v11];
}

+ (void)_deleteRatingsDataForItem:(id)a3 shouldSuppressMetrics:(BOOL)a4 shouldSuppressResponseDialogs:(BOOL)a5 completionHandler:(id)a6
{
  v6 = a5;
  v7 = a4;
  v15[0] = a3;
  v14[0] = @"itemId";
  v14[1] = @"shouldSuppressMetrics";
  v9 = a6;
  v10 = a3;
  v11 = [NSNumber numberWithBool:v7];
  v15[1] = v11;
  v14[2] = @"shouldSuppressResponseDialogs";
  v12 = [NSNumber numberWithBool:v6];
  v15[2] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];

  [BSUICloudAssetRatingsManager _callOnJSBridge:@"deleteRatingFromServer" options:v13 completionHandler:v9];
}

+ (void)_callOnJSBridge:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[JSABridge sharedInstance];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_2CC3C;
  v14[3] = &unk_387DD8;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  [v10 enqueueBlock:v14 file:@"BSUICloudAssetRatingsManager.m" line:375];
}

@end