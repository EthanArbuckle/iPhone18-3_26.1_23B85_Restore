@interface ADHomeInfoManager
+ (id)findSettingWithKeyPath:(id)path group:(id)group;
+ (id)sharedInfoManager;
- (ADHomeInfoManager)initWithHomeManager:(id)manager queue:(id)queue;
- (AFHomeAccessoryInfo)currentAccessoryInfo;
- (BOOL)_allowExplicitContentSettingForUser:(id)user forHome:(id)home;
- (BOOL)_hasSiriCapableDeviceInHome:(id)home;
- (BOOL)_updateHomeUserSettings;
- (BOOL)areActivityNotificationsOffForAllHomes;
- (BOOL)hasOptedInHH2;
- (NSUUID)accessoryLoggingSalt;
- (id)_accessoryForIdentifier:(id)identifier inHome:(id *)home;
- (id)_accessoryInfoForAccessory:(id)accessory;
- (id)_accessoryLoggingSalt;
- (id)_activityNotificationsForHomes:(id)homes;
- (id)_currentAccessoryInfo;
- (id)_currentHome;
- (id)_currentHomeInfo;
- (id)_getAccessoryCategoryForExecutionInfo:(id)info;
- (id)_homeManager;
- (id)_homesWithMultiUserEnabled;
- (id)_homesWithSiriCapableDevices;
- (id)_init;
- (id)_initWithContext:(id)context;
- (id)_settingsForHomeUser:(id)user forHome:(id)home;
- (id)accessoriesInHome;
- (id)accessoriesWithPersonalRequestsEnabled;
- (id)getCurrentASRLanguages;
- (id)getHomeUniqueIdentifiers;
- (id)infoForThisDevice;
- (id)preferredMediaUserInfo;
- (id)rootAfHomeInfoForThisDevice;
- (id)updatedHomeInfoForRootInfo:(id)info;
- (void)_checkAndDisableVoiceIDIfRequired;
- (void)_enumerateListenersUsingBlock:(id)block;
- (void)_homeManagerUpdatedHomes:(id)homes homesToDelete:(id)delete;
- (void)_logRelevantAnalyticsOnHomeUserSettingsUpdateForCurrentSettings:(id)settings allowVoiceIdSettingValue:(int64_t)value isPrimaryUser:(BOOL)user;
- (void)_onceSiriDataSharingAdjustment:(id)adjustment;
- (void)_propagateSiriDataSharingOptInStatus:(int64_t)status toAccessory:(id)accessory;
- (void)_resolveSiriDataSharingStatusMismatch:(id)mismatch;
- (void)_setPreferredMediaUserForAccessories:(id)accessories;
- (void)_setPreferredMediaUserForAccessory:(id)accessory;
- (void)_siriDataSharingAdjustment:(id)adjustment;
- (void)_siriDataSharingOptInStatusDidChange:(id)change;
- (void)_startAcceptingCloudSharesForMultiUserService;
- (void)_startCloudKitActivityForHomes:(id)homes homesToDelete:(id)delete;
- (void)_startCloudSharingForMultiUserService:(id)service;
- (void)_updateCurrentAccessoryInfoWithAccessory:(id)accessory;
- (void)_updateHomeContext:(id)context;
- (void)_updateVoiceTriggerPhrase;
- (void)accessory:(id)accessory didUpdateSettings:(id)settings;
- (void)accessoryDidUpdateName:(id)name;
- (void)accessoryDidUpdateSupportsThirdPartyMusic:(id)music;
- (void)addListener:(id)listener;
- (void)availableLanguagesInTheHome:(id)home;
- (void)currentHomeWithCompletion:(id)completion;
- (void)dealloc;
- (void)dumpAssistantStateChunk:(id)chunk;
- (void)emitHomeMetricInvocationEvent;
- (void)fetchAccessoriesInRoom:(id)room matchingCategoryTypes:(id)types completion:(id)completion;
- (void)fetchMultiUserMetricsWithCompletion:(id)completion;
- (void)getAccessoryCategoryForExecutionInfo:(id)info completion:(id)completion;
- (void)getAccessoryInfoForAccessoryWithUUID:(id)d completionHandler:(id)handler;
- (void)getCurrentAccessoryInfoWithCompletion:(id)completion;
- (void)getCurrentAccessoryWithCompletion:(id)completion;
- (void)getCurrentHomeMemberIds:(id)ids;
- (void)getHomeContext:(id)context;
- (void)getHomeIdForAccessoryId:(id)id completion:(id)completion;
- (void)getHomeManagerWithCompletion:(id)completion;
- (void)getLocalizedAccessoryCategoryForExecutionInfo:(id)info completion:(id)completion;
- (void)getSpeakerCapabilityForAccessoryWithUUID:(id)d completionHandler:(id)handler;
- (void)getVoiceSettingsForHomeMembers:(id)members;
- (void)home:(id)home didAddAccessory:(id)accessory;
- (void)home:(id)home didAddUser:(id)user;
- (void)home:(id)home didRemoveAccessory:(id)accessory;
- (void)home:(id)home didRemoveUser:(id)user;
- (void)home:(id)home didUpdateRoom:(id)room forAccessory:(id)accessory;
- (void)homeDidEnableMultiUser:(id)user;
- (void)homeDidUpdateName:(id)name;
- (void)homeManager:(id)manager didAddHome:(id)home;
- (void)homeManager:(id)manager didRemoveHome:(id)home;
- (void)homeManager:(id)manager didUpdateStatus:(unint64_t)status;
- (void)homeManagerDidUpdateAssistantIdentifiers:(id)identifiers;
- (void)homeManagerDidUpdateCurrentHome:(id)home;
- (void)homeManagerDidUpdateDataSyncState:(id)state;
- (void)homeManagerDidUpdateHomes:(id)homes;
- (void)initializeHomeSiriPhraseOptions:(id)options completion:(id)completion queue:(id)queue;
- (void)isJustSiriEnabledInTheHome:(id)home queue:(id)queue;
- (void)removeListener:(id)listener;
- (void)restartShareDeletion;
- (void)restartSharing;
- (void)setAllowJustSiriHomeKitSetting:(BOOL)setting withCompletion:(id)completion queue:(id)queue;
- (void)setRecognizeMyVoiceEnabled:(BOOL)enabled;
- (void)settingsDidUpdate:(id)update;
- (void)settingsForMultiUserWithRefresh:(BOOL)refresh completion:(id)completion;
- (void)settingsWillUpdate:(id)update;
- (void)shareManager:(id)manager didReceiveShareInvitation:(id)invitation completion:(id)completion;
- (void)startAcceptingCloudSharesForMultiUserService;
- (void)updateCurrentUserRMVSettingForHome:(id)home enabled:(BOOL)enabled completion:(id)completion;
- (void)updateRMVSettingForUser:(id)user enabled:(BOOL)enabled completion:(id)completion;
- (void)updateVoiceTriggerPhrase:(unint64_t)phrase currentAccessoryInfo:(id)info;
- (void)user:(id)user didUpdateAssistantAccessControl:(id)control forHome:(id)home;
@end

@implementation ADHomeInfoManager

- (BOOL)_updateHomeUserSettings
{
  selfCopy = self;
  _homeManager = [(ADHomeInfoManager *)self _homeManager];
  homes = [_homeManager homes];

  if (!selfCopy->_homeUserSettings)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    homeUserSettings = selfCopy->_homeUserSettings;
    selfCopy->_homeUserSettings = v5;
  }

  v90 = +[ADMultiUserService sharedService];
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  obj = homes;
  v93 = [obj countByEnumeratingWithState:&v115 objects:v126 count:16];
  if (v93)
  {
    v101 = 0;
    v7 = 0;
    v96 = 2;
    v92 = *v116;
    p_isa = &selfCopy->super.isa;
LABEL_5:
    v8 = 0;
    while (1)
    {
      if (*v116 != v92)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v115 + 1) + 8 * v8);
      if (!AFSupportsMultiUser() || v9 == selfCopy->_currentHome)
      {
        owner = [(HMHome *)v9 owner];
        uniqueIdentifier = [owner uniqueIdentifier];
        uUIDString = [uniqueIdentifier UUIDString];

        if (!uUIDString)
        {
          v81 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v121 = "[ADHomeInfoManager _updateHomeUserSettings]";
            _os_log_error_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "%s Home is not present", buf, 0xCu);
          }

          v82 = obj;

          v83 = 0;
          v84 = v90;
          goto LABEL_110;
        }

        v95 = v8;
        v99 = +[NSMutableDictionary dictionary];
        v102 = +[NSMutableDictionary dictionary];
        v13 = [(NSMutableDictionary *)selfCopy->_homeUserSettings objectForKey:uUIDString];
        v14 = [(NSMutableDictionary *)v13 objectForKey:@"allowVoiceID"];
        integerValue = [v14 integerValue];
        v15 = v13;
        if (v13)
        {
          v16 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315651;
            v121 = "[ADHomeInfoManager _updateHomeUserSettings]";
            v122 = 2113;
            v123 = v13;
            v124 = 2112;
            v125 = v9;
            _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s primaryUser previous settings %{private}@ for home (%@)", buf, 0x20u);
          }

          [v99 setObject:v14 forKey:uUIDString];
        }

        v108 = v14;
        owner2 = [(HMHome *)v9 owner];
        v18 = [(ADHomeInfoManager *)selfCopy _settingsForHomeUser:owner2 forHome:v9];

        v19 = [(NSMutableDictionary *)v18 objectForKey:@"allowVoiceID"];
        integerValue2 = [v19 integerValue];
        v21 = v19;
        [v102 setObject:v19 forKey:uUIDString];
        v22 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315651;
          v121 = "[ADHomeInfoManager _updateHomeUserSettings]";
          v122 = 2113;
          v123 = v18;
          v124 = 2112;
          v125 = v9;
          _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%s primaryUser new settings %{private}@ for home (%@)", buf, 0x20u);
        }

        v104 = v9;
        if (([(NSMutableDictionary *)v15 isEqualToDictionary:v18]& 1) == 0)
        {
          if (AFIsMultiUserCompanion())
          {
            currentUser = [(HMHome *)v9 currentUser];
            uniqueIdentifier2 = [currentUser uniqueIdentifier];
            uUIDString2 = [uniqueIdentifier2 UUIDString];
            v26 = [(NSMutableDictionary *)uUIDString isEqualToString:uUIDString2];

            if (v26)
            {
              if (integerValue2 == 1)
              {
                v27 = AFSiriLogContextDaemon;
                v9 = v104;
                v28 = integerValue;
                if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315395;
                  v121 = "[ADHomeInfoManager _updateHomeUserSettings]";
                  v122 = 2113;
                  v123 = uUIDString;
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s Voice ID setting is ON for %{private}@", buf, 0x16u);
                }

                v96 = 1;
                v29 = v101;
              }

              else
              {
                v30 = v96;
                if (!integerValue2)
                {
                  v30 = 0;
                }

                v96 = v30;
                v29 = v101;
                v9 = v104;
                v28 = integerValue;
              }

              if (v28)
              {
                v31 = 0;
              }

              else
              {
                v31 = integerValue2 == 1;
              }

              v32 = v31;
              v101 = v32 | v29;
            }

            else
            {
              v9 = v104;
            }
          }

          v33 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v121 = "[ADHomeInfoManager _updateHomeUserSettings]";
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%s #multi-user _updateHomeUserSettings- MultiUserSetupHomepodUserAddedToHome primary user", buf, 0xCu);
          }

          v7 = 1;
          [(ADHomeInfoManager *)selfCopy _logRelevantAnalyticsOnHomeUserSettingsUpdateForCurrentSettings:v18 allowVoiceIdSettingValue:integerValue2 isPrimaryUser:1];
        }

        v34 = selfCopy->_homeUserSettings;
        v35 = [(NSMutableDictionary *)v18 mutableCopy];
        v94 = uUIDString;
        [(NSMutableDictionary *)v34 setObject:v35 forKey:uUIDString];

        users = [(HMHome *)v9 users];
        v111 = 0u;
        v112 = 0u;
        v113 = 0u;
        v114 = 0u;
        v98 = users;
        v103 = [users countByEnumeratingWithState:&v111 objects:v119 count:16];
        if (v103)
        {
          v100 = *v112;
          v37 = v108;
          v38 = v15;
          while (1)
          {
            v39 = 0;
            v40 = v18;
            v41 = v37;
            v42 = v38;
            do
            {
              if (*v112 != v100)
              {
                objc_enumerationMutation(v98);
              }

              v43 = *(*(&v111 + 1) + 8 * v39);
              uniqueIdentifier3 = [v43 uniqueIdentifier];
              uUIDString3 = [uniqueIdentifier3 UUIDString];

              v46 = [p_isa[8] objectForKey:uUIDString3];

              v47 = [(NSMutableDictionary *)v46 objectForKey:@"allowVoiceID"];

              integerValue3 = [v47 integerValue];
              v109 = v46;
              if (v46)
              {
                v48 = AFSiriLogContextDaemon;
                if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315651;
                  v121 = "[ADHomeInfoManager _updateHomeUserSettings]";
                  v122 = 2113;
                  v123 = v109;
                  v124 = 2112;
                  v125 = v104;
                  _os_log_debug_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "%s Secondary user previous settings %{private}@ for home (%@)", buf, 0x20u);
                }

                [v99 setObject:v47 forKey:uUIDString3];
              }

              v41 = v47;
              v18 = [p_isa _settingsForHomeUser:v43 forHome:v104];

              v49 = [(NSMutableDictionary *)v18 objectForKey:@"allowVoiceID"];

              integerValue4 = [v49 integerValue];
              [v102 setObject:v49 forKey:uUIDString3];
              v51 = AFSiriLogContextDaemon;
              if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315651;
                v121 = "[ADHomeInfoManager _updateHomeUserSettings]";
                v122 = 2113;
                v123 = v18;
                v124 = 2112;
                v125 = v104;
                _os_log_debug_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEBUG, "%s Secondary user new settings %{private}@ for home (%@)", buf, 0x20u);
              }

              if (([(NSMutableDictionary *)v109 isEqualToDictionary:v18]& 1) == 0)
              {
                if (AFIsMultiUserCompanion())
                {
                  v97 = v49;
                  currentUser2 = [(HMHome *)v104 currentUser];
                  uniqueIdentifier4 = [currentUser2 uniqueIdentifier];
                  uUIDString4 = [uniqueIdentifier4 UUIDString];
                  v55 = [(NSMutableDictionary *)uUIDString3 isEqualToString:uUIDString4];

                  if (v55)
                  {
                    if (integerValue4)
                    {
                      v49 = v97;
                      if (integerValue4 == 1)
                      {
                        v56 = AFSiriLogContextDaemon;
                        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
                        {
                          *buf = 136315395;
                          v121 = "[ADHomeInfoManager _updateHomeUserSettings]";
                          v122 = 2113;
                          v123 = uUIDString3;
                          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "%s Voice ID setting is ON for %{private}@", buf, 0x16u);
                        }

                        v96 = 1;
                      }

                      goto LABEL_59;
                    }

                    v96 = 0;
                  }

                  v49 = v97;
                }

