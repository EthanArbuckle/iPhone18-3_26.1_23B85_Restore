uint64_t playerasync_SetProperties(void *a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  cf = 0;
  v15 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  v12 = 0;
  if (!a2)
  {
    playerasync_SetProperties_cold_2(&v16);
LABEL_19:
    v10 = v16;
    goto LABEL_11;
  }

  if (*DerivedStorage)
  {
    playerasync_SetProperties_cold_1(&v16);
    goto LABEL_19;
  }

  v7 = FPSupport_HandlePlayerSetPropertiesAndCopyModification(a1, a2, 0, playerasync_handleSetProperty, &v13, &cf, &v12);
  if (!v7)
  {
    if (v13)
    {
LABEL_10:
      v10 = 0;
      goto LABEL_11;
    }

    v7 = playerasync_createCommand(a1, 4, 0, &v15);
    if (!v7)
    {
      v8 = cf;
      if (cf)
      {
        v8 = CFRetain(cf);
      }

      v9 = v15;
      *(v15 + 4) = v8;
      v9[5] = 0;
      playerasync_runAsynchronousCommand(a1, v9);
      v15 = 0;
      if (a3)
      {
        v10 = 0;
        *a3 = v12;
        v12 = 0;
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  v10 = v7;
LABEL_11:
  if (v12)
  {
    CFRelease(v12);
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  fpa_releaseCommand(v15);
  return v10;
}

uint64_t playerasync_AddExternalStartupTask(void *a1, const void *a2)
{
  v10 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    playerasync_AddExternalStartupTask_cold_2(&v11);
LABEL_8:
    v8 = 0;
    v5 = v11;
    goto LABEL_5;
  }

  if (*DerivedStorage)
  {
    playerasync_AddExternalStartupTask_cold_1(&v11);
    goto LABEL_8;
  }

  v5 = playerasync_createCommand(a1, 18, 0, &v10);
  if (v5)
  {
    v8 = v10;
  }

  else
  {
    v6 = CFRetain(a2);
    v7 = v10;
    v10[4] = v6;
    playerasync_runAsynchronousCommand(a1, v7);
    v8 = 0;
  }

LABEL_5:
  fpa_releaseCommand(v8);
  return v5;
}

uint64_t playerasync_RemoveExternalStartupTask(void *a1, const void *a2)
{
  v10 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    playerasync_RemoveExternalStartupTask_cold_2(&v11);
LABEL_8:
    v8 = 0;
    v5 = v11;
    goto LABEL_5;
  }

  if (*DerivedStorage)
  {
    playerasync_RemoveExternalStartupTask_cold_1(&v11);
    goto LABEL_8;
  }

  v5 = playerasync_createCommand(a1, 19, 0, &v10);
  if (v5)
  {
    v8 = v10;
  }

  else
  {
    v6 = CFRetain(a2);
    v7 = v10;
    v10[4] = v6;
    playerasync_runAsynchronousCommand(a1, v7);
    v8 = 0;
  }

LABEL_5:
  fpa_releaseCommand(v8);
  return v5;
}

uint64_t playerasync_CopyDisplayedCVPixelBuffer(const void *a1, const void *a2, uint64_t a3)
{
  v11 = 0;
  v6 = playerasync_createCommand(a1, 48, 0, &v11);
  if (v6)
  {
    v9 = v6;
    v8 = v11;
  }

  else
  {
    if (a2)
    {
      v7 = CFRetain(a2);
    }

    else
    {
      v7 = 0;
    }

    v8 = v11;
    *(v11 + 32) = v7;
    *(v8 + 40) = a3;
    playerasync_runSynchronousCommand(a1, v8);
    v9 = *(v8 + 28);
  }

  fpa_releaseCommand(v8);
  return v9;
}

uint64_t playerasync_EndInterruption(const void *a1, const void *a2)
{
  v9 = 0;
  v4 = playerasync_createCommand(a1, 21, 0, &v9);
  if (v4)
  {
    v7 = v4;
    v6 = v9;
  }

  else
  {
    if (a2)
    {
      v5 = CFRetain(a2);
    }

    else
    {
      v5 = 0;
    }

    v6 = v9;
    *(v9 + 32) = v5;
    playerasync_runSynchronousCommand(a1, v6);
    v7 = v6[7];
  }

  fpa_releaseCommand(v6);
  return v7;
}

uint64_t playerasync_DuckVolume(const void *a1, char a2, float a3, float a4)
{
  v12 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v9 = playerasync_createCommand(a1, 23, 0, &v12);
    v10 = v12;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      *(v12 + 32) = a2;
      *(v10 + 36) = a3;
      *(v10 + 40) = a4;
      playerasync_runImmediateCommand(a1, v10, 0);
      v11 = *(v10 + 28);
    }

    fpa_releaseCommand(v10);
    return v11;
  }
}

uint64_t playerasync_SilentMute(uint64_t a1, char a2)
{
  v5 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    playerasync_SilentMute_cold_1(a1, &v5, a2, &v6);
    return v6;
  }
}

uint64_t playerasync_runSynchronousCommandOnQueue(uint64_t a1)
{
  v2 = *(a1 + 8);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return playerasync_runSynchronousCommandOnQueue_cold_1(a1);
  }

  v4 = DerivedStorage;
  v5 = FigSimpleMutexLock();
  *(v4 + 9) = MEMORY[0x19A8D35D0](v5);
  playerasync_runOneCommand(v2, a1);
  *(v4 + 9) = 0;

  return FigSimpleMutexUnlock();
}

void playerasync_runAsynchronousCommandOnQueue(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = (DerivedStorage + 112);
  v4 = *(DerivedStorage + 112);
  if (!v4)
  {
    FigSimpleMutexUnlock();
    goto LABEL_21;
  }

  v5 = *v4;
  *v3 = *v4;
  if (!v5)
  {
    *(DerivedStorage + 120) = v3;
  }

  v6 = *(v4 + 24);
  v7 = 1;
  v8 = v6 > 0x11;
  v9 = (1 << v6) & 0x28A00;
  if (!v8 && v9 != 0)
  {
    *(DerivedStorage + 6) = 1;
    v7 = 0;
  }

  FigSimpleMutexUnlock();
  if (*DerivedStorage)
  {
    *(v4 + 28) = -12785;
  }

  else
  {
    v11 = FigSimpleMutexLock();
    *(DerivedStorage + 72) = MEMORY[0x19A8D35D0](v11);
    playerasync_runOneCommand(a1, v4);
    if ((v7 & 1) == 0)
    {
      *(DerivedStorage + 6) = 0;
    }

    *(DerivedStorage + 72) = 0;
    FigSimpleMutexUnlock();
    if (!*(v4 + 28))
    {
      goto LABEL_21;
    }
  }

  v12 = *(v4 + 24);
  if (v12 > 43)
  {
    if (v12 != 44)
    {
      if (v12 != 47)
      {
        goto LABEL_21;
      }

      FigCFDictionaryGetInt32IfPresent();
    }

    goto LABEL_20;
  }

  if (v12 == 43)
  {
LABEL_20:
    itemasync_postSeekWasCanceled();
    goto LABEL_21;
  }

  if (v12 == 12)
  {
    if (CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]))
    {
      playerasync_runAsynchronousCommandOnQueue_cold_1();
    }

    else
    {
      playerasync_runAsynchronousCommandOnQueue_cold_2();
    }
  }

LABEL_21:
  fpa_releaseCommand(v4);
  if (a1)
  {
    CFRelease(a1);
  }
}

uint64_t OUTLINED_FUNCTION_6_14()
{

  return CMNotificationCenterPostNotification();
}

uint64_t FigCPECryptorCreateAirPlay(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  cf = 0;
  v23 = 0;
  if (a4)
  {
    if (a2)
    {
      *a4 = 0;
      if (FigCPECryptorCreateAirPlay_initFigAirPlayTracOnceCheck != -1)
      {
        FigCPECryptorCreateAirPlay_cold_1();
      }

      FigCPECryptorGetClassID();
      v6 = CMDerivedObjectCreate();
      if (v6)
      {
        v20 = v6;
        goto LABEL_34;
      }

      if (v23)
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v8 = FigSimpleMutexCreate();
        DerivedStorage[1] = v8;
        if (v8)
        {
          v9 = FigSimpleMutexCreate();
          DerivedStorage[15] = v9;
          if (v9)
          {
            FigCFDictionaryGetBooleanIfPresent();
            StringValue = FigCFDictionaryGetStringValue();
            if (StringValue)
            {
              v11 = StringValue;
              v12 = CMBaseObjectGetDerivedStorage();
              FigSimpleMutexLock();
              *(v12 + 24) = 0;
              v13 = *(v12 + 16);
              *(v12 + 16) = v11;
              CFRetain(v11);
              if (v13)
              {
                CFRelease(v13);
              }

              FigSimpleMutexUnlock();
            }

            CMBaseObject = FigAssetGetCMBaseObject(a2);
            v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v15)
            {
              v15(CMBaseObject, @"assetProperty_CreationOptionsDictionary", *MEMORY[0x1E695E480], &cf);
              if (cf)
              {
                DataValue = FigCFDictionaryGetDataValue();
                DerivedStorage[9] = DataValue;
                if (DataValue)
                {
                  CFRetain(DataValue);
                }
              }
            }

            NumberValue = FigCFDictionaryGetNumberValue();
            if (NumberValue)
            {
              NumberValue = CFRetain(NumberValue);
            }

            DerivedStorage[16] = NumberValue;
            v18 = FigCFDictionaryGetNumberValue();
            if (v18)
            {
              v18 = CFRetain(v18);
            }

            DerivedStorage[17] = v18;
            v19 = FigDispatchQueueCreateWithPriority();
            DerivedStorage[18] = v19;
            if (v19)
            {
              v20 = 0;
              *a4 = v23;
              v23 = 0;
              goto LABEL_23;
            }

            FigCPECryptorCreateAirPlay_cold_2(&v24);
          }

          else
          {
            FigCPECryptorCreateAirPlay_cold_3(&v24);
          }
        }

        else
        {
          FigCPECryptorCreateAirPlay_cold_4(&v24);
        }
      }

      else
      {
        FigCPECryptorCreateAirPlay_cold_5(&v24);
      }
    }

    else
    {
      FigCPECryptorCreateAirPlay_cold_6(&v24);
    }
  }

  else
  {
    FigCPECryptorCreateAirPlay_cold_7(&v24);
  }

  v20 = v24;
LABEL_34:
  if (v23)
  {
    CFRelease(v23);
  }

LABEL_23:
  if (cf)
  {
    CFRelease(cf);
  }

  return v20;
}

uint64_t __FigCPECryptorCreateAirPlay_block_invoke()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();

  return fig_note_initialize_category_with_default_work_cf();
}

uint64_t airplayCryptor_Finalize()
{
  CMBaseObjectGetDerivedStorage();
  airplayCryptor_invalidate_guts();
  FigSimpleMutexDestroy();

  return FigSimpleMutexDestroy();
}

__CFString *airplayCryptor_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*DerivedStorage)
  {
    v6 = " (invalidated)";
  }

  else
  {
    v6 = "";
  }

  v7 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigAirPlayCryptor %p retainCount: %ld%s allocator: %p, ", a1, v5, v6, v7);
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t airplayCryptor_invalidate_guts()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *DerivedStorage = 1;
  v1 = *(DerivedStorage + 112);
  if (v1)
  {
    dispatch_semaphore_signal(v1);
    v2 = *(DerivedStorage + 112);
    if (v2)
    {
      dispatch_release(v2);
    }
  }

  *(DerivedStorage + 112) = 0;
  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 16) = 0;
  }

  v4 = *(DerivedStorage + 48);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 48) = 0;
  }

  v5 = *(DerivedStorage + 56);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 56) = 0;
  }

  v6 = *(DerivedStorage + 64);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 64) = 0;
  }

  v7 = *(DerivedStorage + 72);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 72) = 0;
  }

  v8 = *(DerivedStorage + 80);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 80) = 0;
  }

  v9 = *(DerivedStorage + 88);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 88) = 0;
  }

  v10 = *(DerivedStorage + 96);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 96) = 0;
  }

  v11 = *(DerivedStorage + 104);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 104) = 0;
  }

  v12 = *(DerivedStorage + 128);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 128) = 0;
  }

  v13 = *(DerivedStorage + 136);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 136) = 0;
  }

  v14 = *(DerivedStorage + 144);
  if (v14)
  {
    dispatch_release(v14);
    *(DerivedStorage + 144) = 0;
  }

  return FigSimpleMutexUnlock();
}

uint64_t airplayCryptor_CreateKeyRequest(uint64_t a1, const __CFDictionary *a2, const __CFAllocator *a3, uint64_t *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    airplayCryptor_CreateKeyRequest_cold_10(&bytes);
    return bytes;
  }

  if (!a4)
  {
    airplayCryptor_CreateKeyRequest_cold_9(&bytes);
    return bytes;
  }

  v9 = DerivedStorage;
  *a4 = 0;
  FigSimpleMutexLock();
  if (*v9)
  {
    airplayCryptor_CreateKeyRequest_cold_1(&bytes);
LABEL_79:
    updated = bytes;
    FigSimpleMutexUnlock();
    return updated;
  }

  Mutable = CFDictionaryCreateMutable(a3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    airplayCryptor_CreateKeyRequest_cold_8(&bytes);
    goto LABEL_79;
  }

  v11 = Mutable;
  value = CFDictionaryGetValue(a2, *MEMORY[0x1E6962AC0]);
  if (!value)
  {
    v19 = 0;
LABEL_95:
    updated = FigSignalErrorAtGM();
    goto LABEL_96;
  }

  v57 = CFDictionaryGetValue(a2, *MEMORY[0x1E6962AC8]);
  if (!v57)
  {
    v19 = 0;
    goto LABEL_95;
  }

  v12 = *MEMORY[0x1E6962AD0];
  v13 = CFDictionaryGetValue(a2, *MEMORY[0x1E6962AD0]);
  if (!v13)
  {
    v13 = CFDictionaryGetValue(a2, *MEMORY[0x1E6960D38]);
  }

  v14 = *MEMORY[0x1E6962AB8];
  v15 = CFDictionaryGetValue(a2, *MEMORY[0x1E6962AB8]);
  if (v15)
  {
    v16 = v15;
    if (v13)
    {
      CFDictionarySetValue(v11, v12, v13);
    }

    goto LABEL_16;
  }

  v17 = CFDictionaryGetValue(a2, *MEMORY[0x1E6962AE8]);
  if (v13 | v17)
  {
    v16 = v17;
    if (v13)
    {
      CFDictionarySetValue(v11, v12, v13);
    }

    if (!v16)
    {
LABEL_17:
      v18 = *(v9 + 16);
      if (v18)
      {
        v19 = CFRetain(v18);
        if (v19)
        {
          CFDictionarySetValue(v11, *MEMORY[0x1E6962AB0], v19);
        }
      }

      else
      {
        v19 = 0;
      }

      v20 = CFDictionaryGetValue(a2, *MEMORY[0x1E6962B10]);
      if (!v20 || (v21 = CFGetTypeID(v20), v21 == CFDataGetTypeID()))
      {
        v56 = a4;
        v58 = v11;
        CFDictionaryGetValue(a2, *MEMORY[0x1E6962AF8]);
        CFDictionaryGetValue(a2, *MEMORY[0x1E6962B18]);
        CFDictionaryGetValue(a2, *MEMORY[0x1E6962AE0]);
        v53 = *(v9 + 24);
        FigSimpleMutexUnlock();
        v22 = CMBaseObjectGetDerivedStorage();
        *&length[1] = 0;
        v23 = *MEMORY[0x1E695E480];
        v24 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v25 = v24;
        if (*v22)
        {
          UInt32 = 0;
          v62 = -12785;
          v11 = v58;
          v50 = v56;
          if (!v24)
          {
            goto LABEL_65;
          }

          goto LABEL_64;
        }

        v26 = CMBaseObjectGetDerivedStorage();
        v27 = *(v26 + 128);
        if (v27)
        {
          v28 = CFRetain(v27);
        }

        else
        {
          v28 = 0;
        }

        v29 = *(v26 + 136);
        if (v29)
        {
          v30 = CFRetain(v29);
        }

        else
        {
          v30 = 0;
        }

        bytes = 0;
        v55 = v19;
        if (a1)
        {
          v31 = CFDictionaryCreateMutable(v23, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (v31)
          {
            v32 = CFDictionaryCreateMutable(v23, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (v32)
            {
              v33 = v32;
              FigCFDictionarySetInt32();
              if (v28)
              {
                CFDictionarySetValue(v31, @"lK1", v28);
              }

              if (v30)
              {
                CFDictionarySetValue(v31, @"DhpWkh3rnR", v30);
              }

              CFDictionarySetValue(v31, @"Y7bdIsnh7", value);
              if (nS1Q9ljw9esy9(v31, v33))
              {
                v37 = FigSignalErrorAtGM();
                v36 = 0;
                v54 = 0;
              }

              else
              {
                FigCFDictionaryGetInt64IfPresent();
                v54 = bytes;
                v34 = CFDictionaryGetValue(v33, @"xNJu5eepP");
                if (v34 && (v35 = CFRetain(v34)) != 0)
                {
                  v36 = v35;
                  v37 = 0;
                }

                else
                {
                  airplayCryptor_CreateKeyRequest_cold_2(&v62);
                  v36 = 0;
                  v37 = v62;
                }
              }

              CFRelease(v31);
              CFRelease(v33);
            }

            else
            {
              airplayCryptor_CreateKeyRequest_cold_3(v31, &v62);
              v36 = 0;
              v54 = 0;
              v37 = v62;
            }

            if (v28)
            {
              goto LABEL_43;
            }

            goto LABEL_44;
          }

          airplayCryptor_CreateKeyRequest_cold_4(&v62);
        }

        else
        {
          airplayCryptor_CreateKeyRequest_cold_5(&v62);
        }

        v36 = 0;
        v54 = 0;
        v37 = v62;
        if (v28)
        {
LABEL_43:
          CFRelease(v28);
        }

LABEL_44:
        if (v30)
        {
          CFRelease(v30);
        }

        v62 = v37;
        if (v37)
        {
          UInt32 = 0;
        }

        else
        {
          UInt32 = FigCFNumberCreateUInt32();
          v39 = dispatch_semaphore_create(0);
          if (v39)
          {
            v40 = v39;
            FigSimpleMutexLock();
            *(v22 + 14) = v40;
            FigSimpleMutexUnlock();
            dispatch_retain(v40);
            FigCFDictionarySetValue();
            FigCFDictionarySetValue();
            FigCFDictionarySetValue();
            FigCFDictionarySetValue();
            FigCFDictionarySetValue();
            FigCFDictionarySetValue();
            v41 = CMBaseObjectGetDerivedStorage();
            v19 = v55;
            if (a1 && !*v41)
            {
              CMNotificationCenterGetDefaultLocalCenter();
              CMNotificationCenterPostNotification();
            }

            v42 = dispatch_time(0, 8000000000);
            v43 = dispatch_semaphore_wait(v40, v42);
            v44 = *v22;
            if (v43)
            {
              v11 = v58;
              v45 = v54;
              if (v44)
              {
                v62 = FigSignalErrorAtGM();
                goto LABEL_100;
              }

              v46 = FigSignalErrorAtGM();
              v62 = v46;
            }

            else
            {
              v45 = v54;
              if (*v22)
              {
                airplayCryptor_CreateKeyRequest_cold_6(&v62);
                v11 = v58;
                goto LABEL_100;
              }

              FigSimpleMutexLock();
              FigCFDictionaryGetInt32IfPresent();
              FigCFDictionaryGetValueIfPresent();
              FigSimpleMutexUnlock();
              v46 = v62;
              v11 = v58;
            }

            v47 = 0;
            if (v46 || !*&length[1])
            {
              goto LABEL_60;
            }

            bytes = 0;
            length[0] = 0;
            BytePtr = CFDataGetBytePtr(*&length[1]);
            v49 = CFDataGetLength(*&length[1]);
            v62 = f5zGmdURga6BZ(v45, BytePtr, v49, &bytes, length);
            if (!v62)
            {
              v47 = CFDataCreate(v23, bytes, length[0]);
              Ud5PNQt99i(bytes);
LABEL_60:
              v50 = v56;
              *v56 = v47;
              goto LABEL_61;
            }

            airplayCryptor_CreateKeyRequest_cold_7();
LABEL_100:
            v50 = v56;
LABEL_61:
            dispatch_release(v40);
            if (!v36)
            {
              goto LABEL_63;
            }

            goto LABEL_62;
          }

          v62 = -12786;
        }

        v11 = v58;
        v50 = v56;
        v19 = v55;
        if (!v36)
        {
LABEL_63:
          if (!v25)
          {
LABEL_65:
            if (UInt32)
            {
              CFRelease(UInt32);
            }

            updated = v62;
            if (!v62 && v53)
            {
              updated = FigAirPlaySecureStopRouterUpdateRecord(v19, value, v57, *v50);
            }

            goto LABEL_70;
          }

LABEL_64:
          CFRelease(v25);
          goto LABEL_65;
        }

LABEL_62:
        CFRelease(v36);
        goto LABEL_63;
      }

      goto LABEL_95;
    }

LABEL_16:
    CFDictionarySetValue(v11, v14, v16);
    goto LABEL_17;
  }

  v19 = 0;
  updated = 4294954516;
LABEL_96:
  FigSimpleMutexUnlock();
LABEL_70:
  CFRelease(v11);
  if (v19)
  {
    CFRelease(v19);
  }

  return updated;
}

uint64_t airplayCryptor_SetKeyRequestResponse(uint64_t a1, const void *a2, const __CFDictionary *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v6 = DerivedStorage;
    FigSimpleMutexLock();
    if (a3)
    {
      Value = CFDictionaryGetValue(a3, *MEMORY[0x1E6962B28]);
      v8 = *(v6 + 64);
      *(v6 + 64) = Value;
      if (Value)
      {
        CFRetain(Value);
      }

      if (v8)
      {
        CFRelease(v8);
      }
    }

    v9 = *(v6 + 48);
    *(v6 + 48) = a2;
    CFRetain(a2);
    if (v9)
    {
      CFRelease(v9);
    }

    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    airplayCryptor_SetKeyRequestResponse_cold_1(&v11);
    return v11;
  }
}

