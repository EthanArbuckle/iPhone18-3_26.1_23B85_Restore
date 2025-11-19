@interface COSLinkUpgradeMonitor
- (BOOL)holdingAnyCompanionLinkPreference;
- (void)_awdlUpgradeTimedout;
- (void)_enteredCompatibilityState:(id)a3;
- (void)_onInitialPropertyExchangeComplete;
- (void)_performLinkUpgradeToInfraWiFi;
- (void)_sendWirelessCredentialsToWatch;
- (void)_updateCompanionLinkPreferenceToAWDLforBTUUID:(id)a3;
- (void)_updateNanoRegistryToNormalStateIfNeeded;
- (void)device:(id)a3 propertyDidChange:(id)a4 fromValue:(id)a5;
- (void)deviceIsConnectedDidChange:(id)a3 isConnected:(BOOL)a4;
- (void)deviceLinkTypeDidChange:(id)a3 linkType:(unsigned __int8)a4 linkSubtype:(unsigned __int8)a5;
- (void)requestLinkUpgrade;
- (void)resetCompanionLinkPreference;
- (void)resetMonitor;
- (void)wirelessCredentialUpdateCompletedWithResult:(BOOL)a3;
@end

@implementation COSLinkUpgradeMonitor

- (void)requestLinkUpgrade
{
  if (_os_feature_enabled_impl())
  {
    if (self->_currentLinkSubType != 102 && !self->_waitingForAWDLupgradeTimeout)
    {
      v9 = +[UIApplication sharedApplication];
      v3 = [v9 activeWatch];

      if (v3)
      {
        v10 = +[NSNotificationCenter defaultCenter];
        v11 = NRPairedDeviceRegistryDeviceDidEnterCompatibilityStateNotification;
        [v10 addObserver:self selector:"_enteredCompatibilityState:" name:NRPairedDeviceRegistryDeviceDidEnterCompatibilityStateNotification object:0];

        v12 = [v3 valueForProperty:_NRDevicePropertyCompatibilityState];
        v13 = [v12 unsignedIntValue];

        if (v13 >= 3u)
        {
          v14 = pbb_setupflow_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v24 = "[COSLinkUpgradeMonitor requestLinkUpgrade]";
            v25 = 1024;
            LODWORD(v26) = v13;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: already initial properties exchanged: %d", buf, 0x12u);
          }

          v15 = +[NSNotificationCenter defaultCenter];
          [v15 removeObserver:self name:v11 object:0];

          [(COSLinkUpgradeMonitor *)self _onInitialPropertyExchangeComplete];
        }

        v16 = _NRDevicePropertyBluetoothIdentifier;
        v22 = _NRDevicePropertyBluetoothIdentifier;
        v17 = [NSArray arrayWithObjects:&v22 count:1];
        [v3 addPropertyObserver:self forPropertyChanges:v17];

        StringFromNRLinkSubtype = [v3 valueForProperty:v16];
        v18 = pbb_setupflow_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v24 = "[COSLinkUpgradeMonitor requestLinkUpgrade]";
          v25 = 2114;
          v26 = StringFromNRLinkSubtype;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s: BT identifier: %{public}@", buf, 0x16u);
        }

        if (StringFromNRLinkSubtype)
        {
          self->_observingLinkChange = 0;
          v21 = v16;
          v19 = [NSArray arrayWithObjects:&v21 count:1];
          [v3 removePropertyObserver:self forPropertyChanges:v19];

          [(COSLinkUpgradeMonitor *)self _updateCompanionLinkPreferenceToAWDLforBTUUID:StringFromNRLinkSubtype];
        }

        else
        {
          v20 = pbb_setupflow_log();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v24 = "[COSLinkUpgradeMonitor requestLinkUpgrade]";
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s: Couldn't get BTUUID. Started Observing", buf, 0xCu);
          }

          self->_observingLinkChange = 1;
        }

        goto LABEL_7;
      }

      StringFromNRLinkSubtype = pbb_setupflow_log();
      if (!os_log_type_enabled(StringFromNRLinkSubtype, OS_LOG_TYPE_DEFAULT))
      {
LABEL_7:

        goto LABEL_10;
      }

      *buf = 136315138;
      v24 = "[COSLinkUpgradeMonitor requestLinkUpgrade]";
      v6 = "%s: No valid device to request link upgrade";
      v7 = StringFromNRLinkSubtype;
      v8 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      goto LABEL_7;
    }

    v3 = pbb_setupflow_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      StringFromNRLinkSubtype = createStringFromNRLinkSubtype();
      waitingForAWDLupgradeTimeout = self->_waitingForAWDLupgradeTimeout;
      *buf = 136315650;
      v24 = "[COSLinkUpgradeMonitor requestLinkUpgrade]";
      v25 = 2112;
      v26 = StringFromNRLinkSubtype;
      v27 = 1024;
      v28 = waitingForAWDLupgradeTimeout;
      v6 = "%s: Ignoring upgrade request. current link: %@ request in progress: %d";
      v7 = v3;
      v8 = 28;
      goto LABEL_6;
    }
  }

  else
  {
    v3 = pbb_setupflow_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v24 = "[COSLinkUpgradeMonitor requestLinkUpgrade]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: feature disabled. Ignoring linkupgrade request", buf, 0xCu);
    }
  }

