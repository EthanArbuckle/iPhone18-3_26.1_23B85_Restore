@interface ADSyncCoordinatorCommunalDevices
+ (unint64_t)_computeLeeway:(unint64_t)a3;
+ (unint64_t)_timerIntervalNanosec;
+ (unint64_t)_timerStartNanosec;
- (ADSyncCoordinatorCommunalDevices)init;
- (ADSyncCoordinatorCommunalDevices)initWithProfileUserId:(id)a3;
- (ADSyncCoordinatorCommunalDevices)initWithProfileUserId:(id)a3 homeInfoManager:(id)a4 multiUserService:(id)a5 disableTimer:(BOOL)a6;
- (BOOL)_isDefaultUserAvailable;
- (BOOL)_sameItem:(id)a3 other:(id)a4;
- (BOOL)addAggregationIdForUser:(id)a3 aggregationId:(id)a4;
- (BOOL)addSeedForHome:(id)a3 seed:(id)a4;
- (id)_fetchKnownAccounts;
- (id)_fetchKnownAccountsWithMultiUserService:(id)a3 userSeedStream:(id)a4;
- (id)fetchSynchronizedAnalyticsIdsForHome:(id)a3;
- (id)fetchSynchronizedAnalyticsIdsForUser:(id)a3;
- (void)_initConsistencyTimer;
- (void)_initHomeDetailsWithProfileUserId:(id)a3 homeInfoManager:(id)a4 multiUserService:(id)a5;
- (void)_logTVOSMacroError;
- (void)_publishHomeSeed:(id)a3 forAccounts:(id)a4;
- (void)_publishHomeSeedToAllMembers;
- (void)_publishHomeSeedToAllMembers:(id)a3;
- (void)_refreshHomeAndUserDetailsWithHomeInfoManager:(id)a3 multiUserService:(id)a4;
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

- (void)_publishHomeSeed:(id)a3 forAccounts:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = &OBJC_METACLASS___ADDictationConnection;
  v9 = +[ADAnalyticsIdentifiersUtils logger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v45 = v7;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Going to publish seed to %@", buf, 0xCu);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v7;
  v39 = [obj countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (v39)
  {
    v11 = *v41;
    p_vtable = ADAnalyticsIdentifiersProvider.vtable;
    v13 = &RPOptionStatusFlags_ptr;
    *&v10 = 138412290;
    v35 = v10;
    v37 = v6;
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

        v18 = [v17 fetchLocalIdItemPair];
        v19 = v18;
        if (!v18)
        {
          goto LABEL_18;
        }

        v38 = v15;
        v20 = [v18 current];
        if ([(ADSyncCoordinatorCommunalDevices *)self _sameItem:v6 other:v20])
        {
        }

        else
        {
          [v19 next];
          v21 = v17;
          v22 = p_vtable;
          v23 = v11;
          v25 = v24 = v8;
          v26 = [(ADSyncCoordinatorCommunalDevices *)self _sameItem:v6 other:v25];

          v8 = v24;
          v11 = v23;
          p_vtable = v22;
          v17 = v21;
          v13 = &RPOptionStatusFlags_ptr;

          if (!v26)
          {
            v6 = v37;
            v15 = v38;
LABEL_18:
            v28 = [&v8[76] logger];
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              v29 = [v19 current];
              v30 = [v29 createdOn];
              [v19 next];
              v32 = v31 = v15;
              v33 = [v32 createdOn];
              v34 = [v6 createdOn];
              *buf = 138413058;
              v45 = v31;
              v46 = 2112;
              v47 = v30;
              v48 = 2112;
              v49 = v33;
              v50 = 2112;
              v51 = v34;
              _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "Account %@ does not have the seed. current:%@ next:%@ expected:%@", buf, 0x2Au);

              v6 = v37;
            }

            [(ADSyncCoordinatorCommunalDevices *)self _logTVOSMacroError];
            goto LABEL_21;
          }
        }

        v27 = [&v8[76] logger];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          *buf = v35;
          v45 = v38;
          _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "Account %@ already has the seed!", buf, 0xCu);
        }

        v6 = v37;
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

- (BOOL)_sameItem:(id)a3 other:(id)a4
{
  if (!a4)
  {
    return 0;
  }

  v5 = a3;
  v6 = [a4 value];
  v7 = [v5 value];

  LOBYTE(v5) = [v6 isEqual:v7];
  return v5;
}

- (void)_publishHomeSeedToAllMembers:(id)a3
{
  v4 = a3;
  if ([ADAnalyticsIdentifiersUtils isPartOfHome:self->_currentHomeId])
  {
    backgroundQueue = self->_backgroundQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1002F5164;
    v7[3] = &unk_10051E010;
    v7[4] = self;
    v8 = v4;
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

  v5 = [v4 fetchLocalIdItemPair];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 current];
    v8 = [v6 next];
    if (v7 | v8)
    {
      v10 = [(ADSyncCoordinatorCommunalDevices *)self _fetchKnownAccounts];
      if (v7)
      {
        [(ADSyncCoordinatorCommunalDevices *)self _publishHomeSeed:v7 forAccounts:v10];
      }

      if (v8)
      {
        [(ADSyncCoordinatorCommunalDevices *)self _publishHomeSeed:v8 forAccounts:v10];
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
    v7 = +[ADAnalyticsIdentifiersUtils logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "There are no ephemeral home seeds. Nothing to publish", buf, 2u);
    }
  }
}

