void urlProcessor_freeCustomURLRequestListEntry(int a1, void *a2)
{
  if (a2[6])
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  v3 = a2[3];
  if (v3)
  {
    CFRelease(v3);
    a2[3] = 0;
  }

  v4 = a2[4];
  if (v4)
  {
    CFRelease(v4);
    a2[4] = 0;
  }

  v5 = a2[5];
  if (v5)
  {
    CFRelease(v5);
    a2[5] = 0;
  }

  v6 = a2[6];
  if (v6)
  {
    CFRelease(v6);
  }

  free(a2);
}

void urlProcessor_freeContentKeyRequestListEntry(int a1, void *a2)
{
  if (a2[4])
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  v3 = a2[3];
  if (v3)
  {
    CFRelease(v3);
    a2[3] = 0;
  }

  v4 = a2[4];
  if (v4)
  {
    CFRelease(v4);
  }

  free(a2);
}

uint64_t urlProcessor_StartKeyExchangeAndCreateKeyResponseForAirPlay(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  v43 = 0;
  v40 = 0;
  cf = 0;
  data = 0;
  FigReadWriteLockLockForRead();
  if (*DerivedStorage)
  {
    Mutable = 0;
    v13 = 0;
    v36 = -12785;
LABEL_56:
    v44 = v36;
    goto LABEL_36;
  }

  if (!a2)
  {
    Mutable = 0;
    v13 = 0;
    v36 = -12780;
    goto LABEL_56;
  }

  v9 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    v13 = 0;
    goto LABEL_55;
  }

  v11 = *(CMBaseObjectGetVTable() + 16);
  if (*v11 < 8uLL || (v12 = v11[26]) == 0)
  {
    v44 = -12782;
    goto LABEL_25;
  }

  v44 = v12(a3, &v43, &value);
  if (v44)
  {
LABEL_25:
    urlProcessor_StartKeyExchangeAndCreateKeyResponseForAirPlay_cold_7();
    v13 = 0;
    goto LABEL_36;
  }

  CFDictionaryAddValue(Mutable, @"CSKRO_RemoteContext", value);
  FigCFDictionarySetInt64();
  v13 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v13)
  {
LABEL_55:
    v36 = -12786;
    goto LABEL_56;
  }

  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v14)
  {
    v44 = -12782;
    goto LABEL_35;
  }

  v44 = v14(a3, *MEMORY[0x1E69610F0], v9, &data);
  if (v44)
  {
LABEL_35:
    urlProcessor_StartKeyExchangeAndCreateKeyResponseForAirPlay_cold_6();
    goto LABEL_36;
  }

  v15 = CFPropertyListCreateWithData(v9, data, 0, 0, 0);
  if (v15)
  {
    v16 = v15;
    v17 = CFGetTypeID(v15);
    if (v17 != CFDictionaryGetTypeID())
    {
      urlProcessor_StartKeyExchangeAndCreateKeyResponseForAirPlay_cold_1(&v44);
      UInt64 = 0;
      v27 = 0;
      goto LABEL_33;
    }

    v38 = a1;
    v37 = a4;
    v18 = *MEMORY[0x1E6962AC0];
    v19 = CFDictionaryGetValue(v16, *MEMORY[0x1E6962AC0]);
    if (v19)
    {
      v20 = v19;
      v21 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v21)
      {
        v21(a3, v18, v20);
      }

      v22 = *MEMORY[0x1E6962B00];
      v23 = FigCFDictionaryGetValue();
      if (v23)
      {
        v24 = v23;
        v25 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v25)
        {
          v26 = v25(a3, v22, v24);
        }

        else
        {
          v26 = -12782;
        }

        v44 = v26;
        CFDictionaryAddValue(v13, *MEMORY[0x1E6961CB8], a2);
        CFDictionaryAddValue(v13, *MEMORY[0x1E6961C60], Mutable);
        CFDictionaryAddValue(v13, *MEMORY[0x1E6961B78], v20);
        CFDictionaryAddValue(v13, *MEMORY[0x1E6961C10], *MEMORY[0x1E695E4D0]);
        v27 = dispatch_semaphore_create(0);
        if (!v27)
        {
          UInt64 = 0;
          v44 = -12786;
          goto LABEL_33;
        }

        FigSimpleMutexLock();
        ++*(DerivedStorage + 112);
        UInt64 = FigCFNumberCreateUInt64();
        FigSimpleMutexUnlock();
        CFDictionaryAddValue(v13, @"LocalRequestID", UInt64);
        FigSimpleMutexLock();
        FigCFDictionarySetValue();
        dispatch_retain(v27);
        FigSimpleMutexUnlock();
        urlProcessor_postNotification(v38);
        FigReadWriteLockUnlockForRead();
        v29 = dispatch_time(0, 8000000000);
        v30 = dispatch_semaphore_wait(v27, v29);
        FigReadWriteLockLockForRead();
        if (v30)
        {
          if (*DerivedStorage)
          {
            v44 = FigSignalErrorAtGM();
          }

          else
          {
            v44 = FigSignalErrorAtGM();
            v40 = 0;
            FigSimpleMutexLock();
            CFDictionaryRemoveValue(*(DerivedStorage + 64), UInt64);
            CFDictionaryRemoveValue(*(DerivedStorage + 72), UInt64);
            FigSimpleMutexUnlock();
          }

          goto LABEL_33;
        }

        if (*DerivedStorage)
        {
          urlProcessor_StartKeyExchangeAndCreateKeyResponseForAirPlay_cold_2(&v44);
          goto LABEL_33;
        }

        FigSimpleMutexLock();
        FigCFDictionaryGetDictionaryValue();
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetValueIfPresent();
        CFDictionaryRemoveValue(*(DerivedStorage + 72), UInt64);
        FigSimpleMutexUnlock();
        if (v44)
        {
          goto LABEL_33;
        }

        v31 = v40;
        if (!v40)
        {
          goto LABEL_33;
        }

        v32 = v43;
        v33 = *(CMBaseObjectGetVTable() + 16);
        if (*v33 >= 8uLL && (v34 = v33[27]) != 0)
        {
          v44 = v34(a3, v32, v31, &cf);
          if (!v44)
          {
            *v37 = cf;
            cf = 0;
LABEL_33:
            FigReadWriteLockUnlockForRead();
            CFRelease(v16);
            goto LABEL_37;
          }
        }

        else
        {
          v44 = -12782;
        }

        urlProcessor_StartKeyExchangeAndCreateKeyResponseForAirPlay_cold_3();
        goto LABEL_33;
      }

      urlProcessor_StartKeyExchangeAndCreateKeyResponseForAirPlay_cold_4(&v44);
    }

    else
    {
      urlProcessor_StartKeyExchangeAndCreateKeyResponseForAirPlay_cold_5(&v44);
    }

    UInt64 = 0;
    v27 = 0;
    goto LABEL_33;
  }

  v44 = FigSignalErrorAtGM();
LABEL_36:
  FigReadWriteLockUnlockForRead();
  UInt64 = 0;
  v27 = 0;
LABEL_37:
  if (value)
  {
    CFRelease(value);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (UInt64)
  {
    CFRelease(UInt64);
  }

  if (v27)
  {
    dispatch_release(v27);
  }

  return v44;
}

uint64_t urlProcessor_HandleRequest(const void *a1, uint64_t a2, const __CFDictionary *a3)
{
  v57[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  if (!a3)
  {
    urlProcessor_HandleRequest_cold_7(v57);
    return LODWORD(v57[0]);
  }

  if (!a2)
  {
    urlProcessor_HandleRequest_cold_6(v57);
    return LODWORD(v57[0]);
  }

  v7 = DerivedStorage;
  Value = CFDictionaryGetValue(a3, *MEMORY[0x1E6960D48]);
  if (!Value)
  {
    urlProcessor_HandleRequest_cold_5(v57);
    return LODWORD(v57[0]);
  }

  v9 = Value;
  v42 = *MEMORY[0x1E695E480];
  v10 = CFURLCreateWithString(*MEMORY[0x1E695E480], Value, 0);
  if (!v10)
  {
    urlProcessor_HandleRequest_cold_4(v57);
    return LODWORD(v57[0]);
  }

  v11 = v10;
  if (!FigCFDictionaryGetInt64IfPresent())
  {
    urlProcessor_HandleRequest_cold_3(v11, v57);
    return LODWORD(v57[0]);
  }

  v40 = v9;
  if (dword_1EAF17368)
  {
    LODWORD(v55) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v13 = CFDictionaryGetValue(a3, *MEMORY[0x1E6960D18]);
  v41 = CFDictionaryGetValue(a3, *MEMORY[0x1E6960D30]);
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  v14 = CMBaseObjectGetDerivedStorage();
  v15 = v14;
  v57[0] = 0;
  v55 = 0;
  cf = 0;
  if (!*(v14 + 96) || !*(v14 + 104))
  {
LABEL_15:
    v21 = a2;
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    v23 = FigCPECryptorCreateAirPlay(v42, v21, MutableCopy, &v55);
    if (v23)
    {
      v24 = 0;
      if (!MutableCopy)
      {
        goto LABEL_18;
      }
    }

    else
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      v24 = v55;
      v55 = 0;
      if (!MutableCopy)
      {
LABEL_18:
        a2 = v21;
        goto LABEL_20;
      }
    }

    CFRelease(MutableCopy);
    goto LABEL_18;
  }

  CMBaseObject = FigAssetGetCMBaseObject(a2);
  v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v17)
  {
    goto LABEL_19;
  }

  v18 = v17(CMBaseObject, @"assetProperty_DefaultContentKeySession", v42, v57);
  if (!v18)
  {
    v19 = v57[0];
    v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v20)
    {
      v18 = v20(v19, 0x1F0B20378, v42, &cf);
      if (!v18)
      {
        v18 = FigAirPlaySecureStopRouterRegisterSecureStopManager(*(v15 + 104), cf);
        if (!v18)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_76;
    }

LABEL_19:
    v24 = 0;
    v23 = 4294954514;
    goto LABEL_20;
  }

LABEL_76:
  v23 = v18;
  v24 = 0;
LABEL_20:
  if (v57[0])
  {
    CFRelease(v57[0]);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  if (v23)
  {
    goto LABEL_61;
  }

  if (v41)
  {
    v25 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v25)
    {
      v23 = 4294954514;
      goto LABEL_61;
    }

    v26 = v25(v24, 0x1F0B23818, v41);
    if (v26)
    {
      goto LABEL_72;
    }
  }

  if ((v27 = (CMBaseObjectGetDerivedStorage() + 32), !*v27) && ((v28 = FigAssetGetCMBaseObject(a2), (v29 = *(*(CMBaseObjectGetVTable() + 8) + 48)) == 0) || v29(v28, @"assetProperty_CustomURLLoader", v42, v27)) && (v26 = FigSignalErrorAtGM(), v26))
  {
LABEL_72:
    v23 = v26;
  }

  else
  {
    if (v7[3] && v54)
    {
      v30 = malloc_type_calloc(1uLL, 0x28uLL, 0x10600407FA69E2EuLL);
      if (v30)
      {
        v31 = v30;
        v30[1] = v53;
        v30[3] = CFRetain(v11);
        if (v24)
        {
          v32 = CFRetain(v24);
        }

        else
        {
          v32 = 0;
        }

        v31[4] = v32;
        *v31 = v7[7];
        v7[7] = v31;
        CFRetain(v40);
        if (v13)
        {
          CFRetain(v13);
        }

        if (a1)
        {
          CFRetain(a1);
        }

        if (v24)
        {
          CFRetain(v24);
        }

        v37 = v7[15];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = __urlProcessor_HandleRequest_block_invoke;
        block[3] = &__block_descriptor_tmp_86_0;
        block[4] = v7;
        block[5] = v40;
        block[6] = v24;
        block[7] = v53;
        v49 = v52;
        block[8] = v13;
        block[9] = a1;
        block[10] = v31;
        v38 = block;
LABEL_60:
        dispatch_async(v37, v38);
        v23 = 0;
        goto LABEL_61;
      }

      urlProcessor_HandleRequest_cold_2(v57);
    }

    else
    {
      v33 = malloc_type_calloc(1uLL, 0x38uLL, 0x1060040BE10E4F9uLL);
      if (v33)
      {
        v34 = v33;
        v35 = CFRetain(a3);
        v34[2] = v53;
        v34[3] = v35;
        if (v24)
        {
          v36 = CFRetain(v24);
        }

        else
        {
          v36 = 0;
        }

        v34[6] = v36;
        *v34 = v7[6];
        v7[6] = v34;
        if (a1)
        {
          CFRetain(a1);
        }

        if (v24)
        {
          CFRetain(v24);
        }

        if (v13)
        {
          CFRetain(v13);
        }

        CFRetain(a3);
        CFRetain(v11);
        v37 = v7[15];
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 0x40000000;
        v43[2] = __urlProcessor_HandleRequest_block_invoke_2;
        v43[3] = &__block_descriptor_tmp_90_1;
        v43[4] = v7;
        v43[5] = v34;
        v43[6] = v11;
        v43[7] = v13;
        v44 = HIBYTE(v52);
        v45 = v54;
        v46 = v52;
        v47 = v51;
        v43[8] = v24;
        v43[9] = a3;
        v43[10] = a1;
        v38 = v43;
        goto LABEL_60;
      }

      urlProcessor_HandleRequest_cold_1(v57);
    }

    v23 = LODWORD(v57[0]);
  }

LABEL_61:
  CFRelease(v11);
  if (v24)
  {
    CFRelease(v24);
  }

  return v23;
}

void urlProcessor_contentKeyRequestDidUpdateContentKeyBossToNewBoss(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (_os_feature_enabled_impl())
  {
    if (!DerivedStorage || *DerivedStorage)
    {
      urlProcessor_contentKeyRequestDidUpdateContentKeyBossToNewBoss_cold_1();
    }

    else
    {
      if (dword_1EAF17368)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v4 = *(DerivedStorage + 24);
      *(DerivedStorage + 24) = a1;
      if (a1)
      {
        CFRetain(a1);
      }

      if (v4)
      {
        CFRelease(v4);
      }
    }
  }
}

void urlProcessor_contentKeyDataCallback(uint64_t a1, uint64_t a2, uint64_t a3, __CFError *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = (CMBaseObjectGetDerivedStorage() + 56);
  while (1)
  {
    v9 = *v9;
    if (!v9)
    {
      break;
    }

    if (v9[2] == a2)
    {
      APCustomURLResponseFromContentKeyResponse = urlProcessor_createAPCustomURLResponseFromContentKeyResponse(a1, v9, a3, a4);
      if (APCustomURLResponseFromContentKeyResponse)
      {
        v11 = APCustomURLResponseFromContentKeyResponse;
        if (!a1 || *DerivedStorage)
        {
          urlProcessor_contentKeyDataCallback_cold_2(a1, v9);
        }

        else
        {
          urlProcessor_contentKeyDataCallback_cold_1(DerivedStorage, v9, APCustomURLResponseFromContentKeyResponse, a1);
        }

        CFRelease(v11);
        return;
      }

      break;
    }
  }

  urlProcessor_freeContentKeyRequestListEntry(a1, v9);
}

void figVTT_initNodeVTTTypeNameMapping()
{
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v2 = Mutable;
    v3 = &off_1E748C1D0;
    v4 = 8;
    do
    {
      valuePtr = *(v3 - 2);
      v5 = CFNumberCreate(v0, kCFNumberSInt32Type, &valuePtr);
      CFDictionarySetValue(v2, v5, *v3);
      if (v5)
      {
        CFRelease(v5);
      }

      v3 += 2;
      --v4;
    }

    while (v4);
    sVTTNodeTypeNameMapping = v2;
  }

  else
  {
    figVTT_initNodeVTTTypeNameMapping_cold_1();
  }
}

void figVTT_initVTTSectionTypeNameMapping()
{
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v2 = Mutable;
    v3 = &off_1E748C250;
    v4 = 4;
    do
    {
      valuePtr = *(v3 - 2);
      v5 = CFNumberCreate(v0, kCFNumberSInt32Type, &valuePtr);
      CFDictionarySetValue(v2, v5, *v3);
      if (v5)
      {
        CFRelease(v5);
      }

      v3 += 2;
      --v4;
    }

    while (v4);
    sVTTSectionTypeNameMapping = v2;
  }

  else
  {
    figVTT_initVTTSectionTypeNameMapping_cold_1();
  }
}

void M2VResyncForType(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = *(v1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  *(v1 + 24) = 0;
  if (*(v1 + 144))
  {
    v3 = *(v1 + 136);
    if (v3)
    {
      CFRelease(v3);
      *(v1 + 136) = 0;
    }
  }

  v4 = *(v1 + 120);
  if (v4)
  {
    CFRelease(v4);
    *(v1 + 120) = 0;
  }
}

void M2VDestroyForType(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    v3 = *(v1 + 24);
    if (v3)
    {
      CFRelease(v3);
      *(v1 + 24) = 0;
    }

    v4 = *(v1 + 136);
    if (v4)
    {
      CFRelease(v4);
      *(v1 + 136) = 0;
    }

    free(*(a1 + 88));
    *(a1 + 88) = 0;
  }
}

uint64_t M2VGetBitRateForType(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 4294954516;
  }

  result = 0;
  *a2 = 400 * *(*(a1 + 88) + 8);
  return result;
}

uint64_t PushM2VFrame(uint64_t a1, CMTime *a2, int a3)
{
  v4 = *(a1 + 88);
  v5 = *(v4 + 24);
  if (!v5)
  {
    return 0;
  }

  sbuf = 0;
  sampleSizeArray = CMBlockBufferGetDataLength(v5);
  if (a3)
  {
    lhs = *a2;
    rhs = *(v4 + 56);
    CMTimeSubtract(&sampleTimingArray.duration, &lhs, &rhs);
    *(v4 + 80) = *&sampleTimingArray.duration.value;
    *(v4 + 96) = sampleTimingArray.duration.epoch;
  }

  v8 = *(v4 + 56);
  sampleTimingArray.decodeTimeStamp.epoch = *(v4 + 72);
  *&sampleTimingArray.decodeTimeStamp.value = v8;
  *&sampleTimingArray.duration.value = *(v4 + 80);
  sampleTimingArray.duration.epoch = *(v4 + 96);
  v9 = *(v4 + 48);
  *&sampleTimingArray.presentationTimeStamp.value = *(v4 + 32);
  sampleTimingArray.presentationTimeStamp.epoch = v9;
  v10 = CMSampleBufferCreate(*(a1 + 8), *(v4 + 24), 1u, 0, 0, *(a1 + 40), 1, 1, &sampleTimingArray, 1, &sampleSizeArray, &sbuf);
  if (!v10)
  {
    SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 1u);
    if (!SampleAttachmentsArray)
    {
LABEL_17:
      v10 = (*(a1 + 24))(a1, *(a1 + 32), sbuf, *(v4 + 112), *(v4 + 104));
      if (sbuf)
      {
        CFRelease(sbuf);
      }

      goto LABEL_19;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
    v13 = ValueAtIndex;
    v14 = *(v4 + 104);
    v15 = *MEMORY[0x1E695E4D0];
    if ((v14 & 0x10) != 0)
    {
      if (!*(v4 + 14))
      {
        CFDictionarySetValue(ValueAtIndex, *MEMORY[0x1E6960458], *MEMORY[0x1E695E4D0]);
        CFDictionarySetValue(v13, *MEMORY[0x1E6960460], v15);
      }

      v17 = *MEMORY[0x1E6960400];
      v18 = *MEMORY[0x1E695E4C0];
      v19 = v13;
    }

    else
    {
      CFDictionarySetValue(ValueAtIndex, *MEMORY[0x1E6960458], *MEMORY[0x1E695E4D0]);
      if ((v14 & 8) == 0)
      {
        CFDictionarySetValue(v13, *MEMORY[0x1E6960450], *MEMORY[0x1E695E4C0]);
        v16 = MEMORY[0x1E6960400];
        goto LABEL_15;
      }

      v17 = *MEMORY[0x1E6960400];
      v19 = v13;
      v18 = v15;
    }

    CFDictionarySetValue(v19, v17, v18);
    v16 = MEMORY[0x1E6960418];
LABEL_15:
    CFDictionarySetValue(v13, *v16, v15);
    v20 = *(v4 + 120);
    if (v20)
    {
      CFDictionarySetValue(v13, @"ByteOffsetToSecondField", v20);
    }

    goto LABEL_17;
  }

LABEL_19:
  v21 = *(v4 + 24);
  if (v21)
  {
    CFRelease(v21);
  }

  *(v4 + 24) = 0;
  v22 = *(v4 + 120);
  if (v22)
  {
    CFRelease(v22);
    *(v4 + 120) = 0;
  }

  return v10;
}

uint64_t FigTTMLDocumentWriterCreateStyleSpanBuilder(uint64_t a1, const void *a2, void *a3)
{
  if (!a2)
  {
    FigTTMLDocumentWriterCreateStyleSpanBuilder_cold_2(&v8);
    return v8;
  }

  if (!a3)
  {
    FigTTMLDocumentWriterCreateStyleSpanBuilder_cold_1(&v8);
    return v8;
  }

  FigTTMLDocumentWriterGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    FigTTMLDocumentWriterGetCMBaseObject(0);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = CFRetain(a2);
    *a3 = 0;
  }

  return v5;
}

void figTTMLDocumentWriterStyleSpanBuilder_Finalize(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

uint64_t figTTMLDocumentWriterStyleSpanBuilder_StartElement(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  v3 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterStartElement(v3, a2);
}

uint64_t figTTMLDocumentWriterStyleSpanBuilder_EndElement(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  v1 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterEndElement(v1);
}

uint64_t figTTMLDocumentWriterStyleSpanBuilder_Flush(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  v1 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterFlush(v1);
}

void initCaptionStylePropertyToAttributesMapping()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69614E8], FigTTMLDocumentWriterMapPropertyToAttribute_TextColor);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961458], FigTTMLDocumentWriterMapPropertyToAttribute_BackgroundColor);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69614A0], FigTTMLDocumentWriterMapPropertyToAttribute_FontWeight);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961480], FigTTMLDocumentWriterMapPropertyToAttribute_FontStyle);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961460], FigTTMLDocumentWriterMapPropertyToAttribute_Decoration);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961530], FigTTMLDocumentWriterMapPropertyToAttribute_TextOutline);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69614C0], FigTTMLDocumentWriterMapPropertyToAttribute_Hidden);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69614C8], FigTTMLDocumentWriterMapPropertyToAttribute_Invisible);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69614B8], FigTTMLDocumentWriterMapPropertyToAttribute_ForcedDisplay);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69614D8], FigTTMLDocumentWriterMapPropertyToAttribute_PreventLineWrapping);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961470], FigTTMLDocumentWriterMapPropertyToAttribute_FontFamily);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961478], FigTTMLDocumentWriterMapPropertyToAttribute_FontSize);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69614F0], FigTTMLDocumentWriterMapPropertyToAttribute_TextCombine);
  sCaptionStylePropertyToAttributesMapping = Mutable;
}

const void *insertOrGetAttributeDictionaryForAnimationTime(const __CFDictionary *a1)
{
  v2 = *MEMORY[0x1E695E480];
  SInt32 = FigCFNumberCreateSInt32();
  Value = CFDictionaryGetValue(a1, SInt32);
  if (!Value)
  {
    Value = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionaryAddValue(a1, SInt32, Value);
    if (Value)
    {
      CFRelease(Value);
    }
  }

  if (SInt32)
  {
    CFRelease(SInt32);
  }

  return Value;
}

void OUTLINED_FUNCTION_0_111(uint64_t a1, uint64_t a2, void *a3)
{

  CFDictionaryApplyFunction(v3, addAttribute, a3);
}

