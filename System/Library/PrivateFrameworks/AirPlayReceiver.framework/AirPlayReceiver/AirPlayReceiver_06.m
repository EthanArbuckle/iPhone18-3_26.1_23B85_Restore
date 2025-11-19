BOOL _IsRequestUnrestricted()
{
  if (!strnicmpx() && !strnicmp_suffix())
  {
    return 1;
  }

  if (strnicmpx())
  {
    return 0;
  }

  return strnicmp_suffix() == 0;
}

uint64_t APReceiverUIControllerShowPIN(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

float _GetFloatValueFromHTTPMessageURL(uint64_t a1, uint64_t a2, int *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  v8 = 0;
  v7 = 0.0;
  v4 = HTTPMessageGetOrCopyFormVariable();
  if (v4)
  {
    v5 = v4;
    if (v4 != -6727)
    {
      APSLogErrorAt();
    }
  }

  else
  {
    __strlcpy_chk();
    if (sscanf(v11, "%f", &v7) == 1)
    {
      v5 = 0;
    }

    else
    {
      APSLogErrorAt();
      v5 = -6705;
    }
  }

  if (a3)
  {
    *a3 = v5;
  }

  if (v8)
  {
    free(v8);
  }

  return v7;
}

uint64_t _MapReqProcReturnCodeToHTTPReturnCode(int a1)
{
  result = 400;
  switch(a1)
  {
    case -71954:
    case -71951:
    case -71941:
      result = 451;
      break;
    case -71953:
      result = 472;
      break;
    case -71952:
    case -71931:
      result = 455;
      break;
    case -71950:
    case -71946:
      result = 507;
      break;
    case -71949:
    case -71948:
    case -71947:
      return result;
    case -71945:
      result = 412;
      break;
    case -71944:
      result = 471;
      break;
    case -71943:
      result = 466;
      break;
    case -71942:
      result = 422;
      break;
    case -71940:
      result = 470;
      break;
    case -71939:
      result = 520;
      break;
    case -71938:
      result = 454;
      break;
    case -71937:
      result = 453;
      break;
    case -71936:
      result = 406;
      break;
    case -71935:
      result = 501;
      break;
    case -71934:
      result = 500;
      break;
    case -71933:
      result = 403;
      break;
    case -71932:
      result = 456;
      break;
    default:
      if (a1)
      {
        v3 = 400;
      }

      else
      {
        v3 = 200;
      }

      if (a1 == 204)
      {
        result = 204;
      }

      else
      {
        result = v3;
      }

      break;
  }

  return result;
}

uint64_t _HTTPSetField(uint64_t a1, const __CFString *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  v6 = CFStringCopyUTF8CString();
  if (v6)
  {
    goto LABEL_10;
  }

  if (!CFStringGetLength(TypedValue))
  {
    APSLogErrorAt();
    return -6712;
  }

  if (!CFStringGetCString(a2, buffer, 256, 0x8000100u))
  {
    APSLogErrorAt();
    return -6762;
  }

  v6 = HTTPHeader_SetField();
  if (v6)
  {
LABEL_10:
    APSLogErrorAt();
  }

  return v6;
}

void _HandlePairVerifyCoreUtilsCompletion(uint64_t a1)
{
  v1 = *(a1 + 9672);
  v2 = v1[5];
  if (!NetTransportChaCha20Poly1305Configure())
  {
    for (i = 209; i != 241; ++i)
    {
      *(v2 + i) = 0;
    }

    do
    {
      *(v2 + i++) = 0;
    }

    while (i != 273);
    HTTPConnectionSetTransportDelegate();
    if (gLogCategory_AirPlayReceiverServer > 50 || gLogCategory_AirPlayReceiverServer == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_9;
    }

LABEL_7:
    LogPrintF();
    goto LABEL_9;
  }

  APSLogErrorAt();
  if (gLogCategory_AirPlayReceiverServer < 61 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_7;
  }

LABEL_9:
  CFRelease(v1);
}

void _FPSetup2ResponseCompletionHandler(void *a1)
{
  v1 = a1[1209];
  v2 = v1[5];
  v3 = a1[1210];
  v4 = a1[1211];
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0;
  v5 = a1[1212];
  v6 = *(v2 + 280);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v7 || v7(v6, v5, &v9))
  {
    goto LABEL_13;
  }

  if (v9 && (v4 & 0xFFFFFFC0) != 0)
  {
    if (v3)
    {
      v8 = CFGetTypeID(v3);
      if (v8 == CFDataGetTypeID())
      {
        CFDataGetBytePtr(v3);
        if (!NetTransportGCMConfigure())
        {
          HTTPConnectionSetTransportDelegate();
          CFObjectSetValue();
          CFObjectSetValue();
          if (*(v2 + 200))
          {
            IPaI1oem5iL();
            *(v2 + 200) = 0;
          }

          if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          goto LABEL_15;
        }

        goto LABEL_20;
      }
    }

LABEL_13:
    APSLogErrorAt();
    goto LABEL_14;
  }

LABEL_20:
  APSLogErrorAt();
  if (gLogCategory_AirPlayReceiverServer <= 60 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_14:
  if (v3)
  {
LABEL_15:
    CFRelease(v3);
  }

  CFRelease(v1);
}

uint64_t APReceiverRequestProcessorSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t _requestHTTPAuthorization_CopyPassword(uint64_t a1, char **a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  *__s1 = 0u;
  v6 = 0u;
  CFObjectGetPropertyCStringSync();
  v3 = strdup(__s1);
  if (v3)
  {
    *a2 = v3;
    return 200;
  }

  else
  {
    APSLogErrorAt();
    return 500;
  }
}

void _HandleHTTPConnectionClose(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v4 = *(a2 + 280);
    if (v4)
    {
      v6 = a1 + 328;
      v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (!v5 || v5(v4, @"HTTPConnectionClose", &v6))
      {
        APSLogErrorAt();
      }

      else
      {
        if (*(a2 + 32))
        {
          CFObjectControlSync();
          CFRelease(*(a2 + 32));
          *(a2 + 32) = 0;
        }

        _UpdateIdleTimeoutTimer(*a2);
      }
    }
  }

  else
  {

    APSLogErrorAt();
  }
}

void _HandleHTTPConnectionFinalize(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  if (*(a2 + 200))
  {
    IPaI1oem5iL();
    *(a2 + 200) = 0;
  }

  *(a2 + 208) = 0;
  v3 = *(a2 + 280);
  if (v3)
  {
    CFRelease(v3);
    *(a2 + 280) = 0;
  }

  v4 = *(a2 + 296);
  if (v4)
  {
    CFRelease(v4);
    *(a2 + 296) = 0;
  }
}

uint64_t _HandleHTTPConnectionInitialize(uint64_t a1, uint64_t a2)
{
  *(a2 + 196) = 0;
  APSSettingsGetInt64();
  SocketSetKeepAlive();
  if (*(*a2 + 249))
  {
    v3 = *(*a2 + 232);
    if (v3)
    {
      *(a2 + 296) = v3(0);
    }

    else
    {
      if (APReceiverUIControllerGetShared_once[0] != -1)
      {
        dispatch_once(APReceiverUIControllerGetShared_once, &__block_literal_global_3265);
      }

      v4 = APReceiverUIControllerGetShared_ui;
      *(a2 + 296) = APReceiverUIControllerGetShared_ui;
      if (v4)
      {
        CFRetain(v4);
      }
    }

    if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  return 0;
}

void _HandleVolumeUpdate(uint64_t a1)
{
  cf = 0;
  APReceiverSessionManagerCopyAirPlaySessionWithAttribute(*(*a1 + 216), 0, 0, &cf);
  if (cf)
  {
    AirPlayReceiverSessionHandleVolumeUpdate(cf);
  }

  if (*(*(*a1 + 216) + 48))
  {
    v2 = APReceiverRequestProcessorCopyReceiverSession();
    v3 = v2;
    v4 = v2 == 0;
    if (v2)
    {
      v5 = v2 == cf;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      AirPlayReceiverSessionHandleVolumeUpdate(v2);
    }
  }

  else
  {
    v3 = 0;
    v4 = 1;
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    CFRelease(v6);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (!v4)
  {
    CFRelease(v3);
  }

  free(a1);
}

void _HandleDenyInterruptionsStatusChanged(_BYTE *cf)
{
  if (cf[249] && !*(cf + 29))
  {
    if (APReceiverUIControllerGetShared_once[0] != -1)
    {
      dispatch_once(APReceiverUIControllerGetShared_once, &__block_literal_global_3265);
    }

    v2 = APReceiverUIControllerGetShared_ui;
    if (APReceiverUIControllerGetShared_ui)
    {
      v3 = (CFObjectGetPropertyInt64Sync() ? MEMORY[0x277CBED28] : MEMORY[0x277CBED10]);
      v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v4)
      {
        v4(v2, @"denyInterruptions", *v3);
      }
    }
  }

  CFRelease(cf);
}

void _HandleEnableAirPlayStatusChanged(const void *a1)
{
  _StartOrStopServersIfNeeded(a1);

  CFRelease(a1);
}

void _NotifySessionsSystemInfoChange(uint64_t a1)
{
  v1 = APReceiverSessionManagerCopyAllSessions(*(a1 + 216));
  if (v1)
  {
    v2 = v1;
    if (CFArrayGetCount(v1) >= 1)
    {
      CFArrayApplyBlock();
    }

    CFRelease(v2);
  }
}

void _HandleAdvertisingDeviceSettingChanged(void *a1)
{
  _RestartAdvertising(a1);
  CFRetain(a1);
  v2 = a1[11];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___HandleAdvertisingDeviceSettingChanged_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_async(v2, block);
  CFRelease(a1);
}

uint64_t AirPlayReceiverServerCreate(const __CFDictionary *a1, uint64_t *a2)
{
  v183[5] = *MEMORY[0x277D85DE8];
  v142 = 1;
  if (a1)
  {
    FigCFDictionaryGetBooleanIfPresent();
  }

  if (gAirPlayReceiverInitOnce != -1)
  {
    dispatch_once_f(&gAirPlayReceiverInitOnce, 0, _GlobalInitialize);
  }

  if (gAirPlayReceiverServerInitOnce != -1)
  {
    dispatch_once_f(&gAirPlayReceiverServerInitOnce, 0, _GetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APSLogErrorAt();
    return 4294960568;
  }

  v5 = Instance;
  *(Instance + 16) = 0u;
  v6 = Instance + 16;
  *(Instance + 288) = 0;
  *(Instance + 256) = 0u;
  *(Instance + 272) = 0u;
  *(Instance + 224) = 0u;
  *(Instance + 240) = 0u;
  *(Instance + 192) = 0u;
  *(Instance + 208) = 0u;
  *(Instance + 160) = 0u;
  *(Instance + 176) = 0u;
  *(Instance + 128) = 0u;
  *(Instance + 144) = 0u;
  *(Instance + 96) = 0u;
  *(Instance + 112) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 32) = 0u;
  v7 = (Instance + 32);
  *(Instance + 24) = dispatch_queue_create("AirPlayReceiverServerQueue", 0);
  v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  *(v6 + 72) = dispatch_queue_create("AirPlayReceiverServerHTTPQueue", v8);
  *v7 = -1;
  RandomBytes();
  *(v6 + 104) = 0;
  *(v6 + 241) = 0;
  v9 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
LABEL_354:
    CFRelease(v5);
    return 4294960568;
  }

  v11 = Mutable;
  out_token = v7;
  v133 = v6;
  v12 = MEMORY[0x277CBED28];
  v13 = MEMORY[0x277CBED10];
  v137 = a2;
  if (a1)
  {
    FigCFDictionaryGetBooleanIfPresent();
    if (*(v5 + 257))
    {
      v14 = v12;
    }

    else
    {
      v14 = v13;
    }

    CFDictionarySetValue(v11, @"UGLRCServerMode", *v14);
    *(v5 + 258) = APSSettingsIsFeatureEnabled();
    v140 = APSSettingsGetIntWithDefault() != 0;
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    Value = FigCFDictionaryGetValue();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    if (CFDictionaryGetInt64())
    {
      v15 = 0;
    }

    else
    {
      v15 = 7000;
    }

    *(v5 + 272) = v15;
    if (APSSettingsGetUInt16IfPresent() && gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
    {
      width = *(v5 + 272);
      LogPrintF();
    }

    v17 = CFDictionaryGetValue(a1, @"SBufConsumer");
    *(v5 + 224) = v17;
    if (v17)
    {
      CFRetain(v17);
      v16 = 1;
    }

    else
    {
      v16 = 0;
    }

    *(v5 + 232) = CFDictionaryGetInt64();
    if (*(v5 + 53))
    {
      if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v16 = 2;
    }

    *(v5 + 254) = CFDictionaryGetInt64() != 0;
    v18 = CFDictionaryGetValue(a1, @"InterfaceName");
    *(v5 + 264) = v18;
    if (v18)
    {
      CFRetain(v18);
    }

    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
  }

  else
  {
    v16 = 0;
    Value = 0;
    v140 = 0;
  }

  BooleanIfPresent = APSSettingsGetBooleanIfPresent();
  if (gLogCategory_AirPlayReceiverServer <= 50)
  {
    v20 = BooleanIfPresent;
    if (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize())
    {
      v21 = "yes";
      if (*(v5 + 64))
      {
        v22 = "yes";
      }

      else
      {
        v22 = "no";
      }

      if (!v20)
      {
        v21 = "no";
      }

      width = v22;
      height = v21;
      LogPrintF();
    }
  }

  v23 = *v12;
  v24 = *v13;
  if (*(v5 + 64))
  {
    v25 = *v12;
  }

  else
  {
    v25 = *v13;
  }

  CFDictionarySetValue(v11, @"UseAltAdvertising", v25);
  v26 = APSSettingsGetBooleanIfPresent();
  if (gLogCategory_AirPlayReceiverServer <= 50)
  {
    v27 = v26;
    if (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize())
    {
      v28 = "yes";
      if (*(v5 + 251))
      {
        v29 = "yes";
      }

      else
      {
        v29 = "no";
      }

      if (!v27)
      {
        v28 = "no";
      }

      width = v29;
      height = v28;
      LogPrintF();
    }
  }

  CFDictionarySetInt64();
  if (IsAppleTV() || APSIsAPMSpeaker() || CFDictionaryGetInt64())
  {
    v138 = 1;
  }

  else
  {
    Int64 = APSSettingsGetInt64();
    v138 = Int64 != 0;
    if (!Int64)
    {
      v23 = v24;
    }
  }

  CFDictionarySetValue(v11, @"SupportsRemoteControl", v23);
  v134 = v16;
  if (APReceiverSystemInfoGetTypeID_once != -1)
  {
    dispatch_once(&APReceiverSystemInfoGetTypeID_once, &__block_literal_global_2138);
  }

  v141 = v9;
  v30 = _CFRuntimeCreateInstance();
  bzero((v30 + 16), 0x2F0uLL);
  *(v30 + 16) = dispatch_queue_create("APReceiverSystemInfoQueue", 0);
  *(v30 + 576) = dispatch_queue_create("APReceiverSystemInfoDisplayQueue", 0);
  v31 = *MEMORY[0x277CBF3A8];
  *(v30 + 672) = -4294967236;
  *(v30 + 680) = 0;
  *(v30 + 592) = v31;
  *(v30 + 608) = v31;
  v135 = v31;
  *(v30 + 624) = v31;
  *(v30 + 640) = 0;
  *(v30 + 120) = 0;
  if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
  {
    width = v11;
    LogPrintF();
  }

  *(v30 + 568) = CFDictionaryGetInt64();
  v32 = CFDictionaryGetInt64();
  *(v30 + 312) = CFDictionaryGetInt64() != 0;
  *(v30 + 400) = CFDictionaryCopyCString();
  v33 = CFDictionaryCopyCString();
  if (v33)
  {
    v34 = v33;
    v35 = TextToHardwareAddress() != 0;
    free(v34);
  }

  else
  {
    v35 = 1;
  }

  v36 = CFDictionaryGetValue(v11, @"FeatureMask");
  if (v36)
  {
    v37 = v36;
    v38 = CFGetTypeID(v36);
    if (v38 == CFDataGetTypeID())
    {
      *(v30 + 760) = CFRetain(v37);
    }
  }

  v39 = CFDictionaryGetValue(v11, @"DisplaySizeOverride");
  if (v39)
  {
    v40 = v39;
    v41 = CFGetTypeID(v39);
    if (v41 == CFDictionaryGetTypeID())
    {
      size = v135;
      CGSizeMakeWithDictionaryRepresentation(v40, &size);
      if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        width = size.width;
        height = size.height;
        LogPrintF();
      }

      *(v30 + 608) = size;
    }
  }

  v42 = CFDictionaryGetValue(v11, @"DisplaySizeMaxOverride");
  if (v42)
  {
    v43 = v42;
    v44 = CFGetTypeID(v42);
    if (v44 == CFDictionaryGetTypeID())
    {
      size = v135;
      CGSizeMakeWithDictionaryRepresentation(v43, &size);
      if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        width = size.width;
        height = size.height;
        LogPrintF();
      }

      *(v30 + 624) = size;
    }
  }

  v45 = CFDictionaryGetValue(v11, @"DisplayHDRModeOverride");
  if (v45)
  {
    v46 = v45;
    v47 = CFGetTypeID(v45);
    if (v47 == CFStringGetTypeID())
    {
      if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        width = v46;
        LogPrintF();
      }

      *(v30 + 640) = CFRetain(v46);
    }
  }

  *(v30 + 424) = CFDictionaryGetInt64() != 0;
  *(v30 + 314) = CFDictionaryGetInt64() != 0;
  *(v30 + 313) = APSSettingsIsFeatureEnabled();
  IntWithDefault = APSSettingsGetIntWithDefault();
  if (*(v30 + 314))
  {
    v49 = IntWithDefault == 0;
  }

  else
  {
    v49 = 1;
  }

  v50 = !v49;
  *(v30 + 315) = v50;
  if (v35)
  {
    v51 = 9;
    while (!APSGetDeviceID())
    {
      sleep(1u);
      if (!--v51)
      {
        if (gLogCategory_APReceiverSystemInfo <= 90 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
        {
          width = 0;
          LogPrintF();
        }

        break;
      }
    }
  }

  *(v30 + 110) = 0;
  *(v30 + 102) = 0;
  *(v30 + 112) = *(v30 + 96);
  *(v30 + 116) = *(v30 + 100);
  *(v30 + 128) = APSSettingsIsFeatureEnabledInDomain();
  *(v30 + 129) = APSMultiPrimariesEnabled();
  *(v30 + 130) = APSNowPlayingSessionDataSourceEnabled();
  if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
  {
    v53 = APSIsProximityReceiverEnabled();
    v54 = "";
    if (!v53)
    {
      v54 = " not";
    }

    width = v54;
    LogPrintF();
  }

  *(v30 + 120) = MGCopyAnswer();
  if (!APSIsValidDeviceEnclosureColorString())
  {
    if (gLogCategory_APReceiverSystemInfo <= 60 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      width = *(v30 + 120);
      LogPrintF();
    }

    v55 = *(v30 + 120);
    if (v55)
    {
      CFRelease(v55);
      *(v30 + 120) = 0;
    }
  }

  if (!*(v30 + 315))
  {
    v58 = APSCopyPairingIdentity();
    v143 = v58;
    if (v58 && gLogCategory_APReceiverSystemInfo <= 60)
    {
      if (gLogCategory_APReceiverSystemInfo == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_136;
        }

        v58 = v143;
      }

      width = v58;
      LogPrintF();
    }

LABEL_136:
    v59 = APSCopyPairingIdentity();
    v144 = v59;
    if (v59 && gLogCategory_APReceiverSystemInfo <= 60)
    {
      if (gLogCategory_APReceiverSystemInfo == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_141;
        }

        v59 = v144;
      }

      width = v59;
      LogPrintF();
    }

    goto LABEL_141;
  }

  v56 = [objc_msgSend(MEMORY[0x277CCAD78] "UUID")];
  if (v56)
  {
    v56 = CFRetain(v56);
  }

  *(v30 + 464) = v56;
  v57 = [objc_msgSend(MEMORY[0x277CCAD78] UUID];
  if (v57)
  {
    v57 = CFRetain(v57);
  }

  *(v30 + 456) = v57;
  if (gLogCategory_APReceiverSystemInfo <= 50)
  {
    if (gLogCategory_APReceiverSystemInfo == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_141;
      }

      v57 = *(v30 + 456);
    }

    width = *(v30 + 464);
    height = v57;
    LogPrintF();
  }

LABEL_141:
  v60 = APSPowerAssertionCreate();
  *(v30 + 736) = v60;
  if (!v60 && gLogCategory_APReceiverSystemInfo <= 90 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if ((*(v30 + 568) - 1) <= 1)
  {
    *(v30 + 64) = 1;
    *(v30 + 80) = 1;
    *(v30 + 310) = 0;
    *(v30 + 316) = 0;
    *(v30 + 240) = 0;
    *(v30 + 248) = 0;
    *(v30 + 176) = 0;
    *(v30 + 192) = 0;
    *(v30 + 184) = 0;
    *(v30 + 208) = 0;
    *(v30 + 308) = 0;
    *(v30 + 256) = 0;
    *(v30 + 264) = 0;
    *(v30 + 272) = 0;
    *(v30 + 288) = 0;
    *(v30 + 296) = 0;
    *(v30 + 280) = 0;
    *(v30 + 304) = 0;
    *(v30 + 311) = 1;
    *(v30 + 408) = APSIsAPMSpeaker() == 0;
    *(v30 + 410) = 0;
    *(v30 + 416) = 0;
    *(v30 + 432) = 256;
    *(v30 + 480) = 0;
    *(v30 + 472) = 0;
    *(v30 + 428) = 1;
    *(v30 + 560) = 0;
    *(v30 + 564) = 30;
    goto LABEL_204;
  }

  LODWORD(size.width) = 0;
  APSSettingsSynchronize();
  v61 = APSSettingsGetIntWithDefault();
  *(v30 + 64) = v61;
  if (gLogCategory_APReceiverSystemInfo <= 50)
  {
    if (gLogCategory_APReceiverSystemInfo == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_156;
      }

      v62 = *(v30 + 64);
    }

    else
    {
      v62 = v61;
    }

    if (v62)
    {
      v63 = "yes";
    }

    else
    {
      v63 = "no";
    }

    width = v63;
    LogPrintF();
  }

LABEL_156:
  if (*(v30 + 315) || APSGetAccessControlConfig())
  {
    *(v30 + 316) = 0;
  }

  *(v30 + 80) = APSSettingsGetInt64() != 0;
  *(v30 + 310) = APSSettingsGetInt64() != 0;
  APSCopyPersistentGroupInfo();
  if (*(v30 + 256))
  {
    *(v30 + 306) = IsAppleTV();
    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      v64 = "yes";
      if (!*(v30 + 272))
      {
        v64 = "no";
      }

      v131 = *(v30 + 280);
      v132 = *(v30 + 288);
      v129 = *(v30 + 296);
      v130 = *(v30 + 264);
      v127 = *(v30 + 240);
      v128 = *(v30 + 248);
      width = *(v30 + 256);
      height = v64;
      LogPrintF();
    }
  }

  APSCopyTightSyncInfo();
  if (!*(v30 + 176))
  {
LABEL_175:
    if (gLogCategory_APReceiverSystemInfo > 50 || gLogCategory_APReceiverSystemInfo == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_188;
    }

    if (*(v30 + 256))
    {
      v66 = 288;
    }

    else
    {
      v67 = *(v30 + 176);
      if (!v67)
      {
LABEL_184:
        if (*(v30 + 306))
        {
          v68 = "yes";
        }

        else
        {
          v68 = "no";
        }

        width = v67;
        height = v68;
        LogPrintF();
        goto LABEL_188;
      }

      v66 = 208;
    }

    v67 = *(v30 + v66);
    goto LABEL_184;
  }

  if (!*(v30 + 256))
  {
    *(v30 + 306) = APSSettingsGetInt64() != 0;
  }

  if (gLogCategory_APReceiverSystemInfo <= 50)
  {
    if (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize())
    {
      v65 = "yes";
      if (!*(v30 + 184))
      {
        v65 = "no";
      }

      v128 = *(v30 + 192);
      v129 = *(v30 + 208);
      height = v65;
      v127 = *(v30 + 200);
      width = *(v30 + 176);
      LogPrintF();
    }

    goto LABEL_175;
  }

LABEL_188:
  *(v30 + 304) = APSSettingsGetInt64() != 0;
  *(v30 + 308) = APSSettingsGetInt64() != 0;
  *(v30 + 311) = APSSettingsGetIntWithDefault();
  *(v30 + 408) = APSGetP2PAllow();
  *(v30 + 409) = APSSettingsGetIntWithDefault();
  *(v30 + 410) = APSSettingsGetIntWithDefault();
  *(v30 + 416) = APSSettingsCopyValue();
  if (*(v30 + 315))
  {
    *(v30 + 432) = 1;
  }

  else
  {
    *(v30 + 432) = APSSettingsGetInt64() != 0;
    APSIsAPMSpeaker();
    *(v30 + 433) = APSSettingsGetIntWithDefault();
    *(v30 + 480) = APSSettingsGetInt64() != 0;
    *(v30 + 472) = 0;
    *(v30 + 481) = 0;
    APSSettingsGetCString();
    if (*(v30 + 480))
    {
      v69 = 3;
    }

    else if (*(v30 + 481))
    {
      v69 = 2;
    }

    else
    {
      if (!*(v30 + 433))
      {
        *(v30 + 428) = 0;
        goto LABEL_197;
      }

      v69 = 1;
    }

    *(v30 + 428) = v69;
  }

LABEL_197:
  *(v30 + 560) = APSSettingsGetInt64() != 0;
  v70 = APSSettingsGetInt64();
  if (v70 >= 1 && LODWORD(size.width) == 0)
  {
    v72 = v70;
  }

  else
  {
    v72 = 30;
  }

  *(v30 + 564) = v72;
  *(v30 + 712) = APSSettingsGetInt64() != 0;
LABEL_204:
  *(v30 + 88) = 0;
  v73 = APSCopyBootUUID();
  v145 = v73;
  if (v73 && gLogCategory_APReceiverSystemInfo <= 50)
  {
    if (gLogCategory_APReceiverSystemInfo != -1)
    {
LABEL_207:
      width = v73;
      LogPrintF();
      goto LABEL_209;
    }

    if (_LogCategory_Initialize())
    {
      v73 = v145;
      goto LABEL_207;
    }
  }

