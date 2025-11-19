@interface ACXDeviceConnectionClient
+ (void)configureService;
+ (void)messageAllObserversForApplicationDatabaseResyncedForDeviceWithPairingID:(id)a3;
+ (void)messageAllObserversForApplicationsInstalled:(id)a3 onDeviceWithPairingID:(id)a4;
+ (void)messageAllObserversForApplicationsRemovabilityChanged:(id)a3 onDeviceWithPairingID:(id)a4;
+ (void)messageAllObserversForApplicationsUninstalled:(id)a3 onDeviceWithPairingID:(id)a4;
+ (void)messageAllObserversForApplicationsUpdated:(id)a3 onDeviceWithPairingID:(id)a4;
+ (void)messageAllObserversWithInstallProgressForApplication:(id)a3 progress:(double)a4 phase:(unint64_t)a5;
+ (void)messageAllObserversWithInstallStateUpdate:(id)a3;
- (ACXDeviceConnectionClient)init;
- (ACXDeviceConnectionClient)initWithDeviceManager:(id)a3 companionSyncConnectionManager:(id)a4 applicationManager:(id)a5;
- (BOOL)_applicationIsInstalledOnDevice:(id)a3 withBundleID:(id)a4 error:(id *)a5;
- (BOOL)_applicationIsInstalledOnDevice:(id)a3 withCompanionBundleID:(id)a4 error:(id *)a5;
- (BOOL)_setApplicationStatusForApp:(id)a3 forDeviceWithPairingID:(id)a4 options:(unint64_t)a5 error:(id *)a6;
- (NSString)clientName;
- (NSString)clientSigningIdentifier;
- (NSString)description;
- (NSXPCConnection)xpcConnection;
- (id)_deviceForPairingID:(id)a3 error:(id *)a4;
- (id)_gizmoStateForDeviceWithPairingID:(id)a3 error:(id *)a4;
- (id)_hasEntitlement:(id)a3 forRequestType:(id)a4;
- (void)acknowledgeTestFlightInstallBegunForApp:(id)a3 forDeviceWithPairingID:(id)a4 completion:(id)a5;
- (void)activeComplicationsForDeviceWithPairingID:(id)a3 completion:(id)a4;
- (void)applicationIsInstalledOnAnyPairedDeviceWithBundleID:(id)a3 completion:(id)a4;
- (void)applicationIsInstalledOnAnyPairedDeviceWithCompanionBundleID:(id)a3 completion:(id)a4;
- (void)applicationIsInstalledOnDeviceWithPairingID:(id)a3 withBundleID:(id)a4 completion:(id)a5;
- (void)applicationIsInstalledOnDeviceWithPairingID:(id)a3 withCompanionBundleID:(id)a4 completion:(id)a5;
- (void)applicationRemovabilityOnDeviceWithPairingID:(id)a3 completion:(id)a4;
- (void)applicationWillInstallAfterPairingOnDeviceWithPairingID:(id)a3 withBundleID:(id)a4 completion:(id)a5;
- (void)cancelPendingInstallations;
- (void)cancelUpdatePendingForCompanionApp:(id)a3 completion:(id)a4;
- (void)disableObservers;
- (void)enableObservers;
- (void)fetchApplicationDatabaseSyncInformationForDeviceWithPairingID:(id)a3 completion:(id)a4;
- (void)fetchApplicationWithContainingApplicationBundleID:(id)a3 completion:(id)a4;
- (void)fetchDuplicatedClassInfo:(id)a3;
- (void)fetchInfoForApplicationWithBundleID:(id)a3 forDeviceWithPairingID:(id)a4 completion:(id)a5;
- (void)fetchInstallableSystemAppBundleIDsForDeviceWithPairingID:(id)a3 completion:(id)a4;
- (void)fetchInstallableSystemAppWithBundleID:(id)a3 forDeviceWithPairingID:(id)a4 completion:(id)a5;
- (void)fetchInstalledApplicationsForDeviceWithPairingID:(id)a3 completion:(id)a4;
- (void)fetchInstalledCompatibleApplicationsForDeviceWithPairingID:(id)a3 completion:(id)a4;
- (void)fetchInstalledComplicationsForDeviceWithPairingID:(id)a3 completion:(id)a4;
- (void)fetchInstalledWatchAppBundleIDsForDeviceWithPairingID:(id)a3 completion:(id)a4;
- (void)fetchInstalledWatchAppWithBundleID:(id)a3 forDeviceWithPairingID:(id)a4 completion:(id)a5;
- (void)fetchLocalizedValuesFromAllDevicesForInfoPlistKeys:(id)a3 forAppWithBundleID:(id)a4 fetchingFirstMatchingLocalizationInList:(id)a5 completion:(id)a6;
- (void)fetchLocallyAvailableApplicationWithContainingApplicationBundleID:(id)a3 forDeviceWithPairingID:(id)a4 completion:(id)a5;
- (void)fetchLocallyAvailableWatchAppBundleIDsWithCompletion:(id)a3;
- (void)fetchLocallyAvailableWatchAppWithBundleID:(id)a3 forDeviceWithPairingID:(id)a4 options:(unint64_t)a5 completion:(id)a6;
- (void)fetchProvisioningProfilesForApplicationWithBundleID:(id)a3 forDeviceWithPairingID:(id)a4 completion:(id)a5;
- (void)fetchProvisioningProfilesForDeviceWithPairingID:(id)a3 completion:(id)a4;
- (void)fetchWatchAppBundleIDForCompanionAppBundleID:(id)a3 completion:(id)a4;
- (void)fetchWatchAppBundleURLWithinCompanionAppWithWatchAppIdentifier:(id)a3 completion:(id)a4;
- (void)getAlwaysInstallForDeviceWithPairingID:(id)a3 completion:(id)a4;
- (void)installAllApplications;
- (void)installApplication:(id)a3 withProvisioningProfileInfo:(id)a4 forTestFlight:(BOOL)a5 onDeviceWithPairingID:(id)a6 completion:(id)a7;
- (void)installApplicationAtURL:(id)a3 onDeviceWithPairingID:(id)a4 installOptions:(id)a5 size:(int64_t)a6 completion:(id)a7;
- (void)installProvisioningProfileWithData:(id)a3 onDeviceWithPairingID:(id)a4 completion:(id)a5;
- (void)killDaemonForTesting:(id)a3;
- (void)removeApplication:(id)a3 fromDeviceWithPairingID:(id)a4 completion:(id)a5;
- (void)removeProvisioningProfileWithID:(id)a3 fromDeviceWithPairingID:(id)a4 completion:(id)a5;
- (void)retryPendingAppInstallationsOnDeviceWithPairingID:(id)a3;
- (void)setUpdatePendingForCompanionApp:(id)a3 completion:(id)a4;
- (void)systemAppIsInstallableOnDeviceWithPairingID:(id)a3 withBundleID:(id)a4 completion:(id)a5;
- (void)updatePreferencesForApplicationWithIdentifier:(id)a3 preferences:(id)a4 writingToPreferencesLocation:(unint64_t)a5 forDeviceWithPairingID:(id)a6 options:(unint64_t)a7 completion:(id)a8;
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
    v4 = [WeakRetained processIdentifier];
    v5 = sub_100001A28();
    v6 = [NSString stringWithFormat:@"%@ (pid %d)", v5, v4];
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

- (ACXDeviceConnectionClient)initWithDeviceManager:(id)a3 companionSyncConnectionManager:(id)a4 applicationManager:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = ACXDeviceConnectionClient;
  v11 = [(ACXDeviceConnectionClient *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(ACXDeviceConnectionClient *)v11 setDeviceManager:v8];
    [(ACXDeviceConnectionClient *)v12 setCompanionSyncConnectionManager:v9];
    [(ACXDeviceConnectionClient *)v12 setApplicationManager:v10];
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

+ (void)messageAllObserversWithInstallStateUpdate:(id)a3
{
  v3 = a3;
  v4 = qword_1000A4860;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100050398;
  v6[3] = &unk_10008CD40;
  v7 = v3;
  v5 = v3;
  sub_100005828(v4, v6);
}

+ (void)messageAllObserversWithInstallProgressForApplication:(id)a3 progress:(double)a4 phase:(unint64_t)a5
{
  v7 = a3;
  v8 = qword_1000A4860;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100050694;
  v10[3] = &unk_10008D080;
  v11 = v7;
  v12 = a4;
  v13 = a5;
  v9 = v7;
  sub_100005828(v8, v10);
}

+ (void)messageAllObserversForApplicationsInstalled:(id)a3 onDeviceWithPairingID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = qword_1000A4860;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000509B8;
  v10[3] = &unk_10008CC38;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  sub_100005828(v7, v10);
}

+ (void)messageAllObserversForApplicationsUpdated:(id)a3 onDeviceWithPairingID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = qword_1000A4860;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100050CD0;
  v10[3] = &unk_10008CC38;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  sub_100005828(v7, v10);
}

+ (void)messageAllObserversForApplicationsUninstalled:(id)a3 onDeviceWithPairingID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = qword_1000A4860;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100050FE8;
  v10[3] = &unk_10008CC38;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  sub_100005828(v7, v10);
}

+ (void)messageAllObserversForApplicationDatabaseResyncedForDeviceWithPairingID:(id)a3
{
  v3 = a3;
  v4 = qword_1000A4860;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000512D8;
  v6[3] = &unk_10008CD40;
  v7 = v3;
  v5 = v3;
  sub_100005828(v4, v6);
}

+ (void)messageAllObserversForApplicationsRemovabilityChanged:(id)a3 onDeviceWithPairingID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = qword_1000A4860;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000515E4;
  v10[3] = &unk_10008CC38;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  sub_100005828(v7, v10);
}

