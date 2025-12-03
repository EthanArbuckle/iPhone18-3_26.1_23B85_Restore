@interface AXUIVoiceOverDeviceConfigController
- (AXUIVoiceOverDeviceConfigController)init;
- (BOOL)_isDisplayHIMS;
- (id)disconnectOnSleep:(id)sleep;
- (id)himsUsesDot7ForCommand:(id)command;
- (id)specifiers;
- (int64_t)axDeviceControllerType;
- (void)_allowUSBRM;
- (void)_clearVOUSBRMDisabler;
- (void)_doReallyForgetDevice;
- (void)dealloc;
- (void)deviceConnectedHandler:(id)handler;
- (void)deviceRemoved:(id)removed;
- (void)deviceUpdated:(id)updated;
- (void)forgetDevice:(id)device;
- (void)setDisconnectOnSleep:(id)sleep specifier:(id)specifier;
- (void)setHIMSUsesDot7ForCommand:(id)command specifier:(id)specifier;
@end

@implementation AXUIVoiceOverDeviceConfigController

- (AXUIVoiceOverDeviceConfigController)init
{
  v10.receiver = self;
  v10.super_class = AXUIVoiceOverDeviceConfigController;
  v2 = [(AXUISettingsSetupCapableListController *)&v10 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_deviceRemoved_ name:*MEMORY[0x1E69898C8] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_deviceUpdated_ name:*MEMORY[0x1E69898D0] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v2 selector:sel_deviceConnectedHandler_ name:*MEMORY[0x1E69898C0] object:0];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 addObserver:v2 selector:sel_deviceConnectedHandler_ name:*MEMORY[0x1E69898B8] object:0];

    v7 = [objc_alloc(MEMORY[0x1E69C9D00]) initWithDelegate:v2];
    brailleClient = v2->_brailleClient;
    v2->_brailleClient = v7;

    [(SCROBrailleClient *)v2->_brailleClient setKeepConnectionAlive:1];
    [(SCROBrailleClient *)v2->_brailleClient setDisplayDescriptorCallbackEnabled:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = AXUIVoiceOverDeviceConfigController;
  [(AXUISettingsSetupCapableListController *)&v4 dealloc];
}

- (void)_doReallyForgetDevice
{
  v9 = *MEMORY[0x1E69E9840];
  self->_dismissed = 1;
  [(AXUIBluetoothDevice *)self->_device unpair];
  v3 = AXLogBrailleHW();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    device = self->_device;
    v7 = 138412290;
    v8 = device;
    _os_log_impl(&dword_1C0DFB000, v3, OS_LOG_TYPE_INFO, "Unpair device: %@", &v7, 0xCu);
  }

  navigationController = [(AXUIVoiceOverDeviceConfigController *)self navigationController];
  v6 = [navigationController popViewControllerAnimated:1];
}

- (void)_clearVOUSBRMDisabler
{
  v2 = _AXSGetUSBRMDisablers() & 0xFFFFFFFELL;

  MEMORY[0x1EEE60FE0](v2);
}

- (void)_allowUSBRM
{
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  [mEMORY[0x1E69ADFB8] setBoolValue:1 forSetting:*MEMORY[0x1E69ADF78]];
}