LABEL_209:
  if (IsAppleTV())
  {
    *(v30 + 688) = 1;
  }

  *(v30 + 24) = -1;
  *(v30 + 40) = -1;
  *(v30 + 48) = -1;
  *(v30 + 32) = -1;
  if (!*(v30 + 568))
  {
    if (IsAppleTV() || APSIsAPMSpeaker())
    {
      *(v30 + 728) = [[BluetoothAddressMonitor alloc] initWithSystemInfo:v30 queue:*(v30 + 16)];
      v74 = *(v30 + 16);
      handler = MEMORY[0x277D85DD0];
      v178 = 3221225472;
      v179 = __sysInfo_registerForNotificationsAsNeeded_block_invoke;
      v180 = &__block_descriptor_40_e8_v12__0i8l;
      v181 = v30;
      notify_register_dispatch("kAirPlayWHANotification_BreakAwayFromCurrentGroup", (v30 + 36), v74, &handler);
    }

    v75 = *(v30 + 16);
    v161 = MEMORY[0x277D85DD0];
    v162 = 3221225472;
    v163 = __sysInfo_registerForNotificationsAsNeeded_block_invoke_2;
    v164 = &__block_descriptor_40_e8_v12__0i8l;
    v165 = v30;
    notify_register_dispatch("com.apple.airplay.cloudConnectivity", (v30 + 24), v75, &v161);
    v76 = *(v30 + 16);
    v156 = MEMORY[0x277D85DD0];
    v157 = 3221225472;
    v158 = __sysInfo_registerForNotificationsAsNeeded_block_invoke_3;
    v159 = &__block_descriptor_40_e8_v12__0i8l;
    v160 = v30;
    notify_register_dispatch("com.apple.airplay.conferenceRoomMode", (v30 + 28), v76, &v156);
    v77 = *(v30 + 16);
    *&size.width = MEMORY[0x277D85DD0];
    *&size.height = 3221225472;
    v173 = __sysInfo_registerForNotificationsAsNeeded_block_invoke_4;
    v174 = &__block_descriptor_41_e8_v12__0i8l;
    v175 = v30;
    LOBYTE(v176) = v32 == 0;
    notify_register_dispatch("com.apple.airplay.prefsChanged", (v30 + 40), v77, &size);
    v78 = *(v30 + 16);
    v151 = MEMORY[0x277D85DD0];
    v152 = 3221225472;
    v153 = __sysInfo_registerForNotificationsAsNeeded_block_invoke_5;
    v154 = &__block_descriptor_40_e8_v12__0i8l;
    v155 = v30;
    notify_register_dispatch("com.apple.airplay.psgInfoChanged", (v30 + 44), v78, &v151);
    if (!IsAppleTV() && APSIsAPMSpeaker())
    {
      v79 = *(v30 + 16);
      v146 = MEMORY[0x277D85DD0];
      v147 = 3221225472;
      v148 = __sysInfo_registerForNotificationsAsNeeded_block_invoke_6;
      v149 = &__block_descriptor_40_e8_v12__0i8l;
      v150 = v30;
      notify_register_dispatch("kAirPlayWHANotification_GroupMemberInterruptedByPreWHASender", (v30 + 48), v79, &v146);
    }

    if (IsAppleTV())
    {
      v80 = *(v30 + 576);
      v183[0] = MEMORY[0x277D85DD0];
      v183[1] = 3221225472;
      v183[2] = __sysInfo_registerForNotificationsAsNeeded_block_invoke_7;
      v183[3] = &__block_descriptor_40_e8_v12__0i8l;
      v183[4] = v30;
      notify_register_dispatch("com.apple.TVSPowerManager.deviceWillChangeSleepStateNotification", (v30 + 32), v80, v183);
    }

    v81 = [*MEMORY[0x277D25CA0] UTF8String];
    v82 = *(v30 + 16);
    v182[0] = MEMORY[0x277D85DD0];
    v182[1] = 3221225472;
    v182[2] = __sysInfo_registerForNotificationsAsNeeded_block_invoke_8;
    v182[3] = &__block_descriptor_40_e8_v12__0i8l;
    v182[4] = v30;
    notify_register_dispatch(v81, (v30 + 40), v82, v182);
    if (!*(v30 + 328))
    {
      v83 = objc_opt_new();
      if (v83)
      {
        v84 = v83;
        [v83 setDispatchQueue:*(v30 + 16)];
        v166 = MEMORY[0x277D85DD0];
        v167 = 3221225472;
        v168 = __sysInfo_deviceNameChangeListenerStart_block_invoke;
        v169 = &__block_descriptor_40_e5_v8__0l;
        v170 = v30;
        [v84 setSystemNameChangedHandler:&v166];
        [v84 activateWithCompletion:0];
        *(v30 + 328) = v84;
      }

      else
      {
        APSLogErrorAt();
      }
    }
  }

  v85 = *(v30 + 16);
  *&size.width = MEMORY[0x277D85DD0];
  *&size.height = 3221225472;
  v173 = __APReceiverSystemInfoCreate_block_invoke;
  v174 = &__block_descriptor_40_e5_v8__0l;
  v175 = v30;
  dispatch_sync(v85, &size);
  *(v5 + 160) = v30;
  if (v138 && Value && APSFeaturesHasFeature() && APSFeaturesHasFeature() && APSFeaturesHasFeature() && APSFeaturesHasFeature() && APSFeaturesHasFeature() && APSFeaturesHasFeature())
  {
    *(v5 + 256) = 1;
  }

  v86 = v141;
  if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
  {
    if (*(v5 + 256))
    {
      v87 = "yes";
    }

    else
    {
      v87 = "no";
    }

    width = v87;
    LogPrintF();
  }

  if (*(v5 + 224))
  {
    *(v5 + 253) = 1;
  }

  else
  {
    *(v5 + 248) = 257;
    if (*(v5 + 232))
    {
      if (!IsAppleTV())
      {
        APSIsAPMSpeaker();
      }

      v142 = APSSettingsGetIntWithDefault();
      FigCFDictionaryGetIntIfPresent();
    }

    else if (APReceiverUIControllerGetShared_once[0] != -1)
    {
      dispatch_once(APReceiverUIControllerGetShared_once, &__block_literal_global_3265);
    }

    if (v134 != 2)
    {
      *(v5 + 250) = 1;
      *(v5 + 252) = *(v5 + 272) == 7000;
    }
  }

  if (*(v5 + 257) != 0 && v140)
  {
    *(v5 + 253) = 1;
  }

  if (APReceiverSessionManagerGetTypeID_once != -1)
  {
    dispatch_once(&APReceiverSessionManagerGetTypeID_once, &__block_literal_global_7471);
  }

  v88 = _CFRuntimeCreateInstance();
  if (v88)
  {
    v89 = v88;
    *(v88 + 16) = -1;
    v90 = v88 + 16;
    *(v88 + 68) = 0u;
    *(v88 + 148) = 0;
    *(v88 + 132) = 0u;
    *(v88 + 116) = 0u;
    *(v88 + 100) = 0u;
    *(v88 + 84) = 0u;
    *(v88 + 52) = 0u;
    *(v88 + 36) = 0u;
    *(v88 + 20) = 0u;
    *(v88 + 72) = v142;
    v91 = MEMORY[0x277CBF128];
    *(v88 + 64) = CFArrayCreateMutable(v141, 0, MEMORY[0x277CBF128]);
    *(v90 + 64) = CFArrayCreateMutable(0, 0, v91);
    *(v90 + 8) = v5;
    *(v90 + 24) = v138;
    if (pthread_mutex_init((v90 + 72), 0))
    {
      APSLogErrorAt();
      CFRelease(v89);
    }

    else
    {
      if (IsAppleTV() || APSIsAPMSpeaker())
      {
        notify_register_check("com.apple.airplay.active", v90);
        notify_set_state(*(v89 + 16), *(v89 + 32));
        notify_post("com.apple.airplay.active");
        CMNotificationCenterGetDefaultLocalCenter();
        v92 = CMNotificationCenterAddListener();
        sessionManager_handleSenderSessionStateChangeNotification(v92, v89);
      }

      if (gLogCategory_APReceiverSessionManager <= 10 && (gLogCategory_APReceiverSessionManager != -1 || _LogCategory_Initialize()))
      {
        width = v89;
        LogPrintF();
      }

      *(v5 + 216) = v89;
    }
  }

  else
  {
    APSLogErrorAt();
  }

  v93 = objc_alloc_init(AirPlayReceiverPlatform);
  if (!v93 || (v94 = v93, v93->_server = v5, *(v5 + 16) = v93, *&v93->_uiErrorNotifyToken = -1, p_uiErrorNotifyToken = &v93->_uiErrorNotifyToken, *&v93->_playbackPreventNotifyToken = -1, p_playbackPreventNotifyToken = &v93->_playbackPreventNotifyToken, getpid(), proc_set_wakemon_params(), v97 = CFSetCreateMutable(v141, 0, MEMORY[0x277CBF158]), (*(p_uiErrorNotifyToken - 14) = v97) == 0) || (v98 = CFSetCreateMutable(v141, 0, MEMORY[0x277CBF158]), (v94->_state.mediaVideoSessions = v98) == 0) || (v99 = CFSetCreateMutable(v141, 0, MEMORY[0x277CBF158]), (v94->_state.screenSessions = v99) == 0) || (v100 = CFSetCreateMutable(v141, 0, MEMORY[0x277CBF158]), (v94->_state.auxAudioSessions = v100) == 0))
  {
LABEL_349:
    APSLogErrorAt();
    if (gLogCategory_AirPlayReceiverPlatform <= 90 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    AirPlayReceiverServerPlatformFinalize(*v133);
    APSLogErrorAt();
    CFRelease(v11);
    goto LABEL_354;
  }

  if (*(v5 + 250))
  {
    notify_register_check("com.apple.airplay.dacp.error", p_uiErrorNotifyToken);
  }

  notify_register_dispatch("com.apple.ManagedConfiguration.profileListChanged", &v94->_managedDefaultsChangedNotificationToken, MEMORY[0x277D85CD0], &__block_literal_global_1612);
  AirPlayManagedDefaultsLogging_HandleReceiverManagedDefaultsLoggingChanged();
  if (*(v5 + 250))
  {
    var15 = v94->_server->var15;
    *&size.width = MEMORY[0x277D85DD0];
    *&size.height = 3221225472;
    v173 = __AirPlayReceiverServerPlatformInitialize_block_invoke_2;
    v174 = &unk_278C5FB98;
    v175 = v94;
    v176 = v5;
    notify_register_dispatch("com.apple.airplay.playbackAllow", p_uiErrorNotifyToken + 1, var15, &size);
    v102 = v94->_server->var15;
    v166 = MEMORY[0x277D85DD0];
    v167 = 3221225472;
    v168 = __AirPlayReceiverServerPlatformInitialize_block_invoke_3;
    v169 = &unk_278C5FB98;
    v170 = v94;
    v171 = v5;
    notify_register_dispatch("com.apple.airplay.playbackPrevent", p_playbackPreventNotifyToken, v102, &v166);
  }

  v161 = MEMORY[0x277D85DD0];
  v162 = 3221225472;
  v163 = __AirPlayReceiverServerPlatformInitialize_block_invoke_4;
  v164 = &__block_descriptor_40_e8_v12__0i8l;
  v165 = v5;
  v103 = MEMORY[0x277D85CD0];
  notify_register_dispatch("com.apple.airplay.prefsChanged", p_uiErrorNotifyToken + 3, MEMORY[0x277D85CD0], &v161);
  v104 = objc_alloc_init(AirPlayControllerServer);
  v94->_controllerServer = v104;
  [(AirPlayControllerServer *)v104 setDispatchQueue:v103];
  v156 = MEMORY[0x277D85DD0];
  v157 = 3221225472;
  v158 = __AirPlayReceiverServerPlatformInitialize_block_invoke_5;
  v159 = &__block_descriptor_40_e28_i40__0__NSString_8_16_24__32l;
  v160 = v5;
  [(AirPlayControllerServer *)v94->_controllerServer setPerformCommandBlock:&v156];
  v151 = MEMORY[0x277D85DD0];
  v152 = 3221225472;
  v153 = __AirPlayReceiverServerPlatformInitialize_block_invoke_6;
  v154 = &__block_descriptor_40_e25__32__0__NSString_8_16_i24l;
  v155 = v5;
  [(AirPlayControllerServer *)v94->_controllerServer setCopyPropertyBlock:&v151];
  v146 = MEMORY[0x277D85DD0];
  v147 = 3221225472;
  v148 = __AirPlayReceiverServerPlatformInitialize_block_invoke_7;
  v149 = &__block_descriptor_40_e24_i32__0__NSString_8_16_24l;
  v150 = v5;
  [(AirPlayControllerServer *)v94->_controllerServer setSetPropertyBlock:&v146];
  [(AirPlayControllerServer *)v94->_controllerServer startWithXPCName:@"com.apple.airplay.receiver.xpc"];
  if (APSIsWHAParallelSetupProcessingEnabled())
  {
    v105 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v94->_mediaAVAudioSessionActivationQueue = dispatch_queue_create("APReceiverMediaAVAudioSessionActivation", v105);
  }

  v106 = MEMORY[0x277CEA3A0];
  if (*(v5 + 257) || IsAppleTV() || APSIsAPMSpeaker())
  {
    v182[0] = *v106;
    v183[0] = @"com.apple.airplay.receiver.mediaremote.services";
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v183 forKeys:v182 count:{1, width}];
    gAPReceiverMediaRemoteService_0 = CFRetain(v5);
    gAPReceiverMediaRemoteService_1 = CFDictionaryCreateMutable(v141, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!gAPReceiverMediaRemoteService_1 || (gAPReceiverMediaRemoteService_5 = FigSimpleMutexCreate()) == 0 || (gAPReceiverMediaRemoteService_4 = FigSimpleMutexCreate(), gAPReceiverMediaRemoteService_3 = CFArrayCreateMutable(v141, 0, 0), gAPReceiverMediaRemoteService_7 = FigSimpleMutexCreate(), APSXPCServerAddCommandHandler()) || APSXPCServerAddCommandHandler() || (APSXPCServerAddCommandHandler(), APSXPCServerAddCommandHandler()) || APSXPCServerStart())
    {
      APSLogErrorAt();
    }

    else
    {
      LocalCenter = CFNotificationCenterGetLocalCenter();
      DisconnectNotificationName = APSXPCServerGetDisconnectNotificationName();
      CFNotificationCenterAddObserver(LocalCenter, 0, aprmrc_handleClientDeath, DisconnectNotificationName, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v109 = CFNotificationCenterGetLocalCenter();
      v110 = APSXPCClientGetDisconnectNotificationName();
      CFNotificationCenterAddObserver(v109, 0, _HandleAgentServiceDisconnect, v110, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }
  }

  if (!*(v5 + 256))
  {
    [+[APAVAudioSessionManager mediaSessionManager](APAVAudioSessionManager setUpSessionWithIsMixable:"setUpSessionWithIsMixable:", v94->_server->var41 != 0];
    v94->_state.mediaAVAudioSessionID = -[AVAudioSession opaqueSessionID]([+[APAVAudioSessionManager mediaSessionManager](APAVAudioSessionManager session], "opaqueSessionID");
    v111 = [MEMORY[0x277CCAB98] defaultCenter];
    v112 = *MEMORY[0x277CB8068];
    [v111 addObserver:v94 selector:sel__handleAVAudioSessionInterruption_ name:*MEMORY[0x277CB8068] object:{-[APAVAudioSessionManager session](+[APAVAudioSessionManager mediaSessionManager](APAVAudioSessionManager, "mediaSessionManager"), "session")}];
    v113 = [MEMORY[0x277CCAB98] defaultCenter];
    [v113 addObserver:v94 selector:sel__handleAVAudioSessionServicesReset_ name:*MEMORY[0x277CB80A0] object:{-[APAVAudioSessionManager session](+[APAVAudioSessionManager mediaSessionManager](APAVAudioSessionManager, "mediaSessionManager"), "session")}];
    v114 = [MEMORY[0x277CCAB98] defaultCenter];
    v115 = *MEMORY[0x277CB8098];
    v116 = [+[APAVAudioSessionManager mediaSessionManager](APAVAudioSessionManager session];
    v117 = v115;
    v86 = v141;
    [v114 addObserver:v94 selector:sel__handleAVAudioSessionServicesLost_ name:v117 object:v116];
    [+[APAVAudioSessionManager ambientSessionManager](APAVAudioSessionManager setUpSessionWithIsMixable:"setUpSessionWithIsMixable:", 1];
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    _NotifyIsPlayingAmbientAudio(0);
    [(AirPlayReceiverPlatform *)v94 _registerAVSystemControllerNotifications];
    [(AirPlayReceiverPlatform *)v94 _fetchInitialStates];
  }

  if (!v94->_server->var46)
  {
    if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
    {
      APSNowPlayingSessionDataSourceEnabled();
      LogPrintF();
    }

    v122 = APSSettingsGetIntWithDefault();
    v94->_useMediaRemotePerPlayerAPI = v122;
    if (v122)
    {
      if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      goto LABEL_288;
    }

    v123 = [[AirPlayReceiverMediaRemoteHelper alloc] initWithPlayerID:0 withSystemInfo:v94->_server->var26 withReceiverServer:?];
    v94->_mediaRemoteHelper = v123;
    if (v123)
    {
      [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
      goto LABEL_288;
    }

    goto LABEL_349;
  }

LABEL_288:
  v118 = dispatch_queue_create("AirPlayReceiverServerWiFiDELoadQueue", 0);
  if (v118)
  {
    CFRetain(v94->_server);
    handler = MEMORY[0x277D85DD0];
    v178 = 3221225472;
    v179 = ___LoadWiFiDEAsync_block_invoke;
    v180 = &unk_278C608C8;
    v181 = v94;
    dispatch_async(v118, &handler);
  }

  dispatch_release(v118);
  notify_register_check("com.apple.airplay.advertisingDidChange", out_token);
  gAirPlayReceiverServer = v5;
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterAddListener();
  CMNotificationCenterAddListener();
  CMNotificationCenterAddListener();
  CMNotificationCenterAddListener();
  CMNotificationCenterAddListener();
  CMNotificationCenterAddListener();
  if (APSIsAPMSpeaker())
  {
    CMNotificationCenterAddListener();
    CMNotificationCenterAddListener();
  }

  *(v5 + 144) = 90;
  *(v5 + 152) = SecondsToUpTicks();
  v119 = MEMORY[0x23EF18CD0]();
  if (!IsAppleTV() && !APSIsAPMSpeaker())
  {
    v120 = 0;
    goto LABEL_316;
  }

  if (v119)
  {
    v120 = CFDictionaryCreateMutable(v86, 1, 0, 0);
    FigCFDictionarySetValue();
    if (APSXPCServerStart() && gLogCategory_AirPlayReceiverServer <= 90 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    v120 = 0;
  }

  if (IsAppleTV())
  {
    APSXPCClientAddEventHandler();
  }

  APSXPCClientAddEventHandler();
  if (APSXPCClientSendCommandCreatingReply() && gLogCategory_AirPlayReceiverServer <= 90 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!v119)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    APSXPCServerGetDisconnectNotificationName();
    CMNotificationCenterAddListener();
    goto LABEL_316;
  }

  if (!APSXPCServerAddCommandHandler())
  {
LABEL_316:
    v121 = v137;
LABEL_317:
    if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_321;
  }

  v121 = v137;
  if (gLogCategory_AirPlayReceiverServer <= 90)
  {
    if (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize())
    {
      LogPrintF();
    }

    goto LABEL_317;
  }

LABEL_321:
  if (v120)
  {
    CFRelease(v120);
  }

  CFRetain(v5);
  dispatch_async_f(MEMORY[0x277D85CD0], v5, _HandleDenyInterruptionsStatusChanged);
  if (IsAppleInternalBuild())
  {
    if (!*(v5 + 257))
    {
      DebugIPC_EnsureInitialized();
      if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }
  }

  APSRTCReportingAgentCreate();
  *v121 = v5;
  CFRelease(v11);
  return 0;
}

uint64_t _HandleDebug(const __CFDictionary *a1, CFMutableDictionaryRef *a2)
{
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  cf = 0;
  theDict = 0;
  if (gAirPlayReceiverServer && (v3 = *(gAirPlayReceiverServer + 216)) != 0)
  {
    APReceiverSessionManagerCopyAirPlaySessionWithAttribute(v3, 0, 0, &cf);
    if (cf)
    {
      v7 = AirPlayReceiverSessionCopyProperty(cf, v5, @"mediaAudioSession", v6, 0);
    }

    else
    {
      v7 = 0;
    }

    DataBuffer_Init();
    Value = CFDictionaryGetValue(a1, @"command");
    if (Value)
    {
      v9 = Value;
      v10 = CFGetTypeID(Value);
      if (v10 == CFStringGetTypeID())
      {
        v11 = CFDictionaryGetValue(a1, @"value");
        if (v11)
        {
          v12 = v11;
          Length = CFStringGetLength(v11);
          v14 = malloc_type_calloc(1uLL, Length + 1, 0x100004077774924uLL);
          if (!v14)
          {
            APSLogErrorAt();
            v18 = 4294960568;
            goto LABEL_39;
          }

          v15 = v14;
          CFStringGetCString(v12, v14, Length + 1, 0x8000100u);
        }

        else
        {
          v15 = 0;
        }

        if (CFEqual(v9, @"show"))
        {
          Int64 = CFDictionaryGetInt64();
          context[0] = gAirPlayReceiverServer;
          context[1] = Int64;
          context[2] = v24;
          if (gAirPlayReceiverServer)
          {
            dispatch_sync_f(*(gAirPlayReceiverServer + 24), context, _AirPlayReceiverServerDebugShow);
          }

          Formatted = CFPropertyListCreateFormatted();
          if (Formatted)
          {
            v18 = Formatted;
            APSLogErrorAt();
            goto LABEL_24;
          }

          goto LABEL_20;
        }

        if (!CFEqual(v9, @"control"))
        {
          v18 = 4294960582;
          goto LABEL_24;
        }

        if (v15)
        {
          v19 = CFPropertyListCreateFormatted();
          if (v19)
          {
            v18 = v19;
            APSLogErrorAt();
            DataBuffer_Free();
LABEL_25:
            free(v15);
            goto LABEL_26;
          }

LABEL_20:
          if (theDict)
          {
            CFDictionarySetValue(theDict, @"responseType", v9);
            v20 = theDict;
          }

          else
          {
            v20 = 0;
          }

          v18 = 0;
          *a2 = v20;
          theDict = 0;
LABEL_24:
          DataBuffer_Free();
          if (!v15)
          {
            goto LABEL_26;
          }

          goto LABEL_25;
        }

        APSLogErrorAt();
        v18 = 0;
      }

      else
      {
        APSLogErrorAt();
        v18 = 4294960540;
      }
    }

    else
    {
      v18 = 4294960582;
    }
  }

  else
  {
    APSLogErrorAt();
    v7 = 0;
    v18 = 4294960587;
  }

LABEL_39:
  DataBuffer_Free();
LABEL_26:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v18;
}

void _AirPlayReceiverServerDebugShow(uint64_t a1)
{
  v10 = 0;
  DataBuffer_AppendF();
  DataBuffer_AppendF();
  DataBuffer_AppendF();
  CFObjectGetPropertyInt64Sync();
  DataBuffer_AppendF();
  DataBuffer_AppendF();
  DataBuffer_AppendF();
  DataBuffer_AppendF();
  DataBuffer_AppendF();
  DataBuffer_AppendF();
  DataBuffer_AppendF();
  DataBuffer_AppendF();
  CFObjectGetPropertyInt64Sync();
  DataBuffer_AppendF();
  CFObjectGetPropertyInt64Sync();
  CFObjectGetPropertyInt64Sync();
  DataBuffer_AppendF();
  DataBuffer_AppendF();
  APSMultiPrimariesEnabled();
  DataBuffer_AppendF();
  APSNowPlayingSessionDataSourceEnabled();
  DataBuffer_AppendF();
  DataBuffer_AppendF();
  v3 = APReceiverSystemInfoCopyProperty(*(*a1 + 160), v2, @"AdvertiserInfo", 0, &v10);
  v6 = APAdvertiserInfoCopyProperty(v3, v4, @"featuresEx", v5, &v10);
  APSFeaturesCopyStringRepresentation();
  DataBuffer_AppendF();
  if (v6)
  {
    CFRelease(v6);
  }

  CFObjectGetPropertyInt64Sync();
  DataBuffer_AppendF();
  if (v3)
  {
    CFRelease(v3);
  }

  v7 = *(*a1 + 40);
  if (v7)
  {
    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    context[3] = 0;
    context[0] = v7;
    context[1] = v8;
    context[2] = v9;
    dispatch_sync_f(*(v7 + 16), context, _APAdvertiserDebugShow);
  }
}

void _handleSenderProcessDidDisconnect()
{
  if (gAirPlayReceiverServer && (v0 = *(gAirPlayReceiverServer + 160)) != 0)
  {
    APReceiverSystemInfoHandleAPServicesReset(v0);
  }

  else
  {
    APSLogErrorAt();
  }

  if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

uint64_t _handleSenderProcessDidLaunch()
{
  if (gAirPlayReceiverServer && (v0 = *(gAirPlayReceiverServer + 160)) != 0)
  {
    APReceiverSystemInfoHandleAPServicesReset(v0);
    v1 = 0;
  }

  else
  {
    v1 = 4294960578;
    APSLogErrorAt();
  }

  if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v1;
}

void _handleAPReceiverServicesEvents(__CFString *cf1, const __CFDictionary *a2)
{
  v2 = gAirPlayReceiverServer;
  if (gAirPlayReceiverServer)
  {
    if (cf1 == @"nonPersistentReceiverSessionStartedOnHTSecondary")
    {
      goto LABEL_20;
    }

    if (!cf1)
    {
      return;
    }

    if (CFEqual(cf1, @"nonPersistentReceiverSessionStartedOnHTSecondary"))
    {
LABEL_20:
      if (APSIsATVInHTGroup())
      {
        v9 = 0;
        v10 = 0;
        v8 = CFRetain(v2);
        if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        if (a2)
        {
          Value = CFDictionaryGetValue(a2, @"HijackID");
          v10 = Value;
          if (Value)
          {
            CFRetain(Value);
          }

          LODWORD(v9) = CFDictionaryGetInt64();
        }

        APSDispatchAsyncFHelper();
      }
    }

    else if (cf1 == @"LocalSenderStateChanged" || CFEqual(cf1, @"LocalSenderStateChanged"))
    {
      v5 = v2[20];
      CFRetain(a2);
      CFRetain(v5);
      v6 = v5[2];
      v8 = MEMORY[0x277D85DD0];
      v9 = 3221225472;
      v10 = __APReceiverSystemInfoHandleLocalSenderStateChanged_block_invoke;
      v11 = &__block_descriptor_48_e5_v8__0l;
      v12 = v5;
      v13 = a2;
      dispatch_async(v6, &v8);
    }
  }
}

void _HandleReceiverSessionStartedOnHTSecondary(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v7 = 0;
  cf = 0;
  v4 = 0;
  if (!APSIsATVInHTGroup() || v2 == 2)
  {
LABEL_17:
    v5 = cf;
    goto LABEL_18;
  }

  APReceiverSessionManagerCopyAirPlaySessionWithAttribute(v1[27], 4, &cf, &v7);
  v4 = 0;
  v5 = cf;
  if (cf && v7)
  {
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v6)
    {
      v4 = v6(v5, @"hijackID", 0);
    }

    else
    {
      v4 = 0;
    }

    if (v4 != v3 && (!v4 || !v3 || !CFEqual(v4, v3)))
    {
      if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      AirPlayReceiverServerCloseConnection(v1, cf);
    }

    goto LABEL_17;
  }

LABEL_18:
  if (v5)
  {
    CFRelease(v5);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  CFRelease(v1);
}

uint64_t _GlobalInitialize()
{
  gAirPlayTransaction = os_transaction_create();
  signal(13, 1);
  LogSetAppID();
  if (IsAppleInternalBuild())
  {
    LogControl();
  }

  return LogControl();
}

CFTypeRef AirPlayReceiverServerCopyProperty(uint64_t a1, int a2, CFTypeRef cf1, uint64_t a4, _DWORD *a5)
{
  v24 = 0;
  cf = 0;
  v23 = 0;
  if (CFEqual(cf1, @"audioBufferInfo"))
  {
    APReceiverSessionManagerCopyAirPlaySessionWithAttribute(*(a1 + 216), 0, 0, &cf);
    if (cf)
    {
      Int64 = AirPlayReceiverSessionCopyProperty(cf, v8, cf1, v9, &v24);
LABEL_4:
      v23 = Int64;
      goto LABEL_34;
    }

    APSLogErrorAt();
    v14 = -6709;
    goto LABEL_33;
  }

  if (CFEqual(cf1, @"playing"))
  {
    if (*(a1 + 124))
    {
      v11 = MEMORY[0x277CBED28];
    }

    else
    {
      v11 = MEMORY[0x277CBED10];
    }

    v23 = *v11;
    CFRetain(v23);
    goto LABEL_34;
  }

  if (CFEqual(cf1, @"sourceVersion"))
  {
    v12 = *MEMORY[0x277CBECE8];
    ShortVersionLength = APSVersionUtilsGetShortVersionLength();
    v23 = CFStringCreateWithBytesNoCopy(v12, "920.10.1", ShortVersionLength, 0x600u, 0, *MEMORY[0x277CBED00]);
    if (v23)
    {
      goto LABEL_34;
    }

    APSLogErrorAt();
    v14 = -6762;
    goto LABEL_33;
  }

  if (CFEqual(cf1, @"deviceInfo"))
  {
    v27 = 0;
    format = 0;
    data = 0;
    v16 = APReceiverSystemInfoCopyProperty(*(a1 + 160), v15, @"AdvertiserInfo", 0, &v27);
    if (!v27)
    {
      v27 = APAdvertiserInfoCreateData(v16, &data);
      if (!v27)
      {
        v23 = CFPropertyListCreateWithData(*MEMORY[0x277CBECE8], data, 0, &format, 0);
        if (v23)
        {
          if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
            if (!v16)
            {
              goto LABEL_30;
            }
          }

          else if (!v16)
          {
LABEL_30:
            if (data)
            {
              CFRelease(data);
            }

            v14 = v27;
LABEL_33:
            v24 = v14;
            goto LABEL_34;
          }

LABEL_29:
          CFRelease(v16);
          goto LABEL_30;
        }

        v27 = -6762;
      }
    }

    APSLogErrorAt();
    if (!v16)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (CFEqual(cf1, @"listeningPort"))
  {
    Int64 = CFNumberCreateInt64();
    goto LABEL_4;
  }

  if (CFEqual(cf1, @"assistedModeAdvertisingInfo"))
  {
    v17 = *(a1 + 40);
    if (v17)
    {
      v24 = APAdvertiserCopyProperty(v17, @"assistedModeInfo", &v23);
      if (v24)
      {
        APSLogErrorAt();
      }
    }
  }

  else
  {
    if (!CFEqual(cf1, @"uglServerInfo"))
    {
      Int64 = AirPlayReceiverServerPlatformCopyProperty(0, v19, cf1, v20, &v24);
      goto LABEL_4;
    }

    if (*(a1 + 257))
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (*(a1 + 80))
      {
        if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        FigCFDictionarySetInt64();
        FigCFDictionarySetValue();
      }

      v23 = Mutable;
    }
  }

LABEL_34:
  if (cf)
  {
    CFRelease(cf);
  }

  if (a5)
  {
    *a5 = v24;
  }

  return v23;
}

uint64_t AirPlayReceiverServerSetProperty(uint64_t a1, int a2, CFTypeRef cf1, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    APSLogErrorAt();
    return 4294960587;
  }

  if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (CFEqual(cf1, @"playing"))
  {
    v8 = 0;
    *(a1 + 124) = CFGetInt64() != 0;
    return v8;
  }

  if (CFEqual(cf1, @"playPassword"))
  {
    APReceiverSystemInfoSetProperty(*(a1 + 160), v9, @"Password", v10, a5);
    return 0;
  }

  if (CFEqual(cf1, @"canRecordScreen"))
  {
    v8 = APReceiverSystemInfoSetProperty(*(a1 + 160), v11, @"CanRecordScreenStream", v12, a5);
    if (!v8)
    {
      return v8;
    }

LABEL_37:
    APSLogErrorAt();
    return v8;
  }

  if (CFEqual(cf1, @"screenDemoMode"))
  {
    v8 = APReceiverSystemInfoSetProperty(*(a1 + 160), v13, @"ScreenDemoMode", v14, a5);
    if (!v8)
    {
      return v8;
    }

    goto LABEL_37;
  }

  if (CFEqual(cf1, @"forwardFrameUserData"))
  {
    v8 = APReceiverSystemInfoSetProperty(*(a1 + 160), v15, @"ForwardFrameUserData", v16, a5);
    if (!v8)
    {
      return v8;
    }

    goto LABEL_37;
  }

  if (CFEqual(cf1, @"displayHDRMode"))
  {
    v8 = APReceiverSystemInfoSetProperty(*(a1 + 160), v17, @"DisplayHDRModeOverride", v18, a5);
    if (!v8)
    {
      return v8;
    }

    goto LABEL_37;
  }

  if (CFEqual(cf1, @"displaySizeMax"))
  {
    v8 = APReceiverSystemInfoSetProperty(*(a1 + 160), v19, @"DisplaySizeMaxOverride", v20, a5);
    if (!v8)
    {
      return v8;
    }

    goto LABEL_37;
  }

  if (CFEqual(cf1, @"usePTPClock"))
  {
    v8 = APReceiverSystemInfoSetProperty(*(a1 + 160), v21, @"UsePTPClock", v22, a5);
    if (!v8)
    {
      return v8;
    }

    goto LABEL_37;
  }

  if (CFEqual(cf1, @"denyInterruptions"))
  {
    v8 = APReceiverSystemInfoSetProperty(*(a1 + 160), v23, @"DenyInterruptions", v24, a5);
    if (!v8)
    {
      return v8;
    }

    goto LABEL_37;
  }

  if (CFEqual(cf1, @"supportsSenderUIEvents"))
  {
    v8 = APReceiverSystemInfoSetProperty(*(a1 + 160), v25, @"SupportsSenderUIEvents", v26, a5);
    if (!v8)
    {
      return v8;
    }

    goto LABEL_37;
  }

  if (CFEqual(cf1, @"groupUUID"))
  {
    v8 = APReceiverSystemInfoSetProperty(*(a1 + 160), v27, @"AirPlayGroupID", v28, a5);
    if (!v8)
    {
      return v8;
    }

    goto LABEL_37;
  }

  if (!CFEqual(cf1, @"forcePermissionDialog"))
  {
    return 4294960582;
  }

  v30 = *MEMORY[0x277CBED28] == a5;
  v8 = 0;
  v31 = v30;
  *(a1 + 255) = v31;
  return v8;
}

void AirPlayReceiverServerUpdateStatus(void *a1, CFTypeRef cf)
{
  CFRetain(cf);
  CFRetain(a1);
  v4 = a1[3];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __AirPlayReceiverServerUpdateStatus_block_invoke;
  v5[3] = &__block_descriptor_48_e5_v8__0l;
  v5[4] = a1;
  v5[5] = cf;
  dispatch_async(v4, v5);
}

void __AirPlayReceiverServerUpdateStatus_block_invoke(uint64_t a1)
{
  if (gLogCategory_AirPlayReceiverServer <= 30 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (CFEqual(*(a1 + 40), @"StartingPlaying"))
  {
    if (!*(*(a1 + 32) + 250))
    {
      goto LABEL_17;
    }

    v2 = gAirTunesDACPClient;
    if (gAirTunesDACPClient && *gAirTunesDACPClient == 1684104048)
    {
      pthread_mutex_lock((gAirTunesDACPClient + 8));
      *(v2 + 161) = 1;
      pthread_mutex_unlock((v2 + 8));
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  if (CFEqual(*(a1 + 40), @"StoppedPlaying"))
  {
    if (!*(*(a1 + 32) + 250))
    {
LABEL_17:
      CFObjectSetProperty();
      goto LABEL_18;
    }

    v3 = gAirTunesDACPClient;
    if (gAirTunesDACPClient && *gAirTunesDACPClient == 1684104048)
    {
      pthread_mutex_lock((gAirTunesDACPClient + 8));
      v4 = *(v3 + 161);
      *(v3 + 161) = 0;
      pthread_mutex_unlock((v3 + 8));
      if (v4)
      {
        _AirTunesDACPClient_ScheduleCommandInternal(v3, "stopSession", 1);
      }

      goto LABEL_17;
    }

LABEL_26:
    APSLogErrorAt();
    goto LABEL_17;
  }

  if (CFEqual(*(a1 + 40), @"StartedPlayingOverAWDL"))
  {
    v6 = *(a1 + 32);
    v7 = @"startedPlayingOverAWDL";
  }

  else
  {
    if (!CFEqual(*(a1 + 40), @"StoppedPlayingOverAWDL"))
    {
      goto LABEL_18;
    }

    v6 = *(a1 + 32);
    v7 = @"stoppedPlayingOverAWDL";
  }

  AirPlayReceiverServerControl(v6, 1, v7, 0, 0, 0);
LABEL_18:
  CFRelease(*(a1 + 40));
  v5 = *(a1 + 32);

  CFRelease(v5);
}

uint64_t AirPlayReceiverServerHijackConnection(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (result && a2 && a3)
  {
    v4 = result;
    HTTPConnectionForSession = _FindHTTPConnectionForSession(result, a2, &v7);
    result = _FindHTTPConnectionForSession(v4, a3, 0);
    v6 = result;
    if (gLogCategory_AirPlayReceiverServer <= 30)
    {
      if (gLogCategory_AirPlayReceiverServer != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = LogPrintF();
      }
    }

    if (HTTPConnectionForSession && v6 && HTTPConnectionForSession != v6)
    {
      if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      return _DestroyHTTPConnection(v7, HTTPConnectionForSession);
    }
  }

  return result;
}

uint64_t AirPlayReceiverServerStoreReverseConnectionContext(uint64_t a1, uint64_t a2, const void *a3)
{
  if (!*(a1 + 192))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(a1 + 192) = Mutable;
    if (!Mutable)
    {
      APSLogErrorAt();
      return 4294960568;
    }
  }

  v6 = UUIDtoCString();
  v7 = CFStringCreateWithCString(0, v6, 0x8000100u);
  Value = CFDictionaryGetValue(*(a1 + 192), v7);
  if (Value)
  {
    v9 = Value;
    CFRetain(Value);
  }

  else
  {
    v9 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    if (!v9)
    {
      APSLogErrorAt();
      v10 = 4294960568;
      if (!v7)
      {
        return v10;
      }

      goto LABEL_7;
    }
  }

  CFArrayAppendValue(v9, a3);
  CFDictionarySetValue(*(a1 + 192), v7, v9);
  CFRelease(v9);
  v10 = 0;
  if (v7)
  {
LABEL_7:
    CFRelease(v7);
  }

  return v10;
}

void _HandleConnectionDetached(uint64_t a1, const void *a2, const void *a3, NSObject *a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v18[0] = 0;
  v18[1] = 0;
  Int64 = CFObjectGetInt64();
  v8 = CFObjectGetInt64() != 0;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  CString = CFObjectGetCString();
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  Bytes = CFObjectGetBytes();
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v11)
  {
    v19 = -71934;
    goto LABEL_18;
  }

  v19 = v11(a3, v18);
  if (v19)
  {
LABEL_18:
    APSLogErrorAt();
    v14 = 0;
    goto LABEL_19;
  }

  v12 = v18[0];
  cf = 0;
  if (gAirPlayReceiverReverseConnectionInitOnce != -1)
  {
    dispatch_once_f(&gAirPlayReceiverReverseConnectionInitOnce, 0, _AirPlayReceiverReverseConnectionGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APSLogErrorAt();
    v17 = -6728;
LABEL_32:
    v19 = v17;
    goto LABEL_18;
  }

  v14 = Instance;
  if (!Bytes || !CString || !v12)
  {
    APSLogErrorAt();
    v17 = -6705;
LABEL_31:
    CFRelease(v14);
    goto LABEL_32;
  }

  *(Instance + 80) = 0;
  *(Instance + 48) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  dispatch_retain(a4);
  *(v14 + 72) = a4;
  v15 = HTTPClientCreateWithSocket();
  v26 = v15;
  if (v15)
  {
    v17 = v15;
    APSLogErrorAt();
    if (cf)
    {
      HTTPClientInvalidate();
      CFRelease(cf);
      cf = 0;
    }

    goto LABEL_31;
  }

  HTTPClientSetDispatchQueue();
  APSLogUtilsGetHTTPClientCoreLogCategory();
  HTTPClientSetLogging();
  APSLogUtilsGetAsyncCnxLogCategory();
  HTTPClientSetConnectionLogging();
  APSSettingsGetInt64();
  HTTPClientSetTimeout();
  if (Int64)
  {
    HTTPClientSetTransportDelegate();
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  CFRetain(v14);
  v20 = v14;
  v21 = _HandleReverseConnectionInvalidated;
  HTTPClientSetDelegate();
  HTTPClientSetFlags();
  *(v14 + 64) = cf;
  *(v14 + 80) = 0;
  *(v14 + 20) = v8;
  *(v14 + 38) = *Bytes;
  *(v14 + 22) = *CString;
  v19 = 0;
  if (!Int64)
  {
LABEL_15:
    v19 = AirPlayReceiverServerStoreReverseConnectionContext(a2, Bytes, v14);
    if (!v19)
    {
      v19 = 0;
      goto LABEL_19;
    }

    goto LABEL_26;
  }

  v16 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v16)
  {
    v19 = v16(a3, 0);
    if (!v19)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v19 = -71934;
  }

LABEL_26:
  APSLogErrorAt();
LABEL_19:
  CFRelease(a2);
  CFRelease(a3);
  dispatch_release(a4);
  if (v14)
  {
    CFRelease(v14);
  }

  if (v19 && gLogCategory_AirPlayReceiverServer <= 60 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

void _HandleReverseConnectionInvalidated(uint64_t a1, const void *a2)
{
  if (a2)
  {
    if (*(gAirPlayReceiverServer + 192))
    {
      ReverseConnectionsForSession = _GetReverseConnectionsForSession(gAirPlayReceiverServer);
      if (ReverseConnectionsForSession)
      {
        v4 = 0;
        do
        {
          v5 = v4;
          if (v4 >= CFArrayGetCount(ReverseConnectionsForSession))
          {
            break;
          }

          ValueAtIndex = CFArrayGetValueAtIndex(ReverseConnectionsForSession, v5);
          v4 = v5 + 1;
        }

        while (ValueAtIndex != a2);
        if (v5 < CFArrayGetCount(ReverseConnectionsForSession))
        {
          CFArrayRemoveValueAtIndex(ReverseConnectionsForSession, v5);
        }
      }
    }

    else
    {
      APSLogErrorAt();
    }

    if (gLogCategory_AirPlayReceiverServer <= 30 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CFRelease(a2);
  }

  else if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
  {

    LogPrintF();
  }
}

const void *_GetReverseConnectionsForSession(uint64_t a1)
{
  if (!*(a1 + 192))
  {
    return 0;
  }

  v2 = UUIDtoCString();
  v3 = CFStringCreateWithCString(0, v2, 0x8000100u);
  Value = CFDictionaryGetValue(*(a1 + 192), v3);
  if (v3)
  {
    CFRelease(v3);
  }

  return Value;
}

uint64_t _AirPlayReceiverReverseConnectionGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAirPlayReceiverReverseConnectionTypeID = result;
  return result;
}

void _AirPlayReceiverReverseConnectionFinalize(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 64);
  if (!v2)
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    HTTPClientInvalidate();
    v3 = *(a1 + 64);
    goto LABEL_6;
  }

  if (v3)
  {
LABEL_6:
    CFRelease(v3);
    *(a1 + 64) = 0;
  }

LABEL_7:
  v4 = *(a1 + 72);
  if (v4)
  {
    dispatch_release(v4);
    *(a1 + 72) = 0;
  }
}

uint64_t AirPlayReceiverServerHoldPowerAssertion(uint64_t result)
{
  v1 = *(result + 204);
  *(result + 204) = v1 + 1;
  if (!v1 && !*(result + 208))
  {
    result = IOPMAssertionCreateWithName(@"PreventUserIdleSystemSleep", 0xFFu, @"com.apple.airplay.mediacontrol", (result + 208));
    if (gLogCategory_AirPlayReceiverServer <= 40)
    {
      if (gLogCategory_AirPlayReceiverServer != -1 || (result = _LogCategory_Initialize(), result))
      {

        return LogPrintF();
      }
    }
  }

  return result;
}

uint64_t AirPlayReceiverServerPostMediaControlEvent(dispatch_queue_t *a1, const void *a2)
{
  if (gLogCategory_AirPlayReceiverServer <= 10 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v4 = malloc_type_calloc(1uLL, 0x20uLL, 0x1060040FB77E0C5uLL);
  if (v4)
  {
    v5 = v4;
    *v4 = CFDictionaryGetInt64();
    Data = CFPropertyListCreateData(0, a2, kCFPropertyListXMLFormat_v1_0, 0, 0);
    v5[1] = Data;
    if (Data)
    {
      CFRetain(a2);
      v5[2] = a2;
      CFRetain(a1);
      v5[3] = a1;
      dispatch_async_f(a1[11], v5, _AirPlayReceiverServerPostMediaControlEvent);
      return 0;
    }

    else
    {
      APSLogErrorAt();
      free(v5);
      return 4294960596;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960568;
  }
}

void _AirPlayReceiverServerPostMediaControlEvent(unsigned int *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  cf = *(a1 + 1);
  v1 = *a1;
  v2 = *(a1 + 3);
  v22 = 0;
  v21[1] = 0;
  v3 = *(v2 + 200) + 1;
  *(v2 + 200) = v3;
  v4 = *(*(v2 + 80) + 56);
  if (v4)
  {
    v5 = 0;
    do
    {
      v21[0] = 0;
      v6 = *(*(v4 + 40) + 280);
      if (v6)
      {
        v7 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (!v7)
        {
          v22 = -12782;
LABEL_28:
          APSLogErrorAt();
          goto LABEL_30;
        }

        v22 = v7(v6, v1, v21);
        if (v22)
        {
          goto LABEL_28;
        }

        if (v21[0])
        {
          CFObjectGetBytes();
          if (v22)
          {
            goto LABEL_28;
          }

          ReverseConnectionsForSession = _GetReverseConnectionsForSession(v2);
          if (ReverseConnectionsForSession)
          {
            v9 = ReverseConnectionsForSession;
            if (CFArrayGetCount(ReverseConnectionsForSession))
            {
              Count = CFArrayGetCount(v9);
              if (Count >= 1)
              {
                v11 = Count;
                for (i = 0; i != v11; ++i)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v9, i);
                  v14 = *(ValueAtIndex + 8);
                  memset(&block[6], 0, 24);
                  v20 = 0;
                  if (v14)
                  {
                    v15 = ValueAtIndex;
                    if (*(ValueAtIndex + 4) != v3 && !strcmp(ValueAtIndex + 22, "event"))
                    {
                      CFObjectGetInt64();
                      if (v22)
                      {
                        goto LABEL_28;
                      }

                      HTTPClientGetPeerAddress();
                      if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
                      {
                        LogPrintF();
                      }

                      *(v15 + 4) = v3;
                      CFRetain(cf);
                      CFRetain(v15);
                      v16 = *(v15 + 9);
                      block[0] = MEMORY[0x277D85DD0];
                      block[1] = 3221225472;
                      block[2] = ___AirPlayReceiverServerPostMediaControlEvent_block_invoke;
                      block[3] = &__block_descriptor_48_e5_v8__0l;
                      block[4] = v15;
                      block[5] = cf;
                      dispatch_async(v16, block);
                      v5 = 1;
                    }
                  }
                }
              }
            }
          }
        }
      }

      v4 = *(v4 + 16);
    }

    while (v4);
    if (v5)
    {
      goto LABEL_30;
    }
  }

  if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_30:
  CFRelease(cf);
  CFRelease(*(a1 + 2));
  CFRelease(*(a1 + 3));
  free(a1);
}

uint64_t _DoEventTransactionCompletion(uint64_t result)
{
  if (*(result + 9648) || ((v1 = *(result + 8456), v2 = v1 - 300, v4 = v1 == 199, v3 = v1 + 200000, v4 || v2 < 0xFFFFFF9B) ? (v4 = v3 == 0) : (v4 = 1), !v4))
  {
    if (gLogCategory_AirPlayReceiverServer <= 60)
    {
      if (gLogCategory_AirPlayReceiverServer != -1)
      {
        return LogPrintF();
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return LogPrintF();
      }
    }
  }

  return result;
}

void AirPlayReceiverServerSendMediaRemoteCommand(uint64_t a1, int a2)
{
  cf = 0;
  APReceiverSessionManagerCopyAirPlaySessionWithAttribute(a1, 0, 0, &cf);
  if (cf)
  {
    if (AirPlayReceiverSessionSendMediaRemoteCommand(cf, -1, a2, 0))
    {
      APSLogErrorAt();
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

uint64_t AirPlayReceiverServerSendDACPCommands()
{
  ASPrintF();
  APSLogErrorAt();
  return 4294960568;
}

void _AirPlayReceiverUI_HandleServerReset(uint64_t a1)
{
  *(a1 + 24) = 0;
  dispatch_retain(*a1);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___AirPlayReceiverUI_HandleServerReset_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void _AirPlayReceiverUI_CleanupPresentation(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 && *(a1 + 40))
  {
    if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 30 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v5, "function", "stopPresentation");
    if (a3)
    {
      xpc_dictionary_set_cf_object();
    }

    _AirPlayReceiverUI_SendMessageWithReplySync(a1, v5, 0);
    xpc_release(v5);
  }

  [objc_msgSend(*(a1 + 136) "layer")];
  [*(a1 + 136) invalidate];

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 143) = 0;
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 30 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {

    LogPrintF();
  }
}

uint64_t _AirPlayReceiverUI_ActiveSessionsStopped(uint64_t a1)
{
  result = mach_absolute_time();
  *(a1 + 88) = result;
  for (i = *(a1 + 48); i; i = *i)
  {
    result = (i[2])("sessionsStopped", 0, i[3]);
  }

  return result;
}

uint64_t _AirPlayReceiverUI_SendMessageWithReplySync(NSObject **a1, uint64_t a2, void *a3)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy__2916;
  v19 = __Block_byref_object_dispose__2917;
  v20 = 0;
  v6 = dispatch_semaphore_create(0);
  if (v6)
  {
    v7 = v6;
    *(v22 + 6) = -6700;
    v8 = *a1;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___AirPlayReceiverUI_SendMessageWithReplySync_block_invoke;
    block[3] = &unk_278C60020;
    block[7] = &v15;
    block[8] = a1;
    block[5] = v7;
    block[6] = &v21;
    block[4] = a2;
    dispatch_async(v8, block);
    dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v7);
    if (*(v22 + 6))
    {
      APSLogErrorAt();
    }

    else if (MEMORY[0x23EF1BE90](v16[5]) == MEMORY[0x277D86480])
    {
      APSLogErrorAt();
      *(v22 + 6) = -6753;
      if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 60 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    else
    {
      int64 = xpc_dictionary_get_int64(v16[5], "error");
      *(v22 + 6) = int64;
      if (a3 && !int64)
      {
        v10 = v16;
        *a3 = v16[5];
        v10[5] = 0;
      }
    }
  }

  else
  {
    APSLogErrorAt();
    *(v22 + 6) = -6728;
  }

  v11 = v16[5];
  if (v11)
  {
    xpc_release(v11);
  }

  v12 = *(v22 + 6);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);
  return v12;
}

void sub_23EA17954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void _AirPlayReceiverUI_HandleStateEvent(void *a1)
{
  if (AirPlayReceiverUI_GetShared_once != -1)
  {
    dispatch_once(&AirPlayReceiverUI_GetShared_once, &__block_literal_global_2889);
  }

  v2 = AirPlayReceiverUI_GetShared_ui;
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [v3 setObject:@"video" forKey:@"category"];
  string = xpc_dictionary_get_string(a1, "eventType");
  if (string && ((v5 = string, !strcmp(string, "ended")) ? ([v3 setObject:@"stopped" forKey:@"state"], v6 = @"ended", v7 = @"reason") : (v6 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", v5), v7 = @"state"), objc_msgSend(v3, "setObject:forKey:", v6, v7), (v8 = xpc_dictionary_copy_cf_object()) != 0))
  {
    v9 = v8;
    v10 = CFGetTypeID(v8);
    if (v10 == CFDictionaryGetTypeID())
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v9);
      if (MutableCopy)
      {
        v12 = MutableCopy;
        CFDictionaryRemoveValue(MutableCopy, @"sessionID");
        if (CFDictionaryGetCount(v12) >= 1)
        {
          [v3 setObject:v12 forKey:@"params"];
        }

        CFRelease(v12);
      }

      Value = CFDictionaryGetValue(v9, @"sessionID");
      if (Value)
      {
        [v3 setObject:Value forKey:@"sessionID"];
      }

      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = ___AirPlayReceiverUI_HandleStateEvent_block_invoke;
      v14[3] = &unk_278C60A58;
      v14[4] = v3;
      v14[5] = v2;
      dispatch_async(MEMORY[0x277D85CD0], v14);
    }

    else
    {
      APSLogErrorAt();
    }

    CFRelease(v9);
  }

  else
  {

    APSLogErrorAt();
  }
}

void _AirPlayReceiverUI_HandleFailedURLRequest()
{
  if (AirPlayReceiverUI_GetShared_once != -1)
  {
    dispatch_once(&AirPlayReceiverUI_GetShared_once, &__block_literal_global_2889);
  }

  v0 = AirPlayReceiverUI_GetShared_ui;
  v1 = [MEMORY[0x277CBEB38] dictionary];
  [v1 setObject:@"unhandledURLRequest" forKey:@"type"];
  v2 = xpc_dictionary_copy_cf_object();
  if (v2)
  {
    v3 = v2;
    v4 = CFGetTypeID(v2);
    if (v4 == CFDictionaryGetTypeID())
    {
      [v1 setObject:v3 forKey:@"request"];
      Value = CFDictionaryGetValue(v3, @"sessionID");
      if (Value)
      {
        [v1 setObject:Value forKey:@"sessionID"];
      }

      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = ___AirPlayReceiverUI_HandleFailedURLRequest_block_invoke;
      v6[3] = &unk_278C60A58;
      v6[4] = v1;
      v6[5] = v0;
      dispatch_async(MEMORY[0x277D85CD0], v6);
    }

    else
    {
      APSLogErrorAt();
    }

    CFRelease(v3);
  }

  else
  {

    APSLogErrorAt();
  }
}

void _AirPlayReceiverUI_HandleMetaDataEvent()
{
  if (AirPlayReceiverUI_GetShared_once != -1)
  {
    dispatch_once(&AirPlayReceiverUI_GetShared_once, &__block_literal_global_2889);
  }

  v0 = AirPlayReceiverUI_GetShared_ui;
  v1 = [MEMORY[0x277CBEB38] dictionary];
  [v1 setObject:@"video" forKey:@"category"];
  [v1 setObject:@"timedMetadata" forKey:@"type"];
  v2 = xpc_dictionary_copy_cf_object();
  if (v2)
  {
    v3 = v2;
    v4 = CFGetTypeID(v2);
    if (v4 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(v3, @"sessionID");
      if (Value)
      {
        [v1 setObject:Value forKey:@"sessionID"];
      }

      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = ___AirPlayReceiverUI_HandleMetaDataEvent_block_invoke;
      v6[3] = &unk_278C60A58;
      v6[4] = v1;
      v6[5] = v0;
      dispatch_async(MEMORY[0x277D85CD0], v6);
    }

    else
    {
      APSLogErrorAt();
    }

    CFRelease(v3);
  }

  else
  {

    APSLogErrorAt();
  }
}

void _AirPlayReceiverUI_HandleAudioStop(dispatch_object_t *a1)
{
  v2 = xpc_dictionary_copy_cf_object();
  if (v2)
  {
    v3 = v2;
    v4 = CFGetTypeID(v2);
    if (v4 == CFDictionaryGetTypeID())
    {
      Int64 = CFDictionaryGetInt64();
      dispatch_retain(*a1);
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = ___AirPlayReceiverUI_HandleAudioStop_block_invoke;
      v6[3] = &__block_descriptor_44_e5_v8__0l;
      v6[4] = a1;
      v7 = Int64;
      dispatch_async(MEMORY[0x277D85CD0], v6);
    }

    else
    {
      APSLogErrorAt();
    }

    CFRelease(v3);
  }

  else
  {

    APSLogErrorAt();
  }
}

void _AirPlayReceiverUI_HandleUserEvent(void *a1)
{
  if (AirPlayReceiverUI_GetShared_once != -1)
  {
    dispatch_once(&AirPlayReceiverUI_GetShared_once, &__block_literal_global_2889);
  }

  v2 = AirPlayReceiverUI_GetShared_ui;
  v3 = [MEMORY[0x277CBEB38] dictionary];
  string = xpc_dictionary_get_string(a1, "eventType");
  if (!string)
  {
    goto LABEL_38;
  }

  v5 = string;
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 40 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    v15 = v5;
    LogPrintF();
  }

  if (!strcmp(v5, "userNext"))
  {
    [v3 setObject:@"next" forKey:@"action"];
    v6 = 0;
    v7 = @"kAirPlaySlideshowNotification_UserNext";
    goto LABEL_27;
  }

  if (!strcmp(v5, "userPrevious"))
  {
    [v3 setObject:@"previous" forKey:@"action"];
    v6 = 0;
    v7 = @"kAirPlaySlideshowNotification_UserPrevious";
    goto LABEL_27;
  }

  if (!strcmp(v5, "userUp"))
  {
    v8 = @"up";
LABEL_22:
    [v3 setObject:v8 forKey:{@"action", v15}];
LABEL_23:
    v7 = 0;
    v6 = 0;
    goto LABEL_27;
  }

  if (!strcmp(v5, "userDown"))
  {
    v8 = @"down";
    goto LABEL_22;
  }

  if (!strcmp(v5, "userSelect"))
  {
    v9 = @"select";
LABEL_26:
    [v3 setObject:v9 forKey:{@"action", v15}];
    v6 = 0;
    v7 = @"kAirPlaySlideshowNotification_UserPlayPause";
    goto LABEL_27;
  }

  if (!strcmp(v5, "userPlayPause"))
  {
    v9 = @"play";
    goto LABEL_26;
  }

  if (strcmp(v5, "userStop"))
  {
    if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_23;
  }

  [v3 setObject:@"stopped" forKey:@"state"];
  [v3 setObject:@"photo" forKey:@"category"];
  v6 = 1;
  v7 = @"kAirPlaySlideshowNotification_UserStop";
LABEL_27:
  v10 = xpc_dictionary_copy_cf_object();
  if (v10)
  {
    v11 = v10;
    v12 = CFGetTypeID(v10);
    if (v12 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(v11, @"sessionID");
      if (Value)
      {
        [v3 setObject:Value forKey:@"sessionID"];
      }

      v14 = CFDictionaryGetValue(v11, @"userExit");
      if (v14)
      {
        [v3 setObject:v14 forKey:@"userExit"];
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ___AirPlayReceiverUI_HandleUserEvent_block_invoke;
      block[3] = &unk_278C5FFD0;
      block[4] = v7;
      block[5] = v3;
      block[6] = v2;
      v17 = v6;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    else
    {
      APSLogErrorAt();
    }

    CFRelease(v11);
    return;
  }

LABEL_38:

  APSLogErrorAt();
}

void _AirPlayReceiverUI_HandlePlaylistEvent(void *a1)
{
  if (AirPlayReceiverUI_GetShared_once != -1)
  {
    dispatch_once(&AirPlayReceiverUI_GetShared_once, &__block_literal_global_2889);
  }

  v2 = AirPlayReceiverUI_GetShared_ui;
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [v3 setObject:@"video" forKey:@"category"];
  string = xpc_dictionary_get_string(a1, "eventType");
  if (string && ([v3 setObject:objc_msgSend(MEMORY[0x277CCACA8] forKey:{"stringWithUTF8String:", string), @"type"}], (v5 = xpc_dictionary_copy_cf_object()) != 0))
  {
    v6 = v5;
    v7 = CFGetTypeID(v5);
    if (v7 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(v6, @"item");
      if (Value)
      {
        [v3 setObject:Value forKey:@"item"];
      }

      v9 = CFDictionaryGetValue(v6, @"sessionID");
      if (v9)
      {
        [v3 setObject:v9 forKey:@"sessionID"];
      }

      v10 = CFDictionaryGetValue(v6, @"uuid");
      if (v10)
      {
        [v3 setObject:v10 forKey:@"uuid"];
      }

      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = ___AirPlayReceiverUI_HandlePlaylistEvent_block_invoke;
      v11[3] = &unk_278C60A58;
      v11[4] = v3;
      v11[5] = v2;
      dispatch_async(MEMORY[0x277D85CD0], v11);
    }

    else
    {
      APSLogErrorAt();
    }

    CFRelease(v6);
  }

  else
  {

    APSLogErrorAt();
  }
}

void _AirPlayReceiverUI_HandleDateRangeEvent()
{
  if (AirPlayReceiverUI_GetShared_once != -1)
  {
    dispatch_once(&AirPlayReceiverUI_GetShared_once, &__block_literal_global_2889);
  }

  v0 = AirPlayReceiverUI_GetShared_ui;
  v1 = [MEMORY[0x277CBEB38] dictionary];
  [v1 setObject:@"video" forKey:@"category"];
  [v1 setObject:@"dateRange" forKey:@"type"];
  v2 = xpc_dictionary_copy_cf_object();
  if (v2)
  {
    v3 = v2;
    v4 = CFGetTypeID(v2);
    if (v4 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(v3, @"dateRangeArray");
      if (Value)
      {
        [v1 setObject:Value forKey:@"dateRangeArray"];
      }

      v6 = CFDictionaryGetValue(v3, @"uuid");
      if (v6)
      {
        [v1 setObject:v6 forKey:@"uuid"];
      }

      v7 = CFDictionaryGetValue(v3, @"sessionID");
      if (v7)
      {
        [v1 setObject:v7 forKey:@"sessionID"];
      }

      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = ___AirPlayReceiverUI_HandleDateRangeEvent_block_invoke;
      v8[3] = &unk_278C60A58;
      v8[4] = v1;
      v8[5] = v0;
      dispatch_async(MEMORY[0x277D85CD0], v8);
    }

    else
    {
      APSLogErrorAt();
    }

    CFRelease(v3);
  }

  else
  {

    APSLogErrorAt();
  }
}

void _AirPlayReceiverUI_HandleFPSSecureStopGenerated()
{
  v0 = xpc_dictionary_copy_cf_object();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFDictionaryGetTypeID())
    {
      CFRetain(v1);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ___AirPlayReceiverUI_HandleFPSSecureStopGenerated_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = v1;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    else
    {
      APSLogErrorAt();
    }

    CFRelease(v1);
  }

  else
  {

    APSLogErrorAt();
  }
}

void _AirPlayReceiverUI_HandleOtherEvent(void *a1)
{
  if (AirPlayReceiverUI_GetShared_once != -1)
  {
    dispatch_once(&AirPlayReceiverUI_GetShared_once, &__block_literal_global_2889);
  }

  v2 = AirPlayReceiverUI_GetShared_ui;
  v3 = [MEMORY[0x277CBEB38] dictionary];
  string = xpc_dictionary_get_string(a1, "eventType");
  if (string)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
    if (v5)
    {
      [v3 setObject:v5 forKey:@"type"];
    }
  }

  v6 = xpc_dictionary_copy_cf_object();
  if (v6 && (v7 = v6, v8 = CFGetTypeID(v6), v8 == CFDictionaryGetTypeID()))
  {
    Value = CFDictionaryGetValue(v7, @"sessionID");
    if (Value)
    {
      [v3 setObject:Value forKey:@"sessionID"];
    }

    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v7);
    if (MutableCopy)
    {
      v11 = MutableCopy;
      CFDictionaryRemoveValue(MutableCopy, @"sessionID");
      if (CFDictionaryGetCount(v11) >= 1)
      {
        [v3 setObject:v11 forKey:@"params"];
      }

      CFRelease(v11);
    }

    CFRelease(v7);
  }

  else
  {
    APSLogErrorAt();
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = ___AirPlayReceiverUI_HandleOtherEvent_block_invoke;
  v12[3] = &unk_278C60A58;
  v12[4] = v3;
  v12[5] = v2;
  dispatch_async(MEMORY[0x277D85CD0], v12);
}

void _AirPlayReceiverUI_NotifyObserversF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 && CFPropertyListCreateFormattedVAList())
  {
    APSLogErrorAt();
  }

  else
  {
    for (i = *(a1 + 48); i; i = *i)
    {
      (i[2])(a2, 0, i[3]);
    }
  }
}

NSObject **AirPlayReceiverUI_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v5 = a1;
  if (!a1)
  {
    APSLogErrorAt();
    v11 = -6745;
LABEL_15:
    v13 = v11;
    goto LABEL_9;
  }

  if (!*(a1 + 40))
  {
    v5 = 0;
    v13 = 0;
    goto LABEL_9;
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  if (!v7)
  {
    APSLogErrorAt();
    v5 = 0;
    v11 = -6728;
    goto LABEL_15;
  }

  v8 = v7;
  xpc_dictionary_set_string(v7, "function", "getProperty");
  xpc_dictionary_set_cf_object();
  if (a3)
  {
    xpc_dictionary_set_cf_object();
  }

  object = 0;
  v9 = _AirPlayReceiverUI_SendMessageWithReplySync(v5, v8, &object);
  v13 = v9;
  xpc_release(v8);
  if (v9)
  {
    v5 = 0;
  }

  else
  {
    v5 = xpc_dictionary_copy_cf_object();
    xpc_release(object);
    if (v13)
    {
      APSLogErrorAt();
    }
  }

LABEL_9:
  if (a4)
  {
    *a4 = v13;
  }

  return v5;
}

uint64_t AirPlayReceiverUI_SetProperty(uint64_t a1, CFStringRef theString1, uint64_t a3, const void *a4)
{
  if (a1)
  {
    if (!*(a1 + 40))
    {
      return 0;
    }

    if (CFStringCompare(theString1, @"denyInterruptions", 0) == kCFCompareEqualTo)
    {
      *(a1 + 56) = CFGetInt64() != 0;
      return 0;
    }

    if (CFStringCompare(theString1, @"rate", 0))
    {
      if (CFStringCompare(theString1, @"audioMode", 0) == kCFCompareEqualTo)
      {
        if (*(a1 + 160))
        {
          v8 = *(a1 + 168);
          if (a4)
          {
            CFRetain(a4);
          }

          *(a1 + 168) = a4;
          if (v8)
          {
            CFRelease(v8);
            a4 = *(a1 + 168);
          }

          if (a4)
          {
            if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            _AirPlayReceiverUI_NotifyObserversF(a1, "updateAudioMode", "{%kO=%O}");
          }
        }

        return 0;
      }
    }

    else
    {
      CFGetDouble();
      *&v10 = v10;
      if (*&v10 == 1.0 && *(a1 + 168))
      {
        if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        _AirPlayReceiverUI_NotifyObserversF(a1, "updateAudioMode", "{%kO=%O}");
      }
    }

    v11 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v11, "function", "setProperty");
    xpc_dictionary_set_cf_object();
    if (a3)
    {
      xpc_dictionary_set_cf_object();
    }

    if (a4)
    {
      xpc_dictionary_set_cf_object();
    }

    v12 = _AirPlayReceiverUI_SendMessageWithReplySync(a1, v11, 0);
    xpc_release(v11);
    return v12;
  }

  else
  {
    APSLogErrorAt();
    return 4294960551;
  }
}

uint64_t AirPlayReceiverUI_Perform(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (!a1)
  {
    APSLogErrorAt();
    return 4294960551;
  }

  if (!*(a1 + 40))
  {
    return 0;
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v7, "function", "perform");
  xpc_dictionary_set_cf_object();
  if (a3)
  {
    xpc_dictionary_set_cf_object();
  }

  object = 0;
  v8 = _AirPlayReceiverUI_SendMessageWithReplySync(a1, v7, &object);
  xpc_release(v7);
  if (!v8)
  {
    if (a4)
    {
      *a4 = xpc_dictionary_copy_cf_object();
    }

    xpc_release(object);
    return 0;
  }

  return v8;
}

uint64_t AirPlayReceiverUI_StartPresentation(uint64_t a1, CFDictionaryRef theDict, __CFDictionary **a3)
{
  v40 = 0;
  v38 = 0;
  v6 = 0x281309000uLL;
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 30 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v37 = 0;
  xdict = 0;
  if (!a1)
  {
    APSLogErrorAt();
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = -6745;
    goto LABEL_36;
  }

  if (!*(a1 + 40))
  {
    APSLogErrorAt();
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = -6700;
LABEL_36:
    HIDWORD(v40) = v11;
LABEL_37:
    v19 = *(v6 + 3616);
    if (v19 <= 60 && (v19 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_103;
  }

  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v8 = MutableCopy;
  if (!MutableCopy)
  {
    APSLogErrorAt();
    v9 = 0;
    v10 = 0;
    v11 = -6728;
    goto LABEL_36;
  }

  v36 = a3;
  Int64 = CFDictionaryGetInt64();
  v13 = CFDictionaryGetInt64();
  v14 = CFDictionaryGetInt64();
  Value = CFDictionaryGetValue(v8, @"presentationType");
  if (Value)
  {
    v16 = Value;
  }

  else
  {
    v16 = @"photo";
  }

  v17 = CFGetTypeID(v16);
  if (v17 != CFStringGetTypeID())
  {
    APSLogErrorAt();
    v9 = 0;
    v10 = 0;
    v11 = -6756;
    goto LABEL_36;
  }

  if (CFStringCompare(v16, @"mirror", 0))
  {
    if (CFStringCompare(v16, @"photo", 0))
    {
      if (CFStringCompare(v16, @"slideshow", 0))
      {
        if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 60 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v9 = 0;
        v10 = 0;
        v11 = -6705;
        goto LABEL_36;
      }

      v18 = 146;
    }

    else
    {
      v18 = 145;
    }
  }

  else
  {
    v18 = 144;
  }

  if (*(a1 + 128) && *(a1 + 120) != Int64)
  {
    if (*(a1 + 56))
    {
      if (gLogCategory_AirPlayReceiverUIXPCServerCore > 50 || gLogCategory_AirPlayReceiverUIXPCServerCore == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_69;
      }

      goto LABEL_68;
    }

    if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    _AirPlayReceiverUI_NotifyObserversF(a1, "stopPresentation", "{%kO=%i%kO=%O}");
    _AirPlayReceiverUI_CleanupPresentation(a1, 1, 0);
  }

  if (*(a1 + 160) && !*(a1 + 164) && (!v14 || *(a1 + 152) != Int64))
  {
    if (*(a1 + 56))
    {
      if (gLogCategory_AirPlayReceiverUIXPCServerCore > 50 || gLogCategory_AirPlayReceiverUIXPCServerCore == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_69;
      }

LABEL_68:
      LogPrintF();
LABEL_69:
      v10 = 0;
      v9 = 0;
      HIDWORD(v40) = 200453;
      goto LABEL_103;
    }

    if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    _AirPlayReceiverUI_NotifyObserversF(a1, "stopVideo", "{%kO=%i%kO=%O}");
  }

  if (v13)
  {
    v20 = *(a1 + 112);
    if (v20 && *(a1 + 104) != Int64)
    {
      if (!*(a1 + 56))
      {
        goto LABEL_70;
      }

      goto LABEL_66;
    }

    if (*(a1 + 160) && *(a1 + 152) != Int64 && *(a1 + 164))
    {
      if (!*(a1 + 56))
      {
        if (!v20)
        {
          if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v21 = "stopVideo";
LABEL_82:
          _AirPlayReceiverUI_NotifyObserversF(a1, v21, "{%kO=%i%kO=%O}");
          goto LABEL_83;
        }

LABEL_70:
        if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v21 = "stopAudio";
        goto LABEL_82;
      }

LABEL_66:
      if (gLogCategory_AirPlayReceiverUIXPCServerCore > 50 || gLogCategory_AirPlayReceiverUIXPCServerCore == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_69;
      }

      goto LABEL_68;
    }
  }

LABEL_83:
  v35 = v18;
  v22 = *(a1 + 136);
  v23 = Int64;
  if (v22)
  {
    v9 = 0;
  }

  else
  {
    v25 = *(a1 + 96);
    *(a1 + 96) = v25 + 1;
    LODWORD(v40) = v25 + 1;
    if (v25 == -1)
    {
      *(a1 + 96) = 1;
      LODWORD(v40) = 1;
    }

    CFDictionarySetNumber();
    CAContextForRemoteHosting = CreateCAContextForRemoteHosting();
    v9 = CAContextForRemoteHosting;
    if (!CAContextForRemoteHosting)
    {
      APSLogErrorAt();
      v10 = 0;
      goto LABEL_119;
    }

    [objc_msgSend(CAContextForRemoteHosting "layer")];
    [objc_msgSend(v9 "layer")];
    [MEMORY[0x277CD9FF0] flush];
    [MEMORY[0x277CD9FF0] synchronize];
    v27 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v27, "function", "startPresentation");
    xpc_dictionary_set_cf_object();
    xpc_dictionary_set_uint64(v27, "presentationContextID", [v9 contextId]);
    v28 = _AirPlayReceiverUI_SendMessageWithReplySync(a1, v27, &xdict);
    HIDWORD(v40) = v28;
    xpc_release(v27);
    if (v28)
    {
      APSLogErrorAt();
      v10 = 0;
      goto LABEL_124;
    }

    v10 = xpc_dictionary_copy_cf_object();
    if (HIDWORD(v40))
    {
      APSLogErrorAt();
      v6 = 0x281309000;
      if (!HIDWORD(v40))
      {
        goto LABEL_103;
      }

      goto LABEL_37;
    }

    string = xpc_dictionary_get_string(xdict, "presentationFrame");
    if (!string)
    {
      APSLogErrorAt();
      HIDWORD(v40) = -6712;
      goto LABEL_124;
    }

    sscanf(string, "%f,%f,%f,%f", &v38 + 4, &v38, &v37 + 4, &v37);
    v30 = *(&v38 + 1);
    v31 = *&v38;
    v32 = *(&v37 + 1);
    v33 = *&v37;
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    [objc_msgSend(v9 "layer")];
    [MEMORY[0x277CD9FF0] commit];
    *(a1 + 136) = v9;
    *(a1 + 120) = v23;
    *(a1 + 128) = v40;
    if (v10)
    {
      Mutable = CFDictionaryCreateMutableCopy(0, 0, v10);
      if (Mutable)
      {
        goto LABEL_86;
      }

      goto LABEL_96;
    }
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v10 = 0;
  if (!Mutable)
  {
LABEL_96:
    APSLogErrorAt();
LABEL_119:
    HIDWORD(v40) = -6700;
LABEL_124:
    v6 = 0x281309000;
    goto LABEL_37;
  }

LABEL_86:
  CFDictionarySetValue(Mutable, @"presentationContext", *(a1 + 136));
  CFDictionarySetNumber();
  if (v36)
  {
    *v36 = Mutable;
  }

  else
  {
    CFRelease(Mutable);
  }

  *(a1 + v35) = 1;
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  HIDWORD(v40) = 0;
LABEL_103:

  if (xdict)
  {
    xpc_release(xdict);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return HIDWORD(v40);
}

uint64_t AirPlayReceiverUI_StopPresentation(uint64_t a1, const __CFDictionary *a2)
{
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 30 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!a1)
  {
    APSLogErrorAt();
    v11 = 4294960551;
    goto LABEL_49;
  }

  if (!*(a1 + 40))
  {
    return 0;
  }

  if (a2)
  {
    CFDictionaryGetInt64();
    Int64 = CFDictionaryGetInt64();
    Value = CFDictionaryGetValue(a2, @"presentationType");
    v6 = Int64;
  }

  else
  {
    v6 = 0;
    Value = 0;
  }

  if (Value)
  {
    v7 = Value;
  }

  else
  {
    v7 = @"photo";
  }

  v8 = CFGetTypeID(v7);
  if (v8 != CFStringGetTypeID())
  {
    APSLogErrorAt();
    v11 = 4294960540;
    goto LABEL_49;
  }

  if (CFStringCompare(v7, @"mirror", 0) == kCFCompareEqualTo)
  {
    v9 = 144;
    if (v6)
    {
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (CFStringCompare(v7, @"photo", 0) == kCFCompareEqualTo)
  {
    v9 = 145;
    if (v6)
    {
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (CFStringCompare(v7, @"slideshow", 0) == kCFCompareEqualTo)
  {
    v9 = 146;
    if (v6)
    {
LABEL_25:
      if (v6 != *(a1 + 128))
      {
        if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        return 0;
      }
    }

LABEL_26:
    v10 = !*(a1 + 112) && !*(a1 + 128) && *(a1 + 160) == 0;
    *(a1 + v9) = 0;
    if (!*(a1 + 144) && !*(a1 + 145) && !*(a1 + 146))
    {
      _AirPlayReceiverUI_CleanupPresentation(a1, 1, a2);
    }

    if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (!v10 && !*(a1 + 112) && !*(a1 + 128) && !*(a1 + 160))
    {
      _AirPlayReceiverUI_ActiveSessionsStopped(a1);
    }

    return 0;
  }

  if (gLogCategory_AirPlayReceiverUIXPCServerCore > 60)
  {
    return 4294960591;
  }

  if (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize())
  {
    LogPrintF();
  }

  v11 = 4294960591;
LABEL_49:
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 60 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v11;
}

uint64_t AirPlayReceiverUI_StartAudio(uint64_t a1, CFDictionaryRef theDict, CFMutableDictionaryRef *a3)
{
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 30 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v22 = 0;
  object = 0;
  if (!a1)
  {
    APSLogErrorAt();
    v7 = 0;
    v10 = 4294960551;
    goto LABEL_90;
  }

  if (!*(a1 + 40))
  {
    v10 = 0;
    v7 = 0;
    goto LABEL_74;
  }

  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v7 = MutableCopy;
  if (!MutableCopy)
  {
    APSLogErrorAt();
    v10 = 4294960568;
    goto LABEL_90;
  }

  Int64 = CFDictionaryGetInt64();
  v9 = Int64;
  if (!*(a1 + 144) || !*(a1 + 128) || *(a1 + 120) == Int64)
  {
LABEL_25:
    if (*(a1 + 160) && *(a1 + 152) != v9 && !*(a1 + 164))
    {
      if (*(a1 + 56))
      {
        v10 = 200453;
        if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
        {
          goto LABEL_54;
        }

        goto LABEL_74;
      }

      if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      _AirPlayReceiverUI_NotifyObserversF(a1, "stopVideo", "{%kO=%i%kO=%O}");
    }

    v11 = *(a1 + 112);
    if (v11 && *(a1 + 104) != v9)
    {
      if (!*(a1 + 56))
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (!*(a1 + 160) || *(a1 + 152) == v9 || !*(a1 + 164))
      {
        goto LABEL_58;
      }

      if (!*(a1 + 56))
      {
        if (!v11)
        {
          if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v12 = "stopVideo";
LABEL_57:
          _AirPlayReceiverUI_NotifyObserversF(a1, v12, "{%kO=%i%kO=%O}");
LABEL_58:
          *(a1 + 104) = v9;
          v13 = *(a1 + 96);
          v14 = v13 + 1;
          *(a1 + 96) = v13 + 1;
          v22 = v13 + 1;
          if (v13 == -1)
          {
            *(a1 + 96) = 1;
            v22 = 1;
            v14 = 1;
          }

          *(a1 + 112) = v14;
          CFDictionarySetNumber();
          v15 = xpc_dictionary_create(0, 0, 0);
          xpc_dictionary_set_string(v15, "function", "startAudio");
          xpc_dictionary_set_cf_object();
          v10 = _AirPlayReceiverUI_SendMessageWithReplySync(a1, v15, &object);
          xpc_release(v15);
          if (!v10)
          {
            v16 = xpc_dictionary_copy_cf_object();
            if (v16)
            {
              v17 = v16;
              v18 = CFDictionaryCreateMutableCopy(0, 0, v16);
              CFRelease(v17);
              if (!v18)
              {
                goto LABEL_89;
              }
            }

            else
            {
              Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              if (!Mutable)
              {
LABEL_89:
                APSLogErrorAt();
                v10 = 4294960596;
                goto LABEL_90;
              }

              v18 = Mutable;
            }

            CFDictionarySetNumber();
            if (a3)
            {
              *a3 = v18;
            }

            else
            {
              CFRelease(v18);
            }

            if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 30 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            v10 = 0;
            goto LABEL_74;
          }

          APSLogErrorAt();
LABEL_90:
          if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 60 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
          {
            goto LABEL_54;
          }

          goto LABEL_74;
        }

LABEL_42:
        if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v12 = "stopAudio";
        goto LABEL_57;
      }
    }

    v10 = 200453;
    if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
    {
      goto LABEL_54;
    }

    goto LABEL_74;
  }

  if (!*(a1 + 56))
  {
    if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    _AirPlayReceiverUI_NotifyObserversF(a1, "stopPresentation", "{%kO=%i%kO=%O}");
    goto LABEL_25;
  }

  v10 = 200453;
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
LABEL_54:
    LogPrintF();
  }

LABEL_74:
  if (object)
  {
    xpc_release(object);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v10;
}

uint64_t AirPlayReceiverUI_StopAudio(uint64_t a1, uint64_t a2)
{
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 30 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!a1)
  {
    APSLogErrorAt();
    return 4294960551;
  }

  if (*(a1 + 40))
  {
    if (a2)
    {
      CFDictionaryGetInt64();
      Int64 = CFDictionaryGetInt64();
      if (*(a1 + 112) == Int64)
      {
        if (Int64)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }
    }

    else if (!*(a1 + 112))
    {
LABEL_15:
      if (!*(a1 + 128))
      {
        v5 = *(a1 + 160) == 0;
        goto LABEL_20;
      }

LABEL_16:
      v5 = 0;
LABEL_20:
      v6 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_string(v6, "function", "stopAudio");
      if (a2)
      {
        xpc_dictionary_set_cf_object();
      }

      v7 = _AirPlayReceiverUI_SendMessageWithReplySync(a1, v6, 0);
      xpc_release(v6);
      if (v7)
      {
        APSLogErrorAt();
        return v7;
      }

      if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 30 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      if (!v5 && !*(a1 + 128) && !*(a1 + 160))
      {
        _AirPlayReceiverUI_ActiveSessionsStopped(a1);
      }

      return 0;
    }

    if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  return 0;
}

uint64_t AirPlayReceiverUI_UpdateAudioMetaData(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 40))
    {
      v2 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_string(v2, "function", "updateAudioMetaData");
      xpc_dictionary_set_cf_object();
      v3 = _AirPlayReceiverUI_SendMessageWithReplySync(a1, v2, 0);
      xpc_release(v2);
      if (v3)
      {
        APSLogErrorAt();
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960551;
  }

  return v3;
}

uint64_t AirPlayReceiverUI_UpdateAudioProgress(uint64_t a1, double a2, double a3)
{
  if (a1)
  {
    if (*(a1 + 40))
    {
      v6 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_string(v6, "function", "updateAudioProgress");
      xpc_dictionary_set_double(v6, "position", a2);
      xpc_dictionary_set_double(v6, "duration", a3);
      v7 = _AirPlayReceiverUI_SendMessageWithReplySync(a1, v6, 0);
      xpc_release(v6);
      if (v7)
      {
        APSLogErrorAt();
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960551;
  }

  return v7;
}

uint64_t AirPlayReceiverUI_StartVideo(uint64_t a1, uint64_t a2, uint64_t a3, CFDictionaryRef theDict, CFMutableDictionaryRef *a5)
{
  v34 = 0;
  object = 0;
  if (!a1)
  {
    APSLogErrorAt();
    v10 = 0;
    v15 = 4294960551;
    goto LABEL_119;
  }

  if (!*(a1 + 40))
  {
    v10 = 0;
    goto LABEL_97;
  }

  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v10 = MutableCopy;
  if (!MutableCopy)
  {
    APSLogErrorAt();
    v15 = 4294960568;
    goto LABEL_119;
  }

  v31 = a3;
  Int64 = CFDictionaryGetInt64();
  CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  CFStringGetTypeID();
  v13 = CFDictionaryGetTypedValue();
  v32 = a5;
  if (CFDictionaryGetInt64() || v13 == @"music")
  {
    v14 = 1;
  }

  else if (v13)
  {
    v14 = CFEqual(v13, @"music") != 0;
  }

  else
  {
    v14 = 0;
  }

  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 30 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!TypedValue || !CFEqual(@"default", TypedValue) && !CFEqual(@"moviePlayback", TypedValue))
  {
    if (!v14 && (!v13 || v13 == @"movie" || CFEqual(v13, @"movie") || v13 == @"tvshow" || CFEqual(v13, @"tvshow")))
    {
      TypedValue = @"moviePlayback";
    }

    else
    {
      TypedValue = @"default";
    }
  }

  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 30 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!*(a1 + 128) || *(a1 + 120) == Int64 || v14)
  {
LABEL_46:
    if (*(a1 + 160) && !*(a1 + 164))
    {
      if (*(a1 + 56))
      {
        v15 = 200453;
        if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
        {
          goto LABEL_65;
        }

        goto LABEL_105;
      }

      if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      _AirPlayReceiverUI_NotifyObserversF(a1, "stopVideo", "{%kO=%i%kO=%O}");
    }

    v16 = *(a1 + 112);
    if (v16 && *(a1 + 104) != Int64)
    {
      v17 = gLogCategory_AirPlayReceiverUIXPCServerCore;
      if (!*(a1 + 56))
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (!*(a1 + 160) || *(a1 + 152) == Int64 || !*(a1 + 164))
      {
        goto LABEL_79;
      }

      v17 = gLogCategory_AirPlayReceiverUIXPCServerCore;
      if (!*(a1 + 56))
      {
        if (!v16)
        {
          if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v18 = "stopVideo";
LABEL_78:
          _AirPlayReceiverUI_NotifyObserversF(a1, v18, "{%kO=%i%kO=%O}");
LABEL_79:
          *(a1 + 184) = a2;
          *(a1 + 192) = v31;
          *(a1 + 152) = Int64;
          v19 = *(a1 + 96);
          v20 = v19 + 1;
          *(a1 + 96) = v19 + 1;
          v34 = v19 + 1;
          if (v19 == -1)
          {
            *(a1 + 96) = 1;
            v34 = 1;
            v20 = 1;
          }

          *(a1 + 160) = v20;
          *(a1 + 164) = v14;
          v21 = *(a1 + 168);
          CFRetain(TypedValue);
          *(a1 + 168) = TypedValue;
          if (v21)
          {
            CFRelease(v21);
          }

          CFDictionarySetNumber();
          _AirPlayReceiverUI_NotifyObserversF(a1, "startingVideo", "{%kO=%O}");
          v22 = xpc_dictionary_create(0, 0, 0);
          xpc_dictionary_set_string(v22, "function", "startVideo");
          xpc_dictionary_set_cf_object();
          v15 = _AirPlayReceiverUI_SendMessageWithReplySync(a1, v22, &object);
          xpc_release(v22);
          if (!v15)
          {
            v23 = xpc_dictionary_copy_cf_object();
            if (v23)
            {
              v24 = v23;
              v25 = CFDictionaryCreateMutableCopy(0, 0, v23);
              CFRelease(v24);
              if (!v25)
              {
                goto LABEL_118;
              }
            }

            else
            {
              Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              if (!Mutable)
              {
LABEL_118:
                APSLogErrorAt();
                v15 = 4294960596;
                goto LABEL_119;
              }

              v25 = Mutable;
            }

            CFDictionarySetNumber();
            if (v32)
            {
              *v32 = v25;
            }

            else
            {
              CFRelease(v25);
            }

            if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            v27 = CFDictionaryGetInt64();
            v28 = v27 != 0;
            if (*(a1 + 176) != v28)
            {
              v29 = *(a1 + 48);
              if (v27)
              {
                for (; v29; v29 = *v29)
                {
                  (v29[2])("startPlayingOverP2P", 0, v29[3]);
                }
              }

              else
              {
                for (; v29; v29 = *v29)
                {
                  (v29[2])("stopPlayingOverP2P", 0, v29[3]);
                }
              }

              v15 = 0;
              *(a1 + 176) = v28;
              goto LABEL_105;
            }

LABEL_97:
            v15 = 0;
            goto LABEL_105;
          }

          APSLogErrorAt();
LABEL_119:
          if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 60 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
          {
            goto LABEL_65;
          }

          goto LABEL_105;
        }

LABEL_66:
        if (v17 <= 50 && (v17 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v18 = "stopAudio";
        goto LABEL_78;
      }
    }

    v15 = 200453;
    if (v17 <= 50 && (v17 != -1 || _LogCategory_Initialize()))
    {
      goto LABEL_65;
    }

    goto LABEL_105;
  }

  if (!*(a1 + 56))
  {
    if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    _AirPlayReceiverUI_NotifyObserversF(a1, "stopPresentation", "{%kO=%i%kO=%O}");
    goto LABEL_46;
  }

  v15 = 200453;
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
LABEL_65:
    LogPrintF();
  }

LABEL_105:
  if (object)
  {
    xpc_release(object);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v15;
}

uint64_t AirPlayReceiverUI_StopVideo(uint64_t a1, const __CFDictionary *a2)
{
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 30 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!a1)
  {
    APSLogErrorAt();
    return 4294960551;
  }

  if (!*(a1 + 40))
  {
    return 0;
  }

  if (a2)
  {
    CFDictionaryGetInt64();
    Int64 = CFDictionaryGetInt64();
  }

  else
  {
    Int64 = 0;
  }

  if (Int64 != *(a1 + 160))
  {
    if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return 0;
  }

  for (i = *(a1 + 48); i; i = *i)
  {
    (i[2])("stoppingVideo", 0, i[3]);
  }

  v6 = !*(a1 + 112) && !*(a1 + 128) && *(a1 + 160) == 0;
  if (*(a1 + 144))
  {
    if (a2)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a2);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    a2 = MutableCopy;
    if (!MutableCopy)
    {
      APSLogErrorAt();
      return 4294960568;
    }

    CFDictionarySetValue(MutableCopy, @"closeAll", *MEMORY[0x277CBED28]);
    v8 = a2;
  }

  else
  {
    v8 = 0;
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v9, "function", "stopVideo");
  if (a2)
  {
    xpc_dictionary_set_cf_object();
  }

  v10 = _AirPlayReceiverUI_SendMessageWithReplySync(a1, v9, 0);
  xpc_release(v9);
  if (v10)
  {
    APSLogErrorAt();
    if (!v8)
    {
      return v10;
    }

    goto LABEL_44;
  }

  if (*(a1 + 176))
  {
    for (j = *(a1 + 48); j; j = *j)
    {
      (j[2])("stopPlayingOverP2P", 0, j[3]);
    }

    *(a1 + 176) = 0;
  }

  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 164) = 0;
  if (!v6 && !*(a1 + 112) && !*(a1 + 128))
  {
    _AirPlayReceiverUI_ActiveSessionsStopped(a1);
  }

  if (v8)
  {
LABEL_44:
    CFRelease(v8);
  }

  return v10;
}

uint64_t AirPlayReceiverUI_EnsurePINVisible(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 40))
  {
    return 0;
  }

  if (!*(a1 + 56))
  {
    goto LABEL_13;
  }

  if (*(a1 + 112))
  {
    if (*(a1 + 104) != a3)
    {
      goto LABEL_24;
    }

    if (!*(a1 + 128))
    {
      goto LABEL_11;
    }

LABEL_8:
    if (*(a1 + 120) != a3)
    {
      goto LABEL_24;
    }

    goto LABEL_11;
  }

  if (*(a1 + 128))
  {
    goto LABEL_8;
  }

  if (!*(a1 + 160))
  {
    goto LABEL_13;
  }

LABEL_11:
  if (!*(a1 + 160) || *(a1 + 152) == a3)
  {
LABEL_13:
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v5 = Mutable;
      CFDictionarySetCString();
      CFDictionarySetCString();
      v6 = mach_absolute_time();
      v7 = *(a1 + 88);
      v8 = SecondsToUpTicks();
      v9 = *(a1 + 72);
      CFRetain(v5);
      *(a1 + 72) = v5;
      if (v9)
      {
        CFRelease(v9);
      }

      v10 = *(a1 + 64);
      if (v10)
      {
        dispatch_source_cancel(*(a1 + 64));
        dispatch_release(v10);
        *(a1 + 64) = 0;
      }

      v11 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
      *(a1 + 64) = v11;
      if (v11)
      {
        v12 = v6 - v7;
        dispatch_set_context(v11, a1);
        dispatch_source_set_event_handler_f(*(a1 + 64), _ShowPINTimerFired);
        v13 = *(a1 + 64);
        if (v12 >= v8)
        {
          v14 = 1000000000;
        }

        else
        {
          v14 = 3000000000;
        }

        v15 = dispatch_time(0, v14);
        dispatch_source_set_timer(v13, v15, 0x7FFFFFFFFFFFFFFFuLL, 0x3B9ACA00uLL);
        dispatch_resume(*(a1 + 64));
        v16 = 0;
      }

      else
      {
        APSLogErrorAt();
        v16 = 4294960596;
      }

      CFRelease(v5);
    }

    else
    {
      APSLogErrorAt();
      return 4294960568;
    }

    return v16;
  }

LABEL_24:
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return 4294960575;
}

void _ShowPINTimerFired(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    dispatch_source_cancel(*(a1 + 64));
    dispatch_release(v2);
    *(a1 + 64) = 0;
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    if (!AirPlayReceiverUI_Perform(a1, @"showPIN", v3, 0))
    {
      *(a1 + 80) = 1;
      *(a1 + 88) = mach_absolute_time();
    }

    CFRelease(*(a1 + 72));
    *(a1 + 72) = 0;
  }
}

uint64_t AirPlayReceiverUI_EnsurePINHidden(uint64_t a1)
{
  if (!*(a1 + 40))
  {
    return 0;
  }

  v2 = *(a1 + 64);
  if (v2)
  {
    dispatch_source_cancel(*(a1 + 64));
    dispatch_release(v2);
    *(a1 + 64) = 0;
  }

  if (!*(a1 + 80))
  {
    return 0;
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = mach_absolute_time();

  return AirPlayReceiverUI_Perform(a1, @"hidePIN", 0, 0);
}

uint64_t AirPlayReceiverUI_UpdateStatus(uint64_t a1, unsigned __int8 a2)
{
  if (!*(a1 + 40))
  {
    return 0;
  }

  if (a2 < gLogCategory_AirPlayReceiverUIVisualStatus || gLogCategory_AirPlayReceiverUIVisualStatus == -1 && !_LogCategory_Initialize())
  {
    return 0;
  }

  VASPrintF();
  APSLogErrorAt();
  return 4294960596;
}

uint64_t APReceiverUIControllerGetShared()
{
  if (APReceiverUIControllerGetShared_once[0] != -1)
  {
    dispatch_once(APReceiverUIControllerGetShared_once, &__block_literal_global_3265);
  }

  return APReceiverUIControllerGetShared_ui;
}

void __APReceiverUIControllerGetShared_block_invoke()
{
  if (AirPlayReceiverUI_GetShared_once != -1)
  {
    dispatch_once(&AirPlayReceiverUI_GetShared_once, &__block_literal_global_2889);
  }

  v0 = AirPlayReceiverUI_GetShared_ui;
  if (!AirPlayReceiverUI_GetShared_ui)
  {
    if (gLogCategory_AirPlayReceiverUIXPCServerCore > 50 || gLogCategory_AirPlayReceiverUIXPCServerCore == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_14;
    }

LABEL_12:
    LogPrintF();
    goto LABEL_14;
  }

  if (APReceiverUIControllerGetClassID_once != -1)
  {
    dispatch_once(&APReceiverUIControllerGetClassID_once, &__block_literal_global_3701);
  }

  if (CMDerivedObjectCreate())
  {
    APSLogErrorAt();
    goto LABEL_14;
  }

  *CMBaseObjectGetDerivedStorage() = v0;
  v1 = malloc_type_calloc(1uLL, 0x20uLL, 0xB004060A01B80uLL);
  if (v1)
  {
    v2 = v1;
    v3 = strdup("APReceiverUIControllerShared");
    v2[1] = v3;
    if (v3)
    {
      v2[2] = sharedUI_HandleUIEvent;
      v2[3] = 0;
      *v2 = *(v0 + 48);
      *(v0 + 48) = v2;
    }

    else
    {
      APSLogErrorAt();
      free(v2);
    }
  }

  else
  {
    APSLogErrorAt();
  }

  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_12;
  }

LABEL_14:
  APReceiverUIControllerGetShared_ui = 0;
}

uint64_t sharedUI_HandleUIEvent(char *cStr)
{
  v1 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (v1)
  {
    CFRelease(v1);
  }

  return 0;
}

uint64_t sharedUI_SetPropertyWithQualifier(uint64_t a1, const __CFString *a2, uint64_t a3, const void *a4)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (pthread_main_np())
  {
    v8 = AirPlayReceiverUI_SetProperty(*DerivedStorage, a2, a3, a4);
    *(v12 + 6) = v8;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __sharedUI_SetPropertyWithQualifier_block_invoke;
    block[3] = &unk_278C602E0;
    block[4] = &v11;
    block[5] = DerivedStorage;
    block[6] = a2;
    block[7] = a3;
    block[8] = a4;
    dispatch_sync(MEMORY[0x277D85CD0], block);
    v8 = *(v12 + 6);
  }

  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t sharedUI_CopyPropertyForQualifier(uint64_t a1, uint64_t a2, uint64_t a3, NSObject ***a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  if (pthread_main_np())
  {
    *a4 = AirPlayReceiverUI_CopyProperty(*DerivedStorage, a2, a3, v12 + 6);
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __sharedUI_CopyPropertyForQualifier_block_invoke;
    block[3] = &unk_278C602B8;
    block[6] = DerivedStorage;
    block[7] = a2;
    block[8] = a3;
    block[4] = &v11;
    block[5] = a4;
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }

  v8 = v12[6];
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t sharedUI_ControlVideoPlaybackV1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (pthread_main_np())
  {
    v8 = AirPlayReceiverUI_Perform(*DerivedStorage, a2, a3, a4);
    *(v12 + 6) = v8;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __sharedUI_ControlVideoPlaybackV1_block_invoke;
    block[3] = &unk_278C60290;
    block[4] = &v11;
    block[5] = DerivedStorage;
    block[6] = a2;
    block[7] = a3;
    block[8] = a4;
    dispatch_sync(MEMORY[0x277D85CD0], block);
    v8 = *(v12 + 6);
  }

  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t sharedUI_StopVideoPlaybackV1(uint64_t a1, const __CFDictionary *a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (pthread_main_np())
  {
    v4 = AirPlayReceiverUI_StopVideo(*DerivedStorage, a2);
    *(v8 + 6) = v4;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __sharedUI_StopVideoPlaybackV1_block_invoke;
    block[3] = &unk_278C60268;
    block[4] = &v7;
    block[5] = DerivedStorage;
    block[6] = a2;
    dispatch_sync(MEMORY[0x277D85CD0], block);
    v4 = *(v8 + 6);
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t sharedUI_StartVideoPlaybackV1(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, CFMutableDictionaryRef *a5)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (pthread_main_np())
  {
    started = AirPlayReceiverUI_StartVideo(*DerivedStorage, a2, a3, a4, a5);
    *(v14 + 6) = started;
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 0x40000000;
    v12[2] = __sharedUI_StartVideoPlaybackV1_block_invoke;
    v12[3] = &unk_278C60240;
    v12[4] = &v13;
    v12[5] = DerivedStorage;
    v12[6] = a2;
    v12[7] = a3;
    v12[8] = a4;
    v12[9] = a5;
    dispatch_sync(MEMORY[0x277D85CD0], v12);
    started = *(v14 + 6);
  }

  _Block_object_dispose(&v13, 8);
  return started;
}

uint64_t sharedUI_StopSession(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    if (pthread_main_np())
    {
      v5 = AirPlayReceiverUI_StopAudio(*v4, a2);
      *(v10 + 6) = v5;
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __sharedUI_StopSession_block_invoke;
      block[3] = &unk_278C60218;
      block[4] = &v9;
      block[5] = v4;
      block[6] = a2;
      dispatch_sync(MEMORY[0x277D85CD0], block);
    }
  }

  v6 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t sharedUI_StartSession(uint64_t a1, const __CFDictionary *a2, CFMutableDictionaryRef *a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v6 = DerivedStorage;
    if (pthread_main_np())
    {
      started = AirPlayReceiverUI_StartAudio(*v6, a2, a3);
      *(v12 + 6) = started;
    }

    else
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 0x40000000;
      v10[2] = __sharedUI_StartSession_block_invoke;
      v10[3] = &unk_278C601F0;
      v10[4] = &v11;
      v10[5] = v6;
      v10[6] = a2;
      v10[7] = a3;
      dispatch_sync(MEMORY[0x277D85CD0], v10);
    }
  }

  v8 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t sharedUI_StopScreenPresentation(uint64_t a1, const __CFDictionary *a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *MEMORY[0x277CBECE8];
  if (a2)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v4, 0, a2);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v6 = MutableCopy;
  CFDictionarySetValue(MutableCopy, @"presentationType", @"mirror");
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 30 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!pthread_main_np())
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __sharedUI_StopScreenPresentation_block_invoke;
    block[3] = &unk_278C601C8;
    block[4] = &v11;
    block[5] = DerivedStorage;
    block[6] = v6;
    dispatch_sync(MEMORY[0x277D85CD0], block);
    if (!v6)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v7 = AirPlayReceiverUI_StopPresentation(*DerivedStorage, v6);
  *(v12 + 6) = v7;
  if (v6)
  {
LABEL_10:
    CFRelease(v6);
  }

LABEL_11:
  v8 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t sharedUI_StartScreenPresentation(uint64_t a1, const __CFDictionary *a2, __CFDictionary **a3)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *MEMORY[0x277CBECE8];
  if (a2)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v6, 0, a2);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v8 = MutableCopy;
  v9 = *MEMORY[0x277CBED28];
  CFDictionarySetValue(MutableCopy, @"hasAudio", *MEMORY[0x277CBED28]);
  CFDictionarySetValue(v8, @"presentationType", @"mirror");
  CFDictionarySetValue(v8, @"hijackAware", v9);
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 30 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!pthread_main_np())
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __sharedUI_StartScreenPresentation_block_invoke;
    block[3] = &unk_278C601A0;
    block[4] = &v14;
    block[5] = DerivedStorage;
    block[6] = v8;
    block[7] = a3;
    dispatch_sync(MEMORY[0x277D85CD0], block);
    if (!v8)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  started = AirPlayReceiverUI_StartPresentation(*DerivedStorage, v8, a3);
  *(v15 + 6) = started;
  if (v8)
  {
LABEL_10:
    CFRelease(v8);
  }

LABEL_11:
  v11 = *(v15 + 6);
  _Block_object_dispose(&v14, 8);
  return v11;
}