uint64_t figVTTNodeRegisterFigVTTNodeBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigVTTNodeGetTypeID()
{
  MEMORY[0x19A8D3660](&FigVTTNodeGetClassID_sRegisterFigVTTNodeBaseTypeOnce, figVTTNodeRegisterFigVTTNodeBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigVTTNodeCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t FigVTTNodeSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigVTTNodeGetNodeType(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigVTTNodeCopyDocumentSerialization(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigVTTNodeSetChildNodeArray(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigVTTNodeSetAttribute(uint64_t a1, const void *a2, const void *a3)
{
  v6 = *(CMBaseObjectGetVTable() + 16);
  if (v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *(v12 + 16);
  if (v8)
  {

    return v8(a1, a2, a3);
  }

  else if (a2 && (v10 = CFGetTypeID(a2), v10 == CFStringGetTypeID()))
  {
    v11 = *DerivedStorage;
    if (a3)
    {
      CFDictionarySetValue(v11, a2, a3);
    }

    else
    {
      CFDictionaryRemoveValue(v11, a2);
    }

    return 0;
  }

  else
  {
    FigVTTNodeSetAttribute_cold_1(&v13);
    return v13;
  }
}

uint64_t FigVTTNodeCopyAttributes(uint64_t a1, void *a2)
{
  v4 = *(CMBaseObjectGetVTable() + 16);
  if (v4)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(v10 + 24);
  if (v6)
  {

    return v6(a1, a2);
  }

  else if (a2)
  {
    v8 = *DerivedStorage;
    if (v8)
    {
      v9 = CFRetain(v8);
    }

    else
    {
      v9 = 0;
    }

    result = 0;
    *a2 = v9;
  }

  else
  {
    figVTTSpan_copyNodeDocumentSerialization_cold_2(&v11);
    return v11;
  }

  return result;
}

uint64_t FigVTTNodeSetValue(uint64_t a1, const void *a2)
{
  v4 = *(CMBaseObjectGetVTable() + 16);
  if (v4)
  {
    v11 = v4;
  }

  else
  {
    v11 = 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage;
  v7 = *(v11 + 32);
  if (!v7)
  {
    if (a2)
    {
      v9 = CFGetTypeID(a2);
      if (v9 != CFStringGetTypeID())
      {
        FigVTTNodeSetValue_cold_1(&v12);
        return v12;
      }

      v10 = *(v6 + 8);
      *(v6 + 8) = a2;
      CFRetain(a2);
      if (!v10)
      {
        return 0;
      }
    }

    else
    {
      v10 = *(DerivedStorage + 8);
      *(DerivedStorage + 8) = 0;
      if (!v10)
      {
        return 0;
      }
    }

    CFRelease(v10);
    return 0;
  }

  return v7(a1, a2);
}

uint64_t FigVTTNodeCopyValue(uint64_t a1, void *a2)
{
  v4 = *(CMBaseObjectGetVTable() + 16);
  if (v4)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(v10 + 40);
  if (v6)
  {

    return v6(a1, a2);
  }

  else if (a2)
  {
    v8 = *(DerivedStorage + 8);
    if (v8)
    {
      v9 = CFRetain(v8);
    }

    else
    {
      v9 = 0;
    }

    result = 0;
    *a2 = v9;
  }

  else
  {
    FigVTTNodeCopyValue_cold_1(&v11);
    return v11;
  }

  return result;
}

uint64_t FigVTTNodeCopyChildNodeArray(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigVTTInitializeNodeBaseStorage(CFMutableDictionaryRef *a1)
{
  *a1 = 0;
  a1[1] = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *a1 = Mutable;
  if (Mutable)
  {
    return 0;
  }

  FigVTTInitializeNodeBaseStorage_cold_1(&v4);
  return v4;
}

void FigVTTReleaseNodeBaseStorage(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 8) = 0;
  }
}

uint64_t FindProgram(uint64_t a1, int a2)
{
  for (result = *(a1 + 16); result; result = *(result + 8))
  {
    if (*(result + 40) == a2)
    {
      break;
    }
  }

  return result;
}

void MPEG2TSReset(uint64_t a1)
{
  *(a1 + 384) = 0;
  *(a1 + 450) = 1;
  v2 = *(a1 + 456);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 456) = 0;
  }
}

uint64_t PesProcessTsPak(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (!*(a1 + 84))
  {
    return 0;
  }

  if (a2[1] < 0)
  {
    PesErrorHandling(a1, 4294954320);
    return 0;
  }

  v6 = *(a1 + 450);
  if ((a2[3] & 0x10) != 0)
  {
    v6 = (v6 + 1) & 0xF;
  }

  v7 = a2[3] & 0xF;
  if (*(a1 + 451))
  {
    if (v7 != v6)
    {
      PesErrorHandling(a1, 4294954320);
    }
  }

  *(a1 + 451) = 1;
  *(a1 + 450) = v7;
  if ((a2[3] & 0x30) == 0x10)
  {
    v8 = 4;
LABEL_16:
    v12 = 0;
    v11 = 0;
    return ProcessPesData(a1, 0, 0, &a2[v8], 188 - v8, (a2[1] >> 6) & 1, a3, &v12, &v11);
  }

  if ((a2[3] & 0x10) == 0)
  {
    v8 = 188;
    goto LABEL_16;
  }

  v10 = a2[4];
  if (v10 < 0xB8)
  {
    v8 = v10 + 5;
    goto LABEL_16;
  }

  PesProcessTsPak_cold_1(&v13);
  return v13;
}

uint64_t AddProgram(uint64_t a1, int a2, void *a3)
{
  v7 = (a1 + 16);
  v6 = *(a1 + 16);
  if (v6)
  {
    while (*(v6 + 10) != a2)
    {
      v6 = v6[1];
      if (!v6)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    *a3 = 0;
    v6 = malloc_type_calloc(1uLL, 0x60uLL, 0x10A0040A345989DuLL);
    if (!v6)
    {
      return 12;
    }

    *v6 = a1;
    v6[3] = 0;
    *(v6 + 10) = a2;
    v6[4] = v6 + 3;
    v8 = *(a1 + 16);
    v6[1] = v8;
    if (v8)
    {
      *(v8 + 16) = v6 + 1;
    }

    *v7 = v6;
    v6[2] = v7;
  }

  v9 = 0;
  *a3 = v6;
  return v9;
}

uint64_t CheckDescriptorsForStreamEncryptData(unsigned __int8 *a1, unsigned int a2, int a3, void *a4, void *a5)
{
  if (a2 < 3)
  {
    return 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = a1[1];
      v7 = a2 - 2 - v6;
      if (a2 - 2 < v6)
      {
        break;
      }

      v8 = (a1 + 2);
      v9 = *a1;
      if (v9 == 5)
      {
        if (a4 && v6 >= 4 && *v8 == 1684107361)
        {
          *a4 = a1 + 6;
          *a5 = (v6 - 4);
        }
      }

      else
      {
        v10 = v9 == 15 && v6 == 4;
        if (v10 && bswap32(*v8) == a3)
        {
          v5 = 1;
        }
      }

      a1 = v8 + v6;
      a2 = (a2 - 2 - v6);
    }

    while (v7 > 2u);
  }

  return v5;
}

uint64_t MP3GetChannelLayout(_DWORD *a1)
{
  if (*a1 >> 30 == 3)
  {
    return 6553601;
  }

  else
  {
    return 6619138;
  }
}

uint64_t MP3GetFormatID(_DWORD *a1)
{
  v1 = (*a1 >> 9) & 3;
  if (v1 == 2)
  {
    v2 = 778924082;
  }

  else
  {
    v2 = 778924083;
  }

  if (v1 == 3)
  {
    return 778924081;
  }

  else
  {
    return v2;
  }
}

uint64_t MP3GetSamplesPerFrame(unsigned int *a1)
{
  v1 = bswap32(*a1);
  v2 = (v1 >> 17) & 3;
  if ((~v1 & 0x180000) != 0)
  {
    v3 = 576;
  }

  else
  {
    v3 = 1152;
  }

  if (v2 == 2)
  {
    v3 = 1152;
  }

  if (v2 == 3)
  {
    return 384;
  }

  else
  {
    return v3;
  }
}

uint64_t MP3GetFrameSize(unsigned int *a1)
{
  v1 = bswap32(*a1);
  v2 = (v1 >> 17) & 3;
  v3 = v2 ^ 3u;
  v4 = 3;
  if (v2 != 3)
  {
    v4 = 4;
  }

  if ((~v1 & 0x180000) != 0)
  {
    v3 = v4;
  }

  v5 = v2 == 3;
  v6 = MPEGAudioSampleFrequencies[3 * ((v1 >> 19) & 3) + ((v1 >> 10) & 3)];
  v7 = MPEGAudioBitRates[14 * v3 - 1 + (v1 >> 12)];
  v8 = (v1 >> 9) & 1;
  v9 = 144000 * v7 / v6 + v8;
  v10 = 4 * (12000 * v7 / v6 + v8);
  if (v5)
  {
    return v10;
  }

  else
  {
    return v9;
  }
}

uint64_t MP3GetBitRate(unsigned int *a1)
{
  v1 = bswap32(*a1);
  v2 = (v1 >> 17) & 3;
  v3 = v2 ^ 3u;
  v4 = v2 == 3;
  v5 = 3;
  if (!v4)
  {
    v5 = 4;
  }

  if ((~v1 & 0x180000) == 0)
  {
    v5 = v3;
  }

  return 1000 * MPEGAudioBitRates[14 * v5 - 1 + (v1 >> 12)];
}

BOOL FigOutputMonitorIsScreenProbablyBeingRecorded()
{
  state64 = 0;
  if (figOutputMonitorSetUpNotificationAndTokenOnce_sFigOutputMonitorNotificationTokenCreateOnce != -1)
  {
    FigOutputMonitorIsScreenProbablyBeingRecorded_cold_1();
  }

  notify_get_state(sFigOutputMonitorNotificationToken, &state64);
  return state64 != 0;
}

uint64_t FigOutputMonitorSetVirtualDisplayIsProbablyBeingRecorded(uint64_t state64)
{
  v1 = state64;
  if (figOutputMonitorSetUpNotificationAndTokenOnce_sFigOutputMonitorNotificationTokenCreateOnce != -1)
  {
    FigOutputMonitorIsScreenProbablyBeingRecorded_cold_1();
  }

  notify_set_state(sFigOutputMonitorNotificationToken, v1);

  return notify_post("com.apple.fig.screen.is.probably.being.recorded");
}

uint64_t __figOutputMonitorSetUpNotificationAndTokenOnce_block_invoke()
{
  v0 = dispatch_queue_create("FigOutputMonitorNotificationQueue", 0);
  figOutputMonitorSetUpNotificationAndTokenOnce_sFigOutputMonitorNotificationQueue = v0;

  return notify_register_dispatch("com.apple.fig.screen.is.probably.being.recorded", &sFigOutputMonitorNotificationToken, v0, &__block_literal_global_6);
}

void __figOutputMonitorSetUpNotificationAndTokenOnce_block_invoke_2()
{
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterPostNotification(LocalCenter, @"FigOutputMonitorNotification_RecordingStateChanged", 0, 0, 1u);
}

void MPEGAudioCleanPrivateData(uint64_t a1)
{
  *(a1 + 8) = 0;
  FrameQueueEntryClean(a1 + 120);
  *(a1 + 272) = 0;

  PesPacketListClean(a1 + 280);
}

uint64_t MPEGAudioProcessData(uint64_t a1, void *a2, OpaqueCMBlockBuffer *a3, size_t a4, char *a5, size_t a6, uint64_t a7)
{
  while (1)
  {
    v7 = a7;
    v8 = a6;
    v9 = a5;
    v10 = a4;
    v11 = a3;
    v12 = a2;
    v13 = a1;
    v41 = 0;
    v40 = 0;
    v14 = a2[1];
    if (!v14)
    {
      goto LABEL_31;
    }

    if (a2[3] - v14 >= a6)
    {
      v15 = a6;
    }

    else
    {
      v15 = a2[3] - v14;
    }

    v16 = *a2;
    if (a5)
    {
      memcpy((v16 + v14), a5, v15);
    }

    else
    {
      CMBlockBufferCopyDataBytes(a3, a4, v15, (v16 + v14));
    }

    v17 = v12[1] + v15;
    if (v17 < v12[3])
    {
      v18 = 0;
      v12[1] = v17;
      return v18;
    }

    if (!(v12[4])(*v12))
    {
      v20 = v12[1];
      v12[1] = v20 - 1;
      if (v20 != 1)
      {
        memmove(*v12, (*v12 + 1), v20 - 1);
      }

      goto LABEL_17;
    }

    if (!v12[22])
    {
      break;
    }

    v19 = MPEGAudioCompareHeaders(v13, v12, *v12, &v40);
    if (v19)
    {
      goto LABEL_95;
    }

    if (!v40)
    {
      goto LABEL_22;
    }

LABEL_17:
    a1 = v13;
    a2 = v12;
    a3 = v11;
    a4 = v10;
    a5 = v9;
    a6 = v8;
    a7 = v7;
  }

  if (!*(v12 + 273))
  {
    v19 = PesPacketListSaveChunk(v12 + 35, 0, 0, *v12, v12[3], (v12 + 11));
    if (v19)
    {
      goto LABEL_95;
    }
  }

LABEL_22:
  v21 = v7;
  v12[1] = 0;
  v19 = MPEGAudioSetUpFrame(v13, v12, *v12);
  if (v19)
  {
    goto LABEL_95;
  }

  v22 = v9 ? 0 : v15;
  if (v9)
  {
    v9 += v15;
  }

  else
  {
    v9 = 0;
  }

  v19 = PesAddMemoryToFrameMemory(v13, *v12, v12[3], *(v13 + 624), &v41, &v40 + 1);
  if (v19)
  {
    goto LABEL_95;
  }

  v10 += v22;
  v8 -= v15;
  v7 = v21;
LABEL_31:
  if (!*(v12 + 273) && (*(v12 + 272) || v12[22]))
  {
    v19 = PesPacketListSaveChunk(v12 + 35, v11, v10, v9, v8, v7);
    if (v19)
    {
LABEL_95:
      v18 = v19;
LABEL_96:
      PesErrorHandling(v13, v18);
      return v18;
    }
  }

  if (*(v7 + 24))
  {
    v23 = *v7;
    *(v12 + 13) = *(v7 + 16);
    *(v12 + 11) = v23;
  }

  v24 = v12[3];
  if (v8 >= v24 || v8 && *(v12 + 272))
  {
    v39 = v7;
    v25 = 0;
    v26 = 0;
    while (!*(v12 + 272))
    {
      if (v9)
      {
        v28 = 0;
        while (!(v12[4])(&v9[v28]))
        {
          ++v28;
          if (v12[3] + v28 > v8)
          {
            v29 = 0;
            v28 = v26;
            goto LABEL_63;
          }
        }

        v29 = 1;
        v26 = v28;
LABEL_63:
        v35 = 0;
        v25 = &v9[v28];
        if (!v29)
        {
          goto LABEL_81;
        }
      }

      else
      {
        v33 = 0;
        returnedPointerOut = 0;
        while (1)
        {
          if (CMBlockBufferAccessDataBytes(v11, v10 + v33, v24, v12[2], &returnedPointerOut))
          {
LABEL_61:
            v34 = 0;
            goto LABEL_80;
          }

          if ((v12[4])(returnedPointerOut))
          {
            break;
          }

          ++v33;
          v24 = v12[3];
          if (v24 + v33 > v8)
          {
            goto LABEL_61;
          }
        }

        v34 = 1;
        v25 = returnedPointerOut;
        v26 = v33;
LABEL_80:
        v35 = v26;
        if (!v34)
        {
LABEL_81:
          v36 = v12[3];
          v37 = v9 == 0;
          if (v9)
          {
            v9 += v8 + 1 - v36;
          }

          else
          {
            v9 = 0;
          }

          if (v37)
          {
            v10 = v8 + 1 + v10 - v36;
          }

          v8 = v36 - 1;
          goto LABEL_87;
        }
      }

      if (v12[22])
      {
        v19 = MPEGAudioCompareHeaders(v13, v12, v25, &v40);
        if (v19)
        {
          goto LABEL_95;
        }

        if (v40)
        {
          return 0;
        }
      }

      if (v9)
      {
        v9 += v26;
      }

      else
      {
        v9 = 0;
      }

      v10 += v35;
      v8 -= v26;
      if (!*(v12 + 273))
      {
        v19 = PesPacketListSaveChunk(v12 + 35, v11, v10, v9, v8, v39);
        if (v19)
        {
          goto LABEL_95;
        }
      }

      v19 = MPEGAudioSetUpFrame(v13, v12, v25);
      if (v19)
      {
        goto LABEL_95;
      }

LABEL_87:
      v24 = v12[3];
      if (v8 < v24)
      {
        goto LABEL_88;
      }
    }

    if (v9)
    {
      v19 = PesAddMemoryToFrameMemory(v13, v9, v8, *(v13 + 624), &v41, &v40 + 1);
      if (v19)
      {
        goto LABEL_95;
      }

      v27 = v41;
      v9 += v41;
    }

    else
    {
      v19 = PesAddBlockBufferToFrameBlockBuffer(v13, v11, v10, v8, *(v13 + 624), &v41, &v40 + 1);
      if (v19)
      {
        goto LABEL_95;
      }

      v9 = 0;
      v27 = v41;
      v10 += v41;
    }

    v8 -= v27;
    if (!HIBYTE(v40))
    {
      goto LABEL_87;
    }

    *(v12 + 272) = 0;
    if (*(v12 + 273))
    {
      v30 = v12[9];
      if (v30)
      {
        v31 = v30(v13, v13 + 456);
        goto LABEL_77;
      }

      if (*(v13 + 658) || *(v13 + 505))
      {
        v31 = FigMPEG2AudioFrameQueueEntryAdjustTimestampsAndEmit(v13, v13 + 456);
LABEL_77:
        v18 = v31;
        if (v31)
        {
          goto LABEL_96;
        }
      }
    }

    else
    {
      v12[22] = *(v13 + 512);
      *(v13 + 512) = 0;
      v32 = *(v13 + 496);
      *(v12 + 9) = *(v13 + 480);
      *(v12 + 10) = v32;
      *(v12 + 62) = *(v13 + 584);
    }

    PesCleanAfterFrameEmit(v13);
    *(v13 + 505) = 0;
    goto LABEL_87;
  }

LABEL_88:
  if (!v8)
  {
    return 0;
  }

  if (v9)
  {
    memcpy(*v12, v9, v8);
    v18 = 0;
  }

  else
  {
    v18 = CMBlockBufferCopyDataBytes(v11, v10, v8, *v12);
  }

  v12[1] = v8;
  return v18;
}

uint64_t MPEGAudioCompareHeaders(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if ((*(a2 + 40))(*(a2 + 176), a3))
  {
    if (*(a2 + 296))
    {
      *(a2 + 296) = 0;
    }

    *a4 = 0;
    v7 = *(a2 + 72);
    if (v7)
    {
      v8 = v7(a1, a2 + 120);
    }

    else
    {
      v8 = FigMPEG2AudioFrameQueueEntryAdjustTimestampsAndEmit(a1, a2 + 120);
    }

    v9 = v8;
    *(a2 + 273) = 1;
    if (*(a2 + 280))
    {
      PesPacketListClean(a2 + 280);
    }
  }

  else
  {
    v9 = 4294954317;
    if (!*(a2 + 296))
    {
      *(a2 + 296) = 1;
      do
      {
        v10 = *(a2 + 280);
        *(a2 + 8) = 0;
        *(a2 + 280) = 0;
        *(a2 + 288) = 0;
        FrameQueueEntryClean(a2 + 120);
        *(a2 + 272) = 0;
        PesPacketListClean(a2 + 280);
        v9 = 0;
        if (!v10)
        {
          break;
        }

        v11 = 1;
        do
        {
          v12 = *v10;
          if (!v9)
          {
            DataLength = CMBlockBufferGetDataLength(v10[1]);
            v9 = MPEGAudioProcessData(a1, a2, v10[1], v11 != 0, 0, DataLength - (v11 != 0), v10 + 2);
            v11 = 0;
          }

          v14 = v10[1];
          if (v14)
          {
            CFRelease(v14);
          }

          free(v10);
          v10 = v12;
        }

        while (v12);
      }

      while (v9 == -12979);
      if (*(a2 + 296))
      {
        *(a2 + 296) = 0;
        v9 = 4294954317;
      }
    }

    *a4 = 1;
  }

  return v9;
}

uint64_t MPEGAudioSetUpFrame(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a2 + 56))(a3);
  if (v6)
  {
    v7 = v6;
    if (v6 != *(a1 + 768))
    {
      FigMPEG2ParserSetAudioCharacteristics(a1, v6);
    }

    *(a1 + 624) = (*(a2 + 64))(a3, v7);
    *(a1 + 584) = (*(a2 + 48))(a3);
    *(a2 + 272) = 1;
    v8 = *(a2 + 104);
    *(a1 + 480) = *(a2 + 88);
    *(a1 + 496) = v8;
    *(a2 + 112) = 0;
    return 0;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t mmErrorCallback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  for (i = a2[5]; i; i = *i)
  {
    v9 = i[4];
    if (v9)
    {
      FigMPEG2SampleGeneratorFlush(v9);
      FigMPEG2SampleGeneratorResync(i[4]);
    }

    mmEmitBufferClear(i);
  }

  v10 = a2[14];
  a2[14] = 0;
  if (v10 >= 1)
  {
    v11 = v10;
    do
    {
      FigSimpleMutexUnlock();
      --v11;
    }

    while (v11);
  }

  v12 = a2[9];
  if (v12)
  {
    v12(a2[3], a4, a2[11], a5, 0);
  }

  do
  {
    FigSimpleMutexLock();
    v13 = a2[14] + 1;
    a2[14] = v13;
  }

  while (v13 < v10);
  return 0;
}

uint64_t MPEG2ManifoldInvalidate(const void *a1)
{
  CFRetain(a1);
  MPEG2ManifoldInvalidateGuts(a1);
  CFRelease(a1);
  return 0;
}

uint64_t MPEG2ManifoldFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MPEG2ManifoldInvalidateGuts(a1);
  while (1)
  {
    v3 = *(DerivedStorage + 40);
    if (!v3)
    {
      break;
    }

    *(DerivedStorage + 40) = *v3;
    v4 = v3[4];
    if (v4)
    {
      FigMPEG2SampleGeneratorDestroy(v4);
      v3[4] = 0;
    }

    FigFormatDescriptionRelease();
    free(v3);
  }

  v5 = *(DerivedStorage + 48);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 48) = 0;
  }

  v6 = *(DerivedStorage + 96);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 96) = 0;
  }

  v7 = *(DerivedStorage + 104);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 104) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  result = *(DerivedStorage + 16);
  if (result)
  {
    result = FigSimpleMutexDestroy();
    *(DerivedStorage + 16) = 0;
  }

  return result;
}

__CFString *MPEG2ManifoldCopyDebugDescription()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v1 = Mutable;
  if (Mutable)
  {
    CFStringAppendFormat(Mutable, 0, @"FigMPEG2Manifold :");
  }

  return v1;
}

uint64_t MPEG2ManifoldInvalidateGuts(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(DerivedStorage + 112);
  if (!*(DerivedStorage + 8))
  {
    *(DerivedStorage + 8) = 1;
    MPEG2EndAllTracks(a1, 4294954511);
    v4 = *(DerivedStorage + 48);
    if (v4)
    {
      v5 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v5)
      {
        v5(v4);
      }
    }
  }

  --*(DerivedStorage + 112);

  return FigSimpleMutexUnlock();
}

uint64_t MPEG2EndAllTracks(uint64_t a1, uint64_t a2)
{
  FigManifoldGetFigBaseObject(a1);
  result = CMBaseObjectGetDerivedStorage();
  v5 = result;
  if (!*(result + 8))
  {
    for (i = *(result + 40); i; i = *i)
    {
      if (!a2)
      {
        v7 = i[4];
        if (v7)
        {
          FigMPEG2SampleGeneratorFlush(v7);
        }
      }

      result = mmEmitBufferClear(i);
    }
  }

  for (j = *(v5 + 40); j; j = *j)
  {
    v9 = *(j + 72);
    if (v9)
    {
      *(j + 72) = 0;
      v10 = *(j + 80);
      v11 = *(v5 + 112);
      *(v5 + 112) = 0;
      if (v11 >= 1)
      {
        v12 = v11;
        do
        {
          FigSimpleMutexUnlock();
          --v12;
        }

        while (v12);
      }

      v9(a1, *(j + 44), v10, a2);
      do
      {
        result = FigSimpleMutexLock();
        v13 = *(v5 + 112) + 1;
        *(v5 + 112) = v13;
      }

      while (v13 < v11);
      j = v5 + 40;
    }
  }

  return result;
}

void *mmEmitBufferClear(uint64_t a1)
{
  v3 = (a1 + 176);
  result = *(a1 + 176);
  if (result)
  {
    do
    {
      v4 = *result;
      v5 = **v3;
      *v3 = v5;
      if (!v5)
      {
        *(a1 + 184) = v3;
      }

      MPEG2EmitItemRelease(result);
      result = v4;
    }

    while (v4);
  }

  return result;
}

void MPEG2EmitItemRelease(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  a1[1] = 0;
  v3 = a1[11];
  if (v3)
  {
    a1[11] = 0;
    free(v3);
  }

  v4 = a1[12];
  if (v4)
  {
    a1[12] = 0;
    free(v4);
  }

  v5 = a1[13];
  if (v5)
  {
    a1[13] = 0;
    free(v5);
  }

  free(a1);
}

uint64_t MPEG2ManifoldInjectData(const void *a1, uint64_t a2, char a3, void *a4)
{
  FigManifoldGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    MPEG2ManifoldInjectData(&v26);
    return v26;
  }

  v9 = DerivedStorage;
  CFRetain(a1);
  CFRetain(a4);
  FigSimpleMutexLock();
  ++*(v9 + 112);
  if (*(v9 + 8))
  {
    MPEG2ManifoldInjectData(&v26);
  }

  else
  {
    v10 = *(v9 + 48);
    if (v10)
    {
      if (!*(v9 + 9))
      {
        *(v9 + 12) = 1;
        if (a3)
        {
          FigMPEG2ParserIssueCommands(v10, 2);
          for (i = *(v9 + 40); i; i = *i)
          {
            v12 = i[4];
            if (v12)
            {
              FigMPEG2SampleGeneratorResync(v12);
            }
          }

          v13 = MEMORY[0x1E6960C70];
          *(v9 + 144) = *MEMORY[0x1E6960C70];
          *(v9 + 160) = *(v13 + 16);
        }

        v14 = CMGetAttachment(a4, @"FMFD_BufferDecryptor", 0);
        v15 = CMGetAttachment(a4, @"FMFD_BufferAudioDecryptor", 0);
        if (!FigCFEqual() || !FigCFEqual())
        {
          v16 = *(v9 + 96);
          if (v16)
          {
            mmDoFlush(v9);
            v17 = *(v9 + 96);
          }

          else
          {
            v17 = 0;
          }

          *(v9 + 96) = v14;
          if (v14)
          {
            CFRetain(v14);
          }

          if (v17)
          {
            CFRelease(v17);
          }

          v18 = *(v9 + 104);
          *(v9 + 104) = v15;
          if (v15)
          {
            CFRetain(v15);
          }

          if (v18)
          {
            CFRelease(v18);
          }

          if (*(v9 + 96))
          {
            FigBasicAESCPECryptorGetClassID();
            if (CMBaseObjectIsMemberOfClass())
            {
              if (!v16)
              {
                for (j = *(v9 + 40); j; j = *j)
                {
                  *(j + 168) = 1;
                }
              }
            }

            else
            {
              for (k = *(v9 + 40); k; k = *k)
              {
                *(k + 41) = 1;
              }
            }
          }
        }

        if (CMBlockBufferGetDataLength(a4))
        {
          if ((a3 & 4) != 0)
          {
            v21 = MEMORY[0x1E6960C70];
            *(v9 + 168) = *MEMORY[0x1E6960C70];
            *(v9 + 184) = *(v21 + 16);
            *(v9 + 192) = 0;
          }

          *(v9 + 9) = 1;
          LODWORD(a2) = FigMPEG2ParserInjectData(*(v9 + 48), a4, a2);
          if (!a2 && *(v9 + 11))
          {
            v24 = (v9 + 40);
            while (1)
            {
              v24 = *v24;
              if (!v24)
              {
                break;
              }

              if (!v24[6])
              {
                goto LABEL_35;
              }
            }

            *(v9 + 11) = 0;
            v25 = *(v9 + 80);
            if (v25)
            {
              v25(a1, *(v9 + 88));
            }
          }

LABEL_35:
          if (a2 == -16045)
          {
            a2 = 0;
          }

          else
          {
            a2 = a2;
          }

          if ((a3 & 2) != 0)
          {
            for (m = *(v9 + 40); m; m = *m)
            {
              if (*(m + 112) == 1936684398)
              {
                a2 = mmFlushStream(m);
                if (a2)
                {
                  break;
                }
              }
            }
          }

          *(v9 + 9) = 0;
        }

        else
        {
          a2 = 0;
        }

        goto LABEL_44;
      }

      MPEG2ManifoldInjectData(&v26);
    }

    else
    {
      MPEG2ManifoldInjectData(&v26);
    }
  }

  a2 = v26;
