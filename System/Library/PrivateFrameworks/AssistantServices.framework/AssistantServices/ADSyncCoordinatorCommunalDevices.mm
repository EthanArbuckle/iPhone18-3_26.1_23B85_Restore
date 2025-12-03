@interface ADSyncCoordinatorCommunalDevices
+ (unint64_t)_computeLeeway:(unint64_t)leeway;
+ (unint64_t)_timerIntervalNanosec;
+ (unint64_t)_timerStartNanosec;
- (ADSyncCoordinatorCommunalDevices)init;
- (ADSyncCoordinatorCommunalDevices)initWithProfileUserId:(id)id;
- (ADSyncCoordinatorCommunalDevices)initWithProfileUserId:(id)id homeInfoManager:(id)manager multiUserService:(id)service disableTimer:(BOOL)timer;
- (BOOL)_isDefaultUserAvailable;
- (BOOL)_sameItem:(id)item other:(id)other;
- (BOOL)addAggregationIdForUser:(id)user aggregationId:(id)id;
- (BOOL)addSeedForHome:(id)home seed:(id)seed;
- (id)_fetchKnownAccounts;
- (id)_fetchKnownAccountsWithMultiUserService:(id)service userSeedStream:(id)stream;
- (id)fetchSynchronizedAnalyticsIdsForHome:(id)home;
- (id)fetchSynchronizedAnalyticsIdsForUser:(id)user;
- (void)_initConsistencyTimer;
- (void)_initHomeDetailsWithProfileUserId:(id)id homeInfoManager:(id)manager multiUserService:(id)service;
- (void)_logTVOSMacroError;
- (void)_publishHomeSeed:(id)seed forAccounts:(id)accounts;
- (void)_publishHomeSeedToAllMembers;
- (void)_publishHomeSeedToAllMembers:(id)members;
- (void)_refreshHomeAndUserDetailsWithHomeInfoManager:(id)manager multiUserService:(id)service;
- (void)refreshHomeAndUserDetails;
@end

@implementation ADSyncCoordinatorCommunalDevices

- (void)_logTVOSMacroError
{
  if (!self->_macroErrorLogged)
  {
    v3 = +[ADAnalyticsIdentifiersUtils logger];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "TVOS macro is false in communal devices sync coordinator!", v4, 2u);
    }

    self->_macroErrorLogged = 1;
  }
}

