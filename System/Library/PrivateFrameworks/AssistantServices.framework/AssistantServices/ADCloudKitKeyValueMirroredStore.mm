@interface ADCloudKitKeyValueMirroredStore
- (ADCloudKitKeyValueMirroredStore)init;
- (void)deleteUserData:(id)data;
- (void)fetchDeviceTypesForAllLanguages:(id)languages;
- (void)fetchDeviceTypesForLanguage:(id)language completion:(id)completion;
- (void)mergeDataWithModifiedRecords:(id)records deletedRecordIDs:(id)ds containsAllChanges:(BOOL)changes completion:(id)completion;
- (void)synchronizeKeychainPreferencesWithCompletion:(id)completion;
- (void)synchronizeUsingActivity:(id)activity completion:(id)completion;
- (void)synchronizeWithCompletion:(id)completion;
@end

@implementation ADCloudKitKeyValueMirroredStore

- (void)synchronizeUsingActivity:(id)activity completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 1);
  }
}

- (void)fetchDeviceTypesForAllLanguages:(id)languages
{
  if (languages)
  {
    (*(languages + 2))(languages, 0, 0);
  }
}

- (void)fetchDeviceTypesForLanguage:(id)language completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0);
  }
}

- (void)deleteUserData:(id)data
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADCloudKitKeyValueMirroredStore deleteUserData:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }
}

- (void)mergeDataWithModifiedRecords:(id)records deletedRecordIDs:(id)ds containsAllChanges:(BOOL)changes completion:(id)completion
{
  recordsCopy = records;
  dsCopy = ds;
  completionCopy = completion;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = 136315138;
    v13 = "[ADCloudKitKeyValueMirroredStore mergeDataWithModifiedRecords:deletedRecordIDs:containsAllChanges:completion:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s No merging on mirrored container.", &v12, 0xCu);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)synchronizeKeychainPreferencesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v33 = "[ADCloudKitKeyValueMirroredStore synchronizeKeychainPreferencesWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v6 = objc_opt_new();
  v7 = sub_10029AE0C();
  modificationDateCache = self->_modificationDateCache;
  self->_modificationDateCache = v7;

  v9 = sub_10029AD04();
  localKeychainPreferenceCache = self->_localKeychainPreferenceCache;
  self->_localKeychainPreferenceCache = v9;

  v11 = sub_10029A9C8();
  if ([v11 containsObject:@"User Identifier"])
  {
    v12 = +[ADPreferences sharedPreferences];
    sharedUserIdentifier = [v12 sharedUserIdentifier];

    v14 = [(NSMutableDictionary *)self->_localKeychainPreferenceCache objectForKey:@"User Identifier"];
    v15 = [sharedUserIdentifier isEqual:v14];

    if ((v15 & 1) == 0)
    {
      if (sharedUserIdentifier)
      {
        [(NSMutableDictionary *)self->_localKeychainPreferenceCache setObject:sharedUserIdentifier forKey:@"User Identifier"];
        [v6 setObject:sharedUserIdentifier forKey:@"User Identifier"];
      }

      else
      {
        v16 = +[NSNull null];
        [v6 setObject:v16 forKey:@"User Identifier"];
      }

      v17 = self->_modificationDateCache;
      v18 = +[NSDate date];
      [(NSMutableDictionary *)v17 setObject:v18 forKey:@"User Identifier"];
    }
  }

  if ([v11 containsObject:@"Logging User Identifier"])
  {
    v19 = +[ADPreferences sharedPreferences];
    loggingSharedUserIdentifier = [v19 loggingSharedUserIdentifier];

    v21 = [(NSMutableDictionary *)self->_localKeychainPreferenceCache objectForKey:@"Logging User Identifier"];
    v22 = [loggingSharedUserIdentifier isEqual:v21];

    if ((v22 & 1) == 0)
    {
      if (loggingSharedUserIdentifier)
      {
        [(NSMutableDictionary *)self->_localKeychainPreferenceCache setObject:loggingSharedUserIdentifier forKey:@"Logging User Identifier"];
        [v6 setObject:loggingSharedUserIdentifier forKey:@"Logging User Identifier"];
      }

      else
      {
        v23 = +[NSNull null];
        [v6 setObject:v23 forKey:@"Logging User Identifier"];
      }

      v24 = self->_modificationDateCache;
      v25 = +[NSDate date];
      [(NSMutableDictionary *)v24 setObject:v25 forKey:@"Logging User Identifier"];
    }
  }

  if ([v6 count])
  {
    allKeys = [v6 allKeys];
    v27 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v33 = "[ADCloudKitKeyValueMirroredStore synchronizeKeychainPreferencesWithCompletion:]";
      v34 = 2112;
      v35 = allKeys;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s Saving keys: %@", buf, 0x16u);
    }

    v28 = +[ADCloudKitManager sharedManager];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10019B8AC;
    v30[3] = &unk_10051D5B0;
    v31 = allKeys;
    v29 = allKeys;
    [v28 saveKeyValueRecordsWithDictionary:v6 mirror:1 completion:v30];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1);
  }
}