LABEL_44:
  --*(v9 + 112);
  FigSimpleMutexUnlock();
  CFRelease(a4);
  CFRelease(a1);
  return a2;
}

uint64_t MPEG2ManifoldNoteStreamEnd(const void *a1, uint64_t a2)
{
  FigManifoldGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  FigSimpleMutexLock();
  ++*(DerivedStorage + 112);
  if (*(DerivedStorage + 8))
  {
    MPEG2ManifoldNoteStreamEnd(&v12);
    v10 = v12;
  }

  else
  {
    v5 = *(DerivedStorage + 48);
    if (v5)
    {
      if (*(DerivedStorage + 9))
      {
        v6 = 4;
      }

      else
      {
        v6 = 5;
      }

      FigMPEG2ParserIssueCommands(v5, v6);
      *(DerivedStorage + 10) = 1;
      MPEG2EndAllTracks(a1, a2);
      v7 = *(DerivedStorage + 48);
      if (v7)
      {
        v8 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v8)
        {
          v8(v7);
        }

        v9 = *(DerivedStorage + 48);
        if (v9)
        {
          CFRelease(v9);
        }
      }

      v10 = 0;
      *(DerivedStorage + 48) = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  --*(DerivedStorage + 112);
  FigSimpleMutexUnlock();
  CFRelease(a1);
  return v10;
}

uint64_t mmFlushStream(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  v2 = *(a1 + 8);
  DecryptionTypeFromTrackType = getDecryptionTypeFromTrackType(*(a1 + 24));
  v18 = 0;
  if (*(v2 + 96))
  {
    FigBasicAESCPECryptorGetClassID();
    if (CMBaseObjectIsMemberOfClass())
    {
      v4 = *(v2 + 96);
      v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v5)
      {
        v7 = 4294954514;
        goto LABEL_19;
      }

      v6 = v5(v4, *MEMORY[0x1E6961118], *MEMORY[0x1E695E480], &v18);
      if (v6)
      {
LABEL_6:
        v7 = v6;
        goto LABEL_19;
      }
    }

    else
    {
      v18 = CFRetain(*MEMORY[0x1E695E4D0]);
    }
  }

  v9 = (a1 + 176);
  v8 = *(a1 + 176);
  if (!v8)
  {
LABEL_18:
    v7 = 0;
LABEL_19:
    v10 = v18;
    if (!v18)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v10 = v18;
  if (v18 == *MEMORY[0x1E695E4D0])
  {
    while (1)
    {
      v11 = v8[1];
      v16 = *(v8 + 1);
      v17 = v8[4];
      v14 = *(v8 + 5);
      v15 = v8[7];
      v6 = mmPushFrame(a1, DecryptionTypeFromTrackType, 1, v11, &v16, &v14, *(v8 + 16));
      if (v6)
      {
        goto LABEL_6;
      }

      v12 = **v9;
      *v9 = v12;
      if (!v12)
      {
        *(a1 + 184) = v9;
      }

      MPEG2EmitItemRelease(v8);
      v8 = *v9;
      if (!*v9)
      {
        goto LABEL_18;
      }
    }
  }

  v7 = 0;
  if (v18)
  {
LABEL_20:
    CFRelease(v10);
  }

LABEL_21:
  if (!v7)
  {
    return FigMPEG2SampleGeneratorFlush(*(a1 + 32));
  }

  mmEmitBufferClear(a1);
  return v7;
}

uint64_t getDecryptionTypeFromTrackType(int a1)
{
  result = 0;
  if (a1 <= 1700886114)
  {
    if (a1 == 1700880739)
    {
      v3 = MEMORY[0x1E6960FA8];
    }

    else
    {
      if (a1 != 1700881203)
      {
        return result;
      }

      v3 = MEMORY[0x1E6960FB0];
    }
  }

  else
  {
    switch(a1)
    {
      case 2053207651:
        v3 = MEMORY[0x1E6960FD0];
        break;
      case 1701143347:
        v3 = MEMORY[0x1E6960FB8];
        break;
      case 1700886115:
        v3 = MEMORY[0x1E6960FC8];
        break;
      default:
        return result;
    }
  }

  return *v3;
}

uint64_t mmPushFrame(void *a1, uint64_t a2, int a3, OpaqueCMBlockBuffer *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a3)
  {
    goto LABEL_17;
  }

  v13 = 0;
  if (!a2)
  {
    goto LABEL_29;
  }

  v14 = a1[1];
  if (!*(v14 + 96))
  {
    goto LABEL_29;
  }

  FigBasicAESCPECryptorGetClassID();
  if (!CMBaseObjectIsMemberOfClass())
  {
LABEL_17:
    v13 = 0;
LABEL_29:
    ++a1[20];
    v27 = a1[4];
    *blockBufferOut = *a5;
    v32 = *(a5 + 16);
    *v29 = *a6;
    v30 = *(a6 + 16);
    v26 = FigMPEG2SampleGeneratorPushFrame(v27, a4, blockBufferOut, v29, a7);
    goto LABEL_30;
  }

  blockBufferOut[0] = 0;
  v29[0] = 0;
  if (!*(v14 + 96))
  {
    mmPushFrame(&v33);
    v26 = v33;
    if (v33)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  FigBasicAESCPECryptorGetClassID();
  if (!CMBaseObjectIsMemberOfClass())
  {
LABEL_22:
    v13 = 0;
    goto LABEL_23;
  }

  IsRangeContiguous = CMBlockBufferIsRangeContiguous(a4, 0, 0);
  v16 = *MEMORY[0x1E695E480];
  if (!IsRangeContiguous)
  {
    Contiguous = CMBlockBufferCreateContiguous(*MEMORY[0x1E695E480], a4, *MEMORY[0x1E695E480], 0, 0, 0, 0, blockBufferOut);
    if (Contiguous)
    {
      goto LABEL_33;
    }

    a4 = blockBufferOut[0];
  }

  DataLength = CMBlockBufferGetDataLength(a4);
  v19 = CMBlockBufferGetDataLength(a4);
  Contiguous = CMBlockBufferCreateWithMemoryBlock(v16, 0, DataLength, v16, 0, 0, v19, 1u, v29);
  if (Contiguous)
  {
    goto LABEL_33;
  }

  v20 = *(v14 + 96);
  v21 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v21)
  {
LABEL_18:
    v13 = 0;
    v26 = 4294954514;
    goto LABEL_24;
  }

  Contiguous = v21(v20, *MEMORY[0x1E6961000], a2);
  if (Contiguous)
  {
LABEL_33:
    v26 = Contiguous;
    goto LABEL_16;
  }

  v22 = *(v14 + 96);
  v23 = v29[0];
  v24 = *(CMBaseObjectGetVTable() + 16);
  if (*v24 < 4uLL)
  {
    goto LABEL_18;
  }

  v25 = v24[4];
  if (!v25)
  {
    goto LABEL_18;
  }

  v26 = v25(v22, a4, v23);
  if (v26)
  {
LABEL_16:
    v13 = 0;
    goto LABEL_24;
  }

LABEL_20:
  if (!v29[0])
  {
    goto LABEL_22;
  }

  v13 = CFRetain(v29[0]);
LABEL_23:
  v26 = 0;
LABEL_24:
  if (blockBufferOut[0])
  {
    CFRelease(blockBufferOut[0]);
  }

  if (v29[0])
  {
    CFRelease(v29[0]);
  }

  a4 = v13;
  if (!v26)
  {
    goto LABEL_29;
  }

LABEL_30:
  if (v13)
  {
    CFRelease(v13);
  }

  return v26;
}

double mmAdjustPTSDTS(CMTime *a1, CMTime *a2, CMTime *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  if ((a1[5].flags & 0x1D) != 1)
  {
    v6 = MEMORY[0x1E6960CC0];
    v7 = *MEMORY[0x1E6960CC0];
    *&a1[5].value = *MEMORY[0x1E6960CC0];
    a1[5].epoch = *(v6 + 16);
  }

  if (a3 && (a3->flags & 0x1D) == 1)
  {
    if ((v25 = *a3, time1 = a1[5], FigManifoldAdjustTimestampAndUpdateRefTime(&time1, &v25, &a1[5]), value = a3->value, flags = a3->flags, timescale = a3->timescale, epoch = a3->epoch, v30 = v25.value, v10 = v25.flags, v31 = v25.timescale, v11 = v25.epoch, (flags & 0x1F) != 3) && (v25.flags & 0x1F) != 3 || (memset(&time1, 0, sizeof(time1)), v12 = a3->value, rhs.epoch = v25.epoch, lhs.value = v12, lhs.timescale = a3->timescale, lhs.flags = flags, lhs.epoch = epoch, *&rhs.value = *&v25.value, CMTimeSubtract(&time, &lhs, &rhs), CMTimeAbsoluteValue(&time1, &time), time = time1, CMTimeMake(&lhs, 1, 1000000000), CMTimeCompare(&time, &lhs) > 0))
    {
      time1.value = value;
      time1.timescale = timescale;
      time1.flags = flags;
      time1.epoch = epoch;
      time.value = v30;
      time.timescale = v31;
      time.flags = v10;
      time.epoch = v11;
      if (CMTimeCompare(&time1, &time))
      {
        *&v7 = v25.value;
        *a3 = v25;
      }
    }
  }

  if (a2)
  {
    if ((a2->flags & 0x1D) == 1)
    {
      if ((v25 = *a2, time1 = a1[5], FigManifoldAdjustTimestampAndUpdateRefTime(&time1, &v25, &a1[5]), value = a2->value, v13 = a2->flags, timescale = a2->timescale, v14 = a2->epoch, v30 = v25.value, v15 = v25.flags, v31 = v25.timescale, v16 = v25.epoch, (v13 & 0x1F) != 3) && (v25.flags & 0x1F) != 3 || (memset(&time1, 0, sizeof(time1)), v17 = a2->value, rhs.epoch = v25.epoch, lhs.value = v17, lhs.timescale = a2->timescale, lhs.flags = v13, lhs.epoch = v14, *&rhs.value = *&v25.value, CMTimeSubtract(&time, &lhs, &rhs), CMTimeAbsoluteValue(&time1, &time), time = time1, CMTimeMake(&lhs, 1, 1000000000), CMTimeCompare(&time, &lhs) > 0))
      {
        time1.value = value;
        time1.timescale = timescale;
        time1.flags = v13;
        time1.epoch = v14;
        time.value = v30;
        time.timescale = v31;
        time.flags = v15;
        time.epoch = v16;
        if (CMTimeCompare(&time1, &time))
        {
          *&v7 = v25.value;
          *a2 = v25;
        }
      }
    }

    v18 = a1 + 6;
    if ((a1[6].flags & 0x1D) != 1)
    {
      v19 = MEMORY[0x1E6960CC0];
      v20 = *MEMORY[0x1E6960CC0];
      *&v18->value = *MEMORY[0x1E6960CC0];
      v21 = *(v19 + 16);
      a1[6].epoch = v21;
      time1 = *a2;
      *&time.value = v20;
      time.epoch = v21;
      if (CMTimeCompare(&time1, &time) < 0)
      {
        CMTimeMake(&time1, 0x200000000, 90000);
        *&v7 = time1.value;
        *&v18->value = *&time1.value;
        v22 = time1.epoch;
LABEL_22:
        v18->epoch = v22;
      }
    }
  }

  else
  {
    v18 = a1 + 6;
    if ((a1[6].flags & 0x1D) != 1)
    {
      v23 = MEMORY[0x1E6960CC0];
      v7 = *MEMORY[0x1E6960CC0];
      *&v18->value = *MEMORY[0x1E6960CC0];
      v22 = *(v23 + 16);
      goto LABEL_22;
    }
  }

  if (a3 && (a3->flags & 0x1D) == 1)
  {
    time = *a3;
    lhs = *v18;
    CMTimeAdd(&time1, &time, &lhs);
    *&v7 = time1.value;
    *a3 = time1;
  }

  if (a2 && (a2->flags & 0x1D) == 1)
  {
    time = *a2;
    lhs = *v18;
    CMTimeAdd(&time1, &time, &lhs);
    *&v7 = time1.value;
    *a2 = time1;
  }

  return *&v7;
}

uint64_t mmMPEG2NewFormatCallback(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  if (v3)
  {
    CFRelease(v3);
  }

  *(a2 + 48) = FigFormatDescriptionRetain();
  if (*(*(a2 + 8) + 8))
  {
    return 4294954511;
  }

  return mmMPEG2MakeFormatCallback(a2);
}

uint64_t mmUpdateTrackType(uint64_t result, int a2)
{
  v2 = result;
  v3 = *(result + 8);
  if (a2 <= 1701143346)
  {
    if (a2 > 1700880738)
    {
      if (a2 <= 1700886114)
      {
        if (a2 == 1700880739)
        {
          if (!*(v3 + 96))
          {
            goto LABEL_45;
          }

          FigBasicAESCPECryptorGetClassID();
          result = CMBaseObjectIsMemberOfClass();
          if (!result)
          {
            goto LABEL_45;
          }

          v6 = 1633973363;
        }

        else
        {
          if (a2 != 1700881203)
          {
            return result;
          }

          if (!*(v3 + 96))
          {
            goto LABEL_45;
          }

          FigBasicAESCPECryptorGetClassID();
          result = CMBaseObjectIsMemberOfClass();
          if (!result)
          {
            goto LABEL_45;
          }

          v6 = 1633891104;
        }

        goto LABEL_44;
      }

      if (a2 == 1700886115)
      {
LABEL_33:
        if (*(v3 + 96))
        {
          FigBasicAESCPECryptorGetClassID();
          result = CMBaseObjectIsMemberOfClass();
          if (result)
          {
            *(v2 + 28) = 1748121140;
          }
        }

        goto LABEL_36;
      }

      v4 = 1700998451;
    }

    else if (a2 > 1635017570)
    {
      if (a2 == 1635017571)
      {
        v7 = 1668047728;
        goto LABEL_46;
      }

      v4 = 1685353248;
    }

    else
    {
      if (a2 == 1633891104)
      {
        goto LABEL_45;
      }

      v4 = 1633973363;
    }

LABEL_27:
    if (a2 != v4)
    {
      return result;
    }

    goto LABEL_45;
  }

  if (a2 <= 1835103587)
  {
    if (a2 <= 1768174367)
    {
      if (a2 != 1701143347)
      {
        v5 = 1748121140;
        goto LABEL_31;
      }

      if (!*(v3 + 96))
      {
        goto LABEL_45;
      }

      FigBasicAESCPECryptorGetClassID();
      result = CMBaseObjectIsMemberOfClass();
      if (!result)
      {
        goto LABEL_45;
      }

      v6 = 1700998451;
LABEL_44:
      *(v2 + 28) = v6;
      goto LABEL_45;
    }

    if (a2 == 1768174368)
    {
      v7 = 1835365473;
      goto LABEL_46;
    }

    v4 = 1819304813;
    goto LABEL_27;
  }

  if (a2 <= 1836476771)
  {
    if (a2 == 1835103588)
    {
      goto LABEL_45;
    }

    v5 = 1836070006;
LABEL_31:
    if (a2 != v5)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (a2 != 1836476772)
  {
    if (a2 != 1886612592)
    {
      if (a2 != 2053207651)
      {
        return result;
      }

      goto LABEL_33;
    }

LABEL_45:
    v7 = 1936684398;
    goto LABEL_46;
  }

LABEL_36:
  v7 = 1986618469;
LABEL_46:
  *(v2 + 112) = v7;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_97()
{
  --*(v0 + 112);

  return FigSimpleMutexUnlock();
}

uint64_t OUTLINED_FUNCTION_4_78()
{

  return FigSimpleMutexLock();
}

void __fxs_ensureClientEstablished_block_invoke()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v1 = Mutable;
    FigCFDictionarySetValue();
    _MergedGlobals_70 = FigXPCRemoteClientCreate();
    CFRelease(v1);
  }

  else
  {
    _MergedGlobals_70 = -12786;
  }
}

uint64_t FigSampleBufferProviderCreateForVisualContext(const __CFAllocator *a1, void *a2, __int128 *a3, __int128 *a4, CFTypeRef *a5)
{
  values = a2;
  if (!a2)
  {
    FigSampleBufferProviderCreateForVisualContext_cold_2(v15);
    return LODWORD(v15[0]);
  }

  v8 = CFArrayCreate(a1, &values, 1, MEMORY[0x1E695E9C0]);
  if (!v8)
  {
    FigSampleBufferProviderCreateForVisualContext_cold_1(v15);
    return LODWORD(v15[0]);
  }

  v9 = v8;
  v10 = *MEMORY[0x1E695E480];
  v11 = *a3;
  v16.epoch = *(a3 + 2);
  v12 = a4[1];
  v15[0] = *a4;
  v15[1] = v12;
  v15[2] = a4[2];
  *&v16.value = v11;
  v13 = FigSampleBufferProviderCreateForVisualContextGroup(v10, v9, &v16, v15, a5);
  CFRelease(v9);
  return v13;
}

uint64_t FigSampleBufferProviderCreateForVisualContextGroup(const __CFAllocator *a1, CFTypeRef cf, CMTime *a3, __int128 *a4, CFTypeRef *a5)
{
  cfa = 0;
  if (cf)
  {
    v10 = CFGetTypeID(cf);
    if (v10 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(cf);
      if (Count)
      {
        if (a5)
        {
          v12 = Count;
          FigSampleBufferProviderGetClassID();
          v13 = CMDerivedObjectCreate();
          if (v13)
          {
LABEL_6:
            value_low = v13;
          }

          else
          {
            DerivedStorage = CMBaseObjectGetDerivedStorage();
            Copy = CFArrayCreateCopy(a1, cf);
            *(DerivedStorage + 16) = Copy;
            if (Copy)
            {
              *(DerivedStorage + 8) = v12;
              if ((a3->flags & 0x1D) == 1)
              {
                time1 = *a3;
                v31 = **&MEMORY[0x1E6960CC0];
                v18 = CMTimeCompare(&time1, &v31);
                *(DerivedStorage + 32) = v18 > 0;
                if (v18 >= 1)
                {
                  v19 = *&a3->value;
                  *(DerivedStorage + 56) = a3->epoch;
                  *(DerivedStorage + 40) = v19;
                  v20 = MEMORY[0x1E6960C70];
                  *(DerivedStorage + 64) = *MEMORY[0x1E6960C70];
                  *(DerivedStorage + 80) = *(v20 + 16);
                }
              }

              else
              {
                *(DerivedStorage + 32) = 0;
              }

              if ((*(a4 + 12) & 1) == 0 || (*(a4 + 36) & 1) == 0 || *(a4 + 5) || (*(a4 + 3) & 0x8000000000000000) != 0 || (time1 = *(a4 + 1), v31 = **&MEMORY[0x1E6960CC0], CMTimeCompare(&time1, &v31) < 1))
              {
                v21 = MEMORY[0x1E6960C98];
                v22 = *(MEMORY[0x1E6960C98] + 16);
                *(DerivedStorage + 128) = *MEMORY[0x1E6960C98];
                *(DerivedStorage + 144) = v22;
                *(DerivedStorage + 160) = *(v21 + 32);
              }

              else
              {
                v29 = *a4;
                v30 = a4[2];
                *(DerivedStorage + 144) = a4[1];
                *(DerivedStorage + 160) = v30;
                *(DerivedStorage + 128) = v29;
              }

              if (v12 < 1)
              {
LABEL_28:
                sbp_vc_checkForRequestedDropRanges();
                value_low = 0;
                *a5 = cfa;
                return value_low;
              }

              v23 = 0;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 16), v23);
                v25 = cfa;
                v26 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                if (!v26)
                {
                  break;
                }

                v13 = v26(ValueAtIndex, sbp_vc_imageAvailableSequential, v25);
                if (v13)
                {
                  goto LABEL_6;
                }

                v27 = cfa;
                v28 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                if (!v28)
                {
                  break;
                }

                v13 = v28(ValueAtIndex, sbp_vc_noMoreImages, v27);
                if (v13)
                {
                  goto LABEL_6;
                }

                if (v12 == ++v23)
                {
                  goto LABEL_28;
                }
              }

              value_low = 4294954514;
            }

            else
            {
              FigSampleBufferProviderCreateForVisualContextGroup_cold_1(&time1);
              value_low = LODWORD(time1.value);
            }
          }

          if (cfa)
          {
            CFRelease(cfa);
          }

          return value_low;
        }
      }
    }
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

_BYTE *sbp_vc_imageAvailableSequential()
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  return result;
}

_BYTE *sbp_vc_noMoreImages()
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  return result;
}

void sbp_vc_checkForRequestedDropRanges()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CFPreferencesCopyAppValue(@"video_drop_ranges", @"com.apple.coremedia");
  if (v1)
  {
    v2 = v1;
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(v2))
    {
      Count = CFArrayGetCount(v2);
      v5 = Count;
      if (Count)
      {
LABEL_15:
        DerivedStorage[25] = 0;
      }

      else
      {
        v6 = Count >> 1;
        DerivedStorage[23] = malloc_type_calloc(Count >> 1, 0x18uLL, 0x1000040504FFAC1uLL);
        DerivedStorage[24] = malloc_type_calloc(v5 >> 1, 0x18uLL, 0x1000040504FFAC1uLL);
        DerivedStorage[25] = v6;
        if (v5 >= 1)
        {
          for (i = 0; i != v5; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v2, i);
            valuePtr = 0.0;
            memset(&v23, 0, sizeof(v23));
            v9 = CFNumberGetTypeID();
            if (v9 == CFGetTypeID(ValueAtIndex))
            {
              CFNumberGetValue(ValueAtIndex, kCFNumberDoubleType, &valuePtr);
              DoubleValue = valuePtr;
            }

            else
            {
              v11 = CFStringGetTypeID();
              if (v11 != CFGetTypeID(ValueAtIndex))
              {
                goto LABEL_15;
              }

              DoubleValue = CFStringGetDoubleValue(ValueAtIndex);
              valuePtr = DoubleValue;
            }

            v12 = i >> 1;
            CMTimeMakeWithSeconds(&v23, DoubleValue, 1000);
            if (i)
            {
              v15 = 3 * v12;
              v16 = DerivedStorage[24] + 24 * v12;
              v17 = DerivedStorage[23] + 8 * v15;
              lhs = v23;
              v18 = *v17;
              v20.epoch = *(v17 + 16);
              *&v20.value = v18;
              CMTimeAdd(&v22, &lhs, &v20);
              v19 = *&v22.value;
              *(v16 + 16) = v22.epoch;
              *v16 = v19;
            }

            else
            {
              v13 = DerivedStorage[23] + 24 * v12;
              v14 = *&v23.value;
              *(v13 + 16) = v23.epoch;
              *v13 = v14;
            }
          }
        }
      }
    }

    CFRelease(v2);
  }
}

uint64_t sbp_vc_invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v1 = DerivedStorage;
    *DerivedStorage = 1;
    if (*(DerivedStorage + 8) >= 1)
    {
      v2 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v1 + 16), v2);
        v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v4)
        {
          v4(ValueAtIndex, 0, 0);
        }

        v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v5)
        {
          v5(ValueAtIndex, 0, 0);
        }

        ++v2;
      }

      while (v2 < *(v1 + 8));
    }
  }

  return 0;
}

void sbp_vc_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v3)
    {
      v3(a1);
    }
  }

  v4 = DerivedStorage[2];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[2] = 0;
  }

  v5 = DerivedStorage[3];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[3] = 0;
  }

  v6 = DerivedStorage[11];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[11] = 0;
  }

  v7 = DerivedStorage[22];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[22] = 0;
  }

  v8 = DerivedStorage[23];
  if (v8)
  {
    free(v8);
  }

  v9 = DerivedStorage[24];
  if (v9)
  {

    free(v9);
  }
}

__CFString *sbp_vc_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferProviderForVisualContext %p>", a1);
  return Mutable;
}

BOOL sbp_vc_isEmpty()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM();
    return 1;
  }

  else
  {
    v2 = DerivedStorage;
    if (*(DerivedStorage + 176) || *(DerivedStorage + 8) < 1)
    {
      return 0;
    }

    else
    {
      v3 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 16), v3);
        EarliestSequentialImageTime = FigVisualContextGetEarliestSequentialImageTime(ValueAtIndex, 0, 0, 0);
        result = EarliestSequentialImageTime != 0;
        if (EarliestSequentialImageTime)
        {
          break;
        }

        ++v3;
      }

      while (v3 < *(v2 + 8));
    }
  }

  return result;
}

uint64_t sbp_vc_isAtEndOfData()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM();
    return 1;
  }

  v2 = DerivedStorage;
  if (!*(DerivedStorage + 176))
  {
    if (*(DerivedStorage + 8) < 1)
    {
      return 1;
    }

    v3 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 16), v3);
      v5 = 0;
      FigVisualContextGetEarliestSequentialImageTime(ValueAtIndex, 0, 0, &v5);
      if (!v5)
      {
        break;
      }

      if (++v3 >= *(v2 + 8))
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sbp_vc_getUpcomingPTSInfo(uint64_t a1, _BYTE *a2)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    *a2 = 0;
    return 0;
  }
}