- (void)_publishHomeSeed:(id)seed forAccounts:(id)accounts
{
  seedCopy = seed;
  accountsCopy = accounts;
  v8 = &OBJC_METACLASS___ADDictationConnection;
  v9 = +[ADAnalyticsIdentifiersUtils logger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v45 = accountsCopy;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Going to publish seed to %@", buf, 0xCu);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = accountsCopy;
  v39 = [obj countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (v39)
  {
    v11 = *v41;
    p_vtable = ADAnalyticsIdentifiersProvider.vtable;
    v13 = &RPOptionStatusFlags_ptr;
    *&v10 = 138412290;
    v35 = v10;
    v37 = seedCopy;
    while (2)
    {
      for (i = 0; i != v39; i = i + 1)
      {
        if (*v41 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v40 + 1) + 8 * i);
        v16 = [v13[128] now];
        v17 = [p_vtable + 182 processorForBMSiriHomeSeed:v16 homeId:self->_currentHomeId account:v15];

        fetchLocalIdItemPair = [v17 fetchLocalIdItemPair];
        v19 = fetchLocalIdItemPair;
        if (!fetchLocalIdItemPair)
        {
          goto LABEL_18;
        }

        v38 = v15;
        current = [fetchLocalIdItemPair current];
        if ([(ADSyncCoordinatorCommunalDevices *)self _sameItem:seedCopy other:current])
        {
        }

        else
        {
          [v19 next];
          v21 = v17;
          v22 = p_vtable;
          v23 = v11;
          v25 = v24 = v8;
          v26 = [(ADSyncCoordinatorCommunalDevices *)self _sameItem:seedCopy other:v25];

          v8 = v24;
          v11 = v23;
          p_vtable = v22;
          v17 = v21;
          v13 = &RPOptionStatusFlags_ptr;

          if (!v26)
          {
            seedCopy = v37;
            v15 = v38;
LABEL_18:
            logger = [&v8[76] logger];
            if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
            {
              current2 = [v19 current];
              createdOn = [current2 createdOn];
              [v19 next];
              v32 = v31 = v15;
              createdOn2 = [v32 createdOn];
              createdOn3 = [seedCopy createdOn];
              *buf = 138413058;
              v45 = v31;
              v46 = 2112;
              v47 = createdOn;
              v48 = 2112;
              v49 = createdOn2;
              v50 = 2112;
              v51 = createdOn3;
              _os_log_debug_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEBUG, "Account %@ does not have the seed. current:%@ next:%@ expected:%@", buf, 0x2Au);

              seedCopy = v37;
            }

            [(ADSyncCoordinatorCommunalDevices *)self _logTVOSMacroError];
            goto LABEL_21;
          }
        }

        logger2 = [&v8[76] logger];
        if (os_log_type_enabled(logger2, OS_LOG_TYPE_DEBUG))
        {
          *buf = v35;
          v45 = v38;
          _os_log_debug_impl(&_mh_execute_header, logger2, OS_LOG_TYPE_DEBUG, "Account %@ already has the seed!", buf, 0xCu);
        }

        seedCopy = v37;
      }

      v39 = [obj countByEnumeratingWithState:&v40 objects:v52 count:16];
      if (v39)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:
}

- (BOOL)_sameItem:(id)item other:(id)other
{
  if (!other)
  {
    return 0;
  }

  itemCopy = item;
  value = [other value];
  value2 = [itemCopy value];

  LOBYTE(itemCopy) = [value isEqual:value2];
  return itemCopy;
}

- (void)_publishHomeSeedToAllMembers:(id)members
{
  membersCopy = members;
  if ([ADAnalyticsIdentifiersUtils isPartOfHome:self->_currentHomeId])
  {
    backgroundQueue = self->_backgroundQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1002F5164;
    v7[3] = &unk_10051E010;
    v7[4] = self;
    v8 = membersCopy;
    dispatch_async(backgroundQueue, v7);
  }

  else
  {
    v6 = +[ADAnalyticsIdentifiersUtils logger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Won't run publish seed to home members as device is not part of a home", buf, 2u);
    }
  }
}

- (void)_publishHomeSeedToAllMembers
{
  v3 = +[NSDate now];
  v4 = [ADBiomeStreamProcessor processorForBMSiriHomeSeed:v3 homeId:self->_currentHomeId userId:self->_defaultUserId];

  fetchLocalIdItemPair = [v4 fetchLocalIdItemPair];
  v6 = fetchLocalIdItemPair;
  if (fetchLocalIdItemPair)
  {
    current = [fetchLocalIdItemPair current];
    next = [v6 next];
    if (current | next)
    {
      _fetchKnownAccounts = [(ADSyncCoordinatorCommunalDevices *)self _fetchKnownAccounts];
      if (current)
      {
        [(ADSyncCoordinatorCommunalDevices *)self _publishHomeSeed:current forAccounts:_fetchKnownAccounts];
      }

      if (next)
      {
        [(ADSyncCoordinatorCommunalDevices *)self _publishHomeSeed:next forAccounts:_fetchKnownAccounts];
      }
    }

    else
    {
      v9 = +[ADAnalyticsIdentifiersUtils logger];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *v11 = 0;
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Both current and next seeds are nil. Nothing to publish", v11, 2u);
      }
    }
  }

  else
  {
    current = +[ADAnalyticsIdentifiersUtils logger];
    if (os_log_type_enabled(current, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, current, OS_LOG_TYPE_DEBUG, "There are no ephemeral home seeds. Nothing to publish", buf, 2u);
    }
  }
}

- (id)_fetchKnownAccountsWithMultiUserService:(id)service userSeedStream:(id)stream
{
  streamCopy = stream;
  serviceCopy = service;
  v7 = objc_alloc_init(NSMutableSet);
  allUsersBySharedUserID = [serviceCopy allUsersBySharedUserID];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1002F5610;
  v18[3] = &unk_10051B140;
  v9 = v7;
  v19 = v9;
  [allUsersBySharedUserID enumerateKeysAndObjectsUsingBlock:v18];
  v10 = +[ADAnalyticsIdentifiersUtils logger];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v21 = v9;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Home member accounts based on RMV:%@", buf, 0xCu);
  }

  v17 = 0;
  v11 = [streamCopy sharedDeviceAccountsWithError:&v17];

  v12 = v17;
  v13 = +[ADAnalyticsIdentifiersUtils logger];
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v12;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Biome accounts could not be fetched. Will be able to share home id details only with RMV enabled home members. Error:%@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v21 = v11;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Home member accounts based on inbound sync:%@", buf, 0xCu);
    }

    [v9 addObjectsFromArray:v11];
    v14 = +[ADAnalyticsIdentifiersUtils logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v21 = v9;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Post merge %@", buf, 0xCu);
    }
  }

  allObjects = [v9 allObjects];

  return allObjects;
}

