@interface BYDaemonProximityTargetClientConnectionOverride
- (BYDaemonProximityTargetClientConnectionOverride)init;
- (id)remoteObject;
- (void)dismissProximityPinCode;
- (void)displayProximityPinCode:(id)code visual:(BOOL)visual;
- (void)doWithSetupCtlConnections:(id)connections;
- (void)executeFileTransferSessionTemplateWithError:(BOOL)error;
- (void)executeResumeConnectionCompletionWithHandshake;
- (void)executeSuspendConnectionForSoftwareUpdateCompletion;
- (void)fileTransferSessionTemplate:(id)template;
- (void)finishAccountSetupWithIntent:(int64_t)intent;
- (void)finishPairing;
- (void)hasConnection:(id)connection;
- (void)hasHandshake:(id)handshake;
- (void)hasProximityInformation:(id)information;
- (void)isAdvertising:(id)advertising;
- (void)isConnected:(id)connected;
- (void)isShowingPairingCode:(id)code;
- (void)proximityConnectionInitiated;
- (void)proximityConnectionPreparing:(id)preparing;
- (void)proximityConnectionReconnected;
- (void)proximityConnectionTerminated;
- (void)proximitySetupCompleted:(id)completed;
- (void)receivedLanguages:(id)languages locale:(id)locale model:(id)model deviceClass:(id)class accessibilitySettings:(id)settings;
- (void)resumeProximitySetup:(id)setup;
- (void)storeHandshake:(id)handshake;
- (void)storeInformation:(id)information;
- (void)suspendConnectionForSoftwareUpdate:(id)update;
@end

@implementation BYDaemonProximityTargetClientConnectionOverride

- (BYDaemonProximityTargetClientConnectionOverride)init
{
  v6 = a2;
  location = 0;
  v5.receiver = self;
  v5.super_class = BYDaemonProximityTargetClientConnectionOverride;
  location = [(BYDaemonProximityTargetClientConnectionOverride *)&v5 init];
  objc_storeStrong(&location, location);
  if (location)
  {
    v2 = objc_opt_new();
    [location setSetupCtlConnections:v2];
  }

  v3 = location;
  objc_storeStrong(&location, 0);
  return v3;
}

- (id)remoteObject
{
  selfCopy = self;
  oslog[1] = a2;
  setupConnection = [(BYDaemonProximityTargetClientConnectionOverride *)self setupConnection];

  if (setupConnection)
  {
    setupConnection2 = [(BYDaemonProximityTargetClientConnectionOverride *)selfCopy setupConnection];
    remoteObjectProxy = [(NSXPCConnection *)setupConnection2 remoteObjectProxy];
  }

  else
  {
    oslog[0] = _BYLoggingFacility();
    v9 = 16;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v3 = oslog[0];
      v4 = v9;
      sub_10006AA68(v8);
      _os_log_error_impl(&_mh_execute_header, v3, v4, "No connection to Setup", v8, 2u);
    }

    objc_storeStrong(oslog, 0);
    remoteObjectProxy = 0;
  }

  v6 = remoteObjectProxy;

  return v6;
}

- (void)dismissProximityPinCode
{
  [(BYDaemonProximityTargetClientConnectionOverride *)self setIsShowingPairingCode:0, a2];
  remoteObject = [(BYDaemonProximityTargetClientConnectionOverride *)self remoteObject];
  [remoteObject dismissProximityPinCode];
}

- (void)displayProximityPinCode:(id)code visual:(BOOL)visual
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, code);
  visualCopy = visual;
  [(BYDaemonProximityTargetClientConnectionOverride *)selfCopy setIsShowingPairingCode:1];
  remoteObject = [(BYDaemonProximityTargetClientConnectionOverride *)selfCopy remoteObject];
  [remoteObject displayProximityPinCode:location[0] visual:visualCopy];

  objc_storeStrong(location, 0);
}

- (void)proximityConnectionInitiated
{
  [(BYDaemonProximityTargetClientConnectionOverride *)self setIsConnected:1, a2];
  [(BYDaemonProximityTargetClientConnectionOverride *)self setIsShowingPairingCode:0];
  remoteObject = [(BYDaemonProximityTargetClientConnectionOverride *)self remoteObject];
  [remoteObject proximityConnectionInitiated];
}

