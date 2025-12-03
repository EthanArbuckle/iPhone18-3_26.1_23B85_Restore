@interface ADAnalyticsIdentifiersProvider
+ (ADAnalyticsIdentifiersProvider)sharedInstance;
+ (id)_alignToRotationCadence:(id)cadence;
+ (id)_createHomeEphemeralIdWithHomeSeed:(id)seed withCreationTime:(id)time;
+ (id)_createUserEphemeralIdWithUserSeed:(id)seed withCreationTime:(id)time;
+ (id)_homeEphemeralIdNamespace;
+ (id)_timestampToNSString:(id)string;
+ (id)_userEphemeralIdNamespace;
+ (int64_t)_computeSecondsSinceBirth:(id)birth;
- (BOOL)_isAggregationIdRefreshRequired:(id)required forTime:(id)time;
- (BOOL)_isEphemeralIdRefreshRequired:(id)required forTime:(id)time;
- (id)_combineUUIDsWithUuid1:(id)uuid1 uuid2:(id)uuid2;
- (id)_createAndSaveFixedDeviceId;
- (id)_createDIMEphemeralIdentifiersEvent:(int64_t)event;
- (id)_createDIMEphemeralToAggregationIdentifierMapEvent;
- (id)_fetchIdsForHomeWithCreationTime:(id)time;
- (id)_fetchIdsForUser:(id)user creationTime:(id)time;
- (id)_fetchOrCreateFixedDeviceId;
- (id)_initWithSyncCoordinator:(id)coordinator withCheckpoint:(id)checkpoint;
- (id)_readCheckpoint;
- (id)_retrieveExistingAnalyticsIdsForUser:(id)user;
- (id)ephemeralIdForDefaultUser;
- (int64_t)_refreshEphemeralIdentifiers:(BOOL)identifiers;
- (unsigned)_convertDataToScaledUInt32:(id)int32;
- (void)_asyncLogAnalyticsIdentifiersDIMEvents:(id)events;
- (void)_createAndTestAndSetDefaultUserEphemeralId:(id)id expectedValue:(id)value expectedValueWasCreatedBySyncPath:(BOOL)path withCreationTime:(id)time;
- (void)_publishAnalyticsIdUpdate:(id)update forUser:(id)user;
- (void)_refreshAnalyticsIds;
- (void)_refreshAnalyticsIdsForUser:(id)user withTime:(id)time;
- (void)_testAndSetDefaultUserEphemeralId:(id)id creationTime:(id)time syncPath:(BOOL)path expectedValue:(id)value;
- (void)_writeCheckpoint:(id)checkpoint;
- (void)addObserver:(id)observer foriCloudAltDSId:(id)id;
- (void)fetchDeviceAggregationIdWithCallback:(id)callback;
- (void)fetchDeviceAndUserIdsForSharedUserId:(id)id withCallback:(id)callback;
- (void)fetchDeviceAndUserIdsForiCloudAltDSId:(id)id withCallback:(id)callback;
- (void)fetchUserAggregationIdWithCallback:(id)callback;
- (void)removeObserver:(id)observer;
- (void)removeObserver:(id)observer foriCloudAltDSId:(id)id;
@end

@implementation ADAnalyticsIdentifiersProvider

+ (ADAnalyticsIdentifiersProvider)sharedInstance
{
  if (qword_100590850 != -1)
  {
    dispatch_once(&qword_100590850, &stru_100519F30);
  }

  v3 = qword_100590848;

  return v3;
}

- (id)ephemeralIdForDefaultUser
{
  v3 = +[NSDate now];
  syncPathExecutionTime = self->_syncPathExecutionTime;
  self->_syncPathExecutionTime = v3;

  v5 = [ADAnalyticsIdentifiersProvider _alignToRotationCadence:self->_syncPathExecutionTime];
  if (![(ADAnalyticsIdentifiersCheckpoint *)self->_checkpoint hasValidCurrentUserSeed:v5])
  {
    goto LABEL_20;
  }

  v6 = +[ADAnalyticsIdentifiersUtils logger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Checkpoint has valid current user seed", buf, 2u);
  }

  currentUserSeed = [(ADAnalyticsIdentifiersCheckpoint *)self->_checkpoint currentUserSeed];
  if (!currentUserSeed)
  {
LABEL_20:
    if (![(ADAnalyticsIdentifiersCheckpoint *)self->_checkpoint hasValidNextUserSeed:v5])
    {
      goto LABEL_9;
    }

    v8 = +[ADAnalyticsIdentifiersUtils logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Checkpoint has valid next user seed that is usable now", buf, 2u);
    }

    currentUserSeed = [(ADAnalyticsIdentifiersCheckpoint *)self->_checkpoint nextUserSeed];
    if (!currentUserSeed)
    {
LABEL_9:
      v9 = +[ADAnalyticsIdentifiersUtils logger];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Using locally created seed", buf, 2u);
      }

      currentUserSeed = self->_localUserSeed;
    }
  }

  v10 = currentUserSeed;
  v11 = [ADAnalyticsIdentifiersProvider _createUserEphemeralIdWithUserSeed:currentUserSeed withCreationTime:v5];
  v12 = self->_lastCreatedUserEphemeralId;
  [(ADAnalyticsIdentifiersProvider *)self _testAndSetDefaultUserEphemeralId:v11 creationTime:v5 syncPath:1 expectedValue:0];
  v13 = +[ADAnalyticsIdentifiersUtils logger];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    ephemeralIdWasCreatedBySyncPath = self->_ephemeralIdWasCreatedBySyncPath;
    *buf = 67109120;
    v33 = ephemeralIdWasCreatedBySyncPath;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Synchronous path won race? %d", buf, 8u);
  }

  v14 = AFIsHorseman();
  lastCreatedUserEphemeralId = self->_lastCreatedUserEphemeralId;
  if (v14 && v12 != lastCreatedUserEphemeralId)
  {
    [(ADSynchronizedIds *)self->_analyticsIdsForDefaultUser aggregationIds];
    v16 = v30 = v12;
    current = [v16 current];

    v18 = [ADAnalyticsDeviceAndUserIds alloc];
    fixedDeviceId = self->_fixedDeviceId;
    v20 = self->_lastCreatedUserEphemeralId;
    value = [current value];
    [current effectiveFrom];
    v31 = v10;
    v22 = v11;
    v24 = v23 = v5;
    expirationDate = [current expirationDate];
    v26 = [(ADAnalyticsDeviceAndUserIds *)v18 initWithFixedDeviceId:fixedDeviceId withUserEphemeralId:v20 withUserAggregationId:value withUserAggregationIdEffectiveFrom:v24 withUserAggregationIdExpiration:expirationDate];

    v5 = v23;
    v11 = v22;
    v10 = v31;

    [(ADAnalyticsIdentifiersProvider *)self _publishAnalyticsIdUpdate:v26 forUser:0];
    v12 = v30;

    lastCreatedUserEphemeralId = self->_lastCreatedUserEphemeralId;
  }

  v27 = lastCreatedUserEphemeralId;

  return lastCreatedUserEphemeralId;
}

