@interface ACXLaunchServicesWatcher
+ (id)sharedWatcher;
- (ACXLaunchServicesWatcher)init;
- (BOOL)_onQueue_clearApplicationEventsForDBUUID:(id)a3 endingSequenceNumber:(unint64_t)a4 error:(id *)a5;
- (BOOL)_onQueue_enumerateApplicationsForBundleIDs:(id)a3 error:(id *)a4 enumerator:(id)a5;
- (BOOL)_onQueue_infoMatchesCurrentLSDatabaseWithUUID:(id *)a3;
- (BOOL)clearApplicationEventsForDBUUID:(id)a3 endingSequenceNumber:(unint64_t)a4 error:(id *)a5;
- (BOOL)enumerateApplicationsForBundleIDs:(id)a3 currentDBUUID:(id *)a4 currentLastSequenceNumber:(unint64_t *)a5 error:(id *)a6 enumerator:(id)a7;
- (id)_onQueue_applicationForAppRecord:(id)a3 error:(id *)a4;
- (id)allInstalledBundleIDsInDatabaseWithUUID:(id *)a3 lastSequenceNumber:(unint64_t *)a4;
- (id)applicationForAppRecord:(id)a3 currentLastSequenceNumber:(unint64_t *)a4 error:(id *)a5;
- (id)applicationsForAppRecords:(id)a3 currentDBUUID:(id *)a4 currentLastSequenceNumber:(unint64_t *)a5 error:(id *)a6;
- (void)_onQueue_addAppEvent:(id)a3;
- (void)_onQueue_noteDatabaseRebuild;
- (void)_onQueue_noteNewApps:(id)a3 updatedApps:(id)a4 removedApps:(id)a5 forDBUUID:(id)a6 endingSequenceNumber:(unint64_t)a7;
- (void)_onQueue_reSyncWithLS;
- (void)_onQueue_writeAppListToDisk;
- (void)applicationInstallsDidStart:(id)a3;
- (void)applicationsDidInstall:(id)a3;
- (void)applicationsDidUninstall:(id)a3;
- (void)applicationsInstalledWithAppRecords:(id)a3;
- (void)applicationsUninstalledWithAppRecords:(id)a3;
- (void)enumerateApplicationEventsReturningDBUUID:(id *)a3 startingSequenceNumber:(unint64_t *)a4 withBlock:(id)a5;
- (void)fetchDatabaseUUID:(id *)a3 andCurrentLastSequenceNumber:(unint64_t *)a4;
@end

@implementation ACXLaunchServicesWatcher

+ (id)sharedWatcher
{
  if (qword_1000A4810 != -1)
  {
    sub_100059F14();
  }

  v3 = qword_1000A4808;

  return v3;
}

