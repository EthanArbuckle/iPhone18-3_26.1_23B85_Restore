@interface FRPersonalizationAutoFavoritesOperation
- (BOOL)shouldAcceptAggregate:(id)a3 withCtr:(double)a4 minEvents:(double)a5 minClicks:(double)a6 minRate:(double)a7 baseRate:(double)a8 multiplier:(double)a9;
- (BOOL)shouldRejectTagID:(id)a3 withAggregate:(id)a4 baseline:(id)a5 currentDate:(id)a6 addedDate:(id)a7 maxIdleTime:(double)a8 minEvents:(double)a9 minRate:(double)a10 baseRate:(double)a11 multiplier:(double)a12;
- (BOOL)validateOperation;
- (double)ctrForTagID:(id)a3 withAggregate:(id)a4 baselineAggregate:(id)a5;
- (double)metricMultiplierForTagID:(id)a3 withPriorFactorExponent:(double)a4 tagFavorabilityExponent:(double)a5;
- (id)auditCandidates:(id)a3 autoSubscriptionAddedDateByTagId:(id)a4 multiplierProvider:(id)a5;
- (id)maybeConsiderPortrait;
- (id)processExternalAppUsageSignals:(id)a3;
- (id)processSafariSignals:(id)a3;
- (void)_considerExternalSignals:(id)a3;
- (void)_considerInternalAppUsage:(id)a3;
- (void)_considerInternalSignals:(id)a3;
- (void)_findValidAutoFavoritesWithCandidates:(id)a3 channelsAllowedProvider:(id)a4 topicsAllowedProvider:(id)a5 completion:(id)a6;
- (void)_processSignals:(id)a3;
- (void)considerBiome:(id)a3;
- (void)considerLocation:(id)a3;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
- (void)prepareOperation;
- (void)processAppSignals:(id)a3 safariSignals:(id)a4 completion:(id)a5;
@end

@implementation FRPersonalizationAutoFavoritesOperation

- (BOOL)validateOperation
{
  v3 = [(FRPersonalizationAutoFavoritesOperation *)self configurableValues];

  if (!v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000696B8();
  }

  v4 = [(FRPersonalizationAutoFavoritesOperation *)self subscriptionController];

  if (!v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100069770();
  }

  v5 = [(FRPersonalizationAutoFavoritesOperation *)self tagController];

  if (!v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100069828();
  }

  v6 = [(FRPersonalizationAutoFavoritesOperation *)self userInfo];

  if (!v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000698E0();
  }

  v7 = [(FRPersonalizationAutoFavoritesOperation *)self tagRanker];

  if (!v7 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100069998();
  }

  v8 = [(FRPersonalizationAutoFavoritesOperation *)self aggregateStore];

  if (!v8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100069A50();
  }

  if (v3)
  {
    v9 = v4 == 0;
  }

  else
  {
    v9 = 1;
  }

  return !v9 && v5 != 0 && v6 != 0 && v7 != 0 && v8 != 0;
}

- (void)prepareOperation
{
  v5 = [(FRPersonalizationAutoFavoritesOperation *)self cursor];
  v3 = [v5 copy];
  if (v3)
  {
    [(FRPersonalizationAutoFavoritesOperation *)self setResultCursor:v3];
  }

  else
  {
    v4 = objc_opt_new();
    [(FRPersonalizationAutoFavoritesOperation *)self setResultCursor:v4];
  }
}

- (void)performOperation
{
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v4 = [(FRPersonalizationAutoFavoritesOperation *)self tagRanker];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100010E98;
  v13[3] = &unk_1000C18D0;
  v5 = v3;
  v14 = v5;
  [v4 prepareForUseWithCompletionHandler:v13];

  dispatch_group_enter(v5);
  v6 = [(FRPersonalizationAutoFavoritesOperation *)self aggregateStore];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100010EA0;
  v11[3] = &unk_1000C18D0;
  v7 = v5;
  v12 = v7;
  [v6 prepareAggregatesForUseWithCompletionHandler:v11];

  if (FCDispatchGroupIsEmpty())
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100010EA8;
    v10[3] = &unk_1000C18D0;
    v10[4] = self;
    sub_100010EA8(v10);
  }

  else
  {
    [(FRPersonalizationAutoFavoritesOperation *)self qualityOfService];
    v8 = FCDispatchQueueForQualityOfService();
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100010F24;
    v9[3] = &unk_1000C18D0;
    v9[4] = self;
    dispatch_group_notify(v7, v8, v9);
  }
}