- (void)proximityConnectionReconnected
{
  [(BYDaemonProximityTargetClientConnectionOverride *)self setIsConnected:1, a2];
  remoteObject = [(BYDaemonProximityTargetClientConnectionOverride *)self remoteObject];
  [remoteObject proximityConnectionReconnected];
}

- (void)proximityConnectionTerminated
{
  [(BYDaemonProximityTargetClientConnectionOverride *)self setIsConnected:0, a2];
  remoteObject = [(BYDaemonProximityTargetClientConnectionOverride *)self remoteObject];
  [remoteObject proximityConnectionTerminated];
}

- (void)proximityConnectionPreparing:(id)preparing
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, preparing);
  remoteObject = [(BYDaemonProximityTargetClientConnectionOverride *)selfCopy remoteObject];
  [remoteObject proximityConnectionPreparing:location[0]];

  objc_storeStrong(location, 0);
}

- (void)proximitySetupCompleted:(id)completed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completed);
  [(BYDaemonProximityTargetClientConnectionOverride *)selfCopy setIsShowingPairingCode:0];
  remoteObject = [(BYDaemonProximityTargetClientConnectionOverride *)selfCopy remoteObject];
  [remoteObject proximitySetupCompleted:location[0]];

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
  remoteObject = [(BYDaemonProximityTargetClientConnectionOverride *)selfCopy remoteObject];
  [remoteObject receivedLanguages:location[0] locale:v15 model:v14 deviceClass:v13 accessibilitySettings:v12];

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)finishPairing
{
  v2 = [(BYDaemonProximityTargetClientConnectionOverride *)self setupConnection:a2];
  remoteObjectProxy = [(NSXPCConnection *)v2 remoteObjectProxy];
  [remoteObjectProxy finishPairing];
}

- (void)finishAccountSetupWithIntent:(int64_t)intent
{
  setupConnection = [(BYDaemonProximityTargetClientConnectionOverride *)self setupConnection];
  remoteObjectProxy = [(NSXPCConnection *)setupConnection remoteObjectProxy];
  [remoteObjectProxy finishAccountSetupWithIntent:intent];
}

- (void)hasConnection:(id)connection
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, connection);
  (*(location[0] + 2))(location[0], [(BYDaemonProximityTargetClientConnectionOverride *)selfCopy isConnected]);
  [(BYDaemonProximityTargetClientConnectionOverride *)selfCopy doWithSetupCtlConnections:&stru_10032E7A8];
  objc_storeStrong(location, 0);
}

- (void)resumeProximitySetup:(id)setup
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, setup);
  objc_initWeak(&from, selfCopy);
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1001C8D24;
  v7 = &unk_10032E850;
  objc_copyWeak(&v9, &from);
  v8 = location[0];
  [(BYDaemonProximityTargetClientConnectionOverride *)selfCopy setResumeConnectionCompletion:&v3];
  [(BYDaemonProximityTargetClientConnectionOverride *)selfCopy doWithSetupCtlConnections:&stru_10032E870];
  objc_storeStrong(&v8, 0);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&from);
  objc_storeStrong(location, 0);
}

- (void)storeHandshake:(id)handshake
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handshake);
  [(BYDaemonProximityTargetClientConnectionOverride *)selfCopy setHandshake:location[0]];
  v3 = selfCopy;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001C8FE4;
  v8 = &unk_10032E8B8;
  v9 = location[0];
  [(BYDaemonProximityTargetClientConnectionOverride *)v3 doWithSetupCtlConnections:&v4];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)storeInformation:(id)information
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, information);
  [(BYDaemonProximityTargetClientConnectionOverride *)selfCopy setInformation:location[0]];
  v3 = selfCopy;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001C912C;
  v8 = &unk_10032E8B8;
  v9 = location[0];
  [(BYDaemonProximityTargetClientConnectionOverride *)v3 doWithSetupCtlConnections:&v4];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)suspendConnectionForSoftwareUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  [(BYDaemonProximityTargetClientConnectionOverride *)selfCopy setSuspendConnectionForSoftwareUpdateCompletion:location[0]];
  [(BYDaemonProximityTargetClientConnectionOverride *)selfCopy doWithSetupCtlConnections:&stru_10032E8D8];
  objc_storeStrong(location, 0);
}

- (void)fileTransferSessionTemplate:(id)template
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, template);
  [(BYDaemonProximityTargetClientConnectionOverride *)selfCopy setFileTransferSessionTemplateCompletion:location[0]];
  [(BYDaemonProximityTargetClientConnectionOverride *)selfCopy doWithSetupCtlConnections:&stru_10032E8F8];
  [(BYDaemonProximityTargetClientConnectionOverride *)selfCopy executeFileTransferSessionTemplateWithError:0];
  objc_storeStrong(location, 0);
}