- (void)forgetDevice:(id)device
{
  v37 = *MEMORY[0x1E69E9840];
  [(SCROBrailleClient *)self->_brailleClient driverConfiguration];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v35 = 0u;
  v4 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (!v4)
  {
    _AXSGetUSBRMDisablers();
LABEL_17:
    [(AXUIVoiceOverDeviceConfigController *)self _doReallyForgetDevice];
    goto LABEL_18;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0;
  v8 = *v33;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v33 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v32 + 1) + 8 * i);
      v11 = [v10 objectForKey:*MEMORY[0x1E69C9D18]];
      unsignedIntegerValue = [v11 unsignedIntegerValue];

      v13 = unsignedIntegerValue == 4;
      if (unsignedIntegerValue == 4)
      {
        ++v7;
      }

      v14 = [v10 objectForKey:*MEMORY[0x1E69C9D08]];
      identifier = [(AXUIBluetoothDevice *)self->_device identifier];
      v16 = [v14 isEqual:identifier];

      if (v16)
      {
        v6 = v13;
      }
    }

    v5 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  }

  while (v5);
  v17 = _AXSGetUSBRMDisablers();
  if (!v6 || (v17 & 1) == 0 || v7 != 1)
  {
    goto LABEL_17;
  }

  v18 = MEMORY[0x1E69DC650];
  v19 = AXUILocalizedStringForKey(@"BRAILLE_USBRM_QUERY_TITLE");
  v20 = AXLocStringKeyForModel();
  v21 = AXUILocalizedStringForKey(v20);
  v22 = [v18 alertControllerWithTitle:v19 message:v21 preferredStyle:1];

  v23 = MEMORY[0x1E69DC648];
  v24 = AXUILocalizedStringForKey(@"BRAILLE_USBRM_TURN_OFF");
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __52__AXUIVoiceOverDeviceConfigController_forgetDevice___block_invoke;
  v31[3] = &unk_1E812E1F0;
  v31[4] = self;
  v25 = [v23 actionWithTitle:v24 style:0 handler:v31];
  [v22 addAction:v25];

  v26 = MEMORY[0x1E69DC648];
  v27 = AXUILocalizedStringForKey(@"BRAILLE_USBRM_ALLOW_CONNECTIONS");
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __52__AXUIVoiceOverDeviceConfigController_forgetDevice___block_invoke_2;
  v30[3] = &unk_1E812E1F0;
  v30[4] = self;
  v28 = [v26 actionWithTitle:v27 style:0 handler:v30];
  [v22 addAction:v28];

  [(AXUIVoiceOverDeviceConfigController *)self presentViewController:v22 animated:1 completion:0];
LABEL_18:
}

uint64_t __52__AXUIVoiceOverDeviceConfigController_forgetDevice___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _allowUSBRM];
  [*(a1 + 32) _clearVOUSBRMDisabler];
  v2 = *(a1 + 32);

  return [v2 _doReallyForgetDevice];
}

uint64_t __52__AXUIVoiceOverDeviceConfigController_forgetDevice___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _clearVOUSBRMDisabler];
  v2 = *(a1 + 32);

  return [v2 _doReallyForgetDevice];
}

- (void)deviceConnectedHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  object = [handlerCopy object];
  mEMORY[0x1E69887B8] = [MEMORY[0x1E69887B8] sharedInstance];
  ignoreLogging = [mEMORY[0x1E69887B8] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x1E69887B8] identifier];
    v10 = AXLoggerForFacility();

    v11 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = AXColorizeFormatLog();
      v13 = NSStringFromSelector(a2);
      name = [handlerCopy name];
      [object name];
      v22 = v21 = name;
      v20 = v13;
      v15 = _AXStringForArgs();

      if (os_log_type_enabled(v10, v11))
      {
        *buf = 138543362;
        v24 = v15;
        _os_log_impl(&dword_1C0DFB000, v10, v11, "%{public}@", buf, 0xCu);
      }
    }
  }

  identifier2 = [object identifier];
  identifier3 = [(AXUIBluetoothDevice *)self->_device identifier];
  if (![identifier2 isEqualToString:identifier3])
  {

LABEL_12:
    goto LABEL_13;
  }

  dismissed = self->_dismissed;

  if (!dismissed)
  {
    v19 = [(NSArray *)self->_deviceSpecifiers objectAtIndex:3];
    identifier2 = v19;
    if (v19)
    {
      [v19 setProperty:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E69C58C8]];
      [(AXUIVoiceOverDeviceConfigController *)self reloadSpecifier:identifier2];
    }

    goto LABEL_12;
  }

LABEL_13:
}

- (void)deviceUpdated:(id)updated
{
  object = [updated object];
  identifier = [object identifier];
  identifier2 = [(AXUIBluetoothDevice *)self->_device identifier];
  if ([identifier isEqualToString:identifier2])
  {
    dismissed = self->_dismissed;

    if (dismissed)
    {
      goto LABEL_6;
    }

    identifier = [(AXUIBluetoothDevice *)self->_device name];
    [(AXUIVoiceOverDeviceConfigController *)self setTitle:identifier];
  }

  else
  {
  }

LABEL_6:
}