LABEL_10:
}

- (void)_enteredCompatibilityState:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:NRPairedDeviceRegistryCompatibilityStateKey];
  v6 = [v5 unsignedIntValue];

  v7 = pbb_setupflow_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[COSLinkUpgradeMonitor _enteredCompatibilityState:]";
    v11 = 1024;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Entered Compatibility State: %d", &v9, 0x12u);
  }

  if (v6 >= 3u)
  {
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 removeObserver:self name:NRPairedDeviceRegistryDeviceDidEnterCompatibilityStateNotification object:0];

    [(COSLinkUpgradeMonitor *)self _onInitialPropertyExchangeComplete];
  }
}

- (void)_onInitialPropertyExchangeComplete
{
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[COSLinkUpgradeMonitor _onInitialPropertyExchangeComplete]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: Initial property exchange complete.", &v4, 0xCu);
  }

  self->_initialPropertyExchangeComplete = 1;
  [(COSLinkUpgradeMonitor *)self _sendWirelessCredentialsToWatch];
  [(COSLinkUpgradeMonitor *)self _updateNanoRegistryToNormalStateIfNeeded];
}

- (void)resetCompanionLinkPreference
{
  if (self->_networkRelayDevicePreferences)
  {
    v3 = pbb_setupflow_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "[COSLinkUpgradeMonitor resetCompanionLinkPreference]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: reset companion link preference", buf, 0xCu);
    }

    [(NRDevicePreferences *)self->_networkRelayDevicePreferences setCompanionLinkPreferences:0];
    networkRelayDevicePreferences = self->_networkRelayDevicePreferences;
    self->_networkRelayDevicePreferences = 0;
  }

  networkRelayDeviceMonitor = self->_networkRelayDeviceMonitor;
  self->_networkRelayDeviceMonitor = 0;

  self->_observingLinkChange = 0;
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:NRPairedDeviceRegistryDeviceDidEnterCompatibilityStateNotification object:0];

  v7 = [UIApp activeWatch];
  if (v7)
  {
    v9 = _NRDevicePropertyBluetoothIdentifier;
    v8 = [NSArray arrayWithObjects:&v9 count:1];
    [v7 removePropertyObserver:self forPropertyChanges:v8];
  }
}

- (void)device:(id)a3 propertyDidChange:(id)a4 fromValue:(id)a5
{
  v7 = a3;
  v8 = a4;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v9 = _NRDevicePropertyBluetoothIdentifier;
  if ([v8 isEqualToString:_NRDevicePropertyBluetoothIdentifier])
  {
    v10 = [v7 valueForProperty:v9];
    v11 = pbb_setupflow_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v17 = "[COSLinkUpgradeMonitor device:propertyDidChange:fromValue:]";
      v18 = 2114;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: BT identifier: %{public}@", buf, 0x16u);
    }

    if (self->_observingLinkChange && v10)
    {
      self->_observingLinkChange = 0;
      v15 = v9;
      v12 = [NSArray arrayWithObjects:&v15 count:1];
      [v7 removePropertyObserver:self forPropertyChanges:v12];

      [(COSLinkUpgradeMonitor *)self _updateCompanionLinkPreferenceToAWDLforBTUUID:v10];
    }

    else
    {
      v13 = pbb_setupflow_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        observingLinkChange = self->_observingLinkChange;
        *buf = 136315394;
        v17 = "[COSLinkUpgradeMonitor device:propertyDidChange:fromValue:]";
        v18 = 1024;
        LODWORD(v19) = observingLinkChange;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: Skipping property change: observing: %{BOOL}d", buf, 0x12u);
      }
    }
  }

  else
  {
    v10 = pbb_setupflow_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v17 = "[COSLinkUpgradeMonitor device:propertyDidChange:fromValue:]";
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: received unexpected property change: %@", buf, 0x16u);
    }
  }
}

