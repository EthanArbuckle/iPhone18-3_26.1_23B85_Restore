void PostProcessGetRentalInfo(const __CFString *a1, uint64_t a2)
{
  buffer[128] = *MEMORY[0x1E69E9840];
  if (a1 && (v2 = a2, a2))
  {
    if (CFStringGetCString(a1, buffer, 1024, 0x8000100u))
    {
      FigSharedRemote_GetRentalInfo(buffer, v2, v2 + 4, v2 + 8, v2 + 12, v3, v4, v5, v6, buffer[0], buffer[1], buffer[2], buffer[3], buffer[4], buffer[5], buffer[6], buffer[7], buffer[8], buffer[9], buffer[10]);
    }
  }

  else
  {
    fig_log_get_emitter();

    FigSignalErrorAtGM();
  }
}

uint64_t EncryptedFileMD5Check(const __CFDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56[2] = *MEMORY[0x1E69E9840];
  v55 = 0;
  v53 = 0;
  v54 = 0;
  v51 = 0;
  valuePtr = 0;
  v50 = 0;
  CMByteStreamGetCMBaseObject();
  FigCRABSGetClassID();
  if (CMBaseObjectIsMemberOfClass())
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  OUTLINED_FUNCTION_9_5();
  v9 = malloc_type_malloc(0x8000uLL, v8);
  if (!v9)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_58();
LABEL_85:
    ByteStreamSize = FigSignalErrorAtGM();
    goto LABEL_86;
  }

  ByteStreamSize = GetByteStreamSize(a2, &v53);
  if (ByteStreamSize)
  {
LABEL_86:
    v25 = ByteStreamSize;
    v22 = 0;
    v13 = 0;
    goto LABEL_74;
  }

  if (a4)
  {
    FigSimpleMutexLock();
    v11 = v53;
    *(a4 + 8) = 0;
    *(a4 + 16) = v11;
    FigSimpleMutexUnlock();
  }

  if (!a1)
  {
    v22 = 0;
    theArray = 0;
    v47 = 0;
    v21 = 0;
    v13 = 0;
    goto LABEL_18;
  }

  Value = CFDictionaryGetValue(a1, @"FileMD5");
  v13 = Value;
  if (Value)
  {
    v14 = CFGetTypeID(Value);
    if (v14 != CFDataGetTypeID())
    {
      goto LABEL_84;
    }
  }

  v15 = CFDictionaryGetValue(a1, @"ChunkMD5Array");
  v16 = v15;
  if (v15)
  {
    v17 = CFGetTypeID(v15);
    if (v17 != CFArrayGetTypeID())
    {
      goto LABEL_84;
    }
  }

  v18 = CFDictionaryGetValue(a1, @"MD5ChunkSize");
  theArray = v16;
  if (!v18)
  {
    if (v13)
    {
      v47 = v13;
      v23 = 1;
      v22 = FigDigestMD5Create();
      v13 = 0;
      v21 = 1;
      goto LABEL_23;
    }

    v22 = 0;
    v47 = 0;
    v21 = 0;
LABEL_18:
    v23 = 1;
    goto LABEL_23;
  }

  v19 = v18;
  v20 = CFGetTypeID(v18);
  if (v20 != CFNumberGetTypeID())
  {
LABEL_84:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_58();
    goto LABEL_85;
  }

  CFNumberGetValue(v19, kCFNumberSInt64Type, &valuePtr);
  v21 = v13 != 0;
  v47 = v13;
  if (v13)
  {
    v22 = FigDigestMD5Create();
  }

  else
  {
    v22 = 0;
  }

  v13 = FigDigestMD5Create();
  v23 = 0;
LABEL_23:
  v24 = FigThreadRegisterAbortAction();
  if (!v24 || (v25 = v24, v24 == -17561))
  {
    v25 = 0;
    if (!v55)
    {
      v26 = v53;
      if (v53 >= 1)
      {
        v42 = 0;
        v43 = v7;
        v44 = 0;
        idx = 0;
        v45 = 0;
        v27 = 0;
        v28 = 0;
        while (1)
        {
          v49 = 0;
          v29 = v26 - v28;
          if (v29 >= 0x8000)
          {
            v29 = 0x8000;
          }

          v30 = valuePtr - v27;
          if (v29 < valuePtr - v27)
          {
            v30 = v29;
          }

          if (v23)
          {
            v31 = v29;
          }

          else
          {
            v31 = v30;
          }

          v32 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (!v32)
          {
            v25 = -12782;
            goto LABEL_74;
          }

          v33 = v32(a2, v31, v28, v9, &v49);
          if (v33)
          {
LABEL_73:
            v25 = v33;
            goto LABEL_74;
          }

          if (v21)
          {
            MEMORY[0x19A8D1840](v22, v9, v49);
          }

          if (v23)
          {
            break;
          }

          MEMORY[0x19A8D1840](v13, v9, v49);
          v28 += v49;
          v27 += v49;
          if (v27 < valuePtr && v28 != v53)
          {
            goto LABEL_61;
          }

          FigDigestMD5GetDigest();
          if (CFArrayGetCount(theArray) <= idx)
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_58();
            v25 = FigSignalErrorAtGM();
            v36 = v43;
            if (!v25)
            {
              goto LABEL_60;
            }
          }

          else
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, idx);
            v36 = v43;
            if (ValueAtIndex)
            {
              v37 = CompareMD5(ValueAtIndex, v56);
            }

            else
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_0_58();
              v37 = FigSignalErrorAtGM();
            }

            v25 = v37;
            if (!v37)
            {
LABEL_60:
              ++idx;
              MEMORY[0x19A8D1880](v13);
              v27 = 0;
              v45 = v28;
LABEL_61:
              v39 = !v21;
              if (v28 < v53)
              {
                v39 = 1;
              }

              if ((v39 & 1) == 0)
              {
                FigDigestMD5GetDigest();
                if (CompareMD5(v47, v56))
                {
LABEL_72:
                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_0_58();
                  v33 = FigSignalErrorAtGM();
                  goto LABEL_73;
                }
              }

              goto LABEL_65;
            }
          }

          if (!v36 || v44 && v42 == idx)
          {
            goto LABEL_72;
          }

          v50 = v45;
          v51 = valuePtr;
          v38 = *(*(CMBaseObjectGetVTable() + 24) + 8);
          if (!v38 || v38(v36, 8, 1, &v50))
          {
            goto LABEL_74;
          }

          MEMORY[0x19A8D1880](v13);
          if (v21)
          {
            MEMORY[0x19A8D1880](v22);
          }

          MEMORY[0x19A8D1880](v13);
          v28 = 0;
          v27 = 0;
          v45 = 0;
          v44 = 1;
          v42 = idx;
          idx = 0;
LABEL_65:
          if (a4)
          {
            FigSimpleMutexLock();
            *(a4 + 8) = v28;
            FigSimpleMutexUnlock();
          }

          if (!v55)
          {
            v26 = v53;
            if (v28 < v53)
            {
              continue;
            }
          }

          v25 = 0;
          goto LABEL_74;
        }

        v28 += v49;
        goto LABEL_61;
      }
    }
  }

LABEL_74:
  if (v54)
  {
    FigThreadUnregisterAbortAction();
  }

  v40 = v55;
  free(v9);
  if (v22)
  {
    MEMORY[0x19A8D1860](v22);
  }

  if (v13)
  {
    MEMORY[0x19A8D1860](v13);
  }

  if (v40)
  {
    return 4294954762;
  }

  else
  {
    return v25;
  }
}

uint64_t ObtainCFDataSinfsFromMedia(const __CFString *a1, __CFArray **a2)
{
  theArray = 0;
  v3 = ObtainSinfInfoFromMedia(a1, &theArray);
  if (v3)
  {
    v11 = v3;
    goto LABEL_11;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    v11 = 0;
LABEL_11:
    Mutable = 0;
    goto LABEL_12;
  }

  v5 = Count;
  Mutable = 0;
  v7 = 0;
  v8 = *MEMORY[0x1E695E480];
  v9 = MEMORY[0x1E695E9C0];
  while (1)
  {
    value = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
    if (CFDictionaryGetValueIfPresent(ValueAtIndex, @"sinf", &value))
    {
      break;
    }

LABEL_8:
    if (v5 == ++v7)
    {
      v11 = 0;
      goto LABEL_12;
    }
  }

  if (Mutable || (Mutable = CFArrayCreateMutable(v8, v5, v9)) != 0)
  {
    CFArrayAppendValue(Mutable, value);
    goto LABEL_8;
  }

  fig_log_get_emitter();
  v11 = FigSignalErrorAtGM();
LABEL_12:
  if (theArray)
  {
    CFRelease(theArray);
  }

  *a2 = Mutable;
  return v11;
}

uint64_t PostProcessPurchasedItem_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ObtainSinfInfoFromMedia_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ObtainSinfInfoFromMedia_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ObtainSinfInfoFromMedia_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ObtainSinfInfoFromMedia_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ObtainSinfInfoFromMedia_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ObtainSinfInfoFromMedia_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ObtainSinfInfoFromMedia_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ObtainSinfInfoFromMedia_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ObtainSinfInfoFromMedia_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ReadMovieBytesIntoCFData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ReadMovieBytesIntoCFData_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t airplayRoute_SetProperty(const void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1 || (v7 = DerivedStorage, *DerivedStorage))
  {
LABEL_37:

    return FigSignalErrorAtGM();
  }

  if (CFEqual(a2, @"FigAudioSession"))
  {
    if (!a3 || (v8 = CFGetTypeID(a3), v8 == FigAudioSessionGetTypeID()))
    {
      v9 = CMBaseObjectGetDerivedStorage();
      CFRetain(a1);
      if (a3)
      {
        CFRetain(a3);
      }

      v10 = OUTLINED_FUNCTION_3_52();
      v26 = 0x40000000;
      v27 = __airplayRoute_setNewFigAudioSession_block_invoke;
      v28 = &__block_descriptor_tmp_201;
      v29 = v9;
      v30 = a1;
      v31 = a3;
      dispatch_sync(v10, &block);
      return 0;
    }

    return 4294954436;
  }

  if (CFEqual(a2, @"AirPlayVideoActive"))
  {
    v11 = FigCFEqual();
    v12 = CMBaseObjectGetDerivedStorage();
    if (!*v12)
    {
      v13 = v12;
      CFRetain(a1);
      v14 = OUTLINED_FUNCTION_3_52();
      v26 = 0x40000000;
      v15 = __airplayRoute_setAirPlayVideoIsActive_block_invoke;
      v16 = &__block_descriptor_tmp_205;
LABEL_15:
      v27 = v15;
      v28 = v16;
      LOBYTE(v31) = v11;
      v29 = v13;
      v30 = a1;
      p_block = &block;
LABEL_16:
      dispatch_async(v14, p_block);
      return 0;
    }

    return 0;
  }

  if (CFEqual(a2, @"VideoForMusicActive"))
  {
    v11 = FigCFEqual();
    v17 = CMBaseObjectGetDerivedStorage();
    if (!*v17)
    {
      v13 = v17;
      CFRetain(a1);
      v14 = OUTLINED_FUNCTION_3_52();
      v26 = 0x40000000;
      v15 = __airplayRoute_setAudioOnlyAirPlayVideoIsActive_block_invoke;
      v16 = &__block_descriptor_tmp_206;
      goto LABEL_15;
    }

    return 0;
  }

  if (CFEqual(a2, @"AllowBackgroundClientProcessToBeUnsuspended"))
  {
    CFRetain(a1);
    if (a3)
    {
      CFRetain(a3);
    }

    OUTLINED_FUNCTION_0_52();
    v24[1] = 0x40000000;
    v24[2] = __airplayRoute_SetProperty_block_invoke;
    v24[3] = &__block_descriptor_tmp_199;
    v24[4] = v7;
    v24[5] = a3;
    v24[6] = a1;
    p_block = v24;
    goto LABEL_16;
  }

  if (CFEqual(a2, @"PickerContextUUID"))
  {
    airplayRoute_updateRoutingContextUUID(a1, a3);
    return 0;
  }

  if (CFEqual(a2, @"ClientPID"))
  {
    block = 0;
    if (a3)
    {
      v20 = CFGetTypeID(a3);
      if (v20 == CFNumberGetTypeID())
      {
        if (CFNumberGetValue(a3, kCFNumberSInt32Type, &block))
        {
          *(v7 + 30) = block;
        }
      }
    }

    return 0;
  }

  if (CFEqual(a2, @"PlaybackActive"))
  {
    if (a3)
    {
      Value = CFBooleanGetValue(a3);
    }

    else
    {
      Value = 0;
    }

    if (Value == v7[64])
    {
      return 0;
    }

    v7[64] = Value;
    goto LABEL_43;
  }

  if (!CFEqual(a2, @"DisableBufferedAudio"))
  {
    if (!CFEqual(a2, @"IsPIPMuted"))
    {
      return 4294954436;
    }

    if (a3)
    {
      v22 = CFGetTypeID(a3);
      if (v22 == CFBooleanGetTypeID())
      {
        v23 = CFBooleanGetValue(a3);
        if (v7[139] == v23)
        {
          return 0;
        }

        v7[139] = v23;
        goto LABEL_43;
      }
    }

    goto LABEL_37;
  }

  result = 0;
  if (a3 && *MEMORY[0x1E695E4D0] == a3)
  {
    v7[152] = 1;
LABEL_43:
    airplayRoute_updateRoutingRegistry(a1);
    return 0;
  }

  return result;
}

uint64_t airplayRoute_stopRoutingContextListeners()
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 8))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_13_16();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_12_22();

    return FigNotificationCenterRemoveWeakListener();
  }

  return result;
}

uint64_t airplayRoute_stopFigAudioSessionListeners()
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 112))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_16_17();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_16_17();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_16_17();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_16_17();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_16_17();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();

    return FigNotificationCenterRemoveWeakListener();
  }

  return result;
}

uint64_t airplayRoute_stopEndpointNotificationListeners()
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 24))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_15_19();

    return FigNotificationCenterRemoveWeakListener();
  }

  return result;
}

void airplayRoute_currentEndpointChangedNotificationCallback(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = 0;
  if (dword_1EAF17000 >= 2)
  {
    v15 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_46();
    if (v5)
    {
      if (a2)
      {
        v10 = (CMBaseObjectGetDerivedStorage() + 153);
      }

      else
      {
        v10 = "";
      }

      v17 = 136315650;
      v18 = "airplayRoute_currentEndpointChangedNotificationCallback";
      v19 = 2048;
      v20 = a2;
      v21 = 2082;
      v22 = v10;
      OUTLINED_FUNCTION_30();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_238_0();
  }

  if (a2 && !*DerivedStorage)
  {
    if (a5)
    {
      FigCFDictionaryGetBooleanIfPresent();
    }

    if (*(DerivedStorage + 88))
    {
      CFRetain(a2);
      v11 = *(DerivedStorage + 88);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __airplayRoute_currentEndpointChangedNotificationCallback_block_invoke;
      block[3] = &__block_descriptor_tmp_39;
      v13 = v16;
      block[4] = DerivedStorage;
      block[5] = a2;
      dispatch_async(v11, block);
    }
  }
}

void airplayRoute_pickableRoutesChangedGuts(uint64_t a1)
{
  v225 = *MEMORY[0x1E69E9840];
  if (*CMBaseObjectGetDerivedStorage())
  {
    return;
  }

  v198 = 0;
  v199 = 0;
  value = 0;
  v197 = 0;
  BOOLean = 0;
  v195 = 0;
  v192 = 0;
  v193 = 0;
  theDict = 0;
  BYTE6(v189) = 0;
  WORD2(v189) = 0;
  BYTE3(v189) = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17000)
  {
    v5 = OUTLINED_FUNCTION_4_51();
    LODWORD(v1) = v5;
    v2 = v202;
    if (os_log_type_enabled(v5, type[0]))
    {
      v6 = v202;
    }

    else
    {
      v6 = v202 & 0xFFFFFFFE;
    }

    if (v6)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_20_11();
      *cf = 136317442;
      *&cf[4] = "airplayRoute_updateRouteInformation";
      v204 = 2048;
      v205 = a1;
      v206 = 2082;
      v207 = v7;
      v208 = 2112;
      *v209 = v8;
      *&v209[8] = 1024;
      v210 = v9;
      v211 = 0;
      v212 = 8;
      v213 = v10;
      v214 = 2048;
      v215 = v11;
      v216 = 2048;
      v217 = v12;
      v218 = 1024;
      v219 = v13;
      v220 = 1024;
      v221 = v14;
      OUTLINED_FUNCTION_59();
      OUTLINED_FUNCTION_38();
      _os_log_send_and_compose_impl();
      v2 = v202;
    }

    OUTLINED_FUNCTION_0_70();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v15 = MEMORY[0x1E695E4D0];
  if (!*(DerivedStorage + 8))
  {
    v20 = 1;
    goto LABEL_58;
  }

  v16 = *(DerivedStorage + 112);
  v1 = *MEMORY[0x1E695E480];
  if (v16)
  {
    v17 = *(CMBaseObjectGetVTable() + 16);
    if (v17)
    {
      v18 = *(v17 + 48);
      if (v18)
      {
        v18(v16, *MEMORY[0x1E69B0370], v1, &v192);
      }
    }
  }

  if (!FigGetCFPreferenceNumberWithDefault())
  {
    v21 = getenv("ENABLE_BUFFERED_LOCAL_PLAYBACK");
    if (!v21 || *v21 != 49 || v21[1])
    {
      v22 = *(DerivedStorage + 8);
      v23 = v192;
      v24 = *(*(CMBaseObjectGetVTable() + 16) + 144);
      if (v24)
      {
        v25 = v24(v22, v23, &v199);
        if (v25)
        {
          goto LABEL_376;
        }

        goto LABEL_37;
      }

LABEL_75:
      OUTLINED_FUNCTION_5_46();
      v38 = 0;
      v20 = -12782;
LABEL_76:
      LOBYTE(v39) = 1;
LABEL_79:
      v51 = 5;
LABEL_250:
      v61 = *(DerivedStorage + 40);
      if (v61)
      {
        CFRetain(*(DerivedStorage + 40));
      }

      airplayRoute_stopEndpointNotificationListeners();
      v117 = *(DerivedStorage + 32);
      if (v117 && !airplayRoute_endpointStreamsHaveSameID(v117, v198))
      {
        FigEndpointRelinquishStreamResource();
      }

      v118 = *(DerivedStorage + 24);
      if (v118)
      {
        CFRelease(v118);
        *(DerivedStorage + 24) = 0;
      }

      v119 = *(DerivedStorage + 80);
      if (v119)
      {
        CFRelease(v119);
        *(DerivedStorage + 80) = 0;
      }

      v120 = *(DerivedStorage + 96);
      if (v120)
      {
        CFRelease(v120);
        *(DerivedStorage + 96) = 0;
      }

      *(DerivedStorage + 104) = 0;
      *(DerivedStorage + 49) = 256;
      v121 = *(DerivedStorage + 40);
      if (v121)
      {
        CFRelease(v121);
        *(DerivedStorage + 40) = 0;
      }

      v122 = *(DerivedStorage + 56);
      if (v122)
      {
        CFRelease(v122);
        *(DerivedStorage + 56) = 0;
      }

      v123 = *(DerivedStorage + 32);
      if (v123)
      {
        CFRelease(v123);
        *(DerivedStorage + 32) = 0;
      }

      if (!v20)
      {
        if (v1)
        {
          *(DerivedStorage + 49) = 1;
          v124 = *(DerivedStorage + 56);
          v125 = v197;
          *(DerivedStorage + 56) = v197;
          if (v125)
          {
            CFRetain(v125);
          }

          if (v124)
          {
            CFRelease(v124);
          }
        }

        v126 = *(DerivedStorage + 40);
        *(DerivedStorage + 40) = v185;
        if (v185)
        {
          CFRetain(v185);
        }

        if (v126)
        {
          CFRelease(v126);
        }

        if (v15)
        {
          v127 = *(DerivedStorage + 32);
          v128 = v198;
          *(DerivedStorage + 32) = v198;
          if (v128)
          {
            CFRetain(v128);
          }

          if (v127)
          {
            CFRelease(v127);
          }
        }

        v129 = *(DerivedStorage + 80);
        *(DerivedStorage + 80) = v38;
        if (v38)
        {
          CFRetain(v38);
        }

        if (v129)
        {
          CFRelease(v129);
        }

        v130 = *(DerivedStorage + 96);
        v131 = value;
        *(DerivedStorage + 96) = value;
        if (v131)
        {
          CFRetain(v131);
        }

        if (v130)
        {
          CFRelease(v130);
        }

        v132 = *(DerivedStorage + 24);
        v133 = v199;
        *(DerivedStorage + 24) = v199;
        if (v133)
        {
          CFRetain(v133);
        }

        if (v132)
        {
          CFRelease(v132);
        }

        if (*(CMBaseObjectGetDerivedStorage() + 24))
        {
          CMNotificationCenterGetDefaultLocalCenter();
          OUTLINED_FUNCTION_15_19();
          FigNotificationCenterAddWeakListener();
        }

        *(DerivedStorage + 104) = BYTE4(v183);
        *(DerivedStorage + 50) = v39;
      }

      if (!FigCFEqual())
      {
        *(DerivedStorage + 48) = 0;
      }

      goto LABEL_299;
    }
  }

  if (dword_1EAF17000)
  {
    v19 = OUTLINED_FUNCTION_4_51();
    os_log_type_enabled(v19, type[0]);
    OUTLINED_FUNCTION_46();
    if (v2)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      *cf = 136315650;
      OUTLINED_FUNCTION_18_15();
      OUTLINED_FUNCTION_59();
      OUTLINED_FUNCTION_30();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_0_70();
    OUTLINED_FUNCTION_238_0();
  }

  v26 = *(DerivedStorage + 8);
  v27 = v192;
  v28 = *(*(CMBaseObjectGetVTable() + 16) + 192);
  if (!v28)
  {
    goto LABEL_75;
  }

  v25 = v28(v26, v27, &v199);
  if (v25)
  {
LABEL_376:
    v20 = v25;
    OUTLINED_FUNCTION_5_46();
    v38 = 0;
    goto LABEL_76;
  }

  if (!v199)
  {
    goto LABEL_40;
  }

  CMBaseObject = FigEndpointGetCMBaseObject();
  v30 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v30)
  {
    v30(CMBaseObject, *MEMORY[0x1E6961698], *v15);
  }

LABEL_37:
  if (v199)
  {
    v31 = *(DerivedStorage + 8);
    v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v32)
    {
      v33 = MEMORY[0x1E69AF4C8];
LABEL_42:
      v20 = 1;
      if (!v32(v31, *v33, v1, &BOOLean) && BOOLean)
      {
        v20 = CFBooleanGetValue(BOOLean);
      }

      goto LABEL_46;
    }

    goto LABEL_45;
  }

LABEL_40:
  v31 = *(DerivedStorage + 8);
  v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v32)
  {
    v33 = MEMORY[0x1E69AF4D0];
    goto LABEL_42;
  }

LABEL_45:
  v20 = 1;
LABEL_46:
  if (dword_1EAF17000)
  {
    v34 = OUTLINED_FUNCTION_4_51();
    v35 = v202;
    LODWORD(v1) = type[0];
    if (os_log_type_enabled(v34, type[0]))
    {
      v36 = v35;
    }

    else
    {
      v36 = v35 & 0xFFFFFFFE;
    }

    if (v36)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      *cf = 136316162;
      OUTLINED_FUNCTION_9_24();
      OUTLINED_FUNCTION_22_16();
      *&v209[8] = 1024;
      v210 = v20;
      OUTLINED_FUNCTION_59();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_0_70();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (BOOLean)
  {
    CFRelease(BOOLean);
    BOOLean = 0;
  }

LABEL_58:
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v38 = Mutable;
  if (!Mutable)
  {
    LOBYTE(v39) = v20;
    OUTLINED_FUNCTION_5_46();
    v20 = -12862;
    goto LABEL_79;
  }

  v39 = *v15;
  v40 = *MEMORY[0x1E695E4C0];
  if (v20)
  {
    v41 = *v15;
  }

  else
  {
    v41 = *MEMORY[0x1E695E4C0];
  }

  CFDictionaryAddValue(Mutable, @"IsLocalPlaybackEnabled", v41);
  if (!v199)
  {
    v47 = 0;
    LODWORD(v177) = 0;
    v48 = 0;
    LODWORD(v15) = 0;
    v185 = 0;
    LODWORD(v1) = 0;
    goto LABEL_105;
  }

  LODWORD(v1) = FigEndpointGetCMBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    LOBYTE(v39) = v20;
    OUTLINED_FUNCTION_5_46();
    v20 = -12782;
    goto LABEL_79;
  }

  v42 = v39;
  LOBYTE(v39) = v20;
  v181 = v40;
  v43 = OUTLINED_FUNCTION_19_17();
  v45 = v44(v43);
  if (v45)
  {
    v20 = v45;
    OUTLINED_FUNCTION_5_46();
    goto LABEL_79;
  }

  if (!value)
  {
    OUTLINED_FUNCTION_5_46();
    v20 = -12860;
    goto LABEL_79;
  }

  CFDictionaryAddValue(v38, @"NewRouteName", value);
  if (FigGetCFPreferenceNumberWithDefault())
  {
    v39 = v42;
    CFDictionarySetValue(v38, @"IsLocalPlaybackEnabled", v42);
    LODWORD(v177) = 0;
    v46 = 0;
    v20 = 1;
  }

  else if (*(DerivedStorage + 140))
  {
    LODWORD(v177) = 0;
    v46 = 0;
    v39 = v42;
  }

  else
  {
    if (*(DerivedStorage + 32) && FigEndpointContainsStream())
    {
      v49 = *(DerivedStorage + 32);
      v39 = v42;
      if (v49)
      {
        v50 = CFRetain(v49);
      }

      else
      {
        v50 = 0;
      }

      v198 = v50;
    }

    else
    {
      FigEndpointAcquireAndCopyStreamResource();
      v50 = v198;
      v39 = v42;
    }

    HaveSameID = airplayRoute_endpointStreamsHaveSameID(*(DerivedStorage + 32), v50);
    v46 = v198 != 0;
    LODWORD(v177) = HaveSameID != 0;
  }

  LODWORD(v179) = v46;
  if (CelestialIsAppleTV() || CelestialIsAudioAccessory())
  {
    v53 = 0;
  }

  else
  {
    FigEndpointGetCMBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v62 = OUTLINED_FUNCTION_19_17();
      v63(v62);
    }

    if (BOOLean)
    {
      if (CFBooleanGetValue(BOOLean))
      {
        HIDWORD(v173) = v20;
        v64 = CMBaseObjectGetDerivedStorage();
        v202 = 0;
        v65 = *(v64 + 112);
        if (v65)
        {
          v66 = *(CMBaseObjectGetVTable() + 16);
          if (v66 && *(v66 + 48) && (v67 = OUTLINED_FUNCTION_19_17(), v68(v67), v202))
          {
            v69 = CFGetTypeID(v202);
            if (v69 == CFBooleanGetTypeID())
            {
              v70 = CFBooleanGetValue(v202);
              LODWORD(v65) = v70 == 0;
              if (!v70 && dword_1EAF17000)
              {
                *type = 0;
                HIBYTE(v200) = 0;
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v72 = *type;
                if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, HIBYTE(v200)))
                {
                  v73 = v72;
                }

                else
                {
                  v73 = v72 & 0xFFFFFFFE;
                }

                if (v73)
                {
                  if (a1)
                  {
                    CMBaseObjectGetDerivedStorage();
                  }

                  *cf = 136315906;
                  OUTLINED_FUNCTION_9_24();
                  OUTLINED_FUNCTION_22_16();
                  OUTLINED_FUNCTION_59();
                  _os_log_send_and_compose_impl();
                }

                LODWORD(v65) = 1;
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }
            }

            else
            {
              LODWORD(v65) = 0;
            }

            if (v202)
            {
              CFRelease(v202);
            }
          }

          else
          {
            LODWORD(v65) = 0;
          }
        }

        v53 = v65 == 0;
      }

      else
      {
        v53 = 0;
      }

      if (BOOLean)
      {
        CFRelease(BOOLean);
        BOOLean = 0;
      }
    }

    else
    {
      v53 = 0;
    }

    if (v197)
    {
      CFRelease(v197);
      v197 = 0;
    }

    FigEndpointGetCMBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v167 = OUTLINED_FUNCTION_19_17();
      v168(v167);
    }
  }

  v224 = 0;
  *cf = 0;
  FigEndpointGetCMBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