- (NSString)clientSigningIdentifier
{
  v3 = [(ACXDeviceConnectionClient *)self xpcConnection];
  v4 = v3;
  if (v3)
  {
    [v3 auditToken];
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
        v8 = [(ACXDeviceConnectionClient *)self clientName];
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
      v9 = [(ACXDeviceConnectionClient *)self clientName];
      MOLogWrite();
    }

    v6 = 0;
  }

  return v6;
}

- (id)_hasEntitlement:(id)a3 forRequestType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACXDeviceConnectionClient *)self xpcConnection];
  v10 = v8;
  if (v8)
  {
    v11 = [v8 valueForEntitlement:v6];
    if (objc_opt_respondsToSelector())
    {
      v12 = [v11 BOOLValue];

      if (v12)
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

- (id)_gizmoStateForDeviceWithPairingID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[ACXGizmoStateManager sharedStateManager];
  v8 = v7;
  if (v6)
  {
    [v7 stateForPairingID:v6];
  }

  else
  {
    [v7 stateForActivePairedDevice];
  }
  v9 = ;

  if (!v9)
  {
    v10 = [v6 UUIDString];
    v15 = [(ACXDeviceConnectionClient *)self clientName];
    v12 = sub_1000061DC("[ACXDeviceConnectionClient _gizmoStateForDeviceWithPairingID:error:]", 314, @"ACXErrorDomain", 28, 0, 0, @"Could not get device state for device with pairing ID %@ (requested by %@)", v11, v10);

    if (a4)
    {
      v13 = v12;
      *a4 = v12;
    }
  }

  return v9;
}

- (id)_deviceForPairingID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(ACXDeviceConnectionClient *)self deviceManager];
  v8 = v7;
  if (v6)
  {
    [v7 deviceForPairingID:v6];
  }

  else
  {
    [v7 currentActivePairedDevice];
  }
  v9 = ;

  if (!v9)
  {
    v10 = [v6 UUIDString];
    v15 = [(ACXDeviceConnectionClient *)self clientName];
    v12 = sub_1000061DC("[ACXDeviceConnectionClient _deviceForPairingID:error:]", 332, @"ACXErrorDomain", 28, 0, 0, @"Could not get device with pairing ID %@ (requested by %@)", v11, v10);

    if (a4)
    {
      v13 = v12;
      *a4 = v12;
    }
  }

  return v9;
}

- (NSString)description
{
  v3 = [(ACXDeviceConnectionClient *)self clientName];
  v4 = [NSString stringWithFormat:@"<ACXDeviceConnectionClient %p %@>", self, v3];

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

- (void)fetchInstalledApplicationsForDeviceWithPairingID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
  {
    v24 = [(ACXDeviceConnectionClient *)self clientName];
    MOLogWrite();
  }

  v8 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient fetchInstalledApplicationsForDeviceWithPairingID:completion:]", v24];
  v9 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v8];

  if (v9)
  {
    v7[2](v7, 0, v9);
  }

  else
  {
    v10 = [(ACXDeviceConnectionClient *)self applicationManager];
    v11 = [v10 allAvailableApps];

    v12 = objc_opt_new();
    v33 = 0;
    v13 = [(ACXDeviceConnectionClient *)self _gizmoStateForDeviceWithPairingID:v6 error:&v33];
    v14 = v33;
    v15 = v14;
    if (v13)
    {
      v25 = v14;
      v26 = v11;
      v27 = v7;
      v28 = v6;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v16 = v11;
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

      v7 = v27;
      (v27)[2](v27, v12, 0);
      v6 = v28;
      v15 = v25;
      v11 = v26;
    }

    else
    {
      v7[2](v7, 0, v14);
    }
  }
}

- (void)fetchInstalledComplicationsForDeviceWithPairingID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
  {
    v24 = [(ACXDeviceConnectionClient *)self clientName];
    MOLogWrite();
  }

  v8 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient fetchInstalledComplicationsForDeviceWithPairingID:completion:]", v24];
  v9 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v8];

  if (v9)
  {
    v7[2](v7, 0, v9);
  }

  else
  {
    v10 = [(ACXDeviceConnectionClient *)self applicationManager];
    v11 = [v10 allAvailableApps];

    v12 = objc_opt_new();
    v33 = 0;
    v13 = [(ACXDeviceConnectionClient *)self _gizmoStateForDeviceWithPairingID:v6 error:&v33];
    v14 = v33;
    v15 = v14;
    if (v13)
    {
      v25 = v14;
      v26 = v11;
      v27 = v7;
      v28 = v6;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v16 = v11;
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

      v7 = v27;
      (v27)[2](v27, v12, 0);
      v6 = v28;
      v15 = v25;
      v11 = v26;
    }

    else
    {
      v7[2](v7, 0, v14);
    }
  }
}

- (void)activeComplicationsForDeviceWithPairingID:(id)a3 completion:(id)a4
{
  v17 = a3;
  v6 = a4;
  if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
  {
    v16 = [(ACXDeviceConnectionClient *)self clientName];
    MOLogWrite();
  }

  v7 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient activeComplicationsForDeviceWithPairingID:completion:]", v16];
  v8 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v7];

  if (v8)
  {
    v6[2](v6, 0, v8);
  }

  else
  {
    v9 = +[NRPairedDeviceRegistry sharedInstance];
    v10 = v9;
    if (v17)
    {
      [v9 deviceForPairingID:?];
    }

    else
    {
      [v9 getActivePairedDevice];
    }
    v11 = ;

    v12 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.sockpuppet.activeComplications" pairedDevice:v11];
    v13 = [v12 synchronize];
    v14 = [v12 arrayForKey:@"activeComplications"];
    v15 = [v14 copy];

    if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
    {
      MOLogWrite();
    }

    (v6)[2](v6, v15, 0);
  }
}

- (void)fetchInstalledCompatibleApplicationsForDeviceWithPairingID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
  {
    v29 = [(ACXDeviceConnectionClient *)self clientName];
    MOLogWrite();
  }

  v8 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient fetchInstalledCompatibleApplicationsForDeviceWithPairingID:completion:]", v29];
  v9 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v8];

  if (v9)
  {
    v7[2](v7, 0, v9);
  }

  else
  {
    v10 = [(ACXDeviceConnectionClient *)self applicationManager];
    v11 = [v10 allAvailableApps];

    v35 = objc_opt_new();
    v40 = 0;
    v12 = [(ACXDeviceConnectionClient *)self _deviceForPairingID:v6 error:&v40];
    v13 = v40;
    if (v12)
    {
      v14 = +[ACXGizmoStateManager sharedStateManager];
      v15 = [v14 stateForDevice:v12];

      if (v15)
      {
        v31 = v13;
        v32 = v11;
        v33 = v7;
        v34 = v6;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v16 = v11;
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
              v23 = [v12 osVersion];
              v24 = [v22 isCompatibleWithOSVersion:v23];

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

        v7 = v33;
        (v33)[2](v33, v35, 0);
        v6 = v34;
        v11 = v32;
        v9 = 0;
        v13 = v31;
      }

      else
      {
        v26 = [v6 UUIDString];
        v30 = [(ACXDeviceConnectionClient *)self clientName];
        v28 = sub_1000061DC("[ACXDeviceConnectionClient fetchInstalledCompatibleApplicationsForDeviceWithPairingID:completion:]", 490, @"ACXErrorDomain", 28, 0, 0, @"Could not get state for device with pairing ID %@ (requested by %@).", v27, v26);

        v7[2](v7, 0, v28);
        v13 = v28;
      }
    }

    else
    {
      v7[2](v7, 0, v13);
    }
  }
}

- (void)fetchApplicationWithContainingApplicationBundleID:(id)a3 completion:(id)a4
{
  v19 = a3;
  v6 = a4;
  if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
  {
    v17 = [(ACXDeviceConnectionClient *)self clientName];
    v18 = v19;
    MOLogWrite();
  }

  v7 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient fetchApplicationWithContainingApplicationBundleID:completion:]", v17, v18];
  v8 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v7];

  if (v8)
  {
    v6[2](v6, 0, v8);
  }

  else
  {
    v9 = objc_opt_new();
    v10 = +[ACXGizmoStateManager sharedStateManager];
    v11 = [v10 stateForActivePairedDevice];

    v12 = [(ACXDeviceConnectionClient *)self applicationManager];
    v13 = [v12 gizmoAppForCompanionAppBundleID:v19];

    if (v13)
    {
      v14 = [v13 exportedAppStateForDeviceState:v11];
      if (v14)
      {
        v15 = [NSNumber numberWithInteger:v14];
        v16 = [v13 bundleIdentifier];
        [v9 setObject:v15 forKeyedSubscript:v16];
      }
    }

    if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
    {
      MOLogWrite();
    }

    (v6)[2](v6, v9, 0);
  }
}

- (void)fetchInfoForApplicationWithBundleID:(id)a3 forDeviceWithPairingID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
  {
    v25 = [(ACXDeviceConnectionClient *)self clientName];
    v26 = v8;
    MOLogWrite();
  }

  v11 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient fetchInfoForApplicationWithBundleID:forDeviceWithPairingID:completion:]", v25, v26];
  v12 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v11];

  if (v12)
  {
    v10[2](v10, 0, v12);
  }

  else
  {
    v30 = 0;
    v13 = [(ACXDeviceConnectionClient *)self _gizmoStateForDeviceWithPairingID:v9 error:&v30];
    v14 = v30;
    if (v13)
    {
      v15 = [(ACXDeviceConnectionClient *)self applicationManager];
      v16 = [v15 allAvailableApps];

      v29 = v16;
      v17 = [v16 objectForKeyedSubscript:v8];
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

        (v10)[2](v10, v19, 0);
      }

      else
      {
        [v9 UUIDString];
        v20 = v28 = v14;
        v27 = [(ACXDeviceConnectionClient *)self clientName];
        v24 = sub_100001B04("[ACXDeviceConnectionClient fetchInfoForApplicationWithBundleID:forDeviceWithPairingID:completion:]", 567, @"ACXErrorDomain", 19, @"No watch app found with bundle ID %@ on device with pairing ID %@ (requested by %@)", v21, v22, v23, v8);

        v14 = v28;
        v10[2](v10, 0, v24);
      }
    }

    else
    {
      v10[2](v10, 0, v14);
    }
  }
}