CMSampleBufferRef sbp_vc_getAndRetainNextSampleBufferFromVisualContextGroupIfReady(uint64_t a1, _BYTE *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *&v63.value = *MEMORY[0x1E6960C70];
  v4 = *(MEMORY[0x1E6960C70] + 16);
  v63.epoch = v4;
  *&v62.value = *&v63.value;
  v62.epoch = v4;
  v61 = 0;
  v59 = 0;
  v60 = 0;
  memset(&sampleTiming, 0, sizeof(sampleTiming));
  tagCollection = 0;
  sampleBufferOut = 0;
  cf = 0;
  if (*DerivedStorage)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM();
    return 0;
  }

  v6 = DerivedStorage;
  v51 = *&v63.value;
  v7 = 0;
  Mutable = 0;
  v9 = *MEMORY[0x1E695E480];
  v10 = MEMORY[0x1E695E9C0];
  while (1)
  {
    while (1)
    {
      do
      {
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (v7)
        {
          CFRelease(v7);
        }

        if (*(v6 + 1) >= 1)
        {
          v11 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(v6 + 2), v11);
            if (FigVisualContextGetEarliestSequentialImageTime(ValueAtIndex, 0, &v63, &v61))
            {
              break;
            }

            if (v11)
            {
              time1.start = v63;
              time2 = v62;
              if (CMTimeCompare(&time1.start, &time2))
              {
                break;
              }
            }

            else
            {
              v62 = v63;
            }

            if (++v11 >= *(v6 + 1))
            {
              goto LABEL_16;
            }
          }

          v39 = 0;
          v7 = 0;
          Mutable = 0;
          goto LABEL_106;
        }

LABEL_16:
        if (v6[32])
        {
          if ((*(v6 + 19) & 0x1D) != 1)
          {
            *(v6 + 64) = v63;
          }

          time1.start = v63;
          time2 = *(v6 + 64);
          if (CMTimeCompare(&time1.start, &time2) >= 1)
          {
            v13 = *(v6 + 11);
            if (v13)
            {
              Mutable = CFRetain(v13);
              v7 = 0;
            }

            else
            {
              v7 = 0;
              Mutable = 0;
            }

            break;
          }
        }

        Mutable = CFArrayCreateMutable(v9, *(v6 + 1), v10);
        if (!Mutable)
        {
          sbp_vc_getAndRetainNextSampleBufferFromVisualContextGroupIfReady_cold_4();
          v39 = 0;
          v7 = 0;
          goto LABEL_106;
        }

        v7 = CFArrayCreateMutable(v9, *(v6 + 1), v10);
        if (!v7)
        {
          sbp_vc_getAndRetainNextSampleBufferFromVisualContextGroupIfReady_cold_3();
          goto LABEL_105;
        }

        if (*(v6 + 1) >= 1)
        {
          v14 = 0;
          v15 = 1;
          while (1)
          {
            v16 = CFArrayGetValueAtIndex(*(v6 + 2), v14);
            time2 = v63;
            v17 = *(*(CMBaseObjectGetVTable() + 16) + 48);
            if (!v17)
            {
              goto LABEL_105;
            }

            time1.start = time2;
            if (v17(v16, v9, &time1, 3, &v60, &v59, 0))
            {
              goto LABEL_105;
            }

            if (v60)
            {
              CFArrayAppendValue(Mutable, v60);
              if (v60)
              {
                CFRelease(v60);
                v60 = 0;
              }
            }

            if (v59)
            {
              CFArrayAppendValue(v7, v59);
              if (v59)
              {
                CFRelease(v59);
                v59 = 0;
              }
            }

            LOBYTE(time1.start.value) = 0;
            FigVisualContextGetEarliestSequentialImageTime(v16, 0, 0, &time1);
            if (!LOBYTE(time1.start.value))
            {
              v15 = 0;
            }

            if (++v14 >= *(v6 + 1))
            {
              v18 = v15 == 0;
              v10 = MEMORY[0x1E695E9C0];
              goto LABEL_39;
            }
          }
        }

        v18 = 0;
LABEL_39:
        if (!v6[32])
        {
          break;
        }

        v19 = *(v6 + 11);
        *(v6 + 11) = Mutable;
        CFRetain(Mutable);
        if (v19)
        {
          CFRelease(v19);
        }

        *(v6 + 4) = v63;
        v6[120] = 0;
      }

      while (v18);
      v20 = FigCFArrayGetValueAtIndex();
      if (!v20)
      {
        sbp_vc_getAndRetainNextSampleBufferFromVisualContextGroupIfReady_cold_2();
        goto LABEL_105;
      }

      v21 = v20;
      if (v6[32])
      {
        v6[120] = 1;
        v63 = *(v6 + 64);
        LOBYTE(time1.start.value) = 0;
        FigVisualContextGetEarliestSequentialImageTime(v20, 0, 0, &time1);
        if (LOBYTE(time1.start.value))
        {
          *(v6 + 4) = v51;
          *(v6 + 10) = v4;
        }

        else
        {
          time2 = *(v6 + 64);
          rhs = *(v6 + 40);
          CMTimeAdd(&time1.start, &time2, &rhs);
          *(v6 + 4) = *&time1.start.value;
          *(v6 + 10) = time1.start.epoch;
        }
      }

      if ((v6[140] & 1) == 0)
      {
        break;
      }

      if ((v6[164] & 1) == 0)
      {
        break;
      }

      if (*(v6 + 21))
      {
        break;
      }

      if ((*(v6 + 19) & 0x8000000000000000) != 0)
      {
        break;
      }

      v28 = *(v6 + 9);
      *&time1.start.value = *(v6 + 8);
      *&time1.start.epoch = v28;
      *&time1.duration.timescale = *(v6 + 10);
      time2 = v63;
      if (CMTimeRangeContainsTime(&time1, &time2))
      {
        break;
      }

      LOBYTE(time1.start.value) = 0;
      FigVisualContextGetEarliestSequentialImageTime(v21, 0, 0, &time1);
      if (LOBYTE(time1.start.value))
      {
        *(v6 + 4) = v51;
        *(v6 + 10) = v4;
      }
    }

    if (*(v6 + 25) < 1)
    {
      break;
    }

    v22 = 0;
    v23 = 0;
    while (1)
    {
      v24 = (*(v6 + 23) + v22);
      v25 = *v24;
      time1.start.epoch = *(v24 + 2);
      *&time1.start.value = v25;
      time2 = v63;
      if (CMTimeCompare(&time1.start, &time2) <= 0)
      {
        v26 = (*(v6 + 24) + v22);
        time1.start = v63;
        v27 = *v26;
        time2.epoch = *(v26 + 2);
        *&time2.value = v27;
        if (CMTimeCompare(&time1.start, &time2) < 0)
        {
          break;
        }
      }

      ++v23;
      v22 += 24;
      if (v23 >= *(v6 + 25))
      {
        goto LABEL_63;
      }
    }
  }

LABEL_63:
  if (Mutable)
  {
    v29 = FigCFArrayGetValueAtIndex();
    v60 = v29;
    if (v29)
    {
      v30 = v29;
      v32 = (v6 + 24);
      v31 = *(v6 + 3);
      if (!v31)
      {
        goto LABEL_69;
      }

      if (!CMVideoFormatDescriptionMatchesImageBuffer(v31, v30))
      {
        if (*v32)
        {
          CFRelease(*v32);
          *v32 = 0;
        }

LABEL_69:
        if (CMVideoFormatDescriptionCreateForImageBuffer(v9, v60, v6 + 3))
        {
          goto LABEL_105;
        }
      }
    }
  }

  sampleTiming.presentationTimeStamp = v63;
  sampleTiming.decodeTimeStamp.epoch = v4;
  *&sampleTiming.decodeTimeStamp.value = v51;
  *&sampleTiming.duration.value = v51;
  sampleTiming.duration.epoch = v4;
  if (v6[32])
  {
    *&sampleTiming.duration.value = *(v6 + 40);
    sampleTiming.duration.epoch = *(v6 + 7);
  }

  if (!v60)
  {
    v40 = FigCFArrayGetValueAtIndex();
    v41 = MEMORY[0x1E695E4D0];
    v42 = MEMORY[0x1E69604F8];
    if (v40 && CFDictionaryGetValue(v40, *MEMORY[0x1E69604F8]) == *v41)
    {
      *&sampleTiming.duration.value = v51;
      sampleTiming.duration.epoch = v4;
      v43 = 1;
    }

    else
    {
      v43 = 0;
    }

    if (!CMSampleBufferCreate(v9, 0, 1u, 0, 0, 0, 0, 1, &sampleTiming, 0, 0, &sampleBufferOut))
    {
      v50 = *v41;
      CMSetAttachment(sampleBufferOut, *MEMORY[0x1E69604B0], *v41, 1u);
      if (v43)
      {
        v36 = sampleBufferOut;
        v38 = *v42;
        value = v50;
LABEL_104:
        CMSetAttachment(v36, v38, value, 1u);
      }
    }

LABEL_105:
    v39 = 0;
    goto LABEL_106;
  }

  v33 = *(v6 + 1);
  if (v33 == 1)
  {
    if (!CMSampleBufferCreateForImageBuffer(v9, v60, 1u, 0, 0, *(v6 + 3), &sampleTiming, &sampleBufferOut))
    {
      if (v7)
      {
        if (CFArrayGetCount(v7))
        {
          v34 = CFArrayGetValueAtIndex(v7, 0);
          if (v34)
          {
            time1.start.value = 0;
            v35 = *MEMORY[0x1E69604E0];
            if (CFDictionaryGetValueIfPresent(v34, *MEMORY[0x1E69604E0], &time1))
            {
              v36 = sampleBufferOut;
              value = time1.start.value;
              v38 = v35;
              goto LABEL_104;
            }
          }
        }
      }
    }

    goto LABEL_105;
  }

  if (v33 < 2)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM();
    goto LABEL_105;
  }

  v39 = CFArrayCreateMutable(v9, *(v6 + 1), MEMORY[0x1E695E9C0]);
  if (v39)
  {
    if (*(v6 + 1) < 1)
    {
LABEL_92:
      if (!MEMORY[0x19A8D33F0](v9, v39, Mutable, &cf))
      {
        time1.start = sampleTiming.presentationTimeStamp;
        time2 = sampleTiming.duration;
        if (!FigSampleBufferCreateForTaggedBufferGroup())
        {
          if (v7)
          {
            if (CFArrayGetCount(v7))
            {
              v48 = CFArrayGetValueAtIndex(v7, 0);
              if (v48)
              {
                time1.start.value = 0;
                v49 = *MEMORY[0x1E69604E0];
                if (CFDictionaryGetValueIfPresent(v48, *MEMORY[0x1E69604E0], &time1))
                {
                  CMSetAttachment(sampleBufferOut, v49, time1.start.value, 1u);
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v44 = 0;
      while (!FigTagCollectionCreateMutable())
      {
        v45 = FigTagMakeWithSInt64Value();
        v47 = v46;
        *&v64.category = v45;
        v64.value = v47;
        CMTagCollectionAddTag(tagCollection, v64);
        CFArrayAppendValue(v39, tagCollection);
        if (tagCollection)
        {
          CFRelease(tagCollection);
          tagCollection = 0;
        }

        if (++v44 >= *(v6 + 1))
        {
          goto LABEL_92;
        }
      }
    }
  }

  else
  {
    sbp_vc_getAndRetainNextSampleBufferFromVisualContextGroupIfReady_cold_1();
  }

LABEL_106:
  if (a2)
  {
    *a2 = v61;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v59)
  {
    CFRelease(v59);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (tagCollection)
  {
    CFRelease(tagCollection);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  return sampleBufferOut;
}

uint64_t OUTLINED_FUNCTION_1_101(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 time2, uint64_t time2_16)
{
  time2 = *(v24 - 96);
  time2_16 = *(v24 - 80);

  return CMTimeCompare(&a9, &time2);
}

uint64_t FigPlaybackMemoryReportCurrentTransactions()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v2 = FigOSTransactionCopyDescriptions();
  Count = CFArrayGetCount(v2);
  CFStringAppend(Mutable, @"[");
  if (Count >= 1)
  {
    v4 = 0;
    v5 = Count & 0x7FFFFFFF;
    do
    {
      v6 = v2;
      ValueAtIndex = CFArrayGetValueAtIndex(v2, v4);
      Length = CFStringGetLength(ValueAtIndex);
      v9 = CFStringFind(ValueAtIndex, @":", 0).location + 1;
      v17.length = Length - v9;
      result.location = 0;
      result.length = 0;
      v17.location = v9;
      CFStringFindWithOptions(ValueAtIndex, @" ", v17, 0, &result);
      v18.length = result.location - v9;
      v10 = ValueAtIndex;
      v2 = v6;
      v18.location = v9;
      v11 = CFStringCreateWithSubstring(v0, v10, v18);
      CFStringAppend(Mutable, v11);
      CFStringAppend(Mutable, @",");
      CFRelease(v11);
      ++v4;
    }

    while (v5 != v4);
  }

  v16.location = CFStringGetLength(Mutable) - 1;
  v16.length = 1;
  CFStringReplace(Mutable, v16, @"]");
  if (dword_1EAF17388)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CFRelease(Mutable);
  CFRelease(v2);
  return 0;
}

uint64_t FigPlaybackMemoryReporterStart()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_BACKGROUND, 0);
  gMemoryReporterQueue = dispatch_queue_create("com.apple.coremedia.playback-memory-reporter", v1);
  gMemoryReporterTimer = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, gMemoryReporterQueue);
  dispatch_source_set_timer(gMemoryReporterTimer, 0, 0x45D964B800uLL, 0x3B9ACA00uLL);
  dispatch_source_set_event_handler(gMemoryReporterTimer, &__block_literal_global_45);
  dispatch_activate(gMemoryReporterTimer);
  return 0;
}

uint64_t getpreset_AAC_44kHz_Mono_64kbit(void *a1, void *a2, void *a3, CFDictionaryRef *a4)
{
  StringIntDictionary = getpreset_AAC_44kHz_Mono_64kbit_audioOptions;
  if (!getpreset_AAC_44kHz_Mono_64kbit_audioOptions)
  {
    StringIntDictionary = createStringIntDictionary(64000);
    getpreset_AAC_44kHz_Mono_64kbit_audioOptions = StringIntDictionary;
  }

  *a1 = &getpreset_AAC_44kHz_Mono_64kbit_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = StringIntDictionary;
  return 0;
}

uint64_t getpreset_AAC_22kHz_Mono_32kbit(void *a1, void *a2, void *a3, CFDictionaryRef *a4)
{
  StringIntDictionary = getpreset_AAC_22kHz_Mono_32kbit_audioOptions;
  if (!getpreset_AAC_22kHz_Mono_32kbit_audioOptions)
  {
    StringIntDictionary = createStringIntDictionary(32000);
    getpreset_AAC_22kHz_Mono_32kbit_audioOptions = StringIntDictionary;
  }

  *a1 = &getpreset_AAC_22kHz_Mono_32kbit_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = StringIntDictionary;
  return 0;
}

uint64_t getpreset_AACHE_32kHz_Stereo_36kbit(void *a1, void *a2, void *a3, CFDictionaryRef *a4)
{
  StringIntDictionary = getpreset_AACHE_32kHz_Stereo_36kbit_audioOptions;
  if (!getpreset_AACHE_32kHz_Stereo_36kbit_audioOptions)
  {
    StringIntDictionary = createStringIntDictionary(36000);
    getpreset_AACHE_32kHz_Stereo_36kbit_audioOptions = StringIntDictionary;
  }

  *a1 = &getpreset_AACHE_32kHz_Stereo_36kbit_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = StringIntDictionary;
  return 0;
}

uint64_t getpreset_AACHE_44kHz_Stereo_48kbit(void *a1, void *a2, void *a3, CFDictionaryRef *a4)
{
  StringIntDictionary = getpreset_AACHE_44kHz_Stereo_48kbit_audioOptions;
  if (!getpreset_AACHE_44kHz_Stereo_48kbit_audioOptions)
  {
    StringIntDictionary = createStringIntDictionary(48000);
    getpreset_AACHE_44kHz_Stereo_48kbit_audioOptions = StringIntDictionary;
  }

  *a1 = &getpreset_AACHE_44kHz_Stereo_48kbit_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = StringIntDictionary;
  return 0;
}

uint64_t getpreset_AAC_44kHz_Stereo_128kbit(void *a1, void *a2, void *a3, CFDictionaryRef *a4)
{
  StringIntDictionary = getpreset_AAC_44kHz_Stereo_128kbit_audioOptions;
  if (!getpreset_AAC_44kHz_Stereo_128kbit_audioOptions)
  {
    StringIntDictionary = createStringIntDictionary(128000);
    getpreset_AAC_44kHz_Stereo_128kbit_audioOptions = StringIntDictionary;
  }

  *a1 = &getpreset_AAC_44kHz_Stereo_128kbit_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = StringIntDictionary;
  return 0;
}

uint64_t getpreset_AAC_44kHz_Stereo_256kbit(void *a1, void *a2, void *a3, CFDictionaryRef *a4)
{
  StringIntDictionary = getpreset_AAC_44kHz_Stereo_256kbit_audioOptions;
  if (!getpreset_AAC_44kHz_Stereo_256kbit_audioOptions)
  {
    StringIntDictionary = createStringIntDictionary(256000);
    getpreset_AAC_44kHz_Stereo_256kbit_audioOptions = StringIntDictionary;
  }

  *a1 = &getpreset_AAC_44kHz_Stereo_256kbit_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = StringIntDictionary;
  return 0;
}

uint64_t getpreset_AAC_48kHz_Stereo_128kbit(void *a1, void *a2, void *a3, CFDictionaryRef *a4)
{
  StringIntDictionary = getpreset_AAC_48kHz_Stereo_128kbit_audioOptions;
  if (!getpreset_AAC_48kHz_Stereo_128kbit_audioOptions)
  {
    StringIntDictionary = createStringIntDictionary(128000);
    getpreset_AAC_48kHz_Stereo_128kbit_audioOptions = StringIntDictionary;
  }

  *a1 = &getpreset_AAC_48kHz_Stereo_128kbit_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = StringIntDictionary;
  return 0;
}

uint64_t getpreset_AAC_48kHz_Stereo_160kbit(void *a1, void *a2, void *a3, CFDictionaryRef *a4)
{
  StringIntDictionary = getpreset_AAC_48kHz_Stereo_160kbit_audioOptions;
  if (!getpreset_AAC_48kHz_Stereo_160kbit_audioOptions)
  {
    StringIntDictionary = createStringIntDictionary(160000);
    getpreset_AAC_48kHz_Stereo_160kbit_audioOptions = StringIntDictionary;
  }

  *a1 = &getpreset_AAC_48kHz_Stereo_160kbit_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = StringIntDictionary;
  return 0;
}

uint64_t getpreset_AAC_48kHz_Stereo_256kbit(void *a1, void *a2, void *a3, CFDictionaryRef *a4)
{
  StringIntDictionary = getpreset_AAC_48kHz_Stereo_256kbit_audioOptions;
  if (!getpreset_AAC_48kHz_Stereo_256kbit_audioOptions)
  {
    StringIntDictionary = createStringIntDictionary(256000);
    getpreset_AAC_48kHz_Stereo_256kbit_audioOptions = StringIntDictionary;
  }

  *a1 = &getpreset_AAC_48kHz_Stereo_256kbit_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = StringIntDictionary;
  return 0;
}

uint64_t getpreset_AAC_48kHz_256kbit(void *a1, void *a2, void *a3, CFDictionaryRef *a4)
{
  StringIntDictionary = getpreset_AAC_48kHz_256kbit_audioOptions;
  if (!getpreset_AAC_48kHz_256kbit_audioOptions)
  {
    StringIntDictionary = createStringIntDictionary(256000);
    getpreset_AAC_48kHz_256kbit_audioOptions = StringIntDictionary;
  }

  *a1 = &getpreset_AAC_48kHz_256kbit_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = StringIntDictionary;
  return 0;
}

uint64_t getpreset_AMR_8kHz_Mono_12kbit_CBR(void *a1, void *a2, void *a3, CFDictionaryRef *a4)
{
  StringIntDictionary = getpreset_AMR_8kHz_Mono_12kbit_CBR_audioOptions;
  if (!getpreset_AMR_8kHz_Mono_12kbit_CBR_audioOptions)
  {
    StringIntDictionary = createStringIntDictionary(12200);
    getpreset_AMR_8kHz_Mono_12kbit_CBR_audioOptions = StringIntDictionary;
  }

  *a1 = &getpreset_AMR_8kHz_Mono_12kbit_CBR_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = StringIntDictionary;
  return 0;
}

uint64_t getpreset_iLBC_8kHz_Mono_15kbit(void *a1, void *a2, void *a3, void *a4)
{
  *a1 = &getpreset_iLBC_8kHz_Mono_15kbit_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  return 0;
}

uint64_t getpreset_LPCM_16bit_LE_44kHz_Mono(void *a1, void *a2, void *a3, void *a4)
{
  *a1 = &getpreset_LPCM_16bit_LE_44kHz_Mono_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  return 0;
}

uint64_t getpreset_LPCM_16bit_LE_44kHz_Stereo(void *a1, void *a2, void *a3, void *a4)
{
  *a1 = &getpreset_LPCM_16bit_LE_44kHz_Stereo_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  return 0;
}

uint64_t getpreset_ALAC_44kHz_Mono_16bitSource(void *a1, void *a2, void *a3, void *a4)
{
  *a1 = &getpreset_ALAC_44kHz_Mono_16bitSource_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  return 0;
}

uint64_t getpreset_ALAC_44kHz_Stereo_16bitSource(void *a1, void *a2, void *a3, void *a4)
{
  *a1 = &getpreset_ALAC_44kHz_Stereo_16bitSource_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  return 0;
}

uint64_t getpreset_ALAC_16bit(void *a1, void *a2, void *a3, void *a4)
{
  *a1 = &getpreset_ALAC_16bit_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  return 0;
}

uint64_t getpreset_ALAC(void *a1, void *a2, void *a3, void *a4)
{
  *a1 = &getpreset_ALAC_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  return 0;
}

uint64_t getpreset_iLBC(void *a1, void *a2, void *a3, void *a4)
{
  *a1 = &getpreset_iLBC_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  return 0;
}

uint64_t getpreset_AMR(void *a1, void *a2, void *a3, void *a4)
{
  *a1 = &getpreset_AMR_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  return 0;
}

uint64_t getpreset_LPCM(void *a1, void *a2, void *a3, void *a4)
{
  *a1 = &getpreset_LPCM_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  return 0;
}

uint64_t getpreset_Passthru(void *a1, void *a2, void *a3, void *a4)
{
  *a1 = &getpreset_Passthru_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  return 0;
}

uint64_t getpreset_AAC_22kHz_Mono_24kbit(void *a1, void *a2, void *a3, CFDictionaryRef *a4)
{
  StringIntDictionary = getpreset_AAC_22kHz_Mono_24kbit_audioOptions;
  if (!getpreset_AAC_22kHz_Mono_24kbit_audioOptions)
  {
    StringIntDictionary = createStringIntDictionary(24000);
    getpreset_AAC_22kHz_Mono_24kbit_audioOptions = StringIntDictionary;
  }

  *a1 = &getpreset_AAC_22kHz_Mono_24kbit_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = StringIntDictionary;
  return 0;
}

uint64_t getpreset_AACHE_44kHz_Mono_24kbit(void *a1, void *a2, void *a3, CFDictionaryRef *a4)
{
  StringIntDictionary = getpreset_AACHE_44kHz_Mono_24kbit_audioOptions;
  if (!getpreset_AACHE_44kHz_Mono_24kbit_audioOptions)
  {
    StringIntDictionary = createStringIntDictionary(24000);
    getpreset_AACHE_44kHz_Mono_24kbit_audioOptions = StringIntDictionary;
  }

  *a1 = &getpreset_AACHE_44kHz_Mono_24kbit_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = StringIntDictionary;
  return 0;
}

uint64_t getpreset_AACHE_44kHz_Mono_32kbit(void *a1, void *a2, void *a3, CFDictionaryRef *a4)
{
  StringIntDictionary = getpreset_AACHE_44kHz_Mono_32kbit_audioOptions;
  if (!getpreset_AACHE_44kHz_Mono_32kbit_audioOptions)
  {
    StringIntDictionary = createStringIntDictionary(32000);
    getpreset_AACHE_44kHz_Mono_32kbit_audioOptions = StringIntDictionary;
  }

  *a1 = &getpreset_AACHE_44kHz_Mono_32kbit_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = StringIntDictionary;
  return 0;
}

uint64_t getpreset_NoAudio(void *a1, void *a2, void *a3, void *a4)
{
  *a1 = &getpreset_NoAudio_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  return 0;
}

CFDictionaryRef createStringIntDictionary(int a1)
{
  keys = @"FigAudioCompressionOption_AudioConverterEncodeBitRate";
  valuePtr = a1;
  v1 = *MEMORY[0x1E695E480];
  values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  v2 = CFDictionaryCreate(v1, &keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFRelease(values);
  return v2;
}

uint64_t FigPictureCollectionCreateFromByteStreamWithOptions(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  cf = 0;
  if (!a2)
  {
    FigPictureCollectionCreateFromByteStreamWithOptions_cold_2(&v12);
    return v12;
  }

  if (!a4)
  {
    FigPictureCollectionCreateFromByteStreamWithOptions_cold_1(&v12);
    return v12;
  }

  if (a3)
  {
    FigCFDictionaryGetBooleanIfPresent();
  }

  v7 = IFFParseByteStreamAndCreateItemInformation(0, a2, &cf);
  v8 = cf;
  if (v7)
  {
    IFFPictureCollection = v7;
    if (!cf)
    {
      return IFFPictureCollection;
    }

    goto LABEL_7;
  }

  IFFPictureCollection = CreateIFFPictureCollection(a1, cf, a4);
  v8 = cf;
  if (cf)
  {
LABEL_7:
    CFRelease(v8);
  }

  return IFFPictureCollection;
}

uint64_t CreateIFFPictureCollection(uint64_t a1, const void *a2, void *a3)
{
  FigPictureCollectionGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a2)
    {
      v7 = CFRetain(a2);
    }

    else
    {
      v7 = 0;
    }

    *DerivedStorage = v7;
    *a3 = 0;
  }

  return v5;
}

uint64_t FigPictureCollectionCreateFromIFFItemInformation(uint64_t a1, const void *a2, void *a3)
{
  if (a2)
  {
    if (a3)
    {

      return CreateIFFPictureCollection(a1, a2, a3);
    }

    else
    {
      FigPictureCollectionCreateFromIFFItemInformation_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    FigPictureCollectionCreateFromIFFItemInformation_cold_2(&v5);
    return v5;
  }
}

void IFFPictureCollectionFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *IFFPictureCollectionCopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v4 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"<IFFPictureCollection %p retainCount %ld iiP %p>", a1, v4, *DerivedStorage);
  return Mutable;
}

uint64_t IFFPictureCollectionCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (a4)
  {
    v6 = DerivedStorage;
    if (FigCFEqual())
    {
      IsMIAF = IFFInformationCopyTracksDetected(*v6, &cf);
      if (!IsMIAF)
      {
LABEL_4:
        if (cf)
        {
          v8 = 0;
        }

        else
        {
          v8 = 4294954513;
        }

        *a4 = cf;
        return v8;
      }

      goto LABEL_11;
    }

    if (FigCFEqual())
    {
      IsMIAF = IFFInformationCopyMajorBrand(*v6, &cf);
      if (!IsMIAF)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }

    if (FigCFEqual())
    {
      IsMIAF = IFFInformationCopyMajorBrandsMinorVersion(*v6, &cf);
      if (!IsMIAF)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }

    if (FigCFEqual())
    {
      IsMIAF = IFFInformationCopyCompatibleBrands(*v6, &cf);
      if (!IsMIAF)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }

    if (FigCFEqual())
    {
      IsMIAF = IFFInformationCopyPrimaryItemIndex(*v6, &cf);
      if (!IsMIAF)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }

    if (FigCFEqual())
    {
      IsMIAF = IFFInformationCopySourceIsMIAF(*v6, &cf);
      if (!IsMIAF)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }

    if (FigCFEqual())
    {
      IsMIAF = CreateGroupsListDescriptor();
      if (!IsMIAF)
      {
        goto LABEL_4;
      }

LABEL_11:
      v8 = IsMIAF;
      goto LABEL_30;
    }

    if (FigCFEqual())
    {
      IsMIAF = IFFInformationCopySourceSpecifiesOrientation(*v6, &cf);
      if (!IsMIAF)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }

    v8 = 4294954512;
  }

  else
  {
    IFFPictureCollectionCopyProperty_cold_1(&v11);
    v8 = v11;
  }

LABEL_30:
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t _createGroupDescription(uint64_t a1, uint64_t a2, __CFDictionary **a3)
{
  if (!*(a2 + 28))
  {
    return 0;
  }

  v6 = *(a2 + 24);
  if (v6 == 1937007986)
  {
    v7 = kFigPictureCollection_GroupType_StereoPair;
    goto LABEL_7;
  }

  if (v6 == 1634497650)
  {
    v7 = kFigPictureCollection_GroupType_Alternate;
LABEL_7:
    v9 = *v7;
    v10 = *(a2 + 48);
    if (!v10)
    {
      v13 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      goto LABEL_24;
    }

    Count = CFArrayGetCount(v10);
    if (Count < 0x80000000)
    {
      v12 = Count;
      v13 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
      if (v12 >= 1)
      {
        v15 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 48), v15);
          if (*(ValueAtIndex + 17))
          {
            v47 = 0;
            GroupByID = IFFInformationGetGroupByID(a1, *(ValueAtIndex + 10), &v47);
            if (GroupByID)
            {
              goto LABEL_69;
            }

            value = 0;
            GroupByID = _createGroupDescription(a1, v47, &value);
            if (GroupByID)
            {
              goto LABEL_69;
            }

            v18 = value;
            CFArrayAppendValue(Mutable, value);
            if (v18)
            {
              CFRelease(v18);
            }
          }

          else
          {
            LODWORD(v47) = 0;
            GroupByID = IFFInformationGetIndexOfPicture(a1, *(ValueAtIndex + 4), &v47);
            if (GroupByID || (GroupByID = FigCFArrayAppendInt32(), GroupByID))
            {
LABEL_69:
              v8 = GroupByID;
              goto LABEL_66;
            }
          }

          if (v12 == ++v15)
          {
            v19 = v12 > 2;
            goto LABEL_25;
          }
        }
      }

LABEL_24:
      v19 = 0;
LABEL_25:
      v21 = CFDictionaryCreateMutable(v13, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!v21)
      {
        v8 = 4294954450;
        goto LABEL_66;
      }

      v22 = v21;
      CFDictionarySetValue(v21, @"GroupType", v9);
      CFDictionarySetValue(v22, @"GroupPictureIndexList", Mutable);
      v23 = FigCFDictionarySetInt32();
      if (v23 || (v23 = FigCFDictionarySetInt32(), v23))
      {
        v8 = v23;
      }

      else
      {
        if (*(a2 + 24) != 1937007986)
        {
          v25 = 0;
LABEL_59:
          if (FigCFDictionaryGetCount() >= 1)
          {
            CFDictionarySetValue(v22, @"GroupPropertiesKey", v25);
          }

          v8 = 0;
          *a3 = v22;
          v22 = 0;
          goto LABEL_62;
        }

        MutableCopy = FigCFDictionaryCreateMutableCopy();
        if (MutableCopy)
        {
          v25 = MutableCopy;
          v26 = *(a2 + 40);
          if (*(v26 + 216))
          {
            v27 = FigCFDictionarySetInt32();
            if (v27)
            {
              v8 = v27;
              goto LABEL_63;
            }

            v26 = *(a2 + 40);
          }

          v28 = *(v26 + 224);
          if (v28)
          {
            v44 = CFArrayGetCount(v28);
            if (v44 >= 1)
            {
              v42 = v22;
              v41 = a3;
              v43 = Mutable;
              v29 = FigCFArrayCreateMutableCopy();
              if (!v29)
              {
                v8 = 4294954450;
                goto LABEL_63;
              }

              v30 = v29;
              v31 = 0;
              v32 = 0;
              while (1)
              {
                v45 = v31;
                v33 = FigCFArrayGetValueAtIndex();
                if (*v33)
                {
                  break;
                }

LABEL_48:
                v31 = v45 + 1;
                if (v45 + 1 == v44)
                {
                  v8 = 0;
                  goto LABEL_53;
                }
              }

              v34 = v33;
              v35 = 0;
              v36 = 0;
              while (1)
              {
                if (v32)
                {
                  CFRelease(v32);
                }

                v32 = FigCFDictionaryCreateMutableCopy();
                if (!v32)
                {
                  break;
                }

                FigCFDictionarySetValue();
                v37 = *(v34 + 1);
                if (*(v37 + v35 + 1))
                {
                  v38 = FigCFDictionarySetFloat();
                  if (v38)
                  {
                    v8 = v38;
                    goto LABEL_52;
                  }

                  v37 = *(v34 + 1);
                }

                v39 = *(v37 + v35 + 8);
                if (v39)
                {
                  CFDictionarySetValue(v32, @"SubTypeURI", v39);
                }

                CFArrayAppendValue(v30, v32);
                ++v36;
                v35 += 16;
                if (v36 >= *v34)
                {
                  goto LABEL_48;
                }
              }

              v8 = 4294954450;
LABEL_52:
              CFRelease(v30);
              v30 = 0;
LABEL_53:
              v22 = v42;
              Mutable = v43;
              if (v32)
              {
                CFRelease(v32);
              }

              if (v8)
              {
LABEL_62:
                if (!v25)
                {
                  goto LABEL_64;
                }

                goto LABEL_63;
              }

              _createGroupDescription_cold_2(v30, v25);
              a3 = v41;
            }
          }

          if (!v19)
          {
            goto LABEL_59;
          }

          v40 = FigCFDictionarySetInt32();
          if (!v40)
          {
            goto LABEL_59;
          }

          v8 = v40;
LABEL_63:
          CFRelease(v25);
LABEL_64:
          if (!v22)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        }

        v8 = 4294954450;
      }

LABEL_65:
      CFRelease(v22);
LABEL_66:
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      return v8;
    }

    _createGroupDescription_cold_1(&v47);
    return v47;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t IFFPictureCollectionGetPictureCount(uint64_t a1, int a2, CFIndex *a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();

  return IFFInformationGetPictureCount(v5, a2, a3);
}

