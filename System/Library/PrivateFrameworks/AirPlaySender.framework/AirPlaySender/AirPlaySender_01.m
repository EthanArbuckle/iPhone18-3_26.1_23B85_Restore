uint64_t carEndpoint_SendCommand(const void *a1, const __CFString *a2, const __CFDictionary *a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigServer_IsAirplayd() && CFStringCompare(a2, @"modesChanged", 0) == kCFCompareEqualTo)
  {
    if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      carEndpoint_SendCommand_cold_1();
    }

    CMBaseObjectGetDerivedStorage();
    v27 = 0u;
    v28 = 0u;
    v13 = APStarkModeCreateStructRepresentation(a3, &v27);
    if (v13)
    {
      v14 = v13;
      carEndpoint_SendCommand_cold_2();
    }

    else
    {
      if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
      {
        carEndpoint_SendCommand_cold_3();
      }

      carEndpoint_takeActionOnModeChanges(a1, &v27);
      v14 = carEndpoint_packetizeCommandAndSend(a1, @"modesChanged", a3);
      if (gLogCategory_APEndpointCarPlay <= 20 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }
  }

  else if (IsAppleInternalBuild() && CFStringCompare(a2, @"runTest", 0) == kCFCompareEqualTo)
  {
    v31 = 0;
    v15 = CMBaseObjectGetDerivedStorage();
    if (a3)
    {
      v16 = v15;
      CFStringGetTypeID();
      TypedValue = CFDictionaryGetTypedValue();
      if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (CFStringCompare(TypedValue, @"testRequestUI", 0) == kCFCompareEqualTo)
      {
        CFDictionaryGetTypeID();
        v20 = CFDictionaryGetTypedValue();
        CFRetain(v20);
        CFRetain(a1);
        v21 = *(v16 + 512);
        *&v27 = MEMORY[0x277D85DD0];
        *(&v27 + 1) = 0x40000000;
        *&v28 = __carEndpoint_runTestCommand_block_invoke;
        *(&v28 + 1) = &__block_descriptor_tmp_1198;
        v29 = a1;
        v30 = v20;
        dispatch_async(v21, &v27);
      }
    }

    else
    {
      carEndpoint_SendCommand_cold_6();
    }

    v14 = 0;
  }

  else
  {
    v11 = carEndpoint_validateRuntimeFeaturesWithAccessory(a1, a2, 1);
    if (v11)
    {
      v14 = v11;
      carEndpoint_SendCommand_cold_7();
    }

    else
    {
      if (CFStringCompare(a2, @"stopSession", 0) == kCFCompareEqualTo || CFStringCompare(a2, @"resetSession", 0) == kCFCompareEqualTo)
      {
        v12 = *(DerivedStorage + 168);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = __carEndpoint_SendCommand_block_invoke;
        block[3] = &__block_descriptor_tmp_1185;
        block[4] = DerivedStorage;
        dispatch_sync(v12, block);
      }

      if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (a2)
      {
        v18 = carEndpoint_sendCommandInternal(a1, a2, a3, 0, 0);
        v14 = 0;
        if (v18)
        {
          v19 = v18;
          carEndpoint_SendCommand_cold_8();
          v14 = v19;
        }
      }

      else
      {
        carEndpoint_SendCommand_cold_9();
        v14 = 4294950576;
      }
    }
  }

  if (a4)
  {
    CFRetain(a1);
    v22 = *DerivedStorage;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 0x40000000;
    v24[2] = __carEndpoint_SendCommand_block_invoke_2;
    v24[3] = &__block_descriptor_tmp_1187;
    v24[4] = a4;
    v24[5] = a1;
    v25 = v14;
    v24[6] = a5;
    dispatch_async(v22, v24);
  }

  return v14;
}

uint64_t apsession_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionAirPlay <= 10 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!a4)
  {
    apsession_CopyProperty_cold_9();
    return 4294960591;
  }

  if (*DerivedStorage && !CFEqual(a2, @"InitialRTCStats"))
  {
    return 4294954511;
  }

  FigSimpleMutexLock();
  v9 = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"TransportControlStream"))
  {
    v10 = *(v9 + 328);
    if (v10)
    {
      goto LABEL_10;
    }

    apsession_CopyProperty_cold_1();
LABEL_43:
    ConnectionLatencyHint = 4294895466;
    goto LABEL_15;
  }

  if (CFEqual(a2, @"InitialVolumeDB"))
  {
    v12 = CFNumberCreate(a3, kCFNumberFloat32Type, (v9 + 400));
    *a4 = v12;
    if (!v12)
    {
      ConnectionLatencyHint = 4294895476;
      apsession_CopyProperty_cold_2();
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (CFEqual(a2, @"InitialIsMuted"))
  {
    v14 = MEMORY[0x277CBED28];
    if (!*(v9 + 404))
    {
      v14 = MEMORY[0x277CBED10];
    }

    goto LABEL_21;
  }

  if (CFEqual(a2, @"MediaControlClientPassword"))
  {
    v10 = *(v9 + 392);
    if (!v10)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (CFEqual(a2, @"TransportSession"))
  {
    v10 = *(v9 + 320);
    if (!v10)
    {
      ConnectionLatencyHint = 4294960587;
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  if (CFEqual(a2, @"IsConnectedOnPeerToPeerInterface"))
  {
    if (!*(v9 + 320))
    {
      apsession_CopyProperty_cold_4();
      ConnectionLatencyHint = 4294895467;
      goto LABEL_15;
    }

    if (!*(v9 + 328))
    {
      apsession_CopyProperty_cold_3();
      goto LABEL_43;
    }

    v15 = *MEMORY[0x277CE4FA0];
    v16 = *MEMORY[0x277CBECE8];
    CMBaseObject = FigTransportSessionGetCMBaseObject();
    if (CMBaseObjectCopyProperty(CMBaseObject, v15, v16, a4))
    {
      v14 = MEMORY[0x277CBED10];
LABEL_21:
      v10 = *v14;
      goto LABEL_10;
    }

LABEL_14:
    ConnectionLatencyHint = 0;
    goto LABEL_15;
  }

  if (CFEqual(a2, @"ControlConnectionInterfaceLatencyHint"))
  {
    v29 = 0;
    ConnectionLatencyHint = apsession_getConnectionLatencyHint(a1, &v29);
    Int64 = CFNumberCreateInt64();
    *a4 = Int64;
    if (!Int64)
    {
      ConnectionLatencyHint = 4294895476;
      apsession_CopyProperty_cold_5();
    }

    goto LABEL_15;
  }

  if (CFEqual(a2, @"KeyHolder"))
  {
    v10 = *(v9 + 224);
    if (!v10)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (CFEqual(a2, @"ShowInfo"))
  {
    v10 = apsession_copyShowInfo();
    goto LABEL_11;
  }

  if (CFEqual(a2, @"AuthenticationData"))
  {
    v22 = *(v9 + 408);
    if (v22)
    {
      v23 = APAuthenticationClientGetCMBaseObject(v22, v19, v20, v21);
      ConnectionLatencyHint = CMBaseObjectCopyProperty(v23, 0x283578490, a3, a4);
      goto LABEL_15;
    }

    goto LABEL_67;
  }

  if (CFEqual(a2, @"ActualTransportType"))
  {
    v24 = *(v9 + 488);
    v10 = @"UNKNOWN";
    if (v24 > 3)
    {
      if (v24 == 4)
      {
        v14 = kAPSenderSessionActualTransportType_NAN;
      }

      else
      {
        if (v24 != 8)
        {
          goto LABEL_10;
        }

        v14 = kAPSenderSessionActualTransportType_DirectLink;
      }

      goto LABEL_21;
    }

    if (v24 == 1)
    {
      v14 = kAPSenderSessionActualTransportType_Infra;
      goto LABEL_21;
    }

    if (v24 == 2)
    {
      v14 = kAPSenderSessionActualTransportType_AWDL;
      goto LABEL_21;
    }

    if (v24)
    {
      goto LABEL_10;
    }

LABEL_67:
    ConnectionLatencyHint = 4294954513;
    goto LABEL_15;
  }

  if (CFEqual(a2, @"InitialRTCStats"))
  {
    apsession_updateSenderSessionMetricsForRTCStats();
    Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], *(v9 + 496));
    *a4 = Copy;
    if (!Copy)
    {
      ConnectionLatencyHint = 4294895476;
      apsession_CopyProperty_cold_6();
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (CFEqual(a2, @"ReceiverSuppliedRTCStats"))
  {
    v10 = *(v9 + 504);
    if (!v10)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (CFEqual(a2, @"ActivationTimingInformation"))
  {
    v25 = *(v9 + 512);
    if (v25)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(a3, 0, v25);
      if (!MutableCopy)
      {
        ConnectionLatencyHint = 4294895476;
        apsession_CopyProperty_cold_7();
        goto LABEL_15;
      }
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(a3, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!MutableCopy)
      {
        ConnectionLatencyHint = 4294895476;
        apsession_CopyProperty_cold_8();
        goto LABEL_15;
      }
    }

    v27 = MutableCopy;
    CFDictionarySetInt64();
    ConnectionLatencyHint = 0;
    *a4 = v27;
    goto LABEL_15;
  }

  if (CFEqual(a2, @"EventRecorder"))
  {
    v10 = *(v9 + 160);
    if (!v10)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (CFEqual(a2, @"LocalNetworkIPAddress"))
  {
    v10 = *(v9 + 256);
    if (!v10)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (CFEqual(a2, @"PWDEncryptorEncryptionContext"))
  {
    v10 = *(v9 + 528);
    if (v10)
    {
      goto LABEL_10;
    }

LABEL_98:
    ConnectionLatencyHint = 4294954509;
    goto LABEL_15;
  }

  if (CFEqual(a2, @"PWDEncryptorEncryptionKeyID"))
  {
    v10 = *(v9 + 536);
    if (v10)
    {
      goto LABEL_10;
    }

    goto LABEL_98;
  }

  if (CFEqual(a2, @"PWDProtectionFlags"))
  {
    if (*(v9 + 544))
    {
      v10 = CFNumberCreateInt64();
      goto LABEL_11;
    }

    goto LABEL_98;
  }

  if (CFEqual(a2, @"GroupID"))
  {
    v10 = *(v9 + 552);
    if (!v10)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (!CFEqual(a2, @"MC2UCToken"))
  {
    if (!CFEqual(a2, @"ActiveStreamConnectionIDs"))
    {
      ConnectionLatencyHint = 4294954512;
      goto LABEL_15;
    }

    v10 = apsession_copyActiveStreamConnectionIDs();
    goto LABEL_11;
  }

  v10 = *(v9 + 16);
  if (v10)
  {
LABEL_10:
    v10 = CFRetain(v10);
  }

LABEL_11:
  ConnectionLatencyHint = 0;
  *a4 = v10;
LABEL_15:
  FigSimpleMutexUnlock();
  return ConnectionLatencyHint;
}

uint64_t __APStarkModeCreateStructRepresentation_block_invoke(void *a1, uint64_t a2)
{
  *(*(a1[4] + 8) + 24) = a2;
  *(*(a1[5] + 8) + 24) = CFDictionaryGetInt64();
  result = CFDictionaryGetInt64();
  *(*(a1[6] + 8) + 24) = result;
  v4 = *(*(a1[5] + 8) + 24);
  switch(v4)
  {
    case 1:
      v9 = *(*(a1[6] + 8) + 24);
      if (v9 == 2)
      {
        v10 = 1;
      }

      else
      {
        v10 = 2 * (v9 == 1);
      }

      *(*(a1[7] + 8) + 40) = v10;
      result = CFDictionaryGetInt64();
      if (result == -1)
      {
        v11 = 0;
      }

      else
      {
        result = CFDictionaryGetInt64();
        if (result == 1)
        {
          v11 = 10;
        }

        else
        {
          v11 = 11;
        }
      }

      *(*(a1[7] + 8) + 44) = v11;
      break;
    case 3:
      v7 = *(*(a1[6] + 8) + 24);
      if (v7 == 2)
      {
        v8 = 1;
      }

      else
      {
        v8 = 2 * (v7 == 1);
      }

      *(*(a1[7] + 8) + 52) = v8;
      break;
    case 2:
      v5 = *(*(a1[6] + 8) + 24);
      if (v5 == 2)
      {
        v6 = 1;
      }

      else
      {
        v6 = 2 * (v5 == 1);
      }

      *(*(a1[7] + 8) + 48) = v6;
      break;
  }

  return result;
}

uint64_t __APStarkModeCreateStructRepresentation_block_invoke_2(void *a1, uint64_t a2)
{
  *(*(a1[4] + 8) + 24) = a2;
  *(*(a1[5] + 8) + 24) = CFDictionaryGetInt64();
  result = CFDictionaryGetInt64();
  *(*(a1[6] + 8) + 24) = result;
  v4 = *(*(a1[5] + 8) + 24);
  if (v4 == 1)
  {
    v5 = a1 + 7;
    v9 = *(*(a1[6] + 8) + 24);
    if (v9 == 2)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2 * (v9 == 1);
    }

    *(*(a1[7] + 8) + 24) = v10;
    result = CFDictionaryGetInt64();
    v8 = 28;
  }

  else
  {
    if (v4 != 2)
    {
      return result;
    }

    v5 = a1 + 7;
    v6 = *(*(a1[6] + 8) + 24);
    if (v6 == 2)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2 * (v6 == 1);
    }

    *(*(a1[7] + 8) + 32) = v7;
    result = CFDictionaryGetInt64();
    v8 = 36;
  }

  if (result == 2)
  {
    v11 = 1;
  }

  else
  {
    result = CFDictionaryGetInt64();
    v11 = 2 * (result == 1);
  }

  *(*(*v5 + 8) + v8) = v11;
  return result;
}

void carEndpoint_takeActionOnModeChanges(const void *a1, _DWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  v8[0] = &v7;
  v8[1] = 0x3800000000;
  v9 = 0u;
  v10 = 0u;
  v5 = *(DerivedStorage + 168);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v6[2] = __carEndpoint_takeActionOnModeChanges_block_invoke;
  v6[3] = &unk_27849E768;
  v6[4] = &v7;
  v6[5] = DerivedStorage;
  v6[6] = a2;
  dispatch_sync(v5, v6);
  if (*(DerivedStorage + 57))
  {
    carEndpoint_takeActionOnModeChanges_cold_1(v8, a1, a2);
  }

  _Block_object_dispose(&v7, 8);
}

__n128 __carEndpoint_takeActionOnModeChanges_block_invoke(void *a1)
{
  v1 = *(a1[4] + 8);
  v2 = *(a1[5] + 380);
  *(v1 + 40) = *(a1[5] + 396);
  *(v1 + 24) = v2;
  v3 = a1[6];
  v4 = (a1[5] + 380);
  result = *v3;
  v6 = *(v3 + 16);
  *v4 = *v3;
  v4[1] = v6;
  return result;
}

CFTypeRef __carEndpoint_packetizeCommandAndSend_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 240);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t apsession_IsActive()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionAirPlay <= 30 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 306);
  FigSimpleMutexUnlock();
  return v1;
}

uint64_t mfiAuthentication_CopyProperty(int a1, CFTypeRef cf1, const __CFAllocator *a3, void *a4)
{
  if (!CFEqual(cf1, @"AuthenticationData"))
  {
    return 4294954512;
  }

  if (!*CMBaseObjectGetDerivedStorage())
  {
    v11 = 4294895493;
    mfiAuthentication_CopyProperty_cold_6();
    return v11;
  }

  if (!MFiSAP_CopyCertificateSerialNumber())
  {
    v12 = CFDataCreateWithBytesNoCopy(a3, 0, 0, *MEMORY[0x277CBECF0]);
    *a4 = v12;
    if (v12)
    {
      return 0;
    }

    mfiAuthentication_CopyProperty_cold_5();
    return 4294895496;
  }

  v6 = MFiSAP_CopyCertificate();
  if (v6)
  {
    v11 = v6;
    mfiAuthentication_CopyProperty_cold_1();
    return v11;
  }

  v7 = CFDataCreateWithBytesNoCopy(a3, 0, 0, *MEMORY[0x277CBECF0]);
  if (!v7)
  {
    mfiAuthentication_CopyProperty_cold_4();
    return 4294895496;
  }

  v8 = v7;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v9 = getMFAACreateCertificateSerialNumberSymbolLoc_ptr;
  v18 = getMFAACreateCertificateSerialNumberSymbolLoc_ptr;
  if (!getMFAACreateCertificateSerialNumberSymbolLoc_ptr)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 0x40000000;
    v14[2] = __getMFAACreateCertificateSerialNumberSymbolLoc_block_invoke;
    v14[3] = &unk_2784A0770;
    v14[4] = &v15;
    __getMFAACreateCertificateSerialNumberSymbolLoc_block_invoke(v14);
    v9 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v9)
  {
    apsession_appendControlSetupRequest_cold_9();
    goto LABEL_20;
  }

  v10 = v9(v8);
  *a4 = v10;
  if (!v10)
  {
LABEL_20:
    v11 = 4294895493;
    mfiAuthentication_CopyProperty_cold_2();
    goto LABEL_11;
  }

  v11 = 0;
LABEL_11:
  CFRelease(v8);
  return v11;
}

uint64_t OUTLINED_FUNCTION_10_1()
{
  result = 4294954514;
  *(v0 - 116) = -12782;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_7(_BYTE *a1, uint64_t a2, const __CFString *a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return APCarPlayAudioFormatsCopyFormatsForAudioType(a1, 103, a3, 0, va, 0);
}

uint64_t OUTLINED_FUNCTION_10_11(uint64_t a1)
{
  v2 = *(a1 + 40);

  return APEndpointDescriptionGetCMBaseObject(v2);
}

const __CFDictionary *airPlayDescription_copyEndpointInfoValue(uint64_t a1, const void *a2, const __CFDictionary **a3)
{
  result = *(CMBaseObjectGetDerivedStorage() + 24);
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      result = CFRetain(result);
    }
  }

  *a3 = result;
  return result;
}

uint64_t airPlayDescription_copyEndpointInfoValueCFString(uint64_t a1, const void *a2, void *a3)
{
  CMBaseObjectGetDerivedStorage();
  cf = 0;
  airPlayDescription_copyEndpointInfoValue(a1, a2, &cf);
  v6 = cf;
  if (cf && (v7 = CFGetTypeID(cf), v7 != CFStringGetTypeID()))
  {
    airPlayDescription_copyEndpointInfoValueCFString_cold_1(v6);
    return 4294895541;
  }

  else
  {
    result = 0;
    *a3 = v6;
  }

  return result;
}

uint64_t airPlayDescription_copyManufacturer()
{
  OUTLINED_FUNCTION_9_8();
  v5 = 0;
  airPlayDescription_copyEndpointInfoValueCFString(v1, @"manufacturer", &v5);
  v2 = v5;
  if (!v5)
  {
    v2 = OUTLINED_FUNCTION_5_16();
    if (!v2)
    {
      if (!airPlayDescription_isAppleReceiver(v1))
      {
        return 4294954512;
      }

      v2 = CFRetain(@"Apple");
      if (!v2)
      {
        return 4294954512;
      }
    }
  }

  v3 = 0;
  *v0 = v2;
  return v3;
}

uint64_t APCarPlayAudioFormatInfoGetDescription(uint64_t a1)
{
  if (a1)
  {
    return a1 + 16;
  }

  else
  {
    return 0;
  }
}

uint64_t airPlayDescription_copySourceVersion(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  CMBaseObjectGetDerivedStorage();
  memset(v8, 0, sizeof(v8));
  v3 = APAdvertiserInfoCopyProperty();
  v4 = v3;
  if (v3)
  {
    if (!CFStringGetCString(v3, v8, 256, 0x8000100u))
    {
      airPlayDescription_copySourceVersion_cold_1();
      v6 = 4294960534;
      goto LABEL_6;
    }

    TextToSourceVersion();
  }

  Int64 = CFNumberCreateInt64();
  if (!Int64)
  {
    airPlayDescription_copySourceVersion_cold_2();
    v6 = 4294960534;
    if (!v4)
    {
      return v6;
    }

    goto LABEL_6;
  }

  v6 = 0;
  *a2 = Int64;
  if (v4)
  {
LABEL_6:
    CFRelease(v4);
  }

  return v6;
}

void __carEndpoint_copyStateProperty_block_invoke(uint64_t a1)
{
  if (*(*(a1 + 40) + 176))
  {
    v18 = *(*(a1 + 32) + 8);
    v19 = -16723;
    goto LABEL_54;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC11F0]))
  {
    v2 = *(a1 + 40);
    if (*(v2 + 240))
    {
      **(a1 + 56) = CFNumberCreate(*(a1 + 64), kCFNumberSInt32Type, (v2 + 224));
      if (!**(a1 + 56))
      {
        __carEndpoint_copyStateProperty_block_invoke_cold_1();
      }

      return;
    }

    *(*(*(a1 + 32) + 8) + 24) = -12783;
    goto LABEL_12;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC1260]))
  {
    v3 = *(a1 + 40);
    if (*(v3 + 240) && *(v3 + 248))
    {
      v5 = *(a1 + 56);
      v4 = *(a1 + 64);
      CMBaseObject = APSenderSessionGetCMBaseObject();
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v7)
      {
        v8 = v7(CMBaseObject, @"AuthenticationData", v4, v5);
      }

      else
      {
        v8 = -12782;
      }

      *(*(*(a1 + 32) + 8) + 24) = v8;
      return;
    }

    goto LABEL_53;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC1268]))
  {
    v9 = *(a1 + 56);
    LODWORD(v39) = 0;
    CMBaseObjectGetDerivedStorage();
    v10 = APSGetFBOPropertyInt64();
    if (v10)
    {
      if (v10 == 8)
      {
        v11 = MEMORY[0x277CC0A68];
        goto LABEL_25;
      }

      if (v10 == 32)
      {
        v11 = MEMORY[0x277CC0A60];
LABEL_25:
        *v9 = CFRetain(*v11);
        if (gLogCategory_APEndpointCarPlay <= 30 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        goto LABEL_31;
      }

      v13 = -12782;
    }

    else
    {
      v13 = -12783;
    }

    LODWORD(v39) = v13;
    APSLogErrorAt();
LABEL_31:
    *(*(*(a1 + 32) + 8) + 24) = v39;
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      __carEndpoint_copyStateProperty_block_invoke_cold_4();
    }

    return;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC1270]))
  {
    v12 = MEMORY[0x277CC0A70];
LABEL_38:
    v16 = *v12;
LABEL_39:
    v16 = CFRetain(v16);
    goto LABEL_40;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC1278]))
  {
    v14 = MEMORY[0x277CBED28];
    v15 = *(*(a1 + 40) + 348);
    goto LABEL_35;
  }

  if (CFEqual(*(a1 + 48), @"EndpointStatus"))
  {
    **(a1 + 56) = CFNumberCreate(*(a1 + 64), kCFNumberSInt32Type, (*(a1 + 40) + 228));
    if (!**(a1 + 56))
    {
      __carEndpoint_copyStateProperty_block_invoke_cold_5();
    }

    return;
  }

  if (CFEqual(*(a1 + 48), @"Features"))
  {
    *(*(*(a1 + 32) + 8) + 24) = APEndpointDescriptionCopyFeatures(*(*(a1 + 40) + 8), *(a1 + 56));
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      __carEndpoint_copyStateProperty_block_invoke_cold_6();
    }

    return;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC1570]))
  {
    v17 = *(a1 + 40);
    if (!*(v17 + 162))
    {
LABEL_53:
      v18 = *(*(a1 + 32) + 8);
      v19 = -12783;
LABEL_54:
      *(v18 + 24) = v19;
      return;
    }

    **(a1 + 56) = CFStringCreateWithFormat(*(a1 + 64), 0, @"%@-%u", *(v17 + 32), *(v17 + 224));
    if (!**(a1 + 56))
    {
      __carEndpoint_copyStateProperty_block_invoke_cold_7();
    }

    return;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC1228]))
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x2000000000;
    v42 = 0;
    FigCFSetApplyBlock();
    if (*(v40 + 24))
    {
      v20 = MEMORY[0x277CBED28];
    }

    else
    {
      v20 = MEMORY[0x277CBED10];
    }

    **(a1 + 56) = CFRetain(*v20);
    _Block_object_dispose(&v39, 8);
    return;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC1348]))
  {
    v21 = *(a1 + 40);
    if (!*(v21 + 240) || (v22 = *(v21 + 296)) == 0)
    {
      *(*(*(a1 + 32) + 8) + 24) = -12783;
LABEL_12:

      APSLogErrorAt();
      return;
    }

    *(*(*(a1 + 32) + 8) + 24) = APHIDClientCopyHIDs(v22, *(a1 + 64), *(a1 + 56));
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      __carEndpoint_copyStateProperty_block_invoke_cold_8();
    }

    return;
  }

  if (CFEqual(*(a1 + 48), @"Statistics"))
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], *(*(a1 + 40) + 368), MEMORY[0x277CBF128]);
    if (Mutable)
    {
      v24 = Mutable;
      v25 = *(a1 + 40);
      v26 = v25[46];
      if (v25[45] >= v26)
      {
        if (v26)
        {
          for (i = 0; i < v26; ++i)
          {
            CFArrayAppendValue(v24, *(v25[44] + 8 * ((i + v25[45]) % v26)));
            v25 = *(a1 + 40);
            v26 = v25[46];
          }
        }
      }

      else
      {
        v27 = *v25[44];
        if (v27)
        {
          v28 = 8;
          do
          {
            CFArrayAppendValue(v24, v27);
            v27 = *(*(*(a1 + 40) + 352) + v28);
            v28 += 8;
          }

          while (v27);
        }
      }

      **(a1 + 56) = v24;
    }

    else
    {
      __carEndpoint_copyStateProperty_block_invoke_cold_9();
    }

    return;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC1370]))
  {
    v14 = MEMORY[0x277CBED28];
    v15 = *(*(a1 + 40) + 177);
    goto LABEL_35;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC1410]))
  {
    v14 = MEMORY[0x277CBED28];
    v15 = *(*(a1 + 40) + 329);
    goto LABEL_35;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC1458]))
  {
    if (!APSGetFBOPropertyInt64())
    {
      v18 = *(*(a1 + 32) + 8);
      v19 = -12782;
      goto LABEL_54;
    }

    v14 = MEMORY[0x277CBED28];
    v15 = *(*(a1 + 40) + 330);
    goto LABEL_35;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC1468]))
  {
    goto LABEL_87;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC1498]))
  {
    v12 = MEMORY[0x277CC11E0];
    goto LABEL_38;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC14A8]))
  {
LABEL_87:
    v30 = APSGetFBOPropertyInt64();
    v12 = MEMORY[0x277CBED28];
    if (!v30)
    {
      v12 = MEMORY[0x277CBED10];
    }

    goto LABEL_38;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC14B8]))
  {
    v16 = *(*(a1 + 40) + 280);
    if (!v16)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (CFEqual(*(a1 + 48), @"EndpointShowInfo"))
  {
    carEndpoint_copyShowInfoDictionary(*(a1 + 72), *(a1 + 64), *(a1 + 56));
    *(*(*(a1 + 32) + 8) + 24) = 0;
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      __carEndpoint_copyStateProperty_block_invoke_cold_10();
    }

    return;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC14E0]))
  {
    *(*(*(a1 + 32) + 8) + 24) = carEndpoint_copyStreams(*(a1 + 72), *(a1 + 64), *(a1 + 56));
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      __carEndpoint_copyStateProperty_block_invoke_cold_11();
    }

    return;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC1590]))
  {
    v16 = *(*(a1 + 40) + 336);
    if (!v16)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (CFEqual(*(a1 + 48), @"IsCarInSpeechState"))
  {
    v31 = *(a1 + 40);
    if (v31[99] != 1)
    {
      goto LABEL_114;
    }

    goto LABEL_109;
  }

  if (CFEqual(*(a1 + 48), @"IsiOSInSpeechState"))
  {
    v31 = *(a1 + 40);
    if (v31[101] || v31[99] != 2)
    {
      goto LABEL_114;
    }

LABEL_109:
    if (v31[100])
    {
      v12 = MEMORY[0x277CBED28];
      goto LABEL_38;
    }

LABEL_114:
    v12 = MEMORY[0x277CBED10];
    goto LABEL_38;
  }

  if (CFEqual(*(a1 + 48), @"VoiceTriggerTimestamp"))
  {
    **(a1 + 56) = CFNumberCreateInt64();
    if (!**(a1 + 56))
    {
      __carEndpoint_copyStateProperty_block_invoke_cold_12();
    }

    return;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC1250]))
  {
    v14 = MEMORY[0x277CBED28];
    v15 = *(*(a1 + 40) + 444);
LABEL_35:
    if (v15)
    {
      v12 = v14;
    }

    else
    {
      v12 = MEMORY[0x277CBED10];
    }

    goto LABEL_38;
  }

  if (CFEqual(*(a1 + 48), @"VoiceActivationType"))
  {
    CFNumberGetTypeID();
    **(a1 + 56) = CFDictionaryGetTypedValue();
    v32 = **(a1 + 56);
    if (v32)
    {

      CFRetain(v32);
    }
  }

  else
  {
    if (CFEqual(*(a1 + 48), @"DisplayCornerMasks"))
    {
      v16 = *(*(a1 + 40) + 464);
      if (!v16)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    if (!CFEqual(*(a1 + 48), *MEMORY[0x277CC1290]))
    {
      if (!CFEqual(*(a1 + 48), @"CurrentCarPlayModesAndStates"))
      {
        v18 = *(*(a1 + 32) + 8);
        v19 = -12784;
        goto LABEL_54;
      }

      v38 = CFGetAllocator(*(a1 + 72));
      v16 = CFDataCreate(v38, (*(a1 + 40) + 380), 32);
      if (!v16)
      {
        __carEndpoint_copyStateProperty_block_invoke_cold_16();
        return;
      }

LABEL_40:
      **(a1 + 56) = v16;
      return;
    }

    if (*(*(a1 + 40) + 58))
    {
      StreamInfoForType = carEndpoint_getStreamInfoForType();
      if (StreamInfoForType && *(StreamInfoForType + 16))
      {
        v34 = *MEMORY[0x277CC18B8];
        v36 = *(a1 + 56);
        v35 = *(a1 + 64);
        v37 = FigEndpointStreamGetCMBaseObject();
        *(*(*(a1 + 32) + 8) + 24) = CMBaseObjectCopyProperty(v37, v34, v35, v36);
        if (*(*(*(a1 + 32) + 8) + 24))
        {
          __carEndpoint_copyStateProperty_block_invoke_cold_13();
        }
      }

      else
      {
        __carEndpoint_copyStateProperty_block_invoke_cold_14();
      }
    }

    else
    {
      __carEndpoint_copyStateProperty_block_invoke_cold_15(a1);
    }
  }
}