- (void)fetchWatchAppBundleURLWithinCompanionAppWithWatchAppIdentifier:(id)a3 completion:(id)a4
{
  v16 = a3;
  v6 = a4;
  if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
  {
    v13 = [(ACXDeviceConnectionClient *)self clientName];
    v14 = v16;
    MOLogWrite();
  }

  v7 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient fetchWatchAppBundleURLWithinCompanionAppWithWatchAppIdentifier:completion:]", v13, v14];
  v8 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v7];

  if (v8)
  {
    v6[2](v6, 0, v8);
  }

  else
  {
    v9 = [(ACXDeviceConnectionClient *)self applicationManager];
    v10 = [v9 gizmoAppWithBundleID:v16];

    if (v10)
    {
      v11 = [v10 watchAppURL];
      (v6)[2](v6, v11, 0);
    }

    else
    {
      v15 = [(ACXDeviceConnectionClient *)self clientName];
      v11 = sub_1000061DC("[ACXDeviceConnectionClient fetchWatchAppBundleURLWithinCompanionAppWithWatchAppIdentifier:completion:]", 588, @"ACXErrorDomain", 19, 0, 0, @"No watch app found with bundle ID %@ (requested by %@)", v12, v16);

      v6[2](v6, 0, v11);
    }
  }
}

- (void)fetchWatchAppBundleIDForCompanionAppBundleID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
  {
    v28 = [(ACXDeviceConnectionClient *)self clientName];
    v29 = v6;
    MOLogWrite();
  }

  v8 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient fetchWatchAppBundleIDForCompanionAppBundleID:completion:]", v28, v29];
  v9 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v8];

  if (v9)
  {
    v7[2](v7, 0, v9);
  }

  else
  {
    v10 = [(ACXDeviceConnectionClient *)self applicationManager];
    v11 = [v10 gizmoAppBundleIDForCompanionAppBundleID:v6];

    if (v11)
    {
      if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
      {
        MOLogWrite();
      }

      (v7)[2](v7, v11, 0);
    }

    else
    {
      v31 = v7;
      v12 = [(ACXDeviceConnectionClient *)self deviceManager];
      v13 = [v12 allDevices];

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v14 = v13;
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
            v20 = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
            v21 = [v20 connectionForDevice:v19];

            if ([v21 supportsRemoteAppList])
            {
              v22 = [v21 remoteAppList];
              v23 = [v22 appBundleIDForCounterpartBundleID:v6 error:0];

              if (v23)
              {
                v7 = v31;
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

      v30 = [(ACXDeviceConnectionClient *)self clientName];
      v27 = sub_100001B04("[ACXDeviceConnectionClient fetchWatchAppBundleIDForCompanionAppBundleID:completion:]", 624, @"ACXErrorDomain", 19, @"No watch app found for companion app bundle ID %@ (requested by %@)", v24, v25, v26, v6);

      v7 = v31;
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
    v7 = [(ACXDeviceConnectionClient *)self clientName];
    MOLogWrite();
  }

  v3 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient installAllApplications]", v7];
  v8 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v3];

  v4 = v8;
  if (!v8)
  {
    v5 = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
    v6 = [v5 connectionForActivePairedDevice];
    [v6 installAllApplications];

    v4 = 0;
  }
}

- (void)cancelPendingInstallations
{
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v7 = [(ACXDeviceConnectionClient *)self clientName];
    MOLogWrite();
  }

  v3 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient cancelPendingInstallations]", v7];
  v8 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v3];

  v4 = v8;
  if (!v8)
  {
    v5 = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
    v6 = [v5 connectionForActivePairedDevice];
    [v6 cancelPendingInstallations];

    v4 = 0;
  }
}

- (void)retryPendingAppInstallationsOnDeviceWithPairingID:(id)a3
{
  v15 = a3;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v14 = [(ACXDeviceConnectionClient *)self clientName];
    MOLogWrite();
  }

  v4 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient retryPendingAppInstallationsOnDeviceWithPairingID:]", v14];
  v5 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v4];

  if (!v5)
  {
    v6 = [(ACXDeviceConnectionClient *)self deviceManager];
    v7 = [v6 currentActivePairedDevice];

    v8 = [v7 pairingID];
    v9 = [v8 isEqual:v15];

    if (v9)
    {
      v10 = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
      v11 = [v10 connectionForActivePairedDevice];
      v12 = [(ACXDeviceConnectionClient *)self clientName];
      v13 = [NSString stringWithFormat:@"retryPendingAppInstallations for %@", v12];
      [v11 performReunionSyncWithReason:v13];
    }

    else
    {
      if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
      {
        goto LABEL_11;
      }

      v10 = [v7 pairingID];
      MOLogWrite();
    }

LABEL_11:
  }
}