+ (id)_userEphemeralIdNamespace
{
  if (qword_100590830 != -1)
  {
    dispatch_once(&qword_100590830, &stru_100519EF0);
  }

  v3 = qword_100590828;

  return v3;
}

- (void)_publishAnalyticsIdUpdate:(id)update forUser:(id)user
{
  updateCopy = update;
  userCopy = user;
  v8 = self->_defaultUserObserverList;
  if (userCopy)
  {
    v9 = [(NSMutableDictionary *)self->_iCloudIdToObserverListMap objectForKeyedSubscript:userCopy];

    v8 = v9;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = v8;
  v11 = [(NSHashTable *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v14) didReceiveIDs:updateCopy forUser:{userCopy, v15}];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [(NSHashTable *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (id)_retrieveExistingAnalyticsIdsForUser:(id)user
{
  if (user)
  {
    v4 = [(NSMutableDictionary *)self->_iCloudIdToAnalyticsIdsMap objectForKeyedSubscript:?];
  }

  else
  {
    aggregationIds = [(ADSynchronizedIds *)self->_analyticsIdsForDefaultUser aggregationIds];
    current = [aggregationIds current];

    v7 = [ADAnalyticsDeviceAndUserIds alloc];
    fixedDeviceId = self->_fixedDeviceId;
    lastCreatedUserEphemeralId = self->_lastCreatedUserEphemeralId;
    value = [current value];
    effectiveFrom = [current effectiveFrom];
    expirationDate = [current expirationDate];
    v4 = [(ADAnalyticsDeviceAndUserIds *)v7 initWithFixedDeviceId:fixedDeviceId withUserEphemeralId:lastCreatedUserEphemeralId withUserAggregationId:value withUserAggregationIdEffectiveFrom:effectiveFrom withUserAggregationIdExpiration:expirationDate];
  }

  return v4;
}

- (void)_refreshAnalyticsIdsForUser:(id)user withTime:(id)time
{
  userCopy = user;
  timeCopy = time;
  v8 = @"Default User";
  if (!userCopy)
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = self->_lastCreatedUserEphemeralId;
  ephemeralIdWasCreatedBySyncPath = self->_ephemeralIdWasCreatedBySyncPath;
  v12 = [(ADAnalyticsIdentifiersProvider *)self _isEphemeralIdRefreshRequired:userCopy forTime:timeCopy];
  v13 = [(ADAnalyticsIdentifiersProvider *)self _isAggregationIdRefreshRequired:userCopy forTime:timeCopy];
  v14 = v13;
  if ((v12 & 1) != 0 || v13)
  {
    v15 = +[ADAnalyticsIdentifiersUtils logger];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138477827;
      *v68 = v9;
      _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Refreshing Analytics IDs for user: %{private}@", buf, 0xCu);
    }

    v16 = +[ADAnalyticsIdentifiersUtils logger];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109376;
      *v68 = v12;
      *&v68[4] = 1024;
      *&v68[6] = v14;
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Is Ephemeral ID Refresh Required: %d. Is Aggregation ID Refresh Required: %d", buf, 0xEu);
    }

    v58 = v14;

    v17 = [(ADAnalyticsIdentifiersProvider *)self _fetchIdsForUser:userCopy creationTime:timeCopy];
    if (!userCopy)
    {
      objc_storeStrong(&self->_analyticsIdsForDefaultUser, v17);
    }

    v64 = v10;
    aggregationIds = [v17 aggregationIds];
    current = [aggregationIds current];

    aggregationIds2 = [v17 aggregationIds];
    current2 = [aggregationIds2 current];
    v65 = timeCopy;
    v62 = v9;
    v57 = ephemeralIdWasCreatedBySyncPath;
    if ([current2 expirationDaysFrom:timeCopy] <= 0)
    {
      [v17 aggregationIds];
      v22 = v21 = v17;
      next = [v22 next];

      if (!next)
      {
        timeCopy = v65;
        v17 = v21;
        goto LABEL_15;
      }

      aggregationIds2 = [v21 aggregationIds];
      [aggregationIds2 next];
      timeCopy = v65;
      current = current2 = current;
      v17 = v21;
    }

LABEL_15:
    v24 = [ADAnalyticsIdentifiersProvider _alignToRotationCadence:timeCopy];
    v25 = timeCopy;
    v61 = v17;
    currentEphemeralSeed = [v17 currentEphemeralSeed];
    v63 = v24;
    v27 = [ADAnalyticsIdentifiersProvider _createUserEphemeralIdWithUserSeed:currentEphemeralSeed withCreationTime:v24];

    v28 = [ADAnalyticsDeviceAndUserIds alloc];
    fixedDeviceId = self->_fixedDeviceId;
    value = [current value];
    effectiveFrom = [current effectiveFrom];
    expirationDate = [current expirationDate];
    v60 = v27;
    v33 = [(ADAnalyticsDeviceAndUserIds *)v28 initWithFixedDeviceId:fixedDeviceId withUserEphemeralId:v27 withUserAggregationId:value withUserAggregationIdEffectiveFrom:effectiveFrom withUserAggregationIdExpiration:expirationDate];

    if (userCopy)
    {
      [(NSMutableDictionary *)self->_iCloudIdToAnalyticsIdsMap setObject:v33 forKey:userCopy];
      v34 = &OBJC_METACLASS___ADDictationConnection;
      if (v12)
      {
        [(NSMutableDictionary *)self->_iCloudIdToEphemeralIdCreationDateMap setObject:v63 forKey:userCopy];
      }

      v25 = v65;
      if (v58)
      {
        [(NSMutableDictionary *)self->_iCloudIdToAggregationIdCreationDateMap setObject:v65 forKey:userCopy];
      }
    }

    else
    {
      ephemeralSeeds = [(ADSynchronizedIds *)self->_analyticsIdsForDefaultUser ephemeralSeeds];
      [(ADAnalyticsIdentifiersProvider *)self _createAndTestAndSetDefaultUserEphemeralId:ephemeralSeeds expectedValue:v64 expectedValueWasCreatedBySyncPath:v57 withCreationTime:v25];

      v34 = &OBJC_METACLASS___ADDictationConnection;
    }

    logger = [&v34[76] logger];
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138478339;
      *v68 = v62;
      *&v68[8] = 2112;
      v69 = v25;
      v70 = 2112;
      v71 = v63;
      _os_log_debug_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEBUG, "Created new Analytics IDs for user: %{private}@ refreshTime: %@ ephemeralCadenceTime: %@", buf, 0x20u);
    }

    logger2 = [&v34[76] logger];
    if (os_log_type_enabled(logger2, OS_LOG_TYPE_DEBUG))
    {
      userEphemeralId = [(ADAnalyticsDeviceAndUserIds *)v33 userEphemeralId];
      userAggregationId = [(ADAnalyticsDeviceAndUserIds *)v33 userAggregationId];
      userAggregationIdEffectiveFrom = [(ADAnalyticsDeviceAndUserIds *)v33 userAggregationIdEffectiveFrom];
      [(ADAnalyticsDeviceAndUserIds *)v33 userAggregationIdExpiration];
      v54 = userCopy;
      v56 = v55 = v33;
      *buf = 138478595;
      *v68 = userEphemeralId;
      *&v68[8] = 2113;
      v69 = userAggregationId;
      v70 = 2112;
      v71 = userAggregationIdEffectiveFrom;
      v72 = 2112;
      v73 = v56;
      _os_log_debug_impl(&_mh_execute_header, logger2, OS_LOG_TYPE_DEBUG, "EphemeralID: %{private}@ AggregationID: %{private}@ AggregationIDEffectiveFrom: %@ AggregationIDExpiration: %@", buf, 0x2Au);

      v33 = v55;
      userCopy = v54;
    }

    logger3 = [&v34[76] logger];
    if (os_log_type_enabled(logger3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, logger3, OS_LOG_TYPE_DEBUG, "Notifying observers of new Analytics IDs", buf, 2u);
    }

    [(ADAnalyticsIdentifiersProvider *)self _publishAnalyticsIdUpdate:v33 forUser:userCopy];
    ephemeralSeeds2 = [(ADSynchronizedIds *)self->_analyticsIdsForDefaultUser ephemeralSeeds];
    current3 = [ephemeralSeeds2 current];

    ephemeralSeeds3 = [(ADSynchronizedIds *)self->_analyticsIdsForDefaultUser ephemeralSeeds];
    next2 = [ephemeralSeeds3 next];

    v43 = [ADAnalyticsIdentifiersCheckpoint alloc];
    [current3 value];
    v59 = userCopy;
    v45 = v44 = v33;
    expirationDate2 = [current3 expirationDate];
    value2 = [next2 value];
    effectiveFrom2 = [next2 effectiveFrom];
    expirationDate3 = [next2 expirationDate];
    v50 = [(ADAnalyticsIdentifiersCheckpoint *)v43 initWithCurrentUserSeed:v45 currentUserSeedExpirationDate:expirationDate2 nextUserSeed:value2 nextUserSeedEffectiveFromDate:effectiveFrom2 nextUserSeedExpirationDate:expirationDate3];
    [(ADAnalyticsIdentifiersProvider *)self _writeCheckpoint:v50];

    userCopy = v59;
    v10 = v64;
    timeCopy = v65;
    v9 = v62;
  }
}

