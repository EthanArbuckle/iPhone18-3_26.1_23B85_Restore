@interface ACXLaunchServicesWatcher
+ (id)sharedWatcher;
- (ACXLaunchServicesWatcher)init;
- (BOOL)_onQueue_clearApplicationEventsForDBUUID:(id)d endingSequenceNumber:(unint64_t)number error:(id *)error;
- (BOOL)_onQueue_enumerateApplicationsForBundleIDs:(id)ds error:(id *)error enumerator:(id)enumerator;
- (BOOL)_onQueue_infoMatchesCurrentLSDatabaseWithUUID:(id *)d;
- (BOOL)clearApplicationEventsForDBUUID:(id)d endingSequenceNumber:(unint64_t)number error:(id *)error;
- (BOOL)enumerateApplicationsForBundleIDs:(id)ds currentDBUUID:(id *)d currentLastSequenceNumber:(unint64_t *)number error:(id *)error enumerator:(id)enumerator;
- (id)_onQueue_applicationForAppRecord:(id)record error:(id *)error;
- (id)allInstalledBundleIDsInDatabaseWithUUID:(id *)d lastSequenceNumber:(unint64_t *)number;
- (id)applicationForAppRecord:(id)record currentLastSequenceNumber:(unint64_t *)number error:(id *)error;
- (id)applicationsForAppRecords:(id)records currentDBUUID:(id *)d currentLastSequenceNumber:(unint64_t *)number error:(id *)error;
- (void)_onQueue_addAppEvent:(id)event;
- (void)_onQueue_noteDatabaseRebuild;
- (void)_onQueue_noteNewApps:(id)apps updatedApps:(id)updatedApps removedApps:(id)removedApps forDBUUID:(id)d endingSequenceNumber:(unint64_t)number;
- (void)_onQueue_reSyncWithLS;
- (void)_onQueue_writeAppListToDisk;
- (void)applicationInstallsDidStart:(id)start;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)applicationsInstalledWithAppRecords:(id)records;
- (void)applicationsUninstalledWithAppRecords:(id)records;
- (void)enumerateApplicationEventsReturningDBUUID:(id *)d startingSequenceNumber:(unint64_t *)number withBlock:(id)block;
- (void)fetchDatabaseUUID:(id *)d andCurrentLastSequenceNumber:(unint64_t *)number;
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

    stateQueue = [(ACXLaunchServicesWatcher *)v2 stateQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000303B4;
    v8[3] = &unk_10008CD40;
    v9 = v2;
    sub_100005828(stateQueue, v8);
  }

  return v2;
}

- (void)_onQueue_writeAppListToDisk
{
  v27 = sub_100006798();
  v3 = [v27 URLByAppendingPathComponent:@"AvailableCompanionApps.plist" isDirectory:0];
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    lastLSUUID = [(ACXLaunchServicesWatcher *)self lastLSUUID];
    ourDBUUID = [(ACXLaunchServicesWatcher *)self ourDBUUID];
    lastSequenceNumber = [(ACXLaunchServicesWatcher *)self lastSequenceNumber];
    v23 = lastLSUUID;
    MOLogWrite();
  }

  v5 = objc_opt_new();
  appList = [(ACXLaunchServicesWatcher *)self appList];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100031368;
  v33[3] = &unk_10008D948;
  v7 = v5;
  v34 = v7;
  [appList enumerateKeysAndObjectsUsingBlock:v33];

  v8 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  eventQueue = [(ACXLaunchServicesWatcher *)self eventQueue];
  v10 = [eventQueue countByEnumeratingWithState:&v29 objects:v37 count:16];
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
          objc_enumerationMutation(eventQueue);
        }

        dictionaryRepresentation = [*(*(&v29 + 1) + 8 * v13) dictionaryRepresentation];
        [v8 addObject:dictionaryRepresentation];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [eventQueue countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v11);
  }

  v35[0] = @"Version";
  v35[1] = @"AppList";
  v36[0] = &off_1000977B8;
  v36[1] = v7;
  v35[2] = @"LSUUID";
  lastLSUUID2 = [(ACXLaunchServicesWatcher *)self lastLSUUID];
  uUIDString = [lastLSUUID2 UUIDString];
  v36[2] = uUIDString;
  v35[3] = @"OurDBUUID";
  ourDBUUID2 = [(ACXLaunchServicesWatcher *)self ourDBUUID];
  uUIDString2 = [ourDBUUID2 UUIDString];
  v36[3] = uUIDString2;
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
    path = [v3 path];
    MOLogWrite();
  }
}

