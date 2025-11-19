@interface ACXAvailableApplicationManager
+ (id)sharedApplicationManager;
- (ACXAvailableApplicationManager)init;
- (BOOL)_onQueue_infoMatchesCurrentLSDatabaseWithUUID:(id *)a3;
- (BOOL)_verifyInternalDataStructures;
- (BOOL)gizmoAppIsLocallyAvailableWithBundleID:(id)a3;
- (BOOL)systemAppIsAvailableWithBundleID:(id)a3 error:(id *)a4;
- (NSDictionary)possibleCompanionDeletableSystemAppToWatchCounterpartsMap;
- (id)_bundleIDsOfLocallyAvailableSystemApps;
- (id)allAvailableApps;
- (id)allAvailablePlaceholders;
- (id)availableSystemAppWithBundleID:(id)a3 error:(id *)a4;
- (id)bundleIDsOfAvailableAppsExcludingSystemApps;
- (id)bundleIDsOfLocallyAvailableSystemApps;
- (id)bundleIDsOfLocallyAvailableSystemAppsForPreWatchOSSix;
- (id)companionBundleIDForLocallyAvailableSystemApp:(id)a3 error:(id *)a4;
- (id)gizmoAppBundleIDForCompanionAppBundleID:(id)a3;
- (id)gizmoAppBundleIDsForCompanionAppBundleIDs:(id)a3;
- (id)gizmoAppForCompanionAppBundleID:(id)a3;
- (id)gizmoAppWithBundleID:(id)a3;
- (id)infoForGizmoAppsWithBundleIDs:(id)a3;
- (id)locallyAvailableSystemAppBundleIDToCompanionBundleIDMapping;
- (id)locallyAvailableSystemAppBundleIDToCompanionBundleIDMappingForPreWatchOSSix;
- (void)_onQueue_noteDatabaseRebuild;
- (void)_onQueue_noteNewApps:(id)a3 updatedApps:(id)a4 removedApps:(id)a5 transitioningAppBundleIDs:(id)a6;
- (void)_onQueue_noteTrustObtainedForApps:(id)a3 trustRemovedForApps:(id)a4;
- (void)_onQueue_reSyncWithLS;
- (void)_onQueue_writeAppListToDisk;
- (void)addGizmoBundleId:(id)a3 forCompanionBundleID:(id)a4 toMap:(id)a5;
- (void)applicationInstallsDidStart:(id)a3;
- (void)applicationsDidInstall:(id)a3;
- (void)applicationsDidUninstall:(id)a3;
- (void)applicationsInstalledWithAppRecords:(id)a3;
- (void)applicationsInstalledWithCompanionIdentifiers:(id)a3;
- (void)applicationsUninstalledWithAppRecords:(id)a3;
- (void)processApplication:(id)a3 withNewApps:(id)a4 updatedApps:(id)a5 transitioningAppBundleIDs:(id)a6;
- (void)processApplicationRemovalWithCompanionBundleID:(id)a3 removedApps:(id)a4;
- (void)profileTrustChanged;
@end

@implementation ACXAvailableApplicationManager

