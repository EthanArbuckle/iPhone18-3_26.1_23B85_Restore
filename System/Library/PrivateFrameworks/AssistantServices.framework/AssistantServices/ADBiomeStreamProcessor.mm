@interface ADBiomeStreamProcessor
+ (id)processorForBMSiriHomeSeed:(id)seed homeId:(id)id account:(id)account;
+ (id)processorForBMSiriHomeSeed:(id)seed homeId:(id)id userId:(id)userId;
+ (id)processorForBMSiriUserAggregationId:(id)id userId:(id)userId;
+ (id)processorForBMSiriUserSeed:(id)seed userId:(id)id;
- (ADBiomeStreamProcessor)initWithStream:(id)stream fromBM:(id)m toBM:(id)bM time:(id)time account:(id)account homeId:(id)id remoteDeviceTypes:(unint64_t)types;
- (ADBiomeStreamProcessor)initWithStream:(id)stream fromBM:(id)m toBM:(id)bM time:(id)time userId:(id)id homeId:(id)homeId remoteDeviceTypes:(unint64_t)types;
- (id)_merge:(id)_merge with:(id)with;
- (id)_mergeRemotes:(id)remotes;
- (id)_processPerDeviceEvents:(id)events;
- (id)fetchIdItemPair;
- (id)fetchLocalIdItemPair;
@end

@implementation ADBiomeStreamProcessor

- (id)_processPerDeviceEvents:(id)events
{
  eventsCopy = events;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001C931C;
  v17[3] = &unk_100515AB8;
  v17[4] = self;
  v17[5] = v26;
  v5 = [eventsCopy filterWithIsIncluded:v17];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001C9440;
  v16[3] = &unk_100515AE0;
  v16[4] = self;
  v6 = [v5 mapWithTransform:v16];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001C94A8;
  v15[3] = &unk_100515B08;
  v15[4] = v20;
  v15[5] = v18;
  v7 = [v6 filterWithIsIncluded:v15];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001C94DC;
  v14[3] = &unk_100515B30;
  v14[4] = self;
  v14[5] = v24;
  v8 = [v7 filterWithIsIncluded:v14];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001C952C;
  v13[3] = &unk_100515B58;
  v13[4] = self;
  v13[5] = v22;
  v13[6] = v20;
  v13[7] = v18;
  v9 = [v8 mapWithTransform:v13];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001C96B0;
  v12[3] = &unk_100515B80;
  v12[4] = self;
  v10 = [v9 reduceWithInitial:0 nextPartialResult:v12];

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v20, 8);
  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);
  _Block_object_dispose(v26, 8);

  return v10;
}

- (id)_mergeRemotes:(id)remotes
{
  remotesCopy = remotes;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1001C9870;
  v17 = sub_1001C9880;
  v18 = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 0;
  merge = [remotesCopy merge];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001C9888;
  v10[3] = &unk_100515A68;
  v10[4] = v11;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001C99D0;
  v9[3] = &unk_100515A90;
  v9[5] = v11;
  v9[6] = &v13;
  v9[4] = self;
  v6 = [merge sinkWithCompletion:v10 receiveInput:v9];

  v7 = v14[5];
  _Block_object_dispose(v11, 8);
  _Block_object_dispose(&v13, 8);

  return v7;
}

- (id)_merge:(id)_merge with:(id)with
{
  _mergeCopy = _merge;
  withCopy = with;
  v7 = +[ADAnalyticsIdentifiersUtils logger];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (_mergeCopy)
  {
    if (v8)
    {
      v12 = 138412290;
      v13 = withCopy;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Attempting to merge %@", &v12, 0xCu);
    }

    v9 = [_mergeCopy selectEarliest:withCopy];
    if (v9 != _mergeCopy)
    {
      v10 = +[ADAnalyticsIdentifiersUtils logger];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v12 = 138412290;
        v13 = v9;
        _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Merged into %@", &v12, 0xCu);
      }
    }
  }

  else
  {
    if (v8)
    {
      v12 = 138412290;
      v13 = withCopy;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Starting merge with %@", &v12, 0xCu);
    }

    v9 = withCopy;
  }

  return v9;
}