- (void)synchronizeWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v119 = "[ADCloudKitKeyValueMirroredStore synchronizeWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  AFBackedUpPreferencesSynchronize();
  v5 = sub_10029AAC4();
  v6 = objc_opt_new();
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v113 objects:v124 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v114;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v114 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v113 + 1) + 8 * i);
        v13 = [v7 objectForKey:v12];
        if (v13)
        {
          [v6 setObject:v13 forKey:v12];
        }

        else
        {
          v14 = +[NSNull null];
          [v6 setObject:v14 forKey:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v113 objects:v124 count:16];
    }

    while (v9);
  }

  if ([v6 count])
  {
    v110 = completionCopy;
    v15 = kAFSessionLanguage;
    v16 = [v6 objectForKey:kAFSessionLanguage];

    v17 = kAFOutputVoice;
    v18 = [v6 objectForKey:kAFOutputVoice];
    v19 = v16 | v18;

    if (!v19)
    {
      goto LABEL_173;
    }

    v20 = [v6 objectForKey:v15];
    v21 = sub_1002984B0(v20);
    v108 = [v6 objectForKey:v17];
    v22 = sub_100298408(v108, v21);
    v107 = v22;
    if (!v22)
    {
      v31 = AFSiriLogContextDaemon;
      v32 = v108;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v119 = "[ADCloudKitKeyValueMirroredStore synchronizeWithCompletion:]";
        v120 = 2112;
        v121 = v20;
        v122 = 2112;
        v123 = v108;
        _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s Not synching language (%@) and output voice(%@) due to mismatch", buf, 0x20u);
      }

      v117[0] = v15;
      v117[1] = v17;
      v24 = [NSArray arrayWithObjects:v117 count:2];
      [v6 removeObjectsForKeys:v24];
      goto LABEL_172;
    }

    v23 = v20;
    v24 = sub_100298580(v22);
    dictionaryRepresentation = [v24 dictionaryRepresentation];
    v26 = @"Output Voice v14";
    v109 = dictionaryRepresentation;
    [v6 setObject:dictionaryRepresentation forKey:@"Output Voice v14"];

    if (sub_100298670(v24, v21))
    {
      if (v16)
      {
        v20 = v23;
        v27 = sub_1002999C0(v21);
        v28 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v119 = "[ADCloudKitKeyValueMirroredStore synchronizeWithCompletion:]";
          v120 = 2112;
          v121 = v21;
          v122 = 2112;
          v123 = v27;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%s Synching default voice for version 1 sync clients (%@) : %@", buf, 0x20u);
        }

        dictionaryRepresentation2 = [v27 dictionaryRepresentation];
        [v6 setObject:dictionaryRepresentation2 forKey:v17];

        v30 = v109;
        if ((sub_100299798(v24, v21) & 1) == 0)
        {
          goto LABEL_40;
        }

LABEL_29:
        v34 = sub_1002999C0(v21);
        v35 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v119 = "[ADCloudKitKeyValueMirroredStore synchronizeWithCompletion:]";
          v120 = 2112;
          v121 = v21;
          v122 = 2112;
          v123 = v34;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "%s Synching default voice for version 2 sync clients (%@) : %@", buf, 0x20u);
        }

        dictionaryRepresentation3 = [v34 dictionaryRepresentation];
        [v6 setObject:dictionaryRepresentation3 forKey:@"Output Voice v2"];

        v30 = v109;
        if (sub_100299898(v24, v21))
        {
LABEL_44:
          v40 = sub_1002999C0(v21);
          v41 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            *buf = 136315650;
            v119 = "[ADCloudKitKeyValueMirroredStore synchronizeWithCompletion:]";
            v120 = 2112;
            v121 = v21;
            v122 = 2112;
            v123 = v40;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "%s Synching default voice for version 3 sync clients (%@) : %@", buf, 0x20u);
          }

          dictionaryRepresentation4 = [v40 dictionaryRepresentation];
          [v6 setObject:dictionaryRepresentation4 forKey:@"Output Voice completionCopy"];

          v30 = v109;
          if ((sub_1002988D0(v24, v21) & 1) == 0)
          {
            goto LABEL_63;
          }

