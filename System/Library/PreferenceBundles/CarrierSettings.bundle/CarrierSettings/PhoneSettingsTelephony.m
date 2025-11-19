@interface PhoneSettingsTelephony
- (BOOL)allowNetworkSelection;
- (BOOL)allowPINChange;
- (BOOL)hasSubscriberIdentity;
- (PhoneSettingsTelephony)init;
- (__CTServerConnection)serverConnection;
- (id)_callForwardingSettingsForForwardingReason:(id)a3;
- (id)callForwardingNumber:(BOOL)a3 forReason:(id)a4;
- (id)currentNetwork;
- (id)descriptionDictionary;
- (id)lastUsedForwardingNumberForReason:(id)a3;
- (id)manuallySelectedNetworkDictionary;
- (id)myNumber;
- (id)pendingRequestForUniqueSettingType:(id)a3;
- (id)pendingSaveForUniqueSettingType:(id)a3;
- (id)unlockAttemptsRemainingString;
- (int)currentNetworkSelectionState;
- (int)networkSelectionMode;
- (int)showCallForwarding;
- (int)showCallWaiting;
- (int)showCallerID;
- (int)showSIMPIN;
- (unsigned)callForwardingEnabled:(BOOL)a3 forReason:(id)a4;
- (unsigned)callWaitingEnabled:(BOOL)a3;
- (unsigned)callerIDMode:(BOOL)a3;
- (unsigned)callerIDModifiable:(BOOL)a3;
- (unsigned)simLocked:(BOOL)a3;
- (void)_handleCallWaitingSettings:(id)a3;
- (void)_handleCallerIDChanged;
- (void)_handleCallerIDSettings:(id)a3;
- (void)_handleNetworkList:(id)a3;
- (void)_handlePINSettings:(id)a3;
- (void)_handleSIMLockSettings:(id)a3;
- (void)_invalidateSIMLockedSetting;
- (void)_networkSettingsDisabled;
- (void)_phoneBookSelected;
- (void)_phoneNumberChanged;
- (void)_phoneNumberSaveFinishedWithSuccess:(BOOL)a3;
- (void)_phoneNumberWritten;
- (void)_requestCallForwardingSettingsForReason:(id)a3;
- (void)_requestSettings:(id)a3;
- (void)_reset;
- (void)_resetCallerIDSettings;
- (void)_saveCallForwardingEnabled:(BOOL)a3 number:(id)a4 forwardingReason:(id)a5;
- (void)_saveSettings:(id)a3;
- (void)_simPUKLocked;
- (void)_simRemoved;
- (void)applicationDidEnterBackground:(id)a3;
- (void)applicationWillEnterForeground:(id)a3;
- (void)dealloc;
- (void)destroyServerConnection;
- (void)enableAutomaticNetworkSelection;
- (void)hasSubscriberIdentity;
- (void)postCallForwardingChangedNotificationForForwardingReason:(id)a3;
- (void)receivedRequestResponseForUniqueSettingType:(id)a3;
- (void)receivedSaveResponseForUniqueSettingType:(id)a3;
- (void)requestNetworkList;
- (void)resetCallForwardingSettings;
- (void)resetLastUsedForwardingNumberForReason:(id)a3;
- (void)selectManualNetwork:(id)a3;
- (void)setCallForwardingNumber:(id)a3 forReason:(id)a4;
- (void)setCallWaitingEnabled:(BOOL)a3;
- (void)setCallerIDEnabled:(unsigned int)a3;
- (void)setMyNumber:(id)a3;
- (void)setPIN:(id)a3 password:(id)a4;
- (void)setSIMLocked:(BOOL)a3 password:(id)a4;
- (void)startWatching;
- (void)stopWatching;
@end

@implementation PhoneSettingsTelephony

- (PhoneSettingsTelephony)init
{
  v26.receiver = self;
  v26.super_class = PhoneSettingsTelephony;
  v2 = [(PhoneSettingsTelephony *)&v26 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel_applicationDidEnterBackground_ name:*MEMORY[0x277D76660] object:0];

    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:v2 selector:sel_applicationWillEnterForeground_ name:*MEMORY[0x277D76758] object:0];

    v5 = objc_alloc_init(PHForwardingSettings);
    callForwardingSettingsUnconditional = v2->_callForwardingSettingsUnconditional;
    v2->_callForwardingSettingsUnconditional = v5;

    [(PHForwardingSettings *)v2->_callForwardingSettingsUnconditional setDefaultCallForwardingNumberPreferencesKey:@"call-forwarding-number"];
    v7 = CFPreferencesCopyAppValue(@"call-forwarding-number", @"com.apple.mobilephone.settings");
    [(PHForwardingSettings *)v2->_callForwardingSettingsUnconditional setDefaultCallForwardingNumber:v7];

    v8 = [(PHForwardingSettings *)v2->_callForwardingSettingsUnconditional defaultCallForwardingNumber];

    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277CCACA8]);
      [(PHForwardingSettings *)v2->_callForwardingSettingsUnconditional setDefaultCallForwardingNumber:v9];
    }

    v10 = objc_alloc_init(PHForwardingSettings);
    callForwardingSettingsMobileBusy = v2->_callForwardingSettingsMobileBusy;
    v2->_callForwardingSettingsMobileBusy = v10;

    [(PHForwardingSettings *)v2->_callForwardingSettingsMobileBusy setDefaultCallForwardingNumberPreferencesKey:@"call-forwarding-number-mobilebusy"];
    v12 = CFPreferencesCopyAppValue(@"call-forwarding-number-mobilebusy", @"com.apple.mobilephone.settings");
    [(PHForwardingSettings *)v2->_callForwardingSettingsMobileBusy setDefaultCallForwardingNumber:v12];

    v13 = [(PHForwardingSettings *)v2->_callForwardingSettingsMobileBusy defaultCallForwardingNumber];

    if (!v13)
    {
      v14 = objc_alloc_init(MEMORY[0x277CCACA8]);
      [(PHForwardingSettings *)v2->_callForwardingSettingsMobileBusy setDefaultCallForwardingNumber:v14];
    }

    v15 = objc_alloc_init(PHForwardingSettings);
    callForwardingSettingsNoReply = v2->_callForwardingSettingsNoReply;
    v2->_callForwardingSettingsNoReply = v15;

    [(PHForwardingSettings *)v2->_callForwardingSettingsNoReply setDefaultCallForwardingNumberPreferencesKey:@"call-forwarding-number-noreply"];
    v17 = CFPreferencesCopyAppValue(@"call-forwarding-number-noreply", @"com.apple.mobilephone.settings");
    [(PHForwardingSettings *)v2->_callForwardingSettingsNoReply setDefaultCallForwardingNumber:v17];

    v18 = [(PHForwardingSettings *)v2->_callForwardingSettingsNoReply defaultCallForwardingNumber];

    if (!v18)
    {
      v19 = objc_alloc_init(MEMORY[0x277CCACA8]);
      [(PHForwardingSettings *)v2->_callForwardingSettingsNoReply setDefaultCallForwardingNumber:v19];
    }

    v20 = objc_alloc_init(PHForwardingSettings);
    callForwardingSettingsNotReachable = v2->_callForwardingSettingsNotReachable;
    v2->_callForwardingSettingsNotReachable = v20;

    [(PHForwardingSettings *)v2->_callForwardingSettingsNotReachable setDefaultCallForwardingNumberPreferencesKey:@"call-forwarding-number-notreachable"];
    v22 = CFPreferencesCopyAppValue(@"call-forwarding-number-notreachable", @"com.apple.mobilephone.settings");
    [(PHForwardingSettings *)v2->_callForwardingSettingsNotReachable setDefaultCallForwardingNumber:v22];

    v23 = [(PHForwardingSettings *)v2->_callForwardingSettingsNotReachable defaultCallForwardingNumber];

    if (!v23)
    {
      v24 = objc_alloc_init(MEMORY[0x277CCACA8]);
      [(PHForwardingSettings *)v2->_callForwardingSettingsNotReachable setDefaultCallForwardingNumber:v24];
    }
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  [(PhoneSettingsTelephony *)self stopWatching];
  [(PhoneSettingsTelephony *)self destroyServerConnection];
  v4.receiver = self;
  v4.super_class = PhoneSettingsTelephony;
  [(PhoneSettingsTelephony *)&v4 dealloc];
}

