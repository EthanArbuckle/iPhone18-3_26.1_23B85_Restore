@interface BSUICloudAssetRatingsManager
+ (void)_callOnJSBridge:(id)bridge options:(id)options completionHandler:(id)handler;
+ (void)_deleteRatingsDataForItem:(id)item shouldSuppressMetrics:(BOOL)metrics shouldSuppressResponseDialogs:(BOOL)dialogs completionHandler:(id)handler;
+ (void)_fetchRatingsDataForItem:(id)item shouldSuppressMetrics:(BOOL)metrics shouldSuppressResponseDialogs:(BOOL)dialogs completionHandler:(id)handler;
+ (void)_updateRatingsDataForItem:(id)item shouldSuppressMetrics:(BOOL)metrics shouldSuppressResponseDialogs:(BOOL)dialogs updatingData:(id)data completionHandler:(id)handler;
+ (void)deleteRatingForItem:(id)item :(id)a4;
+ (void)deleteRatingForItem:(id)item shouldSuppressMetrics:(BOOL)metrics completion:(id)completion;
+ (void)getRatingForItem:(id)item :(id)a4 :(id)a5;
+ (void)getRatingForItem:(id)item forceFetch:(BOOL)fetch shouldSuppressMetrics:(BOOL)metrics completion:(id)completion;
+ (void)updateRating:(id)rating :(id)a4 :(id)a5 :(id)a6 :(id)a7;
+ (void)updateRating:(id)rating title:(id)title body:(id)body itemId:(id)id shouldSuppressMetrics:(BOOL)metrics completion:(id)completion;
+ (void)updateRatingValue:(double)value title:(id)title body:(id)body itemId:(id)id shouldSuppressMetrics:(BOOL)metrics completion:(id)completion;
@end

@implementation BSUICloudAssetRatingsManager

+ (void)getRatingForItem:(id)item forceFetch:(BOOL)fetch shouldSuppressMetrics:(BOOL)metrics completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  v11 = +[BUAccountsProvider sharedProvider];
  activeStoreAccount = [v11 activeStoreAccount];

  if (activeStoreAccount)
  {
    v13 = +[BCCloudAssetManager sharedManager];
    assetReviewManager = [v13 assetReviewManager];

    ams_DSID = [activeStoreAccount ams_DSID];
    stringValue = [ams_DSID stringValue];
    v17 = [BCAssetReview assetReviewIDWithUserID:stringValue assetID:itemCopy];

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_2AE04;
    v22[3] = &unk_387CC0;
    fetchCopy = fetch;
    v26 = completionCopy;
    metricsCopy = metrics;
    v23 = itemCopy;
    v24 = v17;
    v25 = assetReviewManager;
    v18 = assetReviewManager;
    v19 = v17;
    [v18 assetReviewForAssetReviewID:v19 completion:v22];
  }

  else
  {
    v20 = objc_retainBlock(completionCopy);
    if (v20)
    {
      v21 = [NSError errorWithDomain:@"BSUICloudAssetRatingsManager" code:403 userInfo:0];
      (*(v20 + 2))(v20, 0, v21, 0, 0, 0);
    }
  }
}

+ (void)getRatingForItem:(id)item :(id)a4 :(id)a5
{
  itemCopy = item;
  v8 = a4;
  v9 = a5;
  if (([itemCopy isString] & 1) == 0)
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

  toString = [itemCopy toString];
  toBool = [v8 toBool];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_2B3A4;
  v15[3] = &unk_387CE8;
  v16 = v9;
  v14 = v9;
  [BSUICloudAssetRatingsManager getRatingForItem:toString forceFetch:toBool shouldSuppressMetrics:0 completion:v15];
}

+ (void)updateRatingValue:(double)value title:(id)title body:(id)body itemId:(id)id shouldSuppressMetrics:(BOOL)metrics completion:(id)completion
{
  metricsCopy = metrics;
  completionCopy = completion;
  idCopy = id;
  bodyCopy = body;
  titleCopy = title;
  v17 = [NSNumber numberWithDouble:value];
  [BSUICloudAssetRatingsManager updateRating:v17 title:titleCopy body:bodyCopy itemId:idCopy shouldSuppressMetrics:metricsCopy completion:completionCopy];
}

