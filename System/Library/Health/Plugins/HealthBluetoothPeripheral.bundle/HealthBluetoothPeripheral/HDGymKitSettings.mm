@interface HDGymKitSettings
- (BOOL)fitnessTrackingEnabled;
- (BOOL)isLowPowerModeEnabled;
- (HDGymKitSettings)initWithProfile:(id)profile;
- (HDGymKitSettingsDelegate)delegate;
- (unint64_t)nfcPermission;
- (void)_setNFCAlwaysOnPreferenceIfNecessary;
- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available;
- (void)dealloc;
- (void)profileDidBecomeReady:(id)ready;
- (void)samplesAdded:(id)added anchor:(id)anchor;
- (void)setDelegate:(id)delegate;
- (void)unitTest_NFCPreferencesSetHandler:(id)handler;
- (void)unitTest_simulateNRDeviceUpdate;
@end

@implementation HDGymKitSettings

- (HDGymKitSettings)initWithProfile:(id)profile
{
  profileCopy = profile;
  v9.receiver = self;
  v9.super_class = HDGymKitSettings;
  v5 = [(HDGymKitSettings *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v6->_nfcPermission = 0;
    v6->_lock._os_unfair_lock_opaque = 0;
    v6->_hasRunProtectedDataCheck = 0;
    sub_8600(v6);
    sub_2B630(v6);
    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    [WeakRetained registerProfileReadyObserver:v6 queue:0];
  }

  return v6;
}

- (void)dealloc
{
  privacyNotificationToken = self->_privacyNotificationToken;
  if (privacyNotificationToken != -1)
  {
    notify_cancel(privacyNotificationToken);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"HDConnectedGymPreferencesChanged" object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:HDUserCharacteristicsDidChangeNotification object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:NSProcessInfoPowerStateDidChangeNotification object:0];

  currentDevice = self->_currentDevice;
  v10 = NRDevicePropertyIsAltAccount;
  v8 = [NSArray arrayWithObjects:&v10 count:1];
  [(NRDevice *)currentDevice removePropertyObserver:self forPropertyChanges:v8];

  sub_2B6DC(self);
  v9.receiver = self;
  v9.super_class = HDGymKitSettings;
  [(HDGymKitSettings *)&v9 dealloc];
}

- (void)profileDidBecomeReady:(id)ready
{
  database = [ready database];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_8ABC;
  v5[3] = &unk_5C800;
  v5[4] = self;
  [database performWhenDataProtectedByFirstUnlockIsAvailableOnQueue:0 block:v5];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  os_unfair_lock_lock(&self->_lock);
  objc_storeWeak(&self->_delegate, obj);
  nfcPermission = self->_nfcPermission;
  os_unfair_lock_unlock(&self->_lock);
  [obj gymKitSettings:self didChangeFromNFCPermission:0 toNFCPermission:nfcPermission];
}

- (unint64_t)nfcPermission
{
  os_unfair_lock_lock(&self->_lock);
  nfcPermission = self->_nfcPermission;
  os_unfair_lock_unlock(&self->_lock);
  return nfcPermission;
}

- (BOOL)fitnessTrackingEnabled
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 persistentDomainForName:kHKPrivacyPreferencesDomain];

  v4 = [v3 objectForKeyedSubscript:kHKPrivacyPreferencesKeyEnableFitnessTracking];
  v5 = v4;
  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available
{
  availableCopy = available;
  databaseCopy = database;
  if (availableCopy && !self->_hasRunProtectedDataCheck)
  {
    self->_hasRunProtectedDataCheck = 1;
    v7 = databaseCopy;
    [(HDGymKitSettings *)self _setNFCAlwaysOnPreferenceIfNecessary];
    [v7 removeProtectedDataObserver:self];
    databaseCopy = v7;
  }
}

- (void)samplesAdded:(id)added anchor:(id)anchor
{
  addedCopy = added;
  if ((sub_2B788(&self->super.isa) & 1) == 0)
  {
    selfCopy = self;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = addedCopy;
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          sampleType = [v11 sampleType];
          v13 = +[HKObjectType workoutType];
          v14 = [sampleType isEqual:v13];

          if (v14)
          {
            _source = [v11 _source];
            _isAppleWatch = [_source _isAppleWatch];

            if (_isAppleWatch)
            {
              sub_2BC9C(v6, selfCopy);
              goto LABEL_13;
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_13:
}

- (void)unitTest_simulateNRDeviceUpdate
{
  currentDevice = self->_currentDevice;
  v4 = NRDevicePropertyIsAltAccount;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  behavior = [daemon behavior];
  v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [behavior tinkerModeEnabled] ^ 1);
  [(HDGymKitSettings *)self device:currentDevice propertyDidChange:v4 fromValue:v7];
}

- (void)unitTest_NFCPreferencesSetHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_lock);
  v5 = [handlerCopy copy];

  unitTest_NFCPreferenceSetHandler = self->_unitTest_NFCPreferenceSetHandler;
  self->_unitTest_NFCPreferenceSetHandler = v5;

  if (self->_profileDidBecomeReady)
  {
    (*(self->_unitTest_NFCPreferenceSetHandler + 2))();
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isLowPowerModeEnabled
{
  v2 = +[NSProcessInfo processInfo];
  isLowPowerModeEnabled = [v2 isLowPowerModeEnabled];

  return isLowPowerModeEnabled;
}

- (void)_setNFCAlwaysOnPreferenceIfNecessary
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_9544;
  v8[3] = &unk_5CC98;
  v8[4] = self;
  v8[5] = &v9;
  sub_2B860(self, v8);
  if ((v10[3] & 1) == 0)
  {
    if ([(HDGymKitSettings *)self isLowPowerModeEnabled])
    {
      sub_8E80(self, 0);
      sub_2B6DC(self);
      goto LABEL_17;
    }

    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [v3 persistentDomainForName:kHKConnectedGymPreferencesDomain];

    _HKInitializeLogging();
    v5 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "GymKit preferences: %{public}@", buf, 0xCu);
    }

    v6 = [v4 objectForKeyedSubscript:kHKConnectedGymPreferencesNFCAlwaysOn];
    v7 = v6;
    if (v6)
    {
      sub_8E80(self, [v6 BOOLValue]);
      sub_2B6DC(self);
    }

    else
    {
      v7 = [v4 objectForKeyedSubscript:kHKConnectedGymPreferencesDefaultNFCAlwaysOn];
      if (sub_2B788(&self->super.isa))
      {
        sub_8E80(self, 0);
        if (!v7 || [v7 BOOLValue])
        {
          sub_2B7F0(self, 0);
        }
      }

      else if ([v7 BOOLValue])
      {
        sub_8E80(self, 1);
      }

      else if (([v7 BOOLValue] & 1) == 0)
      {
        sub_2BA50(self);
        goto LABEL_16;
      }

      sub_2B6DC(self);
    }

LABEL_16:
  }

LABEL_17:
  _Block_object_dispose(&v9, 8);
}

- (HDGymKitSettingsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end