- (id)_fetchKnownAccounts
{
  v3 = +[ADMultiUserService sharedService];
  v4 = BiomeLibrary();
  siri = [v4 Siri];
  analyticsIdentifiers = [siri AnalyticsIdentifiers];
  userSeed = [analyticsIdentifiers UserSeed];
  v8 = [(ADSyncCoordinatorCommunalDevices *)self _fetchKnownAccountsWithMultiUserService:v3 userSeedStream:userSeed];

  return v8;
}

- (id)fetchSynchronizedAnalyticsIdsForUser:(id)user
{
  userCopy = user;
  if (!userCopy)
  {
    userCopy = self->_defaultUserId;
  }

  if ([(ADSyncCoordinatorCommunalDevices *)self _isDefaultUserAvailable])
  {
    v5 = +[NSDate now];
    v6 = [ADBiomeStreamProcessor processorForBMSiriUserSeed:v5 userId:userCopy];
    fetchIdItemPair = [v6 fetchIdItemPair];
    v8 = [ADBiomeStreamProcessor processorForBMSiriUserAggregationId:v5 userId:userCopy];
    fetchIdItemPair2 = [v8 fetchIdItemPair];
    v10 = [[ADSynchronizedUserAnalyticsIds alloc] initWithUserEphemeralSeeds:fetchIdItemPair andUserAggregationIds:fetchIdItemPair2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)fetchSynchronizedAnalyticsIdsForHome:(id)home
{
  if ([(ADSyncCoordinatorCommunalDevices *)self isPartOfHome]&& [(ADSyncCoordinatorCommunalDevices *)self _isDefaultUserAvailable])
  {
    v4 = +[NSDate now];
    v5 = [ADBiomeStreamProcessor processorForBMSiriHomeSeed:v4 homeId:self->_currentHomeId userId:self->_defaultUserId];

    fetchIdItemPair = [v5 fetchIdItemPair];
    v7 = [[ADSynchronizedHomeAnalyticsIds alloc] initWithHomeEphemeralSeeds:fetchIdItemPair];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)addSeedForHome:(id)home seed:(id)seed
{
  homeCopy = home;
  if (!homeCopy)
  {
    homeCopy = self->_currentHomeId;
  }

  if ([ADAnalyticsIdentifiersUtils isPartOfHome:homeCopy]&& [(ADSyncCoordinatorCommunalDevices *)self _isDefaultUserAvailable])
  {
    v6 = [[BMAccount alloc] initWithAltDSID:self->_defaultUserId];
    if (v6)
    {
      [(ADSyncCoordinatorCommunalDevices *)self _logTVOSMacroError];
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
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

- (void)_refreshHomeAndUserDetailsWithHomeInfoManager:(id)manager multiUserService:(id)service
{
  v7 = [(ADSyncCoordinatorCommunalDevices *)self _profileUserId:manager];
  v5 = +[ADHomeInfoManager sharedInfoManager];
  v6 = +[ADMultiUserService sharedService];
  [(ADSyncCoordinatorCommunalDevices *)self _initHomeDetailsWithProfileUserId:v7 homeInfoManager:v5 multiUserService:v6];
}

- (void)refreshHomeAndUserDetails
{
  v3 = +[ADAnalyticsIdentifiersUtils logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Checking to see if the device still belongs to the same home", v6, 2u);
  }

  v4 = +[ADHomeInfoManager sharedInfoManager];
  v5 = +[ADMultiUserService sharedService];
  [(ADSyncCoordinatorCommunalDevices *)self _refreshHomeAndUserDetailsWithHomeInfoManager:v4 multiUserService:v5];
}

- (void)_initConsistencyTimer
{
  v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_backgroundQueue);
  consistencyTimer = self->_consistencyTimer;
  self->_consistencyTimer = v3;

  if (self->_consistencyTimer)
  {
    v5 = +[ADSyncCoordinatorCommunalDevices _timerStartNanosec];
    v6 = +[ADSyncCoordinatorCommunalDevices _timerIntervalNanosec];
    v7 = [ADSyncCoordinatorCommunalDevices _computeLeeway:v6];
    v8 = self->_consistencyTimer;
    v9 = dispatch_time(0xFFFFFFFFFFFFFFFELL, v5);
    dispatch_source_set_timer(v8, v9, v6, v7);
    v10 = self->_consistencyTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1002F5DE8;
    handler[3] = &unk_10051DFE8;
    handler[4] = self;
    dispatch_source_set_event_handler(v10, handler);
    v11 = +[ADAnalyticsIdentifiersUtils logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218496;
      v15 = v5;
      v16 = 2048;
      v17 = v6;
      v18 = 2048;
      v19 = v7;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Starting consistency check timer start=%llu interval=%llu leeway=%llu", buf, 0x20u);
    }

    dispatch_resume(self->_consistencyTimer);
  }

  else
  {
    v12 = +[ADAnalyticsIdentifiersUtils logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Timer to ensure home seed and aggregation id is synced to all home members could not be started. If a newly created id was not written to the stream of a home member, that member may not see the correct id and home-scoped analytics will not work correctly for that user's devices", buf, 2u);
    }
  }
}

- (BOOL)_isDefaultUserAvailable
{
  defaultUserId = self->_defaultUserId;
  if (defaultUserId)
  {
    LOBYTE(defaultUserId) = [(NSString *)defaultUserId isEqual:@"userNotYetDetermined"]^ 1;
  }

  return defaultUserId;
}

- (void)_initHomeDetailsWithProfileUserId:(id)id homeInfoManager:(id)manager multiUserService:(id)service
{
  idCopy = id;
  serviceCopy = service;
  currentHome = [manager currentHome];
  v11 = currentHome;
  if (currentHome)
  {
    uniqueIdentifier = [currentHome uniqueIdentifier];
    currentHomeId = self->_currentHomeId;
    self->_currentHomeId = uniqueIdentifier;

    deviceOwner = [serviceCopy deviceOwner];
    iCloudAltDSID = [deviceOwner iCloudAltDSID];
    defaultUserId = self->_defaultUserId;
    self->_defaultUserId = iCloudAltDSID;

    v17 = 1;
  }

  else
  {
    v18 = idCopy;
    v17 = 0;
    deviceOwner = self->_defaultUserId;
    self->_defaultUserId = v18;
  }

  if (!self->_currentHomeId)
  {
    v19 = +[ADAnalyticsIdentifiersUtils idWhenNotPartOfHome];
    v20 = self->_currentHomeId;
    self->_currentHomeId = v19;
  }

  if (!self->_defaultUserId)
  {
    objc_storeStrong(&self->_defaultUserId, @"userNotYetDetermined");
  }

  v21 = +[ADAnalyticsIdentifiersUtils logger];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v23 = self->_defaultUserId;
    v22 = self->_currentHomeId;
    v24[0] = 67109634;
    v24[1] = v17;
    v25 = 2112;
    v26 = v22;
    v27 = 2112;
    v28 = v23;
    _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Initializing Home details; partOfHome:%d currentHomeId:%@ defaultUserId:%@", v24, 0x1Cu);
  }
}

- (ADSyncCoordinatorCommunalDevices)initWithProfileUserId:(id)id homeInfoManager:(id)manager multiUserService:(id)service disableTimer:(BOOL)timer
{
  idCopy = id;
  managerCopy = manager;
  serviceCopy = service;
  v18.receiver = self;
  v18.super_class = ADSyncCoordinatorCommunalDevices;
  v13 = [(ADSyncCoordinatorCommunalDevices *)&v18 init];
  if (v13)
  {
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("ADAnalyticsIdentifiersHomeQueue", v14);

    backgroundQueue = v13->_backgroundQueue;
    v13->_backgroundQueue = v15;

    v13->_multiUserDevice = 1;
    [(ADSyncCoordinatorCommunalDevices *)v13 _initHomeDetailsWithProfileUserId:idCopy homeInfoManager:managerCopy multiUserService:serviceCopy];
    if (!timer)
    {
      [(ADSyncCoordinatorCommunalDevices *)v13 _initConsistencyTimer];
    }
  }

  return v13;
}

- (ADSyncCoordinatorCommunalDevices)initWithProfileUserId:(id)id
{
  idCopy = id;
  v5 = +[ADHomeInfoManager sharedInfoManager];
  v6 = +[ADMultiUserService sharedService];
  v7 = [(ADSyncCoordinatorCommunalDevices *)self initWithProfileUserId:idCopy homeInfoManager:v5 multiUserService:v6 disableTimer:0];

  return v7;
}

- (ADSyncCoordinatorCommunalDevices)init
{
  v3 = +[ADAnalyticsIdentifiersUtils logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Initializing ADSyncCoordinatorCommunalDevices", v5, 2u);
  }

  return [(ADSyncCoordinatorCommunalDevices *)self initWithProfileUserId:0];
}

+ (unint64_t)_computeLeeway:(unint64_t)leeway
{
  v3 = leeway / 0xA;
  if (leeway / 0xA <= 0xF4240)
  {
    v3 = 1000000;
  }

  if (v3 >= 0xDF8475800)
  {
    return 60000000000;
  }

  else
  {
    return v3;
  }
}

+ (unint64_t)_timerIntervalNanosec
{
  v2 = +[ADPreferences sharedPreferences];
  siriAnalyticsIdentifiersConsistencyTimerIntervalMillisec = [v2 siriAnalyticsIdentifiersConsistencyTimerIntervalMillisec];

  if ((AFIsInternalInstall() & (siriAnalyticsIdentifiersConsistencyTimerIntervalMillisec - 1 < 0x1B7740)) != 0)
  {
    return 1000000 * siriAnalyticsIdentifiersConsistencyTimerIntervalMillisec;
  }

  else
  {
    return 1800000000000;
  }
}

+ (unint64_t)_timerStartNanosec
{
  v2 = +[ADPreferences sharedPreferences];
  siriAnalyticsIdentifiersConsistencyTimerStartDelayMillisec = [v2 siriAnalyticsIdentifiersConsistencyTimerStartDelayMillisec];

  if ((AFIsInternalInstall() & (siriAnalyticsIdentifiersConsistencyTimerStartDelayMillisec - 1 < 0x493E0)) != 0)
  {
    return 1000000 * siriAnalyticsIdentifiersConsistencyTimerStartDelayMillisec;
  }

  else
  {
    return 300000000000;
  }
}

@end