uint64_t sharedUI_ShowMessage(uint64_t a1, int a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= a2 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (pthread_main_np())
  {
    updated = AirPlayReceiverUI_UpdateStatus(*DerivedStorage, a2);
    *(v11 + 6) = updated;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __sharedUI_ShowMessage_block_invoke;
    block[3] = &unk_278C60178;
    block[4] = &v10;
    block[5] = DerivedStorage;
    v9 = a2;
    block[6] = a3;
    dispatch_sync(MEMORY[0x277D85CD0], block);
    updated = *(v11 + 6);
  }

  _Block_object_dispose(&v10, 8);
  return updated;
}

uint64_t sharedUI_HidePIN()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 30 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (pthread_main_np())
  {
    v1 = AirPlayReceiverUI_EnsurePINHidden(*DerivedStorage);
    *(v5 + 6) = v1;
  }

  else
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 0x40000000;
    v3[2] = __sharedUI_HidePIN_block_invoke;
    v3[3] = &unk_278C60150;
    v3[4] = &v4;
    v3[5] = DerivedStorage;
    dispatch_sync(MEMORY[0x277D85CD0], v3);
    v1 = *(v5 + 6);
  }

  _Block_object_dispose(&v4, 8);
  return v1;
}

uint64_t sharedUI_ShowPIN(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 30 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (pthread_main_np())
  {
    v8 = AirPlayReceiverUI_EnsurePINVisible(*DerivedStorage, a2, a3);
    *(v12 + 6) = v8;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __sharedUI_ShowPIN_block_invoke;
    block[3] = &unk_278C60128;
    block[4] = &v11;
    block[5] = DerivedStorage;
    block[6] = a2;
    block[7] = a3;
    block[8] = a4;
    dispatch_sync(MEMORY[0x277D85CD0], block);
    v8 = *(v12 + 6);
  }

  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t sharedUI_SetProperty(uint64_t a1, const __CFString *a2, const void *a3)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 30 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!CFEqual(a2, @"ClientName") && !CFEqual(a2, @"IsWiredLink") && !CFEqual(a2, @"IsP2PWiFi") && !CFEqual(a2, @"SessionReceiverAddress"))
  {
    if (CFEqual(a2, @"AudioMetadata"))
    {
      if (pthread_main_np())
      {
        updated = AirPlayReceiverUI_UpdateAudioMetaData(*DerivedStorage);
LABEL_23:
        *(v19 + 6) = updated;
        goto LABEL_13;
      }

      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 0x40000000;
      v17[2] = __sharedUI_SetProperty_block_invoke;
      v17[3] = &unk_278C600B0;
      v17[4] = &v18;
      v17[5] = DerivedStorage;
      v17[6] = a3;
      v13 = MEMORY[0x277D85CD0];
      v14 = v17;
    }

    else if (CFEqual(a2, @"AudioProgress"))
    {
      CFDictionaryGetDouble();
      v10 = v9;
      CFDictionaryGetDouble();
      v12 = v11;
      if (pthread_main_np())
      {
        updated = AirPlayReceiverUI_UpdateAudioProgress(*DerivedStorage, v10, v12);
        goto LABEL_23;
      }

      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 0x40000000;
      v16[2] = __sharedUI_SetProperty_block_invoke_2;
      v16[3] = &unk_278C600D8;
      v16[4] = &v18;
      v16[5] = DerivedStorage;
      *&v16[6] = v10;
      *&v16[7] = v12;
      v13 = MEMORY[0x277D85CD0];
      v14 = v16;
    }

    else
    {
      if (pthread_main_np())
      {
        updated = AirPlayReceiverUI_SetProperty(*DerivedStorage, a2, 0, a3);
        goto LABEL_23;
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __sharedUI_SetProperty_block_invoke_3;
      block[3] = &unk_278C60100;
      block[4] = &v18;
      block[5] = DerivedStorage;
      block[6] = a2;
      block[7] = a3;
      v13 = MEMORY[0x277D85CD0];
      v14 = block;
    }

    dispatch_sync(v13, v14);
    goto LABEL_13;
  }

  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 30 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_13:
  v6 = *(v19 + 6);
  _Block_object_dispose(&v18, 8);
  return v6;
}

