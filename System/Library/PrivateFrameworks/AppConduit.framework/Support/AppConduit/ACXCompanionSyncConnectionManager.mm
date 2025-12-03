@interface ACXCompanionSyncConnectionManager
+ (id)sharedConnectionManager;
- (ACXCompanionSyncConnectionManager)init;
- (id)connectionForActivePairedDevice;
- (id)connectionForDevice:(id)device;
- (void)devicesAreNoLongerConnected:(id)connected;
- (void)devicesAreNowConnected:(id)connected;
- (void)incomingMessage:(id)message fromDevice:(id)device;
- (void)newDevices:(id)devices removedDevices:(id)removedDevices;
@end

@implementation ACXCompanionSyncConnectionManager

+ (id)sharedConnectionManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015F20;
  block[3] = &unk_10008CBE8;
  block[4] = self;
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
    legacyMessagingService = [(ACXCompanionSyncConnectionManager *)v2 legacyMessagingService];
    [legacyMessagingService setDeviceManager:v12 delegate:v2];

    currentMessagingService = [(ACXCompanionSyncConnectionManager *)v2 currentMessagingService];
    [currentMessagingService setDeviceManager:v12 delegate:v2];
  }

  return v2;
}

- (id)connectionForActivePairedDevice
{
  v3 = +[ACXDeviceManager sharedManager];
  currentActivePairedDevice = [v3 currentActivePairedDevice];

  if (currentActivePairedDevice)
  {
    v5 = [(ACXCompanionSyncConnectionManager *)self connectionForDevice:currentActivePairedDevice];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)connectionForDevice:(id)device
{
  deviceCopy = device;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100016274;
  v16 = sub_100016284;
  v17 = 0;
  internalQueue = [(ACXCompanionSyncConnectionManager *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001628C;
  block[3] = &unk_10008CA20;
  v10 = deviceCopy;
  v11 = &v12;
  block[4] = self;
  v6 = deviceCopy;
  dispatch_sync(internalQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)incomingMessage:(id)message fromDevice:(id)device
{
  messageCopy = message;
  deviceCopy = device;
  v7 = +[ACXDeviceManager sharedManager];
  v8 = [v7 deviceForIDSIdentifier:deviceCopy];

  if (v8)
  {
    v9 = [(ACXCompanionSyncConnectionManager *)self connectionForDevice:v8];
    v10 = v9;
    if (v9)
    {
      [v9 handleIncomingMessage:messageCopy];
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

- (void)newDevices:(id)devices removedDevices:(id)removedDevices
{
  devicesCopy = devices;
  removedDevicesCopy = removedDevices;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v7 = [removedDevicesCopy countByEnumeratingWithState:&v58 objects:v63 count:16];
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
          objc_enumerationMutation(removedDevicesCopy);
        }

        v11 = *(*(&v58 + 1) + 8 * i);
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
        {
          idsDeviceIdentifier = [*(*(&v58 + 1) + 8 * i) idsDeviceIdentifier];
          [v11 pairingID];
          v36 = v34 = idsDeviceIdentifier;
          MOLogWrite();
        }
      }

      v8 = [removedDevicesCopy countByEnumeratingWithState:&v58 objects:v63 count:16];
    }

    while (v8);
  }

  v46 = removedDevicesCopy;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = devicesCopy;
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
        productType = [v14 productType];
        osVersion = [v14 osVersion];
        osBuildVersion = [v14 osBuildVersion];
        watchSize = [v14 watchSize];
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
        {
          idsDeviceIdentifier2 = [v14 idsDeviceIdentifier];
          pairingID = [v14 pairingID];
          messager = [v14 messager];
          serviceName = [messager serviceName];
          v20 = watchSize;
          v21 = osVersion;
          v22 = productType;
          v23 = sub_100006DA8([v14 isActivePairedDevice]);
          v24 = osBuildVersion;
          v25 = sub_100006DA8([v14 isConnected]);
          v26 = sub_100006DA8([v14 supportsStandaloneApps]);
          v27 = v25;
          osBuildVersion = v24;
          v44 = v27;
          v45 = v26;
          v28 = v23;
          productType = v22;
          osVersion = v21;
          watchSize = v20;
          v42 = serviceName;
          v43 = v28;
          v40 = osVersion;
          v41 = v24;
          v38 = productType;
          v39 = v20;
          v35 = idsDeviceIdentifier2;
          v37 = pairingID;
          MOLogWrite();
        }

        if ([v14 isActivePairedDevice])
        {
          v29 = [(ACXCompanionSyncConnectionManager *)self connectionForDevice:v14];
          if ([v14 isReachable])
          {
            [v14 idsDeviceIdentifier];
            v31 = v30 = watchSize;
            pairingID2 = [v14 pairingID];
            v33 = [NSString stringWithFormat:@"device %@ (pairing ID %@) appeared", v31, pairingID2];

            watchSize = v30;
            [v29 performReunionSyncWithReason:v33];
          }
        }
      }

      v50 = [obj countByEnumeratingWithState:&v54 objects:v62 count:16];
    }

    while (v50);
  }
}

- (void)devicesAreNowConnected:(id)connected
{
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = connected;
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
        productType = [v4 productType];
        osVersion = [v4 osVersion];
        osBuildVersion = [v4 osBuildVersion];
        watchSize = [v4 watchSize];
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
        {
          idsDeviceIdentifier = [v4 idsDeviceIdentifier];
          pairingID = [v4 pairingID];
          v9 = watchSize;
          v10 = osBuildVersion;
          v11 = osVersion;
          v12 = productType;
          v13 = sub_100006DA8([v4 supportsStandaloneApps]);
          messager = [v4 messager];
          serviceName = [messager serviceName];
          v24 = sub_100006DA8([v4 isActivePairedDevice]);
          v15 = v13;
          productType = v12;
          osVersion = v11;
          osBuildVersion = v10;
          watchSize = v9;
          v21 = osBuildVersion;
          v22 = v15;
          v19 = v9;
          v20 = osVersion;
          v17 = pairingID;
          v18 = productType;
          v16 = idsDeviceIdentifier;
          MOLogWrite();
        }
      }

      v27 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v27);
  }
}

- (void)devicesAreNoLongerConnected:(id)connected
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = connected;
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
          idsDeviceIdentifier = [*(*(&v16 + 1) + 8 * i) idsDeviceIdentifier];
          pairingID = [v7 pairingID];
          messager = [v7 messager];
          serviceName = [messager serviceName];
          v14 = sub_100006DA8([v7 isActivePairedDevice]);
          v11 = idsDeviceIdentifier;
          v12 = pairingID;
          MOLogWrite();
        }
      }

      v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }
}

@end