- (void)_refreshAnalyticsIds
{
  v3 = +[NSDate now];
  [(ADAnalyticsIdentifiersProvider *)self _refreshAnalyticsIdsForUser:0 withTime:v3];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  allKeys = [(NSMutableDictionary *)self->_iCloudIdToObserverListMap allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      v8 = 0;
      do
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        [(ADAnalyticsIdentifiersProvider *)self _refreshAnalyticsIdsForUser:*(*(&v23 + 1) + 8 * v8) withTime:v3];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [allKeys countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v6);
  }

  aggregationIds = [(ADSynchronizedIds *)self->_analyticsIdsForDefaultUser aggregationIds];
  current = [aggregationIds current];

  value = [current value];
  v12 = [ADAnalyticsDeviceAndUserIds deviceAggregationIdWithDeviceId:self->_fixedDeviceId forUserAggregationId:value];
  v13 = [(ADAnalyticsIdentifiersProvider *)self _combineUUIDsWithUuid1:v12 uuid2:value];
  v14 = [@"*^&9aM&A#^&Sn3" dataUsingEncoding:4];
  v15 = AFSecurityDigestData();
  self->_experimentBucketId = [(ADAnalyticsIdentifiersProvider *)self _convertDataToScaledUInt32:v15];
  v16 = [(ADAnalyticsIdentifiersProvider *)self _fetchIdsForHomeWithCreationTime:v3];
  analyticsIdsForCurrentHome = self->_analyticsIdsForCurrentHome;
  self->_analyticsIdsForCurrentHome = v16;

  currentEphemeralSeed = [(ADSynchronizedIds *)self->_analyticsIdsForCurrentHome currentEphemeralSeed];
  if (currentEphemeralSeed)
  {
    v19 = [ADAnalyticsIdentifiersProvider _createHomeEphemeralIdWithHomeSeed:currentEphemeralSeed withCreationTime:self->_ephemeralIdCreationDate];
    lastCreatedHomeEphemeralId = self->_lastCreatedHomeEphemeralId;
    self->_lastCreatedHomeEphemeralId = v19;

    v21 = +[ADAnalyticsIdentifiersUtils logger];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = self->_lastCreatedHomeEphemeralId;
      *buf = 138477827;
      v28 = v22;
      _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Created home ephemeral identifier for current home; uuid:%{private}@", buf, 0xCu);
    }
  }
}