uint64_t sharedUI_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 30 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (CFEqual(a2, @"SBufConsumer"))
  {
    *(v14 + 6) = -12784;
  }

  else
  {
    if (CFEqual(a2, @"HasActiveSession"))
    {
      v7 = *DerivedStorage;
      if (*(*DerivedStorage + 112))
      {
        v8 = MEMORY[0x277CBED28];
      }

      else
      {
        v8 = MEMORY[0x277CBED28];
        if (!*(v7 + 128) && !*(v7 + 160))
        {
          v8 = MEMORY[0x277CBED10];
        }
      }

      v9 = CFRetain(*v8);
    }

    else
    {
      if (!pthread_main_np())
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = __sharedUI_CopyProperty_block_invoke;
        block[3] = &unk_278C60088;
        block[6] = DerivedStorage;
        block[7] = a2;
        block[4] = &v13;
        block[5] = a4;
        dispatch_sync(MEMORY[0x277D85CD0], block);
        goto LABEL_17;
      }

      v9 = AirPlayReceiverUI_CopyProperty(*DerivedStorage, a2, 0, v14 + 6);
    }

    *a4 = v9;
  }

LABEL_17:
  v10 = *(v14 + 6);
  _Block_object_dispose(&v13, 8);
  return v10;
}

void sharedUI_Finalize()
{
  if (gLogCategory_AirPlayReceiverUIXPCServerCore > 100 || gLogCategory_AirPlayReceiverUIXPCServerCore == -1 && !_LogCategory_Initialize())
  {
    __break(1u);
  }

  LogPrintF();
  __break(1u);
}