LABEL_59:
                v57 = AFSiriLogContextDaemon;
                if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315138;
                  v121 = "[ADHomeInfoManager _updateHomeUserSettings]";
                  _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "%s #multi-user _updateHomeUserSettings- MultiUserSetupHomepodUserAddedToHome secondary user", buf, 0xCu);
                }

                [p_isa _logRelevantAnalyticsOnHomeUserSettingsUpdateForCurrentSettings:v18 allowVoiceIdSettingValue:integerValue4 isPrimaryUser:0];
                if (integerValue3)
                {
                  v58 = 0;
                }

                else
                {
                  v58 = integerValue4 == 1;
                }

                v59 = v58;
                v101 |= v59;
                v7 = 1;
              }

              v60 = p_isa[8];
              v61 = [(NSMutableDictionary *)v18 mutableCopy];
              [v60 setObject:v61 forKey:uUIDString3];

              v39 = v39 + 1;
              v21 = v49;
              v62 = v49;
              v40 = v18;
              v38 = v109;
              v42 = v109;
            }

            while (v103 != v39);
            v37 = v41;
            v21 = v62;
            v103 = [v98 countByEnumeratingWithState:&v111 objects:v119 count:16];
            if (!v103)
            {
              goto LABEL_72;
            }
          }
        }

        v37 = v108;
        v38 = v15;
LABEL_72:
        v110 = v37;
        currentUser3 = [(HMHome *)v104 currentUser];
        uniqueIdentifier5 = [currentUser3 uniqueIdentifier];
        uUIDString5 = [uniqueIdentifier5 UUIDString];

        currentUser4 = [(HMHome *)v104 currentUser];
        selfCopy = p_isa;
        [currentUser4 setDelegate:p_isa];

        currentUser5 = [(HMHome *)v104 currentUser];
        v68 = [p_isa _settingsForHomeUser:currentUser5 forHome:v104];

        v69 = [p_isa[8] objectForKey:uUIDString5];

        if (v69)
        {
          v70 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315651;
            v121 = "[ADHomeInfoManager _updateHomeUserSettings]";
            v122 = 2113;
            v123 = v69;
            v124 = 2112;
            v125 = v104;
            _os_log_debug_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEBUG, "%s currentUserSettings %{private}@ for home (%@)", buf, 0x20u);
          }
        }

        v71 = [v68 objectForKey:@"allowVoiceID"];
        integerValue5 = [v71 integerValue];

        v73 = [(NSMutableDictionary *)v69 objectForKey:@"allowVoiceID"];
        integerValue6 = [v73 integerValue];

        if (([(NSMutableDictionary *)v69 isEqualToDictionary:v68]& 1) != 0)
        {
          v8 = v95;
        }

        else
        {
          if (AFIsMultiUserCompanion())
          {
            if (integerValue5 == 1)
            {
              v75 = AFSiriLogContextDaemon;
              if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
              {
                *buf = 136315395;
                v121 = "[ADHomeInfoManager _updateHomeUserSettings]";
                v122 = 2113;
                v123 = uUIDString5;
                _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_INFO, "%s Voice ID setting is ON for current user %{private}@", buf, 0x16u);
              }

              v76 = 1;
            }

            else
            {
              v76 = v96;
              if (!integerValue5)
              {
                v76 = 0;
              }
            }

            v96 = v76;
            v78 = integerValue5 == 1 && integerValue6 == 0;
            v101 |= v78;
          }

          v8 = v95;
          v7 = 1;
          [p_isa _logRelevantAnalyticsOnHomeUserSettingsUpdateForCurrentSettings:v68 allowVoiceIdSettingValue:integerValue5 isPrimaryUser:1];
        }

        v79 = p_isa[8];
        v80 = [v68 mutableCopy];
        [v79 setObject:v80 forKey:uUIDString5];
      }

      if (++v8 == v93)
      {
        v93 = [obj countByEnumeratingWithState:&v115 objects:v126 count:16];
        if (!v93)
        {
          goto LABEL_100;
        }

        goto LABEL_5;
      }
    }
  }

  LOBYTE(v101) = 0;
  v7 = 0;
  v96 = 2;
LABEL_100:

  if (AFIsMultiUserCompanion())
  {
    if (v96 != 2)
    {
      v85 = +[ADPreferences sharedPreferences];
      [v85 setMultiUserVoiceIdentification:v96 == 1];

      if (v101)
      {
        v86 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v121 = "[ADHomeInfoManager _updateHomeUserSettings]";
          _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_INFO, "%s Start sharing", buf, 0xCu);
        }

        [(ADHomeInfoManager *)selfCopy restartSharing];
      }
    }
  }

  if (v7)
  {
    v87 = AFSiriLogContextDaemon;
    v83 = 1;
    v84 = v90;
    v82 = obj;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v88 = selfCopy->_homeUserSettings;
      *buf = 136315394;
      v121 = "[ADHomeInfoManager _updateHomeUserSettings]";
      v122 = 2112;
      v123 = v88;
      _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_INFO, "%s Settings (%@)", buf, 0x16u);
    }
  }

  else
  {
    v83 = 0;
    v84 = v90;
    v82 = obj;
  }

LABEL_110:

  return v83;
}

- (id)_homesWithMultiUserEnabled
{
  if (AFIsMultiUserCompanion())
  {
    dispatch_assert_queue_V2(self->_queue);
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v24 = "[ADHomeInfoManager _homesWithMultiUserEnabled]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
    }

    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = self->_homeManager;
    if (![(HMHomeManager *)v5 status])
    {
      homes = [(HMHomeManager *)v5 homes];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v7 = [homes countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v20;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v20 != v9)
            {
              objc_enumerationMutation(homes);
            }

            v11 = *(*(&v19 + 1) + 8 * i);
            if ([v11 isMultiUserEnabled])
            {
              owner = [v11 owner];
              uniqueIdentifier = [owner uniqueIdentifier];
              uUIDString = [uniqueIdentifier UUIDString];

              if (uUIDString)
              {
                uniqueIdentifier2 = [v11 uniqueIdentifier];
                uUIDString2 = [uniqueIdentifier2 UUIDString];

                [v4 setObject:uUIDString forKey:uUIDString2];
              }
            }
          }

          v8 = [homes countByEnumeratingWithState:&v19 objects:v27 count:16];
        }

        while (v8);
      }
    }

    v17 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v24 = "[ADHomeInfoManager _homesWithMultiUserEnabled]";
      v25 = 2112;
      v26 = v4;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s (%@)", buf, 0x16u);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSUUID)accessoryLoggingSalt
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10021CEC8;
  v10 = sub_10021CED8;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10021CEE0;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

+ (id)sharedInfoManager
{
  if (qword_1005905E0 != -1)
  {
    dispatch_once(&qword_1005905E0, &stru_100516DA0);
  }

  v3 = qword_1005905D8;

  return v3;
}

- (void)setAllowJustSiriHomeKitSetting:(BOOL)setting withCompletion:(id)completion queue:(id)queue
{
  completionCopy = completion;
  queueCopy = queue;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v19 = "[ADHomeInfoManager(VoiceActivation) setAllowJustSiriHomeKitSetting:withCompletion:queue:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100071630;
  v16[3] = &unk_10051D2F0;
  v17 = completionCopy;
  v11 = completionCopy;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100071648;
  v13[3] = &unk_10051D228;
  settingCopy = setting;
  v13[4] = self;
  v14 = objc_retainBlock(v16);
  v12 = v14;
  dispatch_async(queueCopy, v13);
}

- (void)isJustSiriEnabledInTheHome:(id)home queue:(id)queue
{
  homeCopy = home;
  queueCopy = queue;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[ADHomeInfoManager(VoiceActivation) isJustSiriEnabledInTheHome:queue:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (homeCopy)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100071940;
    v9[3] = &unk_10051E038;
    v9[4] = self;
    v10 = homeCopy;
    dispatch_async(queueCopy, v9);
  }
}

- (void)initializeHomeSiriPhraseOptions:(id)options completion:(id)completion queue:(id)queue
{
  optionsCopy = options;
  completionCopy = completion;
  queueCopy = queue;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v25 = "[ADHomeInfoManager(VoiceActivation) initializeHomeSiriPhraseOptions:completion:queue:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100071CAC;
  v22[3] = &unk_10051D2F0;
  v11 = completionCopy;
  v23 = v11;
  v12 = objc_retainBlock(v22);
  if (!optionsCopy)
  {
    v18 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v25 = "[ADHomeInfoManager(VoiceActivation) initializeHomeSiriPhraseOptions:completion:queue:]";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s home is nil", buf, 0xCu);
    }

    goto LABEL_9;
  }

  siriPhraseOptions = [optionsCopy siriPhraseOptions];
  v14 = AFSiriLogContextDaemon;
  v15 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
  if (siriPhraseOptions)
  {
    if (v15)
    {
      v16 = v14;
      name = [optionsCopy name];
      *buf = 136315394;
      v25 = "[ADHomeInfoManager(VoiceActivation) initializeHomeSiriPhraseOptions:completion:queue:]";
      v26 = 2112;
      v27 = name;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s phraseType was set for home %@", buf, 0x16u);
    }

LABEL_9:
    (v12[2])(v12, 0);
    goto LABEL_13;
  }

  if (v15)
  {
    *buf = 136315138;
    v25 = "[ADHomeInfoManager(VoiceActivation) initializeHomeSiriPhraseOptions:completion:queue:]";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s phraseType is unset for the home", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100071CC4;
  block[3] = &unk_10051E038;
  v20 = optionsCopy;
  v21 = v12;
  dispatch_async(queueCopy, block);

LABEL_13:
}

- (void)updateVoiceTriggerPhrase:(unint64_t)phrase currentAccessoryInfo:(id)info
{
  infoCopy = info;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v14 = v7;
    uniqueIdentifier = [infoCopy uniqueIdentifier];
    v16 = 136315906;
    v17 = "[ADHomeInfoManager(VoiceActivation) updateVoiceTriggerPhrase:currentAccessoryInfo:]";
    v18 = 2112;
    v19 = infoCopy;
    v20 = 2112;
    v21 = uniqueIdentifier;
    v22 = 2048;
    phraseCopy = phrase;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s Endpoint = %@\n %@ %ld", &v16, 0x2Au);
  }

  categoryType = [infoCopy categoryType];
  v9 = [categoryType isEqual:HMAccessoryCategoryTypeHomePod];

  if (v9)
  {
    v10 = 0;
    uniqueIdentifier2 = 0;
  }

  else
  {
    uniqueIdentifier2 = [infoCopy uniqueIdentifier];
    v10 = 2;
  }

  v12 = +[VTPreferences sharedPreferences];
  v13 = [v12 setUserPreferredVoiceTriggerPhraseType:phrase == 3 sender:self deviceType:v10 endpointId:uniqueIdentifier2];
}