uint64_t CreatePictureReader(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  v13 = 0;
  FigPictureReaderGetClassID();
  v7 = CMDerivedObjectCreate();
  v8 = v7;
  if (v7)
  {
    CreatePictureReader_cold_1(v7, &v13, &v14);
    v11 = v14;
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a2)
    {
      v10 = CFRetain(a2);
    }

    else
    {
      v10 = 0;
    }

    *DerivedStorage = v10;
    DerivedStorage[1] = a3;
    v11 = v13;
  }

  *a4 = v11;
  return v8;
}

void PictureReaderFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 8) = 0;
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *PictureReaderCopyDebugDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"<IFFPictureReader %p> rc %ld", a1, v4);
  return Mutable;
}

uint64_t PictureReaderCopyPictureTileCursorService(uint64_t a1, CFTypeRef *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFGetAllocator(*DerivedStorage);
  v5 = *DerivedStorage;
  v4 = *(DerivedStorage + 8);
  cf = 0;
  if (!IFFPictureTileAccessorSupportsPicture(v4))
  {
    return 4294950135;
  }

  FigPictureTileCursorServiceGetClassID();
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    v9 = v6;
    PictureReaderCopyPictureTileCursorService_cold_1(v6, &cf);
  }

  else
  {
    v7 = CMBaseObjectGetDerivedStorage();
    if (v5)
    {
      v8 = CFRetain(v5);
    }

    else
    {
      v8 = 0;
    }

    *v7 = v8;
    v7[1] = v4;
    if (a2)
    {
      v9 = 0;
      *a2 = cf;
    }

    else
    {
      if (cf)
      {
        CFRelease(cf);
      }

      return 0;
    }
  }

  return v9;
}

void PictureReaderCopyXMPLocationByIndex()
{
  CMBaseObjectGetDerivedStorage();

  IFFPictureCopyXMPLocationByIndex();
}

void PictureReaderCopyDebugMetadataLocationByIndex(uint64_t a1, CFIndex a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);

  IFFPictureCopyDebugMetadataLocationByIndex(v3, a2);
}

uint64_t PictureReaderCopySampleLocationByIndex(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = *(CMBaseObjectGetDerivedStorage() + 8);

  return IFFPictureCopySampleLocation(v11, a2, a3, a4, a5, a6);
}

void PictureReaderCopyCustomMetadataLocationByIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, CFStringRef *a21)
{
  v28 = *(CMBaseObjectGetDerivedStorage() + 8);

  IFFPictureCopyCustomMetadataLocationByIndex(v28, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

void PictureReaderCopyExifLocationAndEncodingByIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, CFStringRef *a21)
{
  v28 = *(CMBaseObjectGetDerivedStorage() + 8);

  IFFPictureCopyExifLocationByIndex(v28, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

void PictureReaderCopyXMPLocationAndEncodingByIndex()
{
  CMBaseObjectGetDerivedStorage();

  IFFPictureCopyXMPLocationByIndex();
}

void PictureTileCursorServiceFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 8) = 0;
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *PictureTileCursorServiceCopyDebugDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<IFFPictureTileCursorService %p>", a1);
  return Mutable;
}

uint64_t PictureTileCursorServiceCreateCursorAtFirstTile(const void *a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CFGetAllocator(a1);
  v6 = *DerivedStorage;
  v7 = *(DerivedStorage + 8);

  return CreatePictureTileCursor(v5, v6, v7, a2);
}

uint64_t CreatePictureTileCursor(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  FigPictureTileCursorGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    v10 = v7;
    CreatePictureTileCursor_cold_1();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a2)
    {
      v9 = CFRetain(a2);
    }

    else
    {
      v9 = 0;
    }

    *DerivedStorage = v9;
    v10 = IFFPictureTileAccessorCreate(a3, DerivedStorage + 1);
    if (!v10)
    {
      *a4 = 0;
    }
  }

  return v10;
}

void PictureTileCursorFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  IFFPictureTileAccessorDispose(*(DerivedStorage + 8));
  *(DerivedStorage + 8) = 0;
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *PictureTileCursorCopyDebugDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<IFFPictureTileCursor %p>", a1);
  return Mutable;
}

uint64_t PictureTileCursorResetToBeginning()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 8);

  return IFFPictureTileAccessorResetCursor(v0);
}

uint64_t PictureTileCursorMoveToPosition(uint64_t a1, unint64_t a2, unint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  IFFPictureTileAccessorSeekCursorToLocation(*(DerivedStorage + 8), a2, a3);
  if (v6)
  {
    return 4294950126;
  }

  else
  {
    return 0;
  }
}

uint64_t PictureTileCursorCopySampleLocation(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = *(CMBaseObjectGetDerivedStorage() + 8);

  return IFFPictureTileAccessorCopySampleLocation(v11, a2, a3, a4, a5, a6);
}

uint64_t OUTLINED_FUNCTION_2_98(uint64_t a1)
{
  result = 0;
  *v1 = a1;
  return result;
}

uint64_t FigContentKeyBossStartServer()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigContentKeyBossStartServer_block_invoke;
  block[3] = &unk_1E748C678;
  block[4] = &v3;
  if (FigContentKeyBossStartServer_sFigContentKeyBossServerSetupOnce != -1)
  {
    dispatch_once(&FigContentKeyBossStartServer_sFigContentKeyBossServerSetupOnce, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

void __FigContentKeyBossStartServer_block_invoke(uint64_t a1)
{
  AllocatorForPermanentAllocations = FigGetAllocatorForPermanentAllocations();
  Mutable = CFDictionaryCreateMutable(AllocatorForPermanentAllocations, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v4 = Mutable;
    FigCFDictionarySetInt32();
    if (!FigServer_IsMediaparserd())
    {
      FigServer_IsMediaplaybackd();
    }

    *(*(*(a1 + 32) + 8) + 24) = FigXPCServerStart();
    CFRelease(v4);
  }

  else
  {
    __FigContentKeyBossStartServer_block_invoke_cold_1(a1);
  }
}

void FigCFRelease_7(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FigContentKeyBossServerGetIDByAssociatingWithClientConnection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {

        return FigXPCServerAssociateObjectWithNeighborProcess();
      }

      else
      {
        FigContentKeyBossServerGetIDByAssociatingWithClientConnection_cold_1(&v4);
        return v4;
      }
    }

    else
    {
      FigContentKeyBossServerGetIDByAssociatingWithClientConnection_cold_2(&v5);
      return v5;
    }
  }

  else
  {
    FigContentKeyBossServerGetIDByAssociatingWithClientConnection_cold_3(&v6);
    return v6;
  }
}

void ckbservercompanion_finalize(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    os_release(v2);
    *(a1 + 40) = 0;
  }

  FigXPCRelease();
  v3 = *(a1 + 32);
  if (v3)
  {

    dispatch_release(v3);
  }
}

uint64_t OUTLINED_FUNCTION_0_113(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{

  return ckbserver_copyBossAndCompanion(v18, v17, &a17, 0);
}

uint64_t OUTLINED_FUNCTION_10_38(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{

  return ckbserver_copyBossAndCompanion(v14, v13, &a13, (v15 - 72));
}

uint64_t OUTLINED_FUNCTION_14_32()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_15_31()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_16_27()
{

  return FigXPCServerLookupAndRetainAssociatedObject();
}

void OUTLINED_FUNCTION_17_26(void *a1@<X8>)
{
  v3 = *(v1 + 16);

  xpc_connection_send_message(v3, a1);
}

uint64_t FigVisualContextServerRetainVisualContextForID(uint64_t a1, CFTypeRef *a2)
{
  v3 = FigXPCServerRetainNeighborObjectFromID();
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    if (*a2)
    {
      v4 = CFGetTypeID(*a2);
      if (v4 == FigVisualContextGetTypeID())
      {
        return 0;
      }
    }

    FigVisualContextServerRetainVisualContextForID_cold_1(&v7);
    v5 = v7;
  }

  if (a2 && v5 && *a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }

  return v5;
}

uint64_t FigVisualContextServerStart()
{
  if (FigServer_IsMediaparserd())
  {
    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

  else
  {
    FigServer_IsMediaplaybackd();
    return FigXPCServerStart();
  }
}

void DisposeServedVisualContextState(uint64_t a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v3)
      {
        v3(v2);
      }

      CFRelease(*a1);
    }

    FigXPCRelease();
    v4 = *(a1 + 24);
    if (v4)
    {
      os_release(v4);
    }

    free(a1);
  }
}

uint64_t vcs_ImageAvailableImmediateCallback(uint64_t a1, __int128 *a2, unsigned int a3, uint64_t a4)
{
  v5 = *a2;
  v6 = *(a2 + 2);
  return vcs_SendCallback(&v5, a3, a4, 1229015405);
}

__n128 OUTLINED_FUNCTION_4_81(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13, uint64_t a14)
{
  result = a13;
  v14[7] = a13;
  *(v15 - 112) = a14;
  return result;
}

__n128 OUTLINED_FUNCTION_5_70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13, uint64_t a14)
{
  result = a13;
  v14[5] = a13;
  *(v15 - 144) = a14;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_48()
{

  return FigXPCMessageGetCMTime();
}

void mediaprocessor_UpcomingPTSInfoChanged(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    mediaprocessor_UpdateUpcomingOutputPTSRangeAnnouncement(a2, 0, MEMORY[0x1E6960C70]);

    mediaprocessor_TriggerSchedulingIfOutputIsLow(a2);
  }
}

uint64_t mediaprocessor_ResetOutput(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 16);
  result = VTable + 16;
  v6 = *(v5 + 72);
  if (v6)
  {

    return v6(v2);
  }

  return result;
}

uint64_t mediaprocessor_SessionTerminated()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t FigMediaProcessorIsAtEndOfInputData(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v2)
  {
    return 0;
  }

  return v2(v1);
}

uint64_t FigMediaProcessorFlush(uint64_t a1)
{
  if (*(a1 + 16))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    FigSimpleMutexLock();
    do
    {
      v4 = 0;
      v3 = mediaprocessor_DequeueAndProcessSampleBuffer(a1, &v4);
    }

    while (!v3 && !v4);
    FigSimpleMutexUnlock();
    return v3;
  }
}

uint64_t mediaprocessor_DequeueAndProcessSampleBuffer(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;
  if (*(a1 + 90) && *(*(CMBaseObjectGetVTable() + 16) + 40))
  {
    v4 = *(a1 + 32);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  v6 = v5(v4);
  v7 = v6;
  if (v6)
  {
    memset(&v15, 0, sizeof(v15));
    CMSampleBufferGetOutputPresentationTimeStamp(&v15, v6);
    v14 = v15;
    mediaprocessor_UpdateUpcomingOutputPTSRangeAnnouncement(a1, 1, &v14.value);
    v8 = *(a1 + 24);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v9)
    {
      v10 = v9(v8, v7);
    }

    else
    {
      v10 = 4294954514;
    }

    mediaprocessor_UpdateUpcomingOutputPTSRangeAnnouncement(a1, 1, MEMORY[0x1E6960C70]);
    CFRelease(v7);
    return v10;
  }

LABEL_9:
  *a2 = 1;
  if (!*(a1 + 89) && FigMediaProcessorIsAtEndOfInputData(a1))
  {
    v11 = *(a1 + 24);
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v12)
    {
      v12(v11);
    }

    *(a1 + 89) = 1;
  }

  if (*(a1 + 88) || !FigMediaProcessorIsAtEndOfInputData(a1) || !*(a1 + 89))
  {
    return 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v10 = 0;
  *(a1 + 88) = 1;
  return v10;
}

uint64_t FigMediaProcessorReset(uint64_t a1, int a2)
{
  if (!*(a1 + 16))
  {
    FigSimpleMutexLock();
    if (a2)
    {
      FigMediaProcessorFlush(a1);
      v5 = *(a1 + 24);
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v6)
      {
        v6(v5);
      }

      v7 = *(a1 + 40);
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 72);
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v7 = *(a1 + 24);
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v8)
      {
LABEL_12:
        *(a1 + 88) = 0;
        FigSimpleMutexUnlock();
        return 0;
      }
    }

    v8(v7);
    goto LABEL_12;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t FigMediaProcessorSetWaterLevels(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 16) && (*(a2 + 12) & 1) != 0 && (*(a3 + 12) & 1) != 0)
  {
    FigSimpleMutexLock();
    v7 = CFGetAllocator(a1);
    v16 = *a2;
    v8 = CMTimeCopyAsDictionary(&v16, v7);
    if (v8)
    {
      v9 = v8;
      v10 = *(a1 + 40);
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v11 || v11(v10, @"HighWaterDuration", v9))
      {
        FigMediaProcessorSetWaterLevels_cold_3();
        v13 = 0;
      }

      else
      {
        v12 = CFGetAllocator(a1);
        v16 = *a3;
        v13 = CMTimeCopyAsDictionary(&v16, v12);
        if (v13)
        {
          v14 = *(a1 + 40);
          v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (!v15 || v15(v14, @"LowWaterDuration", v13))
          {
            FigMediaProcessorSetWaterLevels_cold_1();
          }

          else
          {
            mediaprocessor_TriggerSchedulingIfOutputIsLow(a1);
          }
        }

        else
        {
          FigMediaProcessorSetWaterLevels_cold_2();
        }
      }

      FigSimpleMutexUnlock();
      CFRelease(v9);
      if (v13)
      {
        CFRelease(v13);
      }
    }

    else
    {
      FigMediaProcessorSetWaterLevels_cold_4();
    }

    return 0;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t FigMediaProcessorCopyPerformanceDictionary(uint64_t a1, CFDictionaryRef *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  v27 = 0;
  v16 = 0;
  keys = @"NumberOfSampleBuffersOutput";
  v3 = *MEMORY[0x1E695E480];
  values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, (a1 + 152));
  v4 = CFDictionaryCreate(v3, &keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFRelease(values);
  *a2 = v4;
  return 0;
}

uint64_t FigMediaProcessorSetProperty(uint64_t a1, CFTypeRef cf1, const void *a3)
{
  if (*(a1 + 16))
  {
    return 0;
  }

  if (!cf1)
  {
    return 4294954501;
  }

  if (CFEqual(cf1, @"ClientPID"))
  {
    FigBaseObject = FigActivitySchedulerGetFigBaseObject(*(a1 + 64));
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v8)
    {
      v9 = kFigActivitySchedulerProperty_ClientPID;
LABEL_11:
      v10 = *v9;

      return v8(FigBaseObject, v10, a3);
    }

    return 4294954514;
  }

  if (CFEqual(cf1, @"ThrottleForBackground"))
  {
    FigBaseObject = FigActivitySchedulerGetFigBaseObject(*(a1 + 64));
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v8)
    {
      v9 = kFigActivitySchedulerProperty_ThrottleForBackground;
      goto LABEL_11;
    }

    return 4294954514;
  }

  if (CFEqual(cf1, @"ActivitySchedulerPriority"))
  {
    v11 = FigActivitySchedulerGetFigBaseObject(*(a1 + 64));

    return CMBaseObjectSetProperty(v11, @"ThreadPriority", a3);
  }

  if (!CFEqual(cf1, @"MinimizeMemoryUsage"))
  {
    return 4294954501;
  }

  result = FigMediaProcessorGetVTCompressionSession(a1);
  if (result)
  {
    VTSessionSetProperty(result, *MEMORY[0x1E69836D0], a3);
    return 0;
  }

  return result;
}

CFStringRef mediaprocessor_CopyFormattingDesc(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = " (invalidated)";
  }

  else
  {
    v1 = "";
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[FigMediaProcessor %p%s]", a1, v1);
}

