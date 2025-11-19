@interface BYDaemonProximityTargetClientConnectionOverride
- (BYDaemonProximityTargetClientConnectionOverride)init;
- (id)remoteObject;
- (void)dismissProximityPinCode;
- (void)displayProximityPinCode:(id)a3 visual:(BOOL)a4;
- (void)doWithSetupCtlConnections:(id)a3;
- (void)executeFileTransferSessionTemplateWithError:(BOOL)a3;
- (void)executeResumeConnectionCompletionWithHandshake;
- (void)executeSuspendConnectionForSoftwareUpdateCompletion;
- (void)fileTransferSessionTemplate:(id)a3;
- (void)finishAccountSetupWithIntent:(int64_t)a3;
- (void)finishPairing;
- (void)hasConnection:(id)a3;
- (void)hasHandshake:(id)a3;
- (void)hasProximityInformation:(id)a3;
- (void)isAdvertising:(id)a3;
- (void)isConnected:(id)a3;
- (void)isShowingPairingCode:(id)a3;
- (void)proximityConnectionInitiated;
- (void)proximityConnectionPreparing:(id)a3;
- (void)proximityConnectionReconnected;
- (void)proximityConnectionTerminated;
- (void)proximitySetupCompleted:(id)a3;
- (void)receivedLanguages:(id)a3 locale:(id)a4 model:(id)a5 deviceClass:(id)a6 accessibilitySettings:(id)a7;
- (void)resumeProximitySetup:(id)a3;
- (void)storeHandshake:(id)a3;
- (void)storeInformation:(id)a3;
- (void)suspendConnectionForSoftwareUpdate:(id)a3;
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
  v11 = self;
  oslog[1] = a2;
  v2 = [(BYDaemonProximityTargetClientConnectionOverride *)self setupConnection];

  if (v2)
  {
    v5 = [(BYDaemonProximityTargetClientConnectionOverride *)v11 setupConnection];
    v12 = [(NSXPCConnection *)v5 remoteObjectProxy];
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
    v12 = 0;
  }

  v6 = v12;

  return v6;
}

- (void)dismissProximityPinCode
{
  [(BYDaemonProximityTargetClientConnectionOverride *)self setIsShowingPairingCode:0, a2];
  v2 = [(BYDaemonProximityTargetClientConnectionOverride *)self remoteObject];
  [v2 dismissProximityPinCode];
}

- (void)displayProximityPinCode:(id)a3 visual:(BOOL)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = a4;
  [(BYDaemonProximityTargetClientConnectionOverride *)v8 setIsShowingPairingCode:1];
  v5 = [(BYDaemonProximityTargetClientConnectionOverride *)v8 remoteObject];
  [v5 displayProximityPinCode:location[0] visual:v6];

  objc_storeStrong(location, 0);
}

- (void)proximityConnectionInitiated
{
  [(BYDaemonProximityTargetClientConnectionOverride *)self setIsConnected:1, a2];
  [(BYDaemonProximityTargetClientConnectionOverride *)self setIsShowingPairingCode:0];
  v2 = [(BYDaemonProximityTargetClientConnectionOverride *)self remoteObject];
  [v2 proximityConnectionInitiated];
}

- (void)proximityConnectionReconnected
{
  [(BYDaemonProximityTargetClientConnectionOverride *)self setIsConnected:1, a2];
  v2 = [(BYDaemonProximityTargetClientConnectionOverride *)self remoteObject];
  [v2 proximityConnectionReconnected];
}

- (void)proximityConnectionTerminated
{
  [(BYDaemonProximityTargetClientConnectionOverride *)self setIsConnected:0, a2];
  v2 = [(BYDaemonProximityTargetClientConnectionOverride *)self remoteObject];
  [v2 proximityConnectionTerminated];
}

- (void)proximityConnectionPreparing:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BYDaemonProximityTargetClientConnectionOverride *)v5 remoteObject];
  [v3 proximityConnectionPreparing:location[0]];

  objc_storeStrong(location, 0);
}

- (void)proximitySetupCompleted:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BYDaemonProximityTargetClientConnectionOverride *)v5 setIsShowingPairingCode:0];
  v3 = [(BYDaemonProximityTargetClientConnectionOverride *)v5 remoteObject];
  [v3 proximitySetupCompleted:location[0]];

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
  v11 = [(BYDaemonProximityTargetClientConnectionOverride *)v17 remoteObject];
  [v11 receivedLanguages:location[0] locale:v15 model:v14 deviceClass:v13 accessibilitySettings:v12];

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)finishPairing
{
  v2 = [(BYDaemonProximityTargetClientConnectionOverride *)self setupConnection:a2];
  v3 = [(NSXPCConnection *)v2 remoteObjectProxy];
  [v3 finishPairing];
}

- (void)finishAccountSetupWithIntent:(int64_t)a3
{
  v3 = [(BYDaemonProximityTargetClientConnectionOverride *)self setupConnection];
  v4 = [(NSXPCConnection *)v3 remoteObjectProxy];
  [v4 finishAccountSetupWithIntent:a3];
}