+ (void)updateRating:(id)rating title:(id)title body:(id)body itemId:(id)id shouldSuppressMetrics:(BOOL)metrics completion:(id)completion
{
  metricsCopy = metrics;
  ratingCopy = rating;
  titleCopy = title;
  bodyCopy = body;
  idCopy = id;
  completionCopy = completion;
  v19 = +[BUAccountsProvider sharedProvider];
  activeStoreAccount = [v19 activeStoreAccount];

  if (activeStoreAccount)
  {
    v21 = objc_alloc_init(NSMutableDictionary);
    [v21 setObject:ratingCopy forKeyedSubscript:@"rating"];
    if (titleCopy)
    {
      [v21 setObject:titleCopy forKeyedSubscript:@"title"];
      if (bodyCopy)
      {
        [v21 setObject:bodyCopy forKeyedSubscript:@"body"];
      }
    }

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_2B844;
    v24[3] = &unk_387D38;
    v25 = idCopy;
    v26 = ratingCopy;
    selfCopy = self;
    v27 = activeStoreAccount;
    v28 = titleCopy;
    v29 = bodyCopy;
    v30 = completionCopy;
    [BSUICloudAssetRatingsManager _updateRatingsDataForItem:v25 shouldSuppressMetrics:metricsCopy shouldSuppressResponseDialogs:0 updatingData:v21 completionHandler:v24];
  }

  else
  {
    v22 = objc_retainBlock(completionCopy);
    if (v22)
    {
      v23 = [NSError errorWithDomain:@"BSUICloudAssetRatingsManager" code:403 userInfo:0];
      v22[2](v22, 0, v23);
    }
  }
}

+ (void)updateRating:(id)rating :(id)a4 :(id)a5 :(id)a6 :(id)a7
{
  ratingCopy = rating;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (([ratingCopy isNumber] & 1) == 0)
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

  v29 = ratingCopy;
  toNumber = [ratingCopy toNumber];
  isUndefined = [v12 isUndefined];
  if (isUndefined)
  {
    toString = 0;
  }

  else
  {
    toString = [v12 toString];
  }

  isUndefined2 = [v13 isUndefined];
  v28 = v12;
  if (isUndefined2)
  {
    toString2 = 0;
  }

  else
  {
    toString2 = [v13 toString];
  }

  v25 = v14;
  toString3 = [v14 toString];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_2C038;
  v30[3] = &unk_387D60;
  v31 = v15;
  v27 = v15;
  [BSUICloudAssetRatingsManager updateRating:toNumber title:toString body:toString2 itemId:toString3 shouldSuppressMetrics:0 completion:v30];

  if ((isUndefined2 & 1) == 0)
  {
  }

  if ((isUndefined & 1) == 0)
  {
  }
}

+ (void)deleteRatingForItem:(id)item shouldSuppressMetrics:(BOOL)metrics completion:(id)completion
{
  metricsCopy = metrics;
  itemCopy = item;
  completionCopy = completion;
  v10 = +[BUAccountsProvider sharedProvider];
  activeStoreAccount = [v10 activeStoreAccount];

  if (activeStoreAccount)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_2C2D0;
    v14[3] = &unk_387DB0;
    v15 = itemCopy;
    selfCopy = self;
    v16 = activeStoreAccount;
    v17 = completionCopy;
    [BSUICloudAssetRatingsManager _deleteRatingsDataForItem:v15 shouldSuppressMetrics:metricsCopy shouldSuppressResponseDialogs:0 completionHandler:v14];
  }

  else
  {
    v12 = objc_retainBlock(completionCopy);
    if (v12)
    {
      v13 = [NSError errorWithDomain:@"BSUICloudAssetRatingsManager" code:403 userInfo:0];
      v12[2](v12, 0, v13);
    }
  }
}