- (ACXLaunchServicesWatcher)init
{
  v10.receiver = self;
  v10.super_class = ACXLaunchServicesWatcher;
  v2 = [(ACXLaunchServicesWatcher *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.appconduit.LSWatcher", v3);
    stateQueue = v2->_stateQueue;
    v2->_stateQueue = v4;

    v6 = [(ACXLaunchServicesWatcher *)v2 stateQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000303B4;
    v8[3] = &unk_10008CD40;
    v9 = v2;
    sub_100005828(v6, v8);
  }

  return v2;
}

- (void)_onQueue_writeAppListToDisk
{
  v27 = sub_100006798();
  v3 = [v27 URLByAppendingPathComponent:@"AvailableCompanionApps.plist" isDirectory:0];
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v4 = [(ACXLaunchServicesWatcher *)self lastLSUUID];
    v25 = [(ACXLaunchServicesWatcher *)self ourDBUUID];
    v26 = [(ACXLaunchServicesWatcher *)self lastSequenceNumber];
    v23 = v4;
    MOLogWrite();
  }

  v5 = objc_opt_new();
  v6 = [(ACXLaunchServicesWatcher *)self appList];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100031368;
  v33[3] = &unk_10008D948;
  v7 = v5;
  v34 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v33];

  v8 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = [(ACXLaunchServicesWatcher *)self eventQueue];
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    do
    {
      v13 = 0;
      do
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v29 + 1) + 8 * v13) dictionaryRepresentation];
        [v8 addObject:v14];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v11);
  }

  v35[0] = @"Version";
  v35[1] = @"AppList";
  v36[0] = &off_1000977B8;
  v36[1] = v7;
  v35[2] = @"LSUUID";
  v15 = [(ACXLaunchServicesWatcher *)self lastLSUUID];
  v16 = [v15 UUIDString];
  v36[2] = v16;
  v35[3] = @"OurDBUUID";
  v17 = [(ACXLaunchServicesWatcher *)self ourDBUUID];
  v18 = [v17 UUIDString];
  v36[3] = v18;
  v35[4] = @"LastSequenceNumber";
  v19 = [NSNumber numberWithUnsignedInteger:[(ACXLaunchServicesWatcher *)self lastSequenceNumber]];
  v36[4] = v19;
  v36[5] = v8;
  v35[5] = @"AppEvents";
  v35[6] = @"AppEventsStartSequenceNumber";
  v20 = [NSNumber numberWithUnsignedInteger:[(ACXLaunchServicesWatcher *)self eventQueueStartSequenceNumber]];
  v36[6] = v20;
  v21 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:7];

  v28 = 0;
  LOBYTE(v20) = [v21 ACX_writeToURL:v3 format:200 options:268435457 error:&v28];
  v22 = v28;
  if ((v20 & 1) == 0 && (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3))
  {
    v24 = [v3 path];
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

  v9 = [(ACXLaunchServicesWatcher *)self lastLSUUID];

  if (!v9)
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
    {
      MOLogWrite();
    }

    goto LABEL_12;
  }

  v10 = [(ACXLaunchServicesWatcher *)self lastLSUUID];
  v11 = [v6 isEqual:v10];

  if ((v11 & 1) == 0)
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
    {
      v13 = [(ACXLaunchServicesWatcher *)self lastLSUUID];
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

- (id)_onQueue_applicationForAppRecord:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(ACXLaunchServicesWatcher *)self appList];
  v8 = [v6 bundleIdentifier];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = [v6 databaseUUID];
    v11 = [(ACXLaunchServicesWatcher *)self lastLSUUID];
    v12 = [v10 isEqual:v11];

    if (v12)
    {
      v14 = [v9 lsSequenceNumber];
      if (v14 == [v6 sequenceNumber])
      {
        v15 = [ACXCompanionApplication alloc];
        v16 = [(ACXLaunchServicesWatcher *)self ourDBUUID];
        v17 = -[ACXCompanionApplication initWithApplicationRecord:databaseUUID:sequenceNumber:](v15, "initWithApplicationRecord:databaseUUID:sequenceNumber:", v6, v16, [v9 acxSequenceNumber]);

        if (v17)
        {
          v19 = 0;
          goto LABEL_14;
        }

        v19 = sub_1000061DC("[ACXLaunchServicesWatcher _onQueue_applicationForAppRecord:error:]", 307, @"ACXErrorDomain", 1, 0, 0, @"Failed to create app object instance for %@", v18, v6);
        if (!a4)
        {
          goto LABEL_13;
        }

LABEL_11:
        v24 = v19;
        v17 = 0;
        *a4 = v19;
        goto LABEL_14;
      }

      v26 = v14;
      v22 = @"Sequence number of app record is different from what were expecting (expecting %lu; got %lu)";
      v23 = 300;
    }

    else
    {
      v22 = @"LS database UUID is different from what we were expecting; triggering rebuild.";
      v23 = 292;
    }

    v19 = sub_1000061DC("[ACXLaunchServicesWatcher _onQueue_applicationForAppRecord:error:]", v23, @"ACXErrorDomain", 43, 0, 0, v22, v13, v26);
  }

  else
  {
    v20 = [v6 bundleIdentifier];
    v19 = sub_1000061DC("[ACXLaunchServicesWatcher _onQueue_applicationForAppRecord:error:]", 286, @"ACXErrorDomain", 43, 0, 0, @"No sequence number record found for app %@", v21, v20);
  }

  [(ACXLaunchServicesWatcher *)self _onQueue_reSyncWithLS];
  if (a4)
  {
    goto LABEL_11;
  }

