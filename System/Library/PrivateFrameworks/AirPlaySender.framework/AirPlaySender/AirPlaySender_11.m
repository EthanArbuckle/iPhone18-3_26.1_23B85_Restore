void realTimeAudioEngine_endpointStreamSuspendCallback(uint64_t a1, int a2, _DWORD *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = realTimeAudioEngine_suspendInternal;
  v7 = 128;
  if (a2 != -16762 && a2)
  {
    a3[10] = a2;
    v6 = realTimeAudioEngine_suspendComplete;
    v7 = 80;
  }

  v8 = *(DerivedStorage + v7);

  dispatch_async_f(v8, a3, v6);
}

void realTimeAudioEngine_suspendComplete(CFTypeRef *a1)
{
  CMBaseObjectGetDerivedStorage();
  v2 = a1[3];
  if (v2)
  {
    v2(*a1, *(a1 + 10), a1[4]);
  }

  APSDispatchSectionLeave();
  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

void realTimeAudioEngine_endpointStreamResumeInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  if (!*(DerivedStorage + 136))
  {
    realTimeAudioEngine_endpointStreamResumeInternal_cold_7();
    v13 = -15485;
    goto LABEL_23;
  }

  v4 = *(a1 + 8);
  if (*(DerivedStorage + 200) == v4)
  {
    realTimeAudioEngine_endpointStreamResumeInternal_cold_6();
    goto LABEL_22;
  }

  if (!v4)
  {
LABEL_22:
    v13 = 0;
    goto LABEL_23;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v6 = Mutable;
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    v7 = FigCFDictionarySetInt32();
    if (v7)
    {
      v13 = v7;
      realTimeAudioEngine_endpointStreamResumeInternal_cold_1();
    }

    else
    {
      FigCFDictionarySetValue();
      v8 = FigCFDictionarySetFloat();
      if (v8)
      {
        v13 = v8;
        realTimeAudioEngine_endpointStreamResumeInternal_cold_2();
      }

      else
      {
        v9 = FigCFDictionarySetFloat();
        if (v9)
        {
          v13 = v9;
          realTimeAudioEngine_endpointStreamResumeInternal_cold_3();
        }

        else
        {
          if (gLogCategory_APAudioEngineRealTime <= 50 && (gLogCategory_APAudioEngineRealTime != -1 || _LogCategory_Initialize()))
          {
            realTimeAudioEngine_endpointStreamResumeInternal_cold_4();
          }

          v10 = *(a1 + 8);
          v11 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (v11)
          {
            v12 = v11(v10, v6, realTimeAudioEngine_endpointStreamResumeCallback, a1);
            if (!v12)
            {
              FigCFDictionarySetValue();

              CFRelease(v6);
              return;
            }

            v13 = v12;
          }

          else
          {
            v13 = -12782;
          }

          APSLogErrorAt();
        }
      }
    }

    CFRelease(v6);
  }

  else
  {
    realTimeAudioEngine_endpointStreamResumeInternal_cold_5();
    v13 = -15480;
  }

LABEL_23:
  *(a1 + 32) = v13;
  v14 = *(v3 + 80);

  dispatch_async_f(v14, a1, realTimeAudioEngine_setEndpointStreamCallback);
}

void realTimeAudioEngine_endpointStreamResumeCallback(uint64_t a1, int a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    *(a3 + 32) = a2;
    v6 = *(a3 + 8);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v7)
    {

      v7(v6, 0, realTimeAudioEngine_endpointStreamResumeWithErrorSuspendCallback, a3);
    }
  }

  else
  {
    v8 = *(DerivedStorage + 128);

    dispatch_async_f(v8, a3, realTimeAudioEngine_setEndpointStreamInternal);
  }
}

void realTimeAudioEngine_setEndpointStreamCallback(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v2 = *(a1 + 16);
  if (v2)
  {
    v2(*a1, *(a1 + 32), *(a1 + 24));
  }

  APSDispatchSectionLeave();
  if (*a1)
  {
    CFRelease(*a1);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  free(a1);
}

void realTimeAudioEngine_endpointStreamResumeWithErrorSuspendCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(CMBaseObjectGetDerivedStorage() + 80);

  dispatch_async_f(v4, a3, realTimeAudioEngine_setEndpointStreamCallback);
}

CMTime *OUTLINED_FUNCTION_15_1@<X0>(CMTime *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, CMTime *time, uint64_t time_8, uint64_t time_16)
{
  v18 = *(v16 - 104);
  time = a1;
  time_8 = v18;
  time_16 = v14;

  return CMTimeConvertScale((v16 - 112), &time, v15, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
}

uint64_t OUTLINED_FUNCTION_29()
{

  return APSSignalErrorAt();
}

void sub_2220EF550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCRCarPlayPreferencesClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!CarKitLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __CarKitLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_27849CAA8;
    v5 = 0;
    CarKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CarKitLibraryCore_frameworkLibrary)
  {
    __getCRCarPlayPreferencesClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("CRCarPlayPreferences");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getCRCarPlayPreferencesClass_block_invoke_cold_1();
  }

  getCRCarPlayPreferencesClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __CarKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CarKitLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t APKeyHolderLegacyCreate(uint64_t a1, const void *a2, const void *a3, void *a4)
{
  APSKeyHolderGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    v12 = v7;
    APKeyHolderLegacyCreate_cold_1();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    DerivedStorage[1] = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    *DerivedStorage = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    v9 = RandomBytes();
    if (v9)
    {
      v12 = v9;
      APKeyHolderLegacyCreate_cold_2();
    }

    else
    {
      v10 = RandomBytes();
      if (v10)
      {
        v12 = v10;
        APKeyHolderLegacyCreate_cold_3();
      }

      else
      {
        v11 = APSCreateSecureMemAllocator();
        DerivedStorage[6] = v11;
        if (v11)
        {
          if (gLogCategory_APKeyHolderLegacy <= 30 && (gLogCategory_APKeyHolderLegacy != -1 || _LogCategory_Initialize()))
          {
            APKeyHolderLegacyCreate_cold_4();
          }

          v12 = 0;
          *a4 = 0;
        }

        else
        {
          APKeyHolderLegacyCreate_cold_5();
          return 4294895576;
        }
      }
    }
  }

  return v12;
}

void legacyKeyHolder_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APKeyHolderLegacy <= 30 && (gLogCategory_APKeyHolderLegacy != -1 || _LogCategory_Initialize()))
  {
    legacyKeyHolder_Finalize_cold_1();
  }

  for (i = 16; i != 32; ++i)
  {
    *(DerivedStorage + i) = 0;
  }

  do
  {
    *(DerivedStorage + i++) = 0;
  }

  while (i != 48);
  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v3 = *(DerivedStorage + 48);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 48) = 0;
  }
}

__CFString *legacyKeyHolder_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APKeyHolder %p>", a1);
  return Mutable;
}

uint64_t legacyKeyHolder_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APKeyHolderLegacy <= 10 && (gLogCategory_APKeyHolderLegacy != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (CFEqual(a2, @"HasPairingClient"))
  {
    v7 = MEMORY[0x277CBED28];
    if (!*DerivedStorage)
    {
      v7 = MEMORY[0x277CBED10];
    }

    v8 = CFRetain(*v7);
    result = 0;
    *a4 = v8;
  }

  else
  {
    if (gLogCategory_APKeyHolderLegacy <= 90 && (gLogCategory_APKeyHolderLegacy != -1 || _LogCategory_Initialize()))
    {
      legacyKeyHolder_CopyProperty_cold_1();
    }

    return 4294954512;
  }

  return result;
}

uint64_t legacyKeyHolder_GetAuthenticationType()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 8);
  if (!v0)
  {
    return 0;
  }

  v1 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v1)
  {
    return 0;
  }

  return v1(v0);
}

uint64_t legacyKeyHolder_CopyMasterAESKeyAndIV(uint64_t a1, CFDataRef *a2, CFDataRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = CFDataCreate(*(DerivedStorage + 48), (DerivedStorage + 16), 16);
  if (v6)
  {
    v7 = v6;
    v8 = CFDataCreate(*(DerivedStorage + 48), (DerivedStorage + 32), 16);
    if (v8)
    {
      v9 = 0;
      *a2 = v7;
      *a3 = v8;
    }

    else
    {
      v9 = 4294895576;
      legacyKeyHolder_CopyMasterAESKeyAndIV_cold_1(v7);
    }
  }

  else
  {
    v9 = 4294895576;
    legacyKeyHolder_CopyMasterAESKeyAndIV_cold_2();
  }

  return v9;
}

uint64_t legacyKeyHolder_CreateEncryptedMasterAESKeyAndIV(uint64_t a1, CFTypeRef *a2, CFDataRef *a3)
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = CFDataCreate(*(DerivedStorage + 48), (DerivedStorage + 16), 16);
  if (v6)
  {
    v7 = v6;
    v8 = *(DerivedStorage + 8);
    if (v8)
    {
      v9 = *(DerivedStorage + 48);
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v10)
      {
        v10(v8, v7, v9, &cf);
      }
    }

    else
    {
      cf = v6;
      v7 = 0;
    }

    v11 = CFDataCreate(*(DerivedStorage + 48), (DerivedStorage + 32), 16);
    if (v11)
    {
      v12 = 0;
      *a2 = cf;
      cf = 0;
      *a3 = v11;
      if (!v7)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v12 = 4294895576;
    legacyKeyHolder_CreateEncryptedMasterAESKeyAndIV_cold_1();
    if (v7)
    {
LABEL_8:
      CFRelease(v7);
    }
  }

  else
  {
    v12 = 4294895576;
    legacyKeyHolder_CreateEncryptedMasterAESKeyAndIV_cold_2();
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

uint64_t legacyKeyHolder_UpdateMasterAESKeyAfterSharing()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = DerivedStorage;
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v3)
  {
    return 0;
  }

  if (v3(v1) != 4)
  {
    return 0;
  }

  v4 = *v2;
  if (!*v2)
  {
    return 0;
  }

  v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v5)
  {
    v6 = 4294954514;
LABEL_11:
    APSLogErrorAt();
    return v6;
  }

  v6 = v5(v4, v2 + 2, 16, 0, 0, 16, v2 + 2);
  if (v6)
  {
    goto LABEL_11;
  }

  return v6;
}

uint64_t legacyKeyHolder_CreateDerivedAESKeyAndIVForLegacyStream(uint64_t a1, uint64_t a2, CFTypeRef *a3, CFTypeRef *a4)
{
  v17 = 0;
  v18 = 0;
  v15 = 0;
  cf = 0;
  v7 = ASPrintF();
  v8 = ASPrintF();
  DerivedKeyLegacy = legacyKeyHolder_createDerivedKeyLegacy(a1, 0, v7, &cf);
  if (DerivedKeyLegacy)
  {
    v11 = DerivedKeyLegacy;
    legacyKeyHolder_CreateDerivedAESKeyAndIVForLegacyStream_cold_1();
  }

  else
  {
    v10 = legacyKeyHolder_createDerivedKeyLegacy(a1, v17, v8, &v15);
    if (v10)
    {
      v11 = v10;
      legacyKeyHolder_CreateDerivedAESKeyAndIVForLegacyStream_cold_2();
    }

    else
    {
      if (a3)
      {
        *a3 = cf;
        cf = 0;
      }

      v11 = 0;
      if (a4)
      {
        *a4 = v15;
        v15 = 0;
      }
    }
  }

  if (v7)
  {
    v12 = v18;
    do
    {
      *v12++ = 0;
      --v7;
    }

    while (v7);
  }

  if (v8)
  {
    v13 = v17;
    do
    {
      *v13++ = 0;
      --v8;
    }

    while (v8);
  }

  if (v18)
  {
    free(v18);
    v18 = 0;
  }

  if (v17)
  {
    free(v17);
    v17 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v11;
}

uint64_t legacyKeyHolder_CreateDerivedKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CFIndex a6, __CFData **a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFDataCreateMutable(*(DerivedStorage + 48), a6);
  if (!Mutable)
  {
    legacyKeyHolder_CreateDerivedKey_cold_2();
    return 4294895576;
  }

  v15 = Mutable;
  CFDataSetLength(Mutable, a6);
  v16 = *DerivedStorage;
  if (!v16)
  {
    v20 = 4294895575;
    legacyKeyHolder_CreateDerivedKey_cold_1();
    goto LABEL_9;
  }

  MutableBytePtr = CFDataGetMutableBytePtr(v15);
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v18)
  {
    v20 = 4294954514;
LABEL_8:
    APSLogErrorAt();
    goto LABEL_9;
  }

  v19 = v18(v16, a2, a3, a4, a5, a6, MutableBytePtr);
  if (v19)
  {
    v20 = v19;
    goto LABEL_8;
  }

  v20 = 0;
  if (!a7)
  {
LABEL_9:
    CFRelease(v15);
    return v20;
  }

  *a7 = v15;
  return v20;
}

uint64_t legacyKeyHolder_createDerivedKeyLegacy(uint64_t a1, const void *a2, CC_LONG a3, __CFData **a4)
{
  v15 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v13, 0, sizeof(v13));
  Mutable = CFDataCreateMutable(*(DerivedStorage + 48), 16);
  if (Mutable)
  {
    v9 = Mutable;
    CFDataSetLength(Mutable, 16);
    CC_SHA512_Init(&v13);
    CC_SHA512_Update(&v13, a2, a3);
    CC_SHA512_Update(&v13, (DerivedStorage + 16), 0x10u);
    CC_SHA512_Final(md, &v13);
    MutableBytePtr = CFDataGetMutableBytePtr(v9);
    v11 = 0;
    *MutableBytePtr = *md;
    do
    {
      md[v11++] = 0;
    }

    while (v11 != 64);
    if (a4)
    {
      result = 0;
      *a4 = v9;
    }

    else
    {
      CFRelease(v9);
      return 0;
    }
  }

  else
  {
    legacyKeyHolder_createDerivedKeyLegacy_cold_1();
    return 4294895576;
  }

  return result;
}

uint64_t APAuthenticationClientGetClassID()
{
  if (_MergedGlobals_10 != -1)
  {
    APAuthenticationClientGetClassID_cold_1();
  }

  return qword_280FB1AD8;
}

uint64_t authenticationClient_registerBaseClass(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&authenticationClient_registerBaseClass_sClassDesc, ClassID, 1, a1);
}