- (void)installApplication:(id)a3 withProvisioningProfileInfo:(id)a4 forTestFlight:(BOOL)a5 onDeviceWithPairingID:(id)a6 completion:(id)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient installApplication:withProvisioningProfileInfo:forTestFlight:onDeviceWithPairingID:completion:]"];
  v17 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v16];

  if (v17)
  {
    goto LABEL_2;
  }

  if (!v9 || ([(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.profiles.allow" forRequestType:@"install application for TestFlight"], (v18 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      v19 = [(ACXDeviceConnectionClient *)self clientName];
      v20 = v19;
      v21 = "not for test flight";
      if (v9)
      {
        v21 = "for test flight";
      }

      v53 = v12;
      v58 = v21;
      v52 = v19;
      MOLogWrite();
    }

    v22 = qos_class_self();
    v23 = dispatch_get_global_queue(v22, 0);
    sub_100005828(v23, &stru_10008E160);

    v62 = 0;
    v24 = [(ACXDeviceConnectionClient *)self _deviceForPairingID:v14 error:&v62];
    v17 = v62;
    if (!v24)
    {
      v30 = sub_10004F91C(8, v17, v12, 1);
      v15[2](v15, 0, v30);
      v25 = v14;
LABEL_28:

      v14 = v25;
      goto LABEL_29;
    }

    v25 = [v24 pairingID];

    v26 = [v24 nrDevice];
    v27 = sub_10004FF78(v26);

    if (v27)
    {
      v54 = [v25 UUIDString];
      v29 = sub_1000061DC("[ACXDeviceConnectionClient installApplication:withProvisioningProfileInfo:forTestFlight:onDeviceWithPairingID:completion:]", 718, @"ACXErrorDomain", 57, 0, 0, @"The app %@ cannot be installed on the device with pairing ID %@ because app installation is prohibited by a device management restriction.", v28, v12);

      v30 = sub_10004F91C(10, v29, v12, 1);
      v15[2](v15, 0, v30);
LABEL_23:
      v17 = v29;
      goto LABEL_28;
    }

    v31 = [(ACXDeviceConnectionClient *)self applicationManager];
    v30 = [v31 gizmoAppWithBundleID:v12];

    if (!v30)
    {
      v36 = [v25 UUIDString];
      v59 = [(ACXDeviceConnectionClient *)self clientName];
      v29 = sub_1000061DC("[ACXDeviceConnectionClient installApplication:withProvisioningProfileInfo:forTestFlight:onDeviceWithPairingID:completion:]", 726, @"ACXErrorDomain", 19, 0, 0, @"No WatchKit app is installed with the identifier %@ on device with pairing ID %@ (requested by %@)", v37, v12);

      v15[2](v15, 0, v29);
      goto LABEL_23;
    }

    if ([v30 isEligibleForWatchAppInstall])
    {
      if ([v24 isReachable])
      {
        if (![v30 isBetaApp] || !objc_msgSend(v30, "isEmbeddedPlaceholder") || (-[ACXDeviceConnectionClient clientSigningIdentifier](self, "clientSigningIdentifier"), v32 = objc_claimAutoreleasedReturnValue(), v60 = objc_msgSend(v32, "isEqualToString:", @"com.apple.TestFlight"), v32, !v60))
        {
          if (![v30 isBetaApp] || (-[ACXDeviceConnectionClient clientSigningIdentifier](self, "clientSigningIdentifier"), v43 = objc_claimAutoreleasedReturnValue(), v61 = objc_msgSend(v43, "isEqualToString:", @"com.apple.TestFlight"), v43, (v61 & 1) != 0) || v9)
          {
            v45 = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
            v46 = [v45 connectionForDevice:v24];

            if (v46)
            {
              [v46 installWatchAppWithBundleID:v12 withProvisioningProfileInfo:v13 completionWithError:v15];
            }

            else
            {
              v47 = [v25 UUIDString];
              v49 = sub_1000061DC("[ACXDeviceConnectionClient installApplication:withProvisioningProfileInfo:forTestFlight:onDeviceWithPairingID:completion:]", 764, @"ACXErrorDomain", 28, 0, 0, @"No sync connection found for device with pairing ID %@", v48, v47);

              v50 = [v30 applicationName];
              v51 = sub_10004F91C(8, v49, v50, 1);

              v15[2](v15, 0, v51);
              v17 = v49;
            }
          }

          else
          {
            v44 = +[ACXTestFlightInstallQueue sharedInstaller];
            [v44 installWatchApp:v30 targetDevice:v24];

            v15[2](v15, 1, 0);
          }

          goto LABEL_28;
        }

        v33 = [v25 UUIDString];
        v55 = [v30 bundleIdentifier];
        v35 = sub_1000061DC("[ACXDeviceConnectionClient installApplication:withProvisioningProfileInfo:forTestFlight:onDeviceWithPairingID:completion:]", 749, @"ACXErrorDomain", 53, 0, 0, @"Ignoring installation request from TestFlight for beta app %@ on the device with  pairing ID %@ because it only contains a placeholder watch app and App Store cannot install TestFlight apps.", v34, v33);

        v15[2](v15, 0, v35);
        goto LABEL_27;
      }

      v57 = [v25 UUIDString];
      v35 = sub_1000061DC("[ACXDeviceConnectionClient installApplication:withProvisioningProfileInfo:forTestFlight:onDeviceWithPairingID:completion:]", 739, @"ACXErrorDomain", 55, 0, 0, @"Ignoring request to install app %@ because the device with pairing ID %@ isn't reachable", v41, v12);

      v39 = [v30 applicationName];
      v40 = 8;
    }

    else
    {
      v56 = [v25 UUIDString];
      v35 = sub_1000061DC("[ACXDeviceConnectionClient installApplication:withProvisioningProfileInfo:forTestFlight:onDeviceWithPairingID:completion:]", 732, @"ACXErrorDomain", 59, 0, 0, @"The app %@ cannot be installed on the device with pairing ID %@ because it isn't eligible for Watch installs.", v38, v12);

      v39 = [v30 applicationName];
      v40 = 12;
    }

    v42 = sub_10004F91C(v40, v35, v39, 1);

    v15[2](v15, 0, v42);
LABEL_27:
    v17 = v35;
    goto LABEL_28;
  }

  v17 = v18;
LABEL_2:
  v15[2](v15, 0, v17);
LABEL_29:
}

- (void)installApplicationAtURL:(id)a3 onDeviceWithPairingID:(id)a4 installOptions:(id)a5 size:(int64_t)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient installApplicationAtURL:onDeviceWithPairingID:installOptions:size:completion:]"];
  v17 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v16];

  if (!v17)
  {
    v18 = qos_class_self();
    v19 = dispatch_get_global_queue(v18, 0);
    sub_100005828(v19, &stru_10008E180);

    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      v20 = [(ACXDeviceConnectionClient *)self clientName];
      [v12 path];
      v44 = v43 = v20;
      MOLogWrite();
    }

    v49 = 0;
    v21 = [(ACXDeviceConnectionClient *)self _deviceForPairingID:v13 error:&v49, v43, v44];
    v22 = v49;
    if (v21)
    {
      v48 = v14;
      v23 = [v21 pairingID];

      v24 = [v21 nrDevice];
      v25 = sub_10004FF78(v24);

      if (v25)
      {
        v26 = [v12 path];
        v45 = [v23 UUIDString];
        v28 = sub_1000061DC("[ACXDeviceConnectionClient installApplicationAtURL:onDeviceWithPairingID:installOptions:size:completion:]", 805, @"ACXErrorDomain", 57, 0, 0, @"The application at path %@ cannot be installed on the device with pairing ID %@ because app installation is prohibited by a device management restriction.", v27, v26);

        v29 = [v12 lastPathComponent];
        v30 = sub_10004F91C(10, v28, v29, 1);

        v15[2](v15, 0, v30);
        v22 = v28;
LABEL_16:
        v13 = v23;
        v14 = v48;
        goto LABEL_17;
      }

      if ([v21 isReachable])
      {
        v32 = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
        v30 = [v32 connectionForDevice:v21];

        if (v30)
        {
          [v30 installWatchAppAtURL:v12 installOptions:v48 size:a6 completionWithError:v15];
          v13 = v23;
          v14 = v48;
          goto LABEL_17;
        }

        v39 = [v23 UUIDString];
        v46 = [(ACXDeviceConnectionClient *)self clientName];
        v38 = sub_1000061DC("[ACXDeviceConnectionClient installApplicationAtURL:onDeviceWithPairingID:installOptions:size:completion:]", 820, @"ACXErrorDomain", 28, 0, 0, @"No sync connection found for device with pairing ID %@ (requested by %@)", v40, v39);

        v41 = [v12 lastPathComponent];
        v42 = sub_10004F91C(8, v38, v41, 1);

        v15[2](v15, 0, v42);
      }

      else
      {
        v33 = [v12 path];
        v34 = [v23 UUIDString];
        v47 = [(ACXDeviceConnectionClient *)self clientName];
        v36 = sub_1000061DC("[ACXDeviceConnectionClient installApplicationAtURL:onDeviceWithPairingID:installOptions:size:completion:]", 812, @"ACXErrorDomain", 55, 0, 0, @"Ignoring request to install app at %@ as the device with pairing ID %@ isn't reachable (requested by %@)", v35, v33);

        v37 = [v12 lastPathComponent];
        v38 = v36;
        v30 = sub_10004F91C(8, v36, v37, 1);

        v15[2](v15, 0, v30);
      }

      v22 = v38;
      goto LABEL_16;
    }

    v31 = [v12 lastPathComponent];
    v30 = sub_10004F91C(8, v22, v31, 1);

    v15[2](v15, 0, v30);
LABEL_17:

    goto LABEL_18;
  }

  v15[2](v15, 0, v17);
LABEL_18:
}

- (void)removeApplication:(id)a3 fromDeviceWithPairingID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v26 = [(ACXDeviceConnectionClient *)self clientName];
    v27 = v8;
    MOLogWrite();
  }

  v11 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient removeApplication:fromDeviceWithPairingID:completion:]", v26, v27];
  v12 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v11];

  if (v12)
  {
    v10[2](v10, 0, v12);
  }

  else
  {
    v32 = 0;
    v13 = [(ACXDeviceConnectionClient *)self _deviceForPairingID:v9 error:&v32];
    v14 = v32;
    if (v13)
    {
      v15 = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
      v16 = [v15 connectionForDevice:v13];

      if (v16)
      {
        v17 = [v16 remoteAppWithBundleID:v8];
        if (v17)
        {
          if ([v13 isReachable])
          {
            [v16 removeWatchAppWithBundleID:v17 completion:v10];
          }

          else
          {
            v31 = [v13 pairingID];
            v30 = [v31 UUIDString];
            v29 = [(ACXDeviceConnectionClient *)self clientName];
            v23 = sub_1000061DC("[ACXDeviceConnectionClient removeApplication:fromDeviceWithPairingID:completion:]", 866, @"ACXErrorDomain", 55, 0, 0, @"Ignoring request to remove app %@ because the device with pairing ID %@ isn't reachable (requested by %@)", v22, v8);

            v24 = [v17 applicationName];
            v25 = sub_10004F91C(8, v23, v24, 2);

            v10[2](v10, 0, v25);
            v14 = v23;
          }
        }

        else
        {
          if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
          {
            MOLogWrite();
          }

          v10[2](v10, 5, 0);
        }
      }

      else
      {
        v18 = [v13 pairingID];
        v19 = [v18 UUIDString];
        v28 = [(ACXDeviceConnectionClient *)self clientName];
        v21 = sub_1000061DC("[ACXDeviceConnectionClient removeApplication:fromDeviceWithPairingID:completion:]", 852, @"ACXErrorDomain", 1, 0, 0, @"Failed to get connection for device with pairing ID %@ (requested by %@)", v20, v19);

        v16 = sub_10004F91C(8, v21, v8, 2);
        v10[2](v10, 0, v16);
        v14 = v21;
      }
    }

    else
    {
      v16 = sub_10004F91C(8, v14, v8, 2);
      v10[2](v10, 0, v16);
    }
  }
}

- (void)getAlwaysInstallForDeviceWithPairingID:(id)a3 completion:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v10 = [(ACXDeviceConnectionClient *)self clientName];
    MOLogWrite();
  }

  v7 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient getAlwaysInstallForDeviceWithPairingID:completion:]", v10];
  v8 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v7];

  if (v8)
  {
    v6[2](v6, 0);
  }

  else
  {
    v9 = [(ACXDeviceConnectionClient *)self _gizmoStateForDeviceWithPairingID:v11 error:0];
    (v6)[2](v6, [v9 alwaysInstallApps]);
  }
}

- (void)installProvisioningProfileWithData:(id)a3 onDeviceWithPairingID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
    v10[2](v10, 0, v12);
    goto LABEL_5;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v21 = [(ACXDeviceConnectionClient *)self clientName];
    MOLogWrite();
  }

  v23 = 0;
  v14 = [(ACXDeviceConnectionClient *)self _deviceForPairingID:v9 error:&v23, v21];
  v12 = v23;
  if (v14)
  {
    if ([v14 isReachable])
    {
      v15 = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
      v16 = [v15 connectionForDevice:v14];
      [v16 installProvisioningProfileWithData:v8 completion:v10];
    }

    else
    {
      v17 = [v14 pairingID];
      v18 = [v17 UUIDString];
      v22 = [(ACXDeviceConnectionClient *)self clientName];
      v20 = sub_1000061DC("[ACXDeviceConnectionClient installProvisioningProfileWithData:onDeviceWithPairingID:completion:]", 918, @"ACXErrorDomain", 55, 0, 0, @"Ignoring request to install provisioning profile as the device with pairing ID %@ isn't reachable (requested by %@)", v19, v18);

      v10[2](v10, 0, v20);
      v12 = v20;
    }
  }

  else
  {
    v10[2](v10, 0, v12);
  }