LABEL_52:
          v44 = sub_1002999C0(v21);
          v45 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
          {
            *buf = 136315650;
            v119 = "[ADCloudKitKeyValueMirroredStore synchronizeWithCompletion:]";
            v120 = 2112;
            v121 = v21;
            v122 = 2112;
            v123 = v44;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "%s Synching default voice for version 4 sync clients (%@) : %@", buf, 0x20u);
          }

          dictionaryRepresentation5 = [v44 dictionaryRepresentation];
          [v6 setObject:dictionaryRepresentation5 forKey:@"Output Voice v4"];

          v30 = v109;
          if (sub_100298A54(v24, v21))
          {
LABEL_67:
            v50 = sub_100299AA0(v21);
            v51 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
            {
              *buf = 136315650;
              v119 = "[ADCloudKitKeyValueMirroredStore synchronizeWithCompletion:]";
              v120 = 2112;
              v121 = v21;
              v122 = 2112;
              v123 = v50;
              _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "%s Synching default voice for version 5 sync clients (%@) : %@", buf, 0x20u);
            }

            dictionaryRepresentation6 = [v50 dictionaryRepresentation];
            [v6 setObject:dictionaryRepresentation6 forKey:@"Output Voice v5"];

            v30 = v109;
            if ((sub_100298AE4(v24, v21) & 1) == 0)
            {
              goto LABEL_86;
            }

LABEL_75:
            v54 = sub_100299AA0(v21);
            v55 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
            {
              *buf = 136315650;
              v119 = "[ADCloudKitKeyValueMirroredStore synchronizeWithCompletion:]";
              v120 = 2112;
              v121 = v21;
              v122 = 2112;
              v123 = v54;
              _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "%s Synching default voice for version 6 sync clients (%@) : %@", buf, 0x20u);
            }

            dictionaryRepresentation7 = [v54 dictionaryRepresentation];
            [v6 setObject:dictionaryRepresentation7 forKey:@"Output Voice v6"];

            v30 = v109;
            if (sub_100298D74(v24, v21))
            {
LABEL_90:
              v60 = sub_100299BF4(v21);
              v61 = AFSiriLogContextDaemon;
              if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
              {
                *buf = 136315650;
                v119 = "[ADCloudKitKeyValueMirroredStore synchronizeWithCompletion:]";
                v120 = 2112;
                v121 = v21;
                v122 = 2112;
                v123 = v60;
                _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_INFO, "%s Synching default voice for version 7 sync clients (%@) : %@", buf, 0x20u);
              }

              dictionaryRepresentation8 = [v60 dictionaryRepresentation];
              [v6 setObject:dictionaryRepresentation8 forKey:@"Output Voice v7"];

              v30 = v109;
              if ((sub_100298E04(v24, v21) & 1) == 0)
              {
                goto LABEL_109;
              }