- (void)destroyServerConnection
{
  if (self->_serverConnection)
  {
    _CTServerConnectionUnregisterForAllNotifications();
    CFRelease(self->_serverConnection);
    self->_serverConnection = 0;
  }
}

- (void)_reset
{
  [(PhoneSettingsTelephony *)self resetCallForwardingSettings];
  [(PhoneSettingsTelephony *)self _resetCallerIDSettings];
  self->_callWaitingEnabled = 0;
  self->_simLocked = 0;
  cachedPassword = self->_cachedPassword;
  self->_cachedPassword = 0;

  myNumber = self->_myNumber;
  self->_myNumber = 0;

  [(NSMutableDictionary *)self->_pendingSaves removeAllObjects];
  pendingRequests = self->_pendingRequests;

  [(NSMutableDictionary *)pendingRequests removeAllObjects];
}

- (void)resetCallForwardingSettings
{
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23C12D000, v3, OS_LOG_TYPE_DEFAULT, "Resetting call forwarding settings", v4, 2u);
  }

  [(PHForwardingSettings *)self->_callForwardingSettingsUnconditional setCallForwardingState:0];
  [(PHForwardingSettings *)self->_callForwardingSettingsUnconditional setCallForwardingNumber:0];
  [(PHForwardingSettings *)self->_callForwardingSettingsMobileBusy setCallForwardingState:0];
  [(PHForwardingSettings *)self->_callForwardingSettingsMobileBusy setCallForwardingNumber:0];
  [(PHForwardingSettings *)self->_callForwardingSettingsNoReply setCallForwardingState:0];
  [(PHForwardingSettings *)self->_callForwardingSettingsNoReply setCallForwardingNumber:0];
  [(PHForwardingSettings *)self->_callForwardingSettingsNotReachable setCallForwardingState:0];
  [(PHForwardingSettings *)self->_callForwardingSettingsNotReachable setCallForwardingNumber:0];
}

- (void)_resetCallerIDSettings
{
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23C12D000, v3, OS_LOG_TYPE_DEFAULT, "Resetting Caller ID settings", v4, 2u);
  }

  self->_callerIDIsModifiable = 0;
  self->_callerIDMode = 0;
}

- (void)_invalidateSIMLockedSetting
{
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23C12D000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating SIM locked setting", v4, 2u);
  }

  self->_simLocked = 0;
}

- (void)startWatching
{
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 0;
    _os_log_impl(&dword_23C12D000, v2, OS_LOG_TYPE_DEFAULT, "", v20, 2u);
  }

  CTTelephonyCenterGetDefault();
  v3 = *MEMORY[0x277CC4218];
  CTTelephonyCenterAddObserver();
  v4 = *MEMORY[0x277CC4210];
  CTTelephonyCenterAddObserver();
  v5 = *MEMORY[0x277CC4228];
  CTTelephonyCenterAddObserver();
  v6 = *MEMORY[0x277CC4220];
  CTTelephonyCenterAddObserver();
  v7 = *MEMORY[0x277CC41E0];
  CTTelephonyCenterAddObserver();
  v8 = *MEMORY[0x277CC3CD8];
  CTTelephonyCenterAddObserver();
  v9 = *MEMORY[0x277CC3CE8];
  CTTelephonyCenterAddObserver();
  v10 = *MEMORY[0x277CC3D58];
  CTTelephonyCenterAddObserver();
  v11 = *MEMORY[0x277CC3B98];
  CTTelephonyCenterAddObserver();
  v12 = *MEMORY[0x277CC3EC8];
  CTTelephonyCenterAddObserver();
  v13 = *MEMORY[0x277CC3EB8];
  CTTelephonyCenterAddObserver();
  v14 = *MEMORY[0x277CC3EB0];
  CTTelephonyCenterAddObserver();
  v15 = *MEMORY[0x277CC3C18];
  CTTelephonyCenterAddObserver();
  v16 = *MEMORY[0x277CC3B60];
  CTTelephonyCenterAddObserver();
  v17 = *MEMORY[0x277CC3B58];
  CTTelephonyCenterAddObserver();
  v18 = *MEMORY[0x277CC3B68];
  CTTelephonyCenterAddObserver();
  v19 = *MEMORY[0x277CC4208];
  CTTelephonyCenterAddObserver();
}