LABEL_5:
}

- (void)removeProvisioningProfileWithID:(id)a3 fromDeviceWithPairingID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
    v10[2](v10, 0, v12);
    goto LABEL_5;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v21 = [(ACXDeviceConnectionClient *)self clientName];
    v22 = v8;
    MOLogWrite();
  }

  v24 = 0;
  v14 = [(ACXDeviceConnectionClient *)self _deviceForPairingID:v9 error:&v24, v21, v22];
  v12 = v24;
  if (v14)
  {
    if ([v14 isReachable])
    {
      v15 = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
      v16 = [v15 connectionForDevice:v14];
      [v16 removeProvisioningProfileWithID:v8 completion:v10];
    }

    else
    {
      v17 = [v14 pairingID];
      v18 = [v17 UUIDString];
      v23 = [(ACXDeviceConnectionClient *)self clientName];
      v20 = sub_1000061DC("[ACXDeviceConnectionClient removeProvisioningProfileWithID:fromDeviceWithPairingID:completion:]", 952, @"ACXErrorDomain", 55, 0, 0, @"Ignoring request to remove provisioning profile as the device with pairing ID %@ isn't reachable (requested by %@)", v19, v18);

      v10[2](v10, 0, v20);
      v12 = v20;
    }
  }

  else
  {
    v10[2](v10, 0, v12);
  }

LABEL_5:
}

- (void)fetchProvisioningProfilesForDeviceWithPairingID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v7[2](v7, 0, v9);
    goto LABEL_5;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v18 = [(ACXDeviceConnectionClient *)self clientName];
    MOLogWrite();
  }

  v20 = 0;
  v11 = [(ACXDeviceConnectionClient *)self _deviceForPairingID:v6 error:&v20, v18];
  v9 = v20;
  if (v11)
  {
    if ([v11 isReachable])
    {
      v12 = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
      v13 = [v12 connectionForDevice:v11];
      [v13 fetchProvisioningProfilesWithCompletion:v7];
    }

    else
    {
      v14 = [v11 pairingID];
      v15 = [v14 UUIDString];
      v19 = [(ACXDeviceConnectionClient *)self clientName];
      v17 = sub_1000061DC("[ACXDeviceConnectionClient fetchProvisioningProfilesForDeviceWithPairingID:completion:]", 986, @"ACXErrorDomain", 55, 0, 0, @"Ignoring request to fetch provisioning profiles as the device with pairing ID %@ isn't reachable (requested by %@)", v16, v15);

      v7[2](v7, 0, v17);
      v9 = v17;
    }
  }

  else
  {
    v7[2](v7, 0, v9);
  }

LABEL_5:
}

- (void)fetchProvisioningProfilesForApplicationWithBundleID:(id)a3 forDeviceWithPairingID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v21 = [(ACXDeviceConnectionClient *)self clientName];
    v22 = v8;
    MOLogWrite();
  }

  v11 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient fetchProvisioningProfilesForApplicationWithBundleID:forDeviceWithPairingID:completion:]", v21, v22];
  v12 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v11];

  if (v12)
  {
    v10[2](v10, 0, v12);
  }

  else
  {
    v24 = 0;
    v13 = [(ACXDeviceConnectionClient *)self _deviceForPairingID:v9 error:&v24];
    v14 = v24;
    if (v13)
    {
      if ([v13 isReachable])
      {
        v15 = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
        v16 = [v15 connectionForDevice:v13];
        [v16 fetchProvisioningProfilesForApplicationWithBundleID:v8 completion:v10];
      }

      else
      {
        v17 = [v13 pairingID];
        v18 = [v17 UUIDString];
        v23 = [(ACXDeviceConnectionClient *)self clientName];
        v20 = sub_1000061DC("[ACXDeviceConnectionClient fetchProvisioningProfilesForApplicationWithBundleID:forDeviceWithPairingID:completion:]", 1014, @"ACXErrorDomain", 55, 0, 0, @"Ignoring request to fetch provisioning profiles for app %@ as the device with pairing ID %@ isn't reachable (requested by %@)", v19, v8);

        v10[2](v10, 0, v20);
        v14 = v20;
      }
    }

    else
    {
      v10[2](v10, 0, v14);
    }
  }
}

- (void)updatePreferencesForApplicationWithIdentifier:(id)a3 preferences:(id)a4 writingToPreferencesLocation:(unint64_t)a5 forDeviceWithPairingID:(id)a6 options:(unint64_t)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a8;
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
    v17[2](v17, v19);
    goto LABEL_5;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v28 = [(ACXDeviceConnectionClient *)self clientName];
    v29 = v14;
    MOLogWrite();
  }

  v31 = 0;
  v21 = [(ACXDeviceConnectionClient *)self _deviceForPairingID:v16 error:&v31, v28, v29];
  v19 = v31;
  if (v21)
  {
    if ([v21 isReachable])
    {
      v22 = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
      v23 = [v22 connectionForDevice:v21];
      [v23 updatePreferencesForApplicationWithIdentifier:v14 preferences:v15 writingToPreferencesLocation:a5 options:a7 completion:v17];
    }

    else
    {
      v24 = [v21 pairingID];
      v25 = [v24 UUIDString];
      v30 = [(ACXDeviceConnectionClient *)self clientName];
      v27 = sub_1000061DC("[ACXDeviceConnectionClient updatePreferencesForApplicationWithIdentifier:preferences:writingToPreferencesLocation:forDeviceWithPairingID:options:completion:]", 1048, @"ACXErrorDomain", 55, 0, 0, @"Ignoring request to update preferences for app %@ as the device with pairing ID %@ isn't reachable (requested by %@)", v26, v14);

      v17[2](v17, v27);
      v19 = v27;
    }
  }

  else
  {
    v17[2](v17, v19);
  }

LABEL_5:
}

- (void)setUpdatePendingForCompanionApp:(id)a3 completion:(id)a4
{
  v13 = a3;
  v6 = a4;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v11 = [(ACXDeviceConnectionClient *)self clientName];
    v12 = v13;
    MOLogWrite();
  }

  v7 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient setUpdatePendingForCompanionApp:completion:]", v11, v12];
  v8 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v7];

  if (v8)
  {
    v6[2](v6, v8);
  }

  else
  {
    v9 = +[ACXGizmoStateManager sharedStateManager];
    v10 = [v9 stateForActivePairedDevice];
    [v10 setUpdatePendingForCompanionApp:v13];

    v6[2](v6, 0);
  }
}

- (void)cancelUpdatePendingForCompanionApp:(id)a3 completion:(id)a4
{
  v13 = a3;
  v6 = a4;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v11 = [(ACXDeviceConnectionClient *)self clientName];
    v12 = v13;
    MOLogWrite();
  }

  v7 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient cancelUpdatePendingForCompanionApp:completion:]", v11, v12];
  v8 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v7];

  if (v8)
  {
    v6[2](v6, v8);
  }

  else
  {
    v9 = +[ACXGizmoStateManager sharedStateManager];
    v10 = [v9 stateForActivePairedDevice];
    [v10 cancelUpdatePendingForCompanionApp:v13];

    v6[2](v6, 0);
  }
}

- (void)applicationWillInstallAfterPairingOnDeviceWithPairingID:(id)a3 withBundleID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v25 = [(ACXDeviceConnectionClient *)self clientName];
    v26 = v9;
    MOLogWrite();
  }

  v11 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient applicationWillInstallAfterPairingOnDeviceWithPairingID:withBundleID:completion:]", v25, v26];
  v12 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v11];

  if (!v12)
  {
    v13 = +[NSFileManager defaultManager];
    v14 = sub_10000831C();
    v15 = [v14 path];
    v16 = [v13 fileExistsAtPath:v15];

    if (v16)
    {
      v17 = 0;
    }

    else
    {
      v28 = 0;
      v18 = [(ACXDeviceConnectionClient *)self _deviceForPairingID:v8 error:&v28];
      v17 = v28;
      if (!v18)
      {
        v10[2](v10, 0, v17);
LABEL_14:

        goto LABEL_15;
      }
    }

    v19 = [NSSet setWithObjects:@"com.apple.NanoPassbook", @"com.apple.NanoHeartRhythm", @"com.apple.HeartRate", @"com.apple.NanoHealthBalance", 0];
    if ([v19 containsObject:v9])
    {
      v10[2](v10, 1, 0);
    }

    else
    {
      v20 = [v8 UUIDString];
      v27 = [(ACXDeviceConnectionClient *)self clientName];
      v24 = sub_100001B04("[ACXDeviceConnectionClient applicationWillInstallAfterPairingOnDeviceWithPairingID:withBundleID:completion:]", 1115, @"ACXErrorDomain", 1, @"Querying whether %@ will be installed after pairing is not supported for pairing ID %@ (requested by %@)", v21, v22, v23, v9);

      v10[2](v10, 0, v24);
      v17 = v24;
    }

    goto LABEL_14;
  }

  v10[2](v10, 0, v12);
LABEL_15:
}

- (void)fetchLocallyAvailableWatchAppBundleIDsWithCompletion:(id)a3
{
  v9 = a3;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v8 = [(ACXDeviceConnectionClient *)self clientName];
    MOLogWrite();
  }

  v4 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient fetchLocallyAvailableWatchAppBundleIDsWithCompletion:]", v8];
  v5 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v4];

  if (v5)
  {
    v9[2]();
  }

  else
  {
    v6 = [(ACXDeviceConnectionClient *)self applicationManager];
    v7 = [v6 bundleIDsOfAvailableAppsExcludingSystemApps];
    (v9[2])(v9, v7, 0);
  }
}

