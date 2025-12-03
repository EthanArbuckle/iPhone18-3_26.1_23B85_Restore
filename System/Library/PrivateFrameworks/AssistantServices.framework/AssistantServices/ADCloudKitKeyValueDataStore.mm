@interface ADCloudKitKeyValueDataStore
- (ADCloudKitKeyValueDataStore)init;
- (BOOL)hasSetUpRecordZoneSubscription;
- (CKServerChangeToken)serverChangeToken;
- (void)_mergeDataWithModifiedRecords:(id)records deletedRecordIDs:(id)ds containsAllChanges:(BOOL)changes completion:(id)completion;
- (void)deleteUserData:(id)data;
- (void)fetchDeviceTypesForAllLanguages:(id)languages;
- (void)fetchDeviceTypesForLanguage:(id)language completion:(id)completion;
- (void)mergeDataWithModifiedRecords:(id)records deletedRecordIDs:(id)ds containsAllChanges:(BOOL)changes completion:(id)completion;
- (void)setHasSetUpRecordZoneSubscription:(BOOL)subscription;
- (void)setServerChangeToken:(id)token;
- (void)synchronizeKeychainPreferencesWithCompletion:(id)completion;
- (void)synchronizeUsingActivity:(id)activity completion:(id)completion;
- (void)synchronizeWithCompletion:(id)completion;
- (void)updateSharedUserIdentifierPostCloudSync;
@end

@implementation ADCloudKitKeyValueDataStore

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
  dataCopy = data;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "[ADCloudKitKeyValueDataStore deleteUserData:]";
    v14 = 2112;
    v15 = dataCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s userId = %@", &v12, 0x16u);
  }

  [(ADCloudKitKeyValueDataStore *)self setServerChangeToken:0];
  sub_10029A7B0(0, kAFModificationDates);
  AFBackedUpPreferencesSynchronize();
  v6 = sub_10029AE0C();
  modificationDateCache = self->_modificationDateCache;
  self->_modificationDateCache = v6;

  v8 = [(NSMutableDictionary *)self->_localKeychainPreferenceCache objectForKey:@"User Identifier"];
  if (v8)
  {

LABEL_6:
    v10 = +[ADCloudKitManager sharedManager];
    [v10 ignoreNextNotification:@"ADPreferencesSharedUserIdentifierDidChangeNotification"];

    v11 = +[ADPreferences sharedPreferences];
    [v11 setSharedUserIdentifier:0 loggingSharedUserIdentifier:0];

    [(NSMutableDictionary *)self->_localKeychainPreferenceCache removeObjectForKey:@"User Identifier"];
    [(NSMutableDictionary *)self->_localKeychainPreferenceCache removeObjectForKey:@"Logging User Identifier"];
    goto LABEL_7;
  }

  v9 = [(NSMutableDictionary *)self->_localKeychainPreferenceCache objectForKey:@"Logging User Identifier"];

  if (v9)
  {
    goto LABEL_6;
  }

LABEL_7:
}