- (void)doWithSetupCtlConnections:(id)connections
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, connections);
  setupCtlConnections = [(BYDaemonProximityTargetClientConnectionOverride *)selfCopy setupCtlConnections];
  v10 = [(NSMutableArray *)setupCtlConnections copy];

  memset(v8, 0, sizeof(v8));
  v4 = v10;
  v5 = [v4 countByEnumeratingWithState:v8 objects:v13 count:16];
  if (v5)
  {
    v6 = *v8[2];
    do
    {
      for (i = 0; i < v5; ++i)
      {
        if (*v8[2] != v6)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(v8[1] + 8 * i);
        if (v9)
        {
          (*(location[0] + 2))(location[0], v9);
        }
      }

      v5 = [v4 countByEnumeratingWithState:v8 objects:v13 count:16];
    }

    while (v5);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)executeFileTransferSessionTemplateWithError:(BOOL)error
{
  fileTransferSessionTemplateCompletion = [(BYDaemonProximityTargetClientConnectionOverride *)self fileTransferSessionTemplateCompletion];

  if (fileTransferSessionTemplateCompletion)
  {
    fileTransferSessionTemplateCompletion2 = [(BYDaemonProximityTargetClientConnectionOverride *)self fileTransferSessionTemplateCompletion];
    fileTransferSessionTemplateCompletion2[2](fileTransferSessionTemplateCompletion2, 0);

    [(BYDaemonProximityTargetClientConnectionOverride *)self setFileTransferSessionTemplateCompletion:0];
  }
}

- (void)executeResumeConnectionCompletionWithHandshake
{
  resumeConnectionCompletion = [(BYDaemonProximityTargetClientConnectionOverride *)self resumeConnectionCompletion];

  if (resumeConnectionCompletion)
  {
    resumeConnectionCompletion2 = [(BYDaemonProximityTargetClientConnectionOverride *)self resumeConnectionCompletion];
    resumeConnectionCompletion2[2](resumeConnectionCompletion2);

    [(BYDaemonProximityTargetClientConnectionOverride *)self setResumeConnectionCompletion:0];
  }
}

- (void)executeSuspendConnectionForSoftwareUpdateCompletion
{
  suspendConnectionForSoftwareUpdateCompletion = [(BYDaemonProximityTargetClientConnectionOverride *)self suspendConnectionForSoftwareUpdateCompletion];

  if (suspendConnectionForSoftwareUpdateCompletion)
  {
    suspendConnectionForSoftwareUpdateCompletion2 = [(BYDaemonProximityTargetClientConnectionOverride *)self suspendConnectionForSoftwareUpdateCompletion];
    suspendConnectionForSoftwareUpdateCompletion2[2](suspendConnectionForSoftwareUpdateCompletion2);

    [(BYDaemonProximityTargetClientConnectionOverride *)self setSuspendConnectionForSoftwareUpdateCompletion:0];
  }
}

- (void)hasHandshake:(id)handshake
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handshake);
  v3 = location[0];
  handshake = [(BYDaemonProximityTargetClientConnectionOverride *)selfCopy handshake];
  v3[2](v3, handshake != 0);

  objc_storeStrong(location, 0);
}

- (void)hasProximityInformation:(id)information
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, information);
  v3 = location[0];
  information = [(BYDaemonProximityTargetClientConnectionOverride *)selfCopy information];
  v3[2](v3, information != 0);

  objc_storeStrong(location, 0);
}

- (void)isAdvertising:(id)advertising
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, advertising);
  (*(location[0] + 2))(location[0], [(BYDaemonProximityTargetClientConnectionOverride *)selfCopy isAdvertising]);
  objc_storeStrong(location, 0);
}

- (void)isConnected:(id)connected
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, connected);
  (*(location[0] + 2))(location[0], [(BYDaemonProximityTargetClientConnectionOverride *)selfCopy isConnected]);
  objc_storeStrong(location, 0);
}

- (void)isShowingPairingCode:(id)code
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, code);
  (*(location[0] + 2))(location[0], [(BYDaemonProximityTargetClientConnectionOverride *)selfCopy isShowingPairingCode]);
  objc_storeStrong(location, 0);
}

@end