- (void)stopWatching
{
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 0;
    _os_log_impl(&dword_23C12D000, v3, OS_LOG_TYPE_DEFAULT, "", v22, 2u);
  }

  CTTelephonyCenterGetDefault();
  v4 = *MEMORY[0x277CC4218];
  CTTelephonyCenterRemoveObserver();
  v5 = *MEMORY[0x277CC4210];
  CTTelephonyCenterRemoveObserver();
  v6 = *MEMORY[0x277CC4228];
  CTTelephonyCenterRemoveObserver();
  v7 = *MEMORY[0x277CC4220];
  CTTelephonyCenterRemoveObserver();
  v8 = *MEMORY[0x277CC41E0];
  CTTelephonyCenterRemoveObserver();
  v9 = *MEMORY[0x277CC3CD8];
  CTTelephonyCenterRemoveObserver();
  v10 = *MEMORY[0x277CC3CE8];
  CTTelephonyCenterRemoveObserver();
  v11 = *MEMORY[0x277CC3D58];
  CTTelephonyCenterRemoveObserver();
  v12 = *MEMORY[0x277CC3B98];
  CTTelephonyCenterRemoveObserver();
  v13 = *MEMORY[0x277CC3EC8];
  CTTelephonyCenterRemoveObserver();
  v14 = *MEMORY[0x277CC3EB8];
  CTTelephonyCenterRemoveObserver();
  v15 = *MEMORY[0x277CC3EB0];
  CTTelephonyCenterRemoveObserver();
  v16 = *MEMORY[0x277CC3848];
  CTTelephonyCenterRemoveObserver();
  v17 = *MEMORY[0x277CC37E8];
  CTTelephonyCenterRemoveObserver();
  v18 = *MEMORY[0x277CC3B90];
  CTTelephonyCenterRemoveObserver();
  v19 = *MEMORY[0x277CC3B60];
  CTTelephonyCenterRemoveObserver();
  v20 = *MEMORY[0x277CC3B58];
  CTTelephonyCenterRemoveObserver();
  v21 = *MEMORY[0x277CC3B68];
  CTTelephonyCenterRemoveObserver();
  [(PhoneSettingsTelephony *)self _reset];
}

- (void)applicationDidEnterBackground:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_23C12D000, v5, OS_LOG_TYPE_DEFAULT, "%@", &v7, 0xCu);
  }

  [(PhoneSettingsTelephony *)self stopWatching];
  [(PhoneSettingsTelephony *)self destroyServerConnection];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)applicationWillEnterForeground:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_23C12D000, v5, OS_LOG_TYPE_DEFAULT, "%@", &v7, 0xCu);
  }

  [(PhoneSettingsTelephony *)self startWatching];
  v6 = *MEMORY[0x277D85DE8];
}

- (__CTServerConnection)serverConnection
{
  result = self->_serverConnection;
  if (!result)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 bundleIdentifier];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v4 stringWithFormat:@"%@.%@", v6, v8];

    v10 = *MEMORY[0x277CBECE8];
    CFRunLoopGetMain();
    v11 = *MEMORY[0x277CBF058];
    self->_serverConnection = _CTServerConnectionCreateOnRunLoop();

    return self->_serverConnection;
  }

  return result;
}

- (int)currentNetworkSelectionState
{
  v2 = CTRegistrationGetNetworkSelectionState();
  if (v2 == *MEMORY[0x277CC3D40])
  {
    v4 = 0;
  }

  else if (v2 == *MEMORY[0x277CC3D18])
  {
    v4 = 1;
  }

  else if (v2 == *MEMORY[0x277CC3D38])
  {
    v4 = 2;
  }

  else if (v2 == *MEMORY[0x277CC3D30])
  {
    v4 = 3;
  }

  else if (v2 == *MEMORY[0x277CC3D10] || v2 == *MEMORY[0x277CC3D28])
  {
    v4 = 5;
  }

  else if (v2 == *MEMORY[0x277CC3D20])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)myNumber
{
  v18 = *MEMORY[0x277D85DE8];
  if (!self->_myNumber)
  {
    self->_myNumber = &stru_284EE7748;

    v3 = CTSettingCopyMyPhoneNumber();
    v4 = PHDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v3;
      _os_log_impl(&dword_23C12D000, v4, OS_LOG_TYPE_DEFAULT, "CTSettingCopyMyPhoneNumber returned %@", &v14, 0xCu);
    }

    if (v3)
    {
      active = PNCopyBestGuessCountryCodeForNumber();
      if (active || (active = CPPhoneNumberCopyActiveCountryCode()) != 0)
      {
        v6 = active;
        v7 = PHDefaultLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138412546;
          v15 = v3;
          v16 = 2112;
          v17 = v6;
          _os_log_impl(&dword_23C12D000, v7, OS_LOG_TYPE_DEFAULT, "Attempting to format digits %@ using ISO country code %@", &v14, 0x16u);
        }

        v8 = PNCreateFormattedStringWithCountry();
        myNumber = self->_myNumber;
        self->_myNumber = v8;

        CFRelease(v6);
      }

      else
      {
        v13 = PHDefaultLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138412290;
          v15 = v3;
          _os_log_impl(&dword_23C12D000, v13, OS_LOG_TYPE_DEFAULT, "Could not determine the country code for the digits %@.", &v14, 0xCu);
        }
      }

      CFRelease(v3);
    }
  }

  v10 = self->_myNumber;
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)setMyNumber:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = UIUnformattedPhoneNumberFromString();
  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(self + 112) & 1;
    v13 = 138412802;
    v14 = v4;
    v15 = 2112;
    v16 = v5;
    v17 = 1024;
    v18 = v7;
    _os_log_impl(&dword_23C12D000, v6, OS_LOG_TYPE_DEFAULT, "Set my number called with: %@ normalized to: %@, was already saving phone number = %d", &v13, 0x1Cu);
  }

  *(self + 112) = *(self + 112) & 0xF8 | 1;
  newNumber = self->_newNumber;
  self->_newNumber = v5;
  v9 = v5;

  myNumber = self->_myNumber;
  self->_myNumber = 0;

  [(PhoneSettingsTelephony *)self serverConnection];
  if (_CTServerConnectionSelectPhonebook() >> 32)
  {
    v11 = PHDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PhoneSettingsTelephony setMyNumber:];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasSubscriberIdentity
{
  [(PhoneSettingsTelephony *)self serverConnection];
  if (_CTServerConnectionCopyMobileEquipmentInfo() >> 32)
  {
    v2 = PHDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [PhoneSettingsTelephony hasSubscriberIdentity];
    }

    goto LABEL_7;
  }

  v2 = [0 allKeys];
  v3 = *MEMORY[0x277CC3B10];
  if (![v2 containsObject:*MEMORY[0x277CC3B10]])
  {
LABEL_7:
    LOBYTE(v6) = 0;
    goto LABEL_10;
  }

  v4 = [0 objectForKey:v3];
  if (v4)
  {
    v5 = [0 objectForKey:v3];
    v6 = [v5 isEqual:&stru_284EE7748] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

LABEL_10:
  return v6;
}