- (void)operationWillFinishWithError:(id)a3
{
  v8 = a3;
  v4 = [(FRPersonalizationAutoFavoritesOperation *)self autoFavoritesCompletionHandler];

  if (v4)
  {
    v5 = [(FRPersonalizationAutoFavoritesOperation *)self autoFavoritesCompletionHandler];
    v6 = [(FRPersonalizationAutoFavoritesOperation *)self resultAutoFavorites];
    v7 = [(FRPersonalizationAutoFavoritesOperation *)self resultCursor];
    (v5)[2](v5, v6, v7, v8);
  }
}

- (void)_processSignals:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100069B08();
  }

  v5 = [(FRPersonalizationAutoFavoritesOperation *)self whitelist];
  v6 = v5 == 0;

  if (v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100069BD0();
  }

  v7 = [(FRPersonalizationAutoFavoritesOperation *)self whitelist];
  v8 = v7 == 0;

  if (v8)
  {
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_100011728;
    v53[3] = &unk_1000C1BD8;
    v53[4] = self;
    v54 = v4;
    sub_100011728(v53);
  }

  else
  {
    v9 = [(FRPersonalizationAutoFavoritesOperation *)self configurableValues];
    v51[0] = 0;
    v51[1] = v51;
    v51[2] = 0x3032000000;
    v51[3] = sub_100009B28;
    v51[4] = sub_100009EE8;
    v52 = +[NSSet set];
    v49[0] = 0;
    v49[1] = v49;
    v49[2] = 0x3032000000;
    v49[3] = sub_100009B28;
    v49[4] = sub_100009EE8;
    v50 = +[NSSet set];
    v47[0] = 0;
    v47[1] = v47;
    v47[2] = 0x3032000000;
    v47[3] = sub_100009B28;
    v47[4] = sub_100009EE8;
    v48 = +[NSSet set];
    v45[0] = 0;
    v45[1] = v45;
    v45[2] = 0x3032000000;
    v45[3] = sub_100009B28;
    v45[4] = sub_100009EE8;
    v46 = +[NSSet set];
    v43[0] = 0;
    v43[1] = v43;
    v43[2] = 0x3032000000;
    v43[3] = sub_100009B28;
    v43[4] = sub_100009EE8;
    v44 = +[NSSet set];
    v41[0] = 0;
    v41[1] = v41;
    v41[2] = 0x3032000000;
    v41[3] = sub_100009B28;
    v41[4] = sub_100009EE8;
    v42 = +[NSSet set];
    v10 = dispatch_group_create();
    v11 = FCOperationLog;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(FRPersonalizationAutoFavoritesOperation *)self shortOperationDescription];
      *buf = 138543362;
      v56 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ will consider external signals", buf, 0xCu);
    }

    dispatch_group_enter(v10);
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100011788;
    v34[3] = &unk_1000C1C00;
    v37 = v47;
    v38 = v45;
    v39 = v43;
    v40 = v41;
    v13 = v10;
    v35 = v13;
    v36 = self;
    [(FRPersonalizationAutoFavoritesOperation *)self _considerExternalSignals:v34];
    v14 = FCOperationLog;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(FRPersonalizationAutoFavoritesOperation *)self shortOperationDescription];
      *buf = 138543362;
      v56 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ will consider internal signals", buf, 0xCu);
    }

    dispatch_group_enter(v13);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100011908;
    v29[3] = &unk_1000C1C28;
    v32 = v51;
    v33 = v49;
    v16 = v13;
    v30 = v16;
    v31 = self;
    [(FRPersonalizationAutoFavoritesOperation *)self _considerInternalSignals:v29];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100011A30;
    v20[3] = &unk_1000C1DF8;
    v20[4] = self;
    v17 = v9;
    v21 = v17;
    v23 = v51;
    v24 = v49;
    v25 = v47;
    v26 = v45;
    v27 = v43;
    v28 = v41;
    v22 = v4;
    v18 = objc_retainBlock(v20);
    if (FCDispatchGroupIsEmpty())
    {
      (v18[2])(v18);
    }

    else
    {
      [(FRPersonalizationAutoFavoritesOperation *)self qualityOfService];
      v19 = FCDispatchQueueForQualityOfService();
      dispatch_group_notify(v16, v19, v18);
    }

    _Block_object_dispose(v41, 8);
    _Block_object_dispose(v43, 8);

    _Block_object_dispose(v45, 8);
    _Block_object_dispose(v47, 8);

    _Block_object_dispose(v49, 8);
    _Block_object_dispose(v51, 8);
  }
}