- (id)allAvailableApps
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000BB5C;
  v11 = sub_10000BB6C;
  v12 = 0;
  v3 = [(ACXAvailableApplicationManager *)self stateQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000191C;
  v6[3] = &unk_10008C958;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

+ (id)sharedApplicationManager
{
  if (qword_1000A4768 != -1)
  {
    sub_100059994();
  }

  v3 = qword_1000A4760;

  return v3;
}

- (ACXAvailableApplicationManager)init
{
  v10.receiver = self;
  v10.super_class = ACXAvailableApplicationManager;
  v2 = [(ACXAvailableApplicationManager *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.appconduit.AvailableAppList", v3);
    stateQueue = v2->_stateQueue;
    v2->_stateQueue = v4;

    v6 = [(ACXAvailableApplicationManager *)v2 stateQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000089A4;
    v8[3] = &unk_10008CD40;
    v9 = v2;
    sub_100005828(v6, v8);
  }

  return v2;
}

- (BOOL)_verifyInternalDataStructures
{
  v3 = [(ACXAvailableApplicationManager *)self appList];
  v4 = [v3 count];

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(ACXAvailableApplicationManager *)self companionToWatchAppsBundleIDMap];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000093D4;
  v10[3] = &unk_10008CD68;
  v10[4] = &v11;
  [v5 enumerateKeysAndObjectsUsingBlock:v10];

  v6 = v12[3];
  if (v4 != v6 && (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3))
  {
    v7 = [(ACXAvailableApplicationManager *)self appList];
    v9 = [(ACXAvailableApplicationManager *)self companionToWatchAppsBundleIDMap];
    MOLogWrite();
  }

  _Block_object_dispose(&v11, 8);
  return v4 != v6;
}

- (void)_onQueue_writeAppListToDisk
{
  v23 = sub_100006798();
  v22 = [v23 URLByAppendingPathComponent:@"AvailableApps.plist" isDirectory:0];
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    MOLogWrite();
  }

  v3 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = [(ACXAvailableApplicationManager *)self appList];
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v10 = [(ACXAvailableApplicationManager *)self appList];
        v11 = [v10 objectForKeyedSubscript:v9];
        v12 = [v11 serialize];

        [v3 setObject:v12 forKeyedSubscript:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v6);
  }

  v29[0] = @"Version";
  v29[1] = @"AppList";
  v30[0] = &off_1000975C0;
  v30[1] = v3;
  v29[2] = @"LSUUID";
  v13 = [(ACXAvailableApplicationManager *)self lastLSUUID];
  v14 = [v13 UUIDString];
  v30[2] = v14;
  v29[3] = @"CompanionToWKBundleIDMap";
  v15 = [(ACXAvailableApplicationManager *)self companionToWatchAppsBundleIDMap];
  v30[3] = v15;
  v29[4] = @"OurDBUUID";
  v16 = [(ACXAvailableApplicationManager *)self ourDBUUID];
  v17 = [v16 UUIDString];
  v30[4] = v17;
  v29[5] = @"LastSequenceNumber";
  v18 = [NSNumber numberWithUnsignedInteger:[(ACXAvailableApplicationManager *)self lastSequenceNumber]];
  v30[5] = v18;
  v19 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:6];

  v24 = 0;
  LOBYTE(v14) = [v19 ACX_writeToURL:v22 format:200 options:268435457 error:&v24];
  v20 = v24;
  if ((v14 & 1) == 0 && (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3))
  {
    v21 = [v22 path];
    MOLogWrite();
  }
}

- (BOOL)_onQueue_infoMatchesCurrentLSDatabaseWithUUID:(id *)a3
{
  v5 = +[LSApplicationWorkspace defaultWorkspace];
  v17 = 0;
  v18 = 0;
  [v5 getKnowledgeUUID:&v18 andSequenceNumber:&v17];
  v6 = v18;
  v7 = v17;

  if (a3)
  {
    v8 = v6;
    *a3 = v6;
  }

  v9 = [(ACXAvailableApplicationManager *)self lastLSUUID];

  if (!v9)
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
    {
      MOLogWrite();
    }

    goto LABEL_12;
  }

  v10 = [(ACXAvailableApplicationManager *)self lastLSUUID];
  v11 = [v6 isEqual:v10];

  if ((v11 & 1) == 0)
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
    {
      v13 = [(ACXAvailableApplicationManager *)self lastLSUUID];
      v14 = [v13 UUIDString];
      v16 = [v6 UUIDString];
      MOLogWrite();
    }

LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  v12 = 1;
LABEL_13:

  return v12;
}

- (void)_onQueue_noteDatabaseRebuild
{
  v2 = +[ACXGizmoStateManager sharedStateManager];
  [v2 noteDatabaseRebuild];
}

- (void)_onQueue_noteNewApps:(id)a3 updatedApps:(id)a4 removedApps:(id)a5 transitioningAppBundleIDs:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = +[ACXGizmoStateManager sharedStateManager];
  [v13 noteNewApps:v12 updatedApps:v11 removedApps:v10 transitioningAppBundleIDs:v9];
}

- (void)_onQueue_noteTrustObtainedForApps:(id)a3 trustRemovedForApps:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[ACXGizmoStateManager sharedStateManager];
  [v7 noteTrustObtainedForApps:v6 trustRemovedForApps:v5];
}