- (void)emitHomeMetricInvocationEvent
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002166C8;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)_activityNotificationsForHomes:(id)homes
{
  homesCopy = homes;
  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = homesCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        currentUser = [v10 currentUser];
        v12 = [currentUser assistantAccessControlForHome:v10];
        v13 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v12 areActivityNotificationsEnabledForPersonalRequests]);
        uniqueIdentifier = [v10 uniqueIdentifier];
        [v4 setObject:v13 forKey:uniqueIdentifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)updatedHomeInfoForRootInfo:(id)info
{
  infoCopy = info;
  homeIdentifier = [infoCopy homeIdentifier];
  homes = [(HMHomeManager *)self->_homeManager homes];
  v7 = [(ADHomeInfoManager *)self _activityNotificationsForHomes:homes];

  v8 = [v7 objectForKey:homeIdentifier];

  if (v8)
  {
    v9 = [v7 objectForKey:homeIdentifier];
    bOOLValue = [v9 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100216BD0;
  v13[3] = &unk_100516FC0;
  v14 = bOOLValue;
  v11 = [infoCopy mutatedCopyWithMutator:v13];

  return v11;
}

- (id)_getAccessoryCategoryForExecutionInfo:(id)info
{
  infoCopy = info;
  originPeerInfo = [infoCopy originPeerInfo];
  instanceInfo = [infoCopy instanceInfo];
  applicationUUID = [instanceInfo applicationUUID];
  if (applicationUUID)
  {
    v8 = applicationUUID;
LABEL_4:
    v11 = [(ADHomeInfoManager *)self _accessoryForIdentifier:v8 inHome:0];
    category = [v11 category];

    goto LABEL_5;
  }

  v9 = [NSUUID alloc];
  homeKitAccessoryIdentifier = [originPeerInfo homeKitAccessoryIdentifier];
  v8 = [v9 initWithUUIDString:homeKitAccessoryIdentifier];

  if (v8)
  {
    goto LABEL_4;
  }

  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v15 = 136315394;
    v16 = "[ADHomeInfoManager _getAccessoryCategoryForExecutionInfo:]";
    v17 = 2112;
    v18 = infoCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Unable to get accessoryIdentifier from AFCommandExecutionInfo: %@", &v15, 0x16u);
  }

  category = 0;
LABEL_5:

  return category;
}

- (void)getAccessoryCategoryForExecutionInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100216E2C;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = infoCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = infoCopy;
  dispatch_async(queue, block);
}

- (void)getLocalizedAccessoryCategoryForExecutionInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100216FF8;
  block[3] = &unk_10051E088;
  v12 = infoCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = infoCopy;
  v10 = completionCopy;
  dispatch_async(queue, block);
}

- (BOOL)_hasSiriCapableDeviceInHome:(id)home
{
  [home accessories];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = v19 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    v7 = HMAccessoryCategoryTypeHomePod;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        siriEndpointProfile = [v9 siriEndpointProfile];
        if (siriEndpointProfile)
        {

LABEL_13:
          v14 = 1;
          goto LABEL_14;
        }

        category = [v9 category];
        categoryType = [category categoryType];
        v13 = [categoryType isEqualToString:v7];

        if (v13)
        {
          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v14 = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_14:

  return v14;
}

- (void)getHomeManagerWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100217280;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(queue, v7);
  }
}

- (id)_homesWithSiriCapableDevices
{
  homes = [(HMHomeManager *)self->_homeManager homes];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [homes count]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = homes;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([(ADHomeInfoManager *)self _hasSiriCapableDeviceInHome:v10, v12])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (BOOL)areActivityNotificationsOffForAllHomes
{
  _homesWithSiriCapableDevices = [(ADHomeInfoManager *)self _homesWithSiriCapableDevices];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(ADHomeInfoManager *)self _activityNotificationsForHomes:_homesWithSiriCapableDevices, 0];
  allValues = [v4 allValues];

  v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        if ([*(*(&v12 + 1) + 8 * i) BOOLValue])
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (id)rootAfHomeInfoForThisDevice
{
  infoForThisDevice = [(ADHomeInfoManager *)self infoForThisDevice];
  currentHomeIdentifier = [infoForThisDevice currentHomeIdentifier];
  v4 = [[AFHomeInfo alloc] initWithHomeIdentifier:currentHomeIdentifier activityNotificationsEnabledForPersonalRequests:1];

  return v4;
}

- (void)_startAcceptingCloudSharesForMultiUserService
{
  userCloudShareManager = [(HMHomeManager *)self->_homeManager userCloudShareManager];
  [userCloudShareManager setDelegate:self];
  v4 = +[ADCloudKitManager sharedManager];
  v5 = v4;
  if (v4)
  {
    [v4 containerIDs];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1002176B4;
    v8 = v7[3] = &unk_10051C498;
    v6 = v8;
    [userCloudShareManager registerForContainerIDs:v6 completion:v7];
  }
}

- (void)_startCloudSharingForMultiUserService:(id)service
{
  serviceCopy = service;
  if (AFIsMultiUserCompanion())
  {
    owner = [serviceCopy owner];
    uniqueIdentifier = [owner uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];

    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315395;
      v25 = "[ADHomeInfoManager _startCloudSharingForMultiUserService:]";
      v26 = 2113;
      v27 = uUIDString;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s (%{private}@)", buf, 0x16u);
    }

    if (uUIDString)
    {
      currentUser = [serviceCopy currentUser];
      uniqueIdentifier2 = [currentUser uniqueIdentifier];
      uUIDString2 = [uniqueIdentifier2 UUIDString];

      if (([uUIDString isEqualToString:uUIDString2] & 1) == 0)
      {
        v12 = [(NSMutableDictionary *)self->_homeSharingStates objectForKey:uUIDString];
        integerValue = [v12 integerValue];

        if (integerValue <= 0)
        {
          homeSharingStates = self->_homeSharingStates;
          if (!homeSharingStates)
          {
            v15 = objc_alloc_init(NSMutableDictionary);
            v16 = self->_homeSharingStates;
            self->_homeSharingStates = v15;

            homeSharingStates = self->_homeSharingStates;
          }

          [(NSMutableDictionary *)homeSharingStates setObject:&off_100533C38 forKey:uUIDString];
          v17 = arc4random_uniform(9u);
          v18 = dispatch_time(0, ((v17 + 6.0) * 1000000000.0));
          queue = self->_queue;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100217A3C;
          block[3] = &unk_10051DB68;
          v21 = uUIDString;
          selfCopy = self;
          v23 = serviceCopy;
          dispatch_after(v18, queue, block);
        }
      }
    }
  }
}

- (void)accessoryDidUpdateSupportsThirdPartyMusic:(id)music
{
  musicCopy = music;
  _currentAccessory = [(ADHomeInfoManager *)self _currentAccessory];
  uniqueIdentifier = [_currentAccessory uniqueIdentifier];
  uniqueIdentifier2 = [musicCopy uniqueIdentifier];
  v7 = [uniqueIdentifier isEqual:uniqueIdentifier2];

  if (v7)
  {
    [(ADHomeInfoManager *)self _updateCurrentAccessoryInfoWithAccessory:musicCopy];
  }
}

- (void)accessory:(id)accessory didUpdateSettings:(id)settings
{
  accessoryCopy = accessory;
  settingsCopy = settings;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v13 = 136315395;
    v14 = "[ADHomeInfoManager accessory:didUpdateSettings:]";
    v15 = 2113;
    v16 = accessoryCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %{private}@", &v13, 0x16u);
  }

  rootGroup = [settingsCopy rootGroup];
  v10 = [ADHomeInfoManager findSettingWithKeyPath:@"root.general.analytics.shareSiriAnalytics" group:rootGroup];

  if (v10)
  {
    value = [v10 value];

    if (!value)
    {
      v12 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v13 = 136315395;
        v14 = "[ADHomeInfoManager accessory:didUpdateSettings:]";
        v15 = 2113;
        v16 = accessoryCopy;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Unset opt-in status detected on accessory (%{private}@).  Will attempt to propagate opt-in status.", &v13, 0x16u);
      }

      [(ADHomeInfoManager *)self _propagateSiriDataSharingOptInStatus:_AFPreferencesSiriDataSharingOptInStatus() toAccessory:accessoryCopy];
    }
  }
}

- (void)accessoryDidUpdateName:(id)name
{
  nameCopy = name;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315395;
    v11 = "[ADHomeInfoManager accessoryDidUpdateName:]";
    v12 = 2113;
    v13 = nameCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %{private}@", buf, 0x16u);
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10021864C;
  v8[3] = &unk_10051E010;
  v8[4] = self;
  v9 = nameCopy;
  v7 = nameCopy;
  dispatch_async(queue, v8);
}

- (void)homeDidEnableMultiUser:(id)user
{
  userCopy = user;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "[ADHomeInfoManager homeDidEnableMultiUser:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if ([userCopy isMultiUserEnabled])
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100218824;
    v7[3] = &unk_10051E010;
    v7[4] = self;
    v8 = userCopy;
    dispatch_async(queue, v7);
  }
}

- (void)home:(id)home didUpdateRoom:(id)room forAccessory:(id)accessory
{
  roomCopy = room;
  accessoryCopy = accessory;
  v9 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315651;
    v15 = "[ADHomeInfoManager home:didUpdateRoom:forAccessory:]";
    v16 = 2113;
    v17 = roomCopy;
    v18 = 2113;
    v19 = accessoryCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s %{private}@ %{private}@", buf, 0x20u);
  }

  queue = self->_queue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10021897C;
  v12[3] = &unk_10051E010;
  v12[4] = self;
  v13 = accessoryCopy;
  v11 = accessoryCopy;
  dispatch_async(queue, v12);
}

- (void)home:(id)home didRemoveAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315395;
    v14 = "[ADHomeInfoManager home:didRemoveAccessory:]";
    v15 = 2113;
    v16 = accessoryCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s %{private}@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100218B94;
  block[3] = &unk_10051DFE8;
  v12 = accessoryCopy;
  v8 = accessoryCopy;
  dispatch_async(queue, block);
  v9 = [(ADHomeInfoManager *)self _accessoryInfoForAccessory:v8];
  v10 = +[NSNotificationCenter defaultCenter];
  [v10 postNotificationName:@"ADHomeInfoAccessoryRemovedNotification" object:v9];
}

- (void)home:(id)home didAddAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315395;
    v10 = "[ADHomeInfoManager home:didAddAccessory:]";
    v11 = 2113;
    v12 = accessoryCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s %{private}@", &v9, 0x16u);
  }

  v7 = [(ADHomeInfoManager *)self _accessoryInfoForAccessory:accessoryCopy];
  v8 = +[NSNotificationCenter defaultCenter];
  [v8 postNotificationName:@"ADHomeInfoAccessoryAddedNotification" object:v7];
}

- (void)home:(id)home didRemoveUser:(id)user
{
  homeCopy = home;
  userCopy = user;
  if (AFSupportsMultiUser())
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315651;
      v20 = "[ADHomeInfoManager home:didRemoveUser:]";
      v21 = 2113;
      v22 = userCopy;
      v23 = 2113;
      v24 = homeCopy;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s Deleting user (%{private}@) home is (%{private}@)", buf, 0x20u);
    }

    v8 = +[ADMultiUserService sharedService];
    uniqueIdentifier = [userCopy uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];
    [v8 removeUserWithHomeUUID:uUIDString completion:&stru_100516F50];

    uniqueIdentifier2 = [homeCopy uniqueIdentifier];
    uUIDString2 = [uniqueIdentifier2 UUIDString];

    uniqueIdentifier3 = [userCopy uniqueIdentifier];
    uUIDString3 = [uniqueIdentifier3 UUIDString];

    v15 = +[ADMultiUserCloudKitSyncer sharedService];
    v17 = uUIDString2;
    v18 = uUIDString3;
    v16 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    [v15 markHomeMembershipsForDeletion:v16];
  }
}

- (void)home:(id)home didAddUser:(id)user
{
  homeCopy = home;
  userCopy = user;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v17 = "[ADHomeInfoManager home:didAddUser:]";
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002190E4;
  block[3] = &unk_10051DB68;
  v13 = userCopy;
  selfCopy = self;
  v15 = homeCopy;
  v10 = homeCopy;
  v11 = userCopy;
  dispatch_async(queue, block);
}

- (void)homeDidUpdateName:(id)name
{
  nameCopy = name;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002191F4;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = nameCopy;
  v6 = nameCopy;
  dispatch_async(queue, v7);
}

- (void)shareManager:(id)manager didReceiveShareInvitation:(id)invitation completion:(id)completion
{
  managerCopy = manager;
  invitationCopy = invitation;
  completionCopy = completion;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v15 = 136315138;
    v16 = "[ADHomeInfoManager shareManager:didReceiveShareInvitation:completion:]";
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s Received a share URL", &v15, 0xCu);
  }

  v11 = +[ADCloudKitManager sharedManager];
  if (v11)
  {
    shareURL = [invitationCopy shareURL];
    shareToken = [invitationCopy shareToken];
    containerID = [invitationCopy containerID];
    [v11 acceptShare:shareURL token:shareToken containerID:containerID];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1, 0);
  }
}

