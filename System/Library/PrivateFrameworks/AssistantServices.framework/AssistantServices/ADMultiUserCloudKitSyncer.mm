@interface ADMultiUserCloudKitSyncer
+ (id)sharedService;
- (id)_addHomeMembershipsToDictionary:(id)a3;
- (id)_generateVersion1HomeMembershipRecordKeyFromHomeID:(id)a3 homeUserID:(id)a4;
- (id)_generateVersion2HomeMembershipRecordKeyFromHomeID:(id)a3;
- (id)_homeMembershipsToDelete;
- (id)_init;
- (id)_setHomeMembershipsDeletion:(id)a3;
- (id)getAudioAppSignalsPayload;
- (id)setPersonalData:(id)a3;
- (void)_deleteHomeMemberShipsFromCloud:(unint64_t)a3;
- (void)_saveBackupIdentifiersAnchor:(id)a3;
- (void)_saveCachedAssistantDataAnchor:(id)a3;
- (void)_saveIdentifiersAnchor:(id)a3;
- (void)_setupMGQUserAssignedDeviceNameNotificationHandler;
- (void)_syncIdentifiersToCloud:(unint64_t)a3 forceUpdate:(BOOL)a4 voiceIDChangedToEnabled:(BOOL)a5;
- (void)_syncMeCard:(unint64_t)a3 anchorToSave:(id)a4;
- (void)accountDidChange:(id)a3;
- (void)assistantDataManager:(id)a3 didUpdateAssistantData:(id)a4 meCards:(id)a5 unredactedAnchor:(id)a6;
- (void)dealloc;
- (void)enabledBitsChanged:(id)a3;
- (void)markHomeMembershipsForDeletion:(id)a3;
- (void)meDeviceChanged:(id)a3;
- (void)primaryUserSharedUserIdentifierDidChangeNotification:(id)a3;
- (void)setHomeMemberships:(id)a3 homeMembershipsToDelete:(id)a4 voiceIDSetting:(BOOL)a5;
- (void)syncAudioAppSignalsPayload:(id)a3;
- (void)syncIdentifiersToCloud;
@end

@implementation ADMultiUserCloudKitSyncer