LABEL_98:
              v64 = sub_100299D4C(v21);
              v65 = AFSiriLogContextDaemon;
              if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
              {
                *buf = 136315650;
                v119 = "[ADCloudKitKeyValueMirroredStore synchronizeWithCompletion:]";
                v120 = 2112;
                v121 = v21;
                v122 = 2112;
                v123 = v64;
                _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_INFO, "%s Synching default voice for version 8 sync clients (%@) : %@", buf, 0x20u);
              }

              dictionaryRepresentation9 = [v64 dictionaryRepresentation];
              [v6 setObject:dictionaryRepresentation9 forKey:@"Output Voice v8"];

              v30 = v109;
              if (sub_100298ED0(v24, v21))
              {
LABEL_113:
                v70 = sub_100299EDC(v21);
                v71 = AFSiriLogContextDaemon;
                if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315650;
                  v119 = "[ADCloudKitKeyValueMirroredStore synchronizeWithCompletion:]";
                  v120 = 2112;
                  v121 = v21;
                  v122 = 2112;
                  v123 = v70;
                  _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_INFO, "%s Synching default voice for version 9 sync clients (%@) : %@", buf, 0x20u);
                }

                dictionaryRepresentation10 = [v70 dictionaryRepresentation];
                [v6 setObject:dictionaryRepresentation10 forKey:@"Output Voice v9"];

                v30 = v109;
                if ((sub_100299194(v24, v21) & 1) == 0)
                {
                  goto LABEL_132;
                }

LABEL_121:
                v74 = sub_10029A0CC(v21);
                v75 = AFSiriLogContextDaemon;
                if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315650;
                  v119 = "[ADCloudKitKeyValueMirroredStore synchronizeWithCompletion:]";
                  v120 = 2112;
                  v121 = v21;
                  v122 = 2112;
                  v123 = v74;
                  _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_INFO, "%s Synching default voice for version 10 sync clients (%@) : %@", buf, 0x20u);
                }

                dictionaryRepresentation11 = [v74 dictionaryRepresentation];
                [v6 setObject:dictionaryRepresentation11 forKey:@"Output Voice v10"];

                v30 = v109;
                if (sub_100299224(v24, v21))
                {
LABEL_136:
                  v80 = sub_10029A220(v21);
                  v81 = AFSiriLogContextDaemon;
                  if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
                  {
                    *buf = 136315650;
                    v119 = "[ADCloudKitKeyValueMirroredStore synchronizeWithCompletion:]";
                    v120 = 2112;
                    v121 = v21;
                    v122 = 2112;
                    v123 = v80;
                    _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_INFO, "%s Synching default voice for version 11 sync clients (%@) : %@", buf, 0x20u);
                  }

                  dictionaryRepresentation12 = [v80 dictionaryRepresentation];
                  [v6 setObject:dictionaryRepresentation12 forKey:@"Output Voice v11"];

                  v30 = v109;
                  if ((sub_10029939C(v24, v21) & 1) == 0)
                  {
                    goto LABEL_155;
                  }