- (void)_onQueue_reSyncWithLS
{
  v56 = objc_opt_new();
  v57 = objc_opt_new();
  v55 = objc_opt_new();
  v3 = [(ACXAvailableApplicationManager *)self lastSequenceNumber];
  v75 = 0;
  v4 = [(ACXAvailableApplicationManager *)self _onQueue_infoMatchesCurrentLSDatabaseWithUUID:&v75];
  v48 = v75;
  v47 = v4;
  if (v4)
  {
    v5 = v3 + 1;
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      MOLogWrite();
    }

    v61 = [(ACXAvailableApplicationManager *)self appList];
  }

  else
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      MOLogWrite();
    }

    v6 = objc_opt_new();
    [(ACXAvailableApplicationManager *)self setAppList:v6];

    v7 = objc_opt_new();
    [(ACXAvailableApplicationManager *)self setCompanionToWatchAppsBundleIDMap:v7];

    [(ACXAvailableApplicationManager *)self setLastLSUUID:0];
    v8 = objc_opt_new();
    [(ACXAvailableApplicationManager *)self setOurDBUUID:v8];

    [(ACXAvailableApplicationManager *)self setLastSequenceNumber:0];
    v61 = 0;
    v5 = 1;
  }

  v59 = objc_opt_new();
  v58 = objc_opt_new();
  v63 = self;
  v9 = [(ACXAvailableApplicationManager *)self _alwaysIgnoredSystemAppBundleIDs];
  [LSApplicationRecord enumeratorWithOptions:0];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v10 = v74 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v71 objects:v81 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v72;
    v60 = v9;
    v49 = *v72;
    v50 = v10;
    do
    {
      v14 = 0;
      v51 = v12;
      do
      {
        if (*v72 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v71 + 1) + 8 * v14);
        v16 = objc_autoreleasePoolPush();
        if ([v15 ACX_shouldBeTrackedByAppConduit])
        {
          if ([v15 isPlaceholder])
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
            {
              v17 = [v15 bundleIdentifier];
              *buf = 136315394;
              v78 = "[ACXAvailableApplicationManager _onQueue_reSyncWithLS]";
              v79 = 2112;
              v80 = v17;
              _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: Unexpectedly received a placeholder for %@", buf, 0x16u);
            }
          }

          else
          {
            v18 = [v15 counterpartIdentifiers];
            v19 = v18;
            if (v18 && [v18 count])
            {
              v53 = v16;
              v54 = v14;
              v69 = 0u;
              v70 = 0u;
              v67 = 0u;
              v68 = 0u;
              v52 = v19;
              obj = v19;
              v20 = [obj countByEnumeratingWithState:&v67 objects:v76 count:16];
              if (v20)
              {
                v21 = v20;
                v22 = *v68;
                do
                {
                  for (i = 0; i != v21; i = i + 1)
                  {
                    if (*v68 != v22)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v24 = *(*(&v67 + 1) + 8 * i);
                    if (([v9 containsObject:{v24, v46}] & 1) == 0)
                    {
                      v25 = [v61 objectForKeyedSubscript:v24];
                      v26 = v25;
                      if (v25)
                      {
                        v27 = [v25 lsSequenceNumber];
                        if (v27 == [v15 sequenceNumber])
                        {
                          v28 = [v26 bundleIdentifier];
                          [v59 setObject:v26 forKeyedSubscript:v28];

                          v29 = [v26 bundleIdentifier];
                          v30 = [v26 companionAppBundleID];
                          [(ACXAvailableApplicationManager *)v63 addGizmoBundleId:v29 forCompanionBundleID:v30 toMap:v58];

                          v31 = v5;
                        }

                        else
                        {
                          if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
                          {
                            v46 = [v15 bundleIdentifier];
                            MOLogWrite();
                          }

                          v31 = v5 + 1;
                          v37 = [ACXApplication alloc];
                          v38 = [(ACXAvailableApplicationManager *)v63 ourDBUUID];
                          v29 = [v37 initWithApplicationRecord:v15 gizmoBundleIdentifier:v24 databaseUUID:v38 sequenceNumber:v5];

                          if (v29)
                          {
                            if (sub_10000A33C(v26, v29))
                            {
                              v39 = [v29 bundleIdentifier];
                              [v55 addObject:v39];
                            }

                            v40 = [v29 bundleIdentifier];
                            [v59 setObject:v29 forKeyedSubscript:v40];

                            v41 = [v29 bundleIdentifier];
                            v42 = [v29 companionAppBundleID];
                            [(ACXAvailableApplicationManager *)v63 addGizmoBundleId:v41 forCompanionBundleID:v42 toMap:v58];

                            [v56 addObject:v29];
                          }
                        }
                      }

                      else
                      {
                        v31 = v5 + 1;
                        v32 = [ACXApplication alloc];
                        v33 = [(ACXAvailableApplicationManager *)v63 ourDBUUID];
                        v29 = [v32 initWithApplicationRecord:v15 gizmoBundleIdentifier:v24 databaseUUID:v33 sequenceNumber:v5];

                        if (v29)
                        {
                          v34 = [v29 bundleIdentifier];
                          v35 = [v29 companionAppBundleID];
                          if (!v34)
                          {
                            sub_100059A00();
                          }

                          v36 = v35;
                          if (!v35)
                          {
                            sub_1000599D4();
                          }

                          [v59 setObject:v29 forKeyedSubscript:v34];
                          [(ACXAvailableApplicationManager *)v63 addGizmoBundleId:v34 forCompanionBundleID:v36 toMap:v58];
                          [v57 addObject:v29];
                        }
                      }

                      v5 = v31;
                      v9 = v60;
                    }
                  }

                  v21 = [obj countByEnumeratingWithState:&v67 objects:v76 count:16];
                }

                while (v21);
              }

              v13 = v49;
              v10 = v50;
              v12 = v51;
              v19 = v52;
              v16 = v53;
              v14 = v54;
            }
          }
        }

        objc_autoreleasePoolPop(v16);
        v14 = v14 + 1;
      }

      while (v14 != v12);
      v12 = [v10 countByEnumeratingWithState:&v71 objects:v81 count:16];
    }

    while (v12);
  }

  if (v47)
  {
    v43 = objc_opt_new();
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_10000A460;
    v64[3] = &unk_10008CD90;
    v65 = v59;
    v44 = v43;
    v66 = v44;
    [v61 enumerateKeysAndObjectsUsingBlock:v64];
    if ([v44 count] && (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5))
    {
      v46 = v44;
      MOLogWrite();
    }

    v5 += [v44 count];
    if ([v57 count] || objc_msgSend(v56, "count") || objc_msgSend(v44, "count"))
    {
      [(ACXAvailableApplicationManager *)v63 _onQueue_noteNewApps:v57 updatedApps:v56 removedApps:v44 transitioningAppBundleIDs:v55];
    }

    v45 = v63;
  }

  else
  {
    v45 = v63;
    [(ACXAvailableApplicationManager *)v63 _onQueue_noteDatabaseRebuild];
    v44 = 0;
  }

  [(ACXAvailableApplicationManager *)v45 setAppList:v59, v46];
  [(ACXAvailableApplicationManager *)v45 setLastLSUUID:v48];
  [(ACXAvailableApplicationManager *)v45 setCompanionToWatchAppsBundleIDMap:v58];
  [(ACXAvailableApplicationManager *)v45 setLastSequenceNumber:v5 - 1];
  if ([(ACXAvailableApplicationManager *)v45 _onQueue_infoMatchesCurrentLSDatabaseWithUUID:0])
  {
    if (!v47 || [v57 count] || objc_msgSend(v56, "count") || objc_msgSend(v44, "count"))
    {
      [(ACXAvailableApplicationManager *)v45 _onQueue_writeAppListToDisk];
    }
  }

  else
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      MOLogWrite();
    }

    [(ACXAvailableApplicationManager *)v45 _onQueue_reSyncWithLS];
  }
}

