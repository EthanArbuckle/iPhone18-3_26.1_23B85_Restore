@interface ADSyncCoordinatorPersonalDevices
- (ADSyncCoordinatorPersonalDevices)init;
- (BOOL)addAggregationIdForUser:(id)user aggregationId:(id)id;
- (BOOL)addSeedForUser:(id)user seed:(id)seed;
- (id)fetchSynchronizedAnalyticsIdsForHome:(id)home;
- (id)fetchSynchronizedAnalyticsIdsForUser:(id)user;
@end

@implementation ADSyncCoordinatorPersonalDevices

- (id)fetchSynchronizedAnalyticsIdsForUser:(id)user
{
  v3 = +[NSDate now];
  v4 = [ADBiomeStreamProcessor processorForBMSiriUserSeed:v3 userId:0];
  fetchIdItemPair = [v4 fetchIdItemPair];
  v6 = [ADBiomeStreamProcessor processorForBMSiriUserAggregationId:v3 userId:0];
  fetchIdItemPair2 = [v6 fetchIdItemPair];
  v8 = [[ADSynchronizedUserAnalyticsIds alloc] initWithUserEphemeralSeeds:fetchIdItemPair andUserAggregationIds:fetchIdItemPair2];

  return v8;
}

- (id)fetchSynchronizedAnalyticsIdsForHome:(id)home
{
  homeCopy = home;
  if (!homeCopy)
  {
    homeCopy = self->_currentHomeId;
  }

  v5 = +[ADAnalyticsIdentifiersUtils idWhenNotPartOfHome];
  v6 = [(NSUUID *)homeCopy isEqual:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = +[NSDate now];
    v9 = [ADBiomeStreamProcessor processorForBMSiriHomeSeed:v8 homeId:homeCopy userId:0];
    fetchIdItemPair = [v9 fetchIdItemPair];
    v7 = [[ADSynchronizedHomeAnalyticsIds alloc] initWithHomeEphemeralSeeds:fetchIdItemPair];
  }

  return v7;
}

- (BOOL)addSeedForUser:(id)user seed:(id)seed
{
  seedCopy = seed;
  v5 = BiomeLibrary();
  siri = [v5 Siri];
  analyticsIdentifiers = [siri AnalyticsIdentifiers];
  userSeed = [analyticsIdentifiers UserSeed];

  source = [userSeed source];
  toBMSiriUserSeed = [seedCopy toBMSiriUserSeed];

  [source sendEvent:toBMSiriUserSeed];
  return 1;
}

- (BOOL)addAggregationIdForUser:(id)user aggregationId:(id)id
{
  idCopy = id;
  v5 = BiomeLibrary();
  siri = [v5 Siri];
  analyticsIdentifiers = [siri AnalyticsIdentifiers];
  userAggregationId = [analyticsIdentifiers UserAggregationId];

  source = [userAggregationId source];
  toBMSiriUserAggregationId = [idCopy toBMSiriUserAggregationId];

  [source sendEvent:toBMSiriUserAggregationId];
  return 1;
}

- (ADSyncCoordinatorPersonalDevices)init
{
  v15.receiver = self;
  v15.super_class = ADSyncCoordinatorPersonalDevices;
  v2 = [(ADSyncCoordinatorPersonalDevices *)&v15 init];
  if (v2)
  {
    v3 = +[ADAnalyticsIdentifiersUtils logger];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Initializing ADSyncCoordinatorPersonalDevices", buf, 2u);
    }

    v2->_multiUserDevice = 0;
    defaultUserId = v2->_defaultUserId;
    v2->_defaultUserId = @"singleUserDevice";

    v5 = +[ADHomeInfoManager sharedInfoManager];
    currentHome = [v5 currentHome];

    if (currentHome)
    {
      uniqueIdentifier = [currentHome uniqueIdentifier];
      currentHomeId = v2->_currentHomeId;
      v2->_currentHomeId = uniqueIdentifier;

      v9 = 1;
    }

    else
    {
      v9 = 0;
    }

    if (!v2->_currentHomeId)
    {
      v10 = +[ADAnalyticsIdentifiersUtils idWhenNotPartOfHome];
      v11 = v2->_currentHomeId;
      v2->_currentHomeId = v10;
    }

    v12 = +[ADAnalyticsIdentifiersUtils logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v14 = v2->_currentHomeId;
      *buf = 67109378;
      v17 = v9;
      v18 = 2112;
      v19 = v14;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Initializing Home details; partOfHome:%d currentHomeId:%@", buf, 0x12u);
    }
  }

  return v2;
}

@end