LABEL_144:
                  v84 = sub_10029A384(v21);
                  v85 = AFSiriLogContextDaemon;
                  if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
                  {
                    *buf = 136315650;
                    v119 = "[ADCloudKitKeyValueMirroredStore synchronizeWithCompletion:]";
                    v120 = 2112;
                    v121 = v21;
                    v122 = 2112;
                    v123 = v84;
                    _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_INFO, "%s Synching default voice for version 12 sync clients (%@) : %@", buf, 0x20u);
                  }

                  dictionaryRepresentation13 = [v84 dictionaryRepresentation];
                  [v6 setObject:dictionaryRepresentation13 forKey:@"Output Voice v12"];

                  v30 = v109;
                  if (sub_100299970(v24, v21))
                  {
                    goto LABEL_159;
                  }

                  goto LABEL_164;
                }

                goto LABEL_140;
              }

              goto LABEL_117;
            }

            goto LABEL_94;
          }

          goto LABEL_71;
        }

        goto LABEL_48;
      }

      v37 = AFSiriLogContextDaemon;
      v20 = v23;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v119 = "[ADCloudKitKeyValueMirroredStore synchronizeWithCompletion:]";
        v120 = 2112;
        v121 = v21;
        v122 = 2112;
        v123 = v24;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "%s Skipping sync of version 1 voice for language (%@) : %@", buf, 0x20u);
      }

      [v6 removeObjectForKey:v17];
      v30 = v109;
      if (sub_100299798(v24, v21))
      {
LABEL_36:
        v38 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v119 = "[ADCloudKitKeyValueMirroredStore synchronizeWithCompletion:]";
          v120 = 2112;
          v121 = v21;
          v122 = 2112;
          v123 = v24;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "%s Skipping sync of version 2 voice for language (%@) : %@", buf, 0x20u);
        }

        [v6 removeObjectForKey:@"Output Voice v2"];
        if (sub_100299898(v24, v21))
        {
          goto LABEL_56;
        }

        goto LABEL_48;
      }
    }

    else
    {
      v33 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v119 = "[ADCloudKitKeyValueMirroredStore synchronizeWithCompletion:]";
        v120 = 2112;
        v121 = v21;
        v122 = 2112;
        v123 = v24;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%s Synching voice for version 1 sync clients as well (%@) : %@", buf, 0x20u);
      }

      v30 = dictionaryRepresentation;
      [v6 setObject:dictionaryRepresentation forKey:v17];
      v20 = v23;
      if (sub_100299798(v24, v21))
      {
        if (v16)
        {
          goto LABEL_29;
        }

        goto LABEL_36;
      }
    }

LABEL_40:
    v39 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v119 = "[ADCloudKitKeyValueMirroredStore synchronizeWithCompletion:]";
      v120 = 2112;
      v121 = v21;
      v122 = 2112;
      v123 = v24;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "%s Synching voice for version 2 sync clients as well (%@) : %@", buf, 0x20u);
    }

    [v6 setObject:v30 forKey:@"Output Voice v2"];
    if (sub_100299898(v24, v21))
    {
      if (v16)
      {
        goto LABEL_44;
      }

LABEL_56:
      v47 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v119 = "[ADCloudKitKeyValueMirroredStore synchronizeWithCompletion:]";
        v120 = 2112;
        v121 = v21;
        v122 = 2112;
        v123 = v24;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "%s Skipping sync of version 3 voice for language (%@) : %@", buf, 0x20u);
      }

      [v6 removeObjectForKey:@"Output Voice completionCopy"];
      if (sub_1002988D0(v24, v21))
      {
        goto LABEL_59;
      }

      goto LABEL_63;
    }

LABEL_48:
    v43 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v119 = "[ADCloudKitKeyValueMirroredStore synchronizeWithCompletion:]";
      v120 = 2112;
      v121 = v21;
      v122 = 2112;
      v123 = v24;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "%s Synching voice for version 3 sync clients as well (%@) : %@", buf, 0x20u);
    }

    [v6 setObject:v30 forKey:@"Output Voice completionCopy"];
    if (sub_1002988D0(v24, v21))
    {
      if (v16)
      {
        goto LABEL_52;
      }

LABEL_59:
      v48 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v119 = "[ADCloudKitKeyValueMirroredStore synchronizeWithCompletion:]";
        v120 = 2112;
        v121 = v21;
        v122 = 2112;
        v123 = v24;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "%s Skipping sync of version 4 voice for language (%@) : %@", buf, 0x20u);
      }

      [v6 removeObjectForKey:@"Output Voice v4"];
      if (sub_100298A54(v24, v21))
      {
        goto LABEL_79;
      }

      goto LABEL_71;
    }