- (void)_propagateSiriDataSharingOptInStatus:(int64_t)status toAccessory:(id)accessory
{
  accessoryCopy = accessory;
  category = [(__CFString *)accessoryCopy category];
  categoryType = [category categoryType];
  v9 = [categoryType isEqualToString:HMAccessoryCategoryTypeHomePod];

  if (v9)
  {
    settings = [(__CFString *)accessoryCopy settings];
    rootGroup = [settings rootGroup];
    v12 = [ADHomeInfoManager findSettingWithKeyPath:@"root.general.analytics.shareSiriAnalytics" group:rootGroup];

    if (!v12)
    {
      v20 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315651;
        v29 = "[ADHomeInfoManager _propagateSiriDataSharingOptInStatus:toAccessory:]";
        v30 = 2113;
        v31 = @"root.general.analytics.shareSiriAnalytics";
        v32 = 2113;
        v33 = accessoryCopy;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s Not setting (%{private}@) because the setting does not exist for accessory (%{private}@), so we won't touch it", buf, 0x20u);
      }

      [(__CFString *)accessoryCopy setDelegate:self];
      goto LABEL_18;
    }

    value = [v12 value];

    v14 = AFSiriLogContextDaemon;
    v15 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
    if (value)
    {
      if (v15)
      {
        v16 = v14;
        value2 = [v12 value];
        bOOLValue = [value2 BOOLValue];
        v19 = @"Opted-Out";
        v29 = "[ADHomeInfoManager _propagateSiriDataSharingOptInStatus:toAccessory:]";
        v30 = 2113;
        *buf = 136315907;
        v31 = accessoryCopy;
        v32 = 2112;
        if (bOOLValue)
        {
          v19 = @"Opted-In";
        }

        v33 = @"root.general.analytics.shareSiriAnalytics";
        v34 = 2112;
        v35 = v19;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Not setting HomePod accessory (%{private}@) setting (%@) because it's already a known value of (%@)", buf, 0x2Au);
      }

      goto LABEL_18;
    }

    if (v15)
    {
      *buf = 136315395;
      v29 = "[ADHomeInfoManager _propagateSiriDataSharingOptInStatus:toAccessory:]";
      v30 = 2113;
      v31 = accessoryCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s First time setting HomePod accessory (%{private}@) because the setting has not been set before", buf, 0x16u);
    }

    if (status == 2)
    {
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1002199A8;
      v22[3] = &unk_100517D00;
      v23 = accessoryCopy;
      v24 = 2;
      [v12 updateValue:&off_100533BF0 completionHandler:v22];
      v21 = v23;
    }

    else
    {
      if (status != 1)
      {
LABEL_18:

        goto LABEL_19;
      }

      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10021985C;
      v25[3] = &unk_100517D00;
      v26 = accessoryCopy;
      v27 = 1;
      [v12 updateValue:&off_100533C20 completionHandler:v25];
      v21 = v26;
    }

    goto LABEL_18;
  }

LABEL_19:
}

- (void)user:(id)user didUpdateAssistantAccessControl:(id)control forHome:(id)home
{
  userCopy = user;
  homeCopy = home;
  queue = self->_queue;
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_100219C80;
  v24 = &unk_10051E010;
  selfCopy = self;
  v10 = homeCopy;
  v26 = v10;
  dispatch_async(queue, &v21);
  currentUser = [v10 currentUser];
  uniqueIdentifier = [currentUser uniqueIdentifier];
  uniqueIdentifier2 = [userCopy uniqueIdentifier];
  v14 = [uniqueIdentifier isEqual:uniqueIdentifier2];

  if (v14)
  {
    v15 = [userCopy assistantAccessControlForHome:v10];
    areActivityNotificationsEnabledForPersonalRequests = [v15 areActivityNotificationsEnabledForPersonalRequests];
    v17 = [AFHomeInfo alloc];
    uniqueIdentifier3 = [v10 uniqueIdentifier];
    v19 = [v17 initWithHomeIdentifier:uniqueIdentifier3 activityNotificationsEnabledForPersonalRequests:areActivityNotificationsEnabledForPersonalRequests];

    v20 = +[NSNotificationCenter defaultCenter];
    [v20 postNotificationName:@"ADHomeInfoPersonalDomainsChangedNotification" object:v19];
  }
}

- (void)settingsWillUpdate:(id)update
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADHomeInfoManager settingsWillUpdate:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }
}

- (void)settingsDidUpdate:(id)update
{
  updateCopy = update;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "[ADHomeInfoManager settingsDidUpdate:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100219F80;
  v8[3] = &unk_10051E010;
  v8[4] = self;
  v9 = updateCopy;
  v7 = updateCopy;
  dispatch_async(queue, v8);
}

- (void)homeManagerDidUpdateAssistantIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10021A528;
  v7[3] = &unk_10051E010;
  v8 = identifiersCopy;
  selfCopy = self;
  v6 = identifiersCopy;
  dispatch_async(queue, v7);
}

- (void)homeManagerDidUpdateDataSyncState:(id)state
{
  stateCopy = state;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10021A680;
  v7[3] = &unk_10051E010;
  v8 = stateCopy;
  selfCopy = self;
  v6 = stateCopy;
  dispatch_async(queue, v7);
}

- (void)homeManagerDidUpdateCurrentHome:(id)home
{
  homeCopy = home;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10021A828;
  v7[3] = &unk_10051E010;
  v8 = homeCopy;
  selfCopy = self;
  v6 = homeCopy;
  dispatch_async(queue, v7);
}

- (void)homeManager:(id)manager didUpdateStatus:(unint64_t)status
{
  managerCopy = manager;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10021A980;
  v8[3] = &unk_10051E010;
  v9 = managerCopy;
  selfCopy = self;
  v7 = managerCopy;
  dispatch_async(queue, v8);
}

- (void)homeManager:(id)manager didRemoveHome:(id)home
{
  managerCopy = manager;
  homeCopy = home;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315395;
    v15 = "[ADHomeInfoManager homeManager:didRemoveHome:]";
    v16 = 2113;
    v17 = homeCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s home is %{private}@", buf, 0x16u);
  }

  if (homeCopy)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10021ADF4;
    block[3] = &unk_10051DB68;
    v11 = homeCopy;
    selfCopy = self;
    v13 = managerCopy;
    dispatch_async(queue, block);
  }
}

- (void)homeManager:(id)manager didAddHome:(id)home
{
  managerCopy = manager;
  homeCopy = home;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "[ADHomeInfoManager homeManager:didAddHome:]";
    v17 = 2112;
    v18 = managerCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s homeManager is %@", buf, 0x16u);
  }

  if (homeCopy)
  {
    v9 = +[AFAnalytics sharedAnalytics];
    [v9 logEventWithType:6108 contextProvider:&stru_100516ED0];

    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10021B274;
    block[3] = &unk_10051DB68;
    v12 = homeCopy;
    selfCopy = self;
    v14 = managerCopy;
    dispatch_async(queue, block);
  }
}

- (void)homeManagerDidUpdateHomes:(id)homes
{
  homesCopy = homes;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10021B55C;
  v7[3] = &unk_10051E010;
  v8 = homesCopy;
  selfCopy = self;
  v6 = homesCopy;
  dispatch_async(queue, v7);
}

- (void)_homeManagerUpdatedHomes:(id)homes homesToDelete:(id)delete
{
  homesCopy = homes;
  deleteCopy = delete;
  if (![(HMHomeManager *)self->_homeManager status])
  {
    [(ADHomeInfoManager *)self _startCloudKitActivityForHomes:homesCopy homesToDelete:deleteCopy];
    _currentHomeInfo = [(ADHomeInfoManager *)self _currentHomeInfo];
    [(ADHomeInfoManager *)self _checkAndDisableVoiceIDIfRequired];
  }

  [(ADHomeInfoManager *)self _updateHomeContext:homesCopy];
}

- (void)_checkAndDisableVoiceIDIfRequired
{
  if (self->_assistantRequestedToTurnOffVoiceID)
  {
    self->_assistantRequestedToTurnOffVoiceID = 0;
    [(ADHomeInfoManager *)self setRecognizeMyVoiceEnabled:0];
  }
}

- (void)_startCloudKitActivityForHomes:(id)homes homesToDelete:(id)delete
{
  homesCopy = homes;
  deleteCopy = delete;
  v60 = homesCopy;
  homes = [homesCopy homes];
  v70 = objc_alloc_init(NSMutableDictionary);
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = homes;
  v7 = &AFSiriLogContextDaemon;
  v69 = [obj countByEnumeratingWithState:&v75 objects:v88 count:16];
  if (v69)
  {
    v66 = 0;
    v62 = 0;
    v68 = *v76;
    v8 = 2;
    bOOLValue = 2;
    do
    {
      for (i = 0; i != v69; i = i + 1)
      {
        if (*v76 != v68)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v75 + 1) + 8 * i);
        isMultiUserEnabled = [v10 isMultiUserEnabled];
        owner = [v10 owner];
        uniqueIdentifier = [owner uniqueIdentifier];
        uUIDString = [uniqueIdentifier UUIDString];

        currentUser = [v10 currentUser];
        uniqueIdentifier2 = [currentUser uniqueIdentifier];
        uUIDString2 = [uniqueIdentifier2 UUIDString];

        if (uUIDString2)
        {
          uniqueIdentifier3 = [v10 uniqueIdentifier];
          uUIDString3 = [uniqueIdentifier3 UUIDString];
          [v70 setObject:uUIDString2 forKey:uUIDString3];
        }

        v20 = [(__CFString *)uUIDString isEqualToString:uUIDString2];
        v21 = *v7;
        v22 = os_log_type_enabled(*v7, OS_LOG_TYPE_INFO);
        if (v20)
        {
          if (v22)
          {
            v23 = v21;
            name = [v10 name];
            uniqueIdentifier4 = [v10 uniqueIdentifier];
            [uniqueIdentifier4 UUIDString];
            v64 = v8;
            v26 = v7;
            v28 = v27 = owner;
            *buf = 136315907;
            v81 = "[ADHomeInfoManager _startCloudKitActivityForHomes:homesToDelete:]";
            v82 = 2113;
            v83 = uUIDString;
            v84 = 2113;
            v85 = name;
            v86 = 2113;
            v87 = v28;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s Owner %{private}@ accepting shares in home (%{private}@/%{private}@)", buf, 0x2Au);

            owner = v27;
            v7 = v26;
            v8 = v64;
          }
        }

        else
        {
          if (v22)
          {
            v65 = owner;
            v29 = v21;
            name2 = [v10 name];
            uniqueIdentifier5 = [v10 uniqueIdentifier];
            [uniqueIdentifier5 UUIDString];
            v33 = v32 = v8;
            *buf = 136315907;
            v81 = "[ADHomeInfoManager _startCloudKitActivityForHomes:homesToDelete:]";
            v82 = 2113;
            v83 = uUIDString2;
            v84 = 2113;
            v85 = name2;
            v86 = 2113;
            v87 = v33;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%s Sharer %{private}@ sharing in home (%{private}@/%{private}@)", buf, 0x2Au);

            v8 = v32;
            v7 = &AFSiriLogContextDaemon;

            owner = v65;
          }

          if (isMultiUserEnabled)
          {
            [(ADHomeInfoManager *)self _startCloudSharingForMultiUserService:v10];
          }
        }

        if (v8 != 1 && AFIsMultiUserCompanion())
        {
          v34 = owner;
          v35 = v8;
          currentUser2 = [v10 currentUser];
          v37 = [currentUser2 userSettingsForHome:v10];
          settings = [v37 settings];

          if ([v10 isMultiUserEnabled])
          {
            rootGroup = [settings rootGroup];
            v40 = [ADHomeInfoManager findSettingWithKeyPath:@"root.siri.identifyVoice" group:rootGroup];

            if (v40)
            {
              value = [v40 value];
              bOOLValue = [value BOOLValue];

              v62 = v40;
            }

            else
            {
              v62 = 0;
            }
          }

          owner = v34;
          if (bOOLValue >= 2)
          {
            v8 = v35;
          }

          else
          {
            v8 = bOOLValue;
          }

          v66 = settings;
        }
      }

      v69 = [obj countByEnumeratingWithState:&v75 objects:v88 count:16];
    }

    while (v69);
  }

  else
  {
    v66 = 0;
    v62 = 0;
    v8 = 2;
  }

  v42 = v8;

  v43 = objc_alloc_init(NSMutableDictionary);
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v44 = deleteCopy;
  v45 = [v44 countByEnumeratingWithState:&v71 objects:v79 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v72;
    do
    {
      for (j = 0; j != v46; j = j + 1)
      {
        if (*v72 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v49 = *(*(&v71 + 1) + 8 * j);
        currentUser3 = [v49 currentUser];
        uniqueIdentifier6 = [currentUser3 uniqueIdentifier];
        uUIDString4 = [uniqueIdentifier6 UUIDString];

        uniqueIdentifier7 = [v49 uniqueIdentifier];
        uUIDString5 = [uniqueIdentifier7 UUIDString];

        [v43 setObject:uUIDString4 forKey:uUIDString5];
        [v70 removeObjectForKey:uUIDString5];
      }

      v46 = [v44 countByEnumeratingWithState:&v71 objects:v79 count:16];
    }

    while (v46);
  }

  v55 = +[ADMultiUserCloudKitSyncer sharedService];
  [v55 setHomeMemberships:v70 homeMembershipsToDelete:v43 voiceIDSetting:v42 == 1];

  if (AFIsMultiUserCompanion() && v42 != 2)
  {
    v56 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v57 = @"NO";
      if (v42 == 1)
      {
        v57 = @"YES";
      }

      *buf = 136315394;
      v81 = "[ADHomeInfoManager _startCloudKitActivityForHomes:homesToDelete:]";
      v82 = 2112;
      v83 = v57;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "%s voiceSettingOn value is (%@)", buf, 0x16u);
    }

    v58 = +[ADPreferences sharedPreferences];
    [v58 setMultiUserVoiceIdentification:v42 == 1];
  }
}