uint64_t OUTLINED_FUNCTION_6_5()
{

  return CFPropertyListCreateFormatted();
}

uint64_t OUTLINED_FUNCTION_6_7()
{

  return kdebug_trace();
}

uint64_t OUTLINED_FUNCTION_6_8(double a1)
{
  *(v1 - 48) = a1;
  *(v1 - 40) = 0;

  return CMBaseObjectGetDerivedStorage();
}

__n128 OUTLINED_FUNCTION_6_10()
{
  result = *v0;
  *&STACK[0x280] = *v0;
  STACK[0x290] = v0[1].n128_u64[0];
  return result;
}

uint64_t __carEndpoint_getScreenStreamForDisplayUUID_block_invoke(uint64_t a1, uint64_t a2)
{
  result = FigCFEqual();
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = *(a2 + 16);
  }

  return result;
}

uint64_t audioStream_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  keys[1] = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamAudio <= 30 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*DerivedStorage && !FigCFEqual() && !FigCFEqual())
  {
    audioStream_CopyProperty_cold_1();
    return 4294950534;
  }

  if (!a2)
  {
    audioStream_CopyProperty_cold_12();
    return 4294950536;
  }

  if (!a4)
  {
    audioStream_CopyProperty_cold_11();
    return 4294950536;
  }

  if (CFEqual(a2, @"IsTimelineEstablished") || CFEqual(a2, *MEMORY[0x277CEA0C8]))
  {
    v9 = MEMORY[0x277CBED28];
    v10 = *(DerivedStorage + 184);
    goto LABEL_13;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1900]))
  {
    v12 = 0;
    *a4 = *(DerivedStorage + 40);
    return v12;
  }

  if (CFEqual(a2, *MEMORY[0x277CC18B0]))
  {
    v9 = MEMORY[0x277CC1930];
LABEL_15:
    v11 = *v9;
LABEL_16:
    v11 = CFRetain(v11);
LABEL_17:
    v12 = 0;
    *a4 = v11;
    return v12;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1880]) || CFEqual(a2, @"IsPlaying"))
  {
    v9 = MEMORY[0x277CBED28];
    v10 = *(DerivedStorage + 185);
    goto LABEL_13;
  }

  if (CFEqual(a2, @"IsLocalStream") || CFEqual(a2, *MEMORY[0x277CC1870]))
  {
LABEL_28:
    v9 = MEMORY[0x277CBED10];
    goto LABEL_15;
  }

  if (!CFEqual(a2, *MEMORY[0x277CC18C8]))
  {
    if (CFEqual(a2, @"SupportedAudioFormatList"))
    {
      FigSimpleMutexLock();
      *a4 = CFRetain(*(DerivedStorage + 104));
      FigSimpleMutexUnlock();
      return 0;
    }

    if (CFEqual(a2, @"EndpointStreamShowInfo"))
    {
      v11 = audioStream_copyShowInfo_0();
      goto LABEL_17;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1878]))
    {
      v11 = *(DerivedStorage + 32);
      goto LABEL_16;
    }

    if (CFEqual(a2, @"StreamID"))
    {
      Int64 = CFNumberCreateInt64();
      *a4 = Int64;
      if (Int64)
      {
        return 0;
      }

      audioStream_CopyProperty_cold_2();
    }

    else if (CFEqual(a2, @"SupportedAPAudioFormats"))
    {
      FigSimpleMutexLock();
      valuePtr = APSAudioFormatDescriptionListGetLegacyFormatMask();
      FigSimpleMutexUnlock();
      v15 = CFNumberCreate(a3, kCFNumberSInt64Type, &valuePtr);
      *a4 = v15;
      if (v15)
      {
        return 0;
      }

      audioStream_CopyProperty_cold_3();
    }

    else
    {
      if (CFEqual(a2, *MEMORY[0x277CEA0D8]))
      {
        v9 = MEMORY[0x277CBED28];
        v10 = *(DerivedStorage + 130);
LABEL_13:
        if (!v10)
        {
          v9 = MEMORY[0x277CBED10];
        }

        goto LABEL_15;
      }

      if (CFEqual(a2, *MEMORY[0x277CEA0B8]))
      {
        v16 = CFNumberCreateInt64();
        *a4 = v16;
        if (v16)
        {
          return 0;
        }

        audioStream_CopyProperty_cold_4();
      }

      else
      {
        if (CFEqual(a2, *MEMORY[0x277CEA0D0]))
        {
          v11 = *(DerivedStorage + 24);
          if (!v11)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }

        if (CFEqual(a2, @"RTCStats"))
        {
          v17 = *MEMORY[0x277CBECE8];
          values = @"AudioRealTime";
          keys[0] = @"sessionType";
          v18 = CFDictionaryCreate(v17, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (v18)
          {
            v19 = v18;
            v27 = v18;
            v20 = CFArrayCreate(v17, &v27, 1, MEMORY[0x277CBF128]);
            CFRelease(v19);
            if (v20)
            {
              v12 = 0;
              *a4 = v20;
              return v12;
            }

            audioStream_CopyProperty_cold_5();
          }

          else
          {
            audioStream_CopyProperty_cold_6();
          }

          return 4294950526;
        }

        if (CFEqual(a2, *MEMORY[0x277CC1840]))
        {
          v12 = APAudioEngineVendorVend(*(DerivedStorage + 64), a4);
          if (v12)
          {
            audioStream_CopyProperty_cold_7();
          }

          return v12;
        }

        if (CFEqual(a2, @"HoseRegistrar"))
        {
          v11 = *(DerivedStorage + 208);
          if (!v11)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }

        if (CFEqual(a2, @"Cryptor"))
        {
          v11 = *(DerivedStorage + 224);
          if (!v11)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }

        if (CFEqual(a2, @"DynamicLatencyOffsetM"))
        {
          if (!*(DerivedStorage + 185))
          {
            audioStream_CopyProperty_cold_9();
            return 4294950533;
          }

          v21 = CFNumberCreate(a3, kCFNumberSInt32Type, (DerivedStorage + 248));
          *a4 = v21;
          if (v21)
          {
            return 0;
          }

          audioStream_CopyProperty_cold_8();
        }

        else
        {
          if (!CFEqual(a2, @"EndpointIDs"))
          {
            if (!CFEqual(a2, @"IsSidePlayStream"))
            {
              if (gLogCategory_APEndpointStreamAudio <= 30 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              return 4294954512;
            }

            goto LABEL_28;
          }

          v23 = *(DerivedStorage + 48);
          v22 = (DerivedStorage + 48);
          if (v23)
          {
            v24 = CFArrayCreate(a3, v22, 1, MEMORY[0x277CBF128]);
          }

          else
          {
            Empty = APSCFArrayGetEmpty();
            v24 = CFRetain(Empty);
          }

          *a4 = v24;
          if (v24)
          {
            return 0;
          }

          audioStream_CopyProperty_cold_10();
        }
      }
    }

    return 4294950535;
  }

  return audioStream_createSupportedPCMFormatArray_0(a1, a3, a4);
}

