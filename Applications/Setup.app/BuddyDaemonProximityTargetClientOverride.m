@interface BuddyDaemonProximityTargetClientOverride
- (BYBuddyDaemonProximityTargetProtocol)delegate;
- (BYBuddyDependentViewPresenterDelegateOverride)intentSelectionDelegate;
- (BYBuddySetupCTLProximityMessageSessionDelegate)proximitySessionMessageSessionDelegate;
- (BuddyDaemonProximityTargetClientOverride)init;
- (id)fileTransferSessionTemplate;
- (id)remoteObject;
- (void)beginAdvertisingProximitySetup;
- (void)beginSIMSetupExternalAuthentication;
- (void)connectToDaemon;
- (void)dismissProximityPinCode;
- (void)displayProximityPinCode:(id)a3 visual:(BOOL)a4;
- (void)endAdvertisingProximitySetup;
- (void)endDeviceToDeviceMigration;
- (void)endPairing;
- (void)endSIMSetupExternalAuthentication;
- (void)finishAccountSetupWithIntent:(int64_t)a3;
- (void)finishPairing;
- (void)hasConnection:(id)a3;
- (void)proximityConnectionInitiated;
- (void)proximityConnectionPreparing:(id)a3;
- (void)proximityConnectionReconnected;
- (void)proximityConnectionTerminated;
- (void)proximitySetupCompleted:(id)a3;
- (void)receivedLanguages:(id)a3 locale:(id)a4 model:(id)a5 deviceClass:(id)a6 accessibilitySettings:(id)a7;
- (void)resumeProximitySetup:(id)a3;
- (void)showMigrationInterfaceOnSource;
- (void)storeHandshake:(id)a3;
- (void)storeInformation:(id)a3;
- (void)suspendConnectionForSoftwareUpdate:(id)a3;
@end

@implementation BuddyDaemonProximityTargetClientOverride

- (BuddyDaemonProximityTargetClientOverride)init
{
  v6 = a2;
  location = 0;
  v5.receiver = self;
  v5.super_class = BuddyDaemonProximityTargetClientOverride;
  v2 = [(BuddyDaemonProximityTargetClientOverride *)&v5 init];
  location = v2;
  objc_storeStrong(&location, v2);
  if (v2)
  {
    [location connectToDaemon];
  }

  v3 = location;
  objc_storeStrong(&location, 0);
  return v3;
}

- (void)connectToDaemon
{
  if (([BuddyOverrideUtilities useOverridesFor:2, a2]& 1) != 0)
  {
    v2 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.purplebuddy.setup.budd.proximity.override.xpc" options:0];
    [(BuddyDaemonProximityTargetClientOverride *)self setConnection:v2];

    v3 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BuddyDaemonProximityTargetClientProtocolOverride];
    v4 = [(BuddyDaemonProximityTargetClientOverride *)self connection];
    [(NSXPCConnection *)v4 setExportedInterface:v3];

    v5 = [(BuddyDaemonProximityTargetClientOverride *)self connection];
    [(NSXPCConnection *)v5 setExportedObject:self];

    v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BYDaemonProximityTargetClientConnectionOverride];
    v7 = [(BuddyDaemonProximityTargetClientOverride *)self connection];
    [(NSXPCConnection *)v7 setRemoteObjectInterface:v6];

    v8 = [(BuddyDaemonProximityTargetClientOverride *)self connection];
    [(NSXPCConnection *)v8 setInvalidationHandler:&stru_10032C408];

    v9 = [(BuddyDaemonProximityTargetClientOverride *)self connection];
    [(NSXPCConnection *)v9 setInterruptionHandler:&stru_10032C428];

    v10 = [(BuddyDaemonProximityTargetClientOverride *)self connection];
    [(NSXPCConnection *)v10 resume];
  }
}

- (void)dismissProximityPinCode
{
  v2 = [(BuddyDaemonProximityTargetClientOverride *)self delegate:a2];
  [(BYBuddyDaemonProximityTargetProtocol *)v2 dismissProximityPinCode];
}

- (void)displayProximityPinCode:(id)a3 visual:(BOOL)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = a4;
  v5 = [(BuddyDaemonProximityTargetClientOverride *)v8 delegate];
  [(BYBuddyDaemonProximityTargetProtocol *)v5 displayProximityPinCode:location[0] visual:v6];

  objc_storeStrong(location, 0);
}

- (void)proximityConnectionInitiated
{
  v2 = [(BuddyDaemonProximityTargetClientOverride *)self delegate:a2];
  [(BYBuddyDaemonProximityTargetProtocol *)v2 proximityConnectionInitiated];
}

- (void)proximityConnectionPreparing:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyDaemonProximityTargetClientOverride *)v5 delegate];
  [(BYBuddyDaemonProximityTargetProtocol *)v3 proximityConnectionPreparing:location[0]];

  objc_storeStrong(location, 0);
}

- (void)proximityConnectionReconnected
{
  v2 = [(BuddyDaemonProximityTargetClientOverride *)self delegate:a2];
  [(BYBuddyDaemonProximityTargetProtocol *)v2 proximityConnectionReconnected];
}