- (void)deviceRemoved:(id)removed
{
  v14 = *MEMORY[0x1E69E9840];
  object = [removed object];
  v5 = AXLogBrailleHW();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    device = self->_device;
    v10 = 138412546;
    v11 = object;
    v12 = 2112;
    v13 = device;
    _os_log_impl(&dword_1C0DFB000, v5, OS_LOG_TYPE_DEFAULT, "Device removed: %@, current device: %@", &v10, 0x16u);
  }

  identifier = [object identifier];
  identifier2 = [(AXUIBluetoothDevice *)self->_device identifier];
  if ([identifier isEqualToString:identifier2])
  {
    dismissed = self->_dismissed;

    if (!dismissed)
    {
      self->_dismissed = 1;
      [(AXUIVoiceOverDeviceConfigController *)self dismissViewControllerAnimated:1 completion:0];
    }
  }

  else
  {
  }
}

- (int64_t)axDeviceControllerType
{
  specifier = [(AXUIVoiceOverDeviceConfigController *)self specifier];
  properties = [specifier properties];
  v4 = [properties objectForKey:@"axDeviceControllerType"];
  intValue = [v4 intValue];

  return intValue;
}

- (id)specifiers
{
  v74 = *MEMORY[0x1E69E9840];
  if (!self->_device)
  {
    buf[0] = 0;
    objc_opt_class();
    specifier = [(AXUIVoiceOverDeviceConfigController *)self specifier];
    userInfo = [specifier userInfo];
    v5 = __UIAccessibilityCastAsClass();

    v6 = [v5 objectForKey:@"bt-device"];
    device = self->_device;
    self->_device = v6;
  }

  v8 = AXLogBrailleHW();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    specifier2 = [(AXUIVoiceOverDeviceConfigController *)self specifier];
    specifier3 = [(AXUIVoiceOverDeviceConfigController *)self specifier];
    userInfo2 = [specifier3 userInfo];
    *buf = 138412546;
    v71 = specifier2;
    v72 = 2112;
    v73 = userInfo2;
    _os_log_impl(&dword_1C0DFB000, v8, OS_LOG_TYPE_DEFAULT, "SPEC: %@ / %@", buf, 0x16u);
  }

  v12 = *MEMORY[0x1E69C57B8];
  if (!*(&self->super.super.super.super.super.super.super.isa + v12))
  {
    v69 = *MEMORY[0x1E69C57B8];
    v13 = MEMORY[0x1E695DEC8];
    v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v15 = [(AXUIVoiceOverDeviceConfigController *)self loadSpecifiersFromPlistName:@"BluetoothDeviceConfig" target:self bundle:v14];
    v16 = [v13 arrayWithArray:v15];
    deviceSpecifiers = self->_deviceSpecifiers;
    self->_deviceSpecifiers = v16;

    v18 = [(NSArray *)self->_deviceSpecifiers objectAtIndex:0];
    v19 = AXLocStringKeyForModel();
    v20 = AXUILocalizedStringForKey(v19);
    v68 = v18;
    [v18 setProperty:v20 forKey:*MEMORY[0x1E69C5900]];

    v21 = [(NSArray *)self->_deviceSpecifiers objectAtIndex:1];
    v22 = AXUILocalizedStringForKey(@"DISCONNECT_ON_SLEEP_BRAILLE");
    v23 = *MEMORY[0x1E69C59A8];
    [v21 setProperty:v22 forKey:*MEMORY[0x1E69C59A8]];

    v24 = AXUILocalizedStringForKey(@"DISCONNECT_ON_SLEEP_BRAILLE");
    v67 = v21;
    [v21 setName:v24];

    v25 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
    if ([(AXUIVoiceOverDeviceConfigController *)self _isDisplayHIMS])
    {
      v26 = MEMORY[0x1E69C5748];
      v27 = AXUILocalizedStringForKey(@"USE_DOT_7_FOR_COMMANDS");
      v28 = [v26 preferenceSpecifierNamed:v27 target:self set:sel_setHIMSUsesDot7ForCommand_specifier_ get:sel_himsUsesDot7ForCommand_ detail:0 cell:6 edit:0];

      [v25 addObject:v28];
    }

    v66 = v25;
    v29 = [(NSArray *)self->_deviceSpecifiers objectAtIndex:3];
    v30 = *MEMORY[0x1E69C5878];
    v31 = [v29 propertyForKey:*MEMORY[0x1E69C5878]];
    v32 = AXUILocalizedStringForKey(@"FORGET_BUTTON");
    [v29 setProperty:v32 forKey:v23];

    v33 = AXUILocalizedStringForKey(@"FORGET_BUTTON");
    v65 = v29;
    [v29 setName:v33];

    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      v36 = MEMORY[0x1E696AEC0];
      v37 = AXUILocalizedStringForKey(@"FORGET_ALERT_TITLE");
      name = [(AXUIBluetoothDevice *)self->_device name];
      v39 = [v36 stringWithFormat:v37, name];

      v40 = MEMORY[0x1E695DF20];
      v41 = *MEMORY[0x1E69C5890];
      v42 = AXUILocalizedStringForKey(@"FORGET_ALERT_BODY");
      v43 = *MEMORY[0x1E69C5888];
      v44 = AXUILocalizedStringForKey(@"CANCEL");
      v45 = v44;
      v46 = MEMORY[0x1E69C5868];
    }

    else
    {
      v40 = MEMORY[0x1E695DF20];
      v39 = AXUILocalizedStringForKey(@"FORGET_SHEET_TITLE");
      v41 = *MEMORY[0x1E69C5890];
      v42 = AXUILocalizedStringForKey(@"CANCEL");
      v43 = *MEMORY[0x1E69C5868];
      v44 = AXUILocalizedStringForKey(@"OK");
      v45 = v44;
      v46 = MEMORY[0x1E69C5880];
    }

    v47 = [v40 dictionaryWithObjectsAndKeys:{v39, v41, v42, v43, v44, *v46, 0}];
    [v31 addEntriesFromDictionary:v47];

    v48 = [(NSArray *)self->_deviceSpecifiers objectAtIndex:3];
    [v48 setProperty:v31 forKey:v30];

    v49 = [(NSArray *)self->_deviceSpecifiers objectAtIndex:3];
    [v49 setupWithDictionary:v31];

    parentController = [(AXUIVoiceOverDeviceConfigController *)self parentController];
    v51 = objc_opt_respondsToSelector();

    v12 = v69;
    if (v51)
    {
      parentController2 = [(AXUIVoiceOverDeviceConfigController *)self parentController];
      v53 = [parentController2 detailSpecifiersForDevice:self->_device withTarget:self];

      if ([v53 count])
      {
        [v66 addObjectsFromArray:v53];
      }
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v54 = [(NSArray *)self->_deviceSpecifiers mutableCopy];
      if ([(AXUIVoiceOverDeviceConfigController *)self axDeviceControllerType]!= 1)
      {
        [v54 removeObjectsInRange:{0, 2}];
      }

      [v66 addObjectsFromArray:v54];
    }

    parentController3 = [(AXUIVoiceOverDeviceConfigController *)self parentController];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_25;
    }

    parentController4 = [(AXUIVoiceOverDeviceConfigController *)self parentController];
    v57 = objc_opt_respondsToSelector();

    if (v57)
    {
      parentController3 = [(AXUIVoiceOverDeviceConfigController *)self parentController];
      if (![parentController3 bluetoothIsBusy] || (-[AXUIBluetoothDevice isBTLEDevice](self->_device, "isBTLEDevice") & 1) != 0)
      {
        goto LABEL_25;
      }

      parentController5 = [(AXUIVoiceOverDeviceConfigController *)self parentController];
      currentSpecifier = [parentController5 currentSpecifier];
      specifier4 = [(AXUIVoiceOverDeviceConfigController *)self specifier];

      if (currentSpecifier == specifier4)
      {
        parentController3 = [(NSArray *)self->_deviceSpecifiers objectAtIndex:3];
        [parentController3 setProperty:*MEMORY[0x1E695E4C0] forKey:*MEMORY[0x1E69C58C8]];
LABEL_25:
      }
    }

    v61 = *(&self->super.super.super.super.super.super.super.isa + v69);
    *(&self->super.super.super.super.super.super.super.isa + v69) = v66;
  }

  name2 = [(AXUIBluetoothDevice *)self->_device name];
  [(AXUIVoiceOverDeviceConfigController *)self setTitle:name2];

  v63 = *(&self->super.super.super.super.super.super.super.isa + v12);

  return v63;
}

