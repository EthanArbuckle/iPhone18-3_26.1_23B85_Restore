@interface ADCloudKitMultiUserSharedDataStore
- (ADCloudKitMultiUserSharedDataStore)init;
- (ADCloudKitMultiUserSharedDataStore)initWithInstanceContext:(id)a3;
- (BOOL)_cleanupCacheDirectory;
- (BOOL)hasSetUpRecordZoneSubscription;
- (CKServerChangeToken)serverChangeToken;
- (id)_cacheDirectory;
- (id)_constructRecord:(id)a3 fileArchives:(id)a4 assetManifest:(id)a5 filePath:(id)a6;
- (id)_createCacheDirectory;
- (id)_extractRecord:(id)a3 atPath:(id)a4 fileManager:(id)a5;
- (id)_homeMembershipsFromUnencryptedRecords:(id)a3;
- (void)_logRelevantAnalyticsOnMultiUserVoiceProfileDownloadSuccessWithSharedUserID:(id)a3 isPrimary:(BOOL)a4 isNewUser:(BOOL)a5;
- (void)_mergeDataWithModifiedRecords:(id)a3 deletedRecordIDs:(id)a4 containsAllChanges:(BOOL)a5 completion:(id)a6;
- (void)_synchronizeUsingActivity:(id)a3 sharedUserId:(id)a4 completion:(id)a5;
- (void)_synchronizeVoiceIDWithActivity:(id)a3 sharedUserId:(id)a4 completion:(id)a5;
- (void)_updateVoiceIDProfilesForSharedUser:(id)a3 iCloudAltDSID:(id)a4 records:(id)a5 isPrimary:(BOOL)a6 isNewUser:(BOOL)a7 completion:(id)a8;
- (void)checkForATVRMVSettingUpdate:(id)a3;
- (void)cleanupCacheDirectory;
- (void)deleteUserData:(id)a3;
- (void)fetchDeviceTypesForAllLanguages:(id)a3;
- (void)fetchDeviceTypesForLanguage:(id)a3 completion:(id)a4;
- (void)mergeDataWithModifiedRecords:(id)a3 deletedRecordIDs:(id)a4 containsAllChanges:(BOOL)a5 completion:(id)a6;
- (void)setHasSetUpRecordZoneSubscription:(BOOL)a3;
- (void)setKeyValueRecordsAndVoiceProfile:(id)a3 records:(id)a4 completion:(id)a5;
- (void)setServerChangeToken:(id)a3;
- (void)synchronizeUsingActivity:(id)a3 completion:(id)a4;
- (void)synchronizeUsingActivity:(id)a3 sharedUserId:(id)a4 completion:(id)a5;
@end

@implementation ADCloudKitMultiUserSharedDataStore

- (void)setKeyValueRecordsAndVoiceProfile:(id)a3 records:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v159 = "[ADCloudKitMultiUserSharedDataStore setKeyValueRecordsAndVoiceProfile:records:completion:]";
    v160 = 2048;
    v161 = [v7 count];
    v162 = 2048;
    v163 = [v8 count];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Modified %zd Key Value Records, %zd Voice Records", buf, 0x20u);
  }

  if (!+[AFFeatureFlags isLassoEnabled](AFFeatureFlags, "isLassoEnabled") || ![v7 count] || (-[ADCloudKitMultiUserSharedDataStore checkForATVRMVSettingUpdate:](self, "checkForATVRMVSettingUpdate:", v7), objc_msgSend(v8, "count")))
  {
    v11 = +[ADHomeInfoManager sharedInfoManager];
    v12 = +[ADMultiUserService sharedService];
    v13 = v12;
    if (!v12)
    {
      [(ADCloudKitMultiUserSharedDataStore *)self _updateVoiceIDProfilesForSharedUser:0 iCloudAltDSID:0 records:v8 isPrimary:1 isNewUser:0 completion:v9];
LABEL_153:

      goto LABEL_154;
    }

    v113 = v12;
    v119 = v11;
    v122 = v8;
    v123 = v9;
    v14 = objc_alloc_init(NSMutableDictionary);
    v153 = 0u;
    v154 = 0u;
    v155 = 0u;
    v156 = 0u;
    v105 = v7;
    obj = v7;
    v15 = [obj countByEnumeratingWithState:&v153 objects:v157 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v154;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v154 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v153 + 1) + 8 * i);
          v20 = [v19 recordID];
          v21 = [v20 recordName];

          v22 = sub_100125E60(v19);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = v22;
            [v14 setObject:v23 forKey:v21];
            v24 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              *buf = 136315651;
              v159 = "[ADCloudKitMultiUserSharedDataStore setKeyValueRecordsAndVoiceProfile:records:completion:]";
              v160 = 2113;
              v161 = v23;
              v162 = 2113;
              v163 = v21;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s Found value (%{private}@) for key (%{private}@)", buf, 0x20u);
            }
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v25 = v22;
            [v14 setObject:v25 forKey:v21];
            v26 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
            {
              *buf = 136315651;
              v159 = "[ADCloudKitMultiUserSharedDataStore setKeyValueRecordsAndVoiceProfile:records:completion:]";
              v160 = 2113;
              v161 = v25;
              v162 = 2113;
              v163 = v21;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s Found value (%{private}@) for key (%{private}@)", buf, 0x20u);
            }
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = v22;
            [v14 setObject:v27 forKey:v21];
            v28 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              *buf = 136315651;
              v159 = "[ADCloudKitMultiUserSharedDataStore setKeyValueRecordsAndVoiceProfile:records:completion:]";
              v160 = 2113;
              v161 = v27;
              v162 = 2113;
              v163 = v21;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%s Found value (%{private}@) for key (%{private}@)", buf, 0x20u);
            }
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v29 = v22;
            [v14 setObject:v29 forKey:v21];
            v30 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              *buf = 136315651;
              v159 = "[ADCloudKitMultiUserSharedDataStore setKeyValueRecordsAndVoiceProfile:records:completion:]";
              v160 = 2113;
              v161 = v29;
              v162 = 2113;
              v163 = v21;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "%s Found value (%{private}@) for key (%{private}@)", buf, 0x20u);
            }
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v31 = v22;
            [v14 setObject:v31 forKey:v21];
            v32 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              *buf = 136315651;
              v159 = "[ADCloudKitMultiUserSharedDataStore setKeyValueRecordsAndVoiceProfile:records:completion:]";
              v160 = 2113;
              v161 = v31;
              v162 = 2113;
              v163 = v21;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "%s Found value (%{private}@) for key (%{private}@)", buf, 0x20u);
            }
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v33 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              *buf = 136315395;
              v159 = "[ADCloudKitMultiUserSharedDataStore setKeyValueRecordsAndVoiceProfile:records:completion:]";
              v160 = 2113;
              v161 = v21;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%s Found null value for key (%{private}@)", buf, 0x16u);
            }
          }
        }

        v16 = [obj countByEnumeratingWithState:&v153 objects:v157 count:16];
      }

      while (v16);
    }

    v34 = [v14 objectForKey:@"meDeviceSharedUserID"];
    if (!v34)
    {
      v34 = [v14 objectForKey:@"backupSharedUserID"];
    }

    v35 = [v14 objectForKey:@"meDeviceLoggingSharedUserID"];
    v9 = v123;
    if (!v35)
    {
      v35 = [v14 objectForKey:@"backupLoggingSharedUserID"];
    }

    v117 = [v14 objectForKey:@"meDeviceiCloudAltDSID"];
    v112 = [v14 objectForKey:@"meDeviceAudioAppSignals"];
    v36 = [v14 objectForKey:@"meDeviceAssistantID"];
    v37 = [v14 objectForKey:@"backupAssistantID"];
    v121 = [v14 objectForKey:@"meDeviceLoggingAssistantID"];
    obja = [v14 objectForKey:@"meDeviceSpeechID"];
    v116 = [v14 objectForKey:@"backupSpeechID"];
    v111 = [v14 objectForKey:@"meDeviceIDSIdentifier"];
    v110 = [v14 objectForKey:@"meProductPrefix"];
    v125 = [v14 objectForKey:@"meDeviceACEHost"];
    v115 = [v14 objectForKey:@"backupDeviceACEHost"];
    v128 = [v14 objectForKey:@"meDeviceCapabilities"];
    v38 = [v128 objectForKey:@"meDevicePeerToPeerHandoffCapability"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = [v38 BOOLValue];
    }

    else
    {
      v39 = 0;
    }

    v40 = [v128 objectForKey:@"meDeviceAssistantID"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = v40;
    }

    else
    {
      v41 = 0;
    }

    v106 = v41;
    if (([v106 isEqual:v36] & 1) == 0)
    {
      v42 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v159 = "[ADCloudKitMultiUserSharedDataStore setKeyValueRecordsAndVoiceProfile:records:completion:]";
        v160 = 2112;
        v161 = v36;
        v162 = 2112;
        v163 = v106;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "%s AssistantID of companion (%@) does not match assistantID (%@) from capabilities", buf, 0x20u);
      }

      v39 = 0;
    }

    v101 = v39;
    v43 = [v14 objectForKey:@"meDeviceVoiceIDChangedToEnabledTimestamp"];
    v44 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v159 = "[ADCloudKitMultiUserSharedDataStore setKeyValueRecordsAndVoiceProfile:records:completion:]";
      v160 = 2112;
      v161 = v43;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "%s #multi-user - setKeyValueRecordsAndVoiceProfile - syncedVoiceIDEnabledTimestamp: %@", buf, 0x16u);
    }

    v118 = v43;
    if ([v43 count])
    {
      v45 = +[ADPreferences sharedPreferences];
      v46 = [v45 multiUserSetupStartTimes];

      if (v46)
      {
        v47 = [NSMutableDictionary dictionaryWithDictionary:v46];
      }

      else
      {
        v47 = +[NSMutableDictionary dictionary];
      }

      v151[0] = _NSConcreteStackBlock;
      v151[1] = 3221225472;
      v151[2] = sub_10016B258;
      v151[3] = &unk_1005162C8;
      v48 = v47;
      v152 = v48;
      [v43 enumerateKeysAndObjectsUsingBlock:v151];
      v49 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        *buf = 136315395;
        v159 = "[ADCloudKitMultiUserSharedDataStore setKeyValueRecordsAndVoiceProfile:records:completion:]";
        v160 = 2113;
        v161 = v48;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "%s #multi-user Setting multi-user start times to ADPreferences: %{private}@", buf, 0x16u);
      }

      v50 = +[ADPreferences sharedPreferences];
      [v50 setMultiUserSetUpStartTimes:v48];
    }

    v51 = v36 | obja | v121;
    v102 = v51 != 0;
    if (!v51)
    {
      v36 = v37;
      obja = v116;
      v52 = v115;

      v53 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v159 = "[ADCloudKitMultiUserSharedDataStore setKeyValueRecordsAndVoiceProfile:records:completion:]";
        _os_log_debug_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "%s Device is not meDevice", buf, 0xCu);
      }

      v125 = v52;
    }

    v114 = v36;
    v54 = [v128 objectForKey:@"meDevice"];

    objc_opt_class();
    v103 = v54;
    v104 = v37;
    if (objc_opt_isKindOfClass())
    {
      v100 = [v54 BOOLValue];
    }

    else
    {
      v100 = 1;
    }

    v8 = v122;
    v109 = [v14 objectForKey:@"siriLanguage"];
    v108 = [v14 objectForKey:@"companionName"];
    v107 = [(ADCloudKitMultiUserSharedDataStore *)self _homeMembershipsFromUnencryptedRecords:v14];
    v55 = [v107 allKeys];
    v120 = [NSSet setWithArray:v55];

    v56 = v14;
    if (!v56)
    {
      v57 = 0;
      v11 = v119;
      goto LABEL_111;
    }

    v98 = v35;
    v57 = objc_alloc_init(SAHomeMemberSettings);
    v97 = [v56 objectForKey:@"meCountryCode"];
    [v57 setCountryCode:?];
    v58 = [v56 objectForKey:@"meCard"];
    if (v58)
    {
      v59 = v102;
    }

    else
    {
      v59 = 0;
    }

    if (v59 || ([v56 objectForKey:@"backupMeCard"], v60 = objc_claimAutoreleasedReturnValue(), v58, (v58 = v60) != 0))
    {
      v61 = [AceObject aceObjectWithPlistData:v58];
      v62 = AFSiriLogContextDaemonAce;
      if (os_log_type_enabled(AFSiriLogContextDaemonAce, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v159 = "saHomeMemberSettingsFromCloud";
        v160 = 2112;
        v161 = v61;
        _os_log_debug_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEBUG, "%s SAPerson object is (%@)", buf, 0x16u);
      }

      [v57 setMeCard:v61];
    }

    v99 = v34;
    v63 = [v56 objectForKey:@"meParentalRestrictions"];
    [v57 setParentalRestrictions:v63];
    v64 = [v56 objectForKey:@"mePreferredLanguage"];
    [v57 setPreferredLanguage:v64];
    v65 = [v56 objectForKey:@"meRegion"];
    [v57 setRegion:v65];
    v66 = [v56 objectForKey:@"meTemperatureUnit"];
    [v57 setTemperatureUnit:v66];
    v67 = AFSiriLogContextDaemonAce;
    if (os_log_type_enabled(AFSiriLogContextDaemonAce, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316162;
      v159 = "saHomeMemberSettingsFromCloud";
      v160 = 2112;
      v161 = v63;
      v162 = 2112;
      v163 = v64;
      v164 = 2112;
      v165 = v65;
      v166 = 2112;
      v167 = v66;
      _os_log_debug_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEBUG, "%s parentalRestrictions = (%@), preferredLanguage = (%@), region = (%@), temperatureUnit = (%@)", buf, 0x34u);
    }

    v68 = [v56 objectForKey:@"meTTSVoice"];
    if (v68)
    {
      v69 = [AceObject aceObjectWithPlistData:v68];
      v70 = AFSiriLogContextDaemonAce;
      if (os_log_type_enabled(AFSiriLogContextDaemonAce, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v159 = "saHomeMemberSettingsFromCloud";
        v160 = 2112;
        v161 = v69;
        _os_log_debug_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEBUG, "%s ttsVoice object is (%@)", buf, 0x16u);
      }

      [v57 setTtsVoice:v69];
    }

    v71 = [v56 objectForKey:@"twentyFourHourTimeDisplay"];
    if (v71)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v72 = v71;
        if ([v72 integerValue])
        {
          if ([v72 integerValue] == 1)
          {
            v73 = AFSiriLogContextDaemonAce;
            if (os_log_type_enabled(AFSiriLogContextDaemonAce, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315138;
              v159 = "saHomeMemberSettingsFromCloud";
              _os_log_debug_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEBUG, "%s companion set twentyFourHourTimeDisplay to YES", buf, 0xCu);
            }

            v74 = &__kCFBooleanTrue;
            goto LABEL_108;
          }

          v96 = [v72 integerValue];
          v77 = AFSiriLogContextDaemonAce;
          v79 = os_log_type_enabled(AFSiriLogContextDaemonAce, OS_LOG_TYPE_DEBUG);
          if (v96 != -1)
          {
            if (v79)
            {
              *buf = 136315138;
              v159 = "saHomeMemberSettingsFromCloud";
              _os_log_debug_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEBUG, "%s twentyForHourTimeDisplay should be -1, 0, or 1", buf, 0xCu);
            }

            goto LABEL_109;
          }

          if (v79)
          {
            *buf = 136315138;
            v159 = "saHomeMemberSettingsFromCloud";
            v78 = "%s companion has twentyFourHourTimeDisplay set to nil, forcing this communal device's twentyFourHourTimeDisplay to NO";
            goto LABEL_106;
          }
        }

        else
        {
          v77 = AFSiriLogContextDaemonAce;
          if (os_log_type_enabled(AFSiriLogContextDaemonAce, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            v159 = "saHomeMemberSettingsFromCloud";
            v78 = "%s companion set twentyFourHourTimeDisplay to NO";
LABEL_106:
            _os_log_debug_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEBUG, v78, buf, 0xCu);
          }
        }

        v74 = &__kCFBooleanFalse;