uint64_t audioStream_CopyProperty_0(uint64_t a1, const void *a2, const __CFAllocator *MaxChannelCount, CFDictionaryRef *a4)
{
  keys[1] = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v40 = 0;
  cf = 0;
  v39 = 0;
  if (gLogCategory_APEndpointStreamBufferedAudio <= 30 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v9 = MEMORY[0x277CC1878];
  if (*DerivedStorage && !FigCFEqual() && !FigCFEqual())
  {
    APSLogErrorAt();
    MaxChannelCount = 0;
    DerivedStorage = 4294950534;
    goto LABEL_30;
  }

  if (!a4)
  {
    APSLogErrorAt();
    MaxChannelCount = 0;
    DerivedStorage = 4294950536;
    goto LABEL_30;
  }

  if (!CFEqual(a2, *MEMORY[0x277CE9FC0]))
  {
    if (CFEqual(a2, @"IsTimelineEstablished"))
    {
      v13 = MEMORY[0x277CBED28];
      v14 = *(DerivedStorage + 224);
      goto LABEL_18;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1900]))
    {
      v13 = MEMORY[0x277CC1968];
LABEL_27:
      StringValue = *v13;
LABEL_28:
      CFRetain(StringValue);
LABEL_29:
      OUTLINED_FUNCTION_23_2();
      *a4 = v16;
      goto LABEL_30;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1880]))
    {
      v13 = MEMORY[0x277CBED28];
      v14 = *(DerivedStorage + 208);
      goto LABEL_18;
    }

    if (CFEqual(a2, @"IsPlaying"))
    {
      v13 = MEMORY[0x277CBED28];
      v14 = *(DerivedStorage + 209);
      goto LABEL_18;
    }

    if (CFEqual(a2, @"IsLocalStream"))
    {
LABEL_44:
      v13 = MEMORY[0x277CBED10];
      goto LABEL_27;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1870]))
    {
LABEL_46:
      v13 = MEMORY[0x277CBED28];
      goto LABEL_27;
    }

    if (CFEqual(a2, *MEMORY[0x277CC18C8]))
    {
      DerivedStorage = audioStream_createSupportedPCMFormatArray(a1, MaxChannelCount, a4);
LABEL_49:
      MaxChannelCount = 0;
      goto LABEL_30;
    }

    if (CFEqual(a2, @"EndpointStreamShowInfo"))
    {
      audioStream_copyShowInfo();
      goto LABEL_29;
    }

    if (CFEqual(a2, *v9))
    {
      StringValue = *(DerivedStorage + 40);
      goto LABEL_28;
    }

    if (CFEqual(a2, *MEMORY[0x277CE9F58]))
    {
      Int64 = CFNumberCreateInt64();
      *a4 = Int64;
      if (Int64)
      {
        goto LABEL_59;
      }

      goto LABEL_83;
    }

    if (CFEqual(a2, *MEMORY[0x277CE9F70]))
    {
      StringValue = FigCFDictionaryGetStringValue();
      if (!StringValue)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    if (CFEqual(a2, *MEMORY[0x277CE9FA0]))
    {
      StringValue = FigCFDictionaryGetBooleanValue();
      if (!StringValue)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    if (CFEqual(a2, *MEMORY[0x277CE9F68]) || CFEqual(a2, *MEMORY[0x277CE9F60]))
    {
      StringValue = FigCFDictionaryGetNumberValue();
      if (!StringValue)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    if (CFEqual(a2, *MEMORY[0x277CE9FB0]))
    {
      if (APSGetFBOPropertyInt64() || APEndpointDescriptionHasFeature(*(DerivedStorage + 80), 89))
      {
        goto LABEL_46;
      }

LABEL_76:
      v19 = APSGetFBOPropertyInt64();
      v13 = MEMORY[0x277CBED28];
      if (!v19)
      {
        v13 = MEMORY[0x277CBED10];
      }

      goto LABEL_27;
    }

    if (CFEqual(a2, *MEMORY[0x277CE9F98]) || CFEqual(a2, *MEMORY[0x277CE9FF0]))
    {
      goto LABEL_76;
    }

    if (CFEqual(a2, *MEMORY[0x277CE9F90]))
    {
      FigSimpleMutexLock();
      v20 = *(DerivedStorage + 296);
      if (!v20)
      {
LABEL_82:
        *a4 = v20;
        FigSimpleMutexUnlock();
        goto LABEL_59;
      }

LABEL_81:
      v20 = CFRetain(v20);
      goto LABEL_82;
    }

    if (CFEqual(a2, *MEMORY[0x277CE9FE0]))
    {
      FigSimpleMutexLock();
      v20 = *(DerivedStorage + 304);
      if (!v20)
      {
        goto LABEL_82;
      }

      goto LABEL_81;
    }

    if (CFEqual(a2, *MEMORY[0x277CE9F88]))
    {
      FigSimpleMutexLock();
      v21 = MEMORY[0x277CBED28];
      if (!*(DerivedStorage + 312))
      {
        v21 = MEMORY[0x277CBED10];
      }

      v20 = *v21;
      if (!*v21)
      {
        goto LABEL_82;
      }

      goto LABEL_81;
    }

    if (CFEqual(a2, @"Manufacturer"))
    {
      v22 = *(DerivedStorage + 80);
      v23 = kAPEndpointDescriptionProperty_Manufacturer;
      goto LABEL_98;
    }

    if (CFEqual(a2, @"Model") || CFEqual(a2, *MEMORY[0x277CE9FC8]))
    {
      v22 = *(DerivedStorage + 80);
      v23 = kAPEndpointDescriptionProperty_Model;
      goto LABEL_98;
    }

    if (CFEqual(a2, @"OSVersion"))
    {
      v22 = *(DerivedStorage + 80);
      v23 = kAPEndpointDescriptionProperty_OSVersion;
      goto LABEL_98;
    }

    if (CFEqual(a2, @"OSBuildVersion") || CFEqual(a2, *MEMORY[0x277CE9FD8]))
    {
      v22 = *(DerivedStorage + 80);
      v23 = kAPEndpointDescriptionProperty_OSBuildVersion;
LABEL_98:
      DerivedStorage = *v23;
      CMBaseObject = APEndpointDescriptionGetCMBaseObject(v22);
      if (CMBaseObjectCopyProperty(CMBaseObject, DerivedStorage, MaxChannelCount, a4))
      {
        OUTLINED_FUNCTION_23_2();
        *a4 = 0;
        goto LABEL_30;
      }

      goto LABEL_59;
    }

    if (CFEqual(a2, @"StreamID"))
    {
      v25 = CFNumberCreateInt64();
      *a4 = v25;
      if (v25)
      {
        goto LABEL_59;
      }

      goto LABEL_83;
    }

    if (FigCFEqual())
    {
      FigSimpleMutexLock();
      MaxChannelCount = APSAudioFormatDescriptionListGetMaxChannelCount();
      FigSimpleMutexUnlock();
      goto LABEL_110;
    }

    if (CFEqual(a2, @"SupportedAPAudioFormats"))
    {
      FigSimpleMutexLock();
      valuePtr = APSAudioFormatDescriptionListGetLegacyFormatMask();
      FigSimpleMutexUnlock();
      v26 = CFNumberCreate(MaxChannelCount, kCFNumberSInt64Type, &valuePtr);
      *a4 = v26;
      if (v26)
      {
        DerivedStorage = 0;
      }

      else
      {
        APSLogErrorAt();
        DerivedStorage = 4294950535;
      }

      goto LABEL_49;
    }

    if (CFEqual(a2, @"SupportedAudioFormatList"))
    {
      FigSimpleMutexLock();
      APSAudioFormatDescriptionListGetForBufferedSender();
      MaxChannelCount = APSAudioFormatDescriptionListCreateIntersectionList();
      FigSimpleMutexUnlock();
      if (!MaxChannelCount)
      {
        goto LABEL_29;
      }

      DerivedStorage = MaxChannelCount;
      goto LABEL_147;
    }

    if (FigCFEqual())
    {
      FigSimpleMutexLock();
      APSAudioFormatDescriptionListGetForBufferedSender();
      IntersectionList = APSAudioFormatDescriptionListCreateIntersectionList();
      FigSimpleMutexUnlock();
      if (IntersectionList)
      {
        DerivedStorage = IntersectionList;
      }

      else
      {
        FigEndpointStreamAudioFormatDescriptionArray = APSAudioFormatDescriptionListCreateFigEndpointStreamAudioFormatDescriptionArray();
        if (!FigEndpointStreamAudioFormatDescriptionArray)
        {
          goto LABEL_29;
        }

        DerivedStorage = FigEndpointStreamAudioFormatDescriptionArray;
      }

      goto LABEL_147;
    }

    if (FigCFEqual())
    {
      FigSimpleMutexLock();
      APSAudioFormatDescriptionListGetForBufferedSender();
      v29 = APSAudioFormatDescriptionListCreateIntersectionList();
      FigSimpleMutexUnlock();
      if (v29)
      {
        DerivedStorage = v29;
      }

      else
      {
        DerivedStorage = APSAudioFormatDescriptionListCopyRichestFormatAsFigEndpointStreamAudioFormatDescription();
        if (!DerivedStorage)
        {
          MaxChannelCount = 0;
          *a4 = v39;
          v39 = 0;
          goto LABEL_30;
        }
      }

      goto LABEL_147;
    }

    if (FigCFEqual())
    {
      DerivedStorage = audioStream_copySupportedAudioCapabilities(a1, a4);
      if (!DerivedStorage)
      {
        goto LABEL_49;
      }

LABEL_147:
      APSLogErrorAt();
      goto LABEL_49;
    }

    if (FigCFEqual())
    {
      FigSimpleMutexLock();
      v20 = *(DerivedStorage + 336);
      if (!v20)
      {
        goto LABEL_82;
      }

      goto LABEL_81;
    }

    if (CFEqual(a2, *MEMORY[0x277CEA0D0]) || CFEqual(a2, *MEMORY[0x277CE9FD0]))
    {
      StringValue = *(DerivedStorage + 32);
      if (!StringValue)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    if (CFEqual(a2, @"RTCStats"))
    {
      DerivedStorage = *MEMORY[0x277CBECE8];
      values = @"AudioBuffered";
      keys[0] = @"sessionType";
      v30 = CFDictionaryCreate(DerivedStorage, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      MaxChannelCount = v30;
      if (!v30)
      {
        APSLogErrorAt();
        goto LABEL_84;
      }

      v42 = v30;
      v31 = CFArrayCreate(DerivedStorage, &v42, 1, MEMORY[0x277CBF128]);
      CFRelease(MaxChannelCount);
      if (v31)
      {
        OUTLINED_FUNCTION_23_2();
        *a4 = v31;
        goto LABEL_30;
      }

LABEL_83:
      APSLogErrorAt();
      MaxChannelCount = 0;
LABEL_84:
      DerivedStorage = 4294950535;
      goto LABEL_30;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1840]))
    {
      DerivedStorage = APAudioEngineVendorVend(*(DerivedStorage + 72), a4);
      if (!DerivedStorage)
      {
        goto LABEL_49;
      }

      goto LABEL_147;
    }

    if (CFEqual(a2, @"HoseRegistrar"))
    {
      StringValue = *(DerivedStorage + 248);
      if (!StringValue)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    if (CFEqual(a2, *MEMORY[0x277CE9FE8]))
    {
      v32 = *(DerivedStorage + 80);
      v33 = kAPEndpointDescriptionProperty_SupportsReceiverChoosesAnchor;
    }

    else
    {
      if (!CFEqual(a2, *MEMORY[0x277CC18E0]))
      {
        if (CFEqual(a2, @"SupportsAPAP"))
        {
          v13 = MEMORY[0x277CBED28];
          v14 = *(DerivedStorage + 96);
        }

        else if (CFEqual(a2, @"SupportsAPAT"))
        {
          v13 = MEMORY[0x277CBED28];
          v14 = *(DerivedStorage + 97);
        }

        else
        {
          if (CFEqual(a2, @"EndpointIDs"))
          {
            v34 = *(DerivedStorage + 48);
            DerivedStorage += 48;
            if (v34)
            {
              v35 = CFArrayCreate(MaxChannelCount, DerivedStorage, 1, MEMORY[0x277CBF128]);
            }

            else
            {
              Empty = APSCFArrayGetEmpty();
              v35 = CFRetain(Empty);
            }

            *a4 = v35;
            if (v35)
            {
              goto LABEL_59;
            }

            goto LABEL_83;
          }

          if (CFEqual(a2, *MEMORY[0x277CC18D8]))
          {
            if (!APSSettingsIsFeatureEnabled())
            {
              goto LABEL_44;
            }

            v32 = *(DerivedStorage + 80);
            v33 = kAPEndpointDescriptionProperty_SupportsMixedSampleRates;
            goto LABEL_167;
          }

          if (!CFEqual(a2, @"IsSidePlayStream"))
          {
            if (!CFEqual(a2, @"NumberOfSubStreams"))
            {
              if (!CFEqual(a2, *MEMORY[0x277CC1838]))
              {
                if (!CFEqual(a2, *MEMORY[0x277CC18B0]))
                {
                  if (gLogCategory_APEndpointStreamBufferedAudio <= 30 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF();
                  }

                  MaxChannelCount = 0;
                  DerivedStorage = 4294954512;
                  goto LABEL_30;
                }

                v13 = MEMORY[0x277CC1928];
                goto LABEL_27;
              }

              goto LABEL_46;
            }

LABEL_110:
            FigCFNumberCreateUInt32();
            goto LABEL_29;
          }

          v13 = MEMORY[0x277CBED28];
          v14 = *(DerivedStorage + 115);
        }

LABEL_18:
        if (!v14)
        {
          v13 = MEMORY[0x277CBED10];
        }

        goto LABEL_27;
      }

      v32 = *(DerivedStorage + 80);
      v33 = kAPEndpointDescriptionProperty_SupportsReceiverSideSoundCheck;
    }

LABEL_167:
    DerivedStorage = *v33;
    v36 = APEndpointDescriptionGetCMBaseObject(v32);
    if (CMBaseObjectCopyProperty(v36, DerivedStorage, MaxChannelCount, a4))
    {
      goto LABEL_44;
    }

LABEL_59:
    OUTLINED_FUNCTION_23_2();
    goto LABEL_30;
  }

  if (*(DerivedStorage + 114))
  {
    MaxChannelCount = 0;
    DerivedStorage = 4294954509;
    goto LABEL_30;
  }

  FigSimpleMutexLock();
  v10 = *(DerivedStorage + 192);
  if (!v10)
  {
    FigSimpleMutexUnlock();
    MaxChannelCount = 0;
    goto LABEL_24;
  }

  MaxChannelCount = CFRetain(v10);
  FigSimpleMutexUnlock();
  if (!MaxChannelCount)
  {
LABEL_24:
    DerivedStorage = 4294954513;
    goto LABEL_30;
  }

  v11 = FigTransportStreamGetCMBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v12)
  {
    DerivedStorage = v12(v11, *MEMORY[0x277CE5018], *MEMORY[0x277CBECE8], a4);
    if (!DerivedStorage)
    {
      goto LABEL_30;
    }
  }

  else
  {
    DerivedStorage = 4294954514;
  }

  APSLogErrorAt();
LABEL_30:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (MaxChannelCount)
  {
    CFRelease(MaxChannelCount);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  return DerivedStorage;
}

Float64 OUTLINED_FUNCTION_23_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMTime *time, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 timea, uint64_t time_16)
{
  timea = *(v16 + 64);
  time_16 = *(v16 + 80);

  return CMTimeGetSeconds(&timea);
}

void OUTLINED_FUNCTION_23_8(uint64_t a1, uint64_t a2, const void *a3)
{

  CFDictionarySetValue(v3, v4, a3);
}

uint64_t APCarPlayAudioFormatInfoGetHALDescription(uint64_t a1)
{
  if (a1)
  {
    return a1 + 56;
  }

  else
  {
    return 0;
  }
}

uint64_t APCarPlayAudioFormatInfoGetStreamType(uint64_t result)
{
  if (result)
  {
    return *(result + 104);
  }

  return result;
}

uint64_t APCarPlayAudioFormatInfoGetLatencyInfo(uint64_t a1)
{
  if (a1)
  {
    return a1 + 120;
  }

  else
  {
    return 0;
  }
}

uint64_t apsession_setupStreamCreatingResponseInternal(uint64_t a1)
{
  v73[2] = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionAirPlay <= 40 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apsession_setupStreamCreatingResponseInternal_cold_1();
  }

  if (*DerivedStorage)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v4 = (v3 - 111) > 0x13 || ((1 << (v3 - 111)) & 0x80201) == 0;
  if (v4 && apsession_registryContainsStream())
  {
    return 0;
  }

  v5 = apsession_ensureStartedInternal(*a1);
  if (v5)
  {
    v28 = v5;
    apsession_setupStreamCreatingResponseInternal_cold_2();
LABEL_197:
    apsession_dispatchPostFailedNotification(*a1);
    return v28;
  }

  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  appended = 0;
  v10 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v70 = 0;
  v73[0] = 0;
  v73[1] = 0;
  v11 = APSGetFBOPropertyInt64();
  if (gLogCategory_APSenderSessionAirPlay <= 30 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apsession_setupStreamCreatingResponseInternal_cold_3();
  }

  if (!apsession_isCancelled())
  {
    apsession_copyTransportControlStream(v6, &cf);
    appended = 0;
    if (!cf)
    {
      apsession_setupStreamCreatingResponseInternal_cold_20();
      v67 = 0;
      goto LABEL_91;
    }

    v65 = v9;
    v12 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      if (!*(v10 + 193) && (appended = apsession_appendControlSetupRequest(v6, Mutable, 0)) != 0)
      {
        apsession_setupStreamCreatingResponseInternal_cold_5();
      }

      else
      {
        theArray = CFArrayCreateMutable(v12, 0, MEMORY[0x277CBF128]);
        if (theArray)
        {
          if (v8)
          {
            MutableCopy = CFDictionaryCreateMutableCopy(v12, 0, v8);
          }

          else
          {
            MutableCopy = CFDictionaryCreateMutable(v12, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          }

          v15 = MutableCopy;
          if (MutableCopy)
          {
            CFDictionarySetInt64();
            v67 = 0;
            v16 = v7 - 96;
            if ((v7 - 96) <= 0xF)
            {
              if (((1 << v16) & 0xCF1) != 0)
              {
                if (v11)
                {
                  UUIDGet();
                  v67 = bswap64(v73[0]);
                  CFDictionarySetInt64();
                }

                else
                {
                  v67 = 0;
                }
              }

              else if (((1 << v16) & 0xC000) != 0)
              {
                UUIDGet();
                v67 = bswap64(v73[0]);
                CFDictionarySetInt64();
                if (*(v10 + 72) != 5)
                {
                  v17 = FigVirtualDisplayCopyDefaultTimestampInfo();
                  if (v17)
                  {
                    v18 = v17;
                    CFDictionarySetValue(v15, @"timestampInfo", v17);
                    CFRelease(v18);
                  }
                }

                if (v7 == 110 && gLogCategory_APSenderSessionAirPlay <= 30 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
                {
                  apsession_setupStreamCreatingResponseInternal_cold_6();
                }
              }
            }

            CFArrayAppendValue(theArray, v15);
            CFDictionarySetValue(Mutable, @"streams", theArray);
            if (gLogCategory_APSenderSessionAirPlay <= 10 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            APSEventRecorderRecordEvent();
            appended = APTransportStreamSendPlistMessageCreatingPlistReply();
            APSEventRecorderRecordEvent();
            if (appended)
            {
              apsession_setupStreamCreatingResponseInternal_cold_7();
            }

            else
            {
              if (gLogCategory_APSenderSessionAirPlay <= 10 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              if (apsession_isCancelled())
              {
                apsession_setupStreamCreatingResponseInternal_cold_8();
              }

              else
              {
                CFDictionaryGetInt64();
                appended = 0;
                CFArrayGetTypeID();
                TypedValue = CFDictionaryGetTypedValue();
                if (CFArrayGetCount(TypedValue) == 1)
                {
                  CFDictionaryGetTypeID();
                  TypedValueAtIndex = CFArrayGetTypedValueAtIndex();
                  if (v7 == CFDictionaryGetInt64())
                  {
                    CFDictionaryGetInt64();
                    appended = 0;
                    LODWORD(v71) = 0;
                    v21 = CMBaseObjectGetDerivedStorage();
                    v22 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                    if (v22)
                    {
                      v23 = v22;
                      CFDictionarySetInt64();
                      CFDictionarySetInt64();
                      CFDictionarySetInt64();
                      v24 = CFStringCreateF();
                      if (v71)
                      {
                        apsession_setupStreamCreatingResponseInternal_cold_15();
                      }

                      else
                      {
                        FigSimpleMutexLock();
                        CFDictionaryAddValue(*(v21 + 576), v24, v23);
                        FigSimpleMutexUnlock();
                      }

                      v25 = v65;
                      CFRelease(v23);
                      if (v24)
                      {
                        CFRelease(v24);
                      }
                    }

                    else
                    {
                      apsession_setupStreamCreatingResponseInternal_cold_16();
                      v25 = v65;
                    }

                    if (v7 == 103)
                    {
                      FigSimpleMutexLock();
                      if (*(v10 + 328))
                      {
                        APSSetFBOPropertyInt64();
                      }

                      if (*(v10 + 336))
                      {
                        APSSetFBOPropertyInt64();
                      }

                      FigSimpleMutexUnlock();
                    }

                    *(v10 + 193) = 1;
                    if (v25)
                    {
                      v26 = theArray;
                      if (TypedValueAtIndex)
                      {
                        v27 = CFRetain(TypedValueAtIndex);
                      }

                      else
                      {
                        v27 = 0;
                      }

                      *v25 = v27;
                      goto LABEL_83;
                    }

                    goto LABEL_82;
                  }

                  apsession_setupStreamCreatingResponseInternal_cold_13();
                }

                else
                {
                  apsession_setupStreamCreatingResponseInternal_cold_10();
                }
              }
            }
          }

          else
          {
            apsession_setupStreamCreatingResponseInternal_cold_17();
          }

          v67 = 0;
LABEL_82:
          v26 = theArray;
          goto LABEL_83;
        }

        apsession_setupStreamCreatingResponseInternal_cold_18();
      }
    }

    else
    {
      apsession_setupStreamCreatingResponseInternal_cold_19();
    }

    v67 = 0;
    v15 = 0;
    v26 = 0;
    goto LABEL_83;
  }

  apsession_setupStreamCreatingResponseInternal_cold_4();
  v67 = 0;
  v15 = 0;
  v26 = 0;
  Mutable = 0;
LABEL_83:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_91:
  if (v70)
  {
    CFRelease(v70);
  }

  v28 = appended;
  if (appended)
  {
    apsession_setupStreamCreatingResponseInternal_cold_21();
    goto LABEL_197;
  }

  v29 = *(a1 + 8);
  v31 = *(a1 + 32);
  v30 = *(a1 + 40);
  v32 = CMBaseObjectGetDerivedStorage();
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v73[0] = 0;
  cf = 0;
  v33 = APSGetFBOPropertyInt64();
  v34 = v33;
  if (!v33 && *(v32 + 114) && !*(v32 + 224))
  {
    if (v31)
    {
      v28 = 0;
      *v31 = 0;
      goto LABEL_175;
    }

LABEL_167:
    v28 = 0;
    goto LABEL_175;
  }

  v35 = *(v32 + 224);
  if (!v35)
  {
    apsession_setupStreamCreatingResponseInternal_cold_33();
    v28 = 4294895475;
    goto LABEL_175;
  }

  if (v29 <= 105)
  {
    if (v29 > 101)
    {
      if ((v29 - 102) >= 2)
      {
        goto LABEL_155;
      }
    }

    else if (v29 != 96)
    {
      if (v29 == 100)
      {
        if (!v33)
        {
          goto LABEL_163;
        }

        v53 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (!v53)
        {
          v28 = 4294954514;
          goto LABEL_174;
        }

        v54 = v53(v35, v67, 32, &v71, 32, &v72);
        if (v54)
        {
          v28 = v54;
          goto LABEL_174;
        }

        v55 = APSCryptorChaCha20Poly1305Create();
        if (v55)
        {
          v28 = v55;
          apsession_setupStreamCreatingResponseInternal_cold_27();
          goto LABEL_175;
        }

        v56 = APSCryptorChaCha20Poly1305Create();
        if (v56)
        {
          v28 = v56;
          apsession_setupStreamCreatingResponseInternal_cold_28();
          goto LABEL_175;
        }
      }

      else
      {
        if (v29 != 101)
        {
          goto LABEL_155;
        }

        if (v33)
        {
          v36 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (v36)
          {
            v37 = v36(v35, v67, 32, 0, 32, &v72);
            if (!v37)
            {
              v38 = APSCryptorChaCha20Poly1305Create();
              if (v38)
              {
                v28 = v38;
                apsession_setupStreamCreatingResponseInternal_cold_26();
                goto LABEL_175;
              }

              goto LABEL_163;
            }

            v28 = v37;
          }

          else
          {
            v28 = 4294954514;
          }

          goto LABEL_174;
        }
      }

      goto LABEL_163;
    }

    v39 = *(CMBaseObjectGetVTable() + 16);
    if (v34)
    {
      v40 = *(v39 + 56);
      if (!v40)
      {
        v28 = 4294954514;
        goto LABEL_174;
      }

      v41 = v40(v35, v67, 32, 0, 32, &v72);
      if (v41)
      {
        v28 = v41;
        goto LABEL_174;
      }

      v42 = APSCryptorChaCha20Poly1305Create();
      if (v42)
      {
        v28 = v42;
        apsession_setupStreamCreatingResponseInternal_cold_29();
        goto LABEL_175;
      }

      if (gLogCategory_APSenderSessionAirPlay > 40 || gLogCategory_APSenderSessionAirPlay == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_163;
      }
    }

    else
    {
      v50 = *(v39 + 16);
      if (!v50)
      {
        v28 = 4294954514;
        goto LABEL_174;
      }

      v51 = v50(v35, &v72, v73);
      if (v51)
      {
        v28 = v51;
        goto LABEL_174;
      }

      v52 = APSCryptorCBCCreate();
      if (v52)
      {
        v28 = v52;
        apsession_setupStreamCreatingResponseInternal_cold_30();
        goto LABEL_175;
      }

      if (gLogCategory_APSenderSessionAirPlay > 40 || gLogCategory_APSenderSessionAirPlay == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_163;
      }
    }

    apsession_setupStreamCreatingResponseInternal_cold_31();
    goto LABEL_163;
  }

  if (v29 <= 109)
  {
    if (v29 == 106)
    {
      if (!v33)
      {
        goto LABEL_163;
      }

      v57 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (!v57)
      {
        v28 = 4294954514;
        goto LABEL_174;
      }

      v58 = v57(v35, v67, 32, 0, 32, &v72);
      if (v58)
      {
        v28 = v58;
        goto LABEL_174;
      }

      v59 = APSCryptorChaCha20Poly1305Create();
      if (v59)
      {
        v28 = v59;
        apsession_setupStreamCreatingResponseInternal_cold_25();
        goto LABEL_175;
      }
    }

    else
    {
      if (v29 != 107)
      {
        goto LABEL_155;
      }

      if (v33)
      {
        v43 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v43)
        {
          v44 = v43(v35, v67, 32, &v71, 32, 0);
          if (!v44)
          {
            v45 = APSCryptorChaCha20Poly1305Create();
            if (v45)
            {
              v28 = v45;
              apsession_setupStreamCreatingResponseInternal_cold_24();
              goto LABEL_175;
            }

            goto LABEL_163;
          }

          v28 = v44;
        }

        else
        {
          v28 = 4294954514;
        }

        goto LABEL_174;
      }
    }

LABEL_163:
    if (v31)
    {
      *v31 = v70;
      v70 = 0;
    }

    if (v30)
    {
      v28 = 0;
      *v30 = cf;
      cf = 0;
      goto LABEL_175;
    }

    goto LABEL_167;
  }

  if ((v29 - 110) < 2)
  {
    v46 = *(CMBaseObjectGetVTable() + 16);
    if (v34)
    {
      v47 = *(v46 + 56);
      if (v47)
      {
        v48 = v47(v35, v67, 32, 0, 32, &v72);
        if (!v48)
        {
          v49 = APSCryptorChaCha20Poly1305Create();
          if (v49)
          {
            v28 = v49;
            apsession_setupStreamCreatingResponseInternal_cold_22();
            goto LABEL_175;
          }

          goto LABEL_163;
        }

        v28 = v48;
      }

      else
      {
        v28 = 4294954514;
      }

LABEL_174:
      APSLogErrorAt();
      goto LABEL_175;
    }

    v60 = *(v46 + 40);
    if (!v60)
    {
      v28 = 4294954514;
      goto LABEL_174;
    }

    v61 = v60(v35, v67, &v72, v73);
    if (v61)
    {
      v28 = v61;
      goto LABEL_174;
    }

    v62 = APSCryptorCTRCreate();
    if (v62)
    {
      v28 = v62;
      apsession_setupStreamCreatingResponseInternal_cold_23();
      goto LABEL_175;
    }

    goto LABEL_163;
  }

  if (v29 == 120 || v29 == 130)
  {
    goto LABEL_163;
  }

LABEL_155:
  v28 = 4294895471;
  if (gLogCategory_APSenderSessionAirPlay <= 90 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apsession_setupStreamCreatingResponseInternal_cold_32();
  }

LABEL_175:
  if (v71)
  {
    CFRelease(v71);
  }

  if (v72)
  {
    CFRelease(v72);
  }

  if (v73[0])
  {
    CFRelease(v73[0]);
  }

  if (v70)
  {
    CFRelease(v70);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v28)
  {
    apsession_setupStreamCreatingResponseInternal_cold_34();
    goto LABEL_197;
  }

  restarted = apsession_restartKeepAliveInDifferentModeIfNeeded(*a1);
  if (restarted)
  {
    v28 = restarted;
    apsession_setupStreamCreatingResponseInternal_cold_35();
    goto LABEL_197;
  }

  if (gLogCategory_APSenderSessionAirPlay <= 40 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apsession_setupStreamCreatingResponseInternal_cold_36();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  return 0;
}

uint64_t apsession_isCancelled()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 307);
  FigSimpleMutexUnlock();
  return v1;
}

uint64_t airPlayDescription_hasFeatureInternal(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v5 = 0;
  if (airPlayDescription_copyFeaturesInternal(a1, &v5))
  {
    APSLogErrorAt();
    HasFeature = 0;
    v2 = v5;
    if (!v5)
    {
      return HasFeature;
    }

    goto LABEL_3;
  }

  v2 = v5;
  HasFeature = APSFeaturesHasFeature();
  if (v2)
  {
LABEL_3:
    CFRelease(v2);
  }

  return HasFeature;
}

uint64_t airPlayDescription_copyFeaturesInternal(uint64_t a1, uint64_t *a2)
{
  CMBaseObjectGetDerivedStorage();
  v4 = APAdvertiserInfoCopyProperty();
  if (!v4)
  {
    v15 = 0;
    CMBaseObjectGetDerivedStorage();
    PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
    Mutable = APSFeaturesCreateMutable();
    if (!Mutable)
    {
      airPlayDescription_copyFeaturesInternal_cold_6();
      v8 = 4294960568;
      goto LABEL_47;
    }

    v11 = Mutable;
    if (!PropertyInt64Sync)
    {
      goto LABEL_14;
    }

    APSFeaturesSetFeature();
    if ((PropertyInt64Sync & 4) != 0)
    {
      APSFeaturesSetFeature();
      if ((PropertyInt64Sync & 8) == 0)
      {
LABEL_11:
        if ((PropertyInt64Sync & 2) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_35;
      }
    }

    else if ((PropertyInt64Sync & 8) == 0)
    {
      goto LABEL_11;
    }

    APSFeaturesSetFeature();
    if ((PropertyInt64Sync & 2) == 0)
    {
LABEL_12:
      if (PropertyInt64Sync)
      {
LABEL_13:
        APSFeaturesSetFeature();
      }

LABEL_14:
      if (!APSFeaturesHasFeature() && !APSFeaturesHasFeature() && !APSFeaturesHasFeature() && !APSFeaturesHasFeature())
      {
        if (gLogCategory_APEndpointDescriptionAirPlay <= 60 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
        {
          airPlayDescription_copyFeaturesInternal_cold_5();
        }

        goto LABEL_40;
      }

      v12 = CFObjectGetPropertyInt64Sync();
      if ((v12 & 2) != 0)
      {
        APSFeaturesSetFeature();
        if ((v12 & 0x10) == 0)
        {
LABEL_20:
          if ((v12 & 1) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }
      }

      else if ((v12 & 0x10) == 0)
      {
        goto LABEL_20;
      }

      APSFeaturesSetFeature();
      if ((v12 & 1) == 0)
      {
LABEL_22:
        if (APSFeaturesHasFeature() || APSFeaturesHasFeature() || APSFeaturesHasFeature())
        {
LABEL_41:
          *a2 = v11;
          v8 = v15;
          if (!v15)
          {
            return v8;
          }

LABEL_47:
          APSLogErrorAt();
          return v8;
        }

        v14 = 0;
        airPlayDescription_copyName(a1, &v14);
        APSFeaturesCopyStringRepresentation();
        if (gLogCategory_APEndpointDescriptionAirPlay <= 60 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
        {
          airPlayDescription_copyFeaturesInternal_cold_4();
        }

        if (v14)
        {
          CFRelease(v14);
        }

LABEL_40:
        APSFeaturesClearAllFeatures();
        goto LABEL_41;
      }

LABEL_21:
      APSFeaturesSetFeature();
      goto LABEL_22;
    }

LABEL_35:
    APSFeaturesSetFeature();
    if ((PropertyInt64Sync & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v5 = v4;
  MutableCopy = APSFeaturesCreateMutableCopy();
  if (MutableCopy)
  {
    v7 = MutableCopy;
    if (!airPlayDescription_isSourceVersionAtLeast(a1, 0x1E9998u))
    {
      APSFeaturesClearFeature();
      APSFeaturesClearFeature();
    }

    v8 = 0;
    *a2 = v7;
  }

  else
  {
    airPlayDescription_copyFeaturesInternal_cold_1();
    v8 = 4294960568;
  }

  CFRelease(v5);
  return v8;
}

uint64_t coreUtilsPairing_DeriveKey()
{
  if (*(CMBaseObjectGetDerivedStorage() + 8))
  {
    v0 = PairingSessionDeriveKey();
    if (v0)
    {
      coreUtilsPairing_DeriveKey_cold_1();
    }
  }

  else
  {
    coreUtilsPairing_DeriveKey_cold_2();
    return 4294895524;
  }

  return v0;
}

uint64_t apsession_restartKeepAliveInDifferentModeIfNeeded(uint64_t a1)
{
  if (*(CMBaseObjectGetDerivedStorage() + 72) != 5)
  {
    return 0;
  }

  KeepAliveMode = apsession_getKeepAliveMode();
  v3 = apsession_ensureKeepAliveStarted(a1, KeepAliveMode);
  if (v3)
  {
    apsession_restartKeepAliveInDifferentModeIfNeeded_cold_1();
  }

  return v3;
}

void __carEndpoint_handleSenderSessionStarted_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 228))
  {
    if (gLogCategory_APEndpointCarPlay <= 90)
    {
      if (gLogCategory_APEndpointCarPlay != -1 || (v3 = _LogCategory_Initialize(), v2 = *(a1 + 40), v3))
      {
        LogPrintF();
        v2 = *(a1 + 40);
      }
    }
  }

  *(v2 + 248) = 1;
  *(*(*(a1 + 32) + 8) + 24) = *(v2 + 224);

  carEndpoint_updateActiveStreamConnectionIDs();
}

uint64_t OUTLINED_FUNCTION_3_3(uint64_t a1)
{
  v2 = *(a1 + 16);

  return APEndpointDescriptionGetCMBaseObject(v2);
}

uint64_t OUTLINED_FUNCTION_3_5()
{

  return CMBaseObjectGetDerivedStorage();
}

uint64_t OUTLINED_FUNCTION_3_6()
{

  return CFDictionaryGetInt64Ranged();
}

uint64_t OUTLINED_FUNCTION_3_11()
{

  return LogPrintF();
}

uint64_t OUTLINED_FUNCTION_105()
{

  return LogPrintF();
}

uint64_t OUTLINED_FUNCTION_3_16()
{

  return APSAudioFormatDescriptionListCopyDebugString();
}

void __carAudioStream_resume_block_invoke_2(void *a1)
{
  v208 = 0;
  v209 = &v208;
  v210 = 0x2000000000;
  v211 = 0;
  v204 = 0;
  v205 = &v204;
  v206 = 0x2000000000;
  v207 = 0;
  v2 = a1[9];
  v3 = "\n";
  if (*(v2 + 176))
  {
    goto LABEL_307;
  }

  v4 = *(v2 + 120);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carAudioStream_resume_block_invoke_3;
  block[3] = &unk_27849B550;
  block[4] = &v208;
  block[5] = &v204;
  block[6] = a1[4];
  block[7] = v2;
  dispatch_sync(v4, block);
  if (*(v209 + 24))
  {
    goto LABEL_307;
  }

  if (!*(v205 + 24))
  {
    APSLogErrorAt();
LABEL_307:
    v17 = 0;
    goto LABEL_230;
  }

  OUTLINED_FUNCTION_14_1();
  if (v6 ^ v7 | v29 && (v5 != -1 || OUTLINED_FUNCTION_4()))
  {
    v186 = a1[10];
    v187 = *(a1[9] + 40);
    OUTLINED_FUNCTION_2();
  }

  v8 = a1[10];
  v9 = *(*(a1[5] + 8) + 24);
  LODWORD(v222) = 0;
  CMBaseObjectGetDerivedStorage();
  *&theData = 0;
  buffer = 0u;
  v224 = 0u;
  v10 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v10)
  {
    APSLogErrorAt();
    v17 = -6709;
    goto LABEL_227;
  }

  v11 = v10;
  if (FigCFEqual())
  {
    v12 = APSGetFBOPropertyInt64();
    if (v222)
    {
      goto LABEL_26;
    }

    if (v12)
    {
      if (gLogCategory_APEndpointStreamCarPlayAudio > 60)
      {
        goto LABEL_28;
      }

      if (gLogCategory_APEndpointStreamCarPlayAudio == -1)
      {
        OUTLINED_FUNCTION_8();
        if (!_LogCategory_Initialize())
        {
          goto LABEL_28;
        }
      }

      OUTLINED_FUNCTION_8();
LABEL_16:
      LogPrintF();
LABEL_28:
      LODWORD(v222) = -6709;
      goto LABEL_29;
    }
  }

  v13 = CFGetAllocator(v8);
  CMBaseObject = FigEndpointGetCMBaseObject();
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v15)
  {
    LODWORD(v222) = -12782;
    goto LABEL_26;
  }

  LODWORD(v222) = v15(CMBaseObject, @"CurrentCarPlayModesAndStates", v13, &theData);
  if (v222)
  {
LABEL_26:
    APSLogErrorAt();
    goto LABEL_29;
  }

  v227.location = 0;
  v227.length = 32;
  CFDataGetBytes(theData, v227, &buffer);
  if (FigCFEqual())
  {
    if (DWORD2(v224) == 2)
    {
      AudioType = APCarPlayAudioFormatInfoGetAudioType(v9);
      if (CFEqual(AudioType, @"speechRecognition"))
      {
        if (gLogCategory_APEndpointStreamCarPlayAudio > 90)
        {
          goto LABEL_28;
        }

        if (gLogCategory_APEndpointStreamCarPlayAudio == -1)
        {
          OUTLINED_FUNCTION_8();
          if (!_LogCategory_Initialize())
          {
            goto LABEL_28;
          }
        }

        v186 = v8;
        OUTLINED_FUNCTION_8();
        goto LABEL_16;
      }
    }
  }

LABEL_29:
  CFRelease(v11);
  if (theData)
  {
    CFRelease(theData);
  }

  v17 = v222;
  if (v222)
  {
    goto LABEL_227;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 208) = 0u;
  *(DerivedStorage + 224) = 0u;
  *(DerivedStorage + 240) = 0u;
  *(DerivedStorage + 256) = 0u;
  *(DerivedStorage + 272) = 0u;
  *(DerivedStorage + 288) = 0u;
  *(DerivedStorage + 304) = 0u;
  *(DerivedStorage + 320) = 0u;
  *(DerivedStorage + 336) = 0;
  *(DerivedStorage + 344) = 0;
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_5_3();
  FigNotificationCenterAddWeakListener();
  v19 = a1[10];
  v20 = *(*(a1[6] + 8) + 24);
  v21 = *(*(a1[7] + 8) + 24);
  v22 = *(*(a1[5] + 8) + 24);
  v23 = CMBaseObjectGetDerivedStorage();
  if (!(v20 | v21) || !v22)
  {
    APSLogErrorAt();
    v17 = -16760;
    goto LABEL_226;
  }

  v24 = v23;
  *(v23 + 192) = CFRetain(v22);
  Description = APCarPlayAudioFormatInfoGetDescription(v22);
  APCarPlayAudioFormatInfoGetLatencyInfo(v22);
  if (!v20)
  {
    goto LABEL_47;
  }

  *(v24 + 400) = 1;
  v26 = CFGetAllocator(v19);
  v27 = CMSimpleQueueCreate(v26, 20, (v24 + 408));
  if (v27)
  {
    v17 = v27;
    goto LABEL_225;
  }

  v28 = APSSetFBOPropertyInt64();
  v29 = v28 == -12784 || v28 == -12782;
  if (!v29)
  {
    v17 = v28;
    if (v28)
    {
      goto LABEL_225;
    }
  }

  v30 = CFRetain(v20);
  *(v24 + 368) = v30;
  v31 = *(CMBaseObjectGetVTable() + 16);
  if (*v31 < 2uLL)
  {
    v17 = -12781;
    goto LABEL_225;
  }

  v32 = v31[2];
  if (!v32)
  {
    v17 = -12782;
LABEL_225:
    APSLogErrorAt();
LABEL_226:
    carAudioStream_teardownAudioProcessing();
    goto LABEL_227;
  }

  v33 = v32(v30, Description);
  if (v33)
  {
    v17 = v33;
    goto LABEL_225;
  }

  v34 = *(v24 + 368);
  v35 = *(CMBaseObjectGetVTable() + 16);
  if (*v35 < 2uLL)
  {
    v17 = -12781;
    goto LABEL_225;
  }

  v36 = v35[3];
  if (!v36)
  {
    v17 = -12782;
    goto LABEL_225;
  }

  v37 = v36(v34);
  if (v37)
  {
    v17 = v37;
    goto LABEL_225;
  }

LABEL_47:
  if (!v21)
  {
    goto LABEL_67;
  }

  v38 = CFRetain(v21);
  *(v24 + 432) = v38;
  v39 = *(CMBaseObjectGetVTable() + 16);
  if (*v39 < 2uLL)
  {
    v17 = -12781;
    goto LABEL_225;
  }

  v40 = v39[2];
  if (!v40)
  {
    v17 = -12782;
    goto LABEL_225;
  }

  v41 = v40(v38, Description);
  if (v41)
  {
    v17 = v41;
    goto LABEL_225;
  }

  if (*(Description + 8) != 1819304813)
  {
    APCarPlayAudioFormatInfoGetStreamType(v22);
    if (gLogCategory_APEndpointStreamCarPlayAudio <= 50 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || OUTLINED_FUNCTION_4()))
    {
      v186 = v19;
      v187 = *(v24 + 40);
      OUTLINED_FUNCTION_2();
    }

    v42 = APSSetFBOPropertyInt64();
    if (v42)
    {
      v17 = v42;
      goto LABEL_225;
    }
  }

  if (APCarPlayAudioFormatInfoGetStreamType(v22) == 102)
  {
    v43 = *(v24 + 432);
    v44 = APAudioEngineGetCMBaseObject(*(v24 + 16));
    v45 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v45)
    {
      v17 = -12782;
      goto LABEL_225;
    }

    v46 = v45(v44, @"audioSource", v43);
    if (v46)
    {
      v17 = v46;
      goto LABEL_225;
    }
  }

  else
  {
    v47 = APSSetFBOPropertyInt64();
    if (v47)
    {
      v17 = v47;
      goto LABEL_225;
    }
  }

  *(v24 + 474) = 0;
  *(v24 + 480) = 0;
LABEL_67:
  v48 = *(*(a1[5] + 8) + 24);
  v49 = *(*(a1[8] + 8) + 24);
  v50 = a1[10];
  v51 = a1[11];
  TransportStreamIDAndQuality = 0;
  v52 = CMBaseObjectGetDerivedStorage();
  buffer = xmmword_283569880;
  v224 = unk_283569890;
  v225 = xmmword_2835698A0;
  v222 = 0;
  v221 = 0;
  v219 = 0;
  v220 = 0.0;
  v217 = 0;
  v218 = 0;
  v216 = 0;
  v215 = 0;
  v197 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (!v197)
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_16_0(-16761);
LABEL_316:
    v93 = &unk_27CFF0000;
    v94 = MEMORY[0x277CC1938];
    goto LABEL_170;
  }

  v193 = v49;
  v53 = APSGetFBOPropertyInt64();
  v54 = *MEMORY[0x277CBECE8];
  theDict = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!theDict)
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_16_0(-16761);
    v185 = v197;