- (void)fetchAccessoriesInRoom:(id)room matchingCategoryTypes:(id)types completion:(id)completion
{
  roomCopy = room;
  typesCopy = types;
  completionCopy = completion;
  v10 = completionCopy;
  if (completionCopy)
  {
    v30 = completionCopy;
    +[NSMutableArray array];
    v38 = v37 = self;
    [(ADHomeInfoManager *)self _currentHome];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v29 = v52 = 0u;
    obj = [v29 rooms];
    v34 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
    if (v34)
    {
      v32 = roomCopy;
      v33 = *v50;
      do
      {
        for (i = 0; i != v34; i = i + 1)
        {
          if (*v50 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v49 + 1) + 8 * i);
          if (roomCopy)
          {
            name = [*(*(&v49 + 1) + 8 * i) name];
            v14 = [roomCopy isEqual:name];

            if (!v14)
            {
              continue;
            }
          }

          v35 = i;
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          accessories = [v12 accessories];
          v15 = [accessories countByEnumeratingWithState:&v45 objects:v54 count:16];
          if (v15)
          {
            v16 = v15;
            v40 = *v46;
            do
            {
              for (j = 0; j != v16; j = j + 1)
              {
                if (*v46 != v40)
                {
                  objc_enumerationMutation(accessories);
                }

                v18 = *(*(&v45 + 1) + 8 * j);
                v41 = 0u;
                v42 = 0u;
                v43 = 0u;
                v44 = 0u;
                v19 = typesCopy;
                v20 = [v19 countByEnumeratingWithState:&v41 objects:v53 count:16];
                if (v20)
                {
                  v21 = v20;
                  v22 = *v42;
                  while (2)
                  {
                    for (k = 0; k != v21; k = k + 1)
                    {
                      if (*v42 != v22)
                      {
                        objc_enumerationMutation(v19);
                      }

                      v24 = *(*(&v41 + 1) + 8 * k);
                      category = [v18 category];
                      categoryType = [category categoryType];
                      LODWORD(v24) = [categoryType isEqual:v24];

                      if (v24)
                      {
                        v27 = [(ADHomeInfoManager *)v37 _accessoryInfoForAccessory:v18];
                        [v38 addObject:v27];

                        goto LABEL_24;
                      }
                    }

                    v21 = [v19 countByEnumeratingWithState:&v41 objects:v53 count:16];
                    if (v21)
                    {
                      continue;
                    }

                    break;
                  }
                }

LABEL_24:
              }

              v16 = [accessories countByEnumeratingWithState:&v45 objects:v54 count:16];
            }

            while (v16);
          }

          roomCopy = v32;
          i = v35;
        }

        v34 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
      }

      while (v34);
    }

    v28 = [v38 copy];
    v10 = v30;
    (*(v30 + 2))(v30, 0, v28);
  }
}

- (void)fetchMultiUserMetricsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[ADHomeInfoManager fetchMultiUserMetricsWithCompletion:]";
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v28 = 0x2020000000;
  v29 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v24[3] = 0;
  v6 = objc_alloc_init(SISchemaMultiUserSetup);
  v7 = dispatch_group_create();
  createMultiuserSettingsMessenger = [(HMHomeManager *)self->_homeManager createMultiuserSettingsMessenger];
  if (createMultiuserSettingsMessenger)
  {
    dispatch_group_enter(v7);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10021C440;
    v18[3] = &unk_100516EB0;
    p_buf = &buf;
    v23 = v24;
    v21 = completionCopy;
    v18[4] = self;
    v19 = v6;
    v20 = v7;
    [createMultiuserSettingsMessenger sendFetchMultiuserSettingsRequest:v18];
  }

  else
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *v25 = 136315138;
      v26 = "[ADHomeInfoManager fetchMultiUserMetricsWithCompletion:]";
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Could not create HMMultiuserSettingsMessenger to HomeKit. Still sending remaining metrics", v25, 0xCu);
    }
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10021C6B8;
  v13[3] = &unk_10051A2E8;
  v16 = &buf;
  v17 = v24;
  v14 = v6;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = v6;
  v12 = objc_retainBlock(v13);
  dispatch_group_notify(v7, self->_queue, v12);

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(&buf, 8);
}

- (void)_enumerateListenersUsingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = self->_listeners;
    v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          blockCopy[2](blockCopy, *(*(&v10 + 1) + 8 * v9));
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)removeListener:(id)listener
{
  listenerCopy = listener;
  v5 = listenerCopy;
  if (listenerCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10021CC18;
    v7[3] = &unk_10051E010;
    v7[4] = self;
    v8 = listenerCopy;
    dispatch_async(queue, v7);
  }
}

- (void)addListener:(id)listener
{
  listenerCopy = listener;
  v5 = listenerCopy;
  if (listenerCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10021CCCC;
    v7[3] = &unk_10051E010;
    v7[4] = self;
    v8 = listenerCopy;
    dispatch_async(queue, v7);
  }
}

- (void)getCurrentAccessoryInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10021CD7C;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(queue, v7);
  }
}

- (AFHomeAccessoryInfo)currentAccessoryInfo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10021CEC8;
  v10 = sub_10021CED8;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100018A18;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_accessoryLoggingSalt
{
  accessoryLoggingSalt = self->_accessoryLoggingSalt;
  if (!accessoryLoggingSalt)
  {
    _currentHome = [(ADHomeInfoManager *)self _currentHome];
    uniqueIdentifier = [_currentHome uniqueIdentifier];
    v6 = [uniqueIdentifier copy];
    v7 = self->_accessoryLoggingSalt;
    self->_accessoryLoggingSalt = v6;

    accessoryLoggingSalt = self->_accessoryLoggingSalt;
  }

  return accessoryLoggingSalt;
}

- (void)_updateCurrentAccessoryInfoWithAccessory:(id)accessory
{
  accessoryCopy = accessory;
  if (accessoryCopy && (-[ADHomeInfoManager _currentAccessory](self, "_currentAccessory"), v5 = objc_claimAutoreleasedReturnValue(), [v5 uniqueIdentifier], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(accessoryCopy, "uniqueIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqual:", v7), v7, v6, v5, v8))
  {
    v9 = [(ADHomeInfoManager *)self _accessoryInfoForAccessory:accessoryCopy];
  }

  else
  {
    v9 = 0;
  }

  v10 = self->_currentAccessoryInfo;
  v11 = v9;
  v12 = v11;
  if (v10 == v11)
  {
  }

  else
  {
    if (v11 && v10)
    {
      v13 = [(AFHomeAccessoryInfo *)v10 isEqual:v11];

      if (v13)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      currentAccessoryInfo = self->_currentAccessoryInfo;
      *buf = 136315650;
      v21 = "[ADHomeInfoManager _updateCurrentAccessoryInfoWithAccessory:]";
      v22 = 2112;
      v23 = currentAccessoryInfo;
      v24 = 2112;
      v25 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s currentAccessoryInfo: %@ -> %@", buf, 0x20u);
    }

    v16 = [(AFHomeAccessoryInfo *)v12 copy];
    v17 = self->_currentAccessoryInfo;
    self->_currentAccessoryInfo = v16;

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10021D1C4;
    v18[3] = &unk_100516E88;
    v18[4] = self;
    v19 = v12;
    [(ADHomeInfoManager *)self _enumerateListenersUsingBlock:v18];
  }

LABEL_15:
}

- (id)_accessoryInfoForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  category = [accessoryCopy category];
  categoryType = [category categoryType];
  v7 = HMAccessoryCategoryTypeSpeaker;
  if ([categoryType isEqual:HMAccessoryCategoryTypeSpeaker])
  {
    v8 = 1;
  }

  else
  {
    category2 = [accessoryCopy category];
    categoryType2 = [category2 categoryType];
    v8 = [categoryType2 isEqual:HMAccessoryCategoryTypeAudioReceiver];
  }

  category3 = [accessoryCopy category];
  categoryType3 = [category3 categoryType];
  if ([categoryType3 isEqualToString:v7] & 1) != 0 || (objc_msgSend(categoryType3, "isEqualToString:", HMAccessoryCategoryTypeHomePod) & 1) != 0 || (objc_msgSend(categoryType3, "isEqualToString:", HMAccessoryCategoryTypeAudioReceiver))
  {
    v13 = 32;
  }

  else if ([categoryType3 isEqualToString:HMAccessoryCategoryTypeThermostat])
  {
    v13 = 6;
  }

  else if ([categoryType3 isEqualToString:HMAccessoryCategoryTypeAppleTV])
  {
    v13 = 33;
  }

  else if ([categoryType3 isEqualToString:HMAccessoryCategoryTypeTelevision])
  {
    v13 = 38;
  }

  else if ([categoryType3 isEqualToString:HMAccessoryCategoryTypeLightbulb])
  {
    v13 = 1;
  }

  else if ([categoryType3 isEqualToString:HMAccessoryCategoryTypeDoorLock])
  {
    v13 = 2;
  }

  else if ([categoryType3 isEqualToString:HMAccessoryCategoryTypeIPCamera])
  {
    v13 = 3;
  }

  else if ([categoryType3 isEqualToString:HMAccessoryCategoryTypeGarageDoorOpener])
  {
    v13 = 4;
  }

  else if ([categoryType3 isEqualToString:HMAccessoryCategoryTypeOutlet])
  {
    v13 = 5;
  }

  else if ([categoryType3 isEqualToString:HMAccessoryCategoryTypeFan] & 1) != 0 || (objc_msgSend(categoryType3, "isEqualToString:", HMAccessoryCategoryTypeFan))
  {
    v13 = 7;
  }

  else if ([categoryType3 isEqualToString:HMAccessoryCategoryTypeSecuritySystem])
  {
    v13 = 17;
  }

  else if ([categoryType3 isEqualToString:HMAccessoryCategoryTypeSwitch])
  {
    v13 = 26;
  }

  else if ([categoryType3 isEqualToString:HMAccessoryCategoryTypeAirPurifier])
  {
    v13 = 27;
  }

  else if ([categoryType3 isEqualToString:HMAccessoryCategoryTypeAirPort])
  {
    v13 = 34;
  }

  else if ([categoryType3 isEqualToString:HMAccessoryCategoryTypeFaucet])
  {
    v13 = 37;
  }

  else
  {
    v13 = 0;
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10021D5B8;
  v17[3] = &unk_100516E60;
  v21 = v8;
  selfCopy = self;
  v20 = v13;
  v18 = accessoryCopy;
  v14 = accessoryCopy;
  v15 = [AFHomeAccessoryInfo newWithBuilder:v17];

  return v15;
}

- (id)_currentAccessoryInfo
{
  currentAccessoryInfo = self->_currentAccessoryInfo;
  if (!currentAccessoryInfo)
  {
    _currentAccessory = [(ADHomeInfoManager *)self _currentAccessory];
    currentAccessoryInfo = self->_currentAccessoryInfo;
  }

  v5 = [(AFHomeAccessoryInfo *)currentAccessoryInfo copy];

  return v5;
}

- (id)_accessoryForIdentifier:(id)identifier inHome:(id *)home
{
  identifierCopy = identifier;
  v7 = identifierCopy;
  if (home)
  {
    *home = 0;
  }

  if (!identifierCopy)
  {
    v12 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v60 = "[ADHomeInfoManager _accessoryForIdentifier:inHome:]";
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Unable to look up for accessory in home because the identifier is nil.", buf, 0xCu);
    }

    v11 = 0;
    if (home)
    {
      *home = 0;
    }

    goto LABEL_52;
  }

  v50 = identifierCopy;
  _homeManager = [(ADHomeInfoManager *)self _homeManager];
  if ([_homeManager isDataSyncInProgress])
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v60 = "[ADHomeInfoManager _accessoryForIdentifier:inHome:]";
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Unable to look up for accessory in home because home manager is still syncing data.", buf, 0xCu);
    }

    v10 = 0;
    v11 = 0;
    if (home)
    {
      *home = 0;
    }

    goto LABEL_51;
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v49 = _homeManager;
  homes = [_homeManager homes];
  v45 = [homes countByEnumeratingWithState:&v55 objects:v68 count:16];
  v10 = 0;
  if (!v45)
  {
    v35 = 0;
    v25 = v50;
    goto LABEL_47;
  }

  v14 = *v56;
  v47 = homes;
  homeCopy = home;
  v44 = *v56;
