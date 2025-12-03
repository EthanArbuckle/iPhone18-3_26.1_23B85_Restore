@interface ACXDeviceConnectionClient
+ (void)configureService;
+ (void)messageAllObserversForApplicationDatabaseResyncedForDeviceWithPairingID:(id)d;
+ (void)messageAllObserversForApplicationsInstalled:(id)installed onDeviceWithPairingID:(id)d;
+ (void)messageAllObserversForApplicationsRemovabilityChanged:(id)changed onDeviceWithPairingID:(id)d;
+ (void)messageAllObserversForApplicationsUninstalled:(id)uninstalled onDeviceWithPairingID:(id)d;
+ (void)messageAllObserversForApplicationsUpdated:(id)updated onDeviceWithPairingID:(id)d;
+ (void)messageAllObserversWithInstallProgressForApplication:(id)application progress:(double)progress phase:(unint64_t)phase;
+ (void)messageAllObserversWithInstallStateUpdate:(id)update;
- (ACXDeviceConnectionClient)init;
- (ACXDeviceConnectionClient)initWithDeviceManager:(id)manager companionSyncConnectionManager:(id)connectionManager applicationManager:(id)applicationManager;
- (BOOL)_applicationIsInstalledOnDevice:(id)device withBundleID:(id)d error:(id *)error;
- (BOOL)_applicationIsInstalledOnDevice:(id)device withCompanionBundleID:(id)d error:(id *)error;
- (BOOL)_setApplicationStatusForApp:(id)app forDeviceWithPairingID:(id)d options:(unint64_t)options error:(id *)error;
- (NSString)clientName;
- (NSString)clientSigningIdentifier;
- (NSString)description;
- (NSXPCConnection)xpcConnection;
- (id)_deviceForPairingID:(id)d error:(id *)error;
- (id)_gizmoStateForDeviceWithPairingID:(id)d error:(id *)error;
- (id)_hasEntitlement:(id)entitlement forRequestType:(id)type;
- (void)acknowledgeTestFlightInstallBegunForApp:(id)app forDeviceWithPairingID:(id)d completion:(id)completion;
- (void)activeComplicationsForDeviceWithPairingID:(id)d completion:(id)completion;
- (void)applicationIsInstalledOnAnyPairedDeviceWithBundleID:(id)d completion:(id)completion;
- (void)applicationIsInstalledOnAnyPairedDeviceWithCompanionBundleID:(id)d completion:(id)completion;
- (void)applicationIsInstalledOnDeviceWithPairingID:(id)d withBundleID:(id)iD completion:(id)completion;
- (void)applicationIsInstalledOnDeviceWithPairingID:(id)d withCompanionBundleID:(id)iD completion:(id)completion;
- (void)applicationRemovabilityOnDeviceWithPairingID:(id)d completion:(id)completion;
- (void)applicationWillInstallAfterPairingOnDeviceWithPairingID:(id)d withBundleID:(id)iD completion:(id)completion;
- (void)cancelPendingInstallations;
- (void)cancelUpdatePendingForCompanionApp:(id)app completion:(id)completion;
- (void)disableObservers;
- (void)enableObservers;
- (void)fetchApplicationDatabaseSyncInformationForDeviceWithPairingID:(id)d completion:(id)completion;
- (void)fetchApplicationWithContainingApplicationBundleID:(id)d completion:(id)completion;
- (void)fetchDuplicatedClassInfo:(id)info;
- (void)fetchInfoForApplicationWithBundleID:(id)d forDeviceWithPairingID:(id)iD completion:(id)completion;
- (void)fetchInstallableSystemAppBundleIDsForDeviceWithPairingID:(id)d completion:(id)completion;
- (void)fetchInstallableSystemAppWithBundleID:(id)d forDeviceWithPairingID:(id)iD completion:(id)completion;
- (void)fetchInstalledApplicationsForDeviceWithPairingID:(id)d completion:(id)completion;
- (void)fetchInstalledCompatibleApplicationsForDeviceWithPairingID:(id)d completion:(id)completion;
- (void)fetchInstalledComplicationsForDeviceWithPairingID:(id)d completion:(id)completion;
- (void)fetchInstalledWatchAppBundleIDsForDeviceWithPairingID:(id)d completion:(id)completion;
- (void)fetchInstalledWatchAppWithBundleID:(id)d forDeviceWithPairingID:(id)iD completion:(id)completion;
- (void)fetchLocalizedValuesFromAllDevicesForInfoPlistKeys:(id)keys forAppWithBundleID:(id)d fetchingFirstMatchingLocalizationInList:(id)list completion:(id)completion;
- (void)fetchLocallyAvailableApplicationWithContainingApplicationBundleID:(id)d forDeviceWithPairingID:(id)iD completion:(id)completion;
- (void)fetchLocallyAvailableWatchAppBundleIDsWithCompletion:(id)completion;
- (void)fetchLocallyAvailableWatchAppWithBundleID:(id)d forDeviceWithPairingID:(id)iD options:(unint64_t)options completion:(id)completion;
- (void)fetchProvisioningProfilesForApplicationWithBundleID:(id)d forDeviceWithPairingID:(id)iD completion:(id)completion;
- (void)fetchProvisioningProfilesForDeviceWithPairingID:(id)d completion:(id)completion;
- (void)fetchWatchAppBundleIDForCompanionAppBundleID:(id)d completion:(id)completion;
- (void)fetchWatchAppBundleURLWithinCompanionAppWithWatchAppIdentifier:(id)identifier completion:(id)completion;
- (void)getAlwaysInstallForDeviceWithPairingID:(id)d completion:(id)completion;
- (void)installAllApplications;
- (void)installApplication:(id)application withProvisioningProfileInfo:(id)info forTestFlight:(BOOL)flight onDeviceWithPairingID:(id)d completion:(id)completion;
- (void)installApplicationAtURL:(id)l onDeviceWithPairingID:(id)d installOptions:(id)options size:(int64_t)size completion:(id)completion;
- (void)installProvisioningProfileWithData:(id)data onDeviceWithPairingID:(id)d completion:(id)completion;
- (void)killDaemonForTesting:(id)testing;
- (void)removeApplication:(id)application fromDeviceWithPairingID:(id)d completion:(id)completion;
- (void)removeProvisioningProfileWithID:(id)d fromDeviceWithPairingID:(id)iD completion:(id)completion;
- (void)retryPendingAppInstallationsOnDeviceWithPairingID:(id)d;
- (void)setUpdatePendingForCompanionApp:(id)app completion:(id)completion;
- (void)systemAppIsInstallableOnDeviceWithPairingID:(id)d withBundleID:(id)iD completion:(id)completion;
- (void)updatePreferencesForApplicationWithIdentifier:(id)identifier preferences:(id)preferences writingToPreferencesLocation:(unint64_t)location forDeviceWithPairingID:(id)d options:(unint64_t)options completion:(id)completion;
@end

@implementation ACXDeviceConnectionClient

- (NSXPCConnection)xpcConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);

  return WeakRetained;
}

- (NSString)clientName
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    processIdentifier = [WeakRetained processIdentifier];
    v5 = sub_100001A28();
    v6 = [NSString stringWithFormat:@"%@ (pid %d)", v5, processIdentifier];
  }

  else
  {
    v6 = @"Unknown client";
  }

  return v6;
}

- (ACXDeviceConnectionClient)init
{
  v3 = +[ACXDeviceManager sharedManager];
  v4 = +[ACXCompanionSyncConnectionManager sharedConnectionManager];
  v5 = +[ACXAvailableApplicationManager sharedApplicationManager];
  v6 = [(ACXDeviceConnectionClient *)self initWithDeviceManager:v3 companionSyncConnectionManager:v4 applicationManager:v5];

  return v6;
}

- (ACXDeviceConnectionClient)initWithDeviceManager:(id)manager companionSyncConnectionManager:(id)connectionManager applicationManager:(id)applicationManager
{
  managerCopy = manager;
  connectionManagerCopy = connectionManager;
  applicationManagerCopy = applicationManager;
  v14.receiver = self;
  v14.super_class = ACXDeviceConnectionClient;
  v11 = [(ACXDeviceConnectionClient *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(ACXDeviceConnectionClient *)v11 setDeviceManager:managerCopy];
    [(ACXDeviceConnectionClient *)v12 setCompanionSyncConnectionManager:connectionManagerCopy];
    [(ACXDeviceConnectionClient *)v12 setApplicationManager:applicationManagerCopy];
  }

  return v12;
}

+ (void)configureService
{
  if (qword_1000A4870 != -1)
  {
    sub_10005A250();
  }
}

+ (void)messageAllObserversWithInstallStateUpdate:(id)update
{
  updateCopy = update;
  v4 = qword_1000A4860;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100050398;
  v6[3] = &unk_10008CD40;
  v7 = updateCopy;
  v5 = updateCopy;
  sub_100005828(v4, v6);
}

+ (void)messageAllObserversWithInstallProgressForApplication:(id)application progress:(double)progress phase:(unint64_t)phase
{
  applicationCopy = application;
  v8 = qword_1000A4860;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100050694;
  v10[3] = &unk_10008D080;
  v11 = applicationCopy;
  progressCopy = progress;
  phaseCopy = phase;
  v9 = applicationCopy;
  sub_100005828(v8, v10);
}

+ (void)messageAllObserversForApplicationsInstalled:(id)installed onDeviceWithPairingID:(id)d
{
  installedCopy = installed;
  dCopy = d;
  v7 = qword_1000A4860;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000509B8;
  v10[3] = &unk_10008CC38;
  v11 = installedCopy;
  v12 = dCopy;
  v8 = dCopy;
  v9 = installedCopy;
  sub_100005828(v7, v10);
}

+ (void)messageAllObserversForApplicationsUpdated:(id)updated onDeviceWithPairingID:(id)d
{
  updatedCopy = updated;
  dCopy = d;
  v7 = qword_1000A4860;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100050CD0;
  v10[3] = &unk_10008CC38;
  v11 = updatedCopy;
  v12 = dCopy;
  v8 = dCopy;
  v9 = updatedCopy;
  sub_100005828(v7, v10);
}

+ (void)messageAllObserversForApplicationsUninstalled:(id)uninstalled onDeviceWithPairingID:(id)d
{
  uninstalledCopy = uninstalled;
  dCopy = d;
  v7 = qword_1000A4860;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100050FE8;
  v10[3] = &unk_10008CC38;
  v11 = uninstalledCopy;
  v12 = dCopy;
  v8 = dCopy;
  v9 = uninstalledCopy;
  sub_100005828(v7, v10);
}

+ (void)messageAllObserversForApplicationDatabaseResyncedForDeviceWithPairingID:(id)d
{
  dCopy = d;
  v4 = qword_1000A4860;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000512D8;
  v6[3] = &unk_10008CD40;
  v7 = dCopy;
  v5 = dCopy;
  sub_100005828(v4, v6);
}

+ (void)messageAllObserversForApplicationsRemovabilityChanged:(id)changed onDeviceWithPairingID:(id)d
{
  changedCopy = changed;
  dCopy = d;
  v7 = qword_1000A4860;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000515E4;
  v10[3] = &unk_10008CC38;
  v11 = changedCopy;
  v12 = dCopy;
  v8 = dCopy;
  v9 = changedCopy;
  sub_100005828(v7, v10);
}