LABEL_315:
    CFRelease(v185);
    goto LABEL_316;
  }

  StreamType = APCarPlayAudioFormatInfoGetStreamType(v48);
  if (!StreamType)
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_16_0(-16760);
    CFRelease(v197);
    v185 = theDict;
    goto LABEL_315;
  }

  v56 = StreamType;
  v57 = APCarPlayAudioFormatInfoGetAudioType(v48);
  v58 = v56 != 102 && v53 == 0;
  v195 = v58;
  if (v56 == 102)
  {
    CFDictionaryRemoveAllValues(theDict);
    v74 = CFDictionarySetInt64();
    OUTLINED_FUNCTION_1_10(v74, v75, v76, v77, v78, v79, v80, v81, v186, SHIDWORD(v186), v187, SBYTE2(v187), BYTE3(v187));
    v82 = OUTLINED_FUNCTION_18_0();
    CFDictionarySetValue(v82, v83, v84);
    v85 = *(v52 + 96);
    v86 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v86)
    {
      TransportStreamIDAndQuality = v86(v85, 1735287668, theDict, v52 + 456);
      if (!TransportStreamIDAndQuality)
      {
        if (gLogCategory_APEndpointStreamCarPlayAudio <= 50 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || OUTLINED_FUNCTION_4()))
        {
          v186 = v50;
          v187 = *(v52 + 456);
          OUTLINED_FUNCTION_2();
        }

        v96 = *(v52 + 456);
        v97 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v97)
        {
          TransportStreamIDAndQuality = v97(v96, carAudioStream_handleOutputControlMessage, 0, v50);
          if (!TransportStreamIDAndQuality)
          {
            v98 = *(v52 + 456);
            v99 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (v99)
            {
              TransportStreamIDAndQuality = v99(v98);
              if (!TransportStreamIDAndQuality)
              {
                v59 = APSGetFBOPropertyInt64();
                if (!TransportStreamIDAndQuality)
                {
                  v191 = 1;
                  goto LABEL_78;
                }
              }
            }

            else
            {
              OUTLINED_FUNCTION_10_1();
            }
          }
        }

        else
        {
          OUTLINED_FUNCTION_10_1();
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_10_1();
    }

    APSLogErrorAt();
    Mutable = 0;
    v87 = 0;
    v93 = &unk_27CFF0000;
    v94 = MEMORY[0x277CC1938];
    goto LABEL_164;
  }

  if (v56 != 100 || !CFEqual(v57, @"speechRecognition") || *(v52 + 368))
  {
    v191 = 0;
    v59 = 0;
LABEL_78:
    cf = v50;
    v192 = v59;
    if (!*(v52 + 368))
    {
      v190 = 0;
      if (!v51)
      {
        goto LABEL_96;
      }

      goto LABEL_93;
    }

    v60 = 1;
    goto LABEL_80;
  }

  cf = v50;
  if (gLogCategory_APEndpointStreamCarPlayAudio <= 50 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || OUTLINED_FUNCTION_4()))
  {
    v187 = *(v52 + 40);
    v186 = v50;
    OUTLINED_FUNCTION_2();
  }

  v192 = 0;
  v60 = 0;
  v191 = 0;
LABEL_80:
  *&theData = 0;
  v214 = 0;
  TransportStreamIDAndQuality = carAudioStream_getTransportStreamIDAndQuality(v56, 1, &theData, &v214);
  CFDictionaryRemoveAllValues(theDict);
  v61 = CFDictionarySetInt64();
  OUTLINED_FUNCTION_1_10(v61, v62, v63, v64, v65, v66, v67, v68, v186, SHIDWORD(v186), v187, SBYTE2(v187), BYTE3(v187));
  v69 = OUTLINED_FUNCTION_18_0();
  CFDictionarySetValue(v69, v70, v71);
  if (*(*(CMBaseObjectGetVTable() + 16) + 64))
  {
    v72 = OUTLINED_FUNCTION_18_0();
    TransportStreamIDAndQuality = v73(v72);
    if (!TransportStreamIDAndQuality)
    {
      if (gLogCategory_APEndpointStreamCarPlayAudio <= 50 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || OUTLINED_FUNCTION_4()))
      {
        v186 = cf;
        v187 = *(v52 + 384);
        OUTLINED_FUNCTION_2();
      }

      v88 = *(v52 + 384);
      v89 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v89)
      {
        TransportStreamIDAndQuality = v89(v88, carAudioStream_handleIncomingInputDataMessage, 0, cf);
        if (!TransportStreamIDAndQuality)
        {
          v90 = *(v52 + 384);
          v91 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v91)
          {
            TransportStreamIDAndQuality = v91(v90);
            if (!TransportStreamIDAndQuality)
            {
              OUTLINED_FUNCTION_3_9();
              kdebug_trace();
              TransportStreamIDAndQuality = FigTransportStreamWaitUntilConnected(*(v52 + 384));
              if (!TransportStreamIDAndQuality)
              {
                OUTLINED_FUNCTION_3_9();
                kdebug_trace();
                v190 = APSGetFBOPropertyInt64();
                if (!TransportStreamIDAndQuality)
                {
                  if (v60)
                  {
                    v92 = CFGetAllocator(cf);
                    APSRTPPacketHandlerCreate(v92, 2, 2u, 0, (v52 + 392));
                  }

                  OUTLINED_FUNCTION_3_9();
                  kdebug_trace();
                  if (!v51)
                  {
                    goto LABEL_96;
                  }

LABEL_93:
                  if (CFDictionaryContainsKey(v51, @"StreamStartTimestamp"))
                  {
                    CFDictionaryGetInt64();
                    if (TransportStreamIDAndQuality || (TransportStreamIDAndQuality = APSNetworkClockNTPConvertUpTicksToNTP()) != 0)
                    {
                      APSLogErrorAt();
                      Mutable = 0;
                      v87 = 0;
                      goto LABEL_325;
                    }
                  }

LABEL_96:
                  if (v56 == 107)
                  {
                    v87 = FigCFWeakReferenceHolderCopyReferencedObject();
                    if (v87 && !v53 && !APSGetFBOPropertyInt64())
                    {
                      FigGetCFPreferenceNumberWithDefault();
                    }
                  }

                  else
                  {
                    v87 = 0;
                  }

                  v188 = v215;
                  Mutable = CFDictionaryCreateMutable(v54, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                  if (Mutable)
                  {
                    v189 = v87;
                    v100 = APCarPlayAudioFormatInfoGetStreamType(v48);
                    v101 = APCarPlayAudioFormatInfoGetAudioType(v48);
                    APCarPlayAudioFormatInfoGetDescription(v48);
                    APCarPlayAudioFormatInfoGetAudioFormat(v48);
                    APCarPlayAudioFormatInfoGetLatencyInfo(v48);
                    CFDictionarySetValue(Mutable, @"audioType", v101);
                    CFDictionarySetInt64();
                    CFDictionarySetInt64();
                    if (v193 && v100 == 100 && CFEqual(v101, @"telephony"))
                    {
                      CFDictionarySetValue(Mutable, @"vocoderInfo", v193);
                    }

                    if (v192 >= 1)
                    {
                      CFDictionarySetInt64();
                      CFDictionarySetInt64();
                    }

                    v102 = *MEMORY[0x277CBED28];
                    if (v190 >= 1)
                    {
                      CFDictionarySetValue(Mutable, @"input", *MEMORY[0x277CBED28]);
                      CFDictionarySetInt64();
                    }

                    CFDictionarySetValue(Mutable, @"supportsHighAccuracyTimestamps", v102);
                    if (v195)
                    {
                      CFDictionarySetValue(Mutable, @"supportsRTPPacketRedundancy", v102);
                    }

                    if (v100 == 107)
                    {
                      if (v188)
                      {
                        CFDictionarySetInt64();
                      }

                      CFDictionarySetInt64();
                    }

                    TransportStreamIDAndQuality = 0;
                    v103 = *(v52 + 96);
                    v104 = *(*(CMBaseObjectGetVTable() + 16) + 40);
                    if (v104)
                    {
                      v194 = v102;
                      TransportStreamIDAndQuality = v104(v103, v56, Mutable, &v217, v52 + 448, v52 + 376);
                      if (!TransportStreamIDAndQuality)
                      {
                        OUTLINED_FUNCTION_3_9();
                        kdebug_trace();
                        *(v52 + 520) = CFDictionaryGetInt64();
                        if (!*(v52 + 432))
                        {
                          goto LABEL_258;
                        }

                        theData = 0u;
                        v213 = 0u;
                        *&theData = CFRetain(v197);
                        *(&theData + 1) = MEMORY[0x277CBE550];
                        *&v213 = carAudioStream_acquireMessageBacking;
                        *(&v213 + 1) = carAudioStream_relinquishMessageBacking;
                        TransportStreamIDAndQuality = carAudioStream_getTransportStreamIDAndQuality(v56, 0, &v222, &v221);
                        if (!TransportStreamIDAndQuality)
                        {
                          CFDictionaryRemoveAllValues(theDict);
                          CFDictionarySetInt64();
                          v105 = CFDictionarySetInt64();
                          v106 = *MEMORY[0x277CC1B08];
                          v114 = OUTLINED_FUNCTION_1_10(v105, v107, v108, v109, v110, v111, v112, v113, v186, SHIDWORD(v186), v187, SBYTE2(v187), BYTE3(v187));
                          CFDictionarySetValue(theDict, v106, v114);
                          TransportStreamIDAndQuality = APSenderSessionCreateTransportStreamWithID(*(v52 + 96), v222, theDict, v52 + 464);
                          if (!TransportStreamIDAndQuality)
                          {
                            if (gLogCategory_APEndpointStreamCarPlayAudio <= 50 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || OUTLINED_FUNCTION_4()))
                            {
                              OUTLINED_FUNCTION_2();
                            }

                            CFDictionaryGetInt64();
                            if (!TransportStreamIDAndQuality)
                            {
                              TransportStreamIDAndQuality = APSSetFBOPropertyInt64();
                              if (!TransportStreamIDAndQuality)
                              {
                                TransportStreamIDAndQuality = FigTransportStreamResume(*(v52 + 464));
                                if (!TransportStreamIDAndQuality)
                                {
                                  OUTLINED_FUNCTION_3_9();
                                  kdebug_trace();
                                  TransportStreamIDAndQuality = FigTransportStreamWaitUntilConnected(*(v52 + 464));
                                  if (!TransportStreamIDAndQuality)
                                  {
                                    OUTLINED_FUNCTION_3_9();
                                    kdebug_trace();
                                    FigCFDictionaryGetBooleanIfPresent();
                                    if (gLogCategory_APEndpointStreamCarPlayAudio <= 50 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || OUTLINED_FUNCTION_4()))
                                    {
                                      OUTLINED_FUNCTION_2();
                                    }

                                    v163 = v195 && v216 != 0 ? 2 : 1;
                                    v164 = CFGetAllocator(cf);
                                    TransportStreamIDAndQuality = APSRTPPacketHandlerCreate(v164, 1, v163, &theData, (v52 + 488));
                                    if (!TransportStreamIDAndQuality)
                                    {
LABEL_258:
                                      v94 = MEMORY[0x277CC1938];
                                      v50 = cf;
                                      if (!v191)
                                      {
                                        goto LABEL_265;
                                      }

                                      CFDictionaryGetInt64();
                                      if (!TransportStreamIDAndQuality)
                                      {
                                        TransportStreamIDAndQuality = APSSetFBOPropertyInt64();
                                        if (!TransportStreamIDAndQuality)
                                        {
                                          v165 = *(v52 + 448);
                                          v166 = APAudioEngineGetCMBaseObject(*(v52 + 16));
                                          TransportStreamIDAndQuality = CMBaseObjectSetProperty(v166, @"cryptor", v165);
                                          if (!TransportStreamIDAndQuality)
                                          {
                                            APCarPlayAudioFormatInfoGetDescription(v48);
                                            APCarPlayAudioFormatInfoGetLatencyInfo(v48);
                                            APSSetFBOPropertyInt64();
                                            if (!TransportStreamIDAndQuality)
                                            {
                                              v167 = *(v52 + 16);
                                              AudioFormat = APCarPlayAudioFormatInfoGetAudioFormat(v48);
                                              TransportStreamIDAndQuality = APAudioEngineRegisterStream(v167, cf, AudioFormat, &buffer);
                                              if (!TransportStreamIDAndQuality)
                                              {
                                                *(v52 + 472) = 1;
LABEL_265:
                                                v169 = CMBaseObjectGetDerivedStorage();
                                                if (!FigCFDictionaryGetBooleanIfPresent())
                                                {
                                                  *(v169 + 200) = 0;
                                                }

                                                v170 = *(v169 + 368);
                                                v171 = MEMORY[0x277CBED10];
                                                v93 = &unk_27CFF0000;
                                                if (!v170 || (*(v169 + 200) ? (v172 = v194) : (v172 = *MEMORY[0x277CBED10]), (v173 = *(*(CMBaseObjectGetVTable() + 8) + 56)) == 0 || ((v174 = v173(v170, *MEMORY[0x277CC0A50], v172), v174 != -12784) ? (v175 = v174 == -12782) : (v175 = 1), v175 || (v176 = v174) == 0)))
                                                {
                                                  v177 = *(v169 + 200);
                                                  if (v56 != 102)
                                                  {
                                                    goto LABEL_284;
                                                  }

                                                  v178 = *(v169 + 16);
                                                  if (*(v169 + 200))
                                                  {
                                                    v179 = *v171;
                                                  }

                                                  else
                                                  {
                                                    v179 = v194;
                                                  }

                                                  v180 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                                                  if (v180)
                                                  {
                                                    v181 = v180(v178, @"ForceZeroBasedSampleTimes", v179);
                                                    if (!v181)
                                                    {
                                                      v177 = *(v169 + 200);
LABEL_284:
                                                      APAudioZeroTimeStampProviderSetHighAccuracySupport(*(v169 + 56), v177);
                                                      OUTLINED_FUNCTION_14_1();
                                                      v50 = cf;
                                                      if (v6 ^ v7 | v29 && (v182 != -1 || OUTLINED_FUNCTION_4()))
                                                      {
                                                        OUTLINED_FUNCTION_2();
                                                      }

                                                      TransportStreamIDAndQuality = 0;
                                                      if (!FigCFDictionaryGetDoubleIfPresent() || !FigCFDictionaryGetInt64IfPresent() || v220 == 0.0 && !v219)
                                                      {
                                                        APAudioZeroTimeStampProviderReset(*(v52 + 56));
                                                        v183 = APCarPlayAudioFormatInfoGetDescription(*(v52 + 192));
                                                        carAudioStream_updateZeroTimeFromSampleRate(*v183);
                                                        v87 = v189;
LABEL_297:
                                                        *(v52 + 184) = CFDictionaryGetInt64();
                                                        OUTLINED_FUNCTION_14_1();
                                                        if (v6 ^ v7 | v29 && (v184 != -1 || OUTLINED_FUNCTION_4()))
                                                        {
                                                          OUTLINED_FUNCTION_2();
                                                        }

                                                        goto LABEL_164;
                                                      }

                                                      FigCFDictionaryGetInt64IfPresent();
                                                      TransportStreamIDAndQuality = APSNetworkClockNTPConvertNTPToUpTicks();
                                                      v87 = v189;
                                                      if (!TransportStreamIDAndQuality)
                                                      {
                                                        carAudioStream_updateZeroTimeFromPhaseValues(v220, cf, v219, v218);
                                                        goto LABEL_297;
                                                      }

                                                      goto LABEL_290;
                                                    }

                                                    v176 = v181;
                                                  }

                                                  else
                                                  {
                                                    v176 = -12782;
                                                  }
                                                }

                                                APSLogErrorAt();
                                                v50 = cf;
                                                v87 = v189;
                                                TransportStreamIDAndQuality = v176;
LABEL_290:
                                                APSLogErrorAt();
                                                goto LABEL_164;
                                              }
                                            }
                                          }
                                        }
                                      }

                                      APSLogErrorAt();
                                      v93 = &unk_27CFF0000;
                                      goto LABEL_163;
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }

                    else
                    {
                      OUTLINED_FUNCTION_10_1();
                    }

                    APSLogErrorAt();
                    v93 = &unk_27CFF0000;
                    v94 = MEMORY[0x277CC1938];
                    v50 = cf;
LABEL_163:
                    v87 = v189;
                    goto LABEL_164;
                  }

                  APSLogErrorAt();
                  TransportStreamIDAndQuality = -6728;
                  APSLogErrorAt();
LABEL_325:
                  v93 = &unk_27CFF0000;
                  v94 = MEMORY[0x277CC1938];
                  v50 = cf;
                  goto LABEL_164;
                }
              }
            }
          }

          else
          {
            OUTLINED_FUNCTION_10_1();
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_10_1();
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_1();
  }

  APSLogErrorAt();
  v93 = &unk_27CFF0000;
  v94 = MEMORY[0x277CC1938];
  v50 = cf;
  Mutable = 0;
  v87 = 0;
LABEL_164:
  if (TransportStreamIDAndQuality)
  {
    carAudioStream_teardownTransportStreams(v50, 0);
  }

  CFRelease(v197);
  if (v87)
  {
    CFRelease(v87);
  }

  CFRelease(theDict);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_170:
  if (v217)
  {
    CFRelease(v217);
  }

  v17 = TransportStreamIDAndQuality;
  v3 = "[%{ptr}] %###s called: handler [%{ptr}], context [%{ptr}], clientRef [%@]\n" + 73;
  if (TransportStreamIDAndQuality)
  {
    goto LABEL_227;
  }

  v115 = OUTLINED_FUNCTION_2_8();
  if (APCarPlayAudioFormatInfoGetStreamType(v115) == 102)
  {
    *(CMBaseObjectGetDerivedStorage() + 528) = 0u;
  }

  v116 = OUTLINED_FUNCTION_2_8();
  if (APCarPlayAudioFormatInfoGetStreamType(v116) != 107)
  {
    v117 = OUTLINED_FUNCTION_2_8();
    if (APCarPlayAudioFormatInfoGetDescription(v117))
    {
      v118 = *(a1[9] + 88);
      v119 = OUTLINED_FUNCTION_2_8();
      v120 = APCarPlayAudioFormatInfoGetDescription(v119);
      if (APCarPlayAnalyticsInitASRCollection(v118, *v120))
      {
        v121 = v93[24];
        if (v121 <= 60)
        {
          if (v121 != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
          {
            v122 = OUTLINED_FUNCTION_2_8();
            APCarPlayAudioFormatInfoGetDescription(v122);
            OUTLINED_FUNCTION_8();
            LogPrintF();
          }
        }
      }
    }

    if (APCarPlayAnalyticsInitAudioAnomaliesCollection(*(a1[9] + 88)))
    {
      v123 = v93[24];
      if (v123 <= 60)
      {
        if (v123 != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
        {
          OUTLINED_FUNCTION_8();
          LogPrintF();
        }
      }
    }

    v124 = *(a1[9] + 88);
    v125 = OUTLINED_FUNCTION_2_8();
    v126 = APCarPlayAudioFormatInfoGetStreamType(v125);
    APCarPlayAnalyticsStartCollections(v124, v126, *(a1[9] + 520), 0);
  }

  v127 = a1[9];
  if (*(v127 + 368))
  {
    v128 = *(v127 + 352);
    v202[0] = MEMORY[0x277D85DD0];
    v202[1] = 0x40000000;
    v202[2] = __carAudioStream_resume_block_invoke_4;
    v202[3] = &__block_descriptor_tmp_131;
    v202[4] = v127;
    dispatch_async(v128, v202);
  }

  v129 = OUTLINED_FUNCTION_2_8();
  v130 = APCarPlayAudioFormatInfoGetStreamType(v129);
  v131 = a1[9];
  if (v130 == 102)
  {
    v132 = v131[2];
    v133 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v133)
    {
      v17 = -12782;
      goto LABEL_227;
    }

    v134 = v133(v132);
    if (v134)
    {
      v17 = v134;
LABEL_227:
      APSLogErrorAt();
      v154 = 0;
      goto LABEL_228;
    }
  }

  else if (v131[54])
  {
    v135 = v131[52];
    v201[0] = MEMORY[0x277D85DD0];
    v201[1] = 0x40000000;
    v201[2] = __carAudioStream_resume_block_invoke_5;
    v201[3] = &unk_27849B598;
    v201[4] = a1[5];
    v201[5] = v131;
    dispatch_async(v135, v201);
    v136 = OUTLINED_FUNCTION_2_8();
    v137 = *(a1[9] + 448);
    v138 = APCarPlayAudioFormatInfoGetDescription(v136);
    if (*(v138 + 20) <= 1u)
    {
      v141 = v138;
      if (v137 && (v142 = *(*(CMBaseObjectGetVTable() + 16) + 8)) != 0)
      {
        v143 = 1440 - v142(v137);
      }

      else
      {
        v143 = 1440;
      }

      v139 = v143 / *(v141 + 16);
      if ((1000 * v139) / *v141 > 7.5)
      {
        v139 = (*v141 * 7.5 / 1000.0);
      }
    }

    else
    {
      v139 = 1;
    }

    v144 = a1[9];
    *(v144 + 440) = v139;
    v145 = *(v144 + 432);
    v146 = *(v144 + 416);
    v147 = a1[10];
    v148 = *(CMBaseObjectGetVTable() + 16);
    if (*v148 < 2uLL)
    {
      v17 = -12781;
      goto LABEL_227;
    }

    v149 = v148[3];
    if (!v149)
    {
      v17 = -12782;
      goto LABEL_227;
    }

    v150 = v149(v145, v139, v146, carAudioStreamHandleDataReady, v147);
    if (v150)
    {
      v17 = v150;
      goto LABEL_227;
    }

    dispatch_suspend(*(a1[9] + 416));
    v151 = FigEndpointAudioSourceResume(*(a1[9] + 432));
    if (v151)
    {
      v17 = v151;
      APSLogErrorAt();
      v154 = 1;
LABEL_228:
      carAudioStream_suspendInternal(a1[10], 0);
      if (!v154)
      {
        goto LABEL_230;
      }

      goto LABEL_229;
    }

    v140 = 1;
    goto LABEL_209;
  }

  v140 = 0;
LABEL_209:
  v152 = CMBaseObjectGetDerivedStorage();
  if (CFEqual(*(v152 + 40), *v94) || FigCFEqual() || FigCFEqual() || FigCFEqual())
  {
    APSEventRecorderRecordEvent();
  }

  else
  {
    APSLogErrorAt();
  }

  *(a1[9] + 176) = 1;
  v153 = v93[24];
  if (v153 <= 50 && (v153 != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2();
  }

  v17 = 0;
  if (v140)
  {
LABEL_229:
    dispatch_resume(*(a1[9] + 416));
  }

LABEL_230:
  CFRetain(a1[10]);
  v155 = *(a1[9] + 112);
  v199[0] = MEMORY[0x277D85DD0];
  v199[1] = *(v3 + 35);
  v199[2] = __carAudioStream_resume_block_invoke_6;
  v199[3] = &__block_descriptor_tmp_134;
  v156 = a1[10];
  v157 = a1[13];
  v199[4] = a1[12];
  v199[5] = v156;
  v200 = v17;
  v199[6] = v157;
  dispatch_async(v155, v199);
  v158 = *(*(a1[6] + 8) + 24);
  if (v158)
  {
    CFRelease(v158);
  }

  v159 = *(*(a1[7] + 8) + 24);
  if (v159)
  {
    CFRelease(v159);
  }

  v160 = OUTLINED_FUNCTION_2_8();
  if (v160)
  {
    CFRelease(v160);
  }

  v161 = *(*(a1[8] + 8) + 24);
  if (v161)
  {
    CFRelease(v161);
  }

  v162 = a1[11];
  if (v162)
  {
    CFRelease(v162);
  }

  CFRelease(a1[10]);
  _Block_object_dispose(&v204, 8);
  _Block_object_dispose(&v208, 8);
}

void carEndpoint_handleSenderSessionStarted(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  if (gLogCategory_APEndpointCarPlay <= 30 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    carEndpoint_handleSenderSessionStarted_cold_1();
  }

  v4 = *(DerivedStorage + 168);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carEndpoint_handleSenderSessionStarted_block_invoke;
  block[3] = &unk_27849ECD8;
  block[5] = DerivedStorage;
  block[6] = a2;
  block[4] = &v6;
  dispatch_sync(v4, block);
  carEndpoint_postNotification(a2, *MEMORY[0x277CC0CF8], *(v7 + 6), 0);
  carEndpoint_postNotification(a2, *MEMORY[0x277CC0D08], *(v7 + 6), 0);
  _Block_object_dispose(&v6, 8);
}

void carEndpoint_updateActiveStreamConnectionIDs()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 240);
  if (v1)
  {
    if (*(DerivedStorage + 272))
    {
      CFRelease(*(DerivedStorage + 272));
      *(DerivedStorage + 272) = 0;
      v1 = *(DerivedStorage + 240);
    }

    APSenderSessionGetCMBaseObject(v1);
    if (!*(*(CMBaseObjectGetVTable() + 8) + 48) || ((v2 = OUTLINED_FUNCTION_8_4(), v4 = v3(v2), v4 != -6727) ? (v5 = v4 == 0) : (v5 = 1), !v5))
    {
      if (gLogCategory_APEndpointCarPlay > 90)
      {
        return;
      }

      if (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize())
      {
        LogPrintF();
      }
    }

    if (gLogCategory_APEndpointCarPlay <= 40 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      v6 = 0;
      v7 = &v6;
      v8 = 0x2000000000;
      v9 = 0;
      AppendPrintF();
      OUTLINED_FUNCTION_2_22();
      FigCFArrayApplyBlock();
      AppendPrintF();
      if (gLogCategory_APEndpointCarPlay <= 40 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      free(v7[3]);
      _Block_object_dispose(&v6, 8);
    }
  }
}

void carEndpoint_postNotification(const void *a1, const void *a2, int a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  if (a4)
  {
    CFRetain(a4);
  }

  v9 = *DerivedStorage;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carEndpoint_postNotification_block_invoke;
  block[3] = &__block_descriptor_tmp_291;
  block[4] = DerivedStorage;
  block[5] = a2;
  v11 = a3;
  block[6] = a4;
  block[7] = a1;
  dispatch_async(v9, block);
}

uint64_t coreUtilsKeyHolder_CreateEncryptionKeysForStream(uint64_t a1, uint64_t a2, CFIndex a3, __CFData **a4, CFIndex a5, __CFData **a6)
{
  v11 = ASPrintF();
  DerivedKey = coreUtilsKeyHolder_CreateDerivedKey(a1, 0, v11, "DataStream-Input-Encryption-Key", 31, a3, a4);
  if (DerivedKey)
  {
    v13 = DerivedKey;
    coreUtilsKeyHolder_CreateEncryptionKeysForStream_cold_1();
  }

  else
  {
    v13 = coreUtilsKeyHolder_CreateDerivedKey(a1, 0, v11, "DataStream-Output-Encryption-Key", 32, a5, a6);
    if (v13)
    {
      coreUtilsKeyHolder_CreateEncryptionKeysForStream_cold_2();
    }
  }

  v14 = 0;
  if (v11)
  {
    do
    {
      *v14++ = 0;
      --v11;
    }

    while (v11);
  }

  return v13;
}

uint64_t coreUtilsKeyHolder_CreateDerivedKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CFIndex a6, __CFData **a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a6)
  {
    v21 = 4294895575;
    coreUtilsKeyHolder_CreateDerivedKey_cold_2();
    return v21;
  }

  v14 = DerivedStorage;
  Mutable = CFDataCreateMutable(*(DerivedStorage + 8), a6);
  if (!Mutable)
  {
    coreUtilsKeyHolder_CreateDerivedKey_cold_1();
    return 4294895576;
  }

  v16 = Mutable;
  CFDataSetLength(Mutable, a6);
  v17 = *v14;
  MutableBytePtr = CFDataGetMutableBytePtr(v16);
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v19)
  {
    v21 = 4294954514;
LABEL_8:
    APSLogErrorAt();
    goto LABEL_9;
  }

  v20 = v19(v17, a2, a3, a4, a5, a6, MutableBytePtr);
  if (v20)
  {
    v21 = v20;
    goto LABEL_8;
  }

  v21 = 0;
  if (!a7)
  {
LABEL_9:
    CFRelease(v16);
    return v21;
  }

  *a7 = v16;
  return v21;
}

uint64_t mfiMutualAuth_CopyProperty(int a1, CFTypeRef cf1, uint64_t a3, uint64_t *a4)
{
  if (!CFEqual(cf1, @"AuthenticationData"))
  {
    return 4294954512;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    v6 = APAccTransportClientEndpointCopyAuthenticationCertificateSerial(*(DerivedStorage + 8));
    if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 30 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
    {
      mfiMutualAuth_CopyProperty_cold_1();
      if (v6)
      {
        goto LABEL_7;
      }
    }

    else if (v6)
    {
LABEL_7:
      result = 0;
      *a4 = v6;
      return result;
    }

    mfiMutualAuth_CopyProperty_cold_2();
    return 4294954512;
  }

  mfiMutualAuth_CopyProperty_cold_3();
  return 4294895495;
}

uint64_t APAccTransportClientEndpointCopyAuthenticationCertificateSerial(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 24);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __APAccTransportClientEndpointCopyAuthenticationCertificateSerial_block_invoke;
  v4[3] = &unk_27849F700;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t getkCFACCProperties_Connection_MFi4Auth_AccessoryCertInfoToMatch()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCFACCProperties_Connection_MFi4Auth_AccessoryCertInfoToMatchSymbolLoc_ptr;
  v6 = getkCFACCProperties_Connection_MFi4Auth_AccessoryCertInfoToMatchSymbolLoc_ptr;
  if (!getkCFACCProperties_Connection_MFi4Auth_AccessoryCertInfoToMatchSymbolLoc_ptr)
  {
    v1 = CoreAccessoriesLibrary();
    v4[3] = dlsym(v1, "kCFACCProperties_Connection_MFi4Auth_AccessoryCertInfoToMatch");
    getkCFACCProperties_Connection_MFi4Auth_AccessoryCertInfoToMatchSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    getkCFACCProperties_Connection_MFi4Auth_AccessoryCertInfoToMatch_cold_1();
  }

  return *v0;
}

void sub_222014FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __APAccTransportClientEndpointCopyAuthenticationCertificateSerial_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 48);
  if (v1)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v3 = getacc_transportClient_copyPropertiesForEndpointWithUUIDSymbolLoc_ptr;
    v12 = getacc_transportClient_copyPropertiesForEndpointWithUUIDSymbolLoc_ptr;
    if (!getacc_transportClient_copyPropertiesForEndpointWithUUIDSymbolLoc_ptr)
    {
      v4 = CoreAccessoriesLibrary();
      v10[3] = dlsym(v4, "acc_transportClient_copyPropertiesForEndpointWithUUID");
      getacc_transportClient_copyPropertiesForEndpointWithUUIDSymbolLoc_ptr = v10[3];
      v3 = v10[3];
    }

    _Block_object_dispose(&v9, 8);
    if (!v3)
    {
      __APAccTransportClientEndpointCopyAuthenticationCertificateSerial_block_invoke_cold_2();
    }

    v5 = v3(v1);
    if (v5)
    {
      v6 = v5;
      v7 = getkCFACCProperties_Connection_MFi4Auth_AccessoryCertInfoToMatch();
      *(*(*(a1 + 32) + 8) + 24) = CFDictionaryGetValue(v6, v7);
      v8 = *(*(*(a1 + 32) + 8) + 24);
      if (v8)
      {
        CFRetain(v8);
      }

      CFRelease(v6);
    }

    else
    {
      __APAccTransportClientEndpointCopyAuthenticationCertificateSerial_block_invoke_cold_1();
    }
  }

  else
  {
    __APAccTransportClientEndpointCopyAuthenticationCertificateSerial_block_invoke_cold_3();
  }
}

void sub_222015114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t carEndpoint_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCarPlay <= 10 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v7 = *(DerivedStorage + 168);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carEndpoint_SetProperty_block_invoke;
  block[3] = &unk_27849E4E8;
  block[4] = &v11;
  block[5] = DerivedStorage;
  block[6] = a2;
  block[7] = a3;
  block[8] = a1;
  dispatch_sync(v7, block);
  v8 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t APSRTPPacketHandlerDecryptCurrentMessage(uint64_t a1, uint64_t a2)
{
  v13 = 0;
  if ((*(a1 + 24) & 2) == 0)
  {
    APSRTPPacketHandlerDecryptCurrentMessage_cold_4();
    return 4294960561;
  }

  if (!*(a1 + 160))
  {
    APSRTPPacketHandlerDecryptCurrentMessage_cold_3();
    return 0;
  }

  v3 = *(a1 + 168);
  if (!v3)
  {
    APSRTPPacketHandlerDecryptCurrentMessage_cold_2();
    return 0;
  }

  v5 = (*(v3 + 1) & 0x7F) - 96;
  if (v5 <= 0xD && (((1 << v5) & 0x3302) != 0 || (*(v3 + 1) & 0x7F) == 0x60 && *(a1 + 28) >= 2u))
  {
    v6 = (4 * *(a1 + 1656) - 3);
    v7 = v3 + v6 + 12;
    v8 = *(v3 + 1472) - v6;
  }

  else
  {
    v7 = v3 + 12;
    v8 = *(v3 + 1472);
  }

  AudioAADPointer = APSTransportMessageGetAudioAADPointer();
  if (AudioAADPointer)
  {
    v11 = AudioAADPointer;
    APSRTPPacketHandlerDecryptCurrentMessage_cold_1();
    return v11;
  }

  v10 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v10)
  {
    v11 = 4294954514;
    goto LABEL_15;
  }

  v11 = v10(a2, 0, 0, v7, v8 - 12, v7, 1472, &v13);
  if (v11)
  {
LABEL_15:
    APSLogErrorAt();
    return v11;
  }

  *(*(a1 + 168) + 1472) += v13 - v8 + 12;
  return v11;
}