LABEL_13:
  v17 = 0;
LABEL_14:

  return v17;
}

- (id)applicationForAppRecord:(id)a3 currentLastSequenceNumber:(unint64_t *)a4 error:(id *)a5
{
  v8 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_1000319B4;
  v29 = sub_1000319C4;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1000319B4;
  v23 = sub_1000319C4;
  v24 = 0;
  v9 = [(ACXLaunchServicesWatcher *)self stateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000319CC;
  block[3] = &unk_10008D970;
  v16 = &v25;
  block[4] = self;
  v10 = v8;
  v17 = &v19;
  v18 = a4;
  v15 = v10;
  dispatch_sync(v9, block);

  v11 = v26[5];
  if (a5 && !v11)
  {
    *a5 = v20[5];
    v11 = v26[5];
  }

  v12 = v11;

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v12;
}

- (id)applicationsForAppRecords:(id)a3 currentDBUUID:(id *)a4 currentLastSequenceNumber:(unint64_t *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = objc_opt_new();
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_1000319B4;
  v32 = sub_1000319C4;
  v33 = 0;
  v12 = [(ACXLaunchServicesWatcher *)self stateQueue];
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_100031C18;
  v21 = &unk_10008D998;
  v13 = v10;
  v22 = v13;
  v23 = self;
  v14 = v11;
  v24 = v14;
  v25 = &v28;
  v26 = a5;
  v27 = a4;
  dispatch_sync(v12, &v18);

  if (a6)
  {
    v15 = v29[5];
    if (v15)
    {
      *a6 = v15;

      v14 = 0;
    }
  }

  v16 = [v14 copy];

  _Block_object_dispose(&v28, 8);

  return v16;
}

- (BOOL)_onQueue_enumerateApplicationsForBundleIDs:(id)a3 error:(id *)a4 enumerator:(id)a5
{
  v7 = a3;
  v8 = a5;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v27 = a4;
    v11 = 0;
    v12 = *v33;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v33 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v32 + 1) + 8 * v13);
      v15 = [LSApplicationRecord alloc];
      v31 = v11;
      v16 = [v15 initWithBundleIdentifier:v14 allowPlaceholder:0 error:&v31];
      v17 = v31;

      if (!v16)
      {
        break;
      }

      v19 = [v16 applicationState];
      v20 = [v19 isInstalled];

      if ((v20 & 1) == 0)
      {
        sub_1000061DC("[ACXLaunchServicesWatcher _onQueue_enumerateApplicationsForBundleIDs:error:enumerator:]", 379, @"ACXErrorDomain", 43, 0, 0, @"Failed to fetch valid applicationState for LSApplicationRecord for %@", v21, v14);
        goto LABEL_16;
      }

      v30 = v17;
      v22 = [(ACXLaunchServicesWatcher *)self _onQueue_applicationForAppRecord:v16 error:&v30];
      v11 = v30;

      if (!v22)
      {
        goto LABEL_17;
      }

      v8[2](v8, v22);

      if (v10 == ++v13)
      {
        v10 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }

    sub_1000061DC("[ACXLaunchServicesWatcher _onQueue_enumerateApplicationsForBundleIDs:error:enumerator:]", 376, @"ACXErrorDomain", 43, v17, 0, @"Failed to fetch valid LSApplicationRecord for %@", v18, v14);
    v11 = LABEL_16:;

LABEL_17:
    v23 = obj;

    if (v27)
    {
      v25 = v11;
      v24 = 0;
      *v27 = v11;
    }

    else
    {
      v24 = 0;
    }

    goto LABEL_20;
  }

  v11 = 0;
LABEL_13:
  v23 = obj;

  v24 = 1;
LABEL_20:

  return v24;
}