- (NSString)clientSigningIdentifier
{
  xpcConnection = [(ACXDeviceConnectionClient *)self xpcConnection];
  v4 = xpcConnection;
  if (xpcConnection)
  {
    [xpcConnection auditToken];
  }

  else
  {
    memset(&token, 0, sizeof(token));
  }

  v5 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &token);

  if (v5)
  {
    *token.val = 0;
    v6 = SecTaskCopySigningIdentifier(v5, &token);
    if (!v6)
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
      {
        clientName = [(ACXDeviceConnectionClient *)self clientName];
        MOLogWrite();
      }

      if (*token.val)
      {
        CFRelease(*token.val);
        *token.val = 0;
      }
    }

    CFRelease(v5);
  }

  else
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      clientName2 = [(ACXDeviceConnectionClient *)self clientName];
      MOLogWrite();
    }

    v6 = 0;
  }

  return v6;
}

- (id)_hasEntitlement:(id)entitlement forRequestType:(id)type
{
  entitlementCopy = entitlement;
  typeCopy = type;
  xpcConnection = [(ACXDeviceConnectionClient *)self xpcConnection];
  v10 = xpcConnection;
  if (xpcConnection)
  {
    v11 = [xpcConnection valueForEntitlement:entitlementCopy];
    if (objc_opt_respondsToSelector())
    {
      bOOLValue = [v11 BOOLValue];

      if (bOOLValue)
      {
        v13 = 0;
        goto LABEL_8;
      }
    }

    else
    {
    }

    [v10 processIdentifier];
    v14 = sub_100001A28();
    v13 = sub_1000061DC("[ACXDeviceConnectionClient _hasEntitlement:forRequestType:]", 298, @"ACXErrorDomain", 27, 0, 0, @"Process %@ (pid %d) is missing %@ entitlement so rejecting %@ request.", v15, v14);
  }

  else
  {
    v13 = sub_1000061DC("[ACXDeviceConnectionClient _hasEntitlement:forRequestType:]", 293, @"ACXErrorDomain", 1, 0, 0, @"Connection was nil", v9, v17);
  }

LABEL_8:

  return v13;
}

- (id)_gizmoStateForDeviceWithPairingID:(id)d error:(id *)error
{
  dCopy = d;
  v7 = +[ACXGizmoStateManager sharedStateManager];
  v8 = v7;
  if (dCopy)
  {
    [v7 stateForPairingID:dCopy];
  }

  else
  {
    [v7 stateForActivePairedDevice];
  }
  v9 = ;

  if (!v9)
  {
    uUIDString = [dCopy UUIDString];
    clientName = [(ACXDeviceConnectionClient *)self clientName];
    v12 = sub_1000061DC("[ACXDeviceConnectionClient _gizmoStateForDeviceWithPairingID:error:]", 314, @"ACXErrorDomain", 28, 0, 0, @"Could not get device state for device with pairing ID %@ (requested by %@)", v11, uUIDString);

    if (error)
    {
      v13 = v12;
      *error = v12;
    }
  }

  return v9;
}

- (id)_deviceForPairingID:(id)d error:(id *)error
{
  dCopy = d;
  deviceManager = [(ACXDeviceConnectionClient *)self deviceManager];
  v8 = deviceManager;
  if (dCopy)
  {
    [deviceManager deviceForPairingID:dCopy];
  }

  else
  {
    [deviceManager currentActivePairedDevice];
  }
  v9 = ;

  if (!v9)
  {
    uUIDString = [dCopy UUIDString];
    clientName = [(ACXDeviceConnectionClient *)self clientName];
    v12 = sub_1000061DC("[ACXDeviceConnectionClient _deviceForPairingID:error:]", 332, @"ACXErrorDomain", 28, 0, 0, @"Could not get device with pairing ID %@ (requested by %@)", v11, uUIDString);

    if (error)
    {
      v13 = v12;
      *error = v12;
    }
  }

  return v9;
}

- (NSString)description
{
  clientName = [(ACXDeviceConnectionClient *)self clientName];
  v4 = [NSString stringWithFormat:@"<ACXDeviceConnectionClient %p %@>", self, clientName];

  return v4;
}

- (void)enableObservers
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100051E88;
  block[3] = &unk_10008CD40;
  block[4] = self;
  dispatch_sync(qword_1000A4860, block);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100051F78;
  v3[3] = &unk_10008CD40;
  v3[4] = self;
  sub_100005828(qword_1000A4860, v3);
}

- (void)disableObservers
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100052154;
  block[3] = &unk_10008CD40;
  block[4] = self;
  dispatch_sync(qword_1000A4860, block);
}

- (void)fetchInstalledApplicationsForDeviceWithPairingID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
  {
    clientName = [(ACXDeviceConnectionClient *)self clientName];
    MOLogWrite();
  }

  v8 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient fetchInstalledApplicationsForDeviceWithPairingID:completion:]", clientName];
  v9 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v8];

  if (v9)
  {
    completionCopy[2](completionCopy, 0, v9);
  }

  else
  {
    applicationManager = [(ACXDeviceConnectionClient *)self applicationManager];
    allAvailableApps = [applicationManager allAvailableApps];

    v12 = objc_opt_new();
    v33 = 0;
    v13 = [(ACXDeviceConnectionClient *)self _gizmoStateForDeviceWithPairingID:dCopy error:&v33];
    v14 = v33;
    v15 = v14;
    if (v13)
    {
      v25 = v14;
      v26 = allAvailableApps;
      v27 = completionCopy;
      v28 = dCopy;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v16 = allAvailableApps;
      v17 = [v16 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v30;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v30 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v29 + 1) + 8 * i);
            v22 = [v16 objectForKeyedSubscript:v21];
            v23 = [v22 externalApplicationDictionaryRepresentationForDeviceState:v13];
            [v12 setObject:v23 forKeyedSubscript:v21];
          }

          v18 = [v16 countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v18);
      }

      if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
      {
        MOLogWrite();
      }

      completionCopy = v27;
      (v27)[2](v27, v12, 0);
      dCopy = v28;
      v15 = v25;
      allAvailableApps = v26;
    }

    else
    {
      completionCopy[2](completionCopy, 0, v14);
    }
  }
}

- (void)fetchInstalledComplicationsForDeviceWithPairingID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
  {
    clientName = [(ACXDeviceConnectionClient *)self clientName];
    MOLogWrite();
  }

  v8 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient fetchInstalledComplicationsForDeviceWithPairingID:completion:]", clientName];
  v9 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v8];

  if (v9)
  {
    completionCopy[2](completionCopy, 0, v9);
  }

  else
  {
    applicationManager = [(ACXDeviceConnectionClient *)self applicationManager];
    allAvailableApps = [applicationManager allAvailableApps];

    v12 = objc_opt_new();
    v33 = 0;
    v13 = [(ACXDeviceConnectionClient *)self _gizmoStateForDeviceWithPairingID:dCopy error:&v33];
    v14 = v33;
    v15 = v14;
    if (v13)
    {
      v25 = v14;
      v26 = allAvailableApps;
      v27 = completionCopy;
      v28 = dCopy;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v16 = allAvailableApps;
      v17 = [v16 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v30;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v30 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v29 + 1) + 8 * i);
            v22 = [v16 objectForKeyedSubscript:v21];
            if ([v22 hasComplication])
            {
              v23 = [v22 externalComplicationDictionaryRepresentationForDeviceState:v13];
              [v12 setObject:v23 forKeyedSubscript:v21];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v18);
      }

      if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
      {
        MOLogWrite();
      }

      completionCopy = v27;
      (v27)[2](v27, v12, 0);
      dCopy = v28;
      v15 = v25;
      allAvailableApps = v26;
    }

    else
    {
      completionCopy[2](completionCopy, 0, v14);
    }
  }
}

- (void)activeComplicationsForDeviceWithPairingID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
  {
    clientName = [(ACXDeviceConnectionClient *)self clientName];
    MOLogWrite();
  }

  v7 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient activeComplicationsForDeviceWithPairingID:completion:]", clientName];
  v8 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v7];

  if (v8)
  {
    completionCopy[2](completionCopy, 0, v8);
  }

  else
  {
    v9 = +[NRPairedDeviceRegistry sharedInstance];
    v10 = v9;
    if (dCopy)
    {
      [v9 deviceForPairingID:?];
    }

    else
    {
      [v9 getActivePairedDevice];
    }
    v11 = ;

    v12 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.sockpuppet.activeComplications" pairedDevice:v11];
    synchronize = [v12 synchronize];
    v14 = [v12 arrayForKey:@"activeComplications"];
    v15 = [v14 copy];

    if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
    {
      MOLogWrite();
    }

    (completionCopy)[2](completionCopy, v15, 0);
  }
}

- (void)fetchInstalledCompatibleApplicationsForDeviceWithPairingID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
  {
    clientName = [(ACXDeviceConnectionClient *)self clientName];
    MOLogWrite();
  }

  v8 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient fetchInstalledCompatibleApplicationsForDeviceWithPairingID:completion:]", clientName];
  v9 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v8];

  if (v9)
  {
    completionCopy[2](completionCopy, 0, v9);
  }

  else
  {
    applicationManager = [(ACXDeviceConnectionClient *)self applicationManager];
    allAvailableApps = [applicationManager allAvailableApps];

    v35 = objc_opt_new();
    v40 = 0;
    v12 = [(ACXDeviceConnectionClient *)self _deviceForPairingID:dCopy error:&v40];
    v13 = v40;
    if (v12)
    {
      v14 = +[ACXGizmoStateManager sharedStateManager];
      v15 = [v14 stateForDevice:v12];

      if (v15)
      {
        v31 = v13;
        v32 = allAvailableApps;
        v33 = completionCopy;
        v34 = dCopy;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v16 = allAvailableApps;
        v17 = [v16 countByEnumeratingWithState:&v36 objects:v41 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v37;
          do
          {
            for (i = 0; i != v18; i = i + 1)
            {
              if (*v37 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v36 + 1) + 8 * i);
              v22 = [v16 objectForKeyedSubscript:v21];
              osVersion = [v12 osVersion];
              v24 = [v22 isCompatibleWithOSVersion:osVersion];

              if (v24)
              {
                v25 = [v22 externalApplicationDictionaryRepresentationForDeviceState:v15];
                [v35 setObject:v25 forKeyedSubscript:v21];
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v36 objects:v41 count:16];
          }

          while (v18);
        }

        if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
        {
          MOLogWrite();
        }

        completionCopy = v33;
        (v33)[2](v33, v35, 0);
        dCopy = v34;
        allAvailableApps = v32;
        v9 = 0;
        v13 = v31;
      }

      else
      {
        uUIDString = [dCopy UUIDString];
        clientName2 = [(ACXDeviceConnectionClient *)self clientName];
        v28 = sub_1000061DC("[ACXDeviceConnectionClient fetchInstalledCompatibleApplicationsForDeviceWithPairingID:completion:]", 490, @"ACXErrorDomain", 28, 0, 0, @"Could not get state for device with pairing ID %@ (requested by %@).", v27, uUIDString);

        completionCopy[2](completionCopy, 0, v28);
        v13 = v28;
      }
    }

    else
    {
      completionCopy[2](completionCopy, 0, v13);
    }
  }
}