- (void)_findValidAutoFavoritesWithCandidates:(id)a3 channelsAllowedProvider:(id)a4 topicsAllowedProvider:(id)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = +[NSMutableSet set];
  v15 = +[NSMutableSet set];
  [(FRPersonalizationAutoFavoritesOperation *)self whitelist];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10001356C;
  v39[3] = &unk_1000C1D80;
  v27 = v39[4] = self;
  v40 = v27;
  v16 = v14;
  v41 = v16;
  v17 = v15;
  v42 = v17;
  [v13 enumerateObjectsUsingBlock:v39];

  v18 = dispatch_group_create();
  if ([v17 count])
  {
    dispatch_group_enter(v18);
    v19 = [(FRPersonalizationAutoFavoritesOperation *)self tagController];
    [v17 allObjects];
    v20 = v26 = v12;
    v21 = [(FRPersonalizationAutoFavoritesOperation *)self qualityOfService];
    [(FRPersonalizationAutoFavoritesOperation *)self qualityOfService];
    v22 = FCDispatchQueueForQualityOfService();
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1000136E0;
    v34[3] = &unk_1000C1E20;
    v37 = v10;
    v35 = v16;
    v38 = v11;
    v36 = v18;
    [v19 fetchTagsForTagIDs:v20 qualityOfService:v21 callbackQueue:v22 completionHandler:v34];

    v12 = v26;
  }

  if (FCDispatchGroupIsEmpty())
  {
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100013890;
    v31[3] = &unk_1000C1E48;
    v23 = &v33;
    v33 = v12;
    v24 = &v32;
    v32 = v16;
    sub_100013890(v31);
  }

  else
  {
    [(FRPersonalizationAutoFavoritesOperation *)self qualityOfService];
    v25 = FCDispatchQueueForQualityOfService();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000138B0;
    block[3] = &unk_1000C1E48;
    v23 = &v30;
    v30 = v12;
    v24 = &v29;
    v29 = v16;
    dispatch_group_notify(v18, v25, block);
  }
}

- (void)_considerInternalAppUsage:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006A484();
  }

  v5 = +[NSMutableSet set];
  v6 = +[NSMutableSet set];
  v7 = [(FRPersonalizationAutoFavoritesOperation *)self configurableValues];
  [v7 autoFavoriteMinEvents];
  v9 = v8;
  [v7 autoFavoriteMinClicks];
  v11 = v10;
  [v7 autoFavoriteMinRate];
  v13 = v12;
  v14 = [(FRPersonalizationAutoFavoritesOperation *)self aggregateStore];
  v15 = [v14 baselineAggregateWithConfigurableValues:v7];

  [v7 autoFavoriteMinRelativeRate];
  v17 = v16;
  v18 = [(FRPersonalizationAutoFavoritesOperation *)self aggregateStore];
  [v18 decayRate];
  [v15 personalizationValueWithBaseline:0 decayRate:?];
  v20 = v17 * v19;

  v21 = [(FRPersonalizationAutoFavoritesOperation *)self aggregateStore];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100013B00;
  v28[3] = &unk_1000C1E70;
  v29 = v7;
  v30 = self;
  v31 = v15;
  v34 = v9;
  v35 = v11;
  v36 = v13;
  v37 = v20;
  v22 = v5;
  v32 = v22;
  v23 = v6;
  v33 = v23;
  v24 = v15;
  v25 = v7;
  [v21 enumerateAggregatesUsingBlock:v28];

  if (v4)
  {
    v26 = [v22 copy];
    v27 = [v23 copy];
    v4[2](v4, v26, v27);
  }
}