- (void)addGizmoBundleId:(id)a3 forCompanionBundleID:(id)a4 toMap:(id)a5
{
  v12 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v8 objectForKeyedSubscript:v7];
  v10 = [v9 mutableCopy];

  if (!v10)
  {
    v10 = objc_opt_new();
  }

  if (([v10 containsObject:v12] & 1) == 0)
  {
    [v10 addObject:v12];
    v11 = [v10 copy];
    [v8 setObject:v11 forKeyedSubscript:v7];
  }
}

- (void)applicationsInstalledWithAppRecords:(id)a3
{
  v4 = a3;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v7 = v4;
    MOLogWrite();
  }

  v5 = [(ACXAvailableApplicationManager *)self stateQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000A694;
  v8[3] = &unk_10008CC38;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  sub_100005828(v5, v8);
}

- (void)applicationsInstalledWithCompanionIdentifiers:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v23 = objc_opt_new();
  v7 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v4;
  v8 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    v24 = *v33;
    do
    {
      v11 = 0;
      v25 = v9;
      do
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v32 + 1) + 8 * v11);
        v13 = [v12 bundleIdentifier];
        if ([v12 isPlaceholder])
        {
          if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
          {
            v22 = v13;
            MOLogWrite();
          }
        }

        else
        {
          v14 = [(ACXAvailableApplicationManager *)self ourDBUUID];
          v15 = [ACXApplication gizmoApplicationsFromCompanionAppRecord:v12 databaseUUID:v14 startingSequenceNumber:[(ACXAvailableApplicationManager *)self lastSequenceNumber]+ 1];

          if (v15)
          {
            v16 = [(ACXAvailableApplicationManager *)self companionToWatchAppsBundleIDMap];
            [v16 setObject:0 forKeyedSubscript:v13];

            v30 = 0u;
            v31 = 0u;
            v28 = 0u;
            v29 = 0u;
            v27 = v15;
            v17 = v15;
            v18 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v29;
              do
              {
                for (i = 0; i != v19; i = i + 1)
                {
                  if (*v29 != v20)
                  {
                    objc_enumerationMutation(v17);
                  }

                  [(ACXAvailableApplicationManager *)self processApplication:*(*(&v28 + 1) + 8 * i) withNewApps:v5 updatedApps:v6 transitioningAppBundleIDs:v7];
                }

                v19 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
              }

              while (v19);
            }

            -[ACXAvailableApplicationManager setLastSequenceNumber:](self, "setLastSequenceNumber:", [v17 count] + -[ACXAvailableApplicationManager lastSequenceNumber](self, "lastSequenceNumber"));
            v10 = v24;
            v15 = v27;
          }

          else
          {
            [(ACXAvailableApplicationManager *)self processApplicationRemovalWithCompanionBundleID:v13 removedApps:v23];
          }

          v9 = v25;
        }

        v11 = v11 + 1;
      }

      while (v11 != v9);
      v9 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v9);
  }

  if ([v5 count] || objc_msgSend(v6, "count") || objc_msgSend(v23, "count"))
  {
    [(ACXAvailableApplicationManager *)self _onQueue_noteNewApps:v5 updatedApps:v6 removedApps:v23 transitioningAppBundleIDs:v7, v22];
    [(ACXAvailableApplicationManager *)self _onQueue_writeAppListToDisk];
  }
}

