uint64_t EnsureLowValueKeyAndIV(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[13])
  {
    return 0;
  }

  v3 = DerivedStorage;
  if (DerivedStorage[14])
  {
    return 0;
  }

  v4 = DerivedStorage[9];
  if (v4)
  {
    v5 = DerivedStorage[11];
    if (v5)
    {
      result = ProcessKeyResponse(a1, v4, v5, 3);
      if (result)
      {
        return result;
      }

      v3[9] = 0;
      v7 = v3[11];
      if (v7)
      {
        CFRelease(v7);
        v3[11] = 0;
      }

      JE2f6WCx();
      return 0;
    }
  }

  OUTLINED_FUNCTION_303();

  return FigSignalErrorAtGM();
}

void EnsureRequiredExternalProtectionMethod(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 176))
  {
    v3 = DerivedStorage;
    EnsureDecryptContext(a1);
    if (*(v3 + 80))
    {
      i2DzSgbBIIe95gyG0gW();
      if (!v4)
      {
        *(v3 + 172) = 0;
        *(v3 + 176) = 1;
      }
    }

    else
    {
      OUTLINED_FUNCTION_303();

      FigSignalErrorAtGM();
    }
  }
}

uint64_t CopyCurrentRequestID_0(uint64_t a1, uint64_t *a2)
{
  v7 = 0;
  v4 = *(a1 + 40);
  if (v4)
  {
    result = PKDKeyManagerGetKeyRequestStateAndID(v4, *(a1 + 216), 0, &v7);
    if (result)
    {
      return result;
    }
  }

  else
  {
    v7 = *(a1 + 208);
  }

  SInt64 = FigCFNumberCreateSInt64();
  *a2 = SInt64;
  if (SInt64)
  {
    return 0;
  }

  else
  {
    return FigSignalErrorAtGM();
  }
}

void EnsureDecryptContext(const void *a1)
{
  v2 = EnsureDecryptContextGuts(a1);
  if (v2 == -42670 || v2 == -42844)
  {
    wnFx1xLULXLA();
    if (!v4)
    {

      EnsureDecryptContextGuts(a1);
    }
  }
}

uint64_t FigPKDCPECryptorGetNativeSession(const void *a1, void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294955146;
  }

  OUTLINED_FUNCTION_29_22();
  if (*(v2 + 16))
  {
    OUTLINED_FUNCTION_3_135();
    if (v6)
    {
      v7 = 4294954511;
    }

    else
    {
      v7 = v5;
    }
  }

  else
  {
    EnsureDecryptContext(a1);
    v7 = v9;
    if (!v9)
    {
      *a2 = *(v2 + 80);
    }
  }

  FigSimpleMutexUnlock();
  return v7;
}

uint64_t FigPKDCPECryptorGetExternalProtectionMethods(uint64_t a1, _DWORD *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294955146;
  }

  OUTLINED_FUNCTION_29_22();
  if (*(v2 + 16))
  {
    OUTLINED_FUNCTION_3_135();
    if (v5)
    {
      v6 = 4294954511;
    }

    else
    {
      v6 = v4;
    }
  }

  else
  {
    v6 = 0;
    *a2 = FigCPEExternalProtectionMonitorGetMethods(*(v2 + 152));
  }

  FigSimpleMutexUnlock();
  return v6;
}

uint64_t FigPKDCPECryptorGetAggregateExternalProtectionStatus(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    return 4294955146;
  }

  OUTLINED_FUNCTION_29_22();
  if (*(v3 + 16))
  {
    OUTLINED_FUNCTION_3_135();
    if (v6)
    {
      v7 = 4294954511;
    }

    else
    {
      v7 = v5;
    }
  }

  else
  {
    v7 = 0;
    *a3 = FigCPEExternalProtectionMonitorGetStatus(*(v3 + 152));
  }

  FigSimpleMutexUnlock();
  return v7;
}

uint64_t FigPKDCPECryptorDecryptSampleWithFormat(const void *a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  v6 = 4294955146;
  if (a2 && a3)
  {
    OUTLINED_FUNCTION_613();
    DataPointer = CMBlockBufferGetDataPointer(v7, v8, v9, v10, v11);
    if (DataPointer)
    {
      return DataPointer;
    }

    OUTLINED_FUNCTION_613();
    DataPointer = CMBlockBufferGetDataPointer(v13, v14, v15, v16, v17);
    if (DataPointer)
    {
      return DataPointer;
    }

    else
    {
      FigSimpleMutexLock();
      EnsureDecryptContext(a1);
      OUTLINED_FUNCTION_26_33();
    }
  }

  return v6;
}

uint64_t FigPKDCPECryptorScrambleDecryptedSampleWithFormat(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 4294955146;
  }

  OUTLINED_FUNCTION_613();
  result = CMBlockBufferGetDataPointer(v2, v3, v4, v5, v6);
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t FigPKDCPECryptorCreateKeyRequest(uint64_t a1, const __CFDictionary *a2, uint64_t a3, void *a4)
{
  v67 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 4294955146;
  if (a2 && a4)
  {
    *a4 = 0;
    FigSimpleMutexLock();
    v51 = 0;
    if (*(DerivedStorage + 16))
    {
      v8 = 4294954511;
LABEL_71:
      FigSimpleMutexUnlock();
      goto LABEL_72;
    }

    v9 = *(DerivedStorage + 40);
    if (v9)
    {
      KeyRequestStateAndID = PKDKeyManagerGetKeyRequestStateAndID(v9, *(DerivedStorage + 216), 0, &v51);
      if (KeyRequestStateAndID)
      {
        goto LABEL_91;
      }

      v11 = v51;
    }

    else
    {
      v11 = *(DerivedStorage + 208);
      v51 = v11;
    }

    if (PKDKeyRequestIDsMatch(a2, v11))
    {
      v12 = *(DerivedStorage + 40);
      v13 = MEMORY[0x1E6962AC0];
      if (v12)
      {
        KeyRequestStateAndID = PKDKeyManagerCreateKeyRequestForKeyID(v12, *(DerivedStorage + 216), a2, *(DerivedStorage + 184), a4);
        if (KeyRequestStateAndID)
        {
          goto LABEL_91;
        }

LABEL_65:
        v36 = *(DerivedStorage + 272);
        v37 = CFDictionaryGetValue(a2, *v13);
        *(DerivedStorage + 272) = v37;
        if (v37)
        {
          CFRetain(v37);
        }

        if (v36)
        {
          CFRelease(v36);
        }

        v8 = 0;
        if (*(DerivedStorage + 80))
        {
          *(DerivedStorage + 96) = 1;
        }

        goto LABEL_71;
      }

      if (!*(DerivedStorage + 72))
      {
        v14 = *(DerivedStorage + 32);
        v15 = CFDictionaryGetValue(a2, *MEMORY[0x1E6962AC8]);
        v48 = CFDictionaryGetValue(a2, *MEMORY[0x1E6962B10]);
        cf = 0;
        *value = 0;
        v49 = CFDictionaryGetValue(a2, *MEMORY[0x1E6962AD8]);
        *type = 0;
        v16 = CFDictionaryGetValue(a2, *MEMORY[0x1E6962AF0]);
        v52 = 0;
        if (v15)
        {
          v17 = CFGetTypeID(v15);
          if (v17 != CFDataGetTypeID())
          {
            goto LABEL_105;
          }
        }

        v46 = v15;
        if (!v14)
        {
          goto LABEL_105;
        }

        if (v16)
        {
          v18 = CopyInfoFromPackagedPersistentKey(DerivedStorage, v16, value, &cf, &v52);
          if (v18)
          {
            v8 = v18;
            v21 = 0;
            goto LABEL_53;
          }

          if (!*value)
          {
LABEL_105:
            OUTLINED_FUNCTION_0_187();
            v8 = FigSignalErrorAtGM();
            v21 = 0;
            if (!v8)
            {
              goto LABEL_56;
            }

            goto LABEL_53;
          }
        }

        else
        {
          v32 = CFDictionaryGetValue(a2, *v13);
          if (v32)
          {
            v33 = CFRetain(v32);
          }

          else
          {
            v33 = 0;
          }

          *value = v33;
          v45 = *(DerivedStorage + 184);
          if (v45)
          {
            v45 = CFRetain(v45);
          }

          cf = v45;
          if (!v33)
          {
            goto LABEL_105;
          }
        }

        if (cf && (!*(DerivedStorage + 184) || FigCFEqual()))
        {
          v50 = a4;
          v19 = *MEMORY[0x1E695E480];
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v21 = Mutable;
          if (Mutable)
          {
            CFDictionarySetValue(Mutable, *v13, *value);
            CFDictionarySetValue(v21, *MEMORY[0x1E6962B00], cf);
            v22 = PKDMovieIDGetValue(v14, v21, type);
            if (!v22)
            {
              if (!*type)
              {
                OUTLINED_FUNCTION_0_187();
                v8 = FigSignalErrorAtGM();
                goto LABEL_52;
              }

              v47 = a1;
              v23 = CFDictionaryGetValue(a2, *MEMORY[0x1E6962B20]);
              v24 = v52;
              v25 = cf;
              v66 = 0;
              v26 = CFDictionaryCreateMutable(v19, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              if (v26)
              {
                v27 = v26;
                v28 = CFDictionaryCreateMutable(v19, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (v28)
                {
                  v29 = v28;
                  UInt64 = FigCFNumberCreateUInt64();
                  if (UInt64)
                  {
                    if (v24)
                    {
                      CFDictionarySetValue(v27, @"igoeg", v24);
                      v31 = *(DerivedStorage + 144);
                      if (v31)
                      {
                        CFDictionarySetValue(v27, @"lGxB4ky", v31);
LABEL_35:
                        CFDictionarySetValue(v27, @"P5h3ZgzLxs", v25);
                        if (*(DerivedStorage + 80))
                        {
                          FigCFDictionarySetInt64();
                        }

                        if (v48)
                        {
                          CFDictionarySetValue(v27, @"xNJu5eepP", v48);
                        }

                        CFDictionarySetValue(v27, @"aMII4QYJ", UInt64);
                        FigCFDictionarySetInt32();
                        if (v23)
                        {
                          CFDictionarySetValue(v27, @"LBV3vEsw", v23);
                        }

                        v13 = MEMORY[0x1E6962AC0];
                        if (v49)
                        {
                          CFDictionarySetValue(v27, @"mDCRHTmtTKJ", v49);
                        }

                        v34 = pC3lVfLuVJLMz(v27, v29);
                        if (v34)
                        {
                          v8 = v34;
                        }

                        else
                        {
                          if (FigCFDictionaryGetInt64IfPresent())
                          {
                            *(DerivedStorage + 72) = v66;
                          }

                          v35 = CFDictionaryGetValue(v29, @"yN1lNULD2GD");
                          if (v35)
                          {
                            v35 = CFRetain(v35);
                          }

                          v8 = 0;
                          *v50 = v35;
                        }

                        goto LABEL_49;
                      }
                    }

                    else if (v46)
                    {
                      CFDictionarySetValue(v27, @"HJN6grNt", v46);
                      goto LABEL_35;
                    }
                  }

                  OUTLINED_FUNCTION_0_187();
                  v8 = FigSignalErrorAtGM();
                  v13 = MEMORY[0x1E6962AC0];
LABEL_49:
                  CFRelease(v27);
                  CFRelease(v29);
                  if (UInt64)
                  {
                    CFRelease(UInt64);
                  }

                  a1 = v47;
LABEL_52:
                  a4 = v50;
                  if (!v8)
                  {
                    goto LABEL_56;
                  }

                  goto LABEL_53;
                }

                OUTLINED_FUNCTION_0_187();
                v8 = FigSignalErrorAtGM();
                CFRelease(v27);
              }

              else
              {
                OUTLINED_FUNCTION_0_187();
                v8 = FigSignalErrorAtGM();
              }

              a1 = v47;
              v13 = MEMORY[0x1E6962AC0];
              goto LABEL_52;
            }

            v8 = v22;
          }

          else
          {
            v8 = 4294955145;
          }

          a4 = v50;
LABEL_53:
          if (*(DerivedStorage + 72))
          {
            JE2f6WCx();
            *(DerivedStorage + 72) = 0;
          }

          *(DerivedStorage + 208) = 0;
LABEL_56:
          if (v21)
          {
            CFRelease(v21);
          }

          if (*value)
          {
            CFRelease(*value);
          }

          if (cf)
          {
            CFRelease(cf);
          }

          if (v52)
          {
            CFRelease(v52);
          }

          if (v8)
          {
            goto LABEL_71;
          }

          goto LABEL_65;
        }

        goto LABEL_105;
      }
    }

    KeyRequestStateAndID = FigSignalErrorAtGM();
LABEL_91:
    v8 = KeyRequestStateAndID;
    goto LABEL_71;
  }

LABEL_72:
  if (dword_1EAF178B0)
  {
    LODWORD(cf) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v39 = cf;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
    {
      v40 = v39;
    }

    else
    {
      v40 = v39 & 0xFFFFFFFE;
    }

    if (v40)
    {
      v41 = *(DerivedStorage + 216);
      v42 = PKDLogPrivateData(a2);
      if (a4)
      {
        v43 = *a4;
      }

      else
      {
        v43 = 0;
      }

      *value = 136316418;
      *&value[4] = "FigPKDCPECryptorCreateKeyRequest";
      v56 = 2048;
      v57 = a1;
      v58 = 2114;
      v59 = v41;
      v60 = 2114;
      v61 = v42;
      v62 = 1024;
      v63 = v8;
      v64 = 2048;
      v65 = v43;
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v8;
}

uint64_t FigPKDCPECryptorSetKeyRequestResponse(const void *a1, const void *a2, const __CFDictionary *a3)
{
  v31[25] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v31[0] = 0;
  if (a2)
  {
    if (a3)
    {
      Value = CFDictionaryGetValue(a3, *MEMORY[0x1E6962B28]);
      v8 = CFDictionaryGetValue(a3, *MEMORY[0x1E6962B30]) == *MEMORY[0x1E695E4D0];
    }

    else
    {
      v8 = 0;
      Value = 0;
    }

    FigSimpleMutexLock();
    if (*(DerivedStorage + 16))
    {
      v24 = 4294954511;
      goto LABEL_32;
    }

    v9 = *(DerivedStorage + 40);
    if (v9)
    {
      KeyRequestStateAndID = PKDKeyManagerGetKeyRequestStateAndID(v9, *(DerivedStorage + 216), 0, v31);
      if (KeyRequestStateAndID)
      {
        goto LABEL_48;
      }

      v11 = *(DerivedStorage + 40);
      if (v11)
      {
        KeyRequestStateAndID = PKDKeyManagerSetUsedForLowValueDecryptionForKeyID(v11, *(DerivedStorage + 216), *(DerivedStorage + 120));
        if (KeyRequestStateAndID)
        {
          goto LABEL_48;
        }

        KeyRequestStateAndID = PKDKeyManagerSetKeyRequestResponseForKeyID(*(DerivedStorage + 40), *(DerivedStorage + 216), a2);
        if (KeyRequestStateAndID)
        {
          goto LABEL_48;
        }

LABEL_21:
        if (*(DerivedStorage + 280))
        {
          CMNotificationCenterGetDefaultLocalCenter();
          FigDispatchAsyncPostNotification();
          if (Value)
          {
            goto LABEL_23;
          }
        }

        else
        {
          *(DerivedStorage + 280) = 1;
          if (Value)
          {
LABEL_23:
            v13 = *MEMORY[0x1E695E480];
            Current = CFAbsoluteTimeGetCurrent();
            v15 = CFDateCreate(v13, Current);
            TimeIntervalSinceDate = CFDateGetTimeIntervalSinceDate(Value, v15);
            if (TimeIntervalSinceDate > 0.0 && (v17 = TimeIntervalSinceDate, StopAndReleaseTimer((DerivedStorage + 200)), dispatch_get_global_queue(0, 0), OUTLINED_FUNCTION_613(), v22 = dispatch_source_create(v18, v19, v20, v21), (*(DerivedStorage + 200) = v22) != 0))
            {
              if (*(DerivedStorage + 8))
              {
                CFRetain(*(DerivedStorage + 8));
                v22 = *(DerivedStorage + 200);
                v23 = *(DerivedStorage + 8);
              }

              else
              {
                v23 = 0;
              }

              dispatch_set_context(v22, v23);
              v25 = *(DerivedStorage + 200);
              v26 = dispatch_time(0, (v17 * 1000000000.0));
              dispatch_source_set_timer(v25, v26, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
              dispatch_source_set_event_handler_f(*(DerivedStorage + 200), RenewalTimerCallback_0);
              dispatch_source_set_cancel_handler_f(*(DerivedStorage + 200), FigCFRelease_11);
              dispatch_resume(*(DerivedStorage + 200));
              v24 = 0;
              if (!v15)
              {
                goto LABEL_32;
              }
            }

            else
            {
              OUTLINED_FUNCTION_13_51();
              v24 = FigSignalErrorAtGM();
              if (!v15)
              {
                goto LABEL_32;
              }
            }

            CFRelease(v15);
LABEL_32:
            FigSimpleMutexUnlock();
            v27 = v31[0];
            goto LABEL_33;
          }
        }

        v24 = 0;
        goto LABEL_32;
      }
    }

    else
    {
      v31[0] = *(DerivedStorage + 208);
    }

    if (*(DerivedStorage + 72))
    {
      v12 = *(DerivedStorage + 128);
      if (v12)
      {
        CFRelease(v12);
        *(DerivedStorage + 128) = 0;
      }

      if (*(DerivedStorage + 136))
      {
        KeyRequestStateAndID = ProcessKeyResponse(a1, *(DerivedStorage + 72), a2, 2);
        if (!KeyRequestStateAndID)
        {
          if (*(DerivedStorage + 72))
          {
            JE2f6WCx();
            *(DerivedStorage + 72) = 0;
          }

          *(DerivedStorage + 208) = 0;
          goto LABEL_21;
        }
      }

      else
      {
        v30 = *(DerivedStorage + 88);
        *(DerivedStorage + 88) = a2;
        CFRetain(a2);
        if (v30)
        {
          CFRelease(v30);
        }

        *(DerivedStorage + 96) = 0;
        if (*(DerivedStorage + 120))
        {
          KeyRequestStateAndID = EnsureLowValueKeyAndIV(a1);
          if (!KeyRequestStateAndID)
          {
            goto LABEL_21;
          }
        }

        else
        {
          EnsureDecryptContext(a1);
          if (!KeyRequestStateAndID)
          {
            goto LABEL_21;
          }
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_13_51();
      KeyRequestStateAndID = FigSignalErrorAtGM();
    }

LABEL_48:
    v24 = KeyRequestStateAndID;
    goto LABEL_32;
  }

  v27 = 0;
  v8 = 0;
  v24 = 4294955146;
LABEL_33:
  PKDDispatchKeyResponseNotification(a1, v24, v27, v8);
  if (dword_1EAF178B0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v24;
}

uint64_t FigPKDCPECryptorCopyPropertyForFormat(const void *a1, const void *a2, int a3, uint64_t a4, CFDataRef *a5)
{
  CMBaseObjectGetDerivedStorage();
  v11 = 4294955146;
  if (a2 && a5)
  {
    OUTLINED_FUNCTION_29_22();
    if (*(v5 + 16))
    {
      OUTLINED_FUNCTION_3_135();
      if (v13)
      {
        v11 = 4294954511;
      }

      else
      {
        v11 = v12;
      }

      goto LABEL_7;
    }

    if (CFEqual(a2, *MEMORY[0x1E6961098]))
    {
      EnsureDecryptContext(a1);
      v16 = *(v5 + 80);
      if (!v16)
      {
        OUTLINED_FUNCTION_243();
        v15 = FigSignalErrorAtGM();
        goto LABEL_12;
      }

      CryptFormatForFormat = GetCryptFormatForFormat(a3);
      v18 = FhS8L9pZ83yt(v16, CryptFormatForFormat);
    }

    else
    {
      if (!CFEqual(a2, *MEMORY[0x1E6961090]))
      {
        v15 = FigPKDCPECryptorCopyProperty(a1, a2, a4, a5);
LABEL_12:
        v11 = v15;
LABEL_7:
        FigSimpleMutexUnlock();
        return v11;
      }

      EnsureDecryptContext(a1);
      if (v19)
      {
        v11 = v19;
        OUTLINED_FUNCTION_243();
        FigSignalErrorAtGM();
        goto LABEL_7;
      }

      GetCryptFormatForFormat(a3);
      EKNEpfxz52bXl();
    }

    v11 = 0;
    v20 = MEMORY[0x1E695E4D0];
    if (v18)
    {
      v20 = MEMORY[0x1E695E4C0];
    }

    *a5 = *v20;
    goto LABEL_7;
  }

  return v11;
}

uint64_t FigPKDCPECryptorAbsorbKeyRequestContext(int a1, CFTypeRef cf)
{
  if (!cf)
  {
    return 4294949726;
  }

  v2 = CFGetTypeID(cf);
  if (v2 != FigCPECryptorGetTypeID())
  {
    return 4294949726;
  }

  ClassID = CMBaseObjectGetClassID();
  if (ClassID != CMBaseObjectGetClassID())
  {
    return 4294949726;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 16))
  {
    FigSimpleMutexUnlock();
    return 4294949723;
  }

  v6 = *(DerivedStorage + 40);
  if (!v6 || *(DerivedStorage + 200))
  {
    OUTLINED_FUNCTION_243();
    v15 = FigSignalErrorAtGM();
    FigSimpleMutexUnlock();
    if (v15)
    {
      return v15;
    }

    v9 = 0;
    v7 = 0;
  }

  else
  {
    v7 = CFRetain(v6);
    v8 = *(DerivedStorage + 216);
    if (v8)
    {
      v9 = CFRetain(v8);
    }

    else
    {
      v9 = 0;
    }

    FigSimpleMutexUnlock();
  }

  FigSimpleMutexLock();
  if (*(v5 + 16))
  {
    FigSimpleMutexUnlock();
    v13 = 0;
    v14 = 0;
    v15 = 4294949723;
  }

  else
  {
    v10 = *(v5 + 40);
    if (!v10 || *(v5 + 200))
    {
      OUTLINED_FUNCTION_243();
      v15 = FigSignalErrorAtGM();
      FigSimpleMutexUnlock();
      v13 = 0;
      if (v15)
      {
        v14 = 0;
        goto LABEL_19;
      }

      v11 = 0;
    }

    else
    {
      v11 = CFRetain(v10);
      v12 = *(v5 + 216);
      if (v12)
      {
        v13 = CFRetain(v12);
      }

      else
      {
        v13 = 0;
      }

      FigSimpleMutexUnlock();
    }

    v14 = v13;
    v15 = PKDKeyManagerAbsorbKeyRequestContext(v7, v11, v9, v13);
    v13 = v11;
  }

LABEL_19:
  if (v7)
  {
    CFRelease(v7);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v15;
}

uint64_t FigPKDCPECryptorIsAggregateExternalProtectionStatusStable(uint64_t a1, _BYTE *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294955146;
  }

  OUTLINED_FUNCTION_29_22();
  if (*(v2 + 16))
  {
    OUTLINED_FUNCTION_3_135();
    if (v5)
    {
      v6 = 4294954511;
    }

    else
    {
      v6 = v4;
    }
  }

  else
  {
    v6 = 0;
    *a2 = FigCPEExternalProtectionMonitorStableStatusDetermined(*(v2 + 152));
  }

  FigSimpleMutexUnlock();
  return v6;
}

uint64_t FigPKDCPECryptorCreateProcessedBlockBufferAndSubsampleAuxiliaryDataWithOptions(const void *a1, opaqueCMSampleBuffer *a2, char a3, CFTypeRef *a4, void *a5, CFDataRef *a6)
{
  v66 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  memset(v59, 0, sizeof(v59));
  v57 = 0;
  cf = 0;
  v55 = 0;
  dataLength = 0;
  v53 = 0;
  v54 = 0;
  FormatDescription = CMSampleBufferGetFormatDescription(a2);
  MediaSubType = CMFormatDescriptionGetMediaSubType(FormatDescription);
  FigSimpleMutexLock();
  if (MediaSubType != 2053207651)
  {
    OUTLINED_FUNCTION_243();
    goto LABEL_36;
  }

  DataBuffer = CMSampleBufferGetDataBuffer(a2);
  DataPointer = OUTLINED_FUNCTION_15_51(DataBuffer, DataBuffer, v16, v17, v18, v19, v20, &cf);
  if (DataPointer)
  {
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_613();
  DataPointer = CMBlockBufferGetDataPointer(v22, v23, v24, v25, v26);
  if (DataPointer)
  {
    goto LABEL_37;
  }

  DataPointer = OUTLINED_FUNCTION_10_68(dataLength, &v55, v51);
  if (DataPointer)
  {
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_613();
  DataPointer = CMBlockBufferGetDataPointer(v27, v28, v29, 0, v30);
  if (DataPointer)
  {
    goto LABEL_37;
  }

  if (dataLength < 5)
  {
LABEL_35:
    OUTLINED_FUNCTION_243();
LABEL_36:
    DataPointer = FigSignalErrorAtGM();
LABEL_37:
    v48 = DataPointer;
    v36 = 0;
    goto LABEL_41;
  }

  v52 = a6;
  while (1)
  {
    OUTLINED_FUNCTION_21_37();
    if (!v32)
    {
      break;
    }

    OUTLINED_FUNCTION_16_47();
    if (!(!v33 & v32))
    {
      goto LABEL_13;
    }
  }

  if (!v31)
  {
    goto LABEL_35;
  }

LABEL_13:
  v34 = -v31;
  OUTLINED_FUNCTION_73_7();
  v36 = malloc_type_calloc(v34, 0x18uLL, v35);
  if (DerivedStorage[31] == FormatDescription)
  {
LABEL_26:
    EnsureDecryptContext(a1);
    *&v59[0] = DerivedStorage[10];
    if (a3)
    {
      v46 = 12;
    }

    else
    {
      v46 = 9;
    }

    DWORD2(v59[0]) = v46;
    *(v59 + 12) = 4;
    WORD2(v60) = 4;
    *(&v60 + 1) = v57;
    LODWORD(v61) = dataLength;
    *(&v61 + 1) = v54;
    LODWORD(v62) = dataLength;
    BYTE4(v63) = 0;
    *(&v65 + 4) = 0x9000000010;
    *(&v63 + 1) = v36;
    LODWORD(v64) = v34;
    *(&v64 + 1) = DerivedStorage[32];
    HIDWORD(v65) = 0;
    MDIwLzAxLzA5IDE(v59);
    if (v43)
    {
      goto LABEL_51;
    }

    if (v62 != dataLength)
    {
      goto LABEL_49;
    }

    if (DWORD2(v59[0]) == 9)
    {
      if (BYTE4(v63) != 1 || (v47 = DWORD1(v64)) == 0)
      {
LABEL_49:
        OUTLINED_FUNCTION_40_0();
        goto LABEL_50;
      }
    }

    else
    {
      v47 = DWORD1(v64);
    }

    if (v34 >= v47)
    {
      *a5 = *(&v65 + 4);
      v49 = OUTLINED_FUNCTION_24_31(v47);
      v48 = 0;
      *a4 = v55;
      v55 = 0;
      *v52 = v49;
      goto LABEL_41;
    }

    goto LABEL_49;
  }

  Extension = CMFormatDescriptionGetExtension(FormatDescription, *MEMORY[0x1E69600A0]);
  if (!Extension || (v38 = Extension, v39 = CFGetTypeID(Extension), v39 != CFDictionaryGetTypeID()) || (Value = CFDictionaryGetValue(v38, @"avcC")) == 0 || (v41 = Value, v42 = CFGetTypeID(Value), v42 != CFDataGetTypeID()))
  {
    OUTLINED_FUNCTION_40_0();
LABEL_50:
    v43 = FigSignalErrorAtGM();
    goto LABEL_51;
  }

  v43 = CopyImageParamsFromAVCData(v41, &v53);
  if (!v43)
  {
    v44 = DerivedStorage[31];
    DerivedStorage[31] = FormatDescription;
    if (FormatDescription)
    {
      CFRetain(FormatDescription);
    }

    if (v44)
    {
      CFRelease(v44);
    }

    v45 = DerivedStorage[32];
    if (v45)
    {
      DerivedStorage[32] = 0;
      free(v45);
    }

    DerivedStorage[32] = v53;
    v53 = 0;
    goto LABEL_26;
  }

LABEL_51:
  v48 = v43;
LABEL_41:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  free(v53);
  free(v36);
  FigSimpleMutexUnlock();
  return v48;
}

uint64_t FigPKDCPECryptorGetAggregateExternalProtectionStatusIgnoringDisplays(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    return 4294955146;
  }

  OUTLINED_FUNCTION_29_22();
  if (*(v3 + 16))
  {
    OUTLINED_FUNCTION_3_135();
    if (v6)
    {
      v7 = 4294954511;
    }

    else
    {
      v7 = v5;
    }
  }

  else
  {
    v7 = 0;
    *a3 = FigCPEExternalProtectionMonitorGetStatusIgnoringDisplays(*(v3 + 152));
  }

  FigSimpleMutexUnlock();
  return v7;
}

uint64_t FigPKDCPECryptorIsAggregateExternalProtectionStatusStableIgnoringDisplays(uint64_t a1, _BYTE *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294955146;
  }

  OUTLINED_FUNCTION_29_22();
  if (*(v2 + 16))
  {
    OUTLINED_FUNCTION_3_135();
    if (v5)
    {
      v6 = 4294954511;
    }

    else
    {
      v6 = v4;
    }
  }

  else
  {
    v6 = 0;
    *a2 = FigCPEExternalProtectionMonitorStableStatusDeterminedIgnoringDisplays(*(v2 + 152));
  }

  FigSimpleMutexUnlock();
  return v6;
}

uint64_t FigPKDCPECryptorCopySerializedCryptorRecipe(uint64_t a1, CFDataRef *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 0;
  if (DerivedStorage)
  {
    v5 = DerivedStorage;
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v6)
    {
      return 4294954514;
    }

    result = v6(a1, &v9);
    if (result)
    {
      return result;
    }

    *bytes = v9;
    Methods = FigCPEExternalProtectionMonitorGetMethods(*(v5 + 152));
    v12 = 2;
    v8 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 24);
    if (!v8)
    {
      return 4294955145;
    }
  }

  else
  {
    v8 = 0;
  }

  result = 0;
  *a2 = v8;
  return result;
}

uint64_t FigPKDCPECryptorGetCryptorType(uint64_t a1, _DWORD *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294955146;
  }

  OUTLINED_FUNCTION_29_22();
  if (*(v2 + 16))
  {
    OUTLINED_FUNCTION_3_135();
    if (v5)
    {
      v6 = 4294954511;
    }

    else
    {
      v6 = v4;
    }
  }

  else
  {
    v6 = 0;
    *a2 = 2;
  }

  FigSimpleMutexUnlock();
  return v6;
}

uint64_t GetSliceDataForDecrypt(const void *a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || !a3)
  {
    goto LABEL_5;
  }

  if (CMGetAttachment(a1, @"avcC", 0))
  {
    HLSfMP4ParsingInfoFromAVCCData = FigH264Bridge_CreateHLSfMP4ParsingInfoFromAVCCData();
    if (HLSfMP4ParsingInfoFromAVCCData)
    {
LABEL_10:
      v5 = HLSfMP4ParsingInfoFromAVCCData;
      goto LABEL_6;
    }

LABEL_5:
    OUTLINED_FUNCTION_243();
    HLSfMP4ParsingInfoFromAVCCData = FigSignalErrorAtGM();
    goto LABEL_10;
  }

  v5 = 4294955146;
LABEL_6:
  free(0);
  FigH264Bridge_HLSfMP4ParsingInfoDestroy();
  return v5;
}

uint64_t GetAudioPacketDataForDecrypt(uint64_t a1, _DWORD *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_613();
  result = CMBlockBufferGetDataPointer(v5, v6, v7, v8, v9);
  if (!result)
  {
    if (DolbyGetFrameSize(0))
    {
      return FigSignalErrorAtGM();
    }

    else
    {
      v15[0] = 0;
      v15[1] = 0;
      OUTLINED_FUNCTION_73_7();
      v12 = malloc_type_calloc(1uLL, 8uLL, v11);
      if (v12)
      {
        v13 = v12;
        for (i = 0; i != 1; ++i)
        {
          v12[i] = *&v15[2 * i];
        }

        result = 0;
        *a2 = 1;
        *a3 = v13;
      }

      else
      {
        return 4294955145;
      }
    }
  }

  return result;
}

void RenewalTimerCallback_0()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    if (!*(DerivedStorage + 16))
    {
      StopAndReleaseTimer((DerivedStorage + 200));
      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
    }

    FigSimpleMutexUnlock();
  }

  if (dword_1EAF178B0)
  {
    v2 = OUTLINED_FUNCTION_126();
    os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v0)
  {
    CFRelease(v0);
  }
}

uint64_t CopyImageParamsFromAVCData(uint64_t a1, void *a2)
{
  if (!a1)
  {
    SPSAndPPSCountFromAVCC = FigSignalErrorAtGM();
    goto LABEL_8;
  }

  SPSAndPPSCountFromAVCC = FigH264Bridge_GetSPSAndPPSCountFromAVCC();
  if (SPSAndPPSCountFromAVCC)
  {
LABEL_8:
    v6 = SPSAndPPSCountFromAVCC;
    goto LABEL_5;
  }

  v4 = malloc_type_calloc(1uLL, 0x30uLL, 0x10900401BACEF9BuLL);
  v5 = v4;
  if (!v4)
  {
    v6 = 4294955145;
    goto LABEL_6;
  }

  *v4 = v4 + 48;
  *(v4 + 3) = v4 + 48;
  *(v4 + 1) = v4 + 48;
  *(v4 + 4) = v4 + 48;
  *(v4 + 4) = 0;
  *(v4 + 10) = 0;
  v6 = 0;
  *a2 = v4;
LABEL_5:
  v5 = 0;
LABEL_6:
  free(v5);
  return v6;
}

uint64_t FigPKDCPELimitedCryptorInvalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF178B0)
  {
    v1 = OUTLINED_FUNCTION_126();
    os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (!*DerivedStorage)
  {
    *DerivedStorage = 1;
    if (*(DerivedStorage + 16))
    {
      pNl28qYdqR8Dyw();
      *(DerivedStorage + 16) = 0;
    }

    v2 = *(DerivedStorage + 72);
    if (v2)
    {
      CFRelease(v2);
      *(DerivedStorage + 72) = 0;
    }

    v3 = *(DerivedStorage + 48);
    if (v3)
    {
      CFRelease(v3);
      *(DerivedStorage + 48) = 0;
    }

    v4 = *(DerivedStorage + 40);
    if (v4)
    {
      CFRelease(v4);
      *(DerivedStorage + 40) = 0;
    }
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigPKDCPELimitedCryptorFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigPKDCPELimitedCryptorInvalidate();
  result = *(DerivedStorage + 8);
  if (result)
  {
    result = FigSimpleMutexDestroy();
    *(DerivedStorage + 8) = 0;
  }

  return result;
}

uint64_t FigPKDCPELimitedCryptorCopyProperty(const void *a1, const void *a2, uint64_t a3, void *a4)
{
  CMBaseObjectGetDerivedStorage();
  v8 = 4294955146;
  if (a2 && a4)
  {
    OUTLINED_FUNCTION_30_20();
    if (*v4)
    {
      v8 = 4294954511;
LABEL_18:
      FigSimpleMutexUnlock();
      return v8;
    }

    if (CFEqual(a2, *MEMORY[0x1E6961108]))
    {
      v9 = *(v4 + 48);
      if (!v9)
      {
        goto LABEL_17;
      }
    }

    else if (CFEqual(a2, *MEMORY[0x1E6961118]))
    {
      v9 = *MEMORY[0x1E695E4D0];
      if (!*MEMORY[0x1E695E4D0])
      {
        goto LABEL_17;
      }
    }

    else if (CFEqual(a2, *MEMORY[0x1E69610A0]))
    {
      v9 = *(v4 + 40);
      if (!v9)
      {
        v8 = 4294955137;
        goto LABEL_18;
      }
    }

    else if (CFEqual(a2, *MEMORY[0x1E6961128]))
    {
      v9 = *MEMORY[0x1E695E4C0];
    }

    else
    {
      if (!CFEqual(a2, *MEMORY[0x1E6961130]))
      {
        v8 = 4294954512;
        goto LABEL_18;
      }

      v11 = EnsureUUIDForLimitedCryptor(a1);
      if (v11)
      {
        v8 = v11;
        goto LABEL_18;
      }

      v9 = *(v4 + 72);
      if (!v9)
      {
        goto LABEL_17;
      }
    }

    v9 = CFRetain(v9);
LABEL_17:
    v8 = 0;
    *a4 = v9;
    goto LABEL_18;
  }

  return v8;
}

uint64_t FigPKDCPELimitedCryptorGetNativeSession(uint64_t a1, void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294955146;
  }

  OUTLINED_FUNCTION_30_20();
  if (*v2)
  {
    v4 = 4294954511;
  }

  else
  {
    v4 = 0;
    *a2 = *(v2 + 16);
  }

  FigSimpleMutexUnlock();
  return v4;
}