- (id)_fetchKnownAccountsWithMultiUserService:(id)a3 userSeedStream:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(NSMutableSet);
  v8 = [v6 allUsersBySharedUserID];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1002F5610;
  v18[3] = &unk_10051B140;
  v9 = v7;
  v19 = v9;
  [v8 enumerateKeysAndObjectsUsingBlock:v18];
  v10 = +[ADAnalyticsIdentifiersUtils logger];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v21 = v9;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Home member accounts based on RMV:%@", buf, 0xCu);
  }

  v17 = 0;
  v11 = [v5 sharedDeviceAccountsWithError:&v17];

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

  v15 = [v9 allObjects];

  return v15;
}

- (id)_fetchKnownAccounts
{
  v3 = +[ADMultiUserService sharedService];
  v4 = BiomeLibrary();
  v5 = [v4 Siri];
  v6 = [v5 AnalyticsIdentifiers];
  v7 = [v6 UserSeed];
  v8 = [(ADSyncCoordinatorCommunalDevices *)self _fetchKnownAccountsWithMultiUserService:v3 userSeedStream:v7];

  return v8;
}

- (id)fetchSynchronizedAnalyticsIdsForUser:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = self->_defaultUserId;
  }

  if ([(ADSyncCoordinatorCommunalDevices *)self _isDefaultUserAvailable])
  {
    v5 = +[NSDate now];
    v6 = [ADBiomeStreamProcessor processorForBMSiriUserSeed:v5 userId:v4];
    v7 = [v6 fetchIdItemPair];
    v8 = [ADBiomeStreamProcessor processorForBMSiriUserAggregationId:v5 userId:v4];
    v9 = [v8 fetchIdItemPair];
    v10 = [[ADSynchronizedUserAnalyticsIds alloc] initWithUserEphemeralSeeds:v7 andUserAggregationIds:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)fetchSynchronizedAnalyticsIdsForHome:(id)a3
{
  if ([(ADSyncCoordinatorCommunalDevices *)self isPartOfHome]&& [(ADSyncCoordinatorCommunalDevices *)self _isDefaultUserAvailable])
  {
    v4 = +[NSDate now];
    v5 = [ADBiomeStreamProcessor processorForBMSiriHomeSeed:v4 homeId:self->_currentHomeId userId:self->_defaultUserId];

    v6 = [v5 fetchIdItemPair];
    v7 = [[ADSynchronizedHomeAnalyticsIds alloc] initWithHomeEphemeralSeeds:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)addSeedForHome:(id)a3 seed:(id)a4
{
  v5 = a3;
  if (!v5)
  {
    v5 = self->_currentHomeId;
  }

  if ([ADAnalyticsIdentifiersUtils isPartOfHome:v5]&& [(ADSyncCoordinatorCommunalDevices *)self _isDefaultUserAvailable])
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

- (void)_refreshHomeAndUserDetailsWithHomeInfoManager:(id)a3 multiUserService:(id)a4
{
  v7 = [(ADSyncCoordinatorCommunalDevices *)self _profileUserId:a3];
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

- (void)_initHomeDetailsWithProfileUserId:(id)a3 homeInfoManager:(id)a4 multiUserService:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [a4 currentHome];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 uniqueIdentifier];
    currentHomeId = self->_currentHomeId;
    self->_currentHomeId = v12;

    v14 = [v9 deviceOwner];
    v15 = [v14 iCloudAltDSID];
    defaultUserId = self->_defaultUserId;
    self->_defaultUserId = v15;

    v17 = 1;
  }

  else
  {
    v18 = v8;
    v17 = 0;
    v14 = self->_defaultUserId;
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

- (ADSyncCoordinatorCommunalDevices)initWithProfileUserId:(id)a3 homeInfoManager:(id)a4 multiUserService:(id)a5 disableTimer:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
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
    [(ADSyncCoordinatorCommunalDevices *)v13 _initHomeDetailsWithProfileUserId:v10 homeInfoManager:v11 multiUserService:v12];
    if (!a6)
    {
      [(ADSyncCoordinatorCommunalDevices *)v13 _initConsistencyTimer];
    }
  }

  return v13;
}

- (ADSyncCoordinatorCommunalDevices)initWithProfileUserId:(id)a3
{
  v4 = a3;
  v5 = +[ADHomeInfoManager sharedInfoManager];
  v6 = +[ADMultiUserService sharedService];
  v7 = [(ADSyncCoordinatorCommunalDevices *)self initWithProfileUserId:v4 homeInfoManager:v5 multiUserService:v6 disableTimer:0];

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

+ (unint64_t)_computeLeeway:(unint64_t)a3
{
  v3 = a3 / 0xA;
  if (a3 / 0xA <= 0xF4240)
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
  v3 = [v2 siriAnalyticsIdentifiersConsistencyTimerIntervalMillisec];

  if ((AFIsInternalInstall() & (v3 - 1 < 0x1B7740)) != 0)
  {
    return 1000000 * v3;
  }

  else
  {
    return 1800000000000;
  }
}

+ (unint64_t)_timerStartNanosec
{
  v2 = +[ADPreferences sharedPreferences];
  v3 = [v2 siriAnalyticsIdentifiersConsistencyTimerStartDelayMillisec];

  if ((AFIsInternalInstall() & (v3 - 1 < 0x493E0)) != 0)
  {
    return 1000000 * v3;
  }

  else
  {
    return 300000000000;
  }
}

@end