LABEL_108:
        [v57 setTwentyFourHourTimeDisplay:{v74, v96}];
LABEL_109:

        goto LABEL_110;
      }

      v75 = AFSiriLogContextDaemonAce;
      if (os_log_type_enabled(AFSiriLogContextDaemonAce, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v159 = "saHomeMemberSettingsFromCloud";
        v76 = "%s twentyForHourTimeDisplay should be NSNumber Integer";
        goto LABEL_98;
      }
    }

    else
    {
      v75 = AFSiriLogContextDaemonAce;
      if (os_log_type_enabled(AFSiriLogContextDaemonAce, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v159 = "saHomeMemberSettingsFromCloud";
        v76 = "%s companion did not set its twentyFourHourTimeDisplay";
LABEL_98:
        _os_log_debug_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEBUG, v76, buf, 0xCu);
      }
    }

LABEL_110:

    v8 = v122;
    v9 = v123;
    v11 = v119;
    v35 = v98;
    v34 = v99;
LABEL_111:

    if (!v11)
    {
      v93 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v159 = "[ADCloudKitMultiUserSharedDataStore setKeyValueRecordsAndVoiceProfile:records:completion:]";
        _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_INFO, "%s ADHomeInfoManager is not ready", buf, 0xCu);
      }

      v7 = v105;
      if (v9)
      {
        (*(v9 + 2))(v9, 0);
      }

      goto LABEL_152;
    }

    v80 = [(ADCloudKitMultiUserSharedDataStore *)self zone];
    v81 = [v80 zoneID];
    v82 = [v81 ownerName];

    if ([v82 isEqualToString:CKCurrentUserDefaultName])
    {
      v83 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v159 = "[ADCloudKitMultiUserSharedDataStore setKeyValueRecordsAndVoiceProfile:records:completion:]";
        _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_INFO, "%s Saving MeCard and Companion ACEHost", buf, 0xCu);
      }

      if (v102)
      {
        v84 = @"meCard";
      }

      else
      {
        v84 = @"backupMeCard";
      }

      v85 = [v56 objectForKey:{v84, v96}];
      v86 = v125;
      if (v85)
      {
        v87 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v159 = "[ADCloudKitMultiUserSharedDataStore setKeyValueRecordsAndVoiceProfile:records:completion:]";
          _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_INFO, "%s Found valid MeCard data", buf, 0xCu);
        }

        v88 = +[ADLocalMeCardStore sharedStore];
        [v88 storeMeCard:v85];

        v8 = v122;
      }

      if (v86)
      {
        v89 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v159 = "[ADCloudKitMultiUserSharedDataStore setKeyValueRecordsAndVoiceProfile:records:completion:]";
          _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_INFO, "%s Found valid companion ACE Host", buf, 0xCu);
        }

        v90 = +[ADPreferences sharedPreferences];
        [v90 setSingleUserCompanionACEHost:v86];

        v8 = v122;
      }
    }

    v7 = v105;
    if (v120 && v34 && v35 || ![v8 count])
    {
      if (!self->isATVOnly || v117 && v114)
      {
        v129[0] = _NSConcreteStackBlock;
        v129[1] = 3221225472;
        v129[2] = sub_10016B264;
        v129[3] = &unk_100513C48;
        v130 = v34;
        v131 = v107;
        v132 = v110;
        v133 = v114;
        v134 = obja;
        v135 = v111;
        v136 = v125;
        v149 = v101;
        v150 = v100;
        v137 = v109;
        v138 = v108;
        v139 = self;
        v140 = v113;
        v141 = v35;
        v142 = v117;
        v143 = v8;
        v9 = v123;
        v148 = v123;
        v144 = v82;
        v145 = v57;
        v146 = v112;
        v147 = v120;
        v11 = v119;
        [v119 getCurrentHomeMemberIds:v129];

LABEL_151:
LABEL_152:

        v13 = v113;
        goto LABEL_153;
      }

      v94 = AFSiriLogContextSession;
      v9 = v123;
      v11 = v119;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
      {
        *buf = 136315651;
        v159 = "[ADCloudKitMultiUserSharedDataStore setKeyValueRecordsAndVoiceProfile:records:completion:]";
        v160 = 2113;
        v161 = v117;
        v162 = 2113;
        v163 = v114;
        _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_INFO, "%s ATV companion invalid %{private}@-%{private}@", buf, 0x20u);
      }

      if (!v123)
      {
        goto LABEL_151;
      }

      v92 = [AFError errorWithCode:1012];
      (v123)[2](v123, v92);
    }

    else
    {
      if (![v82 isEqualToString:CKCurrentUserDefaultName])
      {
        v95 = +[ADPreferences sharedPreferences];
        [v95 multiUserSharedDataServerChangeTokenForOwner:v82];

        v9 = v123;
        v11 = v119;
        if (v123)
        {
          v123[2](v123, 0);
        }

        goto LABEL_151;
      }

      v91 = +[ADMultiUserService sharedService];
      v92 = [v91 currentOwnerSharedUserID];

      v9 = v123;
      if (v92)
      {
        [(ADCloudKitMultiUserSharedDataStore *)self _updateVoiceIDProfilesForSharedUser:v92 iCloudAltDSID:0 records:v8 isPrimary:1 isNewUser:0 completion:v123];
        v11 = v119;
      }

      else
      {
        v11 = v119;
        if (v123)
        {
          v123[2](v123, 0);
        }
      }
    }

    goto LABEL_151;
  }

  if (v9)
  {
    (*(v9 + 2))(v9, 0);
  }