uint64_t FigSampleBufferAudioRendererCentralCreateWithOptions(uint64_t a1, const void *a2, CFDictionaryRef theDict, uint64_t *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"ClientAuditToken");
    if (Value)
    {
      v8 = Value;
      memset(buffer, 0, 32);
      v9 = CFGetTypeID(Value);
      if (v9 != CFDataGetTypeID() || CFDataGetLength(v8) != 32)
      {
        return 4294950915;
      }

      v29.location = 0;
      v29.length = 32;
      CFDataGetBytes(v8, v29, buffer);
      v25 = *buffer;
      v26 = *&buffer[16];
      cf = 0;
      *type = 0;
      FigNote_AllowInternalDefaultLogs();
      fig_note_initialize_category_with_default_work_cf();
      fig_note_initialize_category_with_default_work_cf();
      Internal = 4294950916;
      if (!a2 || !a4)
      {
LABEL_19:
        if (cf)
        {
          CFRelease(cf);
        }

        if (!Internal)
        {
          goto LABEL_22;
        }

        return Internal;
      }

      if (FigPreferAudioSessionOverCMSession())
      {
        *v23 = v25;
        v24 = v26;
        UsingPrimaryAVAudioSessionSiblingForAuditToken = FigAudioSessionCreateUsingPrimaryAVAudioSessionSiblingForAuditToken(a1, v23, @"SBAR", &cf);
        if (!UsingPrimaryAVAudioSessionSiblingForAuditToken)
        {
          v12 = cf;
          if (!cf)
          {
            FigSampleBufferAudioRendererCentralCreateWithOptions_cold_1(v23);
LABEL_44:
            Internal = LODWORD(v23[0]);
            goto LABEL_19;
          }

LABEL_17:
          *v23 = v25;
          v24 = v26;
          Internal = audioRendererCentral_createInternal(a1, a2, v12, v23, type);
          if (Internal)
          {
            if (*type)
            {
              CFRelease(*type);
            }
          }

          else
          {
            *a4 = *type;
          }

          goto LABEL_19;
        }
      }

      else
      {
        *v23 = v25;
        v24 = v26;
        UsingPrimaryAVAudioSessionSiblingForAuditToken = FigAudioSessionCreateUsingPrimaryCMSessionForAuditToken(a1, v23, &cf);
        if (!UsingPrimaryAVAudioSessionSiblingForAuditToken)
        {
          v12 = cf;
          if (!cf)
          {
            FigSampleBufferAudioRendererCentralCreateWithOptions_cold_2(v23);
            goto LABEL_44;
          }

          goto LABEL_17;
        }
      }

      Internal = UsingPrimaryAVAudioSessionSiblingForAuditToken;
      goto LABEL_19;
    }
  }

  v23[0] = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  Internal = 4294950916;
  if (!a2 || !a4)
  {
    return Internal;
  }

  Internal = audioRendererCentral_createInternal(a1, a2, 0, xmmword_196E73288, v23);
  if (!Internal)
  {
    *a4 = v23[0];
LABEL_22:
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 96) = 0;
    v14 = (DerivedStorage + 96);
    if (FigCFDictionaryGetStringIfPresent())
    {
      CFStringGetCString(0, v14, 10, 0x600u);
    }

    if (dword_1EAF16C90)
    {
      LODWORD(v25) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v16 = v25;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        v18 = *a4;
        if (v18)
        {
          v19 = (CMBaseObjectGetDerivedStorage() + 96);
        }

        else
        {
          v19 = "";
        }

        *buffer = 136315650;
        *&buffer[4] = "FigSampleBufferAudioRendererCentralCreateWithOptions";
        *&buffer[12] = 2048;
        *&buffer[14] = v18;
        *&buffer[22] = 2082;
        *&buffer[24] = v19;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 0;
  }

  if (v23[0])
  {
    CFRelease(v23[0]);
  }

  return Internal;
}

uint64_t audioRendererCentral_createInternal(uint64_t a1, const void *a2, uint64_t a3, _OWORD *a4, CFTypeRef *a5)
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  cf = 0;
  FigSampleBufferAudioRendererGetClassID();
  v9 = CMDerivedObjectCreate();
  v10 = v21;
  *(v21 + 6) = v9;
  if (!v9)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = a2;
    CFRetain(a2);
    v12 = a4[1];
    *(DerivedStorage + 16) = *a4;
    *(DerivedStorage + 32) = v12;
    __snprintf_chk(label, 0x80uLL, 0, 0x80uLL, "com.apple.coremedia.samplebufferaudiorenderercentral.state[%p]", cf);
    v13 = dispatch_queue_create(label, 0);
    *(DerivedStorage + 56) = v13;
    if (v13 && (__snprintf_chk(label, 0x80uLL, 0, 0x80uLL, "com.apple.coremedia.samplebufferaudiorenderercentral.notificationQueue[%p]", cf), v14 = dispatch_queue_create(label, 0), (*(DerivedStorage + 8) = v14) != 0))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      if (a3)
      {
        v15 = *(DerivedStorage + 56);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __audioRendererCentral_createInternal_block_invoke;
        block[3] = &unk_1E747EC60;
        block[4] = &v20;
        block[5] = cf;
        block[6] = a3;
        dispatch_sync(v15, block);
      }

      v10 = v21;
      if (!*(v21 + 6))
      {
        *a5 = cf;
        goto LABEL_8;
      }
    }

    else
    {
      v10 = v21;
      *(v21 + 6) = -16382;
    }
  }

  if (cf)
  {
    CFRelease(cf);
    v10 = v21;
  }

LABEL_8:
  v16 = *(v10 + 6);
  _Block_object_dispose(&v20, 8);
  return v16;
}

void sub_1964BB034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t audioRendererCentral_subRendererNotificationHandler()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

void audioRendererCentral_subRendererBufferedAirPlayInUseNotificationHandler()
{
  CMBaseObjectGetDerivedStorage();

  audioRendererCentral_updateBufferedAirPlayAudioInUseFromSubRenderer();
}

uint64_t __audioRendererCentral_createInternal_block_invoke(uint64_t a1)
{
  result = audioRendererCentral_setFigAudioSession(*(a1 + 40), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

__CFString *audioRendererCentral_CopyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  v6 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferAudioRendererCentral=%p retainCount=%d allocator=%p", a1, v5, v6);
  CFStringAppendFormat(Mutable, 0, @" subRenderer=%p", *DerivedStorage);
  CFStringAppendFormat(Mutable, 0, @" audioSession=%@", *(DerivedStorage + 64));
  if (*(DerivedStorage + 80))
  {
    v7 = "Yes";
  }

  else
  {
    v7 = "No";
  }

  CFStringAppendFormat(Mutable, 0, @" didSetAudioSessionStateToPlaying=%s", v7);
  if (*(DerivedStorage + 81))
  {
    v8 = "Yes";
  }

  else
  {
    v8 = "No";
  }

  CFStringAppendFormat(Mutable, 0, @" didCallActivateOnAudioSession=%s", v8);
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t audioRendererCentral_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (FigCFEqual())
  {
    if (*(DerivedStorage + 48))
    {
      cf = FigCFNumberCreateUInt32();
      if (cf)
      {
        v8 = 0;
      }

      else
      {
        v8 = 4294950914;
      }
    }

    else
    {
      v8 = 4294954513;
    }
  }

  else
  {
    v9 = *DerivedStorage;
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10)
    {
      v8 = v10(v9, a2, a3, &cf);
    }

    else
    {
      v8 = 4294954514;
    }
  }

  if (a4)
  {
    *a4 = cf;
  }

  else if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t audioRendererCentral_SetProperty(uint64_t a1, uint64_t a2, const void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v32 = 0;
  if (FigCFEqual())
  {
    if (a3)
    {
      v7 = CFGetTypeID(a3);
      if (v7 == CFNumberGetTypeID())
      {
        SInt32 = FigCFNumberGetSInt32();
        v9 = *(DerivedStorage + 32);
        v38 = *(DerivedStorage + 16);
        v39 = v9;
        if (FigPreferAudioSessionOverCMSession())
        {
          v10 = *MEMORY[0x1E695E480];
          cf[0] = v38;
          cf[1] = v39;
          v11 = FigAudioSessionCreateWithAVAudioSessionSiblingForAudioSessionID(v10, SInt32, cf, @"SBAR", &v32);
        }

        else
        {
          v15 = AudioSessionCopyCMSessionForSessionID();
          v10 = *MEMORY[0x1E695E480];
          v11 = FigAudioSessionCreateWithCMSession(*MEMORY[0x1E695E480], v15, &v32);
          if (v15)
          {
            CFRelease(v15);
          }
        }

        *(v34 + 6) = v11;
        if (v11)
        {
          goto LABEL_40;
        }

        v16 = v32;
        v17 = *(DerivedStorage + 72);
        *&cf[0] = 0;
        *&v38 = 0;
        if (!v17)
        {
          if (v32)
          {
            goto LABEL_28;
          }

          v13 = 0;
          v20 = 0;
          goto LABEL_34;
        }

        v18 = *(CMBaseObjectGetVTable() + 16);
        if (v18)
        {
          v19 = *(v18 + 8);
          if (!v19)
          {
            goto LABEL_32;
          }

          v20 = v19(v17, @"FAS_CoreSessionID", v10, cf);
          if (v20)
          {
            v13 = 0;
            goto LABEL_34;
          }

          if (v16)
          {
            v21 = *(CMBaseObjectGetVTable() + 16);
            if (v21)
            {
              v22 = *(v21 + 8);
              if (v22)
              {
                v20 = v22(v16, @"FAS_CoreSessionID", v10, &v38);
                v23 = v38;
                if (!v20)
                {
                  if (FigCFEqual())
                  {
                    v16 = v17;
                  }

LABEL_28:
                  v13 = CFRetain(v16);
                  v20 = 0;
                  v23 = v38;
                  if (!v38)
                  {
                    goto LABEL_34;
                  }

                  goto LABEL_29;
                }

                v13 = 0;
                if (v38)
                {
LABEL_29:
                  CFRelease(v23);
                }

LABEL_34:
                if (*&cf[0])
                {
                  CFRelease(*&cf[0]);
                }

                *(v34 + 6) = v20;
                if (!v20)
                {
                  if (v13)
                  {
                    v27 = *(DerivedStorage + 56);
                    v31[0] = MEMORY[0x1E69E9820];
                    v31[1] = 3221225472;
                    v31[2] = __audioRendererCentral_SetProperty_block_invoke;
                    v31[3] = &unk_1E747EC60;
                    v31[4] = &v33;
                    v31[5] = a1;
                    v31[6] = v13;
                    dispatch_sync(v27, v31);
                    goto LABEL_39;
                  }

                  goto LABEL_45;
                }

                goto LABEL_10;
              }

LABEL_32:
              v13 = 0;
              v20 = -19225;
              goto LABEL_34;
            }
          }
        }

        v13 = 0;
        v20 = -19221;
        goto LABEL_34;
      }
    }

LABEL_45:
    v26 = FigSignalErrorAtGM();
LABEL_44:
    *(v34 + 6) = v26;
    goto LABEL_40;
  }

  if (!FigCFEqual())
  {
    v24 = *DerivedStorage;
    v25 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v25)
    {
      v26 = v25(v24, a2, a3);
    }

    else
    {
      v26 = -12782;
    }

    goto LABEL_44;
  }

  if (!a3)
  {
    goto LABEL_45;
  }

  v12 = CFGetTypeID(a3);
  if (v12 != FigAudioSessionGetTypeID())
  {
    goto LABEL_45;
  }

  v13 = CFRetain(a3);
  v14 = *(DerivedStorage + 56);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __audioRendererCentral_SetProperty_block_invoke_2;
  block[3] = &unk_1E747EC60;
  block[4] = &v33;
  block[5] = a1;
  block[6] = v13;
  dispatch_sync(v14, block);
LABEL_10:
  if (v13)
  {
LABEL_39:
    CFRelease(v13);
  }

LABEL_40:
  if (v32)
  {
    CFRelease(v32);
  }

  v28 = *(v34 + 6);
  _Block_object_dispose(&v33, 8);
  return v28;
}

void sub_1964BB890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void audioRendererCentral_postNotification(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  CFRetain(a2);
  v5 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __audioRendererCentral_postNotification_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = a2;
  block[5] = a1;
  block[6] = 0;
  dispatch_async(v5, block);
}

void __audioRendererCentral_postNotification_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  CFRelease(*(a1 + 40));
  CFRelease(*(a1 + 32));
  v2 = *(a1 + 48);
  if (v2)
  {

    CFRelease(v2);
  }
}

__CFString *audioRendererCentral_synchronizerCentralClientAccessProtocolCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"FigSampleBufferAudioRenderer_Central <FigSampleBufferRenderSynchronizerCentralClientAccessProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t audioRendererCentral_ProcessRateChange(uint64_t a1, char a2, float a3)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v6 = *(CMBaseObjectGetDerivedStorage() + 56);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __audioRendererCentral_ProcessRateChange_block_invoke;
  block[3] = &unk_1E747ECA8;
  block[4] = &v12;
  block[5] = a1;
  v11 = a2;
  v10 = a3;
  dispatch_sync(v6, block);
  v7 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v7;
}

void sub_1964BBAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t audioRendererCentral_QueueIsAboveHighWaterLevel()
{
  v0 = *CMBaseObjectGetDerivedStorage();
  v1 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v1)
  {
    return 1;
  }

  return v1(v0);
}

uint64_t audioRendererCentral_Flush()
{
  v0 = *CMBaseObjectGetDerivedStorage();
  v1 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v1)
  {
    return 4294954514;
  }

  return v1(v0);
}

uint64_t audioRendererCentral_CopyClock(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a2);
}

uint64_t audioRendererCentral_SetRateAndTime(float a1, uint64_t a2, __int128 *a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
  v8 = *a3;
  v9 = *(a3 + 2);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v6)
  {
    return 4294954514;
  }

  v10 = v8;
  v11 = v9;
  return v6(v5, &v10, a1);
}

uint64_t audioRendererCentral_FlushFromMediaTime(uint64_t a1, __int128 *a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  v11 = *a2;
  v12 = *(a2 + 2);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v8)
  {
    v13 = v11;
    v14 = v12;
    return v8(v7, &v13, a3, a4);
  }

  else
  {
    v9 = 4294954514;
    if (a3)
    {
      a3(4294954514, a4);
    }
  }

  return v9;
}

uint64_t audioRendererCentral_SetRateAndAnchorTime(float a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  v12 = *a3;
  v13 = *(a3 + 2);
  v10 = *a4;
  v11 = *(a4 + 2);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v8)
  {
    return 4294954514;
  }

  v16 = v12;
  v17 = v13;
  v14 = v10;
  v15 = v11;
  return v8(v7, &v16, &v14, a1);
}

void audioRendererCentral_updateBufferedAirPlayAudioInUseFromSubRenderer()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (DerivedStorage[8])
  {
    v1 = *DerivedStorage;
    v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v2)
    {
      v2(v1, @"BufferedAirPlayInUse", *MEMORY[0x1E695E480], &cf);
      if (cf)
      {
        CFRelease(cf);
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_2_27()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_4_22()
{

  return _os_log_send_and_compose_impl();
}

uint64_t OUTLINED_FUNCTION_5_17()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_9_8(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, os_log_type_t type, int a14)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_13_6()
{

  return FigNotificationCenterAddWeakListener();
}

BOOL OUTLINED_FUNCTION_14_7(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, os_log_type_t type, int a14)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_15_7(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, os_log_type_t type, int a14)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_16_7()
{

  return CMBaseObjectGetProtocolVTable();
}

void sbcins_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v1 = *(DerivedStorage + 32);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 32) = 0;
  }

  v2 = *(DerivedStorage + 24);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 24) = 0;
  }
}

__CFString *sbcins_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferConsumerSbufInspector %p>", a1);
  return Mutable;
}

uint64_t sbcins_setProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v5, a2, a3);
}

uint64_t sbcins_IsQueueAtOrAboveHighWater()
{
  v0 = *CMBaseObjectGetDerivedStorage();
  v1 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v1)
  {
    return 0;
  }

  return v1(v0);
}

uint64_t sbcins_IsQueueBelowLowWater()
{
  v0 = *CMBaseObjectGetDerivedStorage();
  v1 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v1)
  {
    return 0;
  }

  return v1(v0);
}

uint64_t sbcins_InstallLowWaterTrigger(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v7, a2, a3, a4);
}

uint64_t sbcins_RemoveLowWaterTrigger(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a2);
}

uint64_t sbcins_GetPendingSampleBufferCount()
{
  v0 = *CMBaseObjectGetDerivedStorage();
  v1 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v1)
  {
    return 0;
  }

  return v1(v0);
}

uint64_t sbcins_PostNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v7, a2, a3, a4);
}

uint64_t sbcins_Flush()
{
  v0 = *CMBaseObjectGetDerivedStorage();
  v1 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v1)
  {
    return 4294954514;
  }

  return v1(v0);
}

uint64_t ckbremote_ensureClientEstablished()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __ckbremote_ensureClientEstablished_block_invoke;
  block[3] = &unk_1E747ECF0;
  block[4] = &v3;
  if (ckbremote_ensureClientEstablished_sFigContentKeyBossRemoteClientSetupOnce != -1)
  {
    dispatch_once(&ckbremote_ensureClientEstablished_sFigContentKeyBossRemoteClientSetupOnce, block);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t __ckbremote_ensureClientEstablished_block_invoke(uint64_t a1)
{
  FigRemote_ShouldConnectToMediaparserdForFileParsing();
  FigRemote_ShouldConnectToMediaplaybackd();
  result = FigXPCRemoteClientCreate();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t ckbremote_deadConnectionCallback()
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 8) = 1;
  return result;
}

void __ckbremote_requestStatusCallback_keyRequestDidSucceed_block_invoke(void *a1)
{
  (*(a1[4] + 112))(a1[5], a1[6], a1[7], a1[8], a1[9], 0);
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[9];
  if (v5)
  {

    CFRelease(v5);
  }
}

void __ckbremote_requestStatusCallback_keyRequestDidFail_block_invoke(void *a1)
{
  (*(a1[4] + 120))(a1[5], a1[6], a1[7], a1[8], a1[9], 0);
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[9];
  if (v5)
  {

    CFRelease(v5);
  }
}

void __ckbremote_requestStatusCallback_keyRequestDidUpdateContentKeyBossToNewBoss_block_invoke(void *a1)
{
  (*(a1[4] + 128))(a1[5], a1[6]);
  v2 = a1[5];
  if (v2)
  {

    CFRelease(v2);
  }
}

void __ckbremote_requestHandlingCallback_keyRequestDidSucceed_block_invoke(void *a1)
{
  (*(a1[4] + 56))(a1[5], a1[6], a1[7], a1[8], a1[9], 0);
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[9];
  if (v5)
  {

    CFRelease(v5);
  }
}

void __ckbremote_requestHandlingCallback_keyRequestDidFail_block_invoke(void *a1)
{
  (*(a1[4] + 64))(a1[5], a1[6], a1[7], a1[8], a1[9], 0);
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[9];
  if (v5)
  {

    CFRelease(v5);
  }
}

void __ckbremote_requestHandlingCallback_didProvideRequest_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 32))(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 80), *(a1 + 72));
  v2 = *(a1 + 72);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 56);
  if (v5)
  {

    CFRelease(v5);
  }
}

void __ckbremote_requestHandlingCallback_didProvideRenewingRequest_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 40))(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 80), *(a1 + 72));
  v2 = *(a1 + 72);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 56);
  if (v5)
  {

    CFRelease(v5);
  }
}

void __ckbremote_requestHandlingCallback_didUpdatePersistableKey_block_invoke(void *a1)
{
  (*(a1[4] + 48))(a1[5], a1[6], a1[7], a1[8]);
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[8];
  if (v5)
  {

    CFRelease(v5);
  }
}

void __ckbremote_requestHandlingCallback_didExternalProtectionStatusChange_block_invoke(void *a1)
{
  (*(a1[4] + 72))(a1[5], a1[6], a1[7]);
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[7];
  if (v4)
  {

    CFRelease(v4);
  }
}

CFStringRef ckbremote_copyDebugDesc(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  AllocatorForMedia = FigGetAllocatorForMedia();
  return CFStringCreateWithFormat(AllocatorForMedia, 0, @"[FigContentKeyBossRemote %p %lld]", a1, *DerivedStorage);
}

uint64_t ckbremote_copyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a4)
    {

      return FigXPCSendStdCopyPropertyMessage();
    }

    else
    {
      ckbremote_copyProperty_cold_1(&v7);
      return v7;
    }
  }

  else
  {
    ckbremote_copyProperty_cold_2(&v8);
    return v8;
  }
}

uint64_t ckbremote_setProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a3)
    {

      return FigXPCSendStdSetPropertyMessage();
    }

    else
    {
      ckbremote_setProperty_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    ckbremote_setProperty_cold_2(&v7);
    return v7;
  }
}

void *__copy_assignment_8_8_t0w8_pa0_16609_8_pa0_37959_16_pa0_51628_24(void *result, void *a2)
{
  *result = *a2;
  result[1] = a2[1];
  result[2] = a2[2];
  result[3] = a2[3];
  return result;
}

void *__copy_assignment_8_8_t0w8_pa0_18803_8_pa0_11926_16_pa0_32929_24_pa0_16857_32_pa0_23185_40_pa0_3293_48(void *result, void *a2)
{
  *result = *a2;
  result[1] = a2[1];
  result[2] = a2[2];
  result[3] = a2[3];
  result[4] = a2[4];
  result[5] = a2[5];
  result[6] = a2[6];
  return result;
}

uint64_t OUTLINED_FUNCTION_7_10()
{
  *(v0 - 80) = 0;
  *(v0 - 72) = 0;

  return FigCFWeakReferenceHolderCopyReferencedObject();
}

uint64_t OUTLINED_FUNCTION_8_11()
{

  return FigContentKeyBossClientServerXPC_DeserializeAndCopyKeySpecifier(v0, (v1 - 72));
}

uint64_t OUTLINED_FUNCTION_9_9()
{

  return FigXPCRemoteClientSendSyncMessageCreatingReply();
}

uint64_t OUTLINED_FUNCTION_14_8()
{

  return FigXPCRelease();
}

uint64_t FigGaplessAudioEditCursorCreate(const void *a1, uint64_t a2, uint64_t a3, const __CFAllocator *a4, CFTypeRef *a5)
{
  cf = 0;
  v5 = *(MEMORY[0x1E6960C78] + 48);
  *&v27.source.duration.timescale = *(MEMORY[0x1E6960C78] + 32);
  *&v27.target.start.value = v5;
  v6 = *(MEMORY[0x1E6960C78] + 80);
  *&v27.target.start.epoch = *(MEMORY[0x1E6960C78] + 64);
  *&v27.target.duration.timescale = v6;
  v7 = *(MEMORY[0x1E6960C78] + 16);
  *&v27.source.start.value = *MEMORY[0x1E6960C78];
  *&v27.source.start.epoch = v7;
  if (!a1)
  {
    FigGaplessAudioEditCursorCreate_cold_6(&v31);
    goto LABEL_22;
  }

  if ((*(a2 + 12) & 1) == 0 || (*(a2 + 36) & 1) == 0 || *(a2 + 40) || (*(a2 + 24) & 0x8000000000000000) != 0)
  {
    FigGaplessAudioEditCursorCreate_cold_5(&v31);
LABEL_22:
    value_low = LODWORD(v31.source.start.value);
    goto LABEL_23;
  }

  if ((*(a3 + 12) & 1) == 0)
  {
    FigGaplessAudioEditCursorCreate_cold_4(&v31);
    goto LABEL_22;
  }

  if (!a5)
  {
    FigGaplessAudioEditCursorCreate_cold_3(&v31);
    goto LABEL_22;
  }

  FigEditCursorGetClassID();
  v13 = CMDerivedObjectCreate();
  if (v13)
  {
    value_low = v13;
    FigGaplessAudioEditCursorCreate_cold_1();
    goto LABEL_23;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = CFRetain(a1);
  v16 = *(a2 + 16);
  v15 = *(a2 + 32);
  *(DerivedStorage + 8) = *a2;
  *(DerivedStorage + 24) = v16;
  *(DerivedStorage + 40) = v15;
  Mutable = CFArrayCreateMutable(a4, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 56) = Mutable;
  if (!Mutable)
  {
    FigGaplessAudioEditCursorCreate_cold_2(&v31);
    goto LABEL_22;
  }

  v18 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v18)
  {
    v19 = v18(a1, &v27);
    if (!v19)
    {
      v31 = v27;
      gaecSetGaplessEditSegmentArrayFromOriginalEditSegment(DerivedStorage, &v31);
      *&v26.value = *a3;
      v26.epoch = *(a3 + 16);
      v20 = *(DerivedStorage + 56);
      if (v20)
      {
        Count = CFArrayGetCount(v20);
        if (Count >= 1)
        {
          v22 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 56), v22);
            memset(&v31, 0, sizeof(v31));
            CMTimeMappingMakeFromDictionary(&v31, ValueAtIndex);
            if (!v22)
            {
              *&time1.start.value = *&v26.value;
              time1.start.epoch = v26.epoch;
              time2 = v31.target.start;
              if (CMTimeCompare(&time1.start, &time2) < 0)
              {
                break;
              }
            }

            time1 = v31.target;
            time2 = v26;
            if (CMTimeRangeContainsTime(&time1, &time2))
            {
              goto LABEL_27;
            }

            if (Count == ++v22)
            {
              goto LABEL_26;
            }
          }

          v22 = 0;
          goto LABEL_27;
        }
      }

      else
      {
        Count = 0;
      }