- (BOOL)_isAggregationIdRefreshRequired:(id)required forTime:(id)time
{
  requiredCopy = required;
  timeCopy = time;
  if (requiredCopy)
  {
    aggregationIds = [(NSMutableDictionary *)self->_iCloudIdToAggregationIdCreationDateMap objectForKeyedSubscript:requiredCopy];
    if (aggregationIds)
    {
      current = +[NSCalendar currentCalendar];
      v10 = [current components:8 fromDate:aggregationIds toDate:timeCopy options:0];
      v11 = +[ADAnalyticsIdentifiersUtils logger];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v15 = 134218243;
        month = [v10 month];
        v17 = 2113;
        v18 = requiredCopy;
        _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Analytics Aggregation ID last refreshed %ld months ago for user %{private}@", &v15, 0x16u);
      }

      v12 = [v10 month] > 17;
    }

    else
    {
      current = +[ADAnalyticsIdentifiersUtils logger];
      if (os_log_type_enabled(current, OS_LOG_TYPE_DEBUG))
      {
        v15 = 138477827;
        month = requiredCopy;
        _os_log_debug_impl(&_mh_execute_header, current, OS_LOG_TYPE_DEBUG, "No Analytics Aggregation ID last creation date for user %{private}@", &v15, 0xCu);
      }

      v12 = 1;
    }
  }

  else
  {
    analyticsIdsForDefaultUser = self->_analyticsIdsForDefaultUser;
    if (!analyticsIdsForDefaultUser)
    {
      v12 = 1;
      goto LABEL_12;
    }

    aggregationIds = [(ADSynchronizedIds *)analyticsIdsForDefaultUser aggregationIds];
    current = [aggregationIds current];
    v12 = [current expirationDaysFrom:timeCopy]< 1;
  }

LABEL_12:
  return v12;
}

- (BOOL)_isEphemeralIdRefreshRequired:(id)required forTime:(id)time
{
  requiredCopy = required;
  timeCopy = time;
  v8 = self->_ephemeralIdCreationDate;
  if (requiredCopy)
  {
    v9 = [(NSMutableDictionary *)self->_iCloudIdToEphemeralIdCreationDateMap objectForKeyedSubscript:requiredCopy];
    if (!v9)
    {
      v12 = 1;
      goto LABEL_6;
    }

    v10 = v9;

    v8 = v10;
  }

  v11 = [ADAnalyticsIdentifiersProvider _alignToRotationCadence:timeCopy];
  v12 = [v11 compare:v8] == 1;

LABEL_6:
  return v12;
}

- (unsigned)_convertDataToScaledUInt32:(id)int32
{
  int32Copy = int32;
  bytes = [int32Copy bytes];
  if ([int32Copy length])
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v5 = bytes[v6++] | (v5 << 8);
    }

    while (v6 < [int32Copy length]);
    v7 = v5 % 0x14;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_combineUUIDsWithUuid1:(id)uuid1 uuid2:(id)uuid2
{
  uuid2Copy = uuid2;
  uUIDString = [uuid1 UUIDString];
  v7 = [uUIDString dataUsingEncoding:4];

  uUIDString2 = [uuid2Copy UUIDString];
  v9 = [uUIDString2 dataUsingEncoding:4];

  v10 = [NSMutableData dataWithLength:16];
  mutableBytes = [v10 mutableBytes];
  bytes = [v7 bytes];
  bytes2 = [v9 bytes];
  for (i = 0; i != 16; ++i)
  {
    mutableBytes[i] = bytes2[i] ^ bytes[i];
  }

  return v10;
}

- (id)_fetchIdsForHomeWithCreationTime:(id)time
{
  timeCopy = time;
  isPartOfHome = [(ADSyncCoordinating *)self->_syncCoordinator isPartOfHome];
  v6 = +[ADAnalyticsIdentifiersUtils logger];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (isPartOfHome)
  {
    if (v7)
    {
      LOWORD(v17) = 0;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Fetching home seed", &v17, 2u);
    }

    v8 = [(ADSyncCoordinating *)self->_syncCoordinator fetchSynchronizedAnalyticsIdsForHome:0];
    if (!v8)
    {
      v8 = [[ADSynchronizedHomeAnalyticsIds alloc] initWithHomeEphemeralSeeds:0];
    }

    v9 = [(ADSynchronizedIds *)v8 populateNullsWithCreationTime:timeCopy];
    if (v9)
    {
      ephemeralSeeds = [(ADSynchronizedIds *)v8 ephemeralSeeds];
      current = [ephemeralSeeds current];

      v12 = +[ADAnalyticsIdentifiersUtils logger];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v17 = 138412290;
        v18 = current;
        _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Created current home seed %@", &v17, 0xCu);
      }

      [(ADSyncCoordinating *)self->_syncCoordinator addSeedForHome:0 seed:current];
    }

    if ((v9 & 2) != 0)
    {
      ephemeralSeeds2 = [(ADSynchronizedIds *)v8 ephemeralSeeds];
      next = [ephemeralSeeds2 next];

      v15 = +[ADAnalyticsIdentifiersUtils logger];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v17 = 138412290;
        v18 = next;
        _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Created next home seed %@", &v17, 0xCu);
      }

      [(ADSyncCoordinating *)self->_syncCoordinator addSeedForHome:0 seed:next];
    }
  }

  else
  {
    if (v7)
    {
      LOWORD(v17) = 0;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Not part of home. Will not fetch home seed", &v17, 2u);
    }

    v8 = [[ADSynchronizedHomeAnalyticsIds alloc] initWithHomeEphemeralSeeds:0];
  }

  return v8;
}

- (id)_fetchIdsForUser:(id)user creationTime:(id)time
{
  timeCopy = time;
  userCopy = user;
  v8 = +[ADAnalyticsIdentifiersUtils logger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v28) = 0;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Fetching user seed and aggregation ids", &v28, 2u);
  }

  v9 = [(ADSyncCoordinating *)self->_syncCoordinator fetchSynchronizedAnalyticsIdsForUser:userCopy];

  if (v9)
  {
    if (userCopy)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v9 = [[ADSynchronizedUserAnalyticsIds alloc] initWithUserEphemeralSeeds:0 andUserAggregationIds:0];
    if (userCopy)
    {
      goto LABEL_11;
    }
  }

  if ([(ADSynchronizedIds *)v9 setCurrentEphemeralSeedIfNil:self->_localUserSeed andCreationTime:self->_localUserSeedCreationTime])
  {
    ephemeralSeeds = [(ADSynchronizedIds *)v9 ephemeralSeeds];
    current = [ephemeralSeeds current];

    v12 = +[ADAnalyticsIdentifiersUtils logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v28 = 138412290;
      v29 = current;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Populated current user seed with local value %@", &v28, 0xCu);
    }

    [(ADSyncCoordinating *)self->_syncCoordinator addSeedForUser:0 seed:current];
  }