LABEL_91:
    v48 = 0;
    goto LABEL_92;
  }

  v54 = OUTLINED_FUNCTION_19_17();
  v48 = 0;
  if (!v55(v54) && v224)
  {
    v56 = CFGetTypeID(v224);
    if (v56 == CFBooleanGetTypeID())
    {
      v48 = CFBooleanGetValue(v224) == 0;
      goto LABEL_92;
    }

    goto LABEL_91;
  }

LABEL_92:
  FigEndpointGetCMBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v185 = 0;
    goto LABEL_99;
  }

  v57 = OUTLINED_FUNCTION_19_17();
  v185 = 0;
  if (v58(v57))
  {
LABEL_99:
    LODWORD(v1) = v53;
    goto LABEL_100;
  }

  LODWORD(v1) = v53;
  if (*cf)
  {
    v59 = CFGetTypeID(*cf);
    if (v59 == CFArrayGetTypeID() && (FirstValue = FigCFArrayGetFirstValue()) != 0)
    {
      v185 = CFRetain(FirstValue);
    }

    else
    {
      v185 = 0;
    }

    goto LABEL_99;
  }

LABEL_100:
  if (v224)
  {
    CFRelease(v224);
  }

  LODWORD(v15) = v179;
  if (*cf)
  {
    CFRelease(*cf);
  }

  v47 = v199;
LABEL_105:
  HIDWORD(v183) = v48;
  if (*(DerivedStorage + 24) == v47 && *(DerivedStorage + 49) == v1 && FigCFEqual() && ((*(DerivedStorage + 40) == v185) & v177) == 1)
  {
    if (*(DerivedStorage + 50) == v20)
    {
      goto LABEL_110;
    }

    if (v20 != 1)
    {
      LOBYTE(v39) = v20;
      v20 = 0;
      v51 = 4;
      goto LABEL_250;
    }
  }

  if (v1)
  {
    HIDWORD(v177) = v1;
    alloc = *MEMORY[0x1E695E480];
    FigEndpointGetCMBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v74 = OUTLINED_FUNCTION_7_29();
      v75(v74);
    }

    if (BOOLean)
    {
      CFDictionaryAddValue(v38, @"AirPlayFromCloudSupported", BOOLean);
      if (BOOLean)
      {
        CFRelease(BOOLean);
        BOOLean = 0;
      }
    }

    FigEndpointGetCMBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v76 = OUTLINED_FUNCTION_7_29();
      v77(v76);
    }

    if (BOOLean)
    {
      CFDictionaryAddValue(v38, @"AirPlayPlayQueueSupported", BOOLean);
      if (BOOLean)
      {
        CFRelease(BOOLean);
        BOOLean = 0;
      }
    }

    FigEndpointGetCMBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v78 = OUTLINED_FUNCTION_7_29();
      v79(v78);
    }

    if (BOOLean)
    {
      CFDictionaryAddValue(v38, @"ExternalPlaybackCannotFetchMediaFromSender", BOOLean);
      if (BOOLean)
      {
        CFRelease(BOOLean);
        BOOLean = 0;
      }
    }

    FigEndpointGetCMBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v80 = OUTLINED_FUNCTION_7_29();
      v81(v80);
    }

    if (BOOLean)
    {
      CFDictionaryAddValue(v38, @"ExternalPlaybackDoesNotSupportEncryptedCRABS", BOOLean);
      if (BOOLean)
      {
        CFRelease(BOOLean);
        BOOLean = 0;
      }
    }

    FigEndpointGetCMBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v82 = OUTLINED_FUNCTION_7_29();
      v83(v82);
    }

    if (BOOLean)
    {
      CFDictionaryAddValue(v38, @"ExternalPlaybackDoesNotRequireVodkaForHLS", BOOLean);
      if (BOOLean)
      {
        CFRelease(BOOLean);
        BOOLean = 0;
      }
    }

    FigEndpointGetCMBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v84 = OUTLINED_FUNCTION_7_29();
      v85(v84);
    }

    if (BOOLean)
    {
      CFDictionaryAddValue(v38, @"ExternalPlaybackSupportsOfflineHLS", BOOLean);
      if (BOOLean)
      {
        CFRelease(BOOLean);
        BOOLean = 0;
      }
    }

    v86 = FigEndpointGetCMBaseObject();
    v87 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v87)
    {
      v87(v86, *MEMORY[0x1E6962080], alloc, &theDict);
    }

    if (theDict)
    {
      v175 = v39;
      if (FigCFDictionaryGetBooleanIfPresent())
      {
        if (dword_1EAF17000)
        {
          LODWORD(v179) = v15;
          v15 = v40;
          HIDWORD(v173) = v20;
          LODWORD(v202) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v88 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v89 = v202;
          if (os_log_type_enabled(v88, type[0]))
          {
            v90 = v89;
          }

          else
          {
            v90 = v89 & 0xFFFFFFFE;
          }

          if (v90)
          {
            if (a1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            *cf = 136315906;
            OUTLINED_FUNCTION_9_24();
            v206 = 2082;
            OUTLINED_FUNCTION_17_14();
            OUTLINED_FUNCTION_59();
            OUTLINED_FUNCTION_30();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_0_70();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v40 = v15;
          LODWORD(v15) = v179;
        }
      }

      else
      {
        v91 = 0;
        v92 = 0;
        if (a1)
        {
          v93 = 0;
          if (theDict)
          {
            v93 = CFDictionaryGetValue(theDict, @"webAppVersion");
            if (v93)
            {
              ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(alloc, v93, @".");
              v91 = ArrayBySeparatingStrings;
              if (ArrayBySeparatingStrings && CFArrayGetCount(ArrayBySeparatingStrings) >= 1 && (ValueAtIndex = CFArrayGetValueAtIndex(v91, 0)) != 0)
              {
                IntValue = CFStringGetIntValue(ValueAtIndex);
                v92 = 0;
                if (IntValue != 0x80000000 && IntValue && IntValue != 0x7FFFFFFF)
                {
                  v92 = IntValue > 40 || (IntValue & 0xFFFFFFFE) == 18;
                }
              }

              else
              {
                v92 = 0;
              }
            }

            else
            {
              v92 = 0;
              v91 = 0;
            }
          }
        }

        else
        {
          v93 = 0;
        }

        if (dword_1EAF17000)
        {
          v181 = v40;
          HIDWORD(v173) = v20;
          LODWORD(v202) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v179 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v179, type[0]);
          OUTLINED_FUNCTION_46();
          if (v40)
          {
            if (a1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            *cf = 136316162;
            OUTLINED_FUNCTION_18_15();
            v208 = 2112;
            *v209 = v93;
            *&v209[8] = 1024;
            v210 = v92;
            OUTLINED_FUNCTION_59();
            OUTLINED_FUNCTION_30();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_0_70();
          OUTLINED_FUNCTION_238_0();
        }

        if (v91)
        {
          CFRelease(v91);
        }

        v39 = v175;
      }

      if (FigCFDictionaryGetBooleanIfPresent())
      {
        isAirPlayVideoFeatureEnabledInServerBag = 0;
      }

      else
      {
        isAirPlayVideoFeatureEnabledInServerBag = airplayroute_isAirPlayVideoFeatureEnabledInServerBag(a1, theDict, @"supportsInterstitials", @"AirPlayMPV1ReceiverNativeInterstitialsEnabledMinimumVersion");
        BYTE6(v189) = isAirPlayVideoFeatureEnabledInServerBag;
      }

      if (isAirPlayVideoFeatureEnabledInServerBag && !FigCFDictionaryGetBooleanIfPresent())
      {
        BYTE4(v189) = airplayroute_isAirPlayVideoFeatureEnabledInServerBag(a1, theDict, @"supportsIntegratedTimeline", @"AirPlayMPV1ReceiverIntegratedTimelineEnabledMinimumVersion");
      }

      if (dword_1EAF17000)
      {
        v181 = v40;
        v99 = OUTLINED_FUNCTION_4_51();
        os_log_type_enabled(v99, type[0]);
        OUTLINED_FUNCTION_46();
        if (v40)
        {
          if (a1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          *cf = 136316162;
          *&cf[4] = "airplayRoute_updateRouteInformation";
          v204 = 2048;
          v205 = a1;
          v206 = 2082;
          OUTLINED_FUNCTION_17_14();
          *&v209[4] = v100;
          *&v209[6] = v101;
          OUTLINED_FUNCTION_59();
          OUTLINED_FUNCTION_30();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_0_70();
        OUTLINED_FUNCTION_238_0();
        v39 = v175;
      }

      FigCFDictionaryGetBooleanIfPresent();
      FigCFDictionaryGetBooleanIfPresent();
      v48 = HIDWORD(v183);
    }

    OUTLINED_FUNCTION_23_17();
    CFDictionaryAddValue(v38, @"ExternalPlaybackSupportsAirPlayVideoWithSharePlay", v102);
    OUTLINED_FUNCTION_23_17();
    CFDictionaryAddValue(v38, @"ExternalPlaybackSupportsInterstitials", v103);
    OUTLINED_FUNCTION_23_17();
    CFDictionaryAddValue(v38, @"ExternalPlaybackSupportsIntegratedTimeline", v104);
    OUTLINED_FUNCTION_23_17();
    CFDictionaryAddValue(v38, @"ExternalPlaybackSupportsStopAtEndOfQueue", v105);
    OUTLINED_FUNCTION_23_17();
    CFDictionaryAddValue(v38, @"ExternalPlaybackSupportsCoordinatedAPV", v106);
    FigEndpointGetCMBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v107 = OUTLINED_FUNCTION_7_29();
      v108(v107);
    }

    if (BOOLean)
    {
      if (BYTE6(v189) || (v110 = FigCFEqual(), v109 = v40, !v110))
      {
        v109 = v39;
      }
    }

    else
    {
      v109 = v40;
    }

    CFDictionaryAddValue(v38, @"ExternalPlaybackReportsValidSeekResponseTime", v109);
    if (BOOLean)
    {
      CFRelease(BOOLean);
      BOOLean = 0;
    }

    FigEndpointGetCMBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v111 = OUTLINED_FUNCTION_7_29();
      v112(v111);
    }

    if (BOOLean)
    {
      CFDictionaryAddValue(v38, @"AirPlayVideoV2Supported", BOOLean);
      if (BOOLean)
      {
        CFRelease(BOOLean);
        BOOLean = 0;
      }
    }

    CFDictionaryAddValue(v38, @"IsURLPlaybackEnabled", v39);
    v113 = FigEndpointGetCMBaseObject();
    v114 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v114)
    {
      v114(v113, *MEMORY[0x1E6961FA0], alloc, &v195);
    }

    if (v195)
    {
      CFDictionaryAddValue(v38, @"AirPlayVodkaVersion", v195);
      if (v195)
      {
        CFRelease(v195);
        v195 = 0;
      }
    }

    if (FigCFEqual())
    {
      v115 = v40;
    }

    else
    {
      v115 = v39;
    }

    CFDictionaryAddValue(v38, @"IsPlaybackTokenChanged", v115);
    LODWORD(v1) = HIDWORD(v177);
  }

  if (v15)
  {
    HIDWORD(v177) = v1;
    v164 = v39;
    LOBYTE(v39) = v20;
    CFDictionaryAddValue(v38, @"IsBufferedAudioEnabled", v164);
    if (v177)
    {
      v165 = v40;
    }

    else
    {
      v165 = v164;
    }

    CFDictionaryAddValue(v38, @"IsBufferedAudioStreamChanged", v165);
    *(DerivedStorage + 152) = 0;
    v166 = airplayRoute_copyRoutingContext(a1, &v193);
    if (v166)
    {
      v20 = v166;
      v51 = 5;
      LODWORD(v1) = HIDWORD(v177);
LABEL_350:
      LODWORD(v15) = 1;
      goto LABEL_250;
    }

    airplayRoute_updateRoutingRegistryInternal(a1, v193);
    LODWORD(v1) = HIDWORD(v177);
  }

  v116 = CMBaseObjectGetDerivedStorage();
  if (*(v116 + 49) || *(v116 + 40) || *(v116 + 32) || !*(v116 + 50))
  {
    LODWORD(v39) = v20;
    if (v1)
    {
      v20 = 0;
      if (v48)
      {
        v51 = 3;
      }

      else
      {
        v51 = 4;
      }

      LODWORD(v1) = 1;
      goto LABEL_250;
    }

    v51 = 4;
    if ((v15 & 1) == 0)
    {
      LODWORD(v15) = 0;
      LODWORD(v1) = 0;
      v20 = 0;
      if (v39)
      {
        v51 = 5;
      }

      else
      {
        v51 = 4;
      }

      goto LABEL_250;
    }

    LODWORD(v1) = 0;
    v20 = 0;
    goto LABEL_350;
  }

  if (v1)
  {
    LOBYTE(v39) = v20;
    v20 = 0;
    LODWORD(v1) = 1;
    if (v48)
    {
      v51 = 1;
    }

    else
    {
      v51 = 2;
    }

    goto LABEL_250;
  }

  if (v15)
  {
    LOBYTE(v39) = v20;
    LODWORD(v1) = 0;
    v20 = 0;
    LODWORD(v15) = 1;
    v51 = 2;
    goto LABEL_250;
  }

  if (!v20)
  {
    LODWORD(v15) = 0;
    LOBYTE(v39) = 0;
    LODWORD(v1) = 0;
    if (v48)
    {
      v51 = 1;
    }

    else
    {
      v51 = 2;
    }

    goto LABEL_250;
  }

LABEL_110:
  v51 = 0;
  v61 = 0;
  v20 = 0;
LABEL_299:
  if (v185)
  {
    CFRelease(v185);
  }

  if (v61)
  {
    CFRelease(v61);
  }

  if (v198)
  {
    CFRelease(v198);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (v199)
  {
    CFRelease(v199);
  }

  if (v193)
  {
    CFRelease(v193);
  }

  if (v197)
  {
    CFRelease(v197);
  }

  if (v192)
  {
    CFRelease(v192);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  HIBYTE(v189) = 0;
  FigCFDictionaryGetBooleanIfPresent();
  if (dword_1EAF17000)
  {
    v134 = OUTLINED_FUNCTION_4_51();
    v142 = OUTLINED_FUNCTION_26_15(v134, v135, v136, v137, v138, v139, v140, v141, v169, v171, v173, v175, v177, v179, v181, v183, v185, alloc, v189, theDict, v192, v193, BOOLean, v195, value, v197, v198, v199, v200, type[0], v202);
    if (OUTLINED_FUNCTION_109_0(v142))
    {
      OUTLINED_FUNCTION_20_11();
      *cf = 136317698;
      *&cf[4] = "airplayRoute_updateRouteInformation";
      v204 = 2048;
      v205 = a1;
      v206 = 2082;
      v207 = v143;
      v208 = 2112;
      *v209 = v144;
      *&v209[8] = 1024;
      v210 = v145;
      v211 = 0;
      v212 = 8;
      v213 = v146;
      v214 = 2048;
      v215 = v147;
      v216 = 2048;
      v217 = v148;
      v218 = 1024;
      v219 = v149;
      v220 = 1024;
      v221 = v150;
      v222 = 1024;
      v223 = HIBYTE(v190);
      OUTLINED_FUNCTION_59();
      OUTLINED_FUNCTION_38();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_0_70();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EAF17000)
    {
      v151 = OUTLINED_FUNCTION_4_51();
      v159 = OUTLINED_FUNCTION_26_15(v151, v152, v153, v154, v155, v156, v157, v158, v170, v172, v174, v176, v178, v180, v182, v184, v186, alloca, v190, theDict, v192, v193, BOOLean, v195, value, v197, v198, v199, v200, type[0], v202);
      if (OUTLINED_FUNCTION_109_0(v159))
      {
        *cf = 136316162;
        OUTLINED_FUNCTION_9_24();
        v206 = 2082;
        OUTLINED_FUNCTION_17_14();
        *&v209[4] = v160;
        *&v209[6] = v20;
        OUTLINED_FUNCTION_59();
        OUTLINED_FUNCTION_38();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_0_70();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if (v51 - 1 >= 2 && v51 - 3 >= 2)
  {
    if (v51 == 5)
    {
      v162 = CMBaseObjectGetDerivedStorage();
      v163 = *(v162 + 80);
      if (v163)
      {
        CFRelease(v163);
        *(v162 + 80) = 0;
      }

      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }
  }

  else
  {
    CMBaseObjectGetDerivedStorage();
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    FigCFDictionarySetValue();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }
}

BOOL airplayroute_isAirPlayVideoFeatureEnabledInServerBag(int a1, CFDictionaryRef theDict, uint64_t a3, __CFString *a4)
{
  cf[27] = *MEMORY[0x1E69E9840];
  v14 = 0;
  cf[0] = 0;
  v13 = 0;
  Value = CFDictionaryGetValue(theDict, @"webAppVersion");
  if (!Value || (getBuildNumberFromVersionString(Value, &v14 + 1, &v14), HIDWORD(v14) != 19) || FigRCLCreateConfiguration(@"com.apple.mediaplaybackd", @"kFigRemoteConfigurationLoaderStoreBagType_AirPlay", 0, cf))
  {
    v7 = 0;
LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  v6 = FigRCLCopyCFType(cf[0], a4);
  v7 = v6;
  if (!v6)
  {
    goto LABEL_13;
  }

  v8 = CFGetTypeID(v6);
  if (v8 == CFStringGetTypeID())
  {
    getBuildNumberFromVersionString(v7, &v13 + 1, &v13);
    v10 = HIDWORD(v14) == HIDWORD(v13) && v14 >= v13;
  }

  else
  {
    v10 = 0;
  }

LABEL_14:
  if (dword_1EAF17000)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v10;
}

uint64_t airplayRoute_copyRoutingContext(uint64_t a1, CFTypeRef *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1 || (v6 = DerivedStorage, *DerivedStorage))
  {
    v13 = FigSignalErrorAtGM();
LABEL_22:
    v15 = v13;
    goto LABEL_17;
  }

  if (!*(DerivedStorage + 16))
  {
    v10 = *(DerivedStorage + 112);
    if (!v10)
    {
      goto LABEL_11;
    }

    v11 = *(CMBaseObjectGetVTable() + 16);
    if (!v11)
    {
      v15 = 4294948075;
      goto LABEL_17;
    }

    v12 = *(v11 + 8);
    if (!v12)
    {
      v15 = 4294948071;
      goto LABEL_17;
    }

    v13 = v12(v10, @"FAS_RoutingContext", *MEMORY[0x1E695E480], &cf);
    if (!v13)
    {
LABEL_11:
      Mutable = 0;
      goto LABEL_15;
    }

    goto LABEL_22;
  }

  if (dword_1EAF17000 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_46();
    if (v2)
    {
      v8 = CMBaseObjectGetDerivedStorage();
      v9 = *(v6 + 16);
      v19 = 136315906;
      v20 = "airplayRoute_copyRoutingContext";
      v21 = 2048;
      v22 = a1;
      v23 = 2082;
      v24 = v8 + 153;
      v25 = 2114;
      v26 = v9;
      OUTLINED_FUNCTION_30();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_238_0();
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69AF350], *(v6 + 16));
  v16 = FigRoutingContextRemoteCopyContextForUUID();
  if (!v16)
  {
LABEL_15:
    v15 = 0;
    *a2 = cf;
    cf = 0;
    if (!Mutable)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v15 = v16;
  if (Mutable)
  {
LABEL_16:
    CFRelease(Mutable);
  }

LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  return v15;
}

void getBuildNumberFromVersionString(CFStringRef theString, SInt32 *a2, SInt32 *a3)
{
  if (theString)
  {
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], theString, @".");
    v6 = ArrayBySeparatingStrings;
    if (ArrayBySeparatingStrings && CFArrayGetCount(ArrayBySeparatingStrings) > 1)
    {
      if (a2)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
        if (!ValueAtIndex)
        {
LABEL_15:
          CFRelease(v6);
          return;
        }

        *a2 = CFStringGetIntValue(ValueAtIndex);
      }

      if (a3)
      {
        v8 = CFArrayGetValueAtIndex(v6, 1);
        if (v8)
        {
          *a3 = CFStringGetIntValue(v8);
        }
      }

      goto LABEL_15;
    }

    if (dword_1EAF17000 >= 2)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v10 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      if (OUTLINED_FUNCTION_109_0(v10))
      {
        OUTLINED_FUNCTION_38();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v6)
    {
      goto LABEL_15;
    }
  }
}

void airplayRoute_endpointStreamsChangedCallback(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    if (!*DerivedStorage)
    {
      if (*(DerivedStorage + 88))
      {
        CFRetain(a2);
        OUTLINED_FUNCTION_0_52();
        v6[1] = 0x40000000;
        v6[2] = __airplayRoute_endpointStreamsChangedCallback_block_invoke;
        v6[3] = &__block_descriptor_tmp_184_0;
        v6[4] = v4;
        v6[5] = a2;
        dispatch_async(v5, v6);
      }
    }
  }
}

_BYTE *airplayRoute_isActiveDidChange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  result = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v9 = result;
    if (!*result)
    {
      if (a5)
      {
        result = CFDictionaryGetValue(a5, *MEMORY[0x1E69AFA78]);
      }

      else
      {
        result = 0;
      }

      v10 = result == *MEMORY[0x1E695E4D0];
      if (*(v9 + 14) == a4 && v9[138] != v10)
      {
        v9[138] = v10;
      }
    }
  }

  return result;
}

void airplayRoute_audioBehaviorOrPrefersConcurrentAirPlayAudioDidChange(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 && !*DerivedStorage && *(DerivedStorage + 112) == a4 && airplayRoute_updateAudioSessionPolicyForBuffered(a2))
  {

    airplayRoute_pickableRoutesChangedGuts(a2);
  }
}

void airplayRoute_audioModeDidChange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!*DerivedStorage)
  {
    v6 = *(DerivedStorage + 112);
    if (v6 == a4)
    {
      v7 = *MEMORY[0x1E695E480];
      if (a4)
      {
        v8 = *(CMBaseObjectGetVTable() + 16);
        if (v8)
        {
          v9 = *(v8 + 48);
          if (v9)
          {
            v9(v6, *MEMORY[0x1E69AFCE8], v7, &cf);
          }
        }
      }

      Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      FigCFDictionarySetValue();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      if (cf)
      {
        CFRelease(cf);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }
  }
}

void airplayRoute_resetRoutingContextIfNeededInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (*DerivedStorage)
  {
    return;
  }

  v3 = DerivedStorage;
  v4 = airplayRoute_copyRoutingContext(a1, &cf);
  v5 = cf;
  if (v4 || (airplayRoute_updateRoutingRegistryInternal(a1, cf), FigCFEqual()))
  {
    if (!v5)
    {
      return;
    }

    goto LABEL_5;
  }

  airplayRoute_stopRoutingContextListeners();
  v6 = *(v3 + 1);
  *(v3 + 1) = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (*(CMBaseObjectGetDerivedStorage() + 8))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_13_16();
    FigNotificationCenterAddWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_12_22();
    FigNotificationCenterAddWeakListener();
  }

  airplayRoute_pickableRoutesChangedGuts(a1);
  if (v5)
  {
LABEL_5:

    CFRelease(v5);
  }
}

void __airplayRoute_updateRoutingRegistry_block_invoke(uint64_t a1)
{
  cf = 0;
  if (!airplayRoute_copyRoutingContext(*(a1 + 32), &cf))
  {
    airplayRoute_updateRoutingRegistryInternal(*(a1 + 32), cf);
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = cf;
  if (cf)
  {

    CFRelease(v3);
  }
}

unsigned int *airplayRoute_createOrReleaseClientAssertionIfNeeded(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v3 = result;
    if (!*result)
    {
      result = result[30];
      if (result)
      {
        if (*(v3 + 16))
        {
          if (!*(v3 + 136) && !*(v3 + 137))
          {
            MX_RunningBoardServices_InvalidateMediaPlaybackProcessAssertion();
            result = *(v3 + 16);
            if (result)
            {
              CFRelease(result);
              result = 0;
LABEL_12:
              *(v3 + 16) = result;
            }
          }
        }

        else if (*(v3 + 136) || *(v3 + 137))
        {
          result = MX_RunningBoardServices_CreateMediaPlaybackProcessAssertionForPID();
          goto LABEL_12;
        }
      }
    }
  }

  return result;
}