- (id)getAudioAppSignalsPayload
{
  if (+[AFFeatureFlags isAudioAppPredictionOnHomePodEnabled])
  {
    v2 = +[AFMultiUserDataSyncUtils retrieveAudioAppSignals];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_syncIdentifiersToCloud:(unint64_t)a3 forceUpdate:(BOOL)a4 voiceIDChangedToEnabled:(BOOL)a5
{
  v5 = a5;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    *&buf[4] = "[ADMultiUserCloudKitSyncer _syncIdentifiersToCloud:forceUpdate:voiceIDChangedToEnabled:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (a3)
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "[ADMultiUserCloudKitSyncer _syncIdentifiersToCloud:forceUpdate:voiceIDChangedToEnabled:]";
      *&buf[12] = 2048;
      *&buf[14] = a3;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s retryCount = %ld", buf, 0x16u);
    }

    if (a3 >= 0x10)
    {
      v10 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        *&buf[4] = "[ADMultiUserCloudKitSyncer _syncIdentifiersToCloud:forceUpdate:voiceIDChangedToEnabled:]";
        v11 = "%s Underlying CloudKit infra not ready. Bailing.";
LABEL_39:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v11, buf, 0xCu);
        return;
      }

      return;
    }
  }

  v12 = +[ADPreferences sharedPreferences];
  if ([v12 multiUserIsOnboardingDevice])
  {

    goto LABEL_12;
  }

  meIsMeDevice = self->_meIsMeDevice;

  if (meIsMeDevice)
  {
LABEL_12:
    v124 = 0;
    v125 = &v124;
    v126 = 0x2020000000;
    v127 = self->_meIsMeDevice;
    v109 = +[ACAccountStore defaultStore];
    v14 = +[ADAccount activeAccount];
    v15 = [v14 assistantIdentifier];
    assistantIdentifier = self->_assistantIdentifier;
    self->_assistantIdentifier = v15;

    v17 = +[ADAccount activeAccount];
    v111 = [v17 loggingAssistantIdentifier];

    v18 = +[ADAccount activeAccount];
    v107 = [v18 speechIdentifier];

    v19 = +[ADPreferences sharedPreferences];
    v113 = [v19 sharedUserIdentifier];
    v108 = v19;
    v112 = [v19 loggingSharedUserIdentifier];
    v20 = [v109 aa_primaryAppleAccount];
    v106 = [v20 aa_altDSID];

    v21 = [v108 productTypePrefix];
    v105 = SiriCoreUserAgentStringCreate();

    v22 = +[ADAccount activeAccount];
    v110 = [v22 aceHost];

    v103 = [(ADMultiUserCloudKitSyncer *)self getAudioAppSignalsPayload];
    v104 = AFUserAssignedDeviceName();
    v23 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "[ADMultiUserCloudKitSyncer _syncIdentifiersToCloud:forceUpdate:voiceIDChangedToEnabled:]";
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
    }

    if (!v113 || !v112)
    {
      v35 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        *&buf[4] = "[ADMultiUserCloudKitSyncer _syncIdentifiersToCloud:forceUpdate:voiceIDChangedToEnabled:]";
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "%s Shared UserID unavailable", buf, 0xCu);
      }

      goto LABEL_104;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v143 = sub_10027DB0C;
    v144 = sub_10027DB1C;
    v24 = self->_assistantIdentifier;
    if (!v24)
    {
      v24 = &stru_10051F508;
    }

    v25 = v111;
    if (!v111)
    {
      v25 = &stru_10051F508;
    }

    v141[0] = v24;
    v141[1] = v25;
    if (v107)
    {
      v26 = v107;
    }

    else
    {
      v26 = &stru_10051F508;
    }

    v141[2] = v26;
    v141[3] = v113;
    v27 = v105;
    if (!v105)
    {
      v27 = &stru_10051F508;
    }

    v141[4] = v112;
    v141[5] = v27;
    v28 = v110;
    if (!v110)
    {
      v28 = &stru_10051F508;
    }

    v29 = v106;
    if (!v106)
    {
      v29 = &stru_10051F508;
    }

    v141[6] = v28;
    v141[7] = v29;
    v30 = v104;
    if (!v104)
    {
      v30 = &stru_10051F508;
    }

    v141[8] = v30;
    v141[9] = &__NSDictionary0__struct;
    v31 = [NSArray arrayWithObjects:v141 count:10];
    v145 = sub_100215D9C(v31);

    v32 = v125;
    v33 = 96;
    if (*(v125 + 24))
    {
      v33 = 88;
    }

    v102 = *(&self->super.isa + v33);
    if (*(v32 + 24) == 1)
    {
      v34 = +[ADPreferences sharedPreferences];
      [v34 multiUserSyncerIdentifiersAnchor];
    }

    else
    {
      v34 = +[ADPreferences sharedPreferences];
      [v34 multiUserSyncerBackupIdentifiersAnchor];
    }
    v101 = ;

    v36 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v37 = *(*&buf[8] + 40);
      *v133 = 136315906;
      v134 = "[ADMultiUserCloudKitSyncer _syncIdentifiersToCloud:forceUpdate:voiceIDChangedToEnabled:]";
      v135 = 2112;
      v136 = v101;
      v137 = 2112;
      v138 = v102;
      v139 = 2112;
      v140 = v37;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "%s saved anchor:%@\tcached anchor:%@\tnew anchor:%@", v133, 0x2Au);
    }

    if (a4)
    {
      goto LABEL_54;
    }

    meWasMeDevice = self->_meWasMeDevice;
    v39 = *(*&buf[8] + 40);
    if (v102)
    {
      if ([v102 isEqualToString:v39] && *(v125 + 24) == meWasMeDevice)
      {
        v40 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *v133 = 136315138;
          v134 = "[ADMultiUserCloudKitSyncer _syncIdentifiersToCloud:forceUpdate:voiceIDChangedToEnabled:]";
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "%s Identifiers anchor unchanged from last sync. Bailing.", v133, 0xCu);
        }

        goto LABEL_103;
      }