LABEL_15:
  v15 = 0;
  while (2)
  {
    if (*v56 != v14)
    {
      objc_enumerationMutation(homes);
    }

    v46 = v15;
    v16 = *(*(&v55 + 1) + 8 * v15);
    v17 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v18 = v17;
      v19 = [v16 description];
      *buf = 136315395;
      v60 = "[ADHomeInfoManager _accessoryForIdentifier:inHome:]";
      v61 = 2113;
      v62 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s home:%{private}@", buf, 0x16u);
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v20 = v16;
    accessories = [v16 accessories];
    v22 = [accessories countByEnumeratingWithState:&v51 objects:v67 count:16];
    if (!v22)
    {
      v25 = v50;
      goto LABEL_39;
    }

    v23 = v22;
    v24 = *v52;
    v25 = v50;
    while (2)
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v52 != v24)
        {
          objc_enumerationMutation(accessories);
        }

        v27 = *(*(&v51 + 1) + 8 * i);
        v28 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v29 = v28;
          v30 = [v27 description];
          *buf = 136315395;
          v60 = "[ADHomeInfoManager _accessoryForIdentifier:inHome:]";
          v61 = 2113;
          v62 = v30;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%s accessory:%{private}@", buf, 0x16u);
        }

        uniqueIdentifier = [v27 uniqueIdentifier];
        if ([uniqueIdentifier isEqual:v25])
        {
        }

        else
        {
          uuid = [v27 uuid];
          v33 = [uuid isEqual:v25];

          if (!v33)
          {
            v25 = v50;
            continue;
          }
        }

        v34 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v60 = "[ADHomeInfoManager _accessoryForIdentifier:inHome:]";
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%s found accessory", buf, 0xCu);
        }

        v35 = v27;
        v36 = v20;

        v25 = v50;
        if (v35)
        {
          v10 = accessories;
          homes = v47;
          home = homeCopy;
          goto LABEL_45;
        }

        v10 = v36;
      }

      v23 = [accessories countByEnumeratingWithState:&v51 objects:v67 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }

LABEL_39:

    if (!+[AFFeatureFlags isRemoraEnabled](AFFeatureFlags, "isRemoraEnabled") || ([v20 accessoryWithUniqueIdentifier:v25], (v37 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v15 = v46 + 1;
      homes = v47;
      home = homeCopy;
      v14 = v44;
      if ((v46 + 1) != v45)
      {
        continue;
      }

      v35 = 0;
      v45 = [v47 countByEnumeratingWithState:&v55 objects:v68 count:16];
      if (!v45)
      {
        goto LABEL_47;
      }

      goto LABEL_15;
    }

    break;
  }

  v35 = v37;
  v41 = AFSiriLogContextDaemon;
  homes = v47;
  home = homeCopy;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v42 = v41;
    v43 = [v35 description];
    *buf = 136315395;
    v60 = "[ADHomeInfoManager _accessoryForIdentifier:inHome:]";
    v61 = 2113;
    v62 = v43;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "%s accessory:%{private}@", buf, 0x16u);

    v25 = v50;
    v41 = AFSiriLogContextDaemon;
  }

  if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v60 = "[ADHomeInfoManager _accessoryForIdentifier:inHome:]";
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "%s found accessory", buf, 0xCu);
  }

  v36 = v20;
LABEL_45:

  v10 = v36;
LABEL_47:

  v38 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315907;
    v60 = "[ADHomeInfoManager _accessoryForIdentifier:inHome:]";
    v61 = 2112;
    v62 = v25;
    v63 = 2113;
    v64 = v35;
    v65 = 2113;
    v66 = v10;
    _os_log_debug_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "%s %@ -> %{private}@ (%{private}@)", buf, 0x2Au);
    if (home)
    {
LABEL_49:
      v39 = v10;
      *home = v10;
    }
  }

  else if (home)
  {
    goto LABEL_49;
  }

  v11 = v35;
  _homeManager = v49;
LABEL_51:

  v7 = v50;
LABEL_52:

  return v11;
}

- (id)getCurrentASRLanguages
{
  v2 = +[ADPreferences sharedPreferences];
  languageCode = [v2 languageCode];

  v4 = +[ADCommandCenter sharedCommandCenter];
  _assetManager = [v4 _assetManager];
  v6 = [_assetManager assetsAvailableStatusForLanguage:languageCode];

  if (AFIsSpeechAssetAvailableFromUodStatus())
  {
    v7 = [[NSSet alloc] initWithObjects:{languageCode, 0}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)getHomeContext:(id)context
{
  contextCopy = context;
  v5 = contextCopy;
  if (contextCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10021E0A4;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = contextCopy;
    dispatch_async(queue, v7);
  }
}

- (id)getHomeUniqueIdentifiers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10021CEC8;
  v11 = sub_10021CED8;
  v12 = +[NSMutableArray array];
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10021E1D8;
  v6[3] = &unk_10051D4A0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  v4 = [v8[5] copy];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)accessoriesInHome
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10021CEC8;
  v11 = sub_10021CED8;
  v12 = +[NSMutableArray array];
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10021E430;
  v6[3] = &unk_10051D4A0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  v4 = [v8[5] copy];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)accessoriesWithPersonalRequestsEnabled
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10021CEC8;
  v11 = sub_10021CED8;
  v12 = +[NSMutableArray array];
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10021E7DC;
  v6[3] = &unk_10051D4A0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  v4 = [v8[5] copy];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setRecognizeMyVoiceEnabled:(BOOL)enabled
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10021EB18;
  v4[3] = &unk_10051CBD8;
  v4[4] = self;
  enabledCopy = enabled;
  dispatch_async(queue, v4);
}

- (void)restartShareDeletion
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10021F080;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)restartSharing
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10021F44C;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)getSpeakerCapabilityForAccessoryWithUUID:(id)d completionHandler:(id)handler
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10021F500;
  v7[3] = &unk_100516E10;
  handlerCopy = handler;
  v6 = handlerCopy;
  [(ADHomeInfoManager *)self getAccessoryInfoForAccessoryWithUUID:d completionHandler:v7];
}

- (void)getAccessoryInfoForAccessoryWithUUID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [NSError errorWithDomain:kAFAssistantErrorDomain code:44 userInfo:0];
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v4);
  }
}

- (void)getCurrentAccessoryWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10021F650;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(queue, v7);
  }
}

- (void)_onceSiriDataSharingAdjustment:(id)adjustment
{
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10021FBF4;
  v34[3] = &unk_10051C9D0;
  v34[4] = self;
  adjustmentCopy = adjustment;
  v35 = adjustmentCopy;
  v5 = objc_retainBlock(v34);
  v6 = +[ADPreferences sharedPreferences];
  if ([v6 siriDataSharingHomePodSetupDeviceIsValid])
  {
    v7 = 1;
  }

  else
  {
    v7 = _AFPreferencesHomePodAdjustedOptIn2021WithContext();
  }

  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    _currentAccessory = [(ADHomeInfoManager *)self _currentAccessory];
    uniqueIdentifier = [_currentAccessory uniqueIdentifier];
    *buf = 136315651;
    v37 = "[ADHomeInfoManager _onceSiriDataSharingAdjustment:]";
    v38 = 2113;
    v39 = uniqueIdentifier;
    v40 = 1024;
    LODWORD(v41) = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Current status of accessory %{private}@ is: %d", buf, 0x1Cu);
  }

  if (!v7)
  {
    _currentAccessory2 = [(ADHomeInfoManager *)self _currentAccessory];
    settings = [_currentAccessory2 settings];

    rootGroup = [settings rootGroup];
    v16 = [ADHomeInfoManager findSettingWithKeyPath:@"root.general.analytics.shareSiriAnalytics" group:rootGroup];

    _homeManager = [(ADHomeInfoManager *)self _homeManager];
    if ([_homeManager hasOptedToHH2])
    {
    }

    else
    {
      IsHomePodInHH2Mode = _AFPreferencesIsHomePodInHH2Mode();

      if ((IsHomePodInHH2Mode & 1) == 0)
      {
        if (v16)
        {
          [v16 updateValue:&off_100533BF0 completionHandler:v5];
        }

        else
        {
          v20 = ++qword_1005905F0;
          v21 = AFSiriLogContextDaemon;
          v22 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR);
          if (v20 > 0x13)
          {
            if (v22)
            {
              v25 = v21;
              _currentAccessory3 = [(ADHomeInfoManager *)self _currentAccessory];
              uniqueIdentifier2 = [_currentAccessory3 uniqueIdentifier];
              *buf = 136315395;
              v37 = "[ADHomeInfoManager _onceSiriDataSharingAdjustment:]";
              v38 = 2113;
              v39 = uniqueIdentifier2;
              _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s Error setting siriDataSharing for accessory %{private}@ in HomeKit. siriDataSharing is nil.  Maximum retries reached", buf, 0x16u);
            }
          }

          else
          {
            if (v22)
            {
              v28 = v21;
              _currentAccessory4 = [(ADHomeInfoManager *)self _currentAccessory];
              uniqueIdentifier3 = [_currentAccessory4 uniqueIdentifier];
              *buf = 136315651;
              v37 = "[ADHomeInfoManager _onceSiriDataSharingAdjustment:]";
              v38 = 2113;
              v39 = uniqueIdentifier3;
              v40 = 2048;
              v41 = qword_1005905F0;
              _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s Error setting siriDataSharing for accessory %{private}@ in HomeKit. siriDataSharing is nil. Scheduling retry %lu", buf, 0x20u);
            }

            v23 = dispatch_time(0, 30000000000);
            queue = self->_queue;
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10021FDF0;
            block[3] = &unk_10051E010;
            block[4] = self;
            v32 = adjustmentCopy;
            dispatch_after(v23, queue, block);
          }
        }

        goto LABEL_15;
      }
    }

    (v5[2])(v5, 0);
LABEL_15:

    goto LABEL_16;
  }

  if ((_AFPreferencesSiriDataSharingHomeAccessoryMigrated() & 1) == 0 && +[AFFeatureFlags isSiriDataSharingRepromptEnabled])
  {
    v12 = _AFPreferencesSiriDataSharingLegacyOptInStatusWithContext();
    if ((v12 - 1) <= 1)
    {
      settings = +[ADPreferences sharedPreferences];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_10021FCAC;
      v33[3] = &unk_10051B9B8;
      v33[4] = v12;
      [settings setSiriDataSharingOptInStatus:v12 propagateToHomeAccessories:0 source:11 reason:@"Migration upon upgrade" completion:v33];
LABEL_16:

      goto LABEL_17;
    }

    v19 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315395;
      v37 = "[ADHomeInfoManager _onceSiriDataSharingAdjustment:]";
      v38 = 2049;
      v39 = v12;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s Only Opt-In and Opt-Out should be migrated to %{private}ld", buf, 0x16u);
    }

    _AFPreferencesSetSiriDataSharingHomeAccessoryMigrated();
  }

LABEL_17:
}

- (void)_siriDataSharingAdjustment:(id)adjustment
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100220464;
  v5[3] = &unk_10051E010;
  v5[4] = self;
  adjustmentCopy = adjustment;
  v3 = qword_1005905E8;
  v4 = adjustmentCopy;
  if (v3 != -1)
  {
    dispatch_once(&qword_1005905E8, v5);
  }
}

- (void)_updateVoiceTriggerPhrase
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315138;
    v8 = "[ADHomeInfoManager _updateVoiceTriggerPhrase]";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s ", &v7, 0xCu);
  }

  if (self->_currentAccessory)
  {
    currentHome = self->_currentHome;
    if (currentHome)
    {
      siriPhraseOptions = [(HMHome *)currentHome siriPhraseOptions];
      _currentAccessoryInfo = [(ADHomeInfoManager *)self _currentAccessoryInfo];
      [(ADHomeInfoManager *)self updateVoiceTriggerPhrase:siriPhraseOptions currentAccessoryInfo:_currentAccessoryInfo];
    }
  }
}

- (void)availableLanguagesInTheHome:(id)home
{
  homeCopy = home;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v10 = "[ADHomeInfoManager availableLanguagesInTheHome:]";
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
    if (!homeCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (homeCopy)
  {
LABEL_3:
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1002206C8;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = homeCopy;
    dispatch_async(queue, v7);
  }

LABEL_4:
}

- (void)getHomeIdForAccessoryId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    if (idCopy)
    {
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100220CF4;
      block[3] = &unk_10051E088;
      block[4] = self;
      v11 = idCopy;
      v12 = v8;
      dispatch_async(queue, block);
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

- (void)getVoiceSettingsForHomeMembers:(id)members
{
  membersCopy = members;
  v5 = membersCopy;
  if (membersCopy)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100220E14;
    v6[3] = &unk_100516DE8;
    v7 = membersCopy;
    [(ADHomeInfoManager *)self settingsForMultiUserWithRefresh:0 completion:v6];
  }
}

- (void)settingsForMultiUserWithRefresh:(BOOL)refresh completion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100221038;
    block[3] = &unk_10051D228;
    block[4] = self;
    refreshCopy = refresh;
    v10 = completionCopy;
    dispatch_async(queue, block);
  }
}

- (void)getCurrentHomeMemberIds:(id)ids
{
  idsCopy = ids;
  v5 = idsCopy;
  if (idsCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1002211C0;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = idsCopy;
    dispatch_async(queue, v7);
  }
}