void __airplayRoute_updateRoutingContextUUID_block_invoke(void *a1)
{
  if (!*a1[4] && !FigCFEqual())
  {
    v5 = a1[4];
    v4 = a1[5];
    v6 = *(v5 + 16);
    *(v5 + 16) = v4;
    if (v4)
    {
      CFRetain(v4);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    airplayRoute_resetRoutingContextIfNeededInternal(a1[6]);
  }

  v2 = a1[6];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t airplayRoute_Activate(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1 && !*DerivedStorage && *(DerivedStorage + 88))
  {
    airplayRoute_updateRoutingContextUUID(a1, 0);
  }

  return 0;
}

uint64_t airplayRoute_ReevaluateCurrentRoute(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (!*DerivedStorage)
    {
      v3 = *(DerivedStorage + 88);
      if (v3)
      {
        v5[0] = MEMORY[0x1E69E9820];
        v5[1] = 0x40000000;
        v5[2] = __airplayRoute_ReevaluateCurrentRoute_block_invoke;
        v5[3] = &__block_descriptor_tmp_208_0;
        v5[4] = DerivedStorage;
        v5[5] = a1;
        dispatch_sync(v3, v5);
      }
    }
  }

  return 0;
}

uint64_t airplayRoute_CopyProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t airplayRoute_ResumeAirPlayScreen_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

unsigned int *__airplayRoute_setNewFigAudioSession_block_invoke_cold_1(uint64_t a1, uint64_t a2, void *a3)
{
  airplayRoute_stopFigAudioSessionListeners();
  v6 = CFRetain(*(*a2 + 112));
  global_queue = dispatch_get_global_queue(0, 0);
  *a3 = MEMORY[0x1E69E9820];
  a3[1] = 0x40000000;
  a3[2] = __airplayRoute_setNewFigAudioSession_block_invoke_2;
  a3[3] = &__block_descriptor_tmp_200;
  a3[4] = v6;
  dispatch_async(global_queue, a3);
  v8 = *(a1 + 40);
  result = CMBaseObjectGetDerivedStorage();
  if (v8)
  {
    if (!*result)
    {
      *(result + 68) = 0;
      return airplayRoute_createOrReleaseClientAssertionIfNeeded(v8);
    }
  }

  return result;
}

unsigned int *__airplayRoute_setAirPlayVideoIsActive_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_25_15();
  if (v3)
  {
    v4 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  v5 = *(CMBaseObjectGetVTable() + 16);
  if (v5)
  {
    v6 = *(v5 + 56);
    if (v6)
    {
      v6(v2, *MEMORY[0x1E69AFC48], *v4);
    }
  }

  *(*v1 + 136) = *(v0 + 48);
  v7 = *(v0 + 40);

  return airplayRoute_createOrReleaseClientAssertionIfNeeded(v7);
}

unsigned int *__airplayRoute_setAudioOnlyAirPlayVideoIsActive_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_25_15();
  if (v3)
  {
    v4 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  v5 = *(CMBaseObjectGetVTable() + 16);
  if (v5)
  {
    v6 = *(v5 + 56);
    if (v6)
    {
      v6(v2, *MEMORY[0x1E69AFCF8], *v4);
    }
  }

  *(*v1 + 137) = *(v0 + 48);
  v7 = *(v0 + 40);

  return airplayRoute_createOrReleaseClientAssertionIfNeeded(v7);
}