LABEL_26:
      v22 = Count - 1;
LABEL_27:
      value_low = 0;
      *(DerivedStorage + 64) = v22;
      *a5 = cf;
      return value_low;
    }

    value_low = v19;
  }

  else
  {
    value_low = 4294954514;
  }

LABEL_23:
  if (cf)
  {
    CFRelease(cf);
  }

  return value_low;
}

void gaecSetGaplessEditSegmentArrayFromOriginalEditSegment(uint64_t a1, uint64_t a2)
{
  v60 = *MEMORY[0x1E69E9840];
  v53 = *MEMORY[0x1E6960C78];
  v54 = *(MEMORY[0x1E6960C78] + 8);
  v3 = *(MEMORY[0x1E6960C78] + 40);
  v50 = *(MEMORY[0x1E6960C78] + 24);
  v51 = v3;
  flags = *(MEMORY[0x1E6960C78] + 60);
  v52 = *(MEMORY[0x1E6960C78] + 56);
  v32 = *MEMORY[0x1E6960C78];
  v47 = v50;
  v48 = v3;
  v49 = v52;
  v45 = *a2;
  v5 = *(a2 + 12);
  v46 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 40);
  v42 = *(a2 + 24);
  v43 = v7;
  v8 = *(a2 + 60);
  v44 = *(a2 + 56);
  v9 = *(a2 + 64);
  v10 = *(a2 + 72);
  v11 = *(a2 + 80);
  v12 = *(a2 + 88);
  v41 = v32;
  v13 = *(MEMORY[0x1E6960C78] + 16);
  v57 = v50;
  v58 = v3;
  timescale = v52;
  v28 = v13;
  value = *(MEMORY[0x1E6960C78] + 72);
  v30 = *(MEMORY[0x1E6960C78] + 84);
  v26 = *(MEMORY[0x1E6960C78] + 88);
  epoch = *(MEMORY[0x1E6960C78] + 64);
  v25 = *(MEMORY[0x1E6960C78] + 80);
  v31 = v11;
  if ((v5 & 0x1D) == 1 || (v8 & 1) == 0 || (v11 & 0x100000000) == 0 || v12 || v10 < 0)
  {
    memset(&v40, 0, sizeof(v40));
    v17 = *(a1 + 24);
    *&range.source.start.value = *(a1 + 8);
    *&range.source.start.epoch = v17;
    *&range.source.duration.timescale = *(a1 + 40);
    CMTimeRangeGetEnd(&v40, &range.source);
    v39 = **&MEMORY[0x1E6960C70];
    range.source.start.value = v45;
    range.source.start.timescale = v46;
    range.source.start.flags = v5;
    range.source.start.epoch = 0;
    *&rhs.start.value = *(a1 + 8);
    rhs.start.epoch = *(a1 + 24);
    CMTimeAdd(&v39, &range.source.start, &rhs.start);
    range.source.start = v40;
    rhs.start = v39;
    if (CMTimeCompare(&range.source.start, &rhs.start) <= 0)
    {
      rhs.start.value = *(&v43 + 1);
      rhs.start.timescale = v44;
      rhs.start.flags = v8;
      rhs.start.epoch = 0;
      rhs.duration.value = v10;
      *&rhs.duration.timescale = v31;
      rhs.duration.epoch = v12;
      CMTimeMappingMakeEmpty(&range, &rhs);
    }

    else
    {
      rhs.start.value = *(&v43 + 1);
      range.source.start = v39;
      rhs.start.timescale = v44;
      rhs.start.flags = v8;
      rhs.start.epoch = 0;
      rhs.duration.value = v10;
      *&rhs.duration.timescale = v31;
      rhs.duration.epoch = v12;
      memset(&v36, 0, sizeof(v36));
      *&duration.start.value = v42;
      duration.start.epoch = v43;
      CMTimeRangeMake(&v36, &range.source.start, &duration.start);
      memset(&v35, 0, sizeof(v35));
      range.source = v36;
      CMTimeRangeGetEnd(&v35, &range.source);
      range.source.start = v40;
      duration.start = v35;
      if (CMTimeCompare(&range.source.start, &duration.start) < 0)
      {
        *&range.source.start.value = v42;
        range.source.start.epoch = v43;
        duration.start.value = v10;
        *&duration.start.timescale = v31;
        duration.start.epoch = v12;
        v18 = CMTimeCompare(&range.source.start, &duration.start);
        v19 = *(MEMORY[0x1E6960C98] + 16);
        *&duration.start.value = *MEMORY[0x1E6960C98];
        *&duration.start.epoch = v19;
        *&duration.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
        lhs.start = v40;
        v34 = v39;
        CMTimeSubtract(&range.source.start, &lhs.start, &v34);
        v36.duration = range.source.start;
        if (v18)
        {
          range.source.start = v36.duration;
          lhs.start.value = v10;
          *&lhs.start.timescale = v31;
          lhs.start.epoch = v12;
          *&v34.value = v42;
          v34.epoch = v43;
          CMTimeMultiplyTimeByTimeRatio();
        }

        else
        {
          rhs.duration = v36.duration;
        }

        range.source.start.value = *(&v43 + 1);
        range.source.start.timescale = v44;
        range.source.start.flags = v8;
        range.source.start.epoch = 0;
        lhs.start = rhs.duration;
        CMTimeAdd(&duration.start, &range.source.start, &lhs.start);
        lhs.start.value = v10;
        *&lhs.start.timescale = v31;
        lhs.start.epoch = v12;
        v34 = rhs.duration;
        CMTimeSubtract(&range.source.start, &lhs.start, &v34);
        duration.duration = range.source.start;
        lhs = duration;
        CMTimeMappingMakeEmpty(&range, &lhs);
        v41 = *&range.source.start.value;
        v57 = *&range.source.duration.value;
        v58 = *&range.source.duration.epoch;
        flags = range.target.start.flags;
        timescale = range.target.start.timescale;
        epoch = range.target.start.epoch;
        v28 = range.source.start.epoch;
        value = range.target.duration.value;
        v30 = range.target.duration.flags;
        v25 = range.target.duration.timescale;
        v26 = range.target.duration.epoch;
      }

      duration = v36;
      lhs = rhs;
      CMTimeMappingMake(&range, &duration, &lhs);
    }

    lhs.start.value = range.source.start.value;
    v5 = range.source.start.flags;
    lhs.start.timescale = range.source.start.timescale;
    *&duration.start.value = *&range.source.duration.value;
    *&duration.start.epoch = *&range.source.duration.epoch;
    v8 = range.target.start.flags;
    duration.duration.timescale = range.target.start.timescale;
    v10 = range.target.duration.value;
    v14 = range.target.duration.epoch;
    v16 = flags & 1;
    if (flags)
    {
      if ((v30 & (v26 == 0) & (value >= 0)) != 0)
      {
        v20 = v6;
      }

      else
      {
        v20 = v28;
      }

      v21 = epoch;
      if ((v30 & (v26 == 0) & (value >= 0)) != 0)
      {
        v21 = v6;
      }

      epoch = v21;
      v28 = v20;
    }

    v31 = *&range.target.duration.timescale;
    v9 = v6;
  }

  else
  {
    v14 = 0;
    lhs.start.value = *a2;
    lhs.start.timescale = *(a2 + 8);
    v15 = *(a2 + 40);
    *&duration.start.value = *(a2 + 24);
    *&duration.start.epoch = v15;
    duration.duration.timescale = *(a2 + 56);
    v16 = flags & 1;
  }

  v53 = lhs.start.value;
  v54 = lhs.start.timescale;
  v50 = *&duration.start.value;
  v51 = *&duration.start.epoch;
  v52 = duration.duration.timescale;
  v33 = v41;
  v49 = timescale;
  v47 = v57;
  v48 = v58;
  CFArrayRemoveAllValues(*(a1 + 56));
  *&range.source.duration.value = v50;
  v22 = *MEMORY[0x1E695E480];
  range.source.start.value = v53;
  range.source.start.timescale = v54;
  range.source.start.flags = v5;
  range.source.start.epoch = v6;
  *&range.source.duration.epoch = v51;
  range.target.start.timescale = v52;
  range.target.start.flags = v8;
  range.target.start.epoch = v9;
  range.target.duration.value = v10;
  *&range.target.duration.timescale = v31;
  range.target.duration.epoch = v14;
  v23 = CMTimeMappingCopyAsDictionary(&range, v22);
  CFArrayAppendValue(*(a1 + 56), v23);
  if (v16)
  {
    if ((v30 & 1) != 0 && !v26 && (value & 0x8000000000000000) == 0)
    {
      *&range.source.start.value = v33;
      *&range.source.duration.value = v47;
      range.source.start.epoch = v28;
      *&range.source.duration.epoch = v48;
      range.target.start.timescale = v49;
      range.target.start.flags = flags;
      range.target.start.epoch = epoch;
      range.target.duration.value = value;
      range.target.duration.timescale = v25;
      range.target.duration.flags = v30;
      range.target.duration.epoch = 0;
      v24 = CMTimeMappingCopyAsDictionary(&range, v22);
      CFArrayAppendValue(*(a1 + 56), v24);
      if (v24)
      {
        CFRelease(v24);
      }
    }
  }

  if (v23)
  {
    CFRelease(v23);
  }
}

void gaec_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  v1 = *(DerivedStorage + 56);
  if (v1)
  {

    CFRelease(v1);
  }
}

__CFString *gaec_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *MEMORY[0x1E695E480];
  v4 = *(DerivedStorage + 8);
  v5 = *(DerivedStorage + 40);
  *&range.start.epoch = *(DerivedStorage + 24);
  *&range.duration.timescale = v5;
  *&range.start.value = v4;
  v6 = CMTimeRangeCopyDescription(v3, &range);
  Mutable = CFStringCreateMutable(v3, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigGaplessAudioEditCursor %p GaplessTimeRange %@>", a1, v6);
  if (v6)
  {
    CFRelease(v6);
  }

  return Mutable;
}

uint64_t gaec_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigBaseObject = FigEditCursorGetFigBaseObject(*DerivedStorage);
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9)
  {
    return 4294954514;
  }

  return v9(FigBaseObject, a2, a3, a4);
}

uint64_t gaec_Copy(const void *a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  v5 = *DerivedStorage;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v6)
  {
    v7 = v6(v5, &v15);
    if (v7)
    {
      v13 = v7;
    }

    else
    {
      CFGetAllocator(a1);
      FigEditCursorGetClassID();
      v8 = CMDerivedObjectCreate();
      if (v8)
      {
        v13 = v8;
        gaec_Copy_cold_1();
      }

      else
      {
        v9 = CMBaseObjectGetDerivedStorage();
        *v9 = v15;
        v15 = 0;
        v10 = *(DerivedStorage + 40);
        v11 = *(DerivedStorage + 24);
        *(v9 + 8) = *(DerivedStorage + 8);
        *(v9 + 24) = v11;
        *(v9 + 40) = v10;
        CFGetAllocator(a1);
        MutableCopy = FigCFArrayCreateMutableCopy();
        *(v9 + 56) = MutableCopy;
        if (MutableCopy)
        {
          v13 = 0;
          *(v9 + 64) = *(DerivedStorage + 64);
          *a2 = 0;
        }

        else
        {
          gaec_Copy_cold_2(&v16);
          v13 = v16;
        }
      }
    }
  }

  else
  {
    v13 = 4294954514;
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v13;
}

uint64_t gaec_Step(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  if (a2 >= 1)
  {
    v5 = a2 + 1;
    v6 = MEMORY[0x1E6960C78];
    while (1)
    {
      Count = v4[7];
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      v8 = v4[8] + 1;
      if (Count <= v8)
      {
        v9 = v6[3];
        v36 = v6[2];
        v37 = v9;
        v10 = v6[5];
        v38 = v6[4];
        v39 = v10;
        v11 = v6[1];
        v34 = *v6;
        v35 = v11;
        v12 = *v4;
        v13 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (!v13)
        {
          return 4294954514;
        }

        result = v13(v12, 1);
        if (result)
        {
          return result;
        }

        v15 = *v4;
        v16 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (!v16)
        {
          return 4294954514;
        }

        result = v16(v15, &v34);
        if (result)
        {
          return result;
        }

        v30 = v36;
        v31 = v37;
        v32 = v38;
        v33 = v39;
        v28 = v34;
        v29 = v35;
        gaecSetGaplessEditSegmentArrayFromOriginalEditSegment(v4, &v28);
        v4[8] = 0;
      }

      else
      {
        v4[8] = v8;
      }

      if (--v5 <= 1)
      {
        return 0;
      }
    }
  }

  if ((a2 & 0x80000000) == 0)
  {
    return 0;
  }

  v17 = *(DerivedStorage + 64);
  v18 = MEMORY[0x1E6960C78];
  while (v17 > 0)
  {
    --v17;
LABEL_26:
    v4[8] = v17;
    if (__CFADD__(a2++, 1))
    {
      return 0;
    }
  }

  v19 = v18[3];
  v36 = v18[2];
  v37 = v19;
  v20 = v18[5];
  v38 = v18[4];
  v39 = v20;
  v21 = v18[1];
  v34 = *v18;
  v35 = v21;
  v22 = *v4;
  v23 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v23)
  {
    result = v23(v22, 0xFFFFFFFFLL);
    if (result)
    {
      return result;
    }

    v24 = *v4;
    v25 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v25)
    {
      result = v25(v24, &v34);
      if (result)
      {
        return result;
      }

      v30 = v36;
      v31 = v37;
      v32 = v38;
      v33 = v39;
      v28 = v34;
      v29 = v35;
      gaecSetGaplessEditSegmentArrayFromOriginalEditSegment(v4, &v28);
      v26 = v4[7];
      if (v26)
      {
        v17 = CFArrayGetCount(v26) - 1;
      }

      else
      {
        v17 = -1;
      }

      goto LABEL_26;
    }
  }

  return 4294954514;
}

uint64_t gaec_GetEditSegment(uint64_t a1, _OWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 56), *(DerivedStorage + 64));
  memset(&v9, 0, sizeof(v9));
  CMTimeMappingMakeFromDictionary(&v9, ValueAtIndex);
  v5 = *&v9.target.start.value;
  a2[2] = *&v9.source.duration.timescale;
  a2[3] = v5;
  v6 = *&v9.target.duration.timescale;
  a2[4] = *&v9.target.start.epoch;
  a2[5] = v6;
  v7 = *&v9.source.start.epoch;
  *a2 = *&v9.source.start.value;
  a2[1] = v7;
  return 0;
}

uint64_t FigVirtualDisplaySessionGetClassID()
{
  if (FigVirtualDisplaySessionGetClassID_once != -1)
  {
    FigVirtualDisplaySessionGetClassID_cold_1();
  }

  return sVirtualDisplaySessionClassID;
}

uint64_t __FigVirtualDisplaySessionGetClassID_block_invoke()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigVirtualDisplaySessionGetTypeID()
{
  if (FigVirtualDisplaySessionGetClassID_once != -1)
  {
    FigVirtualDisplaySessionGetClassID_cold_1();
  }

  return CMBaseClassGetCFTypeID();
}

uint64_t FigVirtualDisplaySessionIsIdle(uint64_t a1, BOOL *a2)
{
  cf = 0;
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
    return 4294954514;
  }

  v5 = v4(a1, @"IsIdle", *MEMORY[0x1E695E480], &cf);
  v6 = cf;
  if (!v5)
  {
    *a2 = cf == *MEMORY[0x1E695E4D0];
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v5;
}

void feServer_LoadCelestial()
{
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.MediaToolbox");
  if (BundleWithIdentifier)
  {
    v1 = CFBundleCopyBundleURL(BundleWithIdentifier);
    if (v1)
    {
      v2 = v1;
      v3 = *MEMORY[0x1E695E480];
      v4 = CFURLCreateWithString(*MEMORY[0x1E695E480], @"../../PrivateFrameworks/Celestial.framework", v1);
      if (v4)
      {
        v5 = v4;
        feServer_LoadCelestial_resultBundle = CFBundleCreate(v3, v4);
        CFRelease(v5);
      }

      CFRelease(v2);
    }
  }
}

uint64_t FigInitializePlayerProcess()
{
  GSInitialize();
  FigPlaybackMemoryReporterStart();
  FigSandboxRegistrationServerStart();
  feServer_LoadCelestial();
  FigShared_OneTimeInitialization();
  out_token = 0;
  notify_register_dispatch("com.apple.language.changed", &out_token, MEMORY[0x1E69E96A0], &__block_literal_global_14);
  v0 = FigOSTransactionCreate();
  FigControlCommandsStartServer();
  ModelSpecificPropertyList = FigCreateModelSpecificPropertyList();
  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartCPECryptorServer"))
  {
    FigCPECryptorStartServer();
  }

  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartCPEServer"))
  {
    FigCPEServerStart();
  }

  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartContentKeySessionServer"))
  {
    FigContentKeyBossStartServer();
    FigContentKeySessionStartServer();
  }

  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartCustomURLLoaderServer"))
  {
    FigCustomURLLoaderServerStart();
  }

  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartByteStreamServer"))
  {
    FigByteStreamServerStart();
  }

  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartFormatReaderServer"))
  {
    FigFormatReaderServerStart();
  }

  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartSampleGeneratorServer"))
  {
    FigSampleGeneratorServerStart();
  }

  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartAssetServer"))
  {
    FigAssetServerStart();
  }

  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartMutableCompositionServer"))
  {
    FigMutableCompositionServerStart();
  }

  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartAssetImageGeneratorServer"))
  {
    FigAssetImageGeneratorServerStart();
  }

  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartMTAudioProcessingTapServer"))
  {
    MTAudioProcessingTapServerStart();
  }

  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"VideoCompositorServer"))
  {
    FigVideoCompositorServerStart();
  }

  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartPlayerServer"))
  {
    FigPlayerServerStart();
  }

  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartVideoQueueServer"))
  {
    FigVideoQueueServerStart();
  }

  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartRemakerServer"))
  {
    FigRemakerServerStart();
  }

  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartAssetDownloaderServer"))
  {
    FigAssetDownloaderStartServer();
  }

  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartAssetCacheInspectorServer"))
  {
    FigAssetCacheInspectorStartServer();
  }

  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartSampleBufferAudioRendererServer"))
  {
    FigSampleBufferAudioRendererServerStart();
  }

  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartSampleBufferRenderSynchronizerServer"))
  {
    FigSampleBufferRenderSynchronizerServerStart();
  }

  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartVideoTargetServer"))
  {
    FigVideoTargetStartServer();
  }

  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartVisualContextServer"))
  {
    FigVisualContextServerStart();
  }

  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartNeroidServer"))
  {
    FigNeroidStartServer();
  }

  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartMetricEventTimelineStartServer"))
  {
    FigMetricEventTimelineStartServer();
  }

  if (ModelSpecificPropertyList)
  {
    CFRelease(ModelSpecificPropertyList);
  }

  if (v0)
  {
    os_release(v0);
  }

  FigStartMonitoringNetworkActivity();
  CelestialIsAudioAccessory();
  if (FigGetCFPreferenceNumberWithDefault())
  {
    v3 = 0;
    PKDGetSystemCPC(&v3);
  }

  return FigGetCFPreferenceNumberWithDefault();
}

uint64_t FigInitializeParserProcess()
{
  FigMediaparserdUtilities_StartMediaparserdUtilitiesServer();
  FigFormatReaderServerStart();
  FigMutableMovieServerStart();
  FigManifoldStartServer();
  PlaylistFileParserServer();
  FigStreamPlaylistParserStartServer();
  FigJSONParserStartServer();
  FigSessionDataParserStartServer();
  FigFairplayPSSHAtomParserStartServer();
  FigSteeringParserStartServer();
  FigXMLServiceStartServer();
  FigCaptionGroupConverterFromSampleBufferStartServer();

  return FigGetCFPreferenceNumberWithDefault();
}

BOOL feServer_ShouldStartSubServer(const __CFDictionary *a1, const void *a2)
{
  if (!a1)
  {
    return 1;
  }

  value = 0;
  if (CFDictionaryGetValueIfPresent(a1, a2, &value) && (v2 = CFGetTypeID(value), v2 == CFBooleanGetTypeID()))
  {
    return value == *MEMORY[0x1E695E4D0];
  }

  else
  {
    return 1;
  }
}

uint64_t ckbutil_registerClass(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 8) = result;
  return result;
}

uint64_t FigContentKeyBossGetClassID()
{
  if (sRegisterFigContentKeyBossClassIDOnce != -1)
  {
    FigContentKeyBossGetClassID_cold_1();
  }

  return sFigContentKeyBossClassID;
}

uint64_t RegisterFigContentKeyBossType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigContentKeyBossGetTypeID()
{
  if (sRegisterFigContentKeyBossClassIDOnce != -1)
  {
    FigContentKeyBossGetClassID_cold_1();
  }

  return CMBaseClassGetCFTypeID();
}

uint64_t FigContentKeyBossUsesOptimizedKeyLoading()
{
  if (qword_1ED4CA698 != -1)
  {
    FigContentKeyBossUsesOptimizedKeyLoading_cold_1();
  }

  return _MergedGlobals_27;
}

uint64_t ckb_getValueOfOptimizedKeyLoadingFeatureFlag(char *a1)
{
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  result = fig_note_initialize_category_with_default_work_cf();
  if (CFPreferenceNumberWithDefault >= 1)
  {
    if (dword_1EAF16CD0)
    {
LABEL_3:
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      v6 = 1;
      result = fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_10;
    }

LABEL_6:
    v6 = 1;
    goto LABEL_10;
  }

  result = _os_feature_enabled_impl();
  if (result)
  {
    if (dword_1EAF16CD0)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  if (dword_1EAF16CD0)
  {
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v6 = 0;
LABEL_10:
  *a1 = v6;
  return result;
}

CFStringRef ckbutil_keyGroupID_copyLoggingDescription(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v3 = "The HTTP Authorization Token Group 🪣";
        goto LABEL_15;
      case 5:
        v3 = "The AirPlay Group 🪣";
        goto LABEL_15;
      case 4:
        v3 = "Lightning-to-HDMI Display Adapter Group 🪣";
        goto LABEL_15;
    }

LABEL_12:
    v4 = CFStringCreateWithFormat(v2, 0, @"Some other 🪣 with identifier %llu", a1);
    goto LABEL_16;
  }

  if (!a1)
  {
    v3 = "The invalid Group 🪣 -- where keys really shouldn't be??";
    goto LABEL_15;
  }

  if (a1 == 1)
  {
    v3 = "The On-Device FairPlay Group 🪣";
    goto LABEL_15;
  }

  if (a1 != 2)
  {
    goto LABEL_12;
  }

  v3 = "The On-Device 'Clear Key' Group 🪣";
LABEL_15:
  v4 = CFStringCreateWithCString(v2, v3, 0x8000100u);
LABEL_16:
  v5 = v4;
  if (!v4)
  {
    FigUserCrashWithMessage();
  }

  return v5;
}