- (void)fetchInstalledWatchAppBundleIDsForDeviceWithPairingID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v20 = [(ACXDeviceConnectionClient *)self clientName];
    MOLogWrite();
  }

  v8 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient fetchInstalledWatchAppBundleIDsForDeviceWithPairingID:completion:]", v20];
  v9 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v8];

  if (v9)
  {
    v7[2](v7, 0, v9);
  }

  else
  {
    v22 = 0;
    v10 = [(ACXDeviceConnectionClient *)self _deviceForPairingID:v6 error:&v22];
    v11 = v22;
    if (v10)
    {
      v12 = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
      v13 = [v12 connectionForDevice:v10];

      if ([v13 supportsRemoteAppList])
      {
        v14 = [v13 remoteAppList];
        v21 = v11;
        v15 = [v14 bundleIDsTrackedWithError:&v21];
        v16 = v21;

        if (v15)
        {
          v17 = v15;
          v18 = 0;
        }

        else
        {
          v17 = 0;
          v18 = v16;
        }

        (v7)[2](v7, v17, v18);
      }

      else
      {
        v15 = [v13 gizmoState];
        v19 = [v15 bundleIDsOfAllInstalledApps];
        (v7)[2](v7, v19, 0);

        v16 = v11;
      }

      v11 = v16;
    }

    else
    {
      v7[2](v7, 0, v11);
    }
  }
}

- (BOOL)_setApplicationStatusForApp:(id)a3 forDeviceWithPairingID:(id)a4 options:(unint64_t)a5 error:(id *)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v37 = 0;
  v12 = [(ACXDeviceConnectionClient *)self _deviceForPairingID:v11 error:&v37];
  v13 = v37;
  if (!v12)
  {
    v14 = 0;
    if (!a6)
    {
LABEL_19:
      v17 = 0;
      goto LABEL_20;
    }

LABEL_5:
    v16 = v13;
    v17 = 0;
    *a6 = v13;
    goto LABEL_20;
  }

  v14 = objc_alloc_init(ACXApplicationStatus);
  if ([v10 isCompatibleWithDevice:v12])
  {
    v15 = 1;
  }

  else
  {
    if (v7)
    {
      v25 = [v10 bundleIdentifier];
      v26 = [v11 UUIDString];
      v27 = [(ACXDeviceConnectionClient *)self clientName];
      sub_100001B04("[ACXDeviceConnectionClient _setApplicationStatusForApp:forDeviceWithPairingID:options:error:]", 1188, @"ACXErrorDomain", 38, @"%@ does not support this device with pairing ID %@ (requested by %@)", v28, v29, v30, v25);
      goto LABEL_18;
    }

    v15 = 2;
  }

  [v14 setArchitectureCompatibility:v15];
  v18 = [v12 osVersion];
  v19 = [v10 isCompatibleWithOSVersion:v18];

  if ((v19 & 1) == 0)
  {
    if ((v7 & 1) == 0)
    {
      v20 = 1;
      goto LABEL_12;
    }

    v25 = [v10 bundleIdentifier];
    v26 = [v11 UUIDString];
    v27 = [(ACXDeviceConnectionClient *)self clientName];
    sub_100001B04("[ACXDeviceConnectionClient _setApplicationStatusForApp:forDeviceWithPairingID:options:error:]", 1197, @"ACXErrorDomain", 37, @"%@ does not support this device with pairing ID %@ (requested by %@)", v32, v33, v34, v25);
    v35 = LABEL_18:;

    v13 = v35;
    if (!a6)
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

  v23 = [v10 bundleIdentifier];
  v24 = [v22 appStateForApp:v23];

  if (v24)
  {
    [v14 setInstallStatusWithGizmoStatus:{objc_msgSend(v24, "installStatus")}];
  }

  else
  {
    [v14 setInstallStatus:4];
  }

  v31 = [v24 uniqueInstallID];
  [v14 setUniqueInstallID:v31];

  [v10 setDeviceStatus:v14];
  v17 = 1;
LABEL_20:

  return v17;
}

- (void)fetchLocallyAvailableWatchAppWithBundleID:(id)a3 forDeviceWithPairingID:(id)a4 options:(unint64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
  {
    v25 = [(ACXDeviceConnectionClient *)self clientName];
    v26 = v10;
    MOLogWrite();
  }

  v13 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient fetchLocallyAvailableWatchAppWithBundleID:forDeviceWithPairingID:options:completion:]", v25, v26];
  v14 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v13];

  if (!v14)
  {
    v15 = [(ACXDeviceConnectionClient *)self applicationManager];
    v16 = [v15 gizmoAppWithBundleID:v10];

    if (v16)
    {
      if (![v16 isSystemApp])
      {
        if (v11)
        {
          v27 = 0;
          v22 = [(ACXDeviceConnectionClient *)self _setApplicationStatusForApp:v16 forDeviceWithPairingID:v11 options:a5 error:&v27];
          v23 = v27;
          v24 = v23;
          if ((v22 & 1) == 0)
          {
            v12[2](v12, 0, v23);

            goto LABEL_16;
          }
        }

        (v12)[2](v12, v16, 0);
LABEL_16:

        goto LABEL_17;
      }

      v17 = [v11 UUIDString];
      v18 = [(ACXDeviceConnectionClient *)self clientName];
      sub_1000061DC("[ACXDeviceConnectionClient fetchLocallyAvailableWatchAppWithBundleID:forDeviceWithPairingID:options:completion:]", 1242, @"ACXErrorDomain", 19, 0, 0, @"No gizmo app found with bundle ID %@ (deletable system apps are not returned from this SPI) on device with pairing ID %@ (requested by %@)", v19, v10);
    }

    else
    {
      v17 = [v11 UUIDString];
      v18 = [(ACXDeviceConnectionClient *)self clientName];
      sub_1000061DC("[ACXDeviceConnectionClient fetchLocallyAvailableWatchAppWithBundleID:forDeviceWithPairingID:options:completion:]", 1236, @"ACXErrorDomain", 19, 0, 0, @"No gizmo app found with bundle ID %@ on device with pairing ID %@ (requested by %@)", v20, v10);
    }
    v21 = ;

    v12[2](v12, 0, v21);
    goto LABEL_16;
  }

  v12[2](v12, 0, v14);
LABEL_17:
}

- (void)fetchInstalledWatchAppWithBundleID:(id)a3 forDeviceWithPairingID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
  {
    v28 = [(ACXDeviceConnectionClient *)self clientName];
    v29 = v8;
    MOLogWrite();
  }

  v11 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient fetchInstalledWatchAppWithBundleID:forDeviceWithPairingID:completion:]", v28, v29];
  v12 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v11];

  if (!v12)
  {
    v34 = 0;
    v13 = [(ACXDeviceConnectionClient *)self _deviceForPairingID:v9 error:&v34];
    v14 = v34;
    if (!v13)
    {
      v10[2](v10, 0, v14);
LABEL_21:

      goto LABEL_22;
    }

    v15 = +[ACXCompanionSyncConnectionManager sharedConnectionManager];
    v16 = [v15 connectionForDevice:v13];

    if ([v16 supportsRemoteAppList])
    {
      v31 = v16;
      v17 = [v16 remoteAppList];
      v33 = v14;
      v18 = [v17 applicationForBundleID:v8 error:&v33];
      v19 = v33;

      if (v18)
      {
        v14 = v19;
        v16 = v31;
LABEL_13:
        if ([v18 applicationMode] != 3)
        {
          v23 = [(ACXDeviceConnectionClient *)self applicationManager];
          [v18 bundleIdentifier];
          v24 = v32 = v16;
          v25 = [v23 gizmoAppIsLocallyAvailableWithBundleID:v24];

          v16 = v32;
          if (v25)
          {
            [v18 setIsLocallyAvailable:1];
          }
        }

        (v10)[2](v10, v18, 0);

        goto LABEL_20;
      }

      v16 = v31;
    }

    else
    {
      v20 = [v16 gizmoState];
      v21 = [v20 installStatusForApp:v8];

      if (v21 == 2)
      {
        v22 = [(ACXDeviceConnectionClient *)self applicationManager];
        v18 = [v22 gizmoAppWithBundleID:v8];

        if (v18)
        {
          goto LABEL_13;
        }
      }

      v26 = [v9 UUIDString];
      v30 = [(ACXDeviceConnectionClient *)self clientName];
      v19 = sub_1000061DC("[ACXDeviceConnectionClient fetchInstalledWatchAppWithBundleID:forDeviceWithPairingID:completion:]", 1287, @"ACXErrorDomain", 19, 0, 0, @"Failed to get locally available application for watch app bundleID: %@ on device with pairing ID %@ (requested by %@)", v27, v8);
    }

    v10[2](v10, 0, v19);
    v14 = v19;
LABEL_20:

    goto LABEL_21;
  }

  v10[2](v10, 0, v12);
LABEL_22:
}