LABEL_154:
}

- (void)checkForATVRMVSettingUpdate:(id)a3
{
  v3 = a3;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v38 = "[ADCloudKitMultiUserSharedDataStore checkForATVRMVSettingUpdate:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v28 = +[ADHomeInfoManager sharedInfoManager];
  v5 = [v28 getHomeUniqueIdentifiers];
  v6 = [NSSet setWithArray:v5];

  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v38 = "[ADCloudKitMultiUserSharedDataStore checkForATVRMVSettingUpdate:]";
    v39 = 2112;
    v40 = v6;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s #multi-user-atv Home Identifiers %@", buf, 0x16u);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v3;
  v8 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v33;
    *&v9 = 136315395;
    v27 = v9;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v32 + 1) + 8 * i);
        v14 = [v13 recordID];
        v15 = [v14 recordName];
        v16 = [v15 uppercaseString];

        v17 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v38 = "[ADCloudKitMultiUserSharedDataStore checkForATVRMVSettingUpdate:]";
          v39 = 2112;
          v40 = v16;
          _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s #multi-user-atv found key %@", buf, 0x16u);
        }

        if ([v6 containsObject:v16])
        {
          v18 = v16;
          v19 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v38 = "[ADCloudKitMultiUserSharedDataStore checkForATVRMVSettingUpdate:]";
            v39 = 2112;
            v40 = v18;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s Home settings for %@ found", buf, 0x16u);
          }

          v20 = sub_100125E60(v13);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = [v20 objectForKey:@"rmvTVSetting"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v22 = v21;
              if (v22)
              {
                v23 = v22;
                v24 = [v22 BOOLValue];
                v30[0] = _NSConcreteStackBlock;
                v30[1] = 3221225472;
                v30[2] = sub_10016D370;
                v30[3] = &unk_10051C498;
                v31 = v18;
                [v28 updateCurrentUserRMVSettingForHome:v31 enabled:v24 completion:v30];
              }
            }

            else
            {
              v26 = AFSiriLogContextDaemon;
              if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
              {
                *buf = v27;
                v38 = "[ADCloudKitMultiUserSharedDataStore checkForATVRMVSettingUpdate:]";
                v39 = 2113;
                v40 = v18;
                _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "%s Invalid type found for RMV setting for home %{private}@", buf, 0x16u);
              }
            }
          }

          else
          {
            v25 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315138;
              v38 = "[ADCloudKitMultiUserSharedDataStore checkForATVRMVSettingUpdate:]";
              _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "%s Invalid type found for Home Value setting", buf, 0xCu);
            }
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v10);
  }
}

- (id)_homeMembershipsFromUnencryptedRecords:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  v5 = [v3 objectForKey:@"meDeviceHomeUserUUID"];
  if ([v5 count])
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315395;
      v35 = "[ADCloudKitMultiUserSharedDataStore _homeMembershipsFromUnencryptedRecords:]";
      v36 = 2113;
      v37 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Found Version 0 home memberships and adding them: %{private}@", buf, 0x16u);
    }

    [v4 addEntriesFromDictionary:v5];
  }

  v24 = v5;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v40 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        if ([v12 hasPrefix:@"sharedDeviceHomeUserUUIDPrefix"])
        {
          v13 = [v7 objectForKey:v12];
          [v4 addEntriesFromDictionary:v13];
          v14 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 136315651;
            v35 = "[ADCloudKitMultiUserSharedDataStore _homeMembershipsFromUnencryptedRecords:]";
            v36 = 2112;
            v37 = v12;
            v38 = 2113;
            v39 = v13;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Found home membership with Version 1 record key:%@, record object:%{private}@", buf, 0x20u);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v29 objects:v40 count:16];
    }

    while (v9);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = v7;
  v16 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v25 + 1) + 8 * j);
        if ([v20 hasPrefix:@"v2_sharedDeviceHomeUserUUIDPrefix"])
        {
          v21 = [v15 objectForKey:v20];
          [v4 addEntriesFromDictionary:v21];
          v22 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 136315651;
            v35 = "[ADCloudKitMultiUserSharedDataStore _homeMembershipsFromUnencryptedRecords:]";
            v36 = 2112;
            v37 = v20;
            v38 = 2113;
            v39 = v21;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s Found home membership with Version 2 record key:%@, record object:%{private}@", buf, 0x20u);
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v17);
  }

  return v4;
}

- (void)fetchDeviceTypesForAllLanguages:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10016DA28;
    block[3] = &unk_10051CF58;
    v8 = v4;
    dispatch_async(serialQueue, block);
  }
}

- (void)fetchDeviceTypesForLanguage:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v14 = "[ADCloudKitMultiUserSharedDataStore fetchDeviceTypesForLanguage:completion:]";
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s requiredLanguage: %@", buf, 0x16u);
    }

    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10016DC48;
    block[3] = &unk_10051E088;
    block[4] = self;
    v12 = v7;
    v11 = v6;
    dispatch_async(serialQueue, block);
  }
}

- (void)deleteUserData:(id)a3
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[ADCloudKitMultiUserSharedDataStore deleteUserData:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }

  [(ADCloudKitMultiUserSharedDataStore *)self setServerChangeToken:0];
}

- (void)cleanupCacheDirectory
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016E020;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (id)_createCacheDirectory
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v3 = [(ADCloudKitMultiUserSharedDataStore *)self _cacheDirectory];
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:0];

  if (v5)
  {
    v6 = v3;
  }

  else
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[ADCloudKitMultiUserSharedDataStore _createCacheDirectory]";
      v11 = 2112;
      v12 = v3;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Error creating cache directory att %@", &v9, 0x16u);
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)_cleanupCacheDirectory
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v3 = +[NSFileManager defaultManager];
  v4 = [(ADCloudKitMultiUserSharedDataStore *)self _cacheDirectory];
  v5 = [(ADCloudKitMultiUserSharedDataStore *)self _cacheDirectory];
  v6 = [v3 fileExistsAtPath:v5];

  if (v6 && ([v3 removeItemAtPath:v4 error:0] & 1) == 0)
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[ADCloudKitMultiUserSharedDataStore _cleanupCacheDirectory]";
      v12 = 2112;
      v13 = v4;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Error deleting cache directory at %@", &v10, 0x16u);
    }

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)_cacheDirectory
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v3 = [v2 firstObject];

  v4 = [v3 stringByAppendingPathComponent:@"com.apple.assistantd/voiceid.cache"];

  return v4;
}