uint64_t ckbutil_contentKeySpecifier_copyLoggingArguments(uint64_t a1, __CFString **a2, __CFString **a3, uint64_t *a4)
{
  KeySystem = FigContentKeySpecifierGetKeySystem(a1);
  EncryptionMethod = FigContentKeySpecifierGetEncryptionMethod(a1);
  SupportedProtocolVersions = FigContentKeySpecifierGetSupportedProtocolVersions(a1);
  *a2 = ckbutil_keySystem_getLoggingDescription(KeySystem);
  *a3 = ckbutil_encryptionMethod_getLoggingDescription(EncryptionMethod);
  result = ckbutil_supportedProtocolVersions_copyLoggingDescription(SupportedProtocolVersions);
  *a4 = result;
  return result;
}

__CFString *ckbutil_keySystem_getLoggingDescription(int a1)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return @"The FairPlay key system";
      }
    }

    else
    {
      FigUserCrashWithMessage();
    }

LABEL_9:
    FigUserCrashWithMessage();
    FigUserCrashWithMessage();
    return 0;
  }

  if (a1 != 3)
  {
    if (a1 == 2)
    {
      return @"A 'clear key' provided to this client";
    }

    goto LABEL_9;
  }

  return @"An HTTP-based authorization token";
}

__CFString *ckbutil_encryptionMethod_getLoggingDescription(int a1)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return @"Full-segment AES-128 encryption";
    }

    else
    {
      if (a1 != 4)
      {
        if (a1 == 5)
        {
          FigUserCrashWithMessage();
        }

LABEL_10:
        FigUserCrashWithMessage();
        FigUserCrashWithMessage();
        return 0;
      }

      return @"Full-segment AES-256 GCM encryption%s";
    }
  }

  else if (a1)
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return @"CTR-mode per-sample AES encryption%s";
      }

      goto LABEL_10;
    }

    return @"CBCS-mode per-sample AES encryption";
  }

  else
  {
    return @"An invalid encryption method";
  }
}

uint64_t ckbutil_supportedProtocolVersions_copyLoggingDescription(const __CFArray *a1)
{
  if (a1 && CFArrayGetCount(a1))
  {
    v1 = FigCFCopyCompactDescription();
  }

  else
  {
    v1 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"None / not specified");
  }

  v2 = v1;
  if (!v1)
  {
    FigUserCrashWithMessage();
  }

  return v2;
}

uint64_t ckrp_getTypeID()
{
  v1 = xmmword_1E747EEC0;
  if (ckrp_getTypeID_once != -1)
  {
    dispatch_once_f(&ckrp_getTypeID_once, &v1, ckbutil_registerClass);
  }

  return ckrp_getTypeID_typeID;
}

uint64_t FigContentKeyRequestParamsCreate(uint64_t a1, const void *a2, char a3, int a4, int a5, uint64_t a6, const void *a7, const void *a8, uint64_t a9, char a10, uint64_t a11, uint64_t *a12)
{
  if (a12)
  {
    ckrp_getTypeID();
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v19 = Instance;
      if (a2)
      {
        v20 = CFRetain(a2);
      }

      else
      {
        v20 = 0;
      }

      *(v19 + 16) = v20;
      *(v19 + 24) = a3;
      *(v19 + 28) = a4;
      *(v19 + 32) = a5;
      if (a7)
      {
        v21 = CFRetain(a7);
      }

      else
      {
        v21 = 0;
      }

      *(v19 + 40) = v21;
      if (a8)
      {
        v22 = CFRetain(a8);
      }

      else
      {
        v22 = 0;
      }

      *(v19 + 48) = v22;
      *(v19 + 56) = a9;
      *(v19 + 64) = a10;
      *(v19 + 65) = FigCFDictionaryGetBooleanValue() == *MEMORY[0x1E695E4D0];
      Value = FigCFDictionaryGetValue();
      if (Value)
      {
        v24 = CFRetain(Value);
      }

      else
      {
        v24 = 0;
      }

      result = 0;
      *(v19 + 72) = v24;
      *a12 = v19;
    }

    else
    {
      FigContentKeyRequestParamsCreate_cold_1(&v26);
      return v26;
    }
  }

  else
  {
    FigContentKeyRequestParamsCreate_cold_2(&v27);
    return v27;
  }

  return result;
}

uint64_t FigContentKeyRequestDataParamsCreate(uint64_t a1, const void *a2, const void *a3, const void *a4, const void *a5, const void *a6, int a7, char a8, char a9, char a10, const void *a11, uint64_t *a12)
{
  if (!a12)
  {
    FigContentKeyRequestDataParamsCreate_cold_2(&v28);
    return v28;
  }

  v28 = xmmword_1E747EED0;
  if (ckrdp_getTypeID_once != -1)
  {
    dispatch_once_f(&ckrdp_getTypeID_once, &v28, ckbutil_registerClass);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigContentKeyRequestDataParamsCreate_cold_1(&v28);
    return v28;
  }

  v20 = Instance;
  if (a2)
  {
    v21 = CFRetain(a2);
  }

  else
  {
    v21 = 0;
  }

  *(v20 + 16) = v21;
  if (a3)
  {
    v22 = CFRetain(a3);
  }

  else
  {
    v22 = 0;
  }

  *(v20 + 24) = v22;
  if (a4)
  {
    v23 = CFRetain(a4);
  }

  else
  {
    v23 = 0;
  }

  *(v20 + 32) = v23;
  if (a5)
  {
    v24 = CFRetain(a5);
  }

  else
  {
    v24 = 0;
  }

  *(v20 + 40) = v24;
  if (a6)
  {
    v25 = CFRetain(a6);
  }

  else
  {
    v25 = 0;
  }

  *(v20 + 48) = v25;
  *(v20 + 56) = a7;
  *(v20 + 60) = a8;
  *(v20 + 61) = a9;
  *(v20 + 62) = a10;
  if (a11)
  {
    v26 = CFRetain(a11);
  }

  else
  {
    v26 = 0;
  }

  result = 0;
  *(v20 + 64) = v26;
  *a12 = v20;
  return result;
}

uint64_t FigContentKeyResponseParamsCreate(uint64_t a1, int a2, const void *a3, const void *a4, const void *a5, void *a6)
{
  if (!a6)
  {
    FigContentKeyResponseParamsCreate_cold_2(&v17);
    return v17;
  }

  v17 = xmmword_1E747EEE0;
  if (ckrsp_getTypeID_once != -1)
  {
    dispatch_once_f(&ckrsp_getTypeID_once, &v17, ckbutil_registerClass);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigContentKeyResponseParamsCreate_cold_1(&v17);
    return v17;
  }

  v12 = Instance;
  *(Instance + 16) = a2;
  if (a3)
  {
    v13 = CFRetain(a3);
  }

  else
  {
    v13 = 0;
  }

  v12[3] = v13;
  if (a4)
  {
    v14 = CFRetain(a4);
  }

  else
  {
    v14 = 0;
  }

  v12[4] = v14;
  if (a5)
  {
    v15 = CFRetain(a5);
  }

  else
  {
    v15 = 0;
  }

  result = 0;
  v12[5] = v15;
  *a6 = v12;
  return result;
}

uint64_t FigContentKeySecureTokenRequestParamsCreate(uint64_t a1, int a2, const void *a3, const void *a4, const void *a5, const void *a6, int a7, uint64_t *a8)
{
  if (!a8)
  {
    FigContentKeySecureTokenRequestParamsCreate_cold_2(&v22);
    return v22;
  }

  v22 = xmmword_1E747EEF0;
  if (ckstrp_getTypeID_once != -1)
  {
    dispatch_once_f(&ckstrp_getTypeID_once, &v22, ckbutil_registerClass);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigContentKeySecureTokenRequestParamsCreate_cold_1(&v22);
    return v22;
  }

  v16 = Instance;
  *(Instance + 16) = a2;
  if (a3)
  {
    v17 = CFRetain(a3);
  }

  else
  {
    v17 = 0;
  }

  *(v16 + 24) = v17;
  if (a4)
  {
    v18 = CFRetain(a4);
  }

  else
  {
    v18 = 0;
  }

  *(v16 + 32) = v18;
  if (a5)
  {
    v19 = CFRetain(a5);
  }

  else
  {
    v19 = 0;
  }

  *(v16 + 40) = v19;
  if (a6)
  {
    v20 = CFRetain(a6);
  }

  else
  {
    v20 = 0;
  }

  result = 0;
  *(v16 + 48) = v20;
  *(v16 + 56) = a7;
  *a8 = v16;
  return result;
}

uint64_t FigContentKeyBossCreate(uint64_t a1, const __CFDictionary *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a3)
  {
    FigContentKeyBossCreate_cold_6(v24);
    goto LABEL_28;
  }

  FigContentKeyBossGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    goto LABEL_21;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"kCKBCO_ClientAuditToken");
    if (Value)
    {
      Value = CFRetain(Value);
    }

    *(DerivedStorage + 144) = Value;
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
  }

  else
  {
    *(DerivedStorage + 152) = FigIsItOKToLogURLs();
  }

  *(DerivedStorage + 8) = 1;
  v8 = FigSimpleMutexCreate();
  *DerivedStorage = v8;
  if (!v8)
  {
    FigContentKeyBossCreate_cold_5(v24);
    goto LABEL_28;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, 0, MEMORY[0x1E695E9E8]);
  *(DerivedStorage + 104) = Mutable;
  if (!Mutable)
  {
    FigContentKeyBossCreate_cold_4(v24);
    goto LABEL_28;
  }

  v11 = FigGetAllocatorForMedia();
  v12 = CFDictionaryCreateMutable(v11, 0, 0, MEMORY[0x1E695E9E8]);
  *(DerivedStorage + 112) = v12;
  if (!v12)
  {
    FigContentKeyBossCreate_cold_3(v24);
    goto LABEL_28;
  }

  v13 = FigGetAllocatorForMedia();
  v14 = CFDictionaryCreateMutable(v13, 0, 0, 0);
  *(DerivedStorage + 120) = v14;
  if (!v14)
  {
    FigContentKeyBossCreate_cold_2(v24);
    goto LABEL_28;
  }

  v15 = FigGetAllocatorForMedia();
  v16 = CFDictionaryCreateMutable(v15, 0, 0, 0);
  *(DerivedStorage + 128) = v16;
  if (!v16)
  {
    FigContentKeyBossCreate_cold_1(v24);
LABEL_28:
    v21 = v24[0];
    if (!v24[0])
    {
      return v21;
    }

    goto LABEL_18;
  }

  v17 = *MEMORY[0x1E695E480];
  v18 = ckb_createLoggingIdentifier_sNextLoggingIdentifier++;
  v19 = CFStringCreateWithFormat(v17, 0, @"%s/%llu", "CKB", v18);
  if (!v19)
  {
    FigUserCrashWithMessage();
    *(DerivedStorage + 184) = 0;
    v21 = FigSignalErrorAtGM();
    if (!v21)
    {
      return v21;
    }

LABEL_18:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return v21;
  }

  *(DerivedStorage + 184) = v19;
  *(DerivedStorage + 96) = 6;
  ckb_setAllowedRequestHandlers(0, -1);
  v5 = FigRetainProxyCreate();
  if (v5)
  {
LABEL_21:
    v21 = v5;
    goto LABEL_18;
  }

  if (dword_1EAF16CF0)
  {
    v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v21 = 0;
  *a3 = 0;
  return v21;
}

uint64_t ckb_setAllowedRequestHandlers(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    goto LABEL_10;
  }

  for (i = 0; i != 3; ++i)
  {
    v7 = qword_196E732B0[i];
    if ((v7 & a2) != 0)
    {
      LoggingDescription = ckbutil_requestHandlerType_getLoggingDescription(v7);
      CFArrayAppendValue(Mutable, LoggingDescription);
    }
  }

  v9 = CFArrayGetCount(Mutable) ? FigCFCopyCompactDescription() : CFStringCreateWithCString(v4, "No supported handler types!", 0x8000100u);
  v10 = v9;
  if (!v9)
  {
LABEL_10:
    FigUserCrashWithMessage();
    v10 = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  FigSimpleMutexLock();
  if (dword_1EAF16CF0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v12 = dword_1EAF16CF0;
    *(DerivedStorage + 16) = a2;
    if (v12)
    {
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    *(DerivedStorage + 16) = a2;
  }

  FigSimpleMutexUnlock();
  if (v10)
  {
    CFRelease(v10);
  }

  return 0;
}

void ckrp_finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[9];
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t ckrp_equal(uint64_t a1, uint64_t a2)
{
  result = FigCFEqual();
  if (result)
  {
    return *(a1 + 24) == *(a2 + 24) && *(a1 + 28) == *(a2 + 28);
  }

  return result;
}

CFHashCode ckrp_hash(uint64_t a1)
{
  Identifier = FigContentKeySpecifierGetIdentifier(*(a1 + 16));

  return CFHash(Identifier);
}

CFStringRef ckrp_copyDesc(uint64_t a1)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  Identifier = FigContentKeySpecifierGetIdentifier(*(a1 + 16));
  KeySystem = FigContentKeySpecifierGetKeySystem(*(a1 + 16));
  EncryptionMethod = FigContentKeySpecifierGetEncryptionMethod(*(a1 + 16));
  return CFStringCreateWithFormat(AllocatorForMedia, 0, @"%@_%d_%d_%d_%d", Identifier, KeySystem, EncryptionMethod, *(a1 + 24), *(a1 + 28));
}

void ckrdp_finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
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

  v7 = a1[8];
  if (v7)
  {

    CFRelease(v7);
  }
}

void ckrsp_finalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[5];
  if (v4)
  {

    CFRelease(v4);
  }
}

void ckstrp_finalize(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[6];
  if (v5)
  {

    CFRelease(v5);
  }
}

void ckb_finalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = FigCFDictionaryCopyArrayOfValues();
  if (CFArrayGetCount(v3) >= 1)
  {
    v4 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, v4);
      ckb_destroyGroupWithMutex(a1, ValueAtIndex[2]);
      ++v4;
    }

    while (v4 < CFArrayGetCount(v3));
  }

  if (v3)
  {
    CFRelease(v3);
  }

  v6 = DerivedStorage[13];
  if (v6)
  {
    CFRelease(v6);
  }

  FigRetainProxyInvalidate();
  v7 = DerivedStorage[21];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = DerivedStorage[14];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = DerivedStorage[15];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = DerivedStorage[16];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = DerivedStorage[18];
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = DerivedStorage[20];
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = DerivedStorage[17];
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = FigCFWeakReferenceHolderCopyReferencedObject();
  v15 = v14;
  if (v14 && dword_1EAF16CF0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else if (!v14)
  {
    goto LABEL_27;
  }

  CFRelease(v15);
LABEL_27:
  v17 = DerivedStorage[3];
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = DerivedStorage[11];
  if (v18)
  {
    dispatch_release(v18);
  }

  FigSimpleMutexDestroy();
  if (dword_1EAF16CF0)
  {
    v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v20 = DerivedStorage[23];
  if (v20)
  {
    CFRelease(v20);
  }
}

uint64_t ckb_copyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (FigCFEqual())
  {
    v6 = MEMORY[0x1E695E4D0];
    if (!*(DerivedStorage + 8))
    {
      v6 = MEMORY[0x1E695E4C0];
    }

    v7 = *v6;
  }

  else
  {
    if (!FigCFEqual())
    {
      v8 = 4294954512;
      goto LABEL_6;
    }

    v7 = *(DerivedStorage + 136);
    if (v7)
    {
      v7 = CFRetain(v7);
    }
  }

  v8 = 0;
  *a4 = v7;
LABEL_6:
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t ckb_setProperty(uint64_t a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (FigCFEqual())
  {
    v5 = 0;
    *(DerivedStorage + 8) = *MEMORY[0x1E695E4D0] == a3;
  }

  else if (FigCFEqual())
  {
    v5 = *(DerivedStorage + 136);
    *(DerivedStorage + 136) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v5)
    {
      CFRelease(v5);
      v5 = 0;
    }
  }

  else
  {
    v5 = 4294954512;
  }

  FigSimpleMutexUnlock();
  return v5;
}

uint64_t ckb_replaceBossStorageAndCopyUpdatedBossWhenBossStaleWithBossMutex(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(CMBaseObjectGetDerivedStorage() + 192))
  {
    FigUserCrashWithMessage();
  }

  if (!*(DerivedStorage + 160))
  {
    FigUserCrashWithMessage();
  }

  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v6)
  {
    *a2 = v6;
    CMBaseObjectGetDerivedStorage();
    v7 = CMBaseObjectGetDerivedStorage();
    if (dword_1EAF16CF0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigSimpleMutexUnlock();
    FigSimpleMutexLock();
    result = 0;
    *a3 = v7;
  }

  else
  {
    ckb_replaceBossStorageAndCopyUpdatedBossWhenBossStaleWithBossMutex_cold_1(v10);
    return v10[0];
  }

  return result;
}