- (void)_mergeDataWithModifiedRecords:(id)records deletedRecordIDs:(id)ds containsAllChanges:(BOOL)changes completion:(id)completion
{
  changesCopy = changes;
  recordsCopy = records;
  dsCopy = ds;
  completionCopy = completion;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [recordsCopy count];
    v13 = [dsCopy count];
    v14 = @"partial";
    *buf = 136315906;
    v237 = "[ADCloudKitKeyValueDataStore _mergeDataWithModifiedRecords:deletedRecordIDs:containsAllChanges:completion:]";
    if (changesCopy)
    {
      v14 = @"full";
    }

    v238 = 2048;
    v239 = v12;
    v240 = 2048;
    v241 = v13;
    v242 = 2112;
    v243 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Merging %zd modified records, %zd deleted records, %@ sync", buf, 0x2Au);
  }

  log = objc_opt_new();
  v187 = objc_opt_new();
  v184 = sub_10029A9C8();
  hasMergedAllRecords = self->_hasMergedAllRecords;
  v176 = changesCopy;
  if (changesCopy)
  {
    allKeys = [(NSMutableDictionary *)self->_localPreferenceCache allKeys];
    if (allKeys)
    {
      v16 = [NSMutableSet setWithArray:allKeys];
    }

    else
    {
      v16 = 0;
    }

    [v16 addObject:@"User Identifier"];
    [v16 addObject:@"Logging User Identifier"];
    allKeys2 = [(NSMutableDictionary *)self->_modificationDateCache allKeys];

    if (allKeys2)
    {
      v203 = [NSMutableSet setWithArray:allKeys2];
    }

    else
    {
      v203 = 0;
    }

    v199 = v16;
    self->_hasMergedAllRecords = 1;
  }

  else
  {
    v203 = 0;
    v199 = 0;
  }

  v191 = +[ADPreferences sharedPreferences];
  isUsingDefaultLanguageSettings = [v191 isUsingDefaultLanguageSettings];
  v225 = 0u;
  v226 = 0u;
  v227 = 0u;
  v228 = 0u;
  obj = recordsCopy;
  v19 = [obj countByEnumeratingWithState:&v225 objects:v249 count:16];
  if (v19)
  {
    v21 = v19;
    v195 = 0;
    v179 = 0;
    v190 = 0;
    *&v183[8] = 0;
    v22 = *v226;
    *v183 = isUsingDefaultLanguageSettings ^ 1;
    v197 = 2;
    v192 = kAFOutputVoice;
    v185 = kAFSessionLanguage;
    *&v20 = 136316418;
    v175 = v20;
    while (1)
    {
      v23 = 0;
      do
      {
        if (*v226 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v225 + 1) + 8 * v23);
        recordType = [v24 recordType];
        firstObject = [(NSArray *)self->_supportedRecordTypes firstObject];
        v27 = [recordType isEqualToString:firstObject];

        if (v27)
        {
          recordID = [v24 recordID];
          recordName = [recordID recordName];

          v30 = [recordName length];
          v31 = AFSiriLogContextDaemon;
          v32 = os_log_type_enabled(v31, OS_LOG_TYPE_INFO);
          if (v30)
          {
            if (v32)
            {
              *buf = 136315394;
              v237 = "[ADCloudKitKeyValueDataStore _mergeDataWithModifiedRecords:deletedRecordIDs:containsAllChanges:completion:]";
              v238 = 2112;
              v239 = recordName;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "%s Merging record : (%@)", buf, 0x16u);
            }

            v33 = recordName;
            if (qword_1005907B0 != -1)
            {
              dispatch_once(&qword_1005907B0, &stru_100519548);
            }

            v34 = [qword_1005907A8 objectForKeyedSubscript:v33];
            v35 = v34;
            if (v34)
            {
              integerValue = [v34 integerValue];
            }

            else
            {
              integerValue = 2;
            }

            v40 = v197;
            if (integerValue > v197)
            {
              v40 = integerValue;
            }

            v197 = v40;
            if ([v33 isEqualToString:v192])
            {
              v41 = AFSiriLogContextDaemon;
              if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
              {
                *buf = 136315394;
                v237 = "[ADCloudKitKeyValueDataStore _mergeDataWithModifiedRecords:deletedRecordIDs:containsAllChanges:completion:]";
                v238 = 2112;
                v239 = v33;
                _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "%s Ignoring changes to previous version : (%@)", buf, 0x16u);
              }

              v31 = v190;
              recordName = v33;
              v190 = v24;
              goto LABEL_46;
            }

            v42 = @"Output Voice v2";
            v43 = [v33 isEqualToString:@"Output Voice v2"];

            if (v43)
            {
              v31 = AFSiriLogContextDaemon;
              if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
              {
LABEL_44:
                *buf = 136315394;
                v237 = "[ADCloudKitKeyValueDataStore _mergeDataWithModifiedRecords:deletedRecordIDs:containsAllChanges:completion:]";
                v238 = 2112;
                v239 = v33;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "%s Ignoring changes to previous version : (%@)", buf, 0x16u);
              }

LABEL_45:
              recordName = v33;
LABEL_46:

              goto LABEL_47;
            }

            v44 = @"Output Voice v3";
            v45 = [v33 isEqualToString:@"Output Voice v3"];

            if (v45)
            {
              v31 = AFSiriLogContextDaemon;
              if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
              {
                goto LABEL_44;
              }

              goto LABEL_45;
            }

            if ([v33 isEqualToString:v185])
            {
              v46 = v24;

              *&v183[4] = v46;
            }

            recordName = sub_10029A974(v33);

            if ([v184 containsObject:recordName])
            {
              [v199 removeObject:recordName];
              [v203 removeObject:recordName];
              v248[0] = objc_opt_class();
              v248[1] = objc_opt_class();
              v248[2] = objc_opt_class();
              v248[3] = objc_opt_class();
              v248[4] = objc_opt_class();
              v47 = [NSArray arrayWithObjects:v248 count:5];
              v48 = [NSSet setWithArray:v47];
              v31 = [v24 _ad_dataOfClasses:v48];

              v49 = [(NSMutableDictionary *)self->_modificationDateCache objectForKey:recordName];
              if (!((v49 == 0) | v183[0] & 1) && !hasMergedAllRecords && (([recordName isEqualToString:v192]& 1) != 0 || [recordName isEqualToString:v185]))
              {
                v50 = AFSiriLogContextDaemon;
                if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315394;
                  v237 = "[ADCloudKitKeyValueDataStore _mergeDataWithModifiedRecords:deletedRecordIDs:containsAllChanges:completion:]";
                  v238 = 2112;
                  v239 = recordName;
                  _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "%s Adjusting weight of record : (%@)", buf, 0x16u);
                }

                v51 = +[NSDate distantPast];

                v49 = v51;
              }

              if (([recordName isEqualToString:@"User Identifier"]& 1) != 0 || [recordName isEqualToString:@"Logging User Identifier"])
              {
                v188 = [(NSMutableDictionary *)self->_localKeychainPreferenceCache objectForKey:recordName];
                if (v49)
                {
                  modificationDate = [v24 modificationDate];

                  if (modificationDate)
                  {
                    modificationDate2 = [v24 modificationDate];
                    v180 = v49;
                    v54 = [modificationDate2 compare:v49];

                    if (v54 == 1)
                    {
                      if (v31 == v188)
                      {
                        v49 = v180;
                      }

                      else
                      {
                        v49 = v180;
                        if (([v31 isEqual:?]& 1) == 0)
                        {
                          v55 = AFSiriLogContextDaemon;
                          if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
                          {
                            modificationDate3 = [v24 modificationDate];
                            *buf = v175;
                            v237 = "[ADCloudKitKeyValueDataStore _mergeDataWithModifiedRecords:deletedRecordIDs:containsAllChanges:completion:]";
                            v238 = 2112;
                            v239 = recordName;
                            v240 = 2112;
                            v241 = modificationDate3;
                            v242 = 2112;
                            v243 = v180;
                            v244 = 2112;
                            v245 = v31;
                            v246 = 2112;
                            v247 = v188;
                            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "%s sharedIdsNeedSaving = YES, recordName = %@, modificationDate = (%@), localValModeificationDate = (%@), recordValue = %@, localVaue = %@", buf, 0x3Eu);

                            v49 = v180;
                          }

                          localKeychainPreferenceCache = self->_localKeychainPreferenceCache;
                          if (v31)
                          {
                            [(NSMutableDictionary *)localKeychainPreferenceCache setObject:v31 forKey:recordName];
                          }

                          else
                          {
                            [(NSMutableDictionary *)localKeychainPreferenceCache removeObjectForKey:recordName];
                          }

                          v179 = 1;
                        }
                      }

LABEL_110:
                      modificationDateCache = self->_modificationDateCache;
                      modificationDate4 = [v24 modificationDate];
                      [(NSMutableDictionary *)modificationDateCache setObject:modificationDate4 forKey:recordName];

                      v195 = 1;
LABEL_111:
                      v59 = v188;
                      goto LABEL_112;
                    }

                    v59 = v188;
                    if (v31 == v188)
                    {
                      v49 = v180;
                      goto LABEL_112;
                    }

                    v49 = v180;
                    if (([v31 isEqual:v188]& 1) != 0)
                    {
                      goto LABEL_112;
                    }
                  }

                  else
                  {
                    v59 = v188;
                    if (v31 == v188 || ([v31 isEqual:v188]& 1) != 0)
                    {
                      goto LABEL_112;
                    }
                  }

LABEL_103:
                  if (v59)
                  {
                    [log setObject:v59 forKey:recordName];
                  }

                  else
                  {
                    v65 = +[NSNull null];
                    [log setObject:v65 forKey:recordName];
                  }

                  goto LABEL_112;
                }

                v58 = AFSiriLogContextDaemon;
                if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315906;
                  v237 = "[ADCloudKitKeyValueDataStore _mergeDataWithModifiedRecords:deletedRecordIDs:containsAllChanges:completion:]";
                  v238 = 2112;
                  v239 = recordName;
                  v240 = 2112;
                  v241 = v31;
                  v242 = 2112;
                  v243 = v188;
                  _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "%s Record is missing a modification date : (%@), recordValue (%@), localValue (%@)", buf, 0x2Au);
                }

                v59 = v188;
                if (v31 != v188 && ([v31 isEqual:v188]& 1) == 0)
                {
                  v60 = self->_localKeychainPreferenceCache;
                  if (v31)
                  {
                    [(NSMutableDictionary *)v60 setObject:v31 forKey:recordName];
                  }

                  else
                  {
                    [(NSMutableDictionary *)v60 removeObjectForKey:recordName];
                  }

                  v66 = self->_modificationDateCache;
                  modificationDate5 = [v24 modificationDate];
                  [(NSMutableDictionary *)v66 setObject:modificationDate5 forKey:recordName];

                  v195 = 1;
                  v179 = 1;
                  goto LABEL_111;
                }