- (void)fetchApplicationWithContainingApplicationBundleID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
  {
    clientName = [(ACXDeviceConnectionClient *)self clientName];
    v18 = dCopy;
    MOLogWrite();
  }

  v7 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient fetchApplicationWithContainingApplicationBundleID:completion:]", clientName, v18];
  v8 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v7];

  if (v8)
  {
    completionCopy[2](completionCopy, 0, v8);
  }

  else
  {
    v9 = objc_opt_new();
    v10 = +[ACXGizmoStateManager sharedStateManager];
    stateForActivePairedDevice = [v10 stateForActivePairedDevice];

    applicationManager = [(ACXDeviceConnectionClient *)self applicationManager];
    v13 = [applicationManager gizmoAppForCompanionAppBundleID:dCopy];

    if (v13)
    {
      v14 = [v13 exportedAppStateForDeviceState:stateForActivePairedDevice];
      if (v14)
      {
        v15 = [NSNumber numberWithInteger:v14];
        bundleIdentifier = [v13 bundleIdentifier];
        [v9 setObject:v15 forKeyedSubscript:bundleIdentifier];
      }
    }

    if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
    {
      MOLogWrite();
    }

    (completionCopy)[2](completionCopy, v9, 0);
  }
}

- (void)fetchInfoForApplicationWithBundleID:(id)d forDeviceWithPairingID:(id)iD completion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
  {
    clientName = [(ACXDeviceConnectionClient *)self clientName];
    v26 = dCopy;
    MOLogWrite();
  }

  v11 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient fetchInfoForApplicationWithBundleID:forDeviceWithPairingID:completion:]", clientName, v26];
  v12 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v11];

  if (v12)
  {
    completionCopy[2](completionCopy, 0, v12);
  }

  else
  {
    v30 = 0;
    v13 = [(ACXDeviceConnectionClient *)self _gizmoStateForDeviceWithPairingID:iDCopy error:&v30];
    v14 = v30;
    if (v13)
    {
      applicationManager = [(ACXDeviceConnectionClient *)self applicationManager];
      allAvailableApps = [applicationManager allAvailableApps];

      v29 = allAvailableApps;
      v17 = [allAvailableApps objectForKeyedSubscript:dCopy];
      v18 = v17;
      if (v17)
      {
        v19 = [v17 externalApplicationDictionaryRepresentationForDeviceState:v13];
      }

      else
      {
        v19 = 0;
      }

      if ([v19 count])
      {
        if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
        {
          MOLogWrite();
        }

        (completionCopy)[2](completionCopy, v19, 0);
      }

      else
      {
        [iDCopy UUIDString];
        v20 = v28 = v14;
        clientName2 = [(ACXDeviceConnectionClient *)self clientName];
        v24 = sub_100001B04("[ACXDeviceConnectionClient fetchInfoForApplicationWithBundleID:forDeviceWithPairingID:completion:]", 567, @"ACXErrorDomain", 19, @"No watch app found with bundle ID %@ on device with pairing ID %@ (requested by %@)", v21, v22, v23, dCopy);

        v14 = v28;
        completionCopy[2](completionCopy, 0, v24);
      }
    }

    else
    {
      completionCopy[2](completionCopy, 0, v14);
    }
  }
}

- (void)fetchWatchAppBundleURLWithinCompanionAppWithWatchAppIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
  {
    clientName = [(ACXDeviceConnectionClient *)self clientName];
    v14 = identifierCopy;
    MOLogWrite();
  }

  v7 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient fetchWatchAppBundleURLWithinCompanionAppWithWatchAppIdentifier:completion:]", clientName, v14];
  v8 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v7];

  if (v8)
  {
    completionCopy[2](completionCopy, 0, v8);
  }

  else
  {
    applicationManager = [(ACXDeviceConnectionClient *)self applicationManager];
    v10 = [applicationManager gizmoAppWithBundleID:identifierCopy];

    if (v10)
    {
      watchAppURL = [v10 watchAppURL];
      (completionCopy)[2](completionCopy, watchAppURL, 0);
    }

    else
    {
      clientName2 = [(ACXDeviceConnectionClient *)self clientName];
      watchAppURL = sub_1000061DC("[ACXDeviceConnectionClient fetchWatchAppBundleURLWithinCompanionAppWithWatchAppIdentifier:completion:]", 588, @"ACXErrorDomain", 19, 0, 0, @"No watch app found with bundle ID %@ (requested by %@)", v12, identifierCopy);

      completionCopy[2](completionCopy, 0, watchAppURL);
    }
  }
}

- (void)fetchWatchAppBundleIDForCompanionAppBundleID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
  {
    clientName = [(ACXDeviceConnectionClient *)self clientName];
    v29 = dCopy;
    MOLogWrite();
  }

  v8 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient fetchWatchAppBundleIDForCompanionAppBundleID:completion:]", clientName, v29];
  v9 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v8];

  if (v9)
  {
    completionCopy[2](completionCopy, 0, v9);
  }

  else
  {
    applicationManager = [(ACXDeviceConnectionClient *)self applicationManager];
    v11 = [applicationManager gizmoAppBundleIDForCompanionAppBundleID:dCopy];

    if (v11)
    {
      if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
      {
        MOLogWrite();
      }

      (completionCopy)[2](completionCopy, v11, 0);
    }

    else
    {
      v31 = completionCopy;
      deviceManager = [(ACXDeviceConnectionClient *)self deviceManager];
      allDevices = [deviceManager allDevices];

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v14 = allDevices;
      v15 = [v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v33;
        while (2)
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v33 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v32 + 1) + 8 * i);
            companionSyncConnectionManager = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
            v21 = [companionSyncConnectionManager connectionForDevice:v19];

            if ([v21 supportsRemoteAppList])
            {
              remoteAppList = [v21 remoteAppList];
              v23 = [remoteAppList appBundleIDForCounterpartBundleID:dCopy error:0];

              if (v23)
              {
                completionCopy = v31;
                (v31)[2](v31, v23, 0);

                goto LABEL_22;
              }
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

      clientName2 = [(ACXDeviceConnectionClient *)self clientName];
      v27 = sub_100001B04("[ACXDeviceConnectionClient fetchWatchAppBundleIDForCompanionAppBundleID:completion:]", 624, @"ACXErrorDomain", 19, @"No watch app found for companion app bundle ID %@ (requested by %@)", v24, v25, v26, dCopy);

      completionCopy = v31;
      v31[2](v31, 0, v27);

LABEL_22:
      v11 = 0;
    }
  }
}

- (void)installAllApplications
{
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    clientName = [(ACXDeviceConnectionClient *)self clientName];
    MOLogWrite();
  }

  v3 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient installAllApplications]", clientName];
  v8 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v3];

  v4 = v8;
  if (!v8)
  {
    companionSyncConnectionManager = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
    connectionForActivePairedDevice = [companionSyncConnectionManager connectionForActivePairedDevice];
    [connectionForActivePairedDevice installAllApplications];

    v4 = 0;
  }
}

- (void)cancelPendingInstallations
{
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    clientName = [(ACXDeviceConnectionClient *)self clientName];
    MOLogWrite();
  }

  v3 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient cancelPendingInstallations]", clientName];
  v8 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v3];

  v4 = v8;
  if (!v8)
  {
    companionSyncConnectionManager = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
    connectionForActivePairedDevice = [companionSyncConnectionManager connectionForActivePairedDevice];
    [connectionForActivePairedDevice cancelPendingInstallations];

    v4 = 0;
  }
}

- (void)retryPendingAppInstallationsOnDeviceWithPairingID:(id)d
{
  dCopy = d;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    clientName = [(ACXDeviceConnectionClient *)self clientName];
    MOLogWrite();
  }

  v4 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient retryPendingAppInstallationsOnDeviceWithPairingID:]", clientName];
  v5 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v4];

  if (!v5)
  {
    deviceManager = [(ACXDeviceConnectionClient *)self deviceManager];
    currentActivePairedDevice = [deviceManager currentActivePairedDevice];

    pairingID = [currentActivePairedDevice pairingID];
    v9 = [pairingID isEqual:dCopy];

    if (v9)
    {
      companionSyncConnectionManager = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
      connectionForActivePairedDevice = [companionSyncConnectionManager connectionForActivePairedDevice];
      clientName2 = [(ACXDeviceConnectionClient *)self clientName];
      v13 = [NSString stringWithFormat:@"retryPendingAppInstallations for %@", clientName2];
      [connectionForActivePairedDevice performReunionSyncWithReason:v13];
    }

    else
    {
      if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
      {
        goto LABEL_11;
      }

      companionSyncConnectionManager = [currentActivePairedDevice pairingID];
      MOLogWrite();
    }

LABEL_11:
  }
}