- (void)_sendWirelessCredentialsToWatch
{
  v3 = [UIApp bridgeController];
  v4 = [v3 isTinkerPairing];

  if (v4)
  {
    v5 = pbb_setupflow_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "[COSLinkUpgradeMonitor _sendWirelessCredentialsToWatch]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Skipping Wireless Credentials exchange.", &v13, 0xCu);
    }

LABEL_15:

    return;
  }

  if (!self->_wirelessCredentialsExchangeComplete)
  {
    v7 = +[UIApplication sharedApplication];
    v5 = [v7 activeWatch];

    v8 = [[NSUUID alloc] initWithUUIDString:@"15874345-3594-4D3F-9A28-BA2AEA650A0D"];
    v9 = [v5 supportsCapability:v8];

    v10 = pbb_setupflow_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        v13 = 136315138;
        v14 = "[COSLinkUpgradeMonitor _sendWirelessCredentialsToWatch]";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Sending Wireless Credentials", &v13, 0xCu);
      }

      v10 = +[UIApplication sharedApplication];
      v12 = [v10 bridgeController];
      [v12 sendAllWirelessCredentials:0];
    }

    else if (v11)
    {
      v13 = 136315138;
      v14 = "[COSLinkUpgradeMonitor _sendWirelessCredentialsToWatch]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Paired watch doesn't support link ugprade. Ignoring sending Wireless Credentials", &v13, 0xCu);
    }

    goto LABEL_15;
  }

  v6 = pbb_setupflow_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[COSLinkUpgradeMonitor _sendWirelessCredentialsToWatch]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Wireless Credentials already exchanged.", &v13, 0xCu);
  }

  [(COSLinkUpgradeMonitor *)self wirelessCredentialUpdateCompletedWithResult:1];
}

- (void)_updateCompanionLinkPreferenceToAWDLforBTUUID:(id)a3
{
  v4 = [NRDeviceIdentifier newDeviceIdentifierWithBluetoothUUID:a3];
  v5 = pbb_setupflow_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 nrDeviceIdentifier];
    v21 = 136315394;
    v22 = "[COSLinkUpgradeMonitor _updateCompanionLinkPreferenceToAWDLforBTUUID:]";
    v23 = 2114;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: NetworkRelayDeviceIdentifier: %{public}@", &v21, 0x16u);
  }

  v7 = [(NRDeviceMonitor *)self->_networkRelayDeviceMonitor deviceIdentifier];
  v8 = [v7 nrDeviceIdentifier];
  v9 = [v4 nrDeviceIdentifier];
  v10 = [v8 isEqual:v9];

  if ((v10 & 1) == 0)
  {
    v11 = [[NRDeviceMonitor alloc] initWithDeviceIdentifier:v4 delegate:self queue:&_dispatch_main_q];
    networkRelayDeviceMonitor = self->_networkRelayDeviceMonitor;
    self->_networkRelayDeviceMonitor = v11;
  }

  if ([(NRDeviceMonitor *)self->_networkRelayDeviceMonitor isConnected])
  {
    self->_pendingLinkUpgradeRequest = 0;
    self->_currentLinkSubType = [(NRDeviceMonitor *)self->_networkRelayDeviceMonitor linkSubtype];
    v13 = [[NRDevicePreferences alloc] initWithDeviceIdentifier:v4];
    networkRelayDevicePreferences = self->_networkRelayDevicePreferences;
    self->_networkRelayDevicePreferences = v13;

    v15 = [[NRCompanionLinkPreferences alloc] initForHighThroughputWithServiceClass:5 includeP2P:1];
    [(NRDevicePreferences *)self->_networkRelayDevicePreferences setCompanionLinkPreferences:v15];
    self->_waitingForAWDLupgradeTimeout = 1;
    v16 = [NSTimer timerWithTimeInterval:self target:"_awdlUpgradeTimedout" selector:0 userInfo:0 repeats:15.0];
    awdlUpgradeTimeoutTimer = self->_awdlUpgradeTimeoutTimer;
    self->_awdlUpgradeTimeoutTimer = v16;

    v18 = +[NSRunLoop currentRunLoop];
    [v18 addTimer:self->_awdlUpgradeTimeoutTimer forMode:NSRunLoopCommonModes];

    [(COSLinkUpgradeMonitor *)self _updateNanoRegistryToNormalStateIfNeeded];
    v19 = pbb_setupflow_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315138;
      v22 = "[COSLinkUpgradeMonitor _updateCompanionLinkPreferenceToAWDLforBTUUID:]";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s: Marked for using AWDL", &v21, 0xCu);
    }
  }

  else
  {
    v20 = pbb_setupflow_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315138;
      v22 = "[COSLinkUpgradeMonitor _updateCompanionLinkPreferenceToAWDLforBTUUID:]";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s: Peer not connected yet. Waiting for connectivity", &v21, 0xCu);
    }

    self->_pendingLinkUpgradeRequest = 1;
  }
}