uint64_t jitterBuffer_AcquireBuffer(uint64_t a1, void *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 104))
  {
    jitterBuffer_AcquireBuffer_cold_1();
    return 4294950503;
  }

  else
  {
    v6 = DerivedStorage;
    EmptyPacket = APSRTPJitterBufferGetEmptyPacket();
    *(v6 + 104) = EmptyPacket;
    result = 0;
    *a2 = EmptyPacket + 12;
    *a3 = 1460;
  }

  return result;
}

void carAudioStream_handleIncomingInputDataMessage(uint64_t a1, int a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 > 1869575778)
  {
    if (a2 != 1870033508)
    {
      v9 = 1869575779;
LABEL_6:
      if (a2 != v9)
      {
        return;
      }
    }
  }

  else if (a2 != 1835100526)
  {
    v9 = 1836213604;
    goto LABEL_6;
  }

  CFRetain(a4);
  CFRetain(a3);
  v10 = *(DerivedStorage + 352);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carAudioStream_handleIncomingInputDataMessage_block_invoke;
  block[3] = &__block_descriptor_tmp_172;
  block[4] = DerivedStorage;
  block[5] = a4;
  v12 = a2;
  block[6] = a1;
  block[7] = a3;
  dispatch_async(v10, block);
}

uint64_t APSRTPPacketHandlerReadNewMessage(uint64_t a1, void *cf, char a3)
{
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  if ((*(a1 + 24) & 2) != 0)
  {
    if (cf)
    {
      if (*(a1 + 160))
      {
        if (gLogCategory_APSRTPPacketHandler <= 60 && (gLogCategory_APSRTPPacketHandler != -1 || _LogCategory_Initialize()))
        {
          APSRTPPacketHandlerReadNewMessage_cold_1();
        }

        CFRelease(*(a1 + 160));
      }

      *(a1 + 160) = CFRetain(cf);
      DataPointer = CMBlockBufferGetDataPointer(cf, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
      if (lengthAtOffsetOut >= 0x5C9)
      {
        APSRTPPacketHandlerReadNewMessage_cold_3();
      }

      else
      {
        memcpy((*(a1 + 168) + 2), dataPointerOut, lengthAtOffsetOut);
        *(*(a1 + 168) + 1) = a3;
        DataLength = CMBlockBufferGetDataLength(cf);
        v8 = *(a1 + 168);
        *(v8 + 1472) = DataLength + 2;
        *(a1 + 1660) = 0;
        v9 = 1;
        v10 = (*(v8 + 1) & 0x7F) - 96;
        if (v10 <= 0xD && (((1 << v10) & 0x3302) != 0 || (*(v8 + 1) & 0x7F) == 0x60 && *(a1 + 28) >= 2u))
        {
          v17 = 0;
          v16 = (v8 + 12);
          while (1)
          {
            APSRTPPacketHandlerReadExtendedHeader(v16, &v17, &v16);
            if ((v17 & 0x80) == 0)
            {
              break;
            }

            if (++v9 > *(a1 + 28))
            {
              if (gLogCategory_APSRTPPacketHandler <= 90 && (gLogCategory_APSRTPPacketHandler != -1 || _LogCategory_Initialize()))
              {
                APSRTPPacketHandlerReadNewMessage_cold_2();
              }

              v9 = 0;
              break;
            }
          }
        }

        *(a1 + 1656) = v9;
        v11 = *(a1 + 1712);
        if (v11)
        {
          v12 = (v11 + *(a1 + 1708) - 1) % *(a1 + 1704);
          QueueIsIndexInRange((a1 + 1664), v12);
          if (bswap32(*(*(a1 + 168) + 2)) >> 16 != (*(*(a1 + 1696) + 4 * v12) + 1) && gLogCategory_APSRTPPacketHandler <= 30 && (gLogCategory_APSRTPPacketHandler != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }
        }
      }
    }

    else
    {
      APSRTPPacketHandlerReadNewMessage_cold_4();
      return 4294960591;
    }
  }

  else
  {
    APSRTPPacketHandlerReadNewMessage_cold_5();
    return 4294960561;
  }

  return DataPointer;
}

void __carAudioStream_handleIncomingInputDataMessage_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 360))
  {
    if (*(v2 + 400))
    {
      v6 = *(a1 + 40);
      v7 = *(v2 + 392);
      v8 = *(v2 + 368);
      v9 = *(v2 + 376);
      v10 = *(a1 + 64);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (CMSimpleQueueGetCount(*(DerivedStorage + 408)) >= 1 && gLogCategory_APEndpointStreamCarPlayAudio <= 50 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      kdebug_trace();
      if (CMSimpleQueueGetCount(*(DerivedStorage + 408)) >= 1)
      {
        while (1)
        {
          v12 = CMSimpleQueueDequeue(*(DerivedStorage + 408));
          if (carAudioStream_processOneInputDataMessage(v6, v7, v8, v9, v10, v12))
          {
            if (gLogCategory_APEndpointStreamCarPlayAudio <= 90 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
            {
              break;
            }
          }

          if (v12)
          {
            goto LABEL_29;
          }

LABEL_30:
          if (CMSimpleQueueGetCount(*(DerivedStorage + 408)) <= 0)
          {
            goto LABEL_34;
          }
        }

        LogPrintF();
        if (!v12)
        {
          goto LABEL_30;
        }

LABEL_29:
        CFRelease(v12);
        goto LABEL_30;
      }

LABEL_34:
      v2 = *(a1 + 32);
      *(v2 + 400) = 0;
    }

    carAudioStream_processOneInputDataMessage(*(a1 + 40), *(v2 + 392), *(v2 + 368), *(v2 + 376), *(a1 + 64), *(a1 + 56));
    goto LABEL_36;
  }

  if (*(v2 + 400))
  {
    if (gLogCategory_APEndpointStreamCarPlayAudio <= 30 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
    {
      __carAudioStream_handleIncomingInputDataMessage_block_invoke_cold_1();
    }

    v3 = *(a1 + 56);
    v4 = CMBaseObjectGetDerivedStorage();
    if (*(v4 + 408))
    {
      v5 = v4;
      CFRetain(v3);
      if (CMSimpleQueueEnqueue(*(v5 + 408), v3) && gLogCategory_APEndpointStreamCarPlayAudio <= 50 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
      {
        __carAudioStream_handleIncomingInputDataMessage_block_invoke_cold_2();
      }
    }

    else
    {
      __carAudioStream_handleIncomingInputDataMessage_block_invoke_cold_3();
    }
  }

  else if (gLogCategory_APEndpointStreamCarPlayAudio <= 30 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_36:
  CFRelease(*(a1 + 40));
  v13 = *(a1 + 56);

  CFRelease(v13);
}

uint64_t carAudioStream_processOneInputDataMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v31 = 0;
  v32 = 0;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  memset(v27, 0, sizeof(v27));
  if (*(DerivedStorage + 360))
  {
    Description = APCarPlayAudioFormatInfoGetDescription(*(DerivedStorage + 192));
    RTPPayloadType = carAudioStream_getRTPPayloadType(a5);
    NewMessage = APSRTPPacketHandlerReadNewMessage(a2, a6, RTPPayloadType);
    if (NewMessage)
    {
      v25 = NewMessage;
    }

    else
    {
      if (!a4 || (v15 = APSRTPPacketHandlerDecryptCurrentMessage(a2, a4), !v15))
      {
        while (APSRTPPacketHandlerGetNextPacket(a2, &v29))
        {
          kdebug_trace();
          v16 = *(CMBaseObjectGetVTable() + 16);
          if (*v16 < 2uLL)
          {
            v25 = 4294954515;
            goto LABEL_20;
          }

          v17 = v16[5];
          if (!v17)
          {
            v25 = 4294954514;
            goto LABEL_20;
          }

          v18 = v17(a3, &v32, &v31);
          if (v18)
          {
            v25 = v18;
            goto LABEL_20;
          }

          memcpy(v32, v30, *(&v30 + 1));
          *v27 = bswap32(DWORD1(v29));
          v19 = 1;
          DWORD2(v28) = 1;
          v20 = *(&v30 + 1);
          if (*(Description + 20) <= 1u)
          {
            v19 = (DWORD2(v30) / *(Description + 16));
          }

          v21 = v32;
          v22 = *(CMBaseObjectGetVTable() + 16);
          if (*v22 < 2uLL)
          {
            v25 = 4294954515;
            goto LABEL_20;
          }

          v23 = v22[6];
          if (!v23)
          {
            v25 = 4294954514;
            goto LABEL_20;
          }

          v24 = v23(a3, v21, v20, 0, v19, v27);
          if (v24)
          {
            v25 = v24;
            goto LABEL_20;
          }
        }

        return 0;
      }

      v25 = v15;
    }

LABEL_20:
    APSLogErrorAt();
    return v25;
  }

  return 0;
}

uint64_t APSRTPPacketHandlerGetNextPacket(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    while (1)
    {
      v4 = *(a1 + 1660);
      if (v4 >= *(a1 + 1656))
      {
        return 0;
      }

      v5 = *(a1 + 168);
      if (!v5)
      {
        APSRTPPacketHandlerGetNextPacket_cold_5();
        return 0;
      }

      v6 = (*(v5 + 1) & 0x7F) - 96;
      if (v6 <= 0xD && (((1 << v6) & 0x3302) != 0 || !v6 && *(a1 + 28) >= 2u))
      {
        SeqNumOfPacket = APSRTPPacketHandlerGetSeqNumOfPacket(a1, *(a1 + 1660));
        v8 = *(a1 + 1712);
        if (v8)
        {
          v9 = *(a1 + 1708);
          while (*(*(a1 + 1696) + 4 * (v9 % *(a1 + 1704))) != SeqNumOfPacket)
          {
            ++v9;
            if (!--v8)
            {
              goto LABEL_14;
            }
          }

          v10 = 1;
          goto LABEL_46;
        }
      }

LABEL_14:
      v11 = *(a1 + 1656);
      if (v11 <= v4)
      {
        APSRTPPacketHandlerGetNextPacket_cold_1();
        goto LABEL_34;
      }

      v12 = *(a1 + 168);
      if (!v12)
      {
        APSRTPPacketHandlerGetNextPacket_cold_2();
        goto LABEL_34;
      }

      v13 = *(v12 + 1) & 0x7F;
      if ((v13 - 96) <= 0xD)
      {
        if (((1 << (v13 - 96)) & 0x3302) != 0)
        {
          v30 = 0;
          v14 = v13 - 97;
          v15 = v14 > 0xC;
          v16 = (1 << v14) & 0x1981;
          if (!v15 && v16 != 0)
          {
LABEL_22:
            v12 += 4 * v11 - 3;
          }

          v18 = v12 + 12;
          if (v4)
          {
            for (i = 0; i != v4; ++i)
            {
              APSRTPPacketHandlerGetExtendedHeaderOfPacket(a1, i, &v30);
              v18 += v30 >> 22;
            }

            v11 = *(a1 + 1656);
          }

          *(a2 + 16) = v18;
          if (v11 - 1 <= v4)
          {
            v20 = *(*(a1 + 168) + 1472) - (v18 - *(a1 + 168));
          }

          else
          {
            APSRTPPacketHandlerGetExtendedHeaderOfPacket(a1, v4, &v30);
            v20 = v30 >> 22;
          }

          goto LABEL_33;
        }

        if (v13 == 96 && *(a1 + 28) >= 2u)
        {
          v30 = 0;
          goto LABEL_22;
        }
      }

      *(a2 + 16) = v12 + 12;
      v20 = *(*(a1 + 168) + 1472) - 12;
LABEL_33:
      *(a2 + 24) = v20;
LABEL_34:
      if (*(a1 + 1656) <= v4)
      {
        APSRTPPacketHandlerGetNextPacket_cold_3();
      }

      else
      {
        v21 = *(a1 + 168);
        if (v21)
        {
          v31 = 0;
          v22 = *(v21 + 8);
          *a2 = *v21;
          *(a2 + 8) = v22;
          v23 = *(a1 + 168);
          v24 = (*(v23 + 1) & 0x7F) - 96;
          if (v24 <= 0xD && (((1 << v24) & 0x3302) != 0 || (*(v23 + 1) & 0x7F) == 0x60 && *(a1 + 28) >= 2u))
          {
            if (*(a1 + 1656) - 1 <= v4)
            {
              v25 = bswap32(*(v23 + 4));
            }

            else
            {
              v32 = 0;
              APSRTPPacketHandlerGetExtendedHeaderOfPacket(a1, v4, &v32);
              v25 = bswap32(*(*(a1 + 168) + 4)) - ((v32 >> 8) & 0x3FFF);
            }

            *(a2 + 4) = bswap32(v25);
            *(a2 + 2) = __rev16(APSRTPPacketHandlerGetSeqNumOfPacket(a1, v4));
            APSRTPPacketHandlerGetExtendedHeaderOfPacket(a1, v4, &v31);
            *(a2 + 1) = v31 & 0x7F;
          }
        }

        else
        {
          APSRTPPacketHandlerGetNextPacket_cold_4();
        }
      }

      v26 = *(a1 + 1712);
      if (v26 && v26 == *(a1 + 1704))
      {
        *(a1 + 1708) = (*(a1 + 1708) + 1) % v26;
        *(a1 + 1712) = v26 - 1;
      }

      QueueAddEntry(a1 + 1664, bswap32(*(a2 + 2)) >> 16);
      v10 = 0;
LABEL_46:
      v27 = *(a1 + 1660) + 1;
      *(a1 + 1660) = v27;
      if (v27 == *(a1 + 1656))
      {
        v28 = *(a1 + 160);
        if (v28)
        {
          CFRelease(v28);
        }

        *(a1 + 160) = 0;
      }

      if ((v10 & 1) == 0)
      {
        return 1;
      }
    }
  }

  APSRTPPacketHandlerGetNextPacket_cold_6();
  return 0;
}

uint64_t QueueAddEntry(uint64_t result, int a2)
{
  v2 = *(result + 48);
  v3 = *(result + 40);
  if (v2 >= v3)
  {
    if (v3)
    {
      if (gLogCategory_APSRTPPacketHandler <= 90)
      {
        if (gLogCategory_APSRTPPacketHandler != -1)
        {
          return QueueAddEntry_cold_1();
        }

        result = _LogCategory_Initialize();
        if (result)
        {
          return QueueAddEntry_cold_1();
        }
      }
    }
  }

  else
  {
    *(*(result + 32) + 4 * ((*(result + 44) + v2) % v3)) = a2;
    ++*(result + 48);
  }

  return result;
}

uint64_t jitterBuffer_ReadPackets(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, unint64_t *a7, _DWORD *a8)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((*(a2 + 136) & 1) == 0)
  {
    jitterBuffer_ReadPackets_cold_4();
    return 4294950504;
  }

  if (a5)
  {
    jitterBuffer_ReadPackets_cold_1();
    return 4294950504;
  }

  v15 = (*(DerivedStorage + 80) * a6);
  if (v15 > a4)
  {
    jitterBuffer_ReadPackets_cold_3();
    return 4294950504;
  }

  v16 = APSRTPJitterBufferRead();
  if (v16)
  {
    jitterBuffer_ReadPackets_cold_2();
  }

  else
  {
    *a7 = v15;
    *a8 = a6;
  }

  return v16;
}

uint64_t jitterBuffer_CommitBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = *(DerivedStorage + 104);
  if (!v10)
  {
    jitterBuffer_CommitBuffer_cold_3();
    return 4294950503;
  }

  if (v10 + 12 != a2)
  {
    jitterBuffer_CommitBuffer_cold_1();
    return 4294950503;
  }

  v11 = DerivedStorage;
  if (a3)
  {
    if (*(a6 + 56))
    {
      *(v10 + 4) = *a6;
      *(*(DerivedStorage + 104) + 1472) = a3;
      APSRTPJitterBufferEnqueuePacket();
      result = 0;
      *(v11 + 104) = 0;
    }

    else
    {
      jitterBuffer_CommitBuffer_cold_2();
      return 4294950504;
    }
  }

  else
  {
    APSRTPJitterBufferDiscardPacket();
    return 0;
  }

  return result;
}

uint64_t QueueIsIndexInRange(_DWORD *a1, unsigned int a2)
{
  v2 = a1[11];
  v3 = a1[12];
  v4 = v2;
  if (!v3 || (v4 = (v3 + v2 - 1) % a1[10], v2 <= v4))
  {
    if (v2 <= a2 && v4 >= a2)
    {
      return 1;
    }

    if (gLogCategory_APSRTPPacketHandler <= 90)
    {
      if (gLogCategory_APSRTPPacketHandler != -1)
      {
        goto LABEL_14;
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        goto LABEL_14;
      }

      return result;
    }

    return 0;
  }

  result = 1;
  if (v2 <= a2 || v4 >= a2)
  {
    return result;
  }

  if (gLogCategory_APSRTPPacketHandler > 90)
  {
    return 0;
  }

  if (gLogCategory_APSRTPPacketHandler != -1 || (result = _LogCategory_Initialize(), result))
  {
LABEL_14:
    LogPrintF();
    return 0;
  }

  return result;
}

__n128 APAudioZeroTimeStampProviderGetZeroTimeStamp(uint64_t a1, uint64_t a2)
{
  v2 = a1 + (*(a1 + 152) << 6);
  result = *(v2 + 24);
  v4 = *(v2 + 40);
  v5 = *(v2 + 72);
  *(a2 + 32) = *(v2 + 56);
  *(a2 + 48) = v5;
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

void carplaysource_scheduleReadinessCallbackAfterTimeNs(const void *a1, int64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 200))
  {
    v5 = DerivedStorage;
    CFRetain(a1);
    if (a2)
    {
      kdebug_trace();
      v6 = dispatch_time(0, a2);
      v7 = *(v5 + 200);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __carplaysource_scheduleReadinessCallbackAfterTimeNs_block_invoke;
      block[3] = &__block_descriptor_tmp_16;
      block[4] = a1;
      dispatch_after(v6, v7, block);
    }

    else
    {
      v8 = *(v5 + 200);
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 0x40000000;
      v9[2] = __carplaysource_scheduleReadinessCallbackAfterTimeNs_block_invoke_2;
      v9[3] = &__block_descriptor_tmp_17;
      v9[4] = a1;
      dispatch_async(v8, v9);
    }
  }
}

uint64_t carAudioStream_getRTPPayloadType(int a1)
{
  if (a1 > 1835100525)
  {
    if (a1 > 1869575778)
    {
      if (a1 == 1869575779)
      {
        return 107;
      }

      if (a1 == 1870033508)
      {
        return 109;
      }
    }

    else
    {
      if (a1 == 1835100526)
      {
        return 100;
      }

      if (a1 == 1836213604)
      {
        return 104;
      }
    }
  }

  else if (a1 > 1635088494)
  {
    if (a1 == 1635088495)
    {
      return 106;
    }

    if (a1 == 1635283556)
    {
      return 108;
    }
  }

  else
  {
    if (a1 == 1634497568)
    {
      return 101;
    }

    if (a1 == 1634887012)
    {
      return 105;
    }
  }

  v1 = 1835100526;
  if (gLogCategory_APEndpointStreamCarPlayAudio <= 90 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
  {
    carAudioStream_getRTPPayloadType_cold_1();
  }

  return v1;
}

void carplaysource_ReadinessCallback(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  if (*DerivedStorage)
  {
    if (!*(DerivedStorage + 264) && CMSimpleQueueGetCount(*(DerivedStorage + 168)) && (v4 = mach_absolute_time(), Head = CMSimpleQueueGetHead(*(v3 + 168)), *(v3 + 264) = 1, v6 = (Head[4] + *(v3 + 272) * *(Head + 28)), v4 < v6))
    {
      carplaysource_ReadinessCallback_cold_1(v6, v4, a1, v3);
    }

    else
    {
      *(v3 + 240) = mach_absolute_time();
      v7 = *(v3 + 208);
      v8 = *(v3 + 68);
      v9 = *(CMBaseObjectGetVTable() + 16);
      if (*v9 < 2uLL || (v10 = v9[8]) != 0 && !v10(a1, v7 / v8))
      {
        carplaysource_ReadinessCallback_cold_2(v3, (v3 + 240), a1);
      }

      else
      {
        if (*(v3 + 224))
        {
          if (gLogCategory_APAudioSourceCarPlay <= 30 && (gLogCategory_APAudioSourceCarPlay != -1 || _LogCategory_Initialize()))
          {
            UpTicksPerSecond();
            LogPrintF();
          }

          *(v3 + 224) = 0;
        }

        if (*(v3 + 248))
        {
          kdebug_trace();
          v12 = *(v3 + 248);
          v11 = *(v3 + 256);

          v12(v11);
        }
      }
    }
  }

  else
  {

    carplaysource_SuspendInternal(DerivedStorage);
  }
}

void __carplaysource_scheduleReadinessCallbackAfterTimeNs_block_invoke(uint64_t a1)
{
  carplaysource_ReadinessCallback(*(a1 + 32));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

uint64_t carplaysource_WritePackets(uint64_t a1, const void *a2, size_t a3, uint64_t a4, int a5, _BYTE *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    return 4294950524;
  }

  v11 = DerivedStorage;
  if ((a6[200] & 3) != 0 && *(DerivedStorage + 24) * a5 == a3)
  {
    v12 = CMSimpleQueueDequeue(*(DerivedStorage + 152));
    if (v12)
    {
      v13 = v12;
      v14 = *(v11 + 120) - *(v11 + 132) + *(v11 + 128);
      if (v14 >= a3)
      {
        v15 = a3;
      }

      else
      {
        v15 = v14;
      }

      if (v15 < a3)
      {
        ++*(v11 + 136);
      }

      *v12 = v15 / *(v11 + 24);
      memcpy(v12 + 2, a6, 0xE0uLL);
      CMSimpleQueueEnqueue(*(v11 + 168), v13);
      v16 = *(v11 + 104);
      if (v16)
      {
        memcpy((v16 + (*(v11 + 124) & *(v11 + 132))), a2, v15);
        v17 = 0;
        *(v11 + 132) += v15;
        return v17;
      }

      APSLogErrorAt();
      v17 = 4294960591;
    }

    else
    {
      ++*(v11 + 160);
      v17 = 4294950523;
    }
  }

  else
  {
    v17 = 4294950525;
  }

  if (gLogCategory_APAudioSourceCarPlay <= 90 && (gLogCategory_APAudioSourceCarPlay != -1 || _LogCategory_Initialize()))
  {
    mach_absolute_time();
    UpTicksToMilliseconds();
    LogPrintF();
  }

  return v17;
}

uint64_t carplaysource_ReadinessCallback_cold_2(uint64_t a1, void *a2, uint64_t a3)
{
  if (!*(a1 + 224))
  {
    *(a1 + 224) = *a2;
    ++*(a1 + 232);
  }

  return carplaysource_scheduleReadinessCallbackAfterTimeNs(a3, 1000000);
}

BOOL carplaysource_CanProducePackets(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return *(DerivedStorage + 68) * a2 * *(DerivedStorage + 32) <= (*(DerivedStorage + 132) - *(DerivedStorage + 128));
  }

  carplaysource_CanProducePackets_cold_1();
  return 0;
}