- (id)fetchLocalIdItemPair
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1001C9870;
  v16 = sub_1001C9880;
  v17 = 0;
  v3 = +[ADAnalyticsIdentifiersUtils logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Processing local events", buf, 2u);
  }

  v4 = [[BMPublisherOptions alloc] initWithStartDate:0 endDate:0 maxEvents:10 lastN:0 reversed:1];
  v5 = [(BMStream *)self->_stream publisherWithUseCase:@"PrivacyFriendlyAnalyticsIdentifiersProvider" options:v4];
  v6 = [(ADBiomeStreamProcessor *)self _processPerDeviceEvents:v5];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001C9DC0;
  v10[3] = &unk_100515A40;
  v10[4] = &v12;
  v7 = [v6 sinkWithCompletion:&stru_100515A18 receiveInput:v10];

  v8 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v8;
}

- (id)fetchIdItemPair
{
  fetchLocalIdItemPair = [(ADBiomeStreamProcessor *)self fetchLocalIdItemPair];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1001CA560;
  v39[3] = &unk_1005159D0;
  v39[4] = self;
  v4 = objc_retainBlock(v39);
  if (self->_accountId)
  {
    v5 = objc_alloc_init(BMPublisherOptions);
    stream = self->_stream;
    v7 = [NSArray arrayWithObject:self->_accountId];
    v8 = [(BMStream *)stream publishersForAccounts:v7 deviceTypes:self->_remoteDeviceTypes includeLocal:0 options:v5 useCase:@"PrivacyFriendlyAnalyticsIdentifiersProvider" pipeline:v4];

    v9 = [BMPublishers alloc];
    publishers = [v8 publishers];
    v11 = [v9 initWithPublishers:publishers];
  }

  else
  {
    v12 = self->_stream;
    v38 = 0;
    v13 = [(BMStream *)v12 remoteDevicesWithError:&v38];
    v5 = v38;
    if (v5)
    {
      v14 = +[ADAnalyticsIdentifiersUtils logger];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v41 = v5;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Fetching list of remote devices failed: %@", buf, 0xCu);
      }
    }

    v15 = +[ADAnalyticsIdentifiersUtils logger];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v41 = v13;
      _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Known remote devices: %@", buf, 0xCu);
    }

    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1001CA56C;
    v37[3] = &unk_1005159F8;
    v37[4] = self;
    v16 = [NSPredicate predicateWithBlock:v37];
    v8 = [v13 filteredArrayUsingPredicate:v16];

    v17 = +[ADAnalyticsIdentifiersUtils logger];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v41 = v8;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Filtered remote devices: %@", buf, 0xCu);
    }

    v18 = self->_stream;
    publishers = [NSNumber numberWithUnsignedLongLong:10];
    LOWORD(v36) = 1;
    v11 = [(BMStream *)v18 publishersForDevices:v8 withUseCase:@"PrivacyFriendlyAnalyticsIdentifiersProvider" startTime:0 endTime:0 maxEvents:publishers lastN:0 reversed:v36 includeLocal:v4 pipeline:?];
  }

  v19 = v11;

  v20 = [(ADBiomeStreamProcessor *)self _mergeRemotes:v19];
  v21 = v20;
  if (!(fetchLocalIdItemPair | v20))
  {
    v22 = +[ADAnalyticsIdentifiersUtils logger];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "No local or remote entries", buf, 2u);
    }

    v23 = 0;
    goto LABEL_34;
  }

  if (v20)
  {
    if (fetchLocalIdItemPair)
    {
      v23 = [fetchLocalIdItemPair adoptRemoteIfEarly:v20];
      source = +[ADAnalyticsIdentifiersUtils logger];
      v25 = os_log_type_enabled(source, OS_LOG_TYPE_DEBUG);
      if (v23 == fetchLocalIdItemPair)
      {
        if (v25)
        {
          *buf = 138412546;
          v41 = v21;
          v42 = 2112;
          v43 = fetchLocalIdItemPair;
          _os_log_debug_impl(&_mh_execute_header, source, OS_LOG_TYPE_DEBUG, "Discarding remote: %@; keeping local: %@", buf, 0x16u);
        }

        goto LABEL_33;
      }

      if (v25)
      {
        *buf = 138412546;
        v41 = fetchLocalIdItemPair;
        v42 = 2112;
        v43 = v21;
        _os_log_debug_impl(&_mh_execute_header, source, OS_LOG_TYPE_DEBUG, "Discarding local: %@; keeping remote: %@", buf, 0x16u);
      }
    }

    else
    {
      v27 = +[ADAnalyticsIdentifiersUtils logger];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v41 = v21;
        _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "Only remote entry is present: %@", buf, 0xCu);
      }

      v23 = [[ADSynchronizedIdItemPair alloc] initWithRemote:v21];
    }

    v28 = +[ADAnalyticsIdentifiersUtils logger];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "Publishing the selected entries", buf, 2u);
    }

    source = [(BMStream *)self->_stream source];
    toBMMapper = self->_toBMMapper;
    current = [(ADSynchronizedIdItemPair *)v23 current];
    v31 = toBMMapper[2](toBMMapper, current);
    [source sendEvent:v31];

    v32 = self->_toBMMapper;
    next = [(ADSynchronizedIdItemPair *)v23 next];
    v34 = v32[2](v32, next);
    [source sendEvent:v34];