- (void)fetchLocallyAvailableApplicationWithContainingApplicationBundleID:(id)a3 forDeviceWithPairingID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
  {
    v23 = [(ACXDeviceConnectionClient *)self clientName];
    v24 = v8;
    MOLogWrite();
  }

  v11 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient fetchLocallyAvailableApplicationWithContainingApplicationBundleID:forDeviceWithPairingID:completion:]", v23, v24];
  v12 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v11];

  if (!v12)
  {
    v13 = [(ACXDeviceConnectionClient *)self applicationManager];
    v14 = [v13 gizmoAppForCompanionAppBundleID:v8];

    if (v14)
    {
      if (![v14 isSystemApp])
      {
        if (v9)
        {
          v25 = 0;
          v20 = [(ACXDeviceConnectionClient *)self _setApplicationStatusForApp:v14 forDeviceWithPairingID:v9 options:0 error:&v25];
          v21 = v25;
          v22 = v21;
          if ((v20 & 1) == 0)
          {
            v10[2](v10, 0, v21);

            goto LABEL_16;
          }
        }

        (v10)[2](v10, v14, 0);
LABEL_16:

        goto LABEL_17;
      }

      v15 = [v9 UUIDString];
      v16 = [(ACXDeviceConnectionClient *)self clientName];
      sub_1000061DC("[ACXDeviceConnectionClient fetchLocallyAvailableApplicationWithContainingApplicationBundleID:forDeviceWithPairingID:completion:]", 1321, @"ACXErrorDomain", 19, 0, 0, @"No gizmo app found with companion bundle ID %@ (deletable system apps are not returned from this SPI) for device with pairing ID %@ (requested by %@)", v17, v8);
    }

    else
    {
      v15 = [v9 UUIDString];
      v16 = [(ACXDeviceConnectionClient *)self clientName];
      sub_1000061DC("[ACXDeviceConnectionClient fetchLocallyAvailableApplicationWithContainingApplicationBundleID:forDeviceWithPairingID:completion:]", 1315, @"ACXErrorDomain", 19, 0, 0, @"No companion app found with bundle ID %@ for device with pairing ID %@ (requested by %@)", v18, v8);
    }
    v19 = ;

    v10[2](v10, 0, v19);
    goto LABEL_16;
  }

  v10[2](v10, 0, v12);
LABEL_17:
}

- (BOOL)_applicationIsInstalledOnDevice:(id)a3 withBundleID:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
  v11 = [v10 connectionForDevice:v9];

  if ([v11 supportsRemoteAppList])
  {
    v12 = [v11 remoteAppList];
    v13 = [v12 applicationIsInstalledWithBundleID:v8 error:a5];
  }

  else
  {
    v14 = [v11 gizmoState];
    v12 = [v14 appStateForApp:v8];

    v13 = [v12 installStatus] == 2;
  }

  return v13;
}

- (BOOL)_applicationIsInstalledOnDevice:(id)a3 withCompanionBundleID:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
  v11 = [v10 connectionForDevice:v9];

  if ([v11 supportsRemoteAppList])
  {
    v12 = [v11 remoteAppList];
    v13 = [v12 applicationIsInstalledWithCounterpartBundleID:v8 error:a5];
  }

  else
  {
    v14 = [(ACXDeviceConnectionClient *)self applicationManager];
    v12 = [v14 gizmoAppBundleIDForCompanionAppBundleID:v8];

    if (!v12)
    {
      v13 = 0;
      goto LABEL_6;
    }

    v15 = [v11 gizmoState];
    v8 = [v15 appStateForApp:v12];

    v13 = [v8 installStatus] == 2;
  }

LABEL_6:
  return v13;
}

- (void)applicationIsInstalledOnDeviceWithPairingID:(id)a3 withBundleID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v24 = [(ACXDeviceConnectionClient *)self clientName];
    v25 = v9;
    MOLogWrite();
  }

  v11 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient applicationIsInstalledOnDeviceWithPairingID:withBundleID:completion:]", v24, v25];
  v12 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v11];

  if (!v12)
  {
    v27 = 0;
    v13 = [(ACXDeviceConnectionClient *)self _deviceForPairingID:v8 error:&v27];
    v14 = v27;
    v15 = v14;
    if (!v13)
    {
      v10[2](v10, 0, v14);
      v17 = v15;
LABEL_18:

      goto LABEL_19;
    }

    v26 = v14;
    v16 = [(ACXDeviceConnectionClient *)self _applicationIsInstalledOnDevice:v13 withBundleID:v9 error:&v26];
    v17 = v26;

    if (v16)
    {
      v18 = v10[2];
      v19 = v10;
      v20 = 1;
LABEL_14:
      v23 = 0;
LABEL_17:
      v18(v19, v20, v23);
      goto LABEL_18;
    }

    if (v17)
    {
      v21 = [v17 domain];
      if ([v21 isEqualToString:@"ACXErrorDomain"])
      {
        v22 = [v17 code];

        if (v22 == 19)
        {
          goto LABEL_13;
        }
      }

      else
      {
      }

      v18 = v10[2];
      v19 = v10;
      v20 = 0;
      v23 = v17;
      goto LABEL_17;
    }

LABEL_13:
    v18 = v10[2];
    v19 = v10;
    v20 = 0;
    goto LABEL_14;
  }

  v10[2](v10, 0, v12);
LABEL_19:
}

- (void)applicationIsInstalledOnDeviceWithPairingID:(id)a3 withCompanionBundleID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v24 = [(ACXDeviceConnectionClient *)self clientName];
    v25 = v9;
    MOLogWrite();
  }

  v11 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient applicationIsInstalledOnDeviceWithPairingID:withCompanionBundleID:completion:]", v24, v25];
  v12 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v11];

  if (!v12)
  {
    v27 = 0;
    v13 = [(ACXDeviceConnectionClient *)self _deviceForPairingID:v8 error:&v27];
    v14 = v27;
    v15 = v14;
    if (!v13)
    {
      v10[2](v10, 0, v14);
      v17 = v15;
LABEL_18:

      goto LABEL_19;
    }

    v26 = v14;
    v16 = [(ACXDeviceConnectionClient *)self _applicationIsInstalledOnDevice:v13 withCompanionBundleID:v9 error:&v26];
    v17 = v26;

    if (v16)
    {
      v18 = v10[2];
      v19 = v10;
      v20 = 1;
LABEL_14:
      v23 = 0;
LABEL_17:
      v18(v19, v20, v23);
      goto LABEL_18;
    }

    if (v17)
    {
      v21 = [v17 domain];
      if ([v21 isEqualToString:@"ACXErrorDomain"])
      {
        v22 = [v17 code];

        if (v22 == 19)
        {
          goto LABEL_13;
        }
      }

      else
      {
      }

      v18 = v10[2];
      v19 = v10;
      v20 = 0;
      v23 = v17;
      goto LABEL_17;
    }

LABEL_13:
    v18 = v10[2];
    v19 = v10;
    v20 = 0;
    goto LABEL_14;
  }

  v10[2](v10, 0, v12);
LABEL_19:
}

- (void)applicationIsInstalledOnAnyPairedDeviceWithBundleID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v17 = [(ACXDeviceConnectionClient *)self clientName];
    v18 = v6;
    MOLogWrite();
  }

  v8 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient applicationIsInstalledOnAnyPairedDeviceWithBundleID:completion:]", v17, v18];
  v9 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v8];

  if (v9)
  {
    v7[2](v7, 0, v9);
  }

  else
  {
    v10 = [(ACXDeviceConnectionClient *)self deviceManager];
    v11 = [v10 allDevices];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = v11;
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

          if ([(ACXDeviceConnectionClient *)self _applicationIsInstalledOnDevice:*(*(&v19 + 1) + 8 * v16) withBundleID:v6 error:0])
          {
            v7[2](v7, 1, 0);

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

    v7[2](v7, 0, 0);
LABEL_16:
  }
}

- (void)applicationIsInstalledOnAnyPairedDeviceWithCompanionBundleID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v17 = [(ACXDeviceConnectionClient *)self clientName];
    v18 = v6;
    MOLogWrite();
  }

  v8 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient applicationIsInstalledOnAnyPairedDeviceWithCompanionBundleID:completion:]", v17, v18];
  v9 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v8];

  if (v9)
  {
    v7[2](v7, 0, v9);
  }

  else
  {
    v10 = [(ACXDeviceConnectionClient *)self deviceManager];
    v11 = [v10 allDevices];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = v11;
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

          if ([(ACXDeviceConnectionClient *)self _applicationIsInstalledOnDevice:*(*(&v19 + 1) + 8 * v16) withCompanionBundleID:v6 error:0])
          {
            v7[2](v7, 1, 0);

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

    v7[2](v7, 0, 0);
LABEL_16:
  }
}

- (void)fetchApplicationDatabaseSyncInformationForDeviceWithPairingID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v19 = [(ACXDeviceConnectionClient *)self clientName];
    v20 = v6;
    MOLogWrite();
  }

  v8 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient fetchApplicationDatabaseSyncInformationForDeviceWithPairingID:completion:]", v19, v20];
  v9 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v8];

  if (v9)
  {
    (*(v7 + 2))(v7, 0, 0, v9);
  }

  else
  {
    v24 = 0;
    v10 = [(ACXDeviceConnectionClient *)self _deviceForPairingID:v6 error:&v24];
    v11 = v24;
    if (v10)
    {
      v12 = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
      v13 = [v12 connectionForDevice:v10];

      if ([v13 supportsRemoteAppList])
      {
        v23 = 0;
        v14 = [v13 remoteAppList];
        v22 = 0;
        [v14 getCurrentDBUUID:&v22 sequenceNumber:&v23];
        v15 = v22;

        (*(v7 + 2))(v7, v15, v23, 0);
      }

      else
      {
        v16 = [v6 UUIDString];
        v21 = [(ACXDeviceConnectionClient *)self clientName];
        v18 = sub_1000061DC("[ACXDeviceConnectionClient fetchApplicationDatabaseSyncInformationForDeviceWithPairingID:completion:]", 1493, @"ACXErrorDomain", 44, 0, 0, @"Remote app queries are not supported for device with pairing ID %@ (requested by %@)", v17, v16);

        (*(v7 + 2))(v7, 0, 0, v18);
        v11 = v18;
      }
    }

    else
    {
      (*(v7 + 2))(v7, 0, 0, v11);
    }
  }
}