- (void)proximityConnectionTerminated
{
  v2 = [(BuddyDaemonProximityTargetClientOverride *)self delegate:a2];
  [(BYBuddyDaemonProximityTargetProtocol *)v2 proximityConnectionTerminated];
}

- (void)proximitySetupCompleted:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyDaemonProximityTargetClientOverride *)v5 delegate];
  [(BYBuddyDaemonProximityTargetProtocol *)v3 proximitySetupCompleted:location[0]];

  objc_storeStrong(location, 0);
}

- (void)receivedLanguages:(id)a3 locale:(id)a4 model:(id)a5 deviceClass:(id)a6 accessibilitySettings:(id)a7
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = 0;
  objc_storeStrong(&v14, a5);
  v13 = 0;
  objc_storeStrong(&v13, a6);
  v12 = 0;
  objc_storeStrong(&v12, a7);
  v11 = [(BuddyDaemonProximityTargetClientOverride *)v17 delegate];
  [(BYBuddyDaemonProximityTargetProtocol *)v11 receivedLanguages:location[0] locale:v15 model:v14 deviceClass:v13 accessibilitySettings:v12];

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)finishPairing
{
  v2 = [(BuddyDaemonProximityTargetClientOverride *)self proximitySessionMessageSessionDelegate:a2];
  [(BYBuddySetupCTLProximityMessageSessionDelegate *)v2 finishPairing];
}

- (void)finishAccountSetupWithIntent:(int64_t)a3
{
  v3 = [(BuddyDaemonProximityTargetClientOverride *)self intentSelectionDelegate];
  [(BYBuddyDependentViewPresenterDelegateOverride *)v3 finishAccountSetupWithIntent:a3];
}

- (id)remoteObject
{
  v2 = [(BuddyDaemonProximityTargetClientOverride *)self connection:a2];
  v3 = [(NSXPCConnection *)v2 remoteObjectProxy];

  return v3;
}

- (void)beginAdvertisingProximitySetup
{
  v2 = [(BuddyDaemonProximityTargetClientOverride *)self remoteObject:a2];
  [v2 beginAdvertisingProximitySetup];
}

- (void)beginSIMSetupExternalAuthentication
{
  v2 = [(BuddyDaemonProximityTargetClientOverride *)self remoteObject:a2];
  [v2 beginSIMSetupExternalAuthentication];
}

- (void)endAdvertisingProximitySetup
{
  v2 = [(BuddyDaemonProximityTargetClientOverride *)self remoteObject:a2];
  [v2 endAdvertisingProximitySetup];
}

- (void)endDeviceToDeviceMigration
{
  v2 = [(BuddyDaemonProximityTargetClientOverride *)self remoteObject:a2];
  [v2 endDeviceToDeviceMigration];
}

- (void)endPairing
{
  v2 = [(BuddyDaemonProximityTargetClientOverride *)self remoteObject:a2];
  [v2 endPairing];
}

- (void)endSIMSetupExternalAuthentication
{
  v2 = [(BuddyDaemonProximityTargetClientOverride *)self remoteObject:a2];
  [v2 endSIMSetupExternalAuthentication];
}

- (void)hasConnection:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)resumeProximitySetup:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyDaemonProximityTargetClientOverride *)v5 remoteObject];
  [v3 resumeProximitySetup:location[0]];

  objc_storeStrong(location, 0);
}

- (void)showMigrationInterfaceOnSource
{
  v2 = [(BuddyDaemonProximityTargetClientOverride *)self remoteObject:a2];
  [v2 showMigrationInterfaceOnSource];
}

- (void)storeHandshake:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyDaemonProximityTargetClientOverride *)v5 remoteObject];
  [v3 storeHandshake:location[0]];

  objc_storeStrong(location, 0);
}

- (void)storeInformation:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyDaemonProximityTargetClientOverride *)v5 remoteObject];
  [v3 storeInformation:location[0]];

  objc_storeStrong(location, 0);
}

- (void)suspendConnectionForSoftwareUpdate:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyDaemonProximityTargetClientOverride *)v5 remoteObject];
  [v3 suspendConnectionForSoftwareUpdate:location[0]];

  objc_storeStrong(location, 0);
}

- (id)fileTransferSessionTemplate
{
  v18[2] = self;
  v18[1] = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 838860800;
  v15 = 48;
  v16 = sub_1000C6C10;
  v17 = sub_1000C6C54;
  v18[0] = 0;
  v2 = [(BuddyDaemonProximityTargetClientOverride *)self connection];
  v3 = [(NSXPCConnection *)v2 synchronousRemoteObjectProxyWithErrorHandler:&stru_10032C448];
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_1000C6E10;
  v10 = &unk_10032C470;
  v11 = &v12;
  [v3 fileTransferSessionTemplate:&v6];

  v4 = v13[5];
  _Block_object_dispose(&v12, 8);
  objc_storeStrong(v18, 0);

  return v4;
}

- (BYBuddyDaemonProximityTargetProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BYBuddySetupCTLProximityMessageSessionDelegate)proximitySessionMessageSessionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_proximitySessionMessageSessionDelegate);

  return WeakRetained;
}

- (BYBuddyDependentViewPresenterDelegateOverride)intentSelectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_intentSelectionDelegate);

  return WeakRetained;
}

@end