- (void)installApplication:(id)application withProvisioningProfileInfo:(id)info forTestFlight:(BOOL)flight onDeviceWithPairingID:(id)d completion:(id)completion
{
  flightCopy = flight;
  applicationCopy = application;
  infoCopy = info;
  dCopy = d;
  completionCopy = completion;
  v16 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient installApplication:withProvisioningProfileInfo:forTestFlight:onDeviceWithPairingID:completion:]"];
  v17 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v16];

  if (v17)
  {
    goto LABEL_2;
  }

  if (!flightCopy || ([(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.profiles.allow" forRequestType:@"install application for TestFlight"], (v18 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      clientName = [(ACXDeviceConnectionClient *)self clientName];
      v20 = clientName;
      v21 = "not for test flight";
      if (flightCopy)
      {
        v21 = "for test flight";
      }

      v53 = applicationCopy;
      v58 = v21;
      v52 = clientName;
      MOLogWrite();
    }

    v22 = qos_class_self();
    v23 = dispatch_get_global_queue(v22, 0);
    sub_100005828(v23, &stru_10008E160);

    v62 = 0;
    v24 = [(ACXDeviceConnectionClient *)self _deviceForPairingID:dCopy error:&v62];
    v17 = v62;
    if (!v24)
    {
      v30 = sub_10004F91C(8, v17, applicationCopy, 1);
      completionCopy[2](completionCopy, 0, v30);
      pairingID = dCopy;
LABEL_28:

      dCopy = pairingID;
      goto LABEL_29;
    }

    pairingID = [v24 pairingID];

    nrDevice = [v24 nrDevice];
    v27 = sub_10004FF78(nrDevice);

    if (v27)
    {
      uUIDString = [pairingID UUIDString];
      v29 = sub_1000061DC("[ACXDeviceConnectionClient installApplication:withProvisioningProfileInfo:forTestFlight:onDeviceWithPairingID:completion:]", 718, @"ACXErrorDomain", 57, 0, 0, @"The app %@ cannot be installed on the device with pairing ID %@ because app installation is prohibited by a device management restriction.", v28, applicationCopy);

      v30 = sub_10004F91C(10, v29, applicationCopy, 1);
      completionCopy[2](completionCopy, 0, v30);
LABEL_23:
      v17 = v29;
      goto LABEL_28;
    }

    applicationManager = [(ACXDeviceConnectionClient *)self applicationManager];
    v30 = [applicationManager gizmoAppWithBundleID:applicationCopy];

    if (!v30)
    {
      uUIDString2 = [pairingID UUIDString];
      clientName2 = [(ACXDeviceConnectionClient *)self clientName];
      v29 = sub_1000061DC("[ACXDeviceConnectionClient installApplication:withProvisioningProfileInfo:forTestFlight:onDeviceWithPairingID:completion:]", 726, @"ACXErrorDomain", 19, 0, 0, @"No WatchKit app is installed with the identifier %@ on device with pairing ID %@ (requested by %@)", v37, applicationCopy);

      completionCopy[2](completionCopy, 0, v29);
      goto LABEL_23;
    }

    if ([v30 isEligibleForWatchAppInstall])
    {
      if ([v24 isReachable])
      {
        if (![v30 isBetaApp] || !objc_msgSend(v30, "isEmbeddedPlaceholder") || (-[ACXDeviceConnectionClient clientSigningIdentifier](self, "clientSigningIdentifier"), v32 = objc_claimAutoreleasedReturnValue(), v60 = objc_msgSend(v32, "isEqualToString:", @"com.apple.TestFlight"), v32, !v60))
        {
          if (![v30 isBetaApp] || (-[ACXDeviceConnectionClient clientSigningIdentifier](self, "clientSigningIdentifier"), v43 = objc_claimAutoreleasedReturnValue(), v61 = objc_msgSend(v43, "isEqualToString:", @"com.apple.TestFlight"), v43, (v61 & 1) != 0) || flightCopy)
          {
            companionSyncConnectionManager = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
            v46 = [companionSyncConnectionManager connectionForDevice:v24];

            if (v46)
            {
              [v46 installWatchAppWithBundleID:applicationCopy withProvisioningProfileInfo:infoCopy completionWithError:completionCopy];
            }

            else
            {
              uUIDString3 = [pairingID UUIDString];
              v49 = sub_1000061DC("[ACXDeviceConnectionClient installApplication:withProvisioningProfileInfo:forTestFlight:onDeviceWithPairingID:completion:]", 764, @"ACXErrorDomain", 28, 0, 0, @"No sync connection found for device with pairing ID %@", v48, uUIDString3);

              applicationName = [v30 applicationName];
              v51 = sub_10004F91C(8, v49, applicationName, 1);

              completionCopy[2](completionCopy, 0, v51);
              v17 = v49;
            }
          }

          else
          {
            v44 = +[ACXTestFlightInstallQueue sharedInstaller];
            [v44 installWatchApp:v30 targetDevice:v24];

            completionCopy[2](completionCopy, 1, 0);
          }

          goto LABEL_28;
        }

        uUIDString4 = [pairingID UUIDString];
        bundleIdentifier = [v30 bundleIdentifier];
        v35 = sub_1000061DC("[ACXDeviceConnectionClient installApplication:withProvisioningProfileInfo:forTestFlight:onDeviceWithPairingID:completion:]", 749, @"ACXErrorDomain", 53, 0, 0, @"Ignoring installation request from TestFlight for beta app %@ on the device with  pairing ID %@ because it only contains a placeholder watch app and App Store cannot install TestFlight apps.", v34, uUIDString4);

        completionCopy[2](completionCopy, 0, v35);
        goto LABEL_27;
      }

      uUIDString5 = [pairingID UUIDString];
      v35 = sub_1000061DC("[ACXDeviceConnectionClient installApplication:withProvisioningProfileInfo:forTestFlight:onDeviceWithPairingID:completion:]", 739, @"ACXErrorDomain", 55, 0, 0, @"Ignoring request to install app %@ because the device with pairing ID %@ isn't reachable", v41, applicationCopy);

      applicationName2 = [v30 applicationName];
      v40 = 8;
    }

    else
    {
      uUIDString6 = [pairingID UUIDString];
      v35 = sub_1000061DC("[ACXDeviceConnectionClient installApplication:withProvisioningProfileInfo:forTestFlight:onDeviceWithPairingID:completion:]", 732, @"ACXErrorDomain", 59, 0, 0, @"The app %@ cannot be installed on the device with pairing ID %@ because it isn't eligible for Watch installs.", v38, applicationCopy);

      applicationName2 = [v30 applicationName];
      v40 = 12;
    }

    v42 = sub_10004F91C(v40, v35, applicationName2, 1);

    completionCopy[2](completionCopy, 0, v42);
LABEL_27:
    v17 = v35;
    goto LABEL_28;
  }

  v17 = v18;
LABEL_2:
  completionCopy[2](completionCopy, 0, v17);
LABEL_29:
}

- (void)installApplicationAtURL:(id)l onDeviceWithPairingID:(id)d installOptions:(id)options size:(int64_t)size completion:(id)completion
{
  lCopy = l;
  dCopy = d;
  optionsCopy = options;
  completionCopy = completion;
  v16 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient installApplicationAtURL:onDeviceWithPairingID:installOptions:size:completion:]"];
  v17 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v16];

  if (!v17)
  {
    v18 = qos_class_self();
    v19 = dispatch_get_global_queue(v18, 0);
    sub_100005828(v19, &stru_10008E180);

    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      clientName = [(ACXDeviceConnectionClient *)self clientName];
      [lCopy path];
      v44 = v43 = clientName;
      MOLogWrite();
    }

    v49 = 0;
    v21 = [(ACXDeviceConnectionClient *)self _deviceForPairingID:dCopy error:&v49, v43, v44];
    v22 = v49;
    if (v21)
    {
      v48 = optionsCopy;
      pairingID = [v21 pairingID];

      nrDevice = [v21 nrDevice];
      v25 = sub_10004FF78(nrDevice);

      if (v25)
      {
        path = [lCopy path];
        uUIDString = [pairingID UUIDString];
        v28 = sub_1000061DC("[ACXDeviceConnectionClient installApplicationAtURL:onDeviceWithPairingID:installOptions:size:completion:]", 805, @"ACXErrorDomain", 57, 0, 0, @"The application at path %@ cannot be installed on the device with pairing ID %@ because app installation is prohibited by a device management restriction.", v27, path);

        lastPathComponent = [lCopy lastPathComponent];
        v30 = sub_10004F91C(10, v28, lastPathComponent, 1);

        completionCopy[2](completionCopy, 0, v30);
        v22 = v28;
LABEL_16:
        dCopy = pairingID;
        optionsCopy = v48;
        goto LABEL_17;
      }

      if ([v21 isReachable])
      {
        companionSyncConnectionManager = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
        v30 = [companionSyncConnectionManager connectionForDevice:v21];

        if (v30)
        {
          [v30 installWatchAppAtURL:lCopy installOptions:v48 size:size completionWithError:completionCopy];
          dCopy = pairingID;
          optionsCopy = v48;
          goto LABEL_17;
        }

        uUIDString2 = [pairingID UUIDString];
        clientName2 = [(ACXDeviceConnectionClient *)self clientName];
        v38 = sub_1000061DC("[ACXDeviceConnectionClient installApplicationAtURL:onDeviceWithPairingID:installOptions:size:completion:]", 820, @"ACXErrorDomain", 28, 0, 0, @"No sync connection found for device with pairing ID %@ (requested by %@)", v40, uUIDString2);

        lastPathComponent2 = [lCopy lastPathComponent];
        v42 = sub_10004F91C(8, v38, lastPathComponent2, 1);

        completionCopy[2](completionCopy, 0, v42);
      }

      else
      {
        path2 = [lCopy path];
        uUIDString3 = [pairingID UUIDString];
        clientName3 = [(ACXDeviceConnectionClient *)self clientName];
        v36 = sub_1000061DC("[ACXDeviceConnectionClient installApplicationAtURL:onDeviceWithPairingID:installOptions:size:completion:]", 812, @"ACXErrorDomain", 55, 0, 0, @"Ignoring request to install app at %@ as the device with pairing ID %@ isn't reachable (requested by %@)", v35, path2);

        lastPathComponent3 = [lCopy lastPathComponent];
        v38 = v36;
        v30 = sub_10004F91C(8, v36, lastPathComponent3, 1);

        completionCopy[2](completionCopy, 0, v30);
      }

      v22 = v38;
      goto LABEL_16;
    }

    lastPathComponent4 = [lCopy lastPathComponent];
    v30 = sub_10004F91C(8, v22, lastPathComponent4, 1);

    completionCopy[2](completionCopy, 0, v30);
LABEL_17:

    goto LABEL_18;
  }

  completionCopy[2](completionCopy, 0, v17);
LABEL_18:
}

- (void)removeApplication:(id)application fromDeviceWithPairingID:(id)d completion:(id)completion
{
  applicationCopy = application;
  dCopy = d;
  completionCopy = completion;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    clientName = [(ACXDeviceConnectionClient *)self clientName];
    v27 = applicationCopy;
    MOLogWrite();
  }

  v11 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient removeApplication:fromDeviceWithPairingID:completion:]", clientName, v27];
  v12 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v11];

  if (v12)
  {
    completionCopy[2](completionCopy, 0, v12);
  }

  else
  {
    v32 = 0;
    v13 = [(ACXDeviceConnectionClient *)self _deviceForPairingID:dCopy error:&v32];
    v14 = v32;
    if (v13)
    {
      companionSyncConnectionManager = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
      v16 = [companionSyncConnectionManager connectionForDevice:v13];

      if (v16)
      {
        v17 = [v16 remoteAppWithBundleID:applicationCopy];
        if (v17)
        {
          if ([v13 isReachable])
          {
            [v16 removeWatchAppWithBundleID:v17 completion:completionCopy];
          }

          else
          {
            pairingID = [v13 pairingID];
            uUIDString = [pairingID UUIDString];
            clientName2 = [(ACXDeviceConnectionClient *)self clientName];
            v23 = sub_1000061DC("[ACXDeviceConnectionClient removeApplication:fromDeviceWithPairingID:completion:]", 866, @"ACXErrorDomain", 55, 0, 0, @"Ignoring request to remove app %@ because the device with pairing ID %@ isn't reachable (requested by %@)", v22, applicationCopy);

            applicationName = [v17 applicationName];
            v25 = sub_10004F91C(8, v23, applicationName, 2);

            completionCopy[2](completionCopy, 0, v25);
            v14 = v23;
          }
        }

        else
        {
          if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
          {
            MOLogWrite();
          }

          completionCopy[2](completionCopy, 5, 0);
        }
      }

      else
      {
        pairingID2 = [v13 pairingID];
        uUIDString2 = [pairingID2 UUIDString];
        clientName3 = [(ACXDeviceConnectionClient *)self clientName];
        v21 = sub_1000061DC("[ACXDeviceConnectionClient removeApplication:fromDeviceWithPairingID:completion:]", 852, @"ACXErrorDomain", 1, 0, 0, @"Failed to get connection for device with pairing ID %@ (requested by %@)", v20, uUIDString2);

        v16 = sub_10004F91C(8, v21, applicationCopy, 2);
        completionCopy[2](completionCopy, 0, v16);
        v14 = v21;
      }
    }

    else
    {
      v16 = sub_10004F91C(8, v14, applicationCopy, 2);
      completionCopy[2](completionCopy, 0, v16);
    }
  }
}

- (void)getAlwaysInstallForDeviceWithPairingID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    clientName = [(ACXDeviceConnectionClient *)self clientName];
    MOLogWrite();
  }

  v7 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient getAlwaysInstallForDeviceWithPairingID:completion:]", clientName];
  v8 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v7];

  if (v8)
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v9 = [(ACXDeviceConnectionClient *)self _gizmoStateForDeviceWithPairingID:dCopy error:0];
    (completionCopy)[2](completionCopy, [v9 alwaysInstallApps]);
  }
}