- (id)_extractRecord:(id)a3 atPath:(id)a4 fileManager:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v9 fileExistsAtPath:v8])
  {
    v85 = 0;
    v10 = [v9 removeItemAtPath:v8 error:&v85];
    v11 = v85;
    v12 = v11;
    if ((v10 & 1) == 0)
    {
      v28 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[ADCloudKitMultiUserSharedDataStore _extractRecord:atPath:fileManager:]";
        *&buf[12] = 2112;
        *&buf[14] = v12;
        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s Failed to delete archive expansion location with error (%@)", buf, 0x16u);
      }

      goto LABEL_32;
    }
  }

  v84 = 0;
  v13 = [v9 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:&v84];
  v14 = v84;
  if ((v13 & 1) == 0)
  {
    v26 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[ADCloudKitMultiUserSharedDataStore _extractRecord:atPath:fileManager:]";
      *&buf[12] = 2112;
      *&buf[14] = v14;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s Failed to create archive expansion location with error (%@)", buf, 0x16u);
    }

    v27 = v14;
    goto LABEL_30;
  }

  v82 = v7;
  v83 = v8;
  v15 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    *&buf[4] = "_ADCloudKitExtractArchiveToDirectory";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v16 = [SZExtractor alloc];
  v120 = SZExtractorOptionsDenyInvalidSymlinks;
  v121 = &__kCFBooleanTrue;
  v17 = [NSDictionary dictionaryWithObjects:&v121 forKeys:&v120 count:1];
  v18 = [v16 initWithPath:v83 options:v17];

  if (!v18)
  {
    v29 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "_ADCloudKitExtractArchiveToDirectory";
      _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%s Failed to set up streaming unzipper", buf, 0xCu);
    }

    v30 = 0;
    goto LABEL_23;
  }

  v98 = 0;
  v99 = &v98;
  v100 = 0x2020000000;
  v101 = 0;
  v92 = 0;
  v93 = &v92;
  v94 = 0x3032000000;
  v95 = sub_100097A48;
  v96 = sub_100097A58;
  v97 = 0;
  v19 = dispatch_semaphore_create(0);
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_100097A60;
  v116 = &unk_10050FE78;
  v118 = &v92;
  v119 = &v98;
  v20 = v19;
  v117 = v20;
  [v18 prepareForExtraction:buf];
  v21 = dispatch_time(0, 10000000000);
  v81 = v20;
  if (dispatch_semaphore_wait(v20, v21))
  {
    v22 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *v110 = 136315138;
      *&v110[4] = "_ADCloudKitExtractArchiveToDirectory";
      v23 = "%s StreamingZip Error: time out while preparing extractor";
      v24 = v22;
      v25 = 12;
LABEL_75:
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, v23, v110, v25);
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  v31 = v93[5];
  if (v31)
  {
    v32 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *v110 = 136315394;
      *&v110[4] = "_ADCloudKitExtractArchiveToDirectory";
      *&v110[12] = 2112;
      *&v110[14] = v31;
      v23 = "%s StreamingZip Error: %@";
      v24 = v32;
      v25 = 22;
      goto LABEL_75;
    }

LABEL_21:
    v30 = 0;
    goto LABEL_22;
  }

  v35 = v82;
  v36 = [v82 cStringUsingEncoding:4];
  v37 = open(v36, 0);
  v38 = v37;
  if (v37 < 0)
  {
    v41 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v72 = __error();
      v73 = strerror(*v72);
      *v110 = 136315650;
      *&v110[4] = "_ADCloudKitExtractArchiveToDirectory";
      *&v110[12] = 2080;
      *&v110[14] = v36;
      *&v110[22] = 2080;
      v111 = v73;
      _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%s Failed to open input path %s: %s", v110, 0x20u);
    }

    goto LABEL_21;
  }

  if (fcntl(v37, 48, 1) < 0)
  {
    v39 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v77 = __error();
      v78 = strerror(*v77);
      *v110 = 136315650;
      *&v110[4] = "_ADCloudKitExtractArchiveToDirectory";
      *&v110[12] = 2080;
      *&v110[14] = v36;
      *&v110[22] = 2080;
      v111 = v78;
      _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%s Unable to set F_NOCACHE accessing file %s %s", v110, 0x20u);
    }
  }

  v80 = v38;
  if (v99[3])
  {
    v40 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v69 = v99[3];
      v70 = __error();
      v71 = strerror(*v70);
      *v110 = 136315650;
      *&v110[4] = "_ADCloudKitExtractArchiveToDirectory";
      *&v110[12] = 2048;
      *&v110[14] = v69;
      *&v110[22] = 2080;
      v111 = v71;
      _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%s Unexpected resumptionOffset: %llu: %s", v110, 0x20u);
    }

    close(v80);
    goto LABEL_21;
  }

  v42 = dispatch_semaphore_create(0);
  v86 = 0;
  v87 = &v86;
  v88 = 0x3032000000;
  v89 = sub_100097A48;
  v90 = sub_100097A58;
  v91 = 0;
  v79 = v42;
  while (1)
  {
    v43 = objc_autoreleasePoolPush();
    v44 = [NSMutableData dataWithCapacity:0x20000];
    [v44 setLength:0x20000];
    v45 = v44;
    v46 = read(v80, [v44 mutableBytes], 0x20000uLL);
    v47 = v46;
    if (!v46)
    {
      v49 = 16;
      goto LABEL_61;
    }

    if (v46 != -1)
    {
      [v44 setLength:v46];
      *v102 = 0;
      *&v102[8] = v102;
      *&v102[16] = 0x2020000000;
      LOBYTE(v103) = 0;
      *v110 = _NSConcreteStackBlock;
      *&v110[8] = 3221225472;
      *&v110[16] = sub_100097ADC;
      v111 = &unk_10050FEA0;
      v113 = &v86;
      v114 = v102;
      v50 = v79;
      v112 = v50;
      [v18 supplyBytes:v44 withCompletionBlock:v110];

      v51 = dispatch_time(0, 10000000000);
      if (dispatch_semaphore_wait(v50, v51))
      {
        v52 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *v106 = 136315138;
          v107 = "_ADCloudKitExtractArchiveToDirectory";
          v53 = v52;
          v54 = "%s StreamingZip Error time out supplying bytes to extractor";
          v55 = 12;
LABEL_69:
          _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, v54, v106, v55);
        }
      }

      else
      {
        v56 = v87[5];
        if (!v56)
        {
          if (*(*&v102[8] + 24) == 1)
          {
            v58 = AFSiriLogContextDaemon;
            v49 = 16;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
            {
              *v106 = 136315138;
              v107 = "_ADCloudKitExtractArchiveToDirectory";
              _os_log_error_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "%s Extractor said data was complete.", v106, 0xCu);
            }
          }

          else
          {
            v49 = 0;
          }

          goto LABEL_60;
        }

        v57 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *v106 = 136315394;
          v107 = "_ADCloudKitExtractArchiveToDirectory";
          v108 = 2112;
          v109 = v56;
          v53 = v57;
          v54 = "%s supplyBytes: returned error %@";
          v55 = 22;
          goto LABEL_69;
        }
      }

      close(v80);
      v49 = 1;
LABEL_60:

      _Block_object_dispose(v102, 8);
      v44 = 0;
      goto LABEL_61;
    }

    v48 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v59 = __error();
      v60 = strerror(*v59);
      *v102 = 136315394;
      *&v102[4] = "_ADCloudKitExtractArchiveToDirectory";
      *&v102[12] = 2080;
      *&v102[14] = v60;
      _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%s Read failed with error %s", v102, 0x16u);
    }

    close(v80);
    v49 = 1;
LABEL_61:

    objc_autoreleasePoolPop(v43);
    if (v49)
    {
      break;
    }

    if (v47 <= 0)
    {
      goto LABEL_71;
    }
  }

  if (v49 != 16)
  {
    v30 = 0;
    goto LABEL_81;
  }

LABEL_71:
  close(v80);
  *v102 = _NSConcreteStackBlock;
  *&v102[8] = 3221225472;
  *&v102[16] = sub_100097B54;
  v103 = &unk_100510AC0;
  v105 = &v86;
  v61 = v79;
  v104 = v61;
  [v18 finishStreamWithCompletionBlock:v102];
  v62 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v61, v62))
  {
    v63 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *v106 = 136315138;
      v107 = "_ADCloudKitExtractArchiveToDirectory";
      v64 = "%s StreamingZip Error time out finishing extractor stream";
      v65 = v63;
      v66 = 12;
      goto LABEL_88;
    }

    goto LABEL_79;
  }

  v67 = v87[5];
  if (v67)
  {
    v68 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *v106 = 136315394;
      v107 = "_ADCloudKitExtractArchiveToDirectory";
      v108 = 2112;
      v109 = v67;
      v64 = "%s Failed to finish streaming extraction: %@";
      v65 = v68;
      v66 = 22;
LABEL_88:
      _os_log_error_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, v64, v106, v66);
    }

LABEL_79:
    v30 = 0;
  }

  else
  {
    v74 = [v83 stringByAppendingPathComponent:@"META-INF"];
    v75 = +[NSFileManager defaultManager];
    if ([v75 fileExistsAtPath:v74])
    {
      if (([v75 removeItemAtPath:v74 error:0] & 1) == 0)
      {
        v76 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *v106 = 136315394;
          v107 = "_ADCloudKitExtractArchiveToDirectory";
          v108 = 2112;
          v109 = v74;
          _os_log_error_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "%s Error deleting meta data directory: %@", v106, 0x16u);
        }
      }
    }

    v30 = 1;
  }

LABEL_81:
  _Block_object_dispose(&v86, 8);

LABEL_22:
  _Block_object_dispose(&v92, 8);

  _Block_object_dispose(&v98, 8);
LABEL_23:

  v33 = AFSiriLogContextDaemon;
  if ((v30 & 1) == 0)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "[ADCloudKitMultiUserSharedDataStore _extractRecord:atPath:fileManager:]";
      *&buf[12] = 2112;
      *&buf[14] = v82;
      *&buf[22] = 2112;
      v116 = v83;
      _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%s Failed to expand archive (%@) to location (%@)", buf, 0x20u);
    }

    v27 = [AFError errorWithCode:4009];