LABEL_54:
      v45 = AFSiriLogContextSession;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
      {
        *v133 = 136315138;
        v134 = "[ADMultiUserCloudKitSyncer _syncIdentifiersToCloud:forceUpdate:voiceIDChangedToEnabled:]";
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "%s ", v133, 0xCu);
      }

      v46 = objc_alloc_init(NSMutableDictionary);
      v47 = *(v125 + 24);
      v48 = AFSiriLogContextDaemon;
      v49 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
      if (v47 == 1)
      {
        if (v49)
        {
          *v133 = 136315138;
          v134 = "[ADMultiUserCloudKitSyncer _syncIdentifiersToCloud:forceUpdate:voiceIDChangedToEnabled:]";
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "%s Device is MeDevice. Syncing Identifiers", v133, 0xCu);
        }

        idsIdentifier = self->_idsIdentifier;
        if (!idsIdentifier)
        {
          v90 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *v133 = 136315138;
            v134 = "[ADMultiUserCloudKitSyncer _syncIdentifiersToCloud:forceUpdate:voiceIDChangedToEnabled:]";
            _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_INFO, "%s IDS Identifier unavailable", v133, 0xCu);
          }

          goto LABEL_102;
        }

        [v46 setObject:idsIdentifier forKey:@"meDeviceIDSIdentifier"];
        if (v105)
        {
          [v46 setObject:v105 forKey:@"meProductPrefix"];
        }

        v51 = @"meDeviceAssistantID";
        v52 = @"meDeviceLoggingAssistantID";
        v53 = @"meDeviceSpeechID";
        v54 = @"meDeviceSharedUserID";
        v55 = @"meDeviceLoggingSharedUserID";
        v56 = @"meDeviceiCloudAltDSID";
        v57 = @"meDeviceACEHost";
        v58 = @"meDeviceVoiceIDChangedToEnabledTimestamp";
        if (v103 && +[AFFeatureFlags isAudioAppPredictionOnHomePodEnabled])
        {
          [v46 setObject:v103 forKey:@"meDeviceAudioAppSignals"];
        }

        if (v106)
        {
          [v46 setObject:v106 forKey:@"meDeviceiCloudAltDSID"];
        }

        v131[0] = @"meDeviceAssistantID";
        v59 = self->_assistantIdentifier;
        v60 = v59;
        if (!v59)
        {
          v60 = +[NSNull null];
        }

        v131[1] = @"meDevicePeerToPeerHandoffCapability";
        v132[0] = v60;
        v132[1] = &off_100533DB8;
        v61 = [NSDictionary dictionaryWithObjects:v132 forKeys:v131 count:2];
        if (!v59)
        {
        }

        [v46 setObject:v61 forKey:@"meDeviceCapabilities"];

        v92 = @"meDeviceiCloudAltDSID";
        v94 = @"meDeviceVoiceIDChangedToEnabledTimestamp";
        v96 = @"meDeviceACEHost";
        v97 = @"meDeviceLoggingSharedUserID";
        v98 = @"meDeviceSharedUserID";
        v99 = @"meDeviceSpeechID";
        v100 = @"meDeviceAssistantID";
        v95 = @"meDeviceLoggingAssistantID";
      }

      else
      {
        if (v49)
        {
          *v133 = 136315138;
          v134 = "[ADMultiUserCloudKitSyncer _syncIdentifiersToCloud:forceUpdate:voiceIDChangedToEnabled:]";
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "%s Device is NOT MeDevice. Syncing Backup Identifiers", v133, 0xCu);
        }

        v100 = @"backupAssistantID";
        v62 = @"backupAssistantID";
        v95 = @"backupLoggingAssistantID";
        v63 = @"backupLoggingAssistantID";
        v99 = @"backupSpeechID";
        v64 = @"backupSpeechID";
        v98 = @"backupSharedUserID";
        v65 = @"backupSharedUserID";
        v97 = @"backupLoggingSharedUserID";
        v66 = @"backupLoggingSharedUserID";
        v96 = @"backupDeviceACEHost";
        v67 = @"backupDeviceACEHost";
        v92 = 0;
        v94 = 0;
      }

      v68 = self->_assistantIdentifier;
      v69 = v68;
      if (!v68)
      {
        v69 = +[NSNull null];
      }

      [v46 setObject:v69 forKey:{v100, v92}];
      if (!v68)
      {
      }

      if (v111)
      {
        [v46 setObject:v111 forKey:v95];
      }

      if (v107)
      {
        [v46 setObject:v107 forKey:v99];
      }

      else
      {
        v70 = +[NSNull null];
        [v46 setObject:v70 forKey:v99];
      }

      [v46 setObject:v113 forKey:v98];
      [v46 setObject:v112 forKey:v97];
      if (v110)
      {
        [v46 setObject:v110 forKey:v96];
      }

      if (v47 && v5)
      {
        v71 = +[NSDate date];
        [v71 timeIntervalSince1970];
        v73 = v72;

        v129 = v113;
        v74 = [NSNumber numberWithDouble:v73];
        v130 = v74;
        v75 = [NSDictionary dictionaryWithObjects:&v130 forKeys:&v129 count:1];

        [v46 setObject:v75 forKey:v94];
      }

      if (*(v125 + 24))
      {
        v76 = @"1";
      }

      else
      {
        v76 = @"0";
      }

      [v46 setObject:v76 forKey:@"meDevice"];
      v77 = [(ADMultiUserCloudKitSyncer *)self _addHomeMembershipsToDictionary:v46];

      v78 = [(ADMultiUserCloudKitSyncer *)self setPersonalData:v77];
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v79 = v77;
      v80 = [v79 countByEnumeratingWithState:&v120 objects:v128 count:16];
      if (v80)
      {
        v81 = *v121;
        do
        {
          for (i = 0; i != v80; i = i + 1)
          {
            if (*v121 != v81)
            {
              objc_enumerationMutation(v79);
            }

            v83 = *(*(&v120 + 1) + 8 * i);
            v84 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
            {
              v85 = [v79 valueForKey:v83];
              *v133 = 136315651;
              v134 = "[ADMultiUserCloudKitSyncer _syncIdentifiersToCloud:forceUpdate:voiceIDChangedToEnabled:]";
              v135 = 2112;
              v136 = v83;
              v137 = 2113;
              v138 = v85;
              _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_INFO, "%s identifier key (%@), value (%{private}@)", v133, 0x20u);
            }
          }

          v80 = [v79 countByEnumeratingWithState:&v120 objects:v128 count:16];
        }

        while (v80);
      }

      v86 = objc_alloc_init(NSMutableArray);
      v87 = [(ADMultiUserCloudKitSyncer *)self _setHomeMembershipsDeletion:v86];
      v88 = +[ADCloudKitManager sharedManager];
      v115[0] = _NSConcreteStackBlock;
      v115[1] = 3221225472;
      v115[2] = sub_10027DB24;
      v115[3] = &unk_1005185E8;
      v115[4] = self;
      v46 = v79;
      v116 = v46;
      v118 = &v124;
      v119 = buf;
      v89 = v86;
      v117 = v89;
      [v88 addDictionaryToSharedStore:v46 recordKeysForDeletion:v89 completion:v115];