- (void)considerLocation:(id)a3
{
  v4 = a3;
  v5 = +[NSSet set];
  v6 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [(FRPersonalizationAutoFavoritesOperation *)self shortOperationDescription];
    *buf = 138543362;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ will consider location", buf, 0xCu);
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100013FAC;
  v25[3] = &unk_1000C1E98;
  v25[4] = self;
  v9 = v4;
  v26 = v9;
  v10 = objc_retainBlock(v25);
  v11 = [(FRPersonalizationAutoFavoritesOperation *)self appConfiguration];
  v12 = [v11 enableLocationBasedAutofavorites];

  if (v12)
  {
    v13 = [(FRPersonalizationAutoFavoritesOperation *)self locationManager];
    v14 = [v13 mostFrequentLocation];

    v15 = FCOperationLog;
    v16 = os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v16)
      {
        v17 = v15;
        v18 = [(FRPersonalizationAutoFavoritesOperation *)self shortOperationDescription];
        *buf = 138543362;
        v28 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ has location; will fetch local areas provider", buf, 0xCu);
      }

      v19 = [(FRPersonalizationAutoFavoritesOperation *)self localAreasManager];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000140A0;
      v22[3] = &unk_1000C1EC0;
      v22[4] = self;
      v23 = v14;
      v24 = v10;
      [v19 fetchLocalAreasProvider:v22];
    }

    else
    {
      if (v16)
      {
        v20 = v15;
        v21 = [(FRPersonalizationAutoFavoritesOperation *)self shortOperationDescription];
        *buf = 138543362;
        v28 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ could not get location; returning empty auto-favorites", buf, 0xCu);
      }

      (v10[2])(v10, v5);
    }
  }

  else
  {
    (v10[2])(v10, v5);
  }
}

- (id)maybeConsiderPortrait
{
  v3 = [(FRPersonalizationAutoFavoritesOperation *)self whitelist];
  v4 = [(FRPersonalizationAutoFavoritesOperation *)self configurableValues];
  [v4 portraitDecayRate];
  v5 = 0.0;
  if (v6 != 0.0)
  {
    [v4 portraitDecayRate];
    v5 = 0.693147181 / v7;
  }

  v8 = objc_opt_new();
  [v8 setOverrideDecayRate:1];
  [v8 setDecayRate:v5];
  v9 = +[NSDate distantPast];
  [v8 setFromDate:v9];

  v10 = [[NSSet alloc] initWithObjects:{@"com.apple.news", 0}];
  [v8 setExcludingSourceBundleIds:v10];

  v11 = +[PPTopicStore defaultStore];
  v23 = 0;
  v12 = [v11 scoresForTopicMapping:@"news-topics" query:v8 error:&v23];
  v13 = v23;

  v14 = [v3 portraitDisabledTagIDs];
  [v4 portraitGlobalThreshold];
  v16 = v15;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000143BC;
  v20[3] = &unk_1000C1EE8;
  v21 = v4;
  v22 = self;
  v17 = v4;
  v18 = [FRPortraitUtilities candidatePortraitSignalsWithPortraitResults:v12 disbabledTagIDs:v14 globalThreshold:v20 multiplierProvider:&stru_1000C1F28 logBlock:v16];

  return v18;
}

- (void)considerBiome:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006A548();
  }

  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = sub_100009B28;
  v19[4] = sub_100009EE8;
  v20 = &__NSArray0__struct;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = sub_100009B28;
  v17[4] = sub_100009EE8;
  v18 = &__NSArray0__struct;
  v5 = FCOperationLog;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(FRPersonalizationAutoFavoritesOperation *)self shortOperationDescription];
    *buf = 138543362;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ will consider Biome", buf, 0xCu);
  }

  v7 = [(FRPersonalizationAutoFavoritesOperation *)self configurableValues];
  [v7 safariEventBlackoutSeconds];
  v9 = v8;
  v10 = [(FRPersonalizationAutoFavoritesOperation *)self configurableValues];
  v11 = [v10 maxExternalSignalEventCount];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000146D0;
  v13[3] = &unk_1000C1F50;
  v15 = v19;
  v16 = v17;
  v13[4] = self;
  v12 = v4;
  v14 = v12;
  [FCBiomeSignalProvider fetchSignalsFromBiomeWithSafariBlockoutDuration:v11 maxExternalSignalEventCount:v13 resultsBlock:v9];

  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v19, 8);
}