LABEL_33:
    goto LABEL_34;
  }

  v26 = +[ADAnalyticsIdentifiersUtils logger];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v41 = fetchLocalIdItemPair;
    _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "Only local entry is present: %@", buf, 0xCu);
  }

  v23 = fetchLocalIdItemPair;
LABEL_34:

  return v23;
}

- (ADBiomeStreamProcessor)initWithStream:(id)stream fromBM:(id)m toBM:(id)bM time:(id)time account:(id)account homeId:(id)id remoteDeviceTypes:(unint64_t)types
{
  streamCopy = stream;
  mCopy = m;
  bMCopy = bM;
  timeCopy = time;
  accountCopy = account;
  idCopy = id;
  v21 = +[ADAnalyticsIdentifiersUtils logger];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v42 = streamCopy;
    v43 = 2112;
    v44 = idCopy;
    v45 = 2112;
    v46 = accountCopy;
    _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Initializing BiomeProcessor for stream:%@ homeId:%@ accountId:%@", buf, 0x20u);
  }

  v40.receiver = self;
  v40.super_class = ADBiomeStreamProcessor;
  v22 = [(ADBiomeStreamProcessor *)&v40 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_stream, stream);
    v24 = objc_retainBlock(mCopy);
    fromBMMapper = v23->_fromBMMapper;
    v23->_fromBMMapper = v24;

    v26 = objc_retainBlock(bMCopy);
    toBMMapper = v23->_toBMMapper;
    v23->_toBMMapper = v26;

    v28 = +[ADSynchronizedIdItem calendar];
    calendar = v23->_calendar;
    v23->_calendar = v28;

    v30 = [ADSynchronizedIdItem alignToMidnight:timeCopy];
    today = v23->_today;
    v23->_today = v30;

    objc_storeStrong(&v23->_accountId, account);
    objc_storeStrong(&v23->_homeId, id);
    homeId = v23->_homeId;
    if (homeId)
    {
      v33 = v38;
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_1001CA84C;
      v38[3] = &unk_1005159A8;
      account = &v39;
      v39 = idCopy;
    }

    else
    {
      v33 = 0;
    }

    v34 = objc_retainBlock(v33);
    homeFilter = v23->_homeFilter;
    v23->_homeFilter = v34;

    v23->_remoteDeviceTypes = types;
    if (homeId)
    {
    }
  }

  return v23;
}

- (ADBiomeStreamProcessor)initWithStream:(id)stream fromBM:(id)m toBM:(id)bM time:(id)time userId:(id)id homeId:(id)homeId remoteDeviceTypes:(unint64_t)types
{
  idCopy = id;
  homeIdCopy = homeId;
  timeCopy = time;
  bMCopy = bM;
  mCopy = m;
  streamCopy = stream;
  if (idCopy)
  {
    v21 = [[BMAccount alloc] initWithAccountIdentifier:idCopy];
    v22 = [(ADBiomeStreamProcessor *)self initWithStream:streamCopy fromBM:mCopy toBM:bMCopy time:timeCopy account:v21 homeId:homeIdCopy remoteDeviceTypes:types];

    v23 = v22;
  }

  else
  {
    v24 = [(ADBiomeStreamProcessor *)self initWithStream:streamCopy fromBM:mCopy toBM:bMCopy time:timeCopy account:0 homeId:homeIdCopy remoteDeviceTypes:types];

    v23 = v24;
  }

  return v23;
}