uint64_t airplayRoute_SuspendAirPlayScreen_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t airplayRoute_SuspendAirPlayScreen_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetCacheInspectorCreate_Remote(uint64_t a1, const void *a2, void *a3)
{
  v12 = 0;
  xdict = 0;
  value = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  cf[0] = MEMORY[0x1E69E9820];
  cf[1] = 0x40000000;
  cf[2] = __raci_ensureClientEstablished_block_invoke;
  cf[3] = &unk_1E74843C8;
  cf[4] = &v15;
  if (qword_1ED4CA918 != -1)
  {
    dispatch_once(&qword_1ED4CA918, cf);
  }

  v5 = *(v16 + 6);
  _Block_object_dispose(&v15, 8);
  if (!v5)
  {
    ObjectID = FigXPCCreateBasicMessage();
    if (ObjectID || (ObjectID = FigAssetXPCRemoteGetObjectID(a2, &value), ObjectID))
    {
      v5 = ObjectID;
    }

    else
    {
      xpc_dictionary_set_uint64(xdict, "AssetToken", value);
      v5 = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (!v5)
      {
        uint64 = xpc_dictionary_get_uint64(v12, *MEMORY[0x1E69615A0]);
        cf[0] = 0;
        FigAssetCacheInspectorGetClassID();
        v5 = CMDerivedObjectCreate();
        v8 = cf[0];
        if (!v5)
        {
          *(CMBaseObjectGetDerivedStorage() + 8) = uint64;
          v5 = FigXPCRemoteClientAssociateObject();
          v8 = cf[0];
          if (!v5)
          {
            if (cf[0])
            {
              v9 = CFRetain(cf[0]);
              v8 = cf[0];
            }

            else
            {
              v9 = 0;
            }

            v5 = 0;
            *a3 = v9;
          }
        }

        if (v8)
        {
          CFRelease(v8);
        }
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v5;
}

uint64_t raci_invalidate()
{
  CMBaseObjectGetDerivedStorage();
  if (!FigAtomicCompareAndSwap32())
  {
    goto LABEL_6;
  }

  v0 = FigXPCRemoteClientDisassociateObject();
  if (v0)
  {
    v2 = v0;
    goto LABEL_7;
  }

  if (FigAtomicCompareAndSwap32())
  {
    v1 = FigXPCCreateBasicMessage();
    if (v1)
    {
      v2 = v1;
    }

    else
    {
      v2 = FigXPCRemoteClientSendSyncMessage();
    }
  }

  else
  {
LABEL_6:
    v2 = 0;
  }

LABEL_7:
  FigXPCRelease();
  return v2;
}

uint64_t raci_copyProperty(uint64_t a1)
{
  v4 = 0;
  ObjectID = raci_getObjectID(a1, &v4);
  if (!ObjectID)
  {
    OUTLINED_FUNCTION_1_71();
    ObjectID = FigXPCSendStdCopyPropertyMessage();
  }

  v2 = ObjectID;
  FigXPCRemoteClientKillServerOnTimeout();
  return v2;
}

uint64_t raci_setProperty(uint64_t a1)
{
  v4 = 0;
  ObjectID = raci_getObjectID(a1, &v4);
  if (!ObjectID)
  {
    OUTLINED_FUNCTION_1_71();
    ObjectID = FigXPCSendStdSetPropertyMessage();
  }

  v2 = ObjectID;
  FigXPCRemoteClientKillServerOnTimeout();
  return v2;
}

uint64_t raci_copyCompletelyCachedMediaSelectionOptionsInGroup(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  v10 = 0;
  if (cf && (v6 = CFGetTypeID(cf), v6 == CFDictionaryGetTypeID()) && a4)
  {
    ObjectID = raci_getObjectID(a1, &v10);
    if (!ObjectID)
    {
      ObjectID = FigXPCCreateBasicMessage();
      if (!ObjectID)
      {
        ObjectID = FigXPCMessageSetCFDictionary();
        if (!ObjectID)
        {
          ObjectID = FigXPCMessageSetCFObject();
          if (!ObjectID)
          {
            ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply();
            if (!ObjectID)
            {
              ObjectID = FigXPCMessageCopyCFArray();
            }
          }
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    ObjectID = FigSignalErrorAtGM();
  }

  v8 = ObjectID;
  FigXPCRelease();
  FigXPCRelease();
  return v8;
}

uint64_t __raci_ensureClientEstablished_block_invoke_cold_1(uint64_t a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t raci_getObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t raci_getObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TTMLParserParseStream(uint64_t a1, uint64_t a2)
{
  v548 = *MEMORY[0x1E69E9840];
  theArray = 0;
  v530 = 0;
  v528 = 0;
  v524 = a1;
  CFSetRemoveAllValues(*(a1 + 56));
  v3 = *MEMORY[0x1E695E480];
  v4 = FigTTMLTreeCreate(*MEMORY[0x1E695E480], a2, &v530);
  if (v4 || (v4 = FigTTMLTreeCopySliceTimeRangeArray(v530, &theArray), v4))
  {
    v44 = v4;
    v6 = 0;
  }

  else
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v5 = 0;
      v6 = 0;
      key = *MEMORY[0x1E6961450];
      v514 = *MEMORY[0x1E695E4D0];
      v517 = @"CaptionData";
      v516 = *MEMORY[0x1E6961240];
      v485 = *MEMORY[0x1E6961338];
      v474 = *MEMORY[0x1E6961358];
      v513 = *MEMORY[0x1E6961390];
      v507 = *MEMORY[0x1E69613B0];
      v496 = *MEMORY[0x1E6961328];
      v442 = *MEMORY[0x1E6961308];
      v459 = *MEMORY[0x1E69613B8];
      v425 = *MEMORY[0x1E6961278];
      v391 = *MEMORY[0x1E6961340];
      v374 = *MEMORY[0x1E6961348];
      v357 = *MEMORY[0x1E6961350];
      alloc = v3;
      while (1)
      {
        memset(&v526, 0, sizeof(v526));
        v518 = v5;
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v5);
        CMTimeRangeMakeFromDictionary(&v526, ValueAtIndex);
        if (v6)
        {
          CFRelease(v6);
        }

        v8 = v530;
        *v525 = v526;
        value = 0;
        v537 = 0;
        v534 = 0;
        cf = 0;
        v532 = 0;
        v533 = 0;
        Mutable = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
        OUTLINED_FUNCTION_19_18(Mutable, v10, v11, v12, v13, v14, v15, v16, v323, v340, v357, v374, v391, v408, v425, v442, v459, v474, v485, v496, v507, v513, v514, Count, v516, v517, v518, v520, key, v522, alloc, v524, v17, *v525);
        active = FigTTMLTreeCopyActiveRegionArray(v8, &context.start.value, &v537);
        if (active)
        {
          v44 = active;
          v6 = 0;
          epoch = 0;
          goto LABEL_209;
        }

        v520 = CFArrayGetCount(v537);
        v522 = Mutable;
        if (v520 < 1)
        {
          break;
        }

        v19 = 0;
        epoch = 0;
        while (1)
        {
          v21 = CFArrayGetValueAtIndex(v537, v19);
          OUTLINED_FUNCTION_19_18(v21, v22, v23, v24, v25, v26, v27, v28, v323, v340, v357, v374, v391, v408, v425, v442, v459, v474, v485, v496, v507, v513, v514, Count, v516, v517, v519, v520, key, v522, alloc, v524, v29, *v525);
          SynchronicTree = FigTTMLTreeCreateSynchronicTree(v3, v8, &context.start.value, v21, &v534);
          if (SynchronicTree)
          {
            break;
          }

          SynchronicTree = FigTTMLSynchronicTreeCopyCaptionArray(v534, &v533);
          if (SynchronicTree)
          {
            break;
          }

          v31 = CFArrayGetCount(v533);
          if (v31 >= 1)
          {
            v32 = v31;
            for (i = 0; i != v32; ++i)
            {
              v34 = CFArrayGetValueAtIndex(v533, i);
              if (epoch)
              {
                CFRelease(epoch);
              }

              context.start.value = 0;
              *&context.start.timescale = v524;
              context.start.epoch = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              if (context.start.epoch)
              {
                v549.length = CFArrayGetCount(v34);
                v549.location = 0;
                CFArrayApplyFunction(v34, v549, ttmlParser_addTextNodeSourceInformation, &context);
                epoch = context.start.epoch;
              }

              else
              {
                OUTLINED_FUNCTION_76_0();
                v43 = FigSignalErrorAtGM();
                epoch = 0;
                if (v43)
                {
                  v44 = v43;
                  v6 = 0;
                  goto LABEL_209;
                }
              }

              v35 = CFDictionaryGetCount(epoch);
              if (!epoch || v35)
              {
                if (epoch)
                {
                  if (*(v524 + 32))
                  {
                    v36 = CFDictionaryGetValue(epoch, key);
                    if (v36)
                    {
                      (*(v524 + 32))(*(v524 + 48), v36);
                    }
                  }
                }
              }

              else
              {
                CFRelease(epoch);
                epoch = 0;
              }

              SynchronicTree = FigTTMLTreeGetParameters(v8, &v532);
              if (SynchronicTree)
              {
                goto LABEL_137;
              }

              SynchronicTree = FigCaptionDataCreateForTTML(v3, v34, v534, v21, epoch, v532, &cf);
              if (SynchronicTree)
              {
                goto LABEL_137;
              }

              context = *v525;
              v37 = CFArrayGetCount(v34);
              if (v37)
              {
                v38 = v37;
                v39 = 0;
                while (1)
                {
                  v40 = CFArrayGetValueAtIndex(v34, v39);
                  memset(&v544, 0, sizeof(v544));
                  ActiveTimeRange = FigTTMLNodeGetActiveTimeRange(v40, &v544);
                  if (ActiveTimeRange)
                  {
                    break;
                  }

                  range = context;
                  otherRange = v544;
                  CMTimeRangeGetUnion(&context, &range, &otherRange);
                  if (v38 == ++v39)
                  {
                    goto LABEL_31;
                  }
                }

                v44 = ActiveTimeRange;
                v3 = alloc;
                goto LABEL_47;
              }

LABEL_31:
              v544 = context;
              v3 = alloc;
              v42 = FigCaptionCreate(alloc, &v544.start.value, cf, &value);
              if (v42)
              {
                v44 = v42;
LABEL_47:
                Mutable = v522;
                goto LABEL_48;
              }

              Mutable = v522;
              CFArrayAppendValue(v522, value);
              if (cf)
              {
                CFRelease(cf);
                cf = 0;
              }

              if (value)
              {
                CFRelease(value);
                value = 0;
              }
            }
          }

          if (v534)
          {
            CFRelease(v534);
            v534 = 0;
          }

          if (v533)
          {
            CFRelease(v533);
            v533 = 0;
          }

          if (++v19 == v520)
          {
            goto LABEL_50;
          }
        }

LABEL_137:
        v44 = SynchronicTree;
LABEL_48:
        v6 = 0;
LABEL_209:
        if (v533)
        {
          CFRelease(v533);
        }

        if (v534)
        {
          CFRelease(v534);
        }

        if (epoch)
        {
          CFRelease(epoch);
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (value)
        {
          CFRelease(value);
        }

        if (v537)
        {
          CFRelease(v537);
        }

        if (v44)
        {
          goto LABEL_236;
        }

        if (v528)
        {
          CFRelease(v528);
          v528 = 0;
        }

        context = v526;
        v321 = FigSampleBufferCreateFromFigCaptions(v3, v6, &context.start.value, &v528);
        if (v321)
        {
          v44 = v321;
          goto LABEL_236;
        }

        (*(v524 + 16))(*(v524 + 24), v528);
        v5 = v519 + 1;
        if (v519 + 1 == Count)
        {
          goto LABEL_235;
        }
      }

      epoch = 0;
LABEL_50:
      CFDictionaryGetValue(*(v524 + 64), @"ConsolidateiTTRegions");
      if (FigCFEqual())
      {
        v543 = 0;
        v541 = 0;
        v542 = 0;
        v539 = 0;
        v540 = 0;
        v45 = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
        if (Mutable)
        {
          v46 = CFArrayGetCount(Mutable);
          if (v46 >= 1)
          {
            v47 = v46;
            for (j = 0; v47 != j; ++j)
            {
              v49 = CFArrayGetValueAtIndex(Mutable, j);
              if (v543)
              {
                CFRelease(v543);
                v543 = 0;
              }

              CMBaseObject = FigCaptionGetCMBaseObject(v49);
              v51 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (!v51 || v51(CMBaseObject, v517, alloc, &v543))
              {
                goto LABEL_148;
              }

              range.start.value = 0;
              otherRange.start.value = 0;
              FigCaptionDataGetCMBaseObject();
              if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
              {
                goto LABEL_78;
              }

              v52 = OUTLINED_FUNCTION_8_21();
              if (v53(v52))
              {
                goto LABEL_78;
              }

              if (!range.start.value)
              {
                OUTLINED_FUNCTION_76_0();
                FigSignalErrorAtGM();
                goto LABEL_78;
              }

              FigCaptionRegionGetCMBaseObject();
              if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
              {
                goto LABEL_78;
              }

              v54 = OUTLINED_FUNCTION_14_21();
              if (v55(v54, v485, alloc))
              {
                goto LABEL_78;
              }

              v56 = FigCFEqual();
              if (v56)
              {
                OUTLINED_FUNCTION_3_53(v56, v57, v58, v59, v60, v61, v62, v63, v323, v340, v357, v374, v391, v408, v425, v442, v459, v474, v485, v496, v507, v513);
                MEMORY[0x19A8D3660](&ttmlParser_initializePredefinedRegions_sInitializeOnce, v64);
                v65 = OUTLINED_FUNCTION_17_15();
                OUTLINED_FUNCTION_9_25(v65, v66, v67, v68, v69, v70, v71, v72, v324, v341, v358, v375, v392, v409, v426, v443, v460, v475, v486, v497, v508);
                v73 = OUTLINED_FUNCTION_17_15();
                OUTLINED_FUNCTION_13_17(v73, v74, v75, v76, v77, v78, v79, v80, v325, v342, v359, v376, v393, v410, v427, v444, v461, v476, v487, v498);
                v81 = OUTLINED_FUNCTION_17_15();
                OUTLINED_FUNCTION_11_24(v81, v82, v83, v84, v85, v86, v87, v88, v326, v343, v360, v377, v394, v411, v428, v445);
                v89 = OUTLINED_FUNCTION_17_15();
                OUTLINED_FUNCTION_10_26(v89, v90, v91, v92, v93, v94, v95, v96, v327, v344, v361, v378, v395, v412, v429, v446, v462);
                v97 = OUTLINED_FUNCTION_17_15();
                v98 = OUTLINED_FUNCTION_20_12(v97);
                if (!ttmlParser_doPropertiesMatch(v98, &context, 5))
                {
                  goto LABEL_78;
                }

                v99 = v425;
                v544.start.value = v425;
                OUTLINED_FUNCTION_0_71();
                v100 = _MergedGlobals_50;
              }

              else
              {
                v101 = FigCFEqual();
                if (v101)
                {
                  OUTLINED_FUNCTION_3_53(v101, v102, v103, v104, v105, v106, v107, v108, v323, v340, v357, v374, v391, v408, v425, v442, v459, v474, v485, v496, v507, v513);
                  MEMORY[0x19A8D3660](&ttmlParser_initializePredefinedRegions_sInitializeOnce, v109);
                  v110 = OUTLINED_FUNCTION_18_16();
                  OUTLINED_FUNCTION_9_25(v110, v111, v112, v113, v114, v115, v116, v117, v328, v345, v362, v379, v396, v413, v430, v447, v463, v477, v488, v499, v509);
                  v118 = OUTLINED_FUNCTION_18_16();
                  OUTLINED_FUNCTION_13_17(v118, v119, v120, v121, v122, v123, v124, v125, v329, v346, v363, v380, v397, v414, v431, v448, v464, v478, v489, v500);
                  v126 = OUTLINED_FUNCTION_18_16();
                  OUTLINED_FUNCTION_11_24(v126, v127, v128, v129, v130, v131, v132, v133, v330, v347, v364, v381, v398, v415, v432, v449);
                  v134 = OUTLINED_FUNCTION_18_16();
                  OUTLINED_FUNCTION_10_26(v134, v135, v136, v137, v138, v139, v140, v141, v331, v348, v365, v382, v399, v416, v433, v450, v465);
                  v142 = OUTLINED_FUNCTION_18_16();
                  v143 = OUTLINED_FUNCTION_20_12(v142);
                  if (!ttmlParser_doPropertiesMatch(v143, &context, 5))
                  {
                    goto LABEL_78;
                  }

                  v99 = v425;
                  v544.start.value = v425;
                  OUTLINED_FUNCTION_0_71();
                  v100 = qword_1ED4CA928;
                }

                else
                {
                  v146 = FigCFEqual();
                  if (v146)
                  {
                    OUTLINED_FUNCTION_1_72(v146, v147, v148, v149, v150, v151, v152, v153, v323, v340, v357, v374, v391, v408, v425, v442, v459, v474, v485, v496, v507, v513);
                    MEMORY[0x19A8D3660](&ttmlParser_initializePredefinedRegions_sInitializeOnce, v154);
                    v155 = OUTLINED_FUNCTION_23_18();
                    OUTLINED_FUNCTION_4_52(v155, v156, v157, v158, v159, v160, v161, v162, v332, v349, v366, v383, v400, v417, v434, v451, v466, v479, v490, v501, v510);
                    OUTLINED_FUNCTION_16_18();
                    v163 = OUTLINED_FUNCTION_23_18();
                    OUTLINED_FUNCTION_6_42(v163, v164, v165, v166, v167, v168, v169, v170, v333, v350, v367, v384, v401, v418, v435, v452, v467, v480, v491, v502);
                    OUTLINED_FUNCTION_16_18();
                    v171 = OUTLINED_FUNCTION_23_18();
                    OUTLINED_FUNCTION_12_23(v171, v172, v173, v174, v175, v176, v177, v178, v334, v351, v368, v385, v402, v419, v436, v453, v468);
                    v179 = OUTLINED_FUNCTION_23_18();
                    v180 = OUTLINED_FUNCTION_21_15(v179);
                    if (!ttmlParser_doPropertiesMatch(v180, &context, 4))
                    {
                      goto LABEL_78;
                    }

                    v99 = v425;
                    v544.start.value = v425;
                    OUTLINED_FUNCTION_0_71();
                    v100 = qword_1ED4CA930;
                  }

                  else
                  {
                    v181 = FigCFEqual();
                    if (!v181)
                    {
                      goto LABEL_78;
                    }

                    OUTLINED_FUNCTION_1_72(v181, v182, v183, v184, v185, v186, v187, v188, v323, v340, v357, v374, v391, v408, v425, v442, v459, v474, v485, v496, v507, v513);
                    MEMORY[0x19A8D3660](&ttmlParser_initializePredefinedRegions_sInitializeOnce, v189);
                    v190 = OUTLINED_FUNCTION_22_17();
                    OUTLINED_FUNCTION_4_52(v190, v191, v192, v193, v194, v195, v196, v197, v335, v352, v369, v386, v403, v420, v437, v454, v469, v481, v492, v503, v511);
                    OUTLINED_FUNCTION_16_18();
                    v198 = OUTLINED_FUNCTION_22_17();
                    OUTLINED_FUNCTION_6_42(v198, v199, v200, v201, v202, v203, v204, v205, v336, v353, v370, v387, v404, v421, v438, v455, v470, v482, v493, v504);
                    OUTLINED_FUNCTION_16_18();
                    v206 = OUTLINED_FUNCTION_22_17();
                    OUTLINED_FUNCTION_12_23(v206, v207, v208, v209, v210, v211, v212, v213, v337, v354, v371, v388, v405, v422, v439, v456, v471);
                    v214 = OUTLINED_FUNCTION_22_17();
                    v215 = OUTLINED_FUNCTION_21_15(v214);
                    if (!ttmlParser_doPropertiesMatch(v215, &context, 4))
                    {
                      goto LABEL_78;
                    }

                    v99 = v425;
                    v544.start.value = v425;
                    OUTLINED_FUNCTION_0_71();
                    v100 = qword_1ED4CA938;
                  }
                }
              }

              *&v544.start.timescale = CFDictionaryGetValue(v100, v99);
              LOBYTE(v544.start.epoch) = Mutable;
              v144 = FigCaptionDataGetCMBaseObject();
              if (ttmlParser_doPropertiesMatch(v144, &v544, 1))
              {
                v145 = 0;
                goto LABEL_79;
              }

LABEL_78:
              v145 = 1;
LABEL_79:
              if (otherRange.start.value)
              {
                CFRelease(otherRange.start.value);
              }

              Mutable = v522;
              if (range.start.value)
              {
                CFRelease(range.start.value);
              }

              if (!v145)
              {
                continue;
              }

              if (v542)
              {
                CFRelease(v542);
                v542 = 0;
              }

              FigCaptionDataGetCMBaseObject();
              if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
              {
                goto LABEL_148;
              }

              v216 = OUTLINED_FUNCTION_8_21();
              if (v217(v216))
              {
                goto LABEL_148;
              }

              if (!v542)
              {
                OUTLINED_FUNCTION_76_0();
                FigSignalErrorAtGM();
                goto LABEL_148;
              }

              if (v539)
              {
                CFRelease(v539);
                v539 = 0;
              }

              v218 = FigCaptionRegionGetCMBaseObject();
              v219 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (!v219 || v219(v218, v485, alloc, &v539))
              {
                goto LABEL_148;
              }

              v220 = *(MEMORY[0x1E6962828] + 16);
              *&context.start.value = *MEMORY[0x1E6962828];
              *&context.start.epoch = v220;
              v221 = *(MEMORY[0x1E6962828] + 48);
              *&context.duration.timescale = *(MEMORY[0x1E6962828] + 32);
              v546 = v221;
              otherRange.start.value = 0;
              FigCaptionRegionGetCMBaseObject();
              if (*(*(CMBaseObjectGetVTable() + 8) + 48))
              {
                v222 = OUTLINED_FUNCTION_14_21();
                if (!v223(v222, v513, alloc))
                {
                  FigCaptionDynamicStyleGetInitialValue();
                  memset(&v544, 0, 32);
                  FigGeometryPointMakeFromDictionary();
                  if (otherRange.start.value)
                  {
                    CFRelease(otherRange.start.value);
                    otherRange.start.value = 0;
                  }

                  FigCaptionRegionGetCMBaseObject();
                  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
                  {
                    v224 = OUTLINED_FUNCTION_14_21();
                    if (!v225(v224, v507, alloc))
                    {
                      FigCaptionDynamicStyleGetInitialValue();
                      FigGeometryDimensionMakeFromDictionary();
                      if (otherRange.start.value)
                      {
                        CFRelease(otherRange.start.value);
                        otherRange.start.value = 0;
                      }

                      FigCaptionRegionGetCMBaseObject();
                      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
                      {
                        v226 = OUTLINED_FUNCTION_14_21();
                        if (!v227(v226, v496, alloc))
                        {
                          FigCaptionDynamicStyleGetInitialValue();
                          FigGeometryDimensionMakeFromDictionary();
                          FigGeometrySizeMake();
                          FigGeometryRectMake();
                        }
                      }
                    }
                  }
                }
              }

              if (otherRange.start.value)
              {
                CFRelease(otherRange.start.value);
              }

              TopRegionRect = ttmlParser_getTopRegionRect();
              v236 = OUTLINED_FUNCTION_2_67(TopRegionRect, v229, v230, v231, v232, v233, v234, v235, v323, v340, v357, v374, v391, v408, v425, v442, v459, v474, v485, v496, v507, v513, v514, Count, v516, v517, v519, v520, key, v522, alloc, v524, *v525, *&v525[8], *&v525[16], *&v525[24], *&v525[32], *&v525[40], v526.start.value, *&v526.start.timescale, v526.start.epoch, v526.duration.value, *&v526.duration.timescale, v526.duration.epoch, v527, v528, theArray, v530, otherRange.start.value, *&otherRange.start.timescale, otherRange.start.epoch, otherRange.duration.value, *&otherRange.duration.timescale, otherRange.duration.epoch, v532, v533, v534, cf, value, v537, *&range.start.value, *&range.start.epoch, *&range.duration.timescale);
              v237 = alloc;
              if (v236)
              {
                v238 = v542;
                OUTLINED_FUNCTION_0_71();
                v239 = qword_1ED4CA940;
LABEL_114:
                v542 = v239;
                if (v239)
                {
                  CFRetain(v239);
                }

                if (v238)
                {
                  CFRelease(v238);
                }

                if (v540)
                {
                  CFRelease(v540);
                  v540 = 0;
                }

                if (FigCaptionDataCreateMutableCopy())
                {
                  goto LABEL_148;
                }

                v265 = v542;
                v266 = FigCaptionDataGetCMBaseObject();
                v267 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                if (!v267 || v267(v266, v516, v265))
                {
                  goto LABEL_148;
                }

                if (v541)
                {
                  CFRelease(v541);
                  v541 = 0;
                }

                if (FigCaptionCreateMutableCopy(alloc, v49, &v541))
                {
                  goto LABEL_148;
                }

                v268 = v540;
                v269 = FigCaptionGetCMBaseObject(v541);
                v270 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                if (!v270 || v270(v269, v517, v268))
                {
                  goto LABEL_148;
                }

                Mutable = v522;
                CFArraySetValueAtIndex(v522, j, v541);
                v271 = CFStringCreateWithFormat(alloc, 0, @"region(%@)", v539);
                goto LABEL_129;
              }

              BottomRegionRect = ttmlParser_getBottomRegionRect();
              v248 = OUTLINED_FUNCTION_2_67(BottomRegionRect, v241, v242, v243, v244, v245, v246, v247, v323, v340, v357, v374, v391, v408, v425, v442, v459, v474, v485, v496, v507, v513, v514, Count, v516, v517, v519, v520, key, v522, alloc, v524, *v525, *&v525[8], *&v525[16], *&v525[24], *&v525[32], *&v525[40], v526.start.value, *&v526.start.timescale, v526.start.epoch, v526.duration.value, *&v526.duration.timescale, v526.duration.epoch, v527, v528, theArray, v530, otherRange.start.value, *&otherRange.start.timescale, otherRange.start.epoch, otherRange.duration.value, *&otherRange.duration.timescale, otherRange.duration.epoch, v532, v533, v534, cf, value, v537, *&range.start.value, *&range.start.epoch, *&range.duration.timescale);
              Mutable = v522;
              if (v248)
              {
                v238 = v542;
                OUTLINED_FUNCTION_0_71();
                v239 = qword_1ED4CA948;
                goto LABEL_114;
              }

              LeftRegionRect = ttmlParser_getLeftRegionRect();
              if (OUTLINED_FUNCTION_2_67(LeftRegionRect, v250, v251, v252, v253, v254, v255, v256, v323, v340, v357, v374, v391, v408, v425, v442, v459, v474, v485, v496, v507, v513, v514, Count, v516, v517, v519, v520, key, v522, alloc, v524, *v525, *&v525[8], *&v525[16], *&v525[24], *&v525[32], *&v525[40], v526.start.value, *&v526.start.timescale, v526.start.epoch, v526.duration.value, *&v526.duration.timescale, v526.duration.epoch, v527, v528, theArray, v530, otherRange.start.value, *&otherRange.start.timescale, otherRange.start.epoch, otherRange.duration.value, *&otherRange.duration.timescale, otherRange.duration.epoch, v532, v533, v534, cf, value, v537, *&range.start.value, *&range.start.epoch, *&range.duration.timescale))
              {
                v238 = v542;
                OUTLINED_FUNCTION_0_71();
                v239 = qword_1ED4CA950;
                goto LABEL_114;
              }

              RightRegionRect = ttmlParser_getRightRegionRect();
              if (OUTLINED_FUNCTION_2_67(RightRegionRect, v258, v259, v260, v261, v262, v263, v264, v323, v340, v357, v374, v391, v408, v425, v442, v459, v474, v485, v496, v507, v513, v514, Count, v516, v517, v519, v520, key, v522, alloc, v524, *v525, *&v525[8], *&v525[16], *&v525[24], *&v525[32], *&v525[40], v526.start.value, *&v526.start.timescale, v526.start.epoch, v526.duration.value, *&v526.duration.timescale, v526.duration.epoch, v527, v528, theArray, v530, otherRange.start.value, *&otherRange.start.timescale, otherRange.start.epoch, otherRange.duration.value, *&otherRange.duration.timescale, otherRange.duration.epoch, v532, v533, v534, cf, value, v537, *&range.start.value, *&range.start.epoch, *&range.duration.timescale))
              {
                v238 = v542;
                OUTLINED_FUNCTION_0_71();
                v239 = qword_1ED4CA958;
                goto LABEL_114;
              }

              v271 = CFStringCreateWithFormat(v237, 0, @"region(%@)", v539);
LABEL_129:
              v272 = v271;
              CFArrayAppendValue(v45, v271);
              if (v272)
              {
                CFRelease(v272);
              }
            }
          }
        }

        if (*(v524 + 32))
        {
          if (v45)
          {
            v273.length = CFArrayGetCount(v45);
          }

          else
          {
            v273.length = 0;
          }

          v273.location = 0;
          CFArraySortValues(v45, v273, MEMORY[0x1E695D7F0], 0);
          v274 = 0;
          v275 = 0;
          while (v45)
          {
            if (v274 >= CFArrayGetCount(v45))
            {
              if (CFArrayGetCount(v45))
              {
                (*(v524 + 32))(*(v524 + 48), v45);
              }

              break;
            }

            v276 = CFArrayGetValueAtIndex(v45, v274);
            if (!v275 || CFStringCompare(v275, v276, 0))
            {
              ++v274;
              v275 = v276;
            }

            else
            {
              CFArrayRemoveValueAtIndex(v45, v274);
            }
          }
        }

LABEL_148:
        if (v539)
        {
          CFRelease(v539);
        }

        v3 = alloc;
        if (v45)
        {
          CFRelease(v45);
        }

        if (v540)
        {
          CFRelease(v540);
        }

        Mutable = v522;
        if (v541)
        {
          CFRelease(v541);
        }

        if (v542)
        {
          CFRelease(v542);
        }

        if (v543)
        {
          CFRelease(v543);
        }
      }

      CFDictionaryGetValue(*(v524 + 64), @"FixUpiTTLeftRegionOrigin");
      if (FigCFEqual())
      {
        range.start.value = 0;
        otherRange.start.value = 0;
        v543 = 0;
        v541 = 0;
        v542 = 0;
        v540 = 0;
        FigGeometryDimensionMake();
        memset(&v544, 0, 32);
        FigGeometryPointMake();
        *&context.start.value = *&v544.start.value;
        *&context.start.epoch = *&v544.start.epoch;
        v277 = FigGeometryPointCopyAsDictionary();
        if (!FigCaptionDynamicStyleCreate())
        {
          if (v522)
          {
            v278 = CFArrayGetCount(v522);
            if (v278 >= 1)
            {
              v279 = v278;
              for (k = 0; v279 != k; ++k)
              {
                v281 = CFArrayGetValueAtIndex(v522, k);
                if (range.start.value)
                {
                  CFRelease(range.start.value);
                  range.start.value = 0;
                }

                v282 = FigCaptionGetCMBaseObject(v281);
                v283 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (!v283 || v283(v282, v517, alloc, &range))
                {
                  break;
                }

                if (otherRange.start.value)
                {
                  CFRelease(otherRange.start.value);
                  otherRange.start.value = 0;
                }

                v284 = FigCaptionDataGetCMBaseObject();
                if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
                {
                  break;
                }

                v285 = OUTLINED_FUNCTION_8_21();
                v287 = v286(v285);
                if (v287)
                {
                  break;
                }

                if (!otherRange.start.value)
                {
                  OUTLINED_FUNCTION_76_0();
                  FigSignalErrorAtGM();
                  break;
                }

                OUTLINED_FUNCTION_1_72(v287, v288, v289, v290, v291, v292, v293, v294, v323, v340, v357, v374, v391, v408, v425, v442, v459, v474, v485, v496, v507, v513);
                MEMORY[0x19A8D3660](&ttmlParser_initializePredefinedRegions_sInitializeOnce, v295);
                v296 = CFDictionaryGetValue(qword_1ED4CA930, Mutable);
                OUTLINED_FUNCTION_4_52(v296, v297, v298, v299, v300, v301, v302, v303, v338, v355, v372, v389, v406, v423, v440, v457, v472, v483, v494, v505, v512);
                MEMORY[0x19A8D3660](&ttmlParser_initializePredefinedRegions_sInitializeOnce, v284);
                v304 = CFDictionaryGetValue(qword_1ED4CA930, Mutable);
                OUTLINED_FUNCTION_6_42(v304, v305, v306, v307, v308, v309, v310, v311, v339, v356, v373, v390, v407, v424, v441, v458, v473, v484, v495, v506);
                MEMORY[0x19A8D3660](&ttmlParser_initializePredefinedRegions_sInitializeOnce, v284);
                *(&v546 + 1) = CFDictionaryGetValue(qword_1ED4CA930, Mutable);
                v547 = 0;
                v312 = FigCaptionRegionGetCMBaseObject();
                if (ttmlParser_doPropertiesMatch(v312, &context, 3))
                {
                  if (v542)
                  {
                    CFRelease(v542);
                    v542 = 0;
                  }

                  if (FigCaptionDataCreateMutableCopy())
                  {
                    break;
                  }

                  if (v541)
                  {
                    CFRelease(v541);
                    v541 = 0;
                  }

                  if (FigCaptionRegionCreateMutableCopy())
                  {
                    break;
                  }

                  v313 = v540;
                  v314 = FigCaptionRegionGetCMBaseObject();
                  v315 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  if (!v315)
                  {
                    break;
                  }

                  if (v315(v314, v513, v313))
                  {
                    break;
                  }

                  v316 = v541;
                  v317 = FigCaptionDataGetCMBaseObject();
                  v318 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  if (!v318 || v318(v317, v516, v316))
                  {
                    break;
                  }

                  if (v543)
                  {
                    CFRelease(v543);
                    v543 = 0;
                  }

                  if (FigCaptionCreateMutableCopy(alloc, v281, &v543))
                  {
                    break;
                  }

                  v319 = v542;
                  Mutable = FigCaptionGetCMBaseObject(v543);
                  v320 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  if (!v320 || v320(Mutable, v517, v319))
                  {
                    break;
                  }

                  CFArraySetValueAtIndex(v522, k, v543);
                }
              }
            }
          }
        }

        if (v540)
        {
          CFRelease(v540);
        }

        v3 = alloc;
        if (v277)
        {
          CFRelease(v277);
        }

        if (v541)
        {
          CFRelease(v541);
        }

        v6 = v522;
        if (v542)
        {
          CFRelease(v542);
        }

        if (v543)
        {
          CFRelease(v543);
        }

        if (otherRange.start.value)
        {
          CFRelease(otherRange.start.value);
        }

        if (range.start.value)
        {
          CFRelease(range.start.value);
        }

        v44 = 0;
      }

      else
      {
        v44 = 0;
        v6 = Mutable;
      }

      Mutable = 0;
      goto LABEL_209;
    }

    v6 = 0;
LABEL_235:
    v44 = 0;
  }

LABEL_236:
  if (v528)
  {
    CFRelease(v528);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v530)
  {
    CFRelease(v530);
  }

  return v44;
}

void ttmlParser_initializePredefinedRegionsAux()
{
  v29[4] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6961340];
  v29[0] = *MEMORY[0x1E6961358];
  v29[1] = v0;
  v1 = *MEMORY[0x1E6961350];
  v29[2] = *MEMORY[0x1E6961348];
  v29[3] = v1;
  ttmlParser_getTopRegionRect();
  ttmlParser_getBottomRegionRect();
  ttmlParser_getLeftRegionRect();
  ttmlParser_getRightRegionRect();
  v2 = 0;
  Mutable = 0;
  v4 = *MEMORY[0x1E695E480];
  v27 = *MEMORY[0x1E6961390];
  key = *MEMORY[0x1E6961338];
  v25 = *MEMORY[0x1E6961328];
  v26 = *MEMORY[0x1E69613B0];
  v5 = *MEMORY[0x1E6961308];
  v6 = *MEMORY[0x1E69613B8];
  v7 = 32;
  v8 = *MEMORY[0x1E6961318];
  v9 = *MEMORY[0x1E695E4D0];
  while (1)
  {
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    Mutable = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, key, v29[v2]);
    FigGeometryPointCopyAsDictionary();
    if (OUTLINED_FUNCTION_7_30())
    {
      break;
    }

    v10 = OUTLINED_FUNCTION_15_20();
    CFDictionarySetValue(v10, v27, v11);
    FigGeometryDimensionCopyAsDictionary();
    if (OUTLINED_FUNCTION_7_30())
    {
      break;
    }

    v12 = OUTLINED_FUNCTION_15_20();
    CFDictionarySetValue(v12, v26, v13);
    FigGeometryDimensionCopyAsDictionary();
    if (OUTLINED_FUNCTION_7_30())
    {
      break;
    }

    v14 = OUTLINED_FUNCTION_15_20();
    CFDictionarySetValue(v14, v25, v15);
    if (FigCaptionDynamicStyleCreate())
    {
      break;
    }

    v16 = OUTLINED_FUNCTION_15_20();
    CFDictionarySetValue(v16, v5, v17);
    if (FigCaptionDynamicStyleCreate())
    {
      break;
    }

    v18 = OUTLINED_FUNCTION_15_20();
    CFDictionarySetValue(v18, v6, v19);
    CFDictionarySetValue(Mutable, v8, v9);
    if (Mutable)
    {
      v20 = CFRetain(Mutable);
    }

    else
    {
      v20 = 0;
    }

    *off_1E7484410[v2++] = v20;
    v7 += 64;
    if (v2 == 4)
    {
      if (!FigCaptionRegionCreate())
      {
        v21 = 0;
        v22 = *MEMORY[0x1E6961300];
        do
        {
          if (FigCaptionRegionCreateMutable())
          {
            break;
          }

          CMBaseObject = FigCaptionRegionGetCMBaseObject();
          v24 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (!v24)
          {
            break;
          }

          if (v24(CMBaseObject, v22, 0))
          {
            break;
          }

          CFDictionaryApplyFunction(*off_1E7484410[v21], ttmlParser_initializePredefinedRegion, 0);
          *off_1E7484430[v21++] = 0;
        }

        while (v21 != 4);
      }

      break;
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t TTMLParserCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ttmlParser_addTextNodeSourceInformation_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void remakerFamily_IntermediateMediaProcessorDidReachEndOfOutputData(uint64_t a1, uint64_t a2)
{
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  CMBaseObjectGetDerivedStorage();
  if (!v4)
  {
    return;
  }

  OUTLINED_FUNCTION_16_19();
  if (v5)
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM();
    goto LABEL_25;
  }

  *(a2 + 256) = 1;
  v6 = *(a2 + 152);
  if (*(v6 + 160))
  {
    v7 = *(v6 + 128);
    if (v7)
    {
      if (CFArrayGetCount(v7) >= 1)
      {
        OUTLINED_FUNCTION_18_17();
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 240), v2);
          if (!FigMediaProcessorIsAtEndOfOutputData(ValueAtIndex))
          {
            *(a2 + 256) = 0;
          }

          OUTLINED_FUNCTION_19_19();
        }

        while (!v9);
      }
    }
  }

  v10 = CFGetTypeID(v4);
  if (v10 == FigRemakerGetTypeID())
  {
    v11 = *(a2 + 248);
    if (!v11)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v12 = *(a2 + 152);
  v11 = *(v12 + 72);
  if (v11)
  {
    if (*(v12 + 160))
    {
      v13 = *(v12 + 128);
      if (v13 && CFArrayGetCount(v13) >= 1)
      {
        OUTLINED_FUNCTION_18_17();
        do
        {
          v14 = CFArrayGetValueAtIndex(*(a2 + 240), v2);
          v15 = CFArrayGetValueAtIndex(*(*(a2 + 152) + 128), v2);
          if (FigMediaProcessorIsAtEndOfOutputData(v14))
          {
            CMBufferQueueMarkEndOfData(v15);
          }

          OUTLINED_FUNCTION_19_19();
        }

        while (!v9);
      }

      goto LABEL_25;
    }

LABEL_24:
    CMBufferQueueMarkEndOfData(v11);
  }

LABEL_25:

  CFRelease(v4);
}

void remakerFamily_CustomMediaProcessorDidReachEndOfOutputData(uint64_t a1, uint64_t a2)
{
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  CMBaseObjectGetDerivedStorage();
  if (v3)
  {
    OUTLINED_FUNCTION_16_19();
    if (v4)
    {
      OUTLINED_FUNCTION_303();
      FigSignalErrorAtGM();
    }

    else
    {
      *(a2 + 280) = 1;
      v5 = *(a2 + 272);
      if (v5)
      {
        CMBufferQueueMarkEndOfData(v5);
      }
    }

    CFRelease(v3);
  }
}

void remakerFamily_MediaProcessorDidReachEndOfOutputData(uint64_t a1, uint64_t a2)
{
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  CMBaseObjectGetDerivedStorage();
  if (v3)
  {
    OUTLINED_FUNCTION_16_19();
    if (v5)
    {
      OUTLINED_FUNCTION_239();
      FigSignalErrorAtGM();
    }

    else
    {
      *(a2 + 296) = 1;
      if (*(a2 + 356) && *(a2 + 288))
      {
        CFRetain(a2);
        dispatch_async_f(*(a2 + 368), a2, remakerFamily_startNextPassWork);
      }

      else if (*(v4 + 184))
      {
        remakerFamily_markFormatWriterTrackWithEOD(a2);
      }

      else
      {
        v6 = *(*(a2 + 152) + 72);
        if (v6)
        {
          CMBufferQueueMarkEndOfData(v6);
        }
      }

      remakerFamily_performLastStepIfComplete(v3);
    }

    CFRelease(v3);
  }
}

uint64_t remakerFamily_Invalidate(const void *a1)
{
  cf[23] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf[0] = 0;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (FigAtomicCompareAndSwap32())
  {
    remakerFamily_SetRemakerState(a1, 8, 0);
    v3 = *(DerivedStorage + 56);
    if (v3)
    {
      v4 = *(DerivedStorage + 184);
      if (v4)
      {
        if (dispatch_get_current_queue() == v3)
        {
          FigBaseObject = FigFormatWriterGetFigBaseObject(v4);
          if (FigBaseObject)
          {
            v9 = FigBaseObject;
            v10 = *(*(CMBaseObjectGetVTable() + 8) + 24);
            if (v10)
            {
              v10(v9);
            }
          }
        }

        else
        {
          dispatch_sync_f(v3, v4, remakerFamily_InvalidateWriter);
          v5 = *(DerivedStorage + 80);
          if (v5 && CFArrayGetCount(v5) >= 1)
          {
            OUTLINED_FUNCTION_18_17();
            do
            {
              if (*(OUTLINED_FUNCTION_45_7() + 47))
              {
                if (dword_1EAF17020)
                {
                  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                  OUTLINED_FUNCTION_7();
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                FigSemaphoreSignal();
              }

              OUTLINED_FUNCTION_19_19();
            }

            while (!v7);
          }
        }
      }
    }

    if (*(DerivedStorage + 376))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListeners();
      FigPlaybackBossInvalidate(*(DerivedStorage + 376));
    }

    if (*(DerivedStorage + 184))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListeners();
      v11 = FigFormatWriterGetFigBaseObject(*(DerivedStorage + 184));
      if (v11)
      {
        v12 = v11;
        v13 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v13)
        {
          v13(v12);
        }
      }
    }

    v14 = *(DerivedStorage + 80);
    if (v14 && CFArrayGetCount(v14) >= 1)
    {
      OUTLINED_FUNCTION_18_17();
      do
      {
        v15 = OUTLINED_FUNCTION_45_7();
        remakerFamily_removeTrackNotifications(v15);
        OUTLINED_FUNCTION_19_19();
      }

      while (!v7);
    }

    v16 = *(DerivedStorage + 56);
    if (v16 && dispatch_get_current_queue() != v16)
    {
      v17 = OUTLINED_FUNCTION_383();
      dispatch_sync_f(v17, v18, v19);
    }

    if (a1)
    {
      v20 = CFGetTypeID(a1);
      if (v20 == FigAssetWriterGetTypeID())
      {
        FigSemaphoreSignal();
      }

      v21 = CFGetTypeID(a1);
      if (v21 == FigRemakerGetTypeID())
      {
        if (*(DerivedStorage + 20))
        {
          if (*(DerivedStorage + 168))
          {
            CMBaseObject = CMByteStreamGetCMBaseObject();
            v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v23)
            {
              v23(CMBaseObject, *MEMORY[0x1E695FFA0], *MEMORY[0x1E695E480], cf);
              if (cf[0])
              {
                FigFileDeleteFile();
                if (cf[0])
                {
                  CFRelease(cf[0]);
                  cf[0] = 0;
                }
              }
            }
          }
        }
      }
    }

    v24 = *(DerivedStorage + 80);
    if (v24 && CFArrayGetCount(v24) >= 1)
    {
      OUTLINED_FUNCTION_18_17();
      do
      {
        v25 = OUTLINED_FUNCTION_45_7();
        remakerFamily_invalidateTrack(v25);
        OUTLINED_FUNCTION_19_19();
      }

      while (!v7);
    }

    if (a1)
    {
      v26 = CFGetTypeID(a1);
      if (v26 == FigRemakerGetTypeID())
      {
        goto LABEL_58;
      }
    }

    v27 = *(DerivedStorage + 216);
    if (v27)
    {
      CFRelease(v27);
      *(DerivedStorage + 216) = 0;
    }

    v28 = *(DerivedStorage + 168);
    if (v28)
    {
      CFRelease(v28);
      *(DerivedStorage + 168) = 0;
    }

    v29 = *(DerivedStorage + 184);
    if (v29)
    {
      CFRelease(v29);
      *(DerivedStorage + 184) = 0;
    }

    if (a1)
    {
LABEL_58:
      v30 = CFGetTypeID(a1);
      if (v30 == FigAssetWriterGetTypeID())
      {
        v31 = CMBaseObjectGetDerivedStorage();
        if (*(v31 + 368) == 1)
        {
          v32 = v31;
          if (!remakerFamily_postDarwinNotificationWithState(*(v31 + 352), *(v31 + 360), 0))
          {
            *(v32 + 368) = 0;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t remakerFamily_createTempFile(uint64_t a1, uint64_t a2, const __CFURL *a3, const char *a4, void *a5, void *a6)
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E695E480];
  if (a2)
  {
    v10 = FigCFURLCreateFromTemporaryFileWithDirectoryAndSuffix();
    if (!v10)
    {
      v17 = 0;
      v16 = 0;
      goto LABEL_27;
    }

LABEL_20:
    v17 = remakerFamily_associateAdditionalURLWithExistingSandboxRegistration();
    v16 = 0;
    if (v17)
    {
      goto LABEL_27;
    }

LABEL_21:
    if (a5)
    {
      v17 = CMByteStreamCreateForFileURL();
      if (v17)
      {
        goto LABEL_27;
      }

      *a5 = 0;
    }

    if (a6)
    {
      *a6 = v10;
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  if (a3)
  {
    remakerFamily_MapError(a1, 6u);
    bzero(buffer, 0x400uLL);
    if (!CFURLGetFileSystemRepresentation(a3, 1u, buffer, 1024))
    {
      goto LABEL_19;
    }

    v12 = _amkrtemp();
    if (v12)
    {
      v13 = v12;
      v14 = v12;
      if (a4)
      {
        v14 = buffer;
        snprintf(buffer, 0x400uLL, "%s%s", v12, a4);
      }

      v15 = strlen(v14);
      v10 = CFURLCreateFromFileSystemRepresentation(*v9, v14, v15, 0);
      free(v13);
      if (v10)
      {
        goto LABEL_20;
      }
    }

    v18 = FigSignalErrorAtGM();
    if (!v18)
    {
LABEL_19:
      v10 = 0;
      goto LABEL_20;
    }

    v17 = v18;
    v16 = FigCFURLCreateFromSystemTemporaryDirectory();
    if (!v16)
    {
LABEL_26:
      v10 = 0;
      goto LABEL_27;
    }

    v10 = FigCFURLCreateFromTemporaryFileWithDirectoryAndSuffix();
    if (v10)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v16 = FigCFURLCreateFromSystemTemporaryDirectory();
    if (!v16)
    {
      v10 = 0;
      v17 = 0;
      goto LABEL_27;
    }

    v10 = FigCFURLCreateFromTemporaryFileWithDirectoryAndSuffix();
    v17 = 0;
    if (v10)
    {
      goto LABEL_21;
    }
  }

LABEL_27:
  if (v10)
  {
    CFRelease(v10);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v17;
}

uint64_t remakerFamily_generateLoggingIdentifier(int a1, char *a2)
{
  LoggingIdentifierOfLength = FigCFStringCreateLoggingIdentifierOfLength();
  if (!LoggingIdentifierOfLength)
  {
    return 0;
  }

  v5 = LoggingIdentifierOfLength;
  v13 = LoggingIdentifierOfLength;
  v6 = OUTLINED_FUNCTION_383();
  v9 = CFStringCreateWithFormat(v6, v7, v8, a1, v13);
  if (v9)
  {
    v10 = v9;
    if (CFStringGetCString(v9, a2, 10, 0x600u))
    {
      v11 = 0;
    }

    else
    {
      v11 = 4294955190;
    }

    CFRelease(v5);
    v5 = v10;
  }

  else
  {
    v11 = 0;
  }

  CFRelease(v5);
  return v11;
}

uint64_t remakerFamily_createVirtualCaptureCardAndByteStream()
{
  result = FigVirtualCaptureCardGetSingleton();
  if (!result)
  {
    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t remakerFamily_startSourceRendererOfTrack(uint64_t a1, CMTime *a2)
{
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *(a1 + 56);
  if (v6)
  {
    v16 = *a2;
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v7)
    {
      v17 = v16;
      started = v7(v6, &v17);
      if (started && started != -12782)
      {
        goto LABEL_15;
      }
    }
  }

  if (!*(a1 + 168))
  {
    goto LABEL_13;
  }

  if (*(a1 + 428) == 1)
  {
    v17 = *a2;
    OUTLINED_FUNCTION_89();
    if (!FigVideoCompositionInstructionArrayIsValid(v10, &v17, &v16))
    {
      v15 = CFGetTypeID(v5);
      remakerFamily_MapError(v15, 4u);
      started = FigSignalErrorAtGM();
      goto LABEL_15;
    }
  }

  *(a1 + 184) = 0;
  v17 = *a2;
  OUTLINED_FUNCTION_89();
  started = FigVideoCompositionProcessorStartRenderingFramesForTimeRange(v11);
  if (!started)
  {
LABEL_13:
    if (!*(a1 + 200))
    {
      v13 = 0;
      goto LABEL_17;
    }

    *(a1 + 216) = 0;
    v17 = *a2;
    OUTLINED_FUNCTION_89();
    started = FigAudioQueueOfflineMixerStartRenderingForTimeRange(v12, &v17, &v16);
  }

LABEL_15:
  v13 = started;
LABEL_17:
  CFRelease(v5);
  return v13;
}

uint64_t remakerFamily_createAudioMixdownSourceTrack(const void *a1, uint64_t a2, const void *a3, const void *a4, const void *a5, const void *a6, uint64_t a7, void *a8, intptr_t *a9)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v57[0] = 0;
  v55 = 0;
  cf = 0;
  v54 = 0;
  v15 = *MEMORY[0x1E695E4C0];
  v16 = *(DerivedStorage + 72);
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v17)
  {
    goto LABEL_13;
  }

  cf1 = a6;
  v18 = v17(v16, a2, &v54);
  if (v18)
  {
    goto LABEL_58;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 32))
  {
LABEL_13:
    v23 = 0;
    v29 = 4294954514;
LABEL_14:
    v27 = v15;
    goto LABEL_15;
  }

  v19 = OUTLINED_FUNCTION_265();
  v18 = v20(v19);
  if (v18)
  {
    goto LABEL_58;
  }

  if (!a1)
  {
    OUTLINED_FUNCTION_82();
    v18 = FigSignalErrorAtGM();
    goto LABEL_58;
  }

  v21 = CFGetTypeID(a1);
  v18 = remakerFamily_copyFormatDescription(v21, v54, &cf);
  if (v18)
  {
LABEL_58:
    v29 = v18;
    v23 = 0;
    goto LABEL_14;
  }

  Channel = remakerFamily_createChannel(a1, a2, 1936684398, v57);
  v23 = v57[0];
  if (Channel || (v24 = OUTLINED_FUNCTION_69_0(), Channel = remakerFamily_setupMultiPassTrackIfNecessary(v24, v25), Channel))
  {
    v29 = Channel;
    goto LABEL_14;
  }

  *(v23 + 48) = 0;
  *(v23 + 50) = 1;
  *(v23 + 40) = CFRetain(cf);
  v26 = *(DerivedStorage + 440);
  v27 = v15;
  if (v26)
  {
    v27 = SecTaskCopyValueForEntitlement(v26, @"com.apple.coreaudio.allow-amr-decode", 0);
  }

  if (FigAudioFormatDescriptionGetCinematicAudioEffectEligibility())
  {
    v57[1] = 0;
    v57[2] = 0;
    CMAudioFormatDescriptionGetMostCompatibleFormatAndChannelLayout();
    v28 = FigAudioChannelLayoutIsSupportedForCinematicAudio() == 0;
  }

  else
  {
    v28 = 0;
  }

  v31 = CFGetAllocator(a1);
  v32 = *MEMORY[0x1E695E4D0];
  RenderPipelineOptions = remakerFamily_createRenderPipelineOptions(v31, cf, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], *MEMORY[0x1E695E4D0] == v27, 0, *(DerivedStorage + 424), 0, 0, *(DerivedStorage + 32), v28, a8, 0, DerivedStorage + 41, a2, &v55);
  if (RenderPipelineOptions)
  {
    goto LABEL_51;
  }

  v34 = CFGetAllocator(a1);
  RenderPipelineOptions = FigAudioQueueRenderPipelineCreate(v34, v55, (v23 + 56));
  if (RenderPipelineOptions)
  {
    goto LABEL_51;
  }

  FigBaseObject = FigRenderPipelineGetFigBaseObject(*(v23 + 56));
  v36 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v36)
  {
    v36(FigBaseObject, @"HandleFormatDescriptionChanges", v32);
  }

  v37 = FigRenderPipelineGetFigBaseObject(*(v23 + 56));
  v38 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v38)
  {
    v38(v37, @"AllowedToUseHardware", v15);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  RenderPipelineOptions = FigNotificationCenterAddWeakListeners();
  if (RenderPipelineOptions)
  {
    goto LABEL_51;
  }

  if (a3)
  {
    TypeID = CFDictionaryGetTypeID();
    if (TypeID != CFGetTypeID(a3))
    {
      v50 = CFGetTypeID(a1);
      remakerFamily_MapError(v50, 2u);
      OUTLINED_FUNCTION_82();
      goto LABEL_50;
    }

    v40 = FigRenderPipelineGetFigBaseObject(*(v23 + 56));
    v41 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v41)
    {
      goto LABEL_52;
    }

    RenderPipelineOptions = v41(v40, @"AudioCurves", a3);
    if (RenderPipelineOptions)
    {
      goto LABEL_51;
    }
  }

  if (a4)
  {
    v42 = MTAudioProcessingTapGetTypeID();
    if (v42 != CFGetTypeID(a4))
    {
      goto LABEL_49;
    }

    FigRenderPipelineGetFigBaseObject(*(v23 + 56));
    if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
LABEL_52:
      v29 = 4294954514;
      goto LABEL_15;
    }

    v43 = OUTLINED_FUNCTION_39_9();
    RenderPipelineOptions = v44(v43);
    if (RenderPipelineOptions)
    {
LABEL_51:
      v29 = RenderPipelineOptions;
      goto LABEL_15;
    }
  }

  if (!a5)
  {
    goto LABEL_44;
  }

  v45 = CFDataGetTypeID();
  if (v45 != CFGetTypeID(a5))
  {
LABEL_49:
    OUTLINED_FUNCTION_82();
LABEL_50:
    RenderPipelineOptions = FigSignalErrorAtGM();
    goto LABEL_51;
  }

  FigRenderPipelineGetFigBaseObject(*(v23 + 56));
  if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    goto LABEL_52;
  }

  v46 = OUTLINED_FUNCTION_39_9();
  RenderPipelineOptions = v47(v46);
  if (RenderPipelineOptions)
  {
    goto LABEL_51;
  }

LABEL_44:
  if (cf1 && !CFEqual(cf1, @"TimeDomain") && !CFEqual(cf1, @"Spectral") && !CFEqual(cf1, @"LowQualityZeroLatency") && !CFEqual(cf1, @"Varispeed"))
  {
    goto LABEL_49;
  }

  FigRenderPipelineGetFigBaseObject(*(v23 + 56));
  if (*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    v48 = OUTLINED_FUNCTION_39_9();
    v49(v48);
  }

  v29 = 0;
  *a9 = v23;
  v57[0] = 0;
  v23 = 0;
LABEL_15:
  remakerFamily_discardChannel(a1, v23);
  if (v55)
  {
    CFRelease(v55);
    v55 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  return v29;
}

uint64_t remakerfamily_updateClientPID()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 32))
  {
    v2 = 30;
  }

  else
  {
    v2 = 31;
  }

  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, (DerivedStorage + 36));
  v4 = *(DerivedStorage + 376);
  if (v4)
  {
    FigPlaybackBossSetClientPID(v4, v3);
  }

  v5 = *(DerivedStorage + 184);
  if (v5)
  {
    FigBaseObject = FigFormatWriterGetFigBaseObject(v5);
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v6)
    {
      v6(FigBaseObject, @"ClientPID", v3);
    }
  }

  if (!*(DerivedStorage + 56) || !FigDispatchQueueSetPriorityAndClientPID())
  {
    v7 = *(DerivedStorage + 80);
    if (v7)
    {
      if (CFArrayGetCount(v7) >= 1)
      {
        OUTLINED_FUNCTION_18_17();
        propertyKey = *MEMORY[0x1E69835A8];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 80), FigBaseObject);
          v9 = *(ValueAtIndex + 36);
          if (v9)
          {
            OUTLINED_FUNCTION_44_10(v9);
            if (!*(ValueAtIndex + 48))
            {
              v10 = *(ValueAtIndex + 8);
              if (v10 == 1986618469 || v10 == 1635088502)
              {
                VTCompressionSession = FigMediaProcessorGetVTCompressionSession(*(ValueAtIndex + 36));
                VTSessionSetProperty(VTCompressionSession, propertyKey, v3);
              }
            }
          }

          if (*(ValueAtIndex + 8) == 1936684398)
          {
            v13 = *(ValueAtIndex + 25);
            if (v13)
            {
              FigAudioQueueOfflineMixerSetProperty(v13, @"AudioQueueOfflineMixer_ClientPID", v3);
            }
          }

          v14 = *(ValueAtIndex + 7);
          if (v14)
          {
            v15 = FigRenderPipelineGetFigBaseObject(v14);
            v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v16)
            {
              v16(v15, @"ClientPID", v3);
            }
          }

          v17 = *(ValueAtIndex + 29);
          if (v17)
          {
            OUTLINED_FUNCTION_44_10(v17);
            if (*(*(ValueAtIndex + 19) + 160))
            {
              v18 = *(ValueAtIndex + 30);
              if (v18)
              {
                Count = CFArrayGetCount(v18);
                if (Count >= 2)
                {
                  v20 = Count;
                  for (i = 1; i != v20; ++i)
                  {
                    v22 = CFArrayGetValueAtIndex(*(ValueAtIndex + 30), i);
                    OUTLINED_FUNCTION_44_10(v22);
                  }
                }
              }
            }
          }

          v23 = *(ValueAtIndex + 33);
          if (v23)
          {
            OUTLINED_FUNCTION_44_10(v23);
          }

          if (*(ValueAtIndex + 8) == 1986618469)
          {
            v24 = *(ValueAtIndex + 21);
            if (v24)
            {
              FigVideoCompositionProcessorSetProperty(v24, @"VideoCompositionProcessor_ClientPID", v3);
            }
          }

          if (*(ValueAtIndex + 356))
          {
            v25 = *(ValueAtIndex + 52);
            if (v25)
            {
              FigPlaybackBossSetClientPID(v25, v3);
            }
          }

          ++FigBaseObject;
        }

        while (FigBaseObject != v2);
      }
    }
  }

  CFRelease(v3);
  return 0;
}