LABEL_30:
    v12 = v27;
    goto LABEL_31;
  }

  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "[ADCloudKitMultiUserSharedDataStore _extractRecord:atPath:fileManager:]";
    *&buf[12] = 2112;
    *&buf[14] = v82;
    *&buf[22] = 2112;
    v116 = v83;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%s Expanded archive (%@) to location (%@)", buf, 0x20u);
  }

  v12 = 0;
LABEL_31:

LABEL_32:

  return v12;
}

- (id)_constructRecord:(id)a3 fileArchives:(id)a4 assetManifest:(id)a5 filePath:(id)a6
{
  v9 = a3;
  v77 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [v9 version];
  v13 = [v9 productCategory];
  v70 = [v9 languageCode];
  if (!v12 || !v13)
  {
    v43 = 4008;
LABEL_34:
    v45 = [AFError errorWithCode:v43];
    goto LABEL_63;
  }

  if (!v11)
  {
    v44 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v92 = "[ADCloudKitMultiUserSharedDataStore _constructRecord:fileArchives:assetManifest:filePath:]";
      _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%s Unable to get voice trigger update path", buf, 0xCu);
    }

    v43 = 4006;
    goto LABEL_34;
  }

  v75 = +[NSFileManager defaultManager];
  if (([v75 fileExistsAtPath:v11] & 1) == 0)
  {
    v88 = 0;
    v14 = [v75 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:&v88];
    v15 = v88;
    if (!v14)
    {
      obj = v15;
      v62 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v92 = "[ADCloudKitMultiUserSharedDataStore _constructRecord:fileArchives:assetManifest:filePath:]";
        v93 = 2112;
        v94 = v11;
        v95 = 2112;
        v96 = obj;
        _os_log_error_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "%s Failed to create update location (%@) with error (%@)", buf, 0x20u);
      }

      v63 = 4007;
      goto LABEL_57;
    }
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v16 = v10;
  v17 = [v16 countByEnumeratingWithState:&v84 objects:v90 count:16];
  v69 = v12;
  v65 = v10;
  v66 = v9;
  v74 = v11;
  v71 = v13;
  if (v17)
  {
    v18 = v17;
    v67 = 0;
    obj = 0;
    v19 = *v85;
    v78 = v16;
    while (2)
    {
      v20 = 0;
      v72 = v18;
      do
      {
        if (*v85 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v84 + 1) + 8 * v20);
        v22 = [v16 objectForKey:{v21, v65, v66}];
        v23 = [v21 componentsSeparatedByString:{@", "}];
        if ([v23 count] == 3)
        {
          v24 = [v23 objectAtIndexedSubscript:0];
          [v24 rangeOfString:@"Categ:"];
          v26 = v25;

          v27 = [v23 objectAtIndexedSubscript:0];
          v28 = [v27 substringFromIndex:v26];

          v29 = [v22 objectForKey:@"languages"];
          v30 = [v29 objectAtIndex:0];

          v31 = [v23 objectAtIndexedSubscript:2];
          [v31 rangeOfString:@"Vers:"];
          v33 = v32;

          v34 = [v23 objectAtIndexedSubscript:2];
          v35 = [v34 substringFromIndex:v33];

          if ([v71 isEqualToString:v28] && (!v70 || objc_msgSend(v70, "isEqualToString:", v30)))
          {
            v36 = [v69 integerValue];
            if (v36 == [v35 integerValue])
            {
              v68 = [v77 objectForKey:v21];
              v37 = [v74 stringByAppendingPathComponent:v30];
              v38 = AFSiriLogContextDaemon;
              if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
              {
                *buf = 136315650;
                v92 = "[ADCloudKitMultiUserSharedDataStore _constructRecord:fileArchives:assetManifest:filePath:]";
                v93 = 2112;
                v94 = v37;
                v95 = 2112;
                v96 = v21;
                _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "%s Extracting file to location (%@) with key (%@)", buf, 0x20u);
              }

              v39 = [(ADCloudKitMultiUserSharedDataStore *)self _extractRecord:v68 atPath:v37 fileManager:v75];
              if (v39)
              {
                v42 = v39;
                v46 = AFSiriLogContextDaemon;
                if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  v92 = "[ADCloudKitMultiUserSharedDataStore _constructRecord:fileArchives:assetManifest:filePath:]";
                  v93 = 2112;
                  v94 = v30;
                  v95 = 2112;
                  v96 = v42;
                  _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%s Failed to extract at location (%@) with error (%@)", buf, 0x20u);
                }

                v47 = v78;
                goto LABEL_60;
              }

              v67 = 1;
            }

            else
            {
              v40 = [v35 integerValue];
              if (v40 < [v69 integerValue])
              {
                v41 = obj;
                if (!obj)
                {
                  v41 = objc_alloc_init(NSMutableArray);
                }

                obj = v41;
                [v41 addObject:v21];
              }
            }
          }

          v16 = v78;
          v18 = v72;
        }

        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v84 objects:v90 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }

    if (v67)
    {
      v42 = 0;
      goto LABEL_61;
    }

    v10 = v65;
    v9 = v66;
    v48 = obj;
    v11 = v74;
    v12 = v69;
    v13 = v71;
  }

  else
  {

    v48 = 0;
  }

  if ([v48 count])
  {
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    obj = v48;
    v49 = [obj countByEnumeratingWithState:&v80 objects:v89 count:16];
    if (v49)
    {
      v50 = v49;
      v79 = v16;
      v42 = 0;
      v51 = *v81;
      do
      {
        for (i = 0; i != v50; i = i + 1)
        {
          v53 = v42;
          if (*v81 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v54 = *(*(&v80 + 1) + 8 * i);
          v55 = [v77 objectForKey:v54];
          v56 = [v79 objectForKey:v54];
          v57 = [v56 objectForKey:@"languages"];
          v58 = [v57 objectAtIndex:0];

          v59 = [v74 stringByAppendingPathComponent:v58];
          v60 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 136315650;
            v92 = "[ADCloudKitMultiUserSharedDataStore _constructRecord:fileArchives:assetManifest:filePath:]";
            v93 = 2112;
            v94 = v59;
            v95 = 2112;
            v96 = v54;
            _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "%s Extracting near match to location (%@) with key (%@)", buf, 0x20u);
          }

          v42 = [(ADCloudKitMultiUserSharedDataStore *)self _extractRecord:v55 atPath:v59 fileManager:v75];

          if (v42)
          {
            v61 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v92 = "[ADCloudKitMultiUserSharedDataStore _constructRecord:fileArchives:assetManifest:filePath:]";
              v93 = 2112;
              v94 = v58;
              v95 = 2112;
              v96 = v42;
              _os_log_error_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "%s Failed to extract near match at location (%@) with error (%@)", buf, 0x20u);
            }
          }
        }

        v50 = [obj countByEnumeratingWithState:&v80 objects:v89 count:16];
      }

      while (v50);
    }

    else
    {
      v42 = 0;
    }

    v47 = obj;
LABEL_60:

LABEL_61:
    v10 = v65;
    v9 = v66;
    v11 = v74;
    v12 = v69;
    v13 = v71;
    goto LABEL_62;
  }

  obj = v48;
  v63 = 4010;
LABEL_57:
  v42 = [AFError errorWithCode:v63];
LABEL_62:
  v45 = v42;

LABEL_63:

  return v45;
}