- (void)processAppSignals:(id)a3 safariSignals:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006A680();
    if (v9)
    {
      goto LABEL_6;
    }
  }

  else if (v9)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006A744();
  }

LABEL_6:
  if (!v10 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006A808();
  }

  v11 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [(FRPersonalizationAutoFavoritesOperation *)self shortOperationDescription];
    *buf = 138543362;
    v75 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ will process app signals", buf, 0xCu);
  }

  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_100015014;
  v72[3] = &unk_1000C1F78;
  v72[4] = self;
  v14 = v10;
  v73 = v14;
  v15 = objc_retainBlock(v72);
  v16 = [v8 count];
  if ([v9 count] + v16)
  {
    v17 = [(FRPersonalizationAutoFavoritesOperation *)self bundleIDMapping];
    if (v17)
    {
      v18 = v17;
      v19 = [(FRPersonalizationAutoFavoritesOperation *)self urlMapping];

      if (v19)
      {
        v20 = [(FRPersonalizationAutoFavoritesOperation *)self urlMapping];
        v21 = [(FRPersonalizationAutoFavoritesOperation *)self bundleIDMapping];
        v53 = v20;
        if (!v20 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10006A8CC();
          if (!v21)
          {
LABEL_17:
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_10006A990();
            }
          }
        }

        else if (!v21)
        {
          goto LABEL_17;
        }

        v55 = v21;
        v22 = +[NSUserDefaults standardUserDefaults];
        v23 = [v22 BOOLForKey:FCPersonalizationDisregardTimeForSuggestions];

        v24 = [(FRPersonalizationAutoFavoritesOperation *)self configurableValues];
        [v24 appUsageSignalWeight];
        v26 = v25;
        [v24 appUsageTimeDecayMultiplier];
        if ((v23 & 1) == 0)
        {
          v28 = v27;
          v29 = [v8 firstObject];
          v30 = [v29 date];
          [v30 fc_timeIntervalUntilNow];
          v26 = v26 * pow(v28, v31 / 86400.0);
        }

        v57 = v14;
        [v24 safariSignalWeight];
        v33 = v32;
        v52 = v24;
        [v24 safariTimeDecayMultiplier];
        if ((v23 & 1) == 0)
        {
          v35 = v34;
          v36 = [v9 firstObject];
          v37 = [v36 date];
          [v37 fc_timeIntervalUntilNow];
          v33 = v33 * pow(v35, v38 / 86400.0);
        }

        v39 = objc_opt_new();
        v40 = objc_opt_new();
        v41 = [(FRPersonalizationAutoFavoritesOperation *)self cursor];
        v42 = [v41 coreDuetLastQueryDate];

        v64[0] = _NSConcreteStackBlock;
        v64[1] = 3221225472;
        v64[2] = sub_10001526C;
        v64[3] = &unk_1000C20A8;
        v71 = v23;
        v65 = v55;
        v70 = &stru_1000C1FB8;
        v43 = v40;
        v66 = v43;
        v67 = v42;
        v68 = v53;
        v44 = v39;
        v69 = v44;
        v54 = v53;
        v51 = v42;
        v56 = v55;
        v45 = objc_retainBlock(v64);
        v61[0] = _NSConcreteStackBlock;
        v61[1] = 3221225472;
        v61[2] = sub_1000158C8;
        v61[3] = &unk_1000C20D0;
        v63 = v26;
        v46 = v52;
        v62 = v46;
        (v45[2])(v45, v8, v61);
        v58[0] = _NSConcreteStackBlock;
        v58[1] = 3221225472;
        v58[2] = sub_100015908;
        v58[3] = &unk_1000C20D0;
        v60 = v33;
        v59 = v46;
        v47 = v45[2];
        v48 = v46;
        v47(v45, v9, v58);
        if (v15)
        {
          v49 = [(FRPersonalizationAutoFavoritesOperation *)self processExternalAppUsageSignals:v43, v51];
          v50 = [(FRPersonalizationAutoFavoritesOperation *)self processSafariSignals:v44];
          (v15[2])(v15, v49, v50);
        }

        v14 = v57;
        goto LABEL_28;
      }
    }
  }

  if (v15)
  {
    v44 = +[NSSet set];
    v43 = +[NSSet set];
    (v15[2])(v15, v44, v43);
LABEL_28:
  }
}

