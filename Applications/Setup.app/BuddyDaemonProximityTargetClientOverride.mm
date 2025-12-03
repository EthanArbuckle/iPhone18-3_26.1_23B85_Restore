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
- (void)displayProximityPinCode:(id)code visual:(BOOL)visual;
- (void)endAdvertisingProximitySetup;
- (void)endDeviceToDeviceMigration;
- (void)endPairing;
- (void)endSIMSetupExternalAuthentication;
- (void)finishAccountSetupWithIntent:(int64_t)intent;
- (void)finishPairing;
- (void)hasConnection:(id)connection;
- (void)proximityConnectionInitiated;
- (void)proximityConnectionPreparing:(id)preparing;
- (void)proximityConnectionReconnected;
- (void)proximityConnectionTerminated;
- (void)proximitySetupCompleted:(id)completed;
- (void)receivedLanguages:(id)languages locale:(id)locale model:(id)model deviceClass:(id)class accessibilitySettings:(id)settings;
- (void)resumeProximitySetup:(id)setup;
- (void)showMigrationInterfaceOnSource;
- (void)storeHandshake:(id)handshake;
- (void)storeInformation:(id)information;
- (void)suspendConnectionForSoftwareUpdate:(id)update;
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
    connection = [(BuddyDaemonProximityTargetClientOverride *)self connection];
    [(NSXPCConnection *)connection setExportedInterface:v3];

    connection2 = [(BuddyDaemonProximityTargetClientOverride *)self connection];
    [(NSXPCConnection *)connection2 setExportedObject:self];

    v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BYDaemonProximityTargetClientConnectionOverride];
    connection3 = [(BuddyDaemonProximityTargetClientOverride *)self connection];
    [(NSXPCConnection *)connection3 setRemoteObjectInterface:v6];

    connection4 = [(BuddyDaemonProximityTargetClientOverride *)self connection];
    [(NSXPCConnection *)connection4 setInvalidationHandler:&stru_10032C408];

    connection5 = [(BuddyDaemonProximityTargetClientOverride *)self connection];
    [(NSXPCConnection *)connection5 setInterruptionHandler:&stru_10032C428];

    connection6 = [(BuddyDaemonProximityTargetClientOverride *)self connection];
    [(NSXPCConnection *)connection6 resume];
  }
}

- (void)dismissProximityPinCode
{
  v2 = [(BuddyDaemonProximityTargetClientOverride *)self delegate:a2];
  [(BYBuddyDaemonProximityTargetProtocol *)v2 dismissProximityPinCode];
}

- (void)displayProximityPinCode:(id)code visual:(BOOL)visual
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, code);
  visualCopy = visual;
  delegate = [(BuddyDaemonProximityTargetClientOverride *)selfCopy delegate];
  [(BYBuddyDaemonProximityTargetProtocol *)delegate displayProximityPinCode:location[0] visual:visualCopy];

  objc_storeStrong(location, 0);
}

- (void)proximityConnectionInitiated
{
  v2 = [(BuddyDaemonProximityTargetClientOverride *)self delegate:a2];
  [(BYBuddyDaemonProximityTargetProtocol *)v2 proximityConnectionInitiated];
}

- (void)proximityConnectionPreparing:(id)preparing
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, preparing);
  delegate = [(BuddyDaemonProximityTargetClientOverride *)selfCopy delegate];
  [(BYBuddyDaemonProximityTargetProtocol *)delegate proximityConnectionPreparing:location[0]];

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

- (void)proximitySetupCompleted:(id)completed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completed);
  delegate = [(BuddyDaemonProximityTargetClientOverride *)selfCopy delegate];
  [(BYBuddyDaemonProximityTargetProtocol *)delegate proximitySetupCompleted:location[0]];

  objc_storeStrong(location, 0);
}

- (void)receivedLanguages:(id)languages locale:(id)locale model:(id)model deviceClass:(id)class accessibilitySettings:(id)settings
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, languages);
  v15 = 0;
  objc_storeStrong(&v15, locale);
  v14 = 0;
  objc_storeStrong(&v14, model);
  v13 = 0;
  objc_storeStrong(&v13, class);
  v12 = 0;
  objc_storeStrong(&v12, settings);
  delegate = [(BuddyDaemonProximityTargetClientOverride *)selfCopy delegate];
  [(BYBuddyDaemonProximityTargetProtocol *)delegate receivedLanguages:location[0] locale:v15 model:v14 deviceClass:v13 accessibilitySettings:v12];

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

- (void)finishAccountSetupWithIntent:(int64_t)intent
{
  intentSelectionDelegate = [(BuddyDaemonProximityTargetClientOverride *)self intentSelectionDelegate];
  [(BYBuddyDependentViewPresenterDelegateOverride *)intentSelectionDelegate finishAccountSetupWithIntent:intent];
}

- (id)remoteObject
{
  v2 = [(BuddyDaemonProximityTargetClientOverride *)self connection:a2];
  remoteObjectProxy = [(NSXPCConnection *)v2 remoteObjectProxy];

  return remoteObjectProxy;
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

- (void)hasConnection:(id)connection
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, connection);
  objc_storeStrong(location, 0);
}

- (void)resumeProximitySetup:(id)setup
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, setup);
  remoteObject = [(BuddyDaemonProximityTargetClientOverride *)selfCopy remoteObject];
  [remoteObject resumeProximitySetup:location[0]];

  objc_storeStrong(location, 0);
}

- (void)showMigrationInterfaceOnSource
{
  v2 = [(BuddyDaemonProximityTargetClientOverride *)self remoteObject:a2];
  [v2 showMigrationInterfaceOnSource];
}

- (void)storeHandshake:(id)handshake
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handshake);
  remoteObject = [(BuddyDaemonProximityTargetClientOverride *)selfCopy remoteObject];
  [remoteObject storeHandshake:location[0]];

  objc_storeStrong(location, 0);
}

- (void)storeInformation:(id)information
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, information);
  remoteObject = [(BuddyDaemonProximityTargetClientOverride *)selfCopy remoteObject];
  [remoteObject storeInformation:location[0]];

  objc_storeStrong(location, 0);
}

- (void)suspendConnectionForSoftwareUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  remoteObject = [(BuddyDaemonProximityTargetClientOverride *)selfCopy remoteObject];
  [remoteObject suspendConnectionForSoftwareUpdate:location[0]];

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
  connection = [(BuddyDaemonProximityTargetClientOverride *)self connection];
  v3 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:&stru_10032C448];
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