BOOL remakerFamily_PostFailureNotificationIfError(const void *a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5)
{
  v30 = __PAIR64__(a5, a4);
  v55 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    return a3 != 0;
  }

  v9 = DerivedStorage;
  OUTLINED_FUNCTION_16_19();
  if (v10)
  {
    FigSignalErrorAtGM();
    return a3 != 0;
  }

  if (dword_1EAF17020)
  {
    OUTLINED_FUNCTION_147();
    v11 = OUTLINED_FUNCTION_126();
    if (os_log_type_enabled(v11, BYTE3(type)))
    {
      v12 = HIDWORD(type);
    }

    else
    {
      v12 = HIDWORD(type) & 0xFFFFFFFE;
    }

    if (v12)
    {
      remakerFamily_StateDesc(*v9);
      v32 = 136315650;
      OUTLINED_FUNCTION_2_6();
      *v35 = a1;
      *&v35[8] = 2082;
      v36 = v13;
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v14 = CFGetTypeID(a1);
  if (v14 == FigAssetReaderGetTypeID())
  {
    v15 = @"AssetReader_Failed";
    goto LABEL_14;
  }

  v16 = CFGetTypeID(a1);
  if (v16 == FigAssetWriterGetTypeID())
  {
    v15 = @"AssetWriter_Failed";
LABEL_14:
    if (!a3)
    {
      return a3 != 0;
    }

    goto LABEL_18;
  }

  v15 = @"Remaker_Failed";
  if (!a3)
  {
    return a3 != 0;
  }

LABEL_18:
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  remakerfamily_setFailureStatusIfError(a1, a3);
  if (a2 && dword_1EAF17020)
  {
    OUTLINED_FUNCTION_147();
    v22 = OUTLINED_FUNCTION_126();
    if (os_log_type_enabled(v22, BYTE3(type)))
    {
      v23 = HIDWORD(type);
    }

    else
    {
      v23 = HIDWORD(type) & 0xFFFFFFFE;
    }

    if (v23)
    {
      v32 = 136315906;
      OUTLINED_FUNCTION_114();
      *v35 = a2;
      OUTLINED_FUNCTION_0_72();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v30 == 1)
  {
    remakerFamily_invalidateAllMediaProcessors();
  }

  remakerFamily_safelyPostNotification(a1, SHIDWORD(v30), v15, Mutable, a1, v19, v20, v21, v28, v29, v30, type, SBYTE2(type), BYTE3(type), SHIDWORD(type), v32, v33, *v34, *&v34[4], *&v35[2], v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
  v24 = CFGetTypeID(a1);
  if (v24 == FigAssetReaderGetTypeID())
  {
    v25 = CMBaseObjectGetDerivedStorage();
    if (CFArrayGetCount(*(v25 + 80)) >= 1)
    {
      OUTLINED_FUNCTION_18_17();
      do
      {
        if (*(*(OUTLINED_FUNCTION_45_7() + 19) + 80))
        {
          FigSemaphoreSignal();
        }

        OUTLINED_FUNCTION_19_19();
      }

      while (!v26);
    }
  }

  else
  {
    v27 = CFGetTypeID(a1);
    if (v27 == FigAssetWriterGetTypeID())
    {
      FigSemaphoreSignal();
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return a3 != 0;
}

void remakerFamily_MultiPassBossBecameIdle(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, unsigned int a15, int a16, int a17, int a18, __int16 a19, uint64_t a20, __int16 a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  OUTLINED_FUNCTION_38_2();
  v53 = v52;
  v54 = FigCFWeakReferenceHolderCopyReferencedObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v54)
  {
    v56 = DerivedStorage;
    OUTLINED_FUNCTION_16_19();
    if (v57)
    {
      FigSignalErrorAtGM();
    }

    else
    {
      *(v53 + 424) = 1;
      if (dword_1EAF17020)
      {
        OUTLINED_FUNCTION_147();
        v58 = OUTLINED_FUNCTION_126();
        if (os_log_type_enabled(v58, type))
        {
          v59 = a15;
        }

        else
        {
          v59 = a15 & 0xFFFFFFFE;
        }

        if (v59)
        {
          remakerFamily_StateDesc(*v56);
          OUTLINED_FUNCTION_2_6();
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v60 = OUTLINED_FUNCTION_69_0();
      if (remakerFamily_HandleNotificationErrorPayload(v60, v61))
      {
        v62 = *(v53 + 408);
        if (v62)
        {
          dispatch_semaphore_signal(v62);
        }
      }

      else
      {
        remakerFamily_startNextSegmentIfMultiPassComplete(v53);
      }
    }

    CFRelease(v54);
  }

  OUTLINED_FUNCTION_426_1();
}

uint64_t remakerFamily_startNextSegmentIfMultiPassComplete(uint64_t a1)
{
  theArray = 0;
  if (!*(a1 + 356))
  {
    OUTLINED_FUNCTION_303();
    v3 = FigSignalErrorAtGM();
    goto LABEL_51;
  }

  v2 = a1;
  v3 = remakerFamily_createRelatedTrackArray(a1, &theArray);
  if (v3)
  {
LABEL_51:
    v14 = v3;
    goto LABEL_45;
  }

  if (CFArrayGetCount(theArray) >= 1)
  {
    OUTLINED_FUNCTION_18_17();
    v4 = 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v1);
      v6 = ValueAtIndex;
      if (ValueAtIndex[52] && !*(ValueAtIndex + 424))
      {
        v4 = 0;
      }

      if (ValueAtIndex[7] && !*(ValueAtIndex + 64))
      {
        v4 = 0;
      }

      if (ValueAtIndex[25] && !*(ValueAtIndex + 216))
      {
        v4 = 0;
      }

      if (ValueAtIndex[21] && !*(ValueAtIndex + 184))
      {
        v4 = 0;
      }

      v7 = ValueAtIndex[19];
      v8 = *(v7 + 72);
      if (v8)
      {
        if (!CMBufferQueueIsEmpty(v8))
        {
          v4 = 0;
        }

        v7 = v6[19];
      }

      if (*(v7 + 112) && !*(v7 + 200))
      {
        v4 = 0;
      }

      if (v6[51])
      {
        v2 = v6;
      }

      OUTLINED_FUNCTION_19_19();
    }

    while (!v9);
    if (!v4)
    {
      v14 = 0;
      goto LABEL_45;
    }
  }

  v10 = FigCFWeakReferenceHolderCopyReferencedObject();
  CMBaseObjectGetDerivedStorage();
  if (v10)
  {
    OUTLINED_FUNCTION_16_19();
    if (v11)
    {
      OUTLINED_FUNCTION_303();
      FigSignalErrorAtGM();
LABEL_35:
      v14 = 0;
      goto LABEL_36;
    }

    v12 = *(v2 + 400);
    if (!v12)
    {
      goto LABEL_35;
    }

    if (CFArrayGetCount(v12) < 1)
    {
      goto LABEL_35;
    }

    CFArrayRemoveValueAtIndex(*(v2 + 400), 0);
    v13 = *(v2 + 400);
    if (!v13 || CFArrayGetCount(v13) < 1)
    {
      goto LABEL_35;
    }

    v19 = CFArrayGetValueAtIndex(*(v2 + 400), 0);
    v20 = v19[1];
    v23[0] = *v19;
    v23[1] = v20;
    v23[2] = v19[2];
    Segment = remakerFamily_resetSourceRenderersForNextSegment(v2, v23, 0);
  }

  else
  {
    OUTLINED_FUNCTION_303();
    Segment = FigSignalErrorAtGM();
  }

  v14 = Segment;
LABEL_36:
  v15 = *(v2 + 400);
  if (!v15 || !CFArrayGetCount(v15))
  {
    v16 = *(v2 + 408);
    if (v16)
    {
      dispatch_semaphore_signal(v16);
    }

    v17 = *(*(v2 + 152) + 72);
    if (v17)
    {
      CMBufferQueueMarkEndOfData(v17);
    }
  }

  if (v10)
  {
    CFRelease(v10);
  }

LABEL_45:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v14;
}

void remakerFamily_markFormatWriterTrackWithEOD(uint64_t a1)
{
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  queue = 0;
  if (v2)
  {
    v4 = *(DerivedStorage + 184);
    v5 = *(a1 + 300);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v6)
    {
      v6(v4, v5, @"SourceSampleBufferQueue", *MEMORY[0x1E695E480], &queue);
      if (queue)
      {
        CMBufferQueueMarkEndOfData(queue);
        FigBufferQueueRelease();
      }
    }

    CFRelease(v2);
  }
}

uint64_t remakerFamily_setFormatWriterTrackProperties(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = 0x100000;
  valuePtr = 0;
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  context[0] = v7;
  context[1] = a2;
  if (v7)
  {
    v8 = v7;
    v9 = *MEMORY[0x1E695E480];
    v10 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    v11 = *(DerivedStorage + 184);
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v12)
    {
      v12(v11, a2, @"PreferredChunkAlignment", v10);
    }

    v13 = CFNumberCreate(v9, kCFNumberIntType, &v18);
    v14 = *(DerivedStorage + 184);
    v15 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v15)
    {
      v15(v14, a2, @"PreferredChunkSize", v13);
    }

    if (a4)
    {
      CFDictionaryApplyFunction(a4, remaker_formatWriterSetOneTrackProperty, context);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    CFRelease(v8);
  }

  return 0;
}

const void *remaker_formatWriterSetOneTrackProperty(const void *cf, uint64_t a2, uint64_t *a3)
{
  if (a3)
  {
    v3 = cf;
    if (cf)
    {
      v5 = *a3;
      v6 = *(a3 + 2);
      v7 = CFGetTypeID(cf);
      cf = CFStringGetTypeID();
      if (v7 == cf)
      {
        if (v5)
        {
          if (v6 >= 1)
          {
            VTable = CMBaseObjectGetVTable();
            v9 = *(VTable + 16);
            cf = (VTable + 16);
            v10 = *(v9 + 24);
            if (v10)
            {

              return v10(v5, v6, v3, a2);
            }
          }
        }
      }
    }
  }

  return cf;
}

uint64_t remakerFamily_createRemakerVideoDecoderSpecification(const void *a1, uint64_t a2, __CFDictionary **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    return 4294955190;
  }

  v6 = DerivedStorage;
  *a3 = 0;
  v7 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294954510;
  }

  v9 = Mutable;
  v10 = *(v6 + 427);
  v11 = *MEMORY[0x1E695E4D0];
  if (v10)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69841F8], *MEMORY[0x1E695E4D0]);
  }

  CFDictionaryAddValue(v9, *MEMORY[0x1E6984200], v11);
  result = 0;
  *a3 = v9;
  return result;
}

uint64_t remakerFamily_setVideoRenderPipelineProperties(int a1, uint64_t a2, int a3, int a4, const opaqueCMFormatDescription *a5, const void *a6, int a7, int a8, uint64_t a9, CFDictionaryRef theDict)
{
  v57 = 0;
  v15 = *(a2 + 56);
  if (a7)
  {
    v16 = 0;
  }

  else
  {
    v16 = -20;
  }

  valuePtr = v16;
  v17 = *MEMORY[0x1E695E480];
  v18 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigBaseObject = FigRenderPipelineGetFigBaseObject(v15);
  v21 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v21)
  {
    goto LABEL_15;
  }

  v54 = DerivedStorage;
  v22 = *MEMORY[0x1E695E4D0];
  if (v21(FigBaseObject, @"ObeyEmptyMediaMarkers", *MEMORY[0x1E695E4D0]))
  {
    goto LABEL_58;
  }

  if (a3)
  {
    v23 = v22;
  }

  else
  {
    v23 = *MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigRenderPipelineGetFigBaseObject(v15);
  v24 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v24)
  {
    goto LABEL_15;
  }

  if (v24(FigBaseObject, @"RenderEmptyMedia", v23))
  {
LABEL_58:
    OUTLINED_FUNCTION_37_9();
    goto LABEL_17;
  }

  v25 = FigRenderPipelineGetFigBaseObject(v15);
  v26 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v26)
  {
LABEL_15:
    v17 = 0;
    goto LABEL_16;
  }

  if (v26(v25, @"VideoDecoderPriority", v18))
  {
    goto LABEL_58;
  }

  if (a8)
  {
    MaxLogicalCoreCount = 1;
  }

  else
  {
    MaxLogicalCoreCount = FigThreadGetMaxLogicalCoreCount();
  }

  v57 = MaxLogicalCoreCount;
  v17 = CFNumberCreate(v17, kCFNumberCFIndexType, &v57);
  v29 = FigRenderPipelineGetFigBaseObject(v15);
  v30 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v30)
  {
    v30(v29, @"VideoDecoderThreadCount", v17);
  }

  if (a6)
  {
    v31 = CFGetTypeID(a6);
    if (v31 == CFStringGetTypeID())
    {
      goto LABEL_62;
    }
  }

  v58 = 0;
  if (a5 && CMFormatDescriptionGetExtensions(a5))
  {
    Int32IfPresent = FigCFDictionaryGetInt32IfPresent();
    if (v58 > 1 && Int32IfPresent != 0)
    {
      a6 = *MEMORY[0x1E6983A20];
    }
  }

  if (a6)
  {
LABEL_62:
    v34 = CFGetTypeID(a6);
    if (v34 == CFStringGetTypeID())
    {
      v35 = FigRenderPipelineGetFigBaseObject(*(a2 + 56));
      v36 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v36)
      {
        goto LABEL_16;
      }

      v37 = v36(v35, @"FieldMode", a6);
      if (v37)
      {
        goto LABEL_59;
      }
    }
  }

  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E6983DC0]);
    v39 = CFDictionaryGetValue(theDict, *MEMORY[0x1E6983DD8]);
    v40 = CFDictionaryGetValue(theDict, *MEMORY[0x1E6983DE0]);
    if (Value)
    {
      v41 = FigRenderPipelineGetFigBaseObject(v15);
      v42 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v42)
      {
        goto LABEL_16;
      }

      v37 = v42(v41, @"ColorPrimaries", Value);
      if (v37)
      {
        goto LABEL_59;
      }
    }

    if (v39)
    {
      v43 = FigRenderPipelineGetFigBaseObject(v15);
      v44 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v44)
      {
        goto LABEL_16;
      }

      v37 = v44(v43, @"TransferFunction", v39);
      if (v37)
      {
        goto LABEL_59;
      }
    }

    if (v40)
    {
      v45 = FigRenderPipelineGetFigBaseObject(v15);
      v46 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v46)
      {
        goto LABEL_16;
      }

      v37 = v46(v45, @"YCbCrMatrix", v40);
      if (v37)
      {
        goto LABEL_59;
      }
    }
  }

  if (a9)
  {
    v47 = FigRenderPipelineGetFigBaseObject(v15);
    v48 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v48)
    {
      goto LABEL_16;
    }

    v37 = v48(v47, @"DecompressionSessionProperties", a9);
    if (v37)
    {
LABEL_59:
      FigBaseObject = v37;
      goto LABEL_17;
    }
  }

  if (!a4)
  {
    goto LABEL_54;
  }

  v49 = FigRenderPipelineGetFigBaseObject(v15);
  v50 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v50)
  {
LABEL_16:
    FigBaseObject = 4294954514;
    goto LABEL_17;
  }

  v37 = v50(v49, @"PreserveSyncFrames", v22);
  if (v37)
  {
    goto LABEL_59;
  }