uint64_t ckb_createRequestData(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  v150 = *MEMORY[0x1E69E9840];
  v99 = 0;
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (dword_1EAF16CF0)
  {
    LODWORD(v108) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v97 = a4;
  if (!a3)
  {
    ckb_createRequestData_cold_7(__buf);
LABEL_207:
    v48 = 0;
    v46 = 0;
    v40 = 0;
    v14 = *__buf;
    goto LABEL_102;
  }

  if (!a4)
  {
    ckb_createRequestData_cold_6(__buf);
    goto LABEL_207;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v100 = 0;
  v101 = 0;
  if (!a1)
  {
    FigUserCrashWithMessage();
  }

  v9 = ckb_copyGroupAndRequestFromIDWithBossMutex(a1, a2, &v101, &v100);
  v10 = MEMORY[0x1E695E480];
  if (v9)
  {
    goto LABEL_203;
  }

  if (FigContentKeySpecifierGetKeySystem(*(v100 + 2)) != 1)
  {
    ckb_createRequestData_cold_1(__buf);
LABEL_210:
    v48 = 0;
    v46 = 0;
    v40 = 0;
    v14 = *__buf;
    goto LABEL_211;
  }

  if (*(v100 + 14))
  {
    ckb_createRequestData_cold_2(__buf);
    goto LABEL_210;
  }

  ckg_removeRequest(v101, v100);
  v11 = v100;
  v12 = *(a3 + 56);
  v13 = FigCFWeakReferenceHolderCopyReferencedObject();
  v14 = 0;
  Mutable = 0;
  v104 = 0;
  cf = 0;
  if (v12 && !v11[8])
  {
    v96 = DerivedStorage;
    KeySystem = FigContentKeySpecifierGetKeySystem(v11[2]);
    Identifier = FigContentKeySpecifierGetIdentifier(v11[2]);
    SupportedProtocolVersions = FigContentKeySpecifierGetSupportedProtocolVersions(v11[2]);
    v19 = FigContentKeySpecifierCreate(KeySystem, Identifier, v12, SupportedProtocolVersions, &cf);
    if (v19)
    {
      v14 = v19;
      Mutable = 0;
LABEL_36:
      DerivedStorage = v96;
      goto LABEL_37;
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    DerivedStorage = v96;
    if (Mutable)
    {
      FigCFDictionaryGetBooleanValue();
      FigCFDictionarySetValue();
      v21 = FigGetAllocatorForMedia();
      v22 = v11[3];
      v24 = FigContentKeyRequestParamsCreate(v21, cf, *(v22 + 24), *(v22 + 28), *(v22 + 32), v23, *(v22 + 40), *(v22 + 48), *(v22 + 56), *(v22 + 64), Mutable, &v104);
      if (!v24)
      {
        v25 = v11[2];
        v26 = cf;
        v11[2] = cf;
        if (v26)
        {
          CFRetain(v26);
        }

        if (v25)
        {
          CFRelease(v25);
        }

        v27 = v11[3];
        v28 = v104;
        v11[3] = v104;
        if (v28)
        {
          CFRetain(v28);
        }

        if (v27)
        {
          CFRelease(v27);
        }

        *type = 0;
        v108 = 0;
        v106 = 0;
        ckbutil_contentKeySpecifier_copyLoggingArguments(v11[2], &v108, type, &v106);
        if (dword_1EAF16CF0)
        {
          *v103 = 0;
          v102 = OS_LOG_TYPE_DEFAULT;
          v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v30 = *v103;
          if (os_log_type_enabled(v29, v102))
          {
            v31 = v30;
          }

          else
          {
            v31 = v30 & 0xFFFFFFFE;
          }

          if (v31)
          {
            v32 = v11[31];
            v33 = *type;
            v34 = FigContentKeySpecifierGetIdentifier(v11[2]);
            if (*(v11 + 256))
            {
              v35 = v34;
            }

            else
            {
              v35 = @"[]";
            }

            v132 = 136316674;
            v133 = "ckr_logEncryptionMethodOverride";
            v134 = 2114;
            v135 = v32;
            v136 = 2112;
            v137 = v33;
            v138 = 2112;
            *v139 = v35;
            *&v139[8] = 2112;
            *&v139[10] = v108;
            *&v139[18] = 2112;
            *&v139[20] = v33;
            v10 = MEMORY[0x1E695E480];
            *&v139[28] = 2112;
            *&v139[30] = v106;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (v106)
        {
          CFRelease(v106);
        }

        v14 = 0;
        goto LABEL_36;
      }

      v14 = v24;
    }

    else
    {
      ckb_createRequestData_cold_3(__buf);
      v14 = *__buf;
    }
  }

LABEL_37:
  if (v104)
  {
    CFRelease(v104);
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

  ckg_setRequest(v101, v100);
  if (v14)
  {
    goto LABEL_204;
  }

  v9 = ckg_ensureContentKeyForRequest(v101, v100, a1, *(DerivedStorage + 152));
  if (v9)
  {
LABEL_203:
    v14 = v9;
LABEL_204:
    v48 = 0;
    v46 = 0;
    v40 = 0;
LABEL_211:
    v49 = 1;
    goto LABEL_73;
  }

  v36 = v100;
  if (!v100)
  {
    FigUserCrashWithMessage();
  }

  v37 = v36[8];
  if (!v37)
  {
    FigUserCrashWithMessage();
    FigUserCrashWithMessage();
  }

  v38 = *v10;
  v39 = CFDictionaryCreateMutable(*v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v39)
  {
    v40 = v39;
    v41 = *(a3 + 16);
    if (!v41)
    {
      FigUserCrashWithMessage();
      v41 = *(a3 + 16);
    }

    CFDictionarySetValue(v40, *MEMORY[0x1E6962AC0], v41);
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    v42 = *(a3 + 32);
    if (v42)
    {
      CFDictionarySetValue(v40, *MEMORY[0x1E6962AF0], v42);
    }

    FigCFDictionarySetInt();
    FigCFDictionarySetInt64();
    if (*(*(v37 + 24) + 28) == 2)
    {
      CFDictionarySetValue(v40, *MEMORY[0x1E6962AE0], *MEMORY[0x1E695E4D0]);
    }

    if (*(a3 + 60))
    {
      FigCFDictionarySetInt();
    }

    if (!*(a3 + 62))
    {
      goto LABEL_66;
    }

    if (*(*(v37 + 24) + 28) == 2)
    {
      v14 = 4294948132;
    }

    else
    {
      v43 = *(a3 + 64);
      if (v43 && (v44 = CFRetain(v43)) != 0 || (*__buf = 0, *&__buf[8] = 0, arc4random_buf(__buf, 0x10uLL), (v44 = CFDataCreate(v38, __buf, 16)) != 0))
      {
        v45 = v44;
        CFDictionarySetValue(v40, *MEMORY[0x1E6962AD8], v44);
        CFRelease(v45);
        goto LABEL_66;
      }

      ckb_createRequestData_cold_4(__buf);
      v14 = *__buf;
    }

    CFRelease(v40);
  }

  else
  {
    ckb_createRequestData_cold_5(__buf);
    v14 = *__buf;
  }

  v48 = 0;
  if (v14)
  {
    v49 = 1;
    v46 = 0;
    v40 = 0;
    goto LABEL_73;
  }

  v40 = 0;
LABEL_66:
  if (*(*(v37 + 24) + 28) > 1u)
  {
    v46 = 0;
  }

  else
  {
    v46 = ck_copySupportedProtocolVersionsForKeyRequestData(v37, a3);
  }

  v47 = *(v37 + 72);
  if (v47)
  {
    v48 = CFRetain(v47);
  }

  else
  {
    v48 = 0;
  }

  v14 = 0;
  v49 = *(a3 + 61) == 0;
LABEL_73:
  if (v100)
  {
    CFRelease(v100);
  }

  if (v101)
  {
    CFRelease(v101);
  }

  if (v14)
  {
    goto LABEL_102;
  }

  FigSimpleMutexUnlock();
  if (v48)
  {
    if (v40)
    {
      goto LABEL_80;
    }
  }

  else
  {
    FigUserCrashWithMessage();
    if (v40)
    {
LABEL_80:
      if (v49)
      {
        goto LABEL_86;
      }

      goto LABEL_84;
    }
  }

  FigUserCrashWithMessage();
  if (v49)
  {
    goto LABEL_86;
  }

LABEL_84:
  v50 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v50)
  {
    goto LABEL_100;
  }

  v51 = v50(v48, *MEMORY[0x1E6961138], *MEMORY[0x1E695E4D0]);
  if (v51)
  {
    goto LABEL_225;
  }

LABEL_86:
  if (v46)
  {
    v52 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v52)
    {
      v51 = v52(v48, *MEMORY[0x1E6961108], v46);
      if (!v51)
      {
        goto LABEL_89;
      }

LABEL_225:
      v14 = v51;
      goto LABEL_101;
    }

LABEL_100:
    v14 = 4294954514;
LABEL_101:
    FigSimpleMutexLock();
    goto LABEL_102;
  }

LABEL_89:
  v53 = *(CMBaseObjectGetVTable() + 16);
  if (*v53 < 4uLL)
  {
    goto LABEL_100;
  }

  v54 = v53[11];
  if (!v54)
  {
    goto LABEL_100;
  }

  v14 = v54(v48, v40, *MEMORY[0x1E695E480], &v99);
  FigSimpleMutexLock();
  if (v14)
  {
    goto LABEL_102;
  }

  *__buf = 0;
  if (!a1)
  {
    FigUserCrashWithMessage();
  }

  v14 = ckb_copyGroupAndRequestFromIDWithBossMutex(a1, a2, 0, __buf);
  v55 = *__buf;
  if (!v14)
  {
    if (!*(*__buf + 56))
    {
      v14 = 0;
      *(*__buf + 56) = 1;
LABEL_97:
      CFRelease(v55);
      goto LABEL_98;
    }

    v14 = FigSignalErrorAtGM();
    v55 = *__buf;
  }

  if (v55)
  {
    goto LABEL_97;
  }

LABEL_98:
  if (!v14)
  {
    v56 = v99;
    *v97 = v99;
    v99 = 0;
    goto LABEL_103;
  }

LABEL_102:
  v56 = *v97;
LABEL_103:
  v104 = 0;
  cf = 0;
  v57 = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (a3)
    {
      goto LABEL_105;
    }
  }

  else
  {
    FigUserCrashWithMessage();
    if (a3)
    {
      goto LABEL_105;
    }
  }

  FigUserCrashWithMessage();
LABEL_105:
  if (ckb_copyGroupAndRequestFromIDWithBossMutex(a1, a2, &cf, &v104))
  {
    LODWORD(v108) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v58 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v59 = v108;
    if (os_log_type_enabled(v58, type[0]))
    {
      v60 = v59;
    }

    else
    {
      v60 = v59 & 0xFFFFFFFE;
    }

    if (!v60)
    {
      goto LABEL_120;
    }

    v132 = 136315650;
    v133 = "ckb_logOutcomeOfCreateRequestDataWithBossMutex";
    v134 = 2114;
    v135 = @"[No request]";
    v136 = 2048;
    v137 = a2;
LABEL_111:
    _os_log_send_and_compose_impl();
LABEL_120:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_121;
  }

  v61 = ckg_ensureContentKeyForRequest(cf, v104, a1, *(v57 + 152));
  if (v61)
  {
    v62 = v61;
    LODWORD(v108) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v63 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v64 = v108;
    if (os_log_type_enabled(v63, type[0]))
    {
      v65 = v64;
    }

    else
    {
      v65 = v64 & 0xFFFFFFFE;
    }

    if (!v65)
    {
      goto LABEL_120;
    }

    v66 = *(v104 + 31);
    v132 = 136315650;
    v133 = "ckb_logOutcomeOfCreateRequestDataWithBossMutex";
    v134 = 2114;
    v135 = v66;
    v136 = 1024;
    LODWORD(v137) = v62;
    goto LABEL_111;
  }

  v68 = v104;
  if (!v104)
  {
    FigUserCrashWithMessage();
  }

  v69 = v68[8];
  if (!v69)
  {
    FigUserCrashWithMessage();
  }

  if (v14)
  {
    if (v56)
    {
      FigUserCrashWithMessage();
    }

    *type = 0;
    v108 = 0;
    LOBYTE(v100) = 0;
    v106 = 0;
    ck_keyRequestDataParams_copyLoggingArguments(v69, a3, &v108, type, &v100, &v106);
    LODWORD(v101) = 0;
    v103[0] = OS_LOG_TYPE_DEFAULT;
    v70 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v71 = v101;
    if (os_log_type_enabled(v70, v103[0]))
    {
      v72 = v71;
    }

    else
    {
      v72 = v71 & 0xFFFFFFFE;
    }

    v73 = v106;
    if (v72)
    {
      v74 = *(v69 + 96);
      v75 = *(v69 + 72);
      v76 = "YES";
      if (*(a3 + 61))
      {
        v77 = "YES";
      }

      else
      {
        v77 = "NO";
      }

      if (*(a3 + 24))
      {
        v78 = "YES";
      }

      else
      {
        v78 = "NO";
      }

      if (*(a3 + 48))
      {
        v79 = "YES";
      }

      else
      {
        v79 = "NO";
      }

      if (*(a3 + 60))
      {
        v80 = "YES";
      }

      else
      {
        v80 = "NO";
      }

      if (*(a3 + 32))
      {
        v81 = "YES";
      }

      else
      {
        v81 = "NO";
      }

      if (v100)
      {
        v82 = "YES";
      }

      else
      {
        v82 = "NO";
      }

      if (!v106)
      {
        v76 = "NO";
      }

      v132 = 136318210;
      v133 = "ck_logRequestDataCreationFailed";
      v134 = 2114;
      v135 = v74;
      v136 = 2048;
      v137 = v75;
      v138 = 1024;
      *v139 = v14;
      *&v139[4] = 2080;
      *&v139[6] = v77;
      *&v139[14] = 2112;
      *&v139[16] = v108;
      *&v139[24] = 2080;
      *&v139[26] = v78;
      *&v139[34] = 2112;
      *&v139[36] = *type;
      v140 = 2080;
      v141 = v79;
      v142 = 2080;
      v143 = v80;
      v144 = 2080;
      v145 = v81;
      v146 = 2080;
      v147 = v82;
      v148 = 2080;
      v149 = v76;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (!v73)
    {
      goto LABEL_199;
    }

    v95 = v73;
  }

  else
  {
    if (!v56)
    {
      FigUserCrashWithMessage();
    }

    *type = 0;
    v108 = 0;
    LOBYTE(v100) = 0;
    v106 = 0;
    ck_keyRequestDataParams_copyLoggingArguments(v69, a3, &v108, type, &v100, &v106);
    if (dword_1EAF16CF0)
    {
      LODWORD(v101) = 0;
      v103[0] = OS_LOG_TYPE_DEFAULT;
      v83 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v84 = v101;
      if (os_log_type_enabled(v83, v103[0]))
      {
        v85 = v84;
      }

      else
      {
        v85 = v84 & 0xFFFFFFFE;
      }

      if (v85)
      {
        v86 = *(v69 + 96);
        v87 = *(v69 + 72);
        v88 = "YES";
        if (*(a3 + 61))
        {
          v89 = "YES";
        }

        else
        {
          v89 = "NO";
        }

        if (*(a3 + 24))
        {
          v90 = "YES";
        }

        else
        {
          v90 = "NO";
        }

        if (*(a3 + 48))
        {
          v91 = "YES";
        }

        else
        {
          v91 = "NO";
        }

        if (*(a3 + 60))
        {
          v92 = "YES";
        }

        else
        {
          v92 = "NO";
        }

        if (*(a3 + 32))
        {
          v93 = "YES";
        }

        else
        {
          v93 = "NO";
        }

        if (v100)
        {
          v94 = "YES";
        }

        else
        {
          v94 = "NO";
        }

        if (!v106)
        {
          v88 = "NO";
        }

        *__buf = 136318210;
        *&__buf[4] = "ck_logRequestDataCreation";
        *&__buf[12] = 2114;
        *&__buf[14] = v86;
        v110 = 2048;
        v111 = v87;
        v112 = 2048;
        v113 = v56;
        v114 = 2080;
        v115 = v89;
        v116 = 2112;
        v117 = v108;
        v118 = 2080;
        v119 = v90;
        v120 = 2112;
        v121 = *type;
        v122 = 2080;
        v123 = v91;
        v124 = 2080;
        v125 = v92;
        v126 = 2080;
        v127 = v93;
        v128 = 2080;
        v129 = v94;
        v130 = 2080;
        v131 = v88;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v95 = v106;
    if (!v106)
    {
      goto LABEL_199;
    }
  }

  CFRelease(v95);
LABEL_199:
  if (*type)
  {
    CFRelease(*type);
  }

  if (v108)
  {
    CFRelease(v108);
  }

LABEL_121:
  if (v104)
  {
    CFRelease(v104);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  FigSimpleMutexUnlock();
  if (v40)
  {
    CFRelease(v40);
  }

  if (v46)
  {
    CFRelease(v46);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  if (v99)
  {
    CFRelease(v99);
  }

  return v14;
}

uint64_t ckb_setRequestHandlingCallbacks(uint64_t a1, void *a2, uint64_t a3, NSObject *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (dword_1EAF16CF0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a2 || !a3 || !a4)
  {
    ckb_setRequestHandlingCallbacks_cold_2(v15);
    v9 = 0;
LABEL_19:
    v12 = v15[0];
    goto LABEL_12;
  }

  v9 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (!v9)
  {
    ckb_setRequestHandlingCallbacks_cold_1(v15);
    goto LABEL_19;
  }

  __copy_assignment_8_8_t0w8_pa0_18803_8_pa0_11926_16_pa0_32929_24_pa0_16857_32_pa0_23185_40_pa0_3293_48(DerivedStorage + 4, a2);
  v10 = DerivedStorage[3];
  DerivedStorage[3] = v9;
  CFRetain(v9);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = DerivedStorage[11];
  if (v11)
  {
    dispatch_release(v11);
  }

  dispatch_retain(a4);
  v12 = 0;
  DerivedStorage[11] = a4;
LABEL_12:
  if (dword_1EAF16CF0)
  {
    v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexUnlock();
  if (v9)
  {
    CFRelease(v9);
  }

  return v12;
}

uint64_t ckb_getLoggingIdentifier(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (!CMBaseObjectGetDerivedStorage())
  {
    ckb_getLoggingIdentifier_cold_2(v6);
LABEL_9:
    v4 = v6[0];
    goto LABEL_6;
  }

  FigSimpleMutexLock();
  if (dword_1EAF16CF0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a2)
  {
    ckb_getLoggingIdentifier_cold_1(v6);
    goto LABEL_9;
  }

  v4 = 0;
  *a2 = *(CMBaseObjectGetDerivedStorage() + 184);
LABEL_6:
  FigSimpleMutexUnlock();
  return v4;
}

uint64_t ckb_mergeBossFromAssetIntoClientManagedBoss(uint64_t a1)
{
  v102[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  FigSimpleMutexLock();
  v74 = a1;
  if (*(CMBaseObjectGetDerivedStorage() + 192))
  {
    FigUserCrashWithMessage();
  }

  v4 = &unk_1EAF16000;
  if (dword_1EAF16CF0)
  {
    LODWORD(v90) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v81 = 0;
  v82 = 0;
  ckbutil_copyArrayOfKeysFromDictionary(*(DerivedStorage + 104), &v82, &v81);
  v6 = v82;
  if (!v82)
  {
    FigUserCrashWithMessage();
  }

  v77 = v81;
  if (v81)
  {
    v7 = 0;
    v75 = v3;
    v76 = DerivedStorage;
    do
    {
      v8 = *(v82 + v7);
      Value = CFDictionaryGetValue(*(DerivedStorage + 104), v8);
      v10 = ckbutil_keyGroupID_copyLoggingDescription(*(Value + 2));
      v11 = CFDictionaryContainsKey(*(v3 + 104), v8);
      v12 = *(v3 + 104);
      if (v11)
      {
        v79 = v10;
        v80 = v7;
        v13 = CFDictionaryGetValue(v12, v8);
        *type = 0;
        v90 = 0;
        v88 = 0;
        v14 = ckbutil_keyGroupID_copyLoggingDescription(*(Value + 2));
        v86 = 0;
        v87 = 0;
        v85 = 0;
        ckbutil_copyArrayOfKeysFromDictionary(*(Value + 5), &v90, &v87);
        v15 = v90;
        if (!v90)
        {
          FigUserCrashWithMessage();
        }

        for (i = v87; i; --i)
        {
          v17 = *v15;
          v18 = CFDictionaryGetValue(*(Value + 5), *v15);
          if (!CFDictionaryContainsKey(v13[5], v17))
          {
            CFDictionarySetValue(v13[5], v17, v18);
            if (v4[828])
            {
              v84 = 0;
              v83 = OS_LOG_TYPE_DEFAULT;
              v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v20 = v84;
              if (os_log_type_enabled(v19, v83))
              {
                v21 = v20;
              }

              else
              {
                v21 = v20 & 0xFFFFFFFE;
              }

              if (v21)
              {
                v22 = v13[10];
                v23 = v18[12];
                *v91 = 136316418;
                *&v91[4] = "ckb_mergeGroupsWithBossMutex";
                v92 = 2114;
                v93 = v22;
                v94 = 2082;
                v95 = "PARENTS";
                v96 = 2114;
                v97 = v23;
                v98 = 2112;
                v99 = v14;
                v100 = 2112;
                v101 = v14;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }

          ++v15;
        }

        ckbutil_copyArrayOfKeysFromDictionary(*(Value + 6), type, &v86);
        v24 = *type;
        if (!*type)
        {
          FigUserCrashWithMessage();
        }

        v25 = v86;
        for (j = v24; v25; --v25)
        {
          v26 = *v24;
          v27 = CFDictionaryGetValue(*(Value + 6), *v24);
          CFDictionarySetValue(v13[6], v26, v27);
          if (v4[828])
          {
            v84 = 0;
            v83 = OS_LOG_TYPE_DEFAULT;
            v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v29 = v84;
            if (os_log_type_enabled(v28, v83))
            {
              v30 = v29;
            }

            else
            {
              v30 = v29 & 0xFFFFFFFE;
            }

            if (v30)
            {
              v31 = v13[10];
              v32 = v27[31];
              *v91 = 136316418;
              *&v91[4] = "ckb_mergeGroupsWithBossMutex";
              v92 = 2114;
              v93 = v31;
              v94 = 2082;
              v95 = "PARENTS";
              v96 = 2114;
              v97 = v32;
              v98 = 2112;
              v99 = v14;
              v100 = 2112;
              v101 = v14;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          ++v24;
        }

        ckbutil_copyArrayOfKeysFromDictionary(*(Value + 7), &v88, &v85);
        v33 = v88;
        if (!v88)
        {
          FigUserCrashWithMessage();
        }

        v34 = v85;
        if (v85)
        {
          for (k = 0; k < v34; ++k)
          {
            v36 = v33[k];
            v37 = CFDictionaryGetValue(*(Value + 7), v36);
            v38 = CFDictionaryGetValue(v13[7], v36);
            v39 = v13[5];
            Identifier = FigContentKeySpecifierGetIdentifier(v36);
            v41 = CFDictionaryGetValue(v39, Identifier);
            if (v38)
            {
              v42 = v37[27];
              if (v42)
              {
                v43 = v38[28];
                do
                {
                  *v42 = 0;
                  v42[1] = v43;
                  *v43 = v42;
                  v38[28] = v42;
                  v43 = v42;
                  v42 = *v42;
                }

                while (v42);
              }
            }

            else
            {
              v44 = v41;
              if (v41)
              {
                if ((*(v41 + 8) - 4) <= 0xFFFFFFFD)
                {
                  FigUserCrashWithMessage();
                }

                v47 = v37[8];
                v37[8] = v44;
                CFRetain(v44);
                if (v47)
                {
                  CFRelease(v47);
                }

                *(v37 + 257) = 1;
                if (ckb_sendStatusCallbacksToAllClientsForRequestWithBossMutex(v74, v37))
                {
                  break;
                }
              }

              else
              {
                v45 = v13[7];
                v46 = CFDictionaryGetValue(*(Value + 7), v36);
                CFDictionarySetValue(v45, v36, v46);
              }
            }
          }
        }

        if (v14)
        {
          CFRelease(v14);
        }

        free(v33);
        free(j);
        free(v90);
        v3 = v75;
        DerivedStorage = v76;
        v4 = &unk_1EAF16000;
        v10 = v79;
        v7 = v80;
      }

      else
      {
        CFDictionarySetValue(v12, v8, Value);
        if (v4[828])
        {
          LODWORD(v90) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v48 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v49 = v90;
          if (os_log_type_enabled(v48, type[0]))
          {
            v50 = v49;
          }

          else
          {
            v50 = v49 & 0xFFFFFFFE;
          }

          if (v50)
          {
            v51 = *(v3 + 184);
            v52 = *(Value + 10);
            *v91 = 136316162;
            *&v91[4] = "ckb_mergeBossFromAssetIntoClientManagedBoss";
            v92 = 2114;
            v93 = v51;
            v94 = 2082;
            v95 = "PARENTS";
            v96 = 2114;
            v97 = v52;
            v98 = 2112;
            v99 = v10;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      if (v10)
      {
        CFRelease(v10);
      }

      ++v7;
    }

    while (v7 < v77);
    v6 = v82;
  }

  free(v6);
  v102[0] = 0;
  *v91 = 0;
  ckbutil_copyArrayOfKeysFromDictionary(*(DerivedStorage + 112), v102, v91);
  v53 = v102[0];
  if (!v102[0])
  {
    FigUserCrashWithMessage();
  }

  v54 = *v91;
  if (*v91)
  {
    v55 = v53;
    do
    {
      v56 = *v55++;
      v57 = CFDictionaryGetValue(*(DerivedStorage + 112), v56);
      v58 = CFDictionaryGetValue(*(v3 + 104), v57[2]);
      CFDictionarySetValue(*(v3 + 112), v56, v58);
      --v54;
    }

    while (v54);
  }

  free(v53);
  v102[0] = 0;
  *v91 = 0;
  ckbutil_copyArrayOfKeysFromDictionary(*(DerivedStorage + 120), v102, v91);
  v59 = v102[0];
  if (!v102[0])
  {
    FigUserCrashWithMessage();
  }

  v60 = *v91;
  if (*v91)
  {
    v61 = v59;
    do
    {
      v62 = *v61++;
      v63 = CFDictionaryGetValue(*(DerivedStorage + 120), v62);
      CFDictionaryAddValue(*(v3 + 120), v62, v63);
      --v60;
    }

    while (v60);
  }

  free(v59);
  v102[0] = 0;
  *v91 = 0;
  ckbutil_copyArrayOfKeysFromDictionary(*(DerivedStorage + 128), v102, v91);
  v64 = v102[0];
  if (!v102[0])
  {
    FigUserCrashWithMessage();
  }

  v65 = *v91;
  if (*v91)
  {
    v66 = v64;
    do
    {
      v67 = *v66++;
      v68 = CFDictionaryGetValue(*(DerivedStorage + 128), v67);
      CFDictionaryAddValue(*(v3 + 128), v67, v68);
      --v65;
    }

    while (v65);
  }

  free(v64);
  v69 = *(v3 + 136);
  v70 = *(DerivedStorage + 136);
  *(v3 + 136) = v70;
  if (v70)
  {
    CFRetain(v70);
  }

  if (v69)
  {
    CFRelease(v69);
  }

  v71 = *(v3 + 144);
  v72 = *(DerivedStorage + 144);
  *(v3 + 144) = v72;
  if (v72)
  {
    CFRetain(v72);
  }

  if (v71)
  {
    CFRelease(v71);
  }

  *(v3 + 152) = *(DerivedStorage + 152);
  *(v3 + 176) = *(DerivedStorage + 176);
  *(DerivedStorage + 160) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(DerivedStorage + 192) = 1;
  FigSimpleMutexUnlock();
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t ckb_ensureAndGetGroupWithBossMutex(const void *a1, const void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFDictionaryGetValue(*(DerivedStorage + 104), a2))
  {
    return 0;
  }

  v5 = CFGetAllocator(a1);
  v6 = *(DerivedStorage + 8);
  v7 = *(DerivedStorage + 144);
  context[0] = xmmword_1E747EF00;
  if (ckg_getTypeID_once != -1)
  {
    dispatch_once_f(&ckg_getTypeID_once, context, ckbutil_registerClass);
  }

  Instance = _CFRuntimeCreateInstance();
  v9 = Instance;
  if (Instance)
  {
    *(Instance + 16) = a2;
    *(Instance + 64) = v6;
    v10 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    v9[3] = v10;
    if (v10)
    {
      v11 = v7 ? CFRetain(v7) : 0;
      v9[9] = v11;
      Mutable = CFDictionaryCreateMutable(v5, 0, 0, MEMORY[0x1E695E9E8]);
      v9[6] = Mutable;
      if (Mutable)
      {
        v13 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v9[5] = v13;
        if (v13)
        {
          v14 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v9[7] = v14;
          if (v14)
          {
            v15 = *MEMORY[0x1E695E480];
            v16 = ckg_createLoggingIdentifier_sNextLoggingIdentifier++;
            v17 = CFStringCreateWithFormat(v15, 0, @"%s/%llu", "CKG", v16);
            if (v17)
            {
              v9[10] = v17;
              v18 = ckbutil_keyGroupID_copyLoggingDescription(v9[2]);
              if (dword_1EAF16CF0)
              {
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              if (v18)
              {
                CFRelease(v18);
              }

              goto LABEL_26;
            }

            FigUserCrashWithMessage();
            v9[10] = 0;
          }
        }
      }
    }
  }

  v20 = FigSignalErrorAtGM();
  if (v20)
  {
    v21 = ckbutil_keyGroupID_copyLoggingDescription(a2);
    v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (v21)
    {
      CFRelease(v21);
    }
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (!v20)
  {
    v9 = 0;
LABEL_26:
    CFDictionarySetValue(*(DerivedStorage + 104), a2, v9);
    v23 = ckbutil_keyGroupID_copyLoggingDescription(a2);
    if (dword_1EAF16CF0)
    {
      v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v9)
    {
      CFRelease(v9);
    }

    if (v23)
    {
      CFRelease(v23);
    }

    return 0;
  }

  return v20;
}

uint64_t ckb_sendRedirectCallbackOnRequestWithBossMutex(const void *a1, const void *a2, void *a3, NSObject *a4, uint64_t a5)
{
  v12[16] = *MEMORY[0x1E69E9840];
  if (dword_1EAF16CF0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  __copy_assignment_8_8_t0w8_pa0_16609_8_pa0_37959_16_pa0_51628_24(v12, a3);
  result = ckb_sendStatusCallbackDispatchWithBossMutex(a1, a2, v12, a4, a5, 0);
  if (result)
  {
    return FigUserCrashWithMessage();
  }

  return result;
}

uint64_t ckb_getExistingKeyIfAnyWithBossMutex(uint64_t a1, uint64_t a2, const void *a3, int a4, void *a5, void *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v23 = 0;
  if (!a5)
  {
    ckb_getExistingKeyIfAnyWithBossMutex_cold_3(&v24);
    return v24;
  }

  if (!a6)
  {
    ckb_getExistingKeyIfAnyWithBossMutex_cold_2(&v24);
    return v24;
  }

  v12 = *(DerivedStorage + 104);
  if (!a4)
  {
    Value = CFDictionaryGetValue(v12, a3);
    if (Value)
    {
      ValueAtIndex = Value;
      ContentKey = ckg_getContentKey(Value, a2, &v23);
      if (ContentKey)
      {
        return ContentKey;
      }

      v19 = v23;
      if (!v23)
      {
        return ContentKey;
      }

      v13 = 0;
LABEL_15:
      ContentKey = 0;
      *a5 = v19;
      *a6 = ValueAtIndex;
      if (!v13)
      {
        return ContentKey;
      }

      goto LABEL_16;
    }

    ckb_getExistingKeyIfAnyWithBossMutex_cold_1(&v24);
    return v24;
  }

  v13 = FigCFDictionaryCopyArrayOfValues();
  Count = CFArrayGetCount(v13);
  if (Count < 1)
  {
LABEL_9:
    ContentKey = 0;
    if (!v13)
    {
      return ContentKey;
    }

    goto LABEL_16;
  }

  v15 = Count;
  v16 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v13, v16);
    v18 = ckg_getContentKey(ValueAtIndex, a2, &v23);
    if (v18)
    {
      break;
    }

    v19 = v23;
    if (v23)
    {
      goto LABEL_15;
    }

    if (v15 == ++v16)
    {
      goto LABEL_9;
    }
  }

  ContentKey = v18;
  if (v13)
  {
LABEL_16:
    CFRelease(v13);
  }

  return ContentKey;
}

uint64_t ckb_registerAndGetNewRequestWithBossMutex(const void *a1, uint64_t *a2, void *a3, const void *a4, const void *a5, const void *a6, char a7, uint64_t *a8)
{
  v47 = *MEMORY[0x1E69E9840];
  v16 = FigAtomicIncrement64();
  cf = a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v41 = a3;
  if (!a3)
  {
    ckb_registerAndGetNewRequestWithBossMutex_cold_2(context);
    return context[0];
  }

  if (!a8)
  {
    ckb_registerAndGetNewRequestWithBossMutex_cold_1(context);
    return context[0];
  }

  v18 = DerivedStorage;
  v40 = a8;
  v19 = CFGetAllocator(cf);
  v20 = v41[2];
  v39 = *(v18 + 152);
  *context = xmmword_1E747EF10;
  if (ckr_getTypeID_once != -1)
  {
    dispatch_once_f(&ckr_getTypeID_once, context, ckbutil_registerClass);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v22 = a2[2];
    if (v22)
    {
      v22 = CFRetain(v22);
    }

    *(Instance + 16) = v22;
    *(Instance + 24) = CFRetain(a2);
    *(Instance + 32) = v16;
    *(Instance + 48) = v20;
    *(Instance + 72) = a7;
    v23 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    *(Instance + 40) = v23;
    if (v23)
    {
      v24 = a4 ? CFRetain(a4) : 0;
      *(Instance + 136) = v24;
      v25 = a5 ? CFRetain(a5) : 0;
      *(Instance + 160) = v25;
      v26 = a6 ? CFRetain(a6) : 0;
      *(Instance + 168) = v26;
      *(Instance + 80) = 1;
      Mutable = CFDictionaryCreateMutable(v19, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *(Instance + 120) = Mutable;
      if (Mutable)
      {
        v28 = CMBaseObjectGetDerivedStorage();
        v29 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%s/%llu_%@", "CKR", v16, *(v28 + 184));
        v30 = v40;
        if (!v29)
        {
          FigUserCrashWithMessage();
        }

        *(Instance + 248) = v29;
        *(Instance + 256) = v39;
        FigCFDictionarySetBoolean();
        *(Instance + 216) = 0;
        *(Instance + 224) = Instance + 216;
        v44 = 0;
        v45 = 0;
        v43 = 0;
        v31 = ckbutil_keyGroupID_copyLoggingDescription(*(Instance + 48));
        FigCFDictionaryGetBooleanIfPresent();
        ckbutil_contentKeySpecifier_copyLoggingArguments(*(Instance + 16), &v45, &v44, &v43);
        if (dword_1EAF16CF0)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (v31)
        {
          CFRelease(v31);
        }

        v33 = v41;
        if (v43)
        {
          CFRelease(v43);
        }

        goto LABEL_27;
      }
    }

    v30 = v40;
  }

  else
  {
    v30 = v40;
  }

  v35 = FigSignalErrorAtGM();
  if (v35)
  {
    v44 = 0;
    v45 = 0;
    v43 = 0;
    ckbutil_contentKeySpecifier_copyLoggingArguments(a2[2], &v45, &v44, &v43);
    v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
    v38 = v43;
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (v38)
    {
      CFRelease(v38);
    }

    v30 = v40;
  }

  if (Instance)
  {
    CFRelease(Instance);
  }

  v33 = v41;
  if (!v35)
  {
    Instance = 0;
LABEL_27:
    v34 = CMBaseObjectGetDerivedStorage();
    v35 = ckg_setRequest(v33, Instance);
    if (v35)
    {
      if (Instance)
      {
        CFRelease(Instance);
      }
    }

    else
    {
      CFDictionarySetValue(*(v34 + 112), *(Instance + 32), v33);
      CFRelease(Instance);
      *v30 = Instance;
    }
  }

  return v35;
}

void ckb_transitionRequestToTerminalStateWithOSStatusWithBossMutex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  cf = 0;
  if (a4)
  {
    FigCreateErrorForOSStatus(a4, &cf);
    v7 = cf;
  }

  ckb_transitionRequestToTerminalStateWithBossMutex(a1, a2, a3, v7);
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t ckb_startRequestWithMutexWithBossMutex(const void *a1, const void *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      *(a3 + 232) = CFAbsoluteTimeGetCurrent();
      ckb_processRequestViaNextHandlerWithBossMutex(a1, a2, a3);
      return 0;
    }

    else
    {
      ckb_startRequestWithMutexWithBossMutex_cold_1(&v7);
      return v7;
    }
  }

  else
  {
    ckb_startRequestWithMutexWithBossMutex_cold_2(&v8);
    return v8;
  }
}

void ckg_finalize(void *a1)
{
  v2 = FigCFDictionaryCopyArrayOfValues();
  v19 = a1;
  v3 = FigCFDictionaryCopyArrayOfValues();
  if (dword_1EAF16CF0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = v19[4];
  if (v5)
  {
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v6)
    {
      v6(v5);
    }

    v7 = v19[4];
    if (v7)
    {
      CFRelease(v7);
    }
  }

  if (CFArrayGetCount(v3) >= 1)
  {
    v8 = 0;
    do
    {
      CFArrayGetValueAtIndex(v3, v8);
      if (dword_1EAF16CF0)
      {
        v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      ++v8;
    }

    while (v8 < CFArrayGetCount(v3));
  }

  v10 = v19[5];
  if (v10)
  {
    CFRelease(v10);
  }

  if (CFArrayGetCount(v2) >= 1)
  {
    v11 = 0;
    do
    {
      CFArrayGetValueAtIndex(v2, v11);
      if (dword_1EAF16CF0)
      {
        v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      ++v11;
    }

    while (v11 < CFArrayGetCount(v2));
  }

  v13 = v19[6];
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = v19[7];
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = v19[9];
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = v19[3];
  if (v16)
  {
    CFRelease(v16);
  }

  if (dword_1EAF16CF0)
  {
    v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v18 = v19[10];
  if (v18)
  {
    CFRelease(v18);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

uint64_t ckg_getRequestByKeySpecifier(uint64_t a1, const void *a2, void *a3)
{
  if (a1)
  {
    if (a3)
    {
      Value = CFDictionaryGetValue(*(a1 + 56), a2);
      result = 0;
      *a3 = Value;
    }

    else
    {
      ckg_getRequestByKeySpecifier_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    ckg_getRequestByKeySpecifier_cold_2(&v7);
    return v7;
  }

  return result;
}

uint64_t ckb_sendStatusCallbackDispatchWithBossMutex(const void *a1, const void *a2, void *a3, NSObject *a4, uint64_t a5, const void *a6)
{
  if (!a2 || !a4)
  {
    ckb_sendStatusCallbackDispatchWithBossMutex_cold_2(&v22);
    return v22;
  }

  if (!a5)
  {
    ckb_sendStatusCallbackDispatchWithBossMutex_cold_1(&v21);
    return v21;
  }

  v12 = malloc_type_calloc(1uLL, 0xD8uLL, 0x10E0040C5177DA7uLL);
  if (!v12)
  {
    FigUserCrashWithMessage();
    if (a1)
    {
      goto LABEL_6;
    }

LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  if (!a1)
  {
    goto LABEL_8;
  }

LABEL_6:
  v13 = CFRetain(a1);
LABEL_9:
  *v12 = v13;
  v12[2] = CFRetain(a2);
  __copy_assignment_8_8_t0w8_pa0_16609_8_pa0_37959_16_pa0_51628_24(v12 + 3, a3);
  v12[14] = CFRetain(a5);
  if (a6)
  {
    v14 = CFRetain(a6);
  }

  else
  {
    v14 = 0;
  }

  v12[17] = v14;
  if (_os_feature_enabled_impl())
  {
    *(v12 + 8) = *(CMBaseObjectGetDerivedStorage() + 192);
    *(v12 + 128) = *(a5 + 257);
    v15 = *(a5 + 176);
    if (v15)
    {
      v15 = CFRetain(v15);
    }

    v12[18] = v15;
    v16 = *(a5 + 16);
    if (v16)
    {
      v16 = CFRetain(v16);
    }

    v12[21] = v16;
    v12[15] = *(a5 + 32);
    v17 = *(a5 + 64);
    if (v17)
    {
      v12[22] = CFRetain(v17);
      v18 = v17[9];
      if (v18)
      {
        v18 = CFRetain(v18);
      }

      v12[25] = v18;
      v19 = v17[12];
      if (v19)
      {
        v19 = CFRetain(v19);
      }

      v12[23] = v19;
    }
  }

  dispatch_async_f(a4, v12, ckb_sendStatusCallbackOnQueue);
  return 0;
}

void ckb_sendStatusCallbackOnQueue(void *a1)
{
  if (_os_feature_enabled_impl())
  {
    if (*(a1 + 128))
    {
      if (*(a1 + 8))
      {
        ckb_sendUpdateBossCallbackOnQueue(a1);
      }
    }

    else if (*(a1 + 8))
    {
      ckb_sendUpdateBossCallbackOnQueue(a1);
      goto LABEL_11;
    }

    ckb_sendSuccessOrFailCallbackOnQueue(a1);
  }

  else
  {
    v2 = a1[14];
    if (v2[22])
    {
      v3 = a1[5];
      if (v3)
      {
        v3(a1[2], *a1, v2[2], v2[4]);
      }
    }

    else
    {
      v12 = v2[8];
      if (v12)
      {
        if (*(v12 + 72) || FigContentKeySpecifierGetKeySystem(*(v12 + 16)) == 3)
        {
          v13 = a1[4];
          if (v13)
          {
            v13(a1[2], *a1, *(a1[14] + 16), *(a1[14] + 32), *(v12 + 72), a1[17]);
          }
        }

        else
        {
          ckb_sendStatusCallbackOnQueue_cold_1();
        }
      }

      else
      {
        ckb_sendStatusCallbackOnQueue_cold_2();
      }
    }
  }

LABEL_11:
  if (*a1)
  {
    CFRelease(*a1);
  }

  v4 = a1[14];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[17];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[21];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[18];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[22];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[25];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = a1[23];
  if (v11)
  {
    CFRelease(v11);
  }

  free(a1);
}

void ckb_sendUpdateBossCallbackOnQueue(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    FigUserCrashWithMessage();
  }

  if (!*(DerivedStorage + 160))
  {
    FigUserCrashWithMessage();
  }

  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v3)
  {
    v4 = v3;
    (*(a1 + 48))(v3, *(a1 + 16));

    CFRelease(v4);
  }

  else
  {
    ckb_sendUpdateBossCallbackOnQueue_cold_1();
  }
}

uint64_t ckb_sendSuccessOrFailCallbackOnQueue(uint64_t *a1)
{
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    FigUserCrashWithMessage();
  }

  if (a1[18])
  {
    v2 = a1[5];
    v3 = a1[2];
    v4 = *a1;
    v5 = a1[21];
    v6 = a1[15];

    return v2(v3, v4, v5, v6);
  }

  else
  {
    if (!a1[22])
    {
      FigUserCrashWithMessage();
    }

    if (!a1[25] && FigContentKeySpecifierGetKeySystem(a1[21]) != 3)
    {
      FigUserCrashWithMessage();
    }

    v8 = a1[4];
    v9 = a1[2];
    v10 = *a1;
    v11 = a1[21];
    v12 = a1[15];
    v13 = a1[25];
    v14 = a1[17];

    return v8(v9, v10, v11, v12, v13, v14);
  }
}

uint64_t ckg_getContentKey(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    if (a3)
    {
      if (a2)
      {
        v4 = *(a1 + 40);
        Identifier = FigContentKeySpecifierGetIdentifier(a2);
        Value = CFDictionaryGetValue(v4, Identifier);
        result = 0;
        *a3 = Value;
      }

      else
      {
        ckg_getContentKey_cold_1(&v8);
        return v8;
      }
    }

    else
    {
      ckg_getContentKey_cold_2(&v9);
      return v9;
    }
  }

  else
  {
    ckg_getContentKey_cold_3(&v10);
    return v10;
  }

  return result;
}

void ck_persistentKeyUpdatedCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v20[29] = *MEMORY[0x1E69E9840];
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v7)
  {
    v8 = v7;
    Value = CFDictionaryGetValue(a5, *MEMORY[0x1E6961080]);
    if (Value)
    {
      v10 = Value;
      if (dword_1EAF16CF0)
      {
        LODWORD(v20[0]) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v12 = *(a2 + 16);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      if (v12)
      {
        if (*(DerivedStorage + 24) && *(DerivedStorage + 88) && *(DerivedStorage + 56))
        {
          v14 = malloc_type_calloc(1uLL, 0xD8uLL, 0x10E0040C5177DA7uLL);
          if (v14)
          {
            v15 = v14;
            *v14 = CFRetain(v8);
            v15[21] = CFRetain(v12);
            v15[24] = CFRetain(v10);
            v16 = FigCFWeakReferenceHolderCopyReferencedObject();
            v15[2] = v16;
            if (v16)
            {
              *type = 0;
              v20[0] = 0;
              cf = 0;
              ckbutil_contentKeySpecifier_copyLoggingArguments(v12, v20, type, &cf);
              if (dword_1EAF16CF0)
              {
                v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              if (cf)
              {
                CFRelease(cf);
              }

              dispatch_async_f(*(DerivedStorage + 88), v15, ckb_sendDidUpdatePersistableKeyOnQueueWithBossMutex);
            }

            else
            {
              ck_persistentKeyUpdatedCallback_cold_1(v15, v15 + 21, v15 + 24, v15 + 2);
            }
          }

          else
          {
            ck_persistentKeyUpdatedCallback_cold_2();
          }
        }

        else
        {
          ck_persistentKeyUpdatedCallback_cold_3();
        }
      }

      else
      {
        ck_persistentKeyUpdatedCallback_cold_4();
      }

      FigSimpleMutexUnlock();
    }

    CFRelease(v8);
  }
}

void ck_externalProtectionStateChangedCallback(uint64_t a1, uint64_t a2)
{
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v3)
  {
    v4 = v3;
    v5 = *(a2 + 16);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    if (v5)
    {
      if (*(DerivedStorage + 24) && *(DerivedStorage + 88) && *(DerivedStorage + 80))
      {
        v7 = malloc_type_calloc(1uLL, 0xD8uLL, 0x10E0040C5177DA7uLL);
        if (v7)
        {
          v8 = v7;
          *v7 = CFRetain(v4);
          v8[21] = CFRetain(v5);
          v9 = FigCFWeakReferenceHolderCopyReferencedObject();
          v8[2] = v9;
          if (v9)
          {
            if (dword_1EAF16CF0)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            dispatch_async_f(*(DerivedStorage + 88), v8, ckb_sendDidExternalProtectionStatusChangeOnQueueWithBossMutex);
          }

          else
          {
            ck_externalProtectionStateChangedCallback_cold_1(v8, v8 + 21, v8 + 2);
          }
        }

        else
        {
          ck_externalProtectionStateChangedCallback_cold_2();
        }
      }
    }

    else
    {
      ck_externalProtectionStateChangedCallback_cold_3();
    }

    FigSimpleMutexUnlock();
    CFRelease(v4);
  }
}

void ckb_sendDidUpdatePersistableKeyOnQueueWithBossMutex(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  (*(DerivedStorage + 56))(a1[2], *a1, a1[21], a1[24]);
  if (*a1)
  {
    CFRelease(*a1);
  }

  v3 = a1[21];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[24];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    CFRelease(v5);
  }

  free(a1);
}

void ckb_sendDidExternalProtectionStatusChangeOnQueueWithBossMutex(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  (*(DerivedStorage + 80))(a1[2], *a1, a1[21]);
  if (*a1)
  {
    CFRelease(*a1);
  }

  v3 = a1[21];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
  }

  free(a1);
}

void ckr_finalize(void *a1)
{
  cf = FigCFWeakReferenceHolderCopyReferencedObject();
  v2 = a1[16];
  if (v2)
  {
    v3 = a1[11];
    if (v3)
    {
      v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v4)
      {
        v4(v2, v3);
      }
    }
  }

  v5 = a1[2];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[3];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[8];
  if (v7 && dword_1EAF16CF0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v7 = a1[8];
  }

  if (v7)
  {
    CFRelease(v7);
  }

  v9 = a1[16];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[17];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = a1[18];
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = a1[19];
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = a1[20];
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = a1[12];
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = a1[21];
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = a1[22];
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = a1[23];
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = a1[24];
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = a1[25];
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = a1[14];
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = a1[15];
  if (v21)
  {
    CFRelease(v21);
  }

  v22 = a1[5];
  if (v22)
  {
    CFRelease(v22);
  }

  ckr_cancelAndReleaseRequestTimer(a1);
  v23 = a1[27];
  if (v23)
  {
    do
    {
      v24 = *v23;
      v25 = FigCFWeakReferenceHolderCopyReferencedObject();
      v26 = v25;
      v27 = *v23;
      v28 = v23[1];
      v29 = (*v23 + 8);
      if (!*v23)
      {
        v29 = a1 + 28;
      }

      *v29 = v28;
      *v28 = v27;
      if (v25)
      {
        v30 = dword_1EAF16CF0 == 0;
      }

      else
      {
        v30 = 1;
      }

      if (!v30)
      {
        v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v32 = v23[7];
      if (v32)
      {
        dispatch_release(v32);
      }

      v33 = v23[2];
      if (v33)
      {
        CFRelease(v33);
      }

      free(v23);
      if (v26)
      {
        CFRelease(v26);
      }

      v23 = v24;
    }

    while (v24);
  }

  if (dword_1EAF16CF0)
  {
    v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v35 = a1[31];
  if (v35)
  {
    CFRelease(v35);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void ckbutil_cancelAndReleaseTimer(dispatch_object_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      dispatch_source_cancel(v2);
      if (*a1)
      {
        dispatch_release(*a1);
        *a1 = 0;
      }
    }
  }
}

uint64_t ckg_setRequest(uint64_t a1, const void **a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    ckg_setRequest_cold_4(v7);
    return v7[0];
  }

  if (!a2)
  {
    ckg_setRequest_cold_3(v7);
    return v7[0];
  }

  if (CFDictionaryContainsKey(*(a1 + 48), a2[4]))
  {
    ckg_setRequest_cold_1(v7);
    return v7[0];
  }

  if (CFDictionaryContainsKey(*(a1 + 56), a2[2]))
  {
    ckg_setRequest_cold_2(v7);
    return v7[0];
  }

  CFDictionarySetValue(*(a1 + 48), a2[4], a2);
  CFDictionarySetValue(*(a1 + 56), a2[2], a2);
  v4 = ckbutil_keyGroupID_copyLoggingDescription(*(a1 + 16));
  if (dword_1EAF16CF0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

uint64_t ckbutil_errorIsKeyCallbacksExistSentinel(__CFError *a1)
{
  CFErrorGetDomain(a1);
  result = FigCFEqual();
  if (result)
  {
    return CFErrorGetCode(a1) == -17297;
  }

  return result;
}

uint64_t ckb_removeRequestReferencesWithBossMutex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFDictionaryRemoveValue(*(DerivedStorage + 112), *(a3 + 32));

  return ckg_removeRequest(a2, a3);
}

uint64_t ckg_removeRequest(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    ckg_removeRequest_cold_2(v7);
    return v7[0];
  }

  if (!a2)
  {
    ckg_removeRequest_cold_1(v7);
    return v7[0];
  }

  v4 = ckbutil_keyGroupID_copyLoggingDescription(*(a1 + 16));
  if (dword_1EAF16CF0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v4)
  {
    CFRelease(v4);
  }

  CFDictionaryRemoveValue(*(a1 + 48), *(a2 + 32));
  CFDictionaryRemoveValue(*(a1 + 56), *(a2 + 16));
  return 0;
}

void ckb_processRequestViaNextHandlerWithBossMutex(const void *a1, const void *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    ckb_processRequestViaNextHandlerWithBossMutex_cold_3();
    return;
  }

  if (!a3)
  {
    ckb_processRequestViaNextHandlerWithBossMutex_cold_2();
    return;
  }

  v7 = DerivedStorage;
  if (_os_feature_enabled_impl() && *(v7 + 176))
  {
    v8 = a3[10];
    if (v8 > 3)
    {
      if (v8 != 4 || !ckb_canKeyRequestBeSatisfiedViaRequestHandlingCallbacksWithBossMutex(a1, a3))
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (v8 != 1)
      {
        if (v8 == 2)
        {
          goto LABEL_8;
        }

LABEL_37:

        ckb_completeProcessingRequestWithBossMutex(a1, a2, a3);
        return;
      }

      if (ckb_canRequestBeSatisfiedViaHTTPWithBossMutex(a1, a3))
      {
        goto LABEL_24;
      }

      if (!ckb_canKeyRequestBeSatisfiedViaRequestHandlingCallbacksWithBossMutex(a1, a3))
      {
LABEL_8:
        if (!ckb_canRequestBeSatisfiedViaCustomURLLoaderWithBossMutex(a1, a3))
        {
          goto LABEL_37;
        }

        goto LABEL_17;
      }
    }
  }

  else
  {
    v9 = a3[10];
    if (v9 == 1)
    {
      if (ckb_canRequestBeSatisfiedViaHTTPWithBossMutex(a1, a3))
      {
        a3[10] = 2;
LABEL_24:

        ckb_sendKeyRequestViaHTTPWithBossMutex(a1, a2, a3);
        return;
      }

      v9 = a3[10];
    }

    if (v9 <= 3)
    {
      if (ckb_canRequestBeSatisfiedViaCustomURLLoaderWithBossMutex(a1, a3))
      {
        a3[10] = 4;
LABEL_17:

        ckb_sendKeyRequestViaCustomURLLoaderWithBossMutex(a1, a2, a3);
        return;
      }

      v9 = a3[10];
    }

    if (v9 > 7 || !ckb_canKeyRequestBeSatisfiedViaRequestHandlingCallbacksWithBossMutex(a1, a3))
    {
      ckb_processRequestViaNextHandlerWithBossMutex_cold_1(a3, a1, a2);
      return;
    }

    a3[10] = 8;
  }

  ckb_sendKeyRequestViaDelegateCallbacksWithBossMutex(a1, a2, a3);
}

BOOL ckb_canRequestBeSatisfiedViaHTTPWithBossMutex(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  AllocatorForMedia = FigGetAllocatorForMedia();
  Identifier = FigContentKeySpecifierGetIdentifier(*(a2 + 16));
  v6 = CFURLCreateWithString(AllocatorForMedia, Identifier, 0);
  if (!v6)
  {
    ckb_canRequestBeSatisfiedViaHTTPWithBossMutex_cold_3();
    return 0;
  }

  v7 = v6;
  if (!FigCFHTTPIsHTTPBasedURL(v6) || (*(DerivedStorage + 16) & 2) == 0)
  {
    goto LABEL_26;
  }

  GlobalNetworkBufferingQueue = FigThreadGetGlobalNetworkBufferingQueue();
  if (GlobalNetworkBufferingQueue)
  {
    v9 = GlobalNetworkBufferingQueue;
    v10 = *(a2 + 152);
    if (v10 && *(a2 + 128))
    {
      goto LABEL_26;
    }

    v11 = *(a2 + 136);
    if (!v11)
    {
      goto LABEL_26;
    }

    if (*(a2 + 144))
    {
      if (v10)
      {
LABEL_26:
        v23 = *(a2 + 152) != 0;
        goto LABEL_27;
      }
    }

    else
    {
      Value = CFDictionaryGetValue(v11, @"FHRP_StorageSession");
      if (!Value)
      {
        *(a2 + 144) = 0;
        goto LABEL_26;
      }

      v13 = CFRetain(Value);
      *(a2 + 144) = v13;
      if (*(a2 + 152) || !v13)
      {
        goto LABEL_26;
      }
    }

    v14 = FigGetAllocatorForMedia();
    MutableCopy = CFDictionaryCreateMutableCopy(v14, 0, *(a2 + 136));
    if (MutableCopy)
    {
      v16 = MutableCopy;
      FigCFDictionarySetInt16();
      v17 = *(a2 + 144);
      v18 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v18)
      {
        v19 = v18(v17, v9, v16, a2 + 152);
        if (v19)
        {
LABEL_20:
          LODWORD(v20) = v19;
          goto LABEL_22;
        }

        v20 = *(a2 + 168);
        if (!v20)
        {
LABEL_22:
          CFRelease(v16);
          goto LABEL_23;
        }

        v21 = *(a2 + 152);
        v22 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v22)
        {
          v19 = v22(v21, 0x1F0B5F698, v20);
          goto LABEL_20;
        }
      }

      LODWORD(v20) = -12782;
      goto LABEL_22;
    }

    ckb_canRequestBeSatisfiedViaHTTPWithBossMutex_cold_1(&v25);
    LODWORD(v20) = v25;
  }

  else
  {
    ckb_canRequestBeSatisfiedViaHTTPWithBossMutex_cold_2(&v26);
    LODWORD(v20) = v26;
  }

LABEL_23:
  if (!v20)
  {
    goto LABEL_26;
  }

  v23 = 0;
LABEL_27:
  CFRelease(v7);
  return v23;
}

void ckb_sendKeyRequestViaHTTPWithBossMutex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    v21 = 4297;
LABEL_15:
    ckb_sendKeyRequestViaHTTPWithBossMutex_cold_2(v21, cf);
    v11 = 0;
    v19 = LODWORD(cf[0]);
    goto LABEL_16;
  }

  if (!a3)
  {
    v21 = 4298;
    goto LABEL_15;
  }

  v7 = DerivedStorage;
  if (dword_1EAF16CF0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(a3 + 80) = 2;
  AllocatorForMedia = FigGetAllocatorForMedia();
  Identifier = FigContentKeySpecifierGetIdentifier(*(a3 + 16));
  v11 = CFURLCreateWithString(AllocatorForMedia, Identifier, 0);
  if (!v11)
  {
    ckb_sendKeyRequestViaHTTPWithBossMutex_cold_1(cf);
    v19 = LODWORD(cf[0]);
    goto LABEL_10;
  }

  v12 = *(a3 + 152);
  v13 = CFGetAllocator(a3);
  v14 = *(a3 + 160);
  v15 = *(a3 + 136);
  v16 = *(v7 + 168);
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v17)
  {
    v19 = 4294954514;
LABEL_10:
    if (v19 && dword_1EAF16CF0)
    {
      v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_17:
      cf[0] = 0;
      FigCreateErrorForOSStatus(v19, cf);
      ckb_processErrorForRequestWithBossMutex(a1, a2, a3, cf[0]);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

LABEL_19:
      if (!v11)
      {
        return;
      }

      goto LABEL_20;
    }

LABEL_16:
    if (!v19)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v24 = 0u;
  v25 = 0u;
  *cf = 0u;
  v23 = 0u;
  v26 = 0x800000000;
  v27 = 0u;
  v28 = 0u;
  v29 = 0;
  v18 = v17(v12, v13, 0, v11, 0, v14, v15, 1, cf, 0, 0, 0, ckb_httpReadCallback, v16, a3 + 96, a3 + 104);
  if (v18)
  {
    v19 = v18;
    goto LABEL_10;
  }

  CFDictionaryAddValue(*(v7 + 128), *(a3 + 104), *(a3 + 32));
  ckb_startRequestTimerWithBossMutex(a1, a2, a3);
LABEL_20:
  CFRelease(v11);
}

BOOL ckb_canKeyRequestBeSatisfiedViaRequestHandlingCallbacksWithBossMutex(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((*(DerivedStorage + 16) & 8) == 0 || !*(DerivedStorage + 24))
  {
    return 0;
  }

  if (*(a2 + 72) && *(DerivedStorage + 48))
  {
    return 1;
  }

  return *(DerivedStorage + 40) != 0;
}

void ckb_sendKeyRequestViaDelegateCallbacksWithBossMutex(const void *a1, const void *a2, uint64_t a3)
{
  cf[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16CF0)
  {
    v35 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(a3 + 80) = 8;
  v8 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v8)
  {
    __copy_assignment_8_8_t0w8_pa0_18803_8_pa0_11926_16_pa0_32929_24_pa0_16857_32_pa0_23185_40_pa0_3293_48(&v25, DerivedStorage + 4);
    if (a2)
    {
      v9 = DerivedStorage[11];
      if (v9)
      {
        v10 = malloc_type_calloc(1uLL, 0xD8uLL, 0x10E0040C5177DA7uLL);
        if (v10)
        {
          if (a1)
          {
LABEL_8:
            v11 = CFRetain(a1);
LABEL_13:
            *v10 = v11;
            v10[2] = CFRetain(v8);
            __copy_assignment_8_8_t0w8_pa0_18803_8_pa0_11926_16_pa0_32929_24_pa0_16857_32_pa0_23185_40_pa0_3293_48(v10 + 7, &v25);
            v10[14] = CFRetain(a3);
            v10[26] = CFRetain(a2);
            if (_os_feature_enabled_impl())
            {
              v14 = *(a3 + 16);
              if (v14)
              {
                v14 = CFRetain(v14);
              }

              v10[21] = v14;
              v15 = CFRetain(*(a3 + 24));
              v16 = *(a3 + 24);
              v10[20] = v15;
              v17 = *(v16 + 72);
              if (v17)
              {
                v17 = CFRetain(v17);
              }

              v10[19] = v17;
              v10[15] = *(a3 + 32);
              *(v10 + 129) = *(a3 + 72);
            }

            if (dword_1EAF16CF0)
            {
              v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            dispatch_async_f(v9, v10, ckb_sendKeyRequestCallbackOnQueue);
            goto LABEL_22;
          }
        }

        else
        {
          FigUserCrashWithMessage();
          if (a1)
          {
            goto LABEL_8;
          }
        }

        v11 = 0;
        goto LABEL_13;
      }
    }

    v19 = FigSignalErrorAtGM();
    if (!v19)
    {
LABEL_22:
      ckb_startRequestTimerWithBossMutex(a1, a2, a3);
LABEL_23:
      CFRelease(v8);
      return;
    }

    v12 = v19;
    if (dword_1EAF16CF0)
    {
      v35 = 0;
      v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v21 = v35;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v21;
      }

      else
      {
        v22 = v21 & 0xFFFFFFFE;
      }

      if (v22)
      {
        v23 = DerivedStorage[23];
        v24 = *(a3 + 248);
        v25 = 136316162;
        v26 = "ckb_sendKeyRequestViaDelegateCallbacksWithBossMutex";
        v27 = 2114;
        v28 = v23;
        v29 = 2114;
        v30 = v24;
        v31 = 2114;
        v32 = @"Callbacks to AVContentKeySession";
        v33 = 1024;
        v34 = v12;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    v12 = FigSignalErrorAtGM();
    if (dword_1EAF16CF0)
    {
      v35 = 0;
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (!v12)
    {
      return;
    }
  }

  cf[0] = 0;
  FigCreateErrorForOSStatus(v12, cf);
  ckb_processErrorForRequestWithBossMutex(a1, a2, a3, cf[0]);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v8)
  {
    goto LABEL_23;
  }
}

BOOL ckb_canRequestBeSatisfiedViaCustomURLLoaderWithBossMutex(uint64_t a1, void *a2)
{
  if ((*(CMBaseObjectGetDerivedStorage() + 16) & 4) != 0)
  {
    v7 = 0;
    v8 = 0;
    v3 = a2[22];
    if (!v3 || !FigStreamingNetworkErrorGetRecommendedAction(v3, &v8, &v7))
    {
      v4 = a2[17];
      if (v4)
      {
        if (!a2[16])
        {
          Value = CFDictionaryGetValue(v4, @"FHRP_CustomURLLoader");
          if (Value)
          {
            Value = CFRetain(Value);
          }

          a2[16] = Value;
        }
      }
    }
  }

  return a2[16] != 0;
}

void ckb_sendKeyRequestViaCustomURLLoaderWithBossMutex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  key = 0;
  v31 = 0;
  if (!a2)
  {
    v29 = 4538;
LABEL_32:
    ckb_sendKeyRequestViaHTTPWithBossMutex_cold_2(v29, cf);
    v16 = 0;
    v12 = 0;
    v19 = 0;
    v18 = LODWORD(cf[0]);
    goto LABEL_33;
  }

  if (!a3)
  {
    v29 = 4539;
    goto LABEL_32;
  }

  v7 = DerivedStorage;
  if (dword_1EAF16CF0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(a3 + 80) = 4;
  v9 = ckg_ensureContentKeyForRequest(a2, a3, a1, *(v7 + 152));
  if (v9)
  {
    v18 = v9;
    v16 = 0;
    v12 = 0;
    goto LABEL_48;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  Identifier = FigContentKeySpecifierGetIdentifier(*(a3 + 16));
  v12 = CFURLCreateWithString(AllocatorForMedia, Identifier, 0);
  if (!v12)
  {
    goto LABEL_46;
  }

  FigGetAllocatorForMedia();
  Mutable = FigCustomURLRequestInfoCreateMutable();
  if (Mutable)
  {
    goto LABEL_47;
  }

  Mutable = FigCustomURLRequestInfoSetCryptor();
  if (Mutable)
  {
    goto LABEL_47;
  }

  Mutable = FigCustomURLRequestInfoSetIsRenewalRequest();
  if (Mutable)
  {
    goto LABEL_47;
  }

  if (FigContentKeySpecifierGetKeySystem(*(a3 + 16)) != 1)
  {
    v16 = 0;
    goto LABEL_17;
  }

  v14 = FigGetAllocatorForMedia();
  v15 = CFArrayCreateMutable(v14, 0, MEMORY[0x1E695E9C0]);
  if (!v15)
  {
LABEL_46:
    Mutable = FigSignalErrorAtGM();
LABEL_47:
    v18 = Mutable;
    v16 = 0;
    goto LABEL_48;
  }

  v16 = v15;
  CFArrayAppendValue(v15, @"com.apple.streamingkeydelivery.contentkey");
  if (*(*(a3 + 24) + 64))
  {
    CFArrayAppendValue(v16, @"com.apple.streamingkeydelivery.persistentcontentkey");
  }

  v17 = FigCustomURLRequestInfoSetAllowedUniversalTypeIdentifiers();
  if (v17)
  {
    v18 = v17;
LABEL_48:
    v19 = 0;
    goto LABEL_26;
  }

LABEL_17:
  v19 = FigCFHTTPCreateUserAgent();
  v20 = FigCustomURLRequestInfoSetUserAgent();
  if (v20 || *(*(a3 + 24) + 28) == 2 && (v20 = FigCustomURLRequestInfoSetCryptorKeyRequestID(), v20))
  {
    v18 = v20;
    goto LABEL_26;
  }

  v21 = *(a3 + 128);
  v22 = v7;
  v23 = *(v7 + 168);
  GlobalNetworkBufferingQueue = FigThreadGetGlobalNetworkBufferingQueue();
  v25 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v25)
  {
    v18 = 4294954514;
LABEL_26:
    if (v18 && dword_1EAF16CF0)
    {
      v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_34:
      cf[0] = 0;
      FigCreateErrorForOSStatus(v18, cf);
      ckb_processErrorForRequestWithBossMutex(a1, a2, a3, cf[0]);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

LABEL_36:
      if (!v12)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

LABEL_33:
    if (!v18)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v26 = v25(v21, v31, v23, GlobalNetworkBufferingQueue, ckb_customURLReadCallback, &key);
  if (v26)
  {
    v18 = v26;
    goto LABEL_26;
  }

  v27 = key;
  if (key)
  {
    *(a3 + 88) = key;
    CFDictionaryAddValue(*(v22 + 120), v27, *(a3 + 32));
  }

  ckb_startRequestTimerWithBossMutex(a1, a2, a3);
LABEL_37:
  CFRelease(v12);
LABEL_38:
  if (v19)
  {
    CFRelease(v19);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v16)
  {
    CFRelease(v16);
  }
}

__CFString *ckbutil_requestHandlerType_getLoggingDescription(uint64_t a1)
{
  switch(a1)
  {
    case 2:
      return @"HTTP";
    case 8:
      return @"Callbacks to AVContentKeySession";
    case 4:
      return @"CustomURL";
  }

  FigUserCrashWithMessage();
  FigUserCrashWithMessage();
  return 0;
}

void ckb_startRequestTimerWithBossMutex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    ckb_startRequestTimerWithBossMutex_cold_4();
    return;
  }

  if (!a3)
  {
    ckb_startRequestTimerWithBossMutex_cold_3();
    return;
  }

  v4 = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
  if (!v4)
  {
    ckb_startRequestTimerWithBossMutex_cold_2();
    return;
  }

  v5 = v4;
  *v4 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  v5[1] = FigCFWeakReferenceHolderCreateWithReferencedObject();
  v5[2] = FigCFWeakReferenceHolderCreateWithReferencedObject();
  GlobalNetworkBufferingQueue = FigThreadGetGlobalNetworkBufferingQueue();
  if (GlobalNetworkBufferingQueue)
  {
    v7 = GlobalNetworkBufferingQueue;
    ckr_cancelAndReleaseRequestTimer(a3);
    if (!ckbutil_createAndStartTimer(20, v5, ckb_requestTimerEventHandler, ckb_requestTimerFinalizer, v7, (a3 + 208)))
    {
      if (dword_1EAF16CF0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      return;
    }
  }

  else
  {
    ckb_startRequestTimerWithBossMutex_cold_1();
  }

  ckb_requestTimerFinalizer(v5);
}

uint64_t ckb_processErrorForRequestWithBossMutex(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return ckb_processErrorForRequestWithBossMutex_cold_2();
  }

  if (!a3)
  {
    return ckb_processErrorForRequestWithBossMutex_cold_1();
  }

  if (a4)
  {
    v9 = *(a3 + 80);
    if (v9 == 8)
    {
      *(a3 + 200) = CFRetain(a4);
    }

    else
    {
      v10 = DerivedStorage;
      if (v9 == 4)
      {
        *(a3 + 184) = CFRetain(a4);
        v11 = *(a3 + 128);
        if (v11)
        {
          v12 = *(a3 + 88);
          if (v12)
          {
            v13 = *(*(CMBaseObjectGetVTable() + 16) + 32);
            if (v13)
            {
              v13(v11, v12);
            }
          }
        }

        CFDictionaryRemoveValue(*(v10 + 120), *(a3 + 88));
      }

      else if (v9 == 2)
      {
        CFDictionaryRemoveValue(*(DerivedStorage + 128), *(a3 + 104));
        *(a3 + 192) = CFRetain(a4);
      }
    }
  }

  return ckb_processRequestViaNextHandlerWithBossMutex(a1, a2, a3);
}

uint64_t ckb_copyBossFromRetainProxy(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      FigRetainProxyLockMutex();
      if (FigRetainProxyIsInvalidated())
      {
        ckb_copyBossFromRetainProxy_cold_1(&v6);
        v4 = v6;
      }

      else
      {
        Owner = FigRetainProxyGetOwner();
        if (Owner)
        {
          Owner = CFRetain(Owner);
        }

        v4 = 0;
        *a2 = Owner;
      }
    }

    else
    {
      ckb_copyBossFromRetainProxy_cold_2(&v7);
      v4 = v7;
    }
  }

  else
  {
    ckb_copyBossFromRetainProxy_cold_3(&v8);
    v4 = v8;
  }

  FigRetainProxyUnlockMutex();
  return v4;
}

uint64_t ckb_copyGroupAndRequestFromIDWithBossMutex(uint64_t a1, const void *a2, CFTypeRef *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(*(DerivedStorage + 112), a2);
  if (Value)
  {
    v9 = Value;
    v10 = CFDictionaryGetValue(Value[6], a2);
    if (v10 || ckb_copyGroupAndRequestFromIDWithBossMutex_cold_1(&v13))
    {
      if (a3)
      {
        *a3 = CFRetain(v9);
      }

      if (a4)
      {
        if (v10)
        {
          v11 = CFRetain(v10);
        }

        else
        {
          v11 = 0;
        }

        result = 0;
        *a4 = v11;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return v13;
    }
  }

  else
  {
    ckb_copyGroupAndRequestFromIDWithBossMutex_cold_2(&v14);
    return v14;
  }

  return result;
}

void ckb_renewalTimerFinalizer(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    CFRelease(v5);
  }

  free(a1);
}

uint64_t ckbutil_createAndStartTimer(int a1, void *a2, void (__cdecl *a3)(void *), void (__cdecl *a4)(void *), dispatch_queue_t queue, NSObject **a6)
{
  v16 = 0;
  if (a3 && a4 && queue)
  {
    v11 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, queue);
    v16 = v11;
    if (v11)
    {
      v12 = v11;
      if (a2)
      {
        dispatch_set_context(v11, a2);
      }

      dispatch_source_set_event_handler_f(v12, a3);
      dispatch_set_finalizer_f(v12, a4);
      v13 = dispatch_time(0x8000000000000000, 1000000000 * a1);
      dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
      dispatch_resume(v12);
      v14 = 0;
      *a6 = v12;
      return v14;
    }

    ckbutil_createAndStartTimer_cold_1(&v17);
  }

  else
  {
    ckbutil_createAndStartTimer_cold_2(&v17);
  }

  v14 = v17;
  if (v17)
  {
    ckbutil_cancelAndReleaseTimer(&v16);
  }

  return v14;
}

uint64_t ck_keyResponseParams_copyLoggingArguments(uint64_t a1, __CFString **a2, uint64_t *a3)
{
  v6 = *(a1 + 16);
  if (v6 >= 3)
  {
    FigUserCrashWithMessage();
    FigUserCrashWithMessage();
    v7 = 0;
  }

  else
  {
    v7 = off_1E747EF48[v6];
  }

  *a2 = v7;
  if (*(a1 + 24))
  {
    result = FigCFCopyCompactDescription();
  }

  else
  {
    result = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Renewal is not configured");
  }

  v9 = result;
  if (!result)
  {
    result = FigUserCrashWithMessage();
  }

  *a3 = v9;
  return result;
}

void ckb_requestTimerFinalizer(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
  }

  free(a1);
}

void ckb_sendKeyRequestCallbackOnQueue(void *a1)
{
  if (_os_feature_enabled_impl())
  {
    if (*(a1 + 129) && (v2 = a1[9]) != 0 || (v2 = a1[8]) != 0)
    {
      v2(a1[2], *a1, a1[21], a1[15], *(a1[20] + 64), a1[19]);
    }
  }

  else
  {
    v3 = a1[14];
    if (*(v3 + 72) && (v4 = a1[9]) != 0 || (v4 = a1[8]) != 0)
    {
      v4(a1[2], *a1, *(v3 + 16), *(v3 + 32), *(*(v3 + 24) + 64), *(*(v3 + 24) + 72));
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v5 = a1[26];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[14];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[2];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[21];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[20];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[19];
  if (v10)
  {
    CFRelease(v10);
  }

  free(a1);
}

void *ck_copySupportedProtocolVersionsForKeyRequestData(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  SupportedProtocolVersions = FigContentKeySpecifierGetSupportedProtocolVersions(*(a1 + 16));
  if (v2 && CFArrayGetCount(v2) >= 1)
  {
    v4 = v2;
LABEL_7:
    v5 = CFRetain(v4);
    goto LABEL_12;
  }

  if (SupportedProtocolVersions && CFArrayGetCount(SupportedProtocolVersions) >= 1)
  {
    v4 = SupportedProtocolVersions;
    goto LABEL_7;
  }

  v6 = *MEMORY[0x1E695E480];
  values = FigCFNumberCreateUInt64();
  if (!values)
  {
    FigUserCrashWithMessage();
  }

  v5 = CFArrayCreate(v6, &values, 1, MEMORY[0x1E695E9C0]);
  if (values)
  {
    CFRelease(values);
  }

LABEL_12:
  if (!v5)
  {
    FigUserCrashWithMessage();
  }

  return v5;
}

void ck_keyRequestDataParams_copyLoggingArguments(uint64_t a1, uint64_t a2, CFStringRef *a3, uint64_t *a4, _BYTE *a5, CFDataRef *a6)
{
  EncryptionMethod = FigContentKeySpecifierGetEncryptionMethod(*(a1 + 16));
  v13 = ck_copySupportedProtocolVersionsForKeyRequestData(a1, a2);
  v14 = *MEMORY[0x1E695E480];
  LoggingDescription = ckbutil_encryptionMethod_getLoggingDescription(EncryptionMethod);
  Copy = CFStringCreateCopy(v14, LoggingDescription);
  *a3 = Copy;
  if (!Copy)
  {
    FigUserCrashWithMessage();
  }

  *a4 = ckbutil_supportedProtocolVersions_copyLoggingDescription(v13);
  *a5 = *(a2 + 62);
  v17 = *(a2 + 64);
  if (v17 && (v18 = CFDataCreateCopy(v14, v17), (*a6 = v18) == 0))
  {
    FigUserCrashWithMessage();
    if (!v13)
    {
      return;
    }
  }

  else if (!v13)
  {
    return;
  }

  CFRelease(v13);
}

void ckbutil_copyArrayOfKeysFromDictionary(CFDictionaryRef theDict, const void ***a2, size_t *a3)
{
  if (!theDict)
  {
    FigUserCrashWithMessage();
  }

  Count = CFDictionaryGetCount(theDict);
  v7 = malloc_type_calloc(Count, 8uLL, 0x80040B8603338uLL);
  if (!v7)
  {
    FigUserCrashWithMessage();
  }

  CFDictionaryGetKeysAndValues(theDict, v7, 0);
  *a2 = v7;
  *a3 = Count;
}

uint64_t OUTLINED_FUNCTION_5_19()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_23_4()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_24_3()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_32_5()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_34_5(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_49_2()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_53_2()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_54_3()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_64_3()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t OUTLINED_FUNCTION_68_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{

  return ckr_addStatusCallbacks(a24, v25, a15, v24);
}

BOOL OUTLINED_FUNCTION_70_3(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, os_log_type_t type, int a14, int a15)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_86_1()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_98_0(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{

  return ckb_sendStatusCallbackDispatchWithBossMutex(v30, v32, &a29, a4, v29, v31);
}

uint64_t OUTLINED_FUNCTION_99_1()
{

  return CMBaseObjectGetDerivedStorage();
}

uint64_t OUTLINED_FUNCTION_100_2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11, const void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);

  return ckb_registerAndGetNewRequestWithBossMutex(v22, v21, a3, a11, a12, a6, 0, va);
}

uint64_t OUTLINED_FUNCTION_102_1()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_117_2(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_118_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t *a29)
{
  v32 = *(v30 + 152);

  return ckg_ensureContentKeyForRequest(a17, a29, v29, v32);
}

BOOL OUTLINED_FUNCTION_119_1(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int16 a22, char a23, os_log_type_t type, int a25)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_120_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __CFString *a16)
{
  a15 = 0;
  a16 = 0;

  return ck_keyResponseParams_copyLoggingArguments(v16, &a16, &a15);
}

uint64_t OUTLINED_FUNCTION_121_0(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{

  return CMBlockBufferCreateEmpty(a1, 0, 0, (a16 + 112));
}

BOOL OUTLINED_FUNCTION_123_2(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, os_log_type_t type, int a18)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_124_2(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, os_log_type_t type, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_125_2(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int16 a22, char a23, os_log_type_t type, int a25)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_126_2(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int16 a20, char a21, os_log_type_t type, int a23)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_127_2(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int16 a20, char a21, os_log_type_t type, int a23)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_128_0()
{

  return _os_log_send_and_compose_impl();
}

uint64_t OUTLINED_FUNCTION_129_2()
{

  return _os_log_send_and_compose_impl();
}

uint64_t FigVirtualDisplaySourceMovieCreate(const __CFAllocator *a1, const __CFString *a2, CFDictionaryRef theDict, CFTypeRef *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v37 = 0;
  cf = 0;
  v36 = 0;
  if (!a4)
  {
    FigVirtualDisplaySourceMovieCreate_cold_3();
    goto LABEL_7;
  }

  v5 = a2;
  if (a2 || !theDict)
  {
    if (!a2)
    {
LABEL_6:
      FigVirtualDisplaySourceMovieCreate_cold_2();
LABEL_7:
      v9 = 4294954516;
LABEL_23:
      free(v37);
      goto LABEL_38;
    }
  }

  else
  {
    Value = CFDictionaryGetValue(theDict, @"moviePath");
    if (!Value)
    {
      goto LABEL_6;
    }

    v5 = Value;
    TypeID = CFStringGetTypeID();
    if (TypeID != CFGetTypeID(v5))
    {
      goto LABEL_6;
    }
  }

  CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
  if (CStringPtrAndBufferToFree && access(CStringPtrAndBufferToFree, 4) < 0)
  {
    v9 = *__error();
    goto LABEL_23;
  }

  FigVirtualDisplaySourceGetClassID();
  v11 = CMDerivedObjectCreate();
  if (v11)
  {
    v9 = v11;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_23;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 8) = 0;
  *(DerivedStorage + 16) = dispatch_queue_create("FigVirtualDisplaySourceMovieQueue", 0);
  *(DerivedStorage + 24) = dispatch_semaphore_create(0);
  *(DerivedStorage + 32) = CFRetain(v5);
  v13 = CFURLCreateWithFileSystemPath(a1, v5, kCFURLPOSIXPathStyle, 0);
  if (!v13)
  {
    FigVirtualDisplaySourceMovieCreate_cold_1();
    v9 = 4294954510;
    goto LABEL_23;
  }

  v14 = v13;
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"AssetReader_RequiresInProcessOperation", *MEMORY[0x1E695E4D0]);
  Current = CFRunLoopGetCurrent();
  v17 = FigAssetReaderCreateWithURLAndFormatReader(a1, v14, 0, Current, Mutable, (DerivedStorage + 96));
  if (v17)
  {
    v9 = v17;
    v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
    goto LABEL_30;
  }

  v18 = *(DerivedStorage + 96);
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v19)
  {
    v9 = 4294954514;
LABEL_21:
    v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
LABEL_30:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_31:
    v24 = 0;
    v23 = 0;
    goto LABEL_32;
  }

  v20 = v19(v18, &v36);
  if (v20)
  {
    v9 = v20;
    goto LABEL_21;
  }

  if (!v36)
  {
    v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    fig_log_get_emitter();
    v9 = FigSignalErrorAtGM();
    goto LABEL_31;
  }

  v21 = MEMORY[0x1E695E9D8];
  v22 = MEMORY[0x1E695E9E8];
  v23 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(v23, @"AssetReader_MatrixHandling", @"AssetReader_PreserveMatrix");
  v24 = CFDictionaryCreateMutable(a1, 0, v21, v22);
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  v25 = *(DerivedStorage + 96);
  v26 = v36;
  v27 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v27)
  {
    v9 = 4294954514;
    goto LABEL_25;
  }

  v39 = *MEMORY[0x1E6960C70];
  v40 = *(MEMORY[0x1E6960C70] + 16);
  v9 = v27(v25, v26, v24, 0, &v39, v23, DerivedStorage + 104);
  if (v9)
  {
LABEL_25:
    v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_32;
  }

  v28 = MEMORY[0x1E6960CC0];
  *(DerivedStorage + 40) = *MEMORY[0x1E6960CC0];
  *(DerivedStorage + 56) = *(v28 + 16);
  v29 = MEMORY[0x1E6960C88];
  *(DerivedStorage + 64) = *MEMORY[0x1E6960C88];
  *(DerivedStorage + 80) = *(v29 + 16);
  *a4 = cf;
  cf = 0;
LABEL_32:
  free(v37);
  CFRelease(v14);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v24)
  {
    CFRelease(v24);
  }

LABEL_38:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

void mov_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    mov_finalize_cold_1();
  }

  if (*DerivedStorage)
  {
    mov_finalize_cold_2();
  }

  v1 = *(DerivedStorage + 32);
  if (v1)
  {
    CFRelease(v1);
  }

  v2 = *(DerivedStorage + 96);
  if (v2)
  {
    CFRelease(v2);
  }

  dispatch_release(*(DerivedStorage + 24));
  dispatch_release(*(DerivedStorage + 16));
}

uint64_t mov_copyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  if (!CFEqual(@"sourceType", a2))
  {
    return 4294954512;
  }

  v5 = CFRetain(@"Movie");
  result = 0;
  *a4 = v5;
  return result;
}

uint64_t mov_plugProcessor(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __mov_plugProcessor_block_invoke;
    block[3] = &unk_1E747EF78;
    block[5] = DerivedStorage;
    block[6] = a2;
    block[4] = &v11;
    dispatch_sync(v4, block);
    v5 = *(v12 + 6);
  }

  else
  {
    v10 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v5 = 4294955226;
    *(v12 + 6) = -12070;
  }

  _Block_object_dispose(&v11, 8);
  return v5;
}

uint64_t mov_unplugProcessor(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __mov_unplugProcessor_block_invoke;
    block[3] = &unk_1E747EFA0;
    block[5] = DerivedStorage;
    block[6] = a2;
    block[4] = &v11;
    dispatch_sync(v4, block);
    v5 = *(v12 + 6);
  }

  else
  {
    v10 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v5 = 4294955226;
    *(v12 + 6) = -12070;
  }

  _Block_object_dispose(&v11, 8);
  return v5;
}

uint64_t mov_start(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __mov_start_block_invoke;
  block[3] = &unk_1E747EFC8;
  block[4] = &v8;
  block[5] = DerivedStorage;
  block[6] = a2;
  dispatch_sync(v4, block);
  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t mov_stop()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __mov_stop_block_invoke;
  block[3] = &__block_descriptor_tmp_13_0;
  block[4] = DerivedStorage;
  dispatch_sync(v1, block);
  dispatch_semaphore_wait(*(DerivedStorage + 24), 0xFFFFFFFFFFFFFFFFLL);
  return 0;
}

uint64_t mov_suspend()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __mov_suspend_block_invoke;
  block[3] = &__block_descriptor_tmp_14_1;
  block[4] = DerivedStorage;
  dispatch_sync(v1, block);
  return 0;
}

uint64_t mov_resume()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 16);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __mov_resume_block_invoke;
  v4[3] = &unk_1E747F058;
  v4[4] = &v5;
  v4[5] = DerivedStorage;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __mov_plugProcessor_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 8) || *v2)
  {
    fig_log_get_emitter();
    result = FigSignalErrorAtGM();
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  else
  {
    result = CFRetain(*(a1 + 48));
    **(a1 + 40) = *(a1 + 48);
  }

  return result;
}

void __mov_unplugProcessor_block_invoke(void *a1)
{
  v2 = a1[5];
  if (!*(v2 + 8) && (v3 = *v2, *v2 == a1[6]))
  {
    if (v3)
    {
      CFRelease(v3);
      *a1[5] = 0;
    }
  }

  else
  {
    *(*(a1[4] + 8) + 24) = -12070;
  }
}

void __mov_start_block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (*(v2 + 2) || (v3 = *v2) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = -12070;
    return;
  }

  v24 = 0;
  cf = 0;
  v23 = 0;
  *v22 = *"";
  v21 = 0;
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v4)
  {
    v11 = -12782;
LABEL_14:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_18:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_19;
  }

  v5 = v4(v3, &cf, &v24);
  if (v5)
  {
    v11 = v5;
    goto LABEL_14;
  }

  v6 = FigDisplayModes_LookupTimingModeIDByIndex(v24, 0, &v23);
  if (v6)
  {
    v11 = v6;
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    goto LABEL_18;
  }

  v7 = v23;
  v8 = *v2;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v9)
  {
    v11 = -12782;
LABEL_16:
    v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    goto LABEL_18;
  }

  v10 = v9(v8, v7, v7);
  if (v10)
  {
    v11 = v10;
    goto LABEL_16;
  }

  if (FigDisplayModes_ExtractDimensionsFromTimingMode(v24, v23, v22))
  {
    v20 = v2;
    v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
LABEL_30:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v2 = v20;
    goto LABEL_12;
  }

  if (FigDisplayModes_ExtractOverscanInfoFromTimingMode(v24, v23, &v21))
  {
    v20 = v2;
    v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    goto LABEL_30;
  }

LABEL_12:
  v11 = 0;
  *(v2 + 192) = 0;
  *(v2 + 7) = *v22;
  *(v2 + 193) = v21;
LABEL_19:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  *(*(*(a1 + 32) + 8) + 24) = v11;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v26 = 0;
    FigCFDictionaryGetBooleanIfPresent();
    if (v26)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    v16 = *(a1 + 40);
    v16[2] = v15;
    global_queue = dispatch_get_global_queue(2, 0);
    dispatch_async_f(global_queue, v16, mov_submitFrames);
  }
}