LABEL_112:

                goto LABEL_46;
              }

              v188 = [(NSMutableDictionary *)self->_localPreferenceCache objectForKey:recordName];
              if (!v49)
              {
                v64 = AFSiriLogContextDaemon;
                if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315394;
                  v237 = "[ADCloudKitKeyValueDataStore _mergeDataWithModifiedRecords:deletedRecordIDs:containsAllChanges:completion:]";
                  v238 = 2112;
                  v239 = recordName;
                  _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_INFO, "%s Record is missing a local modification date : (%@)", buf, 0x16u);
                }

                v59 = v188;
                if (v31 != v188 && (sub_10029A61C(v31, v188, recordName) & 1) == 0)
                {
                  if (v31)
                  {
                    [v187 setObject:v31 forKey:recordName];
                  }

                  else
                  {
                    v70 = +[NSNull null];
                    [v187 setObject:v70 forKey:recordName];
                  }

                  goto LABEL_110;
                }

                goto LABEL_112;
              }

              modificationDate6 = [v24 modificationDate];

              if (modificationDate6)
              {
                modificationDate7 = [v24 modificationDate];
                v181 = v49;
                v63 = [modificationDate7 compare:v49];

                if (v63 == 1)
                {
                  v49 = v181;
                  if (v31 != v188 && (sub_10029A61C(v31, v188, recordName) & 1) == 0)
                  {
                    if (v31)
                    {
                      [v187 setObject:v31 forKey:recordName];
                    }

                    else
                    {
                      v71 = +[NSNull null];
                      [v187 setObject:v71 forKey:recordName];
                    }
                  }

                  v72 = self->_modificationDateCache;
                  modificationDate8 = [v24 modificationDate];
                  v74 = v72;
                  v59 = v188;
                  [(NSMutableDictionary *)v74 setObject:modificationDate8 forKey:recordName];

                  v195 = 1;
                  goto LABEL_112;
                }

                v59 = v188;
                v49 = v181;
                if (v31 == v188)
                {
                  goto LABEL_112;
                }
              }

              else
              {
                v59 = v188;
                if (v31 == v188)
                {
                  goto LABEL_112;
                }
              }

              if (sub_10029A61C(v31, v59, recordName))
              {
                goto LABEL_112;
              }

              goto LABEL_103;
            }

            v31 = AFSiriLogContextDaemon;
            if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              goto LABEL_46;
            }

            *buf = 136315394;
            v237 = "[ADCloudKitKeyValueDataStore _mergeDataWithModifiedRecords:deletedRecordIDs:containsAllChanges:completion:]";
            v238 = 2112;
            v239 = recordName;
            v38 = v31;
            v39 = "%s Ignoring disallowed key : (%@)";
          }

          else
          {
            if (!v32)
            {
              goto LABEL_46;
            }

            *buf = 136315394;
            v237 = "[ADCloudKitKeyValueDataStore _mergeDataWithModifiedRecords:deletedRecordIDs:containsAllChanges:completion:]";
            v238 = 2112;
            v239 = v24;
            v38 = v31;
            v39 = "%s Modified record is lacking a name : (%@)";
          }

          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, v39, buf, 0x16u);
          goto LABEL_46;
        }

        recordName = AFSiriLogContextDaemon;
        if (os_log_type_enabled(recordName, OS_LOG_TYPE_INFO))
        {
          recordType2 = [v24 recordType];
          *buf = 136315394;
          v237 = "[ADCloudKitKeyValueDataStore _mergeDataWithModifiedRecords:deletedRecordIDs:containsAllChanges:completion:]";
          v238 = 2112;
          v239 = recordType2;
          _os_log_impl(&_mh_execute_header, recordName, OS_LOG_TYPE_INFO, "%s Unsupported record type : (%@)", buf, 0x16u);
        }

LABEL_47:

        v23 = v23 + 1;
      }

      while (v21 != v23);
      v75 = [obj countByEnumeratingWithState:&v225 objects:v249 count:16];
      v21 = v75;
      if (!v75)
      {
        goto LABEL_119;
      }
    }
  }

  v195 = 0;
  v179 = 0;
  v190 = 0;
  *&v183[4] = 0;
  v197 = 2;
LABEL_119:

  if ([dsCopy count])
  {
    v200 = +[NSDate date];
  }

  else
  {
    v200 = 0;
  }

  v76 = log;
  v223 = 0u;
  v224 = 0u;
  v221 = 0u;
  v222 = 0u;
  v193 = dsCopy;
  v77 = [v193 countByEnumeratingWithState:&v221 objects:v235 count:16];
  if (v77)
  {
    v78 = v77;
    v79 = *v222;
    do
    {
      v80 = 0;
      do
      {
        if (*v222 != v79)
        {
          objc_enumerationMutation(v193);
        }

        v81 = *(*(&v221 + 1) + 8 * v80);
        recordName2 = [v81 recordName];
        if ([recordName2 length])
        {
          [v199 removeObject:recordName2];
          [v203 removeObject:recordName2];
          if (([recordName2 isEqualToString:@"User Identifier"] & 1) != 0 || objc_msgSend(recordName2, "isEqualToString:", @"Logging User Identifier"))
          {
            [(NSMutableDictionary *)self->_localKeychainPreferenceCache removeObjectForKey:recordName2];
LABEL_131:
            [(NSMutableDictionary *)self->_modificationDateCache setObject:v200 forKey:recordName2];
            v195 = 1;
            goto LABEL_135;
          }

          v84 = [(NSMutableDictionary *)self->_localPreferenceCache objectForKey:recordName2];

          if (v84)
          {
            v85 = +[NSNull null];
            [v187 setObject:v85 forKey:recordName2];

            goto LABEL_131;
          }
        }

        else
        {
          v83 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v237 = "[ADCloudKitKeyValueDataStore _mergeDataWithModifiedRecords:deletedRecordIDs:containsAllChanges:completion:]";
            v238 = 2112;
            v239 = v81;
            _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_INFO, "%s Deleted record ID is lacking a name : (%@)", buf, 0x16u);
          }

          v76 = log;
        }

LABEL_135:

        v80 = v80 + 1;
      }

      while (v78 != v80);
      v86 = [v193 countByEnumeratingWithState:&v221 objects:v235 count:16];
      v78 = v86;
    }

    while (v86);
  }

  v87 = v184;
  if (v179)
  {
    v88 = [(NSMutableDictionary *)self->_localKeychainPreferenceCache objectForKey:@"User Identifier"];
    v89 = [(NSMutableDictionary *)self->_localKeychainPreferenceCache objectForKey:@"Logging User Identifier"];
    v90 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v237 = "[ADCloudKitKeyValueDataStore _mergeDataWithModifiedRecords:deletedRecordIDs:containsAllChanges:completion:]";
      v238 = 2112;
      v239 = v88;
      v240 = 2112;
      v241 = v89;
      _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_INFO, "%s Saving sharedUserIdentifier... sharedUserId = %@, loggingSharedUserId = %@", buf, 0x20u);
    }

    v91 = +[ADCloudKitManager sharedManager];
    [v91 ignoreNextNotification:@"ADPreferencesSharedUserIdentifierDidChangeNotification"];

    [v191 setSharedUserIdentifier:v88 loggingSharedUserIdentifier:v89];
  }

  if (v176)
  {
    v219 = 0u;
    v220 = 0u;
    v217 = 0u;
    v218 = 0u;
    v92 = v199;
    v93 = [v92 countByEnumeratingWithState:&v217 objects:v234 count:16];
    if (!v93)
    {
      goto LABEL_160;
    }

    v94 = v93;
    v95 = *v218;
    while (1)
    {
      for (i = 0; i != v94; i = i + 1)
      {
        if (*v218 != v95)
        {
          objc_enumerationMutation(v92);
        }

        v97 = *(*(&v217 + 1) + 8 * i);
        if ([v97 isEqualToString:@"User Identifier"])
        {
          sharedUserIdentifier = [v191 sharedUserIdentifier];
        }

        else
        {
          if (![v97 isEqualToString:@"Logging User Identifier"])
          {
            v99 = [(NSMutableDictionary *)self->_localPreferenceCache objectForKey:v97];
            goto LABEL_157;
          }

          sharedUserIdentifier = [v191 loggingSharedUserIdentifier];
        }

        v99 = sharedUserIdentifier;
        if (!sharedUserIdentifier)
        {
          v100 = +[NSNull null];
          [log setObject:v100 forKey:v97];

          goto LABEL_158;
        }

LABEL_157:
        [log setObject:v99 forKey:v97];
LABEL_158:

        [v203 removeObject:v97];
      }

      v94 = [v92 countByEnumeratingWithState:&v217 objects:v234 count:16];
      if (!v94)
      {
LABEL_160:

        v215 = 0u;
        v216 = 0u;
        v213 = 0u;
        v214 = 0u;
        v101 = v203;
        v102 = [v101 countByEnumeratingWithState:&v213 objects:v233 count:16];
        v76 = log;
        if (v102)
        {
          v103 = v102;
          v104 = *v214;
          do
          {
            for (j = 0; j != v103; j = j + 1)
            {
              if (*v214 != v104)
              {
                objc_enumerationMutation(v101);
              }

              v106 = *(*(&v213 + 1) + 8 * j);
              v107 = +[NSNull null];
              [log setObject:v107 forKey:v106];
            }

            v103 = [v101 countByEnumeratingWithState:&v213 objects:v233 count:16];
          }

          while (v103);
        }

        v87 = v184;
        break;
      }
    }
  }

  if (v195)
  {
    sub_10029A7B0(self->_modificationDateCache, kAFModificationDates);
    if (![v187 count])
    {
      AFBackedUpPreferencesSynchronize();
      goto LABEL_217;
    }
  }

  else if (![v187 count])
  {
    goto LABEL_217;
  }

  v108 = kAFSessionLanguage;
  v109 = [v187 objectForKey:kAFSessionLanguage];
  v196 = v109;
  if (v109)
  {
    v110 = v109;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v111 = v110;
    }

    else
    {
      v111 = 0;
    }

    v112 = v111;
    if (AFPreferencesLanguageIsSupported())
    {

      if (v112)
      {
        goto LABEL_184;
      }
    }

    else
    {
    }

    v113 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v237 = "[ADCloudKitKeyValueDataStore _mergeDataWithModifiedRecords:deletedRecordIDs:containsAllChanges:completion:]";
      v238 = 2112;
      v239 = v108;
      v240 = 2112;
      v241 = 0;
      _os_log_error_impl(&_mh_execute_header, v113, OS_LOG_TYPE_ERROR, "%s Unsupported value set for key (%@) : %@", buf, 0x20u);
    }

    [v187 removeObjectForKey:v108];
  }

  v112 = 0;