LABEL_102:
      goto LABEL_103;
    }

    if (![v101 isEqualToString:v39] || *(v125 + 24) != meWasMeDevice)
    {
      goto LABEL_54;
    }

    v41 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *v133 = 136315138;
      v134 = "[ADMultiUserCloudKitSyncer _syncIdentifiersToCloud:forceUpdate:voiceIDChangedToEnabled:]";
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "%s Identifiers anchor unchanged from last sync. Bailing.", v133, 0xCu);
      v42 = *(v125 + 24);
      v43 = *(*&buf[8] + 40);
      if ((v42 & 1) == 0)
      {
LABEL_53:
        cachedBackupIdentifiersAnchor = self->_cachedBackupIdentifiersAnchor;
        self->_cachedBackupIdentifiersAnchor = v43;

LABEL_103:
        _Block_object_dispose(buf, 8);

LABEL_104:
        _Block_object_dispose(&v124, 8);
        return;
      }
    }

    else
    {
      v43 = *(*&buf[8] + 40);
      if (!meWasMeDevice)
      {
        goto LABEL_53;
      }
    }

    cachedIdentifiersAnchor = self->_cachedIdentifiersAnchor;
    self->_cachedIdentifiersAnchor = v43;

    goto LABEL_103;
  }

  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    *&buf[4] = "[ADMultiUserCloudKitSyncer _syncIdentifiersToCloud:forceUpdate:voiceIDChangedToEnabled:]";
    v11 = "%s Not the onboarding device and not the meDevice. Bailing.";
    goto LABEL_39;
  }
}

- (id)_setHomeMembershipsDeletion:(id)a3
{
  v4 = a3;
  v5 = [(ADMultiUserCloudKitSyncer *)self _homeMembershipsToDelete];
  v6 = [v5 count];

  v7 = AFSiriLogContextDaemon;
  v8 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v8)
    {
      v9 = v7;
      v10 = [(ADMultiUserCloudKitSyncer *)self _homeMembershipsToDelete];
      *buf = 136315395;
      v28 = "[ADMultiUserCloudKitSyncer _setHomeMembershipsDeletion:]";
      v29 = 2113;
      v30 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Home memberships marked for deletion (%{private}@)", buf, 0x16u);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = [(ADMultiUserCloudKitSyncer *)self _homeMembershipsToDelete];
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          v17 = [(ADMultiUserCloudKitSyncer *)self _homeMembershipsToDelete];
          v18 = [v17 objectForKey:v16];

          v19 = [(ADMultiUserCloudKitSyncer *)self _generateVersion1HomeMembershipRecordKeyFromHomeID:v16 homeUserID:v18];
          [v4 addObject:v19];
          v20 = [(ADMultiUserCloudKitSyncer *)self _generateVersion2HomeMembershipRecordKeyFromHomeID:v16];
          [v4 addObject:v20];
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }
  }

  else if (v8)
  {
    *buf = 136315138;
    v28 = "[ADMultiUserCloudKitSyncer _setHomeMembershipsDeletion:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s No home memberships to delete", buf, 0xCu);
  }

  return v4;
}