- (BOOL)_onQueue_infoMatchesCurrentLSDatabaseWithUUID:(id *)d
{
  v5 = +[LSApplicationWorkspace defaultWorkspace];
  v17 = 0;
  v18 = 0;
  [v5 getKnowledgeUUID:&v18 andSequenceNumber:&v17];
  v6 = v18;
  v7 = v17;

  if (d)
  {
    v8 = v6;
    *d = v6;
  }

  lastLSUUID = [(ACXLaunchServicesWatcher *)self lastLSUUID];

  if (!lastLSUUID)
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
    {
      MOLogWrite();
    }

    goto LABEL_12;
  }

  lastLSUUID2 = [(ACXLaunchServicesWatcher *)self lastLSUUID];
  v11 = [v6 isEqual:lastLSUUID2];

  if ((v11 & 1) == 0)
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
    {
      lastLSUUID3 = [(ACXLaunchServicesWatcher *)self lastLSUUID];
      uUIDString = [lastLSUUID3 UUIDString];
      uUIDString2 = [v6 UUIDString];
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

- (id)_onQueue_applicationForAppRecord:(id)record error:(id *)error
{
  recordCopy = record;
  appList = [(ACXLaunchServicesWatcher *)self appList];
  bundleIdentifier = [recordCopy bundleIdentifier];
  v9 = [appList objectForKeyedSubscript:bundleIdentifier];

  if (v9)
  {
    databaseUUID = [recordCopy databaseUUID];
    lastLSUUID = [(ACXLaunchServicesWatcher *)self lastLSUUID];
    v12 = [databaseUUID isEqual:lastLSUUID];

    if (v12)
    {
      lsSequenceNumber = [v9 lsSequenceNumber];
      if (lsSequenceNumber == [recordCopy sequenceNumber])
      {
        v15 = [ACXCompanionApplication alloc];
        ourDBUUID = [(ACXLaunchServicesWatcher *)self ourDBUUID];
        v17 = -[ACXCompanionApplication initWithApplicationRecord:databaseUUID:sequenceNumber:](v15, "initWithApplicationRecord:databaseUUID:sequenceNumber:", recordCopy, ourDBUUID, [v9 acxSequenceNumber]);

        if (v17)
        {
          v19 = 0;
          goto LABEL_14;
        }

        v19 = sub_1000061DC("[ACXLaunchServicesWatcher _onQueue_applicationForAppRecord:error:]", 307, @"ACXErrorDomain", 1, 0, 0, @"Failed to create app object instance for %@", v18, recordCopy);
        if (!error)
        {
          goto LABEL_13;
        }

LABEL_11:
        v24 = v19;
        v17 = 0;
        *error = v19;
        goto LABEL_14;
      }

      v26 = lsSequenceNumber;
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
    bundleIdentifier2 = [recordCopy bundleIdentifier];
    v19 = sub_1000061DC("[ACXLaunchServicesWatcher _onQueue_applicationForAppRecord:error:]", 286, @"ACXErrorDomain", 43, 0, 0, @"No sequence number record found for app %@", v21, bundleIdentifier2);
  }

  [(ACXLaunchServicesWatcher *)self _onQueue_reSyncWithLS];
  if (error)
  {
    goto LABEL_11;
  }

LABEL_13:
  v17 = 0;
LABEL_14:

  return v17;
}

- (id)applicationForAppRecord:(id)record currentLastSequenceNumber:(unint64_t *)number error:(id *)error
{
  recordCopy = record;
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
  stateQueue = [(ACXLaunchServicesWatcher *)self stateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000319CC;
  block[3] = &unk_10008D970;
  v16 = &v25;
  block[4] = self;
  v10 = recordCopy;
  v17 = &v19;
  numberCopy = number;
  v15 = v10;
  dispatch_sync(stateQueue, block);

  v11 = v26[5];
  if (error && !v11)
  {
    *error = v20[5];
    v11 = v26[5];
  }

  v12 = v11;

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v12;
}

- (id)applicationsForAppRecords:(id)records currentDBUUID:(id *)d currentLastSequenceNumber:(unint64_t *)number error:(id *)error
{
  recordsCopy = records;
  v11 = objc_opt_new();
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_1000319B4;
  v32 = sub_1000319C4;
  v33 = 0;
  stateQueue = [(ACXLaunchServicesWatcher *)self stateQueue];
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_100031C18;
  v21 = &unk_10008D998;
  v13 = recordsCopy;
  v22 = v13;
  selfCopy = self;
  v14 = v11;
  v24 = v14;
  v25 = &v28;
  numberCopy = number;
  dCopy = d;
  dispatch_sync(stateQueue, &v18);

  if (error)
  {
    v15 = v29[5];
    if (v15)
    {
      *error = v15;

      v14 = 0;
    }
  }

  v16 = [v14 copy];

  _Block_object_dispose(&v28, 8);

  return v16;
}

- (BOOL)_onQueue_enumerateApplicationsForBundleIDs:(id)ds error:(id *)error enumerator:(id)enumerator
{
  dsCopy = ds;
  enumeratorCopy = enumerator;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = dsCopy;
  v9 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    errorCopy = error;
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

      applicationState = [v16 applicationState];
      isInstalled = [applicationState isInstalled];

      if ((isInstalled & 1) == 0)
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

      enumeratorCopy[2](enumeratorCopy, v22);

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

    if (errorCopy)
    {
      v25 = v11;
      v24 = 0;
      *errorCopy = v11;
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

- (BOOL)enumerateApplicationsForBundleIDs:(id)ds currentDBUUID:(id *)d currentLastSequenceNumber:(unint64_t *)number error:(id *)error enumerator:(id)enumerator
{
  dsCopy = ds;
  enumeratorCopy = enumerator;
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
  stateQueue = [(ACXLaunchServicesWatcher *)self stateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000322B4;
  block[3] = &unk_10008D9C0;
  v22 = &v42;
  block[4] = self;
  v14 = dsCopy;
  v20 = v14;
  v15 = enumeratorCopy;
  v21 = v15;
  v23 = &v36;
  v24 = &v30;
  v25 = &v26;
  dispatch_sync(stateQueue, block);

  if (*(v43 + 24) == 1)
  {
    *d = v31[5];
    *number = v27[3];
  }

  else if (error)
  {
    *error = v37[5];
  }

  v16 = *(v43 + 24);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);

  return v16;
}

- (void)_onQueue_addAppEvent:(id)event
{
  eventCopy = event;
  eventQueue = [(ACXLaunchServicesWatcher *)self eventQueue];
  if (eventQueue)
  {
    v5 = eventQueue;
    if ([eventQueue count] >= 0xF)
    {
      v6 = [v5 count] - 14;
      [v5 removeObjectsInRange:{0, v6}];
      v7 = [v5 objectAtIndexedSubscript:0];
      sequenceNumber = [v7 sequenceNumber];

      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        v16 = v6;
        v17 = sequenceNumber;
        MOLogWrite();
      }

      [(ACXLaunchServicesWatcher *)self setEventQueueStartSequenceNumber:sequenceNumber, v16, v17];
    }
  }

  else
  {
    v5 = objc_opt_new();
    [(ACXLaunchServicesWatcher *)self setEventQueue:v5];
  }

  bundleID = [eventCopy bundleID];
  v10 = [v5 count];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    while (1)
    {
      v13 = [v5 objectAtIndexedSubscript:v12];
      bundleID2 = [v13 bundleID];
      v15 = [bundleID2 isEqualToString:bundleID];

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
  [v5 addObject:eventCopy];
}

- (BOOL)_onQueue_clearApplicationEventsForDBUUID:(id)d endingSequenceNumber:(unint64_t)number error:(id *)error
{
  dCopy = d;
  eventQueue = [(ACXLaunchServicesWatcher *)self eventQueue];
  ourDBUUID = [(ACXLaunchServicesWatcher *)self ourDBUUID];
  v11 = [ourDBUUID isEqual:dCopy];

  if ((v11 & 1) == 0)
  {
    v20 = sub_1000061DC("[ACXLaunchServicesWatcher _onQueue_clearApplicationEventsForDBUUID:endingSequenceNumber:error:]", 462, @"ACXErrorDomain", 43, 0, 0, @"Database UUIDs did not match", v12, numberCopy);
    goto LABEL_40;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v34 = eventQueue;
  v13 = eventQueue;
  v14 = [v13 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v14)
  {
    v15 = v14;
    errorCopy = error;
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

        if ([*(*(&v35 + 1) + 8 * v18) sequenceNumber] > number)
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

    error = errorCopy;
    if (v16)
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        numberCopy = v16;
        MOLogWrite();
      }

      [v13 removeObjectsInRange:{0, v16, numberCopy}];
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
  v22 = number + 1;
  lastSequenceNumber = [(ACXLaunchServicesWatcher *)self lastSequenceNumber];
  v24 = lastSequenceNumber + 1;
  if (number + 1 > lastSequenceNumber + 1)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      numberCopy = number;
      v31 = lastSequenceNumber;
      MOLogWrite();
    }

    v22 = v24;
  }

  v25 = [(ACXLaunchServicesWatcher *)self eventQueueStartSequenceNumber:numberCopy];
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
  eventQueue = v34;
LABEL_40:
  if (error)
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
    *error = v20;
  }

  return v11;
}

- (BOOL)clearApplicationEventsForDBUUID:(id)d endingSequenceNumber:(unint64_t)number error:(id *)error
{
  dCopy = d;
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
  stateQueue = [(ACXLaunchServicesWatcher *)self stateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100032A00;
  block[3] = &unk_10008D970;
  v15 = &v24;
  block[4] = self;
  v10 = dCopy;
  v16 = &v18;
  numberCopy = number;
  v14 = v10;
  dispatch_sync(stateQueue, block);

  v11 = *(v25 + 24);
  if (error && (v25[3] & 1) == 0)
  {
    *error = v19[5];
    v11 = *(v25 + 24);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11 & 1;
}

- (void)enumerateApplicationEventsReturningDBUUID:(id *)d startingSequenceNumber:(unint64_t *)number withBlock:(id)block
{
  blockCopy = block;
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
  stateQueue = [(ACXLaunchServicesWatcher *)self stateQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100032C10;
  v11[3] = &unk_10008D9E8;
  v11[4] = self;
  v12 = blockCopy;
  v13 = &v19;
  v14 = &v15;
  v10 = blockCopy;
  dispatch_sync(stateQueue, v11);

  *d = v20[5];
  *number = v16[3];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
}

- (void)fetchDatabaseUUID:(id *)d andCurrentLastSequenceNumber:(unint64_t *)number
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
  stateQueue = [(ACXLaunchServicesWatcher *)self stateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100032E9C;
  block[3] = &unk_10008DA10;
  block[4] = self;
  block[5] = &v13;
  block[6] = &v9;
  dispatch_sync(stateQueue, block);

  *d = v14[5];
  *number = v10[3];
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
}

- (id)allInstalledBundleIDsInDatabaseWithUUID:(id *)d lastSequenceNumber:(unint64_t *)number
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
  stateQueue = [(ACXLaunchServicesWatcher *)self stateQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000330C8;
  v10[3] = &unk_10008DA38;
  v10[4] = self;
  v10[5] = &v21;
  v10[6] = &v15;
  v10[7] = &v11;
  dispatch_sync(stateQueue, v10);

  *d = v16[5];
  *number = v12[3];
  v8 = v22[5];
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);

  return v8;
}

- (void)_onQueue_noteDatabaseRebuild
{
  v3 = +[ACXCompanionSyncConnectionManager sharedConnectionManager];
  connectionForActivePairedDevice = [v3 connectionForActivePairedDevice];
  [connectionForActivePairedDevice noteCompanionAppDatabaseRebuild];
}

- (void)_onQueue_noteNewApps:(id)apps updatedApps:(id)updatedApps removedApps:(id)removedApps forDBUUID:(id)d endingSequenceNumber:(unint64_t)number
{
  dCopy = d;
  removedAppsCopy = removedApps;
  updatedAppsCopy = updatedApps;
  appsCopy = apps;
  v16 = +[ACXCompanionSyncConnectionManager sharedConnectionManager];
  connectionForActivePairedDevice = [v16 connectionForActivePairedDevice];
  [connectionForActivePairedDevice noteNewCompanionApps:appsCopy updatedApps:updatedAppsCopy removedApps:removedAppsCopy forDBUUID:dCopy endingSequenceNumber:number];
}

- (void)_onQueue_reSyncWithLS
{
  v46 = objc_opt_new();
  v47 = objc_opt_new();
  v49 = objc_opt_new();
  lastSequenceNumber = [(ACXLaunchServicesWatcher *)self lastSequenceNumber];
  v65 = 0;
  selfCopy = self;
  LODWORD(self) = [(ACXLaunchServicesWatcher *)self _onQueue_infoMatchesCurrentLSDatabaseWithUUID:&v65];
  v4 = v65;
  selfCopy2 = self;
  v44 = v4;
  if (self)
  {
    v5 = lastSequenceNumber + 1;
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      [(ACXLaunchServicesWatcher *)selfCopy ourDBUUID];
      v43 = ourDBUUID = v4;
      MOLogWrite();
    }

    v56 = [(ACXLaunchServicesWatcher *)selfCopy appList:ourDBUUID];
  }

  else
  {
    [(ACXLaunchServicesWatcher *)selfCopy setAppList:0];
    [(ACXLaunchServicesWatcher *)selfCopy setLastLSUUID:v4];
    v6 = objc_opt_new();
    [(ACXLaunchServicesWatcher *)selfCopy setOurDBUUID:v6];

    [(ACXLaunchServicesWatcher *)selfCopy setEventQueue:0];
    [(ACXLaunchServicesWatcher *)selfCopy setEventQueueStartSequenceNumber:0];
    [(ACXLaunchServicesWatcher *)selfCopy setLastSequenceNumber:0];
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      ourDBUUID = [(ACXLaunchServicesWatcher *)selfCopy ourDBUUID];
      MOLogWrite();
    }

    v56 = 0;
    v5 = 1;
  }

  ourDBUUID2 = [(ACXLaunchServicesWatcher *)selfCopy ourDBUUID];
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

          bundleIdentifier = [v12 bundleIdentifier];
          v15 = [v56 objectForKeyedSubscript:bundleIdentifier];
          v53 = v15;
          if (v15)
          {
            v16 = v15;
            lsSequenceNumber = [v15 lsSequenceNumber];
            if (lsSequenceNumber == [v12 sequenceNumber])
            {
              [v49 setObject:v16 forKeyedSubscript:bundleIdentifier];
LABEL_41:
              v7 = v51;

              goto LABEL_19;
            }

            if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
            {
              allKeys3 = bundleIdentifier;
LABEL_31:
              MOLogWrite();
            }
          }

          else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
          {
            allKeys3 = bundleIdentifier;
            goto LABEL_31;
          }

          v19 = [[ACXCompanionApplication alloc] initWithApplicationRecord:v12 databaseUUID:ourDBUUID2 sequenceNumber:v5];
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

            [v20 addObject:{v19, allKeys3}];
            v50 = [[ACXAppEventRecord alloc] initWithRecordType:0 bundleID:bundleIdentifier sequenceNumber:v5];
            [(ACXLaunchServicesWatcher *)selfCopy _onQueue_addAppEvent:v50];
            v21 = [ACXLaunchServicesWatcherSequenceRecord alloc];
            sequenceNumber = [v12 sequenceNumber];
            counterpartIdentifiers = [(ACXCompanionApplication *)v19 counterpartIdentifiers];
            v24 = [(ACXLaunchServicesWatcherSequenceRecord *)v21 initWithLSSequenceNumber:sequenceNumber acxSequenceNumber:v5 counterpartIdentifiers:counterpartIdentifiers];
            [v49 setObject:v24 forKeyedSubscript:bundleIdentifier];

            ++v5;
          }

          else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
          {
            allKeys3 = bundleIdentifier;
            MOLogWrite();
          }

          goto LABEL_41;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
        {
          bundleIdentifier2 = [v12 bundleIdentifier];
          *buf = 136315394;
          v68 = "[ACXLaunchServicesWatcher _onQueue_reSyncWithLS]";
          v69 = 2112;
          v70 = bundleIdentifier2;
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

  if (selfCopy2)
  {
    allKeys = [v56 allKeys];
    v27 = [allKeys mutableCopy];

    allKeys2 = [v49 allKeys];
    [v27 removeObjectsInArray:allKeys2];

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
          [(ACXLaunchServicesWatcher *)selfCopy _onQueue_addAppEvent:v35];
          v36 = [v56 objectForKeyedSubscript:v34];
          counterpartIdentifiers2 = [v36 counterpartIdentifiers];

          if (counterpartIdentifiers2)
          {
            v38 = counterpartIdentifiers2;
          }

          else
          {
            v38 = &__NSArray0__struct;
          }

          [v54 setObject:v38 forKeyedSubscript:{v34, allKeys3}];

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
      allKeys3 = [v54 allKeys];
      MOLogWrite();
    }

    v39 = v44;
    if ([v47 count] || objc_msgSend(v46, "count") || objc_msgSend(v54, "count"))
    {
      ourDBUUID3 = [(ACXLaunchServicesWatcher *)selfCopy ourDBUUID];
      [(ACXLaunchServicesWatcher *)selfCopy _onQueue_noteNewApps:v47 updatedApps:v46 removedApps:v54 forDBUUID:ourDBUUID3 endingSequenceNumber:v5 - 1];
    }

    v7 = v51;
  }

  else
  {
    [(ACXLaunchServicesWatcher *)selfCopy _onQueue_noteDatabaseRebuild];
    v54 = 0;
    v39 = v44;
  }

  [(ACXLaunchServicesWatcher *)selfCopy setAppList:v49, allKeys3];
  [(ACXLaunchServicesWatcher *)selfCopy setLastSequenceNumber:v5 - 1];
  if ([(ACXLaunchServicesWatcher *)selfCopy _onQueue_infoMatchesCurrentLSDatabaseWithUUID:0])
  {
    if (!selfCopy2 || [v47 count] || objc_msgSend(v46, "count") || objc_msgSend(v54, "count"))
    {
      [(ACXLaunchServicesWatcher *)selfCopy _onQueue_writeAppListToDisk];
    }
  }

  else
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      MOLogWrite();
    }

    [(ACXLaunchServicesWatcher *)selfCopy _onQueue_reSyncWithLS];
  }
}

