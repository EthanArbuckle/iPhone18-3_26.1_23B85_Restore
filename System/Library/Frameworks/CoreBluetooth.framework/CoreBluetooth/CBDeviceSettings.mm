@interface CBDeviceSettings
- (CBDeviceSettings)init;
- (CBDeviceSettings)initWithXPCObject:(id)object error:(id *)error;
- (id)description;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation CBDeviceSettings

- (CBDeviceSettings)init
{
  v6.receiver = self;
  v6.super_class = CBDeviceSettings;
  v2 = [(CBDeviceSettings *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_spatialAudioMode = 255;
    v4 = v2;
  }

  return v3;
}

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  v5 = objectCopy;
  if (self->_aclLinkState)
  {
    xpc_dictionary_set_uint64(objectCopy, "aLS", self->_aclLinkState);
  }

  if (self->_aclPriority)
  {
    xpc_dictionary_set_int64(v5, "aclP", self->_aclPriority);
  }

  if (self->_adaptiveVolumeConfig)
  {
    xpc_dictionary_set_uint64(v5, "avCf", self->_adaptiveVolumeConfig);
  }

  if (self->_allowsAutoRoute)
  {
    xpc_dictionary_set_int64(v5, "alAR", self->_allowsAutoRoute);
  }

  if (self->_audioRouteHidden)
  {
    xpc_dictionary_set_int64(v5, "auRH", self->_audioRouteHidden);
  }

  if (self->_clickHoldModeLeft)
  {
    xpc_dictionary_set_uint64(v5, "clHL", self->_clickHoldModeLeft);
  }

  if (self->_clickHoldModeRight)
  {
    xpc_dictionary_set_uint64(v5, "clHR", self->_clickHoldModeRight);
  }

  if (self->_crownRotationDirection)
  {
    xpc_dictionary_set_uint64(v5, "crRD", self->_crownRotationDirection);
  }

  if (self->_conversationDetectConfig)
  {
    xpc_dictionary_set_uint64(v5, "cdCf", self->_conversationDetectConfig);
  }

  deviceFlagsMask = self->_deviceFlagsMask;
  if (deviceFlagsMask)
  {
    xpc_dictionary_set_uint64(v5, "dvFM", deviceFlagsMask);
  }

  deviceFlagsValue = self->_deviceFlagsValue;
  if (deviceFlagsValue)
  {
    xpc_dictionary_set_uint64(v5, "dvFV", deviceFlagsValue);
  }

  if (self->_doubleTapActionLeft)
  {
    xpc_dictionary_set_int64(v5, "dtAL", self->_doubleTapActionLeft);
  }

  if (self->_doubleTapActionRight)
  {
    xpc_dictionary_set_int64(v5, "dtAR", self->_doubleTapActionRight);
  }

  if (self->_endCallConfig)
  {
    xpc_dictionary_set_uint64(v5, "eCC", self->_endCallConfig);
  }

  listeningMode = self->_listeningMode;
  if (listeningMode)
  {
    xpc_dictionary_set_int64(v5, "lsnM", listeningMode);
  }

  listeningModeConfigs = self->_listeningModeConfigs;
  if (listeningModeConfigs)
  {
    xpc_dictionary_set_uint64(v5, "lsMC", listeningModeConfigs);
  }

  if (self->_microphoneMode)
  {
    xpc_dictionary_set_int64(v5, "micM", self->_microphoneMode);
  }

  if (self->_muteControlConfig)
  {
    xpc_dictionary_set_uint64(v5, "mCC", self->_muteControlConfig);
  }

  name = self->_name;
  xdict = v5;
  uTF8String = [(NSString *)name UTF8String];
  if (uTF8String)
  {
    xpc_dictionary_set_string(xdict, "nm", uTF8String);
  }

  if (self->_placementMode)
  {
    xpc_dictionary_set_int64(xdict, "dPlM", self->_placementMode);
  }

  powerSourceMock = self->_powerSourceMock;
  CUXPCEncodeObject();
  if (self->_relinquishAudioRoute)
  {
    xpc_dictionary_set_int64(xdict, "rlAR", self->_relinquishAudioRoute);
  }

  if (self->_selectiveSpeechListeningConfig)
  {
    xpc_dictionary_set_uint64(xdict, "ssCf", self->_selectiveSpeechListeningConfig);
  }

  v13 = xdict;
  if (self->_smartRoutingMode)
  {
    xpc_dictionary_set_int64(xdict, "srMd", self->_smartRoutingMode);
    v13 = xdict;
  }

  if (self->_spatialAudioAllowed)
  {
    xpc_dictionary_set_int64(xdict, "SpAA", self->_spatialAudioAllowed);
    v13 = xdict;
  }

  spatialAudioMode = self->_spatialAudioMode;
  if (spatialAudioMode != 255)
  {
    xpc_dictionary_set_int64(xdict, "SpAM", spatialAudioMode);
    v13 = xdict;
  }
}