void APDemoEndpointUIEventChannelInit(uint64_t a1)
{
  v20[2] = *MEMORY[0x277D85DE8];
  if (demoUIEventChannelGetShared_once != -1)
  {
    APDemoEndpointUIEventChannelInit_cold_1();
  }

  v2 = demoUIEventChannelGetShared_channel;
  cf = 0;
  v18 = 0;
  if (demoUIEventChannelGetShared_channel)
  {
    FigSimpleMutexLock();
    if (a1 && (FigEndpointExtendedGetClassID(), CMBaseObjectIsMemberOfClass()))
    {
      if (v2[1])
      {
        v3 = FigCFWeakReferenceHolderCopyReferencedObject();
        if (v3)
        {
          v4 = v3;
          if (gLogCategory_APDemoManager <= 50 && (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v6 = v2[2];
          v7 = *(*(CMBaseObjectGetVTable() + 24) + 104);
          if (v7)
          {
            v7(v4, v6);
          }

          CFRelease(v4);
        }

        demoUIEventChannelClear(v2);
      }

      CMBaseObject = FigEndpointGetCMBaseObject();
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v9 || (v10 = *MEMORY[0x277CBECE8], v9(CMBaseObject, @"EndpointDescription", *MEMORY[0x277CBECE8], &v18)))
      {
        APDemoEndpointUIEventChannelInit_cold_6();
      }

      else if (v18)
      {
        if (APSGetFBOPropertyInt64())
        {
          Mutable = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          CFDictionarySetValue(Mutable, *MEMORY[0x277CC1618], *MEMORY[0x277CC1610]);
          CFDictionarySetInt64();
          CFDictionarySetInt64();
          v11 = *(*(CMBaseObjectGetVTable() + 24) + 88);
          if (!v11 || v11(a1, Mutable, &cf))
          {
            APDemoEndpointUIEventChannelInit_cold_4();
          }

          else
          {
            v12 = FigCFWeakReferenceHolderCreateWithReferencedObject();
            v13 = v2[2];
            v14 = cf;
            v2[1] = v12;
            v2[2] = v14;
            if (v14)
            {
              CFRetain(v14);
            }

            if (v13)
            {
              CFRelease(v13);
            }

            if (gLogCategory_APDemoManager <= 50 && (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            v15 = objc_autoreleasePoolPush();
            if (demoUIEventChannelGetShared_once != -1)
            {
              APDemoEndpointUIEventChannelInit_cold_2();
            }

            v16 = demoUIEventChannelGetShared_channel;
            if (demoUIEventChannelGetShared_channel)
            {
              if (*(demoUIEventChannelGetShared_channel + 24))
              {
                if (gLogCategory_APDemoManager <= 90 && (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize()))
                {
                  APDemoEndpointUIEventChannelInit_cold_3();
                }
              }

              else
              {
                v19[0] = [MEMORY[0x277CCABB0] numberWithInteger:65291];
                v20[0] = @"PrimaryUsagePage";
                v19[1] = [MEMORY[0x277CCABB0] numberWithInteger:65281];
                v20[1] = @"PrimaryUsagePage";
                [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
                *(v16 + 24) = IOHIDEventSystemClientCreate();
                IOHIDEventSystemClientSetMatching();
                IOHIDEventSystemClientRegisterEventCallback();
                CFRunLoopGetMain();
                IOHIDEventSystemClientScheduleWithRunLoop();
              }
            }

            objc_autoreleasePoolPop(v15);
          }

          goto LABEL_42;
        }
      }

      else
      {
        APDemoEndpointUIEventChannelInit_cold_5();
      }
    }

    else
    {
      APSLogErrorAt();
    }

    Mutable = 0;
LABEL_42:
    FigSimpleMutexUnlock();
    if (v18)
    {
      CFRelease(v18);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void demoUIEventChannelClear(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
    a1[1] = 0;
  }

  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
    a1[2] = 0;
  }

  if (a1[3])
  {
    CFRunLoopGetMain();
    IOHIDEventSystemClientUnscheduleWithRunLoop();
    IOHIDEventSystemClientUnregisterEventCallback();
    v4 = a1[3];
    if (v4)
    {
      CFRelease(v4);
      a1[3] = 0;
    }
  }
}

uint64_t __demoUIEventChannelGetShared_block_invoke()
{
  result = APSIsDemoModeEnabled();
  if (result)
  {
    demoUIEventChannelGetShared_channel = malloc_type_calloc(1uLL, 0x20uLL, 0x60040CD5974ACuLL);
    result = FigSimpleMutexCreate();
    *demoUIEventChannelGetShared_channel = result;
    if (gLogCategory_APDemoManager <= 50)
    {
      if (gLogCategory_APDemoManager != -1)
      {
        return __demoUIEventChannelGetShared_block_invoke_cold_1();
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return __demoUIEventChannelGetShared_block_invoke_cold_1();
      }
    }
  }

  return result;
}

void demoHIDEventCallback()
{
  v0 = objc_autoreleasePoolPush();
  v12 = 0;
  if (IOHIDEventGetType() == 6)
  {
    goto LABEL_2;
  }

  if (IOHIDEventGetType() == 3)
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    v2 = IOHIDEventGetIntegerValue();
    if (IntegerValue != 45)
    {
      goto LABEL_2;
    }

    v3 = v2 == 1;
    v4 = [MEMORY[0x277CBEB38] dictionary];
    [v4 setValue:@"BtnRingerPress" forKey:@"DataEventType"];
    [v4 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", v3), @"DataValue"}];
    if (gLogCategory_APDemoManager <= 30 && (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize()))
    {
      demoHIDEventCallback_cold_1();
    }

    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v12];
    if (v12)
    {
      demoHIDEventCallback_cold_2();
    }

    else
    {
      v6 = v5;
      if (!v5)
      {
        goto LABEL_2;
      }

      if (demoUIEventChannelGetShared_once != -1)
      {
        APDemoEndpointUIEventChannelInit_cold_2();
      }

      v7 = demoUIEventChannelGetShared_channel;
      if (!demoUIEventChannelGetShared_channel)
      {
        goto LABEL_30;
      }

      FigSimpleMutexLock();
      if (*(v7 + 8))
      {
        v8 = FigCFWeakReferenceHolderCopyReferencedObject();
        if (v8)
        {
          v9 = v8;
          v10 = *(v7 + 16);
          if (v10)
          {
            v11 = *(*(CMBaseObjectGetVTable() + 24) + 96);
            if (!v11 || v11(v9, v10, v6, 0, 0))
            {
              demoHIDEventCallback_cold_5();
            }

            else if (gLogCategory_APDemoManager <= 30 && (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize()))
            {
              demoHIDEventCallback_cold_4(v6);
            }
          }

          else
          {
            demoHIDEventCallback_cold_6();
          }

          FigSimpleMutexUnlock();
          CFRelease(v9);
          goto LABEL_30;
        }

        if (gLogCategory_APDemoManager <= 50 && (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize()))
        {
          demoHIDEventCallback_cold_7();
        }

        demoUIEventChannelClear(v7);
      }

      FigSimpleMutexUnlock();
    }
  }

LABEL_30:
  if (v12 && gLogCategory_APDemoManager <= 90 && (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_2:
  objc_autoreleasePoolPop(v0);
}

uint64_t APAirPlayAgentServicesServerStart()
{
  if (gLogCategory_APAirPlayAgentServices <= 50 && (gLogCategory_APAirPlayAgentServices != -1 || _LogCategory_Initialize()))
  {
    APAirPlayAgentServicesServerStart_cold_1();
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CEA3A0], @"com.apple.airplay.agent.services.allow");
  v1 = APSXPCServerStart();
  if (v1)
  {
    APAirPlayAgentServicesServerStart_cold_2(v1, &v5);
    v3 = v5;
  }

  else
  {
    v2 = APSXPCServerAddCommandHandler();
    if (v2)
    {
      APAirPlayAgentServicesServerStart_cold_3(v2, &v6);
      v3 = v6;
    }

    else
    {
      v3 = 0;
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v3;
}

uint64_t APAirPlayAgentServicesClientSendCommand()
{
  if (APAirPlayAgentServicesClientSendCommand_onceToken != -1)
  {
    APAirPlayAgentServicesClientSendCommand_cold_1();
  }

  if (gLogCategory_APAirPlayAgentServices <= 50 && (gLogCategory_APAirPlayAgentServices != -1 || _LogCategory_Initialize()))
  {
    APAirPlayAgentServicesClientSendCommand_cold_2();
  }

  v0 = APSXPCClientSendCommandCreatingReply();
  if (v0)
  {
    APAirPlayAgentServicesClientSendCommand_cold_3();
  }

  return v0;
}

void __APAirPlayAgentServicesClientSendCommand_block_invoke()
{
  if (gLogCategory_APAirPlayAgentServices <= 50 && (gLogCategory_APAirPlayAgentServices != -1 || _LogCategory_Initialize()))
  {
    __APAirPlayAgentServicesClientSendCommand_block_invoke_cold_1();
  }

  LocalCenter = CFNotificationCenterGetLocalCenter();
  DisconnectNotificationName = APSXPCClientGetDisconnectNotificationName();

  CFNotificationCenterAddObserver(LocalCenter, 0, airplayAgentServicesClient_handleServerDisconnect, DisconnectNotificationName, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void airplayAgentServicesClient_handleServerDisconnect()
{
  if (gLogCategory_APAirPlayAgentServices <= 50 && (gLogCategory_APAirPlayAgentServices != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  _Exit(1);
}

uint64_t endpointDescription_registerClass(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&endpointDescription_registerClass_sClassDesc, ClassID, 1, a1);
}

uint64_t APEndpointDescriptionGetTypeID()
{
  if (_MergedGlobals_11 != -1)
  {
    APEndpointDescriptionGetClassID_cold_1();
  }

  v1 = qword_280FB1AE8;

  return MEMORY[0x282111A98](v1);
}

uint64_t APEndpointDescriptionGetDeviceID(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  theString = 0;
  *buffer = 0u;
  v7 = 0u;
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v2 || v2(a1, @"DeviceID", *MEMORY[0x277CBECE8], &theString))
  {
    APEndpointDescriptionGetDeviceID_cold_2();
  }

  else
  {
    if (CFStringGetCString(theString, buffer, 32, 0x8000100u))
    {
      v3 = TextToHardwareAddressScalar();
      goto LABEL_5;
    }

    APEndpointDescriptionGetDeviceID_cold_1();
  }

  v3 = 0;
LABEL_5:
  if (theString)
  {
    CFRelease(theString);
  }

  return v3;
}

__CFString *APEndpointDescriptionCopyDebugString(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v10 = 0;
  cf = 0;
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v4(a1, @"Name", v2, &cf);
  }

  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(a1, @"Model", v2, &v10);
  }

  APSGetFBOPropertyInt64();
  v7 = v10;
  v6 = cf;
  v8 = SourceVersionToCString();
  CFStringAppendFormat(Mutable, 0, @"'%@' (%@ v%s)", v6, v7, v8);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return Mutable;
}

uint64_t APEndpointStreamLocalCreate(const __CFAllocator *a1, const void *a2, const void *a3, uint64_t a4, const void *a5, char a6, CFTypeRef *a7)
{
  v31 = *MEMORY[0x277D85DE8];
  cf = 0;
  v29 = 0;
  valuePtr = 1;
  if (!a5)
  {
    APEndpointStreamLocalCreate_cold_9();
LABEL_30:
    v25 = 4294950536;
    goto LABEL_37;
  }

  if (!a3)
  {
    APEndpointStreamLocalCreate_cold_8();
    goto LABEL_30;
  }

  if (!a7)
  {
    APEndpointStreamLocalCreate_cold_7();
    goto LABEL_30;
  }

  FigEndpointStreamAirPlayGetClassID();
  v13 = CMDerivedObjectCreate();
  if (v13)
  {
    v25 = v13;
    APEndpointStreamLocalCreate_cold_1();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    SNPrintF();
    *(DerivedStorage + 16) = os_transaction_create();
    SNPrintF();
    v15 = FigDispatchQueueCreateWithPriority();
    *(DerivedStorage + 8) = v15;
    if (v15)
    {
      SNPrintF();
      v16 = FigDispatchQueueCreateWithPriority();
      *(DerivedStorage + 200) = v16;
      if (v16)
      {
        *(DerivedStorage + 136) = FigSimpleMutexCreate();
        *(DerivedStorage + 24) = a2;
        if (a2)
        {
          CFRetain(a2);
        }

        *(DerivedStorage + 40) = a3;
        v17 = (DerivedStorage + 40);
        CFRetain(a3);
        *(DerivedStorage + 64) = a5;
        CFRetain(a5);
        Value = FigCFDictionaryGetValue();
        if (Value)
        {
          Value = CFRetain(Value);
        }

        *(DerivedStorage + 48) = Value;
        valuePtr = 1;
        v19 = CFNumberCreate(a1, kCFNumberSInt32Type, &valuePtr);
        *(DerivedStorage + 152) = v19;
        if (v19)
        {
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          *(DerivedStorage + 176) = Mutable;
          if (Mutable)
          {
            CFDictionaryGetInt64();
            IntWithDefault = APSSettingsGetIntWithDefault();
            *(DerivedStorage + 57) = IntWithDefault != 0;
            if (IntWithDefault)
            {
              v22 = APSAudioFormatDescriptionListCreateForBufferedLocalReceiverEchoCancellationReference();
LABEL_18:
              v23 = 0;
              goto LABEL_19;
            }

            if (CFEqual(*v17, *MEMORY[0x277CC1968]))
            {
              v22 = localStream_copyBufferedSupportedAudioFormatList(cf, &v29);
              v23 = v29;
            }

            else
            {
              if (CFEqual(*v17, *MEMORY[0x277CC1960]))
              {
                v22 = APSAudioFormatDescriptionListCreateForRealTimeLocalReceiver();
                goto LABEL_18;
              }

              v23 = 0;
              v22 = 0;
            }

LABEL_19:
            *(DerivedStorage + 184) = v22;
            v24 = DerivedStorage + 184;
            *(v24 - 24) = 0;
            *(v24 + 8) = v23;
            *(v24 - 152) = CFRetain(@"10CA1000-8AFF-4902-9124-F8506138A0D8");
            *(v24 - 128) = a6;
            CFDictionaryGetInt64();
            *(v24 - 127) = APSSettingsGetIntWithDefault() != 0;
            v27 = 0;
            if (gLogCategory_APEndpointStreamLocal <= 50 && (gLogCategory_APEndpointStreamLocal != -1 || _LogCategory_Initialize()))
            {
              APEndpointStreamLocalCreate_cold_2(v24, &v27);
            }

            v25 = 0;
            *a7 = cf;
            return v25;
          }

          APEndpointStreamLocalCreate_cold_3();
        }

        else
        {
          APEndpointStreamLocalCreate_cold_4();
        }
      }

      else
      {
        APEndpointStreamLocalCreate_cold_5();
      }
    }

    else
    {
      APEndpointStreamLocalCreate_cold_6();
    }

    v25 = 4294950535;
  }

LABEL_37:
  if (cf)
  {
    CFRelease(cf);
  }

  return v25;
}

void localStream_Finalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage[1];
  if (v3)
  {
    dispatch_release(v3);
    DerivedStorage[1] = 0;
  }

  localStream_dissociateInternal(a1, 0);
  v4 = DerivedStorage[30];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[30] = 0;
  }

  v5 = DerivedStorage[3];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = DerivedStorage[5];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = DerivedStorage[6];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = DerivedStorage[4];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = DerivedStorage[8];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = DerivedStorage[18];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = DerivedStorage[22];
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = DerivedStorage[20];
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = DerivedStorage[23];
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = DerivedStorage[2];
  if (v14)
  {
    os_release(v14);
    DerivedStorage[2] = 0;
  }

  FigSimpleMutexDestroy();
  v15 = DerivedStorage[27];
  if (v15)
  {
    CFRelease(v15);
    DerivedStorage[27] = 0;
  }

  v16 = DerivedStorage[25];
  if (v16)
  {
    dispatch_release(v16);
    DerivedStorage[25] = 0;
  }
}

__CFString *localStream_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APEndpointStreamLocal %p '%@'>", a1, *(DerivedStorage + 24));
  return Mutable;
}

uint64_t localStream_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (gLogCategory_APEndpointStreamLocal <= 30 && (gLogCategory_APEndpointStreamLocal != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*DerivedStorage)
  {
    localStream_CopyProperty_cold_1();
    return 4294950534;
  }

  if (!a2)
  {
    localStream_CopyProperty_cold_4();
    return 4294950536;
  }

  if (!a4)
  {
    localStream_CopyProperty_cold_3();
    return 4294950536;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1900]))
  {
    v9 = *(DerivedStorage + 40);
LABEL_19:
    UInt32 = CFRetain(v9);
LABEL_20:
    v12 = 0;
    *a4 = UInt32;
    return v12;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1880]))
  {
    v10 = MEMORY[0x277CBED28];
    if (!*(DerivedStorage + 208))
    {
      v10 = MEMORY[0x277CBED10];
    }

    goto LABEL_18;
  }

  if (CFEqual(a2, @"IsLocalStream"))
  {
    v10 = MEMORY[0x277CBED28];
LABEL_18:
    v9 = *v10;
    goto LABEL_19;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1870]))
  {
LABEL_17:
    v10 = MEMORY[0x277CBED10];
    goto LABEL_18;
  }

  if (CFEqual(a2, @"EndpointStreamShowInfo"))
  {
    UInt32 = localStream_copyShowInfo();
    goto LABEL_20;
  }

  if (CFEqual(a2, @"IsPlaying"))
  {
    FigSimpleMutexLock();
    v14 = MEMORY[0x277CBED28];
    if (!*(DerivedStorage + 168))
    {
      v14 = MEMORY[0x277CBED10];
    }

    v15 = *v14;
LABEL_28:
    v15 = CFRetain(v15);
LABEL_29:
    *a4 = v15;
    FigSimpleMutexUnlock();
    return 0;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1878]))
  {
    v9 = *(DerivedStorage + 32);
    goto LABEL_19;
  }

  if (FigCFEqual())
  {
    FigSimpleMutexLock();
    APSAudioFormatDescriptionListGetMaxChannelCount();
    FigSimpleMutexUnlock();
    goto LABEL_35;
  }

  if (CFEqual(a2, @"SupportedAPAudioFormats"))
  {
    FigSimpleMutexLock();
    valuePtr = APSAudioFormatDescriptionListGetLegacyFormatMask();
    FigSimpleMutexUnlock();
    v16 = CFNumberCreate(a3, kCFNumberSInt64Type, &valuePtr);
    *a4 = v16;
    if (!v16)
    {
      localStream_CopyProperty_cold_2();
      return 4294950535;
    }

    return 0;
  }

  if (CFEqual(a2, @"SupportedAudioFormatList"))
  {
    if (!CFEqual(*(DerivedStorage + 40), *MEMORY[0x277CC1968]) || (FigSimpleMutexLock(), v17 = *(DerivedStorage + 184), FigSimpleMutexUnlock(), !v17))
    {
      UInt32 = 0;
      goto LABEL_20;
    }

    goto LABEL_46;
  }

  if (FigCFEqual())
  {
    if (CFEqual(*(DerivedStorage + 40), *MEMORY[0x277CC1968]))
    {
      FigSimpleMutexLock();
      FigSimpleMutexUnlock();
      v18 = APSAudioFormatDescriptionListCopyRichestFormatAsFigEndpointStreamAudioFormatDescription();
      if (v18)
      {
        v12 = v18;
        APSLogErrorAt();
        return v12;
      }

      v19 = cf;
    }

    else
    {
      v19 = 0;
    }

    v12 = 0;
    goto LABEL_57;
  }

  if (CFEqual(a2, *MEMORY[0x277CC18C0]))
  {
    if (!CFEqual(*(DerivedStorage + 40), *MEMORY[0x277CC1968]))
    {
      v12 = 0;
      *a4 = 0;
      return v12;
    }

    FigSimpleMutexLock();
    FigSimpleMutexUnlock();
    APSLogErrorAt();
    return 0;
  }

  if (FigCFEqual())
  {
    FigSimpleMutexLock();
    v15 = *(DerivedStorage + 160);
    if (!v15)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (CFEqual(a2, *MEMORY[0x277CC17A8]))
  {
    FigSimpleMutexLock();
    v15 = *(DerivedStorage + 144);
    if (!v15)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (CFEqual(a2, @"HoseRegistrar"))
  {
    valuePtr = a1;
    v22 = 0;
    dispatch_sync_f(*(DerivedStorage + 200), &valuePtr, localStream_copyRegistrar);
    v12 = 0;
    v19 = v22;
LABEL_57:
    *a4 = v19;
    return v12;
  }

  if (CFEqual(a2, @"SupportsAPAP") || CFEqual(a2, @"SupportsAPAT"))
  {
    IsFeatureEnabled = FigCFEqual();
    goto LABEL_70;
  }

  if (CFEqual(a2, *MEMORY[0x277CC18E0]))
  {
    v17 = *MEMORY[0x277CBED10];
    if ((APSSettingsGetIntWithDefault() || APSSettingsIsFeatureEnabled()) && FigCFEqual())
    {
      v17 = *MEMORY[0x277CBED28];
    }

LABEL_46:
    v9 = v17;
    goto LABEL_19;
  }

  if (CFEqual(a2, *MEMORY[0x277CC18D8]))
  {
    IsFeatureEnabled = APSSettingsIsFeatureEnabled();
LABEL_70:
    v10 = MEMORY[0x277CBED28];
    if (!IsFeatureEnabled)
    {
      v10 = MEMORY[0x277CBED10];
    }

    goto LABEL_18;
  }

  if (CFEqual(a2, @"IsSidePlayStream"))
  {
    goto LABEL_17;
  }

  if (CFEqual(a2, @"NumberOfSubStreams"))
  {
LABEL_35:
    UInt32 = FigCFNumberCreateUInt32();
    goto LABEL_20;
  }

  if (gLogCategory_APEndpointStreamLocal <= 30 && (gLogCategory_APEndpointStreamLocal != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return 4294954512;
}

uint64_t localStream_SetProperty(const void *a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamLocal <= 30 && (gLogCategory_APEndpointStreamLocal != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*DerivedStorage)
  {
    localStream_SetProperty_cold_1();
    return 4294950534;
  }

  if (FigCFEqual())
  {
    if (!FigCFEqual())
    {
      localStream_SetProperty_cold_3();
      return 4294954509;
    }

    if (a3)
    {
      v6 = CFGetTypeID(a3);
      if (v6 == CFNumberGetTypeID())
      {
        if (a1)
        {
          CFRetain(a1);
        }

        CFRetain(a3);
        v7 = *(DerivedStorage + 200);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = __localStream_SetProperty_block_invoke;
        block[3] = &__block_descriptor_tmp_36;
        block[4] = DerivedStorage;
        block[5] = a3;
        block[6] = a1;
        v8 = block;
LABEL_13:
        dispatch_async(v7, v8);
        return 0;
      }
    }

    localStream_SetProperty_cold_2();
    return 4294950536;
  }

  if (FigCFEqual())
  {
    if (!a3 || (v10 = CFGetTypeID(a3), v10 != CFStringGetTypeID()))
    {
      localStream_SetProperty_cold_4();
      return 4294950536;
    }

    if (gLogCategory_APEndpointStreamLocal > 50)
    {
      return 0;
    }

    if (gLogCategory_APEndpointStreamLocal != -1 || (result = _LogCategory_Initialize(), result))
    {
      LogPrintF();
      return 0;
    }
  }

  else
  {
    if (FigCFEqual())
    {
      if (a3)
      {
        v11 = CFGetTypeID(a3);
        if (v11 == CFStringGetTypeID())
        {
          FigSimpleMutexLock();
          v12 = CMBaseObjectGetDerivedStorage();
          if (!FigCFEqual())
          {
            if (gLogCategory_APEndpointStreamLocal <= 50 && (gLogCategory_APEndpointStreamLocal != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            if (Mutable)
            {
              v17 = Mutable;
              CFDictionarySetValue(Mutable, @"ActiveBadgingFormatInfo", a3);
              v18 = *(v12 + 160);
              *(v12 + 160) = a3;
              CFRetain(a3);
              if (v18)
              {
                CFRelease(v18);
              }

              CMNotificationCenterGetDefaultLocalCenter();
              FigDispatchAsyncPostNotification();
              CFRelease(v17);
            }

            else
            {
              localStream_SetProperty_cold_5();
            }
          }

          FigSimpleMutexUnlock();
          return 0;
        }
      }

      localStream_SetProperty_cold_6();
      return 4294950536;
    }

    if (FigCFEqual())
    {
      if (!a3 || (v13 = CFGetTypeID(a3), v13 == CFNumberGetTypeID()))
      {
        if (gLogCategory_APEndpointStreamLocal <= 50 && (gLogCategory_APEndpointStreamLocal != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        FigSimpleMutexLock();
        v14 = *(DerivedStorage + 144);
        *(DerivedStorage + 144) = a3;
        if (a3)
        {
          CFRetain(a3);
        }

        if (v14)
        {
          CFRelease(v14);
        }

        FigSimpleMutexUnlock();
        v15 = *(DerivedStorage + 200);
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 0x40000000;
        v21[2] = __localStream_SetProperty_block_invoke_2;
        v21[3] = &__block_descriptor_tmp_39;
        v21[4] = DerivedStorage;
        v21[5] = a3;
        dispatch_sync(v15, v21);
        return 0;
      }

      localStream_SetProperty_cold_7();
      return 4294950536;
    }

    if (FigCFEqual())
    {
      if (gLogCategory_APEndpointStreamLocal <= 50 && (gLogCategory_APEndpointStreamLocal != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (a1)
      {
        CFRetain(a1);
      }

      if (a3)
      {
        CFRetain(a3);
      }

      v7 = *(DerivedStorage + 200);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 0x40000000;
      v20[2] = __localStream_SetProperty_block_invoke_3;
      v20[3] = &__block_descriptor_tmp_41;
      v20[4] = a1;
      v20[5] = a3;
      v8 = v20;
      goto LABEL_13;
    }

    if (FigCFEqual())
    {
      if (gLogCategory_APEndpointStreamLocal <= 50 && (gLogCategory_APEndpointStreamLocal != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (a1)
      {
        CFRetain(a1);
      }

      if (a3)
      {
        CFRetain(a3);
      }

      v7 = *(DerivedStorage + 200);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 0x40000000;
      v19[2] = __localStream_SetProperty_block_invoke_4;
      v19[3] = &__block_descriptor_tmp_43;
      v19[4] = a1;
      v19[5] = a3;
      v8 = v19;
      goto LABEL_13;
    }

    if (gLogCategory_APEndpointStreamLocal <= 30 && (gLogCategory_APEndpointStreamLocal != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return 4294954512;
  }

  return result;
}

uint64_t localStream_updateResumed(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 208) != a2)
  {
    *(result + 208) = a2;
    if (gLogCategory_APEndpointStreamLocal <= 50 && (gLogCategory_APEndpointStreamLocal != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return localStream_updateIsPlaying();
  }

  return result;
}

uint64_t localStream_handleHoseSBARRateChanged(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  Int64Ranged = CFDictionaryGetInt64Ranged();

  return localStream_updateHoseSBARRate(a2, Int64Ranged);
}

uint64_t localStream_updateHoseSBARRate(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 224) != a2)
  {
    *(result + 224) = a2;
    if (gLogCategory_APEndpointStreamLocal <= 50 && (gLogCategory_APEndpointStreamLocal != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return localStream_updateIsPlaying();
  }

  return result;
}

void __localStream_suspendInternal_block_invoke(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), *(a1 + 56), *(a1 + 48));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

uint64_t localStream_updateIsPlaying()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (CFEqual(*(DerivedStorage + 40), *MEMORY[0x277CC1960]))
  {
    v1 = *(DerivedStorage + 208);
  }

  else if (CFEqual(*(DerivedStorage + 40), *MEMORY[0x277CC1968]))
  {
    v1 = *(DerivedStorage + 224) != 0;
  }

  else
  {
    v1 = 0;
  }

  if (*(DerivedStorage + 168) != v1)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(DerivedStorage + 168) = v1;
    if (gLogCategory_APEndpointStreamLocal <= 50)
    {
      if (gLogCategory_APEndpointStreamLocal != -1 || (v3 = _LogCategory_Initialize(), v1 = *(DerivedStorage + 168), v3))
      {
        LogPrintF();
        v1 = *(DerivedStorage + 168);
      }
    }

    v4 = MEMORY[0x277CBED10];
    if (v1)
    {
      v4 = MEMORY[0x277CBED28];
    }

    CFDictionarySetValue(Mutable, @"IsPlaying", *v4);
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    CFRelease(Mutable);
  }

  return FigSimpleMutexUnlock();
}

__CFDictionary *localStream_copyShowInfo()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v2 = Mutable;
  v3 = MEMORY[0x277CBED28];
  if (!*(DerivedStorage + 208))
  {
    v3 = MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(Mutable, @"Resumed", *v3);
  CFDictionarySetValue(v2, @"Type", *(DerivedStorage + 40));
  CFDictionarySetValue(v2, @"Name", *(DerivedStorage + 24));
  return v2;
}

CFTypeRef localStream_copyRegistrar(uint64_t a1)
{
  result = *(CMBaseObjectGetDerivedStorage() + 232);
  if (result)
  {
    result = CFRetain(result);
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t localStream_setAndCacheSBARProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v5)
  {
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v6)
    {
      v6(v5, a2, a3);
    }
  }

  return FigCFDictionarySetValue();
}

uint64_t localStream_Suspend(const void *a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t localStream_Resume(const void *a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t localStream_applyCachedPropertyForSBARDictionaryCallback(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  v5 = *(result + 216);
  if (v5)
  {
    if (*MEMORY[0x277CBEEE8] == a2)
    {
      a2 = 0;
    }

    VTable = CMBaseObjectGetVTable();
    v7 = *(VTable + 8);
    result = VTable + 8;
    v8 = *(v7 + 56);
    if (v8)
    {

      return v8(v5, a1, a2);
    }
  }

  return result;
}

void __localStream_resumeInternal_block_invoke(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), *(a1 + 56), *(a1 + 48));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

uint64_t localStream_isPassthroughSupportedForFormatDescription(uint64_t a1, uint64_t a2, BOOL *a3)
{
  FigEndpointStreamAirPlayGetFigEndpointStream();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (gLogCategory_APEndpointStreamLocal <= 10 && (gLogCategory_APEndpointStreamLocal != -1 || _LogCategory_Initialize()))
  {
    localStream_isPassthroughSupportedForFormatDescription_cold_1();
  }

  FigSimpleMutexLock();
  if (a3)
  {
    if (CFEqual(*(DerivedStorage + 40), *MEMORY[0x277CC1968]))
    {
      if (APSSettingsIsFeatureEnabled())
      {
        v5 = APSAudioFormatDescriptionCreateWithFigEndpointStreamAudioFormatDescription();
        if (v5)
        {
          v7 = v5;
          localStream_isPassthroughSupportedForFormatDescription_cold_2();
        }

        else
        {
          if (APSAudioFormatDescriptionListContainsFormat())
          {
            v6 = APSAudioFormatDescriptionIsPassthroughFormatForCurrentDeviceAsSender() != 0;
          }

          else
          {
            v6 = 0;
          }

          v9 = 0;
          if (gLogCategory_APEndpointStreamLocal <= 50 && (gLogCategory_APEndpointStreamLocal != -1 || _LogCategory_Initialize()))
          {
            localStream_isPassthroughSupportedForFormatDescription_cold_3(DerivedStorage + 184, &v9);
          }

          v7 = 0;
          *a3 = v6;
        }
      }

      else
      {
        v7 = 0;
        *a3 = 0;
      }
    }

    else
    {
      localStream_isPassthroughSupportedForFormatDescription_cold_4();
      v7 = 4294954514;
    }
  }

  else
  {
    localStream_isPassthroughSupportedForFormatDescription_cold_5();
    v7 = 4294950536;
  }

  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

uint64_t APPairingClientCoreUtilsCreate(uint64_t a1, const void *a2, char a3, char a4, int a5, char a6, char a7, char a8, char a9, char a10, char a11, const void *a12, const void *a13, const void *a14, const void *a15, void *a16)
{
  if (a15)
  {
    APPairingClientGetClassID();
    v20 = CMDerivedObjectCreate();
    if (v20)
    {
      v27 = v20;
      APSLogErrorAt();
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (a2)
      {
        v22 = CFRetain(a2);
      }

      else
      {
        v22 = 0;
      }

      *(DerivedStorage + 16) = v22;
      if (a12)
      {
        v23 = CFRetain(a12);
      }

      else
      {
        v23 = 0;
      }

      *(DerivedStorage + 24) = v23;
      if (a13)
      {
        v24 = CFRetain(a13);
      }

      else
      {
        v24 = 0;
      }

      *(DerivedStorage + 32) = v24;
      if (a14)
      {
        v25 = CFRetain(a14);
        v24 = *(DerivedStorage + 32);
      }

      else
      {
        v25 = 0;
      }

      *(DerivedStorage + 40) = v25;
      if (v24)
      {
        *DerivedStorage = objc_opt_new();
      }

      *(DerivedStorage + 48) = CFRetain(a15);
      *(DerivedStorage + 56) = a3;
      *(DerivedStorage + 59) = a5;
      if (a5)
      {
        v26 = 1;
      }

      else
      {
        v26 = a4;
      }

      *(DerivedStorage + 57) = v26;
      *(DerivedStorage + 60) = a6;
      *(DerivedStorage + 61) = a7;
      *(DerivedStorage + 62) = a8;
      *(DerivedStorage + 63) = a9;
      *(DerivedStorage + 64) = a10;
      *(DerivedStorage + 65) = a11;
      if (gLogCategory_APPairingClientCoreUtils <= 50 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v27 = 0;
      *a16 = 0;
    }
  }

  else
  {
    APPairingClientCoreUtilsCreate_cold_1();
    return 4294895525;
  }

  return v27;
}

uint64_t APPairingClientCoreUtilsCreatePatchedPairedPeerWithPeerInfo(void *a1, uint64_t a2, void *a3)
{
  v4 = [a1 patchedPairedPeerWithPeerInfo:a2];
  if (a3)
  {
    if (v4)
    {
      v4 = CFRetain(v4);
    }

    *a3 = v4;
  }

  return 0;
}

uint64_t APPairingClientCoreUtilsPairedPeerDescriptionHasWoLInfo(void *a1)
{
  result = [a1 info];
  if (result)
  {
    [a1 info];
    CFArrayGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    [a1 info];
    CFDataGetTypeID();
    return (TypedValue | CFDictionaryGetTypedValue()) != 0;
  }

  return result;
}

uint64_t APPairingClientCoreUtilsPerformAddPairing()
{
  v0 = PairingSessionCreate();
  if (v0)
  {
    v1 = v0;
    APPairingClientCoreUtilsPerformAddPairing_cold_1();
  }

  else
  {
    if (gLogCategory_APPairingClientCoreUtils <= 50 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    PairingSessionSetLogging();
    PairingSessionSetProperty();
    PairingSessionSetProperty();
    PairingSessionSetProperty();
    v1 = coreUtilsPairing_performAdminPairingOperation();
    if (v1)
    {
      APPairingClientCoreUtilsPerformAddPairing_cold_2();
    }
  }

  return v1;
}

uint64_t APPairingClientCoreUtilsPerformRemovePairing()
{
  v0 = PairingSessionCreate();
  if (v0)
  {
    v1 = v0;
    APPairingClientCoreUtilsPerformRemovePairing_cold_1();
  }

  else
  {
    if (gLogCategory_APPairingClientCoreUtils <= 50)
    {
      APPairingClientCoreUtilsPerformRemovePairing_cold_2();
    }

    PairingSessionSetLogging();
    PairingSessionSetProperty();
    v1 = coreUtilsPairing_performAdminPairingOperation();
    if (v1)
    {
      APPairingClientCoreUtilsPerformRemovePairing_cold_3();
    }
  }

  return v1;
}

uint64_t APPairingClientCoreUtilsPerformListPairings(uint64_t a1, uint64_t *a2)
{
  v4 = PairingSessionCreate();
  if (v4)
  {
    APPairingClientCoreUtilsPerformListPairings_cold_1();
  }

  else
  {
    if (gLogCategory_APPairingClientCoreUtils <= 50)
    {
      APPairingClientCoreUtilsPerformListPairings_cold_2();
    }

    PairingSessionSetLogging();
    v4 = coreUtilsPairing_performAdminPairingOperation();
    if (v4)
    {
      APPairingClientCoreUtilsPerformListPairings_cold_3();
    }

    else
    {
      *a2 = PairingSessionCopyProperty();
    }
  }

  return v4;
}

uint64_t APPairingClientCoreUtilsUpdateGroupInfo(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 32))
  {
    v4 = [*DerivedStorage updatePairingGroupInfo:a2 forPairingGroupID:?];
    if (v4)
    {
      APPairingClientCoreUtilsUpdateGroupInfo_cold_1();
    }
  }

  else
  {
    APPairingClientCoreUtilsUpdateGroupInfo_cold_2();
    return 4294895525;
  }

  return v4;
}

uint64_t APPairingClientCoreUtilsIsValidPairingGroupInfo(const __CFDictionary *a1, const void *a2, CFDataRef theData)
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  if (!a1)
  {
    APPairingClientCoreUtilsIsValidPairingGroupInfo_cold_6();
    return 0;
  }

  if (!a2)
  {
    APPairingClientCoreUtilsIsValidPairingGroupInfo_cold_5();
    return 0;
  }

  if (!theData)
  {
    APPairingClientCoreUtilsIsValidPairingGroupInfo_cold_4();
    return 0;
  }

  if (CFDataGetLength(theData) != 32)
  {
    APPairingClientCoreUtilsIsValidPairingGroupInfo_cold_1();
    return 0;
  }

  if (CFDictionaryContainsKey(a1, a2))
  {
    CFDataGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    if (!TypedValue)
    {
      APPairingClientCoreUtilsIsValidPairingGroupInfo_cold_3();
      return 0;
    }

    v7 = TypedValue;
    BytePtr = CFDataGetBytePtr(TypedValue);
    Length = CFDataGetLength(v7);
    CC_SHA256(BytePtr, Length, &v15);
    v10 = CFDataGetBytePtr(theData);
    v11 = *v10 == v15 && *(v10 + 1) == *(&v15 + 1);
    v12 = v11 && *(v10 + 2) == v16;
    if (!v12 || *(v10 + 3) != *(&v16 + 1))
    {
      APPairingClientCoreUtilsIsValidPairingGroupInfo_cold_2();
      return 0;
    }
  }

  return 1;
}

uint64_t APPairingClientCoreUtilsCreateCombinedPairingGroupInfo(const __CFDictionary *a1, const __CFDictionary *a2, const void *a3, CFDataRef theData, void *a5)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (theData)
        {
          if (a5)
          {
            if (APPairingClientCoreUtilsIsValidPairingGroupInfo(a1, a3, theData))
            {
              if (APPairingClientCoreUtilsIsValidPairingGroupInfo(a2, a3, theData))
              {
                Value = CFDictionaryGetValue(a1, @"groupID");
                if (Value)
                {
                  v11 = Value;
                  v12 = CFDictionaryGetValue(a2, @"groupID");
                  if (v12 && !CFEqual(v11, v12))
                  {
                    v14 = 4294895525;
                    APPairingClientCoreUtilsCreateCombinedPairingGroupInfo_cold_1();
                  }

                  else
                  {
                    MutableCopy = FigCFDictionaryCreateMutableCopy();
                    CFDictionaryMergeDictionary();
                    if (APPairingClientCoreUtilsIsValidPairingGroupInfo(MutableCopy, a3, theData))
                    {
                      v14 = 0;
                      *a5 = MutableCopy;
                    }

                    else
                    {
                      v14 = 4294895525;
                      APSLogErrorAt();
                      if (MutableCopy)
                      {
                        CFRelease(MutableCopy);
                      }
                    }
                  }
                }

                else
                {
                  v14 = 4294895525;
                  APPairingClientCoreUtilsCreateCombinedPairingGroupInfo_cold_2();
                }
              }

              else
              {
                v14 = 4294895525;
                APPairingClientCoreUtilsCreateCombinedPairingGroupInfo_cold_3();
              }
            }

            else
            {
              v14 = 4294895525;
              APPairingClientCoreUtilsCreateCombinedPairingGroupInfo_cold_4();
            }
          }

          else
          {
            v14 = 4294895525;
            APPairingClientCoreUtilsCreateCombinedPairingGroupInfo_cold_5();
          }
        }

        else
        {
          v14 = 4294895525;
          APPairingClientCoreUtilsCreateCombinedPairingGroupInfo_cold_6();
        }
      }

      else
      {
        v14 = 4294895525;
        APPairingClientCoreUtilsCreateCombinedPairingGroupInfo_cold_7();
      }
    }

    else
    {
      v14 = 4294895525;
      APPairingClientCoreUtilsCreateCombinedPairingGroupInfo_cold_8();
    }
  }

  else
  {
    v14 = 4294895525;
    APPairingClientCoreUtilsCreateCombinedPairingGroupInfo_cold_9();
  }

  return v14;
}

uint64_t APPairingClientCoreUtilsCreateUnpairedPeersFromGroupInfo(uint64_t a1, const __CFArray *a2, uint64_t *a3)
{
  if (a1)
  {
    if (a3)
    {
      [MEMORY[0x277CBEB58] set];
      if (a2)
      {
        CFArrayGetCount(a2);
        CFArrayApplyBlock();
      }

      v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0];
      CFDictionaryApplyBlock();
      v6 = 0;
      *a3 = v5;
    }

    else
    {
      v6 = 4294895525;
      APPairingClientCoreUtilsCreateUnpairedPeersFromGroupInfo_cold_1();
    }
  }

  else
  {
    v6 = 4294895525;
    APPairingClientCoreUtilsCreateUnpairedPeersFromGroupInfo_cold_2();
  }

  return v6;
}

uint64_t __APPairingClientCoreUtilsCreateUnpairedPeersFromGroupInfo_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];

  return [v2 addObject:v3];
}

void sub_2220F40F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2220F4340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void coreUtilsPairing_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 8) = 0;
  }

  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 16) = 0;
  }

  v3 = *(DerivedStorage + 24);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 24) = 0;
  }

  v4 = *(DerivedStorage + 32);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 32) = 0;
  }

  v5 = *(DerivedStorage + 40);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 40) = 0;
  }

  v6 = *(DerivedStorage + 48);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 48) = 0;
  }

  [*DerivedStorage invalidate];

  *DerivedStorage = 0;
}