- (void)applicationsInstalledWithAppRecords:(id)records
{
  recordsCopy = records;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v7 = recordsCopy;
    MOLogWrite();
  }

  stateQueue = [(ACXLaunchServicesWatcher *)self stateQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100033BAC;
  v8[3] = &unk_10008CC38;
  v8[4] = self;
  v9 = recordsCopy;
  v6 = recordsCopy;
  sub_100005828(stateQueue, v8);
}

- (void)applicationsUninstalledWithAppRecords:(id)records
{
  recordsCopy = records;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v7 = recordsCopy;
    MOLogWrite();
  }

  stateQueue = [(ACXLaunchServicesWatcher *)self stateQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100034248;
  v8[3] = &unk_10008CC38;
  v8[4] = self;
  v9 = recordsCopy;
  v6 = recordsCopy;
  sub_100005828(stateQueue, v8);
}

- (void)applicationsDidInstall:(id)install
{
  installCopy = install;
  v5 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = installCopy;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    selfCopy = self;
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
          bundleIdentifier = [v13 bundleIdentifier];
          v16 = v14;
          MOLogWrite();
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);

    self = selfCopy;
  }

  [(ACXLaunchServicesWatcher *)self applicationsInstalledWithAppRecords:v5];
}

- (void)applicationsDidUninstall:(id)uninstall
{
  uninstallCopy = uninstall;
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = uninstallCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    correspondingApplicationRecord = 0;
    v10 = *v14;
    do
    {
      v11 = 0;
      v12 = correspondingApplicationRecord;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v6);
        }

        correspondingApplicationRecord = [*(*(&v13 + 1) + 8 * v11) correspondingApplicationRecord];

        [v5 addObject:correspondingApplicationRecord];
        v11 = v11 + 1;
        v12 = correspondingApplicationRecord;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [(ACXLaunchServicesWatcher *)self applicationsUninstalledWithAppRecords:v5];
}

- (void)applicationInstallsDidStart:(id)start
{
  startCopy = start;
  v18 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = startCopy;
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
        appState = [v9 appState];
        if ([appState isValid])
        {
          appState2 = [v9 appState];
          isDowngraded = [appState2 isDowngraded];

          if (isDowngraded)
          {
            if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
            {
              bundleIdentifier = [v9 bundleIdentifier];
              MOLogWrite();
            }

            v19 = 0;
            v13 = sub_100008374(v9, &v19);
            bundleIdentifier2 = v19;
            if (v13)
            {
              [v18 addObject:v13];
            }

            else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
            {
              bundleIdentifier = [v9 bundleIdentifier];
              v16 = bundleIdentifier2;
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
          bundleIdentifier2 = [v9 bundleIdentifier];
          bundleIdentifier = bundleIdentifier2;
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