- (BOOL)allowNetworkSelection
{
  SIMStatus = CTSIMSupportGetSIMStatus();
  v3 = objc_alloc_init(MEMORY[0x277CEC5D0]);
  v4 = [v3 airplaneMode];

  if (v4)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = CTRegistrationNetworkSelectionMenuAvailable();
    if (v5)
    {
      LOBYTE(v5) = SIMStatus == *MEMORY[0x277CC3F00];
    }
  }

  return v5;
}

- (id)currentNetwork
{
  v2 = *MEMORY[0x277CBECE8];
  v3 = CTRegistrationCopyLocalizedOperatorName();

  return v3;
}

- (void)enableAutomaticNetworkSelection
{
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_23C12D000, v2, OS_LOG_TYPE_DEFAULT, "", v3, 2u);
  }

  CTRegistrationAutomaticallySelectNetwork();
}

- (void)selectManualNetwork:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = PHDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_23C12D000, v4, OS_LOG_TYPE_DEFAULT, "%@", &v6, 0xCu);
  }

  CTRegistrationManuallySelectNetwork();
  v5 = *MEMORY[0x277D85DE8];
}

- (unsigned)callForwardingEnabled:(BOOL)a3 forReason:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(PhoneSettingsTelephony *)self _callForwardingSettingsForForwardingReason:v6];
  v8 = v7;
  if (v4 && (![v7 callForwardingState] || objc_msgSend(v8, "callForwardingState") == 1))
  {
    [v8 setCallForwardingState:1];
    [(PhoneSettingsTelephony *)self _requestCallForwardingSettingsForReason:v6];
  }

  v9 = [v8 callForwardingState];

  return v9 & 0xFFFFFFF7;
}

- (id)callForwardingNumber:(BOOL)a3 forReason:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(PhoneSettingsTelephony *)self _callForwardingSettingsForForwardingReason:v6];
  v8 = v7;
  if (v4 && ![v7 callForwardingState])
  {
    [v8 setCallForwardingState:1];
    [(PhoneSettingsTelephony *)self _requestCallForwardingSettingsForReason:v6];
  }

  v9 = [v8 callForwardingNumber];

  return v9;
}

- (void)setCallForwardingNumber:(id)a3 forReason:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = PHDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_23C12D000, v8, OS_LOG_TYPE_DEFAULT, "Requested to set call forwarding number to %@ for reason %@", &v10, 0x16u);
  }

  -[PhoneSettingsTelephony _saveCallForwardingEnabled:number:forwardingReason:](self, "_saveCallForwardingEnabled:number:forwardingReason:", [v6 length] != 0, v6, v7);
  v9 = *MEMORY[0x277D85DE8];
}

- (unsigned)callWaitingEnabled:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    callWaitingEnabled = self->_callWaitingEnabled;
    if (v3)
    {
      v6 = @"YES";
    }

    *buf = 138412546;
    v13 = v6;
    v14 = 1024;
    v15 = callWaitingEnabled;
    _os_log_impl(&dword_23C12D000, v5, OS_LOG_TYPE_DEFAULT, "[PhoneSettingsTelephony callWaitingEnabled:]: Request:%@, _callWaitingEnabledState is %d", buf, 0x12u);
  }

  if (v3 && !self->_callWaitingEnabled)
  {
    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23C12D000, v8, OS_LOG_TYPE_DEFAULT, "[PhoneSettingsTelephony callWaitingEnabled:]: Setting _callWaitingEnabledState to SettingsPending", buf, 2u);
    }

    self->_callWaitingEnabled = 1;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"STSettingTypeUniqueIdentifier", *MEMORY[0x277CC4240], *MEMORY[0x277CC4230], *MEMORY[0x277CC4168], *MEMORY[0x277CC4160], 0}];
    [(PhoneSettingsTelephony *)self _requestSettings:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
  return self->_callWaitingEnabled & 0xFFFFFFF7;
}

- (void)setCallWaitingEnabled:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x277D85DE8];
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    callWaitingEnabled = self->_callWaitingEnabled;
    v12[0] = 67109376;
    v12[1] = callWaitingEnabled;
    v13 = 1024;
    v14 = v3;
    _os_log_impl(&dword_23C12D000, v5, OS_LOG_TYPE_DEFAULT, "Requested to set call waiting enabled from %d to %d", v12, 0xEu);
  }

  v7 = self->_callWaitingEnabled;
  if (v3)
  {
    if (v7 != 4)
    {
      goto LABEL_10;
    }
  }

  else if (v7 != 2)
  {
    goto LABEL_10;
  }

  v8 = [MEMORY[0x277CBEB38] dictionary];
  v9 = *MEMORY[0x277CC4240];
  [v8 setObject:*MEMORY[0x277CC4240] forKey:@"STSettingTypeUniqueIdentifier"];
  [v8 setObject:v9 forKey:*MEMORY[0x277CC4230]];
  [v8 setObject:*MEMORY[0x277CC4168] forKey:*MEMORY[0x277CC4160]];
  v10 = MEMORY[0x277CBED28];
  if (!v3)
  {
    v10 = MEMORY[0x277CBED10];
  }

  [v8 setObject:*v10 forKey:*MEMORY[0x277CC41E8]];
  self->_callWaitingEnabled |= 1u;
  [(PhoneSettingsTelephony *)self _saveSettings:v8];

LABEL_10:
  v11 = *MEMORY[0x277D85DE8];
}