- (void)installProvisioningProfileWithData:(id)data onDeviceWithPairingID:(id)d completion:(id)completion
{
  dataCopy = data;
  dCopy = d;
  completionCopy = completion;
  v11 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient installProvisioningProfileWithData:onDeviceWithPairingID:completion:]"];
  v12 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v11];

  if (v12)
  {
    goto LABEL_4;
  }

  v13 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.profiles.allow" forRequestType:@"install provisioning profile"];
  if (v13)
  {
    v12 = v13;
LABEL_4:
    completionCopy[2](completionCopy, 0, v12);
    goto LABEL_5;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    clientName = [(ACXDeviceConnectionClient *)self clientName];
    MOLogWrite();
  }

  v23 = 0;
  v14 = [(ACXDeviceConnectionClient *)self _deviceForPairingID:dCopy error:&v23, clientName];
  v12 = v23;
  if (v14)
  {
    if ([v14 isReachable])
    {
      companionSyncConnectionManager = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
      v16 = [companionSyncConnectionManager connectionForDevice:v14];
      [v16 installProvisioningProfileWithData:dataCopy completion:completionCopy];
    }

    else
    {
      pairingID = [v14 pairingID];
      uUIDString = [pairingID UUIDString];
      clientName2 = [(ACXDeviceConnectionClient *)self clientName];
      v20 = sub_1000061DC("[ACXDeviceConnectionClient installProvisioningProfileWithData:onDeviceWithPairingID:completion:]", 918, @"ACXErrorDomain", 55, 0, 0, @"Ignoring request to install provisioning profile as the device with pairing ID %@ isn't reachable (requested by %@)", v19, uUIDString);

      completionCopy[2](completionCopy, 0, v20);
      v12 = v20;
    }
  }

  else
  {
    completionCopy[2](completionCopy, 0, v12);
  }

LABEL_5:
}

- (void)removeProvisioningProfileWithID:(id)d fromDeviceWithPairingID:(id)iD completion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  v11 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient removeProvisioningProfileWithID:fromDeviceWithPairingID:completion:]"];
  v12 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v11];

  if (v12)
  {
    goto LABEL_4;
  }

  v13 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.profiles.allow" forRequestType:@"remove provisioning profile"];
  if (v13)
  {
    v12 = v13;
LABEL_4:
    completionCopy[2](completionCopy, 0, v12);
    goto LABEL_5;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    clientName = [(ACXDeviceConnectionClient *)self clientName];
    v22 = dCopy;
    MOLogWrite();
  }

  v24 = 0;
  v14 = [(ACXDeviceConnectionClient *)self _deviceForPairingID:iDCopy error:&v24, clientName, v22];
  v12 = v24;
  if (v14)
  {
    if ([v14 isReachable])
    {
      companionSyncConnectionManager = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
      v16 = [companionSyncConnectionManager connectionForDevice:v14];
      [v16 removeProvisioningProfileWithID:dCopy completion:completionCopy];
    }

    else
    {
      pairingID = [v14 pairingID];
      uUIDString = [pairingID UUIDString];
      clientName2 = [(ACXDeviceConnectionClient *)self clientName];
      v20 = sub_1000061DC("[ACXDeviceConnectionClient removeProvisioningProfileWithID:fromDeviceWithPairingID:completion:]", 952, @"ACXErrorDomain", 55, 0, 0, @"Ignoring request to remove provisioning profile as the device with pairing ID %@ isn't reachable (requested by %@)", v19, uUIDString);

      completionCopy[2](completionCopy, 0, v20);
      v12 = v20;
    }
  }

  else
  {
    completionCopy[2](completionCopy, 0, v12);
  }

LABEL_5:
}

- (void)fetchProvisioningProfilesForDeviceWithPairingID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient fetchProvisioningProfilesForDeviceWithPairingID:completion:]"];
  v9 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v8];

  if (v9)
  {
    goto LABEL_4;
  }

  v10 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.profiles.allow" forRequestType:@"fetch provisioning profiles"];
  if (v10)
  {
    v9 = v10;
LABEL_4:
    completionCopy[2](completionCopy, 0, v9);
    goto LABEL_5;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    clientName = [(ACXDeviceConnectionClient *)self clientName];
    MOLogWrite();
  }

  v20 = 0;
  v11 = [(ACXDeviceConnectionClient *)self _deviceForPairingID:dCopy error:&v20, clientName];
  v9 = v20;
  if (v11)
  {
    if ([v11 isReachable])
    {
      companionSyncConnectionManager = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
      v13 = [companionSyncConnectionManager connectionForDevice:v11];
      [v13 fetchProvisioningProfilesWithCompletion:completionCopy];
    }

    else
    {
      pairingID = [v11 pairingID];
      uUIDString = [pairingID UUIDString];
      clientName2 = [(ACXDeviceConnectionClient *)self clientName];
      v17 = sub_1000061DC("[ACXDeviceConnectionClient fetchProvisioningProfilesForDeviceWithPairingID:completion:]", 986, @"ACXErrorDomain", 55, 0, 0, @"Ignoring request to fetch provisioning profiles as the device with pairing ID %@ isn't reachable (requested by %@)", v16, uUIDString);

      completionCopy[2](completionCopy, 0, v17);
      v9 = v17;
    }
  }

  else
  {
    completionCopy[2](completionCopy, 0, v9);
  }

LABEL_5:
}

- (void)fetchProvisioningProfilesForApplicationWithBundleID:(id)d forDeviceWithPairingID:(id)iD completion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    clientName = [(ACXDeviceConnectionClient *)self clientName];
    v22 = dCopy;
    MOLogWrite();
  }

  v11 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient fetchProvisioningProfilesForApplicationWithBundleID:forDeviceWithPairingID:completion:]", clientName, v22];
  v12 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v11];

  if (v12)
  {
    completionCopy[2](completionCopy, 0, v12);
  }

  else
  {
    v24 = 0;
    v13 = [(ACXDeviceConnectionClient *)self _deviceForPairingID:iDCopy error:&v24];
    v14 = v24;
    if (v13)
    {
      if ([v13 isReachable])
      {
        companionSyncConnectionManager = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
        v16 = [companionSyncConnectionManager connectionForDevice:v13];
        [v16 fetchProvisioningProfilesForApplicationWithBundleID:dCopy completion:completionCopy];
      }

      else
      {
        pairingID = [v13 pairingID];
        uUIDString = [pairingID UUIDString];
        clientName2 = [(ACXDeviceConnectionClient *)self clientName];
        v20 = sub_1000061DC("[ACXDeviceConnectionClient fetchProvisioningProfilesForApplicationWithBundleID:forDeviceWithPairingID:completion:]", 1014, @"ACXErrorDomain", 55, 0, 0, @"Ignoring request to fetch provisioning profiles for app %@ as the device with pairing ID %@ isn't reachable (requested by %@)", v19, dCopy);

        completionCopy[2](completionCopy, 0, v20);
        v14 = v20;
      }
    }

    else
    {
      completionCopy[2](completionCopy, 0, v14);
    }
  }
}

- (void)updatePreferencesForApplicationWithIdentifier:(id)identifier preferences:(id)preferences writingToPreferencesLocation:(unint64_t)location forDeviceWithPairingID:(id)d options:(unint64_t)options completion:(id)completion
{
  identifierCopy = identifier;
  preferencesCopy = preferences;
  dCopy = d;
  completionCopy = completion;
  v18 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient updatePreferencesForApplicationWithIdentifier:preferences:writingToPreferencesLocation:forDeviceWithPairingID:options:completion:]"];
  v19 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v18];

  if (v19)
  {
    goto LABEL_4;
  }

  v20 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.preferences.allow" forRequestType:@"update preferences"];
  if (v20)
  {
    v19 = v20;
LABEL_4:
    completionCopy[2](completionCopy, v19);
    goto LABEL_5;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    clientName = [(ACXDeviceConnectionClient *)self clientName];
    v29 = identifierCopy;
    MOLogWrite();
  }

  v31 = 0;
  v21 = [(ACXDeviceConnectionClient *)self _deviceForPairingID:dCopy error:&v31, clientName, v29];
  v19 = v31;
  if (v21)
  {
    if ([v21 isReachable])
    {
      companionSyncConnectionManager = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
      v23 = [companionSyncConnectionManager connectionForDevice:v21];
      [v23 updatePreferencesForApplicationWithIdentifier:identifierCopy preferences:preferencesCopy writingToPreferencesLocation:location options:options completion:completionCopy];
    }

    else
    {
      pairingID = [v21 pairingID];
      uUIDString = [pairingID UUIDString];
      clientName2 = [(ACXDeviceConnectionClient *)self clientName];
      v27 = sub_1000061DC("[ACXDeviceConnectionClient updatePreferencesForApplicationWithIdentifier:preferences:writingToPreferencesLocation:forDeviceWithPairingID:options:completion:]", 1048, @"ACXErrorDomain", 55, 0, 0, @"Ignoring request to update preferences for app %@ as the device with pairing ID %@ isn't reachable (requested by %@)", v26, identifierCopy);

      completionCopy[2](completionCopy, v27);
      v19 = v27;
    }
  }

  else
  {
    completionCopy[2](completionCopy, v19);
  }

LABEL_5:
}

- (void)setUpdatePendingForCompanionApp:(id)app completion:(id)completion
{
  appCopy = app;
  completionCopy = completion;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    clientName = [(ACXDeviceConnectionClient *)self clientName];
    v12 = appCopy;
    MOLogWrite();
  }

  v7 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient setUpdatePendingForCompanionApp:completion:]", clientName, v12];
  v8 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v7];

  if (v8)
  {
    completionCopy[2](completionCopy, v8);
  }

  else
  {
    v9 = +[ACXGizmoStateManager sharedStateManager];
    stateForActivePairedDevice = [v9 stateForActivePairedDevice];
    [stateForActivePairedDevice setUpdatePendingForCompanionApp:appCopy];

    completionCopy[2](completionCopy, 0);
  }
}

- (void)cancelUpdatePendingForCompanionApp:(id)app completion:(id)completion
{
  appCopy = app;
  completionCopy = completion;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    clientName = [(ACXDeviceConnectionClient *)self clientName];
    v12 = appCopy;
    MOLogWrite();
  }

  v7 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient cancelUpdatePendingForCompanionApp:completion:]", clientName, v12];
  v8 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v7];

  if (v8)
  {
    completionCopy[2](completionCopy, v8);
  }

  else
  {
    v9 = +[ACXGizmoStateManager sharedStateManager];
    stateForActivePairedDevice = [v9 stateForActivePairedDevice];
    [stateForActivePairedDevice cancelUpdatePendingForCompanionApp:appCopy];

    completionCopy[2](completionCopy, 0);
  }
}