- (void)_deleteHomeMemberShipsFromCloud:(unint64_t)a3
{
  if (a3 < 0x10)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = [(ADMultiUserCloudKitSyncer *)self _setHomeMembershipsDeletion:v6];
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315651;
      v16 = "[ADMultiUserCloudKitSyncer _deleteHomeMemberShipsFromCloud:]";
      v17 = 2048;
      v18 = a3;
      v19 = 2113;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Retry count (%ld) for home membership records set for deletion (%{private}@)", buf, 0x20u);
    }

    if ([v6 count])
    {
      v9 = a3 + 1;
      v10 = +[ADCloudKitManager sharedManager];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10027E54C;
      v12[3] = &unk_100518598;
      v14 = v9;
      v12[4] = self;
      v13 = v6;
      [v10 deleteRecordFromSharedStore:v13 completion:v12];
    }

    else
    {
      v11 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v16 = "[ADMultiUserCloudKitSyncer _deleteHomeMemberShipsFromCloud:]";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s No home memberships to delete", buf, 0xCu);
      }
    }
  }

  else
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v16 = "[ADMultiUserCloudKitSyncer _deleteHomeMemberShipsFromCloud:]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Failed to delete home memberships", buf, 0xCu);
    }
  }
}

- (id)_addHomeMembershipsToDictionary:(id)a3
{
  v4 = a3;
  v21 = objc_alloc_init(NSMutableDictionary);
  [v21 addEntriesFromDictionary:v4];
  if ([(NSDictionary *)self->_homeMemberships count])
  {
    v20 = v4;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = self->_homeMemberships;
    v5 = [(NSDictionary *)obj countByEnumeratingWithState:&v24 objects:v38 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v25;
      do
      {
        v8 = 0;
        v22 = v6;
        do
        {
          if (*v25 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v24 + 1) + 8 * v8);
          v10 = [(NSMutableDictionary *)self->_homeMembershipsToDelete objectForKey:v9];
          if (v10)
          {
            v11 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
            {
              *buf = 136315651;
              v29 = "[ADMultiUserCloudKitSyncer _addHomeMembershipsToDictionary:]";
              v30 = 2113;
              v31 = v9;
              v32 = 2113;
              v33 = v10;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Not adding membership to sync (%{private}@)/(%{private}@) because it's marked for deletion", buf, 0x20u);
            }
          }

          else
          {
            v12 = v7;
            v13 = [(NSDictionary *)self->_homeMemberships objectForKey:v9];
            v14 = [NSDictionary dictionaryWithObject:v13 forKey:v9];
            v15 = [(ADMultiUserCloudKitSyncer *)self _generateVersion1HomeMembershipRecordKeyFromHomeID:v9 homeUserID:v13];
            [v21 setObject:v14 forKey:v15];
            v16 = [(ADMultiUserCloudKitSyncer *)self _generateVersion2HomeMembershipRecordKeyFromHomeID:v9];
            [v21 setObject:v14 forKey:v16];
            v17 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
            {
              *buf = 136316163;
              v29 = "[ADMultiUserCloudKitSyncer _addHomeMembershipsToDictionary:]";
              v30 = 2113;
              v31 = v9;
              v32 = 2113;
              v33 = v13;
              v34 = 2112;
              v35 = v15;
              v36 = 2112;
              v37 = v16;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Adding membership to sync (%{private}@)/(%{private}@) with V1 Key %@, V2 Key %@", buf, 0x34u);
            }

            v7 = v12;
            v6 = v22;
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [(NSDictionary *)obj countByEnumeratingWithState:&v24 objects:v38 count:16];
      }

      while (v6);
    }

    v4 = v20;
  }

  else
  {
    v18 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v29 = "[ADMultiUserCloudKitSyncer _addHomeMembershipsToDictionary:]";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s No Home memberships?", buf, 0xCu);
    }
  }

  return v21;
}

- (id)_generateVersion2HomeMembershipRecordKeyFromHomeID:(id)a3
{
  v3 = a3;
  v4 = [@"*^&9&J#AzPm" dataUsingEncoding:4];
  v5 = [v3 dataUsingEncoding:4];

  v6 = AFSecurityDigestData();
  v7 = 0;
  if (v7)
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[ADMultiUserCloudKitSyncer _generateVersion2HomeMembershipRecordKeyFromHomeID:]";
      v14 = 2112;
      v15 = v7;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Failed to generate home membership record key due to error: %@", buf, 0x16u);
    }

    v9 = 0;
  }

  else
  {
    v10 = [NSString hexStringFromData:v6];
    v9 = [NSString stringWithFormat:@"%@%@%@", @"v2_sharedDeviceHomeUserUUIDPrefix", @"+", v10];
  }

  return v9;
}