- (id)processExternalAppUsageSignals:(id)a3
{
  v4 = a3;
  v5 = [(FRPersonalizationAutoFavoritesOperation *)self configurableValues];
  v25 = +[NSMutableSet set];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = [v6 objectForKeyedSubscript:v11];
        v13 = [v12 count];
        [v5 autoFavoriteMinObservationsExtAppUsage];
        if (v14 <= v13)
        {
          [v5 appUsagePriorFactorExponent];
          v16 = v15;
          [v5 appUsageTagFavorabilityExponent];
          [(FRPersonalizationAutoFavoritesOperation *)self metricMultiplierForTagID:v11 withPriorFactorExponent:v16 tagFavorabilityExponent:v17];
          v19 = v18;
          v20 = [v12 valueForKeyPath:@"@sum.self"];
          [v20 doubleValue];
          v22 = v19 * v21;

          [v5 autoFavoriteMinScoreExtAppUsage];
          if (v22 >= v23)
          {
            [v25 addObject:v11];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  return v25;
}

- (id)processSafariSignals:(id)a3
{
  v4 = a3;
  v5 = [(FRPersonalizationAutoFavoritesOperation *)self configurableValues];
  v33 = [(FRPersonalizationAutoFavoritesOperation *)self favorabilityScores];
  if (!v33)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006AA54();
    }

    v6 = FCProgressivePersonalizationLog;
    if (os_log_type_enabled(FCProgressivePersonalizationLog, OS_LOG_TYPE_ERROR))
    {
      sub_10006AB18(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v35 = +[NSMutableSet set];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v14 = v4;
  v15 = [v14 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v37;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v37 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v36 + 1) + 8 * i);
        v20 = [v14 objectForKeyedSubscript:v19];
        v21 = [v20 count];
        [v5 autoFavoriteMinObservationsSafari];
        if (v22 <= v21)
        {
          [v5 safariPriorFactorExponent];
          v24 = v23;
          [v5 safariTagFavorabilityExponent];
          [(FRPersonalizationAutoFavoritesOperation *)self metricMultiplierForTagID:v19 withPriorFactorExponent:v24 tagFavorabilityExponent:v25];
          v27 = v26;
          v28 = [v20 valueForKeyPath:@"@sum.self"];
          [v28 doubleValue];
          v30 = v27 * v29;

          [v5 autoFavoriteMinScoreSafari];
          if (v30 >= v31)
          {
            [v35 addObject:v19];
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v16);
  }

  return v35;
}

- (void)_considerInternalSignals:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006AB50();
  }

  v5 = dispatch_group_create();
  if ([(FRPersonalizationAutoFavoritesOperation *)self disregardCache])
  {
LABEL_10:
    dispatch_group_enter(v5);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100016000;
    v23[3] = &unk_1000C20F8;
    v23[4] = self;
    v24 = v5;
    [(FRPersonalizationAutoFavoritesOperation *)self _considerInternalAppUsage:v23];
    v15 = +[NSDate date];
    v16 = [(FRPersonalizationAutoFavoritesOperation *)self resultCursor];
    [v16 setLastInternalSignalProcessingDate:v15];

    if (!v4)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  v6 = [(FRPersonalizationAutoFavoritesOperation *)self cursor];
  v7 = [v6 lastInternalSignalProcessingDate];
  if (!v7)
  {

    goto LABEL_10;
  }

  v8 = v7;
  v9 = [(FRPersonalizationAutoFavoritesOperation *)self cursor];
  v10 = [v9 lastInternalSignalProcessingDate];
  [v10 fc_timeIntervalUntilNow];
  v12 = v11;
  [(FRPersonalizationAutoFavoritesOperation *)self signalProcessingTimeInterval];
  v14 = v13;

  if (v12 > v14)
  {
    goto LABEL_10;
  }

  if (!v4)
  {
    goto LABEL_15;
  }

LABEL_11:
  if (FCDispatchGroupIsEmpty())
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100016094;
    v21[3] = &unk_1000C1E48;
    v17 = &v22;
    v21[4] = self;
    v22 = v4;
    sub_100016094(v21);
  }

  else
  {
    [(FRPersonalizationAutoFavoritesOperation *)self qualityOfService];
    v18 = FCDispatchQueueForQualityOfService();
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100016134;
    v19[3] = &unk_1000C1E48;
    v17 = &v20;
    v19[4] = self;
    v20 = v4;
    dispatch_group_notify(v5, v18, v19);
  }

LABEL_15:
}