+ (void)deleteRatingForItem:(id)item :(id)a4
{
  itemCopy = item;
  v6 = a4;
  if (([itemCopy isString] & 1) == 0)
  {
    v7 = BSUICloudAssetRatingsManagerLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_2BD878();
    }
  }

  toString = [itemCopy toString];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_2C684;
  v10[3] = &unk_387D60;
  v11 = v6;
  v9 = v6;
  [BSUICloudAssetRatingsManager deleteRatingForItem:toString shouldSuppressMetrics:0 completion:v10];
}

+ (void)_fetchRatingsDataForItem:(id)item shouldSuppressMetrics:(BOOL)metrics shouldSuppressResponseDialogs:(BOOL)dialogs completionHandler:(id)handler
{
  dialogsCopy = dialogs;
  metricsCopy = metrics;
  v15[0] = item;
  v14[0] = @"itemId";
  v14[1] = @"shouldSuppressMetrics";
  handlerCopy = handler;
  itemCopy = item;
  v11 = [NSNumber numberWithBool:metricsCopy];
  v15[1] = v11;
  v14[2] = @"shouldSuppressResponseDialogs";
  v12 = [NSNumber numberWithBool:dialogsCopy];
  v15[2] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];

  [BSUICloudAssetRatingsManager _callOnJSBridge:@"getRatingFromServer" options:v13 completionHandler:handlerCopy];
}

+ (void)_updateRatingsDataForItem:(id)item shouldSuppressMetrics:(BOOL)metrics shouldSuppressResponseDialogs:(BOOL)dialogs updatingData:(id)data completionHandler:(id)handler
{
  dialogsCopy = dialogs;
  metricsCopy = metrics;
  v18[0] = item;
  v17[0] = @"itemId";
  v17[1] = @"shouldSuppressMetrics";
  handlerCopy = handler;
  dataCopy = data;
  itemCopy = item;
  v14 = [NSNumber numberWithBool:metricsCopy];
  v18[1] = v14;
  v17[2] = @"shouldSuppressResponseDialogs";
  v15 = [NSNumber numberWithBool:dialogsCopy];
  v17[3] = @"updatingData";
  v18[2] = v15;
  v18[3] = dataCopy;
  v16 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:4];

  [BSUICloudAssetRatingsManager _callOnJSBridge:@"updateRatingOnServer" options:v16 completionHandler:handlerCopy];
}

+ (void)_deleteRatingsDataForItem:(id)item shouldSuppressMetrics:(BOOL)metrics shouldSuppressResponseDialogs:(BOOL)dialogs completionHandler:(id)handler
{
  dialogsCopy = dialogs;
  metricsCopy = metrics;
  v15[0] = item;
  v14[0] = @"itemId";
  v14[1] = @"shouldSuppressMetrics";
  handlerCopy = handler;
  itemCopy = item;
  v11 = [NSNumber numberWithBool:metricsCopy];
  v15[1] = v11;
  v14[2] = @"shouldSuppressResponseDialogs";
  v12 = [NSNumber numberWithBool:dialogsCopy];
  v15[2] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];

  [BSUICloudAssetRatingsManager _callOnJSBridge:@"deleteRatingFromServer" options:v13 completionHandler:handlerCopy];
}

+ (void)_callOnJSBridge:(id)bridge options:(id)options completionHandler:(id)handler
{
  bridgeCopy = bridge;
  optionsCopy = options;
  handlerCopy = handler;
  v10 = +[JSABridge sharedInstance];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_2CC3C;
  v14[3] = &unk_387DD8;
  v15 = bridgeCopy;
  v16 = optionsCopy;
  v17 = handlerCopy;
  v11 = handlerCopy;
  v12 = optionsCopy;
  v13 = bridgeCopy;
  [v10 enqueueBlock:v14 file:@"BSUICloudAssetRatingsManager.m" line:375];
}

@end