- (void)_awdlUpgradeTimedout
{
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[COSLinkUpgradeMonitor _awdlUpgradeTimedout]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: AWDL upgrade request timedout", &v4, 0xCu);
  }

  self->_waitingForAWDLupgradeTimeout = 0;
  if (self->_wirelessCredentialsExchangeComplete && !self->_currentLinkSubType && !self->_everConnectedOnAWDL)
  {
    [(COSLinkUpgradeMonitor *)self _performLinkUpgradeToInfraWiFi];
  }
}

- (void)_performLinkUpgradeToInfraWiFi
{
  v3 = [UIApp activeWatch];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 valueForProperty:_NRDevicePropertyBluetoothIdentifier];
    v6 = [NRDeviceIdentifier newDeviceIdentifierWithBluetoothUUID:v5];
    v7 = pbb_setupflow_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 nrDeviceIdentifier];
      v16 = 136315650;
      v17 = "[COSLinkUpgradeMonitor _performLinkUpgradeToInfraWiFi]";
      v18 = 2114;
      v19 = v5;
      v20 = 2114;
      v21 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: BT identifier: %{public}@ networkRelayDeviceIdentifier: %{public}@", &v16, 0x20u);
    }

    networkRelayDeviceMonitor = self->_networkRelayDeviceMonitor;
    if (!networkRelayDeviceMonitor)
    {
      v10 = [[NRDeviceMonitor alloc] initWithDeviceIdentifier:v6 delegate:self queue:&_dispatch_main_q];
      v11 = self->_networkRelayDeviceMonitor;
      self->_networkRelayDeviceMonitor = v10;

      networkRelayDeviceMonitor = self->_networkRelayDeviceMonitor;
    }

    self->_currentLinkSubType = [(NRDeviceMonitor *)networkRelayDeviceMonitor linkSubtype];
    v12 = [[NRDevicePreferences alloc] initWithDeviceIdentifier:v6];
    networkRelayDevicePreferences = self->_networkRelayDevicePreferences;
    self->_networkRelayDevicePreferences = v12;

    v14 = [[NRCompanionLinkPreferences alloc] initForHighThroughputWithServiceClass:5 includeP2P:0];
    [(NRDevicePreferences *)self->_networkRelayDevicePreferences setCompanionLinkPreferences:v14];
    [(COSLinkUpgradeMonitor *)self _updateNanoRegistryToNormalStateIfNeeded];
    v15 = pbb_setupflow_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315138;
      v17 = "[COSLinkUpgradeMonitor _performLinkUpgradeToInfraWiFi]";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s: Marked for using Infra Wi-Fi", &v16, 0xCu);
    }
  }

  else
  {
    v5 = pbb_setupflow_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315138;
      v17 = "[COSLinkUpgradeMonitor _performLinkUpgradeToInfraWiFi]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: no active device to upgrade link to Infra Wi-Fi", &v16, 0xCu);
    }
  }
}

- (void)wirelessCredentialUpdateCompletedWithResult:(BOOL)a3
{
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001355F0;
  v5[3] = &unk_100268380;
  objc_copyWeak(&v6, &location);
  v7 = a3;
  v5[4] = self;
  dispatch_async(&_dispatch_main_q, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)resetMonitor
{
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[COSLinkUpgradeMonitor resetMonitor]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(COSLinkUpgradeMonitor *)self resetCompanionLinkPreference];
  self->_pendingLinkUpgradeRequest = 0;
  *&self->_observingLinkChange = 0;
  [(NSTimer *)self->_awdlUpgradeTimeoutTimer invalidate];
  awdlUpgradeTimeoutTimer = self->_awdlUpgradeTimeoutTimer;
  self->_awdlUpgradeTimeoutTimer = 0;

  self->_everConnectedOnAWDL = 0;
}