- (void)processApplicationRemovalWithCompanionBundleID:(id)a3 removedApps:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACXAvailableApplicationManager *)self companionToWatchAppsBundleIDMap];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (v9)
  {
    v21 = v9;
    v22 = v6;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
          {
            v20 = *(*(&v23 + 1) + 8 * i);
            MOLogWrite();
          }

          v16 = [(ACXAvailableApplicationManager *)self appList];
          v17 = [v16 objectForKeyedSubscript:v15];

          if (!v17)
          {
            sub_100059A2C();
          }

          v18 = [(ACXAvailableApplicationManager *)self appList];
          [v18 removeObjectForKey:v15];

          [v7 addObject:v17];
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v12);
    }

    v19 = [(ACXAvailableApplicationManager *)self companionToWatchAppsBundleIDMap];
    v6 = v22;
    [v19 setObject:0 forKeyedSubscript:v22];

    v9 = v21;
  }

  else if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
  {
    MOLogWrite();
  }
}

- (void)processApplication:(id)a3 withNewApps:(id)a4 updatedApps:(id)a5 transitioningAppBundleIDs:(id)a6
{
  v24 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (!v24)
  {
    sub_100059AB0();
  }

  v13 = [v24 bundleIdentifier];
  if (!v13)
  {
    sub_100059A84();
  }

  v14 = v13;
  v15 = [v24 companionAppBundleID];
  if (!v15)
  {
    sub_100059A58();
  }

  v16 = v15;
  v17 = [(ACXAvailableApplicationManager *)self appList];
  v18 = [v17 objectForKeyedSubscript:v14];

  if (v18)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      v23 = v14;
      MOLogWrite();
    }

    v19 = v11;
    if (sub_10000A33C(v18, v24))
    {
      v20 = [v24 bundleIdentifier];
      [v12 addObject:v20];

      v19 = v11;
    }
  }

  else if (!qword_1000A4878 || (v19 = v10, *(qword_1000A4878 + 44) >= 5))
  {
    v23 = v14;
    MOLogWrite();
    v19 = v10;
  }

  v21 = [(ACXAvailableApplicationManager *)self appList];
  [v21 setObject:v24 forKeyedSubscript:v14];

  v22 = [(ACXAvailableApplicationManager *)self companionToWatchAppsBundleIDMap];
  [(ACXAvailableApplicationManager *)self addGizmoBundleId:v14 forCompanionBundleID:v16 toMap:v22];

  [v19 addObject:v24];
}