- (void)_logRelevantAnalyticsOnMultiUserVoiceProfileDownloadSuccessWithSharedUserID:(id)a3 isPrimary:(BOOL)a4 isNewUser:(BOOL)a5
{
  v40 = a4;
  v41 = a5;
  v5 = a3;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v47 = "[ADCloudKitMultiUserSharedDataStore _logRelevantAnalyticsOnMultiUserVoiceProfileDownloadSuccessWithSharedUserID:isPrimary:isNewUser:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v7 = +[NSMutableDictionary dictionary];
  v8 = +[ADPreferences sharedPreferences];
  v9 = [v8 multiUserSetupStartTimes];

  v10 = +[ADPreferences sharedPreferences];
  v11 = [v10 multiUserSetupCompleteTimes];

  v12 = [v9 objectForKeyedSubscript:v5];
  v13 = [v11 objectForKeyedSubscript:v5];
  if (v12 | v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = [v12 longValue] > 0;
  }

  if (v12)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  v17 = 1;
  if (!v14 && (v16 & 1) == 0)
  {
    [v13 doubleValue];
    v18 = [NSDate dateWithTimeIntervalSince1970:?];
    [v13 doubleValue];
    v19 = [NSDate dateWithTimeIntervalSince1970:?];
    v17 = [v18 compare:v19] == 1;
  }

  v20 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    log = v20;
    v38 = [NSNumber numberWithBool:v41];
    v37 = [NSNumber numberWithBool:v17];
    *buf = 136316162;
    v47 = "[ADCloudKitMultiUserSharedDataStore _logRelevantAnalyticsOnMultiUserVoiceProfileDownloadSuccessWithSharedUserID:isPrimary:isNewUser:]";
    v48 = 2112;
    v49 = v38;
    v50 = 2112;
    v51 = v12;
    v52 = 2112;
    v53 = v13;
    v54 = 2112;
    v55 = v37;
    _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s #multi-user isNewUser:%@, userVoiceIDEnabledStartTime:%@, userVoiceIDEnabledCompleteTime:%@. Should log download success:%@", buf, 0x34u);

    v20 = AFSiriLogContextDaemon;
  }

  if (v17)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v47 = "[ADCloudKitMultiUserSharedDataStore _logRelevantAnalyticsOnMultiUserVoiceProfileDownloadSuccessWithSharedUserID:isPrimary:isNewUser:]";
      _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%s #multi-user Logging AFAnalyticsEventTypeMultiUserVoiceProfileDownloadSuccess event on voice profile downloading completion.", buf, 0xCu);
    }

    v21 = +[NSDate date];
    [v21 timeIntervalSince1970];
    v23 = v22;

    if (v41)
    {
      if (v40)
      {
        v24 = @"owner";
      }

      else
      {
        v24 = @"participant";
      }

      v44[0] = @"user";
      v44[1] = @"timestamp";
      v45[0] = v24;
      v25 = [NSNumber numberWithDouble:v23];
      v45[1] = v25;
      v26 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:2];
      v27 = [NSMutableDictionary dictionaryWithDictionary:v26];

      v28 = v23 - [v12 longValue];
      if (v28 > 0.0 && v28 != v23)
      {
        v30 = [NSNumber numberWithDouble:?];
        [v27 setObject:v30 forKeyedSubscript:@"multiuser-voiceid-setup-time"];
      }

      v31 = [NSMutableDictionary dictionaryWithDictionary:v11];
      v32 = [NSNumber numberWithDouble:v23];
      [v31 setObject:v32 forKeyedSubscript:v5];

      v33 = +[ADPreferences sharedPreferences];
      v34 = [NSDictionary dictionaryWithDictionary:v31];
      [v33 setMultiUserSetUpCompleteTimes:v34];

      AFInternalPreferencesSynchronize();
    }

    else
    {
      v27 = v7;
    }

    v35 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315395;
      v47 = "[ADCloudKitMultiUserSharedDataStore _logRelevantAnalyticsOnMultiUserVoiceProfileDownloadSuccessWithSharedUserID:isPrimary:isNewUser:]";
      v48 = 2113;
      v49 = v27;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "%s #multi-user Logged AFAnalyticsEventTypeMultiUserVoiceProfileDownloadSuccess event with: %{private}@", buf, 0x16u);
    }

    v36 = +[AFAnalytics sharedAnalytics];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_100170088;
    v42[3] = &unk_10051DF78;
    v7 = v27;
    v43 = v7;
    [v36 logEventWithType:6107 contextProvider:v42];
  }

  else if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v47 = "[ADCloudKitMultiUserSharedDataStore _logRelevantAnalyticsOnMultiUserVoiceProfileDownloadSuccessWithSharedUserID:isPrimary:isNewUser:]";
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s #multi-user Skipped logging of AFAnalyticsEventTypeMultiUserVoiceProfileDownloadSuccess event", buf, 0xCu);
  }
}

- (void)_updateVoiceIDProfilesForSharedUser:(id)a3 iCloudAltDSID:(id)a4 records:(id)a5 isPrimary:(BOOL)a6 isNewUser:(BOOL)a7 completion:(id)a8
{
  v9 = a7;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  v18 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v121 = "[ADCloudKitMultiUserSharedDataStore _updateVoiceIDProfilesForSharedUser:iCloudAltDSID:records:isPrimary:isNewUser:completion:]";
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (v9)
  {
    v19 = +[AFAnalytics sharedAnalytics];
    v115[0] = _NSConcreteStackBlock;
    v115[1] = 3221225472;
    v115[2] = sub_100170F00;
    v115[3] = &unk_100519940;
    v116 = a6;
    [v19 logEventWithType:6111 contextProvider:v115];
  }

  v20 = objc_opt_new();
  v21 = objc_opt_new();
  objc_opt_class();
  objc_opt_class();
  objc_opt_class();
  objc_opt_class();
  if ([v16 count])
  {
    v77 = a6;
    v78 = v9;
    v79 = self;
    v86 = v21;
    v84 = v20;
    v80 = v17;
    v81 = v16;
    v82 = v15;
    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v22 = v16;
    v23 = [v22 countByEnumeratingWithState:&v111 objects:v128 count:16];
    v83 = v14;
    if (!v23)
    {
      goto LABEL_76;
    }

    v24 = v23;
    v25 = *v112;
    v95 = v22;
    while (1)
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v112 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v111 + 1) + 8 * i);
        v28 = [v27 recordType];
        if (([v28 isEqualToString:@"AssistantKeyValueRecord"] & 1) == 0)
        {
          if ([v28 isEqualToString:@"AssistantVoiceTriggerFileAssetRecord"])
          {
            v29 = [v27 recordID];
            v30 = [v29 recordName];

            if ([v30 length])
            {
              v31 = [v27 encryptedValuesByKey];
              v32 = [v31 objectForKey:@"fileName"];
              if ((objc_opt_isKindOfClass() & 1) == 0 || ![v32 length])
              {
                v55 = AFSiriLogContextDaemon;
                if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  v121 = "[ADCloudKitMultiUserSharedDataStore _updateVoiceIDProfilesForSharedUser:iCloudAltDSID:records:isPrimary:isNewUser:completion:]";
                  v122 = 2112;
                  v123 = v30;
                  _os_log_error_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "%s Record (%@) has invalid file name", buf, 0x16u);
                }

                goto LABEL_72;
              }

              v33 = v32;
              v34 = v31;
              v35 = [v31 objectForKey:@"fileCompressionType"];
              v94 = v35;
              if (objc_opt_isKindOfClass())
              {
                if ([v35 unsignedIntegerValue] == 2)
                {
                  v31 = v34;
                  v93 = [v34 objectForKey:@"fileAssetSize"];
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    v36 = AFSiriLogContextDaemon;
                    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
                    {
                      *buf = 136315394;
                      v121 = "[ADCloudKitMultiUserSharedDataStore _updateVoiceIDProfilesForSharedUser:iCloudAltDSID:records:isPrimary:isNewUser:completion:]";
                      v122 = 2112;
                      v123 = v30;
                      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "%s Record (%@) has invalid file size type", buf, 0x16u);
                    }
                  }

                  v37 = [v27 objectForKey:@"fileAsset"];
                  v32 = v33;
                  v92 = v37;
                  if (objc_opt_isKindOfClass())
                  {
                    v38 = [v37 fileURL];
                    v39 = [v38 path];

                    if (v39)
                    {
                      v40 = [v38 path];
                      [v86 setObject:v40 forKey:v32];

                      v41 = AFSiriLogContextDaemon;
                      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
                      {
                        v42 = v41;
                        v43 = [v86 count];
                        *buf = 136315906;
                        v121 = "[ADCloudKitMultiUserSharedDataStore _updateVoiceIDProfilesForSharedUser:iCloudAltDSID:records:isPrimary:isNewUser:completion:]";
                        v122 = 2112;
                        v123 = v30;
                        v124 = 2112;
                        v125 = v32;
                        v126 = 2048;
                        v127 = v43;
                        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "%s Extracted: recordName(%@), fileName(%@), fileArchiveDict count(%lu)", buf, 0x2Au);
                      }

                      v44 = [v31 objectForKey:@"languages"];
                      v85 = v44;
                      if ((objc_opt_isKindOfClass() & 1) != 0 && [v44 count])
                      {
                        v109 = 0u;
                        v110 = 0u;
                        v107 = 0u;
                        v108 = 0u;
                        obj = v44;
                        v90 = [obj countByEnumeratingWithState:&v107 objects:v119 count:16];
                        if (v90)
                        {
                          v88 = *v108;
                          v76 = v38;
LABEL_29:
                          v45 = 0;
                          while (1)
                          {
                            if (*v108 != v88)
                            {
                              objc_enumerationMutation(obj);
                            }

                            v46 = *(*(&v107 + 1) + 8 * v45);
                            if ((objc_opt_isKindOfClass() & 1) == 0 || ![v46 length])
                            {
                              break;
                            }

                            if (v90 == ++v45)
                            {
                              v38 = v76;
                              v90 = [obj countByEnumeratingWithState:&v107 objects:v119 count:16];
                              if (v90)
                              {
                                goto LABEL_29;
                              }

                              goto LABEL_36;
                            }
                          }

                          v67 = AFSiriLogContextDaemon;
                          v38 = v76;
                          if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_68;
                          }

                          *buf = 136315394;
                          v121 = "[ADCloudKitMultiUserSharedDataStore _updateVoiceIDProfilesForSharedUser:iCloudAltDSID:records:isPrimary:isNewUser:completion:]";
                          v122 = 2112;
                          v123 = v30;
                          v64 = v67;
                          v65 = "%s Record (%@) has invalid language in array";
LABEL_64:
                          _os_log_error_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, v65, buf, 0x16u);
                        }

                        else
                        {
LABEL_36:

                          v47 = AFSiriLogContextDaemon;
                          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
                          {
                            *buf = 136315394;
                            v121 = "[ADCloudKitMultiUserSharedDataStore _updateVoiceIDProfilesForSharedUser:iCloudAltDSID:records:isPrimary:isNewUser:completion:]";
                            v122 = 2112;
                            v123 = obj;
                            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "%s Languages: %@", buf, 0x16u);
                          }

                          v48 = [v31 objectForKey:@"productType"];
                          v91 = v48;
                          if ((objc_opt_isKindOfClass() & 1) != 0 && [v48 length])
                          {
                            v49 = [v27 modificationDate];
                            if (!v49)
                            {
                              v49 = +[NSDate date];
                            }

                            v117[0] = @"modificationDate";
                            v117[1] = @"languages";
                            v89 = v49;
                            v118[0] = v49;
                            v118[1] = obj;
                            v117[2] = @"productType";
                            v118[2] = v48;
                            v50 = [NSDictionary dictionaryWithObjects:v118 forKeys:v117 count:3];
                            [v84 setObject:v50 forKey:v30];
                            v51 = AFSiriLogContextDaemon;
                            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
                            {
                              *buf = 136315394;
                              v121 = "[ADCloudKitMultiUserSharedDataStore _updateVoiceIDProfilesForSharedUser:iCloudAltDSID:records:isPrimary:isNewUser:completion:]";
                              v122 = 2112;
                              v123 = v50;
                              _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "%s voice ID manifest: %@", buf, 0x16u);
                            }
                          }

                          else
                          {
                            v68 = AFSiriLogContextDaemon;
                            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 136315394;
                              v121 = "[ADCloudKitMultiUserSharedDataStore _updateVoiceIDProfilesForSharedUser:iCloudAltDSID:records:isPrimary:isNewUser:completion:]";
                              v122 = 2112;
                              v123 = v30;
                              _os_log_error_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "%s Record (%@) has invalid product type", buf, 0x16u);
                            }
                          }
                        }
                      }

                      else
                      {
                        v63 = AFSiriLogContextDaemon;
                        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136315394;
                          v121 = "[ADCloudKitMultiUserSharedDataStore _updateVoiceIDProfilesForSharedUser:iCloudAltDSID:records:isPrimary:isNewUser:completion:]";
                          v122 = 2112;
                          v123 = v30;
                          v64 = v63;
                          v65 = "%s Record (%@) has invalid language array";
                          goto LABEL_64;
                        }
                      }