uint64_t APSRTPPacketHandlerReturnComposedBBuf(uint64_t a1, void *element)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    return APSRTPPacketHandlerReturnComposedBBuf_cold_2();
  }

  if (!element)
  {
    return APSRTPPacketHandlerReturnComposedBBuf_cold_1();
  }

  v4 = element[2];
  element[2] = 0;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 88);

  return CMSimpleQueueEnqueue(v5, element);
}

void __carAudioStream_sendOneAudioDataMessage_block_invoke()
{
  OUTLINED_FUNCTION_13_2();
  if (v2)
  {
    carAudioStream_MarkPacket(*(v1 + 192));
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v4 = mach_absolute_time();
    if (*(DerivedStorage + 512) && UpTicksToMilliseconds() >= 0x33)
    {
      carAudioStream_MarkPacket(*(DerivedStorage + 192));
    }

    *(DerivedStorage + 512) = v4;
    v5 = *(v0 + 48);
    v6 = **(v0 + 56) - 100;
    if (v6 < 0xA && ((0x3F3u >> v6) & 1) != 0)
    {
      v7 = *&aNiamTlaniamnia[4 * v6];
    }

    else
    {
      v7 = 1835100526;
      if (gLogCategory_APEndpointStreamCarPlayAudio <= 90 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    v8 = *(*(v0 + 56) + 16);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (!v9 || v9(v5, v7, v8))
    {
      if (gLogCategory_APEndpointStreamCarPlayAudio <= 50 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
      {
        goto LABEL_19;
      }
    }

    else if (gLogCategory_APEndpointStreamCarPlayAudio <= 10 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
    {
LABEL_19:
      LogPrintF();
    }
  }

  APSRTPPacketHandlerReturnComposedBBuf(*(v0 + 64), *(v0 + 56));
  v10 = *(v0 + 64);
  if (v10)
  {
    CFRelease(v10);
  }

  CFRelease(*(v0 + 40));
  v11 = *(v0 + 48);
  if (v11)
  {

    CFRelease(v11);
  }
}

uint64_t carAudioStream_MarkPacket(uint64_t a1)
{
  v1 = APCarPlayAudioFormatInfoGetStreamType(a1) - 100;
  if ((v1 >= 7 || ((0x47u >> v1) & 1) == 0) && gLogCategory_APEndpointStreamCarPlayAudio <= 60 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
  {
    carAudioStream_MarkPacket_cold_1();
  }

  return kdebug_trace();
}

void carAudioStreamHandleDataReady(const void *a1)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 424))
  {
    return;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v59 = 0;
  memset(v60, 0, 10);
  v57 = 0;
  v58 = 0;
  v56 = 0;
  v55 = 0;
  v53 = 0;
  v54 = 0;
  v52[0] = 0;
  v52[1] = 0;
  memset(v51, 0, sizeof(v51));
  v50 = 0;
  Description = APCarPlayAudioFormatInfoGetDescription(*(DerivedStorage + 192));
  v4 = *(DerivedStorage + 432);
  v5 = *(DerivedStorage + 440);
  v6 = *(CMBaseObjectGetVTable() + 16);
  if (*v6 < 2uLL || (v7 = v6[8]) != 0 && !v7(v4, v5))
  {
    v10 = 0;
    EmptyBBuf = 0;
    goto LABEL_48;
  }

  EmptyBBuf = APSRTPPacketHandlerGetEmptyBBuf(*(DerivedStorage + 488));
  v9 = APSRTPPacketHandlerGetEmptyBBuf(*(DerivedStorage + 488));
  v10 = v9;
  v11 = *(DerivedStorage + 496);
  if (!EmptyBBuf || !v9)
  {
    if (!v11 && gLogCategory_APEndpointStreamCarPlayAudio <= 90 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    ++*(DerivedStorage + 496);
LABEL_48:
    v29 = *(DerivedStorage + 432);
    v30 = *(CMBaseObjectGetVTable() + 16);
    if (*v30 >= 2uLL)
    {
      v31 = v30[9];
      if (v31)
      {
        v31(v29, 0, 0, 0, 0, &v56, &v55, v51, v40);
      }
    }

    if (!EmptyBBuf)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  if (!v11)
  {
    goto LABEL_18;
  }

  if (gLogCategory_APEndpointStreamCarPlayAudio <= 90)
  {
    if (gLogCategory_APEndpointStreamCarPlayAudio == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_17;
      }

      v11 = *(DerivedStorage + 496);
    }

    v40 = v11;
    LogPrintF();
  }

LABEL_17:
  *(DerivedStorage + 496) = 0;
LABEL_18:
  if (APSTransportMessageGetAudioDataPointer())
  {
LABEL_67:
    APSLogErrorAt();
    goto LABEL_48;
  }

  v12 = *(DerivedStorage + 448);
  if (v12)
  {
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v13)
    {
      v14 = v13(v12);
    }

    else
    {
      v14 = 0;
    }

    v15 = v58 - v14;
    if (v58 > v14)
    {
      v43 = v14;
      v58 -= v14;
      goto LABEL_26;
    }

    goto LABEL_67;
  }

  v43 = 0;
  v15 = v58;
LABEL_26:
  v16 = *(DerivedStorage + 432);
  v44 = Description;
  if (*(Description + 20) <= 1u)
  {
    v17 = 0;
  }

  else
  {
    v17 = v52;
  }

  v18 = *(DerivedStorage + 440);
  v19 = *(CMBaseObjectGetVTable() + 16);
  if (*v19 >= 2uLL)
  {
    v20 = v19[9];
    if (v20)
    {
      v21 = v20(v16, v59, v15, v17, v18, &v56, &v55, v51, v40);
      if (v21)
      {
        if (v21 == -16774)
        {
          goto LABEL_52;
        }
      }

      else
      {
        APSAudioStats_ProcessAudioBuffer();
        v22 = v44;
        if (!APSTransportMessageCreateReferencingBBufWithAudioDataLength() && v10[2])
        {
          *v10 = carAudioStream_getRTPPayloadType(*(DerivedStorage + 68));
          v23 = *(DerivedStorage + 474) + 1;
          *(DerivedStorage + 474) = v23;
          LOWORD(v60[0]) = v23;
          *(v60 + 6) = 0;
          v24 = *(DerivedStorage + 200) ? (*v51 - ((*v51 * 2.32830644e-10) << 32)) : *(DerivedStorage + 480);
          *(v60 + 2) = v24;
          if (!APSTransportMessageSetAudioDataHeader())
          {
            if (APSRTPPacketHandlerComposeRTPPacketWithBBuf(*(DerivedStorage + 488), v10, v43, EmptyBBuf, &v50))
            {
              goto LABEL_62;
            }

            if (!*(DerivedStorage + 448))
            {
LABEL_60:
              v36 = *(DerivedStorage + 488);
              if (v36)
              {
                v37 = CFRetain(v36);
              }

              else
              {
                v37 = 0;
              }

              CFRetain(a1);
              v38 = *(DerivedStorage + 464);
              if (v38)
              {
                v38 = CFRetain(v38);
              }

              v39 = *(DerivedStorage + 168);
              lengthAtOffsetOut[0] = MEMORY[0x277D85DD0];
              lengthAtOffsetOut[1] = 0x40000000;
              lengthAtOffsetOut[2] = __carAudioStream_sendOneAudioDataMessage_block_invoke;
              lengthAtOffsetOut[3] = &__block_descriptor_tmp_182_0;
              v47 = v60[0];
              v48 = v60[1];
              lengthAtOffsetOut[4] = DerivedStorage;
              lengthAtOffsetOut[5] = a1;
              lengthAtOffsetOut[6] = v38;
              lengthAtOffsetOut[7] = EmptyBBuf;
              v46 = v55;
              lengthAtOffsetOut[8] = v37;
              dispatch_async(v39, lengthAtOffsetOut);
              *(DerivedStorage + 480) += (*(v22 + 20) * v55);
              return;
            }

            lengthAtOffsetOut[0] = 0;
            dataPointerOut = 0;
            if (APSTransportMessageGetAudioAADPointer() || CMBlockBufferGetDataPointer(*(EmptyBBuf + 2), 0, lengthAtOffsetOut, 0, &dataPointerOut))
            {
              goto LABEL_62;
            }

            v25 = lengthAtOffsetOut[0];
            v26 = v50;
            v27 = &dataPointerOut[v50];
            dataPointerOut = v27;
            if (v43)
            {
              if (CMBlockBufferGetDataPointer(*(EmptyBBuf + 2), lengthAtOffsetOut[0] - v43, 0, 0, &v57))
              {
LABEL_62:
                APSLogErrorAt();
                v10 = 0;
                goto LABEL_52;
              }

              v27 = dataPointerOut;
              v28 = v50;
              v41 = lengthAtOffsetOut[0];
              v42 = v57;
            }

            else
            {
              v41 = lengthAtOffsetOut[0];
              v42 = 0;
              v28 = v50;
            }

            v32 = *(DerivedStorage + 448);
            v34 = v53;
            v33 = v54;
            v35 = *(*(CMBaseObjectGetVTable() + 16) + 16);
            if (v35 && !v35(v32, v33, v34, v27, v25 - (v43 + v26), v27, v41 - v28, v42, v43))
            {
              v22 = v44;
              goto LABEL_60;
            }

            goto LABEL_62;
          }
        }
      }
    }
  }

  APSLogErrorAt();
LABEL_52:
  APSRTPPacketHandlerReturnBBuf(*(DerivedStorage + 488), EmptyBBuf);
LABEL_53:
  if (v10)
  {
    APSRTPPacketHandlerReturnBBuf(*(DerivedStorage + 488), v10);
  }
}

void *APSRTPPacketHandlerGetEmptyBBuf(uint64_t a1)
{
  if (*(a1 + 24))
  {
    if (CMSimpleQueueGetCount(*(a1 + 88)) >= 1)
    {
      Count = CMSimpleQueueGetCount(*(a1 + 88));
      if (Count)
      {
        v3 = Count;
        do
        {
          v4 = CMSimpleQueueDequeue(*(a1 + 88));
          if (v4)
          {
            CMSimpleQueueEnqueue(*(a1 + 80), v4);
          }

          --v3;
        }

        while (v3);
      }
    }

    v5 = CMSimpleQueueDequeue(*(a1 + 80));
    v6 = v5;
    if (v5)
    {
      v7 = v5[2];
      v6[2] = 0;
      if (v7)
      {
        CFRelease(v7);
      }

      *v6 = 0;
    }
  }

  else
  {
    APSLogErrorAt();
    return 0;
  }

  return v6;
}

uint64_t carplaysource_ReadPackets(const void *a1, void *a2, UInt32 a3, AudioStreamPacketDescription *a4, UInt32 a5, void *a6, UInt32 *a7, uint64_t a8)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = DerivedStorage;
  ioOutputDataPacketSize = a5;
  memset(&outOutputData, 0, sizeof(outOutputData));
  if (a5)
  {
    v18 = *(DerivedStorage + 76);
    outOutputData.mNumberBuffers = 1;
    outOutputData.mBuffers[0].mNumberChannels = v18;
    outOutputData.mBuffers[0].mDataByteSize = a3;
    outOutputData.mBuffers[0].mData = a2;
    v19 = AudioConverterFillComplexBuffer(*(DerivedStorage + 192), carplaysource_AudioConverterInputCallBack, DerivedStorage, &ioOutputDataPacketSize, &outOutputData, a4);
    *(v17 + 128) += *(v17 + 140);
    *(v17 + 140) = 0;
    if (v19 != -16774 && v19 != 0)
    {
      v21 = v19;
      if (gLogCategory_APAudioSourceCarPlay <= 60 && (gLogCategory_APAudioSourceCarPlay != -1 || _LogCategory_Initialize()))
      {
        carplaysource_ReadPackets_cold_1();
      }

      AudioConverterReset(*(v17 + 192));
      v22 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    *(DerivedStorage + 128) += *(DerivedStorage + 140);
    *(DerivedStorage + 140) = 0;
  }

  if (ioOutputDataPacketSize)
  {
    v23 = *(v17 + 68) * ioOutputDataPacketSize;
    *(v17 + 212) += v23;
    if (v23)
    {
      v44 = a1;
      v45 = a7;
      v46 = a4;
      v47 = a6;
      v24 = 1;
      v25 = 0.0;
      while (1)
      {
        v26 = v23;
        Head = CMSimpleQueueGetHead(*(v17 + 176));
        v28 = *(Head + 4);
        v29 = *(Head + 19);
        v30 = *(Head + 28);
        v31 = *(v17 + 188);
        if (v24)
        {
          v25 = v29 + v31;
        }

        v32 = v23 >= *Head - v31;
        v23 -= *Head - v31;
        if (v23 == 0 || !v32)
        {
          break;
        }

        v33 = Head;
        *(v17 + 188) = 0;
        if (gLogCategory_APAudioSourceCarPlay <= 10 && (gLogCategory_APAudioSourceCarPlay != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        CMSimpleQueueDequeue(*(v17 + 176));
        CMSimpleQueueEnqueue(*(v17 + 152), v33);
        v24 = 0;
        if (!v23)
        {
          goto LABEL_30;
        }
      }

      *(v17 + 188) = v31 + v26;
LABEL_30:
      v34 = v29;
      v35 = v28;
      v23 = 1;
      a4 = v46;
      a6 = v47;
      a1 = v44;
      a7 = v45;
    }

    else
    {
      v34 = 0;
      v35 = 0.0;
      v30 = 0.0;
      v25 = 0.0;
    }

    if (*(v17 + 248) && *(v17 + 212) >= *(v17 + 208))
    {
      v41 = mach_absolute_time();
      v42 = *(v17 + 208);
      *(v17 + 212) -= v42;
      if ((v35 + (v25 - v34 + v42 + *(v17 + 272)) * v30) > v41)
      {
        v43 = UpTicksToNanoseconds() + 1000000;
      }

      else
      {
        v43 = 0;
      }

      carplaysource_scheduleReadinessCallbackAfterTimeNs(a1, v43);
    }

    v21 = 0;
    goto LABEL_34;
  }

  v21 = 0;
  v22 = 1;
LABEL_26:
  if (*(v17 + 248))
  {
    if (a5)
    {
      v40 = 1000000;
    }

    else
    {
      v40 = 5000000;
    }

    carplaysource_scheduleReadinessCallbackAfterTimeNs(a1, v40);
    if ((v22 & 1) == 0)
    {
      return v21;
    }
  }

  else if ((v22 & 1) == 0)
  {
    return v21;
  }

  v23 = 0;
  v25 = 0.0;
LABEL_34:
  v36 = ioOutputDataPacketSize;
  *a7 = ioOutputDataPacketSize;
  if (a4)
  {
    v37 = 0;
    if (v36)
    {
      v38 = v36 - 1;
      do
      {
        v37 += a4[v38--].mDataByteSize;
      }

      while (v38 != -1);
    }
  }

  else
  {
    v37 = *(v17 + 64) * v36;
  }

  *a6 = v37;
  if (a8)
  {
    *a8 = v25;
    *(a8 + 8) = 0u;
    *(a8 + 24) = 0u;
    *(a8 + 40) = 0u;
    *(a8 + 56) = v23;
    *(a8 + 60) = 0;
  }

  return v21;
}

uint64_t carplaysource_AudioConverterInputCallBack(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 132);
  v6 = *(a5 + 128) + *(a5 + 140);
  *(a5 + 128) = v6;
  *(a5 + 140) = 0;
  v7 = v5 - v6;
  v8 = *(a5 + 24);
  if (*a2 * v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = *a2 * v8;
  }

  if (!v9)
  {
    return 4294950522;
  }

  v11 = *(a5 + 36);
  *(a3 + 16) = *(a5 + 104) + (*(a5 + 124) & v6);
  *(a3 + 8) = v11;
  *(a3 + 12) = v9;
  *a2 = v9 / v8;
  if (v8 <= v9)
  {
    v12 = *(a5 + 32);
    if (v12 <= v9)
    {
      v13 = v9 / v12;
      while (1)
      {
        Head = CMSimpleQueueGetHead(*(a5 + 168));
        v15 = *(a5 + 184);
        if (!v15)
        {
          CMSimpleQueueEnqueue(*(a5 + 176), Head);
          v15 = *(a5 + 184);
        }

        if (*Head - v15 > v13)
        {
          break;
        }

        CMSimpleQueueDequeue(*(a5 + 168));
        v16 = *(a5 + 184);
        v17 = v13 - *Head;
        *(a5 + 184) = 0;
        v13 = v17 + v16;
        if (!(v17 + v16))
        {
          goto LABEL_14;
        }
      }

      *(a5 + 184) = v15 + v13;
    }
  }

LABEL_14:
  result = 0;
  *(a5 + 140) = v9;
  return result;
}

uint64_t APSRTPPacketHandlerComposeRTPPacketWithBBuf(uint64_t a1, void *a2, unsigned int a3, int *a4, _DWORD *a5)
{
  Count = CMSimpleQueueGetCount(*(a1 + 96));
  if ((*(a1 + 24) & 1) == 0)
  {
    APSRTPPacketHandlerComposeRTPPacketWithBBuf_cold_17();
    v32 = 4294960561;
    goto LABEL_64;
  }

  if (!a4)
  {
    APSRTPPacketHandlerComposeRTPPacketWithBBuf_cold_16();
LABEL_58:
    v32 = 4294960591;
    goto LABEL_64;
  }

  if (!a2)
  {
    APSRTPPacketHandlerComposeRTPPacketWithBBuf_cold_15();
    goto LABEL_58;
  }

  if (!a5)
  {
    APSRTPPacketHandlerComposeRTPPacketWithBBuf_cold_14();
    goto LABEL_58;
  }

  v11 = Count;
  *a5 = 0;
  AudioDataHeader = APSTransportMessageGetAudioDataHeader();
  if (AudioDataHeader)
  {
    v32 = AudioDataHeader;
    APSRTPPacketHandlerComposeRTPPacketWithBBuf_cold_1();
    goto LABEL_64;
  }

  v13 = APSTransportMessageSetAudioDataHeader();
  if (v13)
  {
    v32 = v13;
    APSRTPPacketHandlerComposeRTPPacketWithBBuf_cold_2();
    goto LABEL_64;
  }

  *a4 = *a2;
  AudioDataTimestamp = APSTransportMessageGetAudioDataTimestamp();
  if (AudioDataTimestamp)
  {
    v32 = AudioDataTimestamp;
    APSRTPPacketHandlerComposeRTPPacketWithBBuf_cold_3();
    goto LABEL_64;
  }

  AudioDataPointer = APSTransportMessageGetAudioDataPointer();
  if (AudioDataPointer)
  {
    v32 = AudioDataPointer;
    APSRTPPacketHandlerComposeRTPPacketWithBBuf_cold_4();
    goto LABEL_64;
  }

  if (*(a1 + 28) < 2u)
  {
    goto LABEL_47;
  }

  v34 = a4;
  v16 = 0;
  v17 = *a2;
  if (*a2 > 100)
  {
    if (v17 == 101)
    {
      v17 = 105;
    }

    else if (v17 == 106)
    {
      v17 = 108;
    }
  }

  else if (v17 == 96)
  {
    v17 = 97;
  }

  else if (v17 == 100)
  {
    v17 = 104;
  }

  *v34 = v17;
  element = a2;
  if (*(a1 + 152))
  {
    APSTransportMessageGetAudioDataPointer();
    APSTransportMessageGetAudioDataPointer();
    v19 = *(a1 + 148);
    v18 = *(a1 + 152);
    if (v18)
    {
      v19 = (v18 + v19 - 1) % *(a1 + 144);
    }

    QueueIsIndexInRange((a1 + 104), v19);
    v20 = a3 + *(*(a1 + 136) + 4 * v19) + 5;
    if (a3 + *(*(a1 + 136) + 4 * v19) == -5)
    {
      v22 = 1;
      do
      {
        v21 = v22;
        if (!QueueIsIndexInRange((a1 + 104), v19) || v19 == *(a1 + 148))
        {
          break;
        }

        if (!v19)
        {
          v19 = *(a1 + 144);
        }

        QueueIsIndexInRange((a1 + 104), --v19);
        v20 += *(*(a1 + 136) + 4 * v19) + 4;
        v22 = v21 + 1;
      }

      while (!v20);
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  v23 = 1;
  if (!v11)
  {
LABEL_46:
    a2 = element;
    *v16 = *element & 0x7F;
LABEL_47:
    v30 = APSTransportMessageGetAudioDataPointer();
    if (v30)
    {
      v32 = v30;
      APSRTPPacketHandlerComposeRTPPacketWithBBuf_cold_8();
    }

    else
    {
      APSRTPPacketHandlerComposeRTPPacketWithBBuf_cold_13();
      v32 = 4294960569;
    }

    goto LABEL_64;
  }

  v24 = 0;
  while (1)
  {
    v25 = CMSimpleQueueDequeue(*(a1 + 96));
    if (!v25)
    {
      APSRTPPacketHandlerComposeRTPPacketWithBBuf_cold_7();
      return 0;
    }

    v26 = v25;
    if (v24 >= v11 - v21)
    {
      break;
    }

LABEL_39:
    if (v24 || v11 != *(a1 + 28) - 1)
    {
      CMSimpleQueueEnqueue(*(a1 + 96), v26);
    }

    else
    {
      APSRTPPacketHandlerReturnBBuf(a1, v26);
      v29 = *(a1 + 152);
      if (v29 && v29 == *(a1 + 144))
      {
        *(a1 + 148) = (*(a1 + 148) + 1) % v29;
        *(a1 + 152) = v29 - 1;
      }
    }

    if (v11 == ++v24)
    {
      goto LABEL_46;
    }
  }

  v27 = APSTransportMessageGetAudioDataPointer();
  if (v27)
  {
    v32 = v27;
    APSRTPPacketHandlerComposeRTPPacketWithBBuf_cold_5();
    goto LABEL_53;
  }

  v28 = APSTransportMessageGetAudioDataTimestamp();
  if (!v28)
  {
    *v16 = bswap32((*v26 << 24) | 0x80000000);
    v16 += 4;
    ++v23;
    goto LABEL_39;
  }

  v32 = v28;
  APSRTPPacketHandlerComposeRTPPacketWithBBuf_cold_6();
LABEL_53:
  a2 = element;
LABEL_64:
  if (gLogCategory_APSRTPPacketHandler <= 90 && (gLogCategory_APSRTPPacketHandler != -1 || _LogCategory_Initialize()))
  {
    APSRTPPacketHandlerComposeRTPPacketWithBBuf_cold_18();
    if (a2)
    {
LABEL_68:
      APSRTPPacketHandlerReturnBBuf(a1, a2);
    }
  }

  else if (a2)
  {
    goto LABEL_68;
  }

  return v32;
}

uint64_t APSRTPPacketHandlerReturnBBuf(uint64_t a1, void *element)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    return APSRTPPacketHandlerReturnBBuf_cold_2();
  }

  if (!element)
  {
    return APSRTPPacketHandlerReturnBBuf_cold_1();
  }

  v4 = element[2];
  element[2] = 0;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 80);

  return CMSimpleQueueEnqueue(v5, element);
}

uint64_t carplaysource_SetOutputFormat(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  if (a2)
  {
    if (*(DerivedStorage + 56))
    {
      __s1[0] = *(DerivedStorage + 48);
      __s1[1] = 0xC6C70636DLL;
      v5 = *(DerivedStorage + 76);
      v11 = 2 * v5;
      v12 = 1;
      v13 = 2 * v5;
      v14 = v5;
      v15 = 16;
      result = memcmp(__s1, (DerivedStorage + 8), 0x28uLL);
      if (!result)
      {
        v7 = *a2;
        v8 = a2[1];
        *(v4 + 80) = *(a2 + 4);
        *(v4 + 48) = v7;
        *(v4 + 64) = v8;
        return result;
      }

      carplaysource_SetOutputFormat_cold_1();
    }

    else
    {
      carplaysource_SetOutputFormat_cold_2();
    }

    return 4294950525;
  }

  else
  {
    result = 0;
    v9 = *(v4 + 24);
    *(v4 + 48) = *(v4 + 8);
    *(v4 + 64) = v9;
    *(v4 + 80) = *(v4 + 40);
  }

  return result;
}

CFTypeRef airPlayDescription_copyIsConnectedOverUSB(uint64_t a1, void *a2)
{
  if (*(CMBaseObjectGetDerivedStorage() + 8) && APTransportDeviceIsConnectedOverUSB())
  {
    v3 = MEMORY[0x277CBED28];
  }

  else
  {
    v3 = MEMORY[0x277CBED10];
  }

  result = CFRetain(*v3);
  *a2 = result;
  return result;
}

uint64_t apsession_SetupStreamCreatingResponse()
{
  if (!*CMBaseObjectGetDerivedStorage())
  {
    return APSDispatchSyncTask();
  }

  apsession_SetupStreamCreatingResponse_cold_1();
  return 4294954511;
}

CFStringRef _APCarPlayAudioFormatInfoCopyFormattingDesc(const void *a1)
{
  AppendPrintF();
  v2 = CFGetAllocator(a1);
  v3 = CFStringCreateWithCString(v2, 0, 0x8000100u);
  free(0);
  return v3;
}

uint64_t carAudioStream_setProperty(const void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamCarPlayAudio <= 10 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (CFEqual(a2, *MEMORY[0x277CC1860]))
  {
    if (*(DerivedStorage + 73))
    {
      v7 = CMBaseObjectGetDerivedStorage();
      CFRetain(a1);
      if (a3)
      {
        CFRetain(a3);
      }

      v8 = *(v7 + 120);
      block = MEMORY[0x277D85DD0];
      v18 = 0x40000000;
      v9 = __carAudioStream_setAudioSource_block_invoke;
      v10 = &__block_descriptor_tmp_63;
LABEL_15:
      v19 = v9;
      v20 = v10;
      v21 = v7;
      v22 = a1;
      v23 = a3;
LABEL_16:
      p_block = &block;
      goto LABEL_17;
    }

    carAudioStream_setProperty_cold_1();
    return 4294954509;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1858]))
  {
    if (*(DerivedStorage + 72))
    {
      v7 = CMBaseObjectGetDerivedStorage();
      CFRetain(a1);
      if (a3)
      {
        CFRetain(a3);
      }

      v8 = *(v7 + 120);
      block = MEMORY[0x277D85DD0];
      v18 = 0x40000000;
      v9 = __carAudioStream_setAudioSink_block_invoke;
      v10 = &__block_descriptor_tmp_65;
      goto LABEL_15;
    }

    carAudioStream_setProperty_cold_2();
    return 4294954509;
  }

  if (CFEqual(a2, @"AudioFormatInfo"))
  {
    v13 = CMBaseObjectGetDerivedStorage();
    CFRetain(a1);
    if (a3)
    {
      CFRetain(a3);
    }

    v8 = *(v13 + 120);
    block = MEMORY[0x277D85DD0];
    v18 = 0x40000000;
    v19 = __carAudioStream_setAudioFormatInfo_block_invoke;
    v20 = &__block_descriptor_tmp_66;
    v21 = v13;
    v22 = a3;
    v23 = a1;
    goto LABEL_16;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1910]))
  {
    v14 = CMBaseObjectGetDerivedStorage();
    CFRetain(a1);
    if (a3)
    {
      CFRetain(a3);
    }

    v15 = *(v14 + 120);
    block = MEMORY[0x277D85DD0];
    v18 = 0x40000000;
    v19 = __carAudioStream_setVocoderInfo_block_invoke;
    v20 = &__block_descriptor_tmp_67;
    v21 = v14;
    v22 = a3;
    v23 = a1;
    dispatch_async(v15, &block);
    if (!a3)
    {
      return 0;
    }

    v8 = *(v14 + 168);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 0x40000000;
    v16[2] = __carAudioStream_setVocoderInfo_block_invoke_2;
    v16[3] = &__block_descriptor_tmp_75;
    v16[4] = v14;
    v16[5] = a1;
    v16[6] = a3;
    p_block = v16;
LABEL_17:
    dispatch_async(v8, p_block);
    return 0;
  }

  if (gLogCategory_APEndpointStreamCarPlayAudio <= 30 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return 4294954512;
}