- (void)hasConnection:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  (*(location[0] + 2))(location[0], [(BYDaemonProximityTargetClientConnectionOverride *)v4 isConnected]);
  [(BYDaemonProximityTargetClientConnectionOverride *)v4 doWithSetupCtlConnections:&stru_10032E7A8];
  objc_storeStrong(location, 0);
}

- (void)resumeProximitySetup:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_initWeak(&from, v12);
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1001C8D24;
  v7 = &unk_10032E850;
  objc_copyWeak(&v9, &from);
  v8 = location[0];
  [(BYDaemonProximityTargetClientConnectionOverride *)v12 setResumeConnectionCompletion:&v3];
  [(BYDaemonProximityTargetClientConnectionOverride *)v12 doWithSetupCtlConnections:&stru_10032E870];
  objc_storeStrong(&v8, 0);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&from);
  objc_storeStrong(location, 0);
}

- (void)storeHandshake:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BYDaemonProximityTargetClientConnectionOverride *)v11 setHandshake:location[0]];
  v3 = v11;
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

- (void)storeInformation:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BYDaemonProximityTargetClientConnectionOverride *)v11 setInformation:location[0]];
  v3 = v11;
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

- (void)suspendConnectionForSoftwareUpdate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BYDaemonProximityTargetClientConnectionOverride *)v4 setSuspendConnectionForSoftwareUpdateCompletion:location[0]];
  [(BYDaemonProximityTargetClientConnectionOverride *)v4 doWithSetupCtlConnections:&stru_10032E8D8];
  objc_storeStrong(location, 0);
}

- (void)fileTransferSessionTemplate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BYDaemonProximityTargetClientConnectionOverride *)v4 setFileTransferSessionTemplateCompletion:location[0]];
  [(BYDaemonProximityTargetClientConnectionOverride *)v4 doWithSetupCtlConnections:&stru_10032E8F8];
  [(BYDaemonProximityTargetClientConnectionOverride *)v4 executeFileTransferSessionTemplateWithError:0];
  objc_storeStrong(location, 0);
}

- (void)doWithSetupCtlConnections:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BYDaemonProximityTargetClientConnectionOverride *)v12 setupCtlConnections];
  v10 = [(NSMutableArray *)v3 copy];

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

- (void)executeFileTransferSessionTemplateWithError:(BOOL)a3
{
  v3 = [(BYDaemonProximityTargetClientConnectionOverride *)self fileTransferSessionTemplateCompletion];

  if (v3)
  {
    v4 = [(BYDaemonProximityTargetClientConnectionOverride *)self fileTransferSessionTemplateCompletion];
    v4[2](v4, 0);

    [(BYDaemonProximityTargetClientConnectionOverride *)self setFileTransferSessionTemplateCompletion:0];
  }
}

- (void)executeResumeConnectionCompletionWithHandshake
{
  v2 = [(BYDaemonProximityTargetClientConnectionOverride *)self resumeConnectionCompletion];

  if (v2)
  {
    v3 = [(BYDaemonProximityTargetClientConnectionOverride *)self resumeConnectionCompletion];
    v3[2](v3);

    [(BYDaemonProximityTargetClientConnectionOverride *)self setResumeConnectionCompletion:0];
  }
}

- (void)executeSuspendConnectionForSoftwareUpdateCompletion
{
  v2 = [(BYDaemonProximityTargetClientConnectionOverride *)self suspendConnectionForSoftwareUpdateCompletion];

  if (v2)
  {
    v3 = [(BYDaemonProximityTargetClientConnectionOverride *)self suspendConnectionForSoftwareUpdateCompletion];
    v3[2](v3);

    [(BYDaemonProximityTargetClientConnectionOverride *)self setSuspendConnectionForSoftwareUpdateCompletion:0];
  }
}

- (void)hasHandshake:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = location[0];
  v4 = [(BYDaemonProximityTargetClientConnectionOverride *)v6 handshake];
  v3[2](v3, v4 != 0);

  objc_storeStrong(location, 0);
}

- (void)hasProximityInformation:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = location[0];
  v4 = [(BYDaemonProximityTargetClientConnectionOverride *)v6 information];
  v3[2](v3, v4 != 0);

  objc_storeStrong(location, 0);
}

- (void)isAdvertising:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  (*(location[0] + 2))(location[0], [(BYDaemonProximityTargetClientConnectionOverride *)v4 isAdvertising]);
  objc_storeStrong(location, 0);
}

- (void)isConnected:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  (*(location[0] + 2))(location[0], [(BYDaemonProximityTargetClientConnectionOverride *)v4 isConnected]);
  objc_storeStrong(location, 0);
}

- (void)isShowingPairingCode:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  (*(location[0] + 2))(location[0], [(BYDaemonProximityTargetClientConnectionOverride *)v4 isShowingPairingCode]);
  objc_storeStrong(location, 0);
}

@end