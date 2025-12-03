@interface FRPersonalizationAutoFavoritesOperation
- (BOOL)shouldAcceptAggregate:(id)aggregate withCtr:(double)ctr minEvents:(double)events minClicks:(double)clicks minRate:(double)rate baseRate:(double)baseRate multiplier:(double)multiplier;
- (BOOL)shouldRejectTagID:(id)d withAggregate:(id)aggregate baseline:(id)baseline currentDate:(id)date addedDate:(id)addedDate maxIdleTime:(double)time minEvents:(double)events minRate:(double)self0 baseRate:(double)self1 multiplier:(double)self2;
- (BOOL)validateOperation;
- (double)ctrForTagID:(id)d withAggregate:(id)aggregate baselineAggregate:(id)baselineAggregate;
- (double)metricMultiplierForTagID:(id)d withPriorFactorExponent:(double)exponent tagFavorabilityExponent:(double)favorabilityExponent;
- (id)auditCandidates:(id)candidates autoSubscriptionAddedDateByTagId:(id)id multiplierProvider:(id)provider;
- (id)maybeConsiderPortrait;
- (id)processExternalAppUsageSignals:(id)signals;
- (id)processSafariSignals:(id)signals;
- (void)_considerExternalSignals:(id)signals;
- (void)_considerInternalAppUsage:(id)usage;
- (void)_considerInternalSignals:(id)signals;
- (void)_findValidAutoFavoritesWithCandidates:(id)candidates channelsAllowedProvider:(id)provider topicsAllowedProvider:(id)allowedProvider completion:(id)completion;
- (void)_processSignals:(id)signals;
- (void)considerBiome:(id)biome;
- (void)considerLocation:(id)location;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
- (void)prepareOperation;
- (void)processAppSignals:(id)signals safariSignals:(id)safariSignals completion:(id)completion;
@end

@implementation FRPersonalizationAutoFavoritesOperation

- (BOOL)validateOperation
{
  configurableValues = [(FRPersonalizationAutoFavoritesOperation *)self configurableValues];

  if (!configurableValues && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000696B8();
  }

  subscriptionController = [(FRPersonalizationAutoFavoritesOperation *)self subscriptionController];

  if (!subscriptionController && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100069770();
  }

  tagController = [(FRPersonalizationAutoFavoritesOperation *)self tagController];

  if (!tagController && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100069828();
  }

  userInfo = [(FRPersonalizationAutoFavoritesOperation *)self userInfo];

  if (!userInfo && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000698E0();
  }

  tagRanker = [(FRPersonalizationAutoFavoritesOperation *)self tagRanker];

  if (!tagRanker && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100069998();
  }

  aggregateStore = [(FRPersonalizationAutoFavoritesOperation *)self aggregateStore];

  if (!aggregateStore && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100069A50();
  }

  if (configurableValues)
  {
    v9 = subscriptionController == 0;
  }

  else
  {
    v9 = 1;
  }

  return !v9 && tagController != 0 && userInfo != 0 && tagRanker != 0 && aggregateStore != 0;
}

- (void)prepareOperation
{
  cursor = [(FRPersonalizationAutoFavoritesOperation *)self cursor];
  v3 = [cursor copy];
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
  tagRanker = [(FRPersonalizationAutoFavoritesOperation *)self tagRanker];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100010E98;
  v13[3] = &unk_1000C18D0;
  v5 = v3;
  v14 = v5;
  [tagRanker prepareForUseWithCompletionHandler:v13];

  dispatch_group_enter(v5);
  aggregateStore = [(FRPersonalizationAutoFavoritesOperation *)self aggregateStore];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100010EA0;
  v11[3] = &unk_1000C18D0;
  v7 = v5;
  v12 = v7;
  [aggregateStore prepareAggregatesForUseWithCompletionHandler:v11];

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

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  autoFavoritesCompletionHandler = [(FRPersonalizationAutoFavoritesOperation *)self autoFavoritesCompletionHandler];

  if (autoFavoritesCompletionHandler)
  {
    autoFavoritesCompletionHandler2 = [(FRPersonalizationAutoFavoritesOperation *)self autoFavoritesCompletionHandler];
    resultAutoFavorites = [(FRPersonalizationAutoFavoritesOperation *)self resultAutoFavorites];
    resultCursor = [(FRPersonalizationAutoFavoritesOperation *)self resultCursor];
    (autoFavoritesCompletionHandler2)[2](autoFavoritesCompletionHandler2, resultAutoFavorites, resultCursor, errorCopy);
  }
}