- (id)_generateVersion1HomeMembershipRecordKeyFromHomeID:(id)a3 homeUserID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [@"*^&9&J#AzPm" dataUsingEncoding:4];
  v8 = [NSString stringWithFormat:@"%@%@%@", v6, @"+", v5];

  v9 = [v8 dataUsingEncoding:4];

  v10 = AFSecurityDigestData();
  v11 = 0;
  if (v11)
  {
    v12 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "[ADMultiUserCloudKitSyncer _generateVersion1HomeMembershipRecordKeyFromHomeID:homeUserID:]";
      v18 = 2112;
      v19 = v11;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Failed to generate home membership record key due to error: %@", buf, 0x16u);
    }

    v13 = 0;
  }

  else
  {
    v14 = [NSString hexStringFromData:v10];
    v13 = [NSString stringWithFormat:@"%@%@%@", @"sharedDeviceHomeUserUUIDPrefix", @"+", v14];
  }

  return v13;
}

- (void)_saveBackupIdentifiersAnchor:(id)a3
{
  objc_storeStrong(&self->_cachedBackupIdentifiersAnchor, a3);
  v4 = a3;
  v5 = +[ADPreferences sharedPreferences];
  [v5 setMultiUserSyncerBackupIdentifiersAnchor:v4];
}

- (void)_saveIdentifiersAnchor:(id)a3
{
  objc_storeStrong(&self->_cachedIdentifiersAnchor, a3);
  v4 = a3;
  v5 = +[ADPreferences sharedPreferences];
  [v5 setMultiUserSyncerIdentifiersAnchor:v4];
}

- (void)_saveCachedAssistantDataAnchor:(id)a3
{
  objc_storeStrong(&self->_cachedAssistantDataAnchor, a3);
  v4 = a3;
  v5 = +[ADPreferences sharedPreferences];
  [v5 setMultiUserSyncerSADAnchor:v4];
}

- (id)setPersonalData:(id)a3
{
  v4 = a3;
  cachedAssistantData = self->_cachedAssistantData;
  if (!cachedAssistantData)
  {
LABEL_51:
    v10 = v4;
    goto LABEL_52;
  }

  cachedAssistantDataAnchor = self->_cachedAssistantDataAnchor;
  if (!cachedAssistantDataAnchor || ([(SASetAssistantData *)cachedAssistantData anchor], v7 = objc_claimAutoreleasedReturnValue(), v8 = [(NSString *)cachedAssistantDataAnchor isEqualToString:v7], v7, !v8))
  {
    if (self->_meIsMeDevice)
    {
      v11 = [(SASetAssistantData *)self->_cachedAssistantData countryCode];
      if (v11)
      {
        [v4 setObject:v11 forKey:@"meCountryCode"];
      }

      v12 = [(SASetAssistantData *)self->_cachedAssistantData parentalRestrictions];
      if (v12)
      {
        [v4 setObject:v12 forKey:@"meParentalRestrictions"];
      }

      v13 = [(SASetAssistantData *)self->_cachedAssistantData preferredLanguage];
      if (v13)
      {
        [v4 setObject:v13 forKey:@"mePreferredLanguage"];
      }

      v14 = [(SASetAssistantData *)self->_cachedAssistantData region];
      if (v14)
      {
        [v4 setObject:v14 forKey:@"meRegion"];
      }

      v51 = v14;
      v15 = [(SASetAssistantData *)self->_cachedAssistantData temperatureUnit];
      if (v15)
      {
        [v4 setObject:v15 forKey:@"meTemperatureUnit"];
      }

      v50 = v15;
      v16 = [(SASetAssistantData *)self->_cachedAssistantData ttsVoice];
      v17 = v16;
      if (v16)
      {
        v18 = [v16 dictionary];
        v53 = 0;
        v19 = [NSPropertyListSerialization dataWithPropertyList:v18 format:200 options:0 error:&v53];
        v20 = v53;

        if (v20 || !v19)
        {
          v23 = AFSiriLogContextDaemonAce;
          if (os_log_type_enabled(AFSiriLogContextDaemonAce, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v55 = "[ADMultiUserCloudKitSyncer setPersonalData:]";
            v56 = 2112;
            v57 = v20;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s Unable to serialize TTSVoice object with error (%@)", buf, 0x16u);
          }
        }

        else
        {
          [v4 setObject:v19 forKey:@"meTTSVoice"];
        }
      }

      v24 = [(SASetAssistantData *)self->_cachedAssistantData twentyFourHourTimeDisplay];
      if (v24)
      {
        [v4 setObject:v24 forKey:@"twentyFourHourTimeDisplay"];
      }

      else
      {
        v25 = AFSiriLogContextDaemonAce;
        if (os_log_type_enabled(AFSiriLogContextDaemonAce, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v55 = "[ADMultiUserCloudKitSyncer setPersonalData:]";
          _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "%s twentyFourHourDisplay is nil, syncing -1 to communal devices to represent nil", buf, 0xCu);
        }

        v26 = [NSNumber numberWithInteger:-1];
        [v4 setObject:v26 forKey:@"twentyFourHourTimeDisplay"];
      }

      v49 = v17;
      v27 = @"meCard";
      v28 = +[ADPreferences sharedPreferences];
      v29 = [v28 languageCode];

      if (v29)
      {
        [v4 setObject:v29 forKey:@"siriLanguage"];
      }

      else
      {
        v30 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v55 = "[ADMultiUserCloudKitSyncer setPersonalData:]";
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "%s siriLanguage is nil. Skip adding to cloud.", buf, 0xCu);
        }
      }

      v31 = AFUserAssignedDeviceName();
      if (v31 && (+[NSCharacterSet whitespaceAndNewlineCharacterSet](NSCharacterSet, "whitespaceAndNewlineCharacterSet"), v32 = objc_claimAutoreleasedReturnValue(), [v31 stringByTrimmingCharactersInSet:v32], v48 = v4, v33 = v29, v34 = v24, v35 = v13, v36 = v12, v37 = v11, v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v38, "length"), v38, v11 = v37, v12 = v36, v13 = v35, v24 = v34, v29 = v33, v4 = v48, v32, v39))
      {
        [v48 setObject:v31 forKey:@"companionName"];
      }

      else
      {
        v40 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v55 = "[ADMultiUserCloudKitSyncer setPersonalData:]";
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "%s companionName is nil or empty. Skip adding to cloud.", buf, 0xCu);
        }
      }

      v21 = @"meCard";
    }

    else
    {
      v21 = @"backupMeCard";
      v22 = @"backupMeCard";
    }

    if ([(NSArray *)self->_cachedMeCards count])
    {
      v41 = [(NSArray *)self->_cachedMeCards objectAtIndex:0];
      v42 = v41;
      if (v41)
      {
        v43 = [v41 dictionary];
        v52 = 0;
        v44 = [NSPropertyListSerialization dataWithPropertyList:v43 format:200 options:0 error:&v52];
        v45 = v52;

        if (v45 || !v44)
        {
          v46 = AFSiriLogContextDaemonAce;
          if (os_log_type_enabled(AFSiriLogContextDaemonAce, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v55 = "[ADMultiUserCloudKitSyncer setPersonalData:]";
            v56 = 2112;
            v57 = v45;
            _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%s Unable to serialize meCard with error (%@)", buf, 0x16u);
          }
        }

        else
        {
          [v4 setObject:v44 forKey:v21];
        }
      }
    }

    goto LABEL_51;
  }

  v9 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v55 = "[ADMultiUserCloudKitSyncer setPersonalData:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s No personal data changes detected", buf, 0xCu);
  }

  v10 = 0;
