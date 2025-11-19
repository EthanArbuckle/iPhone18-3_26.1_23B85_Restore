@interface ADSyncCoordinatorPersonalDevices
- (ADSyncCoordinatorPersonalDevices)init;
- (BOOL)addAggregationIdForUser:(id)a3 aggregationId:(id)a4;
- (BOOL)addSeedForUser:(id)a3 seed:(id)a4;
- (id)fetchSynchronizedAnalyticsIdsForHome:(id)a3;
- (id)fetchSynchronizedAnalyticsIdsForUser:(id)a3;
@end

@implementation ADSyncCoordinatorPersonalDevices

- (id)fetchSynchronizedAnalyticsIdsForUser:(id)a3
{
  v3 = +[NSDate now];
  v4 = [ADBiomeStreamProcessor processorForBMSiriUserSeed:v3 userId:0];
  v5 = [v4 fetchIdItemPair];
  v6 = [ADBiomeStreamProcessor processorForBMSiriUserAggregationId:v3 userId:0];
  v7 = [v6 fetchIdItemPair];
  v8 = [[ADSynchronizedUserAnalyticsIds alloc] initWithUserEphemeralSeeds:v5 andUserAggregationIds:v7];

  return v8;
}

- (id)fetchSynchronizedAnalyticsIdsForHome:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = self->_currentHomeId;
  }

  v5 = +[ADAnalyticsIdentifiersUtils idWhenNotPartOfHome];
  v6 = [(NSUUID *)v4 isEqual:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = +[NSDate now];
    v9 = [ADBiomeStreamProcessor processorForBMSiriHomeSeed:v8 homeId:v4 userId:0];
    v10 = [v9 fetchIdItemPair];
    v7 = [[ADSynchronizedHomeAnalyticsIds alloc] initWithHomeEphemeralSeeds:v10];
  }

  return v7;
}

- (BOOL)addSeedForUser:(id)a3 seed:(id)a4
{
  v4 = a4;
  v5 = BiomeLibrary();
  v6 = [v5 Siri];
  v7 = [v6 AnalyticsIdentifiers];
  v8 = [v7 UserSeed];

  v9 = [v8 source];
  v10 = [v4 toBMSiriUserSeed];

  [v9 sendEvent:v10];
  return 1;
}

- (BOOL)addAggregationIdForUser:(id)a3 aggregationId:(id)a4
{
  v4 = a4;
  v5 = BiomeLibrary();
  v6 = [v5 Siri];
  v7 = [v6 AnalyticsIdentifiers];
  v8 = [v7 UserAggregationId];

  v9 = [v8 source];
  v10 = [v4 toBMSiriUserAggregationId];

  [v9 sendEvent:v10];
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
    v6 = [v5 currentHome];

    if (v6)
    {
      v7 = [v6 uniqueIdentifier];
      currentHomeId = v2->_currentHomeId;
      v2->_currentHomeId = v7;

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