- (id)disconnectOnSleep:(id)sleep
{
  v28 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E6989890] = [MEMORY[0x1E6989890] sharedInstance];
  voiceOverBrailleDisconnectOnSleep = [mEMORY[0x1E6989890] voiceOverBrailleDisconnectOnSleep];
  address = [(AXUIBluetoothDevice *)self->_device address];
  v7 = [voiceOverBrailleDisconnectOnSleep objectForKey:address];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    [(SCROBrailleClient *)self->_brailleClient driverConfiguration];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = v26 = 0u;
    v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v21 = 0;
      v11 = *v24;
      v12 = MEMORY[0x1E69C9D08];
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          v15 = [v14 objectForKey:{*v12, v21}];
          identifier = [(AXUIBluetoothDevice *)self->_device identifier];
          v17 = [v15 isEqual:identifier];

          if (v17)
          {
            v18 = [v14 objectForKey:*MEMORY[0x1E69C9D18]];
            unsignedIntegerValue = [v18 unsignedIntegerValue];

            if (unsignedIntegerValue == 8)
            {
              v7 = v21;
              v8 = MEMORY[0x1E695E110];
              goto LABEL_15;
            }
          }
        }

        v10 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

      v8 = MEMORY[0x1E695E118];
      v7 = v21;
    }

    else
    {
      v8 = MEMORY[0x1E695E118];
    }