- (void)_processSignals:(id)signals
{
  signalsCopy = signals;
  if (!signalsCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100069B08();
  }

  whitelist = [(FRPersonalizationAutoFavoritesOperation *)self whitelist];
  v6 = whitelist == 0;

  if (v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100069BD0();
  }

  whitelist2 = [(FRPersonalizationAutoFavoritesOperation *)self whitelist];
  v8 = whitelist2 == 0;

  if (v8)
  {
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_100011728;
    v53[3] = &unk_1000C1BD8;
    v53[4] = self;
    v54 = signalsCopy;
    sub_100011728(v53);
  }

  else
  {
    configurableValues = [(FRPersonalizationAutoFavoritesOperation *)self configurableValues];
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
      shortOperationDescription = [(FRPersonalizationAutoFavoritesOperation *)self shortOperationDescription];
      *buf = 138543362;
      v56 = shortOperationDescription;
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
    selfCopy = self;
    [(FRPersonalizationAutoFavoritesOperation *)self _considerExternalSignals:v34];
    v14 = FCOperationLog;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      shortOperationDescription2 = [(FRPersonalizationAutoFavoritesOperation *)self shortOperationDescription];
      *buf = 138543362;
      v56 = shortOperationDescription2;
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
    selfCopy2 = self;
    [(FRPersonalizationAutoFavoritesOperation *)self _considerInternalSignals:v29];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100011A30;
    v20[3] = &unk_1000C1DF8;
    v20[4] = self;
    v17 = configurableValues;
    v21 = v17;
    v23 = v51;
    v24 = v49;
    v25 = v47;
    v26 = v45;
    v27 = v43;
    v28 = v41;
    v22 = signalsCopy;
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

- (void)_findValidAutoFavoritesWithCandidates:(id)candidates channelsAllowedProvider:(id)provider topicsAllowedProvider:(id)allowedProvider completion:(id)completion
{
  providerCopy = provider;
  allowedProviderCopy = allowedProvider;
  completionCopy = completion;
  candidatesCopy = candidates;
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
  [candidatesCopy enumerateObjectsUsingBlock:v39];

  v18 = dispatch_group_create();
  if ([v17 count])
  {
    dispatch_group_enter(v18);
    tagController = [(FRPersonalizationAutoFavoritesOperation *)self tagController];
    [v17 allObjects];
    v20 = v26 = completionCopy;
    qualityOfService = [(FRPersonalizationAutoFavoritesOperation *)self qualityOfService];
    [(FRPersonalizationAutoFavoritesOperation *)self qualityOfService];
    v22 = FCDispatchQueueForQualityOfService();
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1000136E0;
    v34[3] = &unk_1000C1E20;
    v37 = providerCopy;
    v35 = v16;
    v38 = allowedProviderCopy;
    v36 = v18;
    [tagController fetchTagsForTagIDs:v20 qualityOfService:qualityOfService callbackQueue:v22 completionHandler:v34];

    completionCopy = v26;
  }

  if (FCDispatchGroupIsEmpty())
  {
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100013890;
    v31[3] = &unk_1000C1E48;
    v23 = &v33;
    v33 = completionCopy;
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
    v30 = completionCopy;
    v24 = &v29;
    v29 = v16;
    dispatch_group_notify(v18, v25, block);
  }
}

- (void)_considerInternalAppUsage:(id)usage
{
  usageCopy = usage;
  if (!usageCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006A484();
  }

  v5 = +[NSMutableSet set];
  v6 = +[NSMutableSet set];
  configurableValues = [(FRPersonalizationAutoFavoritesOperation *)self configurableValues];
  [configurableValues autoFavoriteMinEvents];
  v9 = v8;
  [configurableValues autoFavoriteMinClicks];
  v11 = v10;
  [configurableValues autoFavoriteMinRate];
  v13 = v12;
  aggregateStore = [(FRPersonalizationAutoFavoritesOperation *)self aggregateStore];
  v15 = [aggregateStore baselineAggregateWithConfigurableValues:configurableValues];

  [configurableValues autoFavoriteMinRelativeRate];
  v17 = v16;
  aggregateStore2 = [(FRPersonalizationAutoFavoritesOperation *)self aggregateStore];
  [aggregateStore2 decayRate];
  [v15 personalizationValueWithBaseline:0 decayRate:?];
  v20 = v17 * v19;

  aggregateStore3 = [(FRPersonalizationAutoFavoritesOperation *)self aggregateStore];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100013B00;
  v28[3] = &unk_1000C1E70;
  v29 = configurableValues;
  selfCopy = self;
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
  v25 = configurableValues;
  [aggregateStore3 enumerateAggregatesUsingBlock:v28];

  if (usageCopy)
  {
    v26 = [v22 copy];
    v27 = [v23 copy];
    usageCopy[2](usageCopy, v26, v27);
  }
}

- (void)considerLocation:(id)location
{
  locationCopy = location;
  v5 = +[NSSet set];
  v6 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    shortOperationDescription = [(FRPersonalizationAutoFavoritesOperation *)self shortOperationDescription];
    *buf = 138543362;
    v28 = shortOperationDescription;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ will consider location", buf, 0xCu);
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100013FAC;
  v25[3] = &unk_1000C1E98;
  v25[4] = self;
  v9 = locationCopy;
  v26 = v9;
  v10 = objc_retainBlock(v25);
  appConfiguration = [(FRPersonalizationAutoFavoritesOperation *)self appConfiguration];
  enableLocationBasedAutofavorites = [appConfiguration enableLocationBasedAutofavorites];

  if (enableLocationBasedAutofavorites)
  {
    locationManager = [(FRPersonalizationAutoFavoritesOperation *)self locationManager];
    mostFrequentLocation = [locationManager mostFrequentLocation];

    v15 = FCOperationLog;
    v16 = os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT);
    if (mostFrequentLocation)
    {
      if (v16)
      {
        v17 = v15;
        shortOperationDescription2 = [(FRPersonalizationAutoFavoritesOperation *)self shortOperationDescription];
        *buf = 138543362;
        v28 = shortOperationDescription2;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ has location; will fetch local areas provider", buf, 0xCu);
      }

      localAreasManager = [(FRPersonalizationAutoFavoritesOperation *)self localAreasManager];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000140A0;
      v22[3] = &unk_1000C1EC0;
      v22[4] = self;
      v23 = mostFrequentLocation;
      v24 = v10;
      [localAreasManager fetchLocalAreasProvider:v22];
    }

    else
    {
      if (v16)
      {
        v20 = v15;
        shortOperationDescription3 = [(FRPersonalizationAutoFavoritesOperation *)self shortOperationDescription];
        *buf = 138543362;
        v28 = shortOperationDescription3;
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
  whitelist = [(FRPersonalizationAutoFavoritesOperation *)self whitelist];
  configurableValues = [(FRPersonalizationAutoFavoritesOperation *)self configurableValues];
  [configurableValues portraitDecayRate];
  v5 = 0.0;
  if (v6 != 0.0)
  {
    [configurableValues portraitDecayRate];
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

  portraitDisabledTagIDs = [whitelist portraitDisabledTagIDs];
  [configurableValues portraitGlobalThreshold];
  v16 = v15;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000143BC;
  v20[3] = &unk_1000C1EE8;
  v21 = configurableValues;
  selfCopy = self;
  v17 = configurableValues;
  v18 = [FRPortraitUtilities candidatePortraitSignalsWithPortraitResults:v12 disbabledTagIDs:portraitDisabledTagIDs globalThreshold:v20 multiplierProvider:&stru_1000C1F28 logBlock:v16];

  return v18;
}

- (void)considerBiome:(id)biome
{
  biomeCopy = biome;
  if (!biomeCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
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
    shortOperationDescription = [(FRPersonalizationAutoFavoritesOperation *)self shortOperationDescription];
    *buf = 138543362;
    v22 = shortOperationDescription;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ will consider Biome", buf, 0xCu);
  }

  configurableValues = [(FRPersonalizationAutoFavoritesOperation *)self configurableValues];
  [configurableValues safariEventBlackoutSeconds];
  v9 = v8;
  configurableValues2 = [(FRPersonalizationAutoFavoritesOperation *)self configurableValues];
  maxExternalSignalEventCount = [configurableValues2 maxExternalSignalEventCount];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000146D0;
  v13[3] = &unk_1000C1F50;
  v15 = v19;
  v16 = v17;
  v13[4] = self;
  v12 = biomeCopy;
  v14 = v12;
  [FCBiomeSignalProvider fetchSignalsFromBiomeWithSafariBlockoutDuration:maxExternalSignalEventCount maxExternalSignalEventCount:v13 resultsBlock:v9];

  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v19, 8);
}

- (void)processAppSignals:(id)signals safariSignals:(id)safariSignals completion:(id)completion
{
  signalsCopy = signals;
  safariSignalsCopy = safariSignals;
  completionCopy = completion;
  if (!signalsCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006A680();
    if (safariSignalsCopy)
    {
      goto LABEL_6;
    }
  }

  else if (safariSignalsCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006A744();
  }

LABEL_6:
  if (!completionCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006A808();
  }

  v11 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    shortOperationDescription = [(FRPersonalizationAutoFavoritesOperation *)self shortOperationDescription];
    *buf = 138543362;
    v75 = shortOperationDescription;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ will process app signals", buf, 0xCu);
  }

  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_100015014;
  v72[3] = &unk_1000C1F78;
  v72[4] = self;
  v14 = completionCopy;
  v73 = v14;
  v15 = objc_retainBlock(v72);
  v16 = [signalsCopy count];
  if ([safariSignalsCopy count] + v16)
  {
    bundleIDMapping = [(FRPersonalizationAutoFavoritesOperation *)self bundleIDMapping];
    if (bundleIDMapping)
    {
      v18 = bundleIDMapping;
      urlMapping = [(FRPersonalizationAutoFavoritesOperation *)self urlMapping];

      if (urlMapping)
      {
        urlMapping2 = [(FRPersonalizationAutoFavoritesOperation *)self urlMapping];
        bundleIDMapping2 = [(FRPersonalizationAutoFavoritesOperation *)self bundleIDMapping];
        v53 = urlMapping2;
        if (!urlMapping2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10006A8CC();
          if (!bundleIDMapping2)
          {
LABEL_17:
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_10006A990();
            }
          }
        }

        else if (!bundleIDMapping2)
        {
          goto LABEL_17;
        }

        v55 = bundleIDMapping2;
        v22 = +[NSUserDefaults standardUserDefaults];
        v23 = [v22 BOOLForKey:FCPersonalizationDisregardTimeForSuggestions];

        configurableValues = [(FRPersonalizationAutoFavoritesOperation *)self configurableValues];
        [configurableValues appUsageSignalWeight];
        v26 = v25;
        [configurableValues appUsageTimeDecayMultiplier];
        if ((v23 & 1) == 0)
        {
          v28 = v27;
          firstObject = [signalsCopy firstObject];
          date = [firstObject date];
          [date fc_timeIntervalUntilNow];
          v26 = v26 * pow(v28, v31 / 86400.0);
        }

        v57 = v14;
        [configurableValues safariSignalWeight];
        v33 = v32;
        v52 = configurableValues;
        [configurableValues safariTimeDecayMultiplier];
        if ((v23 & 1) == 0)
        {
          v35 = v34;
          firstObject2 = [safariSignalsCopy firstObject];
          date2 = [firstObject2 date];
          [date2 fc_timeIntervalUntilNow];
          v33 = v33 * pow(v35, v38 / 86400.0);
        }

        v39 = objc_opt_new();
        v40 = objc_opt_new();
        cursor = [(FRPersonalizationAutoFavoritesOperation *)self cursor];
        coreDuetLastQueryDate = [cursor coreDuetLastQueryDate];

        v64[0] = _NSConcreteStackBlock;
        v64[1] = 3221225472;
        v64[2] = sub_10001526C;
        v64[3] = &unk_1000C20A8;
        v71 = v23;
        v65 = v55;
        v70 = &stru_1000C1FB8;
        v43 = v40;
        v66 = v43;
        v67 = coreDuetLastQueryDate;
        v68 = v53;
        v44 = v39;
        v69 = v44;
        v54 = v53;
        v51 = coreDuetLastQueryDate;
        v56 = v55;
        v45 = objc_retainBlock(v64);
        v61[0] = _NSConcreteStackBlock;
        v61[1] = 3221225472;
        v61[2] = sub_1000158C8;
        v61[3] = &unk_1000C20D0;
        v63 = v26;
        v46 = v52;
        v62 = v46;
        (v45[2])(v45, signalsCopy, v61);
        v58[0] = _NSConcreteStackBlock;
        v58[1] = 3221225472;
        v58[2] = sub_100015908;
        v58[3] = &unk_1000C20D0;
        v60 = v33;
        v59 = v46;
        v47 = v45[2];
        v48 = v46;
        v47(v45, safariSignalsCopy, v58);
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

- (id)processExternalAppUsageSignals:(id)signals
{
  signalsCopy = signals;
  configurableValues = [(FRPersonalizationAutoFavoritesOperation *)self configurableValues];
  v25 = +[NSMutableSet set];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = signalsCopy;
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
        [configurableValues autoFavoriteMinObservationsExtAppUsage];
        if (v14 <= v13)
        {
          [configurableValues appUsagePriorFactorExponent];
          v16 = v15;
          [configurableValues appUsageTagFavorabilityExponent];
          [(FRPersonalizationAutoFavoritesOperation *)self metricMultiplierForTagID:v11 withPriorFactorExponent:v16 tagFavorabilityExponent:v17];
          v19 = v18;
          v20 = [v12 valueForKeyPath:@"@sum.self"];
          [v20 doubleValue];
          v22 = v19 * v21;

          [configurableValues autoFavoriteMinScoreExtAppUsage];
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

- (id)processSafariSignals:(id)signals
{
  signalsCopy = signals;
  configurableValues = [(FRPersonalizationAutoFavoritesOperation *)self configurableValues];
  favorabilityScores = [(FRPersonalizationAutoFavoritesOperation *)self favorabilityScores];
  if (!favorabilityScores)
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
  v14 = signalsCopy;
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
        [configurableValues autoFavoriteMinObservationsSafari];
        if (v22 <= v21)
        {
          [configurableValues safariPriorFactorExponent];
          v24 = v23;
          [configurableValues safariTagFavorabilityExponent];
          [(FRPersonalizationAutoFavoritesOperation *)self metricMultiplierForTagID:v19 withPriorFactorExponent:v24 tagFavorabilityExponent:v25];
          v27 = v26;
          v28 = [v20 valueForKeyPath:@"@sum.self"];
          [v28 doubleValue];
          v30 = v27 * v29;

          [configurableValues autoFavoriteMinScoreSafari];
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

- (void)_considerInternalSignals:(id)signals
{
  signalsCopy = signals;
  if (!signalsCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
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
    resultCursor = [(FRPersonalizationAutoFavoritesOperation *)self resultCursor];
    [resultCursor setLastInternalSignalProcessingDate:v15];

    if (!signalsCopy)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  cursor = [(FRPersonalizationAutoFavoritesOperation *)self cursor];
  lastInternalSignalProcessingDate = [cursor lastInternalSignalProcessingDate];
  if (!lastInternalSignalProcessingDate)
  {

    goto LABEL_10;
  }

  v8 = lastInternalSignalProcessingDate;
  cursor2 = [(FRPersonalizationAutoFavoritesOperation *)self cursor];
  lastInternalSignalProcessingDate2 = [cursor2 lastInternalSignalProcessingDate];
  [lastInternalSignalProcessingDate2 fc_timeIntervalUntilNow];
  v12 = v11;
  [(FRPersonalizationAutoFavoritesOperation *)self signalProcessingTimeInterval];
  v14 = v13;

  if (v12 > v14)
  {
    goto LABEL_10;
  }

  if (!signalsCopy)
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
    v22 = signalsCopy;
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
    v20 = signalsCopy;
    dispatch_group_notify(v5, v18, v19);
  }

LABEL_15:
}

- (void)_considerExternalSignals:(id)signals
{
  signalsCopy = signals;
  if (!signalsCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006AC14();
  }

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100016514;
  v30[3] = &unk_1000C2120;
  v5 = signalsCopy;
  v31 = v5;
  v6 = objc_retainBlock(v30);
  userInfo = [(FRPersonalizationAutoFavoritesOperation *)self userInfo];
  progressivePersonalization = [userInfo progressivePersonalization];

  if (progressivePersonalization)
  {
    if (progressivePersonalization == 1)
    {
      v19 = +[NSSet set];
      v20 = +[NSSet set];
      v21 = +[NSSet set];
      v22 = +[NSSet set];
      (v6[2])(v6, v19, v20, v21, v22);
    }

    else if (progressivePersonalization == 2)
    {
      v9 = dispatch_group_create();
      if (![(FRPersonalizationAutoFavoritesOperation *)self disregardCache])
      {
        cursor = [(FRPersonalizationAutoFavoritesOperation *)self cursor];
        lastExternalSignalProcessingDate = [cursor lastExternalSignalProcessingDate];
        if (lastExternalSignalProcessingDate)
        {
          v12 = lastExternalSignalProcessingDate;
          cursor2 = [(FRPersonalizationAutoFavoritesOperation *)self cursor];
          lastExternalSignalProcessingDate2 = [cursor2 lastExternalSignalProcessingDate];
          [lastExternalSignalProcessingDate2 fc_timeIntervalUntilNow];
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

      maybeConsiderPortrait = [(FRPersonalizationAutoFavoritesOperation *)self maybeConsiderPortrait];
      resultCursor = [(FRPersonalizationAutoFavoritesOperation *)self resultCursor];
      [resultCursor setLastPortraitAutoFavoriteResults:maybeConsiderPortrait];

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

- (double)metricMultiplierForTagID:(id)d withPriorFactorExponent:(double)exponent tagFavorabilityExponent:(double)favorabilityExponent
{
  dCopy = d;
  whitelist = [(FRPersonalizationAutoFavoritesOperation *)self whitelist];
  configurableValues = [(FRPersonalizationAutoFavoritesOperation *)self configurableValues];
  defaultScoringConfig = [configurableValues defaultScoringConfig];
  [defaultScoringConfig baselineRatePrior];
  FCPersonalizationBaselineClicksMultiplerForTagID();
  v13 = v12;

  v14 = pow(v13, exponent);
  favorabilityScores = [(FRPersonalizationAutoFavoritesOperation *)self favorabilityScores];
  v16 = [favorabilityScores scoreForTagID:dCopy];

  if (v16)
  {
    [v16 doubleValue];
    v18 = v17;
    v19 = 0.0;
    if (v18 != 0.0)
    {
      [v16 doubleValue];
      v19 = pow(v20, favorabilityExponent);
    }

    v14 = v14 * v19;
    v21 = FCProgressivePersonalizationLog;
    if (os_log_type_enabled(FCProgressivePersonalizationLog, OS_LOG_TYPE_DEBUG))
    {
      sub_10006AD90(v16, dCopy, v21);
    }
  }

  else
  {
    v22 = FCProgressivePersonalizationLog;
    if (os_log_type_enabled(FCProgressivePersonalizationLog, OS_LOG_TYPE_DEBUG))
    {
      sub_10006AE18(dCopy, v22);
    }
  }

  return v14;
}

- (double)ctrForTagID:(id)d withAggregate:(id)aggregate baselineAggregate:(id)baselineAggregate
{
  baselineAggregateCopy = baselineAggregate;
  aggregateCopy = aggregate;
  dCopy = d;
  configurableValues = [(FRPersonalizationAutoFavoritesOperation *)self configurableValues];
  whitelist = [(FRPersonalizationAutoFavoritesOperation *)self whitelist];
  configurableValues2 = [(FRPersonalizationAutoFavoritesOperation *)self configurableValues];
  defaultScoringConfig = [configurableValues2 defaultScoringConfig];
  [defaultScoringConfig baselineRatePrior];
  FCPersonalizationBaselineClicksMultiplerForTagID();

  aggregateStore = [(FRPersonalizationAutoFavoritesOperation *)self aggregateStore];
  [aggregateStore decayRate];
  [aggregateCopy personalizationValueWithBaseline:baselineAggregateCopy decayRate:? baselineClicksMultiplier:?];
  v17 = v16;

  return v17;
}

- (BOOL)shouldAcceptAggregate:(id)aggregate withCtr:(double)ctr minEvents:(double)events minClicks:(double)clicks minRate:(double)rate baseRate:(double)baseRate multiplier:(double)multiplier
{
  aggregateCopy = aggregate;
  eventCount = [aggregateCopy eventCount];
  [aggregateCopy clicks];
  v18 = v17;

  v19 = ctr * multiplier;
  v20 = eventCount * multiplier >= events;
  if (v18 * multiplier < clicks)
  {
    v20 = 0;
  }

  v21 = v19 >= rate;
  if (v19 < baseRate)
  {
    v21 = 0;
  }

  return v21 && v20;
}

- (BOOL)shouldRejectTagID:(id)d withAggregate:(id)aggregate baseline:(id)baseline currentDate:(id)date addedDate:(id)addedDate maxIdleTime:(double)time minEvents:(double)events minRate:(double)self0 baseRate:(double)self1 multiplier:(double)self2
{
  dCopy = d;
  aggregateCopy = aggregate;
  baselineCopy = baseline;
  dateCopy = date;
  addedDateCopy = addedDate;
  v27 = addedDateCopy;
  if (dCopy)
  {
    if (aggregateCopy)
    {
      eventCount = [aggregateCopy eventCount];
      [(FRPersonalizationAutoFavoritesOperation *)self ctrForTagID:dCopy withAggregate:aggregateCopy baselineAggregate:baselineCopy];
      if (events * multiplier <= eventCount)
      {
        LOBYTE(lastModified) = fmax(rate, baseRate) > v29 * multiplier;
      }

      else
      {
        lastModified = [aggregateCopy lastModified];
        v30 = [dateCopy fc_isWithinTimeInterval:lastModified ofDate:time];

        LOBYTE(lastModified) = v30 ^ 1;
      }
    }

    else if (addedDateCopy)
    {
      LODWORD(lastModified) = [dateCopy fc_isWithinTimeInterval:addedDateCopy ofDate:time] ^ 1;
    }

    else
    {
      LOBYTE(lastModified) = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006AE90();
    }

    LOBYTE(lastModified) = 1;
  }

  return lastModified;
}

- (id)auditCandidates:(id)candidates autoSubscriptionAddedDateByTagId:(id)id multiplierProvider:(id)provider
{
  idCopy = id;
  providerCopy = provider;
  candidatesCopy = candidates;
  configurableValues = [(FRPersonalizationAutoFavoritesOperation *)self configurableValues];
  v11 = +[NSDate date];
  [configurableValues autoFavoriteMaxIdleTime];
  v13 = v12;
  [configurableValues autoFavoriteMinEvents];
  v15 = v14;
  [configurableValues autoFavoriteMinRate];
  v17 = v16;
  aggregateStore = [(FRPersonalizationAutoFavoritesOperation *)self aggregateStore];
  v19 = [aggregateStore baselineAggregateWithConfigurableValues:configurableValues];

  aggregateStore2 = [(FRPersonalizationAutoFavoritesOperation *)self aggregateStore];
  [aggregateStore2 decayRate];
  v22 = v21;

  [configurableValues autoFavoriteMinRelativeRate];
  v24 = v23;
  [v19 personalizationValueWithBaseline:0 decayRate:v22];
  v26 = v24 * v25;
  aggregateStore3 = [(FRPersonalizationAutoFavoritesOperation *)self aggregateStore];
  allObjects = [candidatesCopy allObjects];
  v29 = [FCTagIDFeature featuresFromTagIDs:allObjects];
  v30 = [aggregateStore3 aggregatesForFeatures:v29];

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
  v43 = idCopy;
  v44 = providerCopy;
  v31 = providerCopy;
  v32 = idCopy;
  v33 = v11;
  v34 = v19;
  v35 = v30;
  v36 = [candidatesCopy fc_setByTransformingWithBlock:v39];

  return v36;
}

@end