uint64_t APAudioSourceCarPlayCreate(uint64_t a1, __int128 *a2, void *a3)
{
  if (!a2)
  {
    APAudioSourceCarPlayCreate_cold_5();
    return 4294950525;
  }

  if (!a3)
  {
    APAudioSourceCarPlayCreate_cold_4();
    return 4294950525;
  }

  if (*(a2 + 2) != 1819304813)
  {
    APAudioSourceCarPlayCreate_cold_1();
    return 4294950525;
  }

  if (*(a2 + 8) != 16)
  {
    APAudioSourceCarPlayCreate_cold_2();
    return 4294950525;
  }

  FigEndpointAudioSourceGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    v11 = v5;
    APSLogErrorAt();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v7 = *(a2 + 4);
    v8 = a2[1];
    *(DerivedStorage + 8) = *a2;
    *(DerivedStorage + 24) = v8;
    *(DerivedStorage + 40) = v7;
    v10 = *a2;
    v9 = a2[1];
    *(DerivedStorage + 80) = *(a2 + 4);
    *(DerivedStorage + 48) = v10;
    *(DerivedStorage + 64) = v9;
    *(DerivedStorage + 88) = 100;
    if (gLogCategory_APAudioSourceCarPlay <= 30 && (gLogCategory_APAudioSourceCarPlay != -1 || _LogCategory_Initialize()))
    {
      APAudioSourceCarPlayCreate_cold_3();
    }

    v11 = 0;
    *a3 = 0;
  }

  return v11;
}

uint64_t carAudioStream_resume(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2000000000;
  v19 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2000000000;
  v17[3] = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2000000000;
  v16[3] = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2000000000;
  v15[3] = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2000000000;
  v14[3] = 0;
  v9 = *(DerivedStorage + 120);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carAudioStream_resume_block_invoke;
  block[3] = &unk_27849B528;
  block[4] = v18;
  block[5] = v17;
  block[6] = v16;
  block[7] = v15;
  block[8] = v14;
  block[9] = DerivedStorage;
  dispatch_sync(v9, block);
  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  v10 = *(DerivedStorage + 168);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 0x40000000;
  v12[2] = __carAudioStream_resume_block_invoke_2;
  v12[3] = &unk_27849B5E0;
  v12[4] = v18;
  v12[5] = v15;
  v12[6] = v17;
  v12[7] = v16;
  v12[8] = v14;
  v12[9] = DerivedStorage;
  v12[10] = a1;
  v12[11] = a2;
  v12[12] = a3;
  v12[13] = a4;
  dispatch_async(v10, v12);
  _Block_object_dispose(v14, 8);
  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v18, 8);
  return 0;
}

CFTypeRef __carAudioStream_resume_block_invoke(void *a1)
{
  v2 = a1[9];
  v3 = *(v2 + 132) + 1;
  *(v2 + 132) = v3;
  *(*(a1[4] + 8) + 24) = v3;
  v4 = *(v2 + 152);
  if (v4)
  {
    v4 = CFRetain(v4);
  }

  *(*(a1[5] + 8) + 24) = v4;
  v5 = *(a1[9] + 160);
  if (v5)
  {
    v5 = CFRetain(v5);
  }

  *(*(a1[6] + 8) + 24) = v5;
  v6 = *(a1[9] + 136);
  if (v6)
  {
    v6 = CFRetain(v6);
  }

  *(*(a1[7] + 8) + 24) = v6;
  result = *(a1[9] + 144);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(a1[8] + 8) + 24) = result;
  return result;
}

void *__carAudioStream_resume_block_invoke_3(void *result)
{
  *(*(result[4] + 8) + 24) = *(result[7] + 128);
  *(*(result[5] + 8) + 24) = *(*(result[6] + 8) + 24) == *(result[7] + 132);
  return result;
}

uint64_t carplaysource_SetProperty(uint64_t a1, const void *a2)
{
  v5 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"BufferCapacityMS"))
  {
    DerivedStorage[22] = CFGetInt64Ranged();
  }

  else if (CFEqual(a2, @"PacketSizeLimit"))
  {
    DerivedStorage[23] = CFGetInt64();
  }

  else if (CFEqual(a2, @"VBRTestingBitRate"))
  {
    DerivedStorage[24] = CFGetInt64();
  }

  else
  {
    return -12784;
  }

  return v5;
}

uint64_t APCarPlayAudioFormatInfoGetAudioType(uint64_t result)
{
  if (result)
  {
    return *(result + 112);
  }

  return result;
}

uint64_t APCarPlayAudioFormatInfoGetAudioFormat(uint64_t result)
{
  if (result)
  {
    return *(result + 96);
  }

  return result;
}

uint64_t apsession_registryContainsStream()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CFStringCreateF();
  FigSimpleMutexLock();
  v2 = CFDictionaryContainsKey(*(DerivedStorage + 576), v1);
  FigSimpleMutexUnlock();
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

uint64_t apsession_ensureStartedInternal(uint64_t a1)
{
  v5[0] = a1;
  memset(&v5[1], 0, 24);
  v4[0] = a1;
  v4[1] = 0;
  started = apsession_ensureStartedInternalStage1StartTransaction(v5);
  if (started)
  {
    v2 = started;
    apsession_ensureStartedInternal_cold_1();
  }

  else
  {
    v2 = apsession_ensureStartedInternalStage2StartTransaction(v4);
    if (v2)
    {
      apsession_ensureStartedInternal_cold_2();
    }
  }

  return v2;
}

uint64_t apsession_ensureStartedInternalStage1StartTransaction(uint64_t a1)
{
  OUTLINED_FUNCTION_24();
  v4 = *v3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v77 = 0;
  v78 = 0;
  v76 = 0;
  if (gLogCategory_APSenderSessionAirPlay <= 30 && (gLogCategory_APSenderSessionAirPlay != -1 || OUTLINED_FUNCTION_10()))
  {
    OUTLINED_FUNCTION_3();
    LogPrintF();
  }

  if (*DerivedStorage)
  {
    v25 = 4294954511;
    goto LABEL_122;
  }

  if (*(DerivedStorage + 217))
  {
    goto LABEL_177;
  }

  FigSimpleMutexLock();
  v6 = *(DerivedStorage + 306);
  v7 = *(DerivedStorage + 308);
  v8 = *(DerivedStorage + 424);
  v9 = *(a1 + 16);
  *(DerivedStorage + 424) = v9;
  if (v9)
  {
    CFRetain(v9);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  FigSimpleMutexUnlock();
  if (v6)
  {
    v25 = 0;
    goto LABEL_131;
  }

  if (v7)
  {
LABEL_177:
    v25 = 4294895467;
    goto LABEL_122;
  }

  v10 = CMBaseObjectGetDerivedStorage();
  *(v10 + 456) = 0;
  *(v10 + 480) = 0;
  CFArrayGetCount(*(v10 + 168));
  v11 = CFStringCreateF();
  APSEventRecorderRemoveChildEventRecorderFromParent();
  if (*(v10 + 176))
  {
    CFRelease(*(v10 + 176));
    *(v10 + 176) = 0;
  }

  v12 = APSEventRecorderCreate();
  if (v12)
  {
    v25 = v12;
  }

  else
  {
    if (*(v10 + 72) == 5)
    {
      v13 = APSEventRecorderAddSignPostForEvent();
      if (v13)
      {
        v25 = v13;
        goto LABEL_204;
      }

      v14 = APSEventRecorderAddSignPostForEvent();
      if (v14)
      {
        v25 = v14;
        goto LABEL_204;
      }

      v15 = APSEventRecorderAddSignPostForEvent();
      if (v15)
      {
        v25 = v15;
        goto LABEL_204;
      }

      v16 = APSEventRecorderAddSignPostForEvent();
      if (v16)
      {
        v25 = v16;
        goto LABEL_204;
      }

      v17 = APSEventRecorderAddSignPostForEvent();
      if (v17)
      {
        v25 = v17;
        goto LABEL_204;
      }

      v18 = APSEventRecorderAddSignPostForEvent();
      if (v18)
      {
        v25 = v18;
        goto LABEL_204;
      }

      v19 = APSEventRecorderAddSignPostForEvent();
      if (v19)
      {
        v25 = v19;
        goto LABEL_204;
      }

      v20 = APSEventRecorderAddSignPostForEvent();
      if (v20)
      {
        v25 = v20;
        goto LABEL_204;
      }

      v21 = APSEventRecorderAddSignPostForEvent();
      if (v21)
      {
        v25 = v21;
        goto LABEL_204;
      }

      v22 = APSEventRecorderAddSignPostForEvent();
      if (v22)
      {
        v25 = v22;
        goto LABEL_204;
      }

      v23 = APSEventRecorderAddSignPostForEvent();
      if (v23)
      {
        v25 = v23;
        goto LABEL_204;
      }

      v24 = APSEventRecorderAddSignPostForEvent();
      if (v24)
      {
        v25 = v24;
        goto LABEL_204;
      }
    }

    v25 = MEMORY[0x223DAE7F0](*(v10 + 160), *(v10 + 176));
    if (!v25)
    {
      CFArrayAppendValue(*(v10 + 168), *(v10 + 176));
      goto LABEL_31;
    }
  }

LABEL_204:
  APSLogErrorAt();
LABEL_31:
  if (v11)
  {
    CFRelease(v11);
  }

  if (v25)
  {
    goto LABEL_206;
  }

  APSEventRecorderRecordEvent();
  if (IsAppleInternalBuild() && gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  mach_absolute_time();
  v25 = apsession_ensureConnectedInternal(v4);
  mach_absolute_time();
  if (IsAppleInternalBuild())
  {
    v26 = v25 ? 90 : 50;
    if (v26 >= gLogCategory_APSenderSessionAirPlay && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
    {
      if (v25)
      {
        v1 = "failed to connect";
      }

      else
      {
        v1 = "connected";
      }

      UpTicksToMilliseconds();
      OUTLINED_FUNCTION_24();
      LogPrintF();
    }
  }

  if (v25)
  {
    goto LABEL_206;
  }

  if (*(DerivedStorage + 176))
  {
    APSEventRecorderRecordEvent();
  }

  if (*(DerivedStorage + 72) == 5)
  {
    v27 = LogCategoryCopyOSLogHandle();
    if (OUTLINED_FUNCTION_26(v27))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_221FFA000, v1, OS_SIGNPOST_EVENT, 0x2B8D081CuLL, "AP_SIGNPOST_CAR_AUTHORIZE_START", &unk_2222A918B, buf, 2u);
    }

    OUTLINED_FUNCTION_24();
    if (v25)
    {
      os_release(v25);
    }
  }

  v82 = 0;
  v28 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  *buf = 0;
  v79 = 0;
  if (*(v28 + 114))
  {
    if (gLogCategory_APSenderSessionAirPlay <= 60 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_70;
  }

  v29 = v28;
  if (*(v28 + 72) == 10 || APSGetFBOPropertyInt64())
  {
LABEL_70:
    v34 = 0;
    v33 = 0;
    v35 = 0;
    goto LABEL_71;
  }

  v30 = APSGetFBOPropertyInt64();
  if (v82)
  {
    APSLogErrorAt();
    goto LABEL_70;
  }

  FigSimpleMutexLock();
  v31 = *(v29 + 408);
  if (v31)
  {
    v31 = CFRetain(v31);
  }

  cf = v31;
  v32 = *(v29 + 416);
  if (v32)
  {
    v33 = CFRetain(v32);
  }

  else
  {
    v33 = 0;
  }

  v57 = *(v29 + 424);
  if (v57)
  {
    v35 = CFRetain(v57);
  }

  else
  {
    v35 = 0;
  }

  v58 = *(v29 + 328);
  if (v58)
  {
    v34 = CFRetain(v58);
  }

  else
  {
    v34 = 0;
  }

  FigSimpleMutexUnlock();
  v36 = cf;
  if (cf)
  {
    goto LABEL_72;
  }

  if (!v34)
  {
    APSLogErrorAt();
    v75 = -71821;
    goto LABEL_180;
  }

  switch(v30)
  {
    case 1:
      v67 = MEMORY[0x277CBECE8];
      if (IsAppleInternalBuild() && *(v29 + 72) == 5)
      {
        v68 = *v67;
        CMBaseObject = APEndpointDescriptionGetCMBaseObject(*(v29 + 56));
        v82 = CMBaseObjectCopyProperty(CMBaseObject, @"MACAddress", v68, buf);
        if (v82)
        {
          goto LABEL_212;
        }

        v82 = APAuthenticationClientRSACreate(v68, v34, *buf, &cf);
        if (v82)
        {
          goto LABEL_212;
        }

        goto LABEL_169;
      }

      goto LABEL_168;
    case 32:
      if (v33)
      {
        v62 = *MEMORY[0x277CBECE8];
        v63 = APPairingClientGetCMBaseObject(v33);
        v82 = CMBaseObjectCopyProperty(v63, 0x283577310, v62, &v79);
        if (v82)
        {
          goto LABEL_212;
        }

        v82 = APAuthenticationClientMFiMutualAuthCreate(v62, v34, v35, v79, &cf);
        if (v82)
        {
          goto LABEL_212;
        }

        goto LABEL_169;
      }

      APSLogErrorAt();
      v75 = -71829;
LABEL_180:
      v82 = v75;
      goto LABEL_71;
    case 8:
      v64 = OUTLINED_FUNCTION_13_3();
      v82 = APAuthenticationClientMFiCreate(v64, v65, v66);
      if (v82)
      {
        goto LABEL_212;
      }

      goto LABEL_169;
    case 16:
LABEL_168:
      v70 = OUTLINED_FUNCTION_13_3();
      v82 = APAuthenticationClientTokenCreate(v70, v71, v72);
      if (v82)
      {
        goto LABEL_212;
      }

      goto LABEL_169;
  }

  if (v30 != 4)
  {
    if (gLogCategory_APSenderSessionAirPlay <= 90 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v75 = -71824;
    goto LABEL_180;
  }

  v59 = OUTLINED_FUNCTION_13_3();
  v82 = APAuthenticationClientFairPlayCreate(v59, v60, v61);
  if (v82)
  {
LABEL_212:
    APSLogErrorAt();
    goto LABEL_71;
  }

LABEL_169:
  v82 = APAuthenticationClientAuthenticateEndpoint(cf);
  if (v82)
  {
    goto LABEL_212;
  }

  FigSimpleMutexLock();
  v73 = *(v29 + 408);
  v74 = cf;
  *(v29 + 408) = cf;
  if (v74)
  {
    CFRetain(v74);
  }

  if (v73)
  {
    CFRelease(v73);
  }

  FigSimpleMutexUnlock();
LABEL_71:
  v36 = cf;
  if (cf)
  {
LABEL_72:
    CFRelease(v36);
  }

  if (*buf)
  {
    CFRelease(*buf);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v79)
  {
    CFRelease(v79);
  }

  v25 = v82;
  if (*(DerivedStorage + 176))
  {
    APSEventRecorderRecordEvent();
  }

  OUTLINED_FUNCTION_23_0();
  if (v37)
  {
    v38 = LogCategoryCopyOSLogHandle();
    if (OUTLINED_FUNCTION_27_0(v38))
    {
      OUTLINED_FUNCTION_14_2();
      OUTLINED_FUNCTION_21(&dword_221FFA000, v34, v40, v39 | 0x80, "AP_SIGNPOST_CAR_AUTHORIZE_COMPLETE", &unk_2222A918B, buf);
    }

    if (v35)
    {
      os_release(v35);
    }
  }

  if (v25)
  {
    goto LABEL_206;
  }

  v41 = apsession_ensureKeyHolderSetUp();
  if (v41)
  {
    v25 = v41;
    goto LABEL_206;
  }

  if (*(DerivedStorage + 80))
  {
    v42 = apsession_ensureSenderNetworkClockStarted(v4);
    if (v42)
    {
      v25 = v42;
      goto LABEL_206;
    }
  }

  if (*(DerivedStorage + 176))
  {
    APSEventRecorderRecordEvent();
  }

  OUTLINED_FUNCTION_23_0();
  if (v37)
  {
    v43 = LogCategoryCopyOSLogHandle();
    if (OUTLINED_FUNCTION_26(v43))
    {
      OUTLINED_FUNCTION_14_2();
      OUTLINED_FUNCTION_21(&dword_221FFA000, v35, v45, v44 + 140, "AP_SIGNPOST_CAR_SETUPMESSAGE_START", &unk_2222A918B, buf);
    }
  }

  v25 = apsession_ensureControlStreamSetup(v4, *(a1 + 8), &v78 + 1, &v78, &v77, &v76);
  if (*(DerivedStorage + 176))
  {
    APSEventRecorderRecordEvent();
  }

  OUTLINED_FUNCTION_23_0();
  if (v37)
  {
    v46 = LogCategoryCopyOSLogHandle();
    if (OUTLINED_FUNCTION_27_0(v46))
    {
      OUTLINED_FUNCTION_14_2();
      OUTLINED_FUNCTION_21(&dword_221FFA000, v34, v48, v47 + 144, "AP_SIGNPOST_CAR_SETUPMESSAGE_COMPLETE", &unk_2222A918B, buf);
    }

    if (v35)
    {
      os_release(v35);
    }
  }

  if (v25)
  {
    goto LABEL_206;
  }

  if (v76)
  {
    v49 = *(a1 + 24);
    if (v49)
    {
      *v49 = v76;
      v76 = 0;
    }
  }

  if (v78)
  {
    OUTLINED_FUNCTION_23_0();
    if (v37)
    {
      v56 = apsession_ensureLowPowerKeepAliveStreamSetup(v4, v50);
      if (v56)
      {
        v25 = v56;
LABEL_206:
        APSLogErrorAt();
        goto LABEL_122;
      }
    }
  }

  if (*(DerivedStorage + 24) == @"PTP")
  {
    v51 = *(DerivedStorage + 280);
    v52 = v77;
    *(DerivedStorage + 280) = v77;
    if (v52)
    {
      CFRetain(v52);
    }

    if (v51)
    {
      CFRelease(v51);
    }

    v53 = apsession_addPeerToNetworkClock();
    if (v53)
    {
      v25 = v53;
      goto LABEL_206;
    }
  }

  v25 = apsession_ensureEventStreamCreated(v4, SHIDWORD(v78));
  if (v25)
  {
    goto LABEL_206;
  }

LABEL_122:
  if (v25)
  {
    v54 = 90;
  }

  else
  {
    v54 = 50;
  }

  if (v54 >= gLogCategory_APSenderSessionAirPlay && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v25)
  {
    apsession_recordActivationMessageTiming(v4);
    apsession_disconnectControlStream(v4);
  }

LABEL_131:
  if (v77)
  {
    CFRelease(v77);
  }

  if (v76)
  {
    CFRelease(v76);
  }

  return v25;
}

uint64_t apsession_ensureStartedInternalStage2StartTransaction(uint64_t a1)
{
  v125 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = 0x280FB0000uLL;
  if (gLogCategory_APSenderSessionAirPlay <= 30)
  {
    if (gLogCategory_APSenderSessionAirPlay != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_7_3();
      LogPrintF();
    }
  }

  if (*DerivedStorage)
  {
    APSLogErrorAt();
    Info = 4294954511;
    goto LABEL_212;
  }

  if (*(DerivedStorage + 217))
  {
    APSLogErrorAt();
    Info = 4294895467;
    goto LABEL_212;
  }

  FigSimpleMutexLock();
  v5 = *(DerivedStorage + 306);
  FigSimpleMutexUnlock();
  if (v5)
  {
    goto LABEL_211;
  }

  if (*(DerivedStorage + 176))
  {
    APSEventRecorderRecordEvent();
  }

  OUTLINED_FUNCTION_25();
  if (v11)
  {
    v6 = LogCategoryCopyOSLogHandle();
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = MEMORY[0x277D86220];
    }

    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      OUTLINED_FUNCTION_21(&dword_221FFA000, v8, v9, 0x2B8D08B0uLL, "AP_SIGNPOST_CAR_INFOMESSAGE_START", &unk_2222A918B, buf);
    }

    if (v7)
    {
      os_release(v7);
    }
  }

  mach_absolute_time();
  v10 = *(DerivedStorage + 72);
  v11 = v10 == 9 || v10 == 4;
  if (!v11 || !APSIsInAirPlaySenderSystemServer() || !FVDUtilsEncryptedEncodeSupported() || !APSSettingsIsFeatureEnabled())
  {
    goto LABEL_41;
  }

  *buf = 0;
  OUTLINED_FUNCTION_19_1();
  domain_answer = os_eligibility_get_domain_answer();
  if (!domain_answer)
  {
LABEL_32:
    v14 = *buf;
    if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || OUTLINED_FUNCTION_4()))
    {
      OUTLINED_FUNCTION_2_0();
      LogPrintF();
    }

    if (v14 != 4)
    {
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  if (gLogCategory_APSenderSessionAirPlay < 91)
  {
    v13 = domain_answer;
    if (gLogCategory_APSenderSessionAirPlay != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
    {
      strerror(v13);
      OUTLINED_FUNCTION_8();
      LogPrintF();
    }

    goto LABEL_32;
  }

  if (*buf != 4)
  {
LABEL_41:
    v17 = 0;
    goto LABEL_42;
  }

LABEL_39:
  v15 = *(DerivedStorage + 56);
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v16 || !v16(v15, 87))
  {
    goto LABEL_41;
  }

  if (APSIsDemoModeEnabled())
  {
    v17 = APSSettingsGetIntWithDefault() != 0;
  }

  else
  {
    v17 = 1;
  }

LABEL_42:
  if (APSGetFBOPropertyInt64() && v17)
  {
    v17 = APSSettingsGetIntWithDefault() != 0;
  }

  v18 = *(a1 + 8);
  v19 = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionAirPlay <= 30)
  {
    if (gLogCategory_APSenderSessionAirPlay != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_7_3();
      LogPrintF();
    }
  }

  if (*(v19 + 196))
  {
    Info = 0;
  }

  else
  {
    Info = apsession_fetchInfo(v2, 0, v17, v18);
    if (Info)
    {
      APSLogErrorAt();
    }

    else
    {
      *(v19 + 196) = 1;
    }
  }

  mach_absolute_time();
  if (*(DerivedStorage + 176))
  {
    OUTLINED_FUNCTION_16_1();
    APSEventRecorderRecordEvent();
  }

  OUTLINED_FUNCTION_25();
  if (v11)
  {
    v21 = LogCategoryCopyOSLogHandle();
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = MEMORY[0x277D86220];
    }

    if (os_signpost_enabled(v23))
    {
      *buf = 0;
      OUTLINED_FUNCTION_21(&dword_221FFA000, v23, v24, 0x2B8D08B4uLL, "AP_SIGNPOST_CAR_INFOMESSAGE_COMPLETE", &unk_2222A918B, buf);
    }

    v4 = 0x280FB0000uLL;
    if (v22)
    {
      os_release(v22);
    }
  }

  if (IsAppleInternalBuild())
  {
    OUTLINED_FUNCTION_9_3();
    if (v64 ^ v65 | v11)
    {
      if (v25 != -1 || OUTLINED_FUNCTION_4())
      {
        UpTicksToMilliseconds();
        OUTLINED_FUNCTION_2_0();
        LogPrintF();
      }
    }
  }

  if (Info)
  {
    goto LABEL_316;
  }

  v26 = *(DerivedStorage + 72);
  if (v26 > 8 || ((1 << v26) & 0x1C2) == 0)
  {
    OUTLINED_FUNCTION_16_1();
    APSEventRecorderRecordEvent();
    mach_absolute_time();
    v100 = CMBaseObjectGetDerivedStorage();
    LODWORD(v122) = 0;
    *buf = 0;
    if (gLogCategory_APSenderSessionAirPlay <= 30)
    {
      if (gLogCategory_APSenderSessionAirPlay != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
      {
        OUTLINED_FUNCTION_7_3();
        LogPrintF();
      }
    }

    if (*(v100 + 195))
    {
      v102 = 0;
      Info = 0;
LABEL_283:
      if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || OUTLINED_FUNCTION_4()))
      {
        OUTLINED_FUNCTION_2_0();
        LogPrintF();
        if (!v102)
        {
          goto LABEL_288;
        }
      }

      else if (!v102)
      {
LABEL_288:
        mach_absolute_time();
        OUTLINED_FUNCTION_16_1();
        APSEventRecorderRecordEvent();
        v4 = 0x280FB0000;
        if (IsAppleInternalBuild() && (OUTLINED_FUNCTION_9_3(), v64 ^ v65 | v11) && (v112 != -1 || OUTLINED_FUNCTION_4()))
        {
          UpTicksToMilliseconds();
          OUTLINED_FUNCTION_2_0();
          LogPrintF();
          if (Info)
          {
            goto LABEL_316;
          }
        }

        else if (Info)
        {
          goto LABEL_316;
        }

        goto LABEL_73;
      }

      CFRelease(v102);
      goto LABEL_288;
    }

    if (!APSGetFBOPropertyInt64())
    {
      OUTLINED_FUNCTION_11_2();
      if (v64 ^ v65 | v11)
      {
        if (v101 != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
        {
          OUTLINED_FUNCTION_8();
          LogPrintF();
        }
      }

      v102 = 0;
      Info = 0;
      goto LABEL_282;
    }

    apsession_copyTransportControlStream(v2, buf);
    v102 = *buf;
    if (*buf)
    {
      Info = APSenderSessionUtilityFetchInitialVolume(*buf, &v122);
      if (!Info)
      {
        FigSimpleMutexLock();
        *(v100 + 400) = v122;
        FigSimpleMutexUnlock();
LABEL_282:
        *(v100 + 195) = 1;
        goto LABEL_283;
      }
    }

    else
    {
      Info = 4294895475;
    }

    APSLogErrorAt();
    goto LABEL_283;
  }