__CFString *coreUtilsPairing_CopyDebugDescription()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APPairingClientCoreUtils for '%@'>", *(DerivedStorage + 16));
  return Mutable;
}

uint64_t coreUtilsPairing_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFDataRef *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a4)
    {
      v7 = DerivedStorage;
      if (CFEqual(a2, @"PairingTranscriptData"))
      {
        memset(v13, 0, sizeof(v13));
        if (*(v7 + 8))
        {
          TranscriptResultMFi4 = PairingSessionGenerateTranscriptResultMFi4();
          if (TranscriptResultMFi4)
          {
            v11 = TranscriptResultMFi4;
            coreUtilsPairing_CopyProperty_cold_1();
          }

          else
          {
            v9 = CFDataCreate(*MEMORY[0x277CBECE8], v13, 64);
            if (v9)
            {
              for (i = 0; i != 64; ++i)
              {
                *(v13 + i) = 0;
              }

              v11 = 0;
              *a4 = v9;
            }

            else
            {
              coreUtilsPairing_CopyProperty_cold_2();
              return 4294895526;
            }
          }
        }

        else
        {
          coreUtilsPairing_CopyProperty_cold_3();
          return 4294895524;
        }
      }

      else
      {
        return 4294954512;
      }
    }

    else
    {
      v11 = 4294895525;
      coreUtilsPairing_CopyProperty_cold_4();
    }
  }

  else
  {
    v11 = 4294895525;
    coreUtilsPairing_CopyProperty_cold_5();
  }

  return v11;
}

uint64_t coreUtilsPairing_PerformSetup(uint64_t a1, const __CFString *a2, int a3, int a4, char *a5, const void *a6, const __CFString **a7, void *a8, void *a9, void *a10)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = DerivedStorage;
  *(DerivedStorage + 58) = 0;
  if (a4)
  {
    v20 = 4;
  }

  else if (*(DerivedStorage + 57))
  {
    if (*(DerivedStorage + 59))
    {
      v20 = 5;
    }

    else
    {
      v20 = 3;
    }
  }

  else
  {
    v20 = 2 * (a3 != 0);
  }

  if (a3)
  {
    if (a2)
    {
      LODWORD(result) = coreUtilsPairing_performSetupInternal(a1, a2, v20, *(DerivedStorage + 64), a5, a6, a7, a8, a9, a10);
      if (result == 200401 && !*(v19 + 56))
      {
        LODWORD(result) = coreUtilsPairing_sendShowPairPINRequest(*(v19 + 48), v20);
        v24 = result == 0;
      }

      else
      {
        v24 = result == 200470;
      }

      if (v24)
      {
        return 200401;
      }

      else
      {
        return result;
      }
    }

    else
    {
      LODWORD(result) = coreUtilsPairing_sendShowPairPINRequest(*(DerivedStorage + 48), v20);
      if (result)
      {
        return result;
      }

      else
      {
        return 200401;
      }
    }
  }

  else
  {
    v22 = coreUtilsPairing_performSetupInternal(a1, @"3939", v20, *(DerivedStorage + 64), 0, 0, a7, a8, a9, a10);
    result = 0;
    if (v22 == 200401)
    {
      v23 = 200403;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      coreUtilsPairing_PerformSetup_cold_1();
      return v23;
    }
  }

  return result;
}

uint64_t coreUtilsPairing_createAirPlayPairingSession(uint64_t a1, uint64_t a2, int a3, int a4, void *a5)
{
  keys[1] = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = PairingSessionCreate();
  if (v9)
  {
    v13 = v9;
    coreUtilsPairing_createAirPlayPairingSession_cold_1();
  }

  else
  {
    if (a3)
    {
      v10 = 16;
    }

    else if (*(DerivedStorage + 57))
    {
      v10 = 12;
    }

    else
    {
      v10 = 0;
    }

    if (a4)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      PairingSessionSetFlags();
      if (gLogCategory_APPairingClientCoreUtils <= 50 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    if (*(DerivedStorage + 59))
    {
      keys[0] = @"com.apple.ScreenCapture";
      values = *MEMORY[0x277CBED28];
      v12 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      PairingSessionSetACL();
      if (gLogCategory_APPairingClientCoreUtils <= 50 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      CFRelease(v12);
    }

    PairingSessionSetKeychainInfo();
    PairingSessionSetLogging();
    v13 = PairingSessionSetTranscriptType();
    if (v13)
    {
      coreUtilsPairing_createAirPlayPairingSession_cold_2();
    }

    else
    {
      *a5 = 0;
    }
  }

  return v13;
}

uint64_t coreUtilsPairing_sendShowPairPINRequest(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v4 = Mutable;
    APSGetDeviceNameCString();
    CFDictionarySetCString();
    snprintf(__str, 0x20uLL, "%d", a2);
    CFDictionarySetCString();
    v5 = APTransportStreamSendPlistMessageCreatingReply();
    CFRelease(v4);
  }

  else
  {
    coreUtilsPairing_sendShowPairPINRequest_cold_1();
    return 4294895526;
  }

  return v5;
}

uint64_t __coreUtilsPairing_getPairedPeerFromVerificationPairingSession_block_invoke(uint64_t a1, void *a2)
{
  if (gLogCategory_APPairingClientCoreUtils <= 50 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
  {
    __coreUtilsPairing_getPairedPeerFromVerificationPairingSession_block_invoke_cold_1(a1, a2);
  }

  v4 = **(a1 + 40);

  return [v4 savePairedPeer:a2];
}

uint64_t APKeyHolderSharedKeyCreate(uint64_t a1, const void *a2, const __CFData *a3, const __CFData *a4, void *a5)
{
  APSKeyHolderGetClassID();
  v9 = CMDerivedObjectCreate();
  if (v9)
  {
    v14 = v9;
    APKeyHolderSharedKeyCreate_cold_1();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (a3)
    {
      v16.length = CFDataGetLength(a3);
      v16.location = 0;
      CFDataGetBytes(a3, v16, (DerivedStorage + 8));
    }

    else
    {
      v11 = RandomBytes();
      if (v11)
      {
        v14 = v11;
        APKeyHolderSharedKeyCreate_cold_2();
        return v14;
      }
    }

    if (a4)
    {
      v17.length = CFDataGetLength(a4);
      v17.location = 0;
      CFDataGetBytes(a4, v17, (DerivedStorage + 24));
    }

    else
    {
      v12 = RandomBytes();
      if (v12)
      {
        v14 = v12;
        APKeyHolderSharedKeyCreate_cold_3();
        return v14;
      }
    }

    v13 = APSCreateSecureMemAllocator();
    *(DerivedStorage + 40) = v13;
    if (v13)
    {
      if (gLogCategory_APKeyHolderSharedKey <= 30 && (gLogCategory_APKeyHolderSharedKey != -1 || _LogCategory_Initialize()))
      {
        APKeyHolderSharedKeyCreate_cold_4();
      }

      v14 = 0;
      *a5 = 0;
    }

    else
    {
      APKeyHolderSharedKeyCreate_cold_5();
      return 4294895576;
    }
  }

  return v14;
}

void sharedKeyHolder_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APKeyHolderSharedKey <= 30 && (gLogCategory_APKeyHolderSharedKey != -1 || _LogCategory_Initialize()))
  {
    sharedKeyHolder_Finalize_cold_1();
  }

  for (i = 8; i != 24; ++i)
  {
    *(DerivedStorage + i) = 0;
  }

  do
  {
    *(DerivedStorage + i++) = 0;
  }

  while (i != 40);
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v2 = *(DerivedStorage + 40);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 40) = 0;
  }
}

__CFString *sharedKeyHolder_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APKeyHolderSharedKey %p>", a1);
  return Mutable;
}

uint64_t sharedKeyHolder_GetAuthenticationType()
{
  v0 = *CMBaseObjectGetDerivedStorage();
  if (!v0)
  {
    return 0;
  }

  v1 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v1)
  {
    return 0;
  }

  return v1(v0);
}

uint64_t sharedKeyHolder_CopyMasterAESKeyAndIV(uint64_t a1, CFDataRef *a2, CFDataRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = CFDataCreate(*(DerivedStorage + 40), (DerivedStorage + 8), 16);
  if (v6)
  {
    v7 = v6;
    v8 = CFDataCreate(*(DerivedStorage + 40), (DerivedStorage + 24), 16);
    if (v8)
    {
      v9 = 0;
      *a2 = v7;
      *a3 = v8;
    }

    else
    {
      v9 = 4294895576;
      sharedKeyHolder_CopyMasterAESKeyAndIV_cold_1(v7);
    }
  }

  else
  {
    v9 = 4294895576;
    sharedKeyHolder_CopyMasterAESKeyAndIV_cold_2();
  }

  return v9;
}

uint64_t sharedKeyHolder_CreateEncryptedMasterAESKeyAndIV(uint64_t a1, CFTypeRef *a2, CFDataRef *a3)
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = CFDataCreate(*(DerivedStorage + 40), (DerivedStorage + 8), 16);
  if (v6)
  {
    v7 = v6;
    v8 = *DerivedStorage;
    if (*DerivedStorage)
    {
      v9 = *(DerivedStorage + 40);
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v10)
      {
        v10(v8, v7, v9, &cf);
      }
    }

    else
    {
      cf = v6;
      v7 = 0;
    }

    v11 = CFDataCreate(*(DerivedStorage + 40), (DerivedStorage + 24), 16);
    if (v11)
    {
      v12 = 0;
      *a2 = cf;
      cf = 0;
      *a3 = v11;
      if (!v7)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v12 = 4294895576;
    sharedKeyHolder_CreateEncryptedMasterAESKeyAndIV_cold_1();
    if (v7)
    {
LABEL_8:
      CFRelease(v7);
    }
  }

  else
  {
    v12 = 4294895576;
    sharedKeyHolder_CreateEncryptedMasterAESKeyAndIV_cold_2();
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

uint64_t APVirtualDisplaySinkCreate(const void *a1, const void *a2, void *a3)
{
  if (!a1)
  {
    APVirtualDisplaySinkCreate_cold_3();
    return 4294954516;
  }

  if (!a2)
  {
    APVirtualDisplaySinkCreate_cold_2();
    return 4294954516;
  }

  if (!a3)
  {
    APVirtualDisplaySinkCreate_cold_1();
    return 4294954516;
  }

  FigVirtualDisplaySinkGetClassID();
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    APSLogErrorAt();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = CFRetain(a1);
    DerivedStorage[2] = CFRetain(a2);
    DerivedStorage[15] = SecondsToUpTicks();
    *a3 = 0;
  }

  return v6;
}

void vdsink_Finalize_0()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APVirtualDisplaySink <= 30 && (gLogCategory_APVirtualDisplaySink != -1 || _LogCategory_Initialize()))
  {
    vdsink_Finalize_cold_1_0();
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v1 = *(DerivedStorage + 16);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 16) = 0;
  }

  v2 = *(DerivedStorage + 96);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 96) = 0;
  }

  v3 = *(DerivedStorage + 104);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 104) = 0;
  }

  v4 = *(DerivedStorage + 112);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 112) = 0;
  }

  v5 = *(DerivedStorage + 8);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 8) = 0;
  }

  v6 = *(DerivedStorage + 88);
  if (v6)
  {
    _Block_release(v6);
    *(DerivedStorage + 88) = 0;
  }

  v7 = *(DerivedStorage + 24);
  if (v7)
  {
    dispatch_release(v7);
    *(DerivedStorage + 24) = 0;
  }
}

void __vdsink_getVirtualDisplaySizeOverrideFromPrefs_block_invoke_0()
{
  v0 = CFPreferencesCopyValue(@"mirroring_resolution", @"com.apple.coremedia", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    IntValue = 0.0;
    if (v2 == CFArrayGetTypeID())
    {
      if (gLogCategory_APVirtualDisplaySink <= 50 && (gLogCategory_APVirtualDisplaySink != -1 || _LogCategory_Initialize()))
      {
        __vdsink_getVirtualDisplaySizeOverrideFromPrefs_block_invoke_cold_1_0();
      }

      v4 = 0.0;
      if (CFArrayGetCount(v1) >= 2)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v1, 0);
        if (ValueAtIndex)
        {
          v6 = ValueAtIndex;
          v7 = CFGetTypeID(ValueAtIndex);
          if (v7 == CFStringGetTypeID())
          {
            IntValue = CFStringGetIntValue(v6);
          }
        }

        v8 = CFArrayGetValueAtIndex(v1, 1);
        if (v8)
        {
          v9 = v8;
          v10 = CFGetTypeID(v8);
          if (v10 == CFStringGetTypeID())
          {
            v4 = CFStringGetIntValue(v9);
          }
        }
      }
    }

    else
    {
      v4 = 0.0;
    }

    CFRelease(v1);
    if (IntValue > 0.0 && v4 > 0.0)
    {
      if (IntValue <= v4)
      {
        *&v11 = v4;
      }

      else
      {
        *&v11 = IntValue;
      }

      vdsink_getVirtualDisplaySizeOverrideFromPrefs_prefScreenSize_0_0 = v11;
      if (IntValue >= v4)
      {
        *&v12 = v4;
      }

      else
      {
        *&v12 = IntValue;
      }

      vdsink_getVirtualDisplaySizeOverrideFromPrefs_prefScreenSize_1_0 = v12;
    }
  }
}

uint64_t vdsink_Start_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = 0;
  if (gLogCategory_APVirtualDisplaySink <= 50 && (gLogCategory_APVirtualDisplaySink != -1 || _LogCategory_Initialize()))
  {
    vdsink_Start_cold_1_0();
  }

  CMTimeMake(&v11, 67, 1000);
  *(DerivedStorage + 32) = v11;
  FigCFDictionaryGetInt32IfPresent();
  IntWithDefault = APSSettingsGetIntWithDefault();
  v12 = IntWithDefault;
  if (IntWithDefault >= 1)
  {
    if (gLogCategory_APVirtualDisplaySink <= 50)
    {
      if (gLogCategory_APVirtualDisplaySink != -1 || (v6 = _LogCategory_Initialize(), IntWithDefault = v12, v6))
      {
        LogPrintF();
        IntWithDefault = v12;
      }
    }

    CMTimeMake(&v11, IntWithDefault, 1000);
    *(DerivedStorage + 32) = v11;
  }

  if (a3)
  {
    v7 = *(DerivedStorage + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __vdsink_Start_block_invoke_0;
    block[3] = &unk_27849D320;
    block[4] = a3;
    v10 = 0;
    dispatch_async(v7, block);
  }

  return 0;
}

uint64_t vdsink_Stop_0(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APVirtualDisplaySink <= 50 && (gLogCategory_APVirtualDisplaySink != -1 || _LogCategory_Initialize()))
  {
    vdsink_Stop_cold_1_0();
    if (!a2)
    {
      return 0;
    }

    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    v4 = *(DerivedStorage + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __vdsink_Stop_block_invoke_0;
    block[3] = &unk_27849D348;
    block[4] = a2;
    dispatch_async(v4, block);
  }

  return 0;
}

uint64_t vdsink_Suspend_0()
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APVirtualDisplaySink <= 30 && (gLogCategory_APVirtualDisplaySink != -1 || _LogCategory_Initialize()))
  {
    vdsink_Suspend_cold_1_0();
  }

  return 0;
}

uint64_t vdsink_Resume_0()
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APVirtualDisplaySink <= 30 && (gLogCategory_APVirtualDisplaySink != -1 || _LogCategory_Initialize()))
  {
    vdsink_Resume_cold_1_0();
  }

  return 0;
}

uint64_t vdsink_GetPropertyAsync_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObject = FigVirtualDisplaySinkGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v8)
  {
    v9 = v8(CMBaseObject, a2, *MEMORY[0x277CBECE8], &v14);
    v8 = v14;
  }

  else
  {
    v9 = 4294954514;
  }

  v10 = *(DerivedStorage + 24);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 0x40000000;
  v12[2] = __vdsink_GetPropertyAsync_block_invoke_0;
  v12[3] = &unk_27849D390;
  v13 = v9;
  v12[4] = a4;
  v12[5] = v8;
  dispatch_async(v10, v12);
  return v9;
}

uint64_t vdsink_Perform_0(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    vdsink_Perform_cold_4_0();
LABEL_13:
    v7 = 4294954516;
    goto LABEL_14;
  }

  if (!CFEqual(a2, *MEMORY[0x277CD6628]))
  {
    if (gLogCategory_APVirtualDisplaySink <= 50 && (gLogCategory_APVirtualDisplaySink != -1 || _LogCategory_Initialize()))
    {
      vdsink_Perform_cold_3_0();
    }

    goto LABEL_13;
  }

  v13 = 0;
  *&sampleTimingArray.duration.value = *MEMORY[0x277CC08F0];
  sampleTimingArray.duration.epoch = *(MEMORY[0x277CC08F0] + 16);
  sampleTimingArray.presentationTimeStamp = **&MEMORY[0x277CC0898];
  sampleTimingArray.decodeTimeStamp = sampleTimingArray.presentationTimeStamp;
  v7 = CMSampleBufferCreate(*MEMORY[0x277CBECE8], 0, 1u, 0, 0, 0, 0, 1, &sampleTimingArray, 0, 0, &v13);
  if (v7)
  {
    vdsink_Perform_cold_1_0();
    if (!a4)
    {
      return v7;
    }

    goto LABEL_15;
  }

  CMSetAttachment(v13, @"APClearScreen", *MEMORY[0x277CBED28], 0);
  CMBufferQueueEnqueue(*(DerivedStorage + 16), v13);
  if (gLogCategory_APVirtualDisplaySink <= 30 && (gLogCategory_APVirtualDisplaySink != -1 || _LogCategory_Initialize()))
  {
    vdsink_Perform_cold_2_0();
  }

  if (v13)
  {
    CFRelease(v13);
    if (!a4)
    {
      return v7;
    }

    goto LABEL_15;
  }

LABEL_14:
  if (a4)
  {
LABEL_15:
    v8 = *(DerivedStorage + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __vdsink_Perform_block_invoke_0;
    block[3] = &unk_27849D3B8;
    block[4] = a4;
    v11 = v7;
    dispatch_async(v8, block);
  }

  return v7;
}

uint64_t vdsink_SetDispatchQueue_0(uint64_t a1, NSObject *global_queue)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 24);
  if (v4)
  {
    dispatch_release(v4);
  }

  if (!global_queue)
  {
    global_queue = dispatch_get_global_queue(0, 0);
  }

  *(DerivedStorage + 24) = global_queue;
  dispatch_retain(global_queue);
  return 0;
}

uint64_t vdsink_SetEventHandler_0(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = _Block_copy(a2);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(DerivedStorage + 24);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v7[2] = __vdsink_SetEventHandler_block_invoke;
  v7[3] = &unk_27849D3E0;
  v7[4] = v4;
  v7[5] = DerivedStorage;
  dispatch_sync(v5, v7);
  return 0;
}

uint64_t APSenderSessionMessageSendTimeout()
{
  if (APSenderSessionMessageSendTimeout_once != -1)
  {
    APSenderSessionMessageSendTimeout_cold_1();
  }

  return APSenderSessionMessageSendTimeout_messageTimeout;
}

uint64_t __APSenderSessionMessageSendTimeout_block_invoke()
{
  result = APSSettingsGetInt64();
  v1 = result;
  if (result >= 1)
  {
    if (gLogCategory_APSenderSession <= 50)
    {
      if (gLogCategory_APSenderSession != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = __APSenderSessionMessageSendTimeout_block_invoke_cold_1();
      }
    }

    APSenderSessionMessageSendTimeout_messageTimeout = v1;
  }

  return result;
}

uint64_t APSenderSessionGetClassID()
{
  if (_MergedGlobals_12 != -1)
  {
    APSenderSessionGetClassID_cold_1();
  }

  return qword_280FB1AF8;
}

uint64_t session_registerBaseClass(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&session_registerBaseClass_sClassDesc, ClassID, 1, a1);
}

uint64_t APSenderSessionGetTypeID()
{
  if (_MergedGlobals_12 != -1)
  {
    APSenderSessionGetClassID_cold_1();
  }

  v1 = qword_280FB1AF8;

  return MEMORY[0x282111A98](v1);
}

uint64_t APSenderSessionUtilityFetchInitialVolume(const void *a1, int *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  dataPointerOut = 0;
  cf = 0;
  totalLengthOut = 0;
  theBuffer = 0;
  v13 = 0;
  lengthAtOffsetOut = 0;
  v12 = 0;
  v21 = 0u;
  v22 = 0u;
  *v19 = 0u;
  v20 = 0u;
  v11 = 0;
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != FigTransportStreamGetTypeID()))
  {
    v9 = 4294895475;
    APSenderSessionUtilityFetchInitialVolume_cold_8();
    goto LABEL_19;
  }

  if (!a2)
  {
    v9 = 4294895475;
    APSenderSessionUtilityFetchInitialVolume_cold_7();
    goto LABEL_19;
  }

  BlockBufferWithCFString = FigCreateBlockBufferWithCFString();
  if (BlockBufferWithCFString)
  {
    v9 = BlockBufferWithCFString;
    APSenderSessionUtilityFetchInitialVolume_cold_1();
    goto LABEL_19;
  }

  v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v6)
  {
    v9 = 4294954514;
LABEL_18:
    APSLogErrorAt();
    goto LABEL_19;
  }

  v7 = v6(a1, 1735815020, cf, &theBuffer);
  if (v7)
  {
    v9 = v7;
    goto LABEL_18;
  }

  DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
  if (DataPointer)
  {
    v9 = DataPointer;
    APSenderSessionUtilityFetchInitialVolume_cold_2();
  }

  else
  {
    if (totalLengthOut == lengthAtOffsetOut)
    {
      v9 = HTTPGetHeaderField();
      __memcpy_chk();
      v19[v12] = 0;
      if (sscanf(v19, "%f", &v11) != 1)
      {
        v11 = -1046478848;
        if (gLogCategory_APSenderSession > 50)
        {
LABEL_16:
          *a2 = v11;
          goto LABEL_19;
        }

        if (gLogCategory_APSenderSession != -1 || _LogCategory_Initialize())
        {
          APSenderSessionUtilityFetchInitialVolume_cold_4();
        }
      }

      if (gLogCategory_APSenderSession <= 10 && (gLogCategory_APSenderSession != -1 || _LogCategory_Initialize()))
      {
        APSenderSessionUtilityFetchInitialVolume_cold_5();
      }

      goto LABEL_16;
    }

    v9 = 4294895475;
    APSenderSessionUtilityFetchInitialVolume_cold_3();
  }

LABEL_19:
  if (cf)
  {
    CFRelease(cf);
  }

  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return v9;
}

__CFString *APSenderSessionUtilityGetAudioModeForEndpointStream()
{
  if (FigCFEqual())
  {
    return @"moviePlayback";
  }

  if (FigCFEqual())
  {
    return @"spokenAudio";
  }

  return @"default";
}

uint64_t APSenderSessionUtilityCopyGetInfoResponseWithUGLAddressesUpdatedFromSenderSession(uint64_t a1, const void *a2, int *a3)
{
  cf = 0;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v6(a1, @"TransportControlStream", *MEMORY[0x277CBECE8], &cf);
    v7 = cf;
  }

  else
  {
    v7 = 0;
  }

  InfoResponseWithUGLAddressesUpdatedFromTransportStream = APSenderSessionUtilityCopyGetInfoResponseWithUGLAddressesUpdatedFromTransportStream(v7, a2, a3);
  if (cf)
  {
    CFRelease(cf);
  }

  return InfoResponseWithUGLAddressesUpdatedFromTransportStream;
}