LABEL_11:
  v13 = [(ADSynchronizedIds *)v9 populateNullsWithCreationTime:timeCopy];
  v14 = v13;
  if (v13)
  {
    ephemeralSeeds2 = [(ADSynchronizedIds *)v9 ephemeralSeeds];
    current2 = [ephemeralSeeds2 current];

    v17 = +[ADAnalyticsIdentifiersUtils logger];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v28 = 138412290;
      v29 = current2;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Created current user seed %@", &v28, 0xCu);
    }

    [(ADSyncCoordinating *)self->_syncCoordinator addSeedForUser:0 seed:current2];
    if ((v14 & 2) == 0)
    {
LABEL_13:
      if ((v14 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_22;
    }
  }

  else if ((v13 & 2) == 0)
  {
    goto LABEL_13;
  }

  ephemeralSeeds3 = [(ADSynchronizedIds *)v9 ephemeralSeeds];
  next = [ephemeralSeeds3 next];

  v20 = +[ADAnalyticsIdentifiersUtils logger];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v28 = 138412290;
    v29 = next;
    _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Created next user seed %@", &v28, 0xCu);
  }

  [(ADSyncCoordinating *)self->_syncCoordinator addSeedForUser:0 seed:next];
  if ((v14 & 4) == 0)
  {
LABEL_14:
    if ((v14 & 8) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

LABEL_22:
  aggregationIds = [(ADSynchronizedIds *)v9 aggregationIds];
  current3 = [aggregationIds current];

  v23 = +[ADAnalyticsIdentifiersUtils logger];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v28 = 138412290;
    v29 = current3;
    _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "Created current aggregation id %@", &v28, 0xCu);
  }

  [(ADSyncCoordinating *)self->_syncCoordinator addAggregationIdForUser:0 aggregationId:current3];
  if ((v14 & 8) != 0)
  {
LABEL_25:
    aggregationIds2 = [(ADSynchronizedIds *)v9 aggregationIds];
    next2 = [aggregationIds2 next];

    v26 = +[ADAnalyticsIdentifiersUtils logger];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v28 = 138412290;
      v29 = next2;
      _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "Created next aggregation id %@", &v28, 0xCu);
    }

    [(ADSyncCoordinating *)self->_syncCoordinator addAggregationIdForUser:0 aggregationId:next2];
  }

LABEL_28:

  return v9;
}

- (void)_testAndSetDefaultUserEphemeralId:(id)id creationTime:(id)time syncPath:(BOOL)path expectedValue:(id)value
{
  idCopy = id;
  timeCopy = time;
  valueCopy = value;
  os_unfair_lock_lock(&self->_id_assignment_lock);
  lastCreatedUserEphemeralId = self->_lastCreatedUserEphemeralId;

  if (lastCreatedUserEphemeralId == valueCopy)
  {
    objc_storeStrong(&self->_lastCreatedUserEphemeralId, id);
    objc_storeStrong(&self->_ephemeralIdCreationDate, time);
    self->_ephemeralIdWasCreatedBySyncPath = path;
  }

  os_unfair_lock_unlock(&self->_id_assignment_lock);
}

- (void)_createAndTestAndSetDefaultUserEphemeralId:(id)id expectedValue:(id)value expectedValueWasCreatedBySyncPath:(BOOL)path withCreationTime:(id)time
{
  pathCopy = path;
  idCopy = id;
  valueCopy = value;
  timeCopy = time;
  if (!pathCopy)
  {
    goto LABEL_8;
  }

  [(NSDate *)self->_syncPathExecutionTime timeIntervalSinceNow];
  v14 = v13;
  v15 = v13 <= -5.0 || v13 > 0.0;
  v16 = +[ADAnalyticsIdentifiersUtils logger];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v21 = 134218240;
    v22 = -v14;
    v23 = 1024;
    v24 = v15;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Current id was created by sync path. It was created %f seconds ago. Ignoring? %d", &v21, 0x12u);
  }

  if (v15)
  {
LABEL_8:
    v17 = [ADAnalyticsIdentifiersProvider _alignToRotationCadence:timeCopy];
    current = [idCopy current];
    value = [current value];
    v20 = [ADAnalyticsIdentifiersProvider _createUserEphemeralIdWithUserSeed:value withCreationTime:v17];

    [(ADAnalyticsIdentifiersProvider *)self _testAndSetDefaultUserEphemeralId:v20 creationTime:v17 syncPath:0 expectedValue:valueCopy];
  }
}