LABEL_73:
  v27 = MEMORY[0x277CBECE8];
  if (!v17)
  {
    goto LABEL_74;
  }

  if (*(DerivedStorage + 200))
  {
    CFDictionaryGetInt64();
  }

  if (!FVDUtilsSupportedProtectionFlags())
  {
    OUTLINED_FUNCTION_9_3();
    if (v64 ^ v65 | v11 && (v35 != -1 || OUTLINED_FUNCTION_4()))
    {
      OUTLINED_FUNCTION_2_0();
      goto LABEL_276;
    }

    goto LABEL_74;
  }

  v50 = CMBaseObjectGetDerivedStorage();
  v123 = 0;
  cf = 0;
  v122 = 0;
  v120 = 0;
  if (!*(v50 + 200))
  {
    APSLogErrorAt();
    v59 = 0;
    v103 = 0;
    v82 = -71829;
    goto LABEL_302;
  }

  v51 = OUTLINED_FUNCTION_18_1();
  Mutable = CFDictionaryCreateMutable(v51, v52, v53, v54);
  CFDictionarySetValue(Mutable, @"displayCapabilities", *(v50 + 200));
  v118 = Mutable;
  v56 = APPWDKeyExchangeSenderSessionCreate(Mutable, (v50 + 208));
  if (v56)
  {
    v82 = v56;
    APSLogErrorAt();
    v59 = 0;
    goto LABEL_301;
  }

  OUTLINED_FUNCTION_9_3();
  if (v64 ^ v65 | v11)
  {
    if (v57 != -1 || OUTLINED_FUNCTION_4())
    {
      OUTLINED_FUNCTION_2_0();
      LogPrintF();
    }

    OUTLINED_FUNCTION_9_3();
    if (v64 ^ v65 | v11 && (v58 != -1 || OUTLINED_FUNCTION_4()))
    {
      OUTLINED_FUNCTION_2_0();
      LogPrintF();
    }
  }

  mach_absolute_time();
  v59 = 0;
  OUTLINED_FUNCTION_8();
  v119 = v50;
  if (v60)
  {
LABEL_134:
    CFRelease(v60);
    v122 = 0;
    goto LABEL_135;
  }

  while (1)
  {
LABEL_135:
    OUTLINED_FUNCTION_11_2();
    if (v64 ^ v65 | v11)
    {
      if (v61 != -1)
      {
        goto LABEL_138;
      }

      if (!_LogCategory_Initialize())
      {
        goto LABEL_145;
      }

      OUTLINED_FUNCTION_11_2();
      if (v64 ^ v65 | v11)
      {
LABEL_138:
        if (v61 == -1)
        {
          _LogCategory_Initialize();
        }
      }

      LogPrintF();
    }

LABEL_145:
    v62 = APPWDKeyExchangeSenderSessionPerformKeyExchange(*(v50 + 208), v59, &v122, &v123);
    if (v62)
    {
      v82 = v62;
LABEL_300:
      APSLogErrorAt();
      v27 = MEMORY[0x277CBECE8];
      goto LABEL_301;
    }

    OUTLINED_FUNCTION_9_3();
    if (v67)
    {
      if (!(v64 ^ v65 | v63))
      {
LABEL_250:
        v103 = v118;
        v27 = MEMORY[0x277CBECE8];
        goto LABEL_251;
      }

      v103 = v118;
      v27 = MEMORY[0x277CBECE8];
      if (v66 != -1 || OUTLINED_FUNCTION_4())
      {
        goto LABEL_244;
      }

      goto LABEL_245;
    }

    if (v64 ^ v65 | v63 && (v66 != -1 || OUTLINED_FUNCTION_4()))
    {
      OUTLINED_FUNCTION_2_0();
      LogPrintF();
    }

    if (v59)
    {
      CFRelease(v59);
    }

    OUTLINED_FUNCTION_11_2();
    if (v64 ^ v65 | v11)
    {
      if (v68 != -1)
      {
        goto LABEL_157;
      }

      if (!_LogCategory_Initialize())
      {
        goto LABEL_164;
      }

      OUTLINED_FUNCTION_11_2();
      if (v64 ^ v65 | v11)
      {
LABEL_157:
        if (v68 == -1)
        {
          _LogCategory_Initialize();
        }
      }

      LogPrintF();
    }

LABEL_164:
    v69 = v122;
    v70 = CMBaseObjectGetDerivedStorage();
    *buf = 0;
    FigSimpleMutexLock();
    v71 = *(v70 + 328);
    if (!v71)
    {
      FigSimpleMutexUnlock();
LABEL_171:
      APSLogErrorAt();
      v59 = 0;
      v82 = 0;
      goto LABEL_179;
    }

    v72 = CFRetain(v71);
    FigSimpleMutexUnlock();
    if (!v72)
    {
      goto LABEL_171;
    }

    v73 = v2;
    v74 = OUTLINED_FUNCTION_18_1();
    v75 = MEMORY[0x277CBF138];
    v76 = MEMORY[0x277CBF150];
    v78 = CFDictionaryCreateMutable(v74, v77, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetValue(v78, @"data", v69);
    v79 = OUTLINED_FUNCTION_18_1();
    v81 = CFDictionaryCreateMutable(v79, v80, v75, v76);
    CFDictionarySetValue(v81, @"params", v78);
    CFDictionarySetValue(v81, @"type", @"performPWDKeyExchange");
    v82 = APTransportStreamSendPlistMessageCreatingPlistReply();
    if (v82 || !*buf)
    {
      APSLogErrorAt();
      v59 = 0;
    }

    else
    {
      v83 = CFDictionaryGetInt64() != 0;
      CFDataGetTypeID();
      TypedValue = CFDictionaryGetTypedValue();
      if (TypedValue)
      {
        v59 = CFRetain(TypedValue);
      }

      else
      {
        v59 = 0;
      }

      v123 = v83;
      v50 = v119;
    }

    CFRelease(v72);
    if (v81)
    {
      CFRelease(v81);
    }

    if (v78)
    {
      CFRelease(v78);
    }

    v2 = v73;
    v4 = 0x280FB0000uLL;
LABEL_179:
    if (*buf)
    {
      CFRelease(*buf);
    }

    if (v82)
    {
      goto LABEL_300;
    }

    OUTLINED_FUNCTION_9_3();
    if (v89)
    {
      break;
    }

    if (v86 ^ v87 | v85 && (v88 != -1 || OUTLINED_FUNCTION_4()))
    {
      OUTLINED_FUNCTION_2_0();
      LogPrintF();
    }

    v60 = v122;
    if (v122)
    {
      goto LABEL_134;
    }
  }

  if (!(v86 ^ v87 | v85))
  {
    goto LABEL_250;
  }

  v103 = v118;
  v27 = MEMORY[0x277CBECE8];
  if (v88 != -1 || OUTLINED_FUNCTION_4())
  {
LABEL_244:
    OUTLINED_FUNCTION_2_0();
    LogPrintF();
  }

LABEL_245:
  OUTLINED_FUNCTION_9_3();
  if (v64 ^ v65 | v11 && (v104 != -1 || OUTLINED_FUNCTION_4()))
  {
    mach_absolute_time();
    UpTicksToSecondsF();
    OUTLINED_FUNCTION_2_0();
    LogPrintF();
  }

LABEL_251:
  v105 = APPWDKeyExchangeSenderSessionCopyEncoderEncryptionContext(*(v50 + 208), &cf);
  if (v105)
  {
    v82 = v105;
    v116 = *(v4 + 3424);
    if (v116 > 90)
    {
      goto LABEL_306;
    }

    if (v116 != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
    {
      v50 = v119;
      goto LABEL_335;
    }

LABEL_333:
    v4 = 0x280FB0000;
    v50 = v119;
LABEL_301:
    v103 = v118;
LABEL_302:
    v113 = *(v4 + 3424);
    if (v113 <= 90)
    {
      if (v113 != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
      {
        OUTLINED_FUNCTION_8();
        LogPrintF();
      }
    }

    goto LABEL_306;
  }

  v106 = APPWDKeyExchangeSenderSessionCopyEncoderEncryptionKeyID(*(v50 + 208), &v120);
  if (!v106)
  {
    FigSimpleMutexLock();
    v107 = *(v50 + 528);
    v108 = cf;
    *(v50 + 528) = cf;
    if (v108)
    {
      CFRetain(v108);
    }

    if (v107)
    {
      CFRelease(v107);
    }

    v109 = *(v50 + 536);
    v110 = v120;
    *(v50 + 536) = v120;
    if (v110)
    {
      CFRetain(v110);
    }

    if (v109)
    {
      CFRelease(v109);
    }

    *(v50 + 544) = CFDictionaryGetInt64();
    *(v50 + 544) = FVDUtilsSupportedProtectionFlags();
    FigSimpleMutexUnlock();
    v82 = 0;
    goto LABEL_262;
  }

  v82 = v106;
  v117 = *(v4 + 3424);
  if (v117 <= 90)
  {
    if (v117 == -1)
    {
      OUTLINED_FUNCTION_8();
      if (!_LogCategory_Initialize())
      {
        goto LABEL_333;
      }
    }

    v50 = v119;
LABEL_335:
    OUTLINED_FUNCTION_8();
    LogPrintF();
    v4 = 0x280FB0000;
    goto LABEL_301;
  }

LABEL_306:
  v114 = *(v50 + 208);
  if (v114)
  {
    APPWDKeyExchangeSenderSessionInvalidate(v114);
    CFRelease(*(v50 + 208));
    *(v50 + 208) = 0;
  }

LABEL_262:
  if (v103)
  {
    CFRelease(v103);
    if (v59)
    {
LABEL_264:
      CFRelease(v59);
    }
  }

  else if (v59)
  {
    goto LABEL_264;
  }

  if (v122)
  {
    CFRelease(v122);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v120)
  {
    CFRelease(v120);
  }

  if (v82)
  {
    v111 = *(v4 + 3424);
    if (v111 <= 60)
    {
      if (v111 != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
      {
        OUTLINED_FUNCTION_8();
LABEL_276:
        LogPrintF();
      }
    }
  }

LABEL_74:
  if (*(DerivedStorage + 176))
  {
    OUTLINED_FUNCTION_16_1();
    APSEventRecorderRecordEvent();
  }

  OUTLINED_FUNCTION_25();
  if (v11)
  {
    v28 = LogCategoryCopyOSLogHandle();
    v29 = v28;
    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = MEMORY[0x277D86220];
    }

    if (os_signpost_enabled(v30))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_221FFA000, v30, OS_SIGNPOST_EVENT, 0x2B8D08A0uLL, "AP_SIGNPOST_CAR_STARTSESSION_START", &unk_2222A918B, buf, 2u);
    }

    if (v29)
    {
      os_release(v29);
    }
  }

  v31 = CMBaseObjectGetDerivedStorage();
  *buf = 0;
  FigSimpleMutexLock();
  v32 = *(v31 + 306);
  FigSimpleMutexUnlock();
  OUTLINED_FUNCTION_11_2();
  if (v64 ^ v65 | v11)
  {
    if (v33 != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_7_3();
      LogPrintF();
      if (!v32)
      {
        goto LABEL_90;
      }

      goto LABEL_103;
    }
  }

  if (v32)
  {
LABEL_103:
    Info = 0;
    goto LABEL_104;
  }

LABEL_90:
  apsession_copyTransportControlStream(v2, buf);
  v34 = *buf;
  if (*buf)
  {
    OUTLINED_FUNCTION_19_1();
    Info = APTransportStreamSendPlistMessageCreatingPlistReply();
    if (Info)
    {
      APSLogErrorAt();
    }

    else
    {
      FigSimpleMutexLock();
      *(v31 + 306) = 1;
      FigSimpleMutexUnlock();
    }

    CFRelease(v34);
  }

  else
  {
    Info = 4294895475;
    APSLogErrorAt();
  }

LABEL_104:
  if (*(DerivedStorage + 176))
  {
    OUTLINED_FUNCTION_16_1();
    APSEventRecorderRecordEvent();
  }

  OUTLINED_FUNCTION_25();
  if (v11)
  {
    v36 = LogCategoryCopyOSLogHandle();
    v37 = v36;
    if (v36)
    {
      v38 = v36;
    }

    else
    {
      v38 = MEMORY[0x277D86220];
    }

    if (os_signpost_enabled(v38))
    {
      *buf = 0;
      OUTLINED_FUNCTION_21(&dword_221FFA000, v38, v39, 0x2B8D08A4uLL, "AP_SIGNPOST_CAR_STARTSESSION_COMPLETE", &unk_2222A918B, buf);
    }

    if (v37)
    {
      os_release(v37);
    }
  }

  if (Info)
  {
    goto LABEL_316;
  }

  FigSimpleMutexLock();
  *(DerivedStorage + 308) = 1;
  FigSimpleMutexUnlock();
  KeepAliveMode = apsession_getKeepAliveMode();
  v41 = apsession_ensureKeepAliveStarted(v2, KeepAliveMode);
  if (v41)
  {
    Info = v41;
LABEL_316:
    APSLogErrorAt();
    goto LABEL_212;
  }

  v42 = CMBaseObjectGetDerivedStorage();
  v43 = v42;
  v44 = 0;
  v45 = *(v42 + 72);
  if (v45 <= 0xB)
  {
    v44 = ((1 << v45) & 0x80C) != 0;
  }

  v46 = *(v42 + 155);
  v47 = *(v42 + 56);
  v48 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v48)
  {
    v49 = v48(v47, 93);
  }

  else
  {
    v49 = 0;
  }

  v90 = *(v4 + 3424);
  if (v90 <= 40)
  {
    if (v90 != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  v91 = !v44;
  if (!v46)
  {
    v91 = 1;
  }

  if ((v91 & 1) == 0 && v49 && ((mach_absolute_time(), *(v43 + 16) = CFStringCreateF(), !CFGetCString()) || (Shared = APMulticastProbeSenderGetShared(), APMulticastProbeSenderRegister(Shared, *(v43 + 16), *(v43 + 264)))))
  {
    APSLogErrorAt();
    v115 = *(v4 + 3424);
    if (v115 < 51)
    {
      if (v115 != -1 || OUTLINED_FUNCTION_4())
      {
        OUTLINED_FUNCTION_2_0();
        LogPrintF();
      }

      goto LABEL_202;
    }
  }

  else
  {
LABEL_202:
    v93 = *(v4 + 3424);
    if (v93 <= 40)
    {
      if (v93 != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }
  }

  FigSimpleMutexLock();
  v94 = CMBaseObjectGetDerivedStorage();
  *buf = 0;
  CMBaseObject = APEndpointDescriptionGetCMBaseObject(*(v94 + 56));
  v96 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v96)
  {
    v96(CMBaseObject, @"OSBuildVersion", *v27, buf);
  }

  FigCFDictionarySetValue();
  if (*buf)
  {
    CFRelease(*buf);
  }

  FigSimpleMutexUnlock();
  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
LABEL_211:
  Info = 0;
LABEL_212:
  if (Info)
  {
    v97 = 90;
  }

  else
  {
    v97 = 50;
  }

  v98 = *(v4 + 3424);
  if (v97 >= v98 && (v98 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  apsession_recordActivationMessageTiming(v2);
  if (Info)
  {
    apsession_disconnectControlStream(v2);
  }

  return Info;
}

CFMutableDictionaryRef OUTLINED_FUNCTION_17_1(uint64_t a1, uint64_t a2, const CFDictionaryKeyCallBacks *a3, const CFDictionaryValueCallBacks *a4)
{

  return CFDictionaryCreateMutable(v4, 0, a3, a4);
}

void apsession_recordActivationMessageTiming(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v9 = 0;
  apsession_copyTransportControlStream(a1, &v9);
  v3 = v9;
  if (v9)
  {
    CMBaseObject = FigTransportStreamGetCMBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v5 || v5(CMBaseObject, *MEMORY[0x277CE50A8], *MEMORY[0x277CBECE8], &cf))
    {
      APSLogErrorAt();
    }

    else
    {
      FigSimpleMutexLock();
      v6 = *(DerivedStorage + 512);
      v7 = cf;
      *(DerivedStorage + 512) = cf;
      if (v7)
      {
        CFRetain(v7);
      }

      if (v6)
      {
        CFRelease(v6);
      }

      FigSimpleMutexUnlock();
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t apsession_copyTransportControlStream(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = *(DerivedStorage + 328);
  if (v4)
  {
    v4 = CFRetain(v4);
  }

  *a2 = v4;

  return FigSimpleMutexUnlock();
}

void __carAudioStream_setAudioFormatInfo_block_invoke()
{
  OUTLINED_FUNCTION_7_2();
  if (!v2)
  {
    v3 = *(v0 + 40);
    if (v3)
    {
      v4 = *(v1 + 136);
      *(v1 + 136) = v3;
      CFRetain(v3);
      if (v4)
      {
        CFRelease(v4);
      }
    }
  }

  CFRelease(*(v0 + 48));
  v5 = *(v0 + 40);
  if (v5)
  {

    CFRelease(v5);
  }
}

void __carAudioStream_setAudioSource_block_invoke()
{
  OUTLINED_FUNCTION_7_2();
  if (!v2)
  {
    if (gLogCategory_APEndpointStreamCarPlayAudio <= 30)
    {
      if (gLogCategory_APEndpointStreamCarPlayAudio != -1 || (v3 = OUTLINED_FUNCTION_10(), v1 = *(v0 + 32), v3))
      {
        OUTLINED_FUNCTION_19_0();
        OUTLINED_FUNCTION_4_1();
        v1 = *(v0 + 32);
      }
    }

    v4 = *(v1 + 160);
    v5 = *(v0 + 48);
    *(v1 + 160) = v5;
    if (v5)
    {
      CFRetain(v5);
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }

  CFRelease(*(v0 + 40));
  v6 = *(v0 + 48);
  if (v6)
  {

    CFRelease(v6);
  }
}

uint64_t carplaysource_ReadinessCallback_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 1000000000 * (a1 - a2);
  v7 = UpTicksPerSecond();
  carplaysource_scheduleReadinessCallbackAfterTimeNs(a3, v6 / v7 + 1000000);
  result = mach_absolute_time();
  *(a4 + 240) = result;
  return result;
}

void __APCarPlayAnalyticsSubmitToCarPlay_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    __APCarPlayAnalyticsSubmitToCarPlay_block_invoke_cold_1(v2, Mutable);
    v4 = 0;
  }

  else
  {
    __APCarPlayAnalyticsSubmitToCarPlay_block_invoke_cold_2();
    v4 = -6729;
  }

  v5 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = v4;
  if (v5)
  {

    CFRelease(v5);
  }
}

void __APCarPlayAnalyticsSubmitToCarPlay_block_invoke_cold_1(uint64_t a1, __CFDictionary *a2)
{
  v4 = OUTLINED_FUNCTION_23();
  Mutable = CFStringCreateMutable(v4, v5);
  v7 = Mutable;
  if (*(a1 + 112) >= 1)
  {
    carPlayAnalytics_addValueToReportingString(@"nmnl", Mutable, *(a1 + 184));
    carPlayAnalytics_addValueToReportingString(@"mean", v7, *(a1 + 88));
    carPlayAnalytics_addValueToReportingString(@"stdv", v7, *(a1 + 104));
    carPlayAnalytics_addValueToReportingString(@"imean", v7, *(a1 + 152));
    carPlayAnalytics_addValueToReportingString(@"istdv", v7, *(a1 + 168));
    AnalyticsKeyForStreamType = carPlayAnalytics_createAnalyticsKeyForStreamType(v8, @"APCarPlay_%s_audioSampleRateStatistics", *(a1 + 32));
    OUTLINED_FUNCTION_3_17();
    CFDictionarySetValue(v10, v11, v12);
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  AnalyticsKeyForStreamType = 0;
  if (Mutable)
  {
LABEL_3:
    CFRelease(v7);
  }

LABEL_4:
  if (AnalyticsKeyForStreamType)
  {
    CFRelease(AnalyticsKeyForStreamType);
  }

  v13 = OUTLINED_FUNCTION_23();
  v15 = CFStringCreateMutable(v13, v14);
  v16 = 2 * *(a1 + 24);
  if (v16)
  {
    if (v16 % 0x3C)
    {
      v17 = (v16 / 0x3C + 1);
    }

    else
    {
      v17 = (v16 / 0x3C);
    }

    if (!v17)
    {
LABEL_13:
      if (!v15)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    OUTLINED_FUNCTION_3_17();
    carPlayAnalytics_addAnomalyToReportingStringIfExists(v18, v19, v20);
    OUTLINED_FUNCTION_3_17();
    carPlayAnalytics_addAnomalyToReportingStringIfExists(v21, v22, v23);
    OUTLINED_FUNCTION_3_17();
    carPlayAnalytics_addAnomalyToReportingStringIfExists(v24, v25, v26);
    OUTLINED_FUNCTION_3_17();
    carPlayAnalytics_addAnomalyToReportingStringIfExists(v27, v28, v29);
    OUTLINED_FUNCTION_3_17();
    carPlayAnalytics_addAnomalyToReportingStringIfExists(v30, v31, v32);
    OUTLINED_FUNCTION_3_17();
    carPlayAnalytics_addAnomalyToReportingStringIfExists(v33, v34, v35);
    Length = CFStringGetLength(v15);
    if (Length >= 1)
    {
      v17 = carPlayAnalytics_createAnalyticsKeyForStreamType(Length, @"APCarPlay_%s_audioPercentageWithAnomalies", *(a1 + 32));
      OUTLINED_FUNCTION_3_17();
      CFDictionarySetValue(v37, v38, v39);
      goto LABEL_13;
    }
  }

  v17 = 0;
  if (v15)
  {
LABEL_14:
    CFRelease(v15);
  }

LABEL_15:
  if (v17)
  {
    CFRelease(v17);
  }

  v40 = OUTLINED_FUNCTION_23();
  v42 = CFStringCreateMutable(v40, v41);
  if (*(a1 + 392) && CFSetGetCount(*(a1 + 400)) >= 1)
  {
    Count = CFSetGetCount(*(a1 + 400));
    v44 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
    CFSetGetValues(*(a1 + 400), v44);
    v45 = CFSetGetCount(*(a1 + 400));
    if (v45 >= 1)
    {
      for (i = 0; i < v45; ++i)
      {
        v47 = v44[i];
        if (CFStringGetLength(v42))
        {
          v48 = " ";
        }

        else
        {
          v48 = "";
        }

        v52 = v48;
        v49 = OUTLINED_FUNCTION_23();
        CFStringAppendFormat(v49, v50, @"%s%@", v52, v47);
        v45 = CFSetGetCount(*(a1 + 400));
      }
    }

    v51 = carPlayAnalytics_createAnalyticsKeyForStreamType(v45, @"APCarPlay_%s_audioFormats", *(a1 + 32));
    CFDictionarySetValue(a2, v51, v42);
    if (v42)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v51 = 0;
    v44 = 0;
    if (v42)
    {
LABEL_26:
      CFRelease(v42);
    }
  }

  if (v51)
  {
    CFRelease(v51);
  }

  free(v44);
  if (CFDictionaryGetCount(a2) >= 1)
  {
    if (gLogCategory_APCarPlayAnalytics <= 50 && (gLogCategory_APCarPlayAnalytics != -1 || _LogCategory_Initialize()))
    {
      if ((*(a1 + 32) - 96) <= 0x18)
      {
        OUTLINED_FUNCTION_2_21();
      }

      OUTLINED_FUNCTION_2();
    }

    APCarPlay_AddAnalyticsValues(a2, @"SessionEnded");
  }

  CFRelease(a2);
}

void carPlayAnalytics_addAnomalyToReportingStringIfExists(uint64_t a1, unint64_t a2, __CFString *theString)
{
  if (a1)
  {
    if (theString)
    {
      if (*(a1 + 8))
      {
        if (*(a1 + 16) < *(a1 + 24))
        {
          v3 = *(a1 + 20);
        }

        else
        {
          v3 = *(a1 + 20) + 1;
        }

        *(a1 + 20) = v3;
        v4 = *a1;

        carPlayAnalytics_addValueToReportingString(v4, theString, v3 * 100.0 / a2);
      }
    }

    else
    {
      carPlayAnalytics_addAnomalyToReportingStringIfExists_cold_1();
    }
  }

  else
  {
    carPlayAnalytics_addAnomalyToReportingStringIfExists_cold_2();
  }
}

void carplaysource_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage[24];
  if (v1)
  {
    AudioConverterDispose(v1);
    DerivedStorage[24] = 0;
  }

  MirroredRingBufferFree();
  v2 = DerivedStorage[19];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[19] = 0;
  }

  v3 = DerivedStorage[21];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[21] = 0;
  }

  v4 = DerivedStorage[22];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[22] = 0;
  }

  v5 = DerivedStorage[18];
  if (v5)
  {
    DerivedStorage[18] = 0;
    free(v5);
  }

  v6 = DerivedStorage[25];
  if (v6)
  {
    dispatch_release(v6);
    DerivedStorage[25] = 0;
  }
}

uint64_t apsession_getKeepAliveMode()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72) != 5)
  {
    return 2;
  }

  v1 = DerivedStorage;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  FigSimpleMutexLock();
  v2 = *(v1 + 376);
  if (!v2)
  {
    FigSimpleMutexUnlock();
    goto LABEL_9;
  }

  v3 = CFRetain(v2);
  FigSimpleMutexUnlock();
  if (!v3)
  {
LABEL_9:
    _Block_object_dispose(&v7, 8);
    return 2;
  }

  FigSimpleMutexLock();
  Count = CFDictionaryGetCount(*(v1 + 576));
  v8[3] = Count;
  FigCFDictionaryApplyBlock();
  FigSimpleMutexUnlock();
  if (v8[3])
  {
    v5 = 2;
  }

  else
  {
    v5 = 4;
  }

  _Block_object_dispose(&v7, 8);
  CFRelease(v3);
  return v5;
}

uint64_t apsession_ensureKeepAliveStarted(uint64_t a1, int a2)
{
  v10 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 0;
  apsession_copyTransportSession(a1, &v9);
  v5 = v9;
  if (*(DerivedStorage + 216))
  {
    if (APSGetFBOPropertyInt64() != a2)
    {
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v6)
      {
        v10 = v6(v5);
        if (!v10)
        {
          *(DerivedStorage + 216) = 0;
          goto LABEL_8;
        }
      }

      else
      {
        v10 = -12782;
      }

      apsession_ensureKeepAliveStarted_cold_1();
      goto LABEL_21;
    }

    if (*(DerivedStorage + 216))
    {
      goto LABEL_21;
    }
  }

LABEL_8:
  v10 = APSSetFBOPropertyInt64();
  if (v10)
  {
    apsession_ensureKeepAliveStarted_cold_2();
    if (!v5)
    {
      return v10;
    }

    goto LABEL_22;
  }

  v7 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v7)
  {
    v10 = -12782;
LABEL_17:
    apsession_ensureKeepAliveStarted_cold_4();
    if (!v5)
    {
      return v10;
    }

    goto LABEL_22;
  }

  v10 = v7(v5);
  if (v10)
  {
    goto LABEL_17;
  }

  *(DerivedStorage + 216) = 1;
  if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apsession_ensureKeepAliveStarted_cold_3();
    if (!v5)
    {
      return v10;
    }

    goto LABEL_22;
  }

LABEL_21:
  if (v5)
  {
LABEL_22:
    CFRelease(v5);
  }

  return v10;
}

uint64_t apsession_copyTransportSession(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = *(DerivedStorage + 320);
  if (v4)
  {
    v4 = CFRetain(v4);
  }

  *a2 = v4;

  return FigSimpleMutexUnlock();
}

uint64_t carAudioStream_getTransportStreamIDAndQuality(int a1, int a2, uint64_t *a3, int *a4)
{
  if (a1 <= 105)
  {
    switch(a1)
    {
      case 'd':
        v4 = 0;
        v5 = 1835626096;
        if (!a2)
        {
          v5 = 1835100526;
        }

        goto LABEL_22;
      case 'e':
        v4 = 0;
        v5 = 1634497568;
        goto LABEL_22;
      case 'f':
        v4 = 0;
        *a3 = 1734700576;
        v6 = 10;
LABEL_23:
        *a4 = v6;
        return v4;
    }
  }

  else
  {
    if (a1 <= 107)
    {
      v4 = 0;
      if (a1 == 106)
      {
        v5 = 1635088495;
      }

      else
      {
        v5 = 1869575779;
      }

      goto LABEL_22;
    }

    if (a1 == 108)
    {
      v4 = 0;
      v5 = 1635283556;
      goto LABEL_22;
    }

    if (a1 == 109)
    {
      v4 = 0;
      v5 = 1870033508;
LABEL_22:
      *a3 = v5;
      v6 = 3;
      goto LABEL_23;
    }
  }

  if (gLogCategory_APEndpointStreamCarPlayAudio <= 50 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
  {
    carAudioStream_getTransportStreamIDAndQuality_cold_1();
  }

  v4 = 4294950536;
  APSLogErrorAt();
  return v4;
}

uint64_t apsession_CreateTransportStreamWithID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    apsession_CreateTransportStreamWithID_cold_1(&v13);
    return v13;
  }

  apsession_copyTransportSession(a1, &v12);
  v8 = v12;
  if (!v12)
  {
    apsession_CreateTransportStreamWithID_cold_2();
    return 4294895467;
  }

  v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v9)
  {
    v10 = 4294954514;
LABEL_7:
    APSLogErrorAt();
    goto LABEL_8;
  }

  v10 = v9(v8, a2, a3, a4);
  if (v10)
  {
    goto LABEL_7;
  }

LABEL_8:
  CFRelease(v8);
  return v10;
}