uint64_t FigPKDCPELimitedCryptorGetExternalProtectionMethods(uint64_t a1, _DWORD *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294955146;
  }

  OUTLINED_FUNCTION_30_20();
  if (*v2)
  {
    v4 = 4294954511;
  }

  else
  {
    v4 = 0;
    *a2 = *(v2 + 24);
  }

  FigSimpleMutexUnlock();
  return v4;
}

uint64_t FigPKDCPELimitedCryptorGetAggregateExternalProtectionStatus(uint64_t a1, uint64_t a2, int *a3)
{
  CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    return 4294955146;
  }

  OUTLINED_FUNCTION_30_20();
  if (*v3)
  {
    v5 = 4294954511;
  }

  else
  {
    v5 = 0;
    if (*(v3 + 24))
    {
      v6 = 4;
    }

    else
    {
      v6 = 3;
    }

    *a3 = v6;
  }

  FigSimpleMutexUnlock();
  return v5;
}

uint64_t FigPKDCPELimitedCryptorDecryptSampleWithFormat(uint64_t a1, OpaqueCMBlockBuffer *a2, OpaqueCMBlockBuffer *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 4294955146;
  if (a2 && a3)
  {
    v9 = DerivedStorage;
    OUTLINED_FUNCTION_613();
    DataPointer = CMBlockBufferGetDataPointer(v10, v11, v12, v13, v14);
    if (!DataPointer)
    {
      OUTLINED_FUNCTION_613();
      DataPointer = CMBlockBufferGetDataPointer(v16, v17, v18, v19, v20);
      if (!DataPointer)
      {
        if (!CMBlockBufferIsRangeContiguous(a2, 0, 0) || !CMBlockBufferIsRangeContiguous(a3, 0, 0))
        {
          return 4294955140;
        }

        if (*(v9 + 16))
        {
          if (a4 == 2053464883 || a4 == 2053319475)
          {
            v24 = OUTLINED_FUNCTION_4_134();
            DataPointer = GetAudioPacketDataForDecrypt(v24, v25, v26);
            if (!DataPointer)
            {
              FigSimpleMutexLock();
              OUTLINED_FUNCTION_7_92();
              OUTLINED_FUNCTION_25_33();
              v8 = v27;
              FigSimpleMutexUnlock();
              v28 = a4;
LABEL_19:
              free(v28);
              return v8;
            }
          }

          else
          {
            if (a4 != 1902212707)
            {
              FigSimpleMutexLock();
              OUTLINED_FUNCTION_7_92();
              NfcRKVnxuKZy04KWbdFu71Ou();
              v8 = v22;
              FigSimpleMutexUnlock();
              return v8;
            }

            v29 = OUTLINED_FUNCTION_4_134();
            DataPointer = GetSliceDataForDecrypt(v29, v30, v31);
            if (!DataPointer)
            {
              FigSimpleMutexLock();
              OUTLINED_FUNCTION_17_44();
              v8 = v32;
              FigSimpleMutexUnlock();
              v28 = v33;
              goto LABEL_19;
            }
          }
        }

        else
        {
          OUTLINED_FUNCTION_243();
          return FigSignalErrorAtGM();
        }
      }
    }

    return DataPointer;
  }

  return v8;
}

uint64_t FigPKDCPELimitedCryptorCreateProcessedBlockBufferAndSubsampleAuxiliaryDataWithOptions(uint64_t a1, opaqueCMSampleBuffer *a2, uint64_t a3, CFTypeRef *a4, void *a5, CFDataRef *a6)
{
  v63 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0;
  cf = 0;
  v51 = 0;
  dataLength = 0;
  v49 = 0;
  v50 = 0;
  FormatDescription = CMSampleBufferGetFormatDescription(a2);
  MediaSubType = CMFormatDescriptionGetMediaSubType(FormatDescription);
  FigSimpleMutexLock();
  if (MediaSubType != 2053207651)
  {
    OUTLINED_FUNCTION_303();
    goto LABEL_32;
  }

  DataBuffer = CMSampleBufferGetDataBuffer(a2);
  DataPointer = OUTLINED_FUNCTION_15_51(DataBuffer, DataBuffer, v14, v15, v16, v17, v18, &cf);
  if (DataPointer)
  {
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_613();
  DataPointer = CMBlockBufferGetDataPointer(v20, v21, v22, v23, v24);
  if (DataPointer)
  {
    goto LABEL_33;
  }

  DataPointer = OUTLINED_FUNCTION_10_68(dataLength, &v51, v48);
  if (DataPointer)
  {
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_613();
  DataPointer = CMBlockBufferGetDataPointer(v25, v26, v27, 0, v28);
  if (DataPointer)
  {
    goto LABEL_33;
  }

  if (dataLength < 5)
  {
LABEL_31:
    OUTLINED_FUNCTION_303();
LABEL_32:
    DataPointer = FigSignalErrorAtGM();
LABEL_33:
    v45 = DataPointer;
    v34 = 0;
    goto LABEL_37;
  }

  while (1)
  {
    OUTLINED_FUNCTION_21_37();
    if (!v30)
    {
      break;
    }

    OUTLINED_FUNCTION_16_47();
    if (!(!v31 & v30))
    {
      goto LABEL_12;
    }
  }

  if (!v29)
  {
    goto LABEL_31;
  }

LABEL_12:
  v32 = -v29;
  OUTLINED_FUNCTION_73_7();
  v34 = malloc_type_calloc(v32, 0x18uLL, v33);
  if (DerivedStorage[7] != FormatDescription)
  {
    Extension = CMFormatDescriptionGetExtension(FormatDescription, *MEMORY[0x1E69600A0]);
    if (!Extension || (v36 = Extension, v37 = CFGetTypeID(Extension), v37 != CFDictionaryGetTypeID()) || (Value = CFDictionaryGetValue(v36, @"avcC")) == 0 || (v39 = Value, v40 = CFGetTypeID(Value), v40 != CFDataGetTypeID()))
    {
      OUTLINED_FUNCTION_40_0();
LABEL_46:
      v41 = FigSignalErrorAtGM();
      goto LABEL_47;
    }

    v41 = CopyImageParamsFromAVCData(v39, &v49);
    if (v41)
    {
      goto LABEL_47;
    }

    v42 = DerivedStorage[7];
    DerivedStorage[7] = FormatDescription;
    if (FormatDescription)
    {
      CFRetain(FormatDescription);
    }

    if (v42)
    {
      CFRelease(v42);
    }

    v43 = DerivedStorage[8];
    if (v43)
    {
      DerivedStorage[8] = 0;
      free(v43);
    }

    DerivedStorage[8] = v49;
    v49 = 0;
  }

  *&v55 = DerivedStorage[2];
  *(&v55 + 1) = 0x400000009;
  LODWORD(v56) = 0;
  WORD2(v57) = 4;
  *(&v57 + 1) = v53;
  LODWORD(v58) = dataLength;
  *(&v58 + 1) = v50;
  LODWORD(v59) = dataLength;
  BYTE4(v60) = 0;
  *(&v62 + 4) = 0x9000000010;
  *(&v60 + 1) = v34;
  LODWORD(v61) = v32;
  *(&v61 + 1) = DerivedStorage[8];
  HIDWORD(v62) = 0;
  MDIwLzAxLzA5IDE(&v55);
  if (!v41)
  {
    if (v59 == dataLength)
    {
      if (DWORD2(v55) == 9)
      {
        if (BYTE4(v60) != 1)
        {
          goto LABEL_45;
        }

        v44 = DWORD1(v61);
        if (!DWORD1(v61))
        {
          goto LABEL_45;
        }
      }

      else
      {
        v44 = DWORD1(v61);
      }

      if (v32 >= v44)
      {
        *a5 = *(&v62 + 4);
        v46 = OUTLINED_FUNCTION_24_31(v44);
        v45 = 0;
        *a4 = v51;
        v51 = 0;
        *a6 = v46;
        goto LABEL_37;
      }
    }

LABEL_45:
    OUTLINED_FUNCTION_40_0();
    goto LABEL_46;
  }

LABEL_47:
  v45 = v41;
LABEL_37:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v51)
  {
    CFRelease(v51);
  }

  free(v49);
  free(v34);
  FigSimpleMutexUnlock();
  return v45;
}

uint64_t FigPKDCPELimitedCryptorCopySerializedCryptorRecipe(uint64_t a1, CFDataRef *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = 0;
  if (DerivedStorage)
  {
    v5 = DerivedStorage;
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v6)
    {
      return 4294954514;
    }

    result = v6(a1, &v10);
    if (result)
    {
      return result;
    }

    v8 = *(v5 + 24);
    *bytes = v10;
    v12 = v8;
    v13 = 2;
    v9 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 24);
    if (!v9)
    {
      return 4294955145;
    }
  }

  else
  {
    v9 = 0;
  }

  result = 0;
  *a2 = v9;
  return result;
}

uint64_t FigPKDCPELimitedCryptorIsCompatibleWithSerializedCryptorRecipe(uint64_t a1, const __CFData *a2, BOOL *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  BytePtr = CFDataGetBytePtr(a2);
  if (CFDataGetLength(a2) != 24)
  {
    return 4294949724;
  }

  v8 = *BytePtr;
  v9 = *(BytePtr + 2);
  v10 = *(BytePtr + 4);
  v15 = 0;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v11)
  {
    return 4294954514;
  }

  result = v11(a1, &v15);
  if (!result)
  {
    v14 = 0;
    if (v15 == v8 && *(DerivedStorage + 24) == v9 && v10 == 2)
    {
      v14 = 1;
    }

    result = 0;
    *a3 = v14;
  }

  return result;
}

uint64_t FigPKDCPELimitedCryptorGetCryptorType(uint64_t a1, _DWORD *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294955146;
  }

  OUTLINED_FUNCTION_30_20();
  if (*v2)
  {
    v4 = 4294954511;
  }

  else
  {
    v4 = 0;
    *a2 = 2;
  }

  FigSimpleMutexUnlock();
  return v4;
}

uint64_t FigPKDCPECryptorCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PersistentKeyUpdatedCallback_cold_1()
{
  result = FigSignalErrorAtGM();
  if (result)
  {
    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t AddWeakListenerOnExternalProtectionMonitor_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t AddWeakListenerOnExternalProtectionMonitor_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t RemoveWeakListenerOnExternalProtectionMonitor_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t RemoveWeakListenerOnExternalProtectionMonitor_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CreatePackagedPersistentKeyGuts_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CreatePackagedPersistentKeyGuts_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CreatePackagedPersistentKeyGuts_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CreatePackagedPersistentKeyGuts_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ProcessKeyResponse_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ProcessKeyResponse_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ProcessKeyResponse_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ProcessKeyResponse_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void ProcessKeyResponse_cold_5(const void *a1, _DWORD *a2)
{
  *a2 = FigSignalErrorAtGM();

  CFRelease(a1);
}

uint64_t ProcessKeyResponse_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ProcessKeyResponse_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ProcessKeyResponse_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ProcessKeyResponse_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t EnsureDecryptContextGuts_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ProcessOfflineKey_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ProcessOfflineKey_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ProcessOfflineKey_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ProcessOfflineKey_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void ProcessOfflineKey_cold_5(const void *a1, _DWORD *a2)
{
  *a2 = FigSignalErrorAtGM();

  CFRelease(a1);
}

uint64_t ProcessOfflineKey_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ProcessOfflineKey_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PostKeyRequestErrorOccurred_cold_1()
{
  result = FigSignalErrorAtGM();
  if (result)
  {
    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t CopyInfoFromPackagedPersistentKey_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CopyInfoFromPackagedPersistentKey_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CopyInfoFromPackagedPersistentKey_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CopyInfoFromPackagedPersistentKey_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CopyInfoFromPackagedPersistentKey_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t SetPersistentKey_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPKDCPECryptorTestAndSetKeyRequestState_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPKDCPECryptorTestAndSetKeyRequestState_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPKDCPECryptorCreatePackagedPersistentKey_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPKDCPECryptorCreatePackagedPersistentKey_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t frpfanout_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  frpfanout_gracefullySetArrayOfSampleBufferConsumers(a1, 0);
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  if (!FigNotificationCenterRemoveWeakListener())
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v3 = *(DerivedStorage + 8);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 8) = 0;
  }

  v4 = *(DerivedStorage + 24);
  if (v4)
  {
    dispatch_release(v4);
    *(DerivedStorage + 24) = 0;
  }

  return FigSimpleMutexDestroy();
}

uint64_t FigRenderPipelineCreateForFanOutToArrayOfSampleBufferConsumers_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRenderPipelineCreateForFanOutToArrayOfSampleBufferConsumers_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRenderPipelineCreateForFanOutToArrayOfSampleBufferConsumers_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTSerializerForByteStream_AddText(uint64_t a1, const __CFString *a2)
{
  FigBytePumpGetFigBaseObject(a1);
  CMBaseObjectGetDerivedStorage();
  if (a2 && CFStringGetLength(a2) >= 1)
  {
    CFStringGetLength(a2);
    v3 = OUTLINED_FUNCTION_1_173();
    if (CFStringGetBytes(v3, v18, v4, v5, v6, 0, 0, v16))
    {
      v7 = malloc_type_malloc(0, 0xA9227708uLL);
      if (v7 && (CFStringGetLength(a2), v8 = OUTLINED_FUNCTION_1_173(), CFStringGetBytes(v8, v19, v9, v10, v11, v7, v12, v17)))
      {
        v13 = CMByteStreamAppend();
      }

      else
      {
        v13 = FigSignalErrorAtGM();
      }

      v14 = v13;
    }

    else
    {
      v14 = FigSignalErrorAtGM();
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v14 = 0;
  }

  free(v7);
  return v14;
}

uint64_t FigVTTSerializerCreateForByteStream_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_37();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVTTSerializerCreateForByteStream_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_37();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTSerializerForByteStream_CopyProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_37();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTSerializerForByteStream_CopyProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_37();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTSerializerForByteStream_SetProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTSerializerForByteStream_SetProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_37();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTSerializerForByteStream_SetProperty_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_37();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpic_DequeueItemsFromInterstitialPlayer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_180_1();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!v3)
  {
    return 0;
  }

  v6 = DerivedStorage;
  Count = CFArrayGetCount(v3);
  if (Count < 1)
  {
    return 0;
  }

  v8 = Count;
  v9 = 0;
  v10 = &dword_1EAF17000;
  while (1)
  {
    if (dword_1EAF178D0)
    {
      v11 = v10;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_134();
      if (v14)
      {
        v15 = v13;
      }

      else
      {
        v15 = 0;
      }

      if (v15)
      {
        v16 = OUTLINED_FUNCTION_617();
        CFArrayGetValueAtIndex(v16, v17);
        OUTLINED_FUNCTION_129_4();
        OUTLINED_FUNCTION_100();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl();
      }

      v10 = v11;
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_238_0();
    }

    v18 = *(v6 + 128);
    v19 = OUTLINED_FUNCTION_617();
    ValueAtIndex = CFArrayGetValueAtIndex(v19, v20);
    result = v18(v4, a3, ValueAtIndex, *(v6 + 48));
    if (result)
    {
      break;
    }

    if (v8 == ++v9)
    {
      return 0;
    }
  }

  return result;
}

uint64_t fpic_TransitionPlayback(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v39 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_78_8();
  v9 = OUTLINED_FUNCTION_198_0();
  v11 = v10(v9);
  if (dword_1EAF178D0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_101_0();
    if (v14)
    {
      v15 = v13;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_449();
  }

  if (a3 || !fpic_skipShowInterstitial(DerivedStorage))
  {
    v16 = OUTLINED_FUNCTION_151_2();
    fpic_flipInterstitialAndPrimaryVisibility(a1, a3 == 0, a4, v16);
  }

  v17 = OUTLINED_FUNCTION_198_0();
  result = v18(v17);
  if (!result)
  {
    if (a3)
    {
      v28 = MEMORY[0x1E6960C70];
      *(DerivedStorage + 1116) = *MEMORY[0x1E6960C70];
      *(DerivedStorage + 1132) = *(v28 + 16);
      StopAndReleaseTimer((DerivedStorage + 832));
      if (!v11)
      {
        goto LABEL_24;
      }

      FigBaseObject = FigPlayerGetFigBaseObject(v11);
      v30 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v30)
      {
        v30(FigBaseObject, @"AllowVideoRenderingIfSendingVisualsToNero", *MEMORY[0x1E695E4C0]);
      }

      v31 = FigPlayerGetFigBaseObject(a2);
      v32 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v32)
      {
        v32(v31, @"AllowVideoRenderingIfSendingVisualsToNero", *MEMORY[0x1E695E4D0]);
      }

      result = fpic_SetRateWithReason(v11, 38, 0.0);
      if (!result)
      {
LABEL_24:
        *(DerivedStorage + 376) = 0;
        fpic_UngatePrimaryPlayback(a1);
        v33 = OUTLINED_FUNCTION_198_0();
        fpic_SetInterstitialActionAtEnd(v33, v34, v35);
        return 0;
      }
    }

    else
    {
      v20 = MEMORY[0x1E6960C70];
      v36 = *MEMORY[0x1E6960C70];
      *(DerivedStorage + 1092) = *MEMORY[0x1E6960C70];
      v21 = *(v20 + 16);
      *(DerivedStorage + 1108) = v21;
      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_75_9();
      if (!v23)
      {
        OUTLINED_FUNCTION_14_59();
        if (v14)
        {
          v22 = v24;
        }
      }

      v25 = *v22;
      v26 = v22[1];
      *(DerivedStorage + 376) = *(v22 + 4);
      *(DerivedStorage + 344) = v25;
      *(DerivedStorage + 360) = v26;
      fpic_GetEffectiveCurrentItemMoment(*(DerivedStorage + 160), v37);
      result = 0;
      v27 = v37[1];
      *(DerivedStorage + 304) = v37[0];
      *(DerivedStorage + 320) = v27;
      *(DerivedStorage + 336) = v38;
      *(DerivedStorage + 556) = v36;
      *(DerivedStorage + 572) = v21;
      *(DerivedStorage + 580) = v36;
      *(DerivedStorage + 596) = v21;
    }
  }

  return result;
}

uint64_t fpic_SetRateWithReason(uint64_t a1, uint64_t a2, float a3)
{
  cf = 0;
  SetRateOptions = FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], a2, &cf);
  if (SetRateOptions)
  {
    goto LABEL_4;
  }

  v6 = cf;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (v7)
  {
    SetRateOptions = v7(a1, v6, a3);
LABEL_4:
    v8 = SetRateOptions;
    goto LABEL_6;
  }

  v8 = 4294954514;
LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t fpic_SetInterstitialActionAtEnd(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_180_1();
  CMBaseObjectGetDerivedStorage();
  v4 = OUTLINED_FUNCTION_171();
  result = v5(v4);
  if (result)
  {
    FigBaseObject = FigPlayerGetFigBaseObject(result);
    VTable = CMBaseObjectGetVTable();
    v9 = *(VTable + 8);
    result = VTable + 8;
    v10 = *(v9 + 56);
    if (v10)
    {

      return v10(FigBaseObject, @"ActionAtEnd", a3);
    }
  }

  return result;
}

CFIndex fpic_GetPerEventTrackingCount(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_187();
  Count = *(v4 + 664);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= v2)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 664), v2);
  if (!ValueAtIndex)
  {
    return 0;
  }

  return CFArrayGetCount(ValueAtIndex);
}

const void *fpic_GetPerAssetPerEventTrackedObject(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  OUTLINED_FUNCTION_433();
  Count = *(v8 + 664);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= v4)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(v5 + 664), v4);
  if (ValueAtIndex)
  {
    ValueAtIndex = CFArrayGetCount(ValueAtIndex);
  }

  if (ValueAtIndex <= a3)
  {
    return 0;
  }

  v11 = OUTLINED_FUNCTION_171();
  v13 = CFArrayGetValueAtIndex(v11, v12);

  return CFDictionaryGetValue(v13, a4);
}