- (void)_setPreferredMediaUserForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315395;
    v26 = "[ADHomeInfoManager _setPreferredMediaUserForAccessory:]";
    v27 = 2113;
    v28 = accessoryCopy;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s accessory = %{private}@", buf, 0x16u);
  }

  preferredMediaUser = [accessoryCopy preferredMediaUser];
  uniqueIdentifier = [preferredMediaUser uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  if (uUIDString)
  {
    goto LABEL_7;
  }

  _currentHome = [(ADHomeInfoManager *)self _currentHome];
  owner = [_currentHome owner];
  uniqueIdentifier2 = [owner uniqueIdentifier];
  uUIDString = [uniqueIdentifier2 UUIDString];

  v12 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315395;
    v26 = "[ADHomeInfoManager _setPreferredMediaUserForAccessory:]";
    v27 = 2113;
    v28 = uUIDString;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s preferredMediaUser is not available, falling back to use home owner (%{private}@) as default", buf, 0x16u);
  }

  if (uUIDString)
  {
LABEL_7:
    _currentAccessory = [(ADHomeInfoManager *)self _currentAccessory];
    uniqueIdentifier3 = [accessoryCopy uniqueIdentifier];
    uniqueIdentifier4 = [_currentAccessory uniqueIdentifier];
    if ([uniqueIdentifier3 isEqual:uniqueIdentifier4])
    {
      category = [accessoryCopy category];
      categoryType = [category categoryType];
      v18 = [categoryType isEqualToString:HMAccessoryCategoryTypeHomePod];

      if (v18)
      {
        v19 = +[ADMultiUserService sharedService];
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_10022180C;
        v23[3] = &unk_100517E08;
        v23[4] = self;
        v24 = uUIDString;
        [v19 getSharedUserIdForHomeUserId:v24 completion:v23];

LABEL_13:
        goto LABEL_14;
      }
    }

    else
    {
    }

    v20 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v26 = "[ADHomeInfoManager _setPreferredMediaUserForAccessory:]";
      _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%s Unknown accessory type, ignoring", buf, 0xCu);
    }

    goto LABEL_13;
  }

  v21 = AFSiriLogContextDaemon;
  if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_15;
  }

  uUIDString = v21;
  _currentHome2 = [(ADHomeInfoManager *)self _currentHome];
  *buf = 136315651;
  v26 = "[ADHomeInfoManager _setPreferredMediaUserForAccessory:]";
  v27 = 2113;
  v28 = _currentHome2;
  v29 = 2113;
  v30 = accessoryCopy;
  _os_log_error_impl(&_mh_execute_header, uUIDString, OS_LOG_TYPE_ERROR, "%s Unable to determine preferredMediaUser at this time for current home (%{private}@), home owner not available. Not setting preferredMediaUser for accessory (%{private}@)", buf, 0x20u);

LABEL_14:
LABEL_15:
}

- (void)_setPreferredMediaUserForAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  selfCopy = self;
  _currentAccessory = [(ADHomeInfoManager *)self _currentAccessory];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = accessoriesCopy;
  v6 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v23;
    v20 = HMAccessoryCategoryTypeHomePod;
    *&v7 = 136315394;
    v18 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        uniqueIdentifier = [v11 uniqueIdentifier];
        uniqueIdentifier2 = [_currentAccessory uniqueIdentifier];
        if ([uniqueIdentifier isEqual:uniqueIdentifier2])
        {
          category = [v11 category];
          categoryType = [category categoryType];
          v16 = [categoryType isEqualToString:v20];

          if (v16)
          {
            v17 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
            {
              *buf = v18;
              v27 = "[ADHomeInfoManager _setPreferredMediaUserForAccessories:]";
              v28 = 2112;
              v29 = v11;
              _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s HomePod = %@", buf, 0x16u);
            }

            [v11 setDelegate:selfCopy];
            [(ADHomeInfoManager *)selfCopy _setPreferredMediaUserForAccessory:v11];
          }
        }

        else
        {
        }
      }

      v8 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v8);
  }
}

- (id)preferredMediaUserInfo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10021CEC8;
  v10 = sub_10021CED8;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100221E5C;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)infoForThisDevice
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10021CEC8;
  v10 = sub_10021CED8;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100221F98;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_settingsForHomeUser:(id)user forHome:(id)home
{
  userCopy = user;
  homeCopy = home;
  v8 = [userCopy userSettingsForHome:homeCopy];
  settings = [v8 settings];

  [userCopy setDelegate:self];
  [settings setDelegate:self];
  if ([homeCopy isMultiUserEnabled] && (objc_msgSend(settings, "rootGroup"), v10 = objc_claimAutoreleasedReturnValue(), +[ADHomeInfoManager findSettingWithKeyPath:group:](ADHomeInfoManager, "findSettingWithKeyPath:group:", @"root.siri.identifyVoice", v10), v11 = objc_claimAutoreleasedReturnValue(), v10, v11))
  {
    value = [v11 value];
    bOOLValue = [value BOOLValue];
  }

  else
  {
    bOOLValue = 2;
  }

  v14 = [(ADHomeInfoManager *)self _allowExplicitContentSettingForUser:userCopy forHome:homeCopy];
  v15 = [userCopy assistantAccessControlForHome:homeCopy];
  _currentAccessory = [(ADHomeInfoManager *)self _currentAccessory];
  v17 = sub_100222250(v15, _currentAccessory);

  personalDomainsIsEnabled = [v17 personalDomainsIsEnabled];
  securePersonalDomainsRequireAuth = [v17 securePersonalDomainsRequireAuth];
  v20 = [NSDictionary alloc];
  v21 = [NSNumber numberWithBool:personalDomainsIsEnabled];
  v22 = [NSNumber numberWithBool:securePersonalDomainsRequireAuth ^ 1];
  v23 = [NSNumber numberWithInteger:bOOLValue];
  v24 = [NSNumber numberWithBool:v14];
  v25 = [v20 initWithObjectsAndKeys:{v21, @"personalDomainsIsEnabled", v22, @"allowUnauthenticatedRequests", v23, @"allowVoiceID", v24, @"allowExplicitContent", 0}];

  return v25;
}

- (BOOL)_allowExplicitContentSettingForUser:(id)user forHome:(id)home
{
  v4 = [MCProfileConnection sharedConnection:user];
  v5 = [v4 effectiveBoolValueForSetting:MCFeatureExplicitContentAllowed] == 1;

  return v5;
}

- (void)_resolveSiriDataSharingStatusMismatch:(id)mismatch
{
  if (AFIsHorseman() && !_AFPreferencesSiriDataSharingOptInStatus())
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v21 = 136315138;
      v22 = "[ADHomeInfoManager _resolveSiriDataSharingStatusMismatch:]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Siri Data Sharing status is unspecified on this device, check if there's a mismatch between this and HomeKit accessory's setting and recover", &v21, 0xCu);
    }

    _currentAccessory = [(ADHomeInfoManager *)self _currentAccessory];
    settings = [_currentAccessory settings];

    rootGroup = [settings rootGroup];
    v8 = [ADHomeInfoManager findSettingWithKeyPath:@"root.general.analytics.shareSiriAnalytics" group:rootGroup];

    if (v8)
    {
      value = [v8 value];

      if (value)
      {
        value2 = [v8 value];
        bOOLValue = [value2 BOOLValue];

        if (bOOLValue)
        {
          v12 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            v21 = 136315138;
            v22 = "[ADHomeInfoManager _resolveSiriDataSharingStatusMismatch:]";
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Accessory setting thinks this HomePod is Opted-In, but HomePod is in unspecified state, resolving mismatch", &v21, 0xCu);
          }

          v13 = +[ADPreferences sharedPreferences];
          v14 = v13;
          v15 = 1;
LABEL_20:
          [v13 setSiriDataSharingOptInStatus:v15 propagateToHomeAccessories:0 source:4 reason:@"resolveSiriDataSharingStatusMismatch" completion:0];

          goto LABEL_21;
        }

        value3 = [v8 value];
        bOOLValue2 = [value3 BOOLValue];

        if ((bOOLValue2 & 1) == 0)
        {
          v20 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            v21 = 136315138;
            v22 = "[ADHomeInfoManager _resolveSiriDataSharingStatusMismatch:]";
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s Accessory setting thinks this HomePod is Opted-Out, but HomePod is in unspecified state, resolving mismatch", &v21, 0xCu);
          }

          v13 = +[ADPreferences sharedPreferences];
          v14 = v13;
          v15 = 2;
          goto LABEL_20;
        }

LABEL_21:

        return;
      }

      v16 = AFSiriLogContextDaemon;
      if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        goto LABEL_21;
      }

      v21 = 136315394;
      v22 = "[ADHomeInfoManager _resolveSiriDataSharingStatusMismatch:]";
      v23 = 2112;
      v24 = @"root.general.analytics.shareSiriAnalytics";
      v17 = "%s %@ value is null, no recovery needed";
    }

    else
    {
      v16 = AFSiriLogContextDaemon;
      if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        goto LABEL_21;
      }

      v21 = 136315394;
      v22 = "[ADHomeInfoManager _resolveSiriDataSharingStatusMismatch:]";
      v23 = 2112;
      v24 = @"root.general.analytics.shareSiriAnalytics";
      v17 = "%s %@ setting does not exist on this HomePod, no recovery needed";
    }

    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, v17, &v21, 0x16u);
    goto LABEL_21;
  }
}

- (void)_siriDataSharingOptInStatusDidChange:(id)change
{
  changeCopy = change;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v9 = "[ADHomeInfoManager _siriDataSharingOptInStatusDidChange:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (AFIsMultiUserCompanion())
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100222BD8;
    block[3] = &unk_10051DFE8;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)_logRelevantAnalyticsOnHomeUserSettingsUpdateForCurrentSettings:(id)settings allowVoiceIdSettingValue:(int64_t)value isPrimaryUser:(BOOL)user
{
  userCopy = user;
  if (AFIsHorseman())
  {
    if (userCopy)
    {
      v7 = @"owner";
    }

    else
    {
      v7 = @"participant";
    }

    v14[0] = @"user";
    v14[1] = @"date";
    v15[0] = v7;
    v8 = +[NSDate date];
    v9 = [NSDateFormatter localizedStringFromDate:v8 dateStyle:1 timeStyle:4];
    v15[1] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];

    if (!settings)
    {
      v11 = +[AFAnalytics sharedAnalytics];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10022302C;
      v12[3] = &unk_10051DF78;
      v13 = v10;
      [v11 logEventWithType:6110 contextProvider:v12];
    }
  }
}

- (id)_currentHomeInfo
{
  if (!self->_currentHomeInfo)
  {
    _currentHome = [(ADHomeInfoManager *)self _currentHome];
    _currentAccessory = [(ADHomeInfoManager *)self _currentAccessory];
    owner = [_currentHome owner];
    v6 = [owner assistantAccessControlForHome:_currentHome];
    v7 = sub_100222250(v6, _currentAccessory);
    currentHomeInfo = self->_currentHomeInfo;
    self->_currentHomeInfo = v7;

    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v10 = self->_currentHomeInfo;
      v16 = 136315907;
      v17 = "[ADHomeInfoManager _currentHomeInfo]";
      v18 = 2113;
      v19 = _currentHome;
      v20 = 2113;
      v21 = owner;
      v22 = 2113;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s home (%{private}@) owner (%{private}@) %{private}@", &v16, 0x2Au);
    }

    if (AFIsHorseman())
    {
      v11 = self->_currentHomeInfo;
      uniqueIdentifier = [_currentHome uniqueIdentifier];
      [(ADHomeInfo *)v11 setCurrentHomeIdentifier:uniqueIdentifier];
    }

    if (self->_currentHomeInfo)
    {
      [(ADHomeInfoManager *)self _updateHomeUserSettings];
      v13 = +[NSNotificationCenter defaultCenter];
      [v13 postNotificationName:@"ADHomeInfoForThisDeviceDidChangeNotification" object:0];
    }

    goto LABEL_12;
  }

  if (AFIsMultiUserCompanion() && [(ADHomeInfoManager *)self _updateHomeUserSettings])
  {
    _currentHome = +[NSNotificationCenter defaultCenter];
    [_currentHome postNotificationName:@"ADHomeInfoForThisDeviceDidChangeNotification" object:0];
LABEL_12:
  }

  v14 = self->_currentHomeInfo;

  return v14;
}

- (id)_currentHome
{
  currentHome = self->_currentHome;
  if (!currentHome)
  {
    _homeManager = [(ADHomeInfoManager *)self _homeManager];
    if ([_homeManager isDataSyncInProgress])
    {
      v5 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v36 = "[ADHomeInfoManager _currentHome]";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Home manager is still syncing", buf, 0xCu);
      }
    }

    else
    {
      if ((AFIsHorseman() & 1) != 0 || AFIsATV())
      {
        _currentAccessory = [(ADHomeInfoManager *)self _currentAccessory];
        home = [_currentAccessory home];
        v8 = self->_currentHome;
        self->_currentHome = home;

        v9 = self->_currentHome;
        if (!v9)
        {
          v10 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v36 = "[ADHomeInfoManager _currentHome]";
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Unable to get current accessory, trying current home.", buf, 0xCu);
          }

          _homeManager2 = [(ADHomeInfoManager *)self _homeManager];
          currentHome = [_homeManager2 currentHome];
          v13 = self->_currentHome;
          self->_currentHome = currentHome;

          v9 = self->_currentHome;
        }

        [(HMHome *)v9 setDelegate:self];
        owner = [(HMHome *)self->_currentHome owner];
        [owner setDelegate:self];
        [(HMHome *)self->_currentHome setDelegate:self];
        v15 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v16 = self->_currentHome;
          *buf = 136315651;
          v36 = "[ADHomeInfoManager _currentHome]";
          v37 = 2113;
          v38 = owner;
          v39 = 2113;
          v40 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Home owner %{private}@ home %{private}@", buf, 0x20u);
        }

        if (AFIsHorseman())
        {
          settings = [_currentAccessory settings];
          [settings setDelegate:self];
          if (self->_currentHome)
          {
            [(ADHomeInfoManager *)self _siriDataSharingAdjustment:?];
          }
        }
      }

      else
      {
        primaryHome = [_homeManager primaryHome];
        v21 = self->_currentHome;
        self->_currentHome = primaryHome;

        [(HMHome *)self->_currentHome setDelegate:self];
        _currentAccessory = [_homeManager homes];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v22 = [_currentAccessory countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v31;
          do
          {
            for (i = 0; i != v23; i = i + 1)
            {
              if (*v31 != v24)
              {
                objc_enumerationMutation(_currentAccessory);
              }

              v26 = *(*(&v30 + 1) + 8 * i);
              [v26 setDelegate:self];
              currentUser = [v26 currentUser];
              [currentUser setDelegate:self];
              v28 = [currentUser userSettingsForHome:v26];
              settings2 = [v28 settings];

              [settings2 setDelegate:self];
            }

            v23 = [_currentAccessory countByEnumeratingWithState:&v30 objects:v34 count:16];
          }

          while (v23);
        }
      }
    }

    if (self->_currentHome)
    {
      v18 = +[NSNotificationCenter defaultCenter];
      [v18 postNotificationName:@"ADHomeInfoCurrentHomeIsReady" object:0];
    }

    currentHome = self->_currentHome;
  }

  return currentHome;
}