LABEL_15:
  }

  return v8;
}

- (void)setDisconnectOnSleep:(id)sleep specifier:(id)specifier
{
  v5 = MEMORY[0x1E6989890];
  sleepCopy = sleep;
  sharedInstance = [v5 sharedInstance];
  voiceOverBrailleDisconnectOnSleep = [sharedInstance voiceOverBrailleDisconnectOnSleep];
  v11 = [voiceOverBrailleDisconnectOnSleep mutableCopy];

  if (!v11)
  {
    v11 = objc_opt_new();
  }

  address = [(AXUIBluetoothDevice *)self->_device address];
  [v11 setObject:sleepCopy forKeyedSubscript:address];

  mEMORY[0x1E6989890] = [MEMORY[0x1E6989890] sharedInstance];
  [mEMORY[0x1E6989890] setVoiceOverBrailleDisconnectOnSleep:v11];
}

- (BOOL)_isDisplayHIMS
{
  v21 = *MEMORY[0x1E69E9840];
  [(SCROBrailleClient *)self->_brailleClient driverConfiguration];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = v19 = 0u;
  v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    v6 = MEMORY[0x1E69C9D08];
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v8 objectForKey:*v6];
        identifier = [(AXUIBluetoothDevice *)self->_device identifier];
        v11 = [v9 isEqual:identifier];

        if (v11)
        {
          v13 = [v8 objectForKey:*MEMORY[0x1E69C9D10]];
          v12 = [v13 isEqual:@"com.apple.scrod.braille.driver.hims.braillesense"];

          goto LABEL_11;
        }
      }

      v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (void)setHIMSUsesDot7ForCommand:(id)command specifier:(id)specifier
{
  bOOLValue = [command BOOLValue];
  mEMORY[0x1E6989890] = [MEMORY[0x1E6989890] sharedInstance];
  [mEMORY[0x1E6989890] setVoiceOverTouchBrailleHIMSUsesDot7ForCommand:bOOLValue];
}

- (id)himsUsesDot7ForCommand:(id)command
{
  v3 = MEMORY[0x1E696AD98];
  mEMORY[0x1E6989890] = [MEMORY[0x1E6989890] sharedInstance];
  v5 = [v3 numberWithBool:{objc_msgSend(mEMORY[0x1E6989890], "voiceOverTouchBrailleHIMSUsesDot7ForCommand")}];

  return v5;
}

@end