- (BOOL)enumerateApplicationsForBundleIDs:(id)a3 currentDBUUID:(id *)a4 currentLastSequenceNumber:(unint64_t *)a5 error:(id *)a6 enumerator:(id)a7
{
  v11 = a3;
  v12 = a7;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_1000319B4;
  v40 = sub_1000319C4;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_1000319B4;
  v34 = sub_1000319C4;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v13 = [(ACXLaunchServicesWatcher *)self stateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000322B4;
  block[3] = &unk_10008D9C0;
  v22 = &v42;
  block[4] = self;
  v14 = v11;
  v20 = v14;
  v15 = v12;
  v21 = v15;
  v23 = &v36;
  v24 = &v30;
  v25 = &v26;
  dispatch_sync(v13, block);

  if (*(v43 + 24) == 1)
  {
    *a4 = v31[5];
    *a5 = v27[3];
  }

  else if (a6)
  {
    *a6 = v37[5];
  }

  v16 = *(v43 + 24);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);

  return v16;
}

- (void)_onQueue_addAppEvent:(id)a3
{
  v18 = a3;
  v4 = [(ACXLaunchServicesWatcher *)self eventQueue];
  if (v4)
  {
    v5 = v4;
    if ([v4 count] >= 0xF)
    {
      v6 = [v5 count] - 14;
      [v5 removeObjectsInRange:{0, v6}];
      v7 = [v5 objectAtIndexedSubscript:0];
      v8 = [v7 sequenceNumber];

      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        v16 = v6;
        v17 = v8;
        MOLogWrite();
      }

      [(ACXLaunchServicesWatcher *)self setEventQueueStartSequenceNumber:v8, v16, v17];
    }
  }

  else
  {
    v5 = objc_opt_new();
    [(ACXLaunchServicesWatcher *)self setEventQueue:v5];
  }

  v9 = [v18 bundleID];
  v10 = [v5 count];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    while (1)
    {
      v13 = [v5 objectAtIndexedSubscript:v12];
      v14 = [v13 bundleID];
      v15 = [v14 isEqualToString:v9];

      if (v15)
      {
        break;
      }

      if (v11 == ++v12)
      {
        goto LABEL_14;
      }
    }

    [v5 removeObjectAtIndex:v12];
  }

LABEL_14:
  [v5 addObject:v18];
}

- (BOOL)_onQueue_clearApplicationEventsForDBUUID:(id)a3 endingSequenceNumber:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(ACXLaunchServicesWatcher *)self eventQueue];
  v10 = [(ACXLaunchServicesWatcher *)self ourDBUUID];
  v11 = [v10 isEqual:v8];

  if ((v11 & 1) == 0)
  {
    v20 = sub_1000061DC("[ACXLaunchServicesWatcher _onQueue_clearApplicationEventsForDBUUID:endingSequenceNumber:error:]", 462, @"ACXErrorDomain", 43, 0, 0, @"Database UUIDs did not match", v12, v29);
    goto LABEL_40;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v34 = v9;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v14)
  {
    v15 = v14;
    v33 = a5;
    v16 = 0;
    v17 = *v36;
    while (2)
    {
      v18 = 0;
      v19 = v16;
      v16 += v15;
      do
      {
        if (*v36 != v17)
        {
          objc_enumerationMutation(v13);
        }

        if ([*(*(&v35 + 1) + 8 * v18) sequenceNumber] > a4)
        {
          v16 = v19;
          goto LABEL_13;
        }

        ++v19;
        v18 = v18 + 1;
      }

      while (v15 != v18);
      v15 = [v13 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }

LABEL_13:

    a5 = v33;
    if (v16)
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        v29 = v16;
        MOLogWrite();
      }

      [v13 removeObjectsInRange:{0, v16, v29}];
      v21 = 1;
      goto LABEL_23;
    }
  }

  else
  {
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    MOLogWrite();
  }

  v21 = 0;
LABEL_23:
  v22 = a4 + 1;
  v23 = [(ACXLaunchServicesWatcher *)self lastSequenceNumber];
  v24 = v23 + 1;
  if (a4 + 1 > v23 + 1)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      v29 = a4;
      v31 = v23;
      MOLogWrite();
    }

    v22 = v24;
  }

  v25 = [(ACXLaunchServicesWatcher *)self eventQueueStartSequenceNumber:v29];
  if (v25 == v22)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      v30 = v22;
      MOLogWrite();
    }

    if (!v21)
    {
      goto LABEL_39;
    }
  }

  else
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      v30 = v25;
      v32 = v22;
      MOLogWrite();
    }

    [(ACXLaunchServicesWatcher *)self setEventQueueStartSequenceNumber:v22, v30, v32];
  }

  [(ACXLaunchServicesWatcher *)self _onQueue_writeAppListToDisk];