uint64_t APSenderSessionUtilityCopyGetInfoResponseWithUGLAddressesUpdatedFromTransportStream(uint64_t a1, const void *a2, int *a3)
{
  Value = FigCFDictionaryGetValue();
  if (!Value)
  {
    v6 = 0;
    goto LABEL_31;
  }

  if (FigCFDictionaryGetValue() && *a3 <= 50 && (*a3 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFArrayGetTypeID();
  CFDictionaryGetTypedValue();
  if (*a3 <= 50 && (*a3 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6 = APTransportStreamCopyConvertedLinkLocalIPv6Addresses();
  if (!v6)
  {
    Value = 0;
    goto LABEL_31;
  }

  if (*a3 <= 50 && (*a3 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  Value = FigCFDictionaryCreateMutableCopy();
  FigCFDictionarySetValue();
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
LABEL_31:
    if (a2)
    {
      v8 = CFRetain(a2);
    }

    else
    {
      v8 = 0;
    }

    if (!v6)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v8 = MutableCopy;
  FigCFDictionarySetValue();
  if (*a3 <= 50)
  {
    if (*a3 != -1 || _LogCategory_Initialize())
    {
      LogPrintF();
    }

    if (*a3 <= 50 && (*a3 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

LABEL_25:
  CFRelease(v6);
LABEL_26:
  if (Value)
  {
    CFRelease(Value);
  }

  return v8;
}

uint64_t bufferedAudioEngine_updateStartupConfiguration(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMBaseObjectGetDerivedStorage();
  v18 = **&MEMORY[0x277CC0898];
  v17 = v18;
  APSIsSuntoryEnabled();
  if (*(v5 + 648) != 1 || !*(*(v5 + 640) + 32))
  {
    if (*(v5 + 437))
    {
      v6 = CMBaseObjectGetDerivedStorage();
      v7 = 0;
      v8 = &kWHAPrimingConfig;
      do
      {
        v9 = *v8;
        v8 += 3;
        if (*(v6 + 648) <= v9)
        {
          break;
        }

        ++v7;
      }

      while (v7 != 4);
    }

    else
    {
      APSSettingsIsFeatureEnabled();
    }
  }

  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  CMTimeMake(&v18, CFPreferenceNumberWithDefault, 1000);
  v11 = FigGetCFPreferenceNumberWithDefault();
  CMTimeMake(&v17, v11, 1000);
  time1 = v18;
  time2 = *(v5 + 160);
  if (CMTimeCompare(&time1, &time2) && gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    if (a1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    time1 = *(v5 + 160);
    CMTimeGetSeconds(&time1);
    time1 = v18;
    CMTimeGetSeconds(&time1);
    LogPrintF();
  }

  time1 = v17;
  time2 = *(v5 + 188);
  if (CMTimeCompare(&time1, &time2) && gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    if (a1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    time1 = *(v5 + 188);
    CMTimeGetSeconds(&time1);
    time1 = v17;
    CMTimeGetSeconds(&time1);
    LogPrintF();
  }

  *(v5 + 160) = v18;
  *(v5 + 188) = v17;
  CMTimeMake(&time2, 2500, 1000);
  lhs = *(v5 + 188);
  CMTimeAdd(&time1, &lhs, &time2);
  *(v5 + 212) = time1;
  FigGetCFPreferenceNumberWithDefault();
  *(v5 + 240) = MillisecondsToUpTicks();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_updateStartupConfiguration_cold_1();
  }

  FigGetCFPreferenceNumberWithDefault();
  result = MillisecondsToUpTicks();
  *(v5 + 248) = result;
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || (result = _LogCategory_Initialize(), result)))
  {
    result = bufferedAudioEngine_updateStartupConfiguration_cold_2();
    if (!a2)
    {
      return result;
    }
  }

  else if (!a2)
  {
    return result;
  }

  if (*(DerivedStorage + 884) == 5)
  {
    result = CMBaseObjectGetDerivedStorage();
    for (i = *(result + 640); i; i = *i)
    {
      *(i + 37) = 0;
    }
  }

  *(DerivedStorage + 880) = 0;
  return result;
}

void bufferedAudioEngine_Finalize(CMTime *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListeners();
  v3 = *(DerivedStorage + 640);
  if (v3)
  {
    v4 = *MEMORY[0x277CE9FB8];
    v5 = *MEMORY[0x277CBED10];
    do
    {
      v6 = *v3;
      v7 = v3[2];
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v8)
      {
        v8(v7, v4, v5);
      }

      v9 = v3[2];
      if (v9)
      {
        CFRelease(v9);
        v3[2] = 0;
      }

      v10 = v3[3];
      if (v10)
      {
        CFRelease(v10);
        v3[3] = 0;
      }

      v11 = v3[33];
      if (v11)
      {
        CFRelease(v11);
      }

      free(v3);
      --*(DerivedStorage + 648);
      v3 = v6;
    }

    while (v6);
  }

  *(DerivedStorage + 640) = 0;
  v12 = *(DerivedStorage + 368);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 368) = 0;
  }

  v13 = *(DerivedStorage + 464);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 464) = 0;
  }

  v14 = *(DerivedStorage + 472);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 472) = 0;
  }

  v15 = *(DerivedStorage + 448);
  if (v15)
  {
    dispatch_release(v15);
    *(DerivedStorage + 448) = 0;
  }

  v16 = *(DerivedStorage + 344);
  if (v16)
  {
    dispatch_release(v16);
    *(DerivedStorage + 344) = 0;
  }

  v17 = *(DerivedStorage + 352);
  if (v17)
  {
    dispatch_release(v17);
    *(DerivedStorage + 352) = 0;
  }

  bufferedAudioEngine_tearDownResumedStateAndStructuresInternal(a1, 0);
  v18 = *(DerivedStorage + 328);
  if (v18)
  {
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 88);
    if (v19)
    {
      v19(v18, a1);
    }
  }

  if (*(DerivedStorage + 488))
  {
    APSTimedInfoManagerSuspend();
    v20 = *(DerivedStorage + 488);
    if (v20)
    {
      CFRelease(v20);
      *(DerivedStorage + 488) = 0;
    }
  }

  v21 = *(DerivedStorage + 1032);
  if (v21)
  {
    CFRelease(v21);
    *(DerivedStorage + 1032) = 0;
  }

  v22 = *(DerivedStorage + 1040);
  if (v22)
  {
    CFRelease(v22);
    *(DerivedStorage + 1040) = 0;
  }

  v23 = *(DerivedStorage + 592);
  if (v23)
  {
    CFRelease(v23);
    *(DerivedStorage + 592) = 0;
  }

  v24 = *(DerivedStorage + 480);
  if (v24)
  {
    CFRelease(v24);
    *(DerivedStorage + 480) = 0;
  }

  v25 = *(DerivedStorage + 496);
  if (v25)
  {
    CFRelease(v25);
    *(DerivedStorage + 496) = 0;
  }

  v26 = *(DerivedStorage + 616);
  if (v26)
  {
    CFRelease(v26);
    *(DerivedStorage + 616) = 0;
  }

  v27 = *(DerivedStorage + 624);
  if (v27)
  {
    CFRelease(v27);
    *(DerivedStorage + 624) = 0;
  }

  v28 = *(DerivedStorage + 872);
  if (v28)
  {
    CFRelease(v28);
    *(DerivedStorage + 872) = 0;
  }

  v29 = *(DerivedStorage + 600);
  if (v29)
  {
    CFRelease(v29);
    *(DerivedStorage + 600) = 0;
  }

  v30 = *(DerivedStorage + 608);
  if (v30)
  {
    CFRelease(v30);
    *(DerivedStorage + 608) = 0;
  }

  v31 = *(DerivedStorage + 360);
  if (v31)
  {
    CFRelease(v31);
    *(DerivedStorage + 360) = 0;
  }

  v32 = *(DerivedStorage + 376);
  if (v32)
  {
    CFRelease(v32);
    *(DerivedStorage + 376) = 0;
  }

  v33 = *(DerivedStorage + 384);
  if (v33)
  {
    CFRelease(v33);
    *(DerivedStorage + 384) = 0;
  }

  v34 = *(DerivedStorage + 1104);
  if (v34)
  {
    CFRelease(v34);
    *(DerivedStorage + 1104) = 0;
  }

  v35 = *(DerivedStorage + 1248);
  if (v35)
  {
    CFRelease(v35);
    *(DerivedStorage + 1248) = 0;
  }

  v36 = *(DerivedStorage + 552);
  if (v36)
  {
    CFRelease(v36);
    *(DerivedStorage + 552) = 0;
  }

  v37 = *(DerivedStorage + 560);
  if (v37)
  {
    CFRelease(v37);
    *(DerivedStorage + 560) = 0;
  }

  v38 = *(DerivedStorage + 568);
  if (v38)
  {
    CFRelease(v38);
    *(DerivedStorage + 568) = 0;
  }

  v39 = *(DerivedStorage + 1200);
  if (v39)
  {
    CFRelease(v39);
    *(DerivedStorage + 1200) = 0;
  }

  v40 = *(DerivedStorage + 1192);
  if (v40)
  {
    CFRelease(v40);
    *(DerivedStorage + 1192) = 0;
  }

  bufferedAudioEngine_releaseCryptors(a1, 0);
  v41 = *(DerivedStorage + 1216);
  if (v41)
  {
    CFRelease(v41);
    *(DerivedStorage + 1216) = 0;
  }

  bufferedAudioEngine_releaseMagicCookies(a1, 0);
  v42 = *(DerivedStorage + 1056);
  if (v42)
  {
    CFRelease(v42);
    *(DerivedStorage + 1056) = 0;
  }

  v43 = *(DerivedStorage + 632);
  if (v43)
  {
    CFRelease(v43);
    *(DerivedStorage + 632) = 0;
  }

  v44 = *(DerivedStorage + 1024);
  if (v44)
  {
    CFRelease(v44);
    *(DerivedStorage + 1024) = 0;
  }

  v45 = *(DerivedStorage + 968);
  if (v45)
  {
    CFRelease(v45);
    *(DerivedStorage + 968) = 0;
  }

  v46 = *(DerivedStorage + 328);
  if (v46)
  {
    CFRelease(v46);
    *(DerivedStorage + 328) = 0;
  }

  v47 = *(DerivedStorage + 8);
  if (v47)
  {
    CFRelease(v47);
    *(DerivedStorage + 8) = 0;
  }

  v48 = *(DerivedStorage + 424);
  if (v48)
  {
    CFRelease(v48);
    *(DerivedStorage + 424) = 0;
  }

  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_Finalize_cold_1(a1);
  }
}

__CFString *bufferedAudioEngine_CopyDebugDescription()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APAudioEngineBuffered>");
  return Mutable;
}

uint64_t bufferedAudioEngine_invalidateInternal(uint64_t *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBuffered <= 40 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_invalidateInternal_cold_1(a1);
  }

  while (1)
  {
    v3 = *(DerivedStorage + 640);
    if (!v3)
    {
      break;
    }

    bufferedAudioEngine_removeHose(*a1, *(v3 + 16));
  }

  v4 = *a1;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v5)
  {
    v5(v4, 0, bufferedAudioEngine_invalidateInternalCompletion, 0);
  }

  else
  {
    *CMBaseObjectGetDerivedStorage() = 1;
  }

  return 0;
}

uint64_t bufferedAudioEngine_removeHose(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 640))
  {
    HoseDecriptorFromHose = bufferedAudioEngine_getHoseDecriptorFromHose();
    if (!HoseDecriptorFromHose)
    {
      bufferedAudioEngine_removeHose_cold_2(a1, a2, &cf);
      v29 = cf;
      goto LABEL_51;
    }

    v6 = HoseDecriptorFromHose;
    v7 = CFStringCopyUTF8CString();
    if (v7)
    {
      v29 = v7;
      bufferedAudioEngine_removeHose_cold_1();
      goto LABEL_51;
    }

    v8 = (DerivedStorage + 640);
    v10 = *v6;
    v9 = v6[1];
    if (v9)
    {
      v8 = v6[1];
    }

    *v8 = v10;
    if (v10)
    {
      *(v10 + 8) = v9;
    }

    v11 = v6[2];
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v12)
    {
      v12(v11, *MEMORY[0x277CE9FB8], *MEMORY[0x277CBED10]);
    }

    if (*(v6 + 32))
    {
      *(DerivedStorage + 1160) = 0;
    }

    v13 = v6[27];
    if (v13)
    {
      CFRelease(v13);
      v6[27] = 0;
    }

    v14 = v6[2];
    if (v14)
    {
      CFRelease(v14);
      v6[2] = 0;
    }

    v15 = v6[3];
    if (v15)
    {
      CFRelease(v15);
      v6[3] = 0;
    }

    v16 = v6[33];
    if (v16)
    {
      CFRelease(v16);
    }

    free(v6);
    --*(DerivedStorage + 648);
    if (gLogCategory_APAudioEngineBuffered <= 40 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      LogPrintF();
    }
  }

  bufferedAudioEngine_updateStartupConfiguration(a1, *(DerivedStorage + 648) == 0);
  v17 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  valuePtr = 0;
  if (!*v17)
  {
    v18 = v17;
    CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
    v20 = *(v18 + 80);
    if (v20)
    {
      v21 = *MEMORY[0x277CE9F58];
      do
      {
        v22 = v20[2];
        v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v23)
        {
          v24 = v23(v22, v21, 0, &cf);
          v25 = cf;
          if (v24)
          {
            v26 = 1;
          }

          else
          {
            v26 = cf == 0;
          }

          if (v26)
          {
            goto LABEL_39;
          }

          v27 = CFGetTypeID(cf);
          if (v27 == CFNumberGetTypeID())
          {
            CFNumberGetValue(cf, kCFNumberSInt32Type, &valuePtr);
            if (CFPreferenceNumberWithDefault <= valuePtr)
            {
              CFPreferenceNumberWithDefault = valuePtr;
            }
          }
        }

        v25 = cf;
LABEL_39:
        if (v25)
        {
          CFRelease(v25);
          cf = 0;
        }

        valuePtr = 0;
        v20 = *v20;
      }

      while (v20);
    }

    if (CFPreferenceNumberWithDefault >= 0x753000)
    {
      v28 = 7680000;
    }

    else
    {
      v28 = CFPreferenceNumberWithDefault;
    }

    *(v18 + 176) = v28;
    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      bufferedAudioEngine_removeHose_cold_3();
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  v29 = 0;
LABEL_51:
  if (!*(DerivedStorage + 648))
  {
    *(DerivedStorage + 652) = 0;
  }

  return v29;
}

_BYTE *bufferedAudioEngine_invalidateInternalCompletion()
{
  result = CMBaseObjectGetDerivedStorage();
  *result = 1;
  return result;
}

void *bufferedAudioEngine_getHoseDecriptorFromHose()
{
  v0 = (CMBaseObjectGetDerivedStorage() + 640);
  do
  {
    v0 = *v0;
  }

  while (v0 && !FigCFEqual());
  return v0;
}

void bufferedAudioEngine_tearDownResumedStateAndStructuresInternal(CMTime *a1, int a2)
{
  v78 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMBaseObjectGetDerivedStorage();
  if (*(v5 + 1784))
  {
    APSPriorityDispatchSourceCancel();
    CFRelease(*(v5 + 1784));
    *(v5 + 1784) = 0;
  }

  v6 = CMBaseObjectGetDerivedStorage();
  if (*(v6 + 536))
  {
    APSPriorityDispatchSourceCancel();
    CFRelease(*(v6 + 536));
    *(v6 + 536) = 0;
  }

  *(v6 + 544) = 0;
  v7 = *(DerivedStorage + 1192);
  if (v7)
  {
    CMBufferQueueReset(v7);
    *(DerivedStorage + 1208) = 0;
  }

  v8 = *(DerivedStorage + 584);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 584) = 0;
  }

  v9 = *(DerivedStorage + 496);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 496) = 0;
  }

  bufferedAudioEngine_destroyProtocolDriverTickTimer();
  v10 = MEMORY[0x277CC0898];
  v69 = *MEMORY[0x277CC0898];
  *(DerivedStorage + 504) = *MEMORY[0x277CC0898];
  v11 = *(v10 + 16);
  *(DerivedStorage + 520) = v11;
  APMessageRingBufferedFlush(*(DerivedStorage + 616), 0, 0);
  v12 = *(DerivedStorage + 616);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 616) = 0;
  }

  v13 = *(DerivedStorage + 624);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 624) = 0;
  }

  v14 = MEMORY[0x277CC08F0];
  v15 = *MEMORY[0x277CC08F0];
  *(DerivedStorage + 756) = *MEMORY[0x277CC08F0];
  v16 = *(v14 + 16);
  *(DerivedStorage + 772) = v16;
  *(DerivedStorage + 780) = v15;
  *(DerivedStorage + 796) = v16;
  *(DerivedStorage + 804) = v69;
  *(DerivedStorage + 820) = v11;
  *(DerivedStorage + 708) = v69;
  *(DerivedStorage + 724) = v11;
  *(DerivedStorage + 748) = v11;
  *(DerivedStorage + 732) = v69;
  *(DerivedStorage + 1272) = v11;
  *(DerivedStorage + 1256) = v69;
  *(DerivedStorage + 1132) = v11;
  *(DerivedStorage + 1116) = v69;
  bufferedAudioEngine_setTranscodeIsRestingAndUpdateConsumer(a1, 0);
  v17 = *(DerivedStorage + 1000);
  if (v17)
  {
    CFRelease(v17);
    *(DerivedStorage + 1000) = 0;
  }

  v18 = *(DerivedStorage + 1008);
  if (v18)
  {
    CFRelease(v18);
    *(DerivedStorage + 1008) = 0;
  }

  APSTimedInfoManagerSuspend();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  v19 = *(DerivedStorage + 488);
  if (v19)
  {
    CFRelease(v19);
    *(DerivedStorage + 488) = 0;
  }

  v20 = *(DerivedStorage + 1032);
  if (v20)
  {
    CFRelease(v20);
    *(DerivedStorage + 1032) = 0;
  }

  v21 = *(DerivedStorage + 1040);
  if (v21)
  {
    CFRelease(v21);
    *(DerivedStorage + 1040) = 0;
  }

  v22 = *(DerivedStorage + 872);
  if (v22)
  {
    CFRelease(v22);
    *(DerivedStorage + 872) = 0;
  }

  *(DerivedStorage + 888) = 0;
  CFArrayRemoveAllValues(*(DerivedStorage + 1248));
  *(DerivedStorage + 880) = 0;
  *(DerivedStorage + 652) = 0;
  *(DerivedStorage + 1080) = v69;
  *(DerivedStorage + 1096) = v11;
  CFArrayRemoveAllValues(*(DerivedStorage + 1104));
  *(DerivedStorage + 840) = 0;
  *(DerivedStorage + 896) = 0xBFF0000000000000;
  *(DerivedStorage + 882) = 0;
  *(DerivedStorage + 936) = 0;
  *(DerivedStorage + 1164) = v69;
  *(DerivedStorage + 1180) = v11;
  *(DerivedStorage + 576) = 0;
  bufferedAudioEngine_releaseCryptors(a1, 0);
  *(DerivedStorage + 1224) = 0;
  bufferedAudioEngine_releaseMagicCookies(a1, 0);
  v23 = *(DerivedStorage + 1048);
  if (v23)
  {
    CFRelease(v23);
    *(DerivedStorage + 1048) = 0;
  }

  bufferedAudioEngine_updatePlaybackState(a1, 1);
  if (*(DerivedStorage + 952))
  {
    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      bufferedAudioEngine_tearDownResumedStateAndStructuresInternal_cold_1();
    }

    bufferedAudioEngine_callSetRateAndAnchorTimeClientCompletionCallback(a1, 4294949716, MEMORY[0x277CC08F0], MEMORY[0x277CC0898], 0);
    *(DerivedStorage + 952) = 0;
    *(DerivedStorage + 960) = 0;
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, a1, @"com.apple.mobileipod-prefsChanged", 0);
  if (a2)
  {
    v25 = CMBaseObjectGetDerivedStorage();
    *&v72.value = v69;
    v72.epoch = v11;
    if (*(v25 + 1280))
    {
      v26 = v25;
      HostTimeClock = CMClockGetHostTimeClock();
      CMClockGetTime(&v72, HostTimeClock);
      lhs = v72;
      rhs = *(v26 + 1288);
      CMTimeSubtract(&time, &lhs, &rhs);
      lhs.value = time.value;
      lhs.timescale = time.timescale;
      if (time.flags)
      {
        time.value = lhs.value;
        time.timescale = lhs.timescale;
        Seconds = CMTimeGetSeconds(&time);
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (!Mutable)
        {
          goto LABEL_82;
        }

        v29 = Mutable;
        if (Seconds != 0.0)
        {
          time = *(v26 + 1344);
          CMTimeGetSeconds(&time);
        }
      }

      else
      {
        v28 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (!v28)
        {
          goto LABEL_82;
        }

        v29 = v28;
      }

      FigCFDictionarySetInt64();
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt64();
      time = *(v26 + 1384);
      CMTimeGetSeconds(&time);
      FigCFDictionarySetInt64();
      time = *(v26 + 1408);
      CMTimeGetSeconds(&time);
      FigCFDictionarySetInt64();
      CFDictionarySetValue(v29, @"sessionType", @"AudioBuffered");
      v32 = CMBaseObjectGetDerivedStorage();
      time.value = 0;
      LODWORD(rhs.value) = 0;
      if (*(v32 + 1280))
      {
        bufferedAudioEngine_tearDownResumedStateAndStructuresInternal_cold_2(v32);
      }

      FigCFDictionarySetValue();
      v33 = *MEMORY[0x277CBECE8];
      v34 = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      if (v34)
      {
        v35 = v34;
        CFDictionaryApplyFunction(*(v26 + 1432), bufferedAudioEngine_audioFormatDurationDictToArrayForRTC, v34);
        FigCFDictionarySetValue();
        v36 = CFArrayCreateMutable(v33, 0, MEMORY[0x277CBF128]);
        if (v36)
        {
          CFDictionaryApplyFunction(*(v26 + 1440), bufferedAudioEngine_audioFormatDurationDictToArrayForRTC, v36);
          FigCFDictionarySetValue();
          v37 = CFArrayCreateMutable(v33, 0, MEMORY[0x277CBF128]);
          if (v37)
          {
            CFDictionaryApplyFunction(*(v26 + 1448), bufferedAudioEngine_audioFormatDurationDictToArrayForRTC, v37);
            FigCFDictionarySetValue();
            FigCFDictionarySetInt64();
            FigCFDictionarySetInt64();
            FigCFDictionarySetValue();
            v38 = CFArrayCreateMutable(v33, 0, MEMORY[0x277CBF128]);
            if (v38 && (v39 = CFArrayCreateMutable(v33, 0, MEMORY[0x277CBF128])) != 0)
            {
              v67 = DerivedStorage;
              v68 = v39;
              v63 = v37;
              v64 = v36;
              v65 = v29;
              v66 = a1;
              v40 = CMBaseObjectGetDerivedStorage();
              time.value = 0;
              rhs.value = 0;
              v75 = 0;
              v76 = 0;
              v73 = 0;
              v74 = 0;
              if (*(v40 + 1280))
              {
                v41 = v40;
                Count = CFArrayGetCount(*(v40 + 1496));
                if (Count >= 1)
                {
                  v43 = Count;
                  for (i = 0; v43 != i; ++i)
                  {
                    CFArrayGetValueAtIndex(*(v41 + 1496), i);
                    if (FigCFDictionaryGetInt64IfPresent() && FigCFDictionaryGetInt64IfPresent() && FigCFDictionaryGetInt64IfPresent())
                    {
                      v45 = v33;
                      v46 = CFDictionaryCreateMutable(v33, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                      if (!v46)
                      {
                        bufferedAudioEngine_tearDownResumedStateAndStructuresInternal_cold_3();
                        break;
                      }

                      v47 = v46;
                      CFDictionaryGetInt64();
                      FigCFDictionarySetInt64();
                      UpTicksToMilliseconds();
                      FigCFDictionarySetInt64();
                      UpTicksToMilliseconds();
                      FigCFDictionarySetInt64();
                      FigCFDictionaryGetValue();
                      FigCFDictionarySetValue();
                      if (FigCFDictionaryGetInt64IfPresent())
                      {
                        FigCFDictionarySetInt64();
                      }

                      if (FigCFDictionaryGetInt64IfPresent() && FigCFDictionaryGetInt64IfPresent())
                      {
                        UpTicksToMilliseconds();
                        FigCFDictionarySetInt64();
                        UpTicksToMilliseconds();
                        FigCFDictionarySetInt64();
                        v48 = v38;
                      }

                      else
                      {
                        v48 = v68;
                      }

                      UpTicksToMilliseconds();
                      FigCFDictionarySetInt64();
                      CFArrayAppendValue(v48, v47);
                      CFRelease(v47);
                      v33 = v45;
                    }
                  }
                }
              }

              v29 = v65;
              FigCFDictionarySetValue();
              v49 = v68;
              FigCFDictionarySetValue();
              if (*(v26 + 1504))
              {
                mach_absolute_time();
                *(v26 + 1512) += UpTicksToMilliseconds();
              }

              DerivedStorage = v67;
              v37 = v63;
              v36 = v64;
              FigCFDictionarySetInt64();
              FigCFDictionarySetInt32();
              bufferedAudioEngine_updateActiveAudioEngineCount(v66, 0);
              APSRTCReportingAgentSendEvent();
              if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
              {
                if (v66)
                {
                  CMBaseObjectGetDerivedStorage();
                }

                LogPrintF();
              }
            }

            else
            {
              v49 = 0;
            }
          }

          else
          {
            v49 = 0;
            v38 = 0;
          }
        }

        else
        {
          v49 = 0;
          v38 = 0;
          v37 = 0;
        }

        CFRelease(v29);
        CFRelease(v35);
        if (v36)
        {
          CFRelease(v36);
        }

        if (v37)
        {
          CFRelease(v37);
        }

        if (v38)
        {
          CFRelease(v38);
        }

        if (!v49)
        {
          goto LABEL_82;
        }
      }

      else
      {
        v49 = v29;
      }

      CFRelease(v49);
    }

LABEL_82:
    APSNetworkClockReportRTCMetrics();
  }

  v50 = CMBaseObjectGetDerivedStorage();
  v51 = v50[160];
  if (v51)
  {
    CFRelease(v51);
    v50[160] = 0;
  }

  v52 = v50[171];
  if (v52)
  {
    CFRelease(v52);
    v50[171] = 0;
  }

  v53 = v50[172];
  if (v53)
  {
    CFRelease(v53);
    v50[172] = 0;
  }

  v54 = v50[179];
  if (v54)
  {
    CFRelease(v54);
    v50[179] = 0;
  }

  v55 = v50[180];
  if (v55)
  {
    CFRelease(v55);
    v50[180] = 0;
  }

  v56 = v50[181];
  if (v56)
  {
    CFRelease(v56);
    v50[181] = 0;
  }

  v57 = v50[182];
  if (v57)
  {
    CFRelease(v57);
    v50[182] = 0;
  }

  v58 = v50[185];
  if (v58)
  {
    CFRelease(v58);
    v50[185] = 0;
  }

  v59 = v50[186];
  if (v59)
  {
    CFRelease(v59);
    v50[186] = 0;
  }

  v60 = v50[187];
  if (v60)
  {
    CFRelease(v60);
    v50[187] = 0;
  }

  v61 = v50[55];
  if (v61)
  {
    CFRelease(v61);
    v50[55] = 0;
  }

  v62 = *(DerivedStorage + 1072);
  if (v62)
  {
    CFRelease(v62);
    *(DerivedStorage + 1072) = 0;
  }

  *(DerivedStorage + 530) = 0;
}

uint64_t bufferedAudioEngine_endpointStreamActiveConfigurationDidBecomeInvalidNotification()
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_endpointStreamActiveConfigurationDidBecomeInvalidNotification_cold_1();
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return FigDispatchAsyncPostNotification();
}

void bufferedAudioEngine_destroyProtocolDriverTickTimer()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 1792))
  {
    APSPriorityDispatchSourceCancel();
    CFRelease(*(DerivedStorage + 1792));
    *(DerivedStorage + 1792) = 0;
  }
}

uint64_t bufferedAudioEngine_callSetRateAndAnchorTimeClientCompletionCallback(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  CMBaseObjectGetDerivedStorage();
  if (a5)
  {
    CFRetain(a5);
  }

  CFRetain(a1);
  return APSDispatchAsyncFHelper();
}