void mov_submitFrames(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2000000000;
  v41 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2000000000;
  v37 = 0;
  sbuf = 0;
  memset(&v32, 0, sizeof(v32));
  memset(&v31, 0, sizeof(v31));
  v2 = *(a1 + 96);
  v42 = *(a1 + 40);
  v30 = *(a1 + 64);
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (!v3)
  {
    v15 = -12782;
    *(v39 + 6) = -12782;
LABEL_16:
    LODWORD(v42.value) = 0;
    LOBYTE(v30.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    value = v42.value;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
    {
      v18 = value;
    }

    else
    {
      v18 = value & 0xFFFFFFFE;
    }

    if (v18)
    {
      LODWORD(lhs.value) = 136315650;
      *(&lhs.value + 4) = "mov_submitFrames";
      LOWORD(lhs.flags) = 1024;
      *(&lhs.flags + 2) = 239;
      WORD1(lhs.epoch) = 1024;
      HIDWORD(lhs.epoch) = v15;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_22;
  }

  rhs = v42;
  lhs = v30;
  v4 = v3(v2, &rhs, &lhs);
  *(v39 + 6) = v4;
  if (v4)
  {
    v15 = v4;
    goto LABEL_16;
  }

  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v32, HostTimeClock);
  CMTimeMake(&v31, 1, 2);
  v6 = v35 + 3;
  if (!*(v35 + 24))
  {
    while (1)
    {
      memset(&v30, 0, sizeof(v30));
      v7 = *(a1 + 96);
      v8 = *(a1 + 104);
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 104);
      if (!v9)
      {
        v19 = -12782;
        *(v39 + 6) = -12782;
        goto LABEL_24;
      }

      v10 = v9(v7, v8, 1, v6, &sbuf);
      *(v39 + 6) = v10;
      if (v10)
      {
        break;
      }

      if (*(v35 + 24))
      {
        goto LABEL_30;
      }

      CMSampleBufferGetPresentationTimeStamp(&rhs, sbuf);
      lhs = v32;
      CMTimeAdd(&v30, &lhs, &rhs);
      type = v30;
      while (1)
      {
        v11 = CMClockGetHostTimeClock();
        CMClockGetTime(&lhs, v11);
        v42 = type;
        CMTimeSubtract(&rhs, &v42, &lhs);
        v12 = (CMTimeGetSeconds(&rhs) * 1000000.0);
        if (v12 < 1)
        {
          break;
        }

        usleep(v12);
      }

      v13 = *(a1 + 16);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __mov_submitFrames_block_invoke;
      block[3] = &unk_1E747EFF0;
      block[6] = a1;
      block[7] = sbuf;
      v27 = v30;
      v28 = v31;
      block[4] = &v38;
      block[5] = &v34;
      dispatch_sync(v13, block);
      v14 = *(v39 + 6);
      if (v14)
      {
        LODWORD(v42.value) = 0;
        LOBYTE(type.value) = 0;
        v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v24 = v42.value;
        if (os_log_type_enabled(v23, type.value))
        {
          v25 = v24;
        }

        else
        {
          v25 = v24 & 0xFFFFFFFE;
        }

        if (v25)
        {
          LODWORD(lhs.value) = 136315650;
          *(&lhs.value + 4) = "mov_submitFrames";
          LOWORD(lhs.flags) = 1024;
          *(&lhs.flags + 2) = 269;
          WORD1(lhs.epoch) = 1024;
          HIDWORD(lhs.epoch) = v14;
          _os_log_send_and_compose_impl();
        }

        goto LABEL_29;
      }

      if (sbuf)
      {
        CFRelease(sbuf);
        sbuf = 0;
      }

      v6 = v35 + 3;
      if (*(v35 + 24))
      {
        goto LABEL_22;
      }
    }

    v19 = v10;
LABEL_24:
    LODWORD(v42.value) = 0;
    LOBYTE(type.value) = 0;
    v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v21 = v42.value;
    if (os_log_type_enabled(v20, type.value))
    {
      v22 = v21;
    }

    else
    {
      v22 = v21 & 0xFFFFFFFE;
    }

    if (v22)
    {
      LODWORD(lhs.value) = 136315650;
      *(&lhs.value + 4) = "mov_submitFrames";
      LOWORD(lhs.flags) = 1024;
      *(&lhs.flags + 2) = 251;
      WORD1(lhs.epoch) = 1024;
      HIDWORD(lhs.epoch) = v19;
      _os_log_send_and_compose_impl();
    }

LABEL_29:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_30:
    if (sbuf)
    {
      CFRelease(sbuf);
    }
  }

LABEL_22:
  dispatch_semaphore_signal(*(a1 + 24));
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);
}