- (unsigned)callerIDModifiable:(BOOL)a3
{
  if (a3 && !self->_callerIDMode)
  {
    [(PhoneSettingsTelephony *)self callerIDMode:1];
  }

  return self->_callerIDIsModifiable & 0xFFFFFFF7;
}

- (unsigned)callerIDMode:(BOOL)a3
{
  if (a3 && !self->_callerIDMode)
  {
    self->_callerIDMode = 1;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"STSettingTypeUniqueIdentifier", *MEMORY[0x277CC4248], *MEMORY[0x277CC4230], 0}];
    [(PhoneSettingsTelephony *)self _requestSettings:v4];
  }

  return self->_callerIDMode & 0xFFFFFFEF;
}

- (void)setCallerIDEnabled:(unsigned int)a3
{
  if (self->_callerIDMode == a3)
  {

    [(PhoneSettingsTelephony *)self _handleCallerIDSettings:0];
    return;
  }

  v9 = [MEMORY[0x277CBEB38] dictionary];
  v5 = *MEMORY[0x277CC41D8];
  switch(a3)
  {
    case 2u:
      v6 = MEMORY[0x277CC41B0];
      goto LABEL_11;
    case 8u:
      v6 = MEMORY[0x277CC41D0];
      goto LABEL_11;
    case 4u:
      v6 = MEMORY[0x277CC41B8];
LABEL_11:
      v7 = *v6;

      v5 = v7;
      break;
  }

  v8 = *MEMORY[0x277CC4248];
  [v9 setObject:*MEMORY[0x277CC4248] forKey:@"STSettingTypeUniqueIdentifier"];
  [v9 setObject:v8 forKey:*MEMORY[0x277CC4230]];
  [v9 setObject:v5 forKey:*MEMORY[0x277CC41A8]];
  self->_callerIDMode = 1;
  [(PhoneSettingsTelephony *)self _saveSettings:v9];
}

- (void)requestNetworkList
{
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_23C12D000, v2, OS_LOG_TYPE_DEFAULT, "Requesting network list", v3, 2u);
  }

  CTRegistrationRequestNetworkList();
}

- (int)networkSelectionMode
{
  NetworkSelectionMode = CTRegistrationGetNetworkSelectionMode();
  if (NetworkSelectionMode == *MEMORY[0x277CC3D08])
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (NetworkSelectionMode == *MEMORY[0x277CC3D00])
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

- (id)manuallySelectedNetworkDictionary
{
  v2 = CTRegistrationCopyManualNetworkSelection();

  return v2;
}

- (unsigned)simLocked:(BOOL)a3
{
  if (a3 && !self->_simLocked)
  {
    if (CTSIMSupportGetSIMStatus() == *MEMORY[0x277CC3EE8])
    {
      self->_simLocked = 2;
    }

    else
    {
      self->_simLocked = 1;
      v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"STSettingTypeUniqueIdentifier", *MEMORY[0x277CC4258], *MEMORY[0x277CC4230], 0}];
      [(PhoneSettingsTelephony *)self _requestSettings:v4];
    }
  }

  return self->_simLocked & 0xFFFFFFF7;
}

- (void)setSIMLocked:(BOOL)a3 password:(id)a4
{
  v4 = a3;
  v6 = a4;
  simLocked = self->_simLocked;
  v13 = v6;
  if (!v4)
  {
    if (simLocked == 2)
    {
      v8 = 3;
      goto LABEL_6;
    }

LABEL_12:
    [(PhoneSettingsTelephony *)self _handleSIMLockSettings:0];
    goto LABEL_13;
  }

  if (simLocked != 4)
  {
    goto LABEL_12;
  }

  v8 = 5;
LABEL_6:
  self->_simLocked = v8;
  v9 = [MEMORY[0x277CBEB38] dictionary];
  v10 = *MEMORY[0x277CC4258];
  [v9 setObject:*MEMORY[0x277CC4258] forKey:@"STSettingTypeUniqueIdentifier"];
  [v9 setObject:v10 forKey:*MEMORY[0x277CC4230]];
  v11 = MEMORY[0x277CBED28];
  if (!v4)
  {
    v11 = MEMORY[0x277CBED10];
  }

  [v9 setObject:*v11 forKey:*MEMORY[0x277CC41E8]];
  if (v13)
  {
    v12 = v13;
  }

  else
  {
    v12 = &stru_284EE7748;
  }

  [v9 setObject:v12 forKey:*MEMORY[0x277CC4200]];
  [(PhoneSettingsTelephony *)self _saveSettings:v9];

LABEL_13:
}

- (id)unlockAttemptsRemainingString
{
  RemainingPINAttempts = CTSIMSupportGetRemainingPINAttempts();
  v3 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:RemainingPINAttempts];
  v5 = [v3 stringFromNumber:v4];

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = v6;
  if (RemainingPINAttempts == 1)
  {
    v8 = @"%@_SIM_ATTEMPT_REMAINING";
  }

  else
  {
    v8 = @"%@_SIM_ATTEMPTS_REMAINING";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_284EE7748 table:@"Phone"];

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:v9, v5];

  return v10;
}

- (BOOL)allowPINChange
{
  v3 = [(PhoneSettingsTelephony *)self allowSIMLock];
  if (v3)
  {
    LOBYTE(v3) = [(PhoneSettingsTelephony *)self simLocked:0]== 2;
  }

  return v3;
}

- (void)setPIN:(id)a3 password:(id)a4
{
  v6 = MEMORY[0x277CBEB38];
  v7 = a4;
  v8 = a3;
  v10 = [v6 dictionary];
  v9 = *MEMORY[0x277CC4250];
  [v10 setObject:*MEMORY[0x277CC4250] forKey:*MEMORY[0x277CC4230]];
  [v10 setObject:v9 forKey:@"STSettingTypeUniqueIdentifier"];
  [v10 setObject:v8 forKey:*MEMORY[0x277CC41F8]];

  [v10 setObject:v7 forKey:*MEMORY[0x277CC4200]];
  [(PhoneSettingsTelephony *)self _saveSettings:v10];
}

- (int)showCallForwarding
{
  result = MGGetBoolAnswer();
  if (result)
  {
    result = [(PhoneSettingsTelephony *)self hasSubscriberIdentity];
    if (result)
    {
      return [MEMORY[0x277D75128] isRunningInStoreDemoMode] ^ 1;
    }
  }

  return result;
}