LABEL_184:
  v114 = kAFOutputVoice;
  v115 = [v187 objectForKey:kAFOutputVoice];
  if (v115)
  {
    if (v112)
    {
      v116 = v112;
    }

    else
    {
      v118 = [(NSMutableDictionary *)self->_localPreferenceCache objectForKey:v108];
      v116 = sub_1002984B0(v118);
    }

    v119 = sub_100298408(v115, v116);
    if (!v119)
    {
      v120 = AFOutputVoiceLanguageForRecognitionLanguage();
      v119 = [[AFVoiceInfo alloc] initWithLanguageCode:v120 gender:+[AFVoiceInfo defaultGenderForOutputVoiceLanguageCode:](AFVoiceInfo isCustom:{"defaultGenderForOutputVoiceLanguageCode:", v120), 1}];
      v121 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(v121, OS_LOG_TYPE_INFO))
      {
        *buf = 136315906;
        v237 = "[ADCloudKitKeyValueDataStore _mergeDataWithModifiedRecords:deletedRecordIDs:containsAllChanges:completion:]";
        v238 = 2112;
        v239 = v116;
        v240 = 2112;
        v241 = v115;
        v242 = 2112;
        v243 = 0;
        _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_INFO, "%s Falling back to default output voice for language (%@) : %@ -> %@", buf, 0x2Au);
      }
    }

    v117 = sub_100298580(v119);
    dictionaryRepresentation = [v117 dictionaryRepresentation];
    [v187 setObject:dictionaryRepresentation forKey:v114];
  }

  else
  {
    v117 = 0;
  }

  v123 = [(NSMutableDictionary *)self->_localPreferenceCache objectForKey:v108];
  v189 = v115;
  v186 = v123;
  if (!v123)
  {
    goto LABEL_202;
  }

  v124 = v123;
  v125 = objc_opt_new();
  v126 = v125;
  if ((v197 - 2) < 0xB)
  {
    [v125 addObject:@"vi-VI"];
LABEL_197:
    [v126 addObject:@"pt-PT"];
    goto LABEL_198;
  }

  if (v197 == 13)
  {
    goto LABEL_197;
  }

LABEL_198:
  v127 = [v126 containsObject:v124];

  if (v127)
  {
    v128 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v237 = "[ADCloudKitKeyValueDataStore _mergeDataWithModifiedRecords:deletedRecordIDs:containsAllChanges:completion:]";
      v238 = 2112;
      v239 = v124;
      _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_INFO, "%s Ignoring incoming language & voice because of outdated version with current language: %@", buf, 0x16u);
    }

    [v187 removeObjectForKey:v108];
    [v187 removeObjectForKey:v114];

    v112 = 0;
    v129 = v117;
    v117 = 0;
    goto LABEL_205;
  }

LABEL_202:
  if (!v112 || !v117)
  {
    goto LABEL_206;
  }

  v130 = +[ADCommandCenter sharedCommandCenter];
  [v130 setQueuedLanguageCode:v112 andQueuedOutputVoice:v117];

  [(NSMutableDictionary *)self->_localPreferenceCache setObject:v112 forKey:v108];
  localPreferenceCache = self->_localPreferenceCache;
  dictionaryRepresentation2 = [v117 dictionaryRepresentation];
  [(NSMutableDictionary *)localPreferenceCache setObject:dictionaryRepresentation2 forKey:v114];

  [v187 removeObjectForKey:v108];
  [v187 removeObjectForKey:v114];
  v129 = +[AFAnalytics sharedAnalytics];
  [v129 logEventWithType:3201 context:&off_100534360];
  [v129 logEventWithType:3202 context:&off_100534388];
LABEL_205:

LABEL_206:
  v211 = 0u;
  v212 = 0u;
  v209 = 0u;
  v210 = 0u;
  v133 = v187;
  v134 = [v133 countByEnumeratingWithState:&v209 objects:v232 count:16];
  if (v134)
  {
    v135 = v134;
    v136 = *v210;
    do
    {
      for (k = 0; k != v135; k = k + 1)
      {
        if (*v210 != v136)
        {
          objc_enumerationMutation(v133);
        }

        v138 = *(*(&v209 + 1) + 8 * k);
        v139 = [v133 objectForKey:v138];
        v140 = +[NSNull null];

        if (v139 == v140)
        {

          [(NSMutableDictionary *)self->_localPreferenceCache removeObjectForKey:v138];
          v139 = 0;
        }

        else
        {
          [(NSMutableDictionary *)self->_localPreferenceCache setObject:v139 forKey:v138];
        }

        sub_10029A7B0(v139, v138);
      }

      v135 = [v133 countByEnumeratingWithState:&v209 objects:v232 count:16];
    }

    while (v135);
  }

  v141 = +[ADCloudKitManager sharedManager];
  [v141 ignoreNextNotification:kAFPreferencesDidChangeDarwinNotification];

  v142 = +[AFPreferences sharedPreferences];
  [v142 synchronize];

  v76 = log;
  v87 = v184;