- (void)fetchLocalizedValuesFromAllDevicesForInfoPlistKeys:(id)a3 forAppWithBundleID:(id)a4 fetchingFirstMatchingLocalizationInList:(id)a5 completion:(id)a6
{
  v40 = a3;
  v42 = a4;
  v39 = a5;
  v10 = a6;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    [(ACXDeviceConnectionClient *)self clientName];
    v35 = v40;
    v32 = v36 = v39;
    v33 = v42;
    MOLogWrite();
  }

  v11 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient fetchLocalizedValuesFromAllDevicesForInfoPlistKeys:forAppWithBundleID:fetchingFirstMatchingLocalizationInList:completion:]", v32, v33, v35, v36];
  v12 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v11];

  if (v12)
  {
    v10[2](v10, 0, v12);
  }

  else
  {
    v37 = v10;
    v38 = objc_opt_new();
    v13 = [(ACXDeviceConnectionClient *)self deviceManager];
    v14 = [v13 allDevices];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = v14;
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
          v21 = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
          v22 = [v21 connectionForDevice:v19];

          if ([v22 supportsRemoteAppList])
          {
            v23 = [v19 pairingID];
            v24 = [v22 remoteAppList];
            v43 = 0;
            v25 = [v24 applicationForBundleID:v42 error:&v43];
            v26 = v43;

            if (v25)
            {
              v27 = [v25 localizedInfoPlistStringsForKeys:v40 fetchingFirstMatchingLocalizationInList:v39];
              if ([v27 count])
              {
                [v38 setObject:v27 forKeyedSubscript:v23];
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

    v10 = v37;
    if ([v38 count])
    {
      (v37)[2](v37, v38, 0);
    }

    else
    {
      v34 = [(ACXDeviceConnectionClient *)self clientName];
      v31 = sub_100001B04("[ACXDeviceConnectionClient fetchLocalizedValuesFromAllDevicesForInfoPlistKeys:forAppWithBundleID:fetchingFirstMatchingLocalizationInList:completion:]", 1545, @"ACXErrorDomain", 19, @"No app was found on any device with the bundle ID %@, or the keys requested were not set in any instance of the app. (requested by %@)", v28, v29, v30, v42);
      v37[2](v37, 0, v31);
    }

    v12 = 0;
  }
}

- (void)fetchInstallableSystemAppBundleIDsForDeviceWithPairingID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v19 = [(ACXDeviceConnectionClient *)self clientName];
    v20 = v6;
    MOLogWrite();
  }

  v8 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient fetchInstallableSystemAppBundleIDsForDeviceWithPairingID:completion:]", v19, v20];
  v9 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v8];

  if (v9)
  {
    v7[2](v7, 0, v9);
  }

  else
  {
    v22 = 0;
    v10 = [(ACXDeviceConnectionClient *)self _deviceForPairingID:v6 error:&v22];
    v11 = v22;
    if (v10)
    {
      v12 = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
      v13 = [v12 connectionForDevice:v10];

      v14 = [v13 availableSystemAppList];
      v15 = v14;
      if (v14)
      {
        v16 = [v14 bundleIDsOfInstallableSystemApps];
        v17 = [v16 allObjects];
        (v7)[2](v7, v17, 0);
      }

      else
      {
        v16 = [(ACXDeviceConnectionClient *)self applicationManager];
        v17 = [v16 bundleIDsOfLocallyAvailableSystemAppsForPreWatchOSSix];
        [v17 allObjects];
        v18 = v21 = v11;
        (v7)[2](v7, v18, 0);

        v11 = v21;
      }
    }

    else
    {
      v7[2](v7, 0, v11);
    }
  }
}

- (void)fetchInstallableSystemAppWithBundleID:(id)a3 forDeviceWithPairingID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    [(ACXDeviceConnectionClient *)self clientName];
    v21 = v8;
    v20 = v22 = v9;
    MOLogWrite();
  }

  v11 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient fetchInstallableSystemAppWithBundleID:forDeviceWithPairingID:completion:]", v20, v21, v22];
  v12 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v11];

  if (v12)
  {
    v10[2](v10, 0, v12);
  }

  else
  {
    v25 = 0;
    v13 = [(ACXDeviceConnectionClient *)self _deviceForPairingID:v9 error:&v25];
    v14 = v25;
    if (v13)
    {
      v15 = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
      v16 = [v15 connectionForDevice:v13];

      v17 = [v16 availableSystemAppList];

      if (v17)
      {
        v24 = 0;
        v18 = [v17 installableSystemAppWithBundleID:v8 error:&v24];
        v14 = v24;
      }

      else
      {
        v19 = [(ACXDeviceConnectionClient *)self applicationManager];
        v23 = 0;
        v18 = [v19 availableSystemAppWithBundleID:v8 error:&v23];
        v14 = v23;
      }

      (v10)[2](v10, v18, v14);
    }

    else
    {
      v10[2](v10, 0, v14);
    }
  }
}

- (void)systemAppIsInstallableOnDeviceWithPairingID:(id)a3 withBundleID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    [(ACXDeviceConnectionClient *)self clientName];
    v22 = v9;
    v21 = v23 = v8;
    MOLogWrite();
  }

  v11 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient systemAppIsInstallableOnDeviceWithPairingID:withBundleID:completion:]", v21, v22, v23];
  v12 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v11];

  if (v12)
  {
    v10[2](v10, 0, v12);
  }

  else
  {
    v26 = 0;
    v13 = [(ACXDeviceConnectionClient *)self _deviceForPairingID:v8 error:&v26];
    v14 = v26;
    if (v13)
    {
      v15 = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
      v16 = [v15 connectionForDevice:v13];

      v17 = [v16 availableSystemAppList];

      if (v17)
      {
        v25 = 0;
        v18 = [v17 systemAppIsInstallableWithBundleID:v9 error:&v25];
        v14 = v25;
        (v10)[2](v10, v18, v14);
      }

      else
      {
        v19 = [(ACXDeviceConnectionClient *)self applicationManager];
        v24 = 0;
        v20 = [v19 systemAppIsAvailableWithBundleID:v9 error:&v24];
        v14 = v24;

        (v10)[2](v10, v20, v14);
      }
    }

    else
    {
      v10[2](v10, 0, v14);
    }
  }
}

- (void)acknowledgeTestFlightInstallBegunForApp:(id)a3 forDeviceWithPairingID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    [(ACXDeviceConnectionClient *)self clientName];
    v21 = v8;
    v20 = v22 = v9;
    MOLogWrite();
  }

  v11 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient acknowledgeTestFlightInstallBegunForApp:forDeviceWithPairingID:completion:]", v20, v21, v22];
  v12 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v11];

  if (v12)
  {
    v10[2](v10, v12);
  }

  else
  {
    v24 = 0;
    v13 = [(ACXDeviceConnectionClient *)self _deviceForPairingID:v9 error:&v24];
    v14 = v24;
    if (v13)
    {
      if ([v13 isReachable])
      {
        v15 = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
        v16 = [v15 connectionForDevice:v13];

        [v16 acknowledgeTestFlightInstallBegunForWatchApp:v8];
        v10[2](v10, 0);
      }

      else
      {
        v17 = [v9 UUIDString];
        v23 = [(ACXDeviceConnectionClient *)self clientName];
        v19 = sub_1000061DC("[ACXDeviceConnectionClient acknowledgeTestFlightInstallBegunForApp:forDeviceWithPairingID:completion:]", 1696, @"ACXErrorDomain", 55, 0, 0, @"Ignoring request to send message to gizmo about test flight install begun for app %@ as the device with pairing ID %@ isn't reachable (requested by %@)", v18, v8);

        v10[2](v10, v19);
        v14 = v19;
      }
    }

    else
    {
      v10[2](v10, v14);
    }
  }
}

- (void)applicationRemovabilityOnDeviceWithPairingID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v15 = [(ACXDeviceConnectionClient *)self clientName];
    v16 = v6;
    MOLogWrite();
  }

  v8 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient applicationRemovabilityOnDeviceWithPairingID:completion:]", v15, v16];
  v9 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v8];

  if (v9)
  {
    v7[2](v7, 0, v9);
  }

  else
  {
    v17 = 0;
    v10 = [(ACXDeviceConnectionClient *)self _deviceForPairingID:v6 error:&v17];
    v11 = v17;
    if (v10)
    {
      v12 = [(ACXDeviceConnectionClient *)self companionSyncConnectionManager];
      v13 = [v12 connectionForDevice:v10];

      v14 = [v13 removabilityForRemoteApps];
      (v7)[2](v7, v14, 0);
    }

    else
    {
      v7[2](v7, 0, v11);
    }
  }
}

- (void)killDaemonForTesting:(id)a3
{
  v8 = a3;
  v4 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient killDaemonForTesting:]"];
  v5 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v4];

  if (!v5)
  {
    v6 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companion.AppConduitTestRunner" forRequestType:@"kill daemon for testing"];
    if (!v6)
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
      {
        v7 = [(ACXDeviceConnectionClient *)self clientName];
        MOLogWrite();
      }

      exit(0);
    }

    v5 = v6;
  }

  v8[2](v8, v5);
}

- (void)fetchDuplicatedClassInfo:(id)a3
{
  v6 = a3;
  v4 = [NSString stringWithUTF8String:"[ACXDeviceConnectionClient fetchDuplicatedClassInfo:]"];
  v5 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companionappd.connect.allow" forRequestType:v4];

  if (v5)
  {
    v6[2](v6, 0, v5);
  }

  else
  {
    v5 = [(ACXDeviceConnectionClient *)self _hasEntitlement:@"com.apple.companion.AppConduitTestRunner" forRequestType:@"fetch duplicated class info"];
    if (!v5)
    {
      v5 = sub_100008448(0);
    }

    (v6[2])();
  }
}

@end