- (int)showCallWaiting
{
  result = MGGetBoolAnswer();
  if (result)
  {
    return [(PhoneSettingsTelephony *)self hasSubscriberIdentity];
  }

  return result;
}

- (int)showCallerID
{
  result = MGGetBoolAnswer();
  if (result)
  {
    return [(PhoneSettingsTelephony *)self hasSubscriberIdentity];
  }

  return result;
}

- (int)showSIMPIN
{
  result = MGGetBoolAnswer();
  if (result)
  {
    return ([MEMORY[0x277D75128] isRunningInStoreDemoMode] & 1) == 0 && -[PhoneSettingsTelephony simIsPresent](self, "simIsPresent");
  }

  return result;
}

- (id)pendingRequestForUniqueSettingType:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v5 = [MEMORY[0x277CBEB68] null];
  }

  v6 = [(NSMutableDictionary *)self->_pendingRequests objectForKey:v5];

  return v6;
}

- (id)pendingSaveForUniqueSettingType:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v5 = [MEMORY[0x277CBEB68] null];
  }

  v6 = [(NSMutableDictionary *)self->_pendingSaves objectForKey:v5];

  return v6;
}

- (void)receivedRequestResponseForUniqueSettingType:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v4 = [MEMORY[0x277CBEB68] null];
  }

  [(NSMutableDictionary *)self->_pendingRequests removeObjectForKey:v4];
}

- (void)receivedSaveResponseForUniqueSettingType:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v4 = [MEMORY[0x277CBEB68] null];
  }

  [(NSMutableDictionary *)self->_pendingSaves removeObjectForKey:v4];
}

- (id)_callForwardingSettingsForForwardingReason:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([v4 isEqualToString:*MEMORY[0x277CC41A0]] & 1) == 0)
  {
    if ([v4 isEqualToString:*MEMORY[0x277CC4188]])
    {
      v5 = 40;
      goto LABEL_9;
    }

    if ([v4 isEqualToString:*MEMORY[0x277CC4190]])
    {
      v5 = 48;
      goto LABEL_9;
    }

    if ([v4 isEqualToString:*MEMORY[0x277CC4198]])
    {
      v5 = 56;
      goto LABEL_9;
    }

    v10 = PHDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&dword_23C12D000, v10, OS_LOG_TYPE_DEFAULT, "[WARN] Was asked for call-forwarding settings for an unsupported reason (%@), returning unconditional", &v11, 0xCu);
    }
  }

  v5 = 32;
LABEL_9:
  v6 = *(&self->super.isa + v5);
  v7 = v6;

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)postCallForwardingChangedNotificationForForwardingReason:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isEqualToString:*MEMORY[0x277CC41A0]])
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = v5;
    v7 = @"SettingsTelephonyCallForwardingChanged";
LABEL_9:
    [v5 postNotificationName:v7 object:self];

    goto LABEL_10;
  }

  if ([v4 isEqualToString:*MEMORY[0x277CC4188]])
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = v5;
    v7 = @"SettingsTelephonyCallForwardingChangedForMobileBusy";
    goto LABEL_9;
  }

  if ([v4 isEqualToString:*MEMORY[0x277CC4190]])
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = v5;
    v7 = @"SettingsTelephonyCallForwardingChangedForNoReply";
    goto LABEL_9;
  }

  if ([v4 isEqualToString:*MEMORY[0x277CC4198]])
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = v5;
    v7 = @"SettingsTelephonyCallForwardingChangedForNotReachable";
    goto LABEL_9;
  }

  v9 = PHDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_23C12D000, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Was asked to post a notification for an unsupported reason (%@), doing nothing", &v10, 0xCu);
  }

LABEL_10:
  v8 = *MEMORY[0x277D85DE8];
}

- (id)lastUsedForwardingNumberForReason:(id)a3
{
  v3 = [(PhoneSettingsTelephony *)self _callForwardingSettingsForForwardingReason:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 defaultCallForwardingNumber];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)resetLastUsedForwardingNumberForReason:(id)a3
{
  v3 = [(PhoneSettingsTelephony *)self _callForwardingSettingsForForwardingReason:a3];
  if (v3)
  {
    v5 = v3;
    [v3 setDefaultCallForwardingNumber:0];
    v4 = [v5 defaultCallForwardingNumberPreferencesKey];
    CFPreferencesSetAppValue(v4, 0, @"com.apple.mobilephone.settings");

    CFPreferencesAppSynchronize(@"com.apple.mobilephone.settings");
    v3 = v5;
  }
}

- (void)_handleCallWaitingSettings:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v4;
    _os_log_impl(&dword_23C12D000, v5, OS_LOG_TYPE_DEFAULT, "[PhoneSettingsTelephony _handleCallWaitingSettings]: Received a response for call-waiting request, userInfo is %@", &v14, 0xCu);
  }

  if (v4)
  {
    v6 = [v4 objectForKey:*MEMORY[0x277CC41E8]];
    if ([v6 BOOLValue])
    {
      v7 = 2;
    }

    else
    {
      v7 = 4;
    }

    self->_callWaitingEnabled = v7;

    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      callWaitingEnabled = self->_callWaitingEnabled;
      v14 = 67109120;
      LODWORD(v15) = callWaitingEnabled;
      v10 = "[PhoneSettingsTelephony _handleCallWaitingSettings]: _callWaitingEnabled was set to %d";
LABEL_11:
      _os_log_impl(&dword_23C12D000, v8, OS_LOG_TYPE_DEFAULT, v10, &v14, 8u);
    }
  }

  else
  {
    self->_callWaitingEnabled = self->_callWaitingEnabled & 0xFFFFFFF6 | 8;
    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_callWaitingEnabled;
      v14 = 67109120;
      LODWORD(v15) = v11;
      v10 = "[WARN] [PhoneSettingsTelephony _handleCallWaitingSettings]: call-waiting error, no userInfo was supplied, _callWaitingEnabled was set to %d";
      goto LABEL_11;
    }
  }

  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  [v12 postNotificationName:@"SettingsTelephonyCallWaitingChanged" object:self];

  self->_callWaitingEnabled &= ~8u;
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleNetworkList:(id)a3
{
  if (a3)
  {
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObject:a3 forKey:@"SettingsTelephonyNetworkListParameter"];
  }

  else
  {
    v5 = 0;
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"SettingsTelephonyNetworksChanged" object:self userInfo:v5];
}