LABEL_54:
  v51 = *(v54 + 464);
  if (v51)
  {
    v52 = FigRenderPipelineGetFigBaseObject(v15);
    v53 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v53)
    {
      v53(v52, @"PlaybackSessionID", v51);
    }
  }

  FigBaseObject = 0;
LABEL_17:
  if (v18)
  {
    CFRelease(v18);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return FigBaseObject;
}

uint64_t remakerFamily_createRemakerVideoEncoderSpecification(const void *a1, const __CFDictionary *a2, __CFDictionary **a3)
{
  if (!a3)
  {
    return 4294955190;
  }

  *a3 = 0;
  v5 = CFGetAllocator(a1);
  if (a2)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v5, 0, a2);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v7 = MutableCopy;
  if (!MutableCopy)
  {
    return 4294954510;
  }

  if (!CFDictionaryContainsKey(MutableCopy, *MEMORY[0x1E6983880]))
  {
    FigCFDictionarySetInt32();
  }

  CFDictionaryAddValue(v7, *MEMORY[0x1E6984270], *MEMORY[0x1E695E4D0]);
  result = 0;
  *a3 = v7;
  return result;
}

uint64_t remakerFamily_resetSourceRenderersForNextSegment(uint64_t a1, uint64_t a2, int a3)
{
  theArray = 0;
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  started = remakerFamily_createRelatedTrackArray(a1, &theArray);
  if (!started)
  {
    Count = CFArrayGetCount(theArray);
    if (Count < 1)
    {
LABEL_28:
      v30 = 0;
      goto LABEL_29;
    }

    v9 = Count;
    v10 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v10);
      v12 = ValueAtIndex;
      if (a3)
      {
        v13 = *(ValueAtIndex[19] + 72);
        if (v13)
        {
          started = CMBufferQueueReset(v13);
          if (started)
          {
            break;
          }
        }
      }

      if (v12[25])
      {
        *(v12 + 216) = 0;
        CMBufferQueueReset(v12[26]);
        started = FigAudioQueueOfflineMixerReset(v12[25], 1, 0);
        if (started)
        {
          break;
        }
      }

      v14 = v12[7];
      if (v14)
      {
        *(v12 + 64) = 0;
        v15 = *(*(CMBaseObjectGetVTable() + 16) + 64);
        if (v15)
        {
          started = v15(v14, a3);
          if (started && started != -12782)
          {
            break;
          }
        }
      }

      *(v12[19] + 200) = 0;
      if (v9 == ++v10)
      {
        v17 = 0;
        v18 = 12;
        while (1)
        {
          v19 = CFArrayGetValueAtIndex(theArray, v17);
          v27 = v19;
          if (*(v19 + 416))
          {
            *(v19 + 424) = 0;
            v28 = *(a1 + 400);
            if (v28)
            {
              v28 = CFArrayGetCount(v28);
              if (v28 > 1)
              {
                v18 = 2;
              }
            }

            v29 = *(v27 + 416);
            if (*(DerivedStorage + 136))
            {
              OUTLINED_FUNCTION_89();
              v19 = FigPlaybackBossSendSampleForTime(v29, &v32, v18);
            }

            else
            {
              OUTLINED_FUNCTION_24_12(v28, v20, v21, v22, v23, v24, v25, v26, v32, v33, v34, v35);
              OUTLINED_FUNCTION_89();
              v19 = FigPlaybackBossSendSamplesForTimeRange(v29, &v32, &v35, v18);
            }

            v30 = v19;
            if (v19)
            {
              goto LABEL_29;
            }
          }

          OUTLINED_FUNCTION_24_12(v19, v20, v21, v22, v23, v24, v25, v26, v32, v33, v34, v35);
          OUTLINED_FUNCTION_89();
          started = remakerFamily_startSourceRendererOfTrack(v27, &v32);
          if (started)
          {
            goto LABEL_34;
          }

          if (v9 == ++v17)
          {
            goto LABEL_28;
          }
        }
      }
    }
  }

LABEL_34:
  v30 = started;
LABEL_29:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v30;
}

uint64_t remakerFamily_setupCompressionMediaProcessorAndFileOutput(const void *a1, int a2, unsigned int a3, unsigned int a4, CMTime *a5, uint64_t a6, const __CFDictionary *a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11)
{
  v132 = __PAIR64__(a4, a3);
  HIDWORD(v131) = a2;
  theDict = a11;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v141 = **&MEMORY[0x1E6960C70];
  ExpectedDuration = remakerFamily_getExpectedDuration(a1, &v141);
  if (ExpectedDuration)
  {
    return ExpectedDuration;
  }

  if (!a10)
  {
    Count = 0;
    goto LABEL_7;
  }

  v18 = CFGetTypeID(a10);
  if (v18 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(a10);
    if (Count > 0)
    {
LABEL_7:
      v135 = a1;
      if (*(a8 + 360))
      {
        v129 = Count;
        propertyValueOut.value = 0;
        v20 = OUTLINED_FUNCTION_265();
        ValueAtIndex = CFArrayGetValueAtIndex(v20, v21);
        v11 = CFGetAllocator(a1);
        v128 = ValueAtIndex;
        if (a9)
        {
          ValueAtIndex = 0;
        }

        start = *(DerivedStorage + 88);
        duration = v141;
        CMTimeRangeMake(&valuePtr, &start, &duration);
        v23 = *(a8 + 360);
        v130 = DerivedStorage;
        if (*(DerivedStorage + 32))
        {
          v24 = 30;
        }

        else
        {
          v24 = 31;
        }

        v25 = a5;
        v26 = (a8 + 288);
        start = *v25;
        v27 = v25;
        v115 = v24;
        v109 = v23;
        OUTLINED_FUNCTION_23_19();
        ExpectedDuration = FigMediaProcessorCreateForVideoCompressionWithFrameSilo(v28, v29, v30, v31, v32, a7, a9, ValueAtIndex, &start, &valuePtr.start.value, v109, 0, v115, (a8 + 288));
        if (ExpectedDuration)
        {
          return ExpectedDuration;
        }

        VTCompressionSession = FigMediaProcessorGetVTCompressionSession(*v26);
        if (VTSessionCopyProperty(VTCompressionSession, *MEMORY[0x1E6983740], *MEMORY[0x1E695E480], &propertyValueOut))
        {
          v34 = *(a8 + 360);
          if (v34)
          {
            CFRelease(v34);
            *(a8 + 360) = 0;
          }

          FigMediaProcessorInvalidate(*v26);
          if (*v26)
          {
            CFRelease(*v26);
            *v26 = 0;
          }

          *(a8 + 356) = 0;
        }

        if (propertyValueOut.value)
        {
          CFRelease(propertyValueOut.value);
        }

        a5 = v27;
        DerivedStorage = v130;
      }

      else
      {
        v128 = 0;
      }

      if (!*(a8 + 356))
      {
        memset(&start, 0, sizeof(start));
        if (*(DerivedStorage + 32))
        {
          v35 = 10;
        }

        else
        {
          v35 = 2;
        }

        CMTimeMake(&start, v35, 1);
        memset(&duration, 0, sizeof(duration));
        if (*(DerivedStorage + 32))
        {
          v36 = 8;
        }

        else
        {
          v36 = 1;
        }

        CMTimeMake(&duration, v36, 1);
        if (Count < 2)
        {
          v47 = DerivedStorage;
          v48 = a5;
          v49 = v128;
          if (Count)
          {
            v50 = OUTLINED_FUNCTION_265();
            v49 = CFArrayGetValueAtIndex(v50, v51);
          }

          CFGetAllocator(a1);
          v11 = a9;
          if (a9)
          {
            v52 = 0;
          }

          else
          {
            v52 = v49;
          }

          *&propertyValueOut.value = *(v47 + 88);
          OUTLINED_FUNCTION_29_11(*(v47 + 104), v105, v106, v108, v112, v114, v116, v117, v118, v119, v121, v124, v126, v127, v128, v129, v130, a9, v131, v132, a6, a11, a1, cf, *(&cf + 1), v137, v138, v139.value, *&v139.timescale, v139.epoch, v140, *&v141.value);
          CMTimeRangeMake(&valuePtr, &propertyValueOut, &v139);
          *&propertyValueOut.value = *&v48->value;
          OUTLINED_FUNCTION_17_16();
          v125 = v53;
          v123 = v54;
          a5 = v48;
          v113 = v55;
          v111 = v56;
          OUTLINED_FUNCTION_23_19();
          ExpectedDuration = FigMediaProcessorCreateForVideoCompressionWithFormatWriter2(v57, v58, v59, v60, v61, a7, a9, v52, &propertyValueOut, &valuePtr.start.value, v111, v113, &v139.value, 629145600, &cf, 314572800, 0, v123, v125);
          if (ExpectedDuration)
          {
            return ExpectedDuration;
          }
        }

        else
        {
          CFGetAllocator(a1);
          *&propertyValueOut.value = *(DerivedStorage + 88);
          OUTLINED_FUNCTION_29_11(*(DerivedStorage + 104), v105, v106, v108, v112, v114, v116, v117, v118, v119, v121, v124, v126, v127, v128, v129, v130, a9, v131, v132, a6, a11, a1, cf, *(&cf + 1), v137, v138, v139.value, *&v139.timescale, v139.epoch, v140, *&v141.value);
          CMTimeRangeMake(&valuePtr, &propertyValueOut, &v139);
          *&propertyValueOut.value = *&a5->value;
          OUTLINED_FUNCTION_17_16();
          v122 = v37;
          v120 = v38;
          v110 = v39;
          v107 = v40;
          OUTLINED_FUNCTION_23_19();
          ExpectedDuration = FigMediaProcessorCreateForVideoCompressionWithVisualContextGroupAndFormatWriter(v41, v42, v43, v44, v45, a7, a10, v46, &valuePtr.start.value, v107, v110, &v139.value, 629145600, &cf, 314572800, 0, v120, v122);
          if (ExpectedDuration)
          {
            return ExpectedDuration;
          }
        }

        a1 = v135;
      }

      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_29();
      if (!v63 || (v64 = v62, v65 = v62 + 268, *&valuePtr.start.value = *MEMORY[0x1E6960CC0], valuePtr.start.epoch = *(MEMORY[0x1E6960CC0] + 16), start = *(v62 + 268), (CMTimeCompare(&valuePtr.start, &start) & 0x80000000) == 0) || (OUTLINED_FUNCTION_29(), !v63))
      {
LABEL_57:
        v76 = *(a8 + 288);
        v77 = MEMORY[0x1E695E4D0];
        if (v76)
        {
          SampleBufferProcessor = FigMediaProcessorGetSampleBufferProcessor(v76);
          if (!SampleBufferProcessor)
          {
            OUTLINED_FUNCTION_9_22();
            return FigSignalErrorAtGM();
          }

          FigBaseObject = FigSampleBufferProcessorGetFigBaseObject(SampleBufferProcessor);
          v80 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v80)
          {
            v80(FigBaseObject, @"SampleBufferProcessor_InheritOutputColorSpaceFromInput", *v77);
          }
        }

        v81 = (a8 + 328);
        OUTLINED_FUNCTION_29();
        if (v63)
        {
          v82 = *&a5->value;
          *(a8 + 344) = a5->epoch;
          *v81 = v82;
        }

        else
        {
          CMTimeMake(&valuePtr.start, 1, 30);
          *v81 = *&valuePtr.start.value;
          *(a8 + 344) = valuePtr.start.epoch;
        }

        CMNotificationCenterGetDefaultLocalCenter();
        ExpectedDuration = FigNotificationCenterAddWeakListeners();
        if (ExpectedDuration)
        {
          return ExpectedDuration;
        }

        v83 = FigMediaProcessorGetVTCompressionSession(*(a8 + 288));
        v139.value = 0;
        *&cf = 0;
        memset(&start, 0, sizeof(start));
        v145 = 0;
        v84 = CMBaseObjectGetDerivedStorage();
        if (remakerFamily_getExpectedEndTime(a1, &start))
        {
          OUTLINED_FUNCTION_37_9();
          v87 = 0;
        }

        else
        {
          v85 = CFGetAllocator(a1);
          if (theDict)
          {
            MutableCopy = CFDictionaryCreateMutableCopy(v85, 0, theDict);
          }

          else
          {
            MutableCopy = CFDictionaryCreateMutable(v85, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          }

          v87 = MutableCopy;
          if (!VTSessionCopySupportedPropertyDictionary(v83, &v139))
          {
            v81 = *MEMORY[0x1E69837C8];
            if (!CFDictionaryContainsKey(v139.value, *MEMORY[0x1E69837C8]))
            {
              v89 = 0;
LABEL_80:
              if (CFDictionaryContainsKey(v139.value, *MEMORY[0x1E69837F0]))
              {
                v90 = OUTLINED_FUNCTION_28_12();
                CFDictionaryAddValue(v90, v91, v92);
              }

              if (FigCFDictionaryGetBooleanIfPresent())
              {
                v93 = OUTLINED_FUNCTION_28_12();
                CFDictionarySetValue(v93, v94, v95);
              }

              v96 = *MEMORY[0x1E69836F8];
              if (CFDictionaryContainsKey(v139.value, *MEMORY[0x1E69836F8]) && !CFDictionaryContainsKey(v87, *MEMORY[0x1E6983700]))
              {
                LODWORD(valuePtr.start.value) = 30;
                v81 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
                if (!v81)
                {
                  OUTLINED_FUNCTION_9_22();
                  v99 = FigSignalErrorAtGM();
LABEL_130:
                  v11 = v99;
                  goto LABEL_106;
                }

                CFDictionaryAddValue(v87, v96, v81);
              }

              else
              {
                v81 = 0;
              }

              v97 = *MEMORY[0x1E6983740];
              if (!CFDictionaryContainsKey(v139.value, *MEMORY[0x1E6983740]))
              {
LABEL_94:
                if (*(a8 + 356))
                {
                  if (CFDictionaryContainsKey(v139.value, *MEMORY[0x1E6983558]))
                  {
                    LODWORD(valuePtr.start.value) = 0;
                    if (FigCFDictionaryGetInt32IfPresent())
                    {
                      CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
                      if (CFPreferenceNumberWithDefault <= 10)
                      {
                        v103 = 10;
                      }

                      else
                      {
                        v103 = CFPreferenceNumberWithDefault;
                      }

                      if (v103 >= 100)
                      {
                        v103 = 100;
                      }

                      a1 = v135;
                      LODWORD(valuePtr.start.value) = (v103 / 100.0 * SLODWORD(valuePtr.start.value));
                      FigCFDictionarySetInt32();
                    }
                  }
                }

                goto LABEL_103;
              }

              if (!*(a8 + 356))
              {
LABEL_103:
                if (*(v84 + 464))
                {
                  FigCFDictionarySetValue();
                }

                VTSessionSetProperties(v83, v87);
                v11 = 0;
                goto LABEL_106;
              }

              v98 = CFGetTypeID(a1);
              v99 = remakerFamily_createTempFile(v98, *(v84 + 232), *(v84 + 160), 0, 0, &cf);
              if (!v99)
              {
                FigFileDeleteFile();
                v100 = *MEMORY[0x1E695E480];
                v101 = cf;
                duration = *(v84 + 88);
                propertyValueOut = start;
                CMTimeRangeFromTimeToTime(&valuePtr, &duration, &propertyValueOut);
                v99 = VTMultiPassStorageCreate(v100, v101, &valuePtr, 0, (a8 + 392));
                if (!v99)
                {
                  CFDictionaryAddValue(v87, v97, *(a8 + 392));
                  goto LABEL_94;
                }
              }

              goto LABEL_130;
            }

            if (*(v84 + 32))
            {
              v88 = 80;
            }

            else
            {
              v88 = -20;
            }

            LODWORD(valuePtr.start.value) = v88;
            v89 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
            if (v89)
            {
              CFDictionaryAddValue(v87, v81, v89);
              goto LABEL_80;
            }

            OUTLINED_FUNCTION_9_22();
            FigSignalErrorAtGM();
            OUTLINED_FUNCTION_37_9();
LABEL_106:
            if (cf)
            {
              CFRelease(cf);
            }

            if (v89)
            {
              CFRelease(v89);
            }

            if (v81)
            {
              CFRelease(v81);
            }

            if (v139.value)
            {
              CFRelease(v139.value);
            }

            if (v87)
            {
              CFRelease(v87);
            }

            if (!v11)
            {
              remakerFamily_updateRunningStatsWithCompressionProperties(a1, theDict);
            }

            return v11;
          }

          OUTLINED_FUNCTION_37_9();
        }

        v89 = 0;
        goto LABEL_106;
      }

      v66 = *MEMORY[0x1E695E480];
      *&valuePtr.start.value = *v65;
      valuePtr.start.epoch = *(v65 + 16);
      v67 = CMTimeCopyAsDictionary(&valuePtr.start, v66);
      *&valuePtr.start.value = *(v64 + 244);
      valuePtr.start.epoch = *(v64 + 260);
      v68 = CMTimeCopyAsDictionary(&valuePtr.start, v66);
      v69 = *(a8 + 288);
      if (v69)
      {
        v70 = FigMediaProcessorGetSampleBufferProcessor(v69);
        if (v70)
        {
          v71 = v70;
          v72 = FigSampleBufferProcessorGetFigBaseObject(v70);
          v73 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v73)
          {
            v73(v72, @"SampleBufferProcessorProperty_ForceSyncSampleIntervalForSegmentation", v67);
          }

          v74 = FigSampleBufferProcessorGetFigBaseObject(v71);
          v75 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          a1 = v135;
          if (v75)
          {
            v75(v74, @"SampleBufferProcessorProperty_InitialSegmentStartTime", v68);
          }

          v11 = 0;
          if (v68)
          {
            goto LABEL_53;
          }

          goto LABEL_54;
        }

        OUTLINED_FUNCTION_9_22();
        v11 = FigSignalErrorAtGM();
      }

      else
      {
        v11 = 0;
      }

      a1 = v135;
      if (v68)
      {
LABEL_53:
        CFRelease(v68);
      }

LABEL_54:
      if (v67)
      {
        CFRelease(v67);
      }

      if (v11)
      {
        return v11;
      }

      goto LABEL_57;
    }
  }

  OUTLINED_FUNCTION_9_22();

  return FigSignalErrorAtGM();
}

uint64_t remakerFamily_updateRunningStatsWithCompressionProperties(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = result;
    Int32IfPresent = FigCFDictionaryGetInt32IfPresent();
    v4[497] = Int32IfPresent;
    if (Int32IfPresent)
    {
      if (v4[496])
      {
        v4[496] = 0;
      }
    }

    result = FigCFDictionaryGetInt32IfPresent();
    v4[504] = result;
  }

  return result;
}

void remakerFamily_registerPowerLogEvent()
{
  value = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  v1 = *(DerivedStorage + 72);
  v2 = *MEMORY[0x1E695E480];
  if (!v1)
  {
    goto LABEL_4;
  }

  CMBaseObject = FigAssetGetCMBaseObject(v1);
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
    *(DerivedStorage + 464) = 0;
    return;
  }

  v4(CMBaseObject, @"LoggingIdentifier", v2, &v13);
  v5 = v13;
  *(DerivedStorage + 464) = v13;
  if (v5)
  {
LABEL_4:
    Mutable = CFDictionaryCreateMutable(v2, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v7 = Mutable;
      mach_absolute_time();
      FigHostTimeToNanoseconds();
      FigCFDictionarySetInt32();
      FigCFDictionarySetValue();
      FigCFDictionarySetInt32();
      v8 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v8)
      {
        v9 = v8;
        FigBaseObject = FigFormatWriterGetFigBaseObject(v8);
        v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v11)
        {
          v12 = v11(FigBaseObject, @"EstimatedFileByteCount", v2, &value) == 0;
        }

        else
        {
          v12 = 0;
        }

        CFRelease(v9);
        if (value && v12)
        {
          CFDictionarySetValue(v7, *MEMORY[0x1E6962CE8], value);
          FigLogPowerEvent();
        }
      }

      CFRelease(v7);
      if (value)
      {
        CFRelease(value);
      }
    }

    else
    {
      FigSignalErrorAtGM();
    }
  }
}

void remakerFamily_ReportExportFileSizeStats(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v30 = **&MEMORY[0x1E6960C70];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 304))
  {
    return;
  }

  if (!*(DerivedStorage + 496))
  {
    return;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 24))
  {
    return;
  }

  v3 = OUTLINED_FUNCTION_383();
  if (v4(v3) || remakerFamily_getExpectedDuration(a1, &v30))
  {
    return;
  }

  if (v30.flags)
  {
    OUTLINED_FUNCTION_31_11(0, v5, v6, v7, v8, v9, v10, v11, v27, v28, v29, *&v30.value, v30.epoch);
  }

  *keys = xmmword_1E7484480;
  v34 = off_1E7484490;
  v12 = *MEMORY[0x1E695E480];
  Float64 = FigCFNumberCreateFloat64();
  v14 = FigCFNumberCreateFloat64();
  v15 = FigCFNumberCreateFloat64();
  OUTLINED_FUNCTION_31_11(v15, v16, v17, v18, v19, v20, v21, v22, v27, v28, v29, *&v30.value, v30.epoch);
  v23 = FigCFNumberCreateFloat64();
  v24 = v23;
  if (Float64 && v14 && v15 && v23)
  {
    values[0] = Float64;
    values[1] = v14;
    values[2] = v15;
    values[3] = v23;
    v25 = CFDictionaryCreate(v12, keys, values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v25)
    {
      v26 = v25;
      FigRemakerReportOneRTCMessage(1, 1, v25);
      CFRelease(v26);
    }
  }

  else if (!Float64)
  {
    goto LABEL_15;
  }

  CFRelease(Float64);
LABEL_15:
  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v24)
  {
    CFRelease(v24);
  }
}

uint64_t remakerFamily_GetDefaultSourceVideoTrackFromAsset(uint64_t a1, uint64_t a2, int a3, int a4, _DWORD *a5)
{
  v20 = 0;
  theArray = 0;
  v21 = 0;
  if (*(*(CMBaseObjectGetVTable() + 16) + 48))
  {
    v9 = OUTLINED_FUNCTION_40_8();
    v10(v9);
  }

  if (*a5)
  {
    return 0;
  }

  theArray = 0;
  if (a3 && *(*(CMBaseObjectGetVTable() + 16) + 48))
  {
    v11 = OUTLINED_FUNCTION_40_8();
    v13 = v12(v11);
    v14 = theArray;
    if (!v13)
    {
      *a5 = remakerFamily_GetEnabledTrackWithAllAlphaSegments(theArray);
      v14 = theArray;
    }

    if (v14)
    {
      CFRelease(v14);
    }
  }

  if (*a5)
  {
    return 0;
  }

  CMBaseObject = FigAssetGetCMBaseObject(a2);
  v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v18)
  {
    return 0;
  }

  v18(CMBaseObject, @"assetProperty_FormatReader", *MEMORY[0x1E695E480], &v20);
  if (!v20)
  {
    return 0;
  }

  if (a4)
  {
    v19 = 33;
  }

  else
  {
    v19 = 1;
  }

  DefaultTrackIDForMediaType = FPSupport_GetDefaultTrackIDForMediaType(v20, 1986618469, a5, v19);
  if (v20)
  {
    CFRelease(v20);
  }

  return DefaultTrackIDForMediaType;
}

uint64_t remakerFamily_setFormatWriterProperties(uint64_t a1, int a2)
{
  v32 = 862416950;
  v31 = 256;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  if (a2 != 1635148593 || *(DerivedStorage + 393))
  {
    v8 = 0;
    v10 = 0;
    Mutable = 0;
    goto LABEL_16;
  }

  if (!FigCFEqual())
  {
    v8 = 0;
    v10 = 0;
    Mutable = 0;
LABEL_16:
    OUTLINED_FUNCTION_38_9();
    if (v22)
    {
      v23 = 31;
    }

    else
    {
      v23 = 30;
    }

    v30 = v23;
    v19 = OUTLINED_FUNCTION_858(v20, v21, &v30);
    FigBaseObject = FigFormatWriterGetFigBaseObject(*(v4 + 184));
    v25 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v25)
    {
      v25(FigBaseObject, @"ThreadPriority", v19);
    }

    if (*(v4 + 424))
    {
      v26 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v26 = MEMORY[0x1E695E4C0];
    }

    v27 = FigFormatWriterGetFigBaseObject(*(v4 + 184));
    v28 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v28)
    {
      v28(v27, @"MaximizePowerEfficiency", *v26);
    }

    v18 = 0;
    if (Mutable)
    {
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9C0]);
  FigCFArrayAppendInt32();
  appended = FigCFArrayAppendInt32();
  v8 = OUTLINED_FUNCTION_858(appended, v7, &v32);
  v10 = OUTLINED_FUNCTION_858(v8, v9, &v31);
  v11 = FigFormatWriterGetFigBaseObject(*(v4 + 184));
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v12)
  {
    v13 = v12(v11, @"FileTypeMajorBrand", v8);
    if (v13)
    {
      goto LABEL_10;
    }

    v14 = FigFormatWriterGetFigBaseObject(*(v4 + 184));
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v15)
    {
      v13 = v15(v14, @"FileTypeMinorVersion", v10);
      if (v13)
      {
        goto LABEL_10;
      }

      v16 = FigFormatWriterGetFigBaseObject(*(v4 + 184));
      v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v17)
      {
        v13 = v17(v16, @"FileTypeCompatibleBrands", Mutable);
        if (v13)
        {
LABEL_10:
          v18 = v13;
          v19 = 0;
          if (!Mutable)
          {
            goto LABEL_28;
          }

LABEL_27:
          CFRelease(Mutable);
          goto LABEL_28;
        }

        goto LABEL_16;
      }
    }
  }

  v19 = 0;
  v18 = 4294954514;
  if (Mutable)
  {
    goto LABEL_27;
  }

LABEL_28:
  if (v8)
  {
    CFRelease(v8);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  return v18;
}

