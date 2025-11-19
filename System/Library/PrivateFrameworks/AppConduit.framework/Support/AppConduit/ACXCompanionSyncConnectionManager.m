@interface ACXCompanionSyncConnectionManager
+ (id)sharedConnectionManager;
- (ACXCompanionSyncConnectionManager)init;
- (id)connectionForActivePairedDevice;
- (id)connectionForDevice:(id)a3;
- (void)devicesAreNoLongerConnected:(id)a3;
- (void)devicesAreNowConnected:(id)a3;
- (void)incomingMessage:(id)a3 fromDevice:(id)a4;
- (void)newDevices:(id)a3 removedDevices:(id)a4;
@end

@implementation ACXCompanionSyncConnectionManager

+ (id)sharedConnectionManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015F20;
  block[3] = &unk_10008CBE8;
  block[4] = a1;
  if (qword_1000A47D8 != -1)
  {
    dispatch_once(&qword_1000A47D8, block);
  }

  v2 = qword_1000A47D0;

  return v2;
}

- (ACXCompanionSyncConnectionManager)init
{
  v16.receiver = self;
  v16.super_class = ACXCompanionSyncConnectionManager;
  v2 = [(ACXCompanionSyncConnectionManager *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.appconduit.CompanionSyncConnectionManager", v3);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v4;

    v6 = objc_opt_new();
    connectionMap = v2->_connectionMap;
    v2->_connectionMap = v6;

    v8 = [ACXIDSMessaging messagerWithIDSServiceName:@"com.apple.private.alloy.appsyncconduit"];
    legacyMessagingService = v2->_legacyMessagingService;
    v2->_legacyMessagingService = v8;

    v10 = [ACXIDSMessaging messagerWithIDSServiceName:@"com.apple.private.alloy.appsyncconduit.v2"];
    currentMessagingService = v2->_currentMessagingService;
    v2->_currentMessagingService = v10;

    v12 = +[ACXDeviceManager sharedManager];
    [v12 setLegacyMessagingService:v2->_legacyMessagingService currentMessagingService:v2->_currentMessagingService];
    [v12 setDelegate:v2];
    v13 = [(ACXCompanionSyncConnectionManager *)v2 legacyMessagingService];
    [v13 setDeviceManager:v12 delegate:v2];

    v14 = [(ACXCompanionSyncConnectionManager *)v2 currentMessagingService];
    [v14 setDeviceManager:v12 delegate:v2];
  }

  return v2;
}

- (id)connectionForActivePairedDevice
{
  v3 = +[ACXDeviceManager sharedManager];
  v4 = [v3 currentActivePairedDevice];

  if (v4)
  {
    v5 = [(ACXCompanionSyncConnectionManager *)self connectionForDevice:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)connectionForDevice:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100016274;
  v16 = sub_100016284;
  v17 = 0;
  v5 = [(ACXCompanionSyncConnectionManager *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001628C;
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

- (void)incomingMessage:(id)a3 fromDevice:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = +[ACXDeviceManager sharedManager];
  v8 = [v7 deviceForIDSIdentifier:v6];

  if (v8)
  {
    v9 = [(ACXCompanionSyncConnectionManager *)self connectionForDevice:v8];
    v10 = v9;
    if (v9)
    {
      [v9 handleIncomingMessage:v11];
    }

    else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      MOLogWrite();
    }
  }

  else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    MOLogWrite();
  }
}

- (void)newDevices:(id)a3 removedDevices:(id)a4
{
  v5 = a3;
  v6 = a4;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v58 objects:v63 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v59;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v59 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v58 + 1) + 8 * i);
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
        {
          v12 = [*(*(&v58 + 1) + 8 * i) idsDeviceIdentifier];
          [v11 pairingID];
          v36 = v34 = v12;
          MOLogWrite();
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v58 objects:v63 count:16];
    }

    while (v8);
  }

  v46 = v6;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v5;
  v50 = [obj countByEnumeratingWithState:&v54 objects:v62 count:16];
  if (v50)
  {
    v49 = *v55;
    do
    {
      for (j = 0; j != v50; j = j + 1)
      {
        if (*v55 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v54 + 1) + 8 * j);
        v15 = [v14 productType];
        v16 = [v14 osVersion];
        v17 = [v14 osBuildVersion];
        v18 = [v14 watchSize];
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
        {
          v52 = [v14 idsDeviceIdentifier];
          v51 = [v14 pairingID];
          v53 = [v14 messager];
          v19 = [v53 serviceName];
          v20 = v18;
          v21 = v16;
          v22 = v15;
          v23 = sub_100006DA8([v14 isActivePairedDevice]);
          v24 = v17;
          v25 = sub_100006DA8([v14 isConnected]);
          v26 = sub_100006DA8([v14 supportsStandaloneApps]);
          v27 = v25;
          v17 = v24;
          v44 = v27;
          v45 = v26;
          v28 = v23;
          v15 = v22;
          v16 = v21;
          v18 = v20;
          v42 = v19;
          v43 = v28;
          v40 = v16;
          v41 = v24;
          v38 = v15;
          v39 = v20;
          v35 = v52;
          v37 = v51;
          MOLogWrite();
        }

        if ([v14 isActivePairedDevice])
        {
          v29 = [(ACXCompanionSyncConnectionManager *)self connectionForDevice:v14];
          if ([v14 isReachable])
          {
            [v14 idsDeviceIdentifier];
            v31 = v30 = v18;
            v32 = [v14 pairingID];
            v33 = [NSString stringWithFormat:@"device %@ (pairing ID %@) appeared", v31, v32];

            v18 = v30;
            [v29 performReunionSyncWithReason:v33];
          }
        }
      }

      v50 = [obj countByEnumeratingWithState:&v54 objects:v62 count:16];
    }

    while (v50);
  }
}

- (void)devicesAreNowConnected:(id)a3
{
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = a3;
  v27 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v27)
  {
    v26 = *v31;
    do
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v31 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v30 + 1) + 8 * i);
        v5 = [v4 productType];
        v6 = [v4 osVersion];
        v7 = [v4 osBuildVersion];
        v8 = [v4 watchSize];
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
        {
          v29 = [v4 idsDeviceIdentifier];
          v28 = [v4 pairingID];
          v9 = v8;
          v10 = v7;
          v11 = v6;
          v12 = v5;
          v13 = sub_100006DA8([v4 supportsStandaloneApps]);
          v14 = [v4 messager];
          v23 = [v14 serviceName];
          v24 = sub_100006DA8([v4 isActivePairedDevice]);
          v15 = v13;
          v5 = v12;
          v6 = v11;
          v7 = v10;
          v8 = v9;
          v21 = v7;
          v22 = v15;
          v19 = v9;
          v20 = v6;
          v17 = v28;
          v18 = v5;
          v16 = v29;
          MOLogWrite();
        }
      }

      v27 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v27);
  }
}

- (void)devicesAreNoLongerConnected:(id)a3
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = a3;
  v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
        {
          v8 = [*(*(&v16 + 1) + 8 * i) idsDeviceIdentifier];
          v9 = [v7 pairingID];
          v10 = [v7 messager];
          v13 = [v10 serviceName];
          v14 = sub_100006DA8([v7 isActivePairedDevice]);
          v11 = v8;
          v12 = v9;
          MOLogWrite();
        }
      }

      v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }
}

@end