- (int64_t)_refreshEphemeralIdentifiers:(BOOL)identifiers
{
  identifiersCopy = identifiers;
  v5 = self->_lastCreatedUserEphemeralId;
  ephemeralIdWasCreatedBySyncPath = self->_ephemeralIdWasCreatedBySyncPath;
  if (v5)
  {
    v7 = [ADAnalyticsIdentifiersProvider _computeSecondsSinceBirth:self->_ephemeralIdCreationDate];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = +[ADAnalyticsIdentifiersUtils logger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v43 = self->_analyticsIdsForDefaultUser == 0;
    v44 = self->_analyticsIdsForCurrentHome == 0;
    *buf = 67110144;
    *v56 = identifiersCopy;
    *&v56[4] = 2048;
    *&v56[6] = v7;
    *&v56[14] = 1024;
    *&v56[16] = v43;
    LOWORD(v57) = 1024;
    *(&v57 + 2) = v44;
    HIWORD(v57) = 1024;
    v58[0] = ephemeralIdWasCreatedBySyncPath;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Refreshing syncData force:%d secondsSinceBirth:%ld _analyticsIdsForDefaultUserNil:%d  _analyticsIdsForCurrentHomeNil:%d _lastCreatedBySyncPath:%d", buf, 0x24u);
  }

  if (!v5 || identifiersCopy || !self->_analyticsIdsForDefaultUser)
  {
    if (identifiersCopy && !self->_firstRefresh)
    {
      [(ADSyncCoordinating *)self->_syncCoordinator refreshHomeAndUserDetails];
      self->_firstRefresh = 0;
    }

    v9 = +[NSDate now];
    v10 = [(ADAnalyticsIdentifiersProvider *)self _fetchIdsForUser:0 creationTime:v9];
    analyticsIdsForDefaultUser = self->_analyticsIdsForDefaultUser;
    self->_analyticsIdsForDefaultUser = v10;

    ephemeralSeeds = [(ADSynchronizedIds *)self->_analyticsIdsForDefaultUser ephemeralSeeds];
    v53 = v5;
    v54 = v9;
    [(ADAnalyticsIdentifiersProvider *)self _createAndTestAndSetDefaultUserEphemeralId:ephemeralSeeds expectedValue:v5 expectedValueWasCreatedBySyncPath:ephemeralIdWasCreatedBySyncPath withCreationTime:v9];

    ephemeralSeeds2 = [(ADSynchronizedIds *)self->_analyticsIdsForDefaultUser ephemeralSeeds];
    current = [ephemeralSeeds2 current];

    ephemeralSeeds3 = [(ADSynchronizedIds *)self->_analyticsIdsForDefaultUser ephemeralSeeds];
    next = [ephemeralSeeds3 next];

    v17 = [ADAnalyticsIdentifiersCheckpoint alloc];
    value = [current value];
    v51 = current;
    expirationDate = [current expirationDate];
    value2 = [next value];
    effectiveFrom = [next effectiveFrom];
    expirationDate2 = [next expirationDate];
    v23 = [(ADAnalyticsIdentifiersCheckpoint *)v17 initWithCurrentUserSeed:value currentUserSeedExpirationDate:expirationDate nextUserSeed:value2 nextUserSeedEffectiveFromDate:effectiveFrom nextUserSeedExpirationDate:expirationDate2];
    [(ADAnalyticsIdentifiersProvider *)self _writeCheckpoint:v23];

    v24 = [ADAnalyticsIdentifiersProvider _computeSecondsSinceBirth:self->_ephemeralIdCreationDate];
    v25 = +[ADAnalyticsIdentifiersUtils logger];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      ephemeralIdCreationDate = self->_ephemeralIdCreationDate;
      lastCreatedUserEphemeralId = self->_lastCreatedUserEphemeralId;
      v47 = !self->_ephemeralIdWasCreatedBySyncPath;
      *buf = 138413058;
      *v56 = lastCreatedUserEphemeralId;
      *&v56[8] = 2112;
      *&v56[10] = ephemeralIdCreationDate;
      *&v56[18] = 2048;
      v57 = v24;
      LOWORD(v58[0]) = 1024;
      *(v58 + 2) = v47;
      _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Created user ephemeral identifier for default user; uuid:%@ creationDate:%@ secondsSinceBirth:%ld wonRace?%d", buf, 0x26u);
    }

    v52 = v24;

    aggregationIds = [(ADSynchronizedIds *)self->_analyticsIdsForDefaultUser aggregationIds];
    current2 = [aggregationIds current];

    value3 = [current2 value];
    effectiveFrom2 = [current2 effectiveFrom];
    expirationDate3 = [current2 expirationDate];
    v31 = [ADAnalyticsDeviceAndUserIds deviceAggregationIdWithDeviceId:self->_fixedDeviceId forUserAggregationId:value3];
    v32 = +[ADAnalyticsIdentifiersUtils logger];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      *v56 = v31;
      *&v56[8] = 2112;
      *&v56[10] = value3;
      *&v56[18] = 2112;
      v57 = effectiveFrom2;
      LOWORD(v58[0]) = 2112;
      *(v58 + 2) = expirationDate3;
      _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "Aggregation id details: device:%@ user:%@ effectiveFrom:%@ expirationDate:%@", buf, 0x2Au);
    }

    v49 = expirationDate3;
    v50 = effectiveFrom2;

    v33 = [(ADAnalyticsIdentifiersProvider *)self _combineUUIDsWithUuid1:v31 uuid2:value3];
    v34 = [@"*^&9aM&A#^&Sn3" dataUsingEncoding:4];
    v35 = AFSecurityDigestData();
    self->_experimentBucketId = [(ADAnalyticsIdentifiersProvider *)self _convertDataToScaledUInt32:v35];
    v36 = [(ADAnalyticsIdentifiersProvider *)self _fetchIdsForHomeWithCreationTime:v54];
    analyticsIdsForCurrentHome = self->_analyticsIdsForCurrentHome;
    self->_analyticsIdsForCurrentHome = v36;

    currentEphemeralSeed = [(ADSynchronizedIds *)self->_analyticsIdsForCurrentHome currentEphemeralSeed];
    if (currentEphemeralSeed)
    {
      v39 = [ADAnalyticsIdentifiersProvider _createHomeEphemeralIdWithHomeSeed:currentEphemeralSeed withCreationTime:self->_ephemeralIdCreationDate, v49, v50];
      lastCreatedHomeEphemeralId = self->_lastCreatedHomeEphemeralId;
      self->_lastCreatedHomeEphemeralId = v39;

      v41 = +[ADAnalyticsIdentifiersUtils logger];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        v48 = self->_lastCreatedHomeEphemeralId;
        *buf = 138412290;
        *v56 = v48;
        _os_log_debug_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "Created home ephemeral identifier for current home; uuid:%@", buf, 0xCu);
      }
    }

    v7 = v52;
    v5 = v53;
  }

  return v7;
}

- (id)_fetchOrCreateFixedDeviceId
{
  v3 = +[ADAnalyticsIdentifiersUtils logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Reading fixed device identifier from Keychain", buf, 2u);
  }

  v4 = AFKeychainValueForAccountAndKey();
  if (!v4)
  {
    v8 = +[ADAnalyticsIdentifiersUtils logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Fixed device identifier keychain entry does not exist. Creating new UUID", buf, 2u);
    }

    v6 = 0;
    goto LABEL_13;
  }

  v10 = 0;
  _createAndSaveFixedDeviceId = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v10];
  v6 = v10;
  if (v6)
  {
    v7 = +[ADAnalyticsIdentifiersUtils logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Fixed device identifier keychain entry could not be fetched or saved; will use a temporary value. Error: %@", buf, 0xCu);
    }
  }

  if (!_createAndSaveFixedDeviceId)
  {
LABEL_13:
    _createAndSaveFixedDeviceId = [(ADAnalyticsIdentifiersProvider *)self _createAndSaveFixedDeviceId];
  }

  return _createAndSaveFixedDeviceId;
}

- (id)_createAndSaveFixedDeviceId
{
  v2 = objc_alloc_init(NSUUID);
  v3 = +[ADAnalyticsIdentifiersUtils logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Saving fixed device identifier to Keychain", buf, 2u);
  }

  v8 = 0;
  v4 = [NSKeyedArchiver archivedDataWithRootObject:v2 requiringSecureCoding:1 error:&v8];
  v5 = v8;
  if (v5)
  {
    v6 = +[ADAnalyticsIdentifiersUtils logger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Fixed device identifier keychain entry could not be archived. Error:%@", buf, 0xCu);
    }
  }

  else
  {
    AFKeychainSetValueForAccountAndKey();
  }

  return v2;
}