LABEL_217:
  if (v190)
  {
    v143 = [v76 objectForKey:kAFSessionLanguage];
    if (!v143)
    {
      v231 = objc_opt_class();
      v144 = [NSArray arrayWithObjects:&v231 count:1];
      v145 = [NSSet setWithArray:v144];
      v143 = [*&v183[4] _ad_dataOfClasses:v145];
    }

    v146 = sub_1002984B0(v143);
    if (v146)
    {
      v230[0] = objc_opt_class();
      v230[1] = objc_opt_class();
      v230[2] = objc_opt_class();
      v147 = [NSArray arrayWithObjects:v230 count:3];
      v148 = [NSSet setWithArray:v147];
      v149 = [v190 _ad_dataOfClasses:v148];

      v150 = sub_100298508(v149);
      v151 = v150;
      if (v150 && sub_100298670(v150, v146))
      {
        v152 = sub_1002999C0(v146);
      }

      else
      {
        v152 = 0;
      }
    }

    else
    {
      v152 = 0;
    }
  }

  else
  {
    v152 = 0;
  }

  if (![v76 count]&& !v152)
  {
    goto LABEL_244;
  }

  v153 = kAFSessionLanguage;
  v154 = [v76 objectForKey:kAFSessionLanguage];

  v155 = kAFOutputVoice;
  v156 = [v76 objectForKey:kAFOutputVoice];
  v157 = v154 | v156;

  if (v157)
  {
    v158 = [(NSMutableDictionary *)self->_localPreferenceCache objectForKey:v153];
    v159 = sub_1002984B0(v158);
    v160 = [(NSMutableDictionary *)self->_localPreferenceCache objectForKey:v155];
    v161 = sub_100298408(v160, v159);
    if (v161)
    {
      [v76 setObject:v158 forKey:v153];
      v162 = sub_100298580(v161);
      [v162 dictionaryRepresentation];
      v198 = v161;
      v163 = v158;
      v164 = v160;
      v165 = v87;
      v167 = v166 = v159;
      v168 = @"Output Voice v14";
      [log setObject:v167 forKey:@"Output Voice v14"];

      v76 = log;
      v159 = v166;
      v87 = v165;
      v160 = v164;
      v158 = v163;
      v161 = v198;
      [log removeObjectForKey:v155];
    }

    else
    {
      loga = AFSiriLogContextDaemon;
      if (os_log_type_enabled(loga, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v237 = "[ADCloudKitKeyValueDataStore _mergeDataWithModifiedRecords:deletedRecordIDs:containsAllChanges:completion:]";
        v238 = 2112;
        v239 = v158;
        v240 = 2112;
        v241 = v160;
        _os_log_error_impl(&_mh_execute_header, loga, OS_LOG_TYPE_ERROR, "%s Not synching language (%@) and output voice(%@) due to mismatch", buf, 0x20u);
      }

      v229[0] = v153;
      v229[1] = v155;
      v162 = [NSArray arrayWithObjects:v229 count:2];
      [v76 removeObjectsForKeys:v162];
    }
  }

  if (v152)
  {
    dictionaryRepresentation3 = [v152 dictionaryRepresentation];
    [v76 setObject:dictionaryRepresentation3 forKey:v155];
  }

  if ([v76 count])
  {
    allKeys3 = [v76 allKeys];
    v171 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(v171, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v237 = "[ADCloudKitKeyValueDataStore _mergeDataWithModifiedRecords:deletedRecordIDs:containsAllChanges:completion:]";
      v238 = 2112;
      v239 = allKeys3;
      _os_log_impl(&_mh_execute_header, v171, OS_LOG_TYPE_INFO, "%s Saving keys: %@", buf, 0x16u);
    }

    v172 = +[ADCloudKitManager sharedManager];
    v204[0] = _NSConcreteStackBlock;
    v204[1] = 3221225472;
    v204[2] = sub_10030FFAC;
    v204[3] = &unk_10051BA48;
    v173 = allKeys3;
    v205 = v173;
    selfCopy = self;
    v207 = v76;
    v208 = completionCopy;
    v174 = completionCopy;
    [v172 saveKeyValueRecordsWithDictionary:v207 mirror:0 completion:v204];
  }

  else
  {
LABEL_244:
    v174 = completionCopy;
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

- (void)mergeDataWithModifiedRecords:(id)records deletedRecordIDs:(id)ds containsAllChanges:(BOOL)changes completion:(id)completion
{
  changesCopy = changes;
  recordsCopy = records;
  dsCopy = ds;
  completionCopy = completion;
  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "[ADCloudKitKeyValueDataStore mergeDataWithModifiedRecords:deletedRecordIDs:containsAllChanges:completion:]";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s ", &v14, 0xCu);
  }

  [(ADCloudKitKeyValueDataStore *)self _mergeDataWithModifiedRecords:recordsCopy deletedRecordIDs:dsCopy containsAllChanges:changesCopy completion:completionCopy];
}

- (void)synchronizeKeychainPreferencesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v33 = "[ADCloudKitKeyValueDataStore synchronizeKeychainPreferencesWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v6 = objc_opt_new();
  v7 = sub_10029AE0C();
  modificationDateCache = self->_modificationDateCache;
  self->_modificationDateCache = v7;

  v9 = sub_10029A9C8();
  if ([v9 containsObject:@"User Identifier"])
  {
    v10 = +[ADPreferences sharedPreferences];
    sharedUserIdentifier = [v10 sharedUserIdentifier];

    v12 = [(NSMutableDictionary *)self->_localKeychainPreferenceCache objectForKey:@"User Identifier"];
    v13 = [sharedUserIdentifier isEqual:v12];

    if ((v13 & 1) == 0)
    {
      if (sharedUserIdentifier)
      {
        [(NSMutableDictionary *)self->_localKeychainPreferenceCache setObject:sharedUserIdentifier forKey:@"User Identifier"];
        [v6 setObject:sharedUserIdentifier forKey:@"User Identifier"];
      }

      else
      {
        [(NSMutableDictionary *)self->_localPreferenceCache removeObjectForKey:@"User Identifier"];
        v14 = +[NSNull null];
        [v6 setObject:v14 forKey:@"User Identifier"];
      }

      v15 = self->_modificationDateCache;
      v16 = +[NSDate date];
      [(NSMutableDictionary *)v15 setObject:v16 forKey:@"User Identifier"];
    }
  }

  if ([v9 containsObject:@"Logging User Identifier"])
  {
    v17 = +[ADPreferences sharedPreferences];
    loggingSharedUserIdentifier = [v17 loggingSharedUserIdentifier];

    v19 = [(NSMutableDictionary *)self->_localKeychainPreferenceCache objectForKey:@"Logging User Identifier"];
    v20 = [loggingSharedUserIdentifier isEqual:v19];

    if ((v20 & 1) == 0)
    {
      if (loggingSharedUserIdentifier)
      {
        [(NSMutableDictionary *)self->_localKeychainPreferenceCache setObject:loggingSharedUserIdentifier forKey:@"Logging User Identifier"];
        [v6 setObject:loggingSharedUserIdentifier forKey:@"Logging User Identifier"];
      }

      else
      {
        [(NSMutableDictionary *)self->_localPreferenceCache removeObjectForKey:@"Logging User Identifier"];
        v21 = +[NSNull null];
        [v6 setObject:v21 forKey:@"Logging User Identifier"];
      }

      v22 = self->_modificationDateCache;
      v23 = +[NSDate date];
      [(NSMutableDictionary *)v22 setObject:v23 forKey:@"Logging User Identifier"];
    }
  }

  if ([v6 count])
  {
    sub_10029A7B0(self->_modificationDateCache, kAFModificationDates);
    AFBackedUpPreferencesSynchronize();
    allKeys = [v6 allKeys];
    v25 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v33 = "[ADCloudKitKeyValueDataStore synchronizeKeychainPreferencesWithCompletion:]";
      v34 = 2112;
      v35 = allKeys;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%s Saving keys: %@", buf, 0x16u);
    }

    v26 = +[ADCloudKitManager sharedManager];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100310828;
    v28[3] = &unk_10051BA20;
    v29 = allKeys;
    selfCopy = self;
    v31 = v6;
    v27 = allKeys;
    [v26 saveKeyValueRecordsWithDictionary:v31 mirror:0 completion:v28];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1);
  }
}

