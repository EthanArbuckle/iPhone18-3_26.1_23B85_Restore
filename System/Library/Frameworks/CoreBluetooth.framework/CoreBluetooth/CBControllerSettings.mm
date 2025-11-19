@interface CBControllerSettings
- (CBControllerSettings)initWithXPCObject:(id)a3 error:(id *)a4;
- (id)descriptionWithLevel:(int)a3;
- (void)encodeWithXPCObject:(id)a3;
@end

@implementation CBControllerSettings

- (void)encodeWithXPCObject:(id)a3
{
  v4 = a3;
  discoverableState = self->_discoverableState;
  xdict = v4;
  if (discoverableState)
  {
    xpc_dictionary_set_int64(v4, "dsSt", discoverableState);
    v4 = xdict;
  }

  if (self->_gameControllerAutoSwitchMode)
  {
    xpc_dictionary_set_int64(xdict, "gAsM", self->_gameControllerAutoSwitchMode);
    v4 = xdict;
  }

  if (self->_gameControllerUSBBluetoothPairing)
  {
    xpc_dictionary_set_int64(xdict, "gUbP", self->_gameControllerUSBBluetoothPairing);
    v4 = xdict;
  }

  if (self->_hid3ppLELegacyMode)
  {
    xpc_dictionary_set_int64(xdict, "hFMs", self->_hid3ppLELegacyMode);
    v4 = xdict;
  }

  if (self->_bleAdvRSSI)
  {
    xpc_dictionary_set_int64(xdict, "rssi", self->_bleAdvRSSI);
    v4 = xdict;
  }

  if (self->_setupAssistantIfNoKeyboard)
  {
    xpc_dictionary_set_int64(xdict, "saKB", self->_setupAssistantIfNoKeyboard);
    v4 = xdict;
  }

  if (self->_setupAssistantIfNoPointingDevice)
  {
    xpc_dictionary_set_int64(xdict, "saPD", self->_setupAssistantIfNoPointingDevice);
    v4 = xdict;
  }

  if (self->_spatialSoundProfileAllowed)
  {
    xpc_dictionary_set_int64(xdict, "spSP", self->_spatialSoundProfileAllowed);
    v4 = xdict;
  }
}

