@interface COSResumePairingStateController
- (BOOL)_checkCurrentStateValidity;
- (BOOL)didRestoreValueForPaneClass:(Class)a3;
- (BOOL)shouldPromptToResumePairing;
- (COSSetupController)setupController;
- (void)_saveCurrentState;
- (void)_startNewPairingState;
- (void)clearPairingState;
- (void)dealloc;
- (void)device:(id)a3 propertyDidChange:(id)a4 fromValue:(id)a5;
- (void)didConnectToWatch:(id)a3;
- (void)didFinishIPE;
- (void)loadPairingState;
- (void)resumePairing;
- (void)saveBoolValue:(BOOL)a3 forPaneClass:(Class)a4;
@end

@implementation COSResumePairingStateController

- (void)dealloc
{
  observedDevice = self->_observedDevice;
  v6 = NRDevicePropertyLocalPairingDataStorePath;
  v4 = [NSArray arrayWithObjects:&v6 count:1];
  [(NRDevice *)observedDevice removePropertyObserver:self forPropertyChanges:v4];

  v5.receiver = self;
  v5.super_class = COSResumePairingStateController;
  [(COSResumePairingStateController *)&v5 dealloc];
}

- (void)loadPairingState
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[COSResumePairingStateController loadPairingState]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 objectForKey:@"LastResumePairingState"];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = 0;
      v6 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v14];
      v7 = v14;
      currentState = v7;
      if (!v6 || v7)
      {
        v10 = pbb_bridge_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [(COSResumePairingState *)currentState localizedDescription];
          *buf = 138543362;
          v16 = v13;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Error decoding resume pairing state: %{public}@", buf, 0xCu);
        }
      }

      else
      {
        objc_storeStrong(&self->_currentState, v6);
        v9 = [(COSResumePairingStateController *)self _checkCurrentStateValidity];
        v10 = pbb_bridge_log();
        v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        if (v9)
        {
          if (v11)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Successfully loaded resume pairing state.", buf, 2u);
          }

          goto LABEL_20;
        }

        if (v11)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Resume pairing state no longer valid, clearing.", buf, 2u);
        }
      }

      [(COSResumePairingStateController *)self clearPairingState];
LABEL_20:

      goto LABEL_21;
    }
  }

  v12 = pbb_bridge_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No resume pairing state data found.", buf, 2u);
  }

  currentState = self->_currentState;
  self->_currentState = 0;
LABEL_21:

  *&self->_isInResumeFlow = 0;
  self->_handledIPEFinished = 0;
}

- (BOOL)shouldPromptToResumePairing
{
  v3 = _os_feature_enabled_impl();
  if (v3)
  {
    LOBYTE(v3) = self->_currentState != 0;
  }

  return v3;
}

- (void)clearPairingState
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[COSResumePairingStateController clearPairingState]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  currentState = self->_currentState;
  self->_currentState = 0;

  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 removeObjectForKey:@"LastResumePairingState"];

  self->_isInResumeFlow = 0;
}

- (void)saveBoolValue:(BOOL)a3 forPaneClass:(Class)a4
{
  v5 = a3;
  v7 = pbb_bridge_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromClass(a4);
    v13 = 136315650;
    v14 = "[COSResumePairingStateController saveBoolValue:forPaneClass:]";
    v15 = 2112;
    v16 = v8;
    v17 = 1024;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: paneClass: %@, value: %{BOOL}d", &v13, 0x1Cu);
  }

  currentState = self->_currentState;
  if (currentState)
  {
    v10 = [NSNumber numberWithBool:v5];
    v11 = NSStringFromClass(a4);
    [(COSResumePairingState *)currentState saveValue:v10 forPaneClassName:v11];

    [(COSResumePairingStateController *)self _saveCurrentState];
  }

  else
  {
    v12 = pbb_bridge_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Tried to save value but there is no current state!", &v13, 2u);
    }
  }
}

- (void)resumePairing
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[COSResumePairingStateController resumePairing]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  if (self->_currentState)
  {
    self->_isInResumeFlow = 1;
    v4 = [UIApp bridgeController];
    [v4 setTinkerPairing:[(COSResumePairingState *)self->_currentState isTinkerPairing]];
  }

  else
  {
    v4 = pbb_bridge_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v5) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Tried to resume pairing but there is no current state to resume!", &v5, 2u);
    }
  }
}