void fpic_CreateAndPrimeItemTimer()
{
  OUTLINED_FUNCTION_172_2();
  v35 = v0;
  v36 = v1;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v34 = *MEMORY[0x1E69E9840];
  timebase = 0;
  FigBaseObject = FigPlaybackItemGetFigBaseObject(v7);
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v12 || (v12(FigBaseObject, @"Timebase", *MEMORY[0x1E695E480], &timebase), !timebase))
  {
    OUTLINED_FUNCTION_374();
    FigSignalErrorAtGM();
LABEL_15:
    v14 = 0;
    goto LABEL_16;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 1uLL, *(DerivedStorage + 8));
  if (v14)
  {
    FigCFWeakReferenceHolderCreateWithReferencedObject();
    v15 = OUTLINED_FUNCTION_399();
    dispatch_set_context(v15, v16);
    dispatch_source_set_timer(v14, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
    v17 = OUTLINED_FUNCTION_617();
    dispatch_source_set_event_handler_f(v17, v18);
    v19 = OUTLINED_FUNCTION_265();
    dispatch_source_set_cancel_handler_f(v19, v20);
    dispatch_set_finalizer_f(v14, FigCFRelease_12);
    dispatch_resume(v14);
    if (!CMTimebaseAddTimerDispatchSource(timebase, v14))
    {
      if (!*(v6 + 32))
      {
        v21 = *(v6 + 24);
        fpic_CurrentItemMoment(v8, &fireTime);
        FigCreateTimeWithDateAndMoment(&fireTime, &v29, v21);
        *v6 = v29;
      }

      OUTLINED_FUNCTION_199_0();
      if (!CMTimebaseSetTimerDispatchSourceNextFireTime(v22, v14, &fireTime, 1u))
      {
        if (dword_1EAF178D0)
        {
          OUTLINED_FUNCTION_197_2();
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type);
          OUTLINED_FUNCTION_28();
          if (v2)
          {
            OUTLINED_FUNCTION_199_0();
            Seconds = CMTimeGetSeconds(&fireTime);
            CMTimebaseGetTime(&fireTime, timebase);
            CMTimeGetSeconds(&fireTime);
            LODWORD(v29.value) = 136315906;
            OUTLINED_FUNCTION_2_6();
            *(&v29.flags + 2) = v10;
            HIWORD(v29.epoch) = v25;
            v30 = Seconds;
            v31 = v25;
            v32 = v26;
            OUTLINED_FUNCTION_39();
            OUTLINED_FUNCTION_23();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_417();
        }

        *v4 = v14;
        goto LABEL_15;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_374();
    FigSignalErrorAtGM();
  }

LABEL_16:
  if (timebase)
  {
    CFRelease(timebase);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  OUTLINED_FUNCTION_171_2();
}

uint64_t fpic_isInterstitialBufferingUngated(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (*(DerivedStorage + 160))
  {
    v3 = *DerivedStorage;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __fpic_isInterstitialBufferingUngated_block_invoke;
    block[3] = &unk_1E747EC60;
    block[5] = a1;
    block[6] = DerivedStorage;
    block[4] = &v7;
    dispatch_sync(v3, block);
    v4 = *(v8 + 24);
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

void fpic_applyCoordinationMediaSelectionCriteria(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v22 = 0;
  if (!a2)
  {
    return;
  }

  v5 = DerivedStorage;
  FigBaseObject = FigPlaybackItemGetFigBaseObject(a2);
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v8 = *MEMORY[0x1E695E480];
    if (!v7(FigBaseObject, @"MediaSelectionArray", *MEMORY[0x1E695E480], &v22))
    {
      v9 = FigPlaybackItemGetFigBaseObject(a2);
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v10)
      {
        if (!v10(v9, @"SelectedMediaArray", v8, &cf))
        {
          v11 = *(v5 + 1152);
          v12 = cf;
          *(v5 + 1152) = cf;
          if (v12)
          {
            CFRetain(v12);
          }

          if (v11)
          {
            CFRelease(v11);
          }

          v13 = v22;
          v14 = CMBaseObjectGetDerivedStorage();
          v25 = 0;
          v26 = 0;
          v23 = 0;
          value = 0;
          v15 = FigMediaAccessibilityCaptionsDisplayType();
          MutableCopy = FigCFDictionaryCreateMutableCopy();
          if (MutableCopy)
          {
            if (*(v14 + 1152))
            {
              FigAutomaticMediaSelectionGetMediaSelectionGroupsForMajorIntrinsicCharacteristics(v13, 0, &v25, &v26);
              if (v15 == kMACaptionAppearanceDisplayTypeAlwaysOn)
              {
                if (v26)
                {
                  v17 = FigAutomaticMediaSelectionCopySelectedMediaDictionaryMatchingGroupIDAndMediaType(*(v14 + 1152), v26);
                  MediaSelectionCriteriaForMediaType = fpic_createMediaSelectionCriteriaForMediaType(v17, v26, 0, &value);
                  if (value)
                  {
                    CFDictionarySetValue(MutableCopy, @"public.legible", value);
                  }

                  goto LABEL_26;
                }
              }

              else
              {
                CFDictionaryRemoveValue(MutableCopy, @"public.legible");
              }

              v17 = 0;
              MediaSelectionCriteriaForMediaType = 0;
LABEL_26:
              if (v25)
              {
                v20 = FigAutomaticMediaSelectionCopySelectedMediaDictionaryMatchingGroupIDAndMediaType(*(v14 + 1152), v25);
                MediaSelectionCriteriaForMediaType = fpic_createMediaSelectionCriteriaForMediaType(v20, v25, 1, &v23);
                if (v23)
                {
                  CFDictionarySetValue(MutableCopy, @"public.audible", v23);
                }
              }

              else
              {
                v20 = 0;
              }

              if (v17)
              {
                CFRelease(v17);
              }

              if (v20)
              {
                CFRelease(v20);
              }

              v19 = MutableCopy;
              MutableCopy = 0;
              goto LABEL_33;
            }

            v19 = 0;
            MediaSelectionCriteriaForMediaType = 0;
          }

          else
          {
            OUTLINED_FUNCTION_239();
            MediaSelectionCriteriaForMediaType = FigSignalErrorAtGM();
            v19 = 0;
          }

LABEL_33:
          if (value)
          {
            CFRelease(value);
          }

          if (v23)
          {
            CFRelease(v23);
          }

          if (MutableCopy)
          {
            CFRelease(MutableCopy);
          }

          if (!MediaSelectionCriteriaForMediaType)
          {
            fpic_setCoordinationMediaSelectionCriteria(a1, v19);
          }

          goto LABEL_17;
        }
      }
    }
  }

  v19 = 0;
LABEL_17:
  if (v22)
  {
    CFRelease(v22);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v19)
  {
    CFRelease(v19);
  }
}

void fpic_CopyEventsWithOfflineURLsIfNecessary(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    OUTLINED_FUNCTION_429();
LABEL_41:
    FigSignalErrorAtGM();
    goto LABEL_36;
  }

  v6 = DerivedStorage;
  if (a2)
  {
    v7 = CFRetain(a2);
  }

  else
  {
    v7 = 0;
  }

  *a3 = v7;
  v8 = *(v6 + 160);
  if (!v8)
  {
    goto LABEL_36;
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject(v8);
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v10)
  {
    goto LABEL_36;
  }

  v11 = *MEMORY[0x1E695E480];
  if (v10(FigBaseObject, @"OfflineInterstitialURLs", *MEMORY[0x1E695E480], &cf) || FigCFDictionaryGetCount() < 1)
  {
    goto LABEL_36;
  }

  Mutable = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_429();
    goto LABEL_41;
  }

  v13 = Mutable;
  v14 = 0;
  theArray = Mutable;
  if (!a2)
  {
    goto LABEL_12;
  }

LABEL_11:
  for (i = CFArrayGetCount(a2); v14 < i; i = 0)
  {
    OUTLINED_FUNCTION_617();
    ValueAtIndex = FigCFArrayGetValueAtIndex();
    v17 = fpic_UnwrapEvent();
    v18 = FigPlayerInterstitialEventCopyInterstitialAssetURLs(v17);
    if (v18)
    {
      v19 = v18;
      Count = CFArrayGetCount(v18);
      OUTLINED_FUNCTION_622();
      MutableCopy = FigCFArrayCreateMutableCopy();
      if (Count >= 1)
      {
        for (j = 0; j != Count; ++j)
        {
          v23 = CFArrayGetValueAtIndex(v19, j);
          if (!FigCFURLIsLocalResource())
          {
            CFURLGetString(v23);
            Value = FigCFDictionaryGetValue();
            if (Value)
            {
              v25 = Value;
            }

            else
            {
              v25 = v23;
            }

            CFArraySetValueAtIndex(MutableCopy, j, v25);
          }
        }
      }

      if (FigCFEqual())
      {
        WrappedEvent = 0;
      }

      else
      {
        FigPlayerInterstitialEventSetInterstitialAssetURLs(v17, MutableCopy);
        WrappedEvent = fpic_CreateWrappedEvent();
        ValueAtIndex = WrappedEvent;
      }

      v13 = theArray;
      CFArrayAppendValue(theArray, ValueAtIndex);
      CFRelease(v19);
      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      if (WrappedEvent)
      {
        CFRelease(WrappedEvent);
      }
    }

    else
    {
      v13 = theArray;
      CFArrayAppendValue(theArray, ValueAtIndex);
    }

    ++v14;
    if (a2)
    {
      goto LABEL_11;
    }

LABEL_12:
    ;
  }

  if (*a3)
  {
    CFRelease(*a3);
  }

  *a3 = v13;
LABEL_36:
  if (cf)
  {
    CFRelease(cf);
  }
}

void fpic_SortEventsInAddOrder()
{
  OUTLINED_FUNCTION_649();
  v1 = v0;
  v87 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 200);
  if (!v3 || ((Count = CFArrayGetCount(v3), *(DerivedStorage + 1143)) ? (v5 = Count < 1) : (v5 = 1), v5))
  {
LABEL_53:
    OUTLINED_FUNCTION_651();
    return;
  }

  v6 = Count;
  v7 = OUTLINED_FUNCTION_265();
  Mutable = CFArrayCreateMutable(v7, v8, 0);
  if (Mutable)
  {
    v10 = Mutable;
    v11 = OUTLINED_FUNCTION_265();
    v14 = CFArrayCreateMutable(v11, v12, v13);
    if (v14)
    {
      v15 = 0;
      while (1)
      {
        v16 = malloc_type_calloc(1uLL, 0x10uLL, 0x10C004028F705ECuLL);
        if (!v16)
        {
          break;
        }

        v17 = v16;
        v16[1] = v15;
        ValueAtIndex = FigCFArrayGetValueAtIndex();
        if (ValueAtIndex)
        {
          ValueAtIndex = CFRetain(ValueAtIndex);
        }

        *v17 = ValueAtIndex;
        CFArrayAppendValue(v10, v17);
        if (v6 == ++v15)
        {
          v88.location = 0;
          v88.length = v6;
          CFArraySortValues(v10, v88, fpic_interstitialEventCompFunc, v1);
          if (CFArrayGetCount(v10) >= 1)
          {
            v19 = 0;
            do
            {
              OUTLINED_FUNCTION_624();
              v20 = FigCFArrayGetValueAtIndex();
              CFArrayAppendValue(v14, *v20);
              ++v19;
            }

            while (v19 < CFArrayGetCount(v10));
          }

          if (!FigCFEqual())
          {
            v21 = *(DerivedStorage + 208);
            *(DerivedStorage + 208) = v14;
            CFRetain(v14);
            if (v21)
            {
              CFRelease(v21);
            }

            if (dword_1EAF178D0)
            {
              LODWORD(v79) = 0;
              type.n128_u8[0] = 0;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              OUTLINED_FUNCTION_125();
              if (v24)
              {
                v25 = v23;
              }

              else
              {
                v25 = 0;
              }

              if (v25)
              {
                v26 = *(DerivedStorage + 208);
                *v82 = 136315650;
                *&v82[4] = "fpic_SortEventsInAddOrder";
                *&v82[12] = 2048;
                *&v82[14] = v1;
                *&v82[22] = 2112;
                *&v82[24] = v26;
                OUTLINED_FUNCTION_82_1();
                OUTLINED_FUNCTION_19_1();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_417();
            }
          }

          v27 = CMBaseObjectGetDerivedStorage();
          v74 = 0u;
          v75 = 0u;
          v72 = 0;
          v73 = 0;
          v28 = *(v27 + 208);
          if (v28 && CFArrayGetCount(v28) >= 1)
          {
            cf = FigCFWeakReferenceHolderCopyReferencedObject();
            if (!cf)
            {
              break;
            }

            v29 = 0;
            v30 = 0;
            v31 = 0;
            v32 = 0;
            for (i = 0; ; i = v62)
            {
              v34 = *(v27 + 208);
              if (v34)
              {
                v34 = CFArrayGetCount(v34);
              }

              if (v31 >= v34)
              {
                break;
              }

              v60 = i;
              v58 = v32;
              v62 = FigCFArrayGetValueAtIndex();
              v32 = fpic_UnwrapEvent();
              v69 = 0u;
              v70 = 0u;
              v71 = 0;
              fpic_GetEventStartMoment(v32, &v69);
              v84 = OUTLINED_FUNCTION_219_1(MEMORY[0x1E6960C70]);
              v36 = *(v35 + 16);
              *&v85 = v36;
              FigPlayerInterstitialEventSetInternalPlayoutLimit(v32, &v84);
              if (v30 | v29)
              {
                v84 = v74;
                v85 = v75;
                *(&v86 + 2) = v72;
                HIWORD(v86) = v73;
                OUTLINED_FUNCTION_232_1();
                LOBYTE(v86) = v30;
                BYTE1(v86) = v29;
                v37 = OUTLINED_FUNCTION_154_2();
                if (!fpic_MomentsAreCloseWithTolerance(v37, v38, &kMomentsAreCloseThreshold))
                {
                  v67 = v59;
                  v68 = v36;
                  memset(&v66, 0, sizeof(v66));
                  fpic_PredictEventGroupDurationOnPrimary(v1, v60, cf, 0, &v67, &v66);
                  OUTLINED_FUNCTION_155_1();
                  *(&v86 + 2) = v39;
                  HIWORD(v86) = v73;
                  *v82 = v67;
                  *&v82[16] = v68;
                  v40 = OUTLINED_FUNCTION_154_2();
                  fpic_AddTimeToMoment(v40, v41, v42);
                  OUTLINED_FUNCTION_125_4();
                  OUTLINED_FUNCTION_155_1();
                  *(&v86 + 2) = v43;
                  HIWORD(v86) = v73;
                  *v82 = v66;
                  v44 = OUTLINED_FUNCTION_154_2();
                  fpic_AddTimeToMoment(v44, v45, v46);
                  v84 = 0u;
                  v85 = 0u;
                  v86 = 0;
                  *v82 = v63;
                  *&v82[16] = v64;
                  v83[0] = v65;
                  v81 = 0;
                  v79 = 0u;
                  v80 = 0u;
                  fpic_AddTimeToMoment(&v84, &kAbuttingEventThreshold, &v79);
                  v78 = 0;
                  type = 0u;
                  v77 = 0u;
                  fpic_SubtractTimeFromMoment(v82, &kAbuttingEventThreshold, &type);
                  OUTLINED_FUNCTION_233_1();
                  if (fpic_MomentGreaterThan(&v84, &v79))
                  {
                    OUTLINED_FUNCTION_232_1();
                    v84 = type;
                    v85 = v77;
                    v86 = v78;
                    v47 = OUTLINED_FUNCTION_154_2();
                    if (fpic_MomentGreaterThan(v47, v48))
                    {
                      v79 = 0uLL;
                      *&v80 = 0;
                      OUTLINED_FUNCTION_233_1();
                      memset(v82, 0, sizeof(v82));
                      v83[0] = 0;
                      v49 = OUTLINED_FUNCTION_154_2();
                      fpic_SubtractMomentFromMoment(v49, v50, v51);
                      if (dword_1EAF178D0)
                      {
                        type.n128_u32[0] = 0;
                        v52 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                        v53 = type.n128_u32[0];
                        if (!os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
                        {
                          v53 &= ~1u;
                        }

                        if (v53)
                        {
                          OUTLINED_FUNCTION_213_1();
                          Seconds = CMTimeGetSeconds(&v84);
                          *v82 = 136315906;
                          *&v82[4] = "fpic_applyInternalPlayoutLimitsToOverlappingEvents";
                          *&v82[12] = 2048;
                          *&v82[14] = v1;
                          *&v82[22] = 2048;
                          *&v82[24] = Seconds;
                          LOWORD(v83[0]) = 2112;
                          *(v83 + 2) = v60;
                          OUTLINED_FUNCTION_95_1();
                          OUTLINED_FUNCTION_31();
                          _os_log_send_and_compose_impl();
                        }

                        OUTLINED_FUNCTION_7();
                        fig_log_call_emit_and_clean_up_after_send_and_compose();
                      }

                      OUTLINED_FUNCTION_213_1();
                      FigPlayerInterstitialEventSetInternalPlayoutLimit(v58, &v84);
                    }
                  }
                }
              }

              v74 = v69;
              v75 = v70;
              v30 = v71;
              v29 = BYTE1(v71);
              v72 = *(&v71 + 2);
              v73 = HIWORD(v71);
              ++v31;
            }

            CFRelease(cf);
          }

          goto LABEL_46;
        }
      }
    }

    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM();
LABEL_46:
    if (CFArrayGetCount(v10) >= 1)
    {
      v55 = 0;
      do
      {
        OUTLINED_FUNCTION_198_0();
        v56 = FigCFArrayGetValueAtIndex();
        if (*v56)
        {
          CFRelease(*v56);
        }

        free(v56);
        ++v55;
      }

      while (v55 < CFArrayGetCount(v10));
    }

    CFRelease(v10);
    if (v14)
    {
      CFRelease(v14);
    }

    goto LABEL_53;
  }

  OUTLINED_FUNCTION_429();
  OUTLINED_FUNCTION_651();

  FigSignalErrorAtGM();
}

void fpic_UpdatePlaybackItemEventList()
{
  OUTLINED_FUNCTION_649();
  OUTLINED_FUNCTION_108_3();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v0 && ((v3 = *(DerivedStorage + 208), v4 = CMBaseObjectGetDerivedStorage(), !v3) ? (Count = 0) : (Count = CFArrayGetCount(v3)), (Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0])) != 0))
  {
    v7 = Mutable;
    v8 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v8)
    {
      v9 = v8;
      if (!fpic_ShouldIgnoreInterstitialsDueToExternalPlaybackStrategy(v1) && Count >= 1)
      {
        v10 = 0;
        v11 = (v4 + 88);
        do
        {
          v12 = *v11;
          v13 = OUTLINED_FUNCTION_16_13();
          ValueAtIndex = CFArrayGetValueAtIndex(v13, v14);
          v16 = v12(v1, v9, ValueAtIndex);
          v17 = FigPlayerInterstitialEventCopyAsDictionary(v16, 0);
          if (!v17)
          {
            break;
          }

          v18 = v17;
          CFArrayAppendValue(v7, v17);
          CFRelease(v18);
          ++v10;
        }

        while (Count != v10);
      }

      CFRelease(v9);
    }

    FigPlaybackItemGetFigBaseObject(v0);
    if (*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      v19 = OUTLINED_FUNCTION_236();
      v20(v19);
    }

    OUTLINED_FUNCTION_651();

    CFRelease(v21);
  }

  else
  {
    OUTLINED_FUNCTION_651();
  }
}

const void *fpic_createMediaSelectionCriteriaForMediaType(const __CFDictionary *a1, const __CFDictionary *a2, int a3, __CFDictionary **a4)
{
  v19 = 0;
  if (a4)
  {
    result = 0;
    if (!a1)
    {
      return result;
    }

    if (!a2)
    {
      return result;
    }

    FigCFDictionaryGetBooleanIfPresent();
    result = CFDictionaryGetValue(a1, @"MediaSelectionOptionsPersistentID");
    if (!result)
    {
      return result;
    }

    Value = CFDictionaryGetValue(a2, @"MediaSelectionGroupOptions");
    v10 = 0;
    do
    {
      if (Value)
      {
        Count = CFArrayGetCount(Value);
      }

      else
      {
        Count = 0;
      }

      if (v10 >= Count)
      {
        result = 0;
        *a4 = 0;
        return result;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(Value, v10);
      CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsPersistentID");
      ++v10;
    }

    while (!FigCFEqual());
    v18 = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsLanguageCode");
    v13 = MEMORY[0x1E695E480];
    if (v18)
    {
      v14 = CFArrayCreate(*MEMORY[0x1E695E480], &v18, 1, MEMORY[0x1E695E9C0]);
      if (!v14)
      {
        OUTLINED_FUNCTION_303();
        return FigSignalErrorAtGM();
      }

      if (a3)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v14 = 0;
      if (a3)
      {
LABEL_14:
        v15 = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsTaggedMediaCharacteristics");
LABEL_18:
        Mutable = CFDictionaryCreateMutable(*v13, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v17 = Mutable;
        if (Mutable)
        {
          if (v14)
          {
            CFDictionarySetValue(Mutable, @"preferredLanguages", v14);
          }

          if (v15)
          {
            CFDictionarySetValue(v17, @"preferredMediaCharacteristics", v15);
          }
        }

        else
        {
          OUTLINED_FUNCTION_303();
          FigSignalErrorAtGM();
        }

        *a4 = v17;
        if (v14)
        {
          CFRelease(v14);
        }

        return 0;
      }
    }

    v15 = 0;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_303();

  return FigSignalErrorAtGM();
}

uint64_t fpic_UnwrapEvent()
{
  OUTLINED_FUNCTION_187();
  CMBaseObjectGetDerivedStorage();
  result = FigCFWeakReferenceHolderCopyReferencedObject();
  if (result)
  {
    v1 = result;
    v2 = OUTLINED_FUNCTION_36_25();
    v4 = v3(v2);
    CFRelease(v1);
    return v4;
  }

  return result;
}

uint64_t fpic_CreateWrappedEvent()
{
  OUTLINED_FUNCTION_187();
  CMBaseObjectGetDerivedStorage();
  result = FigCFWeakReferenceHolderCopyReferencedObject();
  if (result)
  {
    v1 = result;
    v2 = OUTLINED_FUNCTION_36_25();
    v3(v2);
    CFRelease(v1);
    return 0;
  }

  return result;
}

uint64_t fpic_interstitialEventCompFunc()
{
  OUTLINED_FUNCTION_187();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = fpic_UnwrapEvent();
  OUTLINED_FUNCTION_284();
  fpic_UnwrapEvent();
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  fpic_GetEventStartMoment(v3, &v33);
  OUTLINED_FUNCTION_125_4();
  OUTLINED_FUNCTION_284();
  fpic_GetEventStartMoment(v4, v5);
  v14 = v35;
  v15 = v32;
  if (!v35 || !v32)
  {
    v16 = BYTE1(v32);
    v17 = BYTE1(v35);
    if (!BYTE1(v35) || !BYTE1(v32))
    {
      v38 = 0;
      v36 = 0u;
      v37 = 0u;
      if (*(DerivedStorage + 336) || *(DerivedStorage + 337))
      {
        v19 = *(DerivedStorage + 320);
        v36 = *(DerivedStorage + 304);
        v37 = v19;
        v38 = *(DerivedStorage + 336);
      }

      else
      {
        fpic_CurrentItemMoment(*(DerivedStorage + 160), &v36);
      }

      memset(&v29, 0, sizeof(v29));
      v20 = MEMORY[0x1E6960C70];
      if (v14)
      {
        *&v29.value = v33;
        v21 = v34;
      }

      else
      {
        if (v17)
        {
          OUTLINED_FUNCTION_194_1();
          v6 = FigCreateTimeWithDateAndMoment(time1, &v29, v22);
LABEL_20:
          memset(&v28, 0, sizeof(v28));
          if (v15)
          {
            *&v28.value = v30;
            v23 = v31;
          }

          else
          {
            if (v16)
            {
              OUTLINED_FUNCTION_194_1();
              v6 = FigCreateTimeWithDateAndMoment(time1, &v28, v24);
LABEL_25:
              *time1 = v29;
              OUTLINED_FUNCTION_123_3(v6, v7, v8, v9, v10, v11, v12, v13, v26.value, *&v26.timescale, v26.epoch, v27, *&v28.value);
              v26.epoch = v25;
              LODWORD(result) = CMTimeCompare(time1, &v26);
              if (result)
              {
                return result;
              }

              goto LABEL_6;
            }

            *&v28.value = *v20;
            v23 = *(v20 + 16);
          }

          v28.epoch = v23;
          goto LABEL_25;
        }

        *&v29.value = *MEMORY[0x1E6960C70];
        v21 = *(MEMORY[0x1E6960C70] + 16);
      }

      v29.epoch = v21;
      goto LABEL_20;
    }
  }

  *time1 = v33;
  *&time1[16] = v34;
  v40 = v35;
  v36 = v30;
  v37 = v31;
  v38 = v32;
  if (fpic_MomentsAreCloseWithTolerance(time1, &v36, &kMomentsAreCloseThreshold))
  {
LABEL_6:
    if (*(v1 + 8) < *(v0 + 8))
    {
      return -1;
    }

    else
    {
      return 1;
    }
  }

  v36 = v33;
  v37 = v34;
  v38 = v35;
  *time1 = v30;
  *&time1[16] = v31;
  v40 = v32;
  if (fpic_MomentGreaterThan(time1, &v36))
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

__n128 fpic_GetItemEndTime()
{
  OUTLINED_FUNCTION_433();
  v2 = v1;
  CMBaseObjectGetDerivedStorage();
  result.n128_u64[0] = OUTLINED_FUNCTION_17_7(MEMORY[0x1E6960C70]).n128_u64[0];
  if (v0)
  {
    v5 = v3;
    FigCFCopyPropertyAsTime();
    OUTLINED_FUNCTION_29();
    if ((!v6 || *(CMBaseObjectGetDerivedStorage() + 1032) == v0) && *(*(CMBaseObjectGetVTable() + 16) + 16))
    {
      v7 = OUTLINED_FUNCTION_235();
      v8(v7);
    }

    if (*(v5 + 160) == v0)
    {
      if (*(v5 + 396))
      {
        v10 = *v2;
        v9 = *(v5 + 384);
        if (!faqrp_timeDifferenceIsWithinTolerance(&v10, &v9, &kMomentsAreCloseThreshold))
        {
          result = *(v5 + 384);
          v2->epoch = *(v5 + 400);
          *&v2->value = result;
        }
      }

      else
      {
        result = *&v2->value;
        *(v5 + 400) = v2->epoch;
        *(v5 + 384) = result;
      }
    }
  }

  return result;
}

void fpic_GetEventDuration(CMTime *a1@<X8>)
{
  v41 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_235_1();
  OUTLINED_FUNCTION_766();
  v3();
  OUTLINED_FUNCTION_17_7(MEMORY[0x1E6960C70]);
  if (v4)
  {
    v5 = v4;
    CMBaseObjectGetDerivedStorage();
    v6 = OUTLINED_FUNCTION_164_2();
    v7 = MEMORY[0x1E6960CC0];
    if (v6 != -1)
    {
      v20 = v6;
      v21 = OUTLINED_FUNCTION_622();
      PerEventTrackingCount = fpic_GetPerEventTrackingCount(v21, v22);
      value = *v7;
      timescale = *(v7 + 8);
      if (PerEventTrackingCount >= 1)
      {
        v24 = v7;
        v25 = 0;
        epoch = *(v24 + 16);
        flags = *(v24 + 12);
        v33 = PerEventTrackingCount;
        do
        {
          memset(&time1, 0, sizeof(time1));
          OUTLINED_FUNCTION_766();
          fpic_GetEventItemDurationOnEventTimeline(v28, v29, v30, v25, v31);
          lhs.value = value;
          lhs.timescale = timescale;
          lhs.flags = flags;
          lhs.epoch = epoch;
          rhs = time1;
          CMTimeAdd(&time2, &lhs, &rhs);
          value = time2.value;
          flags = time2.flags;
          timescale = time2.timescale;
          epoch = time2.epoch;
          ++v25;
        }

        while (v33 != v25);
        v7 = MEMORY[0x1E6960CC0];
        if (time2.flags)
        {
          a1->value = value;
          a1->timescale = timescale;
          a1->flags = flags;
          a1->epoch = epoch;
        }
      }

      if (!v20)
      {
        time2 = DerivedStorage[18];
        lhs = DerivedStorage[20];
        CMTimeAdd(&time1, &time2, &lhs);
        time2 = *a1;
        CMTimeAdd(a1, &time2, &time1);
      }
    }

    v8 = a1->flags;
    if ((v8 & 1) == 0)
    {
      StatedDuration = FigPlayerInterstitialEventGetStatedDuration(v5, &time1);
      OUTLINED_FUNCTION_38_21(StatedDuration, v10, v11, v12, v13, v14, v15, v16, v32, v33, rhs.value, *&rhs.timescale, rhs.epoch, v35, time2.value, *&time2.timescale, time2.epoch, v17, time1.value);
      v8 = a1->flags;
    }

    if ((v8 & 1) == 0)
    {
      *&a1->value = *v7;
      a1->epoch = *(v7 + 16);
    }

    FigPlayerInterstitialEventGetEffectivePlayoutLimit(v5, &time1);
    lhs.value = time1.value;
    v18 = time1.flags;
    lhs.timescale = time1.timescale;
    if ((time1.flags & 0x1D) == 1)
    {
      v19 = time1.epoch;
      time1.timescale = lhs.timescale;
      time2 = *a1;
      time1.value = lhs.value;
      if (CMTimeCompare(&time1, &time2) < 0)
      {
        a1->value = lhs.value;
        a1->timescale = lhs.timescale;
        a1->flags = v18;
        a1->epoch = v19;
      }
    }
  }
}

double fpic_GetEventItemDurationOnEventTimeline@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_235_1();
  v11(a1, a2, a3);
  *&result = OUTLINED_FUNCTION_17_7(MEMORY[0x1E6960C70]).n128_u64[0];
  if (v12)
  {
    v14 = v12;
    v15 = OUTLINED_FUNCTION_104_0();
    PerAssetPerEventTrackedObject = fpic_GetPerAssetPerEventTrackedObject(v15, v16, a4, v17);
    if (PerAssetPerEventTrackedObject != @"DummyItem")
    {
      v19 = PerAssetPerEventTrackedObject;
      v20 = (*(DerivedStorage + 104))(a1, a2, PerAssetPerEventTrackedObject);
      if (v20)
      {
        v21 = v20;
        LODWORD(rhs.value) = 0;
        dictionaryRepresentation.value = 0;
        v22 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v22)
        {
          v63 = @"Duration";
          if (!v22(v21) && LODWORD(rhs.value) == 2)
          {
            CMBaseObject = FigAssetGetCMBaseObject(v21);
            v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v25)
            {
              if (!v25(CMBaseObject, @"Duration", *MEMORY[0x1E695E480], &dictionaryRepresentation))
              {
                CMTimeMakeFromDictionary(a5, dictionaryRepresentation.value);
                if (dictionaryRepresentation.value)
                {
                  CFRelease(dictionaryRepresentation.value);
                }
              }
            }
          }
        }
      }

      if ((*(a5 + 12) & 1) == 0)
      {
        v26 = fpic_UnwrapPlaybackItem(a1, v19, a2);
        if (v26)
        {
          v27 = v26;
          v28 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (v28)
          {
            v28(v27, a5);
          }
        }
      }

      if (!a4 && !fpic_hasFirstItemPlayedOutForEvent())
      {
        FigPlayerInterstitialEventGetFirstItemStartOffset(v14, &rhs);
        lhs = *a5;
        v29 = CMTimeSubtract(&dictionaryRepresentation, &lhs, &rhs);
        *&result = OUTLINED_FUNCTION_38_21(v29, v30, v31, v32, v33, v34, v35, v36, v62, v63, lhs.value, *&lhs.timescale, lhs.epoch, v65, rhs.value, *&rhs.timescale, rhs.epoch, v37, dictionaryRepresentation.value).n128_u64[0];
      }

      if ((*(a5 + 12) & 1) == 0)
      {
        v38 = OUTLINED_FUNCTION_104_0();
        if (fpic_GetPerAssetPerEventTrackedObject(v38, v39, a4, v40))
        {
          FigCFNumberGetFloat64();
          v42 = CMTimeMakeWithSeconds(&dictionaryRepresentation, v41, 1000000);
          *&result = OUTLINED_FUNCTION_38_21(v42, v43, v44, v45, v46, v47, v48, v49, v62, v63, lhs.value, *&lhs.timescale, lhs.epoch, v65, rhs.value, *&rhs.timescale, rhs.epoch, v50, dictionaryRepresentation.value).n128_u64[0];
        }
      }

      if ((*(a5 + 12) & 1) == 0)
      {
        v51 = OUTLINED_FUNCTION_104_0();
        if (fpic_GetPerEventTrackingCount(v51, v52) == 1)
        {
          StatedDuration = FigPlayerInterstitialEventGetStatedDuration(v14, &dictionaryRepresentation);
          *&result = OUTLINED_FUNCTION_38_21(StatedDuration, v54, v55, v56, v57, v58, v59, v60, v62, v63, lhs.value, *&lhs.timescale, lhs.epoch, v65, rhs.value, *&rhs.timescale, rhs.epoch, v61, dictionaryRepresentation.value).n128_u64[0];
        }
      }
    }
  }

  return result;
}

BOOL fpic_hasFirstItemPlayedOutForEvent()
{
  OUTLINED_FUNCTION_180_1();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (fpic_GetCurrentlyPlayingEvent() != v0)
  {
    return 0;
  }

  lhs = *(DerivedStorage + 432);
  v4 = *(DerivedStorage + 480);
  CMTimeAdd(&time2, &lhs, &v4);
  OUTLINED_FUNCTION_77_10(MEMORY[0x1E6960CC0]);
  lhs.epoch = v2;
  return CMTimeCompare(&lhs, &time2) != 0;
}

BOOL fpic_DoesNextMomentBelongToCurrentDepartureMoment()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_2_166();
  if (!v1)
  {
    return 0;
  }

  v2 = DerivedStorage + 344;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_75_9();
  if (!v4)
  {
    OUTLINED_FUNCTION_14_59();
    if (v6)
    {
      v3 = v5;
    }
  }

  v7 = *(v3 + 16);
  v10[0] = *v3;
  v10[1] = v7;
  v11 = *(v3 + 32);
  v8 = *(v2 + 16);
  v12[0] = *v2;
  v12[1] = v8;
  v13 = *(v2 + 32);
  return fpic_MomentsAreCloseWithTolerance(v12, v10, &kMomentsAreCloseThreshold);
}