LABEL_52:

  return v10;
}

- (void)assistantDataManager:(id)a3 didUpdateAssistantData:(id)a4 meCards:(id)a5 unredactedAnchor:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = [a4 copy];
  queue = self->_queue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10027F9CC;
  v16[3] = &unk_10051DB18;
  v16[4] = self;
  v17 = v11;
  v18 = v9;
  v19 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v11;
  dispatch_async(queue, v16);
}

- (void)_syncMeCard:(unint64_t)a3 anchorToSave:(id)a4
{
  v6 = a4;
  v7 = +[ADPreferences sharedPreferences];
  if ([v7 multiUserIsOnboardingDevice])
  {
  }

  else
  {
    meIsMeDevice = self->_meIsMeDevice;

    if (!meIsMeDevice)
    {
      goto LABEL_8;
    }
  }

  if (a3 < 0x10)
  {
    v10 = objc_alloc_init(NSMutableDictionary);
    v11 = [(ADMultiUserCloudKitSyncer *)self setPersonalData:v10];
    v12 = +[ADCloudKitManager sharedManager];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10027FE58;
    v13[3] = &unk_10051C9D0;
    v13[4] = self;
    v14 = v6;
    [v12 addDictionaryToSharedStore:v10 completion:v13];
  }

  else
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = "[ADMultiUserCloudKitSyncer _syncMeCard:anchorToSave:]";
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Failed to Sync MeCard.", buf, 0xCu);
    }
  }

LABEL_8:
}