__CFString *mediaprocessor_CopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetRetainCount(a1);
  if (*(a1 + 16))
  {
    v5 = " (invalidated)";
  }

  else
  {
    v5 = "";
  }

  v6 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigMediaProcessor %p retainCount: %d%s allocator: %p, ", a1, v4, v5, v6);
  CFStringAppendFormat(Mutable, 0, @"sampleBufferProcessor %@, sampleBufferProvider %@, sampleBufferConsumer %@, activityScheduler %@", *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 64));
  CFStringAppendFormat(Mutable, 0, @", numberOfSampleBuffersOutput %d", *(a1 + 152));
  if (*(a1 + 88))
  {
    v7 = " (didSendReachedEndOfOutputData)";
  }

  else
  {
    v7 = "";
  }

  if (*(a1 + 89))
  {
    v8 = " (didFinishPendingProcessingAtEndOfInput)";
  }

  else
  {
    v8 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"%s%s", v7, v8);
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t mediaprocessor_UpdateUpcomingOutputPTSRangeAnnouncement(uint64_t result, int a2, __int128 *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  value = *MEMORY[0x1E6960C88];
  timescale = *(MEMORY[0x1E6960C88] + 8);
  v21 = *MEMORY[0x1E6960C80];
  v22 = *(MEMORY[0x1E6960C80] + 8);
  if (!*(result + 16))
  {
    v5 = result;
    v6 = *(MEMORY[0x1E6960C88] + 12);
    epoch = *(MEMORY[0x1E6960C88] + 16);
    flags = *(MEMORY[0x1E6960C80] + 12);
    v9 = *(MEMORY[0x1E6960C80] + 16);
    LOBYTE(v18.value) = 0;
    memset(&v20, 0, sizeof(v20));
    memset(&time1, 0, sizeof(time1));
    v10 = *(result + 32);
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v11)
    {
      v11(v10, &v18, &v20, &time1);
      if (LOBYTE(v18.value))
      {
        if (v20.flags)
        {
          value = v20.value;
          timescale = v20.timescale;
          epoch = v20.epoch;
          v21 = time1.value;
          flags = time1.flags;
          v22 = time1.timescale;
          v6 = v20.flags;
          v9 = time1.epoch;
        }
      }
    }

    FigSimpleMutexLock();
    if (a2)
    {
      v12 = *a3;
      *(v5 + 112) = *(a3 + 2);
      *(v5 + 96) = v12;
    }

    if ((*(v5 + 108) & 0x1D) == 1)
    {
      time1.value = value;
      time1.timescale = timescale;
      time1.flags = v6;
      time1.epoch = epoch;
      v18 = *(v5 + 96);
      CMTimeMinimum(&v20, &time1, &v18);
      value = v20.value;
      v6 = v20.flags;
      timescale = v20.timescale;
      epoch = v20.epoch;
      time1.value = v21;
      time1.timescale = v22;
      time1.flags = flags;
      time1.epoch = v9;
      v18 = *(v5 + 96);
      CMTimeMaximum(&v20, &time1, &v18);
      v21 = v20.value;
      flags = v20.flags;
      v22 = v20.timescale;
      v9 = v20.epoch;
    }

    v20.value = value;
    v20.timescale = timescale;
    v20.flags = v6;
    v20.epoch = epoch;
    time1 = *(v5 + 120);
    if (CMTimeCompare(&v20, &time1))
    {
      *(v5 + 120) = value;
      *(v5 + 128) = timescale;
      *(v5 + 132) = v6;
      *(v5 + 136) = epoch;
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v14 = MEMORY[0x1E695E4D0];
      if ((v6 & 0x1D) == 1)
      {
        v15 = *MEMORY[0x1E695E4D0];
        v20.value = value;
        v20.timescale = timescale;
        v20.flags = v6;
        v20.epoch = epoch;
        FigCFDictionarySetCMTime();
      }

      else
      {
        v15 = *MEMORY[0x1E695E4C0];
      }

      if ((flags & 0x1D) == 1)
      {
        v15 = *v14;
        v20.value = v21;
        v20.timescale = v22;
        v20.flags = flags;
        v20.epoch = v9;
        FigCFDictionarySetCMTime();
      }

      CFDictionarySetValue(Mutable, *MEMORY[0x1E6960590], v15);
      v16 = *(v5 + 40);
      v17 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (v17)
      {
        v17(v16, *MEMORY[0x1E69605A8], Mutable, 0);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t FigCaptionDataCreateForTTML(uint64_t a1, const void *a2, const void *a3, const void *a4, const void *a5, uint64_t a6, void *a7)
{
  if (a7)
  {
    FigCaptionDataGetClassID();
    v13 = CMDerivedObjectCreate();
    if (!v13)
    {
      if (a2)
      {
        v14 = CFRetain(a2);
      }

      else
      {
        v14 = 0;
      }

      MEMORY[0] = v14;
      if (a3)
      {
        v15 = CFRetain(a3);
      }

      else
      {
        v15 = 0;
      }

      MEMORY[8] = v15;
      MEMORY[0x18] = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      if (a5)
      {
        v16 = CFRetain(a5);
      }

      else
      {
        v16 = 0;
      }

      MEMORY[0x38] = v16;
      if (a4)
      {
        v17 = CFRetain(a4);
      }

      else
      {
        v17 = 0;
      }

      MEMORY[0x28] = v17;
      MEMORY[0x40] = a6;
      v13 = 0;
      MEMORY[0x48] = FigSimpleMutexCreate();
      *a7 = 0;
    }
  }

  else
  {
    FigCaptionDataCreateForTTML_cold_1(&v19);
    return v19;
  }

  return v13;
}

uint64_t fcd_ttml_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

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

  v7 = *(DerivedStorage + 56);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 56) = 0;
  }

  result = FigSimpleMutexDestroy();
  *(DerivedStorage + 72) = 0;
  return result;
}

__CFString *fcd_ttml_CopyDebugDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v4)
  {
    v5 = v4(a1);
  }

  else
  {
    v5 = &stru_1F0B1AFB8;
  }

  CFStringAppendFormat(Mutable, 0, @"\tCaptionData: %p text<%@>", a1, v5);
  return Mutable;
}

uint64_t fcd_ttml_CopyProperty(const void *a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    DerivedStorage = 0;
  }

  cf = 0;
  if (!a2)
  {
    fcd_ttml_CopyProperty_cold_2(&v60);
    return v60;
  }

  if (!a4)
  {
    fcd_ttml_CopyProperty_cold_1(&v60);
    NodeType = v60;
    goto LABEL_23;
  }

  if (CFEqual(a2, *MEMORY[0x1E6961270]))
  {
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v9)
    {
      v10 = v9(a1);
      if (!v10)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v10 = &stru_1F0B1AFB8;
    }

LABEL_11:
    v10 = CFRetain(v10);
LABEL_12:
    NodeType = 0;
    cf = v10;
LABEL_13:
    *a4 = cf;
    return NodeType;
  }

  v13 = *MEMORY[0x1E6961268];
  if (CFEqual(a2, *MEMORY[0x1E6961268]) || (v13 = *MEMORY[0x1E6961210], CFEqual(a2, *MEMORY[0x1E6961210])))
  {
    IsLoaded = fcd_ttml_ensureStyledTextIsLoaded(a1);
    if (!IsLoaded)
    {
      CMBaseObject = FigCaptionDataGetCMBaseObject();
      v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v16)
      {
        NodeType = 4294954514;
        goto LABEL_23;
      }

      v17 = v16(CMBaseObject, v13, a3, &cf);
      goto LABEL_20;
    }

LABEL_138:
    NodeType = IsLoaded;
    goto LABEL_23;
  }

  if (CFEqual(a2, *MEMORY[0x1E6961240]))
  {
    if (a1)
    {
      v18 = CMBaseObjectGetDerivedStorage();
    }

    else
    {
      v18 = 0;
    }

    if (*(v18 + 48))
    {
      goto LABEL_136;
    }

    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    fcd_ttml_getCaptionTimeRange(*v18, &v57);
    v19 = *(v18 + 8);
    v20 = *(v18 + 40);
    v21 = *(v18 + 64);
    v54[0] = 0;
    v64 = 0;
    v65[0] = 0;
    Mutable = FigTTMLRegionCopyID(v20, &v64);
    v23 = MEMORY[0x1E695E480];
    if (Mutable)
    {
      goto LABEL_144;
    }

    Mutable = FigCaptionRegionCreateMutable();
    if (Mutable)
    {
      goto LABEL_144;
    }

    v24 = FigCaptionRegionGetCMBaseObject();
    v25 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v25)
    {
      v29 = 0;
      NodeType = 4294954514;
      goto LABEL_77;
    }

    Mutable = v25(v24, *MEMORY[0x1E6961338], &stru_1F0B1AFB8);
    if (Mutable)
    {
LABEL_144:
      NodeType = Mutable;
    }

    else
    {
      if (!FigGeometryAspectRatioIsValid())
      {
        goto LABEL_65;
      }

      v26 = FigGeometryAspectRatioCopyAsDictionary();
      v27 = FigCaptionRegionGetCMBaseObject();
      v28 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v28)
      {
        NodeType = v28(v27, *MEMORY[0x1E6961310], v26);
      }

      else
      {
        NodeType = 4294954514;
      }

      if (v26)
      {
        CFRelease(v26);
      }

      if (!NodeType)
      {
LABEL_65:
        if ((*(v21 + 92) & 1) == 0 || (*(v21 + 104) & 0x100000000) == 0 || (*(v21 + 124) & 1) == 0 || (*(v21 + 136) & 0x100000000) == 0)
        {
          goto LABEL_66;
        }

        v31 = *(v21 + 96);
        v60 = *(v21 + 80);
        v61 = v31;
        v32 = *(v21 + 128);
        v62 = *(v21 + 112);
        v63 = v32;
        v33 = FigGeometryRectCopyAsDictionary();
        v34 = FigCaptionRegionGetCMBaseObject();
        v35 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v35)
        {
          NodeType = v35(v34, *MEMORY[0x1E69612D0], v33);
        }

        else
        {
          NodeType = 4294954514;
        }

        if (v33)
        {
          CFRelease(v33);
        }

        if (!NodeType)
        {
LABEL_66:
          CellResolutionProperty = fcd_ttml_createCellResolutionProperty(v21);
          v37 = FigCaptionRegionGetCMBaseObject();
          v38 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v38)
          {
            NodeType = v38(v37, *MEMORY[0x1E69612F0], CellResolutionProperty);
          }

          else
          {
            NodeType = 4294954514;
          }

          if (!*(v21 + 192) || !*(v21 + 196))
          {
            goto LABEL_159;
          }

          FigGeometryDimensionMake();
          v49 = fcd_ttml_setDimensionProperty();
          if (v49)
          {
            NodeType = v49;
            goto LABEL_155;
          }

          FigGeometryDimensionMake();
          NodeType = fcd_ttml_setDimensionProperty();
          if (!NodeType)
          {
LABEL_159:
            if (FigCFEqual())
            {
              if (v65[0])
              {
                v29 = CFRetain(v65[0]);
              }

              else
              {
                v29 = 0;
              }

LABEL_75:
              v54[0] = 0;
              if (!CellResolutionProperty)
              {
                goto LABEL_77;
              }

              goto LABEL_76;
            }

            v60 = v57;
            v61 = v58;
            v62 = v59;
            NodeType = fcd_ttml_createRegionFromNode(v19, v20, v64, v65[0], &v60, v21, v54);
            if (!NodeType)
            {
              v29 = v54[0];
              goto LABEL_75;
            }
          }

LABEL_155:
          v29 = 0;
          if (!CellResolutionProperty)
          {
LABEL_77:
            if (v64)
            {
              CFRelease(v64);
            }

            if (v65[0])
            {
              CFRelease(v65[0]);
            }

            if (v54[0])
            {
              CFRelease(v54[0]);
            }

            if (!NodeType)
            {
              if (*v18 && CFArrayGetCount(*v18))
              {
                ValueAtIndex = CFArrayGetValueAtIndex(*v18, 0);
                v40 = *(v18 + 8);
                v52 = *(v18 + 64);
                *v54 = v57;
                v55 = v58;
                v56 = v59;
                v65[0] = 0;
                alloc = *v23;
                v41 = CFArrayCreateMutable(*v23, 0, MEMORY[0x1E695E9C0]);
                if (v29)
                {
                  v42 = CFRetain(v29);
                }

                else
                {
                  v42 = 0;
                }

                v50 = v29;
                v64 = 0;
                if (ValueAtIndex)
                {
                  do
                  {
                    LODWORD(v60) = 0;
                    NodeType = FigTTMLNodeGetNodeType(ValueAtIndex, &v60);
                    if (v60 == 7)
                    {
                      break;
                    }

                    if ((v60 & 0xFFFFFFFE) == 2)
                    {
                      if (v65[0])
                      {
                        CFRelease(v65[0]);
                        v65[0] = 0;
                      }

                      v44 = FigTTMLSynchronicTreeCopySSS(v40, ValueAtIndex, v65);
                      if (v44)
                      {
                        NodeType = v44;
                        v43 = 0;
                        goto LABEL_121;
                      }

                      if (CFDictionaryContainsKey(v65[0], @"http://www.w3.org/ns/ttml#styling backgroundColor") || CFDictionaryContainsKey(v65[0], @"http://www.w3.org/ns/ttml#styling display"))
                      {
                        CFArrayAppendValue(v41, ValueAtIndex);
                      }

                      NodeType = 0;
                    }

                    ValueAtIndex = FigTTMLNodeGetParentNode();
                  }

                  while (ValueAtIndex);
                }

                else
                {
                  NodeType = 0;
                }

                Count = CFArrayGetCount(v41);
                if (Count < 1)
                {
                  v43 = v42;
                  v42 = 0;
                }

                else
                {
                  v46 = 0;
                  v47 = Count + 1;
                  while (1)
                  {
                    v48 = CFArrayGetValueAtIndex(v41, v47 - 2);
                    if (v46)
                    {
                      CFRelease(v46);
                    }

                    v46 = CFStringCreateWithFormat(alloc, 0, @"region_from_div_or_body_%p", v48);
                    if (v64)
                    {
                      CFRelease(v64);
                      v64 = 0;
                    }

                    v60 = *v54;
                    v61 = v55;
                    v62 = v56;
                    NodeType = fcd_ttml_createRegionFromNode(v40, v48, v46, v42, &v60, v52, &v64);
                    if (NodeType)
                    {
                      break;
                    }

                    v43 = v64;
                    if (v64)
                    {
                      CFRetain(v64);
                    }

                    if (v42)
                    {
                      CFRelease(v42);
                    }

                    --v47;
                    v42 = v43;
                    if (v47 <= 1)
                    {
                      v42 = 0;
                      goto LABEL_118;
                    }
                  }

                  v43 = 0;
LABEL_118:
                  v29 = v50;
                  if (v46)
                  {
                    CFRelease(v46);
                  }
                }

LABEL_121:
                if (v64)
                {
                  CFRelease(v64);
                }

                if (v42)
                {
                  CFRelease(v42);
                }

                if (v41)
                {
                  CFRelease(v41);
                }

                if (v65[0])
                {
                  CFRelease(v65[0]);
                }

                if (NodeType)
                {
                  if (v43)
                  {
                    CFRelease(v43);
                  }

                  goto LABEL_133;
                }
              }

              else if (v29)
              {
                v43 = CFRetain(v29);
              }

              else
              {
                v43 = 0;
              }

              NodeType = 0;
              *(v18 + 48) = v43;
            }

LABEL_133:
            if (v29)
            {
              CFRelease(v29);
            }

            if (NodeType)
            {
              goto LABEL_23;
            }

LABEL_136:
            v10 = DerivedStorage[6];
            if (!v10)
            {
              goto LABEL_12;
            }

            goto LABEL_11;
          }