LABEL_39:
  v20 = 0;
  v9 = v34;
LABEL_40:
  if (a5)
  {
    v26 = v11;
  }

  else
  {
    v26 = 1;
  }

  if ((v26 & 1) == 0)
  {
    v27 = v20;
    *a5 = v20;
  }

  return v11;
}

- (BOOL)clearApplicationEventsForDBUUID:(id)a3 endingSequenceNumber:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1000319B4;
  v22 = sub_1000319C4;
  v23 = 0;
  v9 = [(ACXLaunchServicesWatcher *)self stateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100032A00;
  block[3] = &unk_10008D970;
  v15 = &v24;
  block[4] = self;
  v10 = v8;
  v16 = &v18;
  v17 = a4;
  v14 = v10;
  dispatch_sync(v9, block);

  v11 = *(v25 + 24);
  if (a5 && (v25[3] & 1) == 0)
  {
    *a5 = v19[5];
    v11 = *(v25 + 24);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11 & 1;
}

- (void)enumerateApplicationEventsReturningDBUUID:(id *)a3 startingSequenceNumber:(unint64_t *)a4 withBlock:(id)a5
{
  v8 = a5;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1000319B4;
  v23 = sub_1000319C4;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = [(ACXLaunchServicesWatcher *)self stateQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100032C10;
  v11[3] = &unk_10008D9E8;
  v11[4] = self;
  v12 = v8;
  v13 = &v19;
  v14 = &v15;
  v10 = v8;
  dispatch_sync(v9, v11);

  *a3 = v20[5];
  *a4 = v16[3];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
}

- (void)fetchDatabaseUUID:(id *)a3 andCurrentLastSequenceNumber:(unint64_t *)a4
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1000319B4;
  v17 = sub_1000319C4;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v7 = [(ACXLaunchServicesWatcher *)self stateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100032E9C;
  block[3] = &unk_10008DA10;
  block[4] = self;
  block[5] = &v13;
  block[6] = &v9;
  dispatch_sync(v7, block);

  *a3 = v14[5];
  *a4 = v10[3];
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
}

- (id)allInstalledBundleIDsInDatabaseWithUUID:(id *)a3 lastSequenceNumber:(unint64_t *)a4
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1000319B4;
  v25 = sub_1000319C4;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1000319B4;
  v19 = sub_1000319C4;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = [(ACXLaunchServicesWatcher *)self stateQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000330C8;
  v10[3] = &unk_10008DA38;
  v10[4] = self;
  v10[5] = &v21;
  v10[6] = &v15;
  v10[7] = &v11;
  dispatch_sync(v7, v10);

  *a3 = v16[5];
  *a4 = v12[3];
  v8 = v22[5];
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);

  return v8;
}

- (void)_onQueue_noteDatabaseRebuild
{
  v3 = +[ACXCompanionSyncConnectionManager sharedConnectionManager];
  v2 = [v3 connectionForActivePairedDevice];
  [v2 noteCompanionAppDatabaseRebuild];
}

- (void)_onQueue_noteNewApps:(id)a3 updatedApps:(id)a4 removedApps:(id)a5 forDBUUID:(id)a6 endingSequenceNumber:(unint64_t)a7
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v16 = +[ACXCompanionSyncConnectionManager sharedConnectionManager];
  v15 = [v16 connectionForActivePairedDevice];
  [v15 noteNewCompanionApps:v14 updatedApps:v13 removedApps:v12 forDBUUID:v11 endingSequenceNumber:a7];
}