LABEL_63:
    v49 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v119 = "[ADCloudKitKeyValueMirroredStore synchronizeWithCompletion:]";
      v120 = 2112;
      v121 = v21;
      v122 = 2112;
      v123 = v24;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "%s Synching voice for version 4 sync clients as well (%@) : %@", buf, 0x20u);
    }

    [v6 setObject:v30 forKey:@"Output Voice v4"];
    if (sub_100298A54(v24, v21))
    {
      if (v16)
      {
        goto LABEL_67;
      }

LABEL_79:
      v57 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v119 = "[ADCloudKitKeyValueMirroredStore synchronizeWithCompletion:]";
        v120 = 2112;
        v121 = v21;
        v122 = 2112;
        v123 = v24;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "%s Skipping sync of version 5 voice for language (%@) : %@", buf, 0x20u);
      }

      [v6 removeObjectForKey:@"Output Voice v5"];
      if (sub_100298AE4(v24, v21))
      {
        goto LABEL_82;
      }

      goto LABEL_86;
    }

LABEL_71:
    v53 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v119 = "[ADCloudKitKeyValueMirroredStore synchronizeWithCompletion:]";
      v120 = 2112;
      v121 = v21;
      v122 = 2112;
      v123 = v24;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "%s Synching voice for version 5 sync clients as well (%@) : %@", buf, 0x20u);
    }

    [v6 setObject:v30 forKey:@"Output Voice v5"];
    if (sub_100298AE4(v24, v21))
    {
      if (v16)
      {
        goto LABEL_75;
      }

LABEL_82:
      v58 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v119 = "[ADCloudKitKeyValueMirroredStore synchronizeWithCompletion:]";
        v120 = 2112;
        v121 = v21;
        v122 = 2112;
        v123 = v24;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "%s Skipping sync of version 6 voice for language (%@) : %@", buf, 0x20u);
      }

      [v6 removeObjectForKey:@"Output Voice v6"];
      if (sub_100298D74(v24, v21))
      {
        goto LABEL_102;
      }

      goto LABEL_94;
    }

LABEL_86:
    v59 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v119 = "[ADCloudKitKeyValueMirroredStore synchronizeWithCompletion:]";
      v120 = 2112;
      v121 = v21;
      v122 = 2112;
      v123 = v24;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "%s Synching voice for version 6 sync clients as well (%@) : %@", buf, 0x20u);
    }

    [v6 setObject:v30 forKey:@"Output Voice v6"];
    if (sub_100298D74(v24, v21))
    {
      if (v16)
      {
        goto LABEL_90;
      }

LABEL_102:
      v67 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v119 = "[ADCloudKitKeyValueMirroredStore synchronizeWithCompletion:]";
        v120 = 2112;
        v121 = v21;
        v122 = 2112;
        v123 = v24;
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "%s Skipping sync of version 7 voice for language (%@) : %@", buf, 0x20u);
      }

      [v6 removeObjectForKey:@"Output Voice v7"];
      if (sub_100298E04(v24, v21))
      {
        goto LABEL_105;
      }

      goto LABEL_109;
    }

LABEL_94:
    v63 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v119 = "[ADCloudKitKeyValueMirroredStore synchronizeWithCompletion:]";
      v120 = 2112;
      v121 = v21;
      v122 = 2112;
      v123 = v24;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "%s Synching voice for version 7 sync clients as well (%@) : %@", buf, 0x20u);
    }

    [v6 setObject:v30 forKey:@"Output Voice v7"];
    if (sub_100298E04(v24, v21))
    {
      if (v16)
      {
        goto LABEL_98;
      }

LABEL_105:
      v68 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v119 = "[ADCloudKitKeyValueMirroredStore synchronizeWithCompletion:]";
        v120 = 2112;
        v121 = v21;
        v122 = 2112;
        v123 = v24;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_INFO, "%s Skipping sync of version 8 voice for language (%@) : %@", buf, 0x20u);
      }

      [v6 removeObjectForKey:@"Output Voice v8"];
      if (sub_100298ED0(v24, v21))
      {
        goto LABEL_125;
      }

      goto LABEL_117;
    }