void bufferedAudioEngine_updateInternalBadgeInfoAndPostNotificationIfNecessary(uint64_t a1, const void *a2, int a3)
{
  keys[1] = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 640);
  FigCFDictionaryGetValue();
  if (FigCFEqual() || FigCFEqual())
  {
    if (!v6)
    {
LABEL_6:
      v7 = *MEMORY[0x277CBECE8];
      keys[0] = @"ContentType";
      values = *MEMORY[0x277CEA040];
      v8 = CFDictionaryCreate(v7, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
LABEL_9:
      a2 = v8;
      goto LABEL_10;
    }

    while (!APSGetFBOPropertyInt64())
    {
      v6 = *v6;
      if (!v6)
      {
        goto LABEL_6;
      }
    }
  }

  if (a2)
  {
    v8 = CFRetain(a2);
    goto LABEL_9;
  }

LABEL_10:
  if (a3 || !FigCFEqual())
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  v9 = *(DerivedStorage + 1040);
  *(DerivedStorage + 1040) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (a2)
  {
    CFRelease(a2);
  }
}

void __bufferedAudioEngine_handleTimedInfoManagerNotification_block_invoke(void *a1)
{
  if (*(a1[4] + 592))
  {
    Value = FigCFDictionaryGetValue();
    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v4)
    {
      v4(CMBaseObject, @"ActiveBadgingFormatInfo", Value);
    }
  }

  else
  {
    __bufferedAudioEngine_handleTimedInfoManagerNotification_block_invoke_cold_1();
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[6];
  if (v6)
  {

    CFRelease(v6);
  }
}

const char *bufferedAudioEngine_playbackStateGetCString(int a1)
{
  if ((a1 - 1) > 7)
  {
    return "Invalid";
  }

  else
  {
    return off_27849DAA8[a1 - 1];
  }
}

uint64_t bufferedAudioEngine_updateCriticalBufferingState(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v34 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *&v33.value = *MEMORY[0x277CC08F0];
  v3 = *(MEMORY[0x277CC08F0] + 16);
  v33.epoch = v3;
  v29 = *&v33.value;
  *&v32.value = *&v33.value;
  v32.epoch = v3;
  v4 = *(DerivedStorage + 884);
  v6 = v4 == 6 || v4 == 8;
  if (bufferedAudioEngine_updateCriticalBufferingState_sHoseShouldReportCriticalOnce != -1)
  {
    bufferedAudioEngine_updateCriticalBufferingState_cold_1();
  }

  bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(&v34, &v33);
  if (v34)
  {
    return bufferedAudioEngine_updateCriticalBufferingState_cold_2();
  }

  v7 = *(DerivedStorage + 640);
  if (v7)
  {
    v28 = 0;
    v27 = *MEMORY[0x277CE9FA8];
    v8 = *MEMORY[0x277CBED28];
    v9 = *MEMORY[0x277CBED10];
    do
    {
      if (*(v7 + 33))
      {
        bufferedAudioEngine_getLastDeliveredRemoteMediaTimeForHose(v7, &lhs);
      }

      else
      {
        bufferedAudioEngine_getLastSentRemoteMediaTimeForHose(v7, &lhs);
      }

      value = lhs.value;
      timescale = lhs.timescale;
      if (lhs.flags)
      {
        lhs.value = value;
        lhs.timescale = timescale;
        rhs = v33;
        CMTimeSubtract(&v32, &lhs, &rhs);
      }

      else
      {
        *&v32.value = v29;
        v32.epoch = v3;
      }

      lhs = v32;
      rhs = *(DerivedStorage + 188);
      v10 = CMTimeCompare(&lhs, &rhs);
      *(v7 + 120) = v32;
      v11 = v10 < 0 && v6;
      if (v11 && !*(v7 + 32))
      {
        if (APSSettingsIsFeatureEnabled() && *(DerivedStorage + 577))
        {
          *(v7 + 272) = 1;
          if (gLogCategory_APAudioEngineBuffered <= 30 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
          {
            if (a1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            LogPrintF();
          }

          *(v7 + 64) = 256;
        }

        v28 = 1;
      }

      if (bufferedAudioEngine_updateCriticalBufferingState_sHoseShouldReportCritical)
      {
        v12 = bufferedAudioEngine_updateCriticalBufferingState_sHoseShouldReportCritical > 1 && v11;
        if (*(DerivedStorage + 884) == 5)
        {
          v13 = 1;
        }

        else
        {
          v13 = v12;
        }

        v14 = *(v7 + 16);
        if (v13)
        {
          v15 = v8;
        }

        else
        {
          v15 = v9;
        }

        v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v16)
        {
          v16(v14, v27, v15);
        }

        if (gLogCategory_APAudioEngineBuffered <= 30 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
        {
          if (a1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          LogPrintF();
        }
      }

      v7 = *v7;
    }

    while (v7);
  }

  else
  {
    v28 = 0;
  }

  v17 = v28;
  *(DerivedStorage + 652) = v28;
  if (!APSSettingsIsFeatureEnabled())
  {
    goto LABEL_80;
  }

  if (!*(DerivedStorage + 577))
  {
    goto LABEL_80;
  }

  v18 = *(DerivedStorage + 640);
  if (!v18)
  {
    goto LABEL_80;
  }

  v19 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
  v20 = &gLogCategory_APAudioEngineBuffered;
  v21 = "";
  v22 = 1;
  do
  {
    while (!v17)
    {
      lhs = *(v18 + 5);
      rhs = *(DerivedStorage + 188);
      if (CMTimeCompare(&lhs, &rhs) < 1 || !*(v18 + 272))
      {
        goto LABEL_70;
      }

      v22 = 0;
      *(v18 + 272) = 0;
      v18 = *v18;
      if (!v18)
      {
        goto LABEL_79;
      }
    }

    if (!*(v18 + 32) && !*(v18 + 64))
    {
      lhs = *(v18 + 5);
      rhs = *(DerivedStorage + 212);
      if (CMTimeCompare(&lhs, &rhs) >= 1)
      {
        *(v18 + 64) = 1;
        v23 = v19[594];
        if (v23 <= 50 && (v23 != -1 || _LogCategory_Initialize()))
        {
          if (a1)
          {
            v24 = v21;
            v25 = v20;
            CMBaseObjectGetDerivedStorage();
          }

          else
          {
            v25 = v20;
            v24 = v21;
          }

          lhs = *(v18 + 5);
          CMTimeGetSeconds(&lhs);
          v20 = v25;
          LogPrintF();
          v17 = v28;
          v21 = v24;
          v19 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
        }
      }
    }

LABEL_70:
    v18 = *v18;
  }

  while (v18);
  if (v22)
  {
    goto LABEL_80;
  }

LABEL_79:
  bufferedAudioEngine_wakeUpHoses();
LABEL_80:
  result = *(DerivedStorage + 1072);
  if (result)
  {
    result = APSWirelessCoexManagerNotifyCriticalBuffering();
    v34 = result;
    if (result)
    {
      return bufferedAudioEngine_updateCriticalBufferingState_cold_3(result, a1);
    }
  }

  return result;
}

uint64_t bufferedAudioEngine_getCurrentRemoteMediaTimeInternal@<X0>(_DWORD *a1@<X1>, CMTime *a2@<X8>)
{
  v4 = MEMORY[0x277CC0898];
  *&a2->value = *MEMORY[0x277CC0898];
  a2->epoch = *(v4 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 884) == 8)
  {
    v7 = *(DerivedStorage + 872);
    if (v7)
    {
      result = CMTimebaseGetTime(a2, v7);
      if ((a2->flags & 0x1D) != 1)
      {
        result = bufferedAudioEngine_getCurrentRemoteMediaTimeInternal_cold_2(&v13);
        v8 = v13;
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    result = bufferedAudioEngine_getCurrentRemoteMediaTimeInternal_cold_3(&v14);
    v8 = v14;
  }

  else
  {
    v9 = 804;
    if ((*(DerivedStorage + 816) & 1) == 0)
    {
      v9 = 780;
    }

    v10 = DerivedStorage + v9;
    v11 = *(v10 + 16);
    *&a2->value = *v10;
    a2->epoch = v11;
    if ((a2->flags & 0x1D) == 1)
    {
LABEL_8:
      v8 = 0;
      goto LABEL_9;
    }

    result = bufferedAudioEngine_getCurrentRemoteMediaTimeInternal_cold_1(&v12);
    v8 = v12;
  }

LABEL_9:
  if (a1)
  {
    *a1 = v8;
  }

  return result;
}

uint64_t __bufferedAudioEngine_updateDataProcessingTargetQueueInternal_block_invoke()
{
  _MergedGlobals = FigGetCFPreferenceNumberWithDefault();
  result = FigGetCFPreferenceNumberWithDefault();
  dword_280FB1468 = result;
  return result;
}

uint64_t __bufferedAudioEngine_updateCriticalBufferingState_block_invoke()
{
  result = APSSettingsGetIntWithDefault();
  bufferedAudioEngine_updateCriticalBufferingState_sHoseShouldReportCritical = result;
  return result;
}

__n128 bufferedAudioEngine_getLastDeliveredRemoteMediaTimeForHose@<Q0>(uint64_t a1@<X1>, __n128 *a2@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v22 = **&MEMORY[0x277CC0898];
  v23 = 0;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  memset(&timescale, 0, sizeof(timescale));
  bufferedAudioEngine_getLastSentRemoteMediaTimeForHose(a1, &timescale);
  if (!*(a1 + 33))
  {
    goto LABEL_32;
  }

  v5 = *(DerivedStorage + 616);
  if (!v5 || !APMessageRingBufferedGetUsedCount(v5) || (timescale.flags & 1) == 0)
  {
    goto LABEL_32;
  }

  if (!*(DerivedStorage + 577))
  {
    v10 = *(a1 + 16);
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v11 || v11(v10, *MEMORY[0x277CE9FC0], *MEMORY[0x277CBECE8], &v23))
    {
      bufferedAudioEngine_getLastDeliveredRemoteMediaTimeForHose_cold_5();
      goto LABEL_32;
    }

    if (!v23)
    {
      goto LABEL_34;
    }

    if (*(DerivedStorage + 576))
    {
      if (APSAPAPBBufDecodeHeader())
      {
        bufferedAudioEngine_getLastDeliveredRemoteMediaTimeForHose_cold_2();
        goto LABEL_32;
      }
    }

    else
    {
      if (APSTransportMessageGetBufferedAudioDataTimestamp())
      {
        bufferedAudioEngine_getLastDeliveredRemoteMediaTimeForHose_cold_3();
        goto LABEL_32;
      }

      if (APSTransportMessageGetBufferedAudioDataExtendedSequenceNumber())
      {
        bufferedAudioEngine_getLastDeliveredRemoteMediaTimeForHose_cold_4();
        goto LABEL_32;
      }

      CMTimeMake(&v22, timescale.value + HIDWORD(v21) - LODWORD(timescale.value), timescale.timescale);
    }

    APMessageRingBufferedGetFirstValidReadIndex(*(DerivedStorage + 616), &v20);
    if (((v20 - v21) & 0x800000) != 0 || ((v20 ^ v21) & 0xFFFFFF) == 0)
    {
      APMessageRingBufferedGetLastValidReadIndexAndTimestamp(*(DerivedStorage + 616), &v19, 0);
      if (((v19 - v21) & 0x800000) == 0 || ((v19 ^ v21) & 0xFFFFFF) == 0)
      {
        v12 = *(a1 + 36);
        if (((v12 - v21) & 0x800000) == 0 || ((v12 ^ v21) & 0xFFFFFF) == 0)
        {
          time1 = v22;
          v16 = timescale;
          v13 = CMTimeCompare(&time1, &v16);
          if (v23)
          {
            CFRelease(v23);
          }

          if (v13 <= 0)
          {
            goto LABEL_29;
          }

LABEL_34:
          v14 = MEMORY[0x277CC0898];
          goto LABEL_35;
        }
      }
    }

LABEL_32:
    if (v23)
    {
      CFRelease(v23);
    }

    goto LABEL_34;
  }

  CMBaseObjectGetDerivedStorage();
  v6 = *FigCFDictionaryGetValue();
  v7 = *(a1 + 24);
  v8 = *(CMBaseObjectGetVTable() + 16);
  if (!v8 || (v9 = *(v8 + 104)) == 0 || v9(v6, v7, &v22))
  {
    bufferedAudioEngine_getLastDeliveredRemoteMediaTimeForHose_cold_1();
    goto LABEL_32;
  }

  time1 = v22;
  v16 = timescale;
  if (CMTimeCompare(&time1, &v16) > 0)
  {
    goto LABEL_34;
  }

LABEL_29:
  v14 = &v22;
LABEL_35:
  result = *v14;
  *a2 = *v14;
  a2[1].n128_u64[0] = v14[1].n128_u64[0];
  return result;
}

__n128 bufferedAudioEngine_getLastSentRemoteMediaTimeForHose@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = MEMORY[0x277CC0898];
  *(a2 + 16) = *(MEMORY[0x277CC0898] + 16);
  *a2 = *v5;
  if (*(DerivedStorage + 577))
  {
    v6 = *(a1 + 24);
    APSAudioProtocolDriverHoseDataBaseProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable)
    {
      v9 = *(ProtocolVTable + 16);
      if (v9)
      {
        v10 = *(v9 + 16);
        if (v10)
        {

          v10(v6, a2);
        }
      }
    }
  }

  else
  {
    result = *(a1 + 40);
    *a2 = result;
    *(a2 + 16) = *(a1 + 56);
  }

  return result;
}

void *bufferedAudioEngine_wakeUpHoses()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  result = FigCFDictionaryGetValue();
  v2 = result;
  if (result)
  {
    v3 = *result;
    VTable = CMBaseObjectGetVTable();
    v6 = *(VTable + 16);
    result = (VTable + 16);
    v5 = v6;
    if (v6)
    {
      v7 = *(v5 + 64);
      if (v7)
      {
        result = v7(v3);
      }
    }
  }

  for (i = *(DerivedStorage + 640); i; i = *i)
  {
    if (!v2)
    {
      *(i + 64) = 0;
      i[11] = 0;
    }

    if (*(DerivedStorage + 884) != 5)
    {
      result = mach_absolute_time();
      i[10] = result;
    }
  }

  return result;
}

uint64_t bufferedAudioEngine_getActiveAudioEngineSet(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __bufferedAudioEngine_getActiveAudioEngineSet_block_invoke;
  block[3] = &__block_descriptor_tmp_195;
  block[4] = a1;
  if (bufferedAudioEngine_getActiveAudioEngineSet_sSetOnce != -1)
  {
    dispatch_once(&bufferedAudioEngine_getActiveAudioEngineSet_sSetOnce, block);
  }

  v3 = &bufferedAudioEngine_getActiveAudioEngineSet_sSetSidePlay;
  if (a2 != 1)
  {
    v3 = &bufferedAudioEngine_getActiveAudioEngineSet_sSetMedia;
  }

  return *v3;
}

uint64_t __bufferedAudioEngine_getActiveAudioEngineSet_block_invoke(uint64_t a1)
{
  if (APSThreadSafeSetCreate())
  {
    if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      __bufferedAudioEngine_getActiveAudioEngineSet_block_invoke_cold_1(a1);
    }
  }

  else if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    __bufferedAudioEngine_getActiveAudioEngineSet_block_invoke_cold_2(a1);
  }

  result = APSThreadSafeSetCreate();
  if (result)
  {
    if (gLogCategory_APAudioEngineBuffered <= 90)
    {
      if (gLogCategory_APAudioEngineBuffered != -1)
      {
        return __bufferedAudioEngine_getActiveAudioEngineSet_block_invoke_cold_3(a1);
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return __bufferedAudioEngine_getActiveAudioEngineSet_block_invoke_cold_3(a1);
      }
    }
  }

  else if (gLogCategory_APAudioEngineBuffered <= 50)
  {
    if (gLogCategory_APAudioEngineBuffered != -1)
    {
      return __bufferedAudioEngine_getActiveAudioEngineSet_block_invoke_cold_4(a1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __bufferedAudioEngine_getActiveAudioEngineSet_block_invoke_cold_4(a1);
    }
  }

  return result;
}

void bufferedAudioEngine_callSetRateAndAnchorTimeClientCompletionCallbackInternal(uint64_t *a1)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_callSetRateAndAnchorTimeClientCompletionCallbackInternal_cold_1(a1);
  }

  v2 = a1[10];
  if (v2)
  {
    v3 = *a1;
    v4 = *(a1 + 2);
    v5 = *(a1 + 2);
    v6 = a1[11];
    v11 = *(a1 + 3);
    v12 = a1[5];
    v9 = *(a1 + 3);
    v7 = a1[9];
    v10 = a1[8];
    v2(v3, v4, &v11, &v9, v7, v6, v5);
  }

  v8 = a1[9];
  if (v8)
  {
    CFRelease(v8);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }
}

void bufferedAudioEngine_audioFormatDurationDictToArrayForRTC(const void *a1, const __CFDictionary *a2, __CFArray *a3)
{
  v9 = **&MEMORY[0x277CC0898];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v7 = Mutable;
    CMTimeMakeFromDictionary(&v9, a2);
    CFDictionarySetValue(v7, @"audioFormat", a1);
    v8 = v9;
    CMTimeGetSeconds(&v8);
    CFDictionarySetInt64();
    CFArrayAppendValue(a3, v7);
    CFRelease(v7);
  }

  else
  {
    bufferedAudioEngine_audioFormatDurationDictToArrayForRTC_cold_1();
  }
}

__n128 bufferedAudioEngine_getFirstValidBufferTimestamp@<Q0>(uint64_t a1@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = MEMORY[0x277CC0898];
  v4 = *MEMORY[0x277CC0898];
  *a1 = *MEMORY[0x277CC0898];
  v5 = *(v3 + 16);
  *(a1 + 16) = v5;
  *&v14.value = v4;
  v14.epoch = v5;
  APMessageRingBufferedGetFirstValidReadIndex(*(DerivedStorage + 616), 0);
  APMessageRingBufferedGetMessageAtIndex();
  Value = FigCFDictionaryGetValue();
  if (Value)
  {
    v8 = *Value;
    v9 = *(CMBaseObjectGetVTable() + 16);
    if (!v9 || (v10 = *(v9 + 112)) == 0 || v10(v8, &v14))
    {
      bufferedAudioEngine_getFirstValidBufferTimestamp_cold_1();
      v11 = MEMORY[0x277CC0898];
      goto LABEL_9;
    }

    if ((v14.flags & 1) == 0 || (time1 = v14, v12 = *a1, CMTimeCompare(&time1, &v12) < 0))
    {
      v11 = &v14;
LABEL_9:
      result = *v11;
      *a1 = *v11;
      *(a1 + 16) = v11[1].n128_u64[0];
    }
  }

  return result;
}

uint64_t bufferedAudioEngine_handleCryptorKeyUpdated(uint64_t a1, const void *a2, uint64_t a3, const void *a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_handleCryptorKeyUpdated_cold_1();
  }

  v6 = malloc_type_calloc(1uLL, 0x10uLL, 0x60040FAFB2B2FuLL);
  if (!v6)
  {
    return bufferedAudioEngine_handleCryptorKeyUpdated_cold_2();
  }

  v7 = v6;
  if (a2)
  {
    v8 = CFRetain(a2);
  }

  else
  {
    v8 = 0;
  }

  *v7 = v8;
  if (a4)
  {
    v9 = CFRetain(a4);
  }

  else
  {
    v9 = 0;
  }

  v7[1] = v9;

  return APSPriorityDispatcherAsyncF();
}

uint64_t bufferedAudioEngine_setCryptorForAllHoses(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    bufferedAudioEngine_setCryptorForAllHoses_cold_1();
    return 4294951815;
  }

  v5 = (DerivedStorage + 640);
  while (1)
  {
    v5 = *v5;
    if (!v5)
    {
      return 0;
    }

    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      bufferedAudioEngine_getCryptorIDForCryptor(a2);
      LogPrintF();
      if (a1)
      {
LABEL_8:
        CFRetain(a1);
      }
    }

    else if (a1)
    {
      goto LABEL_8;
    }

    v6 = v5[2];
    CryptorIDForCryptor = bufferedAudioEngine_getCryptorIDForCryptor(a2);
    APSAudioProtocolDriverHoseControlProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (!ProtocolVTable || (v9 = *(ProtocolVTable + 16)) == 0)
    {
      v13 = 4294954508;
      goto LABEL_22;
    }

    v10 = *(v9 + 72);
    if (!v10)
    {
      break;
    }

    v11 = v10(v6, CryptorIDForCryptor, a2, bufferedAudioEngine_hoseSetCryptorCallbackCompletionHandler, a1);
    if (v11)
    {
      v13 = v11;
      goto LABEL_22;
    }
  }

  v13 = 4294954514;
  bufferedAudioEngine_hoseSetCryptorCallbackCompletionHandler(v6, CryptorIDForCryptor, -12782, a1);
LABEL_22:
  if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    if (a1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    LogPrintF();
  }

  return v13;
}

uint64_t bufferedAudioEngine_hoseSetCryptorCallbackCompletionHandler(const void *a1, uint64_t a2, int a3, const void *a4)
{
  CMBaseObjectGetDerivedStorage();
  v8 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200401C4E69EBuLL);
  if (!v8)
  {
    bufferedAudioEngine_hoseSetCryptorCallbackCompletionHandler_cold_1();
    v12 = 4294951816;
    if (!a4)
    {
      return v12;
    }

    goto LABEL_9;
  }

  v9 = v8;
  if (a4)
  {
    v10 = CFRetain(a4);
  }

  else
  {
    v10 = 0;
  }

  *v9 = v10;
  if (a1)
  {
    v11 = CFRetain(a1);
  }

  else
  {
    v11 = 0;
  }

  v9[1] = v11;
  v9[2] = a2;
  *(v9 + 6) = a3;
  APSPriorityDispatcherAsyncF();
  v12 = 0;
  if (a4)
  {
LABEL_9:
    CFRelease(a4);
  }

  return v12;
}

__CFString *bufferedAudioEngine_audioHoseProtocolCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"APAudioEngineBuffered <APSEndpointStreamAudioHoseRegistrarProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseLegacy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  CMBaseObjectGetDerivedStorage();
  result = APSPriorityDispatcherSyncTask();
  *a5 = &bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseLegacy_callbacks;
  return result;
}

uint64_t bufferedAudioEngine_CopyAudioDataBBufsForHose(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    bufferedAudioEngine_CopyAudioDataBBufsForHose_cold_2();
    return 4294951815;
  }

  if (!a3)
  {
    bufferedAudioEngine_CopyAudioDataBBufsForHose_cold_1();
    return 4294951815;
  }

  APSPriorityDispatcherSyncF();
  return 0;
}

uint64_t bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseLegacyInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  valuePtr = 0;
  v45 = 0;
  v3 = LogCategoryCopyOSLogHandle();
  v4 = MEMORY[0x277D86220];
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277D86220];
  }

  v6 = (a1 + 8);
  v7 = CUObfuscatedPtr();
  if (v7)
  {
    v8 = v7;
    if (os_signpost_enabled(v5))
    {
      LOWORD(buf.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_221FFA000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v8, "AIRPLAY_SIGNPOST_AUDIOENGINE_HOSE_REGISTERED", &unk_2222A918B, &buf, 2u);
    }
  }

  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseLegacyInternal_cold_1();
  }

  if (!*(DerivedStorage + 616))
  {
    v18 = APSSignalErrorAt();
    goto LABEL_93;
  }

  v9 = bufferedAudioEngine_addHose(*a1, *(a1 + 8), *(a1 + 16), &valuePtr);
  if (v9)
  {
    v18 = v9;
    bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseLegacyInternal_cold_2();
    goto LABEL_99;
  }

  if (!*(DerivedStorage + 436) || bufferedAudioEngine_isHoseLocal(*v6))
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_15;
  }

  if (*(DerivedStorage + 424))
  {
    v19 = APSDataPacerHoseCountIncrement();
    if (!v19)
    {
      v11 = 1;
      goto LABEL_64;
    }

    v18 = v19;
    bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseLegacyInternal_cold_3();
LABEL_99:
    v10 = 0;
    v11 = 0;
    goto LABEL_74;
  }

  v11 = 0;
LABEL_64:
  v27 = *(a1 + 16);
  v28 = *MEMORY[0x277CE9F78];
  if (*(DerivedStorage + 432) == 1)
  {
    v29 = *(DerivedStorage + 424);
    v30 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v30)
    {
      v18 = 4294954514;
      goto LABEL_73;
    }

    v31 = v30(v27, v28, v29);
    if (v31)
    {
      v18 = v31;
LABEL_73:
      APSLogErrorAt();
      v10 = 0;
      goto LABEL_74;
    }
  }

  else
  {
    v32 = *(*(DerivedStorage + 640) + 216);
    v33 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v33)
    {
      v18 = 4294954514;
      goto LABEL_73;
    }

    v34 = v33(v27, v28, v32);
    if (v34)
    {
      v18 = v34;
      goto LABEL_73;
    }
  }

  v10 = 1;
LABEL_15:
  bufferedAudioEngine_audioHoseSetEchoCancellationIfNeccessary(*a1, *(a1 + 8), *(a1 + 24), 0);
  v12 = *(a1 + 8);
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v13)
  {
    v18 = 4294954514;
LABEL_32:
    APSLogErrorAt();
    goto LABEL_74;
  }

  v14 = v13(v12, *MEMORY[0x277CE9F58], 0, &v45);
  if (v14)
  {
    v18 = v14;
    goto LABEL_32;
  }

  if (v45)
  {
    v15 = CFGetTypeID(v45);
    if (v15 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v45, kCFNumberSInt32Type, &valuePtr + 4);
      v16 = *(DerivedStorage + 124) * HIDWORD(valuePtr) / 0x64u;
      if (*(DerivedStorage + 120) < v16)
      {
        v16 = *(DerivedStorage + 120);
      }

      *(*(DerivedStorage + 640) + 164) = HIDWORD(valuePtr) - v16;
      if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseLegacyInternal_cold_4();
      }

      *(*(DerivedStorage + 640) + 168) = *(DerivedStorage + 184) * HIDWORD(valuePtr) / 0x64u;
      if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseLegacyInternal_cold_5();
      }

      if (*(DerivedStorage + 437))
      {
        v17 = *(DerivedStorage + 648) == 1;
      }

      else
      {
        v17 = 1;
      }

      bufferedAudioEngine_updateStartupConfiguration(*a1, v17);
      v20 = HIDWORD(valuePtr);
      if (*(DerivedStorage + 704) < HIDWORD(valuePtr))
      {
        if (HIDWORD(valuePtr) >= 0x753000)
        {
          v20 = 7680000;
        }

        *(DerivedStorage + 704) = v20;
        if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
        {
          bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseLegacyInternal_cold_6();
        }
      }

      v21 = *(DerivedStorage + 321);
      if (v21)
      {
        v21 = APSIsFBOPropertyAvailable() != 0;
      }

      *(*(DerivedStorage + 640) + 33) = v21;
      if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseLegacyInternal_cold_7();
      }

      v22 = LogCategoryCopyOSLogHandle();
      v23 = v22;
      if (v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = v4;
      }

      v25 = CUObfuscatedPtr();
      if (v25)
      {
        v26 = v25;
        if (os_signpost_enabled(v24))
        {
          LOWORD(buf.value) = 0;
          _os_signpost_emit_with_name_impl(&dword_221FFA000, v24, OS_SIGNPOST_INTERVAL_END, v26, "AIRPLAY_SIGNPOST_AUDIOENGINE_HOSE_REGISTERED", &unk_2222A918B, &buf, 2u);
        }
      }

      if (v23)
      {
        os_release(v23);
      }

      if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        if (*a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        LogPrintF();
      }

      bufferedAudioEngine_updateInternalBadgeInfoAndPostNotificationIfNecessary(*a1, *(DerivedStorage + 1040), 0);
      bufferedAudioEngine_updateMATAtmosPlaybackPreferenceIfNecessary();
      bufferedAudioEngine_setAllCryptorsForHose();
      bufferedAudioEngine_setAllMagicCookiesForHose();
      if (!*(*(DerivedStorage + 640) + 32) && *(DerivedStorage + 576))
      {
        if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
        {
          bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseLegacyInternal_cold_8();
        }

        v37 = *v6;
        v38 = gSoundCheckEnabled;
        APSAudioProtocolDriverHoseControlProtocolGetProtocolID();
        ProtocolVTable = CMBaseObjectGetProtocolVTable();
        if (ProtocolVTable)
        {
          v40 = *(ProtocolVTable + 16);
          if (v40)
          {
            v41 = *(v40 + 88);
            if (v41)
            {
              v41(v37, v38);
            }
          }
        }
      }

      bufferedAudioEngine_wakeUpHosesAndAudioTimer(*a1);
      bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(0, &buf);
      APSAudioHoseMetricCollectorReportMetrics();
      bufferedAudioEngine_isHoseLocal(*(a1 + 8));
      APSAudioHoseMetricCollectorRegisterHose();
      v18 = 0;
      goto LABEL_93;
    }
  }

  bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseLegacyInternal_cold_9();
  v18 = 4294960540;