- (void)_writeCheckpoint:(id)checkpoint
{
  checkpointCopy = checkpoint;
  v4 = +[ADAnalyticsIdentifiersUtils logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Checkpointing to Keychain", buf, 2u);
  }

  archive = [checkpointCopy archive];

  if (archive)
  {
    AFKeychainSetValueForAccountAndKey();
  }

  else
  {
    v6 = +[ADAnalyticsIdentifiersUtils logger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Checkpoint could not be archived and will not be saved to keychain", v7, 2u);
    }
  }
}

- (id)_readCheckpoint
{
  v2 = +[ADAnalyticsIdentifiersUtils logger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v9 = 0;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Reading checkpointed state from Keychain", v9, 2u);
  }

  v3 = AFKeychainValueForAccountAndKey();
  if (v3)
  {
    v4 = [ADAnalyticsIdentifiersCheckpoint unarchive:v3];
    if (v4)
    {
      goto LABEL_10;
    }

    v5 = +[ADAnalyticsIdentifiersUtils logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Checkpoint object not available; will assume that there was no prior state", buf, 2u);
    }
  }

  else
  {
    v5 = +[ADAnalyticsIdentifiersUtils logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Checkpoint state keychain entry does not exist; will use local seed if needed", v7, 2u);
    }
  }

  v4 = 0;
LABEL_10:

  return v4;
}

- (id)_createDIMEphemeralToAggregationIdentifierMapEvent
{
  aggregationIds = [(ADSynchronizedIds *)self->_analyticsIdsForDefaultUser aggregationIds];
  current = [aggregationIds current];

  effectiveFrom = [current effectiveFrom];
  [effectiveFrom timeIntervalSince1970];
  v7 = (v6 * 1000.0);

  expirationDate = [current expirationDate];
  [expirationDate timeIntervalSince1970];
  v10 = (v9 * 1000.0);

  value = [current value];
  v12 = [ADAnalyticsDeviceAndUserIds deviceAggregationIdWithDeviceId:self->_fixedDeviceId forUserAggregationId:value];
  v13 = objc_alloc_init(DIMSchemaDIMEphemeralToAggregationIdentifierMap);
  v14 = [[SISchemaUUID alloc] initWithNSUUID:self->_lastCreatedUserEphemeralId];
  [v13 setUserEphemeralId:v14];

  v15 = [[SISchemaUUID alloc] initWithNSUUID:value];
  [v13 setUserAggregationId:v15];

  v16 = [[SISchemaUUID alloc] initWithNSUUID:v12];
  [v13 setDeviceAggregationId:v16];

  [v13 setUserAggregationIdRotationTimestampMs:v7];
  [v13 setUserAggregationIdExpirationTimestampMs:v10];
  v17 = objc_alloc_init(DIMSchemaDIMClientEvent);
  [v17 setEphemeralToAggregationIdentifierMap:v13];

  return v17;
}

- (id)_createDIMEphemeralIdentifiersEvent:(int64_t)event
{
  v5 = objc_alloc_init(DIMSchemaDIMEphemeralIdentifiers);
  v6 = [[SISchemaUUID alloc] initWithNSUUID:self->_lastCreatedUserEphemeralId];
  [v5 setUserEphemeralId:v6];

  [v5 setSecondsSinceEphemeralIdCreation:event];
  if (AFIsInternalInstall())
  {
    v7 = [[SISchemaUUID alloc] initWithNSUUID:self->_lastCreatedHomeEphemeralId];
    [v5 setHomeEphemeralId:v7];
  }

  v8 = objc_alloc_init(DIMSchemaDIMClientEvent);
  [v8 setEphemeralIdentifiers:v5];

  return v8;
}

- (void)removeObserver:(id)observer foriCloudAltDSId:(id)id
{
  observerCopy = observer;
  idCopy = id;
  v8 = idCopy;
  if (observerCopy)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002C2C00;
    block[3] = &unk_10051DB68;
    v11 = idCopy;
    selfCopy = self;
    v13 = observerCopy;
    dispatch_async(queue, block);
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1002C2DF0;
    v7[3] = &unk_10051E010;
    v7[4] = self;
    v8 = observerCopy;
    dispatch_async(queue, v7);
  }
}

- (void)addObserver:(id)observer foriCloudAltDSId:(id)id
{
  observerCopy = observer;
  idCopy = id;
  v8 = idCopy;
  if (observerCopy)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002C3078;
    block[3] = &unk_10051DB68;
    v11 = idCopy;
    selfCopy = self;
    v13 = observerCopy;
    dispatch_async(queue, block);
  }
}

- (void)fetchUserAggregationIdWithCallback:(id)callback
{
  callbackCopy = callback;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1002C3464;
  v17 = sub_1002C3474;
  aggregationIds = [(ADSynchronizedIds *)self->_analyticsIdsForDefaultUser aggregationIds];
  current = [aggregationIds current];
  value = [current value];

  if (v14[5])
  {
    callbackCopy[2](callbackCopy);
  }

  else
  {
    v7 = +[ADAnalyticsIdentifiersUtils logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "userAggregationId not yet available. Dispatching to queue to fetch.", buf, 2u);
    }

    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002C347C;
    block[3] = &unk_10051B688;
    block[4] = self;
    v11 = &v13;
    v10 = callbackCopy;
    dispatch_async(queue, block);
  }

  _Block_object_dispose(&v13, 8);
}

- (void)fetchDeviceAggregationIdWithCallback:(id)callback
{
  callbackCopy = callback;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1002C3464;
  v18 = sub_1002C3474;
  aggregationIds = [(ADSynchronizedIds *)self->_analyticsIdsForDefaultUser aggregationIds];
  current = [aggregationIds current];
  value = [current value];

  if (v15[5])
  {
    v7 = [ADAnalyticsDeviceAndUserIds deviceAggregationIdWithDeviceId:self->_fixedDeviceId forUserAggregationId:?];
    callbackCopy[2](callbackCopy, v7);
  }

  else
  {
    v8 = +[ADAnalyticsIdentifiersUtils logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "userAggregationId not yet available. Dispatching to queue to fetch.", buf, 2u);
    }

    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002C36EC;
    block[3] = &unk_10051B688;
    block[4] = self;
    v12 = &v14;
    v11 = callbackCopy;
    dispatch_async(queue, block);
  }

  _Block_object_dispose(&v14, 8);
}