void rcsSenderUIEventsChannel_handleMediaDataControlFailure(uint64_t a1, int a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel <= 90 && (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFRetain(a3);
  v6 = *(DerivedStorage + 64);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __rcsSenderUIEventsChannel_handleMediaDataControlFailure_block_invoke;
  block[3] = &__block_descriptor_tmp_29_3311;
  block[4] = a3;
  v8 = a2;
  dispatch_async(v6, block);
}

void __rcsSenderUIEventsChannel_handleMediaDataControlFailure_block_invoke(uint64_t a1)
{
  rcsSenderUIEventsChannel_callDelegateHandleFailed(*(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void rcsSenderUIEventsChannel_callDelegateHandleFailed(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 40))
  {
    return;
  }

  v5 = DerivedStorage;
  if (*(DerivedStorage + 48))
  {
    v6 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (!v6)
    {
      if (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel <= 90 && (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      return;
    }
  }

  else
  {
    v6 = 0;
  }

  if (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel <= 50 && (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  (*(v5 + 40))(v6, a1, a2);
  if (v6)
  {

    CFRelease(v6);
  }
}

uint64_t rcsSenderUIEventsChannel_handleMediaDataControlRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel <= 30 && (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v11 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v11)
  {
    v12 = v11(a6, a5);
    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v12 = -12782;
  }

  if (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel <= 90 && (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_13:

  return APMediaDataControlServerSendResponse(a1, a2, a4, 0, v12);
}

uint64_t rcsSenderUIEventsChannel_SendOutgoingMessage(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 88))
  {
    APSLogErrorAt();
    v9 = 4294960587;
    goto LABEL_4;
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v5 = CMBaseObjectGetDerivedStorage();
  if (!*(v5 + 88))
  {
    APSLogErrorAt();
    v9 = 4294960587;
    *(v13 + 6) = -6709;
    _Block_object_dispose(&v12, 8);
    goto LABEL_7;
  }

  v6 = v5;
  v7 = *(v5 + 104) + 1;
  *(v5 + 104) = v7;
  CFRetain(a1);
  CFRetain(a2);
  v8 = *(v6 + 64);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __rcsSenderUIEventsChannel_sendOutgoingMessageInternal_block_invoke;
  block[3] = &unk_278C60328;
  block[6] = v6;
  block[7] = v7;
  block[8] = a2;
  block[4] = &v12;
  block[5] = a1;
  dispatch_async(v8, block);
  v9 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  if (v9)
  {
LABEL_7:
    APSLogErrorAt();
  }

LABEL_4:
  FigSimpleMutexUnlock();
  return v9;
}

void __rcsSenderUIEventsChannel_sendOutgoingMessageInternal_block_invoke(void *a1)
{
  if (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel <= 40 && (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v2 = *(a1[6] + 72);
  v3 = a1[8];
  v4 = dispatch_time(0, 3000000000);
  *(*(a1[4] + 8) + 24) = APMediaDataControlServerSendRequestSync(v2, v3, v4);
  if (*(*(a1[4] + 8) + 24))
  {
    APSLogErrorAt();
    v6 = a1[4];
    if (*(*(v6 + 8) + 24))
    {
      if (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel <= 90)
      {
        if (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel != -1 || (v7 = _LogCategory_Initialize(), v6 = a1[4], v7))
        {
          LogPrintF();
          v6 = a1[4];
        }
      }

      rcsSenderUIEventsChannel_callDelegateHandleFailed(a1[5], *(*(v6 + 8) + 24));
    }
  }

  CFRelease(a1[5]);
  v5 = a1[8];

  CFRelease(v5);
}

uint64_t rcsSenderUIEventsChannel_HandleIncomingMessage(uint64_t a1, const __CFDictionary *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 88))
  {
    APSLogErrorAt();
    v8 = 4294960587;
    goto LABEL_10;
  }

  if (!a2)
  {
    APSLogErrorAt();
LABEL_22:
    v8 = 4294960591;
    goto LABEL_10;
  }

  ++*(DerivedStorage + 96);
  Value = CFDictionaryGetValue(a2, @"params");
  if (!Value)
  {
    if (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel > 90 || gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_22;
    }

LABEL_18:
    LogPrintF();
    goto LABEL_22;
  }

  v5 = CFDictionaryGetValue(Value, @"data");
  if (!v5)
  {
    if (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel > 90 || gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v6 = v5;
  if (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel <= 30 && (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel != -1 || _LogCategory_Initialize()))
  {
    CFDataGetLength(v6);
    LogPrintF();
  }

  CFRetain(v6);
  v7 = *(DerivedStorage + 56);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __rcsSenderUIEventsChannel_HandleIncomingMessage_block_invoke;
  block[3] = &__block_descriptor_tmp_3329;
  block[4] = DerivedStorage;
  block[5] = v6;
  dispatch_async(v7, block);
  v8 = 0;
LABEL_10:
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t rcsSenderUIEventsChannel_Start()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 89) || *(DerivedStorage + 88))
  {
    APSLogErrorAt();
    v2 = 4294960587;
LABEL_9:
    FigSimpleMutexUnlock();
    rcsSenderUIEventsChannel_stop();
    return v2;
  }

  v1 = *(DerivedStorage + 72);
  if (v1)
  {
    v4 = *(DerivedStorage + 72);
    v5 = 0;
    dispatch_sync_f(*(v1 + 112), &v4, controlServer_startInternal);
    v2 = v5;
    if (v5)
    {
      APSLogErrorAt();
      goto LABEL_9;
    }
  }

  *(DerivedStorage + 88) = 1;
  FigSimpleMutexUnlock();
  return 0;
}

void rcsSenderUIEventsChannel_stop()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 72);
  if (v1)
  {
    v2[0] = *(DerivedStorage + 72);
    v2[1] = 0;
    dispatch_sync_f(*(v1 + 112), v2, controlServer_stopInternal);
  }
}

uint64_t CMBaseObjectNotificationBarrier_3336(uint64_t a1)
{
  v2 = *(CMBaseObjectGetVTable() + 8);
  if (*v2 < 2uLL)
  {
    return 4294954514;
  }

  v3 = v2[8];
  if (!v3)
  {
    return 4294954514;
  }

  return v3(a1);
}

uint64_t rcsSenderUIEventsChannel_SetProperty(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 0;
  }

  APSLogErrorAt();
  return 4294960591;
}

uint64_t rcsSenderUIEventsChannel_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!a2 || !a4)
  {
    APSLogErrorAt();
    v8 = 4294960591;
    goto LABEL_7;
  }

  if (CFEqual(a2, @"RRCS::Property::SessionID"))
  {
    SInt32 = CFRetain(*(DerivedStorage + 16));
  }

  else
  {
    if (!CFEqual(a2, @"RRCS::Property::ListenPort"))
    {
      v8 = 4294960569;
      goto LABEL_7;
    }

    if (!*(DerivedStorage + 72))
    {
      SInt32 = 0;
      v8 = 4294960561;
      goto LABEL_6;
    }

    SInt32 = FigCFNumberCreateSInt32();
    if (!SInt32)
    {
      APSLogErrorAt();
      v8 = 4294960568;
      goto LABEL_7;
    }
  }

  v8 = 0;
LABEL_6:
  *a4 = SInt32;
LABEL_7:
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t rcsSenderUIEventsChannel_Finalize()
{
  result = CMBaseObjectGetDerivedStorage();
  v1 = result;
  if (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel <= 50)
  {
    if (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  if (*(v1 + 89))
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      CFRelease(v2);
      *(v1 + 16) = 0;
    }

    v3 = *(v1 + 48);
    if (v3)
    {
      CFRelease(v3);
      *(v1 + 48) = 0;
    }

    v4 = *(v1 + 72);
    if (v4)
    {
      CFRelease(v4);
      *(v1 + 72) = 0;
    }

    v5 = *(v1 + 80);
    if (v5)
    {
      CFRelease(v5);
      *(v1 + 80) = 0;
    }

    v6 = *(v1 + 56);
    if (v6)
    {
      dispatch_release(v6);
      *(v1 + 56) = 0;
    }

    v7 = *(v1 + 64);
    if (v7)
    {
      dispatch_release(v7);
      *(v1 + 64) = 0;
    }

    result = FigSimpleMutexDestroy();
    *(v1 + 112) = 0;
  }

  else
  {
    if (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel <= 100)
    {
      if (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = LogPrintF();
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t rcsSenderUIEventsChannel_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 89))
  {
    APSLogErrorAt();
    goto LABEL_9;
  }

  if (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel <= 50 && (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!*(DerivedStorage + 88))
  {
    *(DerivedStorage + 89) = 1;
LABEL_9:
    FigSimpleMutexUnlock();
    return 0;
  }

  *(DerivedStorage + 88) = 256;
  FigSimpleMutexUnlock();
  rcsSenderUIEventsChannel_stop();
  return 0;
}

uint64_t APReceiverScreenSinkCreateAirPlay(uint64_t a1, void *a2)
{
  if (APReceiverScreenSinkCreateAirPlay_initOnce == -1)
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_17:
    APSLogErrorAt();
    return 4294895165;
  }

  dispatch_once(&APReceiverScreenSinkCreateAirPlay_initOnce, &__block_literal_global_3348);
  if (!a2)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (gLogCategory_APReceiverScreenSinkAirPlay <= 30 && (gLogCategory_APReceiverScreenSinkAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (APReceiverScreenSinkGetClassID_once != -1)
  {
    dispatch_once(&APReceiverScreenSinkGetClassID_once, &__block_literal_global_5885);
  }

  v3 = CMDerivedObjectCreate();
  if (v3)
  {
    v5 = v3;
    APSLogErrorAt();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 179) = FigSupportsIOSurfaceTimingInfo();
    if (gLogCategory_APReceiverScreenSinkAirPlay <= 30 && (gLogCategory_APReceiverScreenSinkAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v5 = 0;
    *a2 = 0;
  }

  return v5;
}

uint64_t apsink_updateStats(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverScreenSinkAirPlay <= 30 && (gLogCategory_APReceiverScreenSinkAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*(DerivedStorage + 176))
  {
    if (atomic_fetch_add_explicit(sServerDisconnectCount, 0, memory_order_relaxed) == *(DerivedStorage + 168))
    {
      v4 = *DerivedStorage;
      if (*DerivedStorage)
      {
        v5 = v4[2];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __APReceiverStatsCollectorUpdateSenderStats_block_invoke;
        block[3] = &__block_descriptor_48_e5_v8__0l;
        block[4] = v4;
        block[5] = a2;
        dispatch_sync(v5, block);
        if (*(DerivedStorage + 164))
        {
          block[0] = 0;
          CMBaseObject = FigVideoQueueGetCMBaseObject();
          v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v7)
          {
            v7(CMBaseObject, *MEMORY[0x277CD6518], *MEMORY[0x277CBECE8], block);
            v8 = block[0];
          }

          else
          {
            v8 = 0;
          }

          APReceiverStatsCollectorUpdateVideoPerformanceStats(*DerivedStorage, v8);
          if (block[0])
          {
            CFRelease(block[0]);
          }
        }

        APReceiverStatsCollectorShowStats(*DerivedStorage);
      }

      return 0;
    }

    else
    {
      v9 = 4294895163;
      APSLogErrorAt();
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294895164;
  }

  return v9;
}

uint64_t apsink_clearScreen(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  if (gLogCategory_APReceiverScreenSinkAirPlay <= 30 && (gLogCategory_APReceiverScreenSinkAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  memset(&sampleTimingArray, 0, sizeof(sampleTimingArray));
  if (*(DerivedStorage + 176))
  {
    if (atomic_fetch_add_explicit(sServerDisconnectCount, 0, memory_order_relaxed) == *(DerivedStorage + 168))
    {
      if (*(DerivedStorage + 56) <= mach_absolute_time())
      {
        v3 = UpTicksToNanoseconds();
      }

      else
      {
        v3 = UpTicksToNanoseconds() + 10000000;
      }

      *&sampleTimingArray.duration.value = *MEMORY[0x277CC08F0];
      sampleTimingArray.duration.epoch = *(MEMORY[0x277CC08F0] + 16);
      CMTimeMake(&sampleTimingArray.presentationTimeStamp, v3, 1000000000);
      sampleTimingArray.decodeTimeStamp = **&MEMORY[0x277CC0898];
      v4 = CMSampleBufferCreate(*MEMORY[0x277CBECE8], 0, 1u, 0, 0, 0, 0, 1, &sampleTimingArray, 0, 0, &v13);
      if (v4)
      {
        v10 = v4;
      }

      else
      {
        v5 = *MEMORY[0x277CBED28];
        CMSetAttachment(v13, *MEMORY[0x277CC06D8], *MEMORY[0x277CBED28], 1u);
        CMSetAttachment(v13, *MEMORY[0x277CC06B8], v5, 1u);
        v6 = *(DerivedStorage + 32);
        v7 = v13;
        v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v8)
        {
          v9 = v8(v6, v7, 0, *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24), *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24));
        }

        else
        {
          v9 = 4294954514;
        }

        v10 = apsink_remapEnqueueError(a1, v9);
        if (!v10)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      v10 = 4294895163;
    }

    APSLogErrorAt();
  }

  else
  {
    APSLogErrorAt();
    v10 = 4294895164;
  }

LABEL_15:
  if (v13)
  {
    CFRelease(v13);
  }

  return v10;
}

uint64_t apsink_remapEnqueueError(uint64_t a1, uint64_t a2)
{
  if (a2 == -12083)
  {
    v2 = 4294895163;
    if (gLogCategory_APReceiverScreenSinkAirPlay <= 90 && (gLogCategory_APReceiverScreenSinkAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    v2 = a2;
    if (a2)
    {
      if (gLogCategory_APReceiverScreenSinkAirPlay <= 60 && (gLogCategory_APReceiverScreenSinkAirPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      return 0;
    }
  }

  return v2;
}

uint64_t apsink_updateVideoConfig(uint64_t a1, uint64_t a2, int a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverScreenSinkAirPlay <= 30 && (gLogCategory_APReceiverScreenSinkAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!*(DerivedStorage + 176))
  {
    APSLogErrorAt();
    return 4294895164;
  }

  if (!a2)
  {
    v36 = 4294895165;
LABEL_24:
    APSLogErrorAt();
    return v36;
  }

  if (atomic_fetch_add_explicit(sServerDisconnectCount, 0, memory_order_relaxed) != *(DerivedStorage + 168))
  {
    APSLogErrorAt();
    return 4294895163;
  }

  v28 = *(DerivedStorage + 172);
  if (v28)
  {
    if (v28 != 2)
    {
      v36 = 4294895165;
      goto LABEL_24;
    }
  }

  else
  {
    *(DerivedStorage + 172) = 2;
  }

  v31 = *(DerivedStorage + 40);
  v30 = (DerivedStorage + 40);
  v29 = v31;
  if (v31)
  {
    CFRelease(v29);
    *v30 = 0;
  }

  v32 = APSVideoFormatDescriptionCreateFromBlockBuffer();
  if (v32)
  {
    v36 = v32;
    goto LABEL_24;
  }

  if (*v30)
  {
    MediaSubType = CMFormatDescriptionGetMediaSubType(*v30);
  }

  else
  {
    MediaSubType = 0;
  }

  apsink_updateVideoConfigCommon(a4, a5, a6, a7, a8, a9, a1, a3, MediaSubType, v33, v34, a12, a13, a14, a15);
  return 0;
}

void apsink_updateVideoConfigCommon(double a1, double a2, double a3, double a4, double a5, double a6, uint64_t a7, int a8, int a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 80) = a1;
  *(DerivedStorage + 88) = a2;
  *(DerivedStorage + 160) = a8;
  *(DerivedStorage + 96) = a3;
  *(DerivedStorage + 104) = a4;
  *(DerivedStorage + 112) = a5;
  *(DerivedStorage + 120) = a6;
  [*(DerivedStorage + 24) bounds];
  v28 = v27 / *(DerivedStorage + 64);
  v30 = v29 / *(DerivedStorage + 72);
  *(DerivedStorage + 128) = a12 * v28;
  *(DerivedStorage + 136) = a13 * v30;
  v31 = a14 * v28;
  v32 = a15 * v30;
  *(DerivedStorage + 144) = a14 * v28;
  *(DerivedStorage + 152) = a15 * v30;
  if (gLogCategory_APReceiverScreenSinkAirPlay <= 50)
  {
    if (gLogCategory_APReceiverScreenSinkAirPlay != -1 || (v33 = _LogCategory_Initialize(), v31 = *(DerivedStorage + 144), v32 = *(DerivedStorage + 152), v33))
    {
      LogPrintF();
      v31 = *(DerivedStorage + 144);
      v32 = *(DerivedStorage + 152);
    }
  }

  APReceiverStatsCollectorUpdateVideoSizes(*DerivedStorage, *(DerivedStorage + 112), *(DerivedStorage + 120), v31, v32, *(DerivedStorage + 128), *(DerivedStorage + 136));
  v34 = *DerivedStorage;

  APReceiverStatsCollectorUpdateVideoCodec(v34, a9);
}

uint64_t apsink_updateH264VideoConfig(uint64_t a1, const void *a2, int a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverScreenSinkAirPlay <= 30 && (gLogCategory_APReceiverScreenSinkAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!*(DerivedStorage + 176))
  {
    APSLogErrorAt();
    return 4294895164;
  }

  if (!a2)
  {
    v32 = 4294895165;
    goto LABEL_19;
  }

  if (atomic_fetch_add_explicit(sServerDisconnectCount, 0, memory_order_relaxed) != *(DerivedStorage + 168))
  {
    APSLogErrorAt();
    return 4294895163;
  }

  v28 = *(DerivedStorage + 172);
  if (v28)
  {
    if (v28 == 1)
    {
      goto LABEL_11;
    }

    v32 = 4294895165;
LABEL_19:
    APSLogErrorAt();
    return v32;
  }

  *(DerivedStorage + 172) = 1;
LABEL_11:
  v29 = *(DerivedStorage + 48);
  *(DerivedStorage + 48) = a2;
  CFRetain(a2);
  if (v29)
  {
    CFRelease(v29);
  }

  apsink_updateVideoConfigCommon(a4, a5, a6, a7, a8, a9, a1, a3, 1635148593, v30, v31, a12, a13, a14, a15);
  return 0;
}

uint64_t apsink_enqueueFrame(uint64_t a1, OpaqueCMBlockBuffer *a2, uint64_t a3, uint64_t a4, int a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverScreenSinkAirPlay <= 30 && (gLogCategory_APReceiverScreenSinkAirPlay != -1 || _LogCategory_Initialize()))
  {
    v11 = "";
    if (!a5)
    {
      v11 = "non-";
    }

    sampleTimingArray = a1;
    v45 = a3;
    sampleSizeArray = v11;
    LogPrintF();
  }

  if (!*(DerivedStorage + 176))
  {
    v42 = 4294895164;
LABEL_37:
    APSLogErrorAt();
    return v42;
  }

  v12 = *(DerivedStorage + 172);
  if (!v12)
  {
    v42 = 4294895164;
    goto LABEL_37;
  }

  if (atomic_fetch_add_explicit(sServerDisconnectCount, 0, memory_order_relaxed) != *(DerivedStorage + 168))
  {
    APSLogErrorAt();
    return 4294895163;
  }

  if (*(DerivedStorage + 179))
  {
    apsink_enableImageInfoCollection(a1, a4 != 0);
    v12 = *(DerivedStorage + 172);
    v13 = a4;
  }

  else
  {
    v13 = 0;
  }

  if (v12 == 1)
  {
    v14 = *(DerivedStorage + 32);
    v16 = *(DerivedStorage + 80);
    v15 = *(DerivedStorage + 88);
    v17 = *(DerivedStorage + 48);
    v18 = *(DerivedStorage + 160);
    v47 = *(DerivedStorage + 104);
    v48 = *(DerivedStorage + 96);
    v19 = *(DerivedStorage + 112);
    v20 = *(DerivedStorage + 120);
    v21 = *(DerivedStorage + 128);
    v22 = *(DerivedStorage + 136);
    v23 = *(DerivedStorage + 144);
    v24 = *(DerivedStorage + 152);
    v25 = *(CMBaseObjectGetVTable() + 16);
    if (*(v25 + 24))
    {
      v26 = (*(v25 + 32))(v14, v16, v15, v17, a2, a3, v18, v13, v48, v47, v19, v20, v21, v22, v23, v24, sampleTimingArray, v45, sampleSizeArray);
    }

    else
    {
      v26 = 4294954514;
    }

    goto LABEL_26;
  }

  memset(&v51.presentationTimeStamp, 0, sizeof(v51.presentationTimeStamp));
  sbuf = 0;
  if (!*(DerivedStorage + 40))
  {
    v42 = 4294895164;
    goto LABEL_37;
  }

  *&v51.duration.value = *MEMORY[0x277CC0898];
  v51.duration.epoch = *(MEMORY[0x277CC0898] + 16);
  v51.decodeTimeStamp = v51.duration;
  CMClockMakeHostTimeFromSystemUnits(&v51.presentationTimeStamp, a3);
  DataLength = CMBlockBufferGetDataLength(a2);
  v27 = CMSampleBufferCreate(*MEMORY[0x277CBECE8], a2, 1u, 0, 0, *(DerivedStorage + 40), 1, 1, &v51, 1, &DataLength, &sbuf);
  if (v27)
  {
    v42 = v27;
    goto LABEL_37;
  }

  if (!a5)
  {
    SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 1u);
    ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
    CFDictionarySetValue(ValueAtIndex, *MEMORY[0x277CC06A0], *MEMORY[0x277CBED28]);
  }

  v30 = *(DerivedStorage + 32);
  v31 = sbuf;
  v32 = *(DerivedStorage + 160);
  v33 = *(DerivedStorage + 96);
  v34 = *(DerivedStorage + 104);
  v35 = *(DerivedStorage + 112);
  v36 = *(DerivedStorage + 120);
  v37 = *(DerivedStorage + 128);
  v38 = *(DerivedStorage + 136);
  v40 = *(DerivedStorage + 144);
  v39 = *(DerivedStorage + 152);
  v41 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v41)
  {
    v26 = v41(v30, v31, v32, v33, v34, v35, v36, v37, v38, v40, v39);
  }

  else
  {
    v26 = 4294954514;
  }

  if (sbuf)
  {
    CFRelease(sbuf);
  }

LABEL_26:
  v42 = apsink_remapEnqueueError(a1, v26);
  if (v42)
  {
    goto LABEL_37;
  }

  *(DerivedStorage + 56) = a3;
  ++*(DerivedStorage + 164);
  if (a4 && !*(DerivedStorage + 179))
  {
    APReceiverStatsCollectorLogFrameStats(a4, 0);
    return 0;
  }

  return v42;
}

uint64_t apsink_enableImageInfoCollection(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  v4 = result;
  if (a2)
  {
    if (*(result + 180))
    {
      return result;
    }

    CMNotificationCenterGetDefaultLocalCenter();
    result = CMNotificationCenterAddListener();
    v5 = 1;
  }

  else
  {
    if (!*(result + 180))
    {
      return result;
    }

    CMNotificationCenterGetDefaultLocalCenter();
    result = CMNotificationCenterRemoveListener();
    v5 = 0;
  }

  *(v4 + 180) = v5;
  return result;
}

void apsink_handleImageRelease(int a1, int a2, int a3, int a4, CFTypeRef cf)
{
  if (cf)
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(cf, *MEMORY[0x277CD6330]);

      APReceiverStatsCollectorLogFrameStats(Value, cf);
    }
  }
}

uint64_t apsink_Stop(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 176))
  {
    v3 = DerivedStorage;
    if (gLogCategory_APReceiverScreenSinkAirPlay <= 30 && (gLogCategory_APReceiverScreenSinkAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    apsink_enableHUD(a1, 0);
    apsink_enableImageInfoCollection(a1, 0);
    if (*(v3 + 24) && *(v3 + 178))
    {
      v4 = dispatch_semaphore_create(0);
      FigGetCFPreferenceDoubleWithDefault();
      FigGetCFPreferenceDoubleWithDefault();
      FigGetCFPreferenceDoubleWithDefault();
      dispatch_get_global_queue(0, 0);
      FadeOutLayerThruBlack();
      dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v4);
    }

    if (*(v3 + 32))
    {
      CMBaseObject = FigVideoQueueGetCMBaseObject();
      if (CMBaseObject)
      {
        v6 = CMBaseObject;
        v7 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v7)
        {
          v7(v6);
        }
      }

      v8 = *(v3 + 32);
      if (v8)
      {
        CFRelease(v8);
        *(v3 + 32) = 0;
      }
    }

    v9 = CMBaseObjectGetDerivedStorage();
    v10 = v9[3];
    if (v10)
    {
      [v10 removeFromSuperlayer];
    }

    v9[1] = 0;
    v9[2] = 0;

    v9[3] = 0;
    [MEMORY[0x277CD9FF0] flush];
    *(v3 + 176) = 0;
  }

  return 0;
}

void apsink_enableHUD(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  if (a2)
  {
    if (*(DerivedStorage + 177))
    {
      return;
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetValue(Mutable, @"PresentationLayer", *(v4 + 16));
    [*(v4 + 24) zPosition];
    FigCFDictionarySetInt32();
    APReceiverStatsCollectorEnableHUD(*v4, Mutable);
    CFRelease(Mutable);
    v6 = 1;
  }

  else
  {
    if (!*(DerivedStorage + 177))
    {
      return;
    }

    APReceiverStatsCollectorDisableHUD(*DerivedStorage);
    v6 = 0;
  }

  *(v4 + 177) = v6;
}

uint64_t apsink_Start(uint64_t a1, const __CFDictionary *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    v26 = 4294895165;
    goto LABEL_42;
  }

  v5 = DerivedStorage;
  if (gLogCategory_APReceiverScreenSinkAirPlay <= 30 && (gLogCategory_APReceiverScreenSinkAirPlay != -1 || _LogCategory_Initialize()))
  {
    v45 = a1;
    v46 = a2;
    LogPrintF();
  }

  if (*(v5 + 176))
  {
    APSLogErrorAt();
    v26 = 4294895164;
LABEL_43:
    if (gLogCategory_APReceiverScreenSinkAirPlay <= 90 && (gLogCategory_APReceiverScreenSinkAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v43 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v43)
    {
      v43(a1);
    }

    return v26;
  }

  *(v5 + 176) = 1;
  *(v5 + 164) = 0;
  FigCFDictionaryGetCGSizeIfPresent();
  if (*(v5 + 64) <= 1.0 || *(v5 + 72) <= 1.0)
  {
    v26 = APSSignalErrorAt();
    if (!v26)
    {
      return v26;
    }

    goto LABEL_43;
  }

  v6 = CMBaseObjectGetDerivedStorage();
  v7 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  Value = CFDictionaryGetValue(a2, @"PresentationLayer");
  if (!Value)
  {
    v9 = CFDictionaryGetValue(a2, @"PresentationContext");
    if (!v9 || (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v26 = 4294895165;
      APSLogErrorAt();
      [v7 drain];
      goto LABEL_42;
    }

    v11 = v10;
    *(v6 + 8) = v11;
    Value = [v11 layer];
  }

  v12 = Value;
  *(v6 + 16) = v12;
  if (v12)
  {
    [v12 frame];
    v16 = v15;
    v18 = v17;
    *(v6 + 80) = v15;
    *(v6 + 88) = v17;
    if (gLogCategory_APReceiverScreenSinkAirPlay <= 30)
    {
      v19 = v13;
      v20 = v14;
      if (gLogCategory_APReceiverScreenSinkAirPlay != -1 || _LogCategory_Initialize())
      {
        v47 = v16;
        v48 = v18;
        v45 = v19;
        v46 = v20;
        LogPrintF();
      }
    }

    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    v21 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    *(v6 + 24) = v21;
    [v21 setName:@"VideoLayer"];
    [*(v6 + 24) setFrame:{0.0, 0.0, v16, v18}];
    [*(v6 + 24) setBackgroundColor:CGColorGetBlack()];
    [*(v6 + 24) setEdgeAntialiasingMask:0];
    [*(v6 + 16) addSublayer:*(v6 + 24)];
    [MEMORY[0x277CD9FF0] commit];
    [v7 drain];
  }

  else
  {
    v26 = APSSignalErrorAt();
    [v7 drain];
    if (v26)
    {
      goto LABEL_42;
    }
  }

  v22 = CMBaseObjectGetDerivedStorage();
  v23 = 1;
  while (1)
  {
    v24 = FigVideoQueueCreate();
    if (!v24)
    {
      break;
    }

    v25 = v24;
    if (gLogCategory_APReceiverScreenSinkAirPlay <= 60 && (gLogCategory_APReceiverScreenSinkAirPlay != -1 || _LogCategory_Initialize()))
    {
      v46 = 100;
      v47 = *&v25;
      v45 = v23;
      LogPrintF();
    }

    usleep(0x186A0u);
    v23 = (v23 + 1);
    if (v23 == 101)
    {
      *(v22 + 168) = atomic_fetch_add_explicit(sServerDisconnectCount, 0, memory_order_relaxed);
      APSLogErrorAt();
      v26 = v25;
      goto LABEL_42;
    }
  }

  *(v22 + 168) = atomic_fetch_add_explicit(sServerDisconnectCount, 0, memory_order_relaxed);
  v27 = *(v22 + 24);
  CMBaseObject = FigVideoQueueGetCMBaseObject();
  v29 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v29)
  {
    v26 = 4294954514;
LABEL_41:
    APSLogErrorAt();
LABEL_42:
    APSLogErrorAt();
    goto LABEL_43;
  }

  v30 = v29(CMBaseObject, *MEMORY[0x277CD6508], v27);
  if (v30)
  {
    v26 = v30;
    goto LABEL_41;
  }

  SInt32 = FigCFNumberCreateSInt32();
  v32 = FigVideoQueueGetCMBaseObject();
  v33 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v33)
  {
    v33(v32, *MEMORY[0x277CD64F8], SInt32);
  }

  [*(v22 + 24) frame];
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v49);
  v35 = FigVideoQueueGetCMBaseObject();
  v36 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v36)
  {
    v26 = 4294954514;
    goto LABEL_51;
  }

  v37 = v36(v35, *MEMORY[0x277CD6500], DictionaryRepresentation);
  if (v37)
  {
    v26 = v37;
    goto LABEL_51;
  }

  v38 = FigVideoQueueGetCMBaseObject();
  v39 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v39)
  {
    v39(v38, *MEMORY[0x277CD6510], *MEMORY[0x277CBED28]);
  }

  v40 = *(v22 + 32);
  v41 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v41)
  {
    v26 = 4294954514;
    goto LABEL_51;
  }

  v42 = v41(v40, 0);
  if (v42)
  {
    v26 = v42;
LABEL_51:
    APSLogErrorAt();
    if (!DictionaryRepresentation)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  if (gLogCategory_APReceiverScreenSinkAirPlay <= 30 && (gLogCategory_APReceiverScreenSinkAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v26 = 0;
  if (DictionaryRepresentation)
  {
LABEL_52:
    CFRelease(DictionaryRepresentation);
  }

LABEL_53:
  if (SInt32)
  {
    CFRelease(SInt32);
  }

  if (v26)
  {
    goto LABEL_42;
  }

  return v26;
}

uint64_t apsink_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    goto LABEL_28;
  }

  v7 = DerivedStorage;
  if (gLogCategory_APReceiverScreenSinkAirPlay <= 30 && (gLogCategory_APReceiverScreenSinkAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (CFEqual(a2, @"StatsDisplayEnabled"))
  {
    if (*(v7 + 176))
    {
      apsink_enableHUD(a1, *MEMORY[0x277CBED28] == a3);
      return 0;
    }

    v8 = 4294895164;
LABEL_31:
    APSLogErrorAt();
    return v8;
  }

  if (CFEqual(a2, @"StatsCollector"))
  {
    if (*(v7 + 176))
    {
      v8 = 4294895164;
      goto LABEL_31;
    }

    if (!a3)
    {
      v8 = *v7;
      *v7 = 0;
      if (!v8)
      {
        return v8;
      }

      goto LABEL_22;
    }

    v10 = CFGetTypeID(a3);
    if (APReceiverStatsCollectorGetTypeID_once != -1)
    {
      dispatch_once(&APReceiverStatsCollectorGetTypeID_once, &__block_literal_global_536);
    }

    if (v10 == APReceiverStatsCollectorGetTypeID_typeID)
    {
      v8 = *v7;
      *v7 = a3;
      CFRetain(a3);
      if (!v8)
      {
        return v8;
      }

LABEL_22:
      CFRelease(v8);
      return 0;
    }

LABEL_28:
    APSLogErrorAt();
    return 4294895165;
  }

  if (CFEqual(a2, @"ScreenFadeOutOnStop"))
  {
    v8 = 0;
    *(v7 + 178) = *MEMORY[0x277CBED28] == a3;
  }

  else
  {
    if (gLogCategory_APReceiverScreenSinkAirPlay <= 30 && (gLogCategory_APReceiverScreenSinkAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return 4294954512;
  }

  return v8;
}

uint64_t apsink_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v4 = 4294895165;
LABEL_11:
    APSLogErrorAt();
    return v4;
  }

  if (!a4)
  {
    v4 = 4294895165;
    goto LABEL_11;
  }

  if (gLogCategory_APReceiverScreenSinkAirPlay <= 30 && (gLogCategory_APReceiverScreenSinkAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return 4294954512;
}

CFStringRef apsink_CopyDebugDescription(const void *a1)
{
  ASPrintF();
  v2 = CFGetAllocator(a1);
  v3 = CFStringCreateWithFormat(v2, 0, @"<APReceiverScreenSinkAirPlay %p %s>", a1, 0);
  free(0);
  return v3;
}

void apsink_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverScreenSinkAirPlay <= 30 && (gLogCategory_APReceiverScreenSinkAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v3 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v3)
  {
    v3(a1);
  }

  v4 = *(DerivedStorage + 48);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 48) = 0;
  }

  v5 = *(DerivedStorage + 40);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 40) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

uint64_t __APReceiverScreenSinkCreateAirPlay_block_invoke()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterAddListener();
}