uint64_t remakerFamily_resolveByteReferenceSampleBufferAndCopyByteStream(void *a1, const void *a2, void *a3)
{
  valuePtr = 0;
  v24 = 0;
  dataBuffer = 0;
  cf = 0;
  v20 = a2;
  v6 = CMGetAttachment(a1, *MEMORY[0x1E6960528], 0);
  if (!v6)
  {
    goto LABEL_25;
  }

  CFNumberGetValue(v6, kCFNumberSInt64Type, &valuePtr);
  if (!CMGetAttachment(a1, *MEMORY[0x1E6960530], 0))
  {
    goto LABEL_25;
  }

  v7 = *MEMORY[0x1E695E480];
  if (a2)
  {
    CMBaseObject = CMByteStreamGetCMBaseObject();
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v9)
    {
      goto LABEL_17;
    }

    v10 = v9(CMBaseObject, *MEMORY[0x1E695FFA0], v7, &cf);
    if (v10)
    {
LABEL_26:
      v18 = v10;
      goto LABEL_18;
    }

    if (FigCFEqual())
    {
      CFRetain(a2);
      goto LABEL_10;
    }

    v20 = 0;
  }

  v10 = CMByteStreamCreateForFileURL();
  if (v10)
  {
    goto LABEL_26;
  }

LABEL_10:
  v11 = OUTLINED_FUNCTION_265();
  SampleSize = CMSampleBufferGetSampleSize(v11, v12);
  if (!SampleSize)
  {
LABEL_25:
    v18 = 4294955190;
    goto LABEL_18;
  }

  v14 = SampleSize;
  v15 = valuePtr;
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v16)
  {
LABEL_17:
    v18 = 4294954514;
    goto LABEL_18;
  }

  v10 = v16(v20, v14, v15, &dataBuffer, &v24);
  if (v10)
  {
    goto LABEL_26;
  }

  if (!v24)
  {
    goto LABEL_25;
  }

  v17 = CMSampleBufferSetDataBuffer(a1, dataBuffer);
  v18 = v17;
  if (a3 && !v17)
  {
    *a3 = v20;
    v20 = 0;
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (dataBuffer)
  {
    CFRelease(dataBuffer);
  }

  return v18;
}

void remakerFamily_transferMetadata(const void *a1)
{
  keys[1] = *MEMORY[0x1E69E9840];
  v61 = 0;
  theArray = 0;
  cf = 0;
  values = 0;
  keys[0] = @"MetadataReader";
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1 || (v3 = CFGetTypeID(a1), v3 != FigAssetReaderGetTypeID()))
  {
    v4 = *(DerivedStorage + 72);
    v5 = MEMORY[0x1E695E480];
    if (!v4 || (CMBaseObject = FigAssetGetCMBaseObject(v4), (v7 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0) && !v7(CMBaseObject, @"assetProperty_FormatReader", *v5, &v61))
    {
      v8 = *(DerivedStorage + 400);
      if (v8)
      {
        FigBaseObject = FigFormatWriterGetFigBaseObject(*(DerivedStorage + 184));
        v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v10)
        {
          v10(FigBaseObject, @"MetadataToWrite", v8);
        }
      }

      else if (v61)
      {
        v11 = FigFormatReaderGetFigBaseObject(v61);
        v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v12)
        {
          goto LABEL_61;
        }

        v13 = *v5;
        if (v12(v11, @"MetadataReaders", *v5, &theArray))
        {
          goto LABEL_61;
        }

        if (theArray)
        {
          Count = CFArrayGetCount(theArray);
          if (Count >= 1)
          {
            v15 = Count;
            v16 = OUTLINED_FUNCTION_383();
            Mutable = CFArrayCreateMutable(v16, v17, v18);
            v20 = 0;
            v21 = MEMORY[0x1E695E9D8];
            v22 = MEMORY[0x1E695E9E8];
            do
            {
              values = CFArrayGetValueAtIndex(theArray, v20);
              v23 = CFDictionaryCreate(v13, keys, &values, 1, v21, v22);
              if (v23)
              {
                v24 = v23;
                CFArrayAppendValue(Mutable, v23);
                CFRelease(v24);
              }

              ++v20;
            }

            while (v15 != v20);
            v25 = *(DerivedStorage + 408);
            if (v25)
            {
              v26 = FigFormatWriterGetFigBaseObject(*(DerivedStorage + 184));
              v27 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v27)
              {
                v27(v26, @"MetadataAllowList", v25);
              }
            }

            v28 = FigFormatWriterGetFigBaseObject(*(DerivedStorage + 184));
            v29 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v29)
            {
              v29(v28, @"MetadataToTransfer", Mutable);
            }

            if (Mutable)
            {
              CFRelease(Mutable);
            }
          }

          if (theArray)
          {
            CFRelease(theArray);
            theArray = 0;
          }
        }
      }

      v30 = *(DerivedStorage + 80);
      if (v30)
      {
        v31 = CFArrayGetCount(v30);
        if (v31 >= 1)
        {
          v32 = v31;
          v33 = 0;
          v34 = @"MetadataReaders";
          v35 = *v5;
          v36 = @"TrackMetadataToTransfer";
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 80), v33);
            v38 = *(ValueAtIndex + 75);
            if (!v38)
            {
              v38 = *(ValueAtIndex + 76);
            }

            v39 = ValueAtIndex[24];
            if (v39)
            {
              if (v38)
              {
                v40 = *(DerivedStorage + 184);
                v41 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                if (v41)
                {
                  v41(v40, v38, @"TrackMetadataToWrite", v39);
                }
              }
            }

            else
            {
              v42 = v61;
              if (v61)
              {
                v43 = *(ValueAtIndex + 7);
                if (v43)
                {
                  v44 = *(*(CMBaseObjectGetVTable() + 16) + 56);
                  if (v44)
                  {
                    if (!v44(v42, v43, &cf, 0))
                    {
                      v45 = FigTrackReaderGetFigBaseObject(cf);
                      v46 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                      if (v46 && !v46(v45, v34, v35, &theArray) && theArray)
                      {
                        v47 = CFArrayGetCount(theArray);
                        if (v47 >= 1)
                        {
                          v48 = v47;
                          v58 = v36;
                          v59 = v34;
                          v49 = CFArrayCreateMutable(v35, 0, MEMORY[0x1E695E9C0]);
                          for (i = 0; i != v48; ++i)
                          {
                            values = CFArrayGetValueAtIndex(theArray, i);
                            v51 = CFDictionaryCreate(v35, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                            if (v51)
                            {
                              v52 = v51;
                              CFArrayAppendValue(v49, v51);
                              CFRelease(v52);
                            }
                          }

                          v36 = v58;
                          if (v38)
                          {
                            v53 = *(DerivedStorage + 184);
                            v54 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                            if (v54)
                            {
                              v54(v53, v38, v58, v49);
                            }

                            v55 = *(DerivedStorage + 408);
                            if (v55)
                            {
                              v56 = *(DerivedStorage + 184);
                              v57 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                              if (v57)
                              {
                                v57(v56, v38, @"TrackMetadataAllowList", v55);
                              }
                            }
                          }

                          v34 = v59;
                          if (v49)
                          {
                            CFRelease(v49);
                          }
                        }

                        if (theArray)
                        {
                          CFRelease(theArray);
                          theArray = 0;
                        }
                      }

                      if (cf)
                      {
                        CFRelease(cf);
                        cf = 0;
                      }
                    }
                  }
                }
              }
            }

            ++v33;
          }

          while (v33 != v32);
        }
      }
    }
  }

LABEL_61:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v61)
  {
    CFRelease(v61);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }
}