- (void)_handleCallerIDSettings:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v4;
    _os_log_impl(&dword_23C12D000, v5, OS_LOG_TYPE_DEFAULT, "%@", &v13, 0xCu);
  }

  if (v4)
  {
    v6 = [v4 objectForKey:*MEMORY[0x277CC41C8]];
    v7 = [v4 objectForKey:*MEMORY[0x277CC41A8]];
    if (v6)
    {
      if ([v6 isEqualToString:*MEMORY[0x277CC41C0]])
      {
        v8 = 2;
      }

      else
      {
        v8 = 4;
      }

      self->_callerIDIsModifiable = v8;
    }

    if ([v7 isEqualToString:*MEMORY[0x277CC41B8]])
    {
      v9 = 4;
    }

    else if ([v7 isEqualToString:*MEMORY[0x277CC41B0]])
    {
      v9 = 2;
    }

    else
    {
      v9 = 8;
    }

    self->_callerIDMode = v9;
  }

  else
  {
    v10 = *&self->_callerIDIsModifiable;
    LODWORD(v10) = v10 & 0xFFFFFFF6 | 8;
    HIDWORD(v10) = HIDWORD(v10) & 0xFFFFFFF6 | 8;
    *&self->_callerIDIsModifiable = v10;
  }

  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  [v11 postNotificationName:@"SettingsTelephonyCallerIDChanged" object:self];

  *&self->_callerIDIsModifiable &= 0xFFFFFFF7FFFFFFF7;
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleCallerIDChanged
{
  [(PhoneSettingsTelephony *)self _resetCallerIDSettings];

  [(PhoneSettingsTelephony *)self _handleCallerIDSettings:0];
}

- (void)_handleSIMLockSettings:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_23C12D000, v5, OS_LOG_TYPE_DEFAULT, "Handling SIM lock settings changed with user info: %@", &v10, 0xCu);
  }

  if (v4)
  {
    v6 = [v4 objectForKey:*MEMORY[0x277CC41E8]];
    if ([v6 BOOLValue])
    {
      v7 = 2;
    }

    else
    {
      v7 = 4;
    }

    self->_simLocked = v7;
  }

  else
  {
    self->_simLocked = self->_simLocked & 0xFFFFFFF6 | 8;
  }

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 postNotificationName:@"SettingsTelephonySIMLockChanged" object:self];

  self->_simLocked &= ~8u;
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handlePINSettings:(id)a3
{
  v4 = MEMORY[0x277CBEAC0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:a3 != 0];
  v7 = [v4 dictionaryWithObject:v5 forKey:@"success"];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 postNotificationName:@"SettingsTelephonyPINChangedNotification" object:self userInfo:v7];
}

- (void)_requestCallForwardingSettingsForReason:(id)a3
{
  v4 = MEMORY[0x277CBEAC0];
  v5 = *MEMORY[0x277CC4238];
  v6 = *MEMORY[0x277CC4230];
  v7 = *MEMORY[0x277CC4168];
  v8 = *MEMORY[0x277CC4160];
  v9 = *MEMORY[0x277CC4178];
  v10 = a3;
  v12 = [v4 dictionaryWithObjectsAndKeys:{v10, @"STSettingTypeUniqueIdentifier", v5, v6, v7, v8, v10, v9, 0}];
  v11 = [(PhoneSettingsTelephony *)self _callForwardingSettingsForForwardingReason:v10];

  [v11 setCallForwardingState:1];
  [(PhoneSettingsTelephony *)self _requestSettings:v12];
}

- (void)_saveCallForwardingEnabled:(BOOL)a3 number:(id)a4 forwardingReason:(id)a5
{
  v6 = a3;
  v8 = a5;
  v9 = a4;
  v13 = [(PhoneSettingsTelephony *)self _callForwardingSettingsForForwardingReason:v8];
  v10 = [MEMORY[0x277CBEB38] dictionary];
  [v10 setObject:v8 forKey:@"STSettingTypeUniqueIdentifier"];
  [v10 setObject:*MEMORY[0x277CC4238] forKey:*MEMORY[0x277CC4230]];
  [v10 setObject:*MEMORY[0x277CC4168] forKey:*MEMORY[0x277CC4160]];
  [v10 setObject:v8 forKey:*MEMORY[0x277CC4178]];

  v11 = MEMORY[0x277CBED28];
  if (!v6)
  {
    v11 = MEMORY[0x277CBED10];
  }

  [v10 setObject:*v11 forKey:*MEMORY[0x277CC41E8]];
  v12 = UIUnformattedPhoneNumberFromString();

  if (v12)
  {
    [v10 setObject:v12 forKey:*MEMORY[0x277CC4170]];
  }

  [v13 setCallForwardingState:{objc_msgSend(v13, "callForwardingState") | 1}];
  [(PhoneSettingsTelephony *)self _saveSettings:v10];
}