void apsink_handleServerDisconnect()
{
  if (gLogCategory_APReceiverScreenSinkAirPlay <= 60 && (gLogCategory_APReceiverScreenSinkAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  atomic_fetch_add_explicit(sServerDisconnectCount, 1u, memory_order_relaxed);
}

void AirTunesDACPClient_Delete(char *a1)
{
  if (*a1 == 1684104048)
  {
    v3 = *(a1 + 9);
    if (v3)
    {
      pthread_mutex_lock(v3);
      a1[160] = 1;
      pthread_mutex_unlock(*(a1 + 9));
    }

    if (*(a1 + 19))
    {
      NetSocket_Cancel();
    }

    if (*(a1 + 18))
    {
      pthread_cond_signal((a1 + 80));
      pthread_join(*(a1 + 17), 0);
      *(a1 + 18) = 0;
    }

    *a1 = 1145127760;
    if (*(a1 + 19))
    {
      NetSocket_Delete();
      *(a1 + 19) = 0;
    }

    v4 = *(a1 + 16);
    if (v4)
    {
      pthread_cond_destroy(v4);
      *(a1 + 16) = 0;
    }

    v5 = *(a1 + 9);
    if (v5)
    {
      pthread_mutex_destroy(v5);
      *(a1 + 9) = 0;
    }

    while (1)
    {
      v6 = *(a1 + 23);
      if (!v6)
      {
        break;
      }

      *(a1 + 23) = *v6;
      _AirTunesDACPClient_FreeRequest(v6);
    }

    v7 = *(a1 + 5311);
    if (v7)
    {
      free(v7);
    }

    free(a1);
  }

  else
  {

    APSLogErrorAt();
  }
}

void _AirTunesDACPClient_FreeRequest(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    free(v2);
  }

  free(a1);
}

uint64_t _AirTunesDACPClient_Thread(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = a1 + 40960;
  pthread_setname_np("AirPlayDACP");
  v3 = "iTunes_Ctrl_";
  v4 = "%s%016llX";
  v5 = "_dacp._tcp";
LABEL_2:
  pthread_mutex_lock((a1 + 8));
  while (!*(a1 + 160))
  {
    v6 = *(a1 + 184);
    if (v6)
    {
      *(a1 + 184) = *v6;
      --*(a1 + 192);
      pthread_mutex_unlock((a1 + 8));
      v7 = *(v6 + 16);
      if (*(v6 + 8))
      {
        if (!strcmp(*(v6 + 16), "stopSession"))
        {
          if (*(a1 + 162))
          {
            NetSocket_Disconnect();
            *(a1 + 162) = 0;
          }
        }

        goto LABEL_78;
      }

      if (*(a1 + 162))
      {
        if ((*(*(a1 + 152) + 24))(*(a1 + 152), 1) == -6753)
        {
          NetSocket_Disconnect();
          *(a1 + 162) = 0;
          goto LABEL_15;
        }

        if (*(a1 + 162))
        {
          v8 = v5;
          v9 = v4;
          v10 = v3;
          v34 = 1;
          goto LABEL_35;
        }
      }

LABEL_15:
      sdRef = 0;
      *(v2 + 508) = 0;
      SNPrintF();
      v11 = DNSServiceResolve(&sdRef, 0, 0, name, v5, "local.", _AirTunesDACPClient_ResolveControllerCallBack, a1);
      if (v11)
      {
        v19 = v11;
        APSLogErrorAt();
      }

      else
      {
        v12 = v4;
        v13 = v3;
        if (DNSServiceRefSockFD(sdRef) < 0)
        {
          v16 = mach_absolute_time();
          v17 = UpTicksPerSecond();
          if (*(v2 + 508))
          {
LABEL_25:
            v19 = 0;
          }

          else
          {
            v18 = 5 * v17 + v16;
            while (mach_absolute_time() < v18)
            {
              usleep(0xC350u);
              if (*(v2 + 508))
              {
                goto LABEL_25;
              }
            }

            v19 = 4294960574;
          }
        }

        else
        {
          while (1)
          {
            v14 = NetSocket_Wait();
            if (v14)
            {
              v19 = v14;
              goto LABEL_26;
            }

            v15 = DNSServiceProcessResult(sdRef);
            if (v15)
            {
              break;
            }

            if (*(v2 + 508))
            {
              goto LABEL_25;
            }
          }

          v19 = v15;
          APSLogErrorAt();
        }

LABEL_26:
        v3 = v13;
        v4 = v12;
        v5 = "_dacp._tcp";
      }

      if (sdRef)
      {
        DNSServiceRefDeallocate(sdRef);
      }

      if (v19 || (v19 = NetSocket_TCPConnect(), v19))
      {
LABEL_74:
        if (*(a1 + 162))
        {
          NetSocket_Disconnect();
          *(a1 + 162) = 0;
        }

        goto LABEL_76;
      }

      v8 = v5;
      v9 = v4;
      v10 = v3;
      if (*(a1 + 161))
      {
        v34 = 1;
        *(a1 + 162) = 1;
      }

      else
      {
        v34 = 0;
      }

LABEL_35:
      v20 = *(v2 + 504);
      ShortVersionLength = APSVersionUtilsGetShortVersionLength();
      if ((snprintf(__str, 0x800uLL, "GET /ctrl-int/1/%s HTTP/1.1\r\nHost: %s\r\nActive-Remote: %u\r\n%s: AirPlay/%.*s\r\n\r\n", v7, (a1 + 41469), v20, "User-Agent", ShortVersionLength, "920.10.1") - 2048) <= 0xFFFFF800)
      {
        APSLogErrorAt();
        v19 = 4294960534;
        v3 = v10;
        v4 = v9;
        v5 = v8;
        goto LABEL_72;
      }

      NetSocket_GetNative();
      v3 = v10;
      v4 = v9;
      v5 = v8;
      while (1)
      {
        v22 = SocketWriteData();
        if (!v22)
        {
          break;
        }

        v19 = v22;
        if (v22 != 35)
        {
          goto LABEL_67;
        }

        v23 = NetSocket_Wait();
        v19 = v23;
        if (v23 == -6723)
        {
          goto LABEL_72;
        }

        if (v23)
        {
          goto LABEL_67;
        }
      }

      *(a1 + 8392) = 0;
      while (1)
      {
        v24 = HTTPReadHeader();
        if (!v24)
        {
          break;
        }

        v19 = v24;
        if (v24 != 35)
        {
          goto LABEL_70;
        }

        v25 = NetSocket_Wait();
        v19 = v25;
        if (v25 == -6723)
        {
          goto LABEL_71;
        }

        if (v25)
        {
          goto LABEL_70;
        }
      }

      v26 = HTTPHeader_Parse();
      if (v26)
      {
        v19 = v26;
LABEL_70:
        APSLogErrorAt();
LABEL_71:
        v5 = "_dacp._tcp";
        goto LABEL_72;
      }

      v27 = *(a1 + 8632);
      if (!v27)
      {
        APSLogErrorAt();
        v19 = 4294960584;
        goto LABEL_71;
      }

      if ((v27 - 300) <= 0xFFFFFF9B)
      {
        APSLogErrorAt();
        v19 = *(a1 + 8632);
        goto LABEL_71;
      }

      v28 = *(a1 + 8664);
      v5 = "_dacp._tcp";
      if (v28 >= 0x8000)
      {
        APSLogErrorAt();
        v19 = 4294960553;
        goto LABEL_72;
      }

      *(a1 + 41448) = 0;
      if (v28)
      {
        v29 = (*(*(a1 + 152) + 24))();
        v19 = v29;
        if (v29 != -6753 && v29 != -6723 && v29 != 0)
        {
LABEL_67:
          APSLogErrorAt();
        }

LABEL_72:
        if (v34)
        {
          if (!v19)
          {
            goto LABEL_78;
          }

          goto LABEL_74;
        }

        NetSocket_Disconnect();
        if (!v19)
        {
          goto LABEL_78;
        }

LABEL_76:
        v32 = *(a1 + 168);
        if (v32)
        {
          v32(v19, *(a1 + 176));
        }
      }

      else if ((v34 & 1) == 0)
      {
        NetSocket_Disconnect();
      }

LABEL_78:
      _AirTunesDACPClient_FreeRequest(v6);
      goto LABEL_2;
    }

    pthread_cond_wait((a1 + 80), (a1 + 8));
  }

  pthread_mutex_unlock((a1 + 8));
  return 0;
}

uint64_t _AirTunesDACPClient_ResolveControllerCallBack(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a4 != -65791)
  {
    if (a4)
    {

      return APSLogErrorAt();
    }

    else
    {
      result = __strlcpy_chk();
      *(a10 + 42478) = __rev16(a7);
      *(a10 + 41468) = 1;
    }
  }

  return result;
}