void remakerFamily_PostNotificationCallback(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, unsigned int a15, int a16, int a17, int a18, __int16 a19, uint64_t a20, __int16 a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  OUTLINED_FUNCTION_38_2();
  v53 = v52;
  v55 = v54;
  CMBaseObjectGetDerivedStorage();
  if (v55)
  {
    if (dword_1EAF17020 >= 2)
    {
      OUTLINED_FUNCTION_147();
      v56 = OUTLINED_FUNCTION_126();
      if (os_log_type_enabled(v56, type))
      {
        v57 = a15;
      }

      else
      {
        v57 = a15 & 0xFFFFFFFE;
      }

      if (v57)
      {
        OUTLINED_FUNCTION_2_6();
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    CFRelease(v55);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  OUTLINED_FUNCTION_426_1();
}

uint64_t remakerFamily_registerDarwinNotification_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_registerDarwinNotification_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_postDarwinNotificationWithState_cold_1(uint64_t a1, _DWORD *a2)
{
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t remakerFamily_createFormatWriter_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_createChannel_cold_1(const void *a1, uint64_t a2, _DWORD *a3)
{
  v4 = CFGetTypeID(a1);
  remakerFamily_MapError(v4, 0);
  OUTLINED_FUNCTION_5_47();
  result = FigSignalErrorAtGM();
  *a3 = result;
  return result;
}

uint64_t remakerFamily_createChannel_cold_2(const void *a1, _DWORD *a2)
{
  v3 = CFGetTypeID(a1);
  remakerFamily_MapError(v3, 0);
  OUTLINED_FUNCTION_5_47();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t remakerFamily_createMultiPassPlaybackBossForTrack_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_createRelatedTrackArray_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_createPlaybackBossForTracks_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_getExpectedEndTime_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_MarkEndOfDataForTrack_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_MarkEndOfDataForTrack_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_MarkEndOfDataForTrack_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_MarkEndOfDataForTrack_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_setupMultiPassTrackIfNecessary_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_setupMultiPassTrackIfNecessary_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_createRenderPipelineOptions_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_createRenderPipelineOptions_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_getSourceASBDForTrackID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_getSourceASBDForTrackID_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerfamily_updateIOPolicy_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL remakerFamily_performLastStepIfComplete_cold_1(_DWORD *a1)
{
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  return v2 == 0;
}

uint64_t remakerFamily_performLastStepIfComplete_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_performLastStepIfComplete_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_performLastStepIfComplete_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_performLastStepIfComplete_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_performLastStepIfComplete_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void remakerFamily_performLastStepIfComplete_cold_7(const void *a1, uint64_t a2)
{
  if (!FigCFDictionarySetInt32())
  {
    (*(a2 + 320))(0, a1, *(a2 + 328));
  }

  CFRelease(a1);
}

uint64_t remakerFamily_performLastStepIfComplete_cold_11(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_startNextPassWork_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_startNextPassWork_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_startNextPassWork_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_startNextPassWork_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_finishVideoCompositionChannel_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_finishVideoCompositionChannel_cold_2(const void *a1, _DWORD *a2)
{
  v3 = CFGetTypeID(a1);
  remakerFamily_MapError(v3, 5u);
  OUTLINED_FUNCTION_5_47();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t remakerFamily_finishVideoCompositionChannel_cold_3(const void *a1, _DWORD *a2)
{
  v3 = CFGetTypeID(a1);
  remakerFamily_MapError(v3, 3u);
  OUTLINED_FUNCTION_5_47();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t remakerFamily_finishVideoCompositionChannel_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_finishVideoCompositionChannel_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_finishVideoCompositionChannel_cold_6(const void *a1, _DWORD *a2)
{
  v3 = CFGetTypeID(a1);
  remakerFamily_MapError(v3, 5u);
  OUTLINED_FUNCTION_5_47();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t remakerFamily_finishVideoCompositionChannel_cold_7(const void *a1, _DWORD *a2)
{
  v3 = CFGetTypeID(a1);
  remakerFamily_MapError(v3, 1u);
  OUTLINED_FUNCTION_5_47();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t remakerFamily_finishVideoCompositionChannel_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_finishVideoCompositionChannel_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_finishVideoCompositionChannel_cold_10(const void *a1, _DWORD *a2)
{
  v3 = CFGetTypeID(a1);
  remakerFamily_MapError(v3, 4u);
  OUTLINED_FUNCTION_5_47();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t remakerFamily_finishVideoCompositionChannel_cold_11(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_finishVideoCompositionChannel_cold_12(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_finishVideoCompositionChannel_cold_13(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_resetTrackMultiPassTimeRanges_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_resetTrackMultiPassTimeRanges_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_resetTrackMultiPassTimeRanges_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_resetTrackMultiPassTimeRanges_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_resetTrackMultiPassTimeRanges_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_createTimeRangesCArray_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_createTimeRangesCArray_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_GetDefaultSourceAudioTrack_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_GetEnabledTrackWithAllAlphaSegments_cold_1(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 16);
  result = VTable + 16;
  v9 = *(v8 + 32);
  if (v9)
  {
    result = v9(a1, a2, 0);
  }

  *a3 = 1;
  return result;
}

uint64_t remakerFamily_GetDefaultSourceVideoTrack_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_SetFormatWriterProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_SetFormatWriterTrackProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_SetFormatWriterTrackProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_CopyFormatWriterTrackProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_CopyFormatWriterTrackProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_createDestinationTrackReferenceDictionary_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL remakerFamily_addDestinationTrackReferenceToDictionaryForEachReferenceType_cold_1(_DWORD *a1)
{
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  return v2 == 0;
}

uint64_t remakerFamily_addFrameFromSiloToFormatWriter_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remakerFamily_addFrameFromSiloToFormatWriter_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t HandleAssetMessage(uint64_t a1, void *a2, void *a3)
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  v8 = MEMORY[0x1E69615A0];
  OUTLINED_FUNCTION_22_18();
  if (!v9)
  {
    *bytes.val = 0;
    xpc_dictionary_get_uint64(a2, *v8);
    OpCode = FigXPCServerLookupAndRetainAssociatedObject();
    if (!OpCode)
    {
      return 4294951138;
    }

    return OpCode;
  }

  v120 = 0;
  v121 = 0;
  v119 = 0;
  v115 = 0;
  v116 = 0;
  v113 = 0;
  theDict = 0;
  v111 = 0;
  v112 = 0;
  memset(&bytes, 0, sizeof(bytes));
  v109 = 0;
  v110 = 0;
  xpc_connection_get_audit_token();
  token = bytes;
  ClientPIDFromAuditToken = FigServer_GetClientPIDFromAuditToken();
  FigServer_CopyProcessName();
  v11 = *MEMORY[0x1E695E480];
  token = bytes;
  v12 = SecTaskCreateWithAuditToken(v11, &token);
  allocator = v11;
  v13 = CFDataCreate(v11, &bytes, 32);
  if (!v13)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_6_9();
    goto LABEL_149;
  }

  v14 = CreateServedAssetState(ClientPIDFromAuditToken, &v111);
  if (v14)
  {
    goto LABEL_150;
  }

  v100 = v111;
  *(v111 + 24) = a1;
  uint64 = xpc_dictionary_get_uint64(a2, "AssetCreationFlags");
  v14 = FigXPCMessageCopyCFDictionary();
  if (v14)
  {
    goto LABEL_150;
  }

  xdict = a3;
  HIDWORD(v103) = ClientPIDFromAuditToken;
  if (!theDict)
  {
    v22 = 0;
    v30 = 0;
    v101 = 0;
    goto LABEL_65;
  }

  cf = 0;
  value = 0;
  v106 = 0;
  if (CFDictionaryGetValueIfPresent(theDict, @"assetOption_DownloadDestinationURL", &value))
  {
    if (value)
    {
      v15 = CFGetTypeID(value);
      if (v15 == CFURLGetTypeID())
      {
        OUTLINED_FUNCTION_9_26();
        if (FigServer_IsWritableFileOpeningOrCreationPermittedForAuditToken() == 1)
        {
          assetXPCServer_SandboxRegistrationRetrieveFromMessageAndAssociateToURL();
          goto LABEL_13;
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_6_9();
LABEL_149:
        v14 = FigSignalErrorAtGM();
LABEL_150:
        v24 = v14;
        v22 = 0;
        MutableCopy = 0;
LABEL_151:
        v30 = 0;
        v81 = 0;
        goto LABEL_103;
      }
    }
  }

LABEL_13:
  if (CFDictionaryGetValueIfPresent(theDict, @"assetOption_NetworkCacheURL", &cf))
  {
    if (cf)
    {
      v16 = CFGetTypeID(cf);
      if (v16 == CFURLGetTypeID())
      {
        OUTLINED_FUNCTION_9_26();
        if (FigServer_IsWritableFileOpeningOrCreationPermittedForAuditToken() == 1)
        {
          assetXPCServer_SandboxRegistrationRetrieveFromMessageAndAssociateToURL();
          goto LABEL_18;
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_6_9();
        goto LABEL_149;
      }
    }
  }

LABEL_18:
  if (xpc_dictionary_get_uint64(a2, "SandboxRegistrationForProtectedContentSupportStorageURL"))
  {
    FigCFDictionaryGetDictionaryValue();
    if (FigCFDictionaryGetURLValue())
    {
      assetXPCServer_SandboxRegistrationRetrieveFromMessageAndAssociateToURL();
    }
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_41();
    v24 = FigSignalErrorAtGM();
    v22 = 0;
    goto LABEL_151;
  }

  v18 = FigPersonaCopyCurrentID(&v106);
  if (v106 && !v18)
  {
    CFDictionarySetValue(MutableCopy, @"assetOption_ClientPersonaIdentifier", v106);
  }

  if (xpc_dictionary_get_uint64(a2, "CustomURLLoader"))
  {
    *token.val = 0;
    v19 = FigCustomURLLoaderServerCopyLoaderForID();
    v20 = *token.val;
    if (!v19 && *token.val)
    {
      CFDictionarySetValue(MutableCopy, @"assetOption_CustomURLLoader", *token.val);
      v20 = *token.val;
    }

    if (v20)
    {
      CFRelease(v20);
    }
  }

  v21 = xpc_dictionary_copy_mach_send();
  v22 = v21;
  if ((v21 - 1) <= 0xFFFFFFFD)
  {
    if (FigMachPortHolderCreateWithMachSendRight())
    {
      CFRelease(MutableCopy);
      if (v106)
      {
        CFRelease(v106);
      }

      MutableCopy = 0;
      v30 = 0;
      v81 = 0;
      v24 = 4294955125;
      goto LABEL_103;
    }

    v21 = FigCFDictionarySetValue();
  }

  v23 = OUTLINED_FUNCTION_31_12(v21, @"get-task-allow");
  v24 = *MEMORY[0x1E695E4D0];
  if (v23 == *MEMORY[0x1E695E4D0] || OUTLINED_FUNCTION_31_12(v23, @"com.apple.security.get-task-allow") == v24 || os_variant_allows_internal_security_policies())
  {
    v25 = v24;
  }

  else
  {
    v25 = *MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(MutableCopy, @"assetOption_EnableHTTPTrafficDebuggingInInstruments", v25);
  FigCFDictionarySetInt32();
  v26 = theDict;
  theDict = MutableCopy;
  CFRetain(MutableCopy);
  if (v26)
  {
    CFRelease(v26);
  }

  v99 = v22;
  CFRelease(MutableCopy);
  if (v106)
  {
    CFRelease(v106);
  }

  v27 = CFDictionaryGetValue(theDict, @"assetOption_ClientAuditToken");
  v28 = CFDictionaryGetValue(theDict, @"assetOption_ClientBundleIdentifier");
  v29 = v28;
  if (v27 && (v28 = FigCFEqual(), !v28) || v29)
  {
    v28 = OUTLINED_FUNCTION_31_12(v28, @"com.apple.private.network.socket-delegate");
    v101 = v28;
    if (v28 != v24)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_41();
      v24 = FigSignalErrorAtGM();
      v30 = 0;
LABEL_170:
      v22 = v99;
      goto LABEL_154;
    }
  }

  else
  {
    v101 = 0;
  }

  v22 = v99;
  v31 = OUTLINED_FUNCTION_31_12(v28, @"com.apple.private.coremedia.allowabletypecategories");
  v30 = v31;
  if (!v31)
  {
    goto LABEL_65;
  }

  v32 = CFGetTypeID(v31);
  if (v32 != CFArrayGetTypeID())
  {
    goto LABEL_65;
  }

  v95 = v13;
  v96 = v12;
  v33 = theDict;
  *token.val = 0;
  key = @"assetOption_AllowableTypes";
  ValueIfPresent = CFDictionaryGetValueIfPresent(theDict, @"assetOption_AllowableTypes", &token);
  Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_41();
    v91 = FigSignalErrorAtGM();
    if (v91)
    {
      v24 = v91;
      goto LABEL_169;
    }

LABEL_167:
    OUTLINED_FUNCTION_27_12();
    goto LABEL_61;
  }

  v36 = Mutable;
  v94 = a1;
  if (CFArrayGetCount(v30) >= 1)
  {
    v37 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v30, v37);
      if (ValueAtIndex)
      {
        v39 = ValueAtIndex;
        v40 = CFGetTypeID(ValueAtIndex);
        if (v40 == CFStringGetTypeID() && (!ValueIfPresent || FigCFArrayContainsValue()))
        {
          CFArrayAppendValue(v36, v39);
        }
      }

      ++v37;
    }

    while (CFArrayGetCount(v30) > v37);
  }

  v41 = FigCFDictionaryCreateMutableCopy();
  if (!v41)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_41();
    v24 = FigSignalErrorAtGM();
    CFRelease(v36);
    if (v24)
    {
LABEL_169:
      v13 = v95;
      v12 = v96;
      goto LABEL_170;
    }

    goto LABEL_167;
  }

  ValueIfPresent = v41;
  CFDictionarySetValue(v41, @"assetOption_AllowableTypes", v36);
  CFRelease(v36);
  v33 = theDict;
  theDict = ValueIfPresent;
  CFRetain(ValueIfPresent);
  LOBYTE(v24) = 0;
LABEL_61:
  v13 = v95;
  v12 = v96;
  if (v33)
  {
    CFRelease(v33);
  }

  v22 = v99;
  if ((v24 & 1) == 0)
  {
    CFRelease(ValueIfPresent);
  }

LABEL_65:
  v42 = FigCFDictionaryCreateMutableCopy();
  MutableCopy = v42;
  if (!v42)
  {
    goto LABEL_152;
  }

  v43 = theDict;
  theDict = v42;
  CFRetain(v42);
  if (v43)
  {
    CFRelease(v43);
  }

  xpc_dictionary_get_BOOL(a2, "ClientSDKVersion2025AndLater");
  FigCFDictionarySetBoolean();
  OUTLINED_FUNCTION_22_18();
  if (v9)
  {
    v73 = xpc_dictionary_get_uint64(a2, "FormatReader");
    v74 = FigAssetUsesRemoteFormatReader();
    if ((v74 || FigAssetAllowsSandboxedParsingOptIn(v74)) && !FigFormatReaderServerIsObjectIDLocallyServed(v73))
    {
      v71 = FigFormatReaderXPCRemoteCopyFormatReaderForObjectIDFromOtherProcess(v73, &v120);
      v81 = v101;
    }

    else
    {
      v71 = FigXPCFormatReaderServerCopyFormatReaderForID(v73, &v120);
      v81 = v101;
      if (v71)
      {
        goto LABEL_163;
      }
    }

    v82 = OUTLINED_FUNCTION_11_25(v71, v120, v75, v76, v77, v78, v79, v80, v92, key, v94, v95, v96, v3, uint64, xdict, v30, v100, v101, v103, allocator);
    v71 = FigAssetCreateWithFormatReader(v82, v83, v84, v85, v86);
    if (!v71)
    {
      OUTLINED_FUNCTION_4_54();
      v81 = "Create<FormatReaderAsset>";
      goto LABEL_108;
    }

    goto LABEL_163;
  }

  OUTLINED_FUNCTION_22_18();
  if (v9)
  {
    BlockBufferData = FigXPCMessageCopyCFData();
    if (BlockBufferData)
    {
      goto LABEL_153;
    }

    v81 = v101;
    if (v119)
    {
      v66 = OUTLINED_FUNCTION_11_25(BlockBufferData, v119, v60, v61, v62, v63, v64, v65, v92, key, v94, v95, v96, v3, uint64, xdict, v30, v100, v101, v103, allocator);
      v71 = FigAssetCreateWithMovieProxyData(v66, v67, v68, v69, v70);
      if (!v71)
      {
        OUTLINED_FUNCTION_4_54();
        v81 = "Create<MovieProxyAsset>";
        goto LABEL_108;
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_41();
      v71 = FigSignalErrorAtGM();
    }

LABEL_163:
    v24 = v71;
    goto LABEL_103;
  }

  OUTLINED_FUNCTION_22_18();
  if (v9)
  {
    BlockBufferData = FigXPCMessageCreateBlockBufferData();
    if (BlockBufferData)
    {
      goto LABEL_153;
    }

    if (v116)
    {
      int64 = xpc_dictionary_get_int64(a2, "FormatIdentifierType");
      BlockBufferData = FigXPCMessageCopyCFObject();
      if (!BlockBufferData)
      {
        v71 = FigAssetCreateWithBlockBuffer(allocator, v116, int64, v115, uint64, theDict, &v113);
        v81 = v101;
        if (!v71)
        {
          OUTLINED_FUNCTION_4_54();
          v81 = 0;
          goto LABEL_108;
        }

        goto LABEL_163;
      }

LABEL_153:
      v24 = BlockBufferData;
LABEL_154:
      v81 = v101;
      goto LABEL_103;
    }

LABEL_152:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_41();
    BlockBufferData = FigSignalErrorAtGM();
    goto LABEL_153;
  }

  OUTLINED_FUNCTION_22_18();
  if (!v9)
  {
    v30 = MutableCopy;
    v12 = v13;
    v81 = 0;
    MutableCopy = v101;
    goto LABEL_108;
  }

  value = 0;
  BlockBufferData = FigXPCMessageCopyCFURL();
  if (BlockBufferData)
  {
    goto LABEL_153;
  }

  if (!v121)
  {
    goto LABEL_152;
  }

  v45 = v22;
  IsPersistentURL = FigIsPersistentURL();
  if (IsPersistentURL && (OUTLINED_FUNCTION_9_26(), !FigMayAccessPersistentURLOnBehalfOfClientWithAuditToken()) || (CFDictionaryAddValue(MutableCopy, @"assetOption_ClientAuditToken", v13), assetXPCServer_SandboxRegistrationRetrieveFromMessageAndAssociateToURL(), OnlyFileOpeningPermittedForAuditToken = _CFURLIsFileURL(), OnlyFileOpeningPermittedForAuditToken) && (OnlyFileOpeningPermittedForAuditToken = FigCFURLGetFileStats(), !OnlyFileOpeningPermittedForAuditToken) && value >= 1 && (OUTLINED_FUNCTION_9_26(), OnlyFileOpeningPermittedForAuditToken = FigServer_IsReadOnlyFileOpeningPermittedForAuditToken(), !OnlyFileOpeningPermittedForAuditToken))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_41();
    v24 = FigSignalErrorAtGM();
    v22 = v45;
    goto LABEL_154;
  }

  v54 = OUTLINED_FUNCTION_11_25(OnlyFileOpeningPermittedForAuditToken, v121, v48, v49, v50, v51, v52, v53, v92, key, v94, v95, v96, v3, uint64, xdict, v30, v100, v101, v103, allocator);
  v59 = FigAssetCreateWithURL(v54, v55, v56, v57, v58);
  v24 = v59;
  v81 = v102;
  if (IsPersistentURL && !v59)
  {
    OUTLINED_FUNCTION_4_54();
    OUTLINED_FUNCTION_9_26();
    v13 = v100;
    *(v100 + 32) = AssetPALoggingHelperCreateAccessInterval(v104, &token);
    v81 = "Create<URLAsset>";
    v22 = v45;
    goto LABEL_109;
  }

  if (v59)
  {
    v22 = v45;
    goto LABEL_103;
  }

  OUTLINED_FUNCTION_4_54();
  v81 = "Create<URLAsset>";
  v22 = v45;
LABEL_108:
  v13 = v100;
LABEL_109:
  OUTLINED_FUNCTION_10_27();
  v87 = FigXPCServerAssociateObjectWithConnection();
  if (!v87)
  {
    v87 = FigSandboxAssertionCreateForPID();
    if (!v87)
    {
      v88 = FigOSTransactionCreate();
      *(v13 + 1) = v88;
      if (v88)
      {
        xpc_dictionary_set_uint64(xdict, *MEMORY[0x1E69615A0], v112);
        v24 = 0;
        v111 = 0;
        v112 = 0;
        OUTLINED_FUNCTION_18_18();
LABEL_113:
        DisposeServedAssetState(v89);
        goto LABEL_114;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_41();
      v87 = FigSignalErrorAtGM();
    }
  }

  v24 = v87;
  OUTLINED_FUNCTION_18_18();
LABEL_103:
  if (!v112)
  {
    v89 = v111;
    goto LABEL_113;
  }

  FigXPCServerDisassociateObjectWithConnection();
LABEL_114:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v121)
  {
    CFRelease(v121);
  }

  if (v113)
  {
    CFRelease(v113);
  }

  if (v120)
  {
    CFRelease(v120);
  }

  if (v119)
  {
    CFRelease(v119);
  }

  if (v116)
  {
    CFRelease(v116);
  }

  if (v115)
  {
    CFRelease(v115);
  }

  if (v81)
  {
    CFRelease(v81);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v110)
  {
    CFRelease(v110);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if ((v22 - 1) <= 0xFFFFFFFD)
  {
    FigMachPortReleaseSendRight_();
  }

  if (v109)
  {
    CFRelease(v109);
  }

  return v24;
}

uint64_t HandleAssetNoReplyMessage(uint64_t a1, void *a2)
{
  v7 = 0;
  cf = 0;
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  OpCode = FigXPCServerLookupAndRetainAssociatedObject();
  if (OpCode)
  {
    return OpCode;
  }

  else
  {
    return 4294951138;
  }
}

void HandleAssetGetStatusOfValueForPropertyMessage(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, int64_t value, const void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  v21 = v20;
  OUTLINED_FUNCTION_5_48();
  v23 = CFGetTypeID(v22);
  if (v23 != FigAssetGetTypeID())
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_29_12();
  if (FigXPCMessageCopyCFString())
  {
    goto LABEL_7;
  }

  if (a12)
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 8))
    {
      v24 = OUTLINED_FUNCTION_517();
      if (!v25(v24))
      {
        xpc_dictionary_set_uint64(v21, "LoadStatus", SHIDWORD(value));
        xpc_dictionary_set_int64(v21, "LoadingError", value);
        FigXPCMessageSetCFError();
      }
    }
  }

  else
  {
LABEL_12:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM();
  }

LABEL_7:
  if (a12)
  {
    CFRelease(a12);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_860();
}

void HandleAssetLoadValuesAsyncForPropertiesMessage(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int16 a9, char a10, char a11, unsigned int valuea, uint64_t value, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_653();
  v24 = OUTLINED_FUNCTION_17_17(v23);
  if (v24 == FigAssetGetTypeID())
  {
    OUTLINED_FUNCTION_21_16();
    if (!FigXPCMessageCopyCFArray())
    {
      xpc_dictionary_get_BOOL(v22, "isBatch");
      OUTLINED_FUNCTION_26_16();
      if (*(*(CMBaseObjectGetVTable() + 16) + 16))
      {
        v25 = OUTLINED_FUNCTION_517();
        if (!v26(v25))
        {
          OUTLINED_FUNCTION_4_36();
          xpc_dictionary_set_BOOL(v21, "AlreadyLoaded", v27);
          if (v22)
          {
            xpc_dictionary_set_uint64(v21, "BatchID", valuea);
          }
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM();
  }

  if (value)
  {
    CFRelease(value);
  }

  OUTLINED_FUNCTION_652();
}

void HandleAssetLoadValueAsyncForPropertyMessage(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, CFTypeRef cf, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_653();
  v23 = OUTLINED_FUNCTION_24_13(v22);
  if (v23 != FigAssetGetTypeID())
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_15_21();
  if (FigXPCMessageCopyCFString())
  {
    goto LABEL_7;
  }

  if (cf)
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 24))
    {
      v24 = OUTLINED_FUNCTION_517();
      if (!v25(v24))
      {
        OUTLINED_FUNCTION_4_36();
        xpc_dictionary_set_BOOL(v21, "AlreadyLoaded", v26);
      }
    }
  }

  else
  {
LABEL_10:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM();
  }

LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_652();
}

void HandleAssetValidateAsyncMessage(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int64_t value, CFTypeRef a11, CFTypeRef cf, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  v21 = v20;
  OUTLINED_FUNCTION_5_48();
  v23 = CFGetTypeID(v22);
  if (v23 == FigAssetGetTypeID())
  {
    if (!FigXPCMessageCopyCFString())
    {
      OUTLINED_FUNCTION_29_12();
      if (!FigXPCMessageCopyCFDictionary())
      {
        if (*(*(CMBaseObjectGetVTable() + 16) + 32))
        {
          v24 = OUTLINED_FUNCTION_19_20();
          if (!v25(v24))
          {
            xpc_dictionary_set_int64(v21, "ValidationStatus", value);
            xpc_dictionary_set_int64(v21, "ValidationResult", 0);
          }
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (a11)
  {
    CFRelease(a11);
  }

  OUTLINED_FUNCTION_860();
}

uint64_t HandleAssetLoadValuesAsyncForTrackPropertiesMessage(int a1, CFTypeRef cf, void *a3, void *a4)
{
  memset(value, 0, sizeof(value));
  v24 = 0;
  v7 = CFGetTypeID(cf);
  if (v7 != FigAssetGetTypeID())
  {
    goto LABEL_29;
  }

  v8 = FigXPCMessageCopyCFArray();
  if (v8)
  {
LABEL_30:
    v17 = v8;
    goto LABEL_26;
  }

  v9 = xpc_dictionary_get_BOOL(a3, "isBatch");
  v10 = xpc_dictionary_get_value(a3, "Tracks");
  if (!v10)
  {
    v14 = 0;
    goto LABEL_14;
  }

  v11 = v10;
  count = xpc_array_get_count(v10);
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], count, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
LABEL_29:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    v8 = FigSignalErrorAtGM();
    goto LABEL_30;
  }

  v14 = Mutable;
  if (count)
  {
    v15 = 0;
    while (1)
    {
      xpc_array_get_uint64(v11, v15);
      cfa = 0;
      v16 = FigXPCServerLookupAndRetainAssociatedObject();
      if (!v16)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_4();
        v16 = FigSignalErrorAtGM();
      }

      v17 = v16;
      if (v16)
      {
        break;
      }

      CFArrayAppendValue(v14, 0);
      CFRelease(0);
      if (count == ++v15)
      {
        goto LABEL_14;
      }
    }

LABEL_24:
    if (!v14)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_14:
  v18 = *&value[1];
  if (v9)
  {
    v19 = value;
  }

  else
  {
    v19 = 0;
  }

  v20 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (!v20)
  {
    v17 = 4294954514;
    goto LABEL_24;
  }

  v21 = v20(cf, v14, v18, &v24, v19);
  if (v21)
  {
    v17 = v21;
    if (!v14)
    {
      goto LABEL_26;
    }

LABEL_25:
    CFRelease(v14);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_4_36();
  xpc_dictionary_set_BOOL(a4, "AlreadyLoaded", v22);
  if (v9)
  {
    xpc_dictionary_set_uint64(a4, "BatchID", value[0]);
  }

  v17 = 0;
  if (v14)
  {
    goto LABEL_25;
  }

LABEL_26:
  if (*&value[1])
  {
    CFRelease(*&value[1]);
  }

  return v17;
}

uint64_t HandleAssetSetCookiesMessage(const void *a1, void *a2)
{
  length = 0;
  v13 = 0;
  cf = 0;
  v4 = CFGetTypeID(a1);
  if (v4 != FigAssetGetTypeID())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v7 = FigSignalErrorAtGM();
    goto LABEL_9;
  }

  CMBaseObject = FigAssetGetCMBaseObject(a1);
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    v7 = 4294954514;
    goto LABEL_9;
  }

  v7 = v6(CMBaseObject, @"assetProperty_StorageSession", *MEMORY[0x1E695E480], &cf);
  v8 = cf;
  if (!v7)
  {
    if (!cf)
    {
      v7 = 0;
      goto LABEL_9;
    }

    FigXPCMessageCopyCFURL();
    data = xpc_dictionary_get_data(a2, "CookieData", &length);
    FigRemote_SetSerializedCookies(cf, v13, data, length);
    v8 = cf;
  }

  if (v8)
  {
    CFRelease(v8);
  }

LABEL_9:
  if (v13)
  {
    CFRelease(v13);
  }

  return v7;
}

uint64_t HandleAssetSetHTTPAuthMessage(const void *a1, void *a2)
{
  cf = 0;
  length = 0;
  v4 = CFGetTypeID(a1);
  if (v4 == FigAssetGetTypeID())
  {
    CMBaseObject = FigAssetGetCMBaseObject(a1);
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v6)
    {
      return 4294954514;
    }

    v7 = v6(CMBaseObject, @"assetProperty_StorageSession", *MEMORY[0x1E695E480], &cf);
    v8 = cf;
    if (v7)
    {
      goto LABEL_6;
    }

    if (cf)
    {
      data = xpc_dictionary_get_data(a2, "HTTPAuthData", &length);
      v7 = FigRemote_SetSerializedAuth(cf, data, length);
      v8 = cf;
LABEL_6:
      if (v8)
      {
        CFRelease(v8);
      }

      return v7;
    }

    return 0;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_20_0();

  return FigSignalErrorAtGM();
}

uint64_t HandleAssetDefineMacroPropertyMessage(const void *a1)
{
  v1 = OUTLINED_FUNCTION_23_20(a1);
  if (v1 != FigAssetGetTypeID())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v2 = FigSignalErrorAtGM();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_21_16();
  v2 = FigXPCMessageCopyCFString();
  if (v2)
  {
    goto LABEL_7;
  }

  v2 = FigXPCMessageCopyCFArray();
  if (v2)
  {
    goto LABEL_7;
  }

  v3 = *(CMBaseObjectGetVTable() + 16);
  if (*v3 >= 2uLL && v3[11])
  {
    v4 = OUTLINED_FUNCTION_69_0();
    v2 = v5(v4);
LABEL_7:
    v6 = v2;
    goto LABEL_9;
  }

  v6 = 4294954514;
LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v6;
}

uint64_t HandleAssetDefineTrackMacroPropertyMessage(const void *a1)
{
  v1 = OUTLINED_FUNCTION_23_20(a1);
  if (v1 != FigAssetGetTypeID())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v2 = FigSignalErrorAtGM();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_21_16();
  v2 = FigXPCMessageCopyCFString();
  if (v2)
  {
    goto LABEL_7;
  }

  v2 = FigXPCMessageCopyCFArray();
  if (v2)
  {
    goto LABEL_7;
  }

  v3 = *(CMBaseObjectGetVTable() + 16);
  if (*v3 >= 2uLL && v3[12])
  {
    v4 = OUTLINED_FUNCTION_69_0();
    v2 = v5(v4);
LABEL_7:
    v6 = v2;
    goto LABEL_9;
  }

  v6 = 4294954514;
LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v6;
}

uint64_t HandleAssetDefineCrossTrackMacroPropertyMessage(const void *a1)
{
  v1 = OUTLINED_FUNCTION_23_20(a1);
  if (v1 != FigAssetGetTypeID())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v2 = FigSignalErrorAtGM();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_21_16();
  v2 = FigXPCMessageCopyCFString();
  if (v2)
  {
    goto LABEL_7;
  }

  v2 = FigXPCMessageCopyCFArray();
  if (v2)
  {
    goto LABEL_7;
  }

  v3 = *(CMBaseObjectGetVTable() + 16);
  if (*v3 >= 2uLL && v3[13])
  {
    v4 = OUTLINED_FUNCTION_69_0();
    v2 = v5(v4);
LABEL_7:
    v6 = v2;
    goto LABEL_9;
  }

  v6 = 4294954514;
LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v6;
}

void HandleAssetTrackCopyPropertyMessage(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, CFTypeRef a11, CFTypeRef a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  a11 = 0;
  a12 = 0;
  cf = 0;
  v28 = CFGetTypeID(v26);
  if (v28 != FigAssetTrackGetTypeID())
  {
    goto LABEL_19;
  }

  if (FigXPCMessageCopyCFString())
  {
    goto LABEL_12;
  }

  if (a12)
  {
    v29 = xpc_dictionary_get_BOOL(v25, "RequestBlockageWarning");
    v30 = a12;
    v31 = *MEMORY[0x1E695E480];
    if (v29)
    {
      v32 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (!v32)
      {
        goto LABEL_12;
      }

      v33 = v32(v27, v30, v31, &cf, &a11);
      if (a11)
      {
        FigXPCMessageSetCFString();
      }
    }

    else
    {
      CMBaseObject = FigAssetTrackGetCMBaseObject(v27);
      v35 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v35)
      {
        goto LABEL_12;
      }

      v33 = v35(CMBaseObject, v30, v31, &cf);
    }

    if (!v33)
    {
      assetXPCServer_SerializeAssetTrackPropertyValueIntoXPCDictionary(a12, cf, v23);
    }
  }

  else
  {
LABEL_19:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM();
  }

LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  if (a12)
  {
    CFRelease(a12);
  }

  if (a11)
  {
    CFRelease(a11);
  }

  OUTLINED_FUNCTION_860();
}

void HandleAssetTrackGetStatusOfValueForPropertyMessage(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, int64_t value, const void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  v21 = v20;
  OUTLINED_FUNCTION_5_48();
  v23 = CFGetTypeID(v22);
  if (v23 != FigAssetTrackGetTypeID())
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_29_12();
  if (FigXPCMessageCopyCFString())
  {
    goto LABEL_7;
  }

  if (a12)
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 8))
    {
      v24 = OUTLINED_FUNCTION_517();
      if (!v25(v24))
      {
        xpc_dictionary_set_uint64(v21, "LoadStatus", SHIDWORD(value));
        xpc_dictionary_set_int64(v21, "LoadingError", value);
        FigXPCMessageSetCFError();
      }
    }
  }

  else
  {
LABEL_12:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM();
  }

LABEL_7:
  if (a12)
  {
    CFRelease(a12);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_860();
}

void HandleAssetTrackLoadValuesAsyncForPropertiesMessage(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int16 a9, char a10, char a11, unsigned int valuea, uint64_t value, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_653();
  v24 = OUTLINED_FUNCTION_17_17(v23);
  if (v24 == FigAssetTrackGetTypeID())
  {
    OUTLINED_FUNCTION_21_16();
    if (!FigXPCMessageCopyCFArray())
    {
      xpc_dictionary_get_BOOL(v22, "isBatch");
      OUTLINED_FUNCTION_26_16();
      if (*(*(CMBaseObjectGetVTable() + 16) + 16))
      {
        v25 = OUTLINED_FUNCTION_517();
        if (!v26(v25))
        {
          OUTLINED_FUNCTION_4_36();
          xpc_dictionary_set_BOOL(v21, "AlreadyLoaded", v27);
          if (v22)
          {
            xpc_dictionary_set_uint64(v21, "BatchID", valuea);
          }
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM();
  }

  if (value)
  {
    CFRelease(value);
  }

  OUTLINED_FUNCTION_652();
}

void HandleAssetTrackLoadValueAsyncForPropertyMessage(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, CFTypeRef cf, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_653();
  v23 = OUTLINED_FUNCTION_24_13(v22);
  if (v23 != FigAssetTrackGetTypeID())
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_15_21();
  if (FigXPCMessageCopyCFString())
  {
    goto LABEL_7;
  }

  if (cf)
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 24))
    {
      v24 = OUTLINED_FUNCTION_517();
      if (!v25(v24))
      {
        OUTLINED_FUNCTION_4_36();
        xpc_dictionary_set_BOOL(v21, "AlreadyLoaded", v26);
      }
    }
  }

  else
  {
LABEL_10:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM();
  }

LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_652();
}

void HandleAssetTrackValidateAsyncMessage(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int64_t value, CFTypeRef a11, CFTypeRef cf, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  v21 = v20;
  OUTLINED_FUNCTION_5_48();
  v23 = CFGetTypeID(v22);
  if (v23 == FigAssetTrackGetTypeID())
  {
    if (!FigXPCMessageCopyCFString())
    {
      OUTLINED_FUNCTION_29_12();
      if (!FigXPCMessageCopyCFDictionary())
      {
        if (*(*(CMBaseObjectGetVTable() + 16) + 40))
        {
          v24 = OUTLINED_FUNCTION_19_20();
          if (!v25(v24))
          {
            xpc_dictionary_set_int64(v21, "ValidationStatus", value);
            xpc_dictionary_set_int64(v21, "ValidationResult", 0);
          }
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (a11)
  {
    CFRelease(a11);
  }

  OUTLINED_FUNCTION_860();
}

void assetXPCServer_SerializeContentKeyBossIntoXPCDictionary(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t value, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  v19 = v18;
  v21 = v20;
  v23 = CFGetTypeID(v22);
  if (v23 == FigContentKeyBossGetTypeID())
  {
    v24 = OUTLINED_FUNCTION_15_21();
    if (!FigContentKeyBossServerGetIDByAssociatingWithClientConnection(v24, v21, v25))
    {
      xpc_dictionary_set_uint64(v19, *MEMORY[0x1E69615A0], 0);
    }

    OUTLINED_FUNCTION_652();
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_652();

    FigSignalErrorAtGM();
  }
}

uint64_t assetXPCServer_SerializeHLSAlternatesIntoXPCDictionary(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_30_11();
  v5 = FigAlternateCopyArrayOfAlternatesAsXPCObject(v3, v4);
  if (!v5)
  {
    xpc_dictionary_set_value(a2, *MEMORY[0x1E69615C8], value);
  }

  FigXPCRelease();
  return v5;
}

uint64_t assetXPCServer_SerializeHLSSessionKeysIntoXPCDictionary(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_30_11();
  v5 = FigContentKeyBossClientServerXPC_CopySerializedKeySpecifiers(v3, v4);
  if (!v5)
  {
    xpc_dictionary_set_value(a2, *MEMORY[0x1E69615C8], value);
  }

  FigXPCRelease();
  return v5;
}

uint64_t FigXPCAssetServerAssociateCopiedNeighborAsset_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CreateServedAssetState_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigXPCAssetServerCopyAssetForID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetServerStart_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t HandleAssetCopyChapterDataMessage_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetXPCServer_NotificationFilter_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t assetXPCServer_NotificationFilter_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t assetXPCServer_NotificationFilter_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t assetXPCServer_NotificationFilter_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

void assetXPCServer_SerializeAssetTrackPropertyValueIntoXPCDictionary_cold_1(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_30_11();
  BinaryPListDataFromMetadataItemArray = FigRemote_CreateBinaryPListDataFromMetadataItemArray(v4, v5);
  if (BinaryPListDataFromMetadataItemArray)
  {
    v7 = BinaryPListDataFromMetadataItemArray;
  }

  else
  {
    v7 = FigXPCMessageSetCFData();
    if (cf)
    {
      CFRelease(cf);
    }
  }

  *a3 = v7;
}

uint64_t assetXPCServer_SerializeTracksArrayIntoXPCDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetXPCServer_SerializeTracksArrayIntoXPCDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t assetXPCServer_SerializeTracksArrayIntoXPCDictionary_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void videoContainerLayer_handleVideoReceiverNotification(uint64_t a1, void *a2, const void *a3, uint64_t a4)
{
  v7 = objc_autoreleasePoolPush();
  v8 = [a2 copyVideoReceiver];
  if (a2 && a3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      FigSignalErrorAtGM();
      if (!v8)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if (FigCFEqual())
    {
      if (CFEqual(a3, @"STSLabelUpdated"))
      {
        cf = 0;
        CMBaseObject = FigVideoReceiverGetCMBaseObject(a4);
        v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v10)
        {
          if (!v10(CMBaseObject, @"STSLabel", *MEMORY[0x1E695E480], &cf))
          {
            [a2 setSTSLabel:cf];
            if (cf)
            {
              CFRelease(cf);
              if (!v8)
              {
                goto LABEL_15;
              }

              goto LABEL_14;
            }
          }
        }
      }

      else if (CFEqual(a3, @"IsReadyForDisplayChanged"))
      {
        [a2 setIsReadyForDisplay:*MEMORY[0x1E695E4D0] == FigCFDictionaryGetValue()];
      }
    }
  }

  if (v8)
  {
LABEL_14:
    CFRelease(v8);
  }

LABEL_15:
  objc_autoreleasePoolPop(v7);
}

uint64_t FCSupport_CopyMutableChapterFromTextSampleBBuf(OpaqueCMBlockBuffer *a1, int a2, int a3, __CFDictionary **a4)
{
  totalLengthOut = 0;
  dataPointerOut = 0;
  cf = 0;
  if (a2 != 1952807028 && a2 != 1954034535)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
LABEL_20:
    Contiguous = FigSignalErrorAtGM();
    goto LABEL_21;
  }

  IsRangeContiguous = CMBlockBufferIsRangeContiguous(a1, 0, 0);
  v10 = MEMORY[0x1E695E480];
  if (IsRangeContiguous)
  {
    if (a1)
    {
      v11 = CFRetain(a1);
    }

    else
    {
      v11 = 0;
    }

    cf = v11;
  }

  else
  {
    CMBlockBufferGetDataLength(a1);
    OUTLINED_FUNCTION_197();
    Contiguous = CMBlockBufferCreateContiguous(v12, v13, v14, v15, v16, v17, 0, v18);
    if (Contiguous)
    {
LABEL_21:
      v24 = Contiguous;
      v25 = 0;
LABEL_22:
      Mutable = 0;
      goto LABEL_23;
    }

    v11 = 0;
  }

  CMBlockBufferGetDataPointer(v11, 0, 0, &totalLengthOut, &dataPointerOut);
  v20 = a2 != 1954034535 || totalLengthOut > 1;
  if (!v20 || (v21 = dataPointerOut, v22 = bswap32(*dataPointerOut) >> 16, v23 = v22 + 2, v22 + 2 > totalLengthOut))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    goto LABEL_20;
  }

  v28 = *v10;
  Mutable = CFDictionaryCreateMutable(v28, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    goto LABEL_74;
  }

  if (v22 + 10 < totalLengthOut)
  {
    v48 = 0;
    OUTLINED_FUNCTION_7_31();
    while (1)
    {
      v32 = v23;
      v33 = &dataPointerOut[v23];
      v34 = bswap32(*&dataPointerOut[v23]);
      v23 = (v34 + v23);
      if (v34 < 9 || v29 < v23)
      {
        goto LABEL_74;
      }

      v36 = *(v33 + 1);
      if (a2 == v30 && v36 == v31)
      {
        if (v29 - v32 <= 0xD)
        {
          goto LABEL_74;
        }

        v38 = v33[12];
        if (v38 + 13 > v34)
        {
          goto LABEL_74;
        }

        v39 = CFStringCreateWithBytes(v28, v33 + 13, v38, 0x8000100u, 0);
        if (v39)
        {
          v40 = v39;
          CFDictionaryAddValue(Mutable, @"ChapterHREFURL", v39);
          CFRelease(v40);
        }

        OUTLINED_FUNCTION_7_31();
      }

      else if (v36 == 1684237925)
      {
        if (v29 - v32 <= 0xB)
        {
          goto LABEL_74;
        }

        v48 = bswap32(*(v33 + 2));
      }

      v29 = totalLengthOut;
      if (v23 + 8 >= totalLengthOut)
      {
        goto LABEL_53;
      }
    }
  }

  v48 = 0;
LABEL_53:
  if (a2 == 1954034535 || v48 == 256)
  {
    if (v22 >= 2)
    {
      v41 = (v21 + 2);
      v45 = v21[2];
      if (v45 != 255)
      {
        if (v45 != 254 || v21[3] != 255)
        {
          goto LABEL_61;
        }

LABEL_73:
        v42 = v28;
        v43 = v22;
        v44 = 256;
        v46 = 1;
        goto LABEL_63;
      }

      if (v21[3] == 254)
      {
        goto LABEL_73;
      }
    }

LABEL_61:
    v41 = (v21 + 2);
    v42 = v28;
    v43 = v22;
    v44 = 134217984;
    goto LABEL_62;
  }

  if (a2 == 1952807028)
  {
    v41 = (v21 + 2);
    v42 = v28;
    v43 = v22;
    v44 = v48;
LABEL_62:
    v46 = 0;
LABEL_63:
    v25 = CFStringCreateWithBytes(v42, v41, v43, v44, v46);
    if (v25)
    {
      if (a3)
      {
        v47 = @"ChapterHREFText";
      }

      else
      {
        v47 = @"ChapterName";
      }

      CFDictionaryAddValue(Mutable, v47, v25);
    }

    v24 = 0;
    *a4 = Mutable;
    goto LABEL_22;
  }

LABEL_74:
  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_5();
  v24 = FigSignalErrorAtGM();
  v25 = 0;
LABEL_23:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v24;
}