LABEL_76:
          CFRelease(CellResolutionProperty);
          goto LABEL_77;
        }
      }
    }

    v29 = 0;
    goto LABEL_77;
  }

  if (CFEqual(a2, *MEMORY[0x1E6961200]))
  {
    NodeType = 0;
    cf = *MEMORY[0x1E6961168];
    goto LABEL_13;
  }

  v30 = *MEMORY[0x1E6961278];
  if (!CFEqual(a2, *MEMORY[0x1E6961278]))
  {
    v30 = *MEMORY[0x1E6961230];
    if (!CFEqual(a2, *MEMORY[0x1E6961230]))
    {
      v30 = *MEMORY[0x1E6961228];
      if (!CFEqual(a2, *MEMORY[0x1E6961228]))
      {
        v30 = *MEMORY[0x1E6961238];
        if (!CFEqual(a2, *MEMORY[0x1E6961238]))
        {
          v30 = *MEMORY[0x1E6961208];
          if (!CFEqual(a2, *MEMORY[0x1E6961208]))
          {
            v30 = *MEMORY[0x1E6961218];
            if (!CFEqual(a2, *MEMORY[0x1E6961218]))
            {
              v30 = *MEMORY[0x1E6961220];
              if (!CFEqual(a2, *MEMORY[0x1E6961220]))
              {
                if (CFEqual(a2, *MEMORY[0x1E6961260]))
                {
                  v10 = DerivedStorage[7];
                  if (!v10)
                  {
                    goto LABEL_12;
                  }

                  goto LABEL_11;
                }

                v30 = *MEMORY[0x1E6961248];
                if (!CFEqual(a2, *MEMORY[0x1E6961248]))
                {
                  v30 = *MEMORY[0x1E6961250];
                  if (!CFEqual(a2, *MEMORY[0x1E6961250]))
                  {
                    v30 = *MEMORY[0x1E6961258];
                    if (!CFEqual(a2, *MEMORY[0x1E6961258]))
                    {
                      NodeType = 4294954512;
                      goto LABEL_13;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  IsLoaded = fcd_ttml_ensureStyledTextIsLoaded(a1);
  if (IsLoaded)
  {
    goto LABEL_138;
  }

  v17 = FigCaptionDataCopyProperty(DerivedStorage[2], v30, a3, &cf);
LABEL_20:
  NodeType = v17;
  if (!v17)
  {
    goto LABEL_13;
  }

LABEL_23:
  if (cf)
  {
    CFRelease(cf);
  }

  return NodeType;
}

uint64_t fcd_ttml_ensureStyledTextIsLoaded(const void *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = CMBaseObjectGetDerivedStorage() + 16;
    if (!*v2)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      goto LABEL_7;
    }

    return 0;
  }

  v2 = 16;
  if (MEMORY[0x10])
  {
    return 0;
  }

  DerivedStorage = 0;
LABEL_7:
  v74 = 0;
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    fcd_ttml_ensureStyledTextIsLoaded_cold_3();
    v3 = 0;
    goto LABEL_193;
  }

  v62 = v2;
  allocator = v4;
  Count = CFArrayGetCount(*DerivedStorage);
  if (Count)
  {
    v6 = 0;
    v63 = Mutable;
    v65 = v1;
    do
    {
      value = CFArrayGetValueAtIndex(*DerivedStorage, v6);
      if (v1)
      {
        v7 = CMBaseObjectGetDerivedStorage();
      }

      else
      {
        v7 = 0;
      }

      v67 = v6;
      v76 = 0;
      v77 = 0;
      v75 = 0;
      v8 = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
      v9 = v8;
      if (!v8)
      {
        fcd_ttml_ensureStyledTextIsLoaded_cold_2(cf);
        v39 = 0;
        v3 = LODWORD(cf[0]);
        goto LABEL_117;
      }

      v68 = v8;
      v69 = v7;
      v10 = *(v7 + 8);
      theDict = 0;
      v11 = FigTTMLSynchronicTreeCopySSS(v10, value, &theDict);
      if (v11)
      {
        v3 = v11;
        v39 = 0;
        MutableCopy = 0;
        goto LABEL_82;
      }

      MutableCopy = CFDictionaryCreateMutableCopy(v4, 0, theDict);
      if (!MutableCopy)
      {
        fcd_ttml_ensureStyledTextIsLoaded_cold_1(cf);
        v39 = 0;
        v3 = LODWORD(cf[0]);
        goto LABEL_82;
      }

      cf[0] = 0;
      ParentNode = FigTTMLNodeGetParentNode();
      if (ParentNode)
      {
        while (1)
        {
          LODWORD(v84) = 0;
          NodeType = FigTTMLNodeGetNodeType(ParentNode, &v84);
          if (NodeType)
          {
            break;
          }

          if (v84 != 5)
          {
            goto LABEL_27;
          }

          if (cf[0])
          {
            CFRelease(cf[0]);
            cf[0] = 0;
          }

          NodeType = FigTTMLSynchronicTreeCopySSS(v10, ParentNode, cf);
          if (NodeType)
          {
            break;
          }

          if (CFDictionaryContainsKey(cf[0], @"http://www.w3.org/ns/ttml#styling backgroundColor"))
          {
            v15 = CFDictionaryGetValue(cf[0], @"http://www.w3.org/ns/ttml#styling backgroundColor");
            CFDictionaryAddValue(MutableCopy, @"http://www.w3.org/ns/ttml#styling backgroundColor", v15);
          }

          if (CFDictionaryContainsKey(cf[0], @"http://www.w3.org/ns/ttml#styling display"))
          {
            v16 = CFDictionaryGetValue(cf[0], @"http://www.w3.org/ns/ttml#styling display");
            CFDictionaryAddValue(MutableCopy, @"http://www.w3.org/ns/ttml#styling display", v16);
          }

          ParentNode = FigTTMLNodeGetParentNode();
          if (!ParentNode)
          {
LABEL_27:
            v3 = 0;
            goto LABEL_28;
          }
        }

        v3 = NodeType;
LABEL_28:
        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        if (v3)
        {
          v39 = 0;
LABEL_82:
          v22 = v69;
          goto LABEL_104;
        }
      }

      v17 = MEMORY[0x1E695E9C0];
      v18 = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
      v19 = CFArrayCreateMutable(v4, 0, v17);
      v20 = FigTTMLNodeGetParentNode();
      v21 = fcd_ttml_addParentDirectionAndUnicodeBidiRecursively(v10, v20, v18, v19);
      if (v21)
      {
        v3 = v21;
        v22 = v69;
      }

      else
      {
        v22 = v69;
        if (v18 && CFArrayGetCount(v18))
        {
          v80 = 0;
          v23 = CFSetCreateMutable(v4, 0, MEMORY[0x1E695E9F8]);
          if (v23)
          {
            v24 = v23;
            v87.length = CFArrayGetCount(v18);
            v87.location = 0;
            CFArrayApplyFunction(v18, v87, fcd_ttml_addAnimationSliceTimeToSet, v24);
            v88.length = CFArrayGetCount(v19);
            v88.location = 0;
            CFArrayApplyFunction(v19, v88, fcd_ttml_addAnimationSliceTimeToSet, v24);
            v25 = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
            CFSetApplyFunction(v24, fcd_ttml_appendValueToArray, v25);
            v89.length = CFArrayGetCount(v25);
            v89.location = 0;
            CFArraySortValues(v25, v89, MEMORY[0x1E695D7A0], 0);
            CFRelease(v24);
            if (!v25)
            {
              goto LABEL_87;
            }

            v71 = CFArrayGetCount(v25);
            if (v71 < 1)
            {
              goto LABEL_87;
            }

            v26 = 0;
            v27 = 0;
            v70 = MutableCopy;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v25, v26);
              valuePtr = 0;
              CFNumberGetValue(ValueAtIndex, kCFNumberDoubleType, &valuePtr);
              if (v27)
              {
                CFRelease(v27);
              }

              cf[0] = 0;
              *&v84 = 0;
              v27 = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
              v29 = CFArrayGetCount(v18);
              if (v29 < 1)
              {
                v36 = 0;
                v3 = 0;
              }

              else
              {
                v30 = v29;
                v31 = v25;
                v32 = 0;
                v33 = 0;
                while (1)
                {
                  CFArrayGetValueAtIndex(v19, v32);
                  if (v84)
                  {
                    CFRelease(v84);
                    *&v84 = 0;
                  }

                  v34 = FigCaptionDynamicStyleCopyKeyFrameValueAtRelativeTime();
                  if (v34)
                  {
                    break;
                  }

                  if (!CFEqual(v84, @"normal"))
                  {
                    CFArrayGetValueAtIndex(v18, v32);
                    if (cf[0])
                    {
                      CFRelease(cf[0]);
                      cf[0] = 0;
                    }

                    v34 = FigCaptionDynamicStyleCopyKeyFrameValueAtRelativeTime();
                    if (v34)
                    {
                      break;
                    }

                    if (v33)
                    {
                      CFRelease(v33);
                    }

                    v33 = CFDictionaryCreateMutable(allocator, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                    CFDictionarySetValue(v33, @"http://www.w3.org/ns/ttml#styling unicodeBidi", v84);
                    CFDictionarySetValue(v33, @"http://www.w3.org/ns/ttml#styling direction", cf[0]);
                    CFArrayAppendValue(v27, v33);
                  }

                  if (v30 == ++v32)
                  {
                    v3 = 0;
                    v35 = v27;
                    v27 = 0;
                    if (!v33)
                    {
                      goto LABEL_55;
                    }

                    goto LABEL_54;
                  }
                }

                v3 = v34;
                v35 = 0;
                if (v33)
                {
LABEL_54:
                  CFRelease(v33);
                }

LABEL_55:
                v36 = v27;
                v27 = v35;
                v4 = allocator;
                v25 = v31;
                MutableCopy = v70;
              }

              if (v84)
              {
                CFRelease(v84);
              }

              if (cf[0])
              {
                CFRelease(cf[0]);
              }

              if (v36)
              {
                CFRelease(v36);
              }

              if (v3)
              {
                break;
              }

              if (v80)
              {
                v37 = FigCaptionDynamicStyleAddKeyFrameValue();
                if (v37)
                {
                  goto LABEL_74;
                }
              }

              else
              {
                v37 = FigCaptionDynamicStyleCreateMutable();
                if (v37)
                {
LABEL_74:
                  v3 = v37;
                  break;
                }
              }

              if (++v26 == v71)
              {
                v38 = v80;
                Mutable = v63;
                goto LABEL_88;
              }
            }

            if (v80)
            {
              CFRelease(v80);
            }

            v38 = 0;
            Mutable = v63;
            goto LABEL_89;
          }

          v40 = FigSignalErrorAtGM();
          if (!v40)
          {
            v25 = 0;
LABEL_87:
            v38 = 0;
            v27 = 0;
LABEL_88:
            v3 = 0;
            v80 = 0;
LABEL_89:
            if (v27)
            {
              CFRelease(v27);
            }

            if (v25)
            {
              CFRelease(v25);
            }

            v22 = v69;
            if (!v3)
            {
              CFDictionarySetValue(MutableCopy, @"internal direction_and_unicodeBidi", v38);
            }

            if (v38)
            {
              CFRelease(v38);
            }

            goto LABEL_97;
          }

          v3 = v40;
        }

        else
        {
          v3 = 0;
        }
      }

LABEL_97:
      if (v19)
      {
        CFRelease(v19);
      }

      if (v18)
      {
        CFRelease(v18);
      }

      if (v3)
      {
        v39 = 0;
      }

      else
      {
        v39 = MutableCopy;
        MutableCopy = 0;
      }

      v1 = v65;
LABEL_104:
      if (theDict)
      {
        CFRelease(theDict);
      }

      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      if (v3)
      {
        v9 = v68;
        goto LABEL_117;
      }

      v9 = v68;
      if (CFDictionaryGetValue(v39, @"http://namespace.itunes.apple.com/itt/ttml-extension#ruby internalRubyID") || CFDictionaryGetValue(v39, @"http://www.w3.org/ns/ttml#styling internalRubyID"))
      {
        FigCaptionDynamicStyleGetInitialValue();
        if (FigCFEqual() || (ActiveTimeRange = fcd_ttml_flushRubyNodesToStyledTextArray(v1, v68), !ActiveTimeRange))
        {
          CFArrayAppendValue(*(v22 + 24), value);
          v41 = *(v22 + 32);
          InitialValue = FigCaptionDynamicStyleGetInitialValue();
          *(v22 + 32) = InitialValue;
          if (InitialValue)
          {
            CFRetain(InitialValue);
          }

          if (v41)
          {
            CFRelease(v41);
          }

          goto LABEL_116;
        }
      }

      else
      {
        ActiveTimeRange = fcd_ttml_flushRubyNodesToStyledTextArray(v1, v68);
        if (!ActiveTimeRange)
        {
          v44 = *(v22 + 32);
          if (v44)
          {
            CFRelease(v44);
            *(v22 + 32) = 0;
          }

          v82 = 0u;
          *v83 = 0u;
          *cf = 0u;
          ActiveTimeRange = FigTTMLNodeGetActiveTimeRange(value, cf);
          if (!ActiveTimeRange)
          {
            v84 = *cf;
            v85 = v82;
            v86 = *v83;
            ActiveTimeRange = fcd_ttml_createStylePropertiesFromTTMLStyleSet(v39, &v84, &v76);
            if (!ActiveTimeRange)
            {
              LODWORD(v84) = 0;
              ActiveTimeRange = FigTTMLNodeGetNodeType(value, &v84);
              if (!ActiveTimeRange)
              {
                if (v84 == 6)
                {
                  v45 = @"\n";
LABEL_144:
                  v77 = v45;
LABEL_145:
                  ActiveTimeRange = FigCaptionDataCreateMutable();
                  if (!ActiveTimeRange)
                  {
                    v46 = v77;
                    v47 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                    if (!v47)
                    {
                      v3 = 4294954514;
                      goto LABEL_117;
                    }

                    ActiveTimeRange = v47(v75, v46);
                    if (!ActiveTimeRange)
                    {
                      CFDictionaryApplyFunction(v76, fcd_ttml_setStylePropertyToWholeStyledText, v75);
                      CFArrayAppendValue(v68, v75);
LABEL_116:
                      v90.length = CFArrayGetCount(v68);
                      v90.location = 0;
                      CFArrayAppendArray(Mutable, v68, v90);
                      v3 = 0;
                      goto LABEL_117;
                    }
                  }

                  goto LABEL_152;
                }

                if (v84 != 14)
                {
                  v45 = &stru_1F0B1AFB8;
                  goto LABEL_144;
                }

                ActiveTimeRange = FigTTMLTextCopyContent(value, &v77);
                if (!ActiveTimeRange)
                {
                  goto LABEL_145;
                }
              }
            }
          }
        }
      }

LABEL_152:
      v3 = ActiveTimeRange;
LABEL_117:
      if (v75)
      {
        CFRelease(v75);
      }

      if (v76)
      {
        CFRelease(v76);
      }

      if (v39)
      {
        CFRelease(v39);
      }

      if (v9)
      {
        CFRelease(v9);
      }

      if (v77)
      {
        CFRelease(v77);
      }

      if (v3)
      {
        goto LABEL_193;
      }

      v6 = v67 + 1;
    }

    while (v67 + 1 != Count);
  }

  v48 = fcd_ttml_flushRubyNodesToStyledTextArray(v1, Mutable);
  if (v48 || (v49 = CFGetAllocator(v1), v48 = fcd_ttml_concatenateStyledTextArray(Mutable, v49, &v74), v48))
  {
    v3 = v48;
LABEL_193:
    if (v74)
    {
      CFRelease(v74);
    }

    goto LABEL_195;
  }

  v50 = *DerivedStorage;
  v51 = *(DerivedStorage + 8);
  v52 = v74;
  cf[0] = 0;
  v53 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v50 || CFArrayGetCount(v50) < 1)
  {
    goto LABEL_178;
  }

  v54 = CFArrayGetValueAtIndex(v50, 0);
  if (v54)
  {
    v55 = v54;
    while (1)
    {
      LODWORD(v84) = 0;
      v56 = FigTTMLNodeGetNodeType(v55, &v84);
      if (v56)
      {
        goto LABEL_198;
      }

      if (v84 == 4)
      {
        break;
      }

      v55 = FigTTMLNodeGetParentNode();
      if (!v55)
      {
        goto LABEL_162;
      }
    }

    v56 = FigTTMLSynchronicTreeCopySSS(v51, v55, cf);
    if (v56)
    {
LABEL_198:
      v3 = v56;
      goto LABEL_177;
    }

    FigCFDictionaryAddEntriesToDictionaryWithRecursion();
    while (1)
    {
      LODWORD(v84) = 0;
      v57 = FigTTMLNodeGetNodeType(v55, &v84);
      if (v57)
      {
        break;
      }

      if (v84 == 7)
      {
        goto LABEL_175;
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
        cf[0] = 0;
      }

      v57 = FigTTMLSynchronicTreeCopySSS(v51, v55, cf);
      if (v57)
      {
        break;
      }

      v58 = CFDictionaryGetValue(cf[0], @"http://www.w3.org/ns/ttml#styling display");
      if (v58)
      {
        CFDictionarySetValue(v53, @"http://www.w3.org/ns/ttml#styling display", v58);
LABEL_175:
        v3 = 0;
        goto LABEL_176;
      }

      v55 = FigTTMLNodeGetParentNode();
      if (!v55)
      {
        goto LABEL_178;
      }
    }
  }

  else
  {
LABEL_162:
    v57 = FigSignalErrorAtGM();
  }

  v3 = v57;
LABEL_176:
  if (v3)
  {
LABEL_177:
    v59 = 0;
  }

  else
  {
LABEL_178:
    v3 = 0;
    v59 = v53;
    v53 = 0;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  if (!v3)
  {
    v85 = 0u;
    v86 = 0u;
    v84 = 0u;
    fcd_ttml_getCaptionTimeRange(v50, &v84);
    v60 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    cf[0] = 0;
    MEMORY[0x19A8D3660](&fcd_ttml_getCaptionPropertyMappingDictionary_sInitializeCaptionPropertyMappingOnce, fcd_ttml_initializeCaptionPropertyMappingDictionary);
    cf[1] = sCaptionPropertyMappingDictionary;
    v82 = v84;
    v83[0] = v85;
    *&v83[1] = v84;
    *&v83[3] = v85;
    *&v83[5] = v86;
    v83[7] = v60;
    CFDictionaryApplyFunction(v59, fcd_ttml_convertTTMLStyleToCaptionPropertyAndAddToDictionary, cf);
    v3 = LODWORD(cf[0]);
    if (!LODWORD(cf[0]))
    {
      CFDictionaryApplyFunction(v60, fcd_ttml_setPropertyToObject, v52);
    }

    if (v60)
    {
      CFRelease(v60);
    }
  }

  if (v59)
  {
    CFRelease(v59);
  }

  if (v3)
  {
    goto LABEL_193;
  }

  *v62 = v74;
LABEL_195:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v3;
}

uint64_t FigCaptionDataCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObject = FigCaptionDataGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(CMBaseObject, a2, a3, a4);
}

uint64_t fcd_ttml_createStylePropertiesFromTTMLStyleSet(const __CFDictionary *a1, _OWORD *a2, CFMutableDictionaryRef *a3)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v7 = Mutable;
    context[0] = 0;
    MEMORY[0x19A8D3660](&fcd_ttml_getStylePropertyMappingDictionary_sInitializeStylePropertyMappingOnce, fcd_ttml_initializeStylePropertyMappingDictionary);
    context[1] = sStylePropertyMappingDictionary;
    v8 = a2[1];
    v12 = *a2;
    v13 = *(a2 + 2);
    v14 = v12;
    v15 = v8;
    v16 = a2[2];
    v17 = v7;
    CFDictionaryApplyFunction(a1, fcd_ttml_convertTTMLStyleToCaptionPropertyAndAddToDictionary, context);
    v9 = LODWORD(context[0]);
    if (LODWORD(context[0]))
    {
      CFRelease(v7);
    }

    else
    {
      *a3 = v7;
    }
  }

  else
  {
    fcd_ttml_createStylePropertiesFromTTMLStyleSet_cold_1(&v18);
    return v18;
  }

  return v9;
}

uint64_t fcd_ttml_setStylePropertyToWholeStyledText(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v6)
  {
    v7 = v6(a3);
  }

  else
  {
    v7 = &stru_1F0B1AFB8;
  }

  Length = CFStringGetLength(v7);
  VTable = CMBaseObjectGetVTable();
  v11 = *(VTable + 16);
  result = VTable + 16;
  v12 = *(v11 + 32);
  if (v12)
  {

    return v12(a3, a1, a2, 0, Length);
  }

  return result;
}

void fcd_ttml_addAnimationSliceTimeToSet(uint64_t a1, __CFSet *a2)
{
  KeyFrameCount = FigCaptionDynamicStyleGetKeyFrameCount();
  if (KeyFrameCount >= 1)
  {
    v4 = KeyFrameCount;
    v5 = 0;
    v6 = 0;
    v7 = *MEMORY[0x1E695E480];
    do
    {
      valuePtr = 0;
      if (FigCaptionDynamicStyleCopyKeyFrameValueAtIndex())
      {
        break;
      }

      if (v6)
      {
        CFRelease(v6);
      }

      v6 = CFNumberCreate(v7, kCFNumberDoubleType, &valuePtr);
      CFSetAddValue(a2, v6);
      ++v5;
    }

    while (v4 != v5);
    if (v6)
    {
      CFRelease(v6);
    }
  }
}

void fcd_ttml_convertTTMLStyleToCaptionPropertyAndAddToDictionary(void *key, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v15 = 0;
  Value = CFDictionaryGetValue(*(a3 + 8), key);
  if (*a3)
  {
    v6 = 1;
  }

  else
  {
    v6 = Value == 0;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = *(a3 + 16);
    v13.epoch = *(a3 + 32);
    v9 = *(a3 + 56);
    v12[0] = *(a3 + 40);
    v12[1] = v9;
    v12[2] = *(a3 + 72);
    *&v13.value = v8;
    v10 = fcd_ttml_createDynamicStyleFromTTML(Value, a2, &v13, v12, &v15, &v14);
    v7 = v10;
    v11 = v14;
    if (!v10)
    {
      CFDictionaryAddValue(*(a3 + 88), v15, v14);
    }

    if (v11)
    {
      CFRelease(v11);
    }
  }

  if (v15)
  {
    CFRelease(v15);
  }

  *a3 = v7;
}

void fcd_ttml_initializeStylePropertyMappingDictionary()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling color", fcd_ttml_createStylePropertyFromTTMLStyle_color);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling backgroundColor", fcd_ttml_createStylePropertyFromTTMLStyle_backgroundColor);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling fontWeight", fcd_ttml_createStylePropertyFromTTMLStyle_fontWeight);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling fontStyle", fcd_ttml_createStylePropertyFromTTMLStyle_fontStyle);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling display", fcd_ttml_createStylePropertyFromTTMLStyle_display);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling textOutline", fcd_ttml_createStylePropertyFromTTMLStyle_textOutline);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling textDecoration", fcd_ttml_createStylePropertyFromTTMLStyle_textDecoration);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml/profile/imsc1#styling forcedDisplay", fcd_ttml_createStylePropertyFromTTMLStyle_forcedDisplay);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling fontSize", fcd_ttml_createStylePropertyFromTTMLStyle_fontSize);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling lineHeight", fcd_ttml_createStylePropertyFromTTMLStyle_lineHeight);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling wrapOption", fcd_ttml_createStylePropertyFromTTMLStyle_wrapOption);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling fontFamily", fcd_ttml_createStylePropertyFromTTMLStyle_fontFamily);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling visibility", fcd_ttml_createStylePropertyFromTTMLStyle_visibility);
  CFDictionaryAddValue(Mutable, @"internal direction_and_unicodeBidi", fcd_ttml_createStylePropertyFromTTMLStyle_direction_and_unicodeBidi);
  CFDictionaryAddValue(Mutable, @"http://namespace.itunes.apple.com/itt/ttml-extension#vertical combine", fcd_ttml_createStylePropertyFromTTMLStyle_textCombine);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling textCombine", fcd_ttml_createStylePropertyFromTTMLStyle_textCombine);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling textEmphasis", fcd_ttml_createStylePropertyFromTTMLStyle_textEmphasis);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling shear", fcd_ttml_createStylePropertyFromTTMLStyle_textShear);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling textShadow", fcd_ttml_createStylePropertyFromTTMLStyle_textShadow);
  sStylePropertyMappingDictionary = Mutable;
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_color(const __CFString *a1, void *a2, uint64_t *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E69614E8];
    v7 = FigTTMLCGColorCreateWithColorSyntax(a1);
    *a3 = v7;
    if (v7)
    {
      return 0;
    }

    else
    {
      return 4294950720;
    }
  }

  else
  {
    fcd_ttml_createStylePropertyFromTTMLStyle_color_cold_1(&v9);
    return v9;
  }
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_backgroundColor(const __CFString *a1, void *a2, uint64_t *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E6961458];
    v7 = FigTTMLCGColorCreateWithColorSyntax(a1);
    *a3 = v7;
    if (v7)
    {
      return 0;
    }

    else
    {
      return 4294950720;
    }
  }

  else
  {
    fcd_ttml_createStylePropertyFromTTMLStyle_backgroundColor_cold_1(&v9);
    return v9;
  }
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_fontWeight(const void *a1, void *a2, void *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E69614A0];
    if (CFEqual(a1, @"normal"))
    {
      result = 0;
      v8 = MEMORY[0x1E69614B0];
    }

    else
    {
      if (!CFEqual(a1, @"bold"))
      {
        return 4294950720;
      }

      result = 0;
      v8 = MEMORY[0x1E69614A8];
    }

    *a3 = *v8;
  }

  else
  {
    FigTTMLNodeGetTimeContainerSemantics_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_fontStyle(const void *a1, void *a2, void *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E6961480];
    if (CFEqual(a1, @"normal"))
    {
      result = 0;
      v8 = MEMORY[0x1E6961490];
    }

    else if (CFEqual(a1, @"italic"))
    {
      result = 0;
      v8 = MEMORY[0x1E6961488];
    }

    else
    {
      if (!CFEqual(a1, @"oblique"))
      {
        return 4294950720;
      }

      result = 0;
      v8 = MEMORY[0x1E6961498];
    }

    *a3 = *v8;
  }

  else
  {
    fcd_ttml_createStylePropertyFromTTMLStyle_fontStyle_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_display(const void *a1, void *a2, void *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E69614C0];
    if (CFEqual(a1, @"none"))
    {
      result = 0;
      v8 = MEMORY[0x1E695E4D0];
    }

    else
    {
      if (!CFEqual(a1, @"auto"))
      {
        return 4294950720;
      }

      result = 0;
      v8 = MEMORY[0x1E695E4C0];
    }

    *a3 = *v8;
  }

  else
  {
    fcd_ttml_createStylePropertyFromTTMLStyle_display_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_textOutline(const void *a1, void *a2, void *a3)
{
  if (!a1 || (v6 = CFGetTypeID(a1), v6 != CFStringGetTypeID()))
  {
    fcd_ttml_createStylePropertyFromTTMLStyle_textOutline_cold_3(&v15);
    return v15;
  }

  if (CFEqual(a1, @"none"))
  {
    v7 = FigCaptionTextOutlineCreate();
    v8 = 0;
    v9 = 0;
LABEL_12:
    *a2 = *MEMORY[0x1E6961530];
    *a3 = 0;
    goto LABEL_13;
  }

  v10 = FigTTMLCFStringArrayCreateWithNMTOKENS(a1);
  v8 = v10;
  if (v10 && CFArrayGetCount(v10) > 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v8, 0);
    v9 = FigTTMLCGColorCreateWithColorSyntax(ValueAtIndex);
    if (v9)
    {
      if (CFArrayGetCount(v8) < 2)
      {
        v14 = 529;
        goto LABEL_20;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v8, 1);
    }

    FigTTMLParseLengthSyntax(ValueAtIndex);
    if ((v12 & 0x100000000) != 0)
    {
      v7 = FigCaptionTextOutlineCreate();
      goto LABEL_12;
    }

    v14 = 534;
LABEL_20:
    fcd_ttml_createStylePropertyFromTTMLStyle_textOutline_cold_1(v14, v9, &v15);
    v7 = v15;
    goto LABEL_14;
  }

  fcd_ttml_createStylePropertyFromTTMLStyle_textOutline_cold_2(&v15);
  v9 = 0;
  v7 = v15;
LABEL_13:
  CGColorRelease(v9);
  if (v8)
  {
LABEL_14:
    CFRelease(v8);
  }

  return v7;
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_textDecoration(const void *a1, void *a2, CFNumberRef *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    v7 = *MEMORY[0x1E6961460];
    v8 = FigTTMLCFStringArrayCreateWithNMTOKENS(a1);
    if (v8)
    {
      v9 = v8;
      v17 = a3;
      Count = CFArrayGetCount(v8);
      if (Count < 1)
      {
        v13 = 0;
      }

      else
      {
        v11 = Count;
        v12 = 0;
        v13 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v9, v12);
          if (CFEqual(ValueAtIndex, @"underline"))
          {
            v13 |= 1u;
          }

          else if (CFEqual(ValueAtIndex, @"lineThrough"))
          {
            v13 |= 2u;
          }

          else if (CFEqual(ValueAtIndex, @"overline"))
          {
            v13 |= 4u;
          }

          ++v12;
        }

        while (v11 != v12);
      }

      valuePtr = v13;
      v15 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
      *a2 = v7;
      *v17 = v15;
      CFRelease(v9);
      return 0;
    }

    else
    {
      fcd_ttml_createStylePropertyFromTTMLStyle_textDecoration_cold_1(v7, &v19);
      return v19;
    }
  }

  else
  {
    fcd_ttml_createStylePropertyFromTTMLStyle_textDecoration_cold_2(&v20);
    return v20;
  }
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_forcedDisplay(const void *a1, void *a2, void *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E69614B8];
    if (CFEqual(a1, @"true"))
    {
      result = 0;
      v8 = MEMORY[0x1E695E4D0];
    }

    else
    {
      if (!CFEqual(a1, @"false"))
      {
        return 4294950720;
      }

      result = 0;
      v8 = MEMORY[0x1E695E4C0];
    }

    *a3 = *v8;
  }

  else
  {
    fcd_ttml_createStylePropertyFromTTMLStyle_forcedDisplay_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_fontSize(const __CFString *a1, void *a2, uint64_t *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    FigTTMLParseLengthSyntax(a1);
    if ((v7 & 0x100000000) != 0)
    {
      memset(v10, 0, sizeof(v10));
      FigGeometrySizeMake();
      *a2 = *MEMORY[0x1E6961478];
      v8 = FigGeometrySizeCopyAsDictionary();
      *a3 = v8;
    }

    else
    {
      v8 = *a3;
    }

    if (v8)
    {
      return 0;
    }

    else
    {
      return 4294950720;
    }
  }

  else
  {
    fcd_ttml_createStylePropertyFromTTMLStyle_fontSize_cold_1(v10);
    return LODWORD(v10[0]);
  }
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_lineHeight(const __CFString *a1, void *a2, uint64_t *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    FigTTMLParseLengthSyntax(a1);
    if ((v7 & 0x100000000) != 0)
    {
      *a2 = *MEMORY[0x1E69614D0];
      v8 = FigGeometryDimensionCopyAsDictionary();
      *a3 = v8;
    }

    else
    {
      v8 = *a3;
    }

    if (v8)
    {
      return 0;
    }

    else
    {
      return 4294950720;
    }
  }

  else
  {
    fcd_ttml_createStylePropertyFromTTMLStyle_lineHeight_cold_1(&v10);
    return v10;
  }
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_wrapOption(const void *a1, void *a2, void *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E69614D8];
    if (CFEqual(a1, @"wrap"))
    {
      result = 0;
      v8 = MEMORY[0x1E695E4C0];
    }

    else
    {
      if (!CFEqual(a1, @"noWrap"))
      {
        return 4294950720;
      }

      result = 0;
      v8 = MEMORY[0x1E695E4D0];
    }

    *a3 = *v8;
  }

  else
  {
    fcd_ttml_createStylePropertyFromTTMLStyle_wrapOption_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_fontFamily(const __CFString *a1, void *a2, uint64_t *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E6961470];
    FontFamilyNameList = FigTTMLParseFontFamilySyntaxAndCreateFontFamilyNameList(a1);
    *a3 = FontFamilyNameList;
    if (FontFamilyNameList)
    {
      return 0;
    }

    else
    {
      return 4294950720;
    }
  }

  else
  {
    fcd_ttml_createStylePropertyFromTTMLStyle_fontFamily_cold_1(&v9);
    return v9;
  }
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_visibility(const void *a1, void *a2, void *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E69614C8];
    if (CFEqual(a1, @"hidden"))
    {
      result = 0;
      v8 = MEMORY[0x1E695E4D0];
    }

    else
    {
      if (!CFEqual(a1, @"visible"))
      {
        return 4294950720;
      }

      result = 0;
      v8 = MEMORY[0x1E695E4C0];
    }

    *a3 = *v8;
  }

  else
  {
    fcd_ttml_createStylePropertyFromTTMLStyle_visibility_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_direction_and_unicodeBidi(const __CFArray *a1, void *a2, CFMutableArrayRef *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFArrayGetTypeID()))
  {
    *a2 = *MEMORY[0x1E6961548];
    v7 = *MEMORY[0x1E695E480];
    Count = CFArrayGetCount(a1);
    Mutable = CFArrayCreateMutable(v7, Count, MEMORY[0x1E695E9C0]);
    context = Mutable;
    v13 = 0;
    v15.length = CFArrayGetCount(a1);
    v15.location = 0;
    CFArrayApplyFunction(a1, v15, fcd_ttml_addWritingDirectionStylePropertyKeyFrameValueToArray, &context);
    v10 = v13;
    if (v13)
    {
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    else
    {
      *a3 = Mutable;
    }
  }

  else
  {
    fcd_ttml_createStylePropertyFromTTMLStyle_direction_and_unicodeBidi_cold_1(&v14);
    return v14;
  }

  return v10;
}

uint64_t fcd_ttml_createStylePropertyFromTTMLStyle_textCombine(const void *a1, void *a2, void *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E69614F0];
    if (CFEqual(a1, @"none"))
    {
      result = 0;
      v8 = MEMORY[0x1E6961508];
    }

    else
    {
      if (!CFEqual(a1, @"all"))
      {
        return 4294950725;
      }

      result = 0;
      v8 = MEMORY[0x1E69614F8];
    }

    *a3 = *v8;
  }

  else
  {
    fcd_ttml_createStylePropertyFromTTMLStyle_textCombine_cold_1(&v9);
    return v9;
  }

  return result;
}

void fcd_ttml_addWritingDirectionStylePropertyKeyFrameValueToArray(const __CFDictionary *a1, uint64_t a2)
{
  Value = CFDictionaryGetValue(a1, @"http://www.w3.org/ns/ttml#styling direction");
  v5 = CFDictionaryGetValue(a1, @"http://www.w3.org/ns/ttml#styling unicodeBidi");
  valuePtr = 0;
  if (CFEqual(Value, @"ltr"))
  {
    v6 = 2;
  }

  else
  {
    if (!CFEqual(Value, @"rtl"))
    {
      goto LABEL_10;
    }

    valuePtr = 1;
    v6 = 3;
  }

  if (CFEqual(v5, @"embed"))
  {
    goto LABEL_8;
  }

  if (!CFEqual(v5, @"bidiOverride"))
  {
LABEL_10:
    *(a2 + 8) = -16576;
    return;
  }

  valuePtr = v6;
LABEL_8:
  v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  CFArrayAppendValue(*a2, v7);
  if (v7)
  {
    CFRelease(v7);
  }
}

uint64_t fcd_ttml_createDynamicStyleFromTTML(uint64_t (*a1)(CFTypeRef, CFTypeRef *, CFTypeRef *), uint64_t a2, CMTime *a3, CMTime *a4, CFTypeRef *a5, void *a6)
{
  v26 = 0;
  cf = 0;
  v25 = 0;
  v23 = 0;
  if ((a4[1].flags & 0x1D) != 1)
  {
    fcd_ttml_createDynamicStyleFromTTML_cold_1(&time);
    value_low = LODWORD(time.value);
LABEL_29:
    if (v23)
    {
      CFRelease(v23);
    }

    goto LABEL_21;
  }

  time = a4[1];
  Seconds = CMTimeGetSeconds(&time);
  lhs = *a4;
  v20 = *a3;
  CMTimeSubtract(&time, &lhs, &v20);
  v12 = CMTimeGetSeconds(&time);
  KeyFrameCount = FigCaptionDynamicStyleGetKeyFrameCount();
  if (KeyFrameCount >= 1)
  {
    v14 = KeyFrameCount;
    v15 = 0;
    while (1)
    {
      time.value = 0;
      if (v26)
      {
        CFRelease(v26);
        v26 = 0;
      }

      Mutable = FigCaptionDynamicStyleCopyKeyFrameValueAtIndex();
      if (Mutable)
      {
        break;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v25)
      {
        CFRelease(v25);
        v25 = 0;
      }

      Mutable = a1(v26, &v25, &cf);
      if (Mutable)
      {
        break;
      }

      v17 = v23;
      if (v23)
      {
        if ((*&time.value - v12) / Seconds >= 1.0)
        {
          goto LABEL_20;
        }

        Mutable = FigCaptionDynamicStyleAddKeyFrameValue();
        if (Mutable)
        {
          break;
        }
      }

      else
      {
        Mutable = FigCaptionDynamicStyleCreateMutable();
        if (Mutable)
        {
          break;
        }
      }

      if (v14 == ++v15)
      {
        v17 = v23;
        goto LABEL_20;
      }
    }

    value_low = Mutable;
    goto LABEL_29;
  }

  v17 = 0;
LABEL_20:
  value_low = 0;
  *a5 = v25;
  *a6 = v17;
  v25 = 0;
  v23 = 0;
LABEL_21:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  return value_low;
}