- (void)_onQueue_reSyncWithLS
{
  v46 = objc_opt_new();
  v47 = objc_opt_new();
  v49 = objc_opt_new();
  v3 = [(ACXLaunchServicesWatcher *)self lastSequenceNumber];
  v65 = 0;
  v55 = self;
  LODWORD(self) = [(ACXLaunchServicesWatcher *)self _onQueue_infoMatchesCurrentLSDatabaseWithUUID:&v65];
  v4 = v65;
  v45 = self;
  v44 = v4;
  if (self)
  {
    v5 = v3 + 1;
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      [(ACXLaunchServicesWatcher *)v55 ourDBUUID];
      v43 = v41 = v4;
      MOLogWrite();
    }

    v56 = [(ACXLaunchServicesWatcher *)v55 appList:v41];
  }

  else
  {
    [(ACXLaunchServicesWatcher *)v55 setAppList:0];
    [(ACXLaunchServicesWatcher *)v55 setLastLSUUID:v4];
    v6 = objc_opt_new();
    [(ACXLaunchServicesWatcher *)v55 setOurDBUUID:v6];

    [(ACXLaunchServicesWatcher *)v55 setEventQueue:0];
    [(ACXLaunchServicesWatcher *)v55 setEventQueueStartSequenceNumber:0];
    [(ACXLaunchServicesWatcher *)v55 setLastSequenceNumber:0];
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      v41 = [(ACXLaunchServicesWatcher *)v55 ourDBUUID];
      MOLogWrite();
    }

    v56 = 0;
    v5 = 1;
  }

  v48 = [(ACXLaunchServicesWatcher *)v55 ourDBUUID];
  [LSApplicationRecord enumeratorWithOptions:0];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v7 = v64 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v61 objects:v71 count:16];
  v51 = v7;
  if (v8)
  {
    v9 = v8;
    v10 = *v62;
    do
    {
      v11 = 0;
      do
      {
        if (*v62 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v61 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        if (([v12 isPlaceholder] & 1) == 0 && !objc_msgSend(v12, "isSystemPlaceholder"))
        {
          if (![v12 ACX_shouldBeTrackedByLaunchServicesWatcher])
          {
            goto LABEL_19;
          }

          v14 = [v12 bundleIdentifier];
          v15 = [v56 objectForKeyedSubscript:v14];
          v53 = v15;
          if (v15)
          {
            v16 = v15;
            v17 = [v15 lsSequenceNumber];
            if (v17 == [v12 sequenceNumber])
            {
              [v49 setObject:v16 forKeyedSubscript:v14];
LABEL_41:
              v7 = v51;

              goto LABEL_19;
            }

            if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
            {
              v42 = v14;
LABEL_31:
              MOLogWrite();
            }
          }

          else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
          {
            v42 = v14;
            goto LABEL_31;
          }

          v19 = [[ACXCompanionApplication alloc] initWithApplicationRecord:v12 databaseUUID:v48 sequenceNumber:v5];
          if (v19)
          {
            if (v53)
            {
              v20 = v46;
            }

            else
            {
              v20 = v47;
            }

            [v20 addObject:{v19, v42}];
            v50 = [[ACXAppEventRecord alloc] initWithRecordType:0 bundleID:v14 sequenceNumber:v5];
            [(ACXLaunchServicesWatcher *)v55 _onQueue_addAppEvent:v50];
            v21 = [ACXLaunchServicesWatcherSequenceRecord alloc];
            v22 = [v12 sequenceNumber];
            v23 = [(ACXCompanionApplication *)v19 counterpartIdentifiers];
            v24 = [(ACXLaunchServicesWatcherSequenceRecord *)v21 initWithLSSequenceNumber:v22 acxSequenceNumber:v5 counterpartIdentifiers:v23];
            [v49 setObject:v24 forKeyedSubscript:v14];

            ++v5;
          }

          else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
          {
            v42 = v14;
            MOLogWrite();
          }

          goto LABEL_41;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
        {
          v18 = [v12 bundleIdentifier];
          *buf = 136315394;
          v68 = "[ACXLaunchServicesWatcher _onQueue_reSyncWithLS]";
          v69 = 2112;
          v70 = v18;
          _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: Unexpectedly received a placeholder for %@", buf, 0x16u);
        }

LABEL_19:
        objc_autoreleasePoolPop(v13);
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v25 = [v7 countByEnumeratingWithState:&v61 objects:v71 count:16];
      v9 = v25;
    }

    while (v25);
  }

  if (v45)
  {
    v26 = [v56 allKeys];
    v27 = [v26 mutableCopy];

    v28 = [v49 allKeys];
    [v27 removeObjectsInArray:v28];

    v54 = objc_opt_new();
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = v27;
    v29 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v58;
      do
      {
        v32 = 0;
        v33 = v5;
        do
        {
          if (*v58 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v34 = *(*(&v57 + 1) + 8 * v32);
          v5 = v33 + 1;
          v35 = [[ACXAppEventRecord alloc] initWithRecordType:1 bundleID:v34 sequenceNumber:v33];
          [(ACXLaunchServicesWatcher *)v55 _onQueue_addAppEvent:v35];
          v36 = [v56 objectForKeyedSubscript:v34];
          v37 = [v36 counterpartIdentifiers];

          if (v37)
          {
            v38 = v37;
          }

          else
          {
            v38 = &__NSArray0__struct;
          }

          [v54 setObject:v38 forKeyedSubscript:{v34, v42}];

          v32 = v32 + 1;
          v33 = v5;
        }

        while (v30 != v32);
        v30 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
      }

      while (v30);
    }

    if ([v54 count] && (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5))
    {
      v42 = [v54 allKeys];
      MOLogWrite();
    }

    v39 = v44;
    if ([v47 count] || objc_msgSend(v46, "count") || objc_msgSend(v54, "count"))
    {
      v40 = [(ACXLaunchServicesWatcher *)v55 ourDBUUID];
      [(ACXLaunchServicesWatcher *)v55 _onQueue_noteNewApps:v47 updatedApps:v46 removedApps:v54 forDBUUID:v40 endingSequenceNumber:v5 - 1];
    }

    v7 = v51;
  }

  else
  {
    [(ACXLaunchServicesWatcher *)v55 _onQueue_noteDatabaseRebuild];
    v54 = 0;
    v39 = v44;
  }

  [(ACXLaunchServicesWatcher *)v55 setAppList:v49, v42];
  [(ACXLaunchServicesWatcher *)v55 setLastSequenceNumber:v5 - 1];
  if ([(ACXLaunchServicesWatcher *)v55 _onQueue_infoMatchesCurrentLSDatabaseWithUUID:0])
  {
    if (!v45 || [v47 count] || objc_msgSend(v46, "count") || objc_msgSend(v54, "count"))
    {
      [(ACXLaunchServicesWatcher *)v55 _onQueue_writeAppListToDisk];
    }
  }

  else
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      MOLogWrite();
    }

    [(ACXLaunchServicesWatcher *)v55 _onQueue_reSyncWithLS];
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

  v5 = [(ACXLaunchServicesWatcher *)self stateQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100033BAC;
  v8[3] = &unk_10008CC38;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  sub_100005828(v5, v8);
}

- (void)applicationsUninstalledWithAppRecords:(id)a3
{
  v4 = a3;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v7 = v4;
    MOLogWrite();
  }

  v5 = [(ACXLaunchServicesWatcher *)self stateQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100034248;
  v8[3] = &unk_10008CC38;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  sub_100005828(v5, v8);
}

- (void)applicationsDidInstall:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v17 = self;
    v9 = 0;
    v10 = *v20;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        v12 = v9;
        if (*v20 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v18 = 0;
        v9 = sub_100008374(v13, &v18);
        v14 = v18;

        if (v9)
        {
          [v5 addObject:v9];
        }

        else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
        {
          v15 = [v13 bundleIdentifier];
          v16 = v14;
          MOLogWrite();
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);

    self = v17;
  }

  [(ACXLaunchServicesWatcher *)self applicationsInstalledWithAppRecords:v5];
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

  [(ACXLaunchServicesWatcher *)self applicationsUninstalledWithAppRecords:v5];
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
    [(ACXLaunchServicesWatcher *)self applicationsUninstalledWithAppRecords:v18];
  }
}

@end