- (void)_requestSettings:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_23C12D000, v5, OS_LOG_TYPE_DEFAULT, "[PhoneSettingsTelephony _requestSettings:]: Settings dictionary requested is %@", &v11, 0xCu);
  }

  pendingRequests = self->_pendingRequests;
  if (!pendingRequests)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = self->_pendingRequests;
    self->_pendingRequests = v7;

    pendingRequests = self->_pendingRequests;
  }

  v9 = [v4 objectForKey:@"STSettingTypeUniqueIdentifier"];
  [(NSMutableDictionary *)pendingRequests setObject:v4 forKey:v9];

  CTSettingRequest();
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_saveSettings:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  pendingSaves = self->_pendingSaves;
  if (!pendingSaves)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = self->_pendingSaves;
    self->_pendingSaves = v6;

    pendingSaves = self->_pendingSaves;
  }

  v8 = [v4 objectForKey:@"STSettingTypeUniqueIdentifier"];
  [(NSMutableDictionary *)pendingSaves setObject:v4 forKey:v8];

  v9 = PHDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_23C12D000, v9, OS_LOG_TYPE_DEFAULT, "SAVE SETTINGS: %@", &v11, 0xCu);
  }

  CTSettingSave();
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_simRemoved
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = @"SettingsTelephonySIMRemoved";
    _os_log_impl(&dword_23C12D000, v3, OS_LOG_TYPE_DEFAULT, "Posting %@", &v6, 0xCu);
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"SettingsTelephonySIMRemoved" object:self];

  [(PhoneSettingsTelephony *)self _reset];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_simPUKLocked
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = @"SettingsTelephonySIMPUKLocked";
    _os_log_impl(&dword_23C12D000, v3, OS_LOG_TYPE_DEFAULT, "Posting %@", &v6, 0xCu);
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"SettingsTelephonySIMPUKLocked" object:self];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_networkSettingsDisabled
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = @"SettingsTelephonyNetworkSettingsDisabledNotification";
    _os_log_impl(&dword_23C12D000, v3, OS_LOG_TYPE_DEFAULT, "Posting %@", &v6, 0xCu);
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"SettingsTelephonyNetworkSettingsDisabledNotification" object:self];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_phoneBookSelected
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(self + 112) & 1;
    newNumber = self->_newNumber;
    v8[0] = 67109378;
    v8[1] = v4;
    v9 = 2112;
    v10 = newNumber;
    _os_log_impl(&dword_23C12D000, v3, OS_LOG_TYPE_DEFAULT, "Phone book selected, _savingPhoneNumber=%d, _newNumber=%@", v8, 0x12u);
  }

  if (*(self + 112))
  {
    *(self + 112) |= 2u;
    [(PhoneSettingsTelephony *)self serverConnection];
    v6 = self->_newNumber;
    _CTServerConnectionSavePhonebookEntry();
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_phoneNumberSaveFinishedWithSuccess:(BOOL)a3
{
  v3 = a3;
  v21 = *MEMORY[0x277D85DE8];
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 67109120;
    LODWORD(v18) = v3;
    _os_log_impl(&dword_23C12D000, v5, OS_LOG_TYPE_DEFAULT, "Phone number save finished with success=%d", &v17, 8u);
  }

  *(self + 112) &= ~1u;
  newNumber = self->_newNumber;
  if (v3)
  {
    if (newNumber)
    {
      active = CPPhoneNumberCopyActiveCountryCode();
      v8 = PHDefaultLog();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (active)
      {
        if (v9)
        {
          v17 = 138412546;
          v18 = newNumber;
          v19 = 2112;
          v20 = active;
          _os_log_impl(&dword_23C12D000, v8, OS_LOG_TYPE_DEFAULT, "Attempting to format digits %@ using ISO country code %@", &v17, 0x16u);
        }

        v10 = PNCreateFormattedStringWithCountry();
        myNumber = self->_myNumber;
        self->_myNumber = v10;

        CFRelease(active);
      }

      else
      {
        if (v9)
        {
          v17 = 138412290;
          v18 = newNumber;
          _os_log_impl(&dword_23C12D000, v8, OS_LOG_TYPE_DEFAULT, "Could not determine the country code for the digits %@.", &v17, 0xCu);
        }
      }
    }

    v13 = PHDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = self->_myNumber;
      v17 = 138412290;
      v18 = v14;
      _os_log_impl(&dword_23C12D000, v13, OS_LOG_TYPE_DEFAULT, "Phone settings just got success for setting this number: %@", &v17, 0xCu);
    }

    newNumber = self->_newNumber;
    v12 = @"SettingsTelephonySetMyNumberSuccessNotification";
  }

  else
  {
    v12 = @"SettingsTelephonySetMyNumberFailureNotification";
  }

  self->_newNumber = 0;

  v15 = [MEMORY[0x277CCAB98] defaultCenter];
  [v15 postNotificationName:v12 object:self];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_phoneNumberWritten
{
  v2 = *(self + 112);
  *(self + 112) = v2 | 4;
  if ((~v2 & 3) == 0)
  {
    [(PhoneSettingsTelephony *)self _phoneNumberSaveFinishedWithSuccess:1];
  }
}

- (void)_phoneNumberChanged
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8[0]) = 0;
    _os_log_impl(&dword_23C12D000, v3, OS_LOG_TYPE_DEFAULT, "Received phone number changed notification", v8, 2u);
  }

  myNumber = self->_myNumber;
  self->_myNumber = 0;

  if ((~*(self + 112) & 7) == 0)
  {
    v5 = PHDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(self + 112);
      v8[0] = 67109632;
      v8[1] = v6 & 1;
      v9 = 1024;
      v10 = (v6 >> 1) & 1;
      v11 = 1024;
      v12 = (v6 >> 2) & 1;
      _os_log_impl(&dword_23C12D000, v5, OS_LOG_TYPE_DEFAULT, "Promoting to a save finished with success notification: _savingPhoneNumber=%d, _phoneBookSelected=%d, _phoneNumberWritten=%d", v8, 0x14u);
    }

    [(PhoneSettingsTelephony *)self _phoneNumberSaveFinishedWithSuccess:1];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)descriptionDictionary
{
  v3 = [(PhoneSettingsTelephony *)self manuallySelectedNetworkDictionary];
  v4 = MEMORY[0x277CBEAC0];
  v5 = v3;
  if (!v3)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"No Manual Network Dictionary"];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithInt:{-[PhoneSettingsTelephony networkSelectionMode](self, "networkSelectionMode")}];
  v7 = *MEMORY[0x277CBECE8];
  v8 = CTRegistrationCopyLocalizedOperatorName();
  v9 = [v4 dictionaryWithObjectsAndKeys:{v5, @"ManuallySelectedNetworkDictionary", v6, @"NetworkSelectionMode", v8, @"CTRegistrationCopyLocalizedOperatorName", CTRegistrationGetStatus(), @"CTRegistrationGetStatus", 0}];
  v10 = [v4 dictionaryWithObject:v9 forKey:@"PhoneSettingsNetworkState"];

  if (!v3)
  {
  }

  return v10;
}

- (void)setMyNumber:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23C12D000, v0, v1, "*** _CTServerConnectionSelectPhonebook returned error=%d domain=%d", v3, v4);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)hasSubscriberIdentity
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23C12D000, v0, v1, "Error calling _CTServerConnectionCopyMobileEquipmentInfo(): error=%d, domain=%d", v3, v4);
  v2 = *MEMORY[0x277D85DE8];
}

@end