- (void)currentHomeWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1002236B8;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(queue, v7);
  }
}

- (void)_updateHomeContext:(id)context
{
  contextCopy = context;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v76 = "[ADHomeInfoManager _updateHomeContext:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  selfCopy = self;
  dispatch_assert_queue_V2(self->_queue);
  v6 = contextCopy;
  homes = [v6 homes];
  v8 = [homes count];
  v9 = [NSMutableArray arrayWithCapacity:v8];
  v55 = [NSMutableArray arrayWithCapacity:v8];
  v51 = v6;
  currentHome = [v6 currentHome];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = homes;
  v11 = [obj countByEnumeratingWithState:&v67 objects:buf count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v68;
    v14 = SAHAEntityTypeHOMEValue;
    do
    {
      v15 = 0;
      do
      {
        if (*v68 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v67 + 1) + 8 * v15);
        v17 = objc_alloc_init(SAHAEntity);
        [v17 setEntityType:v14];
        name = [v16 name];
        [v17 setName:name];

        assistantIdentifier = [v16 assistantIdentifier];
        v20 = [NSURL URLWithString:assistantIdentifier];
        [v17 setIdentifier:v20];

        [v9 addObject:v17];
        uniqueIdentifier = [v16 uniqueIdentifier];
        uniqueIdentifier2 = [currentHome uniqueIdentifier];
        LODWORD(assistantIdentifier) = [uniqueIdentifier isEqual:uniqueIdentifier2];

        if (assistantIdentifier)
        {
          [v55 addObject:v17];
        }

        v15 = v15 + 1;
      }

      while (v12 != v15);
      v12 = [obj countByEnumeratingWithState:&v67 objects:buf count:16];
    }

    while (v12);
  }

  v23 = objc_alloc_init(SASetHomeContext);
  v24 = [v9 copy];
  [v23 setEntities:v24];

  v25 = [v55 copy];
  [v23 setCurrentHomes:v25];

  v26 = +[ADPreferences sharedPreferences];
  [v23 setByPassServerFlow:{objc_msgSend(v26, "homeAutomationServerFlowBypassed")}];

  v27 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *v73 = 136315138;
    v74 = "createHomeContext";
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s Created homeContext", v73, 0xCu);
  }

  v28 = selfCopy;
  objc_storeStrong(&selfCopy->_homeContext, v23);
  homeManager = selfCopy->_homeManager;
  if (homeManager)
  {
    v49 = v23;
    [(HMHomeManager *)homeManager homes];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v52 = v66 = 0u;
    v54 = [v52 countByEnumeratingWithState:&v63 objects:v72 count:16];
    v30 = 0;
    v31 = 0;
    v32 = 0;
    if (!v54)
    {
      goto LABEL_37;
    }

    v53 = *v64;
    v33 = HMAccessoryCategoryTypeHomePod;
    obja = HMAccessoryCategoryTypeAppleTV;
    while (1)
    {
      v34 = 0;
      do
      {
        if (*v64 != v53)
        {
          objc_enumerationMutation(v52);
        }

        v56 = v34;
        v35 = *(*(&v63 + 1) + 8 * v34);
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        accessories = [v35 accessories];
        v37 = [accessories countByEnumeratingWithState:&v59 objects:v71 count:16];
        if (v37)
        {
          v38 = v37;
          v39 = *v60;
          do
          {
            v40 = 0;
            do
            {
              if (*v60 != v39)
              {
                objc_enumerationMutation(accessories);
              }

              category = [*(*(&v59 + 1) + 8 * v40) category];
              categoryType = [category categoryType];

              if (v32 & 1) != 0 || ([categoryType isEqualToString:v33])
              {
                v32 = 1;
                if (v30)
                {
                  goto LABEL_28;
                }
              }

              else
              {
                v32 = [categoryType isEqualToString:obja];
                if (v30)
                {
LABEL_28:
                  v30 = 1;
                  if ((v31 & 1) == 0)
                  {
                    goto LABEL_29;
                  }

                  goto LABEL_32;
                }
              }

              v30 = [categoryType isEqualToString:v33];
              if ((v31 & 1) == 0)
              {
LABEL_29:
                v31 = [categoryType isEqualToString:obja];
                goto LABEL_33;
              }

LABEL_32:
              v31 = 1;
LABEL_33:

              v40 = v40 + 1;
            }

            while (v38 != v40);
            v38 = [accessories countByEnumeratingWithState:&v59 objects:v71 count:16];
          }

          while (v38);
        }

        v34 = v56 + 1;
      }

      while ((v56 + 1) != v54);
      v54 = [v52 countByEnumeratingWithState:&v63 objects:v72 count:16];
      if (!v54)
      {
LABEL_37:
        v43 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v76 = "[ADHomeInfoManager _updateHomeContext:]";
          v77 = 1024;
          v78 = v32 & 1;
          v79 = 1024;
          v80 = v31 & 1;
          v81 = 1024;
          v82 = v30 & 1;
          _os_log_debug_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "%s hasATVOrHomePod=%d hasATV=%d hasHomePod=%d", buf, 0x1Eu);
        }

        v44 = +[ADPreferences sharedPreferences];
        [v44 setHasATVOrHomePodInHome:v32 & 1];

        v45 = +[ADPreferences sharedPreferences];
        [v45 setHasATVInHome:v31 & 1];

        v46 = +[ADPreferences sharedPreferences];
        [v46 setHasHomePodInHome:v30 & 1];

        v23 = v49;
        v28 = selfCopy;
        break;
      }
    }
  }

  if (v28->isATVOnly && [(ADHomeInfoManager *)v28 _updateHomeUserSettings])
  {
    v47 = +[NSNotificationCenter defaultCenter];
    [v47 postNotificationName:@"ADHomeInfoForThisDeviceDidChangeNotification" object:0];
  }

  v48 = +[NSNotificationCenter defaultCenter];
  [v48 postNotificationName:@"ADHomeInfoHomeContextDidChangeNotification" object:v23];
}

- (void)dealloc
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v7 = "[ADHomeInfoManager dealloc]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = ADHomeInfoManager;
  [(ADHomeInfoManager *)&v5 dealloc];
}

- (id)_homeManager
{
  homeManager = self->_homeManager;
  if (!homeManager)
  {
    v4 = [[HMHomeManager alloc] initWithOptions:32888];
    v5 = self->_homeManager;
    self->_homeManager = v4;

    [(HMHomeManager *)self->_homeManager setDelegate:self];
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v7 = self->_homeManager;
      v9 = 136315394;
      v10 = "[ADHomeInfoManager _homeManager]";
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s homeManager = %@", &v9, 0x16u);
    }

    homeManager = self->_homeManager;
  }

  return homeManager;
}

- (void)startAcceptingCloudSharesForMultiUserService
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100224044;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)hasOptedInHH2
{
  _homeManager = [(ADHomeInfoManager *)self _homeManager];
  hasOptedToHH2 = [_homeManager hasOptedToHH2];

  return hasOptedToHH2;
}

- (ADHomeInfoManager)initWithHomeManager:(id)manager queue:(id)queue
{
  managerCopy = manager;
  queueCopy = queue;
  v17.receiver = self;
  v17.super_class = ADHomeInfoManager;
  v9 = [(ADHomeInfoManager *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    objc_storeStrong(&v10->_homeManager, manager);
    v11 = +[AFInstanceContext defaultContext];
    instanceContext = v10->_instanceContext;
    v10->_instanceContext = v11;

    v13 = +[NSHashTable weakObjectsHashTable];
    listeners = v10->_listeners;
    v10->_listeners = v13;

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v10 selector:"_siriDataSharingOptInStatusDidChange:" name:@"ADPreferencesSiriDataSharingOptInStatusDidChangeNotification" object:0];
  }

  return v10;
}

- (void)updateCurrentUserRMVSettingForHome:(id)home enabled:(BOOL)enabled completion:(id)completion
{
  homeCopy = home;
  completionCopy = completion;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v19 = "[ADHomeInfoManager updateCurrentUserRMVSettingForHome:enabled:completion:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1002242E4;
  v14[3] = &unk_10051C6C8;
  v14[4] = self;
  v15 = homeCopy;
  v16 = completionCopy;
  enabledCopy = enabled;
  v12 = completionCopy;
  v13 = homeCopy;
  dispatch_async(queue, v14);
}

- (void)updateRMVSettingForUser:(id)user enabled:(BOOL)enabled completion:(id)completion
{
  userCopy = user;
  completionCopy = completion;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v19 = "[ADHomeInfoManager updateRMVSettingForUser:enabled:completion:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1002249BC;
  v14[3] = &unk_10051C6C8;
  v15 = userCopy;
  v16 = completionCopy;
  v14[4] = self;
  enabledCopy = enabled;
  v12 = userCopy;
  v13 = completionCopy;
  dispatch_async(queue, v14);
}

- (id)_initWithContext:(id)context
{
  contextCopy = context;
  v19.receiver = self;
  v19.super_class = ADHomeInfoManager;
  v5 = [(ADHomeInfoManager *)&v19 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("ADHomeInfoManager", v6);

    queue = v5->_queue;
    v5->_queue = v7;

    v9 = v5->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002250E4;
    block[3] = &unk_10051E010;
    v17 = v5;
    v18 = contextCopy;
    dispatch_async(v9, block);
    v10 = v5->_queue;
    v11 = +[ADQueueMonitor sharedMonitor];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10022531C;
    v14[3] = &unk_10051C2E0;
    v15 = v10;
    v12 = v10;
    [v11 addQueue:v12 heartBeatInterval:v14 timeoutInterval:5.0 timeoutHandler:5.0];
  }

  return v5;
}

- (id)_init
{
  v3 = +[AFInstanceContext defaultContext];
  v4 = [(ADHomeInfoManager *)self _initWithContext:v3];

  return v4;
}

+ (id)findSettingWithKeyPath:(id)path group:(id)group
{
  pathCopy = path;
  groupCopy = group;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  settings = [groupCopy settings];
  v8 = [settings countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(settings);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        keyPath = [v12 keyPath];
        v14 = [keyPath isEqualToString:pathCopy];

        if (v14)
        {
          v19 = v12;
          goto LABEL_19;
        }
      }

      v9 = [settings countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  settings = [groupCopy groups];
  v15 = [settings countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
LABEL_11:
    v18 = 0;
    while (1)
    {
      if (*v23 != v17)
      {
        objc_enumerationMutation(settings);
      }

      v19 = [ADHomeInfoManager findSettingWithKeyPath:pathCopy group:*(*(&v22 + 1) + 8 * v18)];
      if (v19)
      {
        break;
      }

      if (v16 == ++v18)
      {
        v16 = [settings countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v16)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }
    }

LABEL_19:
    v20 = v19;
  }

  else
  {
LABEL_17:
    v20 = 0;
  }

  return v20;
}

- (void)dumpAssistantStateChunk:(id)chunk
{
  chunkCopy = chunk;
  v13 = objc_alloc_init(NSMutableDictionary);
  currentHome = [(ADHomeInfoManager *)self currentHome];
  uniqueIdentifier = [currentHome uniqueIdentifier];
  v7 = uniqueIdentifier;
  if (uniqueIdentifier)
  {
    v8 = uniqueIdentifier;
  }

  else
  {
    v8 = @"nil";
  }

  [v13 setObject:v8 forKeyedSubscript:@"currentHomeIdentifier"];

  currentAccessoryInfo = [(ADHomeInfoManager *)self currentAccessoryInfo];
  uniqueIdentifier2 = [currentAccessoryInfo uniqueIdentifier];
  v11 = uniqueIdentifier2;
  if (uniqueIdentifier2)
  {
    v12 = uniqueIdentifier2;
  }

  else
  {
    v12 = @"nil";
  }

  [v13 setObject:v12 forKeyedSubscript:@"currentAccessoryIdentifier"];

  chunkCopy[2](chunkCopy, v13);
}

@end