- (void)applicationWillInstallAfterPairingOnDeviceWithPairingID:(id)d withBundleID:(id)iD completion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    clientName = [(ACXDeviceConnectionClient *)self clientName];
    v26 = iDCopy;
    MOLogWrite();
  }

  v11 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient applicationWillInstallAfterPairingOnDeviceWithPairingID:withBundleID:completion:]", clientName, v26];
  v12 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v11];

  if (!v12)
  {
    v13 = +[NSFileManager defaultManager];
    v14 = sub_10000831C();
    path = [v14 path];
    v16 = [v13 fileExistsAtPath:path];

    if (v16)
    {
      v17 = 0;
    }

    else
    {
      v28 = 0;
      v18 = [(ACXDeviceConnectionClient *)self _deviceForPairingID:dCopy error:&v28];
      v17 = v28;
      if (!v18)
      {
        completionCopy[2](completionCopy, 0, v17);
LABEL_14:

        goto LABEL_15;
      }
    }

    v19 = [NSSet setWithObjects:@"com.apple.NanoPassbook", @"com.apple.NanoHeartRhythm", @"com.apple.HeartRate", @"com.apple.NanoHealthBalance", 0];
    if ([v19 containsObject:iDCopy])
    {
      completionCopy[2](completionCopy, 1, 0);
    }

    else
    {
      uUIDString = [dCopy UUIDString];
      clientName2 = [(ACXDeviceConnectionClient *)self clientName];
      v24 = sub_100001B04("[ACXDeviceConnectionClient applicationWillInstallAfterPairingOnDeviceWithPairingID:withBundleID:completion:]", 1115, @"ACXErrorDomain", 1, @"Querying whether %@ will be installed after pairing is not supported for pairing ID %@ (requested by %@)", v21, v22, v23, iDCopy);

      completionCopy[2](completionCopy, 0, v24);
      v17 = v24;
    }

    goto LABEL_14;
  }

  completionCopy[2](completionCopy, 0, v12);
LABEL_15:
}

- (void)fetchLocallyAvailableWatchAppBundleIDsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    clientName = [(ACXDeviceConnectionClient *)self clientName];
    MOLogWrite();
  }

  v4 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient fetchLocallyAvailableWatchAppBundleIDsWithCompletion:]", clientName];
  v5 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v4];

  if (v5)
  {
    completionCopy[2]();
  }

  else
  {
    applicationManager = [(ACXDeviceConnectionClient *)self applicationManager];
    bundleIDsOfAvailableAppsExcludingSystemApps = [applicationManager bundleIDsOfAvailableAppsExcludingSystemApps];
    (completionCopy[2])(completionCopy, bundleIDsOfAvailableAppsExcludingSystemApps, 0);
  }
}

- (void)fetchInstalledWatchAppBundleIDsForDeviceWithPairingID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    clientName = [(ACXDeviceConnectionClient *)self clientName];
    MOLogWrite();
  }

  v8 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient fetchInstalledWatchAppBundleIDsForDeviceWithPairingID:completion:]", clientName];
  v9 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v8];

  if (v9)
  {
    completionCopy[2](completionCopy, 0, v9);
  }

  else
  {
    v22 = 0;
    v10 = [(ACXDeviceConnectionClient *)self _deviceForPairingID:dCopy error:&v22];
    v11 = v22;
    if (v10)
    {
      companionSyncConnectionManager = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
      v13 = [companionSyncConnectionManager connectionForDevice:v10];

      if ([v13 supportsRemoteAppList])
      {
        remoteAppList = [v13 remoteAppList];
        v21 = v11;
        gizmoState = [remoteAppList bundleIDsTrackedWithError:&v21];
        v16 = v21;

        if (gizmoState)
        {
          v17 = gizmoState;
          v18 = 0;
        }

        else
        {
          v17 = 0;
          v18 = v16;
        }

        (completionCopy)[2](completionCopy, v17, v18);
      }

      else
      {
        gizmoState = [v13 gizmoState];
        bundleIDsOfAllInstalledApps = [gizmoState bundleIDsOfAllInstalledApps];
        (completionCopy)[2](completionCopy, bundleIDsOfAllInstalledApps, 0);

        v16 = v11;
      }

      v11 = v16;
    }

    else
    {
      completionCopy[2](completionCopy, 0, v11);
    }
  }
}

- (BOOL)_setApplicationStatusForApp:(id)app forDeviceWithPairingID:(id)d options:(unint64_t)options error:(id *)error
{
  optionsCopy = options;
  appCopy = app;
  dCopy = d;
  v37 = 0;
  v12 = [(ACXDeviceConnectionClient *)self _deviceForPairingID:dCopy error:&v37];
  v13 = v37;
  if (!v12)
  {
    v14 = 0;
    if (!error)
    {
LABEL_19:
      v17 = 0;
      goto LABEL_20;
    }

LABEL_5:
    v16 = v13;
    v17 = 0;
    *error = v13;
    goto LABEL_20;
  }

  v14 = objc_alloc_init(ACXApplicationStatus);
  if ([appCopy isCompatibleWithDevice:v12])
  {
    v15 = 1;
  }

  else
  {
    if (optionsCopy)
    {
      bundleIdentifier = [appCopy bundleIdentifier];
      uUIDString = [dCopy UUIDString];
      clientName = [(ACXDeviceConnectionClient *)self clientName];
      sub_100001B04("[ACXDeviceConnectionClient _setApplicationStatusForApp:forDeviceWithPairingID:options:error:]", 1188, @"ACXErrorDomain", 38, @"%@ does not support this device with pairing ID %@ (requested by %@)", v28, v29, v30, bundleIdentifier);
      goto LABEL_18;
    }

    v15 = 2;
  }

  [v14 setArchitectureCompatibility:v15];
  osVersion = [v12 osVersion];
  v19 = [appCopy isCompatibleWithOSVersion:osVersion];

  if ((v19 & 1) == 0)
  {
    if ((optionsCopy & 1) == 0)
    {
      v20 = 1;
      goto LABEL_12;
    }

    bundleIdentifier = [appCopy bundleIdentifier];
    uUIDString = [dCopy UUIDString];
    clientName = [(ACXDeviceConnectionClient *)self clientName];
    sub_100001B04("[ACXDeviceConnectionClient _setApplicationStatusForApp:forDeviceWithPairingID:options:error:]", 1197, @"ACXErrorDomain", 37, @"%@ does not support this device with pairing ID %@ (requested by %@)", v32, v33, v34, bundleIdentifier);
    v35 = LABEL_18:;

    v13 = v35;
    if (!error)
    {
      goto LABEL_19;
    }

    goto LABEL_5;
  }

  v20 = 0;
LABEL_12:
  [v14 setWatchKitCompatibility:v20];
  v21 = +[ACXGizmoStateManager sharedStateManager];
  v22 = [v21 stateForDevice:v12];

  bundleIdentifier2 = [appCopy bundleIdentifier];
  v24 = [v22 appStateForApp:bundleIdentifier2];

  if (v24)
  {
    [v14 setInstallStatusWithGizmoStatus:{objc_msgSend(v24, "installStatus")}];
  }

  else
  {
    [v14 setInstallStatus:4];
  }

  uniqueInstallID = [v24 uniqueInstallID];
  [v14 setUniqueInstallID:uniqueInstallID];

  [appCopy setDeviceStatus:v14];
  v17 = 1;
LABEL_20:

  return v17;
}

- (void)fetchLocallyAvailableWatchAppWithBundleID:(id)d forDeviceWithPairingID:(id)iD options:(unint64_t)options completion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
  {
    clientName = [(ACXDeviceConnectionClient *)self clientName];
    v26 = dCopy;
    MOLogWrite();
  }

  v13 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient fetchLocallyAvailableWatchAppWithBundleID:forDeviceWithPairingID:options:completion:]", clientName, v26];
  v14 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v13];

  if (!v14)
  {
    applicationManager = [(ACXDeviceConnectionClient *)self applicationManager];
    v16 = [applicationManager gizmoAppWithBundleID:dCopy];

    if (v16)
    {
      if (![v16 isSystemApp])
      {
        if (iDCopy)
        {
          v27 = 0;
          v22 = [(ACXDeviceConnectionClient *)self _setApplicationStatusForApp:v16 forDeviceWithPairingID:iDCopy options:options error:&v27];
          v23 = v27;
          v24 = v23;
          if ((v22 & 1) == 0)
          {
            completionCopy[2](completionCopy, 0, v23);

            goto LABEL_16;
          }
        }

        (completionCopy)[2](completionCopy, v16, 0);
LABEL_16:

        goto LABEL_17;
      }

      uUIDString = [iDCopy UUIDString];
      clientName2 = [(ACXDeviceConnectionClient *)self clientName];
      sub_1000061DC("[ACXDeviceConnectionClient fetchLocallyAvailableWatchAppWithBundleID:forDeviceWithPairingID:options:completion:]", 1242, @"ACXErrorDomain", 19, 0, 0, @"No gizmo app found with bundle ID %@ (deletable system apps are not returned from this SPI) on device with pairing ID %@ (requested by %@)", v19, dCopy);
    }

    else
    {
      uUIDString = [iDCopy UUIDString];
      clientName2 = [(ACXDeviceConnectionClient *)self clientName];
      sub_1000061DC("[ACXDeviceConnectionClient fetchLocallyAvailableWatchAppWithBundleID:forDeviceWithPairingID:options:completion:]", 1236, @"ACXErrorDomain", 19, 0, 0, @"No gizmo app found with bundle ID %@ on device with pairing ID %@ (requested by %@)", v20, dCopy);
    }
    v21 = ;

    completionCopy[2](completionCopy, 0, v21);
    goto LABEL_16;
  }

  completionCopy[2](completionCopy, 0, v14);
LABEL_17:
}

- (void)fetchInstalledWatchAppWithBundleID:(id)d forDeviceWithPairingID:(id)iD completion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
  {
    clientName = [(ACXDeviceConnectionClient *)self clientName];
    v29 = dCopy;
    MOLogWrite();
  }

  v11 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient fetchInstalledWatchAppWithBundleID:forDeviceWithPairingID:completion:]", clientName, v29];
  v12 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v11];

  if (!v12)
  {
    v34 = 0;
    v13 = [(ACXDeviceConnectionClient *)self _deviceForPairingID:iDCopy error:&v34];
    v14 = v34;
    if (!v13)
    {
      completionCopy[2](completionCopy, 0, v14);
LABEL_21:

      goto LABEL_22;
    }

    v15 = +[ACXCompanionSyncConnectionManager sharedConnectionManager];
    v16 = [v15 connectionForDevice:v13];

    if ([v16 supportsRemoteAppList])
    {
      v31 = v16;
      remoteAppList = [v16 remoteAppList];
      v33 = v14;
      v18 = [remoteAppList applicationForBundleID:dCopy error:&v33];
      v19 = v33;

      if (v18)
      {
        v14 = v19;
        v16 = v31;
LABEL_13:
        if ([v18 applicationMode] != 3)
        {
          applicationManager = [(ACXDeviceConnectionClient *)self applicationManager];
          [v18 bundleIdentifier];
          v24 = v32 = v16;
          v25 = [applicationManager gizmoAppIsLocallyAvailableWithBundleID:v24];

          v16 = v32;
          if (v25)
          {
            [v18 setIsLocallyAvailable:1];
          }
        }

        (completionCopy)[2](completionCopy, v18, 0);

        goto LABEL_20;
      }

      v16 = v31;
    }

    else
    {
      gizmoState = [v16 gizmoState];
      v21 = [gizmoState installStatusForApp:dCopy];

      if (v21 == 2)
      {
        applicationManager2 = [(ACXDeviceConnectionClient *)self applicationManager];
        v18 = [applicationManager2 gizmoAppWithBundleID:dCopy];

        if (v18)
        {
          goto LABEL_13;
        }
      }

      uUIDString = [iDCopy UUIDString];
      clientName2 = [(ACXDeviceConnectionClient *)self clientName];
      v19 = sub_1000061DC("[ACXDeviceConnectionClient fetchInstalledWatchAppWithBundleID:forDeviceWithPairingID:completion:]", 1287, @"ACXErrorDomain", 19, 0, 0, @"Failed to get locally available application for watch app bundleID: %@ on device with pairing ID %@ (requested by %@)", v27, dCopy);
    }

    completionCopy[2](completionCopy, 0, v19);
    v14 = v19;
LABEL_20:

    goto LABEL_21;
  }

  completionCopy[2](completionCopy, 0, v12);