LABEL_68:
                    }

                    else
                    {
                      v66 = AFSiriLogContextDaemon;
                      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136315650;
                        v121 = "[ADCloudKitMultiUserSharedDataStore _updateVoiceIDProfilesForSharedUser:iCloudAltDSID:records:isPrimary:isNewUser:completion:]";
                        v122 = 2112;
                        v123 = v30;
                        v124 = 2112;
                        v125 = v38;
                        _os_log_error_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "%s Record (%@) file asset URL(%@) path is nil", buf, 0x20u);
                      }
                    }
                  }

                  else
                  {
                    v62 = AFSiriLogContextDaemon;
                    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315394;
                      v121 = "[ADCloudKitMultiUserSharedDataStore _updateVoiceIDProfilesForSharedUser:iCloudAltDSID:records:isPrimary:isNewUser:completion:]";
                      v122 = 2112;
                      v123 = v30;
                      _os_log_error_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "%s Record (%@) has invalid file asset type", buf, 0x16u);
                    }
                  }

LABEL_71:
LABEL_72:

                  v22 = v95;
LABEL_73:

                  goto LABEL_74;
                }

                v61 = AFSiriLogContextDaemon;
                v31 = v34;
                v32 = v33;
                if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_71;
                }

                *buf = 136315650;
                v121 = "[ADCloudKitMultiUserSharedDataStore _updateVoiceIDProfilesForSharedUser:iCloudAltDSID:records:isPrimary:isNewUser:completion:]";
                v122 = 2112;
                v123 = v27;
                v124 = 2112;
                v125 = v94;
                v58 = v61;
                v59 = "%s Record (%@) is using unsupported compression type: %@";
                v60 = 32;
              }

              else
              {
                v57 = AFSiriLogContextDaemon;
                v31 = v34;
                v32 = v33;
                if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_71;
                }

                *buf = 136315394;
                v121 = "[ADCloudKitMultiUserSharedDataStore _updateVoiceIDProfilesForSharedUser:iCloudAltDSID:records:isPrimary:isNewUser:completion:]";
                v122 = 2112;
                v123 = v30;
                v58 = v57;
                v59 = "%s Record (%@) has invalid compression type";
                v60 = 22;
              }

              _os_log_error_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, v59, buf, v60);
              goto LABEL_71;
            }

            v56 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v121 = "[ADCloudKitMultiUserSharedDataStore _updateVoiceIDProfilesForSharedUser:iCloudAltDSID:records:isPrimary:isNewUser:completion:]";
              v122 = 2112;
              v123 = v27;
              _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "%s Modified record is lacking a name : (%@)", buf, 0x16u);
            }

            goto LABEL_73;
          }

          v52 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
          {
            v53 = v52;
            v54 = [v27 recordType];
            *buf = 136315394;
            v121 = "[ADCloudKitMultiUserSharedDataStore _updateVoiceIDProfilesForSharedUser:iCloudAltDSID:records:isPrimary:isNewUser:completion:]";
            v122 = 2112;
            v123 = v54;
            _os_log_debug_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "%s Unsupported record type : (%@)", buf, 0x16u);

            v22 = v95;
          }
        }

LABEL_74:
      }

      v24 = [v22 countByEnumeratingWithState:&v111 objects:v128 count:16];
      if (!v24)
      {
LABEL_76:

        v21 = v86;
        if ([v86 count])
        {
          v99[0] = _NSConcreteStackBlock;
          v99[1] = 3221225472;
          v99[2] = sub_100171004;
          v99[3] = &unk_100513BB0;
          v69 = v86;
          v100 = v69;
          v101 = v79;
          v14 = v83;
          v70 = v83;
          v102 = v70;
          v105 = v77;
          v106 = v78;
          v17 = v80;
          v104 = v80;
          v20 = v84;
          v71 = v84;
          v103 = v71;
          v72 = objc_retainBlock(v99);
          voiceProfileManager = v79->_voiceProfileManager;
          v96[0] = _NSConcreteStackBlock;
          v96[1] = 3221225472;
          v96[2] = sub_100171400;
          v96[3] = &unk_100513BD8;
          v96[4] = v79;
          v97 = v69;
          v98 = v71;
          [(SSRVoiceProfileManager *)voiceProfileManager notifyUserVoiceProfileDownloadReadyForUser:v70 getData:v96 completion:v72];

          v74 = v100;
        }

        else
        {
          v74 = [AFError errorWithCode:4005];
          v17 = v80;
          v14 = v83;
          v20 = v84;
          if (v80)
          {
            (v80)[2](v80, v74);
          }
        }

        v16 = v81;
        v15 = v82;
        goto LABEL_85;
      }
    }
  }

  v75 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v121 = "[ADCloudKitMultiUserSharedDataStore _updateVoiceIDProfilesForSharedUser:iCloudAltDSID:records:isPrimary:isNewUser:completion:]";
    _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_INFO, "%s No voice ID records found from changedRecrods", buf, 0xCu);
  }

  v74 = [AFError errorWithCode:4005];
  if (v17)
  {
    (*(v17 + 2))(v17, v74);
  }

LABEL_85:
}

- (void)_mergeDataWithModifiedRecords:(id)a3 deletedRecordIDs:(id)a4 containsAllChanges:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v31 = a6;
  v12 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v13 = v12;
    v14 = [v10 count];
    v15 = [v11 count];
    dataStoreIsOnSharedDatabase = self->_dataStoreIsOnSharedDatabase;
    v17 = @"partial";
    *buf = 136316162;
    v39 = "[ADCloudKitMultiUserSharedDataStore _mergeDataWithModifiedRecords:deletedRecordIDs:containsAllChanges:completion:]";
    if (v7)
    {
      v17 = @"full";
    }

    v18 = @"owner";
    v40 = 2048;
    v41 = v14;
    v42 = 2048;
    v43 = v15;
    v44 = 2112;
    if (dataStoreIsOnSharedDatabase)
    {
      v18 = @"shared";
    }

    v45 = v17;
    v46 = 2112;
    v47 = v18;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Merging %zd modified records, %zd deleted records, %@ sync, %@", buf, 0x34u);
  }

  v32 = v11;
  dispatch_assert_queue_V2(self->_serialQueue);
  v19 = objc_alloc_init(NSMutableArray);
  v20 = objc_alloc_init(NSMutableArray);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v21 = v10;
  v22 = [v21 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v34;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v34 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v33 + 1) + 8 * i);
        v27 = [v26 recordType];
        v28 = [v27 isEqualToString:@"AssistantKeyValueRecord"];
        v29 = v19;
        if ((v28 & 1) != 0 || (v30 = [v27 isEqualToString:@"AssistantVoiceTriggerFileAssetRecord"], v29 = v20, v30))
        {
          [v29 addObject:v26];
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v23);
  }

  [(ADCloudKitMultiUserSharedDataStore *)self setKeyValueRecordsAndVoiceProfile:v19 records:v20 completion:v31];
}

- (void)mergeDataWithModifiedRecords:(id)a3 deletedRecordIDs:(id)a4 containsAllChanges:(BOOL)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001717B4;
  block[3] = &unk_100519D50;
  block[4] = self;
  v18 = v10;
  v21 = a5;
  v19 = v11;
  v20 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(serialQueue, block);
}