- (void)fetchDeviceAndUserIdsForSharedUserId:(id)id withCallback:(id)callback
{
  idCopy = id;
  callbackCopy = callback;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002C3880;
  block[3] = &unk_10051E088;
  v12 = idCopy;
  selfCopy = self;
  v14 = callbackCopy;
  v9 = callbackCopy;
  v10 = idCopy;
  dispatch_async(queue, block);
}

- (void)fetchDeviceAndUserIdsForiCloudAltDSId:(id)id withCallback:(id)callback
{
  idCopy = id;
  callbackCopy = callback;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002C3AD4;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = idCopy;
  v13 = callbackCopy;
  v9 = callbackCopy;
  v10 = idCopy;
  dispatch_async(queue, block);
}

- (void)_asyncLogAnalyticsIdentifiersDIMEvents:(id)events
{
  eventsCopy = events;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002C3E50;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = eventsCopy;
  v6 = eventsCopy;
  dispatch_async(queue, v7);
}

- (id)_initWithSyncCoordinator:(id)coordinator withCheckpoint:(id)checkpoint
{
  coordinatorCopy = coordinator;
  checkpointCopy = checkpoint;
  v36.receiver = self;
  v36.super_class = ADAnalyticsIdentifiersProvider;
  v8 = [(ADAnalyticsIdentifiersProvider *)&v36 init];
  v9 = v8;
  if (v8)
  {
    v8->_id_assignment_lock._os_unfair_lock_opaque = 0;
    *&v8->_firstRefresh = 1;
    if (checkpointCopy)
    {
      _readCheckpoint = checkpointCopy;
    }

    else
    {
      _readCheckpoint = [(ADAnalyticsIdentifiersProvider *)v8 _readCheckpoint];
    }

    checkpoint = v9->_checkpoint;
    v9->_checkpoint = _readCheckpoint;

    v12 = objc_alloc_init(NSUUID);
    localUserSeed = v9->_localUserSeed;
    v9->_localUserSeed = v12;

    v14 = +[NSDate now];
    localUserSeedCreationTime = v9->_localUserSeedCreationTime;
    v9->_localUserSeedCreationTime = v14;

    v16 = [NSDate dateWithTimeIntervalSince1970:0.0];
    ephemeralIdCreationDate = v9->_ephemeralIdCreationDate;
    v9->_ephemeralIdCreationDate = v16;

    v18 = [NSHashTable hashTableWithOptions:5];
    defaultUserObserverList = v9->_defaultUserObserverList;
    v9->_defaultUserObserverList = v18;

    v20 = +[NSMutableDictionary dictionary];
    iCloudIdToObserverListMap = v9->_iCloudIdToObserverListMap;
    v9->_iCloudIdToObserverListMap = v20;

    v22 = +[NSMutableDictionary dictionary];
    iCloudIdToAnalyticsIdsMap = v9->_iCloudIdToAnalyticsIdsMap;
    v9->_iCloudIdToAnalyticsIdsMap = v22;

    v24 = +[NSMutableDictionary dictionary];
    iCloudIdToEphemeralIdCreationDateMap = v9->_iCloudIdToEphemeralIdCreationDateMap;
    v9->_iCloudIdToEphemeralIdCreationDateMap = v24;

    v26 = +[NSMutableDictionary dictionary];
    iCloudIdToAggregationIdCreationDateMap = v9->_iCloudIdToAggregationIdCreationDateMap;
    v9->_iCloudIdToAggregationIdCreationDateMap = v26;

    v28 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v29 = dispatch_queue_create("ADAnalyticsIdentifiersProvider", v28);

    queue = v9->_queue;
    v9->_queue = v29;

    v31 = v9->_queue;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1002C4468;
    v33[3] = &unk_10051E010;
    v34 = coordinatorCopy;
    v35 = v9;
    dispatch_async(v31, v33);
  }

  return v9;
}

+ (id)_alignToRotationCadence:(id)cadence
{
  cadenceCopy = cadence;
  [cadenceCopy timeIntervalSince1970];
  v5 = (v4 * 1000.0);
  v6 = 900 * (v5 / 0xDBBA0);
  if (1000 * (v5 / 0x3E8) == v5 && v6 == v5 / 0x3E8)
  {
    v8 = cadenceCopy;
  }

  else
  {
    v8 = [[NSDate alloc] initWithTimeIntervalSince1970:v6];
  }

  v9 = v8;

  return v9;
}

+ (int64_t)_computeSecondsSinceBirth:(id)birth
{
  birthCopy = birth;
  v5 = +[NSDate now];
  [v5 timeIntervalSince1970];
  v6 = [self _computeSecondsSinceBirth:birthCopy forTimeInterval:?];

  return v6;
}

+ (id)_createHomeEphemeralIdWithHomeSeed:(id)seed withCreationTime:(id)time
{
  timeCopy = time;
  seedCopy = seed;
  v7 = +[ADAnalyticsIdentifiersProvider _homeEphemeralIdNamespace];
  v8 = [ADAnalyticsIdentifiersProvider _timestampToNSString:timeCopy];

  v9 = [NSUUID ad_createV5UUIDWithNamespace:v7, seedCopy, v8, 0];

  return v9;
}

+ (id)_createUserEphemeralIdWithUserSeed:(id)seed withCreationTime:(id)time
{
  timeCopy = time;
  seedCopy = seed;
  v7 = +[ADAnalyticsIdentifiersProvider _userEphemeralIdNamespace];
  v8 = [ADAnalyticsIdentifiersProvider _timestampToNSString:timeCopy];

  v9 = [NSUUID ad_createV5UUIDWithNamespace:v7, seedCopy, v8, 0];

  return v9;
}

+ (id)_timestampToNSString:(id)string
{
  v3 = qword_100590840;
  stringCopy = string;
  if (v3 != -1)
  {
    dispatch_once(&qword_100590840, &stru_100519F10);
  }

  v5 = [qword_100590838 stringFromDate:stringCopy];

  return v5;
}

+ (id)_homeEphemeralIdNamespace
{
  if (qword_100590820 != -1)
  {
    dispatch_once(&qword_100590820, &stru_100519ED0);
  }

  v3 = qword_100590818;

  return v3;
}

@end