uint64_t __mov_submitFrames_block_invoke(uint64_t result)
{
  v1 = result;
  v38 = *MEMORY[0x1E69E9840];
  v2 = *(result + 48);
  if (!*(v2 + 2) || !*v2)
  {
    *(*(*(result + 40) + 8) + 24) = 1;
    return result;
  }

  v3 = *(result + 56);
  lhs = *(result + 64);
  rhs = *(result + 88);
  CMTimeAdd(&v33, &lhs, &rhs);
  if (!*(v2 + 192))
  {
    FormatDescription = CMSampleBufferGetFormatDescription(v3);
    v2[16] = 0;
    v2[17] = 0;
    *(v2 + 18) = CMVideoFormatDescriptionGetDimensions(FormatDescription).width;
    height = CMVideoFormatDescriptionGetDimensions(FormatDescription).height;
    *(v2 + 19) = height;
    if (*(v2 + 193))
    {
      v6 = *(v2 + 11);
    }

    else
    {
      v6 = 0.0;
    }

    v7 = *(v2 + 18);
    v8 = *(v2 + 14);
    v9 = *(v2 + 15);
    v10 = v8 / v7;
    if (v8 / v7 >= v9 / height)
    {
      v10 = v9 / height;
    }

    v11 = (1.0 - v6) * v10;
    v12 = v7 * v11;
    v13 = v11 * height;
    *(v2 + 20) = (v8 - v12) * 0.5;
    *(v2 + 21) = (v9 - v13) * 0.5;
    *(v2 + 22) = v12;
    *(v2 + 23) = v13;
    *(v2 + 192) = 1;
  }

  result = CMSampleBufferGetImageBuffer(v3);
  if (!result)
  {
    v35 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v31 = v35;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v32 = v31;
    }

    else
    {
      v32 = v31 & 0xFFFFFFFE;
    }

    if (v32)
    {
      LODWORD(rhs.value) = 136315394;
      *(&rhs.value + 4) = "mov_submitSampleBuffer";
      LOWORD(rhs.flags) = 1024;
      *(&rhs.flags + 2) = 218;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    fig_log_get_emitter();
    result = FigSignalErrorAtGM();
    v26 = result;
    goto LABEL_23;
  }

  if (*(v2 + 2) == 2)
  {
    v14 = result;
    v15 = *v2;
    lhs = v33;
    v16 = CMClockConvertHostTimeToSystemUnits(&lhs);
    v17 = *(v2 + 16);
    v18 = *(v2 + 17);
    v19 = *(v2 + 18);
    v20 = *(v2 + 19);
    v21 = *(v2 + 20);
    v22 = *(v2 + 21);
    v23 = *(v2 + 22);
    v24 = *(v2 + 23);
    v25 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (!v25)
    {
      v26 = -12782;
LABEL_17:
      v35 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v28 = v35;
      if (os_log_type_enabled(v27, type))
      {
        v29 = v28;
      }

      else
      {
        v29 = v28 & 0xFFFFFFFE;
      }

      if (v29)
      {
        LODWORD(rhs.value) = 136315650;
        *(&rhs.value + 4) = "mov_submitSampleBuffer";
        LOWORD(rhs.flags) = 1024;
        *(&rhs.flags + 2) = 224;
        WORD1(rhs.epoch) = 1024;
        HIDWORD(rhs.epoch) = v26;
        _os_log_send_and_compose_impl();
      }

      result = fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_23;
    }

    result = v25(v15, v14, v16, 0, 0, v17, v18, v19, v20, v21, v22, v23, v24);
    v26 = result;
    if (result)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v26 = 0;
  }

LABEL_23:
  *(*(*(v1 + 32) + 8) + 24) = v26;
  if (!*(*(*(v1 + 32) + 8) + 24))
  {
    ++*(*(v1 + 48) + 108);
  }

  return result;
}