LABEL_22:
}

- (void)fetchLocallyAvailableApplicationWithContainingApplicationBundleID:(id)d forDeviceWithPairingID:(id)iD completion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
  {
    clientName = [(ACXDeviceConnectionClient *)self clientName];
    v24 = dCopy;
    MOLogWrite();
  }

  v11 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient fetchLocallyAvailableApplicationWithContainingApplicationBundleID:forDeviceWithPairingID:completion:]", clientName, v24];
  v12 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v11];

  if (!v12)
  {
    applicationManager = [(ACXDeviceConnectionClient *)self applicationManager];
    v14 = [applicationManager gizmoAppForCompanionAppBundleID:dCopy];

    if (v14)
    {
      if (![v14 isSystemApp])
      {
        if (iDCopy)
        {
          v25 = 0;
          v20 = [(ACXDeviceConnectionClient *)self _setApplicationStatusForApp:v14 forDeviceWithPairingID:iDCopy options:0 error:&v25];
          v21 = v25;
          v22 = v21;
          if ((v20 & 1) == 0)
          {
            completionCopy[2](completionCopy, 0, v21);

            goto LABEL_16;
          }
        }

        (completionCopy)[2](completionCopy, v14, 0);
LABEL_16:

        goto LABEL_17;
      }

      uUIDString = [iDCopy UUIDString];
      clientName2 = [(ACXDeviceConnectionClient *)self clientName];
      sub_1000061DC("[ACXDeviceConnectionClient fetchLocallyAvailableApplicationWithContainingApplicationBundleID:forDeviceWithPairingID:completion:]", 1321, @"ACXErrorDomain", 19, 0, 0, @"No gizmo app found with companion bundle ID %@ (deletable system apps are not returned from this SPI) for device with pairing ID %@ (requested by %@)", v17, dCopy);
    }

    else
    {
      uUIDString = [iDCopy UUIDString];
      clientName2 = [(ACXDeviceConnectionClient *)self clientName];
      sub_1000061DC("[ACXDeviceConnectionClient fetchLocallyAvailableApplicationWithContainingApplicationBundleID:forDeviceWithPairingID:completion:]", 1315, @"ACXErrorDomain", 19, 0, 0, @"No companion app found with bundle ID %@ for device with pairing ID %@ (requested by %@)", v18, dCopy);
    }
    v19 = ;

    completionCopy[2](completionCopy, 0, v19);
    goto LABEL_16;
  }

  completionCopy[2](completionCopy, 0, v12);
LABEL_17:
}

- (BOOL)_applicationIsInstalledOnDevice:(id)device withBundleID:(id)d error:(id *)error
{
  dCopy = d;
  deviceCopy = device;
  companionSyncConnectionManager = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
  v11 = [companionSyncConnectionManager connectionForDevice:deviceCopy];

  if ([v11 supportsRemoteAppList])
  {
    remoteAppList = [v11 remoteAppList];
    v13 = [remoteAppList applicationIsInstalledWithBundleID:dCopy error:error];
  }

  else
  {
    gizmoState = [v11 gizmoState];
    remoteAppList = [gizmoState appStateForApp:dCopy];

    v13 = [remoteAppList installStatus] == 2;
  }

  return v13;
}

- (BOOL)_applicationIsInstalledOnDevice:(id)device withCompanionBundleID:(id)d error:(id *)error
{
  dCopy = d;
  deviceCopy = device;
  companionSyncConnectionManager = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
  v11 = [companionSyncConnectionManager connectionForDevice:deviceCopy];

  if ([v11 supportsRemoteAppList])
  {
    remoteAppList = [v11 remoteAppList];
    v13 = [remoteAppList applicationIsInstalledWithCounterpartBundleID:dCopy error:error];
  }

  else
  {
    applicationManager = [(ACXDeviceConnectionClient *)self applicationManager];
    remoteAppList = [applicationManager gizmoAppBundleIDForCompanionAppBundleID:dCopy];

    if (!remoteAppList)
    {
      v13 = 0;
      goto LABEL_6;
    }

    gizmoState = [v11 gizmoState];
    dCopy = [gizmoState appStateForApp:remoteAppList];

    v13 = [dCopy installStatus] == 2;
  }

LABEL_6:
  return v13;
}

- (void)applicationIsInstalledOnDeviceWithPairingID:(id)d withBundleID:(id)iD completion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    clientName = [(ACXDeviceConnectionClient *)self clientName];
    v25 = iDCopy;
    MOLogWrite();
  }

  v11 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient applicationIsInstalledOnDeviceWithPairingID:withBundleID:completion:]", clientName, v25];
  v12 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v11];

  if (!v12)
  {
    v27 = 0;
    v13 = [(ACXDeviceConnectionClient *)self _deviceForPairingID:dCopy error:&v27];
    v14 = v27;
    v15 = v14;
    if (!v13)
    {
      completionCopy[2](completionCopy, 0, v14);
      v17 = v15;
LABEL_18:

      goto LABEL_19;
    }

    v26 = v14;
    v16 = [(ACXDeviceConnectionClient *)self _applicationIsInstalledOnDevice:v13 withBundleID:iDCopy error:&v26];
    v17 = v26;

    if (v16)
    {
      v18 = completionCopy[2];
      v19 = completionCopy;
      v20 = 1;
LABEL_14:
      v23 = 0;
LABEL_17:
      v18(v19, v20, v23);
      goto LABEL_18;
    }

    if (v17)
    {
      domain = [v17 domain];
      if ([domain isEqualToString:@"ACXErrorDomain"])
      {
        code = [v17 code];

        if (code == 19)
        {
          goto LABEL_13;
        }
      }

      else
      {
      }

      v18 = completionCopy[2];
      v19 = completionCopy;
      v20 = 0;
      v23 = v17;
      goto LABEL_17;
    }

LABEL_13:
    v18 = completionCopy[2];
    v19 = completionCopy;
    v20 = 0;
    goto LABEL_14;
  }

  completionCopy[2](completionCopy, 0, v12);
LABEL_19:
}

- (void)applicationIsInstalledOnDeviceWithPairingID:(id)d withCompanionBundleID:(id)iD completion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    clientName = [(ACXDeviceConnectionClient *)self clientName];
    v25 = iDCopy;
    MOLogWrite();
  }

  v11 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient applicationIsInstalledOnDeviceWithPairingID:withCompanionBundleID:completion:]", clientName, v25];
  v12 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v11];

  if (!v12)
  {
    v27 = 0;
    v13 = [(ACXDeviceConnectionClient *)self _deviceForPairingID:dCopy error:&v27];
    v14 = v27;
    v15 = v14;
    if (!v13)
    {
      completionCopy[2](completionCopy, 0, v14);
      v17 = v15;
LABEL_18:

      goto LABEL_19;
    }

    v26 = v14;
    v16 = [(ACXDeviceConnectionClient *)self _applicationIsInstalledOnDevice:v13 withCompanionBundleID:iDCopy error:&v26];
    v17 = v26;

    if (v16)
    {
      v18 = completionCopy[2];
      v19 = completionCopy;
      v20 = 1;
LABEL_14:
      v23 = 0;
LABEL_17:
      v18(v19, v20, v23);
      goto LABEL_18;
    }

    if (v17)
    {
      domain = [v17 domain];
      if ([domain isEqualToString:@"ACXErrorDomain"])
      {
        code = [v17 code];

        if (code == 19)
        {
          goto LABEL_13;
        }
      }

      else
      {
      }

      v18 = completionCopy[2];
      v19 = completionCopy;
      v20 = 0;
      v23 = v17;
      goto LABEL_17;
    }

LABEL_13:
    v18 = completionCopy[2];
    v19 = completionCopy;
    v20 = 0;
    goto LABEL_14;
  }

  completionCopy[2](completionCopy, 0, v12);
LABEL_19:
}

- (void)applicationIsInstalledOnAnyPairedDeviceWithBundleID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    clientName = [(ACXDeviceConnectionClient *)self clientName];
    v18 = dCopy;
    MOLogWrite();
  }

  v8 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient applicationIsInstalledOnAnyPairedDeviceWithBundleID:completion:]", clientName, v18];
  v9 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v8];

  if (v9)
  {
    completionCopy[2](completionCopy, 0, v9);
  }

  else
  {
    deviceManager = [(ACXDeviceConnectionClient *)self deviceManager];
    allDevices = [deviceManager allDevices];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = allDevices;
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      while (2)
      {
        v16 = 0;
        do
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          if ([(ACXDeviceConnectionClient *)self _applicationIsInstalledOnDevice:*(*(&v19 + 1) + 8 * v16) withBundleID:dCopy error:0])
          {
            completionCopy[2](completionCopy, 1, 0);

            goto LABEL_16;
          }

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    completionCopy[2](completionCopy, 0, 0);
LABEL_16:
  }
}

- (void)applicationIsInstalledOnAnyPairedDeviceWithCompanionBundleID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    clientName = [(ACXDeviceConnectionClient *)self clientName];
    v18 = dCopy;
    MOLogWrite();
  }

  v8 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient applicationIsInstalledOnAnyPairedDeviceWithCompanionBundleID:completion:]", clientName, v18];
  v9 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v8];

  if (v9)
  {
    completionCopy[2](completionCopy, 0, v9);
  }

  else
  {
    deviceManager = [(ACXDeviceConnectionClient *)self deviceManager];
    allDevices = [deviceManager allDevices];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = allDevices;
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      while (2)
      {
        v16 = 0;
        do
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          if ([(ACXDeviceConnectionClient *)self _applicationIsInstalledOnDevice:*(*(&v19 + 1) + 8 * v16) withCompanionBundleID:dCopy error:0])
          {
            completionCopy[2](completionCopy, 1, 0);

            goto LABEL_16;
          }

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    completionCopy[2](completionCopy, 0, 0);
LABEL_16:
  }
}

- (void)fetchApplicationDatabaseSyncInformationForDeviceWithPairingID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    clientName = [(ACXDeviceConnectionClient *)self clientName];
    v20 = dCopy;
    MOLogWrite();
  }

  v8 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient fetchApplicationDatabaseSyncInformationForDeviceWithPairingID:completion:]", clientName, v20];
  v9 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v8];

  if (v9)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, v9);
  }

  else
  {
    v24 = 0;
    v10 = [(ACXDeviceConnectionClient *)self _deviceForPairingID:dCopy error:&v24];
    v11 = v24;
    if (v10)
    {
      companionSyncConnectionManager = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
      v13 = [companionSyncConnectionManager connectionForDevice:v10];

      if ([v13 supportsRemoteAppList])
      {
        v23 = 0;
        remoteAppList = [v13 remoteAppList];
        v22 = 0;
        [remoteAppList getCurrentDBUUID:&v22 sequenceNumber:&v23];
        v15 = v22;

        (*(completionCopy + 2))(completionCopy, v15, v23, 0);
      }

      else
      {
        uUIDString = [dCopy UUIDString];
        clientName2 = [(ACXDeviceConnectionClient *)self clientName];
        v18 = sub_1000061DC("[ACXDeviceConnectionClient fetchApplicationDatabaseSyncInformationForDeviceWithPairingID:completion:]", 1493, @"ACXErrorDomain", 44, 0, 0, @"Remote app queries are not supported for device with pairing ID %@ (requested by %@)", v17, uUIDString);

        (*(completionCopy + 2))(completionCopy, 0, 0, v18);
        v11 = v18;
      }
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0, 0, v11);
    }
  }
}