- (void)_updateNanoRegistryToNormalStateIfNeeded
{
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 activeWatch];

  v5 = [[NSUUID alloc] initWithUUIDString:@"15874345-3594-4D3F-9A28-BA2AEA650A0D"];
  v6 = [v4 supportsCapability:v5];

  if ((v6 & 1) == 0 || self->_updatedNRToEnterNormalState)
  {
    if (self->_updatedNRToEnterNormalState)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  if (!self->_backupRestoreStepComplete || !self->_initialPropertyExchangeComplete || !self->_softwareUpdateStateResolved || !self->_currentLinkSubType)
  {
LABEL_4:
    v7 = pbb_setupflow_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      backupRestoreStepComplete = self->_backupRestoreStepComplete;
      initialPropertyExchangeComplete = self->_initialPropertyExchangeComplete;
      softwareUpdateStateResolved = self->_softwareUpdateStateResolved;
      v14 = 136316162;
      v15 = "[COSLinkUpgradeMonitor _updateNanoRegistryToNormalStateIfNeeded]";
      v16 = 1024;
      v17 = v6;
      v18 = 1024;
      v19 = backupRestoreStepComplete;
      v20 = 1024;
      v21 = initialPropertyExchangeComplete;
      v22 = 1024;
      v23 = softwareUpdateStateResolved;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Skipping NR to end pairing. supportsKaikyoV2: %{BOOL}d backupRestoreStepComplete: %{BOOL}d initialPropertyExchangeComplete: %{BOOL}d softwareUpdateStateResolved: %{BOOL}d", &v14, 0x24u);
    }

    goto LABEL_7;
  }

  v11 = pbb_setupflow_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    currentLinkSubType = self->_currentLinkSubType;
    v14 = 136315394;
    v15 = "[COSLinkUpgradeMonitor _updateNanoRegistryToNormalStateIfNeeded]";
    v16 = 1024;
    v17 = currentLinkSubType;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: Asking NR to end pairing. Link sub type: %d", &v14, 0x12u);
  }

  v13 = [UIApp setupController];
  [v13 updateNanoRegistryToNormalState];

  self->_updatedNRToEnterNormalState = 1;
LABEL_7:
}

- (void)deviceIsConnectedDidChange:(id)a3 isConnected:(BOOL)a4
{
  v4 = a4;
  v6 = pbb_setupflow_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[COSLinkUpgradeMonitor deviceIsConnectedDidChange:isConnected:]";
    v11 = 1024;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: connected %{BOOL}d", buf, 0x12u);
  }

  if (v4 && self->_pendingLinkUpgradeRequest)
  {
    objc_initWeak(buf, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100135B60;
    block[3] = &unk_100268430;
    objc_copyWeak(&v8, buf);
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

- (void)deviceLinkTypeDidChange:(id)a3 linkType:(unsigned __int8)a4 linkSubtype:(unsigned __int8)a5
{
  v5 = a5;
  v7 = pbb_setupflow_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    StringFromNRLinkSubtype = createStringFromNRLinkSubtype();
    StringFromNRLinkType = createStringFromNRLinkType();
    v10 = createStringFromNRLinkSubtype();
    v12 = 136315906;
    v13 = "[COSLinkUpgradeMonitor deviceLinkTypeDidChange:linkType:linkSubtype:]";
    v14 = 2112;
    v15 = StringFromNRLinkSubtype;
    v16 = 2112;
    v17 = StringFromNRLinkType;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: link changed. current linkSubType: %@ new linkType: %@, new linkSubType: %@", &v12, 0x2Au);
  }

  self->_currentLinkSubType = v5;
  if (v5 == 102)
  {
    self->_everConnectedOnAWDL = 1;
    self->_waitingForAWDLupgradeTimeout = 0;
    [(NSTimer *)self->_awdlUpgradeTimeoutTimer invalidate];
    awdlUpgradeTimeoutTimer = self->_awdlUpgradeTimeoutTimer;
    self->_awdlUpgradeTimeoutTimer = 0;
  }

  [(COSLinkUpgradeMonitor *)self _updateNanoRegistryToNormalStateIfNeeded];
}

- (BOOL)holdingAnyCompanionLinkPreference
{
  v2 = [(NRDevicePreferences *)self->_networkRelayDevicePreferences companionLinkPreferences];
  v3 = v2 != 0;

  return v3;
}

@end