uint64_t __mov_resume_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (*(v1 + 8) == 1)
  {
    *(v1 + 8) = 2;
  }

  else
  {
    *(*(*(result + 32) + 8) + 24) = -12070;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_34()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t OUTLINED_FUNCTION_1_31@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 40) = a1;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t FigPlayerGetTypeID()
{
  MEMORY[0x19A8D3660](&FigPlayerGetClassID_sRegisterFigPlayerTypeOnce, RegisterFigPlayerType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigPlaybackItemGetTypeID()
{
  MEMORY[0x19A8D3660](&FigPlaybackItemGetClassID_sRegisterFigPlaybackItemTypeOnce, RegisterFigPlaybackItemType);

  return CMBaseClassGetCFTypeID();
}

uint64_t ExtraPrivatePlayerSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t ExtraPrivatePlayerCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t ExtraPrivatePlayerBeginInterruption(uint64_t a1)
{
  v2 = *(CMBaseObjectGetVTable() + 24);
  if (!v2)
  {
    return 4294954514;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return 4294954514;
  }

  return v3(a1);
}

uint64_t ExtraPrivatePlayerEndInterruption(uint64_t a1, uint64_t a2)
{
  v4 = *(CMBaseObjectGetVTable() + 24);
  if (!v4)
  {
    return 4294954514;
  }

  v5 = *(v4 + 16);
  if (!v5)
  {
    return 4294954514;
  }

  return v5(a1, a2);
}

const char *FigPlayerPlaythroughPredictionGetDescription(unsigned int a1)
{
  if (a1 > 3)
  {
    return "INVALID";
  }

  else
  {
    return off_1E7480BB0[a1];
  }
}

const char *FigPlayerPlaybackStateGetDescription(unsigned int a1)
{
  if (a1 > 6)
  {
    return "INVALID";
  }

  else
  {
    return off_1E7480BD0[a1];
  }
}

const char *FigPlaybackRateChangeReasonGetDescription(int a1)
{
  if ((a1 - 1) > 0x2A)
  {
    return "Unknown";
  }

  else
  {
    return off_1E7480C08[a1 - 1];
  }
}

const char *FigPlaybackItemSeekReasonGetDescription(int a1)
{
  if ((a1 - 1) > 6)
  {
    return "Unknown";
  }

  else
  {
    return off_1E7480D60[a1 - 1];
  }
}