- (void)fetchLocalizedValuesFromAllDevicesForInfoPlistKeys:(id)keys forAppWithBundleID:(id)d fetchingFirstMatchingLocalizationInList:(id)list completion:(id)completion
{
  keysCopy = keys;
  dCopy = d;
  listCopy = list;
  completionCopy = completion;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    [(ACXDeviceConnectionClient *)self clientName];
    v35 = keysCopy;
    v32 = v36 = listCopy;
    v33 = dCopy;
    MOLogWrite();
  }

  v11 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient fetchLocalizedValuesFromAllDevicesForInfoPlistKeys:forAppWithBundleID:fetchingFirstMatchingLocalizationInList:completion:]", v32, v33, v35, v36];
  v12 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v11];

  if (v12)
  {
    completionCopy[2](completionCopy, 0, v12);
  }

  else
  {
    v37 = completionCopy;
    v38 = objc_opt_new();
    deviceManager = [(ACXDeviceConnectionClient *)self deviceManager];
    allDevices = [deviceManager allDevices];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = allDevices;
    v15 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v45;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v45 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v44 + 1) + 8 * i);
          v20 = objc_autoreleasePoolPush();
          companionSyncConnectionManager = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
          v22 = [companionSyncConnectionManager connectionForDevice:v19];

          if ([v22 supportsRemoteAppList])
          {
            pairingID = [v19 pairingID];
            remoteAppList = [v22 remoteAppList];
            v43 = 0;
            v25 = [remoteAppList applicationForBundleID:dCopy error:&v43];
            v26 = v43;

            if (v25)
            {
              v27 = [v25 localizedInfoPlistStringsForKeys:keysCopy fetchingFirstMatchingLocalizationInList:listCopy];
              if ([v27 count])
              {
                [v38 setObject:v27 forKeyedSubscript:pairingID];
              }
            }

            else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
            {
              MOLogWrite();
            }
          }

          objc_autoreleasePoolPop(v20);
        }

        v16 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v16);
    }

    completionCopy = v37;
    if ([v38 count])
    {
      (v37)[2](v37, v38, 0);
    }

    else
    {
      clientName = [(ACXDeviceConnectionClient *)self clientName];
      v31 = sub_100001B04("[ACXDeviceConnectionClient fetchLocalizedValuesFromAllDevicesForInfoPlistKeys:forAppWithBundleID:fetchingFirstMatchingLocalizationInList:completion:]", 1545, @"ACXErrorDomain", 19, @"No app was found on any device with the bundle ID %@, or the keys requested were not set in any instance of the app. (requested by %@)", v28, v29, v30, dCopy);
      v37[2](v37, 0, v31);
    }

    v12 = 0;
  }
}

- (void)fetchInstallableSystemAppBundleIDsForDeviceWithPairingID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    clientName = [(ACXDeviceConnectionClient *)self clientName];
    v20 = dCopy;
    MOLogWrite();
  }

  v8 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient fetchInstallableSystemAppBundleIDsForDeviceWithPairingID:completion:]", clientName, v20];
  v9 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v8];

  if (v9)
  {
    completionCopy[2](completionCopy, 0, v9);
  }

  else
  {
    v22 = 0;
    v10 = [(ACXDeviceConnectionClient *)self _deviceForPairingID:dCopy error:&v22];
    v11 = v22;
    if (v10)
    {
      companionSyncConnectionManager = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
      v13 = [companionSyncConnectionManager connectionForDevice:v10];

      availableSystemAppList = [v13 availableSystemAppList];
      v15 = availableSystemAppList;
      if (availableSystemAppList)
      {
        bundleIDsOfInstallableSystemApps = [availableSystemAppList bundleIDsOfInstallableSystemApps];
        allObjects = [bundleIDsOfInstallableSystemApps allObjects];
        (completionCopy)[2](completionCopy, allObjects, 0);
      }

      else
      {
        bundleIDsOfInstallableSystemApps = [(ACXDeviceConnectionClient *)self applicationManager];
        allObjects = [bundleIDsOfInstallableSystemApps bundleIDsOfLocallyAvailableSystemAppsForPreWatchOSSix];
        [allObjects allObjects];
        v18 = v21 = v11;
        (completionCopy)[2](completionCopy, v18, 0);

        v11 = v21;
      }
    }

    else
    {
      completionCopy[2](completionCopy, 0, v11);
    }
  }
}

- (void)fetchInstallableSystemAppWithBundleID:(id)d forDeviceWithPairingID:(id)iD completion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    [(ACXDeviceConnectionClient *)self clientName];
    v21 = dCopy;
    v20 = v22 = iDCopy;
    MOLogWrite();
  }

  v11 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient fetchInstallableSystemAppWithBundleID:forDeviceWithPairingID:completion:]", v20, v21, v22];
  v12 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v11];

  if (v12)
  {
    completionCopy[2](completionCopy, 0, v12);
  }

  else
  {
    v25 = 0;
    v13 = [(ACXDeviceConnectionClient *)self _deviceForPairingID:iDCopy error:&v25];
    v14 = v25;
    if (v13)
    {
      companionSyncConnectionManager = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
      v16 = [companionSyncConnectionManager connectionForDevice:v13];

      availableSystemAppList = [v16 availableSystemAppList];

      if (availableSystemAppList)
      {
        v24 = 0;
        v18 = [availableSystemAppList installableSystemAppWithBundleID:dCopy error:&v24];
        v14 = v24;
      }

      else
      {
        applicationManager = [(ACXDeviceConnectionClient *)self applicationManager];
        v23 = 0;
        v18 = [applicationManager availableSystemAppWithBundleID:dCopy error:&v23];
        v14 = v23;
      }

      (completionCopy)[2](completionCopy, v18, v14);
    }

    else
    {
      completionCopy[2](completionCopy, 0, v14);
    }
  }
}

- (void)systemAppIsInstallableOnDeviceWithPairingID:(id)d withBundleID:(id)iD completion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    [(ACXDeviceConnectionClient *)self clientName];
    v22 = iDCopy;
    v21 = v23 = dCopy;
    MOLogWrite();
  }

  v11 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient systemAppIsInstallableOnDeviceWithPairingID:withBundleID:completion:]", v21, v22, v23];
  v12 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v11];

  if (v12)
  {
    completionCopy[2](completionCopy, 0, v12);
  }

  else
  {
    v26 = 0;
    v13 = [(ACXDeviceConnectionClient *)self _deviceForPairingID:dCopy error:&v26];
    v14 = v26;
    if (v13)
    {
      companionSyncConnectionManager = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
      v16 = [companionSyncConnectionManager connectionForDevice:v13];

      availableSystemAppList = [v16 availableSystemAppList];

      if (availableSystemAppList)
      {
        v25 = 0;
        v18 = [availableSystemAppList systemAppIsInstallableWithBundleID:iDCopy error:&v25];
        v14 = v25;
        (completionCopy)[2](completionCopy, v18, v14);
      }

      else
      {
        applicationManager = [(ACXDeviceConnectionClient *)self applicationManager];
        v24 = 0;
        v20 = [applicationManager systemAppIsAvailableWithBundleID:iDCopy error:&v24];
        v14 = v24;

        (completionCopy)[2](completionCopy, v20, v14);
      }
    }

    else
    {
      completionCopy[2](completionCopy, 0, v14);
    }
  }
}

- (void)acknowledgeTestFlightInstallBegunForApp:(id)app forDeviceWithPairingID:(id)d completion:(id)completion
{
  appCopy = app;
  dCopy = d;
  completionCopy = completion;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    [(ACXDeviceConnectionClient *)self clientName];
    v21 = appCopy;
    v20 = v22 = dCopy;
    MOLogWrite();
  }

  v11 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient acknowledgeTestFlightInstallBegunForApp:forDeviceWithPairingID:completion:]", v20, v21, v22];
  v12 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v11];

  if (v12)
  {
    completionCopy[2](completionCopy, v12);
  }

  else
  {
    v24 = 0;
    v13 = [(ACXDeviceConnectionClient *)self _deviceForPairingID:dCopy error:&v24];
    v14 = v24;
    if (v13)
    {
      if ([v13 isReachable])
      {
        companionSyncConnectionManager = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
        v16 = [companionSyncConnectionManager connectionForDevice:v13];

        [v16 acknowledgeTestFlightInstallBegunForWatchApp:appCopy];
        completionCopy[2](completionCopy, 0);
      }

      else
      {
        uUIDString = [dCopy UUIDString];
        clientName = [(ACXDeviceConnectionClient *)self clientName];
        v19 = sub_1000061DC("[ACXDeviceConnectionClient acknowledgeTestFlightInstallBegunForApp:forDeviceWithPairingID:completion:]", 1696, @"ACXErrorDomain", 55, 0, 0, @"Ignoring request to send message to gizmo about test flight install begun for app %@ as the device with pairing ID %@ isn't reachable (requested by %@)", v18, appCopy);

        completionCopy[2](completionCopy, v19);
        v14 = v19;
      }
    }

    else
    {
      completionCopy[2](completionCopy, v14);
    }
  }
}

- (void)applicationRemovabilityOnDeviceWithPairingID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    clientName = [(ACXDeviceConnectionClient *)self clientName];
    v16 = dCopy;
    MOLogWrite();
  }

  v8 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient applicationRemovabilityOnDeviceWithPairingID:completion:]", clientName, v16];
  v9 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v8];

  if (v9)
  {
    completionCopy[2](completionCopy, 0, v9);
  }

  else
  {
    v17 = 0;
    v10 = [(ACXDeviceConnectionClient *)self _deviceForPairingID:dCopy error:&v17];
    v11 = v17;
    if (v10)
    {
      companionSyncConnectionManager = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
      v13 = [companionSyncConnectionManager connectionForDevice:v10];

      removabilityForRemoteApps = [v13 removabilityForRemoteApps];
      (completionCopy)[2](completionCopy, removabilityForRemoteApps, 0);
    }

    else
    {
      completionCopy[2](completionCopy, 0, v11);
    }
  }
}

- (void)killDaemonForTesting:(id)testing
{
  testingCopy = testing;
  v4 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient killDaemonForTesting:]"];
  v5 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v4];

  if (!v5)
  {
    v6 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companion.AppConduitTestRunner" forRequestType:@"kill daemon for testing"];
    if (!v6)
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
      {
        clientName = [(ACXDeviceConnectionClient *)self clientName];
        MOLogWrite();
      }

      exit(0);
    }

    v5 = v6;
  }

  testingCopy[2](testingCopy, v5);
}

- (void)fetchDuplicatedClassInfo:(id)info
{
  infoCopy = info;
  v4 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient fetchDuplicatedClassInfo:]"];
  v5 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v4];

  if (v5)
  {
    infoCopy[2](infoCopy, 0, v5);
  }

  else
  {
    v5 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companion.AppConduitTestRunner" forRequestType:@"fetch duplicated class info"];
    if (!v5)
    {
      v5 = sub_100008448(0);
    }

    (infoCopy[2])();
  }
}

@end