LABEL_109:
    v69 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v119 = "[ADCloudKitKeyValueMirroredStore synchronizeWithCompletion:]";
      v120 = 2112;
      v121 = v21;
      v122 = 2112;
      v123 = v24;
      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "%s Synching voice for version 8 sync clients as well (%@) : %@", buf, 0x20u);
    }

    [v6 setObject:v30 forKey:@"Output Voice v8"];
    if (sub_100298ED0(v24, v21))
    {
      if (v16)
      {
        goto LABEL_113;
      }

LABEL_125:
      v77 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v119 = "[ADCloudKitKeyValueMirroredStore synchronizeWithCompletion:]";
        v120 = 2112;
        v121 = v21;
        v122 = 2112;
        v123 = v24;
        _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_INFO, "%s Skipping sync of version 9 voice for language (%@) : %@", buf, 0x20u);
      }

      [v6 removeObjectForKey:@"Output Voice v9"];
      if (sub_100299194(v24, v21))
      {
        goto LABEL_128;
      }

      goto LABEL_132;
    }

LABEL_117:
    v73 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v119 = "[ADCloudKitKeyValueMirroredStore synchronizeWithCompletion:]";
      v120 = 2112;
      v121 = v21;
      v122 = 2112;
      v123 = v24;
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_INFO, "%s Synching voice for version 9 sync clients as well (%@) : %@", buf, 0x20u);
    }

    [v6 setObject:v30 forKey:@"Output Voice v9"];
    if (sub_100299194(v24, v21))
    {
      if (v16)
      {
        goto LABEL_121;
      }

LABEL_128:
      v78 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v119 = "[ADCloudKitKeyValueMirroredStore synchronizeWithCompletion:]";
        v120 = 2112;
        v121 = v21;
        v122 = 2112;
        v123 = v24;
        _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_INFO, "%s Skipping sync of version 10 voice for language (%@) : %@", buf, 0x20u);
      }

      [v6 removeObjectForKey:@"Output Voice v10"];
      if (sub_100299224(v24, v21))
      {
        goto LABEL_148;
      }

      goto LABEL_140;
    }

LABEL_132:
    v79 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v119 = "[ADCloudKitKeyValueMirroredStore synchronizeWithCompletion:]";
      v120 = 2112;
      v121 = v21;
      v122 = 2112;
      v123 = v24;
      _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_INFO, "%s Synching voice for version 10 sync clients as well (%@) : %@", buf, 0x20u);
    }

    [v6 setObject:v30 forKey:@"Output Voice v10"];
    if (sub_100299224(v24, v21))
    {
      if (v16)
      {
        goto LABEL_136;
      }

LABEL_148:
      v87 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v119 = "[ADCloudKitKeyValueMirroredStore synchronizeWithCompletion:]";
        v120 = 2112;
        v121 = v21;
        v122 = 2112;
        v123 = v24;
        _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_INFO, "%s Skipping sync of version 11 voice for language (%@) : %@", buf, 0x20u);
      }

      [v6 removeObjectForKey:@"Output Voice v11"];
      if (sub_10029939C(v24, v21))
      {
        goto LABEL_151;
      }

      goto LABEL_155;
    }

LABEL_140:
    v83 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v119 = "[ADCloudKitKeyValueMirroredStore synchronizeWithCompletion:]";
      v120 = 2112;
      v121 = v21;
      v122 = 2112;
      v123 = v24;
      _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_INFO, "%s Synching voice for version 11 sync clients as well (%@) : %@", buf, 0x20u);
    }

    [v6 setObject:v30 forKey:@"Output Voice v11"];
    if (sub_10029939C(v24, v21))
    {
      if (v16)
      {
        goto LABEL_144;
      }

LABEL_151:
      v88 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v119 = "[ADCloudKitKeyValueMirroredStore synchronizeWithCompletion:]";
        v120 = 2112;
        v121 = v21;
        v122 = 2112;
        v123 = v24;
        _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_INFO, "%s Skipping sync of version 12 voice for language (%@) : %@", buf, 0x20u);
      }

      [v6 removeObjectForKey:@"Output Voice v12"];
      if (sub_100299970(v24, v21))
      {
LABEL_167:
        v101 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v119 = "[ADCloudKitKeyValueMirroredStore synchronizeWithCompletion:]";
          v120 = 2112;
          v121 = v21;
          v122 = 2112;
          v123 = v24;
          _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_INFO, "%s Skipping sync of version 13 voice for language (%@) : %@", buf, 0x20u);
        }

        [v6 removeObjectForKey:@"Output Voice v13"];