uint64_t _AirTunesDACPClient_ScheduleCommandInternal(uint64_t a1, const char *a2, int a3)
{
  if (!a1)
  {
    APSLogErrorAt();
    return 4294960591;
  }

  if (*a1 != 1684104048)
  {
    APSLogErrorAt();
    return 4294960556;
  }

  pthread_mutex_lock((a1 + 8));
  if (!a3)
  {
    if (*(a1 + 192) <= 9)
    {
      if (*(a1 + 41456) && *(a1 + 41464))
      {
        goto LABEL_4;
      }

      v11 = 4294960574;
    }

    else
    {
      v11 = 4294960567;
    }

LABEL_14:
    pthread_mutex_unlock((a1 + 8));
    return v11;
  }

LABEL_4:
  v6 = malloc_type_calloc(1uLL, 0x18uLL, 0x1030040B4FB57C1uLL);
  if (!v6)
  {
    APSLogErrorAt();
LABEL_20:
    v11 = 4294960568;
    goto LABEL_14;
  }

  v7 = v6;
  *(v6 + 8) = a3;
  v8 = strdup(a2);
  v7[2] = v8;
  if (!v8)
  {
    APSLogErrorAt();
    _AirTunesDACPClient_FreeRequest(v7);
    goto LABEL_20;
  }

  v9 = (a1 + 184);
  do
  {
    v10 = v9;
    v9 = *v9;
  }

  while (v9);
  *v10 = v7;
  ++*(a1 + 192);
  pthread_mutex_unlock((a1 + 8));
  pthread_cond_signal((a1 + 80));
  return 0;
}

uint64_t pairingServices_registerBaseClass(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&pairingServices_registerBaseClass_sClassDesc, ClassID, 1, a1);
}