- (void)didConnectToWatch:(id)a3
{
  v5 = a3;
  if (!self->_handledWatchConnection)
  {
    if (self->_currentState)
    {
      isInResumeFlow = self->_isInResumeFlow;
    }

    else
    {
      isInResumeFlow = 0;
    }

    v7 = pbb_bridge_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v12 = "[COSResumePairingStateController didConnectToWatch:]";
      v13 = 1024;
      v14 = isInResumeFlow;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: shouldRestoreValues: %{BOOL}d", buf, 0x12u);
    }

    if (isInResumeFlow)
    {
      [(COSResumePairingState *)self->_currentState enumerateSavedValuesUsingBlock:&stru_100268910];
      objc_storeStrong(&self->_observedDevice, a3);
      observedDevice = self->_observedDevice;
      v10 = NRDevicePropertyLocalPairingDataStorePath;
      v9 = [NSArray arrayWithObjects:&v10 count:1];
      [(NRDevice *)observedDevice addPropertyObserver:self forPropertyChanges:v9];
    }

    else
    {
      [(COSResumePairingStateController *)self _startNewPairingState];
    }

    self->_handledWatchConnection = 1;
  }
}

- (void)didFinishIPE
{
  if (!self->_handledIPEFinished)
  {
    if (self->_currentState)
    {
      isInResumeFlow = self->_isInResumeFlow;
    }

    else
    {
      isInResumeFlow = 0;
    }

    v4 = pbb_bridge_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "[COSResumePairingStateController didFinishIPE]";
      v7 = 1024;
      v8 = isInResumeFlow;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: shouldRestoreValues: %{BOOL}d", &v5, 0x12u);
    }

    if (isInResumeFlow)
    {
      [(COSResumePairingState *)self->_currentState enumerateSavedValuesUsingBlock:&stru_100268930];
    }

    self->_handledIPEFinished = 1;
  }
}

- (BOOL)didRestoreValueForPaneClass:(Class)a3
{
  currentState = self->_currentState;
  if (!currentState || !self->_isInResumeFlow)
  {
    return 0;
  }

  v4 = NSStringFromClass(a3);
  v5 = [(COSResumePairingState *)currentState hasSavedValueForClassName:v4];

  return v5;
}

- (void)_startNewPairingState
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[COSResumePairingStateController _startNewPairingState]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  [(COSResumePairingStateController *)self clearPairingState];
  v4 = objc_opt_new();
  currentState = self->_currentState;
  self->_currentState = v4;

  v6 = +[NSDate date];
  [(COSResumePairingState *)self->_currentState setPairingStartedDate:v6];

  v7 = [UIApp bridgeController];
  -[COSResumePairingState setIsTinkerPairing:](self->_currentState, "setIsTinkerPairing:", [v7 isTinkerPairing]);

  [(COSResumePairingStateController *)self _saveCurrentState];
}

- (BOOL)_checkCurrentStateValidity
{
  v2 = [(COSResumePairingState *)self->_currentState pairingStartedDate];
  [v2 timeIntervalSinceNow];
  v4 = fabs(v3) <= 86400.0;

  return v4;
}

- (void)_saveCurrentState
{
  currentState = self->_currentState;
  v8 = 0;
  v3 = [NSKeyedArchiver archivedDataWithRootObject:currentState requiringSecureCoding:1 error:&v8];
  v4 = v8;
  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 setObject:v3 forKey:@"LastResumePairingState"];

  v6 = pbb_bridge_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 localizedDescription];
    *buf = 136315394;
    v10 = "[COSResumePairingStateController _saveCurrentState]";
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: error: %{public}@", buf, 0x16u);
  }
}

- (void)device:(id)a3 propertyDidChange:(id)a4 fromValue:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = NRDevicePropertyLocalPairingDataStorePath;
  v10 = [v7 valueForProperty:NRDevicePropertyLocalPairingDataStorePath];
  if (v10 && [v8 isEqualToString:v9])
  {
    v11 = pbb_setupflow_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = v7;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NRDevice propertyDidChange %@ %@", buf, 0x16u);
    }

    v13 = v9;
    v12 = [NSArray arrayWithObjects:&v13 count:1];
    [v7 removePropertyObserver:self forPropertyChanges:v12];

    [(COSResumePairingStateController *)self didFinishIPE];
  }
}

- (COSSetupController)setupController
{
  WeakRetained = objc_loadWeakRetained(&self->_setupController);

  return WeakRetained;
}

@end