uint64_t fcd_ttml_setRubyTextPropertyFromDictionary(const __CFDictionary *a1, const void *a2)
{
  CFDictionaryGetValue(a1, a2);
  InitialValue = FigCaptionDynamicStyleGetInitialValue();
  if (FigCFEqual())
  {
    v3 = *MEMORY[0x1E6961430];
    if (InitialValue && !FigCFEqual())
    {
      v4 = FigCFEqual();
      v5 = MEMORY[0x1E6961428];
      goto LABEL_5;
    }

    goto LABEL_32;
  }

  if (FigCFEqual())
  {
    v3 = *MEMORY[0x1E6961408];
    if (InitialValue)
    {
      if (FigCFEqual())
      {
LABEL_12:
        v7 = MEMORY[0x1E6961420];
        goto LABEL_27;
      }

      if (FigCFEqual())
      {
        v7 = MEMORY[0x1E69613F8];
        goto LABEL_27;
      }

      if (!FigCFEqual())
      {
        v4 = FigCFEqual();
        v5 = MEMORY[0x1E6961400];
        goto LABEL_5;
      }
    }

LABEL_32:
    if (v3)
    {
      return FigCaptionDynamicStyleCreate();
    }

    return 0;
  }

  if (FigCFEqual())
  {
    v3 = *MEMORY[0x1E6961448];
    if (!InitialValue)
    {
      goto LABEL_32;
    }

    if (FigCFEqual())
    {
      v7 = MEMORY[0x1E6961430];
      goto LABEL_27;
    }

    if (!FigCFEqual())
    {
      FigCFEqual();
      goto LABEL_32;
    }

    v7 = MEMORY[0x1E6961428];
  }

  else
  {
    if (!FigCFEqual())
    {
      return 0;
    }

    v3 = *MEMORY[0x1E69613F8];
    if (!InitialValue)
    {
      goto LABEL_32;
    }

    if (FigCFEqual())
    {
      goto LABEL_12;
    }

    if (FigCFEqual())
    {
      goto LABEL_32;
    }

    if (FigCFEqual())
    {
      v7 = MEMORY[0x1E6961408];
    }

    else
    {
      if (!FigCFEqual())
      {
        v4 = FigCFEqual();
        v5 = MEMORY[0x1E6961410];
LABEL_5:
        v6 = *v5;
        if (v4)
        {
          v3 = v6;
        }

        if (!v3)
        {
          return 0;
        }

        return FigCaptionDynamicStyleCreate();
      }

      v7 = MEMORY[0x1E6961400];
    }
  }

LABEL_27:
  if (*v7)
  {
    return FigCaptionDynamicStyleCreate();
  }

  return 0;
}

__n128 fcd_ttml_getCaptionTimeRange@<Q0>(const __CFArray *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E6960C98];
  v13 = *(MEMORY[0x1E6960C98] + 16);
  v14 = *MEMORY[0x1E6960C98];
  *a2 = *MEMORY[0x1E6960C98];
  *(a2 + 16) = v13;
  v12 = v4[2];
  *(a2 + 32) = v12;
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v7 = Count;
    v8 = 0;
    while (1)
    {
      memset(&v17, 0, sizeof(v17));
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v8);
      if (FigTTMLNodeGetActiveTimeRange(ValueAtIndex, &v17))
      {
        break;
      }

      if ((*(a2 + 12) & 1) == 0 || (*(a2 + 36) & 1) == 0 || *(a2 + 40) || (*(a2 + 24) & 0x8000000000000000) != 0)
      {
        v10 = *&v17.start.epoch;
        *a2 = *&v17.start.value;
        *(a2 + 16) = v10;
        result.n128_u64[0] = *&v17.duration.timescale;
        *(a2 + 32) = *&v17.duration.timescale;
      }

      else
      {
        v11 = *(a2 + 16);
        *&range.start.value = *a2;
        *&range.start.epoch = v11;
        *&range.duration.timescale = *(a2 + 32);
        otherRange = v17;
        CMTimeRangeGetUnion(a2, &range, &otherRange);
      }

      if (v7 == ++v8)
      {
        return result;
      }
    }

    *a2 = v14;
    *(a2 + 16) = v13;
    result = v12;
    *(a2 + 32) = v12;
  }

  return result;
}

uint64_t fcd_ttml_setPropertyToObject(uint64_t a1, uint64_t a2, uint64_t a3)
{
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 8);
  result = VTable + 8;
  v9 = *(v8 + 56);
  if (v9)
  {

    return v9(a3, a1, a2);
  }

  return result;
}

void fcd_ttml_initializeCaptionPropertyMappingDictionary()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  CFDictionaryAddValue(Mutable, @"urn:ebu:tt:style linePadding", fcd_ttml_createCaptionPropertyFromTTMLStyle_linePadding);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling backgroundColor", fcd_ttml_createCaptionPropertyFromTTMLStyle_backgroundColor);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml/profile/imsc1#styling fillLineGap", fcd_ttml_createCaptionPropertyFromTTMLStyle_fillLineGap);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling textAlign", fcd_ttml_createCaptionPropertyFromTTMLStyle_textAlign);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling lineHeight", fcd_ttml_createCaptionPropertyFromTTMLStyle_lineHeight);
  CFDictionaryAddValue(Mutable, @"urn:ebu:tt:style multiRowAlign", fcd_ttml_createCaptionPropertyFromTTMLStyle_multiRowAlign);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling display", fcd_ttml_createCaptionPropertyFromTTMLStyle_display);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling rubyReserve", fcd_ttml_createCaptionPropertyFromTTMLStyle_rubyReserve);
  sCaptionPropertyMappingDictionary = Mutable;
}

uint64_t fcd_ttml_createCaptionPropertyFromTTMLStyle_linePadding(const __CFString *a1, void *a2, uint64_t *a3)
{
  if (!a1 || (v6 = CFGetTypeID(a1), v6 != CFStringGetTypeID()))
  {
    fcd_ttml_createCaptionPropertyFromTTMLStyle_linePadding_cold_4(&v11);
    return v11;
  }

  *a2 = *MEMORY[0x1E6961230];
  v7 = COERCE_DOUBLE(FigTTMLParseLengthSyntax(a1));
  if ((v8 & 0x100000000) == 0)
  {
    fcd_ttml_createCaptionPropertyFromTTMLStyle_linePadding_cold_3(&v11);
    return v11;
  }

  if (v7 < 0.0)
  {
    fcd_ttml_createCaptionPropertyFromTTMLStyle_linePadding_cold_2(&v11);
    return v11;
  }

  if (v8 != 1667591276)
  {
    fcd_ttml_createCaptionPropertyFromTTMLStyle_linePadding_cold_1(&v11);
    return v11;
  }

  v9 = FigGeometryDimensionCopyAsDictionary();
  *a3 = v9;
  if (v9)
  {
    return 0;
  }

  else
  {
    return 4294950720;
  }
}

uint64_t fcd_ttml_createCaptionPropertyFromTTMLStyle_backgroundColor(const __CFString *a1, void *a2, uint64_t *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E6961208];
    v7 = FigTTMLCGColorCreateWithColorSyntax(a1);
    *a3 = v7;
    if (v7)
    {
      return 0;
    }

    else
    {
      return 4294950720;
    }
  }

  else
  {
    fcd_ttml_createCaptionPropertyFromTTMLStyle_backgroundColor_cold_1(&v9);
    return v9;
  }
}

uint64_t fcd_ttml_createCaptionPropertyFromTTMLStyle_fillLineGap(const void *a1, void *a2, void *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E6961218];
    if (CFEqual(a1, @"true"))
    {
      result = 0;
      v8 = MEMORY[0x1E695E4D0];
    }

    else
    {
      if (!CFEqual(a1, @"false"))
      {
        return 4294950720;
      }

      result = 0;
      v8 = MEMORY[0x1E695E4C0];
    }

    *a3 = *v8;
  }

  else
  {
    fcd_ttml_createCaptionPropertyFromTTMLStyle_fillLineGap_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t fcd_ttml_createCaptionPropertyFromTTMLStyle_textAlign(const void *a1, void *a2, void *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E6961278];
    if (CFEqual(a1, @"start"))
    {
      result = 0;
      v8 = MEMORY[0x1E6961570];
    }

    else if (CFEqual(a1, @"end"))
    {
      result = 0;
      v8 = MEMORY[0x1E6961558];
    }

    else if (CFEqual(a1, @"center"))
    {
      result = 0;
      v8 = MEMORY[0x1E6961550];
    }

    else if (CFEqual(a1, @"left"))
    {
      result = 0;
      v8 = MEMORY[0x1E6961560];
    }

    else
    {
      if (!CFEqual(a1, @"right"))
      {
        return 4294950720;
      }

      result = 0;
      v8 = MEMORY[0x1E6961568];
    }

    *a3 = *v8;
  }

  else
  {
    fcd_ttml_createCaptionPropertyFromTTMLStyle_textAlign_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t fcd_ttml_createCaptionPropertyFromTTMLStyle_lineHeight(const __CFString *a1, void *a2, uint64_t *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E6961228];
    if (CFEqual(a1, @"normal") || (FigTTMLParseLengthSyntax(a1), (v7 & 0x100000000) != 0))
    {
      v8 = FigGeometryDimensionCopyAsDictionary();
      *a3 = v8;
    }

    else
    {
      v8 = *a3;
    }

    if (v8)
    {
      return 0;
    }

    else
    {
      return 4294950720;
    }
  }

  else
  {
    fcd_ttml_createCaptionPropertyFromTTMLStyle_lineHeight_cold_1(&v10);
    return v10;
  }
}

uint64_t fcd_ttml_createCaptionPropertyFromTTMLStyle_multiRowAlign(const void *a1, void *a2, void *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E6961238];
    if (CFEqual(a1, @"start"))
    {
      result = 0;
      v8 = MEMORY[0x1E69611F8];
    }

    else if (CFEqual(a1, @"center"))
    {
      result = 0;
      v8 = MEMORY[0x1E69611E8];
    }

    else if (CFEqual(a1, @"end"))
    {
      result = 0;
      v8 = MEMORY[0x1E69611F0];
    }

    else
    {
      if (!CFEqual(a1, @"auto"))
      {
        return 4294950720;
      }

      result = 0;
      v8 = MEMORY[0x1E69611E0];
    }

    *a3 = *v8;
  }

  else
  {
    fcd_ttml_createCaptionPropertyFromTTMLStyle_multiRowAlign_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t fcd_ttml_createCaptionPropertyFromTTMLStyle_display(const void *a1, void *a2, void *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E6961220];
    if (CFEqual(a1, @"none"))
    {
      result = 0;
      v8 = MEMORY[0x1E695E4D0];
    }

    else
    {
      if (!CFEqual(a1, @"auto"))
      {
        return 4294950720;
      }

      result = 0;
      v8 = MEMORY[0x1E695E4C0];
    }

    *a3 = *v8;
  }

  else
  {
    fcd_ttml_createCaptionPropertyFromTTMLStyle_display_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t fcd_ttml_createCellResolutionProperty(uint64_t a1)
{
  FigGeometryDimensionMake();
  FigGeometryDimensionMake();
  if (*(a1 + 184) && *(a1 + 188))
  {
    FigGeometryDimensionMake();
    FigGeometryDimensionMake();
  }

  FigGeometrySizeMake();
  return FigGeometrySizeCopyAsDictionary();
}

void fcd_ttml_convertTTMLStyleToRegionPropertyAndAddToDictionary(void *key, uint64_t a2, uint64_t a3)
{
  v21 = 0;
  v22 = 0;
  Value = CFDictionaryGetValue(*(a3 + 8), key);
  if (Value)
  {
    v6 = *(a3 + 16);
    v20.epoch = *(a3 + 32);
    v7 = *(a3 + 56);
    v17 = *(a3 + 40);
    v18 = v7;
    v19 = *(a3 + 72);
    *&v20.value = v6;
LABEL_10:
    v15 = fcd_ttml_createDynamicStyleFromTTML(Value, a2, &v20, &v17, &v22, &v21);
    v11 = v21;
    if (!v15)
    {
      CFDictionaryAddValue(*(a3 + 88), v22, v21);
    }

    goto LABEL_12;
  }

  if (!FigCFEqual())
  {
    goto LABEL_14;
  }

  v8 = *(a3 + 16);
  v20.epoch = *(a3 + 32);
  v9 = *(a3 + 56);
  v17 = *(a3 + 40);
  v18 = v9;
  v19 = *(a3 + 72);
  *&v20.value = v8;
  v10 = fcd_ttml_createDynamicStyleFromTTML(fcd_ttml_createWidthRegionPropertyFromTTMLStyle_extent, a2, &v20, &v17, &v22, &v21);
  v11 = v21;
  if (!v10)
  {
    v12 = v22;
    CFDictionaryAddValue(*(a3 + 88), v22, v21);
    if (v12)
    {
      CFRelease(v12);
      v22 = 0;
    }

    if (v11)
    {
      CFRelease(v11);
      v21 = 0;
    }

    v13 = *(a3 + 16);
    v20.epoch = *(a3 + 32);
    v14 = *(a3 + 56);
    v17 = *(a3 + 40);
    v18 = v14;
    v19 = *(a3 + 72);
    *&v20.value = v13;
    Value = fcd_ttml_createHeightRegionPropertyFromTTMLStyle_extent;
    goto LABEL_10;
  }

LABEL_12:
  if (v11)
  {
    CFRelease(v11);
  }

LABEL_14:
  v16 = v22;
  if (v22)
  {

    CFRelease(v16);
  }
}

void fcd_ttml_initializeRegionPropertyMappingDictionary()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling overflow", fcd_ttml_createRegionPropertyFromTTMLStyle_overflow);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling showBackground", fcd_ttml_createRegionPropertyFromTTMLStyle_showBackground);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling backgroundColor", fcd_ttml_createRegionPropertyFromTTMLStyle_backgroundColor);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling opacity", fcd_ttml_createRegionPropertyFromTTMLStyle_opacity);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml/profile/imsc1#styling forcedDisplay", fcd_ttml_createRegionPropertyFromTTMLStyle_forcedDisplay);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling displayAlign", fcd_ttml_createRegionPropertyFromTTMLStyle_displayAlign);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling display", fcd_ttml_createRegionPropertyFromTTMLStyle_display);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling visibility", fcd_ttml_createRegionPropertyFromTTMLStyle_visibility);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling writingMode", fcd_ttml_createRegionPropertyFromTTMLStyle_writingMode);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling zIndex", fcd_ttml_createRegionPropertyFromTTMLStyle_zIndex);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling padding", fcd_ttml_createRegionPropertyFromTTMLStyle_padding);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling origin", fcd_ttml_createRegionPropertyFromTTMLStyle_origin);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling position", fcd_ttml_createRegionPropertyFromTTMLStyle_position);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling luminanceGain", fcd_ttml_createRegionPropertyFromTTMLStyle_luminanceGain);
  CFDictionaryAddValue(Mutable, @"http://www.w3.org/ns/ttml#styling disparity", fcd_ttml_createRegionPropertyFromTTMLStyle_stereoDisparity);
  sRegionPropertyMappingDictionary = Mutable;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_overflow(const void *a1, void *a2, void *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E69612F8];
    if (CFEqual(a1, @"hidden"))
    {
      result = 0;
      v8 = MEMORY[0x1E695E4D0];
    }

    else
    {
      if (!CFEqual(a1, @"visible"))
      {
        return 4294950720;
      }

      result = 0;
      v8 = MEMORY[0x1E695E4C0];
    }

    *a3 = *v8;
  }

  else
  {
    fcd_ttml_createRegionPropertyFromTTMLStyle_overflow_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_showBackground(const void *a1, void *a2, void *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E69613A0];
    if (CFEqual(a1, @"always"))
    {
      result = 0;
      v8 = MEMORY[0x1E69613C8];
    }

    else
    {
      if (!CFEqual(a1, @"whenActive"))
      {
        return 4294950720;
      }

      result = 0;
      v8 = MEMORY[0x1E69613D0];
    }

    *a3 = *v8;
  }

  else
  {
    fcd_ttml_createRegionPropertyFromTTMLStyle_showBackground_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_backgroundColor(const __CFString *a1, void *a2, uint64_t *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E69612E8];
    v7 = FigTTMLCGColorCreateWithColorSyntax(a1);
    *a3 = v7;
    if (v7)
    {
      return 0;
    }

    else
    {
      return 4294950720;
    }
  }

  else
  {
    fcd_ttml_createRegionPropertyFromTTMLStyle_backgroundColor_cold_1(&v9);
    return v9;
  }
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_opacity(const __CFString *a1, void *a2, uint64_t *a3)
{
  v14 = 0;
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E6961380];
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, a1);
    CFStringTrimWhitespace(MutableCopy);
    CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
    v9 = &CStringPtrAndBufferToFree[strlen(CStringPtrAndBufferToFree)];
    v13 = v9;
    strtof(CStringPtrAndBufferToFree, &v13);
    if (v9 == v13)
    {
      Float32 = FigCFNumberCreateFloat32();
      *a3 = Float32;
    }

    else
    {
      Float32 = *a3;
    }

    if (Float32)
    {
      v11 = 0;
    }

    else
    {
      v11 = 4294950720;
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }

  else
  {
    fcd_ttml_createRegionPropertyFromTTMLStyle_opacity_cold_1(&v15);
    v11 = v15;
  }

  free(v14);
  return v11;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_forcedDisplay(const void *a1, void *a2, void *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E6961320];
    if (CFEqual(a1, @"true"))
    {
      result = 0;
      v8 = MEMORY[0x1E695E4D0];
    }

    else
    {
      if (!CFEqual(a1, @"false"))
      {
        return 4294950720;
      }

      result = 0;
      v8 = MEMORY[0x1E695E4C0];
    }

    *a3 = *v8;
  }

  else
  {
    fcd_ttml_createRegionPropertyFromTTMLStyle_forcedDisplay_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_displayAlign(const void *a1, void *a2, void *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E6961308];
    if (CFEqual(a1, @"after"))
    {
      result = 0;
      v8 = MEMORY[0x1E6961290];
    }

    else if (CFEqual(a1, @"before"))
    {
      result = 0;
      v8 = MEMORY[0x1E6961298];
    }

    else
    {
      if (!CFEqual(a1, @"center"))
      {
        return 4294950720;
      }

      result = 0;
      v8 = MEMORY[0x1E69612A0];
    }

    *a3 = *v8;
  }

  else
  {
    fcd_ttml_createRegionPropertyFromTTMLStyle_displayAlign_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_display(const void *a1, void *a2, void *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E6961330];
    if (CFEqual(a1, @"auto"))
    {
      result = 0;
      v8 = MEMORY[0x1E695E4C0];
    }

    else
    {
      if (!CFEqual(a1, @"none"))
      {
        return 4294950720;
      }

      result = 0;
      v8 = MEMORY[0x1E695E4D0];
    }

    *a3 = *v8;
  }

  else
  {
    fcd_ttml_createRegionPropertyFromTTMLStyle_display_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_visibility(const void *a1, void *a2, void *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E6961370];
    if (CFEqual(a1, @"visible"))
    {
      result = 0;
      v8 = MEMORY[0x1E695E4C0];
    }

    else
    {
      if (!CFEqual(a1, @"hidden"))
      {
        return 4294950720;
      }

      result = 0;
      v8 = MEMORY[0x1E695E4D0];
    }

    *a3 = *v8;
  }

  else
  {
    fcd_ttml_createRegionPropertyFromTTMLStyle_visibility_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_writingMode(const void *a1, void *a2, void *a3)
{
  if (!a1 || (v6 = CFGetTypeID(a1), v6 != CFStringGetTypeID()))
  {
    fcd_ttml_createRegionPropertyFromTTMLStyle_writingMode_cold_1(&v9);
    return v9;
  }

  *a2 = *MEMORY[0x1E69613B8];
  if (!CFEqual(a1, @"lrtb"))
  {
    if (CFEqual(a1, @"rltb"))
    {
      goto LABEL_6;
    }

    if (!CFEqual(a1, @"tbrl"))
    {
      if (CFEqual(a1, @"tblr"))
      {
        result = 0;
        v8 = MEMORY[0x1E69613E8];
        goto LABEL_11;
      }

      if (CFEqual(a1, @"lr"))
      {
        goto LABEL_4;
      }

      if (CFEqual(a1, @"rl"))
      {
LABEL_6:
        result = 0;
        v8 = MEMORY[0x1E69613E0];
        goto LABEL_11;
      }

      if (!CFEqual(a1, @"tb"))
      {
        return 4294950720;
      }
    }

    result = 0;
    v8 = MEMORY[0x1E69613F0];
    goto LABEL_11;
  }

LABEL_4:
  result = 0;
  v8 = MEMORY[0x1E69613D8];
LABEL_11:
  *a3 = *v8;
  return result;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_zIndex(const __CFString *a1, void *a2, uint64_t *a3)
{
  v14 = 0;
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    *a2 = *MEMORY[0x1E69613C0];
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, a1);
    CFStringTrimWhitespace(MutableCopy);
    if (CFEqual(MutableCopy, @"auto") || (CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree(), v9 = &CStringPtrAndBufferToFree[strlen(CStringPtrAndBufferToFree)], v13 = v9, v10 = strtol(CStringPtrAndBufferToFree, &v13, 10), v11 = 4294950720, v9 == v13) && (v10 & 0x80000000) == 0)
    {
      v11 = 0;
      *a3 = FigCFNumberCreateSInt32();
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }

  else
  {
    fcd_ttml_createRegionPropertyFromTTMLStyle_zIndex_cold_1(&v13);
    v11 = v13;
  }

  free(v14);
  return v11;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_padding(const void *a1, void *a2, __CFDictionary **a3)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!a1 || (v7 = CFGetTypeID(a1), v7 != CFStringGetTypeID()))
  {
    fcd_ttml_createRegionPropertyFromTTMLStyle_padding_cold_5(&v42);
    v38 = v42;
    if (!Mutable)
    {
      return v38;
    }

    goto LABEL_28;
  }

  v8 = FigTTMLCFStringArrayCreateWithNMTOKENS(a1);
  v9 = *(MEMORY[0x1E6962808] + 8);
  Count = CFArrayGetCount(v8);
  v40 = a3;
  theArray = v8;
  if (Count > 2)
  {
    if (Count == 3)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v8, 0);
      FigTTMLParseLengthSyntax(ValueAtIndex);
      v13 = v29;
      v30 = CFArrayGetValueAtIndex(v8, 1);
      FigTTMLParseLengthSyntax(v30);
      v9 = v31;
      v32 = CFArrayGetValueAtIndex(v8, 2);
      FigTTMLParseLengthSyntax(v32);
      v12 = v33;
      v11 = v9;
    }

    else
    {
      v11 = v9;
      v12 = v9;
      v13 = v9;
      if (Count == 4)
      {
        v18 = CFArrayGetValueAtIndex(v8, 0);
        FigTTMLParseLengthSyntax(v18);
        v13 = v19;
        v20 = CFArrayGetValueAtIndex(v8, 1);
        FigTTMLParseLengthSyntax(v20);
        v9 = v21;
        v22 = CFArrayGetValueAtIndex(v8, 2);
        FigTTMLParseLengthSyntax(v22);
        v12 = v23;
        v24 = CFArrayGetValueAtIndex(v8, 3);
        FigTTMLParseLengthSyntax(v24);
        v11 = v25;
      }
    }
  }

  else if (Count == 1)
  {
    v26 = CFArrayGetValueAtIndex(v8, 0);
    FigTTMLParseLengthSyntax(v26);
    v9 = v27;
    v11 = v27;
    v12 = v27;
    v13 = v27;
  }

  else
  {
    v11 = v9;
    v12 = v9;
    v13 = v9;
    if (Count == 2)
    {
      v14 = CFArrayGetValueAtIndex(v8, 0);
      FigTTMLParseLengthSyntax(v14);
      v12 = v15;
      v16 = CFArrayGetValueAtIndex(v8, 1);
      FigTTMLParseLengthSyntax(v16);
      v9 = v17;
      v11 = v17;
      v13 = v12;
    }
  }

  if ((v13 & 0x100000000) == 0)
  {
    fcd_ttml_createRegionPropertyFromTTMLStyle_padding_cold_4(&v42);
LABEL_36:
    v37 = 0;
    v38 = v42;
    goto LABEL_23;
  }

  if ((v12 & 0x100000000) == 0)
  {
    fcd_ttml_createRegionPropertyFromTTMLStyle_padding_cold_3(&v42);
    goto LABEL_36;
  }

  if ((v9 & 0x100000000) == 0)
  {
    fcd_ttml_createRegionPropertyFromTTMLStyle_padding_cold_2(&v42);
    goto LABEL_36;
  }

  if ((v11 & 0x100000000) == 0)
  {
    fcd_ttml_createRegionPropertyFromTTMLStyle_padding_cold_1(&v42);
    goto LABEL_36;
  }

  v34 = FigGeometryDimensionCopyAsDictionary();
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69612B0], v34);
  if (v34)
  {
    CFRelease(v34);
  }

  v35 = FigGeometryDimensionCopyAsDictionary();
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69612A8], v35);
  if (v35)
  {
    CFRelease(v35);
  }

  v36 = FigGeometryDimensionCopyAsDictionary();
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69612C0], v36);
  if (v36)
  {
    CFRelease(v36);
  }

  v37 = FigGeometryDimensionCopyAsDictionary();
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69612B8], v37);
  v38 = 0;
  *a2 = *MEMORY[0x1E6961388];
  *v40 = Mutable;
  Mutable = 0;
LABEL_23:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (Mutable)
  {
LABEL_28:
    CFRelease(Mutable);
  }

  return v38;
}