- (void)applicationsUninstalledWithAppRecords:(id)a3
{
  v4 = a3;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v7 = v4;
    MOLogWrite();
  }

  v5 = [(ACXAvailableApplicationManager *)self stateQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000AF5C;
  v8[3] = &unk_10008CC38;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  sub_100005828(v5, v8);
}

- (void)profileTrustChanged
{
  v3 = [(ACXAvailableApplicationManager *)self stateQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000B340;
  v4[3] = &unk_10008CD40;
  v4[4] = self;
  sub_100005828(v3, v4);
}

- (id)infoForGizmoAppsWithBundleIDs:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(ACXAvailableApplicationManager *)self stateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B8D4;
  block[3] = &unk_10008CA48;
  v12 = v4;
  v13 = self;
  v14 = v5;
  v7 = v5;
  v8 = v4;
  dispatch_sync(v6, block);

  v9 = [v7 copy];

  return v9;
}

- (id)gizmoAppWithBundleID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10000BB5C;
  v16 = sub_10000BB6C;
  v17 = 0;
  v5 = [(ACXAvailableApplicationManager *)self stateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000BB74;
  block[3] = &unk_10008CA20;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (BOOL)gizmoAppIsLocallyAvailableWithBundleID:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(ACXAvailableApplicationManager *)self stateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000BCEC;
  block[3] = &unk_10008CA20;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

- (id)bundleIDsOfAvailableAppsExcludingSystemApps
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000BB5C;
  v11 = sub_10000BB6C;
  v12 = objc_opt_new();
  v3 = [(ACXAvailableApplicationManager *)self stateQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000BE8C;
  v6[3] = &unk_10008C9F8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = [v8[5] copy];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)allAvailablePlaceholders
{
  v2 = objc_opt_new();
  v3 = [LSApplicationRecord enumeratorWithOptions:64];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        if ([v8 isPlaceholder])
        {
          v9 = [v8 applicationState];
          v10 = [v9 isDowngraded];

          if (!v10)
          {
            v11 = [v8 bundleIdentifier];
            [v2 addObject:v11];
            goto LABEL_14;
          }

          if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
          {
            v11 = [v8 bundleIdentifier];
            v15 = v11;
            MOLogWrite();
LABEL_14:

            continue;
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
        {
          v12 = [v8 bundleIdentifier];
          *buf = 136315394;
          v21 = "[ACXAvailableApplicationManager allAvailablePlaceholders]";
          v22 = 2112;
          v23 = v12;
          _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: Unexpectedly received a non-placeholder for %@", buf, 0x16u);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v5);
  }

  v13 = [v2 copy];

  return v13;
}

- (id)gizmoAppBundleIDForCompanionAppBundleID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10000BB5C;
  v16 = sub_10000BB6C;
  v17 = 0;
  v5 = [(ACXAvailableApplicationManager *)self stateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C31C;
  block[3] = &unk_10008CA20;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)gizmoAppBundleIDsForCompanionAppBundleIDs:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableSet);
  v6 = [(ACXAvailableApplicationManager *)self stateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C494;
  block[3] = &unk_10008CA48;
  v12 = v4;
  v13 = self;
  v14 = v5;
  v7 = v5;
  v8 = v4;
  dispatch_sync(v6, block);

  v9 = [v7 copy];

  return v9;
}

- (id)gizmoAppForCompanionAppBundleID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10000BB5C;
  v16 = sub_10000BB6C;
  v17 = 0;
  v5 = [(ACXAvailableApplicationManager *)self stateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C758;
  block[3] = &unk_10008CA70;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)availableSystemAppWithBundleID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10000BB5C;
  v25 = sub_10000BB6C;
  v26 = 0;
  v7 = [(ACXAvailableApplicationManager *)self possibleCompanionDeletableSystemAppToWatchCounterpartsMap];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000C9FC;
  v18[3] = &unk_10008CE08;
  v8 = v6;
  v19 = v8;
  v20 = &v21;
  [v7 enumerateKeysAndObjectsUsingBlock:v18];

  v12 = v22[5];
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v14 = sub_100001B04("[ACXAvailableApplicationManager availableSystemAppWithBundleID:error:]", 836, @"ACXErrorDomain", 19, @"Could not locate an available system app with bundle ID %@", v9, v10, v11, v8);
    v13 = v14;
    v12 = v22[5];
    if (a4 && !v12)
    {
      v15 = v14;
      *a4 = v13;
      v12 = v22[5];
    }
  }

  v16 = v12;

  _Block_object_dispose(&v21, 8);

  return v16;
}