- (void)_considerExternalSignals:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006AC14();
  }

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100016514;
  v30[3] = &unk_1000C2120;
  v5 = v4;
  v31 = v5;
  v6 = objc_retainBlock(v30);
  v7 = [(FRPersonalizationAutoFavoritesOperation *)self userInfo];
  v8 = [v7 progressivePersonalization];

  if (v8)
  {
    if (v8 == 1)
    {
      v19 = +[NSSet set];
      v20 = +[NSSet set];
      v21 = +[NSSet set];
      v22 = +[NSSet set];
      (v6[2])(v6, v19, v20, v21, v22);
    }

    else if (v8 == 2)
    {
      v9 = dispatch_group_create();
      if (![(FRPersonalizationAutoFavoritesOperation *)self disregardCache])
      {
        v10 = [(FRPersonalizationAutoFavoritesOperation *)self cursor];
        v11 = [v10 lastExternalSignalProcessingDate];
        if (v11)
        {
          v12 = v11;
          v13 = [(FRPersonalizationAutoFavoritesOperation *)self cursor];
          v14 = [v13 lastExternalSignalProcessingDate];
          [v14 fc_timeIntervalUntilNow];
          v16 = v15;
          [(FRPersonalizationAutoFavoritesOperation *)self signalProcessingTimeInterval];
          v18 = v17;

          if (v16 <= v18)
          {
            goto LABEL_16;
          }
        }

        else
        {
        }
      }

      v23 = [(FRPersonalizationAutoFavoritesOperation *)self maybeConsiderPortrait];
      v24 = [(FRPersonalizationAutoFavoritesOperation *)self resultCursor];
      [v24 setLastPortraitAutoFavoriteResults:v23];

      dispatch_group_enter(v9);
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100016684;
      v28[3] = &unk_1000C20F8;
      v28[4] = self;
      v29 = v9;
      [(FRPersonalizationAutoFavoritesOperation *)self considerBiome:v28];

LABEL_16:
      [(FRPersonalizationAutoFavoritesOperation *)self qualityOfService];
      v25 = FCDispatchQueueForQualityOfService();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000167E0;
      block[3] = &unk_1000C1E48;
      block[4] = self;
      v27 = v6;
      dispatch_group_notify(v9, v25, block);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006ACD8();
  }
}

- (double)metricMultiplierForTagID:(id)a3 withPriorFactorExponent:(double)a4 tagFavorabilityExponent:(double)a5
{
  v8 = a3;
  v9 = [(FRPersonalizationAutoFavoritesOperation *)self whitelist];
  v10 = [(FRPersonalizationAutoFavoritesOperation *)self configurableValues];
  v11 = [v10 defaultScoringConfig];
  [v11 baselineRatePrior];
  FCPersonalizationBaselineClicksMultiplerForTagID();
  v13 = v12;

  v14 = pow(v13, a4);
  v15 = [(FRPersonalizationAutoFavoritesOperation *)self favorabilityScores];
  v16 = [v15 scoreForTagID:v8];

  if (v16)
  {
    [v16 doubleValue];
    v18 = v17;
    v19 = 0.0;
    if (v18 != 0.0)
    {
      [v16 doubleValue];
      v19 = pow(v20, a5);
    }

    v14 = v14 * v19;
    v21 = FCProgressivePersonalizationLog;
    if (os_log_type_enabled(FCProgressivePersonalizationLog, OS_LOG_TYPE_DEBUG))
    {
      sub_10006AD90(v16, v8, v21);
    }
  }

  else
  {
    v22 = FCProgressivePersonalizationLog;
    if (os_log_type_enabled(FCProgressivePersonalizationLog, OS_LOG_TYPE_DEBUG))
    {
      sub_10006AE18(v8, v22);
    }
  }

  return v14;
}