- (void)meDeviceChanged:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002800AC;
  v7[3] = &unk_10051E010;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)primaryUserSharedUserIdentifierDidChangeNotification:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002803F8;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)accountDidChange:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100280594;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)enabledBitsChanged:(id)a3
{
  v4 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[ADMultiUserCloudKitSyncer enabledBitsChanged:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002807E4;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_setupMGQUserAssignedDeviceNameNotificationHandler
{
  v3 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v6 = "[ADMultiUserCloudKitSyncer _setupMGQUserAssignedDeviceNameNotificationHandler]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (!self->_mg_notification_token)
  {
    v4 = @"UserAssignedDeviceName";
    [NSArray arrayWithObjects:&v4 count:1];
    self->_mg_notification_token = MGRegisterForUpdates();
  }
}

- (void)syncIdentifiersToCloud
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100280BB8;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)setHomeMemberships:(id)a3 homeMembershipsToDelete:(id)a4 voiceIDSetting:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    queue = self->_queue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100280C9C;
    v11[3] = &unk_10051C958;
    v12 = v8;
    v13 = self;
    v15 = a5;
    v14 = v9;
    dispatch_async(queue, v11);
  }
}

- (void)markHomeMembershipsForDeletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100281164;
  v7[3] = &unk_10051E010;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)syncAudioAppSignalsPayload:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10028136C;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)_homeMembershipsToDelete
{
  homeMembershipsToDelete = self->_homeMembershipsToDelete;
  if (!homeMembershipsToDelete)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = self->_homeMembershipsToDelete;
    self->_homeMembershipsToDelete = v4;

    homeMembershipsToDelete = self->_homeMembershipsToDelete;
  }

  return homeMembershipsToDelete;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ADMultiUserCloudKitSyncer;
  [(ADMultiUserCloudKitSyncer *)&v4 dealloc];
}

- (id)_init
{
  v23.receiver = self;
  v23.super_class = ADMultiUserCloudKitSyncer;
  v2 = [(ADMultiUserCloudKitSyncer *)&v23 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("MultiUserCloudKitSyncerQueue", v3);

    queue = v2->_queue;
    v2->_queue = v4;

    v6 = +[ADPreferences sharedPreferences];
    v7 = [v6 sharedUserIdentifier];
    sharedUserIdentifier = v2->_sharedUserIdentifier;
    v2->_sharedUserIdentifier = v7;

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v2 selector:"enabledBitsChanged:" name:@"ADPreferencesEnabledBitsDidChangeNotification" object:0];
    [v9 addObserver:v2 selector:"primaryUserSharedUserIdentifierDidChangeNotification:" name:@"ADPreferencesSharedUserIdentifierDidChangeNotification" object:0];
    [v9 addObserver:v2 selector:"accountDidChange:" name:@"ADActiveAccountIdentifierDidChangeNotification" object:0];
    [v9 addObserver:v2 selector:"syncIdentifiersToCloud" name:@"ADDeviceUsedForHomePodSetupNotification" object:0];
    v10 = +[ADAssistantDataManager sharedDataManager];
    [v10 addObserver:v2];
    [v10 requestAssistantDataUpdateHighPriority:0];
    v2->_meWasMeDevice = [v6 isMultiUserSyncerMeDevice];
    if (+[AFFeatureFlags isAudioAppPredictionOnHomePodEnabled])
    {
      [v9 addObserver:v2 selector:"syncAudioAppSignalsPayload:" name:@"ADAudioAppSignalsDidChangeNotification" object:0];
    }

    if (!AFIsMultiUserCompanion())
    {
      goto LABEL_12;
    }

    v11 = +[ADMultiUserMeDevice sharedInstance];
    [v9 addObserver:v2 selector:"meDeviceChanged:" name:@"ADMultiUserMeDeviceChangedNotification" object:0];
    v12 = [v11 isMeDevice];
    v2->_meIsMeDevice = [v12 BOOLValue];

    v13 = [v11 meDeviceIDSIdentifier];
    idsIdentifier = v2->_idsIdentifier;
    v2->_idsIdentifier = v13;

    meIsMeDevice = v2->_meIsMeDevice;
    v16 = AFSiriLogContextDaemon;
    v17 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
    if (meIsMeDevice)
    {
      if (v17)
      {
        v18 = v2->_idsIdentifier;
        *buf = 136315394;
        v25 = "[ADMultiUserCloudKitSyncer _init]";
        v26 = 2112;
        v27 = v18;
        v19 = "%s meDevice with IDS identifier %@";
        v20 = v16;
        v21 = 22;
LABEL_10:
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, v19, buf, v21);
      }
    }

    else if (v17)
    {
      *buf = 136315138;
      v25 = "[ADMultiUserCloudKitSyncer _init]";
      v19 = "%s NOT meDevice";
      v20 = v16;
      v21 = 12;
      goto LABEL_10;
    }

LABEL_12:
    [(ADMultiUserCloudKitSyncer *)v2 _setupMGQUserAssignedDeviceNameNotificationHandler];
  }

  return v2;
}

+ (id)sharedService
{
  if (AFIsMultiUserCompanion())
  {
    if (qword_100590780 != -1)
    {
      dispatch_once(&qword_100590780, &stru_100518520);
    }

    v2 = qword_100590778;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end