- (BOOL)systemAppIsAvailableWithBundleID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v7 = +[LSApplicationWorkspace defaultWorkspace];
  v8 = [(ACXAvailableApplicationManager *)self possibleCompanionDeletableSystemAppToWatchCounterpartsMap];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000CCBC;
  v18[3] = &unk_10008CE30;
  v9 = v6;
  v19 = v9;
  v10 = v7;
  v20 = v10;
  v21 = &v22;
  [v8 enumerateKeysAndObjectsUsingBlock:v18];

  v14 = *(v23 + 24);
  if (v14)
  {
    v15 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v15 = sub_100001B04("[ACXAvailableApplicationManager systemAppIsAvailableWithBundleID:error:]", 861, @"ACXErrorDomain", 19, @"Could not locate an available system app with bundle ID %@", v11, v12, v13, v9);
    v14 = *(v23 + 24);
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  if ((v14 & 1) == 0)
  {
    v16 = v15;
    *a4 = v15;
    v14 = *(v23 + 24);
  }

LABEL_7:

  _Block_object_dispose(&v22, 8);
  return v14 & 1;
}

- (id)companionBundleIDForLocallyAvailableSystemApp:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_10000BB5C;
  v28 = sub_10000BB6C;
  v29 = 0;
  v7 = +[LSApplicationWorkspace defaultWorkspace];
  v8 = [(ACXAvailableApplicationManager *)self possibleCompanionDeletableSystemAppToWatchCounterpartsMap];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000CF20;
  v20[3] = &unk_10008CE30;
  v9 = v6;
  v21 = v9;
  v10 = v7;
  v22 = v10;
  v23 = &v24;
  [v8 enumerateKeysAndObjectsUsingBlock:v20];

  v14 = v25[5];
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v16 = sub_100001B04("[ACXAvailableApplicationManager companionBundleIDForLocallyAvailableSystemApp:error:]", 886, @"ACXErrorDomain", 19, @"Could not locate an available system app with bundle ID %@", v11, v12, v13, v9);
    v15 = v16;
    v14 = v25[5];
    if (a4 && !v14)
    {
      v17 = v16;
      *a4 = v15;
      v14 = v25[5];
    }
  }

  v18 = v14;

  _Block_object_dispose(&v24, 8);

  return v18;
}