- (id)descriptionWithLevel:(int)a3
{
  if (a3 <= 0x14u)
  {
    v69 = 0;
    discoverableState = self->_discoverableState;
    if (discoverableState <= 2)
    {
      v5 = off_1E811E680[discoverableState];
    }

    NSAppendPrintF_safe();
    v8 = v69;
    v68 = v8;
    gameControllerAutoSwitchMode = self->_gameControllerAutoSwitchMode;
    if (gameControllerAutoSwitchMode <= 2)
    {
      v10 = off_1E811E698[gameControllerAutoSwitchMode];
    }

    NSAppendPrintF_safe();
    v15 = v68;

    v67 = v15;
    gameControllerUSBBluetoothPairing = self->_gameControllerUSBBluetoothPairing;
    if (gameControllerUSBBluetoothPairing <= 2)
    {
      v17 = off_1E811E698[gameControllerUSBBluetoothPairing];
    }

    NSAppendPrintF_safe();
    v21 = v67;

    v66 = v21;
    hid3ppLELegacyMode = self->_hid3ppLELegacyMode;
    if (hid3ppLELegacyMode <= 2)
    {
      v23 = off_1E811E698[hid3ppLELegacyMode];
    }

    NSAppendPrintF_safe();
    v27 = v66;

    v65 = v27;
    bleAdvRSSI = self->_bleAdvRSSI;
    NSAppendPrintF_safe();
    v28 = v27;

    v64 = v28;
    setupAssistantIfNoKeyboard = self->_setupAssistantIfNoKeyboard;
    if (setupAssistantIfNoKeyboard <= 2)
    {
      v30 = off_1E811E698[setupAssistantIfNoKeyboard];
    }

    NSAppendPrintF_safe();
    v35 = v64;

    v63 = v35;
    setupAssistantIfNoPointingDevice = self->_setupAssistantIfNoPointingDevice;
    if (setupAssistantIfNoPointingDevice <= 2)
    {
      v37 = off_1E811E698[setupAssistantIfNoPointingDevice];
    }

    NSAppendPrintF_safe();
    v41 = v63;

    v62 = v41;
    spatialSoundProfileAllowed = self->_spatialSoundProfileAllowed;
    if (spatialSoundProfileAllowed <= 2)
    {
      v43 = off_1E811E698[spatialSoundProfileAllowed];
    }

    v46 = &v62;
    goto LABEL_35;
  }

  if ((a3 & 0x8000000) != 0)
  {
    v6 = 0;
    v60 = 0;
    v7 = self->_discoverableState;
    if (v7 > 2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v61 = 0;
    NSAppendPrintF_safe();
    v6 = 0;
    v60 = v6;
    v7 = self->_discoverableState;
    if (v7 > 2)
    {
      goto LABEL_11;
    }
  }

  v11 = off_1E811E680[v7];
LABEL_11:
  NSAppendPrintF_safe();
  v12 = v60;

  v59 = v12;
  v13 = self->_gameControllerAutoSwitchMode;
  if (v13 <= 2)
  {
    v14 = off_1E811E698[v13];
  }

  NSAppendPrintF_safe();
  v18 = v59;

  v58 = v18;
  v19 = self->_gameControllerUSBBluetoothPairing;
  if (v19 <= 2)
  {
    v20 = off_1E811E698[v19];
  }

  NSAppendPrintF_safe();
  v24 = v58;

  v57 = v24;
  v25 = self->_hid3ppLELegacyMode;
  if (v25 <= 2)
  {
    v26 = off_1E811E698[v25];
  }

  NSAppendPrintF_safe();
  v31 = v57;

  v56 = v31;
  v52 = self->_bleAdvRSSI;
  NSAppendPrintF_safe();
  v32 = v31;

  v55 = v32;
  v33 = self->_setupAssistantIfNoKeyboard;
  if (v33 <= 2)
  {
    v34 = off_1E811E698[v33];
  }

  NSAppendPrintF_safe();
  v38 = v55;

  v54 = v38;
  v39 = self->_setupAssistantIfNoPointingDevice;
  if (v39 <= 2)
  {
    v40 = off_1E811E698[v39];
  }

  NSAppendPrintF_safe();
  v41 = v54;

  v53 = v41;
  v44 = self->_spatialSoundProfileAllowed;
  if (v44 <= 2)
  {
    v45 = off_1E811E698[v44];
  }

  v46 = &v53;
LABEL_35:
  NSAppendPrintF_safe();
  v47 = *v46;

  if (v47)
  {
    v48 = v47;
  }

  else
  {
    v48 = &stru_1F40009C8;
  }

  v49 = v48;

  return v48;
}

- (CBControllerSettings)initWithXPCObject:(id)a3 error:(id *)a4
{
  OUTLINED_FUNCTION_19(self, a2, a3);
  v7 = OUTLINED_FUNCTION_18();
  if (!v7)
  {
    if (v5)
    {
      v23 = [objc_opt_class() description];
      *v5 = CBErrorF(-6756, "%@ init failed", v24, v25, v26, v27, v28, v29, v23);
    }

    goto LABEL_33;
  }

  if (MEMORY[0x1C68DFDD0]() != MEMORY[0x1E69E9E80])
  {
    if (v5)
    {
      v30 = CBErrorF(-6756, "XPC non-dict", v8, v9, v10, v11, v12, v13, v31);
      OUTLINED_FUNCTION_16(v30);
      goto LABEL_28;
    }

    goto LABEL_33;
  }

  OUTLINED_FUNCTION_4();
  v14 = OUTLINED_FUNCTION_15();
  if (v14 == 6)
  {
    *(v7 + 16) = 0;
  }

  else if (v14 == 5)
  {
    goto LABEL_33;
  }

  v15 = OUTLINED_FUNCTION_1_3();
  if (v15 == 6)
  {
    *(v7 + 8) = 0;
  }

  else if (v15 == 5)
  {
    goto LABEL_33;
  }

  v16 = OUTLINED_FUNCTION_1_3();
  if (v16 == 6)
  {
    *(v7 + 9) = 0;
  }

  else if (v16 == 5)
  {
    goto LABEL_33;
  }

  v17 = OUTLINED_FUNCTION_1_3();
  if (v17 == 6)
  {
    *(v7 + 10) = 0;
  }

  else if (v17 == 5)
  {
    goto LABEL_33;
  }

  v18 = OUTLINED_FUNCTION_1_3();
  if (v18 == 6)
  {
    *(v7 + 14) = 0;
  }

  else if (v18 == 5)
  {
    goto LABEL_33;
  }

  v19 = OUTLINED_FUNCTION_1_3();
  if (v19 == 6)
  {
    *(v7 + 11) = 0;
  }

  else if (v19 == 5)
  {
    goto LABEL_33;
  }

  v20 = OUTLINED_FUNCTION_1_3();
  if (v20 == 6)
  {
    *(v7 + 12) = 0;
  }

  else if (v20 == 5)
  {
    goto LABEL_33;
  }

  v21 = OUTLINED_FUNCTION_1_3();
  if (v21 != 6)
  {
    if (v21 != 5)
    {
      goto LABEL_27;
    }

LABEL_33:
    v6 = 0;
    goto LABEL_28;
  }

  *(v7 + 13) = 0;
LABEL_27:
  v6 = v7;
LABEL_28:

  return v6;
}

@end