void fpic_LimitPreloadToPlayhead()
{
  OUTLINED_FUNCTION_182();
  v1 = v0;
  v124 = *MEMORY[0x1E69E9840];
  v90 = v2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  started = FigPlayerInterstitialPreloadCopyStartDate(v1);
  v5 = *(DerivedStorage + 160);
  if (v5 && started)
  {
    fpic_CurrentItemMoment(v5, &cf);
    *v99 = cf;
    v6 = v120;
    v7 = v121;
    v8 = MEMORY[0x1E6960C70];
    MEMORY[0x19A8CCD90](started);
    StatedDuration = FigPlayerInterstitialPreloadGetStatedDuration(v1);
    CMTimeMakeWithSeconds(v122, StatedDuration, 1000000);
    *v100 = *v8;
    v10 = *v100;
    OUTLINED_FUNCTION_241_2();
    v11 = 1;
    v102[1] = 1;
    *&v102[2] = 0;
    *&v102[6] = 0;
    fpic_AddTimeToMoment(v100, v122, &cf);
    v12 = v121;
    OUTLINED_FUNCTION_239_1(v13, v14, v15, v16, v17, v18, v19, v20, v74, v77, v80, v83, v86, v90, cf.value, *&cf.timescale, cf.epoch, v97, *v99);
    v120 = v6;
    v121 = v7;
    *v100 = v10;
    OUTLINED_FUNCTION_241_2();
    v102[1] = 1;
    *&v102[2] = 0;
    *&v102[6] = 0;
    v21 = fpic_MomentGreaterThan(&cf, v100);
    v29 = MEMORY[0x1E695E480];
    v84 = v12;
    if (v21 && (*v100 = *v99, *&v100[16] = *&v99[16], OUTLINED_FUNCTION_152_3(v21, v22, v23, v24, v25, v26, v27, v28, v75, v78, v81, v12, v87, v91, v93), v121 = v12, v101 = v6, *v102 = v7, fpic_MomentGreaterThan(&cf, v100)))
    {
      CFDateCreate(*v29, v6);
      v30 = OUTLINED_FUNCTION_399();
      v88 = v31;
      FigPlayerInterstitialPreloadSetEffectiveStartDate(v30, v31);
      v11 = 0;
    }

    else
    {
      v88 = 0;
    }

    v32 = v91;
    v33 = CMBaseObjectGetDerivedStorage();
    v34 = v1;
    v35 = FigPlayerInterstitialPreloadCopyTargetID(v1);
    if (v35)
    {
      v36 = v35;
      v37 = started;
      v38 = CMBaseObjectGetDerivedStorage();
      v39 = 0;
      while (1)
      {
        Count = *(v38 + 208);
        if (Count)
        {
          Count = CFArrayGetCount(Count);
        }

        if (v39 >= Count)
        {
          break;
        }

        FigCFArrayGetValueAtIndex();
        OUTLINED_FUNCTION_577();
        v41 = fpic_UnwrapEvent();
        v42 = FigPlayerInterstitialEventCopyIdentifier(v41);
        v43 = FigCFEqual();
        if (v42)
        {
          CFRelease(v42);
        }

        ++v39;
        v32 = v91;
        if (v41)
        {
          if (v43)
          {
            break;
          }
        }
      }

      CFRelease(v36);
      started = v37;
      v29 = MEMORY[0x1E695E480];
    }

    cf.value = 0;
    *v100 = 0;
    v122[0].value = 0;
    v44 = *(v33 + 160);
    if (v44)
    {
      FigBaseObject = FigPlaybackItemGetFigBaseObject(v44);
      v46 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      v47 = v34;
      if (v46 && !v46(FigBaseObject, @"nearFutureLiveBufferInfo", *v29, &cf))
      {
        FigCFDictionaryGetDoubleIfPresent();
        FigCFDictionaryGetInt64IfPresent();
        FigCFDictionaryGetDoubleIfPresent();
        FigCFDictionaryGetDoubleIfPresent();
      }
    }

    else
    {
      v47 = v34;
    }

    if (cf.value)
    {
      CFRelease(cf.value);
    }

    if ((v11 & 1) == 0)
    {
      v123 = 0;
      memset(v122, 0, sizeof(v122));
      if (dword_1EAF178D0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_101_0();
        if (v50)
        {
          v51 = v49;
        }

        else
        {
          v51 = 0;
        }

        if (v51)
        {
          v52 = v88;
          v53 = MEMORY[0x19A8CCD90](v88);
          v54 = MEMORY[0x19A8CCD90](0);
          v56 = v55;
          OUTLINED_FUNCTION_152_3(v54, v57, v58, v59, v60, v61, v62, v63, v75, v78, v81, v84, v88, v91, v93);
          v121 = v85;
          fpic_getMomentDesc(&cf, v122);
          TriggerOffset = FigPlayerInterstitialPreloadGetTriggerOffset(v47);
          OUTLINED_FUNCTION_239_1(v65, v66, v67, v68, v69, v70, v71, v72, v76, v79, v82, v85, v89, v92, v94, v95, v96, v98, *v99);
          Seconds = CMTimeGetSeconds(&cf);
          *v100 = 136317954;
          *&v100[4] = "fpic_LimitPreloadToPlayhead";
          *&v100[12] = 2048;
          *&v100[14] = v32;
          *&v100[22] = 2048;
          v101 = *&v47;
          *v102 = 2112;
          *&v102[2] = started;
          v103 = 2112;
          v104 = v52;
          v105 = 2048;
          v106 = v53;
          v107 = 2112;
          v108 = 0;
          v109 = 2048;
          v110 = v56;
          v111 = 2080;
          v112 = v122;
          v113 = 2048;
          v114 = TriggerOffset;
          v115 = 2048;
          v116 = Seconds;
          v117 = 2048;
          v118 = v6;
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_449();
      }
    }

    if (v88)
    {
      CFRelease(v88);
    }
  }

  if (started)
  {
    CFRelease(started);
  }

  OUTLINED_FUNCTION_181();
}

BOOL fpic_IsItemBufferedToEnd(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_210_1();
  fpic_GetItemEndTime();
  if ((v6.flags & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_29();
  if (!v3)
  {
    return 0;
  }

  v5 = v6;
  return fpic_BufferIncludesTime(a2, &v5, &kPostRollTimeToPausePlaybackBuffer);
}

void fpic_GatePrimaryBufferingAtCurrentEvent(uint64_t a1, int a2)
{
  v71 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_75_9();
  if (!v6)
  {
    OUTLINED_FUNCTION_14_59();
    if (v8)
    {
      v5 = v7;
    }
  }

  memset(&v64, 0, sizeof(v64));
  if (*(v5 + 32))
  {
    goto LABEL_5;
  }

  if (!*(v5 + 33))
  {
    v5 = MEMORY[0x1E6960C70];
LABEL_5:
    OUTLINED_FUNCTION_77_10(v5);
    v64.epoch = v9;
    goto LABEL_8;
  }

  v10 = *(v5 + 24);
  v11 = *(DerivedStorage + 320);
  *time = *(DerivedStorage + 304);
  *&time[16] = v11;
  v70 = *(DerivedStorage + 336);
  FigCreateTimeWithDateAndMoment(time, &v64, v10);
LABEL_8:
  if (*(DerivedStorage + 968) || *(DerivedStorage + 969))
  {
    v12 = *(DerivedStorage + 160);
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v13)
    {
      v13(v12, &v64);
    }
  }

  *time = *(DerivedStorage + 1040);
  *&time[16] = *(DerivedStorage + 1056);
  v65 = v64;
  IsWithinTolerance = faqrp_timeDifferenceIsWithinTolerance(time, &v65, &kMomentsAreCloseThreshold);
  if (!IsWithinTolerance)
  {
    OUTLINED_FUNCTION_145_2(IsWithinTolerance, *MEMORY[0x1E695E480], v15, v16, v17, v18, v19, v20, v52, v55, v58, v61, *&v64.value);
    v23 = CMTimeCopyAsDictionary(v21, v22);
    if (a2)
    {
      v24 = *(CMBaseObjectGetDerivedStorage() + 896);
      v26 = (DerivedStorage + 160);
      v25 = *(DerivedStorage + 160);
      if (!v24)
      {
        v27 = MEMORY[0x1E695E4D0];
        goto LABEL_18;
      }
    }

    else
    {
      v26 = (DerivedStorage + 160);
      v25 = *(DerivedStorage + 160);
    }

    v27 = MEMORY[0x1E695E4C0];
LABEL_18:
    v28 = *v27;
    FigPlaybackItemGetFigBaseObject(v25);
    if (*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      OUTLINED_FUNCTION_766();
      if (!v29())
      {
        FigBaseObject = FigPlaybackItemGetFigBaseObject(*v26);
        v31 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v31)
        {
          if (!v31(FigBaseObject, @"TimeToPauseBuffering", v23))
          {
            v32 = (DerivedStorage + 1040);
            if (dword_1EAF178D0)
            {
              v33 = OUTLINED_FUNCTION_19_42();
              OUTLINED_FUNCTION_167_3(v33, v34, v35, v36, v37, v38, v39, v40, v53, v56, v59, v62, SBYTE2(v62), BYTE3(v62), SHIDWORD(v62));
              OUTLINED_FUNCTION_40();
              if (v28)
              {
                OUTLINED_FUNCTION_145_2(v41, v42, v43, v44, v45, v46, v47, v48, v54, v57, v60, v63, *&v64.value);
                Seconds = CMTimeGetSeconds(v49);
                *time = *v32;
                *&time[16] = *(DerivedStorage + 1056);
                v51 = CMTimeGetSeconds(time);
                LODWORD(v65.value) = 136315906;
                *(&v65.value + 4) = "fpic_GatePrimaryBufferingAtCurrentEvent";
                LOWORD(v65.flags) = 2048;
                *(&v65.flags + 2) = a1;
                HIWORD(v65.epoch) = 2048;
                v66 = Seconds;
                v67 = 2048;
                v68 = v51;
                OUTLINED_FUNCTION_100();
                OUTLINED_FUNCTION_65();
                _os_log_send_and_compose_impl();
                OUTLINED_FUNCTION_612();
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_414();
            }

            *v32 = *&v64.value;
            *(DerivedStorage + 1056) = v64.epoch;
          }
        }
      }
    }

    if (v23)
    {
      CFRelease(v23);
    }
  }
}

void fpic_EnsureEventHasResolvedProperties()
{
  OUTLINED_FUNCTION_193();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v124 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_766();
  v8 = v7();
  if (!*(DerivedStorage + 1143) || *(DerivedStorage + 160) != v8)
  {
    goto LABEL_47;
  }

  HIDWORD(v94) = v1;
  *&v116.value = *MEMORY[0x1E6960C70];
  v9 = *(MEMORY[0x1E6960C70] + 16);
  v116.epoch = v9;
  v91 = *&v116.value;
  *&v115.value = *&v116.value;
  v115.epoch = v9;
  *&v114.value = OUTLINED_FUNCTION_219_1(MEMORY[0x1E6960CC0]);
  v11 = *(v10 + 16);
  v114.epoch = v11;
  v12 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_624();
  v13 = fpic_UnwrapEvent();
  CMBaseObjectGetDerivedStorage();
  v14 = OUTLINED_FUNCTION_164_2();
  cf = FigPlayerInterstitialEventCopyIdentifier(v13);
  v110 = 0uLL;
  v111 = 0;
  v15 = OUTLINED_FUNCTION_624();
  fpic_PredictEventDurationOnPrimary(v15, v16, v3, v17);
  v109 = 0;
  v107 = 0u;
  v108 = 0u;
  fpic_EventDateTimeMoment(v13, &v107);
  LODWORD(v94) = FigPlayerInterstitialEventGetSnapOptions(v13);
  if (FigPlayerInterstitialEventIsPostRoll(v13))
  {
    fpic_GetEarliestStartForPostroll(&v121);
  }

  else if (v14 == -1)
  {
    fpic_EventDateTimeMoment(v13, &v121);
  }

  else
  {
    v121 = v107;
    v122 = v108;
    v123 = v109;
    v20 = *(v12 + 240);
    *time1 = *(v12 + 224);
    *&time1[16] = v20;
    *v118 = *(v12 + 256);
    v21 = OUTLINED_FUNCTION_88_9();
    if (fpic_MomentsAreCloseWithTolerance(v21, v22, v23))
    {
      v24 = CMBaseObjectGetDerivedStorage();
      v25 = v24 + 264;
      if (!*(v24 + 296) && !*(v24 + 297))
      {
        v25 = v24 + 224;
      }

      v112 = *v25;
      v113 = *(v25 + 16);
      v18 = *(v25 + 24);
      v26 = *(v25 + 32);
      v19 = *(v25 + 33);
      if (v26)
      {
        goto LABEL_6;
      }

LABEL_13:
      if (v19)
      {
        v27 = *(v12 + 320);
        v121 = *(v12 + 304);
        v122 = v27;
        v123 = *(v12 + 336);
        FigCreateTimeWithDateAndMoment(&v121, time1, v18);
      }

      else
      {
        *time1 = v91;
        *&time1[16] = v9;
      }

      goto LABEL_17;
    }

    memset(&v106, 0, sizeof(v106));
    fpic_getSnapOutDelta(&v106);
    *time1 = v107;
    *&time1[16] = v108;
    *v118 = v109;
    fpic_SubtractTimeFromMoment(time1, &v106, &v121);
  }

  v112 = v121;
  v18 = *(&v122 + 1);
  v113 = v122;
  v19 = BYTE1(v123);
  if (!v123)
  {
    goto LABEL_13;
  }

LABEL_6:
  *time1 = v112;
  *&time1[16] = v113;
LABEL_17:
  v121 = v98;
  *&v122 = v11;
  CMTimeMaximum(&v116, time1, &v121);
  v28 = OUTLINED_FUNCTION_624();
  fpic_PredictEventGroupDurationOnPrimary(v28, v29, v3, 0, v30, v31);
  v121 = *&v114.value;
  *&v122 = v114.epoch;
  *time1 = v98;
  *&time1[16] = v11;
  v32 = OUTLINED_FUNCTION_88_9();
  if (CMTimeCompare(v32, v33) >= 1)
  {
    *time1 = v116;
    rhs = v114;
    CMTimeAdd(&v121, time1, &rhs);
    *&v116.value = v121;
    v116.epoch = v122;
  }

  v115 = v116;
  v121 = v110;
  *&v122 = v111;
  *time1 = v98;
  *&time1[16] = v11;
  v34 = OUTLINED_FUNCTION_88_9();
  if (CMTimeCompare(v34, v35) >= 1)
  {
    OUTLINED_FUNCTION_39_22();
    *time1 = v110;
    *&time1[16] = v111;
    v36 = OUTLINED_FUNCTION_88_9();
    CMTimeAdd(v38, v36, v37);
  }

  if (fpic_GetCurrentlyPlayingEvent())
  {
    if ((*(v12 + 568) & 1) != 0 && v14 != -1)
    {
      v39 = *(v12 + 656);
      if (v39)
      {
        if (v14 == CFArrayGetCount(v39) - 1 && (v94 & 2) != 0)
        {
          v40 = v12 + 556;
          if (dword_1EAF178D0)
          {
            LODWORD(rhs.value) = 0;
            HIBYTE(v103) = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            value = rhs.value;
            *&v98 = os_log_and_send_and_compose_flags_and_os_log_type;
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_125();
            if (v44)
            {
              v45 = v43;
            }

            else
            {
              v45 = value;
            }

            if (v45)
            {
              OUTLINED_FUNCTION_39_22();
              Seconds = CMTimeGetSeconds(&v121);
              v121 = *v40;
              *&v122 = *(v40 + 16);
              v47 = CMTimeGetSeconds(&v121);
              *time1 = 136316162;
              *&time1[4] = "fpic_UpdateResolvedEventTimeIfNecessary";
              *&time1[12] = 2048;
              *&time1[14] = v5;
              *&time1[22] = 2112;
              *&time1[24] = cf;
              *v118 = 2048;
              *&v118[2] = Seconds;
              v119 = 2048;
              v120 = v47;
              LODWORD(v89) = 52;
              v87 = time1;
              OUTLINED_FUNCTION_108();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_417();
          }

          v115 = *v40;
        }
      }
    }
  }

  FigPlayerInterstitialEventGetResolvedStartTime(v13, &rhs);
  v48 = OUTLINED_FUNCTION_25_34();
  OUTLINED_FUNCTION_238_1(v49, v50, v51, v52, v53, v54, v55, v56, v87, v89, v91, *(&v91 + 1), v94, cf, v98, *(&v98 + 1), v101, v103, v48, rhs.value);
  v57 = OUTLINED_FUNCTION_88_9();
  if (faqrp_timeDifferenceIsWithinTolerance(v57, v58, v59) && (FigPlayerInterstitialEventGetResolvedEndTime(v13, &rhs), v60 = OUTLINED_FUNCTION_39_22(), OUTLINED_FUNCTION_238_1(v61, v62, v63, v64, v65, v66, v67, v68, v88, v90, v92, v93, v95, cfa, v99, v100, v102, v104, v60, rhs.value), v69 = OUTLINED_FUNCTION_88_9(), faqrp_timeDifferenceIsWithinTolerance(v69, v70, v71)))
  {
    v72 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_25_34();
    FigPlayerInterstitialEventSetResolvedStartTime(v13, &v121);
    OUTLINED_FUNCTION_39_22();
    FigPlayerInterstitialEventSetResolvedEndTime(v13, &v121);
    v72 = 1;
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  v73 = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  v74 = OUTLINED_FUNCTION_164_2();
  OUTLINED_FUNCTION_766();
  v76 = v75();
  v77 = v76;
  if (v74 == -1)
  {
    FigPlayerInterstitialEventGetResolvedDuration(v76, &v107);
    if (BYTE12(v107))
    {
      goto LABEL_43;
    }
  }

  memset(&v116, 0, sizeof(v116));
  v79 = OUTLINED_FUNCTION_624();
  fpic_GetProjectedDuration(v79, v80, v74, v3);
  if (!v74)
  {
    OUTLINED_FUNCTION_25_34();
    *time1 = *(v73 + 480);
    *&time1[16] = *(v73 + 496);
    v81 = OUTLINED_FUNCTION_88_9();
    CMTimeAdd(v83, v81, v82);
  }

  FigPlayerInterstitialEventGetResolvedDuration(v77, &v115);
  OUTLINED_FUNCTION_25_34();
  *time1 = v115;
  v84 = OUTLINED_FUNCTION_88_9();
  if (faqrp_timeDifferenceIsWithinTolerance(v84, v85, v86))
  {
LABEL_43:
    v78 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_25_34();
    FigPlayerInterstitialEventSetResolvedDuration(v77, &v121);
    v78 = 1;
  }

  if (HIDWORD(v95) && ((v78 == 0) & ~v72) == 0)
  {
    fpic_UpdatePlaybackItemEventList();
    fpic_PostNotification(v5, @"fpiResolvePropertiesChange", 0);
  }

LABEL_47:
  OUTLINED_FUNCTION_191();
}

void fpic_getSnapOutDelta(CMTime *a1@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_17_7(MEMORY[0x1E6960C70]);
  if (*(v3 + 256) || *(DerivedStorage + 257))
  {
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_75_9();
    if (!v5)
    {
      OUTLINED_FUNCTION_14_59();
      if (v7)
      {
        v4 = v6;
      }
    }

    v8 = *(v4 + 16);
    v12[0] = *v4;
    v12[1] = v8;
    v13 = *(v4 + 32);
    v9 = *(DerivedStorage + 240);
    v10[0] = *(DerivedStorage + 224);
    v10[1] = v9;
    v11 = *(DerivedStorage + 256);
    fpic_SubtractMomentFromMoment(v10, v12, a1);
  }
}

CMTime *fpic_GetProjectedDuration(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_179_2();
  v72 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_235_1();
  v10 = OUTLINED_FUNCTION_184();
  v63 = v5;
  v12 = v11(v10);
  PerEventTrackingCount = fpic_GetPerEventTrackingCount(DerivedStorage, v7);
  timescale = 0;
  v14 = MEMORY[0x1E6960CC0];
  v70 = 0;
  v15 = *MEMORY[0x1E6960CC0];
  *&v4->value = *MEMORY[0x1E6960CC0];
  v62 = v4;
  v4->epoch = *(v14 + 16);
  if (PerEventTrackingCount < 1)
  {
    goto LABEL_22;
  }

  v16 = PerEventTrackingCount;
  v58 = v12;
  v17 = 0;
  HIDWORD(v61) = 1;
  v18 = @"PlaybackItem";
  v19 = &dword_1EAF17000;
  *&v15 = 136315906;
  v59 = v15;
  v60 = PerEventTrackingCount;
  do
  {
    if (fpic_GetPerAssetPerEventTrackedObject(DerivedStorage, v7, v17, v18) == @"DummyItem")
    {
      v20 = fpic_UnwrapEvent();
      v21 = FigPlayerInterstitialEventCopyIdentifier(v20);
      if (v19[564])
      {
        v22 = DerivedStorage;
        v23 = v18;
        v24 = a4;
        LODWORD(rhs.value) = 0;
        HIBYTE(v65) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        value = rhs.value;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, HIBYTE(v65)))
        {
          v27 = value;
        }

        else
        {
          v27 = value & 0xFFFFFFFE;
        }

        if (v27)
        {
          LODWORD(lhs.value) = v59;
          *(&lhs.value + 4) = "fpic_GetProjectedDuration";
          LOWORD(lhs.flags) = 2048;
          *(&lhs.flags + 2) = v6;
          HIWORD(lhs.epoch) = 2112;
          v67 = v63;
          LOWORD(v68) = 2048;
          *(&v68 + 2) = v17;
          OUTLINED_FUNCTION_95_1();
          p_lhs = &lhs;
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        a4 = v24;
        v18 = v23;
        DerivedStorage = v22;
        v16 = v60;
        v19 = &dword_1EAF17000;
      }

      if (v21)
      {
        CFRelease(v21);
      }
    }

    else
    {
      v28 = OUTLINED_FUNCTION_577();
      fpic_UnwrapPlaybackItem(v28, v29, a4);
      OUTLINED_FUNCTION_228_1();
      if (v30)
      {
        fpic_GetItemEndTime();
      }

      else
      {
        OUTLINED_FUNCTION_221_1(MEMORY[0x1E6960C70]);
      }

      OUTLINED_FUNCTION_29();
      if (v31)
      {
        OUTLINED_FUNCTION_150_3(v62);
        lhs.epoch = v32->epoch;
        rhs = time1;
        CMTimeAdd(v32, &lhs, &rhs);
      }

      else
      {
        HIDWORD(v61) = 0;
      }
    }

    ++v17;
  }

  while (v16 != v17);
  v12 = v58;
  if (HIDWORD(v61))
  {
    if (!v7)
    {
      lhs = *v62;
      rhs = DerivedStorage[18];
      v37 = CMTimeAdd(&time1, &lhs, &rhs);
      OUTLINED_FUNCTION_225_2(v37, v38, v39, v40, v41, v42, v43, v44, p_lhs, v56, v57, v58, v59, *(&v59 + 1), v60, v61, v62, v63, rhs.value, *&rhs.timescale, rhs.epoch, v65, lhs.value, *&lhs.timescale, lhs.epoch, v67, v68, *(&v68 + 1), v45, time1.value);
    }

    if (!fpic_hasFirstItemPlayedOutForEvent())
    {
      FigPlayerInterstitialEventGetFirstItemStartOffset(v12, &lhs);
      rhs = *v62;
      v46 = CMTimeSubtract(&time1, &rhs, &lhs);
      OUTLINED_FUNCTION_225_2(v46, v47, v48, v49, v50, v51, v52, v53, p_lhs, v56, v57, v58, v59, *(&v59 + 1), v60, v61, v62, v63, rhs.value, *&rhs.timescale, rhs.epoch, v65, lhs.value, *&lhs.timescale, lhs.epoch, v67, v68, *(&v68 + 1), v54, time1.value);
    }
  }

  else
  {
LABEL_22:
    fpic_GetEventDuration(&time1);
    *v62 = time1;
  }

  result = FigPlayerInterstitialEventGetEffectivePlayoutLimit(v12, &time1);
  v70 = time1.value;
  flags = time1.flags;
  timescale = time1.timescale;
  if ((time1.flags & 0x1D) == 1)
  {
    epoch = time1.epoch;
    time1.value = v70;
    time1.timescale = timescale;
    OUTLINED_FUNCTION_150_3(v62);
    lhs.epoch = *(v36 + 16);
    result = CMTimeCompare(&time1, &lhs);
    if ((result & 0x80000000) != 0)
    {
      v62->value = v70;
      v62->timescale = timescale;
      v62->flags = flags;
      v62->epoch = epoch;
    }
  }

  return result;
}

BOOL fpic_isEventInSameGroupAsAnotherEvent(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = 0;
  v12 = 0;
  cf = 0;
  if (!a2 || !a3)
  {
    return v5;
  }

  OUTLINED_FUNCTION_108_3();
  v7 = fpic_UnwrapEvent();
  fpic_copyEventsScheduledAtSameMomentAsEvent(v4, v7, &cf);
  FirstIndexOfValue = FigCFArrayGetFirstIndexOfValue();
  v5 = FirstIndexOfValue != -1;
  v9 = cf;
  if (!a4 || FirstIndexOfValue != -1)
  {
    if (!cf)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  LastValue = FigCFArrayGetLastValue();
  fpic_copyAbuttingEventsForEvent(v4, LastValue, &v12);
  v5 = FigCFArrayGetFirstIndexOfValue() != -1;
  v9 = cf;
  if (cf)
  {
LABEL_6:
    CFRelease(v9);
  }

LABEL_7:
  if (v12)
  {
    CFRelease(v12);
  }

  return v5;
}

void fpic_ForgetPastEvent()
{
  OUTLINED_FUNCTION_187();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v0)
  {
    v3 = DerivedStorage;
    if (CFSetContainsValue(*(DerivedStorage + 688), v0))
    {
      v4 = fpic_UnwrapEvent();
      v5 = FigPlayerInterstitialEventCopyIdentifier(v4);
      if (dword_1EAF178D0)
      {
        v6 = OUTLINED_FUNCTION_19_42();
        OUTLINED_FUNCTION_34_5(v6, v7, v8, v9, v10, v11, v12, v13, v18, v19, v20, v21, SBYTE2(v21), BYTE3(v21), SHIDWORD(v21));
        OUTLINED_FUNCTION_134();
        if (v15)
        {
          v16 = v14;
        }

        else
        {
          v16 = v1;
        }

        if (v16)
        {
          OUTLINED_FUNCTION_2_6();
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_23();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_238_0();
      }

      CFSetRemoveValue(*(v3 + 688), v0);
      v17 = CMBaseObjectGetDerivedStorage();
      CFDictionaryRemoveValue(*(v17 + 672), v0);
      if (v5)
      {
        CFRelease(v5);
      }
    }
  }
}

uint64_t fpic_copyAbuttingEventsForEvent(uint64_t a1, const void *a2, CFMutableArrayRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  fpic_UnwrapEvent();
  OUTLINED_FUNCTION_9_47(MEMORY[0x1E6960C70]);
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  fpic_GetEventStartMoment(v7, &v62);
  v61 = 0;
  v59 = 0u;
  v60 = 0u;
  CMBaseObjectGetDerivedStorage();
  FirstIndexOfValue = FigCFArrayGetFirstIndexOfValue();
  v9 = *(DerivedStorage + 208);
  if (v9)
  {
    Count = CFArrayGetCount(v9);
    if (!a3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    Count = 0;
    if (!a3)
    {
      goto LABEL_11;
    }
  }

  v11 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v11)
  {
    v12 = v11;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v14 = Mutable;
      fpic_PredictEventGroupDurationOnPrimary(a1, a2, v12, 0, 0, &v65);
      v56 = v62;
      v57 = v63;
      v58 = v64;
      OUTLINED_FUNCTION_209_2();
      fpic_AddTimeToMoment(&v56, &v51, &v59);
      v15 = FirstIndexOfValue + 1;
      if (FirstIndexOfValue + 1 < Count)
      {
        do
        {
          CFArrayGetValueAtIndex(*(DerivedStorage + 208), v15);
          OUTLINED_FUNCTION_620();
          fpic_UnwrapEvent();
          v54 = 0uLL;
          v55 = 0;
          v16 = OUTLINED_FUNCTION_620();
          fpic_PredictEventDurationOnPrimary(v16, v17, v12, v18);
          v58 = 0;
          v56 = 0u;
          v57 = 0u;
          OUTLINED_FUNCTION_249_2();
          fpic_GetEventStartMoment(v19, v20);
          OUTLINED_FUNCTION_125_4();
          OUTLINED_FUNCTION_207_1(v21, v22, v23, v24, v25, v26, v27, v28, v41, *(&v41 + 1), v42, *(&v42 + 1), v43, v44, v45, v46, v47, v48, v49, v50, v51, *(&v51 + 1), v52, *(&v52 + 1), v53, v54, *(&v54 + 1), v55, v56);
          v41 = v54;
          *&v42 = v55;
          fpic_AddTimeToMoment(&v45, &v41, &v51);
          OUTLINED_FUNCTION_207_1(v29, v30, v31, v32, v33, v34, v35, v36, v41, *(&v41 + 1), v42, *(&v42 + 1), v43, v44, v45, v46, v47, v48, v49, v50, v51, *(&v51 + 1), v52, *(&v52 + 1), v53, v54, *(&v54 + 1), v55, v56);
          v41 = v59;
          v42 = v60;
          v43 = v61;
          if (!fpic_MomentsAreCloseWithTolerance(&v45, &v41, &kAbuttingEventThreshold))
          {
            break;
          }

          v37 = OUTLINED_FUNCTION_183_2();
          CFArrayAppendValue(v37, v38);
          v59 = v51;
          v60 = v52;
          v61 = v53;
          ++v15;
        }

        while (Count != v15);
      }

      v39 = 0;
      *a3 = v14;
    }

    else
    {
      OUTLINED_FUNCTION_374();
      v39 = FigSignalErrorAtGM();
    }

    CFRelease(v12);
    return v39;
  }

LABEL_11:
  OUTLINED_FUNCTION_374();

  return FigSignalErrorAtGM();
}

uint64_t fpic_isEventResolvableOnPrimaryTimeline()
{
  OUTLINED_FUNCTION_180_1();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_171();
  fpic_UnwrapEvent();
  OUTLINED_FUNCTION_124_4();
  fpic_GetEventStartMoment(v1, &v15);
  if (v17)
  {
    OUTLINED_FUNCTION_123_3(v2, v3, v4, v5, v6, v7, v8, v9, v13.value, *&v13.timescale, v13.epoch, v14, v15);
  }

  else
  {
    if (v18)
    {
      v11 = *(DerivedStorage + 320);
      v19[0] = *(DerivedStorage + 304);
      v19[1] = v11;
      v20 = *(DerivedStorage + 336);
      FigCreateTimeWithDateAndMoment(v19, &v13, v16);
      return v13.flags & 1;
    }

    *&v13.value = *MEMORY[0x1E6960C70];
    v10 = *(MEMORY[0x1E6960C70] + 16);
  }

  v13.epoch = v10;
  return v13.flags & 1;
}

void fpic_collectAbuttingEvents(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, __int16 a12, char a13, os_log_type_t type, int a15, CFArrayRef theArray, int a17, int a18, __int128 a19, const void *a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  OUTLINED_FUNCTION_458();
  a49 = v53;
  a50 = v54;
  OUTLINED_FUNCTION_187();
  a37 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  if (v51 && (v56 = v51, CFArrayGetCount(v51) > 0) || (v56 = *(DerivedStorage + 656)) != 0)
  {
    if (CFArrayGetCount(v56) >= 1)
    {
      LastValue = FigCFArrayGetLastValue();
      if (!fpic_copyAbuttingEventsForEvent(v52, LastValue, &theArray))
      {
        for (i = 0; ; ++i)
        {
          Count = theArray;
          if (theArray)
          {
            Count = CFArrayGetCount(theArray);
          }

          if (i >= Count)
          {
            break;
          }

          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
          CMBaseObjectGetDerivedStorage();
          if (FigCFArrayGetFirstIndexOfValue() != -1 || CFSetContainsValue(*(DerivedStorage + 688), ValueAtIndex))
          {
            break;
          }

          v61 = OUTLINED_FUNCTION_193_0();
          CFArrayAppendValue(v61, v62);
          if (dword_1EAF178D0)
          {
            v63 = OUTLINED_FUNCTION_42_2();
            os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_202();
            if (v65)
            {
              v66 = v64;
            }

            else
            {
              v66 = 0;
            }

            if (v66)
            {
              a17 = 136315650;
              OUTLINED_FUNCTION_28_29();
              *(&a19 + 6) = v52;
              HIWORD(a19) = 2112;
              a20 = ValueAtIndex;
              OUTLINED_FUNCTION_32();
              OUTLINED_FUNCTION_108();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_7();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }
      }
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  OUTLINED_FUNCTION_457();
}

void fpic_validateInterstitialPlayQueueForCurrentEvents(uint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_78_8();
  v5 = OUTLINED_FUNCTION_266();
  v7 = v6(v5);
  cf = 0;
  v8 = *(DerivedStorage + 656);
  if (v8)
  {
    if (CFArrayGetCount(v8) >= 1)
    {
      fpic_CopyNextItem(v7, &cf);
      if (cf)
      {
        v9 = 0;
        v28 = DerivedStorage;
        while (1)
        {
          Count = *(DerivedStorage + 656);
          if (Count)
          {
            Count = CFArrayGetCount(Count);
          }

          if (v9 >= Count)
          {
            break;
          }

          v29 = v9;
          CFArrayGetValueAtIndex(*(DerivedStorage + 656), v9);
          OUTLINED_FUNCTION_251();
          v11 = CMBaseObjectGetDerivedStorage();
          OUTLINED_FUNCTION_78_8();
          v12 = OUTLINED_FUNCTION_266();
          v14 = v13(v12);
          CMBaseObjectGetDerivedStorage();
          FirstIndexOfValue = FigCFArrayGetFirstIndexOfValue();
          PerEventTrackingCount = fpic_GetPerEventTrackingCount(v11, FirstIndexOfValue);
          if (cf && PerEventTrackingCount >= 1)
          {
            v16 = 0;
            v27 = a2;
            do
            {
              v31 = PerEventTrackingCount;
              fpic_GetPerAssetPerEventTrackedObject(v11, FirstIndexOfValue, v16, @"PlaybackItem");
              v17 = OUTLINED_FUNCTION_251();
              v18 = fpic_UnwrapPlaybackItem(v17, v9, a2);
              if (v9 != @"DummyItem")
              {
                v19 = v18;
                while (1)
                {
                  v20 = cf;
                  v21 = v19 == cf || cf == 0;
                  if (v21)
                  {
                    break;
                  }

                  if (*(CMBaseObjectGetDerivedStorage() + 1032) != v20)
                  {
                    v9 = OUTLINED_FUNCTION_133_0();
                    v22 = v34;
                    os_log_type_enabled(v9, type);
                    OUTLINED_FUNCTION_134();
                    if (v21)
                    {
                      v24 = v23;
                    }

                    else
                    {
                      v24 = v22;
                    }

                    if (v24)
                    {
                      v35 = 136315906;
                      OUTLINED_FUNCTION_120_2();
                      v36 = a1;
                      v37 = 2112;
                      *v38 = v19;
                      *&v38[8] = 2112;
                      *&v38[10] = v20;
                      OUTLINED_FUNCTION_95_1();
                      OUTLINED_FUNCTION_108();
                      _os_log_send_and_compose_impl();
                    }

                    OUTLINED_FUNCTION_109();
                    OUTLINED_FUNCTION_238_0();
                  }

                  fpic_CopyNextItem(v14, &cf);
                }

                a2 = v27;
                if (v19 == cf)
                {
                  fpic_CopyNextItem(v14, &cf);
                }

                else if (cf)
                {
                  v25 = OUTLINED_FUNCTION_133_0();
                  v9 = type;
                  v26 = os_log_type_enabled(v25, type);
                  if (OUTLINED_FUNCTION_109_0(v26))
                  {
                    v35 = 136315906;
                    OUTLINED_FUNCTION_120_2();
                    v36 = a1;
                    v37 = 1024;
                    *v38 = v16;
                    *&v38[4] = 2112;
                    *&v38[6] = v19;
                    OUTLINED_FUNCTION_108();
                    _os_log_send_and_compose_impl();
                  }

                  OUTLINED_FUNCTION_109();
                  OUTLINED_FUNCTION_524();
                  fpic_RemovePerAssetPerEventTrackedObjects(v11, FirstIndexOfValue, v16--);
                  PerEventTrackingCount = v31 - 1;
                  goto LABEL_29;
                }
              }

              PerEventTrackingCount = v31;
LABEL_29:
              ++v16;
            }

            while (v16 < PerEventTrackingCount);
          }

          DerivedStorage = v28;
          v9 = v29 + 1;
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }
    }
  }
}

void fpic_SetPerAssetPerEventTrackedObject()
{
  OUTLINED_FUNCTION_649();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  Count = CFArrayGetCount(*(v6 + 664));
  v9 = MEMORY[0x1E695E480];
  if (Count <= v5)
  {
    v10 = *MEMORY[0x1E695E480];
    v11 = v5 - Count + 1;
    v12 = MEMORY[0x1E695E9C0];
    do
    {
      Mutable = CFArrayCreateMutable(v10, 0, v12);
      if (!Mutable)
      {
        goto LABEL_16;
      }

      v14 = Mutable;
      CFArrayAppendValue(*(v7 + 664), Mutable);
      CFRelease(v14);
    }

    while (--v11);
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(v7 + 664), v5);
  v16 = CFArrayGetCount(ValueAtIndex);
  if (v16 <= v3)
  {
    v17 = *v9;
    v18 = v3 - v16 + 1;
    v19 = MEMORY[0x1E695E9D8];
    v20 = MEMORY[0x1E695E9E8];
    while (1)
    {
      v21 = CFDictionaryCreateMutable(v17, 0, v19, v20);
      if (!v21)
      {
        break;
      }

      v22 = v21;
      v23 = OUTLINED_FUNCTION_16_13();
      CFArrayAppendValue(v23, v24);
      CFRelease(v22);
      if (!--v18)
      {
        goto LABEL_9;
      }
    }

LABEL_16:
    OUTLINED_FUNCTION_651();
    return;
  }

LABEL_9:
  v25 = OUTLINED_FUNCTION_184();
  CFArrayGetValueAtIndex(v25, v26);
  if (v1)
  {
    OUTLINED_FUNCTION_651();

    CFDictionarySetValue(v27, v28, v29);
  }

  else
  {
    OUTLINED_FUNCTION_651();

    CFDictionaryRemoveValue(v31, v32);
  }
}

void fpic_ClearAssetListResponseAfterAssetListReadFailure(uint64_t a1, const void *a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v7)
  {
    v8 = v7;
    v9 = (*(DerivedStorage + 88))(DerivedStorage, v7, a2);
    fpic_clearEventAssetListState(v9);
    if (!(*(DerivedStorage + 112))(a1, v8, v9, 0, &cf))
    {
      fpic_UpdateEventInAddOrder(a1, a2, cf);
    }

    v10 = fpic_CreateAssetListResponseStatusDidChangeNotificationPayload(cf, 2, a3);
    fpic_PostNotification(a1, @"fpiAssetListResponseStatusDidChange", v10);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    CFRelease(v8);
  }
}

uint64_t fpic_IssueTopLevelInterstitialRequest(uint64_t a1, const __CFURL *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v54 = 0;
  v55 = 0;
  v53 = 0;
  v51 = 0;
  v52 = 0;
  cf = 0;
  v50 = 0;
  v47 = 0;
  v48 = 0;
  v45 = 0;
  v46 = 0;
  if (!a2)
  {
    goto LABEL_65;
  }

  v15 = DerivedStorage;
  v44 = a7;
  v16 = *(DerivedStorage + 160);
  if (!v16)
  {
    goto LABEL_65;
  }

  v17 = *(*(CMBaseObjectGetVTable() + 16) + 152);
  if (!v17)
  {
    goto LABEL_39;
  }

  v43 = a8;
  Param = v17(v16, &v55);
  if (Param)
  {
    goto LABEL_66;
  }

  v19 = *MEMORY[0x1E695E480];
  if (!v15[156])
  {
    CMBaseObject = FigAssetGetCMBaseObject(v55);
    v29 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v29)
    {
      v29(CMBaseObject, @"assetProperty_StorageSession", v19, &v54);
    }

    v30 = v54;
    if (v54 || (v30 = FigURLStorageSessionCopyGlobalSession(), (v54 = v30) != 0))
    {
      v31 = v15[1];
      v32 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (!v32)
      {
        goto LABEL_39;
      }

      Param = v32(v30, v31, 0, v15 + 156);
      if (Param)
      {
        goto LABEL_66;
      }

      goto LABEL_6;
    }

LABEL_65:
    Param = FigSignalErrorAtGM();
    goto LABEL_66;
  }

LABEL_6:
  v20 = FigAssetGetCMBaseObject(v55);
  v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v21)
  {
    goto LABEL_39;
  }

  Param = v21(v20, @"assetProperty_InstanceUUID", v19, &v48);
  if (Param)
  {
    goto LABEL_66;
  }

  v22 = FigAssetGetCMBaseObject(v55);
  v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v23)
  {
    goto LABEL_39;
  }

  Param = v23(v22, @"assetProperty_CreationOptionsDictionary", v19, &v47);
  if (Param)
  {
    goto LABEL_66;
  }

  Param = FigCFHTTPCreateHTTPRequestOptionsFromAssetCreationOptions(v19, v47, &v46);
  if (Param)
  {
    goto LABEL_66;
  }

  Param = FigCFHTTPCreateCommonHTTPHeadersFromAssetCreationOptions(v19, v47, v48, &v45);
  if (Param)
  {
    goto LABEL_66;
  }

  Param = FigCFHTTPCreateURLWithQueryParam(a2, @"_HLS_primary_id=", v15[21], &v50);
  if (Param)
  {
    goto LABEL_66;
  }

  if (a3 && !FigCFHTTPCreateURLWithQueryParam(v50, @"_HLS_start_offset=", a3, &cf))
  {
    v24 = v50;
    v50 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    if (v24)
    {
      CFRelease(v24);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  FigCFDictionaryGetBooleanIfPresent();
  if (!FigCFHTTPIsHTTPBasedURL(a2))
  {
    v33 = FigAssetGetCMBaseObject(v55);
    v34 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v34)
    {
      Param = v34(v33, @"assetProperty_CustomURLLoader", v19, &v52);
      if (!Param)
      {
        Param = FigCustomURLRequestInfoCreateMutable();
        if (!Param)
        {
          Param = FigCustomURLRequestInfoSetHTTPHeaders();
          if (!Param)
          {
            v35 = FigCFHTTPCreateUserAgent();
            v36 = FigCustomURLRequestInfoSetUserAgent();
            if (v36)
            {
LABEL_68:
              v27 = v36;
              goto LABEL_41;
            }

            v38 = v51;
            v37 = v52;
            v39 = v15[2];
            v40 = *(*(CMBaseObjectGetVTable() + 16) + 24);
            if (v40)
            {
              v36 = v40(v37, v38, a1, v39, a5, v43);
              if (!v36)
              {
                v41 = v52;
LABEL_64:
                v27 = 0;
                *v44 = v41;
                v52 = 0;
                goto LABEL_41;
              }

              goto LABEL_68;
            }

LABEL_40:
            v27 = 4294954514;
            goto LABEL_41;
          }
        }
      }

LABEL_66:
      v27 = Param;
      v35 = 0;
      goto LABEL_41;
    }

LABEL_39:
    v35 = 0;
    goto LABEL_40;
  }

  FigRetainProxyCreate();
  if (*(*(CMBaseObjectGetVTable() + 16) + 8))
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v60 = 0x900000000;
    v61 = 0u;
    v62 = 0u;
    v63 = 0;
    v25 = OUTLINED_FUNCTION_16_13();
    v27 = v26(v25);
  }

  else
  {
    v27 = 4294954514;
  }

  v41 = 0;
  v35 = 0;
  if (!v27)
  {
    goto LABEL_64;
  }

LABEL_41:
  if (v55)
  {
    CFRelease(v55);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  if (v46)
  {
    CFRelease(v46);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (v45)
  {
    CFRelease(v45);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v51)
  {
    CFRelease(v51);
  }

  if (v52)
  {
    CFRelease(v52);
  }

  return v27;
}

void fpic_handleAssetListResponseDataOnQueue()
{
  OUTLINED_FUNCTION_172_2();
  v53 = v0;
  v54 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v52 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  v49 = fpic_UnwrapEvent();
  CMBaseObjectGetDerivedStorage();
  v12 = OUTLINED_FUNCTION_164_2();
  v13 = v12;
  if (v9)
  {
    v48 = v11;
    Count = CFArrayGetCount(v9);
    if (v13 != -1)
    {
      v15 = Count;
      if (Count >= 1)
      {
        v43 = v7;
        v45 = v5;
        v47 = v3;
        v16 = 0;
        do
        {
          CFArrayGetValueAtIndex(v9, v16);
          OUTLINED_FUNCTION_244_1();
          fpic_SetPerAssetPerEventTrackedObject();
          v17 = OUTLINED_FUNCTION_415_0();
          CFArrayGetValueAtIndex(v17, v18);
          OUTLINED_FUNCTION_244_1();
          fpic_SetPerAssetPerEventTrackedObject();
          ++v16;
        }

        while (v15 != v16);
        if (dword_1EAF178D0)
        {
          v19 = OUTLINED_FUNCTION_115_3();
          v27 = OUTLINED_FUNCTION_254_1(v19, v20, v21, v22, v23, v24, v25, v26, v40, v41, v7, v5, v47, v48, v49, v50, SBYTE2(v50), BYTE3(v50), SHIDWORD(v50));
          if (OUTLINED_FUNCTION_15_52(v27))
          {
            OUTLINED_FUNCTION_100();
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_467();
        }

        fpic_EnsureEventHasResolvedProperties();
        v7 = v43;
        v5 = v45;
LABEL_18:
        FigPlayerInterstitialEventSetAssetListResponse(v49, v7);
        v37 = v5[1];
        v51[0] = *v5;
        v51[1] = v37;
        v51[2] = v5[2];
        FigPlayerInterstitialEventSetOverrideSkipControlTimeRange(v49, v51);
        v38 = OUTLINED_FUNCTION_415_0();
        FigPlayerInterstitialEventSetOverrideSkipControlLocalizedLabelBundleKey(v38, v39);
        goto LABEL_19;
      }

LABEL_10:
      if (dword_1EAF178D0)
      {
        v28 = OUTLINED_FUNCTION_115_3();
        v36 = OUTLINED_FUNCTION_254_1(v28, v29, v30, v31, v32, v33, v34, v35, v40, v41, v42, v44, v46, v48, v49, v50, SBYTE2(v50), BYTE3(v50), SHIDWORD(v50));
        if (OUTLINED_FUNCTION_15_52(v36))
        {
          OUTLINED_FUNCTION_100();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_467();
      }

      fpic_SetPerAssetPerEventTrackedObject();
      goto LABEL_18;
    }
  }

  else if (v12 != -1)
  {
    goto LABEL_10;
  }

LABEL_19:
  OUTLINED_FUNCTION_171_2();
}

void fpic_HandleResponseData(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void (*a11)(), void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int128 a20, __int128 a21, __int128 a22, CFTypeRef cf, __int128 a24, __int128 a25, __int128 a26, uint64_t a27, const void *a28, const void *a29, const void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_458();
  a41 = v44;
  a42 = v45;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  OUTLINED_FUNCTION_433();
  CMBaseObjectGetDerivedStorage();
  a29 = 0;
  a30 = 0;
  a28 = 0;
  v56 = *(MEMORY[0x1E6960C98] + 16);
  a24 = *MEMORY[0x1E6960C98];
  a25 = v56;
  a26 = *(MEMORY[0x1E6960C98] + 32);
  cf = 0;
  if (v55)
  {
    appended = CMBlockBufferAppendBufferReference(v49, v55, v53, v51, 0);
    v58 = 0;
    if (!v47 || appended)
    {
      goto LABEL_12;
    }
  }

  else if (!v47)
  {
    v58 = 0;
    goto LABEL_12;
  }

  v58 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v58)
  {
    v59 = FigInterstitialCreatePropertyListsFromJSONBlockBuffer(v49, &a29, &a30, &a28, &a24, &cf);
    v60 = a29;
    if (!v59)
    {
      OUTLINED_FUNCTION_57_13();
      a10 = 3221225472;
      a20 = a24;
      a11 = __fpic_HandleResponseData_block_invoke;
      a12 = &__block_descriptor_136_e5_v8__0l;
      a13 = v43;
      a14 = v58;
      a15 = v42;
      a16 = v61;
      a17 = a30;
      a18 = a28;
      a21 = a25;
      a22 = a26;
      a19 = cf;
      dispatch_sync(v62, &a9);
      v60 = a29;
    }

    if (v60)
    {
      CFRelease(v60);
    }
  }

LABEL_12:
  if (a30)
  {
    CFRelease(a30);
  }

  if (a28)
  {
    CFRelease(a28);
  }

  if (v58)
  {
    CFRelease(v58);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_457();
}

void fpic_UpdateEventLastPlaybackFailed(uint64_t a1, uint64_t a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v6)
  {
    v7 = v6;
    v8 = OUTLINED_FUNCTION_184();
    v10 = v9(v8);
    if (FigPlayerInterstitialEventDidLastPlaybackFail(v10) != a3)
    {
      CMBaseObjectGetDerivedStorage();
      v11 = OUTLINED_FUNCTION_164_2();
      if (v11 != -1)
      {
        v12 = v11;
        FigPlayerInterstitialEventSetLastPlaybackFail(v10, a3);
        FigPlayerInterstitialEventGetResumptionOffset(v10, &time1);
        v18 = **&MEMORY[0x1E6960CC0];
        if (CMTimeCompare(&time1, &v18))
        {
          v13 = a3 ? 1 : -1;
          if ((v12 & 0x8000000000000000) == 0)
          {
            do
            {
              Count = *(DerivedStorage + 656);
              if (Count)
              {
                Count = CFArrayGetCount(Count);
              }

              if (v12 >= Count)
              {
                break;
              }

              CFArrayGetValueAtIndex(*(DerivedStorage + 656), v12);
              v15 = OUTLINED_FUNCTION_184();
              v17 = v16(v15);
              FigPlayerInterstitialEventSetLastPlaybackFail(v17, a3);
              v12 += v13;
            }

            while (v12 >= 0);
          }
        }

        fpic_PostNotification(a1, @"fpiResolvePropertiesChange", 0);
      }
    }

    CFRelease(v7);
  }
}

BOOL fpic_copyRedirectURLFromCustomURLResponse(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_187();
  FigCustomURLResponseInfoGetHTTPStatusCode();
  if (FigCFHTTPIsStatusCodeRedirect(0))
  {
    v3 = 0;
    if (!FigCustomURLResponseInfoCopyHTTPHeaders())
    {
      v3 = FigCFHTTPCopyRedirectLocationFromHTTPHeaders(0);
    }
  }

  else
  {
    v3 = 0;
  }

  *v2 = v3;
  return v3 != 0;
}

void __fpic_customURLReadCallback_block_invoke_2(uint64_t a1)
{
  v7 = 0;
  cf = 0;
  v5 = 0;
  v6 = 0;
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = fpic_ReadAssetListForEvent(*(a1 + 48), v1, *(a1 + 56), *(a1 + 64), &cf, &v7, &v6, &v5);
    OUTLINED_FUNCTION_30_8(v3, *(a1 + 32));
    OUTLINED_FUNCTION_81_5();
    if (*(v4 + 24))
    {
      goto LABEL_7;
    }

    if (cf)
    {
      fpic_AddNewHttpReq(*(a1 + 48), *(a1 + 56), cf, v5);
      goto LABEL_8;
    }

    if (!v7)
    {
LABEL_7:
      OUTLINED_FUNCTION_376();
      FigSignalErrorAtGM();
    }

    else
    {
      fpic_AddNewCustomURLReq(*(a1 + 48), *(a1 + 56), v7, v6, v5);
    }
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

void __fpic_customURLReadCallback_block_invoke_172(uint64_t a1)
{
  OUTLINED_FUNCTION_158_3(a1);
  fpic_UnwrapEvent();
  OUTLINED_FUNCTION_2_4();
  FigPlayerInterstitialEventSetLastPlaybackError(v2);
  OUTLINED_FUNCTION_2_4();
  if (!*(v3 + 24))
  {
    CFErrorGetCode(*(v1 + 56));
  }

  v4 = OUTLINED_FUNCTION_171();
  fpic_ClearAssetListResponseAfterAssetListReadFailure(v4, v5, v6);
  fpic_UpdateEventLastPlaybackFailed(*(v1 + 40), *(v1 + 48), 1);
  OUTLINED_FUNCTION_126_3();

  fpic_RemoveEvent(v7, v8, v9, v10, v11, v12);
}

CFMutableDictionaryRef fpic_CreateAssetListResponseStatusDidChangeNotificationPayload(uint64_t a1, int a2, int a3)
{
  v5 = *MEMORY[0x1E695E480];
  v6 = OUTLINED_FUNCTION_265();
  Mutable = CFDictionaryCreateMutable(v6, v7, v8, v9);
  if (Mutable)
  {
    FigCFDictionarySetValue();
    FigCFDictionarySetInt();
    if (a2 == 2)
    {
      if (a3)
      {
        v11 = CFErrorCreate(v5, @"CoreMediaErrorDomain", a3, 0);
        OUTLINED_FUNCTION_236();
        FigCFDictionarySetValue();
        if (v11)
        {
          CFRelease(v11);
        }
      }
    }
  }

  return Mutable;
}

uint64_t fpic_GetFirstCurrentItem()
{
  OUTLINED_FUNCTION_187();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  PerEventTrackingCount = fpic_GetPerEventTrackingCount(DerivedStorage, 0);
  if (PerEventTrackingCount >= 1)
  {
    v2 = PerEventTrackingCount;
    v3 = 1;
    do
    {
      PerAssetPerEventTrackedObject = fpic_GetPerAssetPerEventTrackedObject(DerivedStorage, 0, v3 - 1, @"PlaybackItem");
    }

    while (v3++ < v2 && PerAssetPerEventTrackedObject == @"DummyItem");
  }

  v7 = OUTLINED_FUNCTION_36_25();

  return fpic_UnwrapPlaybackItem(v7, v8, v9);
}

void fpic_RemovePerEventTrackedObjects()
{
  OUTLINED_FUNCTION_187();
  Count = *(v2 + 664);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count > v0)
  {
    v4 = *(v1 + 664);

    CFArrayRemoveValueAtIndex(v4, v0);
  }
}

void fpic_HopNextMomentIfNecessary()
{
  OUTLINED_FUNCTION_649();
  v171 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  v156 = 0;
  v154 = 0u;
  v155 = 0u;
  if (*(DerivedStorage + 256) || *(DerivedStorage + 257))
  {
    v4 = *(DerivedStorage + 656);
    if (v4)
    {
      if (CFArrayGetCount(v4) >= 1)
      {
        CFArrayGetValueAtIndex(*(v3 + 656), 0);
        v5 = fpic_UnwrapEvent();
        fpic_GetEventStartMoment(v5, &v154);
        OUTLINED_FUNCTION_236_1();
        v164 = v154;
        v165 = v155;
        *&v166 = v156;
        v13 = OUTLINED_FUNCTION_215_2(v6, v7, &kMomentsAreCloseThreshold, v8, v9, v10, v11, v12, v125, v131, v137, v143, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v150, v151, v152.value, *&v152.timescale, v152.epoch, v153.value, *&v153.timescale, v153.epoch, v154, *(&v154 + 1), v155, *(&v155 + 1), v156, v157, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v159, *(&v159 + 1), v160[0]);
        if (!fpic_MomentsAreCloseWithTolerance(v13, v14, v15))
        {
          v170 = 0;
          v168 = 0u;
          v169 = 0u;
          v166 = 0u;
          v167 = 0u;
          v164 = 0u;
          v165 = 0u;
          v163 = 0;
          memset(v162, 0, sizeof(v162));
          memset(&v153, 0, sizeof(v153));
          CMBaseObjectGetDerivedStorage();
          OUTLINED_FUNCTION_75_9();
          if (!v17)
          {
            OUTLINED_FUNCTION_14_59();
            if (v19)
            {
              v16 = v18;
            }
          }

          v20 = *(v16 + 16);
          *v160 = *v16;
          *&v160[16] = v20;
          v161 = *(v16 + 32);
          *lhs = v154;
          *&lhs[16] = v155;
          *&v159 = v156;
          fpic_SubtractMomentFromMoment(lhs, v160, &v153);
          if (dword_1EAF178D0)
          {
            *rhs = 0;
            BYTE4(v144) = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v0 = 0;
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_40();
            if (v1)
            {
              OUTLINED_FUNCTION_236_1();
              v30 = OUTLINED_FUNCTION_215_2(v22, v23, v24, v25, v26, v27, v28, v29, v126, v132, v138, v144, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v150, v151, v152.value, *&v152.timescale, v152.epoch, v153.value, *&v153.timescale, v153.epoch, v154, *(&v154 + 1), v155, *(&v155 + 1), v156, v157, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v159, *(&v159 + 1), v160[0]);
              MomentDesc = fpic_getMomentDesc(v30, v31);
              OUTLINED_FUNCTION_173_3(MomentDesc, v33, v34, v35, v36, v37, v38, v39, v127, v133, v139, v145, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v150, v151, v152.value, *&v152.timescale, v152.epoch, v153.value, *&v153.timescale, v153.epoch, v40, v154);
              fpic_getMomentDesc(v160, v162);
              *lhs = 136315906;
              OUTLINED_FUNCTION_33_28("fpic_HopNextMomentIfNecessary");
              *&lhs[24] = &v164;
              LOWORD(v159) = v41;
              *(&v159 + 2) = v162;
              OUTLINED_FUNCTION_95_1();
              v126 = lhs;
              OUTLINED_FUNCTION_38();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_414();
          }

          v42 = v155;
          *(v3 + 224) = v154;
          *(v3 + 240) = v42;
          *(v3 + 256) = v156;
          if (*(v3 + 296) || *(v3 + 297))
          {
            v85 = (v3 + 264);
            memset(&v152, 0, sizeof(v152));
            fpic_getSnapOutDelta(&v152);
            v86.n128_f64[0] = OUTLINED_FUNCTION_124_4();
            OUTLINED_FUNCTION_173_3(v87, v88, v89, v90, v91, v92, v93, v94, v126, v132, v138, v144, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v150, v151, v152.value, *&v152.timescale, v152.epoch, v153.value, *&v153.timescale, v153.epoch, v86, v154);
            fpic_SubtractTimeFromMoment(v160, &v152, rhs);
            if (dword_1EAF178D0)
            {
              OUTLINED_FUNCTION_147();
              v95 = OUTLINED_FUNCTION_126();
              OUTLINED_FUNCTION_167_3(v95, v96, v97, v98, v99, v100, v101, v102, v126, v132, v138, v144, SBYTE2(v144), BYTE3(v144), SHIDWORD(v144));
              OUTLINED_FUNCTION_40();
              if (v1)
              {
                v111 = *(v3 + 280);
                *v160 = *v85;
                *&v160[16] = v111;
                v161 = *(v3 + 296);
                v112 = OUTLINED_FUNCTION_215_2(v103, v104, v105, v106, v107, v108, v109, v110, v126, v132, v138, v144, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v150, v151, v152.value, *&v152.timescale, v152.epoch, v153.value, *&v153.timescale, v153.epoch, v154, *(&v154 + 1), v155, *(&v155 + 1), v156, v157, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v159, *(&v159 + 1), v160[0]);
                v114 = fpic_getMomentDesc(v112, v113);
                OUTLINED_FUNCTION_206_2(v114, v115, v116, v117, v118, v119, v120, v121, v130, v136, v142, v148, v122, *rhs, *&rhs[16]);
                fpic_getMomentDesc(v160, v162);
                *lhs = 136315906;
                OUTLINED_FUNCTION_33_28("fpic_HopNextMomentIfNecessary");
                *&lhs[24] = &v164;
                LOWORD(v159) = v123;
                *(&v159 + 2) = v162;
                OUTLINED_FUNCTION_95_1();
                v126 = lhs;
                OUTLINED_FUNCTION_38();
                _os_log_send_and_compose_impl();
                OUTLINED_FUNCTION_612();
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_414();
            }

            v124 = *&rhs[16];
            *v85 = *rhs;
            *(v3 + 280) = v124;
            *(v3 + 296) = v150;
          }

          *lhs = *(v3 + 504);
          *&lhs[16] = *(v3 + 520);
          *rhs = v153;
          CMTimeAdd(v160, lhs, rhs);
          *(v3 + 504) = *v160;
          *(v3 + 520) = *&v160[16];
          CMBaseObjectGetDerivedStorage();
          OUTLINED_FUNCTION_2_166();
          if (v43)
          {
            v44 = (v3 + 344);
            v150 = *(v3 + 376);
            v45 = *(v3 + 360);
            *rhs = *(v3 + 344);
            *&rhs[16] = v45;
            CMBaseObjectGetDerivedStorage();
            OUTLINED_FUNCTION_75_9();
            if (!v47)
            {
              OUTLINED_FUNCTION_14_59();
              if (v19)
              {
                v46 = v48;
              }
            }

            v49 = *v46;
            v50 = v46[1];
            *(v3 + 376) = *(v46 + 4);
            *v44 = v49;
            *(v3 + 360) = v50;
            if (!*(v3 + 376) && *(v3 + 377))
            {
              v51 = *(v3 + 368);
              v52 = *(v3 + 320);
              *v160 = *(v3 + 304);
              *&v160[16] = v52;
              v161 = *(v3 + 336);
              FigCreateTimeWithDateAndMoment(v160, lhs, v51);
            }

            v53 = MEMORY[0x1E6960CC0];
            v54 = *MEMORY[0x1E6960CC0];
            *(v3 + 456) = *MEMORY[0x1E6960CC0];
            v55 = *(v53 + 16);
            *(v3 + 472) = v55;
            *(v3 + 408) = v54;
            *(v3 + 424) = v55;
            if (dword_1EAF178D0)
            {
              OUTLINED_FUNCTION_147();
              v56 = OUTLINED_FUNCTION_126();
              OUTLINED_FUNCTION_86_2(v56, v57, v58, v59, v60, v61, v62, v63, v126, v132, v138, v144, SBYTE2(v144), BYTE3(v144), SHIDWORD(v144));
              OUTLINED_FUNCTION_7_22();
              if (v0)
              {
                OUTLINED_FUNCTION_206_2(v64, v65, v66, v67, v68, v69, v70, v71, v128, v134, v140, v146, v72, *rhs, *&rhs[16]);
                v81 = OUTLINED_FUNCTION_215_2(v73, v74, v75, v76, v77, v78, v79, v80, v129, v135, v141, v147, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v150, v151, v152.value, *&v152.timescale, v152.epoch, v153.value, *&v153.timescale, v153.epoch, v154, *(&v154 + 1), v155, *(&v155 + 1), v156, v157, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v159, *(&v159 + 1), v160[0]);
                fpic_getMomentDesc(v81, v82);
                v83 = *(v3 + 360);
                *v160 = *v44;
                *&v160[16] = v83;
                v161 = *(v3 + 376);
                fpic_getMomentDesc(v160, v162);
                *lhs = 136315906;
                OUTLINED_FUNCTION_33_28("fpic_HopNextMomentIfNecessary");
                *&lhs[24] = &v164;
                LOWORD(v159) = v84;
                *(&v159 + 2) = v162;
                OUTLINED_FUNCTION_95_1();
                OUTLINED_FUNCTION_65();
                _os_log_send_and_compose_impl();
                OUTLINED_FUNCTION_329_0();
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_524();
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_651();
}

void fpic_PostInterstitialWasUnscheduledNotification(uint64_t a1, uint64_t a2, int a3)
{
  v6 = fpic_UnwrapEvent();
  v7 = FigPlayerInterstitialEventCopyIdentifier(v6);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    FigCFDictionarySetValue();
    if (a3)
    {
      FigCFDictionarySetInt32();
    }

    if (dword_1EAF178D0)
    {
      v9 = OUTLINED_FUNCTION_19_42();
      OUTLINED_FUNCTION_34_5(v9, v10, v11, v12, v13, v14, v15, v16, v20, v21, v22, v23, SBYTE2(v23), BYTE3(v23), SHIDWORD(v23));
      OUTLINED_FUNCTION_134();
      if (v18)
      {
        v19 = v17;
      }

      else
      {
        v19 = v3;
      }

      if (v19)
      {
        OUTLINED_FUNCTION_2_6();
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_23();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_238_0();
    }

    fpic_PostNotification(a1, @"fpiInterstitialEventWasUnscheduled", Mutable);
    if (v7)
    {
      goto LABEL_12;
    }
  }

  else
  {
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM();
    if (v7)
    {
LABEL_12:
      CFRelease(v7);
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void fpic_updateSkippableEventStateOnQueue()
{
  OUTLINED_FUNCTION_649();
  v1 = v0;
  v3 = v2;
  v146 = *MEMORY[0x1E69E9840];
  CurrentlyPlayingEvent = fpic_GetCurrentlyPlayingEvent();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_624();
  v6 = fpic_UnwrapEvent();
  v7 = *(DerivedStorage + 552);
  OUTLINED_FUNCTION_256_1(v6, v8, v9, v10, v11, v12, v13, v14, v95, v98, v101, allocator, cf, cf_8, v118, v121, v124, v126, v128, v131, values[0], values[1], v135, v136.value, *&v136.timescale, v136.epoch, *&v137.start.value, *&v137.start.epoch, *&v137.duration.timescale);
  if ((v137.start.flags & 1) == 0 || (v137.duration.flags & 1) == 0 || v137.duration.epoch || v137.duration.value < 0)
  {
    v15 = 0;
    *(DerivedStorage + 552) = 0;
    if (v1)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  *v139 = *&v137.start.value;
  *&v139[16] = v137.start.epoch;
  memset(&v136, 0, sizeof(v136));
  *v145 = v137;
  CMTimeRangeGetEnd(&v136, v145);
  *values = *MEMORY[0x1E6960C70];
  v16 = *(MEMORY[0x1E6960C70] + 16);
  v135 = v16;
  OUTLINED_FUNCTION_29();
  if (!v18)
  {
    if ((v137.start.flags & 1) != 0 && (v137.duration.flags & 1) != 0 && !v137.duration.epoch && (v137.duration.value & 0x8000000000000000) == 0)
    {
      *(DerivedStorage + 552) = 1;
    }

    goto LABEL_13;
  }

  *cfe = v17;
  v36.n128_f64[0] = fpic_GetCurrentlyPlayingEventPlayoutDuration();
  OUTLINED_FUNCTION_193_1(v37, v38, v39, v40, v41, v42, v43, v44, v96, v99, v102, allocatora, cfe[0], cfe[1], v119, v122, v125, v127, v129, v132, v36, values[0]);
  v45 = OUTLINED_FUNCTION_122_1();
  if (CMTimeCompare(v45, v46) < 0)
  {
    *(DerivedStorage + 552) = 1;
    OUTLINED_FUNCTION_193_0();
  }

  else
  {
    *v145 = v137;
    v47 = OUTLINED_FUNCTION_122_1();
    v49 = CMTimeRangeContainsTime(v47, v48);
    if (!v49)
    {
      OUTLINED_FUNCTION_193_1(v49, v50, v51, v52, v53, v54, v55, v56, v97, v100, v104, allocatorb, cfb, cf_8a, v120, v123, values[0], values[1], v130, v133, v57, values[0]);
      v58 = OUTLINED_FUNCTION_122_1();
      if ((CMTimeCompare(v58, v59) & 0x80000000) == 0)
      {
        *(DerivedStorage + 552) = 3;
        StopAndReleaseTimer((DerivedStorage + 800));
        *(DerivedStorage + 792) = 0;
        *(DerivedStorage + 768) = *cfc;
        *(DerivedStorage + 784) = v16;
      }

      goto LABEL_13;
    }

    *(DerivedStorage + 552) = 2;
    OUTLINED_FUNCTION_193_0();
  }

  fpic_ensureSkippableEventEligibilityTimerIsScheduled();
  if (v94)
  {
    goto LABEL_15;
  }

LABEL_13:
  v15 = *(DerivedStorage + 552);
  if (v1)
  {
    goto LABEL_16;
  }

LABEL_14:
  if (v15 == v7)
  {
    goto LABEL_15;
  }

LABEL_16:
  v19 = CMBaseObjectGetDerivedStorage();
  v136.value = 0;
  values[0] = 0;
  if (!*(v19 + 1264))
  {
    goto LABEL_72;
  }

  v20 = v19;
  if (!v15)
  {
    v21 = *(v19 + 1288);
    if (v21)
    {
      CFRelease(v21);
      *(v20 + 1288) = 0;
    }

    v22 = *(v20 + 1296);
    if (v22)
    {
      CFRelease(v22);
      *(v20 + 1296) = 0;
    }

    goto LABEL_72;
  }

  OUTLINED_FUNCTION_624();
  v23 = fpic_UnwrapEvent();
  v24 = FigPlayerInterstitialEventCopyEffectiveSkipControlLocalizedLabelBundleKey(v23);
  if (!v24)
  {
    goto LABEL_72;
  }

  v25 = v24;
  PrimaryPlayerAndCopyWrapper = fpic_GetPrimaryPlayerAndCopyWrapper(v3, &v136);
  cfa = v25;
  if (!PrimaryPlayerAndCopyWrapper)
  {
    OUTLINED_FUNCTION_723();
    LODWORD(v63) = FigSignalErrorAtGM();
    goto LABEL_119;
  }

  v27 = CMBaseObjectGetDerivedStorage();
  v28 = *MEMORY[0x1E695E480];
  if (*(v27 + 1256))
  {
    if (!*(v20 + 1280))
    {
      FigBaseObject = FigPlayerGetFigBaseObject(PrimaryPlayerAndCopyWrapper);
      v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v30)
      {
        v30(FigBaseObject, @"ExternalPlaybackSystemLanguageCode", v28, v20 + 1280);
      }

      if (!*(v20 + 1280))
      {
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type);
        OUTLINED_FUNCTION_101_0();
        if (v18)
        {
          v91 = v90;
        }

        else
        {
          v91 = 0;
        }

        if (v91)
        {
          *v139 = 136315394;
          OUTLINED_FUNCTION_211_0("fpic_ensureCurrentEventSkipControlLabel");
          *&v139[12] = v92;
          *(v93 + 14) = v3;
          OUTLINED_FUNCTION_19_1();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_449();
        goto LABEL_49;
      }
    }

    v31 = CFArrayCreate(v28, (v20 + 1280), 1, MEMORY[0x1E695E9C0]);
    if (v31)
    {
      v32 = v31;
      v33 = CFBundleCopyLocalizedStringForLocalizations();
      v34 = FigCFEqual();
      if (v33 && v34)
      {
        CFRelease(v33);
        v33 = 0;
      }

      if (!FigCFEqual() && dword_1EAF178D0)
      {
        type = OS_LOG_TYPE_DEFAULT;
        v103 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v35 = os_log_type_enabled(v103, type);
        if (OUTLINED_FUNCTION_115_1(v35))
        {
          *v139 = 136316162;
          OUTLINED_FUNCTION_46_16();
          OUTLINED_FUNCTION_19_1();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_414();
      }

      v60 = *(v20 + 1296);
      *(v20 + 1296) = v33;
      if (v33)
      {
        CFRetain(v33);
      }

      if (v60)
      {
        CFRelease(v60);
      }

      if (v33)
      {
        CFRelease(v33);
      }

      CFRelease(v32);
      goto LABEL_49;
    }

    OUTLINED_FUNCTION_723();
    LODWORD(v63) = FigSignalErrorAtGM();
    PrimaryPlayerAndCopyWrapper = 0;
LABEL_119:
    v62 = 0;
    goto LABEL_65;
  }

LABEL_49:
  allocatorc = CFLocaleCopyCurrent();
  values[0] = MEMORY[0x19A8CD070](allocatorc, v61);
  v62 = CFArrayCreate(v28, values, 1, MEMORY[0x1E695E9C0]);
  if (v62)
  {
    v63 = CFBundleCopyLocalizedStringForLocalizations();
    v64 = FigCFEqual();
    if (v63 && v64)
    {
      CFRelease(v63);
      v63 = 0;
    }

    if (!FigCFEqual() && dword_1EAF178D0)
    {
      type = OS_LOG_TYPE_DEFAULT;
      v65 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v66 = os_log_type_enabled(v65, type);
      if (OUTLINED_FUNCTION_115_1(v66))
      {
        *v139 = 136316162;
        OUTLINED_FUNCTION_46_16();
        OUTLINED_FUNCTION_19_1();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414();
    }

    v67 = *(v20 + 1288);
    *(v20 + 1288) = v63;
    if (v63)
    {
      CFRetain(v63);
    }

    if (v67)
    {
      CFRelease(v67);
    }

    if (v63)
    {
      CFRelease(v63);
      LODWORD(v63) = 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_723();
    LODWORD(v63) = FigSignalErrorAtGM();
  }

  PrimaryPlayerAndCopyWrapper = allocatorc;
LABEL_65:
  CFRelease(cfa);
  if (v136.value)
  {
    CFRelease(v136.value);
  }

  if (v62)
  {
    CFRelease(v62);
  }

  if (PrimaryPlayerAndCopyWrapper)
  {
    CFRelease(PrimaryPlayerAndCopyWrapper);
  }

  if (v63)
  {
    goto LABEL_15;
  }

LABEL_72:
  cfd = v7;
  v68 = *(DerivedStorage + 552);
  v69 = *(DerivedStorage + 1296);
  v70 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_624();
  v71 = fpic_UnwrapEvent();
  v145[0] = 0;
  v72 = FigPlayerInterstitialEventCopyIdentifier(v71);
  allocatord = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v74 = Mutable;
    FigCFDictionarySetValue();
    FigCFDictionarySetUInt32();
    v75 = v72;
    if (v69)
    {
      FigCFDictionarySetValue();
    }

    v76 = FigCFWeakReferenceHolderCopyReferencedObject();
    v77 = cfd;
    if (!v76)
    {
      OUTLINED_FUNCTION_120();
      v79 = FigSignalErrorAtGM();
      goto LABEL_83;
    }

    v78 = (*(v70 + 72))(v3, v76, *(v70 + 48));
    if (!CurrentlyPlayingEvent && !v68)
    {
      v79 = fpic_copyPrimaryPlayer(v3, v145);
      if (v79)
      {
LABEL_83:
        v82 = v79;
        goto LABEL_85;
      }

      v78 = v145[0];
    }

    if (v78)
    {
      v80 = FigPlayerGetFigBaseObject(v78);
      v81 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v81)
      {
        v79 = v81(v80, @"CurrentInterstitialEventSkippableState", v74);
        goto LABEL_83;
      }

      v82 = -12782;
    }

    else
    {
      v82 = 0;
    }

LABEL_85:
    CFRelease(v74);
    if (!v75)
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

  OUTLINED_FUNCTION_120();
  v82 = FigSignalErrorAtGM();
  v76 = 0;
  v75 = v72;
  v77 = cfd;
  if (v75)
  {
LABEL_86:
    CFRelease(v75);
  }

LABEL_87:
  if (v76)
  {
    CFRelease(v76);
  }

  if (v145[0])
  {
    CFRelease(v145[0]);
  }

  if (!v82)
  {
    v83 = CFDictionaryCreateMutable(allocatord, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v83)
    {
      v84 = v83;
      FigCFDictionarySetValue();
      FigCFDictionarySetUInt32();
      FigCFDictionarySetValue();
      fpic_PostNotification(v3, @"fpiCurrentEventSkippableStateDidChange", v84);
      CFRelease(v84);
    }

    else
    {
      OUTLINED_FUNCTION_723();
      if (FigSignalErrorAtGM())
      {
        goto LABEL_15;
      }
    }

    v85 = FigPlayerInterstitialEventCopyIdentifier(v6);
    if (dword_1EAF178D0)
    {
      LODWORD(v136.value) = 0;
      LOBYTE(values[0]) = 0;
      v86 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v87 = os_log_type_enabled(v86, values[0]);
      if (OUTLINED_FUNCTION_115_1(v87))
      {
        v88 = *(DerivedStorage + 552);
        *v139 = 136316162;
        *&v139[4] = "fpic_updateSkippableEventStateOnQueue";
        *&v139[12] = 2048;
        *&v139[14] = v3;
        *&v139[22] = 2112;
        v140 = v85;
        v141 = 1024;
        v142 = v77;
        v143 = 1024;
        v144 = v88;
        OUTLINED_FUNCTION_19_1();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414();
    }

    if (v85)
    {
      CFRelease(v85);
    }
  }

LABEL_15:
  OUTLINED_FUNCTION_651();
}

double fpic_GetCurrentlyPlayingEventPlayoutDuration()
{
  OUTLINED_FUNCTION_179_2();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_17_7(MEMORY[0x1E6960CC0]);
  OUTLINED_FUNCTION_284();
  FirstCurrentItem = fpic_GetFirstCurrentItem();
  if (FirstCurrentItem)
  {
    fpic_GetItemPlayoutDuration(FirstCurrentItem, v0);
    v5 = *(DerivedStorage + 432);
    fpic_AccumulateDuration(v0, &v5);
    if (v1)
    {
      *v1 = *&v0->value;
      *(v1 + 16) = v0->epoch;
    }

    v5 = *(DerivedStorage + 480);
    *&result = fpic_AccumulateDuration(v0, &v5).n128_u64[0];
  }

  return result;
}

void fpic_ensureSkippableEventEligibilityTimerIsScheduled()
{
  OUTLINED_FUNCTION_193();
  v1 = v0;
  v3 = v2;
  v55 = v4;
  v6 = v5;
  v77 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v57 = v6;
  OUTLINED_FUNCTION_624();
  v8 = fpic_UnwrapEvent();
  OUTLINED_FUNCTION_256_1(v8, v9, v10, v11, v12, v13, v14, v15, v44, v46, v48, cf, v53, v55, v57, v59, v61.value, *&v61.timescale, v61.epoch, v62.value, *&v62.timescale, v62.epoch, start.value, *&start.timescale, start.epoch, v64, *&v65.start.value, *&v65.start.epoch, *&v65.duration.timescale);
  memset(&start, 0, sizeof(start));
  HIDWORD(v49) = v1;
  if (v1)
  {
    start = v65.start;
  }

  else
  {
    range = v65;
    CMTimeRangeGetEnd(&start, &range);
  }

  v16 = FigPlayerInterstitialEventCopyIdentifier(v8);
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_164_2();
  v17 = OUTLINED_FUNCTION_577();
  v54 = v18;
  PerEventTrackingCount = fpic_GetPerEventTrackingCount(v17, v18);
  v20 = CMBaseObjectGetDerivedStorage();
  *&range.start.value = *(v20 + 432);
  range.start.epoch = *(v20 + 448);
  rhs = *(v20 + 480);
  CMTimeAdd(&v62, &range.start, &rhs);
  rhs = start;
  CMTimeSubtract(&range.start, &rhs, &v62);
  value = range.start.value;
  timescale = range.start.timescale;
  epoch = range.start.epoch;
  v22 = MEMORY[0x1E6960C70];
  flags = range.start.flags;
  if ((~range.start.flags & 5) == 0)
  {
    StopAndReleaseTimer((DerivedStorage + 800));
    *(DerivedStorage + 792) = 0;
    *(DerivedStorage + 768) = *v22;
    *(DerivedStorage + 784) = *(v22 + 16);
  }

  if (PerEventTrackingCount < 1)
  {
LABEL_34:
    if (v16)
    {
LABEL_35:
      CFRelease(v16);
    }

    goto LABEL_36;
  }

  cfa = v16;
  v23 = 0;
  while (1)
  {
    PerAssetPerEventTrackedObject = fpic_GetPerAssetPerEventTrackedObject(DerivedStorage, v54, v23, @"PlaybackItem");
    v25 = fpic_UnwrapPlaybackItem(v58, PerAssetPerEventTrackedObject, v56);
    memset(&v62, 0, sizeof(v62));
    fpic_GetEventItemDurationOnAssetTimeline(v3, v23, &v62);
    if ((v62.flags & 1) == 0)
    {
      if (dword_1EAF178D0 >= 2)
      {
        LODWORD(v61.value) = 0;
        OUTLINED_FUNCTION_105_5();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v28 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        if (OUTLINED_FUNCTION_124_0(v28))
        {
          LODWORD(rhs.value) = 136315906;
          OUTLINED_FUNCTION_162_1("fpic_ensureSkippableEventEligibilityTimerIsScheduled", v45, v47, v49, cfa, v54, v56, v58);
          HIWORD(rhs.epoch) = v29;
          v67 = v23;
          v68 = 2112;
          v16 = cfb;
          v69 = cfb;
          OUTLINED_FUNCTION_87();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl();
        }

        else
        {
          v16 = cfa;
        }

LABEL_33:
        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_34;
      }

      goto LABEL_11;
    }

    OUTLINED_FUNCTION_131_2();
    range.start.timescale = v26;
    range.start.flags = flags;
    range.start.epoch = epoch;
    rhs = v62;
    if (CMTimeCompare(&range.start, &rhs) <= 0)
    {
      break;
    }

    rhs.value = value;
    rhs.timescale = timescale;
    rhs.flags = flags;
    rhs.epoch = epoch;
    v61 = v62;
    CMTimeSubtract(&range.start, &rhs, &v61);
    value = range.start.value;
    flags = range.start.flags;
    timescale = range.start.timescale;
    epoch = range.start.epoch;
    if (PerEventTrackingCount == ++v23)
    {
      goto LABEL_11;
    }
  }

  if (!v25)
  {
LABEL_11:
    v16 = cfa;
    if (cfa)
    {
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  OUTLINED_FUNCTION_131_2();
  range.start.timescale = v30;
  range.start.flags = flags;
  range.start.epoch = epoch;
  if (!fpic_isTimelineTimerScheduledForItemTime(DerivedStorage + 768, v25, &range.start))
  {
    StopAndReleaseTimer((DerivedStorage + 800));
    *(DerivedStorage + 792) = 0;
    v31 = MEMORY[0x1E6960C70];
    *(DerivedStorage + 768) = *MEMORY[0x1E6960C70];
    *(DerivedStorage + 784) = *(v31 + 16);
  }

  v16 = cfa;
  if (*(DerivedStorage + 800))
  {
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_131_2();
  range.start.timescale = v32;
  range.start.flags = flags;
  range.start.epoch = epoch;
  fpic_scheduleTimelineTimer(v58, (DerivedStorage + 768), v25, &range);
  if (!v33)
  {
    v34 = MEMORY[0x1E695E4D0];
    if (!v1)
    {
      v34 = MEMORY[0x1E695E4C0];
    }

    *(DerivedStorage + 808) = *v34;
    if (dword_1EAF178D0)
    {
      LODWORD(v61.value) = 0;
      v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v36 = v61.value;
      os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_134();
      if (v38)
      {
        v39 = v37;
      }

      else
      {
        v39 = v36;
      }

      if (v39)
      {
        if (v1)
        {
          v40 = "eligible";
        }

        else
        {
          v40 = "no longer eligible";
        }

        range.start = start;
        Seconds = CMTimeGetSeconds(&range.start);
        range.start.value = value;
        range.start.timescale = timescale;
        range.start.flags = flags;
        range.start.epoch = epoch;
        CMTimeGetSeconds(&range.start);
        LODWORD(rhs.value) = 136316418;
        OUTLINED_FUNCTION_162_1("fpic_ensureSkippableEventEligibilityTimerIsScheduled", v45, v47, v49, cfa, v54, v56, v58);
        HIWORD(rhs.epoch) = 2112;
        v67 = v16;
        v68 = 2080;
        v69 = v40;
        v70 = v42;
        v71 = Seconds;
        v72 = v42;
        v73 = v43;
        OUTLINED_FUNCTION_87();
        OUTLINED_FUNCTION_31();
        OUTLINED_FUNCTION_91_7();
        _os_log_send_and_compose_impl();
      }

      goto LABEL_33;
    }

    goto LABEL_34;
  }

  if (cfa)
  {
    goto LABEL_35;
  }

LABEL_36:
  OUTLINED_FUNCTION_191();
}

double fpic_GetEventItemDurationOnAssetTimeline@<D0>(uint64_t a1@<X2>, uint64_t a2@<X4>, void *a3@<X8>)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_235_1();
  v6 = OUTLINED_FUNCTION_622();
  v8 = v7(v6);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v9 = OUTLINED_FUNCTION_622();
  result = fpic_GetEventItemDurationOnEventTimeline(v9, v10, a1, a2, v11);
  if (!a2)
  {
    OUTLINED_FUNCTION_171();
    if (!fpic_hasFirstItemPlayedOutForEvent())
    {
      FigPlayerInterstitialEventGetFirstItemStartOffset(v8, &rhs);
      v13 = *a3;
      CMTimeAdd(&v15, &v13, &rhs);
      result = *&v15.value;
      *a3 = v15;
    }
  }

  return result;
}

__n128 fpic_scheduleTimelineTimer(uint64_t a1, __n128 *a2, unint64_t a3, __n128 *a4)
{
  fpic_CreateAndPrimeItemTimer();
  if (!v8)
  {
    a2[1].n128_u64[1] = a3;
    result = *a4;
    a2[1].n128_u64[0] = a4[1].n128_u64[0];
    *a2 = result;
  }

  return result;
}

uint64_t fpic_CopyCurrentInterstitialItemTimebase()
{
  v3 = 0;
  result = fpic_GetFirstCurrentItem();
  if (result)
  {
    FigBaseObject = FigPlaybackItemGetFigBaseObject(result);
    v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v2)
    {
      v2(FigBaseObject, @"Timebase", *MEMORY[0x1E695E480], &v3);
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void fpic_RemovePerAssetPerEventTrackedObjects(uint64_t a1, uint64_t a2, CFIndex a3)
{
  OUTLINED_FUNCTION_180_1();
  Count = *(v6 + 664);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count > v3)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v4 + 664), v3);
    v9 = ValueAtIndex;
    if (ValueAtIndex)
    {
      ValueAtIndex = CFArrayGetCount(ValueAtIndex);
    }

    if (ValueAtIndex > a3)
    {

      CFArrayRemoveValueAtIndex(v9, a3);
    }
  }
}

CFMutableArrayRef fpic_CopyPerAssetPerEventTrackedObjects(uint64_t a1, uint64_t a2, const void *a3)
{
  OUTLINED_FUNCTION_433();
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    Count = *(v4 + 664);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (Count > v3)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v4 + 664), v3);
      v9 = 0;
      if (!ValueAtIndex)
      {
        goto LABEL_7;
      }

LABEL_6:
      for (i = CFArrayGetCount(ValueAtIndex); v9 < i; i = 0)
      {
        v11 = CFArrayGetValueAtIndex(ValueAtIndex, v9);
        if (CFDictionaryGetValue(v11, a3))
        {
          v12 = OUTLINED_FUNCTION_399();
          CFArrayAppendValue(v12, v13);
        }

        ++v9;
        if (ValueAtIndex)
        {
          goto LABEL_6;
        }

LABEL_7:
        ;
      }
    }
  }

  return Mutable;
}

uint64_t fpic_IssuePreloadRequest(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  v3 = FigPlayerInterstitialPreloadCopyURL(a2);
  v28 = 0;
  value = 0;
  target = 0;
  valuePtr = 0;
  v4 = FigPlayerInterstitialPreloadCopyTargetID(a2);
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v5)
  {
    OUTLINED_FUNCTION_111();
    Empty = FigSignalErrorAtGM();
    goto LABEL_26;
  }

  v6 = *MEMORY[0x1E695E480];
  Empty = CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 0, 0, &target);
  if (Empty)
  {
LABEL_26:
    v18 = Empty;
    goto LABEL_11;
  }

  v8 = target;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFDictionarySetValue(*(DerivedStorage + 712), v4, v8);
  v10 = OUTLINED_FUNCTION_204_0();
  v17 = fpic_IssueTopLevelInterstitialRequest(v10, v11, 0, v12, v13, v14, v15, v16);
  v18 = v17;
  if (v17)
  {
    v19 = CFErrorCreate(v6, @"CoreMediaErrorDomain", v17, 0);
    if (v19)
    {
      v20 = v19;
      v21 = CMBaseObjectGetDerivedStorage();
      CFDictionarySetValue(*(v21 + 712), v4, v20);
      CFRelease(v20);
    }

    goto LABEL_8;
  }

  if (value)
  {
    CMSetAttachment(target, @"Preload_RequestID", value, 1u);
LABEL_8:
    v22 = v28;
    goto LABEL_9;
  }

  if (!valuePtr)
  {
    goto LABEL_8;
  }

  v24 = CFNumberCreate(v6, kCFNumberSInt64Type, &valuePtr);
  if (!v24)
  {
    goto LABEL_8;
  }

  v25 = v24;
  CMSetAttachment(target, @"Preload_RequestID", v24, 1u);
  v22 = v28;
  CMSetAttachment(target, @"Preload_CustomURLLoader", v28, 1u);
  CFRelease(v25);
LABEL_9:
  CMSetAttachment(target, @"Preload_URL", v3, 1u);
  CMSetAttachment(target, @"Preload_PreloadRef", a2, 1u);
  if (v22)
  {
    CFRelease(v22);
  }

LABEL_11:
  if (value)
  {
    CFRelease(value);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (target)
  {
    CFRelease(target);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v18;
}

void fpic_HTTPIssuePreloadCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated() || (Owner = FigRetainProxyGetOwner()) == 0)
  {

    FigRetainProxyUnlockMutex();
  }

  else
  {
    v15 = CFRetain(Owner);
    FigRetainProxyUnlockMutex();
    if (v15)
    {
      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_0_52();
      v17[1] = 3221225472;
      v17[2] = __fpic_HTTPIssuePreloadCallback_block_invoke;
      v17[3] = &__block_descriptor_80_e5_v8__0l;
      v17[4] = v15;
      v17[5] = a1;
      v17[6] = a4;
      v17[7] = a5;
      v17[8] = a6;
      v18 = a8;
      v19 = a7;
      dispatch_sync(v16, v17);
      fpic_ServiceCurrentEvent(v15, MEMORY[0x1E6960C70]);
      CFRelease(v15);
    }
  }
}

void fpic_customURLIssuePreloadCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  SInt64 = FigCFNumberCreateSInt64();
  if (a1)
  {
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_57_13();
    v15[1] = 3221225472;
    v15[2] = __fpic_customURLIssuePreloadCallback_block_invoke;
    v15[3] = &__block_descriptor_92_e5_v8__0l;
    v16 = a5;
    v15[4] = a3;
    v15[5] = a2;
    v15[6] = v13;
    v15[7] = a1;
    v15[8] = SInt64;
    v15[9] = a6;
    v15[10] = a4;
    dispatch_sync(v14, v15);
    fpic_ServiceCurrentEvent(a1, MEMORY[0x1E6960C70]);
  }

  if (SInt64)
  {
    CFRelease(SInt64);
  }
}

void fpic_PruneCurrentEventsToQueue()
{
  OUTLINED_FUNCTION_649();
  HIDWORD(v166) = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v193 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_78_8();
  v8 = OUTLINED_FUNCTION_797();
  v163 = v9(v8);
  v184 = -1;
  Count = CFArrayGetCount(*(DerivedStorage + 656));
  v10 = OUTLINED_FUNCTION_797();
  fpic_findEventAndItemIndexForItemOnQueue(v10, v11, v2, v12, 0);
  if (v2 && *(CMBaseObjectGetDerivedStorage() + 1032) != v2)
  {
    goto LABEL_124;
  }

  LODWORD(cf) = 0;
  LODWORD(v162) = 0;
  v14 = 0;
  v15 = 0;
  v184 = 0;
  v160 = @"Status";
  v161 = (DerivedStorage + 408);
  v158 = DerivedStorage + 88;
  v159 = *MEMORY[0x1E695E480];
  v156 = DerivedStorage + 112;
  v16 = &dword_1EAF17000;
  *&v13 = 136316674;
  *v170 = v13;
  *&v13 = 136315906;
  *v164 = v13;
  *&v13 = 136315394;
  *v157 = v13;
  *&v13 = 136315650;
  *v167 = v13;
  v172 = DerivedStorage;
  do
  {
    v17 = OUTLINED_FUNCTION_249_2();
    PerEventTrackingCount = fpic_GetPerEventTrackingCount(v17, v18);
    if (PerEventTrackingCount < 1)
    {
      continue;
    }

    v19 = 0;
    while (1)
    {
      v20 = OUTLINED_FUNCTION_249_2();
      v176 = v19;
      PerAssetPerEventTrackedObject = fpic_GetPerAssetPerEventTrackedObject(v20, v21, v19, @"PlaybackItem");
      OUTLINED_FUNCTION_766();
      v26 = fpic_UnwrapPlaybackItem(v23, v24, v25);
      v27 = v26;
      if (v16[564] >= 4)
      {
        v28 = v4;
        v29 = v26;
        OUTLINED_FUNCTION_114_3();
        v30 = OUTLINED_FUNCTION_40_22();
        v31 = os_log_type_enabled(v30, type.value);
        if (OUTLINED_FUNCTION_15_52(v31))
        {
          LODWORD(valuePtr.value) = v170[0];
          OUTLINED_FUNCTION_113_3();
          HIWORD(valuePtr.epoch) = 1024;
          *v186 = v15;
          *&v186[4] = 1024;
          *&v186[6] = v176;
          *v187 = v32;
          *&v187[2] = v2;
          v188 = v32;
          v189 = v29;
          v190 = 2080;
          v191 = v33;
          LODWORD(v152) = 64;
          p_valuePtr = &valuePtr;
          OUTLINED_FUNCTION_19_1();
          _os_log_send_and_compose_impl();
          OUTLINED_FUNCTION_161_2();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_467();
        v34 = v28;
        DerivedStorage = v172;
        v16 = &dword_1EAF17000;
        v27 = v29;
        v4 = v34;
      }

      v35 = v14 || v2 == 0;
      if (v35 && v27)
      {
        break;
      }

      if (v2)
      {
        if (PerAssetPerEventTrackedObject == @"DummyItem" || v27 == v2)
        {
LABEL_25:
          v155 = v4;
          if (v16[564])
          {
            v154 = v27;
            OUTLINED_FUNCTION_114_3();
            v38 = OUTLINED_FUNCTION_40_22();
            v39 = os_log_type_enabled(v38, type.value);
            if (OUTLINED_FUNCTION_15_52(v39))
            {
              LODWORD(valuePtr.value) = v164[0];
              OUTLINED_FUNCTION_11_67();
              *(&valuePtr.flags + 2) = v6;
              HIWORD(valuePtr.epoch) = v40;
              *v186 = v154;
              *&v186[8] = 2112;
              *v187 = PerAssetPerEventTrackedObject;
              OUTLINED_FUNCTION_1_174();
              _os_log_send_and_compose_impl();
              OUTLINED_FUNCTION_161_2();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_467();
            v16 = &dword_1EAF17000;
            v27 = v154;
          }

          if (v27)
          {
            v41 = v27;
            if (HIDWORD(v166))
            {
              v42 = *(*(CMBaseObjectGetVTable() + 16) + 24);
              if (v42)
              {
                v42(v163, v41);
              }
            }

            v43 = CMBaseObjectGetDerivedStorage();
            if (*(v43 + 160))
            {
              v44 = v43;
              v192[0] = 0;
              LODWORD(valuePtr.value) = 0;
              FigBaseObject = FigPlaybackItemGetFigBaseObject(v41);
              v46 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v46)
              {
                v47 = v46(FigBaseObject, v160, v159, v192);
                v48 = v192[0];
                if (!v47 && v192[0])
                {
                  CFNumberGetValue(v192[0], kCFNumberSInt32Type, &valuePtr);
                  v48 = v192[0];
                }

                if (v48)
                {
                  CFRelease(v48);
                }
              }

              if (LODWORD(valuePtr.value))
              {
                v49 = *(v44 + 1200) + 1;
                *(v44 + 1200) = v49;
                v50 = &kFigPlaybackItemProperty_InterstitialPlaybackFailureCount;
              }

              else
              {
                v49 = *(v44 + 1196) + 1;
                *(v44 + 1196) = v49;
                v50 = &kFigPlaybackItemProperty_InterstitialPlaybackSuccessCount;
              }

              fpic_setItemPropertyInt32(*(v44 + 160), *v50, v49);
            }

            v51 = OUTLINED_FUNCTION_797();
            fpic_StopRecordingActiveInterstitialItemPlayoutTime(v51, v52);
            v53 = OUTLINED_FUNCTION_797();
            fpic_UnregisterInterstitialItemNotifications(v53, v54, 0);
            v14 = 1;
          }

          v4 = v155;
          fpic_updateEventLoadedTimeIntervalsOnQueue();
          v55 = OUTLINED_FUNCTION_249_2();
          fpic_RemovePerAssetPerEventTrackedObjects(v55, v56, v176);
          v37 = v176 - 1;
          if (!--PerEventTrackingCount)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 656), v15);
            value = ValueAtIndex;
            if (ValueAtIndex)
            {
              v162 = CFRetain(ValueAtIndex);
            }

            else
            {
              v162 = 0;
            }

            v58 = OUTLINED_FUNCTION_797();
            v175 = v59(v58);
            v154 = FigPlayerInterstitialEventCopyAssetListUrl(v175);
            cf = FigPlayerInterstitialEventCopyIdentifier(v175);
            HIDWORD(v173) = v14;
            v177 = v176 - 1;
            if (v16[564])
            {
              v4 = DerivedStorage;
              OUTLINED_FUNCTION_114_3();
              v60 = OUTLINED_FUNCTION_40_22();
              v68 = OUTLINED_FUNCTION_100_6(v60, v61, v62, v63, v64, v65, v66, v67, p_valuePtr, v152, idx, v154, v155, v156, v157[0], v157[1], v158, v159, v160, v161, v162, v163, v164[0], v164[1], v165, v166, v167[0], v167[1], Count, cf, v170[0], v170[1], v171, v172, v173, v175, v37, v178, type.value, *&type.timescale, type.epoch, v180, v181.value);
              if (OUTLINED_FUNCTION_15_52(v68))
              {
                LODWORD(valuePtr.value) = v167[0];
                OUTLINED_FUNCTION_11_67();
                OUTLINED_FUNCTION_226_0();
                *v186 = v175;
                OUTLINED_FUNCTION_1_174();
                OUTLINED_FUNCTION_91_7();
                _os_log_send_and_compose_impl();
                OUTLINED_FUNCTION_161_2();
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_467();
              v16 = &dword_1EAF17000;
              OUTLINED_FUNCTION_80_8();
            }

            idx = v15;
            if (FigPlayerInterstitialEventDidAllItemsFail(v175))
            {
              if (v16[564])
              {
                v4 = DerivedStorage;
                OUTLINED_FUNCTION_114_3();
                v76 = OUTLINED_FUNCTION_40_22();
                v84 = OUTLINED_FUNCTION_100_6(v76, v77, v78, v79, v80, v81, v82, v83, p_valuePtr, v152, v15, v154, v155, v156, v157[0], v157[1], v158, v159, v160, v161, v162, v163, v164[0], v164[1], v165, v166, v167[0], v167[1], Count, cf, v170[0], v170[1], v171, v172, v173, v175, v177, v178, type.value, *&type.timescale, type.epoch, v180, v181.value);
                if (OUTLINED_FUNCTION_15_52(v84))
                {
                  LODWORD(valuePtr.value) = v167[0];
                  OUTLINED_FUNCTION_11_67();
                  OUTLINED_FUNCTION_226_0();
                  *v186 = cf;
                  OUTLINED_FUNCTION_1_174();
                  OUTLINED_FUNCTION_91_7();
                  _os_log_send_and_compose_impl();
                  OUTLINED_FUNCTION_161_2();
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_467();
                v16 = &dword_1EAF17000;
                OUTLINED_FUNCTION_80_8();
              }

              fpic_UpdateEventLastPlaybackFailed(v6, value, 1);
              v85 = value;
              v75 = v175;
              LastPlaybackError = FigPlayerInterstitialEventGetLastPlaybackError(v175);
              fpic_PostInterstitialWasUnscheduledNotification(v6, v85, LastPlaybackError);
            }

            else
            {
              *v192 = *(DerivedStorage + 480);
              valuePtr = **&MEMORY[0x1E6960CC0];
              CMTimeCompare(v192, &valuePtr);
              OUTLINED_FUNCTION_222_1();
              fpic_PostInterstitialDidFinishNotification(v6, v69, v192, v70, v71, v72, v73, v74, p_valuePtr, SHIDWORD(p_valuePtr), v152, v15, v154, v155, v156, v157[0], SHIDWORD(v157[0]), v157[1], v158, v159, v160, v161, v162, v163, v164[0], v164[1], v165, v166, v167[0], v167[1], Count, cf, v170[0], v170[1], v171, v172, v173, v175, v177, v178, type.value, *&type.timescale, type.epoch, v180, v181.value, *&v181.timescale, v181.epoch, v182, value, v184);
              v75 = v175;
            }

            FigPlayerInterstitialEventResetItemSuccessCount(v75);
            FigPlayerInterstitialEventSetLastPlaybackError(v75);
            memset(&v181, 0, sizeof(v181));
            FigPlayerInterstitialEventGetResumptionOffset(v75, &v181);
            if ((v181.flags & 0x11) != 1)
            {
              valuePtr = *(DerivedStorage + 432);
              type = *(DerivedStorage + 480);
              CMTimeAdd(v192, &valuePtr, &type);
              v181 = *v192;
            }

            *v192 = v181;
            fpic_AccumulateDuration(v161, v192);
            OUTLINED_FUNCTION_222_1();
            fpic_AccumulateDuration((DerivedStorage + 456), v192);
            v87 = MEMORY[0x1E6960CC0];
            v88 = *MEMORY[0x1E6960CC0];
            *(DerivedStorage + 432) = *MEMORY[0x1E6960CC0];
            v89 = *(v87 + 16);
            *(DerivedStorage + 448) = v89;
            *(DerivedStorage + 480) = v88;
            *(DerivedStorage + 496) = v89;
            if (v16[564] >= 2)
            {
              OUTLINED_FUNCTION_127_3();
              v90 = OUTLINED_FUNCTION_169_2();
              if (OUTLINED_FUNCTION_255_2(v90, v91, v92, v93, v94, v95, v96, v97, p_valuePtr, v152, idx, v154, v155, v156, v157[0], v157[1], v158, v159, v160, v161, v162, v163, v164[0], v164[1], v165, v166, v167[0], v167[1], Count, cf, v170[0], v170[1], v171, v172, v173, v175, v177, v178, SWORD2(v178), SBYTE6(v178), HIBYTE(v178), type.value))
              {
                v98 = DerivedStorage;
              }

              else
              {
                v98 = DerivedStorage & 0xFFFFFFFE;
              }

              if (v98)
              {
                *v192 = *v161;
                CMTimeGetSeconds(v192);
                LODWORD(valuePtr.value) = v157[0];
                OUTLINED_FUNCTION_11_67();
                *(&valuePtr.flags + 2) = v99;
                LODWORD(v152) = 22;
                p_valuePtr = &valuePtr;
                OUTLINED_FUNCTION_108();
                OUTLINED_FUNCTION_91_7();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_467();
              DerivedStorage = v4;
              OUTLINED_FUNCTION_80_8();
            }

            HIDWORD(v152) = FigPlayerInterstitialEventGetSnapOptions(v175);
            fpic_RecordPastCurrentEventDuration(v6, value);
            CFArrayRemoveValueAtIndex(*(DerivedStorage + 656), idx);
            v100 = idx;
            fpic_RemovePerEventTrackedObjects();
            v101 = FigPlayerInterstitialEventCopyIdentifier(v175);
            v102 = OUTLINED_FUNCTION_235();
            fpic_ForgetPreloadByTargetID(v102, v103);
            if (v101)
            {
              CFRelease(v101);
            }

            fpic_CancelPendingURLRequest(v6, value);
            fpic_HopNextMomentIfNecessary();
            v104 = *(DerivedStorage + 904);
            v105 = v154;
            if (v104 && v104 == value)
            {
              if (dword_1EAF178D0)
              {
                OUTLINED_FUNCTION_127_3();
                v106 = OUTLINED_FUNCTION_169_2();
                v114 = OUTLINED_FUNCTION_255_2(v106, v107, v108, v109, v110, v111, v112, v113, p_valuePtr, v152, idx, v154, v155, v156, v157[0], v157[1], v158, v159, v160, v161, v162, v163, v164[0], v164[1], v165, v166, v167[0], v167[1], Count, cf, v170[0], v170[1], v171, v172, v173, v175, v177, v178, SWORD2(v178), SBYTE6(v178), HIBYTE(v178), type.value);
                if (OUTLINED_FUNCTION_15_52(v114))
                {
                  v115 = *(v4 + 896);
                  LODWORD(valuePtr.value) = v164[0];
                  *(&valuePtr.value + 4) = "fpic_PruneCurrentEventsToQueue";
                  LOWORD(valuePtr.flags) = 2048;
                  *(&valuePtr.flags + 2) = v6;
                  HIWORD(valuePtr.epoch) = 2112;
                  *v186 = value;
                  *&v186[8] = 1024;
                  *v187 = v115;
                  OUTLINED_FUNCTION_1_174();
                  OUTLINED_FUNCTION_91_7();
                  _os_log_send_and_compose_impl();
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_467();
                DerivedStorage = v4;
                OUTLINED_FUNCTION_80_8();
              }

              fpic_ForceCancelInitiatedSeek();
            }

            if (v105)
            {
              fpic_clearEventAssetListState(v175);
              v124 = OUTLINED_FUNCTION_797();
              if (!v125(v124))
              {
                fpic_UpdateEventInAddOrder(v6, v162, value);
              }

              OUTLINED_FUNCTION_245_2();
              v129 = fpic_CreateAssetListResponseStatusDidChangeNotificationPayload(v126, v127, v128);
              fpic_PostNotification(v6, @"fpiAssetListResponseStatusDidChange", v129);
              if (value)
              {
                CFRelease(value);
              }

              if (v129)
              {
                CFRelease(v129);
              }
            }

            CFSetSetValue(*(DerivedStorage + 688), value);
            if (!--Count)
            {
              v116 = v175;
              if (*(DerivedStorage + 256) || *(DerivedStorage + 257))
              {
                if (dword_1EAF178D0)
                {
                  OUTLINED_FUNCTION_127_3();
                  v117 = OUTLINED_FUNCTION_169_2();
                  v118 = type.value;
                  if (os_log_type_enabled(v117, HIBYTE(v178)))
                  {
                    v119 = v118;
                  }

                  else
                  {
                    v119 = v118 & 0xFFFFFFFE;
                  }

                  if (v119)
                  {
                    LODWORD(valuePtr.value) = v157[0];
                    OUTLINED_FUNCTION_11_67();
                    *(&valuePtr.flags + 2) = v6;
                    OUTLINED_FUNCTION_1_174();
                    _os_log_send_and_compose_impl();
                  }

                  OUTLINED_FUNCTION_7();
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  DerivedStorage = v4;
                  v14 = HIDWORD(v173);
                  v116 = v175;
                  v37 = v177;
                  v4 = v155;
                }

                v120 = CMBaseObjectGetDerivedStorage();
                *(v120 + 256) = 0;
                *(v120 + 296) = 0;
                v121 = MEMORY[0x1E6960C70];
                v122 = *MEMORY[0x1E6960C70];
                *(v120 + 432) = *MEMORY[0x1E6960C70];
                v123 = *(v121 + 16);
                *(v120 + 448) = v123;
                *(v120 + 480) = v122;
                *(v120 + 496) = v123;
                *(v120 + 504) = v122;
                *(v120 + 520) = v123;
                *(v120 + 1144) = 0;
                *(v120 + 644) = v123;
                *(v120 + 628) = v122;
                *(v120 + 1147) = 0;
              }

              if (FigPlayerInterstitialEventIsPostRoll(v116))
              {
                fpic_DeassertPostRoll(v6);
              }
            }

            if (v105)
            {
              CFRelease(v105);
            }

            if (cf)
            {
              CFRelease(cf);
            }

            if (v162)
            {
              CFRelease(v162);
            }

            PerEventTrackingCount = 0;
            LODWORD(v162) = (HIDWORD(v152) >> 1) & 1;
            v15 = v100 - 1;
            LODWORD(cf) = 1;
            v16 = &dword_1EAF17000;
          }

          goto LABEL_22;
        }
      }

      else if (PerAssetPerEventTrackedObject == @"DummyItem")
      {
        goto LABEL_25;
      }

      v37 = v176;
LABEL_22:
      v19 = v37 + 1;
      if (v19 >= PerEventTrackingCount)
      {
        goto LABEL_109;
      }
    }

    if (v16[564] >= 4)
    {
      v130 = v4;
      v131 = v27;
      HIDWORD(v173) = v14;
      OUTLINED_FUNCTION_114_3();
      v132 = OUTLINED_FUNCTION_40_22();
      v140 = OUTLINED_FUNCTION_100_6(v132, v133, v134, v135, v136, v137, v138, v139, p_valuePtr, v152, idx, v154, v155, v156, v157[0], v157[1], v158, v159, v160, v161, v162, v163, v164[0], v164[1], v165, v166, v167[0], v167[1], Count, cf, v170[0], v170[1], v171, v172, v173, PerEventTrackingCount, v176, v178, type.value, *&type.timescale, type.epoch, v180, v181.value);
      if (OUTLINED_FUNCTION_15_52(v140))
      {
        LODWORD(valuePtr.value) = v164[0];
        OUTLINED_FUNCTION_11_67();
        *(&valuePtr.flags + 2) = v6;
        HIWORD(valuePtr.epoch) = v141;
        *v186 = v131;
        *&v186[8] = v141;
        *v187 = v2;
        OUTLINED_FUNCTION_1_174();
        OUTLINED_FUNCTION_91_7();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_161_2();
      }

      v4 = v130;
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_467();
      DerivedStorage = v172;
      v14 = HIDWORD(v173);
    }

LABEL_109:
    ;
  }

  while (v15++ < v184);
  v143 = *(CMBaseObjectGetDerivedStorage() + 1032);
  if (v143)
  {
    v144 = v143 == v2;
  }

  else
  {
    v144 = 0;
  }

  if (v144)
  {
    if (v16[564])
    {
      OUTLINED_FUNCTION_114_3();
      v145 = OUTLINED_FUNCTION_40_22();
      v146 = os_log_type_enabled(v145, type.value);
      if (OUTLINED_FUNCTION_109_0(v146))
      {
        LODWORD(valuePtr.value) = v167[0];
        OUTLINED_FUNCTION_113_3();
        HIWORD(valuePtr.epoch) = v147;
        *v186 = v148;
        OUTLINED_FUNCTION_82_1();
        OUTLINED_FUNCTION_19_1();
        OUTLINED_FUNCTION_91_7();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_524();
    }

    *(DerivedStorage + 1032) = 0;
  }

  if (cf && !Count)
  {
    fpic_UngatePrimaryBuffering();
    fpic_ApplyResumptionOffset();
LABEL_123:
    v149 = OUTLINED_FUNCTION_797();
    fpic_SignalCurrentEvent(v149, v150);
  }

  else if (cf)
  {
    goto LABEL_123;
  }

LABEL_124:
  OUTLINED_FUNCTION_651();
}

void fpic_updateEventLoadedTimeIntervalsOnQueue()
{
  OUTLINED_FUNCTION_172_2();
  v51 = v0;
  v52 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFArrayGetCount(*(DerivedStorage + 656)) < 1)
  {
    goto LABEL_3;
  }

  v44 = 0;
  v45 = 0;
  if (!fpic_findEventAndItemIndexForItemOnQueue(v7, v5, v3, &v45, &v44))
  {
    goto LABEL_3;
  }

  fpic_SetPerAssetPerEventTrackedObject();
  v9 = v45;
  OUTLINED_FUNCTION_9_47(MEMORY[0x1E6960CC0]);
  v10 = CMBaseObjectGetDerivedStorage();
  ValueAtIndex = FigCFArrayGetValueAtIndex();
  v11 = (*(v10 + 88))(v7, v5);
  v12 = FigPlayerInterstitialEventCopyLoadedTimeIntervals(v11);
  v42 = v10;
  PerEventTrackingCount = fpic_GetPerEventTrackingCount(v10, v9);
  if (FigPlayerInterstitialEventGetTimelineOccupancy(v11) == 1)
  {
    v36 = v12;
    if (PerEventTrackingCount < 1)
    {
      v15 = 0;
    }

    else
    {
      v14 = 0;
      v15 = 0;
      v16 = *MEMORY[0x1E695E480];
      v39 = v5;
      v40 = v7;
      v37 = PerEventTrackingCount;
      v38 = v9;
      do
      {
        PerAssetPerEventTrackedObject = fpic_GetPerAssetPerEventTrackedObject(v42, v9, v14, @"LoadedTimeInterval");
        v43 = v14;
        if (PerAssetPerEventTrackedObject)
        {
          v18 = PerAssetPerEventTrackedObject;
          Count = CFArrayGetCount(PerAssetPerEventTrackedObject);
          if (Count >= 1)
          {
            v20 = Count;
            for (i = 0; i != v20; ++i)
            {
              v22 = CFArrayGetValueAtIndex(v18, i);
              Mutable = CFDictionaryCreateMutable(v16, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              memset(&v49, 0, sizeof(v49));
              Value = CFDictionaryGetValue(v22, @"startTime");
              CMTimeMakeFromDictionary(&rhs, Value);
              lhs = v50[0];
              CMTimeAdd(&v49, &lhs, &rhs);
              OUTLINED_FUNCTION_228_1();
              v25 = OUTLINED_FUNCTION_204_0();
              v27 = CFDictionaryGetValue(v25, v26);
              CMTimeMakeFromDictionary(&lhs, v27);
              OUTLINED_FUNCTION_209_2();
              CMTimeAdd(&rhs, &v46, &lhs);
              lhs = v49;
              v28 = CMTimeCopyAsDictionary(&lhs, v16);
              lhs = rhs;
              v29 = CMTimeCopyAsDictionary(&lhs, v16);
              v30 = OUTLINED_FUNCTION_184();
              CFDictionarySetValue(v30, v31, v28);
              v32 = OUTLINED_FUNCTION_16_13();
              CFDictionarySetValue(v32, v33, v29);
              if (!v15)
              {
                v15 = CFArrayCreateMutable(v16, 0, MEMORY[0x1E695E9C0]);
              }

              v34 = OUTLINED_FUNCTION_214_2();
              CFArrayAppendValue(v34, v35);
              if (v28)
              {
                CFRelease(v28);
              }

              if (v29)
              {
                CFRelease(v29);
              }

              if (Mutable)
              {
                CFRelease(Mutable);
              }
            }
          }
        }

        v7 = v40;
        v9 = v38;
        fpic_GetEventItemDurationOnEventTimeline(v40, v39, ValueAtIndex, v43, &v49);
        rhs = v50[0];
        CMTimeAdd(v50, &rhs, &v49);
        v14 = v43 + 1;
      }

      while (v43 + 1 != v37);
    }

    v12 = v36;
    OUTLINED_FUNCTION_193_0();
    if (!FigCFEqual())
    {
      FigPlayerInterstitialEventSetLoadedTimeIntervals(v11, v15);
      fpic_PostNotification(v7, @"fpiResolvePropertiesChange", 0);
    }

    if (!v36)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v15 = 0;
  if (v12)
  {
LABEL_25:
    CFRelease(v12);
  }

LABEL_26:
  if (v15)
  {
    CFRelease(v15);
  }

LABEL_3:
  OUTLINED_FUNCTION_171_2();
}

void fpic_PostInterstitialDidFinishNotification(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, char a5, os_log_type_t type, int a7, int a8, int a9, int a10, __int16 a11, uint64_t a12, uint64_t a13, __int16 a14, uint64_t a15, __int16 a16, int a17, CMTime *time, uint64_t a19, uint64_t a20, uint64_t timea, uint64_t time_8, uint64_t time_16, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  OUTLINED_FUNCTION_458();
  a49 = v50;
  a50 = v51;
  v53 = v52;
  a37 = *MEMORY[0x1E69E9840];
  v54 = fpic_UnwrapEvent();
  v55 = FigPlayerInterstitialEventCopyIdentifier(v54);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    FigCFDictionarySetValue();
    OUTLINED_FUNCTION_61_14();
    FigCFDictionarySetCMTime();
    FigCFDictionarySetBoolean();
    fpic_PostNotification(v53, @"fpiInterstitialEventDidFinish", Mutable);
    if (dword_1EAF178D0)
    {
      OUTLINED_FUNCTION_147();
      v57 = OUTLINED_FUNCTION_126();
      os_log_type_enabled(v57, BYTE3(a13));
      OUTLINED_FUNCTION_101_0();
      if (v59)
      {
        v60 = v58;
      }

      else
      {
        v60 = HIDWORD(a13);
      }

      if (v60)
      {
        OUTLINED_FUNCTION_61_14();
        CMTimeGetSeconds(&timea);
        OUTLINED_FUNCTION_2_6();
        OUTLINED_FUNCTION_240_1();
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_449();
    }

    if (v55)
    {
      goto LABEL_10;
    }
  }

  else
  {
    OUTLINED_FUNCTION_374();
    FigSignalErrorAtGM();
    if (v55)
    {
LABEL_10:
      CFRelease(v55);
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  OUTLINED_FUNCTION_457();
}

void fpic_UngatePrimaryBuffering()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 160);
  if (v1)
  {
    FigBaseObject = FigPlaybackItemGetFigBaseObject(v1);
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v3)
    {
      v3(FigBaseObject, @"TimeToPauseBuffering", 0);
    }

    v4 = MEMORY[0x1E6960C70];
    *(DerivedStorage + 1040) = *MEMORY[0x1E6960C70];
    *(DerivedStorage + 1056) = *(v4 + 16);
    v5 = CMBaseObjectGetDerivedStorage();
    StopAndReleaseTimer((v5 + 816));
    *(v5 + 872) = 0;
  }
}

void fpic_ApplyResumptionOffset()
{
  OUTLINED_FUNCTION_193();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v119 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v90 = *MEMORY[0x1E6960C70];
  *&v105.value = *MEMORY[0x1E6960C70];
  v11 = *(MEMORY[0x1E6960C70] + 16);
  v105.epoch = v11;
  OUTLINED_FUNCTION_228_1();
  fpic_CurrentResumptionOffset(v9, v7, v3, 1, 1, &v105, &v104);
  v12 = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  v14 = *(v12 + 884);
  if (v14 <= 2.0 && v14 >= 0.0)
  {
    if (*(DerivedStorage + 160) && (v105.flags & 1) != 0)
    {
      v116 = *&v105.value;
      *&v117 = v105.epoch;
      FigCFSetPropertyToTime();
    }

    if ((v104.flags & 1) == 0)
    {
      goto LABEL_28;
    }

    if (*(DerivedStorage + 376) || (v13 = *(DerivedStorage + 377)) != 0)
    {
      Count = CFArrayGetCount(*(DerivedStorage + 656));
      if (!v5 && Count >= 1)
      {
        CFArrayGetValueAtIndex(*(DerivedStorage + 656), Count - 1);
        v16 = OUTLINED_FUNCTION_797();
        v18 = v17(v16);
        v5 = (FigPlayerInterstitialEventGetSnapOptions(v18) >> 1) & 1;
      }

      if (*(DerivedStorage + 1146) && *(DerivedStorage + 1145))
      {
        v5 = 0;
        OUTLINED_FUNCTION_221_1(MEMORY[0x1E6960CC0]);
      }

      if (!*(DerivedStorage + 160))
      {
        OUTLINED_FUNCTION_374();
        FigSignalErrorAtGM();
LABEL_48:
        v13 = 0;
        goto LABEL_29;
      }

      memset(&v103, 0, sizeof(v103));
      v19 = CMBaseObjectGetDerivedStorage();
      if (*(v19 + 376))
      {
        OUTLINED_FUNCTION_231_0();
        v103.epoch = v20;
        *&v103.value = *v21;
      }

      else if (*(v19 + 377))
      {
        v22 = *(v19 + 368);
        v23 = *(v19 + 320);
        v116 = *(v19 + 304);
        v117 = v23;
        v118 = *(v19 + 336);
        FigCreateTimeWithDateAndMoment(&v116, &v103, v22);
      }

      else
      {
        *&v103.value = v90;
        v103.epoch = v11;
      }

      memset(&v102, 0, sizeof(v102));
      v116 = *&v103.value;
      *&v117 = v103.epoch;
      rhs = v104;
      v24 = CMTimeAdd(&v102, &v116, &rhs);
      if (v7)
      {
        v24 = CMBaseObjectGetDerivedStorage();
        if (*(v24 + 1142))
        {
          if (!*(v24 + 1141) && !*(DerivedStorage + 1146) && !*(DerivedStorage + 1145))
          {
            v116 = 0uLL;
            *&v117 = 0;
            fpic_GetItemEndTime();
            CMTimeMake(&time2, 1, 1);
            v69 = CMTimeSubtract(&v116, &rhs, &time2);
            OUTLINED_FUNCTION_72_9(v69, v70, v71, v72, v73, v74, v75, v76, v78, v81, v84, v87, v90, *(&v90 + 1), v96, v99, time2.value, *&time2.timescale, time2.epoch, v101, v77, v102.value);
            *&time2.value = v116;
            time2.epoch = v117;
            v24 = CMTimeCompare(&rhs, &time2);
            if (v24 >= 1)
            {
              *&v102.value = v116;
              v102.epoch = v117;
            }
          }
        }
      }

      v116 = *(DerivedStorage + 556);
      *&v117 = *(DerivedStorage + 572);
      OUTLINED_FUNCTION_72_9(v24, v25, v26, v27, v28, v29, v30, v31, v78, v81, v84, v87, v90, *(&v90 + 1), v96, v99, time2.value, *&time2.timescale, time2.epoch, v101, v116, v102.value);
      IsWithinTolerance = faqrp_timeDifferenceIsWithinTolerance(&v116, &rhs, &kMomentsAreCloseThreshold);
      if (IsWithinTolerance || (v116 = *(DerivedStorage + 580), *&v117 = *(DerivedStorage + 596), OUTLINED_FUNCTION_72_9(IsWithinTolerance, v33, v34, v35, v36, v37, v38, v39, v79, v82, v85, v88, v91, v94, v97, v99, time2.value, *&time2.timescale, time2.epoch, v101, v116, v102.value), faqrp_timeDifferenceIsWithinTolerance(&v116, &rhs, &kMomentsAreCloseThreshold)))
      {
LABEL_28:
        v13 = 0;
        goto LABEL_29;
      }

      v40 = *MEMORY[0x1E695E4C0];
      v99 = *MEMORY[0x1E695E4C0];
      FigBaseObject = FigPlaybackItemGetFigBaseObject(*(DerivedStorage + 160));
      v41 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v41)
      {
        v41(FigBaseObject, @"IsPlayingIFrameOnly", *MEMORY[0x1E695E480], &v99);
        v40 = v99;
      }

      if (v5)
      {
        v42 = 1;
      }

      else
      {
        v42 = v40 == *MEMORY[0x1E695E4D0];
      }

      v43 = v42;
      LODWORD(FigBaseObject) = v43;
      v86 = CMBaseObjectGetDerivedStorage();
      v44 = *(v86 + 892);
      *(v86 + 892) = FPSupport_IncrementSeekID(v44);
      *(DerivedStorage + 888) = v44;
      epoch = v102.epoch;
      *(DerivedStorage + 572) = v102.epoch;
      v46 = *&v102.value;
      *(DerivedStorage + 556) = *&v102.value;
      *(DerivedStorage + 596) = epoch;
      *(DerivedStorage + 580) = v46;
      fpic_passImageQueueGaugeBetweenPlayers();
      if (dword_1EAF178D0)
      {
        LODWORD(time2.value) = 0;
        HIBYTE(v98) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_28();
        if (v44)
        {
          v116 = *&v104.value;
          *&v117 = v104.epoch;
          v54.n128_f64[0] = CMTimeGetSeconds(&v116);
          v55 = v54.n128_u64[0];
          v56 = *(DerivedStorage + 160);
          LODWORD(v86) = *(DerivedStorage + 888);
          OUTLINED_FUNCTION_191_2(v57, v58, v59, v60, v61, v62, v63, v64, p_rhs, v83, v86, FigBaseObject, v92, v95, v98, v99, time2.value, *&time2.timescale, time2.epoch, v101, v54, v102.value);
          Seconds = CMTimeGetSeconds(&v116);
          LODWORD(rhs.value) = 136316674;
          *(&rhs.value + 4) = "fpic_ApplyResumptionOffset";
          LOWORD(rhs.flags) = 2048;
          *(&rhs.flags + 2) = v9;
          HIWORD(rhs.epoch) = 2048;
          v107 = v55;
          v108 = 2048;
          v109 = v56;
          v110 = 1024;
          v111 = v86;
          v112 = 1024;
          v113 = v5;
          v114 = 2048;
          v115 = Seconds;
          LODWORD(v83) = 64;
          p_rhs = &rhs;
          OUTLINED_FUNCTION_23();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_417();
      }

      if (FigBaseObject)
      {
        v66 = 502;
      }

      else
      {
        v66 = 501;
      }

      OUTLINED_FUNCTION_191_2(*(DerivedStorage + 160), v47, v66, v48, v49, *(DerivedStorage + 888), v50, v51, p_rhs, v83, v86, FigBaseObject, v92, v95, v98, v99, time2.value, *&time2.timescale, time2.epoch, v101, v52, v102.value);
      *&rhs.value = v93;
      rhs.epoch = v11;
      *&time2.value = v93;
      time2.epoch = v11;
      if (FPSupport_SetCurrentTimeWithRangeIDAndReason(v67, &v116, v68, &rhs.value, &time2.value))
      {
        goto LABEL_48;
      }

      v13 = 1;
    }
  }

LABEL_29:
  if (v1)
  {
    *v1 = v13;
  }

  OUTLINED_FUNCTION_191();
}

void fpic_passImageQueueGaugeBetweenPlayers()
{
  OUTLINED_FUNCTION_187();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v36 = 0;
  v35 = 0uLL;
  v2 = *(DerivedStorage + 160);
  if (!v2)
  {
    goto LABEL_20;
  }

  if (v2 == v0)
  {
    LastCurrentItem = fpic_GetLastCurrentItem();
    if (!v0)
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v4 = DerivedStorage;
  v5 = OUTLINED_FUNCTION_36_25();
  fpic_findEventAndItemIndexForItemOnQueue(v5, v6, v7, v8, v9);
  FigCFArrayGetValueAtIndex();
  OUTLINED_FUNCTION_399();
  v10 = fpic_UnwrapEvent();
  if (v35 != 0)
  {
    goto LABEL_20;
  }

  v11 = v10;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  fpic_GetEffectiveCurrentItemMoment(*(v4 + 160), &v32);
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  fpic_EventDateTimeMoment(v11, &v29);
  memset(&v28, 0, sizeof(v28));
  if (v31)
  {
    *&v28.value = v29;
    v20 = v30;
  }

  else
  {
    if (BYTE1(v31))
    {
      *time1 = v32;
      *&time1[16] = v33;
      v38 = v34;
      v12 = FigCreateTimeWithDateAndMoment(time1, &v28, *(&v30 + 1));
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_77_10(MEMORY[0x1E6960C70]);
  }

  v28.epoch = v20;
LABEL_11:
  *time1 = v32;
  *&time1[16] = v33;
  OUTLINED_FUNCTION_123_3(v12, v13, v14, v15, v16, v17, v18, v19, v26.value, *&v26.timescale, v26.epoch, v27, *&v28.value);
  v26.epoch = v21;
  if ((CMTimeCompare(time1, &v26) & 0x80000000) == 0 || FigPlayerInterstitialEventIsPreRoll(v11) || *(CMBaseObjectGetDerivedStorage() + 896))
  {
    LastCurrentItem = 0;
    if (!v0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    LastCurrentItem = *(v4 + 160);
    if (!v0)
    {
      goto LABEL_20;
    }
  }

LABEL_15:
  if (LastCurrentItem)
  {
    FigBaseObject = FigPlaybackItemGetFigBaseObject(LastCurrentItem);
    v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v23)
    {
      if (!v23(FigBaseObject, @"ImageQueueGauge", *MEMORY[0x1E695E480], &v36))
      {
        FigPlaybackItemGetFigBaseObject(v0);
        if (*(*(CMBaseObjectGetVTable() + 8) + 56))
        {
          v24 = OUTLINED_FUNCTION_236();
          v25(v24);
        }
      }
    }
  }

LABEL_20:
  if (v36)
  {
    CFRelease(v36);
  }
}

uint64_t fpic_GetLastCurrentItem()
{
  OUTLINED_FUNCTION_187();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Count = CFArrayGetCount(*(DerivedStorage + 656));
  if (Count < 1)
  {
    return 0;
  }

  v3 = fpic_CopyPerAssetPerEventTrackedObjects(DerivedStorage, Count - 1, @"PlaybackItem");
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (CFArrayGetCount(v3) < 1)
  {
    v8 = 0;
  }

  else
  {
    v5 = CFArrayGetCount(v4);
    CFArrayGetValueAtIndex(v4, v5 - 1);
    v6 = OUTLINED_FUNCTION_399();
    v8 = fpic_UnwrapPlaybackItem(v6, v7, v0);
  }

  CFRelease(v4);
  return v8;
}

uint64_t fpic_copyInterstitialPlayer(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_180_1();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    if (*(DerivedStorage + 48))
    {
      v5 = OUTLINED_FUNCTION_171();
      v7 = v6(v5);
      if (v7)
      {
        v7 = CFRetain(v7);
      }

      *a3 = v7;
    }

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_243();

    return FigSignalErrorAtGM();
  }
}

void fpic_FinishInitiatedSeek()
{
  OUTLINED_FUNCTION_172_2();
  v46 = v0;
  v47 = v1;
  v3 = v2;
  v5 = v4;
  v45 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v3)
  {
    v7 = @"fpiInitiatedSeekWasCanceled";
  }

  else
  {
    v7 = @"fpiInitiatedSeekDidComplete";
  }

  if (*(CMBaseObjectGetDerivedStorage() + 896))
  {
    v8 = FPSupport_SeekIDGetSource(*(DerivedStorage + 896));
    CMBaseObjectGetDerivedStorage();
    v9 = FigCFWeakReferenceHolderCopyReferencedObject();
    cf = 0;
    v10 = MEMORY[0x1E695E480];
    if (v9)
    {
      v11 = v9;
      v12 = OUTLINED_FUNCTION_193_0();
      v14 = v13(v12);
      if (v14)
      {
        FigBaseObject = FigPlayerGetFigBaseObject(v14);
        v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v16)
        {
          if (!v16(FigBaseObject, @"ActionAtEnd", *v10, &cf) && FigCFEqual())
          {
            if (dword_1EAF178D0)
            {
              v37 = OS_LOG_TYPE_DEFAULT;
              v36 = OUTLINED_FUNCTION_42_2();
              os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
              OUTLINED_FUNCTION_202();
              if (v18)
              {
                v19 = v17;
              }

              else
              {
                v19 = 0;
              }

              if (v19)
              {
                v39 = 136315394;
                OUTLINED_FUNCTION_28_29();
                v42 = v5;
                OUTLINED_FUNCTION_32();
                OUTLINED_FUNCTION_108();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_7();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v20 = OUTLINED_FUNCTION_193_0();
            fpic_SetInterstitialActionAtEnd(v20, v21, v22);
          }
        }
      }

      CFRelease(v11);
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      OUTLINED_FUNCTION_111();
      FigSignalErrorAtGM();
    }

    v23 = fpic_UnwrapEvent();
    v24 = FigPlayerInterstitialEventIsPostRoll(v23);
    if (!v3 && v24)
    {
      *(DerivedStorage + 1145) = 1;
    }

    if ((v8 & 0xFFFFFFFE) == 4)
    {
      CMBaseObjectGetDerivedStorage();
      Mutable = CFDictionaryCreateMutable(*v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        if (FigCFDictionarySetInt32())
        {
LABEL_42:
          CFRelease(Mutable);
          goto LABEL_45;
        }
      }

      else
      {
        OUTLINED_FUNCTION_111();
        if (FigSignalErrorAtGM())
        {
          goto LABEL_45;
        }
      }

      if (dword_1EAF178D0)
      {
        v26 = OUTLINED_FUNCTION_134_2();
        v27 = cf;
        os_log_type_enabled(v26, v37);
        OUTLINED_FUNCTION_125();
        if (v18)
        {
          v29 = v28;
        }

        else
        {
          v29 = v27;
        }

        if (v29)
        {
          v30 = "was canceled";
          v31 = *(DerivedStorage + 896);
          v40 = "fpic_FinishInitiatedSeek";
          v39 = 136315906;
          v41 = 2048;
          if (!v3)
          {
            v30 = "did complete";
          }

          v42 = v5;
          v43 = 2080;
          *v44 = v30;
          *&v44[8] = 1024;
          *&v44[10] = v31;
          OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_23();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_417();
      }

      fpic_PostNotification(v5, v7, Mutable);
      fpic_clearIntentionToSeekIntoEventState();
      if (Mutable)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (v8 == 3 && dword_1EAF178D0)
      {
        v32 = OUTLINED_FUNCTION_134_2();
        v33 = os_log_type_enabled(v32, v37);
        if (OUTLINED_FUNCTION_115_1(v33))
        {
          v34 = *(DerivedStorage + 896);
          v35 = "was canceled";
          v40 = "fpic_FinishInitiatedSeek";
          v39 = 136315906;
          v41 = 2048;
          if (!v3)
          {
            v35 = "completed";
          }

          v42 = v5;
          v43 = 1024;
          *v44 = v34;
          *&v44[4] = 2080;
          *&v44[6] = v35;
          OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_65();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_414();
      }

      fpic_clearIntentionToSeekIntoEventState();
    }
  }

LABEL_45:
  OUTLINED_FUNCTION_171_2();
}

void fpic_removeAllCurrentEventsAfterEvent(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  OUTLINED_FUNCTION_433();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = *(DerivedStorage + 656);
  if (v10)
  {
    Count = CFArrayGetCount(v10);
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    if (v5)
    {
      v12 = Count - 1;
      if (Count >= 1)
      {
        CMBaseObjectGetDerivedStorage();
        FirstIndexOfValue = FigCFArrayGetFirstIndexOfValue();
        v14 = FirstIndexOfValue;
        if (!a3 || FirstIndexOfValue != -1)
        {
          if (!a3)
          {
            FigCFArrayGetFirstValue();
          }

          OUTLINED_FUNCTION_16_13();
          v15 = fpic_UnwrapEvent();
          fpic_GetEventStartMoment(v15, &v22);
          for (; v12 > v14; --v12)
          {
            CFArrayGetValueAtIndex(*(DerivedStorage + 656), v12);
            OUTLINED_FUNCTION_313_1();
            v16 = fpic_UnwrapEvent();
            v21 = 0;
            v19 = 0u;
            v20 = 0u;
            fpic_GetEventStartMoment(v16, &v19);
            if (!a5)
            {
              v27[0] = v19;
              v27[1] = v20;
              v28 = v21;
              v25[0] = v22;
              v25[1] = v23;
              v26 = v24;
              if (!fpic_MomentsAreCloseWithTolerance(v27, v25, &kMomentsAreCloseThreshold))
              {
                continue;
              }
            }

            v17 = OUTLINED_FUNCTION_313_1();
            fpic_RemoveEvent(v17, v18, v5, 0, a4, 0);
          }
        }
      }

      return;
    }
  }

  else if (v5)
  {
    return;
  }

  OUTLINED_FUNCTION_429();

  FigSignalErrorAtGM();
}

void fpic_setLocalizedStringsBundle()
{
  OUTLINED_FUNCTION_108_3();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!FigCFEqual())
  {
    if (dword_1EAF178D0)
    {
      v2 = OUTLINED_FUNCTION_18_43();
      v10 = OUTLINED_FUNCTION_19_4(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13, v14, v15, SBYTE2(v15), BYTE3(v15), SHIDWORD(v15));
      if (OUTLINED_FUNCTION_115_1(v10))
      {
        OUTLINED_FUNCTION_240_1();
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_108();
        OUTLINED_FUNCTION_448();
        OUTLINED_FUNCTION_612();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414();
    }

    v11 = *(DerivedStorage + 1264);
    *(DerivedStorage + 1264) = v0;
    if (v0)
    {
      CFRetain(v0);
    }

    if (v11)
    {
      CFRelease(v11);
    }
  }
}

void fpic_setLocalizedStringsTableName()
{
  OUTLINED_FUNCTION_108_3();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!FigCFEqual())
  {
    if (dword_1EAF178D0)
    {
      v2 = OUTLINED_FUNCTION_18_43();
      v10 = OUTLINED_FUNCTION_19_4(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13, v14, v15, SBYTE2(v15), BYTE3(v15), SHIDWORD(v15));
      if (OUTLINED_FUNCTION_115_1(v10))
      {
        OUTLINED_FUNCTION_240_1();
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_108();
        OUTLINED_FUNCTION_448();
        OUTLINED_FUNCTION_612();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414();
    }

    v11 = *(DerivedStorage + 1272);
    *(DerivedStorage + 1272) = v0;
    if (v0)
    {
      CFRetain(v0);
    }

    if (v11)
    {
      CFRelease(v11);
    }
  }
}

void fpic_updateIntegratedTimelineOffsetTimesOnItemForEvent()
{
  OUTLINED_FUNCTION_649();
  v1 = v0;
  v3 = v2;
  v81 = v4;
  v6 = v5;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_184();
  fpic_UnwrapEvent();
  OUTLINED_FUNCTION_392(MEMORY[0x1E6960C70]);
  v68 = v7;
  v8 = FigPlayerInterstitialEventCopyIdentifier(v7);
  CMBaseObjectGetDerivedStorage();
  FirstIndexOfValue = FigCFArrayGetFirstIndexOfValue();
  v10 = OUTLINED_FUNCTION_204_0();
  PerEventTrackingCount = fpic_GetPerEventTrackingCount(v10, v11);
  OUTLINED_FUNCTION_624();
  FigCFDictionaryGetCMTimeIfPresent();
  cf = v8;
  if (v93.flags)
  {
    if (!FirstIndexOfValue)
    {
      memset(v91, 0, 24);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v96[0] = *(DerivedStorage + 432);
      *&rhs.source.start.value = *(DerivedStorage + 480);
      rhs.source.start.epoch = *(DerivedStorage + 496);
      CMTimeAdd(v91, v96, &rhs.source.start);
      rhs.source.start = v93;
      v95 = *v91;
      OUTLINED_FUNCTION_216_2(*&v91[16]);
      CMTimeAdd(v16, v14, v15);
      OUTLINED_FUNCTION_230_2();
    }

    if (PerEventTrackingCount >= 1)
    {
      v60 = v1;
      v62 = v3;
      v17 = 0;
      v18 = *MEMORY[0x1E695E480];
      v64 = @"IntegratedTimelineTimeOffsets";
      do
      {
        v19 = OUTLINED_FUNCTION_204_0();
        fpic_GetPerAssetPerEventTrackedObject(v19, v20, v17, @"PlaybackItem");
        v21 = OUTLINED_FUNCTION_577();
        v23 = fpic_UnwrapPlaybackItem(v21, v22, v81);
        if (!v23)
        {
          goto LABEL_20;
        }

        v24 = v23;
        v73 = *(MEMORY[0x1E6960C98] + 16);
        v76 = *MEMORY[0x1E6960C98];
        *v91 = *MEMORY[0x1E6960C98];
        *&v91[16] = v73;
        v70 = *(MEMORY[0x1E6960C98] + 32);
        v92 = v70;
        if (FigPlayerInterstitialEventGetTimelineOccupancy(v68))
        {
          memset(&rhs, 0, 24);
          fpic_GetEventItemDurationOnEventTimeline(v6, v81, v62, v17, &rhs);
          OUTLINED_FUNCTION_29();
          if (v43)
          {
            v44 = OUTLINED_FUNCTION_58_10(v35, v36, v37, v38, v39, v40, v41, v42, v58, v60, v62, v64, cf, v68, v70, *(&v70 + 1), v73, *(&v73 + 1), v76, *(&v76 + 1), v79, v81, v83, v85, v87, v89, *v91, *&v91[8], *&v91[16], *&v91[24], v92, *(&v92 + 1), *&v93.value, v93.epoch);
            v47 = CMTimeRangeMake(v46, v44, v45);
            v55 = OUTLINED_FUNCTION_58_10(v47, v48, v49, v50, v51, v52, v53, v54, v59, v61, v63, v65, cfa, v69, v71, v72, v74, v75, v77, v78, v80, v82, v84, v86, v88, v90, v96[0].value, *&v96[0].timescale, v96[0].epoch, v96[1].value, *&v96[1].timescale, v96[1].epoch, *&v93.value, v93.epoch);
            CMTimeAdd(v57, v55, v56);
            OUTLINED_FUNCTION_230_2();
          }
        }

        else
        {
          v96[0] = v93;
          OUTLINED_FUNCTION_146_3();
          CMTimeRangeMake(v25, v96, &rhs.source.start);
        }

        *&v96[0].value = v76;
        *&v96[0].epoch = v73;
        *&v96[1].timescale = v70;
        *&v96[2].value = *v91;
        *&v96[2].epoch = *&v91[16];
        *&v96[3].timescale = v92;
        OUTLINED_FUNCTION_146_3();
        v95 = *(v26 + 24);
        OUTLINED_FUNCTION_216_2(*(v26 + 40));
        CMTimeRangeMake(v29, v27, v28);
        memcpy(&rhs, v96, sizeof(rhs));
        rhs.source.start.value = CMTimeMappingCopyAsDictionary(&rhs, v18);
        if (rhs.source.start.value)
        {
          v30 = CFArrayCreate(v18, &rhs, 1, MEMORY[0x1E695E9C0]);
          if (!v30)
          {
            OUTLINED_FUNCTION_120();
            v33 = FigSignalErrorAtGM();
            goto LABEL_13;
          }

          FigBaseObject = FigPlaybackItemGetFigBaseObject(v24);
          v32 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v32)
          {
            v33 = v32(FigBaseObject, v64, v30);
LABEL_13:
            v34 = v33;
            goto LABEL_15;
          }

          v34 = -12782;
        }

        else
        {
          OUTLINED_FUNCTION_120();
          v34 = FigSignalErrorAtGM();
          v30 = 0;
        }

LABEL_15:
        if (rhs.source.start.value)
        {
          CFRelease(rhs.source.start.value);
        }

        if (v30)
        {
          CFRelease(v30);
        }

        if (v34)
        {
          break;
        }

LABEL_20:
        ++v17;
      }

      while (PerEventTrackingCount != v17);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_651();
}

void __fpic_cancelCurrentEventPlaybackWithReason_block_invoke()
{
  OUTLINED_FUNCTION_193();
  v1 = v0;
  v151 = *MEMORY[0x1E69E9840];
  CurrentlyPlayingEvent = fpic_GetCurrentlyPlayingEvent();
  v3 = fpic_UnwrapEvent();
  v4 = FigCFEqual();
  if (!CurrentlyPlayingEvent)
  {
    goto LABEL_2;
  }

  v5 = v4;
  v6 = *(v1 + 124);
  v131 = 0;
  v129 = 0u;
  v130 = 0u;
  fpic_GetEventStartMoment(v3, &v129);
  v127 = 0;
  v125 = 0u;
  v126 = 0u;
  v123 = 0;
  v121 = 0u;
  v122 = 0u;
  v7 = OUTLINED_FUNCTION_150_3(MEMORY[0x1E6960C70]);
  v9 = *(v8 + 16);
  v119.epoch = v9;
  v108 = v7;
  v116 = v7;
  v117 = v9;
  if (dword_1EAF178D0)
  {
    LODWORD(v143) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]);
    OUTLINED_FUNCTION_28();
    if (&dword_1EAF17000)
    {
      if (*(v1 + 136))
      {
        v11 = "and remove ";
      }

      else
      {
        v11 = "";
      }

      v148 = *(v1 + 112);
      v12 = OUTLINED_FUNCTION_137_2(*(v1 + 128));
      *v146 = 136315906;
      *&v146[4] = "fpic_cancelCurrentEventPlaybackWithReason_block_invoke";
      *&v146[12] = 2080;
      *&v146[14] = v11;
      *&v146[22] = 2048;
      *&v146[24] = v12;
      LOWORD(v147[0]) = 2112;
      *(v147 + 2) = CurrentlyPlayingEvent;
      OUTLINED_FUNCTION_95_1();
      v104 = v146;
      OUTLINED_FUNCTION_38();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_417();
  }

  fpic_GetCurrentlyPlayingEventPlayoutDuration();
  v13 = *(v1 + 80);
  v148 = v116;
  *&v149 = v117;
  fpic_PostInterstitialDidFinishNotification(v13, CurrentlyPlayingEvent, &v148, 0, v14, v15, v16, v17, v104, SHIDWORD(v104), v106, v108.n128_i64[0], v108.n128_i64[1], v110, v111, v112, SHIDWORD(v112), v113, v114, v115, v116, *(&v116 + 1), v117, v118, v119.value, *&v119.timescale, v119.epoch, v120, v121, *(&v121 + 1), v122, *(&v122 + 1), v123, v124, v125, *(&v125 + 1), v126, *(&v126 + 1), v127, v128, v129, *(&v129 + 1), v130, *(&v130 + 1), v131, v132, *type, *&type[8], v134, *(&v134 + 1));
  v18 = *(v1 + 80);
  if (v5)
  {
    v19 = *(v1 + 96);
    OUTLINED_FUNCTION_81_5();
    v21 = *(v20 + 24);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v140 = v109;
    v141 = v9;
    v137 = v109;
    v138 = v9;
    v145 = 0;
    v143 = 0u;
    v144 = 0u;
    v135 = 0;
    *type = 0u;
    v134 = 0u;
    if (v21)
    {
      v23 = DerivedStorage;
      fpic_UngatePrimaryBuffering();
      OUTLINED_FUNCTION_245_2();
      fpic_ApplyResumptionOffset();
      if (!v24)
      {
        v25 = OUTLINED_FUNCTION_235();
        fpic_PredictEventDurationOnPrimary(v25, v26, v19, v27);
        v28 = *(v23 + 656);
        if (v28)
        {
          if (CFArrayGetCount(v28) >= 2)
          {
            FigCFArrayGetValueAtIndex();
            v54 = fpic_UnwrapEvent();
            fpic_GetEventStartMoment(v54, type);
            OUTLINED_FUNCTION_235();
            v55 = fpic_UnwrapEvent();
            fpic_GetEventStartMoment(v55, &v143);
            v148 = *type;
            v149 = v134;
            v150 = v135;
            OUTLINED_FUNCTION_198_2(v56, v57, v58, v59, v60, v61, v62, v63, v105, v107, v109, *(&v109 + 1), v110, v111, v112, v113, v114, v115, v116, *(&v116 + 1), v117, v118, v119.value, *&v119.timescale, v119.epoch, v120, v121, *(&v121 + 1), v122, *(&v122 + 1), v123, v124, v125, *(&v125 + 1), v126, *(&v126 + 1), v127, v128, v129, *(&v129 + 1), v130, *(&v130 + 1), v131, v132, *type, *&type[8], v134, *(&v134 + 1), v135, v136, v137, *(&v137 + 1), v138, v139, v140, *(&v140 + 1), v141, v142, v143);
            v64 = OUTLINED_FUNCTION_250_1();
            if (fpic_MomentsAreCloseWithTolerance(v64, v65, v66))
            {
              CMBaseObjectGetDerivedStorage();
              FigCFArrayGetFirstIndexOfValue();
              v67 = OUTLINED_FUNCTION_235();
              fpic_GetProjectedDuration(v67, v68, v69, v19);
              v70 = v23 + 408;
              v148 = v140;
              *&v149 = v141;
              fpic_AccumulateDuration((v23 + 408), &v148);
              v71 = v23 + 456;
              v148 = v137;
              *&v149 = v138;
              fpic_AccumulateDuration((v23 + 456), &v148);
              if (dword_1EAF178D0)
              {
                HIDWORD(v132) = 0;
                BYTE3(v132) = 0;
                v72 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v73 = HIDWORD(v132);
                if (os_log_type_enabled(v72, BYTE3(v132)))
                {
                  v74 = v73;
                }

                else
                {
                  v74 = v73 & 0xFFFFFFFE;
                }

                if (v74)
                {
                  v148 = *v70;
                  v75 = OUTLINED_FUNCTION_137_2(*(v70 + 16));
                  v148 = *v71;
                  OUTLINED_FUNCTION_137_2(*(v71 + 16));
                  *v146 = 136315906;
                  OUTLINED_FUNCTION_211_0("fpic_cancelCurrentEventPlaybackForSkipControlReason");
                  *&v146[12] = v76;
                  *(v77 + 14) = v18;
                  *&v146[22] = v76;
                  *&v146[24] = v75;
                  LOWORD(v147[0]) = v76;
                  *(v77 + 34) = v78;
                  OUTLINED_FUNCTION_95_1();
                  OUTLINED_FUNCTION_108();
                  _os_log_send_and_compose_impl();
                }

                OUTLINED_FUNCTION_7();
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }
            }
          }
        }

        OUTLINED_FUNCTION_235();
        OUTLINED_FUNCTION_126_3();
        fpic_RemoveEvent(v29, v30, v31, v32, v33, v34);
      }
    }

    else
    {
      OUTLINED_FUNCTION_111();
      FigSignalErrorAtGM();
    }

    goto LABEL_2;
  }

  v35 = CMBaseObjectGetDerivedStorage();
  v145 = 0;
  v143 = 0u;
  v144 = 0u;
  if (*(v35 + 656))
  {
    v36 = v35;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      FigCFArrayGetFirstValue();
      v38 = fpic_UnwrapEvent();
      fpic_GetEventStartMoment(v38, &v143);
      for (i = 1; ; ++i)
      {
        Count = *(v36 + 656);
        if (Count)
        {
          Count = CFArrayGetCount(Count);
        }

        if (i >= Count)
        {
          break;
        }

        FigCFArrayGetValueAtIndex();
        v41 = fpic_UnwrapEvent();
        fpic_GetEventStartMoment(v41, &v148);
        OUTLINED_FUNCTION_198_2(v42, v43, v44, v45, v46, v47, v48, v49, v105, v107, v109, *(&v109 + 1), v110, v111, v112, v113, v114, v115, v116, *(&v116 + 1), v117, v118, v119.value, *&v119.timescale, v119.epoch, v120, v121, *(&v121 + 1), v122, *(&v122 + 1), v123, v124, v125, *(&v125 + 1), v126, *(&v126 + 1), v127, v128, v129, *(&v129 + 1), v130, *(&v130 + 1), v131, v132, *type, *&type[8], v134, *(&v134 + 1), v135, v136, v137, *(&v137 + 1), v138, v139, v140, *(&v140 + 1), v141, v142, v143);
        v50 = OUTLINED_FUNCTION_250_1();
        if (!fpic_MomentsAreCloseWithTolerance(v50, v51, &kMomentsAreCloseThreshold))
        {
          v52 = OUTLINED_FUNCTION_16_13();
          CFArrayAppendValue(v52, v53);
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_111();
      FigSignalErrorAtGM();
    }
  }

  else
  {
    Mutable = 0;
  }

  fpic_StopInterstitialPlayerAtCurrentItem();
  OUTLINED_FUNCTION_29();
  if (v79)
  {
    v119 = *(v1 + 112);
  }

  else
  {
    fpic_CurrentResumptionOffset(*(v1 + 80), (v6 & 1) == 0, *(v1 + 96), (v6 & 1) == 0, 0, 0, &v119);
  }

  OUTLINED_FUNCTION_81_5();
  fpic_removeAllCurrentEventsAfterEvent(v81, *(v80 + 24), CurrentlyPlayingEvent, 1, 0);
  v82 = *(v1 + 104);
  v83 = *(v82 + 360);
  v148 = *(v82 + 344);
  v149 = v83;
  v150 = *(v82 + 376);
  *v146 = v119;
  v84 = OUTLINED_FUNCTION_250_1();
  fpic_AddTimeToMoment(v84, v85, v86);
  OUTLINED_FUNCTION_81_5();
  fpic_RemoveEvent(v88, CurrentlyPlayingEvent, *(v87 + 24), *(v1 + 136), 1, 0);
  v89 = *(v1 + 80);
  v90 = *(*(v1 + 40) + 8);
  v91 = *(*(v1 + 48) + 8);
  v148 = v125;
  v149 = v126;
  v150 = v127;
  if (!fpic_FindEventStraddlingPrimaryMoment(v89, &v148, (v90 + 24), (v91 + 32)) || (OUTLINED_FUNCTION_62_14(), v98 = fpic_UnwrapEvent(), fpic_GetEventStartMoment(v98, &v121), v148 = v121, v149 = v122, v150 = v123, *v146 = v129, *&v146[16] = v130, v147[0] = v131, v99 = OUTLINED_FUNCTION_250_1(), fpic_MomentsAreCloseWithTolerance(v99, v100, v101)))
  {
    FirstValue = FigCFArrayGetFirstValue();
    OUTLINED_FUNCTION_81_5();
    fpic_removeAllCurrentEventsAfterEvent(v94, *(v93 + 24), 0, 1, 1);
    if (FirstValue)
    {
      OUTLINED_FUNCTION_124_4();
      OUTLINED_FUNCTION_235();
      v95 = fpic_UnwrapEvent();
      fpic_GetEventStartMoment(v95, &v110);
      v148 = v125;
      v149 = v126;
      v150 = v127;
      if (fpic_MomentGreaterThan(&v110, &v148))
      {
        fpic_RescheduleEvents(*(v1 + 80), Mutable);
      }
    }

    *(*(v1 + 104) + 408) = v119;
    fpic_UngatePrimaryBuffering();
    fpic_ApplyResumptionOffset();
    OUTLINED_FUNCTION_30_8(v96, *(v1 + 72));
    if (Mutable)
    {
      OUTLINED_FUNCTION_50_14();
      if (!v97)
      {
        goto LABEL_50;
      }
    }
  }

  else
  {
    *(*(*(v1 + 56) + 8) + 24) = 1;
    v102 = CMBaseObjectGetDerivedStorage();
    v103 = *(v102 + 892);
    *(v102 + 892) = FPSupport_IncrementSeekID(v103);
    *(*(*(v1 + 64) + 8) + 24) = v103;
    OUTLINED_FUNCTION_62_14();
    if (FigCFArrayGetFirstIndexOfValue() != -1)
    {
      fpic_HopNextMomentIfNecessary();
    }

    if (Mutable)
    {
LABEL_50:
      CFRelease(Mutable);
    }
  }

LABEL_2:
  OUTLINED_FUNCTION_191();
}