- (id)_bundleIDsOfLocallyAvailableSystemApps
{
  v3 = objc_opt_new();
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  v5 = [(ACXAvailableApplicationManager *)self possibleCompanionDeletableSystemAppToWatchCounterpartsMap];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000D0A8;
  v11[3] = &unk_10008CE58;
  v12 = v4;
  v6 = v3;
  v13 = v6;
  v7 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

- (id)bundleIDsOfLocallyAvailableSystemApps
{
  v3 = [(ACXAvailableApplicationManager *)self _bundleIDsOfLocallyAvailableSystemApps];
  v4 = [(ACXAvailableApplicationManager *)self _supplementalSystemAppBundleIDMappingForWatchOSSixAndLater];
  v5 = [v4 allKeys];
  [v3 addObjectsFromArray:v5];

  v6 = [v3 copy];

  return v6;
}

- (id)bundleIDsOfLocallyAvailableSystemAppsForPreWatchOSSix
{
  v3 = objc_opt_new();
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  v5 = [(ACXAvailableApplicationManager *)self _systemAppBundleIDMappingForPreWatchOSSix];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10000D2C8;
  v15 = &unk_10008CE80;
  v16 = v4;
  v17 = v3;
  v6 = v3;
  v7 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:&v12];

  v8 = [(ACXAvailableApplicationManager *)self _supplementalSystemAppBundleIDMappingForPreWatchOSSix:v12];
  v9 = [v8 allKeys];
  [v6 addObjectsFromArray:v9];

  v10 = [v6 copy];

  return v10;
}

- (id)locallyAvailableSystemAppBundleIDToCompanionBundleIDMapping
{
  v3 = objc_opt_new();
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  v5 = [(ACXAvailableApplicationManager *)self possibleCompanionDeletableSystemAppToWatchCounterpartsMap];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_10000D430;
  v13 = &unk_10008CE58;
  v14 = v4;
  v15 = v3;
  v6 = v3;
  v7 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:&v10];

  v8 = [v6 copy];

  return v8;
}

- (id)locallyAvailableSystemAppBundleIDToCompanionBundleIDMappingForPreWatchOSSix
{
  v3 = objc_opt_new();
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  v5 = [(ACXAvailableApplicationManager *)self _systemAppBundleIDMappingForPreWatchOSSix];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10000D67C;
  v14 = &unk_10008CE80;
  v15 = v4;
  v16 = v3;
  v6 = v3;
  v7 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:&v11];

  v8 = [(ACXAvailableApplicationManager *)self _supplementalSystemAppBundleIDMappingForPreWatchOSSix:v11];
  [v6 addEntriesFromDictionary:v8];

  v9 = [v6 copy];

  return v9;
}

- (NSDictionary)possibleCompanionDeletableSystemAppToWatchCounterpartsMap
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000BB5C;
  v11 = sub_10000BB6C;
  v12 = 0;
  v3 = [(ACXAvailableApplicationManager *)self stateQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000D80C;
  v6[3] = &unk_10008C9F8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)applicationsDidInstall:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v16 = 0;
        v11 = sub_100008374(v10, &v16);
        v12 = v16;
        if (v11)
        {
          [v4 addObject:v11];
        }

        else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
        {
          v13 = [v10 bundleIdentifier];
          v14 = v12;
          MOLogWrite();
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  [(ACXAvailableApplicationManager *)self applicationsInstalledWithAppRecords:v4];
}

- (void)applicationsDidUninstall:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v14;
    do
    {
      v11 = 0;
      v12 = v9;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v9 = [*(*(&v13 + 1) + 8 * v11) correspondingApplicationRecord];

        [v5 addObject:v9];
        v11 = v11 + 1;
        v12 = v9;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [(ACXAvailableApplicationManager *)self applicationsUninstalledWithAppRecords:v5];
}

- (void)applicationInstallsDidStart:(id)a3
{
  v3 = a3;
  v18 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = [v9 appState];
        if ([v10 isValid])
        {
          v11 = [v9 appState];
          v12 = [v11 isDowngraded];

          if (v12)
          {
            if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
            {
              v15 = [v9 bundleIdentifier];
              MOLogWrite();
            }

            v19 = 0;
            v13 = sub_100008374(v9, &v19);
            v14 = v19;
            if (v13)
            {
              [v18 addObject:v13];
            }

            else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
            {
              v15 = [v9 bundleIdentifier];
              v16 = v14;
              MOLogWrite();
            }

            goto LABEL_21;
          }
        }

        else
        {
        }

        if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
        {
          v14 = [v9 bundleIdentifier];
          v15 = v14;
          MOLogWrite();
LABEL_21:

          continue;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  if ([v18 count])
  {
    [(ACXAvailableApplicationManager *)self applicationsUninstalledWithAppRecords:v18];
  }
}

@end