LABEL_74:
  if (*(DerivedStorage + 436))
  {
    if (v10)
    {
      v35 = *(*(DerivedStorage + 640) + 24);
      v36 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v36)
      {
        v36(v35, *MEMORY[0x277CE9F78], 0);
      }
    }

    if (v11)
    {
      APSDataPacerHoseCountDecrement();
    }
  }

LABEL_93:
  if (v45)
  {
    CFRelease(v45);
  }

  return v18;
}

void bufferedAudioEngine_copyAudioDataBBufDispatchInternal(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 528))
  {
    bufferedAudioEngine_copyAudioDataBBufDispatchInternal_cold_12();
    value = -15485;
    goto LABEL_17;
  }

  v3 = DerivedStorage;
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], *(DerivedStorage + 292), MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    bufferedAudioEngine_copyAudioDataBBufDispatchInternal_cold_11();
    value = -15480;
    goto LABEL_17;
  }

  v6 = Mutable;
  if (!*(v3 + 528))
  {
    bufferedAudioEngine_copyAudioDataBBufDispatchInternal_cold_10();
    value = time2.value;
    goto LABEL_80;
  }

  v7 = *a1;
  v8 = CMBaseObjectGetDerivedStorage();
  v9 = MEMORY[0x277CC0898];
  v10 = *MEMORY[0x277CC0898];
  v44 = *MEMORY[0x277CC0898];
  v34 = *(MEMORY[0x277CC0898] + 8);
  v45 = v34;
  v35 = **&MEMORY[0x277CC08F0];
  if (*v8)
  {
LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  v11 = v8;
  if (*(v8 + 616))
  {
    HoseDecriptorFromHose = bufferedAudioEngine_getHoseDecriptorFromHose();
    if (!HoseDecriptorFromHose)
    {
      bufferedAudioEngine_copyAudioDataBBufDispatchInternal_cold_7();
      goto LABEL_14;
    }

    v13 = HoseDecriptorFromHose;
    if (HoseDecriptorFromHose[22].i32[1] >= 1)
    {
      if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        bufferedAudioEngine_copyAudioDataBBufDispatchInternal_cold_6();
      }

      *(v13 + 65) = 1;
      goto LABEL_14;
    }

    if (HoseDecriptorFromHose[8].i8[0])
    {
      bufferedAudioEngine_logForSendRate(v7, HoseDecriptorFromHose, 0);
      goto LABEL_14;
    }

    if (gLogCategory_APAudioEngineBuffered <= 10)
    {
      if (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize())
      {
        bufferedAudioEngine_copyAudioDataBBufDispatchInternal_cold_1();
      }

      if (*(v13 + 64))
      {
        v17 = 0;
LABEL_23:
        if ((*(v11 + 1176) & 1) != 0 && (bufferedAudioEngine_getLastSentRemoteMediaTimeForHose(v13, &time2), time1 = *(v11 + 1164), !CMTimeCompare(&time1, &time2)))
        {
          value = 0;
          v14 = 1;
        }

        else
        {
          value = 0;
          v14 = *(v13 + 64);
        }

LABEL_26:
        if (v17)
        {
          CFRelease(v17);
        }

        if (!value)
        {
          goto LABEL_15;
        }

        goto LABEL_29;
      }
    }

    structureAllocator = v4;
    v17 = 0;
    flags = *(v9 + 12);
    v32 = v10;
    epoch = *(v9 + 16);
    v33.epoch = epoch;
    v30 = flags;
    while (1)
    {
      if (!*(v11 + 292) || CFArrayGetCount(v6) >= *(v11 + 292))
      {
        if ((*(v11 + 308) & 1) == 0)
        {
          goto LABEL_23;
        }

        time2 = v35;
        time1 = *(v11 + 296);
        if ((CMTimeCompare(&time2, &time1) & 0x80000000) == 0)
        {
          goto LABEL_23;
        }
      }

      if (v17)
      {
        CFRelease(v17);
      }

      v41 = 0;
      v20 = CMBaseObjectGetDerivedStorage();
      *&v40.value = *v9;
      v40.epoch = v33.epoch;
      *&v39.value = *&v40.value;
      v39.epoch = v33.epoch;
      v37 = 0;
      blockBufferOut = 0;
      if (*(v20 + 616))
      {
        v21 = v20;
        *&v33.value = *&v40.value;
        v44 = v10;
        v45 = v34;
        bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(&v41, &time2);
        v22 = time2.value;
        timescale = time2.timescale;
        v46 = *&time2.flags;
        epoch_high = HIDWORD(time2.epoch);
        if (!v41)
        {
          MessageAtIndex = APMessageRingBufferedGetMessageAtIndex();
          if (MessageAtIndex)
          {
            v25 = MessageAtIndex;
            DataLength = CMBlockBufferGetDataLength(MessageAtIndex);
            CMBlockBufferCreateWithBufferReference(structureAllocator, v25, 0, DataLength, 0, &blockBufferOut);
            if (!*(v13 + 216) || (time2 = v39, CMTimeGetSeconds(&time2), (v41 = APSDataPacerBitRateUpdate()) == 0))
            {
              *(v13 + 88) += DataLength;
              time1 = v40;
              rhs.value = v22;
              rhs.timescale = timescale;
              *&rhs.flags = v46;
              HIDWORD(rhs.epoch) = epoch_high;
              CMTimeSubtract(&time2, &time1, &rhs);
              *(v13 + 96) = time2;
              *(v13 + 40) = v40;
              if (v39.flags)
              {
                bufferedAudioEngine_getSentBufferLevelTime(v13, &time1);
                rhs = v39;
                CMTimeAdd(&time2, &time1, &rhs);
                *(v13 + 96) = time2;
                bufferedAudioEngine_getLastSentRemoteMediaTimeForHose(v13, &time1);
                rhs = v39;
                CMTimeAdd(&time2, &time1, &rhs);
                *(v13 + 40) = time2;
              }

              *(v13 + 36) = HIDWORD(v37);
              ++*(v13 + 152);
              v27 = *(v13 + 34) + 1;
              *(v13 + 34) = v27;
              APMessageRingBufferedGetByteCountAtIndex(*(v21 + 616), v27, (v13 + 144));
              v41 = 0;
              v28 = CMBaseObjectGetDerivedStorage();
              if (*(v13 + 144) >= *(v13 + 164) || (v29 = v28, bufferedAudioEngine_getSentBufferLevelTime(v13, &time2), time1 = *(v29 + 128), CMTimeCompare(&time2, &time1) >= 1))
              {
                *(v13 + 64) = 257;
                if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
                {
                  if (v7)
                  {
                    CMBaseObjectGetDerivedStorage();
                  }

                  time2 = v40;
                  CMTimeGetSeconds(&time2);
                  bufferedAudioEngine_getSentBufferLevelTime(v13, &time2);
                  CMTimeGetSeconds(&time2);
                  LogPrintF();
                }
              }

              v17 = blockBufferOut;
              blockBufferOut = 0;
              v44 = v39.value;
              flags = v39.flags;
              v45 = v39.timescale;
              epoch = v39.epoch;
              bufferedAudioEngine_logForSendRate(v7, v13, DataLength);
              goto LABEL_62;
            }

            bufferedAudioEngine_copyAudioDataBBufDispatchInternal_cold_3();
          }

          else
          {
            time2 = v33;
            APMessageRingBufferedGetLastValidReadIndexAndTimestamp(*(v21 + 616), &v37, &time2);
            if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
            {
              if (v7)
              {
                CMBaseObjectGetDerivedStorage();
              }

              time1.value = v22;
              time1.timescale = timescale;
              *&time1.flags = v46;
              HIDWORD(time1.epoch) = epoch_high;
              CMTimeGetSeconds(&time1);
              time1 = time2;
              CMTimeGetSeconds(&time1);
              LogPrintF();
            }
          }

          v17 = 0;
          flags = v30;
          epoch = v33.epoch;
LABEL_62:
          v9 = MEMORY[0x277CC0898];
          goto LABEL_63;
        }

        bufferedAudioEngine_copyAudioDataBBufDispatchInternal_cold_2();
        v17 = 0;
        flags = v30;
        epoch = v33.epoch;
      }

      else
      {
        bufferedAudioEngine_copyAudioDataBBufDispatchInternal_cold_4(&v41);
        v17 = 0;
      }

LABEL_63:
      if (blockBufferOut)
      {
        CFRelease(blockBufferOut);
      }

      value = v41;
      if (v41)
      {
        bufferedAudioEngine_copyAudioDataBBufDispatchInternal_cold_5();
        v14 = 0;
        goto LABEL_26;
      }

      if (v17)
      {
        if (flags)
        {
          time2 = v35;
          time1.value = v44;
          time1.timescale = v45;
          time1.flags = flags;
          time1.epoch = epoch;
          CMTimeAdd(&v35, &time2, &time1);
        }

        CFArrayAppendValue(v6, v17);
        v10 = v32;
        if (!*(v13 + 64))
        {
          continue;
        }
      }

      goto LABEL_23;
    }
  }

  bufferedAudioEngine_copyAudioDataBBufDispatchInternal_cold_8(&time2);
  v14 = 0;
  value = time2.value;
  if (LODWORD(time2.value))
  {
LABEL_29:
    bufferedAudioEngine_copyAudioDataBBufDispatchInternal_cold_9();
LABEL_80:
    CFRelease(v6);
    goto LABEL_17;
  }

LABEL_15:
  **(a1 + 16) = v6;
  v15 = *(a1 + 24);
  value = 0;
  if (v15)
  {
    *v15 = v14;
  }

LABEL_17:
  **(a1 + 32) = value;
}

uint64_t bufferedAudioEngine_logForSendRate(uint64_t a1, int32x2_t *a2, uint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v26 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = mach_absolute_time();
  v8 = result;
  if (a2[4].i8[0])
  {
    v9 = 10000;
  }

  else
  {
    v9 = 100;
  }

  if (a2[8].i8[0])
  {
    if (!a2[32].i8[0])
    {
      v10 = UpTicksToMilliseconds();
      result = UpTicksToMilliseconds();
      if (v10 && result != 0)
      {
        if (gLogCategory_APAudioEngineBuffered <= 50)
        {
          if (gLogCategory_APAudioEngineBuffered != -1 || (result = _LogCategory_Initialize(), result))
          {
            if (a1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            result = LogPrintF();
          }
        }

        a2[30] = 0;
        a2[31] = 0;
        a2[32].i8[0] = 1;
      }
    }
  }

  else
  {
    a2[31] = vadd_s32(a2[31], 0x100000001);
    *&a2[30] += a3;
    if (a2[32].i8[0])
    {
      a2[28] = result;
      a2[29] = result;
      a2[32].i8[0] = 0;
    }

    else
    {
      if (!*&a2[28])
      {
        a2[28] = result;
        a2[29] = result;
      }

      v12 = UpTicksToMilliseconds();
      result = UpTicksToMilliseconds();
      if (v12 && result && v12 >= v9)
      {
        bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(&v26, &v25);
        value = v25.value;
        timescale = v25.timescale;
        v31 = *&v25.flags;
        epoch_high = HIDWORD(v25.epoch);
        if (v26)
        {
          return bufferedAudioEngine_logForSendRate_cold_1();
        }

        else
        {
          bufferedAudioEngine_getLastSentRemoteMediaTimeForHose(a2, &v25);
          v15 = v25.value;
          v16 = v25.timescale;
          v29 = *&v25.flags;
          v30 = HIDWORD(v25.epoch);
          bufferedAudioEngine_getLastDeliveredRemoteMediaTimeForHose(a2, &v25);
          v21 = v25.timescale;
          v22 = v25.value;
          v27 = *&v25.flags;
          v28 = HIDWORD(v25.epoch);
          SampleRateFromTransportAudioFormat = bufferedAudioEngine_getSampleRateFromTransportAudioFormat();
          time.value = v15;
          time.timescale = v16;
          *&time.flags = v29;
          HIDWORD(time.epoch) = v30;
          CMTimeConvertScale(&v25, &time, SampleRateFromTransportAudioFormat, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
          v18 = v25.value;
          v23 = v25.timescale;
          v29 = *&v25.flags;
          v30 = HIDWORD(v25.epoch);
          time.value = value;
          time.timescale = timescale;
          *&time.flags = v31;
          HIDWORD(time.epoch) = epoch_high;
          CMTimeConvertScale(&v25, &time, SampleRateFromTransportAudioFormat, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
          v19 = v25.value;
          v20 = v25.timescale;
          v31 = *&v25.flags;
          epoch_high = HIDWORD(v25.epoch);
          if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
          {
            if (a1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            v25.value = v18;
            v25.timescale = v23;
            *&v25.flags = v29;
            HIDWORD(v25.epoch) = v30;
            CMTimeGetSeconds(&v25);
            v25.value = v22;
            v25.timescale = v21;
            *&v25.flags = v27;
            HIDWORD(v25.epoch) = v28;
            CMTimeGetSeconds(&v25);
            v25.value = v19;
            v25.timescale = v20;
            *&v25.flags = v31;
            HIDWORD(v25.epoch) = epoch_high;
            CMTimeGetSeconds(&v25);
            CMClockGetTime(&v25, *(DerivedStorage + 480));
            CMTimeGetSeconds(&v25);
            LogPrintF();
          }

          a2[31].i32[0] = 0;
          a2[29] = v8;
          a2[30] = 0;
          return APSAudioHoseMetricCollectorUpdateSendRateForHose();
        }
      }
    }
  }

  return result;
}

__n128 bufferedAudioEngine_getSentBufferLevelTime@<Q0>(__n128 *a1@<X1>, CMTime *a2@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *&v14.value = *MEMORY[0x277CC0898];
  v5 = *(MEMORY[0x277CC0898] + 16);
  v14.epoch = v5;
  *&v13.value = *&v14.value;
  v13.epoch = v5;
  *&a2->value = *&v14.value;
  a2->epoch = v5;
  if (*(DerivedStorage + 577))
  {
    bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(0, &v14);
    v6 = a1[1].n128_u64[1];
    APSAudioProtocolDriverHoseDataBaseProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable)
    {
      v8 = *(ProtocolVTable + 16);
      if (v8)
      {
        v9 = *(v8 + 16);
        if (v9)
        {
          v9(v6, &v13);
        }
      }
    }

    lhs = v13;
    v11 = v14;
    CMTimeSubtract(a2, &lhs, &v11);
  }

  else
  {
    result = a1[6];
    *&a2->value = result;
    a2->epoch = a1[7].n128_i64[0];
  }

  return result;
}

uint64_t bufferedAudioEngine_getSampleRateFromTransportAudioFormat()
{
  if (*(CMBaseObjectGetDerivedStorage() + 1008))
  {
    APSAudioFormatDescriptionGetSampleRate();
    return v0;
  }

  else
  {
    bufferedAudioEngine_getSampleRateFromTransportAudioFormat_cold_1();
    return 0;
  }
}

uint64_t bufferedAudioEngine_addHose(uint64_t a1, const void *a2, const void *a3, _DWORD *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (bufferedAudioEngine_getHoseDecriptorFromHose())
  {
    bufferedAudioEngine_addHose_cold_1(&v32);
    return v32;
  }

  else
  {
    v8 = *(DerivedStorage + 640);
    v9 = malloc_type_calloc(1uLL, 0x118uLL, 0x1060040E24E3859uLL);
    *(DerivedStorage + 640) = v9;
    if (v9)
    {
      if (a2)
      {
        v10 = CFRetain(a2);
        v9 = *(DerivedStorage + 640);
      }

      else
      {
        v10 = 0;
      }

      v9[2] = v10;
      if (a3)
      {
        v11 = CFRetain(a3);
        v9 = *(DerivedStorage + 640);
      }

      else
      {
        v11 = 0;
      }

      v9[3] = v11;
      Index = APMessageRingBufferedGetFirstValidReadIndex(*(DerivedStorage + 616), a4);
      v13 = *(DerivedStorage + 640);
      *(v13 + 34) = Index;
      *(v13 + 64) = 0;
      *(v13 + 88) = 0;
      v14 = mach_absolute_time();
      v15 = *(DerivedStorage + 640);
      *(v15 + 80) = v14;
      *(v15 + 65) = 1;
      v16 = MEMORY[0x277CC08F0];
      *(v15 + 148) = 0;
      v17 = *(v16 + 2);
      *(v15 + 112) = v17;
      v31 = *v16;
      *(v15 + 96) = *v16;
      v18 = *(DerivedStorage + 640);
      *(v18 + 56) = v17;
      *(v18 + 40) = v31;
      v19 = *(DerivedStorage + 640);
      *(v19 + 144) = 0;
      *(v19 + 212) = 0;
      *(v19 + 176) = 0;
      isHoseLocal = bufferedAudioEngine_isHoseLocal(a2);
      v21 = *(DerivedStorage + 640);
      *(v21 + 32) = isHoseLocal;
      *(v21 + 272) = 0;
      *(v21 + 136) = v17;
      *(v21 + 120) = v31;
      v22 = *(DerivedStorage + 640);
      if (*(v22 + 32))
      {
        *(DerivedStorage + 1160) = 1;
      }

      v23 = *(v22 + 16);
      v24 = *MEMORY[0x277CBECE8];
      v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v25)
      {
        v25(v23, *MEMORY[0x277CE9FD0], v24, v22 + 264);
      }

      v26 = *(DerivedStorage + 640);
      *v26 = v8;
      if (v8)
      {
        *(v8 + 8) = v26;
      }

      ++*(DerivedStorage + 648);
      if (*(DerivedStorage + 436) && *(DerivedStorage + 432) != 1 && !bufferedAudioEngine_isHoseLocal(v26[2]) && (v27 = APSDataPacerBitRateCreate(), v27))
      {
        v29 = v27;
        bufferedAudioEngine_addHose_cold_2();
      }

      else
      {
        v28 = *(DerivedStorage + 648);
        v29 = 0;
        if (v28 > *(DerivedStorage + 1316))
        {
          *(DerivedStorage + 1316) = v28;
        }
      }
    }

    else
    {
      bufferedAudioEngine_addHose_cold_3(&v33);
      return v33;
    }
  }

  return v29;
}

BOOL bufferedAudioEngine_isHoseLocal(uint64_t a1)
{
  cf = 0;
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v2)
  {
    return 0;
  }

  v3 = v2(a1, *MEMORY[0x277CC1878], 0, &cf);
  v4 = cf;
  if (v3)
  {
    v5 = 0;
    if (!cf)
    {
      return v5;
    }

    goto LABEL_4;
  }

  v5 = FigCFEqual() != 0;
  v4 = cf;
  if (cf)
  {
LABEL_4:
    CFRelease(v4);
  }

  return v5;
}

uint64_t bufferedAudioEngine_audioHoseSetEchoCancellationIfNeccessary(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = CFDictionaryGetInt64();
  if (a4)
  {
    if (a4 != 1 || !result)
    {
      return result;
    }

    *(DerivedStorage + 1240) = 0;
    v9 = a1;
    v10 = 0;
    goto LABEL_7;
  }

  if (result)
  {
    *(DerivedStorage + 1240) = 1;
    v9 = a1;
    v10 = 1;
LABEL_7:

    return bufferedAudioEngine_setEchoCancellationIsEnabledToAllHoses(v9, v10);
  }

  if (*(DerivedStorage + 1240))
  {
    VTable = CMBaseObjectGetVTable();
    v12 = *(VTable + 8);
    result = VTable + 8;
    v13 = *(v12 + 56);
    if (v13)
    {
      v14 = *MEMORY[0x277CE9F80];
      v15 = *MEMORY[0x277CBED28];

      return v13(a2, v14, v15);
    }
  }

  return result;
}

uint64_t bufferedAudioEngine_updateMATAtmosPlaybackPreferenceIfNecessary()
{
  result = CMBaseObjectGetDerivedStorage();
  v1 = *(result + 640);
  if (v1)
  {
    v2 = result;
    do
    {
      result = APSGetFBOPropertyInt64();
      if (result)
      {
        if (APSGetFBOPropertyInt64())
        {
          v3 = v1[2];
          APSEndpointStreamAudioHoseProtocolGetProtocolID();
          ProtocolVTable = CMBaseObjectGetProtocolVTable();
          if (!ProtocolVTable)
          {
            return bufferedAudioEngine_updateMATAtmosPlaybackPreferenceIfNecessary_cold_1();
          }

          v5 = *(ProtocolVTable + 16);
          if (!v5)
          {
            return bufferedAudioEngine_updateMATAtmosPlaybackPreferenceIfNecessary_cold_1();
          }

          v6 = *(v5 + 120);
          if (!v6)
          {
            return bufferedAudioEngine_updateMATAtmosPlaybackPreferenceIfNecessary_cold_1();
          }

          result = v6(v3, 1);
          if (result)
          {
            return bufferedAudioEngine_updateMATAtmosPlaybackPreferenceIfNecessary_cold_1();
          }
        }

        else if (*(v2 + 648) != 1 || *(v1 + 32) || APSGetFBOPropertyInt64())
        {
          v7 = v1[2];
          APSEndpointStreamAudioHoseProtocolGetProtocolID();
          v8 = CMBaseObjectGetProtocolVTable();
          if (!v8)
          {
            return bufferedAudioEngine_updateMATAtmosPlaybackPreferenceIfNecessary_cold_2();
          }

          v9 = *(v8 + 16);
          if (!v9)
          {
            return bufferedAudioEngine_updateMATAtmosPlaybackPreferenceIfNecessary_cold_2();
          }

          v10 = *(v9 + 120);
          if (!v10)
          {
            return bufferedAudioEngine_updateMATAtmosPlaybackPreferenceIfNecessary_cold_2();
          }

          result = v10(v7, 0);
          if (result)
          {
            return bufferedAudioEngine_updateMATAtmosPlaybackPreferenceIfNecessary_cold_2();
          }
        }

        else
        {
          v11 = v1[2];
          APSEndpointStreamAudioHoseProtocolGetProtocolID();
          v12 = CMBaseObjectGetProtocolVTable();
          if (!v12)
          {
            return bufferedAudioEngine_updateMATAtmosPlaybackPreferenceIfNecessary_cold_3();
          }

          v13 = *(v12 + 16);
          if (!v13)
          {
            return bufferedAudioEngine_updateMATAtmosPlaybackPreferenceIfNecessary_cold_3();
          }

          v14 = *(v13 + 120);
          if (!v14)
          {
            return bufferedAudioEngine_updateMATAtmosPlaybackPreferenceIfNecessary_cold_3();
          }

          result = v14(v11, 1);
          if (result)
          {
            return bufferedAudioEngine_updateMATAtmosPlaybackPreferenceIfNecessary_cold_3();
          }
        }
      }

      v1 = *v1;
    }

    while (v1);
  }

  return result;
}

uint64_t APSAudioProtocolDriverHoseControlEnableLoudnessNormalization(uint64_t a1, uint64_t a2)
{
  APSAudioProtocolDriverHoseControlProtocolGetProtocolID();
  result = CMBaseObjectGetProtocolVTable();
  if (result)
  {
    v6 = *(result + 16);
    result += 16;
    v5 = v6;
    if (v6)
    {
      v7 = *(v5 + 88);
      if (v7)
      {

        return v7(a1, a2);
      }
    }
  }

  return result;
}

uint64_t bufferedAudioEngine_setEchoCancellationIsEnabledToAllHoses(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  v4 = *(result + 640);
  if (v4)
  {
    v5 = *MEMORY[0x277CE9F80];
    v6 = MEMORY[0x277CBED10];
    if (a2)
    {
      v6 = MEMORY[0x277CBED28];
    }

    v7 = *v6;
    do
    {
      v8 = v4[2];
      VTable = CMBaseObjectGetVTable();
      v10 = *(VTable + 8);
      result = VTable + 8;
      v11 = *(v10 + 56);
      if (v11)
      {
        result = v11(v8, v5, v7);
      }

      v4 = *v4;
    }

    while (v4);
  }

  return result;
}

uint64_t bufferedAudioEngine_hoseSetMagicCookieCallbackCompletionHandler(const void *a1, uint64_t a2, int a3, const void *a4)
{
  CMBaseObjectGetDerivedStorage();
  v8 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200401C4E69EBuLL);
  if (!v8)
  {
    bufferedAudioEngine_hoseSetMagicCookieCallbackCompletionHandler_cold_1();
    v12 = 4294951816;
    if (!a4)
    {
      return v12;
    }

    goto LABEL_9;
  }

  v9 = v8;
  if (a4)
  {
    v10 = CFRetain(a4);
  }

  else
  {
    v10 = 0;
  }

  *v9 = v10;
  if (a1)
  {
    v11 = CFRetain(a1);
  }

  else
  {
    v11 = 0;
  }

  v9[1] = v11;
  v9[2] = a2;
  *(v9 + 6) = a3;
  APSPriorityDispatcherAsyncF();
  v12 = 0;
  if (a4)
  {
LABEL_9:
    CFRelease(a4);
  }

  return v12;
}