+ (id)processorForBMSiriHomeSeed:(id)seed homeId:(id)id account:(id)account
{
  idCopy = id;
  accountCopy = account;
  seedCopy = seed;
  v10 = +[ADAnalyticsIdentifiersUtils logger];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v26 = idCopy;
    v27 = 2112;
    v28 = accountCopy;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Initializing HomeSeed BiomeStreamProcessor for homeId:%@ account:%@", buf, 0x16u);
  }

  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_1001CAC0C;
  v23 = &unk_100515980;
  v24 = idCopy;
  v11 = idCopy;
  v12 = objc_retainBlock(&v20);
  v13 = [ADBiomeStreamProcessor alloc];
  v14 = BiomeLibrary();
  siri = [v14 Siri];
  analyticsIdentifiers = [siri AnalyticsIdentifiers];
  homeSeed = [analyticsIdentifiers HomeSeed];
  v18 = [(ADBiomeStreamProcessor *)v13 initWithStream:homeSeed fromBM:&stru_100515958 toBM:v12 time:seedCopy account:accountCopy homeId:v11 remoteDeviceTypes:160, v20, v21, v22, v23];

  return v18;
}

+ (id)processorForBMSiriHomeSeed:(id)seed homeId:(id)id userId:(id)userId
{
  seedCopy = seed;
  idCopy = id;
  userIdCopy = userId;
  v11 = +[ADAnalyticsIdentifiersUtils logger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138412546;
    v16 = idCopy;
    v17 = 2112;
    v18 = userIdCopy;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Initializing HomeSeed BiomeStreamProcessor for homeId:%@ userId:%@", &v15, 0x16u);
  }

  if (userIdCopy)
  {
    v12 = [[BMAccount alloc] initWithAltDSID:userIdCopy];
    v13 = [self processorForBMSiriHomeSeed:seedCopy homeId:idCopy account:v12];
  }

  else
  {
    v13 = [self processorForBMSiriHomeSeed:seedCopy homeId:idCopy account:0];
  }

  return v13;
}

+ (id)processorForBMSiriUserAggregationId:(id)id userId:(id)userId
{
  userIdCopy = userId;
  idCopy = id;
  v7 = +[ADAnalyticsIdentifiersUtils logger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v16 = userIdCopy;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Initializing UserAggregationId BiomeStreamProcessor for userId:%@", buf, 0xCu);
  }

  v8 = [ADBiomeStreamProcessor alloc];
  v9 = BiomeLibrary();
  siri = [v9 Siri];
  analyticsIdentifiers = [siri AnalyticsIdentifiers];
  userAggregationId = [analyticsIdentifiers UserAggregationId];
  v13 = [(ADBiomeStreamProcessor *)v8 initWithStream:userAggregationId fromBM:&stru_1005158D8 toBM:&stru_100515918 time:idCopy userId:userIdCopy homeId:0 remoteDeviceTypes:94];

  return v13;
}

+ (id)processorForBMSiriUserSeed:(id)seed userId:(id)id
{
  idCopy = id;
  seedCopy = seed;
  v7 = +[ADAnalyticsIdentifiersUtils logger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v16 = idCopy;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Initializing UserSeed BiomeStreamProcessor for userId:%@", buf, 0xCu);
  }

  v8 = [ADBiomeStreamProcessor alloc];
  v9 = BiomeLibrary();
  siri = [v9 Siri];
  analyticsIdentifiers = [siri AnalyticsIdentifiers];
  userSeed = [analyticsIdentifiers UserSeed];
  v13 = [(ADBiomeStreamProcessor *)v8 initWithStream:userSeed fromBM:&stru_100515858 toBM:&stru_100515898 time:seedCopy userId:idCopy homeId:0 remoteDeviceTypes:94];

  return v13;
}

@end