- (id)description
{
  v61 = [objc_opt_class() description];
  NSAppendPrintF_safe();
  v3 = 0;

  if (self->_aclPriority)
  {
    if (self->_aclPriority > 0x31u)
    {
      self->_aclPriority;
    }

    NSAppendPrintF_safe();
    v4 = v3;

    v3 = v4;
  }

  adaptiveVolumeConfig = self->_adaptiveVolumeConfig;
  if (self->_adaptiveVolumeConfig)
  {
    if (adaptiveVolumeConfig <= 3)
    {
      v6 = *(&off_1E81224A8 + adaptiveVolumeConfig - 1);
    }

    NSAppendPrintF_safe();
    v7 = v3;

    v3 = v7;
  }

  if (self->_allowsAutoRoute)
  {
    self->_allowsAutoRoute;
    NSAppendPrintF_safe();
    v8 = v3;

    v3 = v8;
  }

  if (self->_audioRouteHidden)
  {
    self->_audioRouteHidden;
    NSAppendPrintF_safe();
    v9 = v3;

    v3 = v9;
  }

  clickHoldModeLeft = self->_clickHoldModeLeft;
  if (*&self->_clickHoldModeLeft)
  {
    clickHoldModeRight = self->_clickHoldModeRight;
    NSAppendPrintF_safe();
    v12 = v3;

    if (clickHoldModeLeft)
    {
      if (clickHoldModeLeft <= 7)
      {
        v13 = *(&off_1E81223F0 + clickHoldModeLeft - 1);
      }

      NSAppendPrintF_safe();
      v14 = v12;

      v12 = v14;
    }

    if (clickHoldModeRight)
    {
      if (clickHoldModeRight <= 7)
      {
        v15 = *(&off_1E81223F0 + clickHoldModeRight - 1);
      }

      NSAppendPrintF_safe();
      v3 = v12;
    }

    else
    {
      v3 = v12;
    }
  }

  conversationDetectConfig = self->_conversationDetectConfig;
  if (self->_conversationDetectConfig)
  {
    if (conversationDetectConfig <= 3)
    {
      v17 = *(&off_1E81224A8 + conversationDetectConfig - 1);
    }

    NSAppendPrintF_safe();
    v18 = v3;

    v3 = v18;
  }

  crownRotationDirection = self->_crownRotationDirection;
  if (self->_crownRotationDirection)
  {
    v20 = @"?";
    if (crownRotationDirection == 1)
    {
      v20 = @"BackToFront";
    }

    if (crownRotationDirection == 2)
    {
      v21 = @"FrontToBack";
    }

    else
    {
      v21 = v20;
    }

    v62 = v21;
    NSAppendPrintF_safe();
    v22 = v3;

    v3 = v22;
  }

  if (*&self->_deviceFlagsMask == 0)
  {
    doubleTapActionLeft = self->_doubleTapActionLeft;
    doubleTapActionRight = self->_doubleTapActionRight;
    if (!*&self->_doubleTapActionLeft)
    {
      goto LABEL_36;
    }

LABEL_44:
    v32 = doubleTapActionRight;
    NSAppendPrintF_safe();
    v33 = v3;

    if (doubleTapActionLeft)
    {
      if (doubleTapActionLeft <= 5)
      {
        v34 = off_1E8122428[doubleTapActionLeft - 1];
      }

      NSAppendPrintF_safe();
      v55 = v33;

      v33 = v55;
    }

    if (v32)
    {
      if (v32 <= 5)
      {
        v56 = off_1E8122428[v32 - 1];
      }

      NSAppendPrintF_safe();
      v3 = v33;

      endCallConfig = self->_endCallConfig;
      if (self->_endCallConfig)
      {
        goto LABEL_80;
      }
    }

    else
    {
      v3 = v33;
      endCallConfig = self->_endCallConfig;
      if (self->_endCallConfig)
      {
        goto LABEL_80;
      }
    }

LABEL_37:
    listeningMode = self->_listeningMode;
    if (!listeningMode)
    {
      goto LABEL_38;
    }

    goto LABEL_83;
  }

  v30 = CUPrintFlags64();
  v64 = CUPrintFlags64();
  NSAppendPrintF_safe();
  v31 = v3;

  v3 = v31;
  doubleTapActionLeft = self->_doubleTapActionLeft;
  doubleTapActionRight = self->_doubleTapActionRight;
  if (*&self->_doubleTapActionLeft)
  {
    goto LABEL_44;
  }

LABEL_36:
  endCallConfig = self->_endCallConfig;
  if (!self->_endCallConfig)
  {
    goto LABEL_37;
  }

LABEL_80:
  if (endCallConfig <= 4)
  {
    v57 = *(&off_1E8122488 + endCallConfig - 1);
  }

  NSAppendPrintF_safe();
  v58 = v3;

  v3 = v58;
  listeningMode = self->_listeningMode;
  if (!listeningMode)
  {
LABEL_38:
    if (!self->_listeningModeConfigs)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_83:
  if (listeningMode <= 4)
  {
    v59 = off_1E8122450[listeningMode - 1];
  }

  NSAppendPrintF_safe();
  v60 = v3;

  v3 = v60;
  if (self->_listeningModeConfigs)
  {
LABEL_39:
    v63 = CUPrintFlags32();
    NSAppendPrintF_safe();
    v27 = v3;

    v3 = v27;
  }

LABEL_40:
  microphoneMode = self->_microphoneMode;
  if (self->_microphoneMode)
  {
    if (microphoneMode <= 3)
    {
      v29 = off_1E8122470[microphoneMode - 1];
    }

    NSAppendPrintF_safe();
    v35 = v3;

    v3 = v35;
  }

  muteControlConfig = self->_muteControlConfig;
  if (self->_muteControlConfig)
  {
    if (muteControlConfig <= 4)
    {
      v37 = *(&off_1E8122488 + muteControlConfig - 1);
    }

    NSAppendPrintF_safe();
    v38 = v3;

    v3 = v38;
  }

  v39 = self->_name;
  if (v39)
  {
    NSAppendPrintF_safe();
    v40 = v3;

    v3 = v40;
  }

  if (self->_placementMode)
  {
    self->_placementMode;
    NSAppendPrintF_safe();
    v41 = v3;

    v3 = v41;
  }

  v42 = self->_powerSourceMock;
  if (v42)
  {
    NSAppendPrintF_safe();
    v43 = v3;

    v3 = v43;
  }

  if (self->_relinquishAudioRoute)
  {
    self->_relinquishAudioRoute;
    NSAppendPrintF_safe();
    v44 = v3;

    v3 = v44;
  }

  selectiveSpeechListeningConfig = self->_selectiveSpeechListeningConfig;
  if (self->_selectiveSpeechListeningConfig)
  {
    if (selectiveSpeechListeningConfig <= 3)
    {
      v46 = *(&off_1E81224A8 + selectiveSpeechListeningConfig - 1);
    }

    NSAppendPrintF_safe();
    v47 = v3;

    v3 = v47;
  }

  if (self->_smartRoutingMode)
  {
    self->_smartRoutingMode;
    NSAppendPrintF_safe();
    v48 = v3;

    v3 = v48;
  }

  if (self->_spatialAudioAllowed)
  {
    self->_spatialAudioAllowed;
    NSAppendPrintF_safe();
    v49 = v3;

    v3 = v49;
  }

  spatialAudioMode = self->_spatialAudioMode;
  if (spatialAudioMode != 255)
  {
    if (spatialAudioMode <= 3)
    {
      v51 = off_1E81224C0[spatialAudioMode];
    }

    NSAppendPrintF_safe();
    v52 = v3;

    v3 = v52;
  }

  v53 = v3;

  return v3;
}

- (CBDeviceSettings)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v7 = [(CBDeviceSettings *)self init];
  if (!v7)
  {
    if (error)
    {
      v40 = [objc_opt_class() description];
      *error = CBErrorF(-6756, "%@ super init failed", v41, v42, v43, v44, v45, v46, v40);
    }

    goto LABEL_83;
  }

  if (MEMORY[0x1C68DFDD0](objectCopy) != MEMORY[0x1E69E9E80])
  {
    if (error)
    {
      CBErrorF(-6756, "XPC non-dict", v8, v9, v10, v11, v12, v13, v47);
      *error = v38 = 0;
      goto LABEL_78;
    }

    goto LABEL_83;
  }

  OUTLINED_FUNCTION_0();
  v14 = OUTLINED_FUNCTION_3_1();
  if (v14 == 6)
  {
    v7->_aclLinkState = 0;
  }

  else if (v14 == 5)
  {
    goto LABEL_83;
  }

  v15 = OUTLINED_FUNCTION_1_3();
  if (v15 == 6)
  {
    v7->_aclPriority = 0;
  }

  else if (v15 == 5)
  {
    goto LABEL_83;
  }

  OUTLINED_FUNCTION_0();
  v16 = OUTLINED_FUNCTION_3_1();
  if (v16 == 6)
  {
    v7->_adaptiveVolumeConfig = 0;
  }

  else if (v16 == 5)
  {
    goto LABEL_83;
  }

  v17 = OUTLINED_FUNCTION_1_3();
  if (v17 == 6)
  {
    v7->_allowsAutoRoute = 0;
  }

  else if (v17 == 5)
  {
    goto LABEL_83;
  }

  v18 = OUTLINED_FUNCTION_1_3();
  if (v18 == 6)
  {
    v7->_audioRouteHidden = 0;
  }

  else if (v18 == 5)
  {
    goto LABEL_83;
  }

  OUTLINED_FUNCTION_0();
  v19 = OUTLINED_FUNCTION_3_1();
  if (v19 == 6)
  {
    v7->_clickHoldModeLeft = 0;
  }

  else if (v19 == 5)
  {
    goto LABEL_83;
  }

  OUTLINED_FUNCTION_0();
  v20 = OUTLINED_FUNCTION_3_1();
  if (v20 == 6)
  {
    v7->_clickHoldModeRight = 0;
  }

  else if (v20 == 5)
  {
    goto LABEL_83;
  }

  OUTLINED_FUNCTION_0();
  v21 = OUTLINED_FUNCTION_3_1();
  if (v21 == 6)
  {
    v7->_conversationDetectConfig = 0;
  }

  else if (v21 == 5)
  {
    goto LABEL_83;
  }

  OUTLINED_FUNCTION_0();
  v22 = OUTLINED_FUNCTION_3_1();
  if (v22 == 6)
  {
    v7->_crownRotationDirection = 0;
  }

  else if (v22 == 5)
  {
    goto LABEL_83;
  }

  OUTLINED_FUNCTION_0();
  v23 = CUXPCDecodeUInt64RangedEx();
  if (v23 == 6)
  {
    v7->_deviceFlagsMask = 0;
  }

  else if (v23 == 5)
  {
    goto LABEL_83;
  }

  OUTLINED_FUNCTION_0();
  v24 = CUXPCDecodeUInt64RangedEx();
  if (v24 == 6)
  {
    v7->_deviceFlagsValue = 0;
  }

  else if (v24 == 5)
  {
    goto LABEL_83;
  }

  v25 = OUTLINED_FUNCTION_1_3();
  if (v25 == 6)
  {
    v7->_doubleTapActionLeft = 0;
  }

  else if (v25 == 5)
  {
    goto LABEL_83;
  }

  v26 = OUTLINED_FUNCTION_1_3();
  if (v26 == 6)
  {
    v7->_doubleTapActionRight = 0;
  }

  else if (v26 == 5)
  {
    goto LABEL_83;
  }

  OUTLINED_FUNCTION_0();
  v27 = OUTLINED_FUNCTION_3_1();
  if (v27 == 6)
  {
    v7->_endCallConfig = 0;
  }

  else if (v27 == 5)
  {
    goto LABEL_83;
  }

  v28 = OUTLINED_FUNCTION_3_10();
  if (v28 == 6)
  {
    v7->_listeningMode = 0;
  }

  else if (v28 == 5)
  {
    goto LABEL_83;
  }

  OUTLINED_FUNCTION_0();
  v29 = CUXPCDecodeUInt64RangedEx();
  if (v29 == 6)
  {
    v7->_listeningModeConfigs = 0;
  }

  else if (v29 == 5)
  {
    goto LABEL_83;
  }

  v30 = OUTLINED_FUNCTION_1_3();
  if (v30 == 6)
  {
    v7->_microphoneMode = 0;
  }

  else if (v30 == 5)
  {
    goto LABEL_83;
  }

  OUTLINED_FUNCTION_0();
  v31 = OUTLINED_FUNCTION_3_1();
  if (v31 == 6)
  {
    v7->_muteControlConfig = 0;
  }

  else if (v31 == 5)
  {
    goto LABEL_83;
  }

  if (!CUXPCDecodeNSString())
  {
    goto LABEL_83;
  }

  objc_opt_class();
  if (!CUXPCDecodeObject())
  {
    goto LABEL_83;
  }

  v32 = OUTLINED_FUNCTION_1_3();
  if (v32 == 6)
  {
    v7->_placementMode = 0;
  }

  else if (v32 == 5)
  {
    goto LABEL_83;
  }

  v33 = OUTLINED_FUNCTION_1_3();
  if (v33 == 6)
  {
    v7->_relinquishAudioRoute = 0;
  }

  else if (v33 == 5)
  {
    goto LABEL_83;
  }

  OUTLINED_FUNCTION_0();
  v34 = OUTLINED_FUNCTION_3_1();
  if (v34 == 6)
  {
    v7->_selectiveSpeechListeningConfig = 0;
  }

  else if (v34 == 5)
  {
    goto LABEL_83;
  }

  v35 = OUTLINED_FUNCTION_1_3();
  if (v35 == 6)
  {
    v7->_smartRoutingMode = 0;
  }

  else if (v35 == 5)
  {
    goto LABEL_83;
  }

  v36 = OUTLINED_FUNCTION_1_3();
  if (v36 == 6)
  {
    v7->_spatialAudioAllowed = 0;
  }

  else if (v36 == 5)
  {
    goto LABEL_83;
  }

  v37 = OUTLINED_FUNCTION_3_10();
  if (v37 != 6)
  {
    if (v37 != 5)
    {
      goto LABEL_77;
    }

LABEL_83:
    v38 = 0;
    goto LABEL_78;
  }

  v7->_spatialAudioMode = 0;
LABEL_77:
  v38 = v7;
LABEL_78:

  return v38;
}

@end