uint64_t bufferedAudioEngine_audioHoseRegistrarDeregisterProtocolDriverHoseLegacyInternal(uint64_t *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_audioHoseRegistrarDeregisterProtocolDriverHoseLegacyInternal_cold_1(a1);
  }

  if (*(DerivedStorage + 436) && !bufferedAudioEngine_isHoseLocal(a1[1]))
  {
    v3 = a1[2];
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v4)
    {
      v4(v3, *MEMORY[0x277CE9F78], 0);
    }

    if (*(DerivedStorage + 424))
    {
      APSDataPacerHoseCountDecrement();
    }
  }

  v5 = bufferedAudioEngine_removeHose(*a1, a1[1]);
  if (v5)
  {
    bufferedAudioEngine_audioHoseRegistrarDeregisterProtocolDriverHoseLegacyInternal_cold_2();
  }

  else
  {
    bufferedAudioEngine_audioHoseSetEchoCancellationIfNeccessary(*a1, a1[1], a1[3], 1);
    if (CFDictionaryGetInt64())
    {
      *(DerivedStorage + 1240) = 0;
      bufferedAudioEngine_setEchoCancellationIsEnabledToAllHoses(*a1, 0);
    }

    bufferedAudioEngine_updateInternalBadgeInfoAndPostNotificationIfNecessary(*a1, *(DerivedStorage + 1040), 0);
    bufferedAudioEngine_updateMATAtmosPlaybackPreferenceIfNecessary();
    bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(0, &v7);
    APSAudioHoseMetricCollectorReportMetrics();
    APSAudioHoseMetricCollectorDeregisterHose();
  }

  return v5;
}

uint64_t bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v56 = 0;
  v55 = 0;
  cf = 0;
  v53 = 0;
  v3 = LogCategoryCopyOSLogHandle();
  v4 = MEMORY[0x277D86220];
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277D86220];
  }

  v6 = CUObfuscatedPtr();
  if (v6)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      LOWORD(buf.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_221FFA000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "AIRPLAY_SIGNPOST_AUDIOENGINE_HOSE_REGISTERED", &unk_2222A918B, &buf, 2u);
    }
  }

  v8 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_1();
  }

  if (!*(DerivedStorage + 577))
  {
    v41 = 4294895205;
    bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_17();
    goto LABEL_51;
  }

  isHoseLocal = bufferedAudioEngine_isHoseLocal(*(a1 + 8));
  v10 = *a1;
  if (!isHoseLocal)
  {
    inited = bufferedAudioEngine_initProtocolDriverIfNecessary(v10, *MEMORY[0x277CEA028], &v53);
    if (inited)
    {
      v41 = inited;
      bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_4();
      goto LABEL_51;
    }

    CMBaseObjectGetDerivedStorage();
    Value = FigCFDictionaryGetValue();
    if (!Value)
    {
      v41 = 4294895205;
      bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_16();
      goto LABEL_51;
    }

    v13 = Value;
    CMBaseObject = APSAudioProtocolDriverSenderGetCMBaseObject();
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v15)
    {
      v16 = v15(CMBaseObject, *MEMORY[0x277CEA020], *MEMORY[0x277CBECE8], &v56);
      if (v16)
      {
        v41 = v16;
      }

      else
      {
        if (!v53)
        {
          goto LABEL_25;
        }

        FigCFNumberGetUInt64();
        CMBaseObjectGetDerivedStorage();
        v17 = FigCFWeakReferenceHolderCreateWithReferencedObject();
        if (v17)
        {
          v18 = v17;
          buf.value = v17;
          *&buf.timescale = bufferedAudioEngine_weakProtocolDriverTickTimer;
          buf.epoch = MEMORY[0x277CBE550];
          v19 = APSPriorityDispatchSourceCreate();
          if (v19)
          {
            v41 = v19;
            bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_5(v19, v18);
          }

          else
          {
            v20 = APSPriorityDispatchSourceSetTimer();
            if (v20)
            {
              v41 = v20;
              bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_6();
            }

            else
            {
              v21 = APSPriorityDispatchSourceResume();
              if (!v21)
              {
                v8 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
                goto LABEL_25;
              }

              v41 = v21;
              bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_7();
            }
          }
        }

        else
        {
          bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_8();
          v41 = 4294895206;
        }
      }
    }

    else
    {
      v41 = 4294954514;
    }

    APSLogErrorAt();
    goto LABEL_51;
  }

  v22 = bufferedAudioEngine_initProtocolDriverIfNecessary(v10, *MEMORY[0x277CEA030], 0);
  if (v22)
  {
    v41 = v22;
    bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_2();
    goto LABEL_51;
  }

  CMBaseObjectGetDerivedStorage();
  v13 = FigCFDictionaryGetValue();
  if (!v13)
  {
    v41 = 4294895205;
    bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_3();
    goto LABEL_51;
  }

LABEL_25:
  v23 = MEMORY[0x277CC0898];
  *(DerivedStorage + 504) = *MEMORY[0x277CC0898];
  *(DerivedStorage + 520) = *(v23 + 16);
  v24 = bufferedAudioEngine_addHose(*a1, *(a1 + 8), *(a1 + 16), &v55);
  if (v24)
  {
    v41 = v24;
    bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_9();
    goto LABEL_51;
  }

  v25 = APSDataPacerHoseCountIncrement();
  if (v25)
  {
    v41 = v25;
    bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_10();
    goto LABEL_51;
  }

  v26 = *v13;
  v27 = *(a1 + 16);
  v28 = *(CMBaseObjectGetVTable() + 16);
  if (!v28)
  {
    v41 = 4294954508;
LABEL_50:
    APSLogErrorAt();
    APSDataPacerHoseCountDecrement();
    goto LABEL_51;
  }

  v29 = *(v28 + 32);
  if (!v29)
  {
    v41 = 4294954514;
    goto LABEL_50;
  }

  v30 = v29(v26, v27);
  if (v30)
  {
    v41 = v30;
    goto LABEL_50;
  }

  bufferedAudioEngine_audioHoseSetEchoCancellationIfNeccessary(*a1, *(a1 + 8), *(a1 + 24), 0);
  v31 = *(a1 + 8);
  v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v32)
  {
    v41 = 4294954514;
    goto LABEL_50;
  }

  v33 = v32(v31, *MEMORY[0x277CE9F58], 0, &cf);
  if (v33)
  {
    v41 = v33;
    goto LABEL_50;
  }

  UInt32 = FigCFNumberGetUInt32();
  v35 = UInt32;
  v36 = *(DerivedStorage + 124) * UInt32 / 0x64;
  if (*(DerivedStorage + 120) < v36)
  {
    v36 = *(DerivedStorage + 120);
  }

  *(*(DerivedStorage + 640) + 164) = UInt32 - v36;
  v37 = v8[594];
  if (v37 <= 50 && (v37 != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_11();
  }

  v38 = *(DerivedStorage + 640);
  *(v38 + 168) = *(DerivedStorage + 184) * v35 / 0x64;
  v39 = v8[594];
  if (v39 >= 51)
  {
    *(v38 + 33) = *(DerivedStorage + 321);
  }

  else
  {
    if (v39 != -1 || _LogCategory_Initialize())
    {
      bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_12();
    }

    v40 = v8[594];
    *(*(DerivedStorage + 640) + 33) = *(DerivedStorage + 321);
    if (v40 <= 50 && (v40 != -1 || _LogCategory_Initialize()))
    {
      bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_13();
    }
  }

  if (*(DerivedStorage + 437))
  {
    v43 = *(DerivedStorage + 648) == 1;
  }

  else
  {
    v43 = 1;
  }

  bufferedAudioEngine_updateStartupConfiguration(*a1, v43);
  if (*(DerivedStorage + 704) < v35)
  {
    v44 = v35 >= 0x753000 ? 7680000 : v35;
    *(DerivedStorage + 704) = v44;
    v45 = v8[594];
    if (v45 <= 50 && (v45 != -1 || _LogCategory_Initialize()))
    {
      bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_14();
    }
  }

  v46 = LogCategoryCopyOSLogHandle();
  v47 = v46;
  if (v46)
  {
    v48 = v46;
  }

  else
  {
    v48 = v4;
  }

  v49 = CUObfuscatedPtr();
  if (v49)
  {
    v50 = v49;
    if (os_signpost_enabled(v48))
    {
      LOWORD(buf.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_221FFA000, v48, OS_SIGNPOST_INTERVAL_END, v50, "AIRPLAY_SIGNPOST_AUDIOENGINE_HOSE_REGISTERED", &unk_2222A918B, &buf, 2u);
    }
  }

  if (v47)
  {
    os_release(v47);
  }

  v51 = v8[594];
  if (v51 <= 50 && (v51 != -1 || _LogCategory_Initialize()))
  {
    if (*a1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    LogPrintF();
  }

  bufferedAudioEngine_updateInternalBadgeInfoAndPostNotificationIfNecessary(*a1, *(DerivedStorage + 1040), 0);
  bufferedAudioEngine_updateMATAtmosPlaybackPreferenceIfNecessary();
  bufferedAudioEngine_setAllCryptorsForHose();
  bufferedAudioEngine_setAllMagicCookiesForHose();
  if (!*(*(DerivedStorage + 640) + 32) && *(DerivedStorage + 576))
  {
    v52 = v8[594];
    if (v52 <= 50 && (v52 != -1 || _LogCategory_Initialize()))
    {
      bufferedAudioEngine_audioHoseRegistrarRegisterProtocolDriverHoseInternal_cold_15();
    }

    APSAudioProtocolDriverHoseControlEnableLoudnessNormalization(*(a1 + 8), gSoundCheckEnabled);
  }

  bufferedAudioEngine_wakeUpHosesAndAudioTimer(*a1);
  bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(0, &buf);
  APSAudioHoseMetricCollectorReportMetrics();
  bufferedAudioEngine_isHoseLocal(*(a1 + 8));
  APSAudioHoseMetricCollectorRegisterHose();
  v41 = 0;
LABEL_51:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v56)
  {
    CFRelease(v56);
  }

  return v41;
}

void bufferedAudioEngine_weakProtocolDriverTickTimer()
{
  v20 = *MEMORY[0x277D85DE8];
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    memset(&v15, 0, sizeof(v15));
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&v15, HostTimeClock);
    Value = FigCFDictionaryGetValue();
    if (Value)
    {
      v5 = Value;
      if (*(DerivedStorage + 884) == 8)
      {
        v6 = CMClockGetHostTimeClock();
        v7 = *(DerivedStorage + 872);
        time = v15;
        CMSyncConvertTime(&v17, &time, v6, v7);
        v18 = v17.value;
        flags = v17.flags;
        timescale = v17.timescale;
        epoch = v17.epoch;
LABEL_10:
        v11 = *v5;
        v14 = v15;
        v12 = *(CMBaseObjectGetVTable() + 16);
        if (v12 && (v13 = *(v12 + 8)) != 0 && (v17.value = v18, v17.timescale = timescale, v17.flags = flags, v17.epoch = epoch, time = v14, !v13(v11, &v17, &time)))
        {
          if (gLogCategory_APAudioEngineBuffered <= 10 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
          {
            CMBaseObjectGetDerivedStorage();
            v17.value = v18;
            v17.timescale = timescale;
            v17.flags = flags;
            v17.epoch = epoch;
            CMTimeGetSeconds(&v17);
            v17 = v15;
            CMTimeGetSeconds(&v17);
            LogPrintF();
          }
        }

        else
        {
          APSLogErrorAt();
        }

        goto LABEL_17;
      }

      v10 = (DerivedStorage + 796);
      flags = *(DerivedStorage + 816);
      if (flags)
      {
        timescale = *(DerivedStorage + 812);
        v18 = *(DerivedStorage + 804);
        v10 = (DerivedStorage + 820);
      }

      else
      {
        timescale = *(DerivedStorage + 788);
        v18 = *(DerivedStorage + 780);
        flags = *(DerivedStorage + 792);
      }

      if ((flags & 0x1D) == 1)
      {
        epoch = *v10;
        goto LABEL_10;
      }

      bufferedAudioEngine_weakProtocolDriverTickTimer_cold_1();
    }

    else
    {
      bufferedAudioEngine_weakProtocolDriverTickTimer_cold_2();
    }

LABEL_17:
    CFRelease(v1);
  }
}

uint64_t bufferedAudioEngine_audioHoseRegistrarDeregisterProtocolDriverHoseInternal(uint64_t *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_audioHoseRegistrarDeregisterProtocolDriverHoseInternal_cold_1(a1);
  }

  v3 = bufferedAudioEngine_removeHose(*a1, a1[1]);
  if (v3)
  {
    v11 = v3;
    bufferedAudioEngine_audioHoseRegistrarDeregisterProtocolDriverHoseInternal_cold_2();
    return v11;
  }

  APSDataPacerHoseCountDecrement();
  if (bufferedAudioEngine_isHoseLocal(a1[1]))
  {
    v4 = *MEMORY[0x277CEA030];
    CMBaseObjectGetDerivedStorage();
    Value = FigCFDictionaryGetValue();
    if (!Value)
    {
      v11 = 4294895205;
      bufferedAudioEngine_audioHoseRegistrarDeregisterProtocolDriverHoseInternal_cold_3();
      return v11;
    }

    v6 = *Value;
    v7 = a1[2];
    v8 = *(CMBaseObjectGetVTable() + 16);
    if (!v8)
    {
      v11 = 4294954508;
      goto LABEL_25;
    }

    v9 = *(v8 + 40);
    if (!v9)
    {
      v11 = 4294954514;
      goto LABEL_25;
    }

    v10 = v9(v6, v7);
    if (v10)
    {
      v11 = v10;
LABEL_25:
      APSLogErrorAt();
      return v11;
    }

    goto LABEL_20;
  }

  v4 = *MEMORY[0x277CEA028];
  CMBaseObjectGetDerivedStorage();
  v12 = FigCFDictionaryGetValue();
  if (!v12)
  {
    v11 = 4294895205;
    bufferedAudioEngine_audioHoseRegistrarDeregisterProtocolDriverHoseInternal_cold_4();
    return v11;
  }

  v13 = *v12;
  v14 = a1[2];
  v15 = *(CMBaseObjectGetVTable() + 16);
  if (!v15)
  {
    v11 = 4294954508;
    goto LABEL_25;
  }

  v16 = *(v15 + 40);
  if (!v16)
  {
    v11 = 4294954514;
    goto LABEL_25;
  }

  v17 = v16(v13, v14);
  if (v17)
  {
    v11 = v17;
    goto LABEL_25;
  }

  v18 = *(DerivedStorage + 648);
  if (!v18 || v18 == 1 && *(DerivedStorage + 1160))
  {
    bufferedAudioEngine_destroyProtocolDriverTickTimer();
    v19 = MEMORY[0x277CC0898];
    *(DerivedStorage + 504) = *MEMORY[0x277CC0898];
    *(DerivedStorage + 520) = *(v19 + 16);
LABEL_20:
    CFDictionaryRemoveValue(*(DerivedStorage + 496), v4);
  }

  bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(0, &v21);
  APSAudioHoseMetricCollectorReportMetrics();
  APSAudioHoseMetricCollectorDeregisterHose();
  return 0;
}

void bufferedAudioEngine_Resume(const void *a1, const void *a2, void (*a3)(const void *, uint64_t, uint64_t), uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_Resume_cold_1(a1);
  }

  v8 = LogCategoryCopyOSLogHandle();
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = MEMORY[0x277D86220];
  }

  v10 = CUObfuscatedPtr();
  if (v10)
  {
    v11 = v10;
    if (os_signpost_enabled(v9))
    {
      v18[0] = 0;
      _os_signpost_emit_with_name_impl(&dword_221FFA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v11, "AIRPLAY_SIGNPOST_AUDIOENGINE_RESUME_INTERVAL", &unk_2222A918B, v18, 2u);
    }
  }

  kdebug_trace();
  v12 = malloc_type_malloc(0x28uLL, 0x10E0040139F2759uLL);
  if (!v12)
  {
    bufferedAudioEngine_Resume_cold_3();
    v17 = 4294951816;
    goto LABEL_22;
  }

  v13 = v12;
  if (a1)
  {
    v14 = CFRetain(a1);
  }

  else
  {
    v14 = 0;
  }

  *v13 = v14;
  if (a2)
  {
    v15 = CFRetain(a2);
  }

  else
  {
    v15 = 0;
  }

  v13[1] = v15;
  v13[2] = a3;
  v13[3] = a4;
  *(v13 + 8) = 0;
  v16 = APSDispatchSectionEnterWithPriorityDispatcher();
  if (v16)
  {
    v17 = v16;
    bufferedAudioEngine_Resume_cold_2();
LABEL_22:
    if (a3)
    {
      a3(a1, v17, a4);
    }
  }
}

void bufferedAudioEngine_Suspend(const void *a1, const void *a2, void (*a3)(const void *, uint64_t, uint64_t), uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_Suspend_cold_1(a1);
  }

  v7 = malloc_type_malloc(0x28uLL, 0x10E0040139F2759uLL);
  if (v7)
  {
    v8 = v7;
    if (a1)
    {
      v9 = CFRetain(a1);
    }

    else
    {
      v9 = 0;
    }

    *v8 = v9;
    if (a2)
    {
      v10 = CFRetain(a2);
    }

    else
    {
      v10 = 0;
    }

    v8[1] = v10;
    v8[2] = a3;
    v8[3] = a4;
    *(v8 + 8) = 0;
    v11 = APSDispatchSectionEnterWithPriorityDispatcher();
    if (!v11)
    {
      return;
    }

    v12 = v11;
    bufferedAudioEngine_Suspend_cold_2();
  }

  else
  {
    bufferedAudioEngine_Suspend_cold_3();
    v12 = 4294951816;
  }

  if (a3)
  {

    a3(a1, v12, a4);
  }
}

void bufferedAudioEngine_SetEndpointStream(const void *a1, const void *a2, void (*a3)(const void *, uint64_t, uint64_t), uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_SetEndpointStream_cold_1();
  }

  kdebug_trace();
  v8 = LogCategoryCopyOSLogHandle();
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = MEMORY[0x277D86220];
  }

  v10 = CUObfuscatedPtr();
  if (v10)
  {
    v11 = v10;
    if (os_signpost_enabled(v9))
    {
      v18[0] = 0;
      _os_signpost_emit_with_name_impl(&dword_221FFA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v11, "AIRPLAY_SIGNPOST_AUDIOENGINE_SETENDPOINTSTREAM_INTERVAL", &unk_2222A918B, v18, 2u);
    }
  }

  v12 = malloc_type_malloc(0x28uLL, 0x10A0040DE786E1EuLL);
  if (!v12)
  {
    bufferedAudioEngine_SetEndpointStream_cold_3();
    v17 = 4294951816;
    goto LABEL_22;
  }

  v13 = v12;
  if (a1)
  {
    v14 = CFRetain(a1);
  }

  else
  {
    v14 = 0;
  }

  *v13 = v14;
  if (a2)
  {
    v15 = CFRetain(a2);
  }

  else
  {
    v15 = 0;
  }

  v13[1] = v15;
  v13[2] = a3;
  v13[3] = a4;
  *(v13 + 8) = 0;
  v16 = APSDispatchSectionEnterWithPriorityDispatcher();
  if (v16)
  {
    v17 = v16;
    bufferedAudioEngine_SetEndpointStream_cold_2();
LABEL_22:
    if (a3)
    {
      a3(a1, v17, a4);
    }
  }
}

uint64_t bufferedAudioEngine_Flush()
{
  CMBaseObjectGetDerivedStorage();
  FigCFDictionaryGetCMTimeIfPresent();
  CFDictionaryGetInt64();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_Flush_cold_1();
  }

  v0 = APSPriorityDispatcherSyncTask();
  if (v0)
  {
    bufferedAudioEngine_Flush_cold_2();
  }

  return v0;
}

uint64_t bufferedAudioEngine_FlushWithinSampleRange(uint64_t a1, __int128 *a2)
{
  CMBaseObjectGetDerivedStorage();
  v10 = a1;
  v4 = a2[1];
  v11 = *a2;
  v12 = v4;
  v13 = a2[2];
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    if (a1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    *&time.start.value = *a2;
    time.start.epoch = *(a2 + 2);
    CMTimeGetSeconds(&time.start);
    v5 = a2[1];
    *&time.start.value = *a2;
    *&time.start.epoch = v5;
    *&time.duration.timescale = a2[2];
    CMTimeRangeGetEnd(&v9, &time);
    CMTimeGetSeconds(&v9);
    LogPrintF();
  }

  v6 = APSPriorityDispatcherSyncTask();
  if (v6)
  {
    bufferedAudioEngine_FlushWithinSampleRange_cold_1();
  }

  return v6;
}

void bufferedAudioEngine_SetRateAndAnchorTime(const void *a1, CMTime *a2, CMTime *a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    if (a1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    time = *a2;
    CMTimeGetSeconds(&time);
    time = *a3;
    CMTimeGetSeconds(&time);
    LogPrintF();
  }

  if (a7 == 0.0 || a7 == 1.0)
  {
    v15 = malloc_type_calloc(1uLL, 0x58uLL, 0x10A0040F3A75D44uLL);
    if (v15)
    {
      v16 = v15;
      if (a1)
      {
        v17 = CFRetain(a1);
      }

      else
      {
        v17 = 0;
      }

      *v16 = v17;
      *(v16 + 1) = a7;
      v18 = *&a2->value;
      *(v16 + 4) = a2->epoch;
      *(v16 + 1) = v18;
      epoch = a3->epoch;
      *(v16 + 40) = *&a3->value;
      *(v16 + 7) = epoch;
      *(v16 + 8) = a4;
      *(v16 + 9) = a5;
      if (a7 != 1.0 || !a6)
      {
        APSPriorityDispatcherAsyncEnforcePriorityF();
        return;
      }

      MutableCopy = FigCFDictionaryCreateMutableCopy();
      if (MutableCopy)
      {
        v21 = MutableCopy;
        FigCFDictionaryGetValue();
        v22 = FigCFDictionaryCreateMutableCopy();
        if (v22)
        {
          v23 = v22;
          mach_absolute_time();
          FigCFDictionarySetInt64();
          FigCFDictionarySetValue();
          *(v16 + 10) = CFRetain(v21);
          APSPriorityDispatcherAsyncEnforcePriorityF();
          CFRelease(v23);
          CFRelease(v21);
          return;
        }

        bufferedAudioEngine_SetRateAndAnchorTime_cold_2(v21);
      }

      else
      {
        bufferedAudioEngine_SetRateAndAnchorTime_cold_3();
      }

      if (*v16)
      {
        CFRelease(*v16);
      }

      v24 = *(v16 + 10);
      if (v24)
      {
        CFRelease(v24);
      }

      free(v16);
    }

    else
    {
      bufferedAudioEngine_SetRateAndAnchorTime_cold_4();
    }
  }

  else
  {
    bufferedAudioEngine_SetRateAndAnchorTime_cold_1();
  }

  if (a4)
  {
    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      bufferedAudioEngine_SetRateAndAnchorTime_cold_5();
    }

    bufferedAudioEngine_callSetRateAndAnchorTimeClientCompletionCallback(a1, 4294949714, MEMORY[0x277CC0898], MEMORY[0x277CC0898], 0);
  }
}

uint64_t bufferedAudioEngine_SetEndOfSiriTTSUtteranceMediaTime()
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_SetEndOfSiriTTSUtteranceMediaTime_cold_1();
  }

  v0 = APSPriorityDispatcherSyncTask();
  if (v0)
  {
    bufferedAudioEngine_SetEndOfSiriTTSUtteranceMediaTime_cold_2();
  }

  return v0;
}

uint64_t bufferedAudioEngine_ApplyVolumeFade()
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_ApplyVolumeFade_cold_1();
  }

  v0 = APSPriorityDispatcherSyncTask();
  if (v0)
  {
    bufferedAudioEngine_ApplyVolumeFade_cold_2();
  }

  return v0;
}

void bufferedAudioEngine_resumeInternalStage1(uint64_t *a1)
{
  v129 = *MEMORY[0x277D85DE8];
  v114 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v112 = 0;
  cf = 0;
  v111 = 0;
  valuePtr = 0;
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_resumeInternalStage1_cold_1();
  }

  kdebug_trace();
  if (*(DerivedStorage + 528))
  {
    goto LABEL_241;
  }

  v3 = a1[1];
  v4 = MEMORY[0x277CBECE8];
  if (!v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    Value = 0;
    goto LABEL_20;
  }

  Value = CFDictionaryGetValue(v3, *MEMORY[0x277CD6278]);
  v7 = CFDictionaryGetValue(a1[1], *MEMORY[0x277CD6288]);
  v6 = CFDictionaryGetValue(a1[1], *MEMORY[0x277CD6298]);
  if (!CFDictionaryGetValue(a1[1], *MEMORY[0x277CD6290]))
  {
    goto LABEL_12;
  }

  v114 = APSAudioFormatDescriptionCreateWithFigEndpointStreamAudioFormatDescription();
  if (v114)
  {
    bufferedAudioEngine_resumeInternalStage1_cold_2();
LABEL_241:
    v5 = 0;
    goto LABEL_129;
  }

  *&v124 = 0;
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_resumeInternalStage1_cold_3(DerivedStorage + 1008);
    if (!Value)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

LABEL_12:
  if (!Value)
  {
LABEL_13:
    v5 = 0;
    goto LABEL_20;
  }

LABEL_15:
  v9 = *(DerivedStorage + 384);
  if (!v9)
  {
    bufferedAudioEngine_resumeInternalStage1_cold_8(&v114);
LABEL_245:
    v5 = 0;
    goto LABEL_246;
  }

  if (CFDataGetLength(v9) != 32)
  {
    bufferedAudioEngine_resumeInternalStage1_cold_4(&v114);
    goto LABEL_245;
  }

  BytePtr = CFDataGetBytePtr(*(DerivedStorage + 384));
  v108 = *BytePtr;
  v109 = *(BytePtr + 1);
  if ((v108 & *(&v108 + 1) & v109 & *(&v109 + 1)) == 0xFFFFFFFFFFFFFFFFLL)
  {
    bufferedAudioEngine_resumeInternalStage1_cold_7(&v114);
    goto LABEL_245;
  }

  CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  v5 = CFStringCreateF();
  if (v114)
  {
    bufferedAudioEngine_resumeInternalStage1_cold_5();
    goto LABEL_129;
  }

  v124 = v108;
  v125 = v109;
  v114 = FigAudioSessionCreateWithAVAudioSessionSiblingForAudioSessionID();
  if (v114)
  {
    bufferedAudioEngine_resumeInternalStage1_cold_6();
    goto LABEL_129;
  }