uint64_t _HandleAgentServiceDisconnect()
{
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  if (gLogCategory_APReceiverMediaRemoteXPCService <= 50 && (gLogCategory_APReceiverMediaRemoteXPCService != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexLock();
  if (gLogCategory_APReceiverMediaRemoteXPCService <= 50 && (gLogCategory_APReceiverMediaRemoteXPCService != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  gAPReceiverMediaRemoteService_6 = 0;

  return FigSimpleMutexUnlock();
}

uint64_t aprmrc_handleClientDeath()
{
  if (gLogCategory_APReceiverMediaRemoteXPCService <= 50 && (gLogCategory_APReceiverMediaRemoteXPCService != -1 || _LogCategory_Initialize()))
  {
    getprogname();
    LogPrintF();
  }

  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  gAPReceiverMediaRemoteService_2 = 0;
  FigSimpleMutexUnlock();
  v0 = gAPReceiverMediaRemoteService_0;

  return AirPlayReceiverServerControl(v0, 0, @"partnerProcessDeath", @"MediaRemoteServices", 0, 0);
}

uint64_t APReceiverMediaRemoteXPCService_CommandHandler(const void *a1, const __CFDictionary *a2, __CFDictionary **a3)
{
  if (gLogCategory_APReceiverMediaRemoteXPCService <= 40 && (gLogCategory_APReceiverMediaRemoteXPCService != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  gAPReceiverMediaRemoteService_2 = 1;
  FigSimpleMutexUnlock();
  if (CFEqual(a1, @"sendData"))
  {
    if (a2)
    {
      Value = CFDictionaryGetValue(a2, @"objectID");
      if (Value)
      {
        v7 = Value;
        v8 = CFDictionaryGetValue(a2, @"data");
        if (v8)
        {
          v9 = v8;
          if (gLogCategory_APReceiverMediaRemoteXPCService <= 50 && (gLogCategory_APReceiverMediaRemoteXPCService != -1 || _LogCategory_Initialize()))
          {
            CFDataGetLength(v9);
            LogPrintF();
          }

          FigSimpleMutexCheckIsNotLockedOnThisThread();
          v19 = APReceiverMediaRemoteXPCService_copyCommChannelEntry(v7);
          if (v19)
          {
            v20 = v19;
            v21 = v19[3];
            if (v21)
            {
              v22 = v19[4];
              if (v22)
              {
                v23 = CFRetain(v22);
                CFRelease(v20);
                if (v23)
                {
                  v24 = FigCFWeakReferenceHolderCopyReferencedObject();
                  if (!v24)
                  {
                    APSLogErrorAt();
                    v10 = 4294960587;
                    goto LABEL_42;
                  }

LABEL_35:
                  if (gLogCategory_APReceiverMediaRemoteXPCService <= 30 && (gLogCategory_APReceiverMediaRemoteXPCService != -1 || _LogCategory_Initialize()))
                  {
                    CFDataGetLength(v9);
                    LogPrintF();
                  }

                  v10 = v21(v7, v9, v24);
                  if (v10)
                  {
                    APSLogErrorAt();
                  }

                  if (!v23)
                  {
LABEL_43:
                    if (v24)
                    {
                      CFRelease(v24);
                    }

                    if (!v10)
                    {
                      *a3 = 0;
                      return v10;
                    }

LABEL_74:
                    APSLogErrorAt();
                    return v10;
                  }

LABEL_42:
                  CFRelease(v23);
                  goto LABEL_43;
                }
              }

              else
              {
                CFRelease(v20);
                v23 = 0;
              }

              v24 = 0;
              goto LABEL_35;
            }

            CFRelease(v19);
          }

          v10 = 4294960587;
          APSLogErrorAt();
          goto LABEL_74;
        }
      }
    }

LABEL_83:
    APSLogErrorAt();
    return 4294960591;
  }

  if (CFEqual(a1, @"connect"))
  {
    APReceiverMediaRemoteXPCService_enqueueAndPostEvent(@"connectAck", 0);
    return 0;
  }

  if (CFEqual(a1, @"copyProperty"))
  {
    if (!a2)
    {
      goto LABEL_83;
    }

    v11 = CFDictionaryGetValue(a2, @"propertyKey");
    if (!v11)
    {
      goto LABEL_83;
    }

    v12 = v11;
    v43 = 0;
    v42 = 0;
    if (CFEqual(v11, @"AirPlaySecuritySetting"))
    {
      v44 = 0;
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!Mutable)
      {
        APSLogErrorAt();
        v44 = -6728;
LABEL_25:
        v10 = v44;
LABEL_66:
        if (v10 == -72025)
        {
          return 4294960569;
        }

        if (v10)
        {
          if (v10 == -6727)
          {
            return v10;
          }

          goto LABEL_74;
        }

        v38 = v42;
        v39 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v39)
        {
          v40 = v39;
          if (v38)
          {
            CFDictionarySetValue(v39, @"propertyValue", v38);
            CFRelease(v38);
          }

          v10 = 0;
          *a3 = v40;
        }

        else
        {
          APSLogErrorAt();
          return 4294960568;
        }

        return v10;
      }

      v15 = Mutable;
      v17 = APReceiverSystemInfoCopyProperty(*(gAPReceiverMediaRemoteService_0 + 160), v14, @"Password", 0, &v44);
      if (v44)
      {
        APSLogErrorAt();
        v18 = 0;
      }

      else
      {
        v18 = APReceiverSystemInfoCopyProperty(*(gAPReceiverMediaRemoteService_0 + 160), v16, @"SecurityMode", 0, &v44);
        if (!v44)
        {
          CFDictionaryAddValue(v15, @"password", v17);
          CFDictionaryAddValue(v15, @"securityMode", v18);
          v42 = v15;
          if (!v17)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }

        APSLogErrorAt();
      }

      CFRelease(v15);
      if (!v17)
      {
LABEL_23:
        if (v18)
        {
          CFRelease(v18);
        }

        goto LABEL_25;
      }

LABEL_22:
      CFRelease(v17);
      goto LABEL_23;
    }

    if (CFEqual(v12, @"AirPlayGroupPublicName"))
    {
      v33 = *(gAPReceiverMediaRemoteService_0 + 160);
      v34 = @"AirPlayGroupPublicName";
    }

    else if (CFEqual(v12, @"AirPlayGroupUUID") || CFEqual(v12, @"AirPlayGroupID"))
    {
      v33 = *(gAPReceiverMediaRemoteService_0 + 160);
      v34 = @"AirPlayGroupID";
    }

    else
    {
      if (CFEqual(v12, @"AirPlayedFromGroupLeader"))
      {
        if (CFObjectGetPropertyInt64Sync() && !CFObjectGetPropertyInt64Sync())
        {
          v41 = MEMORY[0x277CBED28];
        }

        else
        {
          v41 = MEMORY[0x277CBED10];
        }

        v37 = CFRetain(*v41);
        goto LABEL_65;
      }

      if (CFEqual(v12, @"AuthorizationString"))
      {
        APReceiverSystemInfoEnsurePIN(*(gAPReceiverMediaRemoteService_0 + 160));
        v33 = *(gAPReceiverMediaRemoteService_0 + 160);
        v36 = *MEMORY[0x277CBED28];
        v34 = @"Passcode";
        v35 = 0;
        goto LABEL_64;
      }

      if (CFEqual(v12, @"GroupContainsDiscoverableLeader"))
      {
        v33 = *(gAPReceiverMediaRemoteService_0 + 160);
        v34 = @"GroupContainsDiscoverableLeader";
      }

      else if (CFEqual(v12, @"IsAirPlayGroupLeader"))
      {
        v33 = *(gAPReceiverMediaRemoteService_0 + 160);
        v34 = @"IsAirPlayGroupLeader";
      }

      else if (CFEqual(v12, @"IsSilentPrimary"))
      {
        v33 = *(gAPReceiverMediaRemoteService_0 + 160);
        v34 = @"IsSilentPrimary";
      }

      else if (CFEqual(v12, @"ReceiverSessionIsActive"))
      {
        v33 = *(gAPReceiverMediaRemoteService_0 + 160);
        v34 = @"ReceiverSessionIsActive";
      }

      else if (CFEqual(v12, @"SystemPairingIdentity"))
      {
        v33 = *(gAPReceiverMediaRemoteService_0 + 160);
        v34 = @"SystemPairingIdentity";
      }

      else if (CFEqual(v12, @"TightSyncUUID"))
      {
        v33 = *(gAPReceiverMediaRemoteService_0 + 160);
        v34 = @"TightSyncUUID";
      }

      else if (CFEqual(v12, @"IsTightSyncGroupLeader"))
      {
        v33 = *(gAPReceiverMediaRemoteService_0 + 160);
        v34 = @"IsTightSyncGroupLeader";
      }

      else if (CFEqual(v12, @"ParentGroupUUID") || CFEqual(v12, @"ParentGroupID"))
      {
        v33 = *(gAPReceiverMediaRemoteService_0 + 160);
        v34 = @"ParentGroupID";
      }

      else if (CFEqual(v12, @"ParentGroupContainsDiscoverableLeader"))
      {
        v33 = *(gAPReceiverMediaRemoteService_0 + 160);
        v34 = @"ParentGroupContainsDiscoverableLeader";
      }

      else if (CFEqual(v12, @"ParentGroupLeaderSupportsRelay"))
      {
        v33 = *(gAPReceiverMediaRemoteService_0 + 160);
        v34 = @"ParentGroupLeaderSupportsRelay";
      }

      else if (CFEqual(v12, @"ParentGroupSupportsGroupCohesion"))
      {
        v33 = *(gAPReceiverMediaRemoteService_0 + 160);
        v34 = @"ParentGroupLeaderSupportsGroupCohesion";
      }

      else if (CFEqual(v12, @"ClusterUUID"))
      {
        v33 = *(gAPReceiverMediaRemoteService_0 + 160);
        v34 = @"ClusterUUID";
      }

      else if (CFEqual(v12, @"ClusterType"))
      {
        v33 = *(gAPReceiverMediaRemoteService_0 + 160);
        v34 = @"ClusterType";
      }

      else if (CFEqual(v12, @"ClusterSize"))
      {
        v33 = *(gAPReceiverMediaRemoteService_0 + 160);
        v34 = @"ClusterSize";
      }

      else if (CFEqual(v12, @"IsClusterLeader"))
      {
        v33 = *(gAPReceiverMediaRemoteService_0 + 160);
        v34 = @"IsClusterLeader";
      }

      else
      {
        if (!CFEqual(v12, @"ClusterLeaderUUID"))
        {
          if (!CFEqual(v12, @"MRInfo"))
          {
            v10 = 4294960591;
            goto LABEL_74;
          }

          v10 = APReceiverMediaRemoteXPCService_copyPropertyFromMRSession(v12, &v42);
          goto LABEL_66;
        }

        v33 = *(gAPReceiverMediaRemoteService_0 + 160);
        v34 = @"ClusterLeaderUUID";
      }
    }

    v35 = &v43;
    v36 = 0;
LABEL_64:
    v37 = APReceiverSystemInfoCopyProperty(v33, v32, v34, v36, v35);
LABEL_65:
    v42 = v37;
    v10 = v43;
    goto LABEL_66;
  }

  if (CFEqual(a1, @"setProperty"))
  {
    *a3 = 0;
    if (a2)
    {
      v26 = CFDictionaryGetValue(a2, @"propertyKey");
      if (v26)
      {
        v27 = v26;
        v28 = CFDictionaryGetValue(a2, @"propertyValue");
        if (v28)
        {
          v29 = v28;
          if (CFEqual(v27, @"IsClusterLeader"))
          {
            v10 = APReceiverSystemInfoSetProperty(*(gAPReceiverMediaRemoteService_0 + 160), v30, @"IsClusterLeader", v31, v29);
            if (!v10)
            {
              return v10;
            }
          }

          else
          {
            v10 = 4294960591;
          }

          goto LABEL_74;
        }
      }
    }

    goto LABEL_83;
  }

  if (gLogCategory_APReceiverMediaRemoteXPCService <= 50 && (gLogCategory_APReceiverMediaRemoteXPCService != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return 4294960561;
}

CFTypeRef APReceiverMediaRemoteXPCService_copyCommChannelEntry(const void *a1)
{
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(gAPReceiverMediaRemoteService_1, a1);
  if (Value)
  {
    v3 = CFRetain(Value);
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t APReceiverMediaRemoteXPCService_enqueueAndPostEvent(const void *a1, const void *a2)
{
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  if (a1)
  {
    v4 = malloc_type_malloc(0x10uLL, 0x600405BB7FD7CuLL);
    *v4 = CFRetain(a1);
    if (a2)
    {
      v5 = CFRetain(a2);
    }

    else
    {
      v5 = 0;
    }

    v4[1] = v5;
    FigSimpleMutexLock();
    CFArrayAppendValue(gAPReceiverMediaRemoteService_3, v4);
  }

  else
  {
    FigSimpleMutexLock();
  }

  CFArrayGetCount(gAPReceiverMediaRemoteService_3);
  while (1)
  {
    FigSimpleMutexCheckIsNotLockedOnThisThread();
    FigSimpleMutexLock();
    v6 = gAPReceiverMediaRemoteService_2;
    FigSimpleMutexUnlock();
    if (v6 != 1)
    {
      break;
    }

    FirstValue = FigCFArrayGetFirstValue();
    if (!FirstValue)
    {
      break;
    }

    v8 = FirstValue;
    if (APSXPCServerPostEvent())
    {
      if (gLogCategory_APReceiverMediaRemoteXPCService <= 90 && (gLogCategory_APReceiverMediaRemoteXPCService != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      break;
    }

    CFArrayRemoveValueAtIndex(gAPReceiverMediaRemoteService_3, 0);
    CFRelease(*v8);
    v9 = *(v8 + 8);
    if (v9)
    {
      CFRelease(v9);
    }

    free(v8);
  }

  CFArrayGetCount(gAPReceiverMediaRemoteService_3);
  result = FigSimpleMutexUnlock();
  if (gLogCategory_APReceiverMediaRemoteXPCService <= 50)
  {
    if (gLogCategory_APReceiverMediaRemoteXPCService != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

uint64_t APReceiverMediaRemoteXPCService_copyPropertyFromMRSession(const void *a1, void *a2)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  if (CFEqual(a1, @"MRInfo"))
  {
    v3 = *(gAPReceiverMediaRemoteService_0 + 88);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __APReceiverMediaRemoteXPCService_copyPropertyFromMRSession_block_invoke;
    block[3] = &unk_278C60380;
    block[4] = &v13;
    block[5] = &v9;
    block[6] = @"MRInfo";
    dispatch_sync(v3, block);
    v4 = v10;
    if (a2)
    {
      *a2 = v10[3];
      v4[3] = 0;
    }
  }

  else
  {
    APSLogErrorAt();
    *(v14 + 6) = -6735;
    v4 = v10;
  }

  v5 = v4[3];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(v14 + 6);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  return v6;
}

void APReceiverMediaRemoteXPCService_PostEvent(const void *a1, const void *a2, const __CFData *a3)
{
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  if (gLogCategory_APReceiverMediaRemoteXPCService <= 40 && (gLogCategory_APReceiverMediaRemoteXPCService != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v7 = Mutable;
    FigSimpleMutexCheckIsNotLockedOnThisThread();
    FigSimpleMutexCheckIsNotLockedOnThisThread();
    FigSimpleMutexLock();
    if ((gAPReceiverMediaRemoteService_6 & 1) == 0)
    {
      if (gLogCategory_APReceiverMediaRemoteXPCService <= 50 && (gLogCategory_APReceiverMediaRemoteXPCService != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (APSXPCClientSendCommandCreatingReply())
      {
        if (gLogCategory_APReceiverMediaRemoteXPCService <= 90 && (gLogCategory_APReceiverMediaRemoteXPCService != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        FigSimpleMutexUnlock();
        goto LABEL_56;
      }

      if (gLogCategory_APReceiverMediaRemoteXPCService <= 50 && (gLogCategory_APReceiverMediaRemoteXPCService != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      gAPReceiverMediaRemoteService_6 = 1;
    }

    FigSimpleMutexUnlock();
    if (CFEqual(a1, @"didReceiveMediaRemoteData"))
    {
      if (a3)
      {
        if (a2)
        {
          v8 = APReceiverMediaRemoteXPCService_copyCommChannelEntry(a2);
          if (v8)
          {
            v9 = v8;
            if (v8[2])
            {
              if (gLogCategory_APReceiverMediaRemoteXPCService <= 40 && (gLogCategory_APReceiverMediaRemoteXPCService != -1 || _LogCategory_Initialize()))
              {
                CFDataGetLength(a3);
                LogPrintF();
              }

              CFDictionarySetValue(v7, @"objectID", a2);
              CFDictionarySetValue(v7, @"clientUUID", v9[2]);
              CFDictionarySetValue(v7, @"data", a3);
              APReceiverMediaRemoteXPCService_enqueueAndPostEvent(a1, v7);
            }

            else
            {
              APSLogErrorAt();
            }

            CFRelease(v9);
            goto LABEL_38;
          }
        }
      }
    }

    else
    {
      if (!CFEqual(a1, @"didCloseCommChannel"))
      {
        if (gLogCategory_APReceiverMediaRemoteXPCService <= 50 && (gLogCategory_APReceiverMediaRemoteXPCService != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        goto LABEL_38;
      }

      if (a2)
      {
        CFDictionarySetValue(v7, @"objectID", a2);
        if (gLogCategory_APReceiverMediaRemoteXPCService <= 50 && (gLogCategory_APReceiverMediaRemoteXPCService != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        APReceiverMediaRemoteXPCService_enqueueAndPostEvent(a1, v7);
        goto LABEL_38;
      }
    }

LABEL_56:
    APSLogErrorAt();
LABEL_38:

    CFRelease(v7);
    return;
  }

  APSLogErrorAt();
}

uint64_t _APReceiverMediaRemoteXPCServiceCommChannelEntryGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPReceiverMediaRemoteXPCServiceCommChannelEntryTypeID = result;
  return result;
}

void _APReceiverMediaRemoteXPCServiceCommChannelEntryFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  a1[3] = 0;
  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
    a1[4] = 0;
  }
}

uint64_t APReceiverUIControllerGetClassID()
{
  if (APReceiverUIControllerGetClassID_once != -1)
  {
    dispatch_once(&APReceiverUIControllerGetClassID_once, &__block_literal_global_3701);
  }

  return APReceiverUIControllerGetClassID_classID;
}

uint64_t __APReceiverUIControllerGetClassID_block_invoke()
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&APReceiverUIControllerGetClassID_classDesc, ClassID, 1, &APReceiverUIControllerGetClassID_classID);
}

uint64_t APReceiverUIControllerGetTypeID()
{
  if (APReceiverUIControllerGetClassID_once != -1)
  {
    dispatch_once(&APReceiverUIControllerGetClassID_once, &__block_literal_global_3701);
  }

  return CMBaseClassGetCFTypeID();
}

void APReceiverAudioSessionGhostFinalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
    a1[3] = 0;
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
    a1[5] = 0;
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
  }

  free(a1);
}

void audioSession_handleMediaDataControlRequest_3715(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const void *a5, uint64_t a6)
{
  v19 = 0;
  v11 = *(a6 + 40);
  if (gLogCategory_APReceiverAudioSessionGhost <= 50 && (gLogCategory_APReceiverAudioSessionGhost != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v13 = Mutable;
    if (a3 <= 1718839393)
    {
      if (a3 == 1634562925)
      {
        CFStringGetTypeID();
        CFDictionaryGetTypedValue();
        goto LABEL_45;
      }

      if (a3 == 1718383464)
      {
        if (a5)
        {
          v14 = CFGetTypeID(a5);
          if (v14 == CFDictionaryGetTypeID())
          {
            v19 = APSAudioTransportTimeUtilsDecodeFromRequestResponseDictionary();
            if (!v19)
            {
              if (APSAudioTransportTimeIsValid())
              {
LABEL_13:
                CFDictionaryGetInt64Ranged();
LABEL_45:
                APMediaDataControlServerSendResponse(a1, a2, a4, v13, v19);
                goto LABEL_46;
              }

              goto LABEL_53;
            }

            goto LABEL_54;
          }
        }

        goto LABEL_41;
      }

LABEL_43:
      v18 = -6714;
      goto LABEL_44;
    }

    if (a3 == 1718839394)
    {
      if (*v11 == 103)
      {
        if (a5)
        {
          v17 = CFGetTypeID(a5);
          if (v17 == CFDictionaryGetTypeID())
          {
            if (CFDictionaryContainsKey(a5, @"flushFromSeq"))
            {
              CFDictionaryGetInt64Ranged();
              v19 = APSAudioTransportTimeUtilsDecodeFromRequestResponseDictionary();
              if (v19)
              {
                goto LABEL_54;
              }

              APSAudioTransportTimeIsValid();
            }

            v19 = APSAudioTransportTimeUtilsDecodeFromRequestResponseDictionary();
            if (v19)
            {
LABEL_54:
              APSLogErrorAt();
              goto LABEL_45;
            }

            if (APSAudioTransportTimeIsValid())
            {
              goto LABEL_13;
            }

LABEL_53:
            APSLogErrorAt();
            v18 = -72151;
            goto LABEL_44;
          }
        }

LABEL_41:
        APSLogErrorAt();
        v18 = -6756;
LABEL_44:
        v19 = v18;
        goto LABEL_45;
      }
    }

    else
    {
      if (a3 != 1936875892)
      {
        goto LABEL_43;
      }

      if (*v11 == 103)
      {
        if (a5)
        {
          v15 = CFGetTypeID(a5);
          if (v15 == CFDictionaryGetTypeID())
          {
            Int64Ranged = CFDictionaryGetInt64Ranged();
            if (Int64Ranged != 1)
            {
              *(v11 + 32) = Int64Ranged != 0;
              v19 = 0;
              if (!Int64Ranged && APSAudioTransportTimeIsValid())
              {
                APSAudioTransportTimeUtilsEncodeToRequestResponseDictionary();
              }

              goto LABEL_45;
            }

            v19 = APSAudioTransportTimeUtilsDecodeFromRequestResponseDictionary();
            if (v19)
            {
              goto LABEL_54;
            }

            if (APSAudioTransportTimeIsValid())
            {
              v19 = APSAudioTransportTimeUtilsDecodeFromRequestResponseDictionary();
              if (!v19)
              {
                CFDictionaryGetInt64Ranged();
                CFDictionaryGetInt64();
                CFDictionaryGetInt64();
                CFDictionaryGetInt64Ranged();
                *(v11 + 32) = 1;
                APMediaDataControlServerSendResponse(a1, a2, a4, v13, 0);
LABEL_46:
                CFRelease(v13);
                return;
              }

              goto LABEL_54;
            }

            goto LABEL_53;
          }
        }

        goto LABEL_41;
      }
    }

    APSLogErrorAt();
    goto LABEL_43;
  }

  APSLogErrorAt();

  APMediaDataControlServerSendResponse(a1, a2, a4, 0, -6728);
}

uint64_t APReceiverAudioSessionGhostStartPacketProcesser(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 40);
    v4 = 0;
    dispatch_sync_f(*(v1 + 112), &v3, controlServer_startInternal);
    if (v4)
    {
      APSLogErrorAt();
    }
  }

  return 0;
}

uint64_t APReceiverAudioSessionGhostStopPacketProcesser(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (!v1)
  {
    return 0;
  }

  v4 = *(a1 + 40);
  v5 = 0;
  dispatch_sync_f(*(v1 + 112), &v4, controlServer_stopInternal);
  v2 = v5;
  if (v5)
  {
    APSLogErrorAt();
  }

  return v2;
}

uint64_t APReceiverAudioSessionGhostFlushAudio(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _OWORD *a7)
{
  if (a7)
  {
    v7 = MEMORY[0x277CEA038];
    *a7 = *MEMORY[0x277CEA038];
    *(a7 + 12) = *(v7 + 12);
  }

  return 0;
}

uint64_t APReceiverAudioSessionGhostSetRateAndAnchorTime(uint64_t a1, int a2, uint64_t a3, __int128 *a4, uint64_t a5, _OWORD *a6, uint64_t a7)
{
  if (a1)
  {
    *(a1 + 32) = a2 != 0;
    if (a6)
    {
      v7 = *a4;
      *(a6 + 12) = *(a4 + 12);
      *a6 = v7;
    }

    result = 0;
    if (a7)
    {
      v9 = MEMORY[0x277CEA280];
      *a7 = *MEMORY[0x277CEA280];
      *(a7 + 16) = *(v9 + 16);
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960591;
  }

  return result;
}

uint64_t APReceiverAudioSessionGhostConvertProgressRTPTimeToSecond(uint64_t a1, int a2, int a3, int a4, double *a5, double *a6)
{
  if (a1)
  {
    APSAudioFormatDescriptionGetSampleRate();
    v12 = v11;
    APSAudioFormatDescriptionGetSampleRate();
    if (a5)
    {
      *a5 = (a3 - a2) / v12;
    }

    result = 0;
    if (a6)
    {
      *a6 = (a4 - a2) / v13;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960591;
  }

  return result;
}

uint64_t APReceiverAudioSessionGhostCopyProperty(uint64_t a1, CFTypeRef cf1, int *a3)
{
  if (a1)
  {
    if (CFEqual(cf1, @"MediaDataControlPort"))
    {
      result = CFNumberCreateInt64();
      if (result)
      {
        goto LABEL_10;
      }

      goto LABEL_20;
    }

    if (CFEqual(cf1, @"IsPlayingBufferedAudio"))
    {
      if (*a1 == 103)
      {
        v6 = MEMORY[0x277CBED28];
        if (!*(a1 + 32))
        {
          v6 = MEMORY[0x277CBED10];
        }

        result = CFRetain(*v6);
        goto LABEL_10;
      }

      APSLogErrorAt();
    }

    else
    {
      if (CFEqual(cf1, @"PlatformAudioLatency"))
      {
        Object = CFNumberGetObject();
        result = CFRetain(Object);
        if (result)
        {
LABEL_10:
          v8 = 0;
          goto LABEL_11;
        }

        goto LABEL_20;
      }

      if (CFEqual(cf1, @"AudioFormat"))
      {
        v10 = *(a1 + 24);
        if (v10)
        {
          result = CFRetain(v10);
          if (result)
          {
            goto LABEL_10;
          }
        }

LABEL_20:
        APSLogErrorAt();
        result = 0;
        v8 = -6728;
        goto LABEL_11;
      }

      if (gLogCategory_APReceiverAudioSessionGhost <= 50 && (gLogCategory_APReceiverAudioSessionGhost != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    result = 0;
    v8 = -72154;
  }

  else
  {
    APSLogErrorAt();
    result = 0;
    v8 = -6705;
  }

LABEL_11:
  if (a3)
  {
    *a3 = v8;
  }

  return result;
}

CFTypeRef APReceiverAudioSessionGhostCopyAudioBufferInfo(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  Empty = CFDictionaryGetEmpty();

  return CFRetain(Empty);
}

uint64_t APValeriaHelperGetTypeID()
{
  if (APValeriaHelperGetTypeID_once != -1)
  {
    dispatch_once(&APValeriaHelperGetTypeID_once, &__block_literal_global_3819);
  }

  return APValeriaHelperGetTypeID_typeID;
}

uint64_t __APValeriaHelperGetTypeID_block_invoke()
{
  APValeriaHelperGetTypeID_valeriaHelperClass = 0;
  unk_27E37ED70 = "APValeriaHelper";
  qword_27E37ED78 = 0;
  unk_27E37ED80 = 0;
  qword_27E37ED88 = vhelper_finalize;
  unk_27E37ED90 = 0u;
  unk_27E37EDA0 = 0u;
  result = _CFRuntimeRegisterClass();
  APValeriaHelperGetTypeID_typeID = result;
  return result;
}

void *vhelper_finalize(void *result)
{
  v1 = result;
  if (result[4])
  {
    if (gLogCategory_APValeriaHelper > 100)
    {
      goto LABEL_23;
    }

    if (gLogCategory_APValeriaHelper == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_23;
      }
    }

LABEL_22:
    result = LogPrintF();
LABEL_23:
    __break(1u);
    return result;
  }

  if (result[13])
  {
    if (gLogCategory_APValeriaHelper > 100)
    {
      goto LABEL_23;
    }

    if (gLogCategory_APValeriaHelper == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_22;
  }

  if (result[18])
  {
    if (gLogCategory_APValeriaHelper > 100)
    {
      goto LABEL_23;
    }

    if (gLogCategory_APValeriaHelper == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_22;
  }

  v2 = result[2];
  if (v2)
  {
    CFRelease(v2);
    v1[2] = 0;
  }

  FigSimpleMutexDestroy();
  v1[3] = 0;
  FigSimpleMutexDestroy();
  v1[12] = 0;
  result = FigSimpleMutexDestroy();
  v1[17] = 0;
  if (gLogCategory_APValeriaHelper <= 50)
  {
    if (gLogCategory_APValeriaHelper != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

uint64_t APValeriaHelperCreate(uint64_t a1, uint64_t *a2)
{
  LogSetAppID();
  if (APValeriaHelperGetTypeID_once != -1)
  {
    dispatch_once(&APValeriaHelperGetTypeID_once, &__block_literal_global_3819);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v4 = Instance;
    *(Instance + 128) = 0u;
    *(Instance + 144) = 0u;
    *(Instance + 96) = 0u;
    *(Instance + 112) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 80) = 0u;
    *(Instance + 32) = 0u;
    *(Instance + 48) = 0u;
    *(Instance + 16) = 0u;
    *(Instance + 24) = FigSimpleMutexCreate();
    *(v4 + 96) = FigSimpleMutexCreate();
    *(v4 + 136) = FigSimpleMutexCreate();
    *(v4 + 88) = FigGetCFPreferenceNumberWithDefault() != 0;
    if (gLogCategory_APValeriaHelper <= 50 && (gLogCategory_APValeriaHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    result = 0;
    *a2 = v4;
  }

  else
  {
    APSLogErrorAt();
    return 4294960568;
  }

  return result;
}

uint64_t APValeriaHelperDiscoveryStart(void *a1, uint64_t a2, uint64_t a3)
{
  FigSimpleMutexLock();
  if (!a2)
  {
    v11 = 4294960591;
LABEL_16:
    APSLogErrorAt();
    goto LABEL_13;
  }

  if (a1[4])
  {
    v11 = 4294960587;
    goto LABEL_16;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  FigCFDictionarySetInt32();
  v7 = FigRouteDiscovererXPCRemoteCreate();
  if (v7)
  {
    v11 = v7;
    goto LABEL_19;
  }

  active = vhelper_registerActiveHelper();
  a1[7] = active;
  if (!active)
  {
    v11 = 4294960588;
LABEL_19:
    APSLogErrorAt();
    if (!Mutable)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  a1[5] = a2;
  a1[6] = a3;
  a1[4] = 0;
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterAddListener();
  v9 = a1[4];
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v10)
  {
    v10(v9, *MEMORY[0x277D27038], *MEMORY[0x277D27010]);
  }

  if (gLogCategory_APValeriaHelper <= 50 && (gLogCategory_APValeriaHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v11 = 0;
  if (Mutable)
  {
LABEL_12:
    CFRelease(Mutable);
  }

LABEL_13:
  FigSimpleMutexUnlock();
  return v11;
}

uint64_t vhelper_registerActiveHelper()
{
  if (vhelper_getActiveHelpers_once != -1)
  {
    dispatch_once(&vhelper_getActiveHelpers_once, &__block_literal_global_41);
  }

  if (FigCFWeakReferenceTableAddValueAndGetKey())
  {
    APSLogErrorAt();
  }

  return 0;
}