- (double)ctrForTagID:(id)a3 withAggregate:(id)a4 baselineAggregate:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(FRPersonalizationAutoFavoritesOperation *)self configurableValues];
  v12 = [(FRPersonalizationAutoFavoritesOperation *)self whitelist];
  v13 = [(FRPersonalizationAutoFavoritesOperation *)self configurableValues];
  v14 = [v13 defaultScoringConfig];
  [v14 baselineRatePrior];
  FCPersonalizationBaselineClicksMultiplerForTagID();

  v15 = [(FRPersonalizationAutoFavoritesOperation *)self aggregateStore];
  [v15 decayRate];
  [v9 personalizationValueWithBaseline:v8 decayRate:? baselineClicksMultiplier:?];
  v17 = v16;

  return v17;
}

- (BOOL)shouldAcceptAggregate:(id)a3 withCtr:(double)a4 minEvents:(double)a5 minClicks:(double)a6 minRate:(double)a7 baseRate:(double)a8 multiplier:(double)a9
{
  v15 = a3;
  v16 = [v15 eventCount];
  [v15 clicks];
  v18 = v17;

  v19 = a4 * a9;
  v20 = v16 * a9 >= a5;
  if (v18 * a9 < a6)
  {
    v20 = 0;
  }

  v21 = v19 >= a7;
  if (v19 < a8)
  {
    v21 = 0;
  }

  return v21 && v20;
}

- (BOOL)shouldRejectTagID:(id)a3 withAggregate:(id)a4 baseline:(id)a5 currentDate:(id)a6 addedDate:(id)a7 maxIdleTime:(double)a8 minEvents:(double)a9 minRate:(double)a10 baseRate:(double)a11 multiplier:(double)a12
{
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v27 = v26;
  if (v22)
  {
    if (v23)
    {
      v28 = [v23 eventCount];
      [(FRPersonalizationAutoFavoritesOperation *)self ctrForTagID:v22 withAggregate:v23 baselineAggregate:v24];
      if (a9 * a12 <= v28)
      {
        LOBYTE(v31) = fmax(a10, a11) > v29 * a12;
      }

      else
      {
        v31 = [v23 lastModified];
        v30 = [v25 fc_isWithinTimeInterval:v31 ofDate:a8];

        LOBYTE(v31) = v30 ^ 1;
      }
    }

    else if (v26)
    {
      LODWORD(v31) = [v25 fc_isWithinTimeInterval:v26 ofDate:a8] ^ 1;
    }

    else
    {
      LOBYTE(v31) = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006AE90();
    }

    LOBYTE(v31) = 1;
  }

  return v31;
}

- (id)auditCandidates:(id)a3 autoSubscriptionAddedDateByTagId:(id)a4 multiplierProvider:(id)a5
{
  v38 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(FRPersonalizationAutoFavoritesOperation *)self configurableValues];
  v11 = +[NSDate date];
  [v10 autoFavoriteMaxIdleTime];
  v13 = v12;
  [v10 autoFavoriteMinEvents];
  v15 = v14;
  [v10 autoFavoriteMinRate];
  v17 = v16;
  v18 = [(FRPersonalizationAutoFavoritesOperation *)self aggregateStore];
  v19 = [v18 baselineAggregateWithConfigurableValues:v10];

  v20 = [(FRPersonalizationAutoFavoritesOperation *)self aggregateStore];
  [v20 decayRate];
  v22 = v21;

  [v10 autoFavoriteMinRelativeRate];
  v24 = v23;
  [v19 personalizationValueWithBaseline:0 decayRate:v22];
  v26 = v24 * v25;
  v27 = [(FRPersonalizationAutoFavoritesOperation *)self aggregateStore];
  v28 = [v9 allObjects];
  v29 = [FCTagIDFeature featuresFromTagIDs:v28];
  v30 = [v27 aggregatesForFeatures:v29];

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100017088;
  v39[3] = &unk_1000C2170;
  v39[4] = self;
  v40 = v30;
  v41 = v19;
  v42 = v11;
  v45 = v13;
  v46 = v15;
  v47 = v17;
  v48 = v26;
  v43 = v38;
  v44 = v8;
  v31 = v8;
  v32 = v38;
  v33 = v11;
  v34 = v19;
  v35 = v30;
  v36 = [v9 fc_setByTransformingWithBlock:v39];

  return v36;
}

@end