- (void)_synchronizeVoiceIDWithActivity:(id)a3 sharedUserId:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!AFIsHorseman())
  {
    v12 = self->_sharedUserID;

    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "[ADCloudKitMultiUserSharedDataStore _synchronizeVoiceIDWithActivity:sharedUserId:completion:]";
      *&buf[12] = 2112;
      *&buf[14] = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s sharedUserId: %@", buf, 0x16u);
    }

    v25 = v12;
    v14 = AFProductType();
    if ([v14 length])
    {
      v24 = AFBuildVersion();
      if ([v24 length])
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v44 = sub_100171D10;
        v45 = sub_100171D20;
        v46 = objc_alloc_init(NSMutableArray);
        v41[0] = 0;
        v41[1] = v41;
        v41[2] = 0x3032000000;
        v41[3] = sub_100171D10;
        v41[4] = sub_100171D20;
        v42 = objc_alloc_init(NSMutableArray);
        [(ADCloudKitMultiUserSharedDataStore *)self _cleanupCacheDirectory];
        v15 = [(ADCloudKitMultiUserSharedDataStore *)self _createCacheDirectory];
        if (v15)
        {
          v16 = +[NSFileManager defaultManager];
          v34[0] = _NSConcreteStackBlock;
          v34[1] = 3221225472;
          v34[2] = sub_100171D28;
          v34[3] = &unk_100513B60;
          v39 = buf;
          v34[4] = self;
          v17 = v25;
          v35 = v17;
          v38 = v10;
          v36 = v8;
          v40 = v41;
          v18 = v14;
          v37 = v18;
          v19 = objc_retainBlock(v34);
          voiceProfileManager = self->_voiceProfileManager;
          v26[0] = _NSConcreteStackBlock;
          v26[1] = 3221225472;
          v26[2] = sub_100171F5C;
          v26[3] = &unk_100513B88;
          v21 = v16;
          v27 = v21;
          v28 = v15;
          v29 = self;
          v30 = v18;
          v31 = v24;
          v32 = buf;
          v33 = v41;
          [(SSRVoiceProfileManager *)voiceProfileManager uploadUserVoiceProfileForSiriProfileId:v17 withUploadTrigger:v26 completion:v19];
        }

        else if (v10)
        {
          (*(v10 + 2))(v10, 0);
        }

        _Block_object_dispose(v41, 8);
        _Block_object_dispose(buf, 8);

        goto LABEL_19;
      }

      v23 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "[ADCloudKitMultiUserSharedDataStore _synchronizeVoiceIDWithActivity:sharedUserId:completion:]";
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s Unable to retrieve build version", buf, 0xCu);
        if (!v10)
        {
          goto LABEL_19;
        }
      }

      else if (!v10)
      {
LABEL_19:

        goto LABEL_20;
      }

      (*(v10 + 2))(v10, 0);
      goto LABEL_19;
    }

    v22 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "[ADCloudKitMultiUserSharedDataStore _synchronizeVoiceIDWithActivity:sharedUserId:completion:]";
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s Unable to retrieve product type", buf, 0xCu);
      if (!v10)
      {
        goto LABEL_20;
      }
    }

    else if (!v10)
    {
LABEL_20:

      v9 = v25;
      goto LABEL_21;
    }

    (*(v10 + 2))(v10, 0);
    goto LABEL_20;
  }

  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = "[ADCloudKitMultiUserSharedDataStore _synchronizeVoiceIDWithActivity:sharedUserId:completion:]";
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Unsupported platform", buf, 0xCu);
  }

LABEL_21:
}

- (void)_synchronizeUsingActivity:(id)a3 sharedUserId:(id)a4 completion:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if (AFIsMultiUserCompanion() && [(ADCloudKitMultiUserSharedDataStore *)self isMirroredDataStore])
  {
    v10 = +[ADMultiUserCloudKitSyncer sharedService];
    [v10 syncIdentifiersToCloud];
  }

  [(ADCloudKitMultiUserSharedDataStore *)self _synchronizeVoiceIDWithActivity:v11 sharedUserId:v8 completion:v9];
}

- (void)synchronizeUsingActivity:(id)a3 sharedUserId:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  serialQueue = self->_serialQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10017363C;
  v15[3] = &unk_10051E0D8;
  v15[4] = self;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  dispatch_async(serialQueue, v15);
}

- (void)synchronizeUsingActivity:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (AFSupportsMultiUser() && !self->_sharedUserID)
  {
    v11 = +[ADMultiUserService sharedService];
    v12 = [(ADCloudKitMultiUserSharedDataStore *)self zone];
    v13 = [v12 zoneID];
    v14 = [v13 ownerName];
    v15 = [v11 getSharedUserIdForShareOwnerName:v14];
    sharedUserID = self->_sharedUserID;
    self->_sharedUserID = v15;

    v17 = self->_sharedUserID;
    v8 = AFSiriLogContextDaemon;
    if (!v17)
    {
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v18 = v8;
        v19 = [(ADCloudKitMultiUserSharedDataStore *)self zone];
        v20 = [v19 zoneID];
        v21 = [v20 ownerName];
        *v22 = 136315395;
        *&v22[4] = "[ADCloudKitMultiUserSharedDataStore synchronizeUsingActivity:completion:]";
        *&v22[12] = 2113;
        *&v22[14] = v21;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s Couldn't find sharedUserId for owner: %{private}@", v22, 0x16u);

        if (!v7)
        {
          goto LABEL_7;
        }
      }

      else if (!v7)
      {
        goto LABEL_7;
      }

      v7[2](v7, 0);
      goto LABEL_7;
    }

    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *v22 = 136315395;
      *&v22[4] = "[ADCloudKitMultiUserSharedDataStore synchronizeUsingActivity:completion:]";
      *&v22[12] = 2113;
      *&v22[14] = v17;
      v10 = "%s Found SharedUserId: %{private}@";
      goto LABEL_5;
    }
  }

  else
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v9 = self->_sharedUserID;
      *v22 = 136315395;
      *&v22[4] = "[ADCloudKitMultiUserSharedDataStore synchronizeUsingActivity:completion:]";
      *&v22[12] = 2113;
      *&v22[14] = v9;
      v10 = "%s SharedUserId is %{private}@";
LABEL_5:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, v10, v22, 0x16u);
    }
  }

  [(ADCloudKitMultiUserSharedDataStore *)self synchronizeUsingActivity:v6 sharedUserId:self->_sharedUserID completion:v7, *v22, *&v22[16]];
LABEL_7:
}

- (void)setServerChangeToken:(id)a3
{
  v10 = a3;
  if (![(ADCloudKitMultiUserSharedDataStore *)self isMirroredDataStore]&& (AFSupportsMultiUser() & 1) == 0)
  {
    if (v10)
    {
      v4 = [v10 ad_archiveTokenToDataWithExceptionBlock:&stru_100513AC0];
      if (!v4)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v4 = 0;
    }

    v5 = [(ADCloudKitMultiUserSharedDataStore *)self zone];
    v6 = [v5 zoneID];
    v7 = [v6 ownerName];

    if ([(ADCloudKitMultiUserSharedDataStore *)self dataStoreIsOnSharedDatabase])
    {
      if (!v7)
      {
LABEL_12:

        goto LABEL_13;
      }

      v8 = +[ADPreferences sharedPreferences];
      [v8 setMultiUserSharedDataServerChangeToken:v4 forOwnerName:v7];
    }

    else
    {
      v8 = +[ADPreferences sharedPreferences];
      [v8 setMultiUserSharedDataServerChangeToken:v4];
    }

    v9 = +[ADPreferences sharedPreferences];
    [v9 synchronize];

    goto LABEL_12;
  }

LABEL_13:
}

- (CKServerChangeToken)serverChangeToken
{
  if ([(ADCloudKitMultiUserSharedDataStore *)self isMirroredDataStore]|| (AFSupportsMultiUser() & 1) != 0 || [(ADCloudKitMultiUserSharedDataStore *)self dataStoreIsOnSharedDatabase])
  {
    v3 = 0;
  }

  else
  {
    v5 = +[ADPreferences sharedPreferences];
    v6 = [v5 multiUserSharedDataServerChangeToken];

    v3 = [CKServerChangeToken ad_unarchiveTokenFromData:v6 withExceptionBlock:&stru_100513AA0];
  }

  return v3;
}

- (void)setHasSetUpRecordZoneSubscription:(BOOL)a3
{
  v3 = a3;
  v4 = +[ADPreferences sharedPreferences];
  [v4 setHasSetupMultiUserSharedRecordZoneSubscription:v3];

  v5 = +[ADPreferences sharedPreferences];
  [v5 synchronize];
}

- (BOOL)hasSetUpRecordZoneSubscription
{
  v2 = +[ADPreferences sharedPreferences];
  v3 = [v2 hasSetUpMultiUserSharedRecordZoneSubscription];

  return v3;
}

- (ADCloudKitMultiUserSharedDataStore)initWithInstanceContext:(id)a3
{
  v16.receiver = self;
  v16.super_class = ADCloudKitMultiUserSharedDataStore;
  v3 = [(ADCloudKitMultiUserSharedDataStore *)&v16 init];
  if (v3)
  {
    v17[0] = @"AssistantVoiceTriggerFileAssetRecord";
    v17[1] = @"AssistantKeyValueRecord";
    v4 = [NSArray arrayWithObjects:v17 count:2];
    supportedRecordTypes = v3->_supportedRecordTypes;
    v3->_supportedRecordTypes = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("ADCloudKitMultiUserSharedDataStore.Serial", v6);
    serialQueue = v3->_serialQueue;
    v3->_serialQueue = v7;

    v9 = +[SSRVoiceProfileManager sharedInstance];
    voiceProfileManager = v3->_voiceProfileManager;
    v3->_voiceProfileManager = v9;

    v11 = os_signpost_id_generate(AFSiriLogContextMultiUser);
    v12 = AFSiriLogContextMultiUser;
    v13 = v12;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *v15 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "MultiUserService", "Setting up ADCloudKitMultiUserSharedDataStore listener", v15, 2u);
    }

    v3->multiUserSyncedRecordsSignpost = v11;
    v3->isATVOnly = AFIsATV();
  }

  return v3;
}

- (ADCloudKitMultiUserSharedDataStore)init
{
  v3 = +[AFInstanceContext currentContext];
  v4 = [(ADCloudKitMultiUserSharedDataStore *)self initWithInstanceContext:v3];

  return v4;
}

@end