LABEL_170:
        v32 = v108;
LABEL_171:

LABEL_172:
LABEL_173:
        completionCopy = v110;
        if ([v6 count])
        {
          allKeys = [v6 allKeys];
          v103 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v119 = "[ADCloudKitKeyValueMirroredStore synchronizeWithCompletion:]";
            v120 = 2112;
            v121 = allKeys;
            _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_INFO, "%s Saving keys: %@", buf, 0x16u);
          }

          v104 = +[ADCloudKitManager sharedManager];
          v111[0] = _NSConcreteStackBlock;
          v111[1] = 3221225472;
          v111[2] = sub_10019D7C4;
          v111[3] = &unk_10051D5B0;
          v105 = allKeys;
          v112 = v105;
          [v104 saveKeyValueRecordsWithDictionary:v6 mirror:1 completion:v111];
        }

        goto LABEL_177;
      }

LABEL_164:
      v100 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v119 = "[ADCloudKitKeyValueMirroredStore synchronizeWithCompletion:]";
        v120 = 2112;
        v121 = v21;
        v122 = 2112;
        v123 = v24;
        _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_INFO, "%s Synching voice for version 13 sync clients as well (%@) : %@", buf, 0x20u);
      }

      [v6 setObject:v30 forKey:@"Output Voice v13"];
      goto LABEL_170;
    }

LABEL_155:
    v89 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v119 = "[ADCloudKitKeyValueMirroredStore synchronizeWithCompletion:]";
      v120 = 2112;
      v121 = v21;
      v122 = 2112;
      v123 = v24;
      _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_INFO, "%s Synching voice for version 12 sync clients as well (%@) : %@", buf, 0x20u);
    }

    [v6 setObject:v30 forKey:@"Output Voice v12"];
    if (sub_100299970(v24, v21))
    {
      if (v16)
      {
LABEL_159:
        v106 = v20;
        v90 = sub_10029A384(v21);
        gender = [v90 gender];
        languageCode = [v90 languageCode];
        v93 = +[AFLocalization sharedInstance];
        v94 = [v93 voiceNamesForOutputLanguageCode:languageCode gender:gender];
        firstObject = [v94 firstObject];

        isCustom = [v90 isCustom];
        if ([languageCode isEqualToString:@"pt-PT"])
        {

          isCustom = 0;
          firstObject = @"joana";
          gender = 2;
        }

        v97 = [[AFVoiceInfo alloc] initWithLanguageCode:languageCode gender:gender isCustom:isCustom name:firstObject footprint:0 contentVersion:0 masteredVersion:0];

        v98 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v119 = "[ADCloudKitKeyValueMirroredStore synchronizeWithCompletion:]";
          v120 = 2112;
          v121 = v21;
          v122 = 2112;
          v123 = v97;
          _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_INFO, "%s Synching default voice for version 13 sync clients (%@) : %@", buf, 0x20u);
        }

        dictionaryRepresentation14 = [v97 dictionaryRepresentation];
        [v6 setObject:dictionaryRepresentation14 forKey:@"Output Voice v13"];

        v20 = v106;
        v32 = v108;
        v30 = v109;
        goto LABEL_171;
      }

      goto LABEL_167;
    }

    goto LABEL_164;
  }

LABEL_177:
  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1);
  }
}

- (ADCloudKitKeyValueMirroredStore)init
{
  v6.receiver = self;
  v6.super_class = ADCloudKitKeyValueMirroredStore;
  v2 = [(ADCloudKitKeyValueMirroredStore *)&v6 init];
  if (v2)
  {
    v7 = @"AssistantKeyValueRecord";
    v3 = [NSArray arrayWithObjects:&v7 count:1];
    supportedRecordTypes = v2->_supportedRecordTypes;
    v2->_supportedRecordTypes = v3;
  }

  return v2;
}

@end