LABEL_20:
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    if (*a1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    LogPrintF();
  }

  if (APSSettingsGetIntWithDefault())
  {
    if (v7)
    {
      v11 = APSGetFBOPropertyInt64() != 0;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  *(DerivedStorage + 576) = v11;
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_resumeInternalStage1_cold_9();
  }

  if (*(DerivedStorage + 64))
  {
    if (v7)
    {
      v13 = APSGetFBOPropertyInt64();
      v12 = DerivedStorage + 577;
      *(DerivedStorage + 577) = v13 != 0;
      if (!v13)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v12 = DerivedStorage + 577;
      *(DerivedStorage + 577) = 1;
    }

    Mutable = CFDictionaryCreateMutable(*v4, 0, MEMORY[0x277CBF138], &bufferedAudioEngine_protocolDriverDescriptorDictionaryCallbacks);
    *(DerivedStorage + 496) = Mutable;
    if (!Mutable)
    {
      bufferedAudioEngine_resumeInternalStage1_cold_10(&v114);
      goto LABEL_246;
    }
  }

  else
  {
    v12 = DerivedStorage + 577;
    *(DerivedStorage + 577) = 0;
  }

LABEL_41:
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_resumeInternalStage1_cold_11();
  }

  if (!v6)
  {
    bufferedAudioEngine_resumeInternalStage1_cold_44();
    goto LABEL_235;
  }

  v102 = v12;
  v15 = *(DerivedStorage + 552);
  *(DerivedStorage + 552) = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(DerivedStorage + 560);
  v17 = cf;
  *(DerivedStorage + 560) = cf;
  if (v17)
  {
    CFRetain(v17);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  v18 = *(DerivedStorage + 568);
  v19 = v112;
  *(DerivedStorage + 568) = v112;
  if (v19)
  {
    CFRetain(v19);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  v20 = *(DerivedStorage + 1480);
  v21 = v111;
  *(DerivedStorage + 1480) = v111;
  if (v21)
  {
    CFRetain(v21);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  v22 = CMBaseObjectGetDerivedStorage();
  *&v124 = 0;
  v23 = CFGetTypeID(v6);
  if (v23 == CFArrayGetTypeID())
  {
    v24 = APSAudioFormatDescriptionListCreateWithFigEndpointStreamAudioFormatDescriptionArray();
    if (v24)
    {
      v25 = v24;
      bufferedAudioEngine_resumeInternalStage1_cold_13();
    }

    else if (APSAudioFormatDescriptionListSupports44kHz() || APSAudioFormatDescriptionListSupports48kHz())
    {
      if (!*(v22 + 528) && !*(v22 + 1008))
      {
        DefaultFormat = APSAudioFormatDescriptionListGetDefaultFormat();
        if (DefaultFormat)
        {
          DefaultFormat = CFRetain(DefaultFormat);
        }

        *(v22 + 1008) = DefaultFormat;
      }

      v27 = *(v22 + 1000);
      v28 = v124;
      *(v22 + 1000) = v124;
      if (v28)
      {
        CFRetain(v28);
      }

      if (v27)
      {
        CFRelease(v27);
      }

      v122.value = 0;
      if (gLogCategory_APAudioEngineBuffered < 51)
      {
        if (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize())
        {
          bufferedAudioEngine_resumeInternalStage1_cold_14(v22 + 1000);
        }

        v122.value = 0;
        if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
        {
          bufferedAudioEngine_resumeInternalStage1_cold_15();
        }
      }

      v25 = 0;
    }

    else
    {
      v122.value = 0;
      if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        bufferedAudioEngine_resumeInternalStage1_cold_16(&v124);
      }

      v25 = -15490;
    }
  }

  else
  {
    bufferedAudioEngine_resumeInternalStage1_cold_12();
    v25 = -15481;
  }

  if (v124)
  {
    CFRelease(v124);
  }

  v114 = v25;
  if (v25)
  {
    bufferedAudioEngine_resumeInternalStage1_cold_17();
    goto LABEL_129;
  }

  if (!APSAudioFormatDescriptionListContainsFormat())
  {
    bufferedAudioEngine_resumeInternalStage1_cold_43();
LABEL_235:
    if (!v124)
    {
      goto LABEL_130;
    }

    goto LABEL_246;
  }

  v104 = v5;
  v105 = DerivedStorage;
  v29 = *a1;
  v122.value = 0;
  *&v122.timescale = &v122;
  v122.epoch = 0x2000000000;
  v123 = 0;
  v106 = v29;
  CMBaseObjectGetDerivedStorage();
  AudioFormatIndex = 0;
  v121 = 0;
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  v116 = 0;
  v117 = &v116;
  v118 = 0x2000000000;
  v119 = 256000;
  v31 = *v4;
  v32 = CFDictionaryCreateMutable(*v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v32)
  {
    APSRemoteConfigGetShared();
    v33 = APSRemoteConfigCopyValue();
    v34 = APSAudioFormatDescriptionListCopyAudioFormatDescriptionsArray();
    *(*&v122.timescale + 24) = v34;
    if (v34)
    {
      bufferedAudioEngine_resumeInternalStage1_cold_18();
    }

    else
    {
      v103 = a1;
      Count = CFArrayGetCount(v121);
      if (Count >= 1)
      {
        v36 = Count;
        v37 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v121, v37);
          AudioFormatIndex = APSAudioFormatDescriptionGetAudioFormatIndex();
          v39 = v117;
          *(v117 + 6) = 256000;
          if (CFPreferenceNumberWithDefault)
          {
            *(v39 + 6) = CFPreferenceNumberWithDefault;
          }

          else
          {
            ChannelCount = APSAudioFormatDescriptionGetChannelCount();
            v41 = 256000;
            if (ChannelCount != 1)
            {
              if (APSAudioFormatDescriptionGetChannelCount() == 2)
              {
                v41 = 256000;
              }

              else
              {
                v41 = 512000;
              }
            }

            v39 = v117;
            *(v117 + 6) = v41;
            if (v33)
            {
              *&v124 = MEMORY[0x277D85DD0];
              *(&v124 + 1) = 0x40000000;
              *&v125 = __bufferedAudioEngine_createTargetVBROptions_block_invoke;
              *(&v125 + 1) = &unk_27849D8F8;
              v126 = &v122;
              v127 = &v116;
              v128 = ValueAtIndex;
              CFDictionaryApplyBlock();
              *(*&v122.timescale + 24) = 0;
              v39 = v117;
            }
          }

          v42 = CFNumberCreate(v31, kCFNumberSInt32Type, v39 + 3);
          if (!v42)
          {
            bufferedAudioEngine_resumeInternalStage1_cold_20(&v122.timescale);
            goto LABEL_121;
          }

          v43 = v42;
          v44 = CFNumberCreate(v31, kCFNumberSInt64Type, &AudioFormatIndex);
          if (!v44)
          {
            break;
          }

          v45 = v44;
          v115 = 0;
          if (gLogCategory_APAudioEngineBuffered <= 30 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
          {
            APSAudioFormatDescriptionCopyDebugString();
            if (gLogCategory_APAudioEngineBuffered <= 30 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
            {
              if (v106)
              {
                CMBaseObjectGetDerivedStorage();
              }

              LogPrintF();
            }

            if (v115)
            {
              CFRelease(v115);
            }
          }

          CFDictionaryAddValue(v32, v45, v43);
          CFRelease(v43);
          CFRelease(v45);
          if (v36 == ++v37)
          {
            goto LABEL_121;
          }
        }

        bufferedAudioEngine_resumeInternalStage1_cold_19();
      }

LABEL_121:
      a1 = v103;
    }
  }

  else
  {
    bufferedAudioEngine_resumeInternalStage1_cold_21(&v122.timescale);
    v33 = 0;
  }

  v5 = v104;
  if (v121)
  {
    CFRelease(v121);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  _Block_object_dispose(&v116, 8);
  _Block_object_dispose(&v122, 8);
  *(v105 + 584) = v32;
  v46 = *(v105 + 328);
  v47 = *a1;
  v48 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (!v48)
  {
    v114 = -12782;
LABEL_128:
    bufferedAudioEngine_resumeInternalStage1_cold_42();
    goto LABEL_129;
  }

  v114 = v48(v46, v47);
  if (v114)
  {
    goto LABEL_128;
  }

  if (!*(v105 + 480))
  {
    CMBaseObject = APSNetworkClockGetCMBaseObject();
    v51 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v51)
    {
      v114 = -12782;
LABEL_144:
      bufferedAudioEngine_resumeInternalStage1_cold_41();
      goto LABEL_129;
    }

    v114 = v51(CMBaseObject, *MEMORY[0x277CEA258], v31, v105 + 480);
    if (v114)
    {
      goto LABEL_144;
    }

    CMClockGetTime(&v124, *(v105 + 480));
    *(v105 + 1560) = v124;
    *(v105 + 1576) = v125;
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&v124, HostTimeClock);
    *(v105 + 1608) = v124;
    *(v105 + 1624) = v125;
    v53 = *(v105 + 328);
    v54 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v54)
    {
      v54(v53, v105 + 1536);
    }
  }

  if (*(v105 + 1072))
  {
    v55 = v102;
    if (v114)
    {
      bufferedAudioEngine_resumeInternalStage1_cold_22();
      goto LABEL_129;
    }
  }

  else
  {
    v114 = APSWirelessCoexManagerCreateWithOptions();
    v55 = v102;
    if (v114)
    {
      if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        bufferedAudioEngine_resumeInternalStage1_cold_23(a1);
      }

      v114 = 0;
    }
  }

  if (!*v55)
  {
    v56 = *a1;
    v57 = CMBaseObjectGetDerivedStorage();
    v122.value = 0;
    RandomBytes();
    v58 = CFDataCreate(v31, &v124, 32);
    v59 = APSCryptorChaCha20Poly1305Create();
    if (v59)
    {
      bufferedAudioEngine_resumeInternalStage1_cold_24();
      if (!v58)
      {
        goto LABEL_172;
      }
    }

    else
    {
      if (gLogCategory_APAudioEngineBuffered <= 40 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        bufferedAudioEngine_resumeInternalStage1_cold_25(v56);
      }

      v60 = *(v57 + 600);
      *(v57 + 600) = v58;
      if (v58)
      {
        CFRetain(v58);
      }

      if (v60)
      {
        CFRelease(v60);
      }

      v61 = *(v57 + 608);
      v62 = v122.value;
      *(v57 + 608) = v122.value;
      if (v62)
      {
        CFRetain(v62);
        if (!v61)
        {
LABEL_170:
          if (!v58)
          {
            goto LABEL_172;
          }

          goto LABEL_171;
        }
      }

      else if (!v61)
      {
        goto LABEL_170;
      }

      CFRelease(v61);
      if (!v58)
      {
LABEL_172:
        if (v122.value)
        {
          CFRelease(v122.value);
        }

        v114 = v59;
        if (v59)
        {
          bufferedAudioEngine_resumeInternalStage1_cold_26();
          goto LABEL_129;
        }

        goto LABEL_177;
      }
    }

LABEL_171:
    CFRelease(v58);
    goto LABEL_172;
  }

  Null = APSCryptorGetNull();
  *(v105 + 608) = CFRetain(Null);
LABEL_177:
  v64 = *(v105 + 576);
  v65 = CMBaseObjectGetDerivedStorage();
  if (*(v65 + 616))
  {
    goto LABEL_186;
  }

  v66 = v65;
  APSSettingsIsFeatureEnabled();
  *(v66 + 56) = FigGetCFPreferenceNumberWithDefault();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_resumeInternalStage1_cold_27();
  }

  v67 = *(v66 + 56);
  DefaultAirPlayMallocZone = APSAllocatorGetDefaultAirPlayMallocZone();
  DefaultAirPlayMallocZoneCFAllocator = APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator();
  v70 = v64 ? bufferedAudioEngine_messageRingSetMessageSequenceNumberCallbackAPAP : bufferedAudioEngine_messageRingSetMessageSequenceNumberCallbackRTP;
  v71 = APMessageRingBufferedCreate(v31, v67, DefaultAirPlayMallocZone, bufferedAudioEngine_createMessageBackingBBuf, DefaultAirPlayMallocZoneCFAllocator, v70, 0, (v66 + 616));
  if (!v71)
  {
LABEL_186:
    v114 = 0;
    v72 = *a1;
    v73 = CMBaseObjectGetDerivedStorage();
    v74 = APSRTCReportingAgentCreate();
    v75 = MEMORY[0x277CC0898];
    v76 = MEMORY[0x277CC08F0];
    if (v74)
    {
      if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        bufferedAudioEngine_resumeInternalStage1_cold_29(v72);
      }
    }

    else
    {
      if (gLogCategory_APAudioEngineBuffered <= 40 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        bufferedAudioEngine_resumeInternalStage1_cold_30();
      }

      if (APSAudioHoseMetricCollectorCreate() && gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        bufferedAudioEngine_resumeInternalStage1_cold_31(v72);
      }

      *(v73 + 1528) = 0;
      *(v73 + 1320) = *v75;
      *(v73 + 1336) = *(v75 + 2);
      v107 = *v76;
      *(v73 + 1344) = *v76;
      v77 = *(v76 + 2);
      *(v73 + 1360) = v77;
      *(v73 + 1312) = 0;
      APSThreadSafeDictionaryCreate();
      if (*(v73 + 1368))
      {
        v78 = CFArrayCreateMutable(v31, 0, MEMORY[0x277CBF128]);
        *(v73 + 1376) = v78;
        if (v78)
        {
          *(v73 + 1384) = v107;
          *(v73 + 1400) = v77;
          *(v73 + 1408) = v107;
          *(v73 + 1424) = v77;
          v79 = CFDictionaryCreateMutable(v31, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          *(v73 + 1432) = v79;
          if (v79)
          {
            v80 = CFDictionaryCreateMutable(v31, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            *(v73 + 1440) = v80;
            if (v80)
            {
              v81 = CFDictionaryCreateMutable(v31, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              *(v73 + 1448) = v81;
              if (v81)
              {
                *(v73 + 1464) = 0u;
                v82 = CFArrayCreateMutable(v31, 0, MEMORY[0x277CBF128]);
                *(v73 + 1496) = v82;
                if (v82)
                {
                  *(v73 + 1504) = 0u;
                  APSCopyClusterInfo();
                }
              }
            }
          }
        }
      }
    }

    v114 = 0;
    v83 = *a1;
    v84 = CMBaseObjectGetDerivedStorage();
    v124 = *v76;
    *&v125 = *(v76 + 2);
    bufferedAudioEngine_updateMaxAudioBurstIfNecessary(v83);
    v85 = FigGetCFPreferenceNumberWithDefault();
    CMTimeMake(&v122, v85, 1000);
    *(v84 + 28) = v122;
    bufferedAudioEngine_generateNewFirstRemoteMediaTime(v83, &v124);
    *(v84 + 992) = 1;
    *(v84 + 653) = 0;
    v86 = v124;
    *(v84 + 756) = v124;
    v87 = v125;
    *(v84 + 772) = v125;
    *(v84 + 780) = v86;
    *(v84 + 796) = v87;
    v88 = *v75;
    *(v84 + 804) = *v75;
    v89 = *(v75 + 2);
    *(v84 + 820) = v89;
    *(v84 + 724) = v89;
    *(v84 + 708) = v88;
    *(v84 + 732) = v88;
    *(v84 + 748) = v89;
    *(v84 + 896) = 0xBFF0000000000000;
    *(v84 + 840) = 0;
    *(v84 + 882) = 0;
    *(v84 + 832) = 0;
    *(v84 + 1064) = 0;
    bufferedAudioEngine_updatePlaybackState(v83, 3);
    bufferedAudioEngine_updateNextTranscodeBurstTimeAndUnRest();
    APSTimedInfoManagerCreate();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    *(v84 + 1032) = 0u;
    if (*(v84 + 952))
    {
      bufferedAudioEngine_callSetRateAndAnchorTimeClientCompletionCallback(v83, 4294949714, MEMORY[0x277CC0898], MEMORY[0x277CC0898], 0);
      *(v84 + 952) = 0;
      *(v84 + 960) = 0;
    }

    RandomBytes();
    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      bufferedAudioEngine_resumeInternalStage1_cold_32();
    }

    bufferedAudioEngine_readSoundCheck(v83);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v83, bufferedAudioEngine_soundCheckChanged, @"com.apple.mobileipod-prefsChanged", 0, 0);
    v114 = 0;
    v91 = CMBaseObjectGetDerivedStorage();
    v92 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    if (v92)
    {
      v93 = v92;
      *&v124 = v92;
      *(&v124 + 1) = bufferedAudioEngine_weakAudioTimer;
      *&v125 = MEMORY[0x277CBE550];
      v94 = APSPriorityDispatchSourceCreate();
      if (v94)
      {
        v101 = v94;
        bufferedAudioEngine_resumeInternalStage1_cold_33();
LABEL_255:
        CFRelease(v93);
        goto LABEL_258;
      }

      v95 = APSPriorityDispatchSourceSetTimer();
      if (v95)
      {
        v101 = v95;
        bufferedAudioEngine_resumeInternalStage1_cold_34();
      }

      else
      {
        if (gLogCategory_APAudioEngineBuffered <= 40 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
        {
          bufferedAudioEngine_resumeInternalStage1_cold_35();
        }

        v96 = APSPriorityDispatchSourceResume();
        if (v96)
        {
          v101 = v96;
          bufferedAudioEngine_resumeInternalStage1_cold_36();
        }

        else
        {
          v97 = FigCFWeakReferenceHolderCreateWithReferencedObject();
          if (v97)
          {
            v93 = v97;
            v122.value = v97;
            *&v122.timescale = bufferedAudioEngine_weakPriorityTimer;
            v122.epoch = MEMORY[0x277CBE550];
            v98 = APSPriorityDispatchSourceCreate();
            if (!v98)
            {
              v99 = APSPriorityDispatchSourceSetTimer();
              if (v99)
              {
                v101 = v99;
                bufferedAudioEngine_resumeInternalStage1_cold_38();
              }

              else
              {
                v100 = APSPriorityDispatchSourceResume();
                if (!v100)
                {
                  *(v91 + 544) = 1;
                  v114 = 0;
                  bufferedAudioEngine_markSessionStartedForRTC();
                  APSOasisCPUFloorRaiserRetainAssertion();
                  *(v105 + 528) = 1;
                  goto LABEL_129;
                }

                v101 = v100;
                bufferedAudioEngine_resumeInternalStage1_cold_39();
              }

              goto LABEL_258;
            }

            v101 = v98;
            bufferedAudioEngine_resumeInternalStage1_cold_37();
            goto LABEL_255;
          }

          v101 = -72090;
          bufferedAudioEngine_resumeInternalStage1_cold_40();
        }
      }
    }

    else
    {
      v101 = -72090;
      APSLogErrorAt();
    }

LABEL_258:
    v114 = v101;
    APSLogErrorAt();
    goto LABEL_129;
  }

  bufferedAudioEngine_resumeInternalStage1_cold_28(v71, &v114);
LABEL_129:
  if (!v114)
  {
LABEL_130:
    v49 = 0;
    goto LABEL_131;
  }

LABEL_246:
  bufferedAudioEngine_sendSessionFailureEvent(*a1, @"Session failed to resume");
  bufferedAudioEngine_tearDownResumedStateAndStructuresInternal(*a1, 0);
  v49 = v114;
LABEL_131:
  *(a1 + 8) = v49;
  APSPriorityDispatcherAsyncF();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v112)
  {
    CFRelease(v112);
  }

  if (v111)
  {
    CFRelease(v111);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

void bufferedAudioEngine_resumeInternalStageEnd(void *a1)
{
  CMBaseObjectGetDerivedStorage();
  v2 = a1[2];
  if (v2)
  {
    v2(*a1, *(a1 + 8), a1[3]);
  }

  APSDispatchSectionLeave();
  v3 = LogCategoryCopyOSLogHandle();
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277D86220];
  }

  v6 = CUObfuscatedPtr();
  if (v6)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *v9 = 0;
      _os_signpost_emit_with_name_impl(&dword_221FFA000, v5, OS_SIGNPOST_INTERVAL_END, v7, "AIRPLAY_SIGNPOST_AUDIOENGINE_RESUME_INTERVAL", &unk_2222A918B, v9, 2u);
    }
  }

  if (v4)
  {
    os_release(v4);
  }

  kdebug_trace();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_resumeInternalStageEnd_cold_1(a1);
  }

  v8 = a1[1];
  if (v8)
  {
    CFRelease(v8);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

_WORD *bufferedAudioEngine_protocolDriverDescriptorDictionaryRetain(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040FFEA222EuLL);
    v4 = *a2;
    if (*a2)
    {
      v4 = CFRetain(v4);
    }

    *v3 = v4;
    v3[4] = *(a2 + 8);
  }

  else
  {
    bufferedAudioEngine_protocolDriverDescriptorDictionaryRetain_cold_1();
    return 0;
  }

  return v3;
}

void bufferedAudioEngine_protocolDriverDescriptorDictionaryRelease(int a1, CFTypeRef *a2)
{
  if (a2)
  {
    if (*a2)
    {
      CFRelease(*a2);
    }

    free(a2);
  }

  else
  {
    bufferedAudioEngine_protocolDriverDescriptorDictionaryRelease_cold_1();
  }
}

uint64_t __bufferedAudioEngine_createTargetVBROptions_block_invoke(uint64_t a1)
{
  v2 = CFGetInt64Ranged();
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    return __bufferedAudioEngine_createTargetVBROptions_block_invoke_cold_1();
  }

  if (APSAudioFormatDescriptionGetChannelCount() != v2)
  {
    return __bufferedAudioEngine_createTargetVBROptions_block_invoke_cold_2();
  }

  *(*(*(a1 + 40) + 8) + 24) = CFGetInt64Ranged();
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {
    return __bufferedAudioEngine_createTargetVBROptions_block_invoke_cold_3();
  }

  return result;
}

uint64_t bufferedAudioEngine_createMessageBackingBBuf(CFAllocatorRef blockAllocator, size_t blockLength, CMBlockBufferRef *a3)
{
  blockBufferOut = 0;
  v4 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x277CBECE8], 0, blockLength, blockAllocator, 0, 0, blockLength, 1u, &blockBufferOut);
  if (v4)
  {
    bufferedAudioEngine_createMessageBackingBBuf_cold_1();
  }

  else
  {
    *a3 = blockBufferOut;
  }

  return v4;
}

uint64_t bufferedAudioEngine_generateNewFirstRemoteMediaTime@<X0>(uint64_t a1@<X0>, CMTime *a2@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = MEMORY[0x277CC0898];
  *&a2->value = *MEMORY[0x277CC0898];
  a2->epoch = *(v5 + 16);
  if (bufferedAudioEngine_generateNewFirstRemoteMediaTime_onceToken != -1)
  {
    bufferedAudioEngine_generateNewFirstRemoteMediaTime_cold_1();
  }

  SampleRateFromTransportAudioFormat = bufferedAudioEngine_getSampleRateFromTransportAudioFormat();
  if (bufferedAudioEngine_generateNewFirstRemoteMediaTime_prefsDeltaFromRolloverSecs)
  {
    if (bufferedAudioEngine_generateNewFirstRemoteMediaTime_prefsUseRandomizedOffset)
    {
      RandomBytes();
      v7 = vcvtd_n_f64_s32(bufferedAudioEngine_generateNewFirstRemoteMediaTime_prefsDeltaFromRolloverSecs, 1uLL);
      v8 = (0u % bufferedAudioEngine_generateNewFirstRemoteMediaTime_prefsDeltaFromRolloverSecs) + v7;
    }

    else
    {
      v8 = bufferedAudioEngine_generateNewFirstRemoteMediaTime_prefsDeltaFromRolloverSecs;
    }

    result = CMTimeMake(a2, 0xFFFFFFFFLL - (v8 * SampleRateFromTransportAudioFormat), SampleRateFromTransportAudioFormat);
    if (gLogCategory_APAudioEngineBuffered <= 50)
    {
      if (gLogCategory_APAudioEngineBuffered != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = bufferedAudioEngine_generateNewFirstRemoteMediaTime_cold_2(a1);
      }
    }
  }

  else
  {
    RandomBytes();
    result = CMTimeMake(a2, 0, SampleRateFromTransportAudioFormat);
  }

  if (*(DerivedStorage + 1800))
  {
    if (gLogCategory_APAudioEngineBuffered <= 50)
    {
      if (gLogCategory_APAudioEngineBuffered != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = bufferedAudioEngine_generateNewFirstRemoteMediaTime_cold_3(a1);
      }
    }

    v10 = MEMORY[0x277CC08F0];
    *&a2->value = *MEMORY[0x277CC08F0];
    a2->epoch = *(v10 + 16);
  }

  return result;
}

uint64_t bufferedAudioEngine_readSoundCheck(uint64_t a1)
{
  CFPreferencesSynchronize(@"com.apple.mobileipod", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  result = FigGetCFPreferenceBooleanWithDefault();
  gSoundCheckEnabled = result;
  if (gLogCategory_APAudioEngineBuffered <= 50)
  {
    if (gLogCategory_APAudioEngineBuffered != -1)
    {
      return bufferedAudioEngine_readSoundCheck_cold_1(a1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return bufferedAudioEngine_readSoundCheck_cold_1(a1);
    }
  }

  return result;
}

uint64_t bufferedAudioEngine_soundCheckChanged(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    CFRetain(a2);
  }

  return APSPriorityDispatcherAsync();
}

uint64_t __bufferedAudioEngine_generateNewFirstRemoteMediaTime_block_invoke()
{
  bufferedAudioEngine_generateNewFirstRemoteMediaTime_prefsDeltaFromRolloverSecs = FigGetCFPreferenceNumberWithDefault();
  result = FigGetCFPreferenceNumberWithDefault();
  bufferedAudioEngine_generateNewFirstRemoteMediaTime_prefsUseRandomizedOffset = result;
  return result;
}

void bufferedAudioEngine_weakAudioTimer()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    bufferedAudioEngine_audioTimer();

    CFRelease(v1);
  }
}

void bufferedAudioEngine_weakPriorityTimer()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    bufferedAudioEngine_updateDataProcessingTargetQueueInternal(v0);

    CFRelease(v1);
  }
}

__n128 __bufferedAudioEngine_audioTimer_block_invoke(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v27 = 0;
  v26 = **&MEMORY[0x277CC0898];
  v25 = v26;
  MessageAtIndex = APMessageRingBufferedGetMessageAtIndex();
  if (!MessageAtIndex)
  {
LABEL_8:
    if (*MEMORY[0x277CEA028] != a2)
    {
      return result;
    }

    v13 = *(a1 + 32);
    time1 = *(v13 + 1164);
    v24 = *(v13 + 504);
    if (!CMTimeCompare(&time1, &v24))
    {
      return result;
    }

    v14 = *(a1 + 32);
    if (*(v14 + 516))
    {
      v16 = *(v14 + 1176);
      v17 = *a3;
      v18 = *(CMBaseObjectGetVTable() + 16);
      if ((v16 & 1) == 0)
      {
        if (v18)
        {
          v19 = *(v18 + 80);
          if (v19)
          {
            v19(v17);
          }
        }

        goto LABEL_27;
      }

      if (v18)
      {
        v20 = *(v18 + 80);
        if (v20)
        {
          v20(v17);
        }
      }

      v15 = *a3;
      v14 = *(a1 + 32);
    }

    else
    {
      v15 = *a3;
    }

    v24 = *(v14 + 1164);
    v21 = *(CMBaseObjectGetVTable() + 16);
    if (v21)
    {
      v22 = *(v21 + 72);
      if (v22)
      {
        time1 = v24;
        v22(v15, &time1);
      }
    }

LABEL_27:
    v23 = *(a1 + 32);
    result = *(v23 + 1164);
    *(v23 + 504) = result;
    *(v23 + 520) = *(v23 + 1180);
    return result;
  }

  v8 = MessageAtIndex;
  while (1)
  {
    v9 = *a3;
    v24 = v25;
    v10 = *(CMBaseObjectGetVTable() + 16);
    if (!v10)
    {
      break;
    }

    v11 = *(v10 + 56);
    if (!v11)
    {
      break;
    }

    time1 = v24;
    v12 = v11(v9, v8, &time1);
    if (v12 == -72472)
    {
      goto LABEL_8;
    }

    if (v12)
    {
      break;
    }

    ++*(a3 + 4);
    v8 = APMessageRingBufferedGetMessageAtIndex();
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  APSLogErrorAt();
  if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    __bufferedAudioEngine_audioTimer_block_invoke_cold_1(a1);
  }

  return result;
}