- (void)synchronizeWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v119 = "[ADCloudKitKeyValueDataStore synchronizeWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  AFBackedUpPreferencesSynchronize();
  v6 = sub_10029AAC4();
  v7 = sub_10029AE0C();
  modificationDateCache = self->_modificationDateCache;
  self->_modificationDateCache = v7;

  v99 = +[NSDate date];
  v100 = objc_opt_new();
  allKeys = [(NSMutableDictionary *)self->_localPreferenceCache allKeys];
  v97 = allKeys;
  if (allKeys)
  {
    v10 = [NSMutableSet setWithArray:allKeys];
  }

  else
  {
    v10 = 0;
  }

  v98 = completionCopy;
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  obj = v6;
  v11 = [obj countByEnumeratingWithState:&v113 objects:v125 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v114;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v114 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v113 + 1) + 8 * i);
        [v10 removeObject:v15];
        v16 = [obj objectForKey:v15];
        v17 = [(NSMutableDictionary *)self->_localPreferenceCache objectForKey:v15];
        v18 = sub_10029A61C(v16, v17, v15);

        if ((v18 & 1) == 0)
        {
          localPreferenceCache = self->_localPreferenceCache;
          if (v16)
          {
            [(NSMutableDictionary *)localPreferenceCache setObject:v16 forKey:v15];
            [v100 setObject:v16 forKey:v15];
          }

          else
          {
            [(NSMutableDictionary *)localPreferenceCache removeObjectForKey:v15];
            v20 = +[NSNull null];
            [v100 setObject:v20 forKey:v15];
          }

          [(NSMutableDictionary *)self->_modificationDateCache setObject:v99 forKey:v15];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v113 objects:v125 count:16];
    }

    while (v12);
  }

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v21 = v10;
  v22 = [v21 countByEnumeratingWithState:&v109 objects:v124 count:16];
  v23 = v100;
  if (v22)
  {
    v24 = v22;
    v25 = *v110;
    do
    {
      for (j = 0; j != v24; j = j + 1)
      {
        if (*v110 != v25)
        {
          objc_enumerationMutation(v21);
        }

        v27 = *(*(&v109 + 1) + 8 * j);
        v28 = +[NSNull null];
        [v100 setObject:v28 forKey:v27];
      }

      v24 = [v21 countByEnumeratingWithState:&v109 objects:v124 count:16];
    }

    while (v24);
  }

  if (![v100 count])
  {
    goto LABEL_115;
  }

  v29 = kAFSessionLanguage;
  v30 = [v100 objectForKey:kAFSessionLanguage];

  v96 = kAFOutputVoice;
  v31 = [v100 objectForKey:?];

  if (self->_hasMergedAllRecords || !(v30 | v31) || (+[ADPreferences sharedPreferences](ADPreferences, "sharedPreferences"), v32 = objc_claimAutoreleasedReturnValue(), v33 = [v32 isUsingDefaultLanguageSettings], v32, !v33))
  {
    if (v30)
    {
      if (v31)
      {
        v95 = 1;
        v34 = v96;
        goto LABEL_46;
      }

      v34 = v96;
      v35 = [(NSMutableDictionary *)self->_localPreferenceCache objectForKey:v96];
      if (v35)
      {
        [v100 setObject:v35 forKey:v96];
      }

      else
      {
        v38 = +[NSNull null];
        [v100 setObject:v38 forKey:v96];
      }

      v95 = 1;
      v37 = v96;
    }

    else
    {
      if (!v31)
      {
        goto LABEL_109;
      }

      v35 = [(NSMutableDictionary *)self->_localPreferenceCache objectForKey:v29];
      if (v35)
      {
        [v100 setObject:v35 forKey:v29];
      }

      else
      {
        v36 = +[NSNull null];
        [v100 setObject:v36 forKey:v29];
      }

      v95 = 0;
      v37 = v29;
      v34 = v96;
    }

    [(NSMutableDictionary *)self->_modificationDateCache setObject:v99 forKey:v37];

LABEL_46:
    v39 = [v100 objectForKey:v29];
    v40 = sub_1002984B0(v39);
    v41 = [v100 objectForKey:v34];
    v42 = sub_100298408(v41, v40);
    v43 = v42;
    if (!v42)
    {
      v52 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v119 = "[ADCloudKitKeyValueDataStore synchronizeWithCompletion:]";
        v120 = 2112;
        v121 = v39;
        v122 = 2112;
        v123 = v41;
        _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "%s Not synching language (%@) and output voice(%@) due to mismatch", buf, 0x20u);
      }

      v117[0] = v29;
      v117[1] = v96;
      v44 = [NSArray arrayWithObjects:v117 count:2];
      [v100 removeObjectsForKeys:v44];
      v43 = 0;
      goto LABEL_108;
    }

    v93 = v41;
    v44 = sub_100298580(v42);
    dictionaryRepresentation = [v44 dictionaryRepresentation];
    v46 = @"Output Voice v14";
    v47 = dictionaryRepresentation;
    [v100 setObject:dictionaryRepresentation forKey:@"Output Voice v14"];

    if (sub_100298670(v44, v40))
    {
      if (v95)
      {
        v48 = v43;
        v49 = sub_1002999C0(v40);
        v50 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v119 = "[ADCloudKitKeyValueDataStore synchronizeWithCompletion:]";
          v120 = 2112;
          v121 = v40;
          v122 = 2112;
          v123 = v49;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "%s Synching default voice for version 1 sync clients (%@) : %@", buf, 0x20u);
        }

        dictionaryRepresentation2 = [v49 dictionaryRepresentation];
        [v100 setObject:dictionaryRepresentation2 forKey:v96];

        v43 = v48;
        v47 = dictionaryRepresentation;
        if ((sub_100299798(v44, v40) & 1) == 0)
        {
          goto LABEL_71;
        }

LABEL_60:
        v54 = v47;
        v55 = v39;
        v56 = sub_1002999C0(v40);
        v57 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v119 = "[ADCloudKitKeyValueDataStore synchronizeWithCompletion:]";
          v120 = 2112;
          v121 = v40;
          v122 = 2112;
          v123 = v56;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "%s Synching default voice for version 2 sync clients (%@) : %@", buf, 0x20u);
        }

        dictionaryRepresentation3 = [v56 dictionaryRepresentation];
        [v100 setObject:dictionaryRepresentation3 forKey:@"Output Voice v2"];

        v39 = v55;
        v47 = v54;
        if (sub_100299898(v44, v40))
        {
LABEL_75:
          v62 = v47;
          v63 = v39;
          v64 = sub_1002999C0(v40);
          v65 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 136315650;
            v119 = "[ADCloudKitKeyValueDataStore synchronizeWithCompletion:]";
            v120 = 2112;
            v121 = v40;
            v122 = 2112;
            v123 = v64;
            _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_INFO, "%s Synching default voice for version 3 sync clients (%@) : %@", buf, 0x20u);
          }

          dictionaryRepresentation4 = [v64 dictionaryRepresentation];
          [v100 setObject:dictionaryRepresentation4 forKey:@"Output Voice v3"];

          v39 = v63;
          v47 = v62;
          if ((sub_1002988D0(v44, v40) & 1) == 0)
          {
            goto LABEL_94;
          }

LABEL_83:
          v68 = v47;
          v69 = v39;
          v70 = sub_1002999C0(v40);
          v71 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 136315650;
            v119 = "[ADCloudKitKeyValueDataStore synchronizeWithCompletion:]";
            v120 = 2112;
            v121 = v40;
            v122 = 2112;
            v123 = v70;
            _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_INFO, "%s Synching default voice for version 4 sync clients (%@) : %@", buf, 0x20u);
          }

          dictionaryRepresentation5 = [v70 dictionaryRepresentation];
          [v100 setObject:dictionaryRepresentation5 forKey:@"Output Voice completionCopy"];

          v39 = v69;
          v47 = v68;
          if (sub_100298A54(v44, v40))
          {
            goto LABEL_98;
          }

          goto LABEL_101;
        }

        goto LABEL_79;
      }

      v59 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v119 = "[ADCloudKitKeyValueDataStore synchronizeWithCompletion:]";
        v120 = 2112;
        v121 = v40;
        v122 = 2112;
        v123 = v44;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "%s Skipping sync of version 1 voice for language (%@) : %@", buf, 0x20u);
      }

      [v100 removeObjectForKey:{v96, v93}];
      if (sub_100299798(v44, v40))
      {
LABEL_67:
        v60 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v119 = "[ADCloudKitKeyValueDataStore synchronizeWithCompletion:]";
          v120 = 2112;
          v121 = v40;
          v122 = 2112;
          v123 = v44;
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "%s Skipping sync of version 2 voice for language (%@) : %@", buf, 0x20u);
        }

        [v100 removeObjectForKey:@"Output Voice v2"];
        if (sub_100299898(v44, v40))
        {
          goto LABEL_87;
        }

        goto LABEL_79;
      }
    }

    else
    {
      v53 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v119 = "[ADCloudKitKeyValueDataStore synchronizeWithCompletion:]";
        v120 = 2112;
        v121 = v40;
        v122 = 2112;
        v123 = v44;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "%s Synching voice for version 1 sync clients as well (%@) : %@", buf, 0x20u);
      }

      [v100 setObject:dictionaryRepresentation forKey:{v96, v93}];
      if (sub_100299798(v44, v40))
      {
        if (v95)
        {
          goto LABEL_60;
        }

        goto LABEL_67;
      }
    }

LABEL_71:
    v61 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v119 = "[ADCloudKitKeyValueDataStore synchronizeWithCompletion:]";
      v120 = 2112;
      v121 = v40;
      v122 = 2112;
      v123 = v44;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_INFO, "%s Synching voice for version 2 sync clients as well (%@) : %@", buf, 0x20u);
    }

    [v100 setObject:v47 forKey:@"Output Voice v2"];
    if (sub_100299898(v44, v40))
    {
      if (v95)
      {
        goto LABEL_75;
      }

LABEL_87:
      v73 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v119 = "[ADCloudKitKeyValueDataStore synchronizeWithCompletion:]";
        v120 = 2112;
        v121 = v40;
        v122 = 2112;
        v123 = v44;
        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_INFO, "%s Skipping sync of version 3 voice for language (%@) : %@", buf, 0x20u);
      }

      [v100 removeObjectForKey:@"Output Voice v3"];
      if (sub_1002988D0(v44, v40))
      {
        goto LABEL_90;
      }

      goto LABEL_94;
    }

LABEL_79:
    v67 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v119 = "[ADCloudKitKeyValueDataStore synchronizeWithCompletion:]";
      v120 = 2112;
      v121 = v40;
      v122 = 2112;
      v123 = v44;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "%s Synching voice for version 3 sync clients as well (%@) : %@", buf, 0x20u);
    }

    [v100 setObject:v47 forKey:@"Output Voice v3"];
    if (sub_1002988D0(v44, v40))
    {
      if (v95)
      {
        goto LABEL_83;
      }

LABEL_90:
      v74 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v119 = "[ADCloudKitKeyValueDataStore synchronizeWithCompletion:]";
        v120 = 2112;
        v121 = v40;
        v122 = 2112;
        v123 = v44;
        _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_INFO, "%s Skipping sync of version 4 voice for language (%@) : %@", buf, 0x20u);
      }

      [v100 removeObjectForKey:@"Output Voice completionCopy"];
      if (sub_100298A54(v44, v40))
      {
        goto LABEL_104;
      }

      goto LABEL_101;
    }

LABEL_94:
    v75 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v119 = "[ADCloudKitKeyValueDataStore synchronizeWithCompletion:]";
      v120 = 2112;
      v121 = v40;
      v122 = 2112;
      v123 = v44;
      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_INFO, "%s Synching voice for version 4 sync clients as well (%@) : %@", buf, 0x20u);
    }

    [v100 setObject:v47 forKey:@"Output Voice completionCopy"];
    if (sub_100298A54(v44, v40))
    {
      if (v95)
      {
LABEL_98:
        v76 = v47;
        v77 = v43;
        v78 = sub_100299AA0(v40);
        v79 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v119 = "[ADCloudKitKeyValueDataStore synchronizeWithCompletion:]";
          v120 = 2112;
          v121 = v40;
          v122 = 2112;
          v123 = v78;
          _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_INFO, "%s Synching default voice for version 5 sync clients (%@) : %@", buf, 0x20u);
        }

        dictionaryRepresentation6 = [v78 dictionaryRepresentation];
        [v100 setObject:dictionaryRepresentation6 forKey:@"Output Voice v5"];

        v43 = v77;
        v47 = v76;
LABEL_107:

        v41 = v94;
LABEL_108:

        goto LABEL_109;
      }

LABEL_104:
      v82 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v119 = "[ADCloudKitKeyValueDataStore synchronizeWithCompletion:]";
        v120 = 2112;
        v121 = v40;
        v122 = 2112;
        v123 = v44;
        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_INFO, "%s Skipping sync of version 5 voice for language (%@) : %@", buf, 0x20u);
      }

      [v100 removeObjectForKey:@"Output Voice v5"];
      goto LABEL_107;
    }

LABEL_101:
    v81 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v119 = "[ADCloudKitKeyValueDataStore synchronizeWithCompletion:]";
      v120 = 2112;
      v121 = v40;
      v122 = 2112;
      v123 = v44;
      _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_INFO, "%s Synching voice for version 5 sync clients as well (%@) : %@", buf, 0x20u);
    }

    [v100 setObject:v47 forKey:@"Output Voice v5"];
    goto LABEL_107;
  }

  if (v30)
  {
    [v100 removeObjectForKey:v29];
  }

  if (v31)
  {
    [v100 removeObjectForKey:v96];
  }

LABEL_109:
  sub_10029A7B0(self->_modificationDateCache, kAFModificationDates);
  AFBackedUpPreferencesSynchronize();
  v23 = v100;
  if (self->_hasMergedAllRecords && [v100 count])
  {
    allKeys2 = [v100 allKeys];
    v84 = AFSiriLogContextDaemon;
    v85 = v98;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v119 = "[ADCloudKitKeyValueDataStore synchronizeWithCompletion:]";
      v120 = 2112;
      v121 = allKeys2;
      _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_INFO, "%s Saving keys: %@", buf, 0x16u);
    }

    isMirroredDataStore = [(ADCloudKitKeyValueDataStore *)self isMirroredDataStore];
    v87 = +[ADCloudKitManager sharedManager];
    if (isMirroredDataStore)
    {
      v102[0] = _NSConcreteStackBlock;
      v102[1] = 3221225472;
      v102[2] = sub_100311ED8;
      v102[3] = &unk_10051D600;
      v88 = &v103;
      v103 = allKeys2;
      v89 = &v104;
      v104 = v98;
      v90 = allKeys2;
      [v87 saveKeyValueRecordsWithDictionary:v100 mirror:1 completion:v102];
    }

    else
    {
      v105[0] = _NSConcreteStackBlock;
      v105[1] = 3221225472;
      v105[2] = sub_100311CAC;
      v105[3] = &unk_10051BA48;
      v88 = v106;
      v106[0] = allKeys2;
      v89 = &v108;
      v108 = v98;
      v106[1] = self;
      v91 = v100;
      v107 = v91;
      v92 = allKeys2;
      [v87 saveKeyValueRecordsWithDictionary:v91 mirror:0 completion:v105];
    }

    goto LABEL_119;
  }

LABEL_115:
  v85 = v98;
  if (v98)
  {
    v98[2](v98, 1);
  }

LABEL_119:
}

- (void)updateSharedUserIdentifierPostCloudSync
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "[ADCloudKitKeyValueDataStore updateSharedUserIdentifierPostCloudSync]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s ", &v14, 0xCu);
  }

  v3 = +[ADPreferences sharedPreferences];
  sharedUserIdentifier = [v3 sharedUserIdentifier];

  v5 = +[ADPreferences sharedPreferences];
  loggingSharedUserIdentifier = [v5 loggingSharedUserIdentifier];

  if (sharedUserIdentifier)
  {
    v7 = loggingSharedUserIdentifier == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7 || (AFSupportsMultiUser() & 1) != 0)
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v14 = 136315138;
      v15 = "[ADCloudKitKeyValueDataStore updateSharedUserIdentifierPostCloudSync]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Identifiers unchanged", &v14, 0xCu);
    }

    goto LABEL_16;
  }

  if (!sharedUserIdentifier)
  {
    v12 = +[NSUUID UUID];
    sharedUserIdentifier = [v12 UUIDString];

    if (loggingSharedUserIdentifier)
    {
      goto LABEL_13;
    }

LABEL_18:
    v13 = +[NSUUID UUID];
    loggingSharedUserIdentifier = [v13 UUIDString];

    goto LABEL_13;
  }

  if (!loggingSharedUserIdentifier)
  {
    goto LABEL_18;
  }

LABEL_13:
  v9 = +[ADPreferences sharedPreferences];
  [v9 setSharedUserIdentifier:sharedUserIdentifier loggingSharedUserIdentifier:loggingSharedUserIdentifier];

  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v14 = 136315651;
    v15 = "[ADCloudKitKeyValueDataStore updateSharedUserIdentifierPostCloudSync]";
    v16 = 2113;
    v17 = sharedUserIdentifier;
    v18 = 2112;
    v19 = loggingSharedUserIdentifier;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Created new sharedUserIds %{private}@ %@", &v14, 0x20u);
  }

  v11 = +[NSNotificationCenter defaultCenter];
  [v11 postNotificationName:@"ADSharedDataDidChangeNotification" object:0];

LABEL_16:
}

- (void)setServerChangeToken:(id)token
{
  tokenCopy = token;
  if (![(ADCloudKitKeyValueDataStore *)self isMirroredDataStore])
  {
    if (tokenCopy)
    {
      v4 = [tokenCopy ad_archiveTokenToDataWithExceptionBlock:&stru_10051B9F8];
      if (!v4)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v4 = 0;
    }

    v5 = +[ADPreferences sharedPreferences];
    [v5 setKeyValueServerChangeToken:v4];

    v6 = +[ADPreferences sharedPreferences];
    [v6 synchronize];

    [(ADCloudKitKeyValueDataStore *)self updateSharedUserIdentifierPostCloudSync];
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 postNotificationName:@"ADCloudKitManagerPreferencesDidSyncNotification" object:0];
  }

LABEL_7:
}

- (CKServerChangeToken)serverChangeToken
{
  if ([(ADCloudKitKeyValueDataStore *)self isMirroredDataStore])
  {
    v2 = 0;
  }

  else
  {
    v3 = +[ADPreferences sharedPreferences];
    keyValueServerChangeToken = [v3 keyValueServerChangeToken];

    v2 = [CKServerChangeToken ad_unarchiveTokenFromData:keyValueServerChangeToken withExceptionBlock:&stru_10051B9D8];
  }

  return v2;
}

- (void)setHasSetUpRecordZoneSubscription:(BOOL)subscription
{
  subscriptionCopy = subscription;
  v4 = +[ADPreferences sharedPreferences];
  [v4 setHasSetUpKeyValueRecordZoneSubscription:subscriptionCopy];

  v5 = +[ADPreferences sharedPreferences];
  [v5 synchronize];
}

- (BOOL)hasSetUpRecordZoneSubscription
{
  v2 = +[ADPreferences sharedPreferences];
  hasSetUpKeyValueRecordZoneSubscription = [v2 hasSetUpKeyValueRecordZoneSubscription];

  return hasSetUpKeyValueRecordZoneSubscription;
}

- (ADCloudKitKeyValueDataStore)init
{
  v15.receiver = self;
  v15.super_class = ADCloudKitKeyValueDataStore;
  v2 = [(ADCloudKitKeyValueDataStore *)&v15 init];
  if (v2)
  {
    v16 = @"AssistantKeyValueRecord";
    v3 = [NSArray arrayWithObjects:&v16 count:1];
    supportedRecordTypes = v2->_supportedRecordTypes;
    v2->_supportedRecordTypes = v3;

    AFBackedUpPreferencesSynchronize();
    v5 = sub_10029AAC4();
    localPreferenceCache = v2->_localPreferenceCache;
    v2->_localPreferenceCache = v5;

    v7 = sub_10029AD04();
    localKeychainPreferenceCache = v2->_localKeychainPreferenceCache;
    v2->_localKeychainPreferenceCache = v7;

    v9 = sub_10029AE0C();
    modificationDateCache = v2->_modificationDateCache;
    v2->_modificationDateCache = v9;

    v11 = +[AFPreferences sharedPreferences];
    serverChangeToken = [(ADCloudKitKeyValueDataStore *)v2 serverChangeToken];
    v2->_hasMergedAllRecords = serverChangeToken != 0;

    v13 = +[ADPreferences sharedPreferences];
    [v13 clearLegacyKeyValueServerChangeTokens];
  }

  return v2;
}

@end