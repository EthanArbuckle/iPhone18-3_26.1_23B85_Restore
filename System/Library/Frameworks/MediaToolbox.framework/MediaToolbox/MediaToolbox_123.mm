uint64_t PKDKeyManagerCreateForPastis(uint64_t a1, const __CFDictionary *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v16 = 0;
  if (!keyManager_createInternal(a1, a2, &v16))
  {
    if (_MergedGlobals_77 != -1)
    {
      dispatch_once_f(&_MergedGlobals_77, &unk_1ED4CAE90, InitPKDAPIProviderForPastis);
    }

    *(v16 + 32) = &unk_1ED4CAE90;
  }

  if (dword_1EAF17448)
  {
    v3 = OUTLINED_FUNCTION_6_71();
    if (OUTLINED_FUNCTION_437_1(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14, v15, SBYTE2(v15), BYTE3(v15), SHIDWORD(v15)))
    {
      v11 = v2;
    }

    else
    {
      v11 = v2 & 0xFFFFFFFE;
    }

    if (v11)
    {
      v17 = 136315906;
      OUTLINED_FUNCTION_2_108();
      OUTLINED_FUNCTION_9_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v16;
}

uint64_t PKDKeyManagerCreateForMSE(uint64_t a1, const __CFDictionary *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v16 = 0;
  if (!keyManager_createInternal(a1, a2, &v16))
  {
    if (qword_1ED4CAE88 != -1)
    {
      dispatch_once_f(&qword_1ED4CAE88, &unk_1ED4CAEA0, InitPKDAPIProviderForMSECTR);
    }

    *(v16 + 32) = &unk_1ED4CAEA0;
  }

  if (dword_1EAF17448)
  {
    v3 = OUTLINED_FUNCTION_6_71();
    if (OUTLINED_FUNCTION_437_1(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14, v15, SBYTE2(v15), BYTE3(v15), SHIDWORD(v15)))
    {
      v11 = v2;
    }

    else
    {
      v11 = v2 & 0xFFFFFFFE;
    }

    if (v11)
    {
      v17 = 136315906;
      OUTLINED_FUNCTION_2_108();
      OUTLINED_FUNCTION_9_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v16;
}

uint64_t keyManager_processOfflineKeyInternal(uint64_t a1, uint64_t a2, int a3)
{
  v28 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!*(a1 + 40) || (a3 & 0xFFFFFFFD) != 4)
  {
    OUTLINED_FUNCTION_1_111();
    v23 = FigSignalErrorAtGM();
    v8 = 0;
    Mutable = 0;
    goto LABEL_45;
  }

  v6 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_1_111();
    v23 = FigSignalErrorAtGM();
    v8 = 0;
    goto LABEL_45;
  }

  v8 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v8)
  {
    goto LABEL_60;
  }

  CFDictionarySetValue(Mutable, @"igoeg", *(a2 + 88));
  v9 = *(a1 + 104);
  if (v9)
  {
    CFDictionarySetValue(Mutable, @"lGxB4ky", v9);
  }

  FigCFDictionarySetInt32();
  FigCFDictionarySetInt64();
  v10 = PKDAPIProviderProcessCKC(*(a1 + 32), Mutable, v8);
  if (v10)
  {
    PackagedPersistentKeyFromEntryInternal = keyManager_cleanFairPlayStateIfNecessary(a1, v10);
    if (PackagedPersistentKeyFromEntryInternal)
    {
      goto LABEL_61;
    }

    PackagedPersistentKeyFromEntryInternal = PKDAPIProviderProcessCKC(*(a1 + 32), Mutable, v8);
    if (PackagedPersistentKeyFromEntryInternal)
    {
      goto LABEL_61;
    }
  }

  if (a3 == 4)
  {
    v27 = 0;
    if (FigCFDictionaryGetInt64IfPresent())
    {
      *(a2 + 72) = v27;
    }

    else if (*(a2 + 72))
    {
      goto LABEL_25;
    }

LABEL_60:
    OUTLINED_FUNCTION_1_111();
    PackagedPersistentKeyFromEntryInternal = FigSignalErrorAtGM();
LABEL_61:
    v23 = PackagedPersistentKeyFromEntryInternal;
    goto LABEL_45;
  }

  if (a3 == 6)
  {
    v12 = *(a2 + 104);
    Value = CFDictionaryGetValue(v8, @"sPJ8AGu5PT");
    *(a2 + 104) = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    if (!*(a2 + 104))
    {
      goto LABEL_60;
    }

    v14 = *(a2 + 112);
    v15 = CFDictionaryGetValue(v8, @"o9YYYJ64ntzC");
    *(a2 + 112) = v15;
    if (v15)
    {
      CFRetain(v15);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    if (!*(a2 + 112))
    {
      goto LABEL_60;
    }
  }

LABEL_25:
  v16 = CFDictionaryGetValue(v8, @"igoeg");
  if (!v16)
  {
    v23 = 0;
    goto LABEL_45;
  }

  v17 = *(a2 + 88);
  *(a2 + 88) = v16;
  CFRetain(v16);
  if (v17)
  {
    CFRelease(v17);
  }

  PackagedPersistentKeyFromEntryInternal = keyManager_createPackagedPersistentKeyFromEntryInternal(a1, a2, &cf);
  if (PackagedPersistentKeyFromEntryInternal)
  {
    goto LABEL_61;
  }

  v18 = *(a2 + 128);
  if (v18)
  {
    v19 = cf;
    while (1)
    {
      v20 = *(v18 + 40);
      if (!*v18 || !*(v18 + 32) || !*(v18 + 16))
      {
        break;
      }

      v21 = 0;
      if (!v19)
      {
        goto LABEL_39;
      }

      v21 = malloc_type_calloc(1uLL, 0x30uLL, 0x10E0040DE8CDC7DuLL);
      if (!v21)
      {
        FigSignalErrorAtGM();
        goto LABEL_39;
      }

      v22 = FigCFWeakReferenceHolderCopyReferencedObject();
      *v21 = v22;
      if (!v22)
      {
        goto LABEL_39;
      }

      v21[6] = *(v18 + 8);
      *(v21 + 4) = *(v18 + 16);
      *(v21 + 5) = *(v18 + 24);
      *(v21 + 1) = CFRetain(v19);
      dispatch_async_f(*v18, v21, keyManager_dispatchPersistentKeyUpdatedCallback);
LABEL_40:
      v18 = v20;
      if (!v20)
      {
        goto LABEL_43;
      }
    }

    v21 = 0;
LABEL_39:
    keyManager_releaseCallbackContext(v21);
    goto LABEL_40;
  }

LABEL_43:
  v23 = 0;
  if (FigCFDictionaryGetInt64IfPresent())
  {
    *(a2 + 184) = 1;
  }

LABEL_45:
  if (dword_1EAF17448)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v23;
}

uint64_t keyManager_ensureDecryptContextForEntryInternal(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a2 + 96))
  {
    return 0;
  }

  v7 = *(a2 + 64);
  v6 = *(a2 + 72);
  if (v6)
  {
    if (!v7)
    {
LABEL_11:
      if (*(a2 + 80) && !v6 && *(a2 + 88))
      {
LABEL_14:
        if (*(a2 + 88))
        {
          v8 = keyManager_processOfflineKeyInternal(a1, a2, 4);
          goto LABEL_16;
        }

LABEL_15:
        v8 = keyManager_processOnlineKeyInternal(a1, a2, 1);
LABEL_16:
        v9 = v8;
        v10 = *(a2 + 64);
        if (v10)
        {
          PKDAPIProviderDestroyExchange(*(a1 + 32), v10);
          *(a2 + 64) = 0;
        }

        v11 = *(a2 + 56);
        if (v11)
        {
          CFRelease(v11);
          *(a2 + 56) = 0;
        }

        if (!a3 || v9)
        {
          return v9;
        }

        v6 = *(a2 + 72);
        goto LABEL_24;
      }

      if (a3)
      {
LABEL_24:
        v9 = 0;
        *a3 = v6;
        return v9;
      }

      return 0;
    }

LABEL_7:
    if (*(a2 + 56))
    {
      if (!*(a2 + 80))
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (v7)
  {
    if (*(a2 + 56))
    {
      goto LABEL_7;
    }
  }

  else if (*(a2 + 88))
  {
    goto LABEL_11;
  }

  return FigSignalErrorAtGM();
}

uint64_t keyManager_finalize(void *a1)
{
  FigSimpleMutexLock();
  keyManager_invalidateInternal(a1);
  v2 = a1[6];
  if (v2)
  {
    CFRelease(v2);
    a1[6] = 0;
  }

  v3 = a1[7];
  if (v3)
  {
    CFRelease(v3);
    a1[7] = 0;
  }

  v4 = a1[8];
  if (v4)
  {
    CFRelease(v4);
    a1[8] = 0;
  }

  v5 = a1[9];
  if (v5)
  {
    CFRelease(v5);
    a1[9] = 0;
  }

  v6 = a1[10];
  if (v6)
  {
    CFRelease(v6);
    a1[10] = 0;
  }

  v7 = a1[12];
  if (v7)
  {
    CFRelease(v7);
    a1[12] = 0;
  }

  v8 = a1[15];
  if (v8)
  {
    CFRelease(v8);
    a1[15] = 0;
  }

  v9 = a1[13];
  if (v9)
  {
    CFRelease(v9);
    a1[13] = 0;
  }

  v10 = a1[11];
  if (v10)
  {
    CFRelease(v10);
    a1[11] = 0;
  }

  FigSimpleMutexUnlock();

  return FigSimpleMutexDestroy();
}

uint64_t PKDKeyManagerCreateKeyRequestForKeyID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerCreateKeyRequestForKeyID_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerCreateKeyRequestForKeyID_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerCreateKeyRequestForKeyID_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerCreateKeyRequestForKeyID_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t keyManager_copyEntryForKeyIDInternal_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t keyManager_copyEntryForKeyIDInternal_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t keyManager_copyEntryForKeyIDInternal_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t keyManager_copyEntryForKeyIDInternal_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t keyManager_copyEntryForKeyIDInternal_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t keyManager_createKeyRequestForEntryInternal_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t keyManager_createKeyRequestForEntryInternal_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t keyManager_createKeyRequestForEntryInternal_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t keyManager_createKeyRequestForEntryInternal_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t keyManager_createKeyRequestForEntryInternal_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t keyManager_createKeyRequestForEntryInternal_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t keyManager_createKeyRequestForEntryInternal_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t keyManager_createKeyRequestForEntryInternal_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t keyManager_createKeyRequestForEntryInternal_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t keyManager_createKeyRequestForEntryInternal_cold_10(uint64_t a1, _DWORD *a2)
{
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t keyManager_createKeyRequestForEntryInternal_cold_11(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t keyManager_createKeyRequestForEntryInternal_cold_12(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t keyManager_createKeyRequestForEntryInternal_cold_13(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t keyManager_createKeyRequestForEntryInternal_cold_14(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerSetUsedForLowValueDecryptionForKeyID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerEnsureAndCopyLowValueKeyAndIVForKeyID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerSetKeyRequestResponseForKeyID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerSetKeyRequestResponseForKeyID_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerIsDecryptContextAvailableForKeyID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerIsDecryptContextAvailableForKeyID_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerIsReadyToCreateKeyRequestForKeyID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerIsReadyToCreateKeyRequestForKeyID_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerGetDecryptContextForKeyID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerGetDecryptContextForKeyID_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerGetDecryptContextForKeyID_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t keyManager_ensureDecryptContextForKeyID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t keyManager_ensureDecryptContextForKeyID_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t keyManager_ensureDecryptContextForKeyID_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerRemoveKeyID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerRemoveKeyID_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerCopySessionID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerCopySessionID_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerCopySessionID_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerSetPropertyForKeyID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerSetPropertyForKeyID_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerSetPropertyForKeyID_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerSetPropertyForKeyID_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerSetPropertyForKeyID_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerSetPropertyForKeyID_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerSetPropertyForKeyID_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerSetPropertyForKeyID_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerCopyPropertyForKeyID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerCopyPropertyForKeyID_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerCopyPropertyForKeyID_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerCopyPropertyForKeyID_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerCreatePackagedPersistentKeyForKeyID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerCreatePackagedPersistentKeyForKeyID_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerCreatePackagedPersistentKeyForKeyID_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerCreatePackagedPersistentKeyForKeyID_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t keyManager_createPackagedPersistentKeyFromEntryInternal_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t keyManager_createPackagedPersistentKeyFromEntryInternal_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t keyManager_createPackagedPersistentKeyFromEntryInternal_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t keyManager_createPackagedPersistentKeyFromEntryInternal_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t keyManager_createPackagedPersistentKeyFromEntryInternal_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t keyManager_createPackagedPersistentKeyFromEntryInternal_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerGetMovieID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerGetMovieID_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerGetMovieID_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerGetMovieID_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerGetMovieID_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t keyManager_ensureMovieIDInternal_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t keyManager_ensureMovieIDInternal_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t keyManager_ensureMovieIDInternal_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t keyManager_ensureMovieIDInternal_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t keyManager_ensureMovieIDInternal_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t keyManager_ensureMovieIDInternal_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t KeyManagerSetSecureStopManager_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t KeyManagerSetSecureStopManager_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerGetKeyRequestStateAndID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerGetKeyRequestStateAndID_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerTestAndSetKeyRequestState_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerTestAndSetKeyRequestState_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerSetKeyRequestError_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerSetKeyRequestError_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerSetKeyRequestError_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerAbsorbKeyRequestContext_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerAbsorbKeyRequestContext_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerAbsorbKeyRequestContext_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerAbsorbKeyRequestContext_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerAbsorbKeyRequestContext_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerAbsorbKeyRequestContext_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerAbsorbKeyRequestContext_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerAbsorbKeyRequestContext_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerInstallCallbacksForKeyID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerInstallCallbacksForKeyID_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerInstallCallbacksForKeyID_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PKDKeyManagerInstallCallbacksForKeyID_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t keyManager_createInternal_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t keyManager_createInternal_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t keyManager_processOnlineKeyInternal_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t keyManager_processOnlineKeyInternal_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t keyManager_processOnlineKeyInternal_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void keyManager_processOnlineKeyInternal_cold_4(const void *a1, _DWORD *a2)
{
  *a2 = FigSignalErrorAtGM();

  CFRelease(a1);
}

uint64_t keyManager_processOnlineKeyInternal_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t keyManager_processOnlineKeyInternal_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigXPCImageQueueGaugeServerHandleMessage(const void *a1)
{
  if (FigXPCImageQueueGaugeServerHandlesMessagesForObject(a1))
  {
    result = FigXPCMessageGetOpCode();
    if (!result)
    {
      return 4294951138;
    }
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t FigXPCImageQueueGaugeServerHandleNoReplyMessage(const void *a1)
{
  if (FigXPCImageQueueGaugeServerHandlesMessagesForObject(a1))
  {
    result = FigXPCMessageGetOpCode();
    if (!result)
    {
      return 4294951138;
    }
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t FigXPCImageQueueGaugeServerCopyImageQueueGaugeForID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigXPCImageQueueGaugeServerStartAsSubserver_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigXPCImageQueueGaugeServerStartAsSubserver_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dataChannelConfiguration_copySidebandVideoPropertiesArrayFromFormatDescriptionArray(const __CFAllocator *a1, CFArrayRef theArray, __CFArray **a3)
{
  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  Mutable = CFArrayCreateMutable(a1, Count, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v8 = Mutable;
    if (Count < 1)
    {
LABEL_9:
      v12 = 0;
      *a3 = v8;
    }

    else
    {
      v9 = 0;
      while (1)
      {
        value = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v9);
        v11 = MTSidebandVideoPropertiesCreateFromFormatDescription(a1, ValueAtIndex, &value);
        if (v11)
        {
          break;
        }

        CFArrayAppendValue(v8, value);
        if (value)
        {
          CFRelease(value);
        }

        if (Count == ++v9)
        {
          goto LABEL_9;
        }
      }

      v12 = v11;
      CFRelease(v8);
    }

    return v12;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

const void *FigDataChannelConfigurationGetFigImageQueueAtIndex(uint64_t a1, uint64_t a2)
{
  if (!a1 || a2 < 0)
  {
    return 0;
  }

  Count = OUTLINED_FUNCTION_6_72(a1);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= a2)
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_4_89();
  if (!v4)
  {
    return 0;
  }

  return CFDictionaryGetValue(v4, @"FigImageQueue");
}

const void *FigDataChannelConfigurationGetFigDataQueueAtIndex(uint64_t a1, uint64_t a2)
{
  if (!a1 || a2 < 0)
  {
    return 0;
  }

  Count = OUTLINED_FUNCTION_6_72(a1);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= a2)
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_4_89();
  if (!v4)
  {
    return 0;
  }

  return CFDictionaryGetValue(v4, @"FigDataQueue");
}

const void *FigDataChannelConfigurationGetFigDataChannelResourceAtIndex(uint64_t a1, CFIndex idx)
{
  if (!a1 || idx < 0)
  {
    return 0;
  }

  Count = *(a1 + 24);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= idx)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), idx);

  return CFDictionaryGetValue(ValueAtIndex, @"FigDataChannelResource");
}

uint64_t FigDataChannelConfigurationCopySidebandVideoPropertiesAtIndex(uint64_t a1, int a2, CFIndex idx, void *a4)
{
  if ((idx & 0x8000000000000000) == 0 && a1 && a4)
  {
    Count = *(a1 + 16);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (Count > idx)
    {
      CFArrayGetValueAtIndex(*(a1 + 16), idx);
      Value = FigCFDictionaryGetValue();
      if (Value)
      {
        Value = CFRetain(Value);
      }

      *a4 = Value;
    }
  }

  return 0;
}

const void *FigDataChannelConfigurationGetChannelDescriptionTagsAtIndex(uint64_t a1, uint64_t a2)
{
  if (!a1 || a2 < 0)
  {
    return 0;
  }

  Count = OUTLINED_FUNCTION_6_72(a1);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= a2)
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_4_89();
  if (!v4)
  {
    return 0;
  }

  return CFDictionaryGetValue(v4, @"DescriptionTags");
}

const void *FigDataChannelConfigurationGetChannelSettingsAtIndex(uint64_t a1, uint64_t a2)
{
  if (!a1 || a2 < 0)
  {
    return 0;
  }

  Count = OUTLINED_FUNCTION_6_72(a1);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= a2)
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_4_89();
  if (!v4)
  {
    return 0;
  }

  return CFDictionaryGetValue(v4, @"Settings");
}

uint64_t FigDataChannelConfigurationGetOutputQueueTypeAtIndex(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && (a2 & 0x8000000000000000) == 0)
  {
    Count = *(a1 + 16);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (Count <= a2)
    {
      return 0;
    }

    else
    {
      result = OUTLINED_FUNCTION_4_89();
      if (result)
      {
        v6 = result;
        if (CFDictionaryContainsKey(result, @"FigImageQueue") || CFDictionaryContainsKey(v6, @"CAImageQueueID") || CFDictionaryContainsKey(v6, @"CAImageQueueReceiver"))
        {
          return 1;
        }

        else
        {
          if (CFDictionaryContainsKey(v6, @"FigDataQueue"))
          {
            return 2;
          }

          result = CFDictionaryContainsKey(v6, @"FigDataQueueObjectID");
          if (result)
          {
            return 2;
          }
        }
      }
    }
  }

  return result;
}

uint64_t FigDataChannelConfigurationGetCAImageQueueIDAtIndex()
{
  result = OUTLINED_FUNCTION_3_85();
  if (v0)
  {
    v3 = v2;
    if ((v2 & 0x8000000000000000) == 0)
    {
      Count = *(v0 + 16);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (Count <= v3)
      {
        return 0;
      }

      else
      {
        result = OUTLINED_FUNCTION_4_89();
        if (result)
        {
          FigCFDictionaryGetInt64IfPresent();
          return v5;
        }
      }
    }
  }

  return result;
}

const void *FigDataChannelConfigurationSetFigDataQueueObjectIDAtIndex(uint64_t a1, CFIndex a2)
{
  if (!a1 || a2 < 0)
  {
    goto LABEL_10;
  }

  Count = OUTLINED_FUNCTION_2_109(a1);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= a2)
  {
LABEL_10:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();

    return FigSignalErrorAtGM();
  }

  else
  {
    result = CFArrayGetValueAtIndex(*(v2 + 16), a2);
    if (result)
    {

      return FigCFDictionarySetInt64();
    }
  }

  return result;
}

const void *FigDataChannelConfigurationSetFigDataChannelResourceObjectIDAtIndex(uint64_t a1, CFIndex idx)
{
  if (!a1 || idx < 0)
  {
    goto LABEL_10;
  }

  Count = *(a1 + 24);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= idx)
  {
LABEL_10:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();

    return FigSignalErrorAtGM();
  }

  else
  {
    result = CFArrayGetValueAtIndex(*(a1 + 24), idx);
    if (result)
    {

      return FigCFDictionarySetInt64();
    }
  }

  return result;
}

uint64_t FigDataChannelConfigurationCopyAsDictionaryWithoutOutputQueues(uint64_t a1, CFAllocatorRef allocator, CFMutableDictionaryRef *a3)
{
  v3 = 0;
  if (!a1 || !a3)
  {
    return v3;
  }

  v6 = a1;
  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v8 = Mutable;
    v9 = OUTLINED_FUNCTION_9_2();
    v12 = CFArrayCreateMutable(v9, v10, v11);
    if (v12 && (v13 = OUTLINED_FUNCTION_9_2(), (v16 = CFArrayCreateMutable(v13, v14, v15)) != 0))
    {
      v52 = a3;
      v53 = v16;
      theDict = v8;
      v17 = *(v6 + 16);
      cf = v12;
      if (v17 && (v18 = CFArrayGetCount(v17), v18 >= 1))
      {
        v19 = v18;
        v20 = 0;
        v21 = @"FigDataQueue";
        v55 = v18;
        v56 = v6;
        while (1)
        {
          CFArrayGetValueAtIndex(*(v6 + 16), v20);
          v22 = OUTLINED_FUNCTION_9_2();
          MutableCopy = CFDictionaryCreateMutableCopy(v22, v23, v24);
          if (!MutableCopy)
          {
            break;
          }

          v26 = MutableCopy;
          CFDictionaryRemoveValue(MutableCopy, @"FigImageQueue");
          CFDictionaryRemoveValue(v26, v21);
          if (CFDictionaryContainsKey(v26, @"DescriptionTags"))
          {
            v27 = CFDictionaryGetValue(v26, @"DescriptionTags");
            v28 = MEMORY[0x19A8D3280](v27, allocator);
            if (!v28)
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_6_3();
              v3 = FigSignalErrorAtGM();
LABEL_37:
              CFRelease(theDict);
              CFRelease(v26);
              v42 = v53;
              goto LABEL_31;
            }

            v29 = v28;
            CFDictionarySetValue(v26, @"DescriptionTags_SerializedDictionary", v28);
            CFRelease(v29);
            CFDictionaryRemoveValue(v26, @"DescriptionTags");
          }

          if (CFDictionaryContainsKey(v26, @"SidebandVideoPropertiesArray"))
          {
            v30 = v12;
            v31 = CFDictionaryGetValue(v26, @"SidebandVideoPropertiesArray");
            if (v31)
            {
              v32 = v31;
              v33 = v21;
              Count = CFArrayGetCount(v31);
              v35 = CFArrayCreateMutable(allocator, Count, MEMORY[0x1E695E9C0]);
              if (Count >= 1)
              {
                v36 = 0;
                while (1)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v32, v36);
                  value = 0;
                  v38 = MTSidebandVideoPropertiesCopyAsDictionary(ValueAtIndex, allocator, &value);
                  if (v38)
                  {
                    break;
                  }

                  CFArrayAppendValue(v35, value);
                  CFRelease(value);
                  if (Count == ++v36)
                  {
                    v6 = v56;
                    v12 = cf;
                    v19 = v55;
                    v21 = v33;
                    goto LABEL_22;
                  }
                }

                v3 = v38;
                v12 = cf;
                goto LABEL_37;
              }

              v21 = v33;
              v12 = v30;
            }

            else
            {
              v39 = OUTLINED_FUNCTION_9_2();
              v35 = CFArrayCreateMutable(v39, v40, MEMORY[0x1E695E9C0]);
            }

LABEL_22:
            CFDictionarySetValue(v26, @"SidebandVideoPropertiesArray_SerializedDictionary", v35);
            CFRelease(v35);
            CFDictionaryRemoveValue(v26, @"SidebandVideoPropertiesArray");
          }

          CFArrayAppendValue(v12, v26);
          CFRelease(v26);
          if (++v20 == v19)
          {
            goto LABEL_24;
          }
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_6_3();
        v3 = FigSignalErrorAtGM();
        v42 = v53;
        v8 = theDict;
      }

      else
      {
LABEL_24:
        v8 = theDict;
        CFDictionarySetValue(theDict, @"ChannelArray", v12);
        v41 = *(v6 + 24);
        v42 = v53;
        if (v41 && (v43 = CFArrayGetCount(v41), v43 >= 1))
        {
          v44 = v43;
          v45 = 0;
          while (1)
          {
            CFArrayGetValueAtIndex(*(v6 + 24), v45);
            v46 = OUTLINED_FUNCTION_9_2();
            v49 = CFDictionaryCreateMutableCopy(v46, v47, v48);
            if (!v49)
            {
              break;
            }

            v50 = v49;
            CFDictionaryRemoveValue(v49, @"FigDataChannelResource");
            CFArrayAppendValue(v53, v50);
            CFRelease(v50);
            if (v44 == ++v45)
            {
              goto LABEL_29;
            }
          }

          fig_log_get_emitter();
          OUTLINED_FUNCTION_6_3();
          v3 = FigSignalErrorAtGM();
        }

        else
        {
LABEL_29:
          CFDictionarySetValue(theDict, @"ResourceArray", v53);
          v3 = FigCFDictionarySetInt32();
          if (!v3)
          {
            FigCFDictionarySetInt32();
            FigCFDictionarySetValue();
            FigCFDictionarySetValue();
            FigCFDictionarySetValue();
            FigCFDictionarySetValue();
            *v52 = theDict;
            v12 = cf;
LABEL_31:
            if (v12)
            {
              CFRelease(v12);
            }

            if (v42)
            {
              CFRelease(v42);
            }

            return v3;
          }
        }

        v12 = cf;
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_6_3();
      v3 = FigSignalErrorAtGM();
      v42 = 0;
    }

    CFRelease(v8);
    goto LABEL_31;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t FigDataChannelConfigurationGetFigDataQueueObjectIDAtIndex()
{
  result = OUTLINED_FUNCTION_3_85();
  if (v0)
  {
    v3 = v2;
    if ((v2 & 0x8000000000000000) == 0)
    {
      Count = *(v0 + 16);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (Count <= v3)
      {
        return 0;
      }

      else
      {
        result = OUTLINED_FUNCTION_4_89();
        if (result)
        {
          FigCFDictionaryGetInt64IfPresent();
          return v5;
        }
      }
    }
  }

  return result;
}

uint64_t FigDataChannelConfigurationSetFigDataQueueAtIndex(uint64_t a1, CFIndex a2)
{
  if (!a1 || a2 < 0)
  {
    goto LABEL_10;
  }

  Count = OUTLINED_FUNCTION_2_109(a1);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count > a2 && v2)
  {
    if (CFArrayGetValueAtIndex(*(v3 + 16), a2))
    {
      FigCFDictionarySetValue();
    }

    return 0;
  }

  else
  {
LABEL_10:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();

    return FigSignalErrorAtGM();
  }
}

const void *FigDataChannelConfigurationGetCAImageQueueReceiverAtIndex(uint64_t a1, uint64_t a2)
{
  if (!a1 || a2 < 0)
  {
    return 0;
  }

  Count = OUTLINED_FUNCTION_6_72(a1);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= a2)
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_4_89();
  if (!v4)
  {
    return 0;
  }

  return CFDictionaryGetValue(v4, @"CAImageQueueReceiver");
}

uint64_t FigDataChannelConfigurationSetCAImageQueueReceiverAtIndex(uint64_t a1, CFIndex a2)
{
  if (!a1 || a2 < 0)
  {
    goto LABEL_10;
  }

  Count = OUTLINED_FUNCTION_2_109(a1);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count > a2 && v2)
  {
    if (CFArrayGetValueAtIndex(*(v3 + 16), a2))
    {
      FigCFDictionarySetValue();
    }

    return 0;
  }

  else
  {
LABEL_10:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();

    return FigSignalErrorAtGM();
  }
}

uint64_t FigDataChannelConfigurationGetFigDataChannelResourceObjectIDAtIndex()
{
  result = OUTLINED_FUNCTION_3_85();
  if (v0)
  {
    v3 = v2;
    if ((v2 & 0x8000000000000000) == 0)
    {
      Count = *(v0 + 24);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (Count <= v3)
      {
        return 0;
      }

      else
      {
        result = CFArrayGetValueAtIndex(*(v0 + 24), v3);
        if (result)
        {
          FigCFDictionaryGetInt64IfPresent();
          return v5;
        }
      }
    }
  }

  return result;
}

uint64_t FigDataChannelConfigurationSetFigDataChannelResourceAtIndex(uint64_t a1, CFIndex idx, uint64_t a3)
{
  if (!a1 || idx < 0)
  {
    goto LABEL_10;
  }

  Count = *(a1 + 24);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count > idx && a3)
  {
    if (CFArrayGetValueAtIndex(*(a1 + 24), idx))
    {
      FigCFDictionarySetValue();
    }

    return 0;
  }

  else
  {
LABEL_10:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();

    return FigSignalErrorAtGM();
  }
}

uint64_t FigDataChannelConfigurationCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void dataChannelConfiguration_createDataChannelConfiguration_cold_2(uint64_t a1, const void *a2, _DWORD *a3)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  *a3 = FigSignalErrorAtGM();

  CFRelease(a2);
}

uint64_t dataChannelConfiguration_createDataChannelConfiguration_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationCreateCopy_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationCreateCopy_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationCreateCopy_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationCreateCopy_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationAddFigImageQueue_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationAddFigImageQueue_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationAddFigImageQueue_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dataChannelConfiguration_addOutputQueueCommon_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationAddFigImageQueueWithSidebandVideoProperties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationAddFigImageQueueWithSidebandVideoProperties_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationAddFigImageQueueWithSidebandVideoProperties_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationAddFigDataQueue_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationAddFigDataQueue_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationAddFigDataQueue_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationAddFigDataQueueWithSidebandVideoProperties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationAddFigDataQueueWithSidebandVideoProperties_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationAddFigDataQueueWithSidebandVideoProperties_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationAddDataChannelResource_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationAddDataChannelResource_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationAddDataChannelResource_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationSetModificationID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationSetCAImageQueueSlotIDAtIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationSetCAImageQueueSlotIDAtIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationGetCAImageQueueSlotIDAtIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationGetCAImageQueueSlotIDAtIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationGetCAImageQueueSlotIDAtIndex_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationGetCAImageQueueSlotIDAtIndex_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationSetFirstFrameWasEnqueuedAtIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationSetFirstFrameWasEnqueuedAtIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationGetFirstFrameWasEnqueuedAtIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationGetFirstFrameWasEnqueuedAtIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationGetFirstFrameWasEnqueuedAtIndex_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationCreateFromDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationCreateFromDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationCreateFromDictionary_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationCreateFromDictionary_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationCreateFromDictionary_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationCreateFromDictionary_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationCreateFromDictionary_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationCopyLoggingIdentifier_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigDataChannelConfigurationCopyLoggingIdentifier_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationCopyLoggingIdentifier_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationCopyPlayerLoggingIdentifier_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigDataChannelConfigurationCopyPlayerLoggingIdentifier_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationCopyPlayerLoggingIdentifier_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationCopyPlayerItemLoggingIdentifier_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigDataChannelConfigurationCopyPlayerItemLoggingIdentifier_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationCopyPlayerItemLoggingIdentifier_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationCopyPlaybackItemUniqueInstanceIdentifier_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelConfigurationCopyPlaybackItemUniqueInstanceIdentifier_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figTTMLDocumentWriterParagraphStyleAttributeInserter_AddCaptionData(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MEMORY[0x19A8D3660](&getCaptionPropertyToAttributeMappingArray_once, initMappingArray);
  v4 = sCaptionPropertyToAttributeMappingArray;
  v24 = 0u;
  v25 = 0u;
  v5 = *DerivedStorage;
  *context = a2;
  v23 = v5;
  lhs = *(DerivedStorage + 32);
  v6 = *(DerivedStorage + 8);
  v18.epoch = *(DerivedStorage + 24);
  *&v18.value = v6;
  CMTimeSubtract(&v24, &lhs, &v18);
  DWORD2(v25) = 0;
  v26.length = CFArrayGetCount(v4);
  OUTLINED_FUNCTION_1_112(v26.length, v26, v7, v8, v9, v10, v11, v18.value, *&v18.timescale, v18.epoch, v19, lhs.value, *&lhs.timescale, lhs.epoch, v21, context[0]);
  result = DWORD2(v25);
  if (!DWORD2(v25))
  {
    v27.length = CFArrayGetCount(v4);
    OUTLINED_FUNCTION_1_112(v27.length, v27, v13, v14, v15, v16, v17, v18.value, *&v18.timescale, v18.epoch, v19, lhs.value, *&lhs.timescale, lhs.epoch, v21, context[0]);
    result = DWORD2(v25);
    if (!DWORD2(v25))
    {
      return FigTTMLDocumentWriterAddCaptionData(*DerivedStorage, a2);
    }
  }

  return result;
}

uint64_t figTTMLDocumentWriterParagraphStyleAttributeInserter_SetAttribute(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = FigTTMLDocumentWriterSetAttribute(*DerivedStorage, a2, a3);
  if (!v6)
  {
    if (FigCFEqual())
    {
      CMTimeMakeFromDictionary(&v9, a3);
      v7 = *&v9.value;
      *(DerivedStorage + 24) = v9.epoch;
      *(DerivedStorage + 8) = v7;
    }

    else if (FigCFEqual())
    {
      CMTimeMakeFromDictionary(&v9, a3);
      *(DerivedStorage + 32) = v9;
    }
  }

  return v6;
}

void insertAttribute(uint64_t *a1, uint64_t a2)
{
  cf = 0;
  v4 = *a1;
  CMBaseObject = FigCaptionDataGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v7 = *MEMORY[0x1E695E480];
    v6(CMBaseObject, v4, *MEMORY[0x1E695E480], &cf);
    if (cf)
    {
      v8 = CFGetTypeID(cf);
      TypeID = FigCaptionDynamicStyleGetTypeID();
      InitialValue = cf;
      if (v8 == TypeID)
      {
        InitialValue = FigCaptionDynamicStyleGetInitialValue();
      }

      Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v12 = (a1[1])(InitialValue, Mutable);
      if (v12 || (context = *(a2 + 8), v15 = 0, OUTLINED_FUNCTION_0_122(), CFDictionaryApplyFunction(Mutable, v13, &context), (v12 = v15) != 0))
      {
        *(a2 + 40) = v12;
      }

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

void insertSetElement(uint64_t *a1, uint64_t a2)
{
  v22 = 0;
  cf = 0;
  v4 = *a1;
  CMBaseObject = FigCaptionDataGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6 && (v7 = *MEMORY[0x1E695E480], v6(CMBaseObject, v4, *MEMORY[0x1E695E480], &cf), cf) && (v8 = CFGetTypeID(cf), v8 == FigCaptionDynamicStyleGetTypeID()) && (KeyFrameCount = FigCaptionDynamicStyleGetKeyFrameCount(), KeyFrameCount >= 2))
  {
    v10 = KeyFrameCount;
    v11 = 0;
    Mutable = 0;
    v13 = 1;
    v14 = MEMORY[0x1E695E9D8];
    v15 = MEMORY[0x1E695E9E8];
    while (1)
    {
      if (v22)
      {
        CFRelease(v22);
        v22 = 0;
      }

      v21 = 0.0;
      started = FigCaptionDynamicStyleCopyKeyFrameValueAtIndex();
      if (started)
      {
        break;
      }

      started = FigTTMLDocumentWriterStartElement(*(a2 + 8), 1);
      if (started)
      {
        break;
      }

      memset(&v20, 0, sizeof(v20));
      v19 = *(a2 + 16);
      Seconds = CMTimeGetSeconds(&v19);
      CMTimeMakeWithSeconds(&v20, Seconds * v21, 1000);
      if (v11)
      {
        CFRelease(v11);
      }

      v19 = v20;
      v11 = CMTimeCopyAsDictionary(&v19, v7);
      started = FigTTMLDocumentWriterSetAttribute(*(a2 + 8), @"begin", v11);
      if (started)
      {
        break;
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      Mutable = CFDictionaryCreateMutable(v7, 0, v14, v15);
      started = (a1[1])(v22, Mutable);
      if (started)
      {
        break;
      }

      *&v19.value = *(a2 + 8);
      OUTLINED_FUNCTION_0_122();
      CFDictionaryApplyFunction(Mutable, v18, &v19);
      started = v19.timescale;
      if (v19.timescale)
      {
        break;
      }

      started = FigTTMLDocumentWriterEndElement(*(a2 + 8));
      if (started)
      {
        break;
      }

      if (v10 == ++v13)
      {
        goto LABEL_21;
      }
    }

    *(a2 + 40) = started;
  }

  else
  {
    v11 = 0;
    Mutable = 0;
  }

LABEL_21:
  if (v22)
  {
    CFRelease(v22);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t setEachAttributeToWriter(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 8))
  {
    result = FigTTMLDocumentWriterSetAttribute(*a3, result, a2);
    *(a3 + 8) = result;
  }

  return result;
}

uint64_t FigTTMLDocumentWriterCreateParagraphStyleAttributeInserter_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLDocumentWriterCreateParagraphStyleAttributeInserter_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamAlternateIsValidCodecString(CFStringRef theString, const __CFDictionary *a2, BOOL *a3, _BYTE *a4, _DWORD *a5, const __CFDictionary **a6)
{
  v13 = 0;
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (qword_1ED4CAED8 != -1)
  {
    dispatch_once(&qword_1ED4CAED8, &__block_literal_global_54);
  }

  if (!_MergedGlobals_78 && FigCFStringFind() || FigMediaValidatorValidateAndTranslateRFC4281CodecsForStreaming(theString, a2, &v13, a6))
  {
    return 0;
  }

  if (a3)
  {
    *a3 = (v13 & 2) != 0;
  }

  if (a4)
  {
    *a4 = v13 & 1;
  }

  if (a5)
  {
    *a5 = v13;
  }

  return 1;
}

__CFString *FigAlternateCreateVideoLayoutLoggingStringFromCollection(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (Mutable)
  {
    OUTLINED_FUNCTION_0_123();
    FigTagCollectionGetTagsWithCategory();
    if (FigTagEqualToTag())
    {
      v2 = @"SIDE";
    }

    else if (FigTagEqualToTag())
    {
      v2 = @"OVER";
    }

    else if (FigTagEqualToTag())
    {
      v2 = @"NONE";
    }

    else
    {
      v2 = @"UNKNOWN";
    }

    OUTLINED_FUNCTION_0_123();
    FigTagCollectionGetTagsWithCategory();
    if (FigTagEqualToTag())
    {
      v3 = @"LEFT";
    }

    else if (FigTagEqualToTag())
    {
      v3 = @"RIGHT";
    }

    else if (FigTagEqualToTag())
    {
      v3 = @"STEREO";
    }

    else if (FigTagEqualToTag())
    {
      v3 = @"MONO";
    }

    else
    {
      v3 = @"UNKNOWN";
    }

    OUTLINED_FUNCTION_0_123();
    FigTagCollectionGetTagsWithCategory();
    if (FigTagEqualToTag())
    {
      v4 = @"RECT";
    }

    else if (FigTagEqualToTag())
    {
      v4 = @"EQUI";
    }

    else if (FigTagEqualToTag())
    {
      v4 = @"HEQU";
    }

    else if (FigTagEqualToTag())
    {
      v4 = @"FISH";
    }

    else
    {
      v5 = FigTagEqualToTag();
      v4 = @"PRIM";
      if (!v5)
      {
        v4 = @"UNKNOWN";
      }
    }

    CFStringAppendFormat(Mutable, 0, @"%@/%@/%@", v2, v3, v4);
  }

  return Mutable;
}

CFMutableStringRef FigAlternateCreateVideoLayoutLoggingStringFromCollectionArray(const __CFArray *a1)
{
  if (!a1)
  {
    return 0;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (Mutable && CFArrayGetCount(a1) >= 1)
  {
    v3 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v3);
      VideoLayoutLoggingStringFromCollection = FigAlternateCreateVideoLayoutLoggingStringFromCollection(ValueAtIndex);
      if (v3)
      {
        v6 = OUTLINED_FUNCTION_265();
        CFStringAppendFormat(v6, v7, @",");
      }

      v8 = OUTLINED_FUNCTION_265();
      CFStringAppendFormat(v8, v9, @"%@", VideoLayoutLoggingStringFromCollection);
      if (VideoLayoutLoggingStringFromCollection)
      {
        CFRelease(VideoLayoutLoggingStringFromCollection);
      }

      ++v3;
    }

    while (v3 < CFArrayGetCount(a1));
  }

  return Mutable;
}

CFMutableStringRef FigAlternateCreateVideoContentTypeStringFromCollectionArray(const __CFArray *a1)
{
  if (!a1)
  {
    return 0;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (Mutable && CFArrayGetCount(a1) >= 1)
  {
    v3 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v3);
      VideoContentTypeStringFromCollection = FigAlternateGetVideoContentTypeStringFromCollection(ValueAtIndex);
      if (v3)
      {
        v6 = OUTLINED_FUNCTION_265();
        CFStringAppendFormat(v6, v7, @",");
      }

      v8 = OUTLINED_FUNCTION_265();
      CFStringAppendFormat(v8, v9, @"%@", VideoContentTypeStringFromCollection);
      ++v3;
    }

    while (v3 < CFArrayGetCount(a1));
  }

  return Mutable;
}

__CFArray *FigAlternateCreateDefaultTagCollectionsArrayForVideo()
{
  value = 0;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  DefaultTagCollectionForVideo = FPSupport_CreateDefaultTagCollectionForVideo(&value);
  v3 = value;
  if (DefaultTagCollectionForVideo)
  {
    v4 = 0;
    if (value)
    {
LABEL_5:
      CFRelease(v3);
    }
  }

  else
  {
    if (!value)
    {
      v4 = 0;
      goto LABEL_7;
    }

    CFArrayAppendValue(v1, value);
    v3 = value;
    v4 = v1;
    v1 = 0;
    if (value)
    {
      goto LABEL_5;
    }
  }

  if (v1)
  {
LABEL_7:
    CFRelease(v1);
  }

  return v4;
}

uint64_t FigAlternateDoAllHostsHaveMatchingAlternates(const __CFArray *a1)
{
  if (!a1)
  {
    return 1;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 2)
  {
    return 1;
  }

  v3 = Count;
  ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
  v5 = CFArrayGetCount(ValueAtIndex);
  if (v5 < 1)
  {
    return 1;
  }

  v6 = v5;
  v7 = 0;
  while (2)
  {
    v8 = CFArrayGetValueAtIndex(ValueAtIndex, v7);
    NormalizedPeakBitrate = FigAlternateGetNormalizedPeakBitrate(v8);
    v10 = 1;
    do
    {
      v11 = CFArrayGetValueAtIndex(a1, v10);
      v12 = CFArrayGetCount(v11);
      if (v12 < 1)
      {
        return 0;
      }

      v13 = v12;
      v14 = 1;
      do
      {
        v15 = CFArrayGetValueAtIndex(v11, v14 - 1);
        v16 = FigAlternateGetNormalizedPeakBitrate(v15);
        v17 = v16 * 0.95 > NormalizedPeakBitrate;
        if (v16 * 1.05 < NormalizedPeakBitrate)
        {
          v17 = 1;
        }

        if (v14 >= v13)
        {
          break;
        }

        ++v14;
      }

      while (v17);
      ++v10;
    }

    while (v10 < v3 && !v17);
    if (++v7 < v6 && !v17)
    {
      continue;
    }

    break;
  }

  return !v17;
}

const void *FigStreamAlternateGetAudioMaximumDecodeChannelCount(unsigned int a1)
{
  if (!a1)
  {
    return 0;
  }

  MEMORY[0x19A8D3660](&gCreateAudioFormatLookupOnce, figStreamAlternate_FigCreateAudioFormatLookupOnce);
  if (!qword_1ED4CAEC8)
  {
    return 0;
  }

  FigSimpleMutexLock();
  if (CFDictionaryContainsKey(qword_1ED4CAEC8, a1))
  {
    Value = CFDictionaryGetValue(qword_1ED4CAEC8, a1);
  }

  else
  {
    v3 = OUTLINED_FUNCTION_4_90();
    AudioFormatGetPropertyInfo(v3, v4, v5, v6);
    Value = 0;
    free(0);
    free(0);
  }

  FigSimpleMutexUnlock();
  return Value;
}

const __CFDictionary *FigStreamAlternateGetOptionDictionaryForMediaTypeAndPersistentID(const __CFArray *a1, int a2)
{
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v4 = Count;
      v5 = 0;
      while (1)
      {
        ValueAtIndex = FigCFArrayGetValueAtIndex();
        CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionGroupMediaType");
        FigCFStringGetOSTypeValue();
        if (!a2)
        {
          break;
        }

        if (v4 == ++v5)
        {
          return 0;
        }
      }

      if (ValueAtIndex)
      {
        Value = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionGroupOptions");
        for (i = 0; ; ++i)
        {
          v11 = Value ? CFArrayGetCount(Value) : 0;
          if (i >= v11)
          {
            break;
          }

          v7 = CFArrayGetValueAtIndex(Value, i);
          CFDictionaryGetValue(v7, @"MediaSelectionOptionsPersistentID");
          if (FigCFEqual())
          {
            return v7;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t figStreamAlternate_isSelectionClosedCaptionsMediaType(uint64_t result)
{
  if (result)
  {
    FigCFDictionaryGetValue();
    FigCFStringGetOSTypeValue();
    return 0;
  }

  return result;
}

uint64_t FigStreamAlternateSubstreamURLsMatchBetweenVariants(uint64_t a1, uint64_t a2, const __CFArray *a3, int a4)
{
  v28 = 0uLL;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  if (a4 == 4)
  {
    v11 = &v25;
    v7 = 1935832172;
LABEL_9:
    PersistentIDForMediaTypeInMediaSelectionArray = FigStreamAlternateGetPersistentIDForMediaTypeInMediaSelectionArray(a3, v7);
    *v11 = PersistentIDForMediaTypeInMediaSelectionArray;
    if (!PersistentIDForMediaTypeInMediaSelectionArray)
    {
      return 1;
    }

    OUTLINED_FUNCTION_1_113(a1, v13, v14, v15, v16, v17, v18, &v28 + 1, 0);
    OUTLINED_FUNCTION_1_113(a2, v19, v20, v21, v22, v23, v24, &v28, 0);
    if (v28 == 0)
    {
      return 1;
    }

    return FigCFHTTPCompareURLs(*(&v28 + 1), v28) != 0;
  }

  if (a4 == 2)
  {
    v11 = &v26;
    v7 = 1936684398;
    goto LABEL_9;
  }

  if (a4 != 1)
  {
    return 1;
  }

  v7 = 1986618469;
  PlaylistAlternateURL = FigAlternateGetPlaylistAlternateURL(a1);
  *(&v28 + 1) = PlaylistAlternateURL;
  v9 = FigAlternateGetPlaylistAlternateURL(a2);
  *&v28 = v9;
  if (!(PlaylistAlternateURL | v9) || (result = FigCFHTTPCompareURLs(PlaylistAlternateURL, v9), result))
  {
    v11 = &v27;
    goto LABEL_9;
  }

  return result;
}

uint64_t FigStreamAlternateCopyAlternates(uint64_t a1)
{
  cf = 0;
  v7 = 0;
  if (FigAlternateContinuousFramesOnlyFilterCreate(*MEMORY[0x1E695E480], &cf) || (v2 = cf, (v3 = *(*(CMBaseObjectGetVTable() + 16) + 24)) == 0))
  {
    v4 = 0;
  }

  else if (v3(v2, a1, &v7))
  {
    v4 = 0;
  }

  else
  {
    v4 = v7;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t FigStreamAlternateCopyAvailableVideoDynamicRanges_cold_1()
{
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t FigBandwidthPredictorCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t HandleRemakerFamilyMessageWithReply(_xpc_connection_s *a1, void *a2, void *a3)
{
  HIDWORD(v841) = 0;
  v838 = 0;
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
LABEL_295:
    CMBaseObject = OpCode;
    goto LABEL_200;
  }

  v9 = MEMORY[0x1E695E480];
  v10 = MEMORY[0x1E695E4D0];
  OUTLINED_FUNCTION_59_8();
  if (v278)
  {
    OUTLINED_FUNCTION_12_35();
    v869 = 0;
    xpc_connection_get_pid(a1);
    v127 = OUTLINED_FUNCTION_15_32();
    v32 = OUTLINED_FUNCTION_16_28(v127, v128, v129, v130, v131, v132, v133, v134, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0, v841, *token.val, *&token.val[4]);
    uint64 = xpc_dictionary_get_uint64(a2, "AssetToken");
    v136 = FigXPCAssetServerCopyAssetForID(uint64, cf);
    if (v136)
    {
      goto LABEL_217;
    }

    v136 = FigXPCMessageCopyCFURL();
    if (v136)
    {
      goto LABEL_217;
    }

    v136 = frs_SandboxRegistrationRetrieveFromMessageAndAssociateToURL();
    if (v136)
    {
      goto LABEL_217;
    }

    OUTLINED_FUNCTION_18_24();
    if (FigServer_IsWritableFileOpeningOrCreationPermittedForAuditToken() == 1)
    {
      OUTLINED_FUNCTION_43_11();
      v136 = FigXPCMessageCopyCFDictionary();
      if (v136)
      {
        goto LABEL_217;
      }

      v136 = FigXPCMessageCopyCFDictionary();
      if (v136)
      {
        goto LABEL_217;
      }

      if (v869)
      {
        v10 = *v10;
        v137 = v10 != CFDictionaryGetValue(v869, @"Remaker_NoInterruptions");
        CMBaseObject = @"Remaker_TemporaryDirectoryURL";
        if (CFDictionaryContainsKey(v869, @"Remaker_TemporaryDirectoryURL"))
        {
          CFDictionaryGetValue(v869, @"Remaker_TemporaryDirectoryURL");
          v136 = frs_SandboxRegistrationRetrieveFromMessageAndAssociateToURL();
          if (v136)
          {
            goto LABEL_217;
          }
        }
      }

      else
      {
        v137 = 1;
      }

      if (FigOSTransactionCreate())
      {
        OUTLINED_FUNCTION_54_12();
        QueuedWithAsset = FigRemakerCreateQueuedWithAsset(v9, v139, v871[0], v870, v869, &v860);
        if (QueuedWithAsset || (OUTLINED_FUNCTION_1_114(), OUTLINED_FUNCTION_42_12(), QueuedWithAsset = frs_MakeWrapperForRemakerFamilyInternal(v141, v142, v143, v144, v145, v146, v137), QueuedWithAsset))
        {
          CMBaseObject = QueuedWithAsset;
        }

        else
        {
          OUTLINED_FUNCTION_32_15();
          xpc_dictionary_set_uint64(a3, v147, v148);
          OUTLINED_FUNCTION_17_27(v149, v150, v151, v152, v153, v154, v155, v156, v524, v553, v577, v600, v623, v645, v667, v689, v712, v735, v758, v771, v784, v792, v800, v808, v816, xdicte, v830, v836, v838, v846, token.val[0]);
          v157 = OUTLINED_FUNCTION_28_17();
          FigRemakerGetFigBaseObject(v157);
          if (*(*(CMBaseObjectGetVTable() + 8) + 56))
          {
            v158 = OUTLINED_FUNCTION_228();
            v159(v158);
            OUTLINED_FUNCTION_47_10();
            if (!CMBaseObject)
            {
              FigBaseObject = FigRemakerGetFigBaseObject(v860);
              v161 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v161)
              {
                v161(FigBaseObject, @"Remaker_ClientSecTask", v32);
              }

              CMBaseObject = 0;
            }
          }

          else
          {
            CFRelease(v10);
            CMBaseObject = 4294954514;
          }
        }

        os_release(a2);
LABEL_100:
        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        if (v871[0])
        {
          CFRelease(v871[0]);
        }

        if (v870)
        {
          CFRelease(v870);
        }

        v162 = v869;
        if (!v869)
        {
          goto LABEL_154;
        }

        goto LABEL_153;
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_125();
    v136 = FigSignalErrorAtGM();
LABEL_217:
    CMBaseObject = v136;
    goto LABEL_100;
  }

  CMBaseObject = MEMORY[0x1E69615D0];
  v12 = MEMORY[0x1E695E4C0];
  switch(v11)
  {
    case 1836217461:
      OUTLINED_FUNCTION_12_35();
      v868 = 0;
      v869 = 0;
      xpc_connection_get_pid(a1);
      v115 = OUTLINED_FUNCTION_15_32();
      v815 = OUTLINED_FUNCTION_16_28(v115, v116, v117, v118, v119, v120, v121, v122, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, a3, v4, 0, 0, v841, *token.val, *&token.val[4]);
      OUTLINED_FUNCTION_51_12();
      FigXPCMessageCopyCFURL();
      v123 = frs_SandboxRegistrationRetrieveFromMessageAndAssociateToURL();
      if (!v123)
      {
        v124 = xpc_dictionary_get_uint64(a2, "SourceFormatReaderToken");
        if (v124)
        {
          v125 = v124;
          v126 = FigFormatReaderServerIsObjectIDLocallyServed(v124) ? FigXPCFormatReaderServerCopyFormatReaderForID(v125, v871) : FigFormatReaderXPCRemoteCopyFormatReaderForObjectIDFromOtherProcess(v125, v871);
          CMBaseObject = v126;
          if (v126)
          {
            goto LABEL_190;
          }
        }

        OUTLINED_FUNCTION_43_11();
        v123 = FigXPCMessageCopyCFURL();
        if (!v123)
        {
          v123 = frs_SandboxRegistrationRetrieveFromMessageAndAssociateToURL();
          if (!v123)
          {
            OUTLINED_FUNCTION_18_24();
            if (FigServer_IsWritableFileOpeningOrCreationPermittedForAuditToken() == 1)
            {
              v123 = FigXPCMessageCopyCFDictionary();
              if (v123)
              {
                goto LABEL_219;
              }

              v123 = FigXPCMessageCopyCFDictionary();
              if (v123)
              {
                goto LABEL_219;
              }

              CMBaseObject = FigRemakerCreateQueuedBaseWithURLs;
              v227 = FigOSTransactionCreate();
              v228 = MEMORY[0x1E69615A0];
              if (v227)
              {
                OUTLINED_FUNCTION_54_12();
                WrapperForRemakerFamilyInternal = (FigRemakerCreateQueuedBaseWithURLs)(v9);
                if (WrapperForRemakerFamilyInternal || (OUTLINED_FUNCTION_1_114(), OUTLINED_FUNCTION_42_12(), WrapperForRemakerFamilyInternal = frs_MakeWrapperForRemakerFamilyInternal(v230, v231, v232, v233, v234, v235, 1), WrapperForRemakerFamilyInternal))
                {
                  CMBaseObject = WrapperForRemakerFamilyInternal;
                }

                else
                {
                  OUTLINED_FUNCTION_32_15();
                  xpc_dictionary_set_uint64(xdictd, v236, v237);
                  OUTLINED_FUNCTION_17_27(v238, v239, v240, v241, v242, v243, v244, v245, v523, v552, v576, v599, v622, v644, v666, v688, v711, v734, v757, v770, v783, v791, v799, v807, v815, xdictd, v829, v835, v838, v845, token.val[0]);
                  v246 = OUTLINED_FUNCTION_28_17();
                  FigRemakerGetFigBaseObject(v246);
                  if (*(*(CMBaseObjectGetVTable() + 8) + 56))
                  {
                    v247 = OUTLINED_FUNCTION_228();
                    v248(v247);
                    OUTLINED_FUNCTION_47_10();
                    if (!FigRemakerCreateQueuedBaseWithURLs)
                    {
                      v249 = FigRemakerGetFigBaseObject(v860);
                      v250 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                      if (v250)
                      {
                        v250(v249, @"Remaker_ClientSecTask", v815);
                      }

                      CMBaseObject = 0;
                    }
                  }

                  else
                  {
                    CFRelease(v228);
                    CMBaseObject = 4294954514;
                  }
                }

                os_release(a2);
LABEL_190:
                if (cf[0])
                {
                  CFRelease(cf[0]);
                }

                if (v871[0])
                {
                  CFRelease(v871[0]);
                }

                if (v870)
                {
                  CFRelease(v870);
                }

                v138 = v815;
                if (!v815)
                {
LABEL_198:
                  v187 = v860;
                  if (!v860)
                  {
                    goto LABEL_200;
                  }

                  goto LABEL_199;
                }

LABEL_197:
                CFRelease(v138);
                goto LABEL_198;
              }
            }

            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_125();
            v123 = FigSignalErrorAtGM();
          }
        }
      }

LABEL_219:
      CMBaseObject = v123;
      goto LABEL_190;
    case 1920103521:
      OUTLINED_FUNCTION_12_35();
      xpc_connection_get_pid(a1);
      v24 = OUTLINED_FUNCTION_15_32();
      v32 = OUTLINED_FUNCTION_16_28(v24, v25, v26, v27, v28, v29, v30, v31, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0, v841, *token.val, *&token.val[4]);
      v33 = xpc_dictionary_get_uint64(a2, "AssetToken");
      v34 = FigXPCAssetServerCopyAssetForID(v33, cf);
      if (!v34)
      {
        CMBaseObject = FigAssetGetCMBaseObject(cf[0]);
        v35 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v35)
        {
          CMBaseObject = 4294954514;
          goto LABEL_148;
        }

        v34 = v35(CMBaseObject, @"assetProperty_CreationURL", v9, v871);
        if (!v34)
        {
          OUTLINED_FUNCTION_43_11();
          v34 = FigXPCMessageCopyCFDictionary();
          if (!v34)
          {
            if (FigOSTransactionCreate())
            {
              OUTLINED_FUNCTION_54_12();
              v37 = FigAssetReaderCreateWithAsset(v9, v36, v870, &v860);
              if (v37 || (OUTLINED_FUNCTION_1_114(), OUTLINED_FUNCTION_42_12(), v37 = frs_MakeWrapperForRemakerFamilyInternal(v38, v39, v40, v41, v42, v43, 1), v37))
              {
                CMBaseObject = v37;
              }

              else
              {
                OUTLINED_FUNCTION_32_15();
                xpc_dictionary_set_uint64(a3, v44, v45);
                v46 = OUTLINED_FUNCTION_23_26();
                Mutable = CFDictionaryCreateMutable(v46, v47, v48, v49);
                OUTLINED_FUNCTION_52_11(Mutable, v51, v52, v53, v54, v55, v56, v57, v520, v549, v573, v596, v619, v641, v663, v685, v708, v731, v754, v767, v780, v788, v796, v804, v812, xdictb, v826, v832, v838, v842, *token.val, *&token.val[2], *&token.val[4], *&token.val[6], v849, *(&v849 + 1), cf[0], cf[1], v851, v852, *v853.val);
                v58 = OUTLINED_FUNCTION_23_26();
                v61 = CFDictionaryCreateMutable(v58, v59, v60, 0);
                *(*v853.val + 136) = v61;
                OUTLINED_FUNCTION_17_27(v61, v62, v63, v64, v65, v66, v67, v68, v521, v550, v574, v597, v620, v642, v664, v686, v709, v732, v755, v768, v781, v789, v797, v805, v813, xdictf, v827, v833, v839, v843, token.val[0]);
                v69 = OUTLINED_FUNCTION_28_17();
                FigAssetReaderGetFigBaseObject(v69);
                if (*(*(CMBaseObjectGetVTable() + 8) + 56))
                {
                  v70 = OUTLINED_FUNCTION_228();
                  v71(v70);
                  OUTLINED_FUNCTION_47_10();
                  if (!CMBaseObject)
                  {
                    v72 = FigAssetReaderGetFigBaseObject(v860);
                    v73 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                    if (v73)
                    {
                      v73(v72, @"AssetReader_ClientSecTask", v32);
                    }

                    CMBaseObject = 0;
                  }
                }

                else
                {
                  CFRelease(a3);
                  CMBaseObject = 4294954514;
                }
              }

              os_release(a2);
LABEL_148:
              if (v871[0])
              {
                CFRelease(v871[0]);
              }

              v188 = cf[0];
              if (!cf[0])
              {
LABEL_152:
                v162 = v870;
                if (!v870)
                {
LABEL_154:
                  if (!v32)
                  {
                    goto LABEL_198;
                  }

                  v138 = v32;
                  goto LABEL_197;
                }

LABEL_153:
                CFRelease(v162);
                goto LABEL_154;
              }

LABEL_151:
              CFRelease(v188);
              goto LABEL_152;
            }

            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_125();
            v34 = FigSignalErrorAtGM();
          }
        }
      }

      CMBaseObject = v34;
      goto LABEL_148;
    case 1920103541:
      OUTLINED_FUNCTION_12_35();
      xpc_connection_get_pid(a1);
      v102 = OUTLINED_FUNCTION_15_32();
      v32 = OUTLINED_FUNCTION_16_28(v102, v103, v104, v105, v106, v107, v108, v109, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0, v841, *token.val, *&token.val[4]);
      OUTLINED_FUNCTION_51_12();
      FigXPCMessageCopyCFURL();
      if (!cf[0] || (v110 = frs_SandboxRegistrationRetrieveFromMessageAndAssociateToURL(), !v110))
      {
        v111 = xpc_dictionary_get_uint64(a2, "SourceFormatReaderToken");
        if (v111)
        {
          v112 = v111;
          v113 = FigFormatReaderServerIsObjectIDLocallyServed(v111) ? FigXPCFormatReaderServerCopyFormatReaderForID(v112, v871) : FigFormatReaderXPCRemoteCopyFormatReaderForObjectIDFromOtherProcess(v112, v871);
          CMBaseObject = v113;
          if (v113)
          {
            goto LABEL_169;
          }
        }

        OUTLINED_FUNCTION_43_11();
        v110 = FigXPCMessageCopyCFDictionary();
        if (!v110)
        {
          if (FigOSTransactionCreate())
          {
            OUTLINED_FUNCTION_54_12();
            v190 = FigAssetReaderCreateWithURLAndFormatReader(v9, v189, v871[0], 0, v870, &v860);
            if (v190 || (OUTLINED_FUNCTION_1_114(), OUTLINED_FUNCTION_42_12(), v190 = frs_MakeWrapperForRemakerFamilyInternal(v191, v192, v193, v194, v195, v196, 1), v190))
            {
              CMBaseObject = v190;
            }

            else
            {
              OUTLINED_FUNCTION_32_15();
              xpc_dictionary_set_uint64(a3, v197, v198);
              v199 = OUTLINED_FUNCTION_23_26();
              v203 = CFDictionaryCreateMutable(v199, v200, v201, v202);
              OUTLINED_FUNCTION_52_11(v203, v204, v205, v206, v207, v208, v209, v210, v522, v551, v575, v598, v621, v643, v665, v687, v710, v733, v756, v769, v782, v790, v798, v806, v814, xdictc, v828, v834, v838, v844, *token.val, *&token.val[2], *&token.val[4], *&token.val[6], v849, *(&v849 + 1), cf[0], cf[1], v851, v852, *v853.val);
              v211 = OUTLINED_FUNCTION_23_26();
              v214 = CFDictionaryCreateMutable(v211, v212, v213, 0);
              *(*v853.val + 136) = v214;
              OUTLINED_FUNCTION_17_27(v214, v215, v216, v217, v218, v219, v220, v221, v526, v555, v579, v602, v624, v646, v668, v691, v714, v737, v759, v772, v785, v793, v801, v809, v817, xdictg, v831, v837, v840, v847, token.val[0]);
              v222 = OUTLINED_FUNCTION_28_17();
              FigAssetReaderGetFigBaseObject(v222);
              if (*(*(CMBaseObjectGetVTable() + 8) + 56))
              {
                v223 = OUTLINED_FUNCTION_228();
                v224(v223);
                OUTLINED_FUNCTION_47_10();
                if (!CMBaseObject)
                {
                  v225 = FigAssetReaderGetFigBaseObject(v860);
                  v226 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  if (v226)
                  {
                    v226(v225, @"AssetReader_ClientSecTask", v32);
                  }

                  CMBaseObject = 0;
                }
              }

              else
              {
                CFRelease(a3);
                CMBaseObject = 4294954514;
              }
            }

            os_release(a2);
LABEL_169:
            if (cf[0])
            {
              CFRelease(cf[0]);
            }

            v188 = v871[0];
            if (!v871[0])
            {
              goto LABEL_152;
            }

            goto LABEL_151;
          }

          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_125();
          v110 = FigSignalErrorAtGM();
        }
      }

      CMBaseObject = v110;
      goto LABEL_169;
  }

  OUTLINED_FUNCTION_19_28();
  if (v278)
  {
    v74 = v13;
    OUTLINED_FUNCTION_12_35();
    pid = xpc_connection_get_pid(a1);
    OUTLINED_FUNCTION_15_32();
    OUTLINED_FUNCTION_51_12();
    v76 = FigXPCMessageCopyCFURL();
    if (!v76)
    {
      v76 = frs_SandboxRegistrationRetrieveFromMessageAndAssociateToURL();
      v77 = MEMORY[0x1E69615A0];
      if (!v76)
      {
        OUTLINED_FUNCTION_18_24();
        if (FigServer_IsWritableFileOpeningOrCreationPermittedForAuditToken() == 1)
        {
          v76 = FigXPCMessageCopyCFDictionary();
          if (v76)
          {
            goto LABEL_215;
          }

          if (v871[0])
          {
            CMBaseObject = *v74;
            if (CFDictionaryContainsKey(v871[0], *v74))
            {
              CFDictionaryGetValue(v871[0], CMBaseObject);
              v76 = frs_SandboxRegistrationRetrieveFromMessageAndAssociateToURL();
              if (v76)
              {
                goto LABEL_215;
              }
            }
          }

          OUTLINED_FUNCTION_43_11();
          v76 = FigXPCMessageCopyCFDictionary();
          if (v76)
          {
            goto LABEL_215;
          }

          v78 = FigOSTransactionCreate();
          if (v78)
          {
            v79 = v78;
            v80 = *v9;
            v81 = FigAssetWriterCreateWithURL(*v9, cf[0], 0, v871[0], v870, &v860);
            if (v81 || (v82 = OUTLINED_FUNCTION_1_114(), v81 = frs_MakeWrapperForRemakerFamilyInternal(v82, v79, v83, v84, pid, v85, 1), v81))
            {
              CMBaseObject = v81;
            }

            else
            {
              OUTLINED_FUNCTION_32_15();
              xpc_dictionary_set_uint64(a3, v86, v87);
              v88 = CFDictionaryCreateMutable(v80, 0, 0, MEMORY[0x1E695E9E8]);
              OUTLINED_FUNCTION_52_11(v88, v89, v90, v91, v92, v93, v94, v95, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0, v841, *token.val, *&token.val[2], *&token.val[4], *&token.val[6], v849, *(&v849 + 1), cf[0], cf[1], v851, v852, *v853.val);
              token.val[0] = pid;
              CFNumberCreate(v80, kCFNumberSInt32Type, &token);
              v96 = OUTLINED_FUNCTION_28_17();
              FigAssetWriterGetFigBaseObject(v96);
              if (*(*(CMBaseObjectGetVTable() + 8) + 56))
              {
                v97 = OUTLINED_FUNCTION_228();
                v98(v97);
                OUTLINED_FUNCTION_47_10();
                if (!CMBaseObject)
                {
                  OUTLINED_FUNCTION_18_24();
                  SecTaskCreateWithAuditToken(v80, &token);
                  v99 = OUTLINED_FUNCTION_28_17();
                  FigAssetWriterGetFigBaseObject(v99);
                  if (*(*(CMBaseObjectGetVTable() + 8) + 56))
                  {
                    v100 = OUTLINED_FUNCTION_228();
                    v101(v100);
                  }

                  os_release(v79);
                  if (v77)
                  {
                    CFRelease(v77);
                  }

                  CMBaseObject = 0;
LABEL_83:
                  if (cf[0])
                  {
                    CFRelease(cf[0]);
                  }

                  if (v871[0])
                  {
                    CFRelease(v871[0]);
                  }

                  v138 = v870;
                  if (!v870)
                  {
                    goto LABEL_198;
                  }

                  goto LABEL_197;
                }
              }

              else
              {
                CFRelease(v77);
                CMBaseObject = 4294954514;
              }
            }

            os_release(v79);
            goto LABEL_83;
          }
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_125();
        v76 = FigSignalErrorAtGM();
      }
    }

LABEL_215:
    CMBaseObject = v76;
    goto LABEL_83;
  }

  OUTLINED_FUNCTION_59_8();
  if (!v278)
  {
    FigSimpleMutexLock();
    xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
    v114 = FigXPCServerLookupAndRetainAssociatedObject();
    CMBaseObject = v114;
    if (v114)
    {
      FigSimpleMutexUnlock();
      goto LABEL_200;
    }

    FigSimpleMutexUnlock();
    OUTLINED_FUNCTION_59_8();
    if (v278)
    {
      OpCode = FigRemakerFamilyServer_RemakerStartOutput(0);
    }

    else
    {
      OUTLINED_FUNCTION_33_16();
      if (v278)
      {
        v378 = OUTLINED_FUNCTION_14_34(v252, v253, v254, v255, v256, v257, v258, v259, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0);
        OpCode = FigRemakerFamilyServer_ReaderStartExtractionForTimeRanges(v378, v379);
      }

      else
      {
        OUTLINED_FUNCTION_33_16();
        if (v278)
        {
          v371 = OUTLINED_FUNCTION_14_34(v260, v261, v262, v263, v264, v265, v266, v267, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0);
          OpCode = FigRemakerFamilyServer_ReaderStartExtractionForTimeRangesFromTrack(v371, v372);
        }

        else if (v268 == 2003136356)
        {
          v380 = OUTLINED_FUNCTION_14_34(v260, v261, v262, v263, v264, v265, v266, v267, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0);
          OpCode = FigRemakerFamilyServer_WriterMarkEndOfDataForTrack(v380, v381);
        }

        else if (v268 == 2003202920)
        {
          OpCode = FigRemakerFamilyServer_WriterFlush(0);
        }

        else
        {
          OUTLINED_FUNCTION_19_28();
          if (v278)
          {
            v376 = OUTLINED_FUNCTION_14_34(v269, v270, v271, v272, v273, v274, v275, v276, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0);
            OpCode = FigRemakerFamilyServer_WriterEndPass(v376, v377);
          }

          else
          {
            OUTLINED_FUNCTION_19_28();
            if (v278)
            {
              OpCode = FigRemakerFamilyServer_WriterFinishAsync(0);
            }

            else
            {
              OUTLINED_FUNCTION_19_28();
              if (v278)
              {
                OpCode = FigRemakerFamilyServer_WriterFinish(0);
              }

              else
              {
                OUTLINED_FUNCTION_19_28();
                if (v278)
                {
                  v373 = OUTLINED_FUNCTION_3_87(v279, v280, v281, v282, v283, v284, v285, v286, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0);
                  OpCode = FigRemakerFamilyServer_WriterIsTrackQueueAboveHighWaterLevel(v373, v374, v375);
                }

                else
                {
                  CMBaseObject = 4294966630;
                  if (!(!v278 & v277))
                  {
                    switch(v287)
                    {
                      case 1836212589:
                        OUTLINED_FUNCTION_3_87(v279, v280, v281, v282, v283, v284, v285, v286, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0);
                        OpCode = FigRemakerFamilyServer_RemakerAddAudioMixdownTrack();
                        goto LABEL_295;
                      case 1836212590:
                      case 1836212591:
                      case 1836212593:
                      case 1836212594:
                      case 1836212595:
                      case 1836212597:
                        goto LABEL_200;
                      case 1836212592:
                        v382 = OUTLINED_FUNCTION_3_87(v279, v280, v281, v282, v283, v284, v285, v286, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0);
                        FigRemakerFamilyServer_RemakerAddAudioTrackWithPreset(v382, v383, v384, v385, v386, v387, v388, v389, v527, v556, v580, v603, v625, v647, v669, v692, v715, v738, v760, v773);
                        goto LABEL_295;
                      case 1836212596:
                        v393 = OUTLINED_FUNCTION_3_87(v279, v280, v281, v282, v283, v284, v285, v286, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0);
                        OpCode = FigRemakerFamilyServer_RemakerAddAudioTrack(v393, v394, v395);
                        goto LABEL_295;
                      case 1836212598:
                        v390 = OUTLINED_FUNCTION_3_87(v279, v280, v281, v282, v283, v284, v285, v286, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0);
                        OpCode = FigRemakerFamilyServer_RemakerAddVideoTrack(v390, v391, v392);
                        goto LABEL_295;
                      default:
                        JUMPOUT(0);
                    }
                  }

                  switch(v287)
                  {
                    case 778268793:
                      v517 = OUTLINED_FUNCTION_3_87(v279, v280, v281, v282, v283, v284, v285, v286, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0);
                      OpCode = FigRemakerFamilyServer_RemakerCopyProperty(v517);
                      break;
                    case 2004251747:
                      v396 = OUTLINED_FUNCTION_3_87(v279, v280, v281, v282, v283, v284, v285, v286, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0);
                      OpCode = FigRemakerFamilyServer_WriterAddVideoTrackWithCompression(v396);
                      break;
                    case 1717859188:
                      v463 = OUTLINED_FUNCTION_3_87(v279, v280, v281, v282, v283, v284, v285, v286, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0);
                      FigRemakerFamilyServer_GetDefaultSourceTrack(v463, v464, v465, v466, v467, v468, v469, v470, v536, v565, v571, v589, v612, v634, v656, v678, v701, v724, v747);
                      break;
                    case 1717990512:
                      v509 = OUTLINED_FUNCTION_14_34(v279, v280, v281, v282, v283, v284, v285, v286, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0);
                      FigRemakerFamilyServer_RemakerSetFormatWriterTrackProperty(v509, v510, v511, v512, v513, v514, v515, v516, v541, v570, v594, v617, v639, v661, v683, v706, v729, v752, v765, v778);
                      break;
                    case 1717991280:
                      OUTLINED_FUNCTION_14_34(v279, v280, v281, v282, v283, v284, v285, v286, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0);
                      OpCode = FigRemakerFamilyServer_RemakerSetFormatWriterProperty();
                      break;
                    case 1719104624:
                      v455 = OUTLINED_FUNCTION_3_87(v279, v280, v281, v282, v283, v284, v285, v286, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0);
                      FigRemakerFamilyServer_RemakerCopyFormatWriterTrackProperty(v455, v456, v457, v458, v459, v460, v461, v462, v535, v564, v588, v611, v633, v655, v677, v700, v723, v746, v763, v776);
                      break;
                    case 1835103843:
                      OUTLINED_FUNCTION_37_16(v279, v280, v281, v282, v283, v284, v285, v286, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0);
                      OpCode = FigRemakerFamilyServer_RemakerAddVideoCompositionTrack();
                      break;
                    case 1835363699:
                      OUTLINED_FUNCTION_3_87(v279, v280, v281, v282, v283, v284, v285, v286, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0);
                      OpCode = FigRemakerFamilyServer_RemakerEstimateMaxSegmentDurationForFileSize();
                      break;
                    case 1835427427:
                      OUTLINED_FUNCTION_14_34(v279, v280, v281, v282, v283, v284, v285, v286, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0);
                      OpCode = FigRemakerFamilyServer_RemakerCanPerformFastFrameRateConversion();
                      break;
                    case 1836081507:
                      OpCode = FigRemakerFamilyServer_RemakerPrepareToAddVideoCompositionTrack();
                      break;
                    case 1836086383:
                      v423 = OUTLINED_FUNCTION_3_87(v279, v280, v281, v282, v283, v284, v285, v286, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0);
                      FigRemakerFamilyServer_RemakerAddPassthroughTrackWithOptions(v423, v424, v425, v426, v427, v428, v429, v430, v531, v542, v560, v584, v607, v629, v651, v673, v696, v719, v742);
                      break;
                    default:
                      OUTLINED_FUNCTION_59_8();
                      if (v278)
                      {
                        OUTLINED_FUNCTION_3_87(v288, v289, v290, v291, v292, v293, v294, v295, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0);
                        OpCode = FigRemakerFamilyServer_RemakerAddAudioMixdownTrackWithPreset();
                      }

                      else
                      {
                        switch(v296)
                        {
                          case 1836282994:
                            OUTLINED_FUNCTION_14_34(v288, v289, v290, v291, v292, v293, v294, v295, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0);
                            OpCode = FigRemakerFamilyServer_RemakerSetTimeRange();
                            break;
                          case 1836346740:
                            v501 = OUTLINED_FUNCTION_3_87(v288, v289, v290, v291, v292, v293, v294, v295, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0);
                            FigRemakerFamilyServer_RemakerAddTemporalMetadataTrackWithOptions(v501, v502, v503, v504, v505, v506, v507, v508, v540, v547, v569, v593, v616, v638, v660, v682, v705, v728, v751);
                            break;
                          case 1918987621:
                            v518 = OUTLINED_FUNCTION_3_87(v288, v289, v290, v291, v292, v293, v294, v295, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0);
                            OpCode = FigRemakerFamilyServer_ReaderEnableAudioMixdownExtraction(v518);
                            break;
                          case 1919115640:
                            v447 = OUTLINED_FUNCTION_3_87(v288, v289, v290, v291, v292, v293, v294, v295, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0);
                            FigRemakerFamilyServer_ReaderEnableCaptionExtractionFromTrack(v447, v448, v449, v450, v451, v452, v453, v454, v534, v544, v563, v587, v610, v632, v654, v676, v699, v722, v745);
                            break;
                          case 1919251298:
                            v488 = OUTLINED_FUNCTION_37_16(v288, v289, v290, v291, v292, v293, v294, v295, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0);
                            OpCode = FigRemakerFamilyServer_ReaderExtractAndRetainNextSampleBuffer(v488, v489, v490, v491);
                            break;
                          case 1919251553:
                            OUTLINED_FUNCTION_3_87(v288, v289, v290, v291, v292, v293, v294, v295, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0);
                            OpCode = FigRemakerFamilyServer_ReaderEnableDecodedAudioExtractionFromTrackWithAudioOptions();
                            break;
                          case 1920099184:
                            v397 = OUTLINED_FUNCTION_3_87(v288, v289, v290, v291, v292, v293, v294, v295, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0);
                            FigRemakerFamilyServer_RemakerCopyTrackProperty(v397, v398, v399, v400, v401, v402, v403, v404, v528, v557, v581, v604, v626, v648, v670, v693, v716, v739);
                            break;
                          default:
                            OUTLINED_FUNCTION_33_16();
                            if (v278)
                            {
                              OUTLINED_FUNCTION_14_34(v297, v298, v299, v300, v301, v302, v303, v304, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0);
                              OpCode = FigRemakerFamilyServer_ReaderStartExtractionForTimeRange();
                            }

                            else
                            {
                              OUTLINED_FUNCTION_33_16();
                              if (v278)
                              {
                                OUTLINED_FUNCTION_14_34(v305, v306, v307, v308, v309, v310, v311, v312, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0);
                                OpCode = FigRemakerFamilyServer_ReaderStartExtractionForTime();
                              }

                              else
                              {
                                OUTLINED_FUNCTION_33_16();
                                if (v278)
                                {
                                  v431 = OUTLINED_FUNCTION_3_87(v313, v314, v315, v316, v317, v318, v319, v320, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0);
                                  FigRemakerFamilyServer_ReaderEnableOriginalSampleReferenceExtractionFromTrack(v431, v432, v433, v434, v435, v436, v437, v438, v532, v543, v561, v585, v608, v630, v652, v674, v697, v720, v743);
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_33_16();
                                  if (v278)
                                  {
                                    v480 = OUTLINED_FUNCTION_3_87(v321, v322, v323, v324, v325, v326, v327, v328, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0);
                                    FigRemakerFamilyServer_ReaderEnableOriginalSampleExtractionFromTrack(v480, v481, v482, v483, v484, v485, v486, v487, v538, v545, v567, v591, v614, v636, v658, v680, v703, v726, v749);
                                  }

                                  else
                                  {
                                    switch(v329)
                                    {
                                      case 1920361317:
                                        OUTLINED_FUNCTION_37_16(v321, v322, v323, v324, v325, v326, v327, v328, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0);
                                        OpCode = FigRemakerFamilyServer_ReaderEnableVideoCompositionExtraction();
                                        break;
                                      case 1920361844:
                                        v492 = OUTLINED_FUNCTION_3_87(v321, v322, v323, v324, v325, v326, v327, v328, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0);
                                        OpCode = FigRemakerFamilyServer_ReaderEnableDecodedVideoExtractionFromTrack(v492);
                                        break;
                                      case 2002873972:
                                        v415 = OUTLINED_FUNCTION_3_87(v321, v322, v323, v324, v325, v326, v327, v328, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0);
                                        FigRemakerFamilyServer_WriterAddNativeTrack(v415, v416, v417, v418, v419, v420, v421, v422, v530, v559, v583, v606, v628, v650, v672, v695, v718, v741);
                                        break;
                                      case 2002875491:
                                        v413 = OUTLINED_FUNCTION_3_87(v321, v322, v323, v324, v325, v326, v327, v328, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0);
                                        OpCode = FigRemakerFamilyServer_WriterAddAudioTrackWithCompression(v413);
                                        break;
                                      case 2002875504:
                                        v405 = OUTLINED_FUNCTION_3_87(v321, v322, v323, v324, v325, v326, v327, v328, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0);
                                        FigRemakerFamilyServer_WriterAddAudioTrackWithPresetCompression(v405, v406, v407, v408, v409, v410, v411, v412, v529, v558, v582, v605, v627, v649, v671, v694, v717, v740, v761, v774);
                                        break;
                                      case 2003001712:
                                        v493 = OUTLINED_FUNCTION_3_87(v321, v322, v323, v324, v325, v326, v327, v328, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0);
                                        FigRemakerFamilyServer_WriterAddCaptionTrack(v493, v494, v495, v496, v497, v498, v499, v500, v539, v546, v568, v592, v615, v637, v659, v681, v704, v727, v750);
                                        break;
                                      case 2003136610:
                                        OUTLINED_FUNCTION_266();
                                        OpCode = FigRemakerFamilyServer_EstablishPixelBufferRecipient();
                                        break;
                                      default:
                                        OUTLINED_FUNCTION_19_28();
                                        if (v278)
                                        {
                                          OpCode = FigRemakerFamilyServer_WriterAddPixelBuffer(a1, 0, a2);
                                        }

                                        else
                                        {
                                          OUTLINED_FUNCTION_19_28();
                                          if (v278)
                                          {
                                            OpCode = FigRemakerFamilyServer_WriterAddSampleBuffer();
                                          }

                                          else
                                          {
                                            OUTLINED_FUNCTION_19_28();
                                            if (v278)
                                            {
                                              v471 = OUTLINED_FUNCTION_14_34(v330, v331, v332, v333, v334, v335, v336, v337, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0);
                                              OpCode = FigRemakerFamilyServer_WriterBeginPass(v471);
                                            }

                                            else
                                            {
                                              OUTLINED_FUNCTION_19_28();
                                              if (v278)
                                              {
                                                v414 = OUTLINED_FUNCTION_14_34(v338, v339, v340, v341, v342, v343, v344, v345, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0);
                                                OpCode = FigRemakerFamilyServer_WriterBeginSession(v414);
                                              }

                                              else
                                              {
                                                OUTLINED_FUNCTION_19_28();
                                                if (v278)
                                                {
                                                  v472 = OUTLINED_FUNCTION_3_87(v346, v347, v348, v349, v350, v351, v352, v353, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0);
                                                  FigRemakerFamilyServer_WriterCopyTrackProperty(v472, v473, v474, v475, v476, v477, v478, v479, v537, v566, v590, v613, v635, v657, v679, v702, v725, v748, v764, v777);
                                                }

                                                else
                                                {
                                                  OUTLINED_FUNCTION_19_28();
                                                  if (v278)
                                                  {
                                                    OUTLINED_FUNCTION_14_34(v354, v355, v356, v357, v358, v359, v360, v361, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0);
                                                    OpCode = FigRemakerFamilyServer_WriterEndSession();
                                                  }

                                                  else
                                                  {
                                                    OUTLINED_FUNCTION_19_28();
                                                    if (v278)
                                                    {
                                                      OpCode = FigRemakerFamilyServer_WriterAddTaggedPixelBufferGroup();
                                                    }

                                                    else
                                                    {
                                                      OUTLINED_FUNCTION_19_28();
                                                      if (v278)
                                                      {
                                                        v439 = OUTLINED_FUNCTION_14_34(v362, v363, v364, v365, v366, v367, v368, v369, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0);
                                                        FigRemakerFamilyServer_WriterSetTrackProperty(v439, v440, v441, v442, v443, v444, v445, v446, v533, v562, v586, v609, v631, v653, v675, v698, v721, v744, v762, v775);
                                                      }

                                                      else
                                                      {
                                                        if (v370 != 779314548)
                                                        {
                                                          goto LABEL_200;
                                                        }

                                                        OUTLINED_FUNCTION_14_34(v362, v363, v364, v365, v366, v367, v368, v369, v519, v548, v572, v595, v618, v640, v662, v684, v707, v730, v753, v766, v779, v786, v794, v802, v810, xdict, v4, 0, 0);
                                                        OpCode = FigRemakerFamilyServer_RemakerSetProperty();
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }

                                        break;
                                    }
                                  }
                                }
                              }
                            }

                            break;
                        }
                      }

                      break;
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_295;
  }

  xdicta = a3;
  v870 = 0;
  v871[0] = 0;
  v868 = 0;
  v869 = 0;
  v866 = 0;
  v867 = 0;
  v864 = 0;
  v865 = 0;
  v863 = 0;
  v862 = 0;
  v14 = *MEMORY[0x1E6960C70];
  v861 = *(MEMORY[0x1E6960C70] + 16);
  v15 = *(MEMORY[0x1E6960C98] + 16);
  *v858.val = *MEMORY[0x1E6960C98];
  *&v858.val[4] = v15;
  v859 = *(MEMORY[0x1E6960C98] + 32);
  v860 = v14;
  v856 = 0;
  v857 = 0;
  v854 = 0;
  theDict = 0;
  v16 = xpc_connection_get_pid(a1);
  memset(&v853, 0, sizeof(v853));
  xpc_connection_get_audit_token();
  v17 = *v9;
  memset(&token, 0, sizeof(token));
  v811 = SecTaskCreateWithAuditToken(v17, &token);
  FigXPCMessageCopyCFURL();
  if (v869)
  {
    CMTime = frs_SandboxRegistrationRetrieveFromMessageAndAssociateToURL();
    if (CMTime)
    {
      goto LABEL_221;
    }
  }

  CMTime = FigXPCMessageCopyCFString();
  if (CMTime)
  {
    goto LABEL_221;
  }

  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    goto LABEL_221;
  }

  int64 = xpc_dictionary_get_int64(a2, "Width");
  v795 = xpc_dictionary_get_int64(a2, "Height");
  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    goto LABEL_221;
  }

  v787 = xpc_dictionary_get_uint64(a2, "VideoCodecType");
  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    goto LABEL_221;
  }

  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    goto LABEL_221;
  }

  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    goto LABEL_221;
  }

  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    goto LABEL_221;
  }

  CMTime = FigXPCMessageGetCMTime();
  if (CMTime)
  {
    goto LABEL_221;
  }

  CMTime = FigXPCMessageGetCMTimeRange();
  if (CMTime)
  {
    goto LABEL_221;
  }

  CMTime = FigXPCMessageCopyCFURL();
  if (CMTime)
  {
    goto LABEL_221;
  }

  CMTime = frs_SandboxRegistrationRetrieveFromMessageAndAssociateToURL();
  if (CMTime)
  {
    goto LABEL_221;
  }

  token = v853;
  if (FigServer_IsWritableFileOpeningOrCreationPermittedForAuditToken() != 1)
  {
    goto LABEL_220;
  }

  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    goto LABEL_221;
  }

  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    goto LABEL_221;
  }

  if (!theDict)
  {
    v22 = 1;
    v20 = 1;
    goto LABEL_109;
  }

  v19 = *v10;
  v20 = v19 != CFDictionaryGetValue(theDict, @"Remaker_NoInterruptions");
  v21 = *v12;
  v22 = v21 != CFDictionaryGetValue(theDict, @"Remaker_UseRemakerQueue");
  CMBaseObject = @"Remaker_TemporaryDirectoryURL";
  if (!CFDictionaryContainsKey(theDict, @"Remaker_TemporaryDirectoryURL"))
  {
LABEL_109:
    v23 = MEMORY[0x1E69615A0];
    goto LABEL_110;
  }

  CFDictionaryGetValue(theDict, @"Remaker_TemporaryDirectoryURL");
  CMTime = frs_SandboxRegistrationRetrieveFromMessageAndAssociateToURL();
  v23 = MEMORY[0x1E69615A0];
  if (CMTime)
  {
    goto LABEL_221;
  }

LABEL_110:
  v163 = FigOSTransactionCreate();
  if (v163)
  {
    v164 = v163;
    v165 = FigRemakerCreateWithURLs;
    v849 = v859;
    *cf = v860;
    token = v858;
    if (v22)
    {
      v165 = FigRemakerCreateQueuedWithURLs;
    }

    v851 = v861;
    v713 = v856;
    v736 = theDict;
    v690 = v857;
    v578 = v863;
    v601 = v862;
    v525 = v865;
    v554 = v864;
    v166 = v165(v17, v869, v868, v867, int64, v795, v866, v787);
    if (v166 || (token = v853, v167 = OUTLINED_FUNCTION_266(), v166 = frs_MakeWrapperForRemakerFamilyInternal(v167, v168, v169, v170, v16, v171, v20), v166))
    {
      CMBaseObject = v166;
    }

    else
    {
      xpc_dictionary_set_uint64(xdicta, *v23, *(v871[0] + 1));
      v180 = OUTLINED_FUNCTION_17_27(v172, v173, v174, v175, v176, v177, v178, v179, v525, v554, v578, v601, cf, &token, 0, v690, v713, v736, &v854 + 4, &v854, &v870, v787, v795, int64, v811, xdicta, v4, 0, 0, v841, token.val[0]);
      FigRemakerGetFigBaseObject(v870);
      if (*(*(CMBaseObjectGetVTable() + 8) + 56))
      {
        v181 = OUTLINED_FUNCTION_228();
        v182(v181);
        OUTLINED_FUNCTION_47_10();
        if (!CMBaseObject)
        {
          v183 = FigRemakerGetFigBaseObject(v870);
          v184 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v184)
          {
            v185 = v183;
            v186 = v811;
            v184(v185, @"Remaker_ClientSecTask", v811);
            CMBaseObject = 0;
LABEL_121:
            os_release(v164);
            goto LABEL_122;
          }

          CMBaseObject = 0;
        }
      }

      else
      {
        CFRelease(v180);
        CMBaseObject = 4294954514;
      }
    }

    v186 = v811;
    goto LABEL_121;
  }

LABEL_220:
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_125();
  CMTime = FigSignalErrorAtGM();
LABEL_221:
  CMBaseObject = CMTime;
  v186 = v811;
LABEL_122:
  if (v869)
  {
    CFRelease(v869);
  }

  if (v868)
  {
    CFRelease(v868);
  }

  if (v867)
  {
    CFRelease(v867);
  }

  if (v866)
  {
    CFRelease(v866);
  }

  if (v865)
  {
    CFRelease(v865);
  }

  if (v863)
  {
    CFRelease(v863);
  }

  if (v862)
  {
    CFRelease(v862);
  }

  if (v857)
  {
    CFRelease(v857);
  }

  if (v856)
  {
    CFRelease(v856);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v186)
  {
    CFRelease(v186);
  }

  v187 = v870;
  if (v870)
  {
LABEL_199:
    CFRelease(v187);
  }

LABEL_200:
  if (v838)
  {
    CFRelease(v838);
  }

  return CMBaseObject;
}

uint64_t HandleRemakerFamilyMessageNoReply()
{
  OUTLINED_FUNCTION_261();
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  else
  {
    return 4294966630;
  }
}

uint64_t FigRemakerFamilyServer_RemakerSetProperty()
{
  OUTLINED_FUNCTION_565();
  OUTLINED_FUNCTION_570();
  OUTLINED_FUNCTION_29_12();
  MetadataFromBinaryPListData = FigXPCMessageCopyCFString();
  if (MetadataFromBinaryPListData)
  {
    goto LABEL_13;
  }

  if (!cf1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    MetadataFromBinaryPListData = FigSignalErrorAtGM();
    goto LABEL_13;
  }

  MetadataFromBinaryPListData = FigXPCMessageCopyCFObject();
  if (MetadataFromBinaryPListData)
  {
    goto LABEL_13;
  }

  if (!CFEqual(cf1, @"AssetWriter_Metadata") && !CFEqual(cf1, @"Remaker_Metadata"))
  {
    goto LABEL_11;
  }

  MetadataFromBinaryPListData = FigRemote_CreateMetadataFromBinaryPListData(cf, *MEMORY[0x1E695E480], &v6);
  if (MetadataFromBinaryPListData)
  {
LABEL_13:
    v4 = MetadataFromBinaryPListData;
    goto LABEL_15;
  }

  v1 = cf;
  cf = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  if (v1)
  {
    CFRelease(v1);
  }

LABEL_11:
  if (*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    v2 = OUTLINED_FUNCTION_69_0();
    MetadataFromBinaryPListData = v3(v2);
    goto LABEL_13;
  }

  v4 = 4294954514;
LABEL_15:
  if (cf1)
  {
    CFRelease(cf1);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v4;
}

uint64_t FigRemakerFamilyServer_RemakerCopyProperty(uint64_t a1)
{
  OUTLINED_FUNCTION_570();
  MetadataBinaryPListData = FigXPCMessageCopyCFString();
  if (MetadataBinaryPListData)
  {
    goto LABEL_13;
  }

  if (!cf1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    MetadataBinaryPListData = FigSignalErrorAtGM();
    goto LABEL_13;
  }

  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v4 = *MEMORY[0x1E695E480];
    MetadataBinaryPListData = v3(a1, cf1, *MEMORY[0x1E695E480], &cf);
    if (!MetadataBinaryPListData)
    {
      if (!CFEqual(cf1, @"AssetWriter_Metadata") && !CFEqual(cf1, @"Remaker_Metadata"))
      {
LABEL_12:
        MetadataBinaryPListData = FigXPCMessageSetCFObject();
        goto LABEL_13;
      }

      MetadataBinaryPListData = FigRemote_CreateMetadataBinaryPListData(cf, v4, &v8);
      if (!MetadataBinaryPListData)
      {
        v5 = cf;
        cf = v8;
        if (v8)
        {
          CFRetain(v8);
        }

        if (v5)
        {
          CFRelease(v5);
        }

        goto LABEL_12;
      }
    }

LABEL_13:
    v6 = MetadataBinaryPListData;
    goto LABEL_15;
  }

  v6 = 4294954514;
LABEL_15:
  if (cf1)
  {
    CFRelease(cf1);
  }

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

void FigRemakerFamilyServer_GetDefaultSourceTrack(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int valuea, int64_t value, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_653();
  OUTLINED_FUNCTION_56_10();
  int64 = xpc_dictionary_get_int64(v21, "MediaType");
  if (!v20)
  {
    goto LABEL_10;
  }

  v23 = int64;
  v24 = CFGetTypeID(v20);
  if (v24 == FigRemakerGetTypeID())
  {
    v25 = *(CMBaseObjectGetVTable() + 16);
    if (v23 == 1635083369)
    {
      if (!*(v25 + 72))
      {
        goto LABEL_17;
      }
    }

    else if (!*(v25 + 80))
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v26 = CFGetTypeID(v20);
  if (v26 != FigAssetReaderGetTypeID())
  {
LABEL_10:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    v28 = FigSignalErrorAtGM();
    goto LABEL_11;
  }

  v27 = *(CMBaseObjectGetVTable() + 16);
  if (v23 == 1635083369)
  {
    if (!*(v27 + 8))
    {
      goto LABEL_17;
    }
  }

  else if (!*(v27 + 16))
  {
    goto LABEL_17;
  }

LABEL_16:
  v29 = OUTLINED_FUNCTION_55_12();
  v28 = v30(v29);
LABEL_11:
  if (!v28)
  {
    xpc_dictionary_set_int64(v19, "TrackIDOut", valuea);
  }

LABEL_17:
  OUTLINED_FUNCTION_652();
}

uint64_t FigRemakerFamilyServer_RemakerSetFormatWriterProperty()
{
  OUTLINED_FUNCTION_565();
  result = FigXPCMessageCopyCFString();
  if (!result)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    return FigSignalErrorAtGM();
  }

  return result;
}

void FigRemakerFamilyServer_RemakerSetFormatWriterTrackProperty(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef a10, CFTypeRef cf, CFTypeRef cf1, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  v21 = v20;
  v23 = v22;
  OUTLINED_FUNCTION_570();
  if (!xpc_dictionary_get_int64(v21, "TrackID"))
  {
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_34_15();
  if (FigXPCMessageCopyCFString())
  {
    goto LABEL_20;
  }

  if (!cf1)
  {
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_60_9();
  if (FigXPCMessageCopyCFObject())
  {
    goto LABEL_20;
  }

  if (CFEqual(cf1, @"FormatDescriptionArray") || CFEqual(cf1, @"ReplacementFormatDescriptionArray"))
  {
    if (FigRemote_CreateFormatDescriptionCollectionFromPList())
    {
      goto LABEL_20;
    }

    v24 = cf;
    cf = a10;
    if (a10)
    {
      CFRetain(a10);
    }

    if (v24)
    {
      CFRelease(v24);
    }
  }

  if (!v23)
  {
    goto LABEL_19;
  }

  v25 = CFGetTypeID(v23);
  if (v25 == FigRemakerGetTypeID())
  {
    if (!*(*(CMBaseObjectGetVTable() + 16) + 40))
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v28 = CFGetTypeID(v23);
  if (v28 == FigAssetWriterGetTypeID())
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 64))
    {
LABEL_15:
      v26 = OUTLINED_FUNCTION_69_0();
      v27(v26);
    }
  }

  else
  {
LABEL_19:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM();
  }

LABEL_20:
  if (cf1)
  {
    CFRelease(cf1);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (a10)
  {
    CFRelease(a10);
  }

  OUTLINED_FUNCTION_860();
}

void FigRemakerFamilyServer_RemakerCopyFormatWriterTrackProperty(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef a10, CFTypeRef cf, CFTypeRef cf1, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_8_38();
  OUTLINED_FUNCTION_570();
  if (!xpc_dictionary_get_int64(v21, "TrackID"))
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_34_15();
  if (FigXPCMessageCopyCFString())
  {
    goto LABEL_17;
  }

  if (!cf1)
  {
LABEL_25:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM();
    goto LABEL_17;
  }

  if (v20 && (v22 = CFGetTypeID(v20), v22 == FigAssetWriterGetTypeID()))
  {
    if (!*(*(CMBaseObjectGetVTable() + 16) + 160))
    {
      goto LABEL_17;
    }

    v23 = OUTLINED_FUNCTION_517();
    if (v24(v23))
    {
      goto LABEL_17;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    if (FigSignalErrorAtGM())
    {
      goto LABEL_17;
    }
  }

  if (CFEqual(cf1, @"FormatDescriptionArray"))
  {
    if (FigRemote_CreatePListFromFormatDescriptionCollection())
    {
      goto LABEL_17;
    }

    v25 = cf;
    cf = a10;
    if (a10)
    {
      CFRetain(a10);
    }

    if (v25)
    {
      CFRelease(v25);
    }
  }

  FigXPCMessageSetCFObject();
LABEL_17:
  if (cf1)
  {
    CFRelease(cf1);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (a10)
  {
    CFRelease(a10);
  }

  OUTLINED_FUNCTION_860();
}

uint64_t FigRemakerFamilyServer_RemakerAddAudioTrack(const void *a1, void *a2, void *a3)
{
  v11 = 0;
  length = 0;
  if (!a1 || (v5 = CFGetTypeID(a1), v5 != FigRemakerGetTypeID()) || !xpc_dictionary_get_int64(a2, "TrackID"))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    return FigSignalErrorAtGM();
  }

  if (!xpc_dictionary_get_data(a2, "AudioDestASBD", &length) || length != 40)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    return FigSignalErrorAtGM();
  }

  xpc_dictionary_get_data(a2, "AudioDestChannelLayout", &v11);
  v6 = FigXPCMessageCopyCFDictionary();
  if (v6)
  {
    return v6;
  }

  v6 = FigXPCMessageCopyCFDictionary();
  if (v6)
  {
    return v6;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 8))
  {
    return 4294954514;
  }

  v7 = OUTLINED_FUNCTION_266();
  v9 = v8(v7);
  if (!v9)
  {
    xpc_dictionary_set_int64(a3, "TrackIDOut", 0);
  }

  return v9;
}

void FigRemakerFamilyServer_RemakerAddAudioTrackWithPreset(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int64_t value, CFTypeRef cf, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  if (v22 && (OUTLINED_FUNCTION_8_38(), v24 = CFGetTypeID(v23), v24 == FigRemakerGetTypeID()) && xpc_dictionary_get_int64(v21, "TrackID"))
  {
    OUTLINED_FUNCTION_34_15();
    if (!FigXPCMessageCopyCFString())
    {
      OUTLINED_FUNCTION_60_9();
      if (!FigXPCMessageCopyCFDictionary())
      {
        if (*(*(CMBaseObjectGetVTable() + 16) + 88))
        {
          v25 = OUTLINED_FUNCTION_266();
          if (!v26(v25))
          {
            xpc_dictionary_set_int64(v20, "TrackIDOut", 0);
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

  OUTLINED_FUNCTION_860();
}

uint64_t FigRemakerFamilyServer_RemakerAddAudioMixdownTrack()
{
  length = 0;
  cf = 0;
  OUTLINED_FUNCTION_39_14();
  v16 = 0;
  if (!v3 || (v4 = OUTLINED_FUNCTION_48_12(v3), v4 != FigRemakerGetTypeID()))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
LABEL_24:
    v5 = FigSignalErrorAtGM();
LABEL_25:
    v14 = v5;
    goto LABEL_13;
  }

  v5 = FigXPCMessageCopyCFArray();
  if (v5)
  {
    goto LABEL_25;
  }

  v5 = frs_CopySourceAudioTrackArrayReplacingAudioProcessingTapServerObjects(cf, @"RemakerAudioMixdown_AudioProcessingTap", &v16);
  if (v5)
  {
    goto LABEL_25;
  }

  data = xpc_dictionary_get_data(v2, "AudioDestASBD", &length);
  if (!data || length != 40)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    goto LABEL_24;
  }

  v7 = data;
  v8 = xpc_dictionary_get_data(v2, "AudioDestChannelLayout", &v19);
  OUTLINED_FUNCTION_41_13();
  v5 = FigXPCMessageCopyCFDictionary();
  if (v5)
  {
    goto LABEL_25;
  }

  v5 = FigXPCMessageCopyCFDictionary();
  if (v5)
  {
    goto LABEL_25;
  }

  v9 = v16;
  v10 = v18;
  v11 = v19;
  v12 = *&value[1];
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (v13)
  {
    v14 = v13(v1, v9, v7, v11, v8, v10, v12, value);
    if (!v14)
    {
      xpc_dictionary_set_int64(v0, "TrackIDOut", value[0]);
    }
  }

  else
  {
    v14 = 4294954514;
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (*&value[1])
  {
    CFRelease(*&value[1]);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v14;
}

uint64_t FigRemakerFamilyServer_RemakerAddAudioMixdownTrackWithPreset()
{
  OUTLINED_FUNCTION_39_14();
  v8 = 0;
  if (!v1 || (v2 = OUTLINED_FUNCTION_24_18(v1), v2 != FigRemakerGetTypeID()))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    v3 = FigSignalErrorAtGM();
LABEL_21:
    v6 = v3;
    goto LABEL_11;
  }

  v3 = FigXPCMessageCopyCFArray();
  if (v3)
  {
    goto LABEL_21;
  }

  v3 = frs_CopySourceAudioTrackArrayReplacingAudioProcessingTapServerObjects(cf, @"RemakerAudioMixdown_AudioProcessingTap", &v8);
  if (v3)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_53_11();
  v3 = FigXPCMessageCopyCFString();
  if (v3)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_29_12();
  v3 = FigXPCMessageCopyCFDictionary();
  if (v3)
  {
    goto LABEL_21;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 104))
  {
    v4 = OUTLINED_FUNCTION_266();
    v6 = v5(v4);
    if (!v6)
    {
      xpc_dictionary_set_int64(v0, "TrackIDOut", value[0]);
    }
  }

  else
  {
    v6 = 4294954514;
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (*&value[1])
  {
    CFRelease(*&value[1]);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v6;
}

uint64_t FigRemakerFamilyServer_RemakerAddVideoTrack(const void *a1, void *a2, uint64_t a3)
{
  value_4 = *MEMORY[0x1E6960C70];
  if (!a1 || (v5 = CFGetTypeID(a1), v5 != FigRemakerGetTypeID()) || !xpc_dictionary_get_int64(a2, "TrackID"))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    return FigSignalErrorAtGM();
  }

  xpc_dictionary_get_int64(a2, "Width");
  xpc_dictionary_get_int64(a2, "Height");
  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    return CMTime;
  }

  xpc_dictionary_get_uint64(a2, "VideoCodecType");
  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    return CMTime;
  }

  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    return CMTime;
  }

  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    return CMTime;
  }

  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    return CMTime;
  }

  CMTime = FigXPCMessageGetCMTime();
  if (CMTime)
  {
    return CMTime;
  }

  VTable = CMBaseObjectGetVTable();
  v17 = *(VTable + 16);
  v16 = VTable + 16;
  if (!*(v17 + 16))
  {
    return 4294954514;
  }

  OUTLINED_FUNCTION_61_10(v16, v8, v9, v10, v11, v12, v13, v14, v22, v23, v24, v25, v26, a3, v15, value_4);
  v18 = OUTLINED_FUNCTION_266();
  v20 = v19(v18);
  if (!v20)
  {
    xpc_dictionary_set_int64(xdict, "TrackIDOut", 0);
  }

  return v20;
}

uint64_t FigRemakerFamilyServer_RemakerPrepareToAddVideoCompositionTrack()
{
  OUTLINED_FUNCTION_56_10();
  int64 = xpc_dictionary_get_int64(v1, "AnimationVideoLayerCount");
  result = FigRemote_StartCARenderServerAndReturnPort(&v4);
  if (!result)
  {
    *(v0 + 88) = 1;
    result = FigRemote_CreateLocalCAContext((v0 + 96));
    if (!result)
    {
      if (int64 < 1 || (result = FigRemote_CreateCAImageQueuesAndSlotIDs(int64, *(v0 + 96), (v0 + 112), (v0 + 120)), !result))
      {
        xpc_dictionary_set_mach_send();
        return FigXPCMessageSetCFArray();
      }
    }
  }

  return result;
}

uint64_t FigRemakerFamilyServer_RemakerAddVideoCompositionTrack()
{
  OUTLINED_FUNCTION_36_15();
  v44 = 0;
  v43 = 0;
  *&value[1] = *MEMORY[0x1E6960C70];
  v42 = *(MEMORY[0x1E6960C70] + 16);
  value[0] = 0;
  if (!v0 || (v4 = v3, v5 = v2, v6 = v1, v7 = v0, v8 = CFGetTypeID(v0), v8 != FigRemakerGetTypeID()))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    goto LABEL_64;
  }

  CMTime = FigXPCMessageCopyCFArray();
  if (CMTime)
  {
    goto LABEL_12;
  }

  CMTime = FigXPCMessageCopyCFArray();
  if (CMTime)
  {
    goto LABEL_12;
  }

  CMTime = FigXPCMessageCopyCFArray();
  if (CMTime)
  {
    goto LABEL_12;
  }

  CMTime = FigXPCMessageCopyCFArray();
  if (CMTime)
  {
    goto LABEL_12;
  }

  CMTime = FigXPCMessageCopyCFString();
  if (CMTime)
  {
    goto LABEL_12;
  }

  if (FigCFEqual())
  {
    uint64 = xpc_dictionary_get_uint64(v5, "VideoCompositorObjectID");
    if (v54)
    {
      CFRelease(v54);
      v54 = 0;
    }

    CMTime = FigVideoCompositorServerRetainVideoCompositorForID(uint64, &v54);
    if (CMTime)
    {
      goto LABEL_12;
    }
  }

  CMTime = FigXPCMessageCopyCFArray();
  if (CMTime)
  {
    goto LABEL_12;
  }

  CMTime = FigXPCMessageGetCMTime();
  if (CMTime)
  {
    goto LABEL_12;
  }

  int64 = xpc_dictionary_get_int64(v5, "SourceTrackIDForFrameTiming");
  v13 = xpc_dictionary_get_int64(v5, "RenderWidth");
  v14 = xpc_dictionary_get_int64(v5, "RenderHeight");
  v15 = xpc_dictionary_get_int64(v5, "Width");
  v40 = xpc_dictionary_get_int64(v5, "Height");
  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    goto LABEL_12;
  }

  v39 = xpc_dictionary_get_uint64(v5, "VideoCodecType");
  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    goto LABEL_12;
  }

  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    goto LABEL_12;
  }

  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    goto LABEL_12;
  }

  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    goto LABEL_12;
  }

  CMTime = frs_createVideoCompositionProcessorPropertiesFromSerializableProperties(v45, &v46);
  if (CMTime)
  {
    goto LABEL_12;
  }

  v38 = xpc_dictionary_get_int64(v5, "AnimationTrackID");
  CMTime = FigXPCMessageCopyCFArray();
  if (CMTime)
  {
    goto LABEL_12;
  }

  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    goto LABEL_12;
  }

  if (*(v6 + 96))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v43 = Mutable;
    if (!Mutable)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_5();
LABEL_64:
      CMTime = FigSignalErrorAtGM();
LABEL_12:
      v11 = CMTime;
      goto LABEL_32;
    }

    CFDictionarySetValue(Mutable, @"RenderCAContext", *(v6 + 96));
  }

  v16 = xpc_dictionary_get_uint64(v5, "AnimationRemoteContextID");
  if (v16)
  {
    CMTime = FigRemote_CreateLayerHostForRemoteContext(v16, (v6 + 104));
    if (CMTime)
    {
      goto LABEL_12;
    }
  }

  v17 = v14;
  v36 = v13;
  v37 = int64;
  v34 = v55;
  v35 = v56;
  v32 = v52;
  v33 = v53;
  v18 = v50;
  v30 = v51;
  v31 = v54;
  v28 = *(v6 + 112);
  v29 = *(v6 + 104);
  v19 = v7;
  v21 = v48;
  v20 = v49;
  v23 = v46;
  v22 = v47;
  v24 = v19;
  v25 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (v25)
  {
    v57 = *&value[1];
    v58 = v42;
    v11 = v25(v24, v35, v34, v33, v32, v31, v30, v29, v38, v28, v44, v43, &v57, __PAIR64__(v36, v37), __PAIR64__(v15, v17), v40, v18, v39, v20, v21, v22, v23, value);
    if (!v11)
    {
      xpc_dictionary_set_int64(v4, "TrackIDOut", value[0]);
    }
  }

  else
  {
    v11 = 4294954514;
  }

LABEL_32:
  if (v56)
  {
    CFRelease(v56);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  if (v52)
  {
    CFRelease(v52);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  if (v51)
  {
    CFRelease(v51);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (v49)
  {
    CFRelease(v49);
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

  if (v45)
  {
    CFRelease(v45);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  return v11;
}

void FigRemakerFamilyServer_RemakerAddPassthroughTrackWithOptions(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int valuea, int64_t value, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_653();
  OUTLINED_FUNCTION_572();
  if (v21 && (OUTLINED_FUNCTION_8_38(), v23 = CFGetTypeID(v22), v23 == FigRemakerGetTypeID()) && xpc_dictionary_get_int64(v20, "TrackID"))
  {
    OUTLINED_FUNCTION_1_1();
    if (!FigXPCMessageCopyCFDictionary())
    {
      if (*(*(OUTLINED_FUNCTION_49_7() + 16) + 120))
      {
        v24 = OUTLINED_FUNCTION_11_41();
        if (!v25(v24))
        {
          xpc_dictionary_set_int64(v19, "TrackIDOut", valuea);
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

  if (value)
  {
    CFRelease(value);
  }

  OUTLINED_FUNCTION_652();
}

void FigRemakerFamilyServer_RemakerAddTemporalMetadataTrackWithOptions(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int valuea, int64_t value, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_653();
  OUTLINED_FUNCTION_572();
  if (v21 && (OUTLINED_FUNCTION_8_38(), v23 = CFGetTypeID(v22), v23 == FigRemakerGetTypeID()) && xpc_dictionary_get_int64(v20, "TrackID"))
  {
    OUTLINED_FUNCTION_1_1();
    if (!FigXPCMessageCopyCFDictionary())
    {
      if (*(*(OUTLINED_FUNCTION_49_7() + 16) + 136))
      {
        v24 = OUTLINED_FUNCTION_11_41();
        if (!v25(v24))
        {
          xpc_dictionary_set_int64(v19, "TrackIDOut", valuea);
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

  if (value)
  {
    CFRelease(value);
  }

  OUTLINED_FUNCTION_652();
}

uint64_t FigRemakerFamilyServer_RemakerEstimateMaxSegmentDurationForFileSize()
{
  OUTLINED_FUNCTION_106(MEMORY[0x1E6960CC0]);
  if (v1 && (v2 = OUTLINED_FUNCTION_24_18(v1), v2 == FigRemakerGetTypeID()))
  {
    xpc_dictionary_get_int64(v0, "TargetFileSize");
    if (*(*(CMBaseObjectGetVTable() + 16) + 64))
    {
      v3 = OUTLINED_FUNCTION_266();
      result = v4(v3);
      if (!result)
      {
        OUTLINED_FUNCTION_7_54(result, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17);
        return FigXPCMessageSetCMTime();
      }
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t FigRemakerFamilyServer_RemakerSetTimeRange()
{
  OUTLINED_FUNCTION_50_7(MEMORY[0x1E6960C98]);
  if (v0 && (OUTLINED_FUNCTION_261(), v2 = CFGetTypeID(v1), v2 == FigRemakerGetTypeID()))
  {
    result = FigXPCMessageGetCMTimeRange();
    if (!result)
    {
      OUTLINED_FUNCTION_40_13(result, v4, v5, v6, v7, v8, v9, v10, v23, v26, v29, v32, v35, v38, v40, v42, v43, v45, v46, v47);
      v11 = OUTLINED_FUNCTION_46_9();
      v20 = *(v11 + 16);
      v19 = v11 + 16;
      if (*(v20 + 48))
      {
        v21 = OUTLINED_FUNCTION_20_19(v19, v12, v13, v14, v15, v16, v17, v18, v24, v25, v27, v28, v30, v31, v33, v34, v36, v37, v39, v41, v44);
        return v22(v21);
      }

      else
      {
        return 4294954514;
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t FigRemakerFamilyServer_RemakerCanPerformFastFrameRateConversion()
{
  OUTLINED_FUNCTION_106(MEMORY[0x1E6960CC0]);
  if (v2 && (OUTLINED_FUNCTION_565(), v4 = CFGetTypeID(v3), v4 == FigRemakerGetTypeID()) && (int64 = xpc_dictionary_get_int64(v1, "TrackID"), int64))
  {
    OUTLINED_FUNCTION_53_11();
    result = FigXPCMessageGetCMTime();
    if (!result)
    {
      OUTLINED_FUNCTION_7_54(result, v7, v8, v9, v10, v11, v12, v13, v26, v28, v29, v30, v31);
      VTable = CMBaseObjectGetVTable();
      v23 = *(VTable + 16);
      v22 = VTable + 16;
      if (*(v23 + 128))
      {
        v24 = OUTLINED_FUNCTION_10_40(v22, v15, v16, v17, v18, v19, v20, v21, v27);
        return v25(v0, int64, v32, v24);
      }

      else
      {
        return 4294954514;
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();

    return FigSignalErrorAtGM();
  }

  return result;
}

void FigRemakerFamilyServer_RemakerCopyTrackProperty(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef a9, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  if (!v19 || (OUTLINED_FUNCTION_8_38(), v21 = CFGetTypeID(v20), v21 != FigRemakerGetTypeID()) || !xpc_dictionary_get_int64(v18, "TrackID") || (OUTLINED_FUNCTION_1_1(), !FigXPCMessageCopyCFString()))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM();
  }

  OUTLINED_FUNCTION_652();
}

void FigRemakerFamilyServer_ReaderEnableOriginalSampleExtractionFromTrack(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int valuea, int64_t value, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_653();
  OUTLINED_FUNCTION_572();
  if (v21 && (OUTLINED_FUNCTION_8_38(), v23 = CFGetTypeID(v22), v23 == FigAssetReaderGetTypeID()) && xpc_dictionary_get_int64(v20, "TrackID"))
  {
    OUTLINED_FUNCTION_1_1();
    if (!FigXPCMessageCopyCFDictionary())
    {
      if (*(*(OUTLINED_FUNCTION_49_7() + 16) + 24))
      {
        v24 = OUTLINED_FUNCTION_11_41();
        if (!v25(v24))
        {
          xpc_dictionary_set_int64(v19, "TrackIDOut", valuea);
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

  if (value)
  {
    CFRelease(value);
  }

  OUTLINED_FUNCTION_652();
}

void FigRemakerFamilyServer_ReaderEnableOriginalSampleReferenceExtractionFromTrack(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int valuea, int64_t value, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_653();
  OUTLINED_FUNCTION_572();
  if (v21 && (OUTLINED_FUNCTION_8_38(), v23 = CFGetTypeID(v22), v23 == FigAssetReaderGetTypeID()) && xpc_dictionary_get_int64(v20, "TrackID"))
  {
    OUTLINED_FUNCTION_1_1();
    if (!FigXPCMessageCopyCFDictionary())
    {
      if (*(*(OUTLINED_FUNCTION_49_7() + 16) + 32))
      {
        v24 = OUTLINED_FUNCTION_11_41();
        if (!v25(v24))
        {
          xpc_dictionary_set_int64(v19, "TrackIDOut", valuea);
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

  if (value)
  {
    CFRelease(value);
  }

  OUTLINED_FUNCTION_652();
}

uint64_t FigRemakerFamilyServer_ReaderEnableDecodedAudioExtractionFromTrackWithAudioOptions()
{
  v13 = 0;
  length = 0;
  OUTLINED_FUNCTION_39_14();
  if (!v2 || (v3 = OUTLINED_FUNCTION_24_18(v2), v3 != FigAssetReaderGetTypeID()) || !xpc_dictionary_get_int64(v1, "TrackID"))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
LABEL_22:
    v4 = FigSignalErrorAtGM();
LABEL_23:
    v7 = v4;
    goto LABEL_13;
  }

  if (!xpc_dictionary_get_data(v1, "AudioDestASBD", &length) || length != 40)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    goto LABEL_22;
  }

  xpc_dictionary_get_data(v1, "AudioDestChannelLayout", &v13);
  v4 = FigXPCMessageCopyCFDictionary();
  if (v4)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_53_11();
  v4 = FigXPCMessageCopyCFDictionary();
  if (v4)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_29_12();
  v4 = FigXPCMessageCopyCFDictionary();
  if (v4)
  {
    goto LABEL_23;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 112))
  {
    v5 = OUTLINED_FUNCTION_266();
    v7 = v6(v5);
    if (!v7)
    {
      xpc_dictionary_set_int64(v0, "TrackIDOut", value);
    }
  }

  else
  {
    v7 = 4294954514;
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (value_4)
  {
    CFRelease(value_4);
  }

  return v7;
}

uint64_t FigRemakerFamilyServer_ReaderEnableDecodedVideoExtractionFromTrack(const void *a1)
{
  if (!a1 || (v3 = OUTLINED_FUNCTION_24_18(a1), v3 != FigAssetReaderGetTypeID()) || !xpc_dictionary_get_int64(v2, "TrackID"))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    return FigSignalErrorAtGM();
  }

  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    return CMTime;
  }

  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    return CMTime;
  }

  CMTime = FigXPCMessageGetCMTime();
  if (CMTime)
  {
    return CMTime;
  }

  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    return CMTime;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 48))
  {
    return 4294954514;
  }

  v5 = OUTLINED_FUNCTION_266();
  v7 = v6(v5);
  if (!v7)
  {
    xpc_dictionary_set_int64(v1, "TrackIDOut", 0);
  }

  return v7;
}

uint64_t FigRemakerFamilyServer_ReaderEnableVideoCompositionExtraction()
{
  OUTLINED_FUNCTION_36_15();
  v52 = 0;
  v53 = 0;
  v51 = 0;
  v50 = 0;
  *&value[1] = *MEMORY[0x1E6960C70];
  v49 = *(MEMORY[0x1E6960C70] + 16);
  value[0] = 0;
  if (!v0 || (v4 = v3, v5 = v2, v6 = v1, v7 = v0, v8 = CFGetTypeID(v0), v8 != FigAssetReaderGetTypeID()))
  {
    fig_log_get_emitter();
    goto LABEL_71;
  }

  LayerHostForRemoteContext = FigXPCMessageCopyCFArray();
  if (LayerHostForRemoteContext)
  {
    goto LABEL_12;
  }

  LayerHostForRemoteContext = FigXPCMessageCopyCFArray();
  if (LayerHostForRemoteContext)
  {
    goto LABEL_12;
  }

  LayerHostForRemoteContext = FigXPCMessageCopyCFArray();
  if (LayerHostForRemoteContext)
  {
    goto LABEL_12;
  }

  LayerHostForRemoteContext = FigXPCMessageCopyCFArray();
  if (LayerHostForRemoteContext)
  {
    goto LABEL_12;
  }

  LayerHostForRemoteContext = FigXPCMessageCopyCFString();
  if (LayerHostForRemoteContext)
  {
    goto LABEL_12;
  }

  if (FigCFEqual())
  {
    uint64 = xpc_dictionary_get_uint64(v5, "VideoCompositorObjectID");
    if (v61)
    {
      CFRelease(v61);
      v61 = 0;
    }

    LayerHostForRemoteContext = FigVideoCompositorServerRetainVideoCompositorForID(uint64, &v61);
    if (LayerHostForRemoteContext)
    {
      goto LABEL_12;
    }
  }

  LayerHostForRemoteContext = FigXPCMessageCopyCFArray();
  if (LayerHostForRemoteContext)
  {
    goto LABEL_12;
  }

  int64 = xpc_dictionary_get_int64(v5, "AnimationTrackID");
  LayerHostForRemoteContext = FigXPCMessageCopyCFArray();
  if (LayerHostForRemoteContext)
  {
    goto LABEL_12;
  }

  LayerHostForRemoteContext = FigXPCMessageCopyCFDictionary();
  if (LayerHostForRemoteContext)
  {
    goto LABEL_12;
  }

  if (*(v6 + 96))
  {
    v13 = MutableCopy;
    v14 = *MEMORY[0x1E695E480];
    if (MutableCopy)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(v14, 0, MutableCopy);
      CFRelease(v13);
      Mutable = MutableCopy;
      if (MutableCopy)
      {
LABEL_19:
        CFDictionarySetValue(Mutable, @"RenderCAContext", *(v6 + 96));
        goto LABEL_20;
      }
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(v14, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      MutableCopy = Mutable;
      if (Mutable)
      {
        goto LABEL_19;
      }
    }

    fig_log_get_emitter();
LABEL_71:
    LayerHostForRemoteContext = FigSignalErrorAtGM();
LABEL_12:
    v11 = LayerHostForRemoteContext;
    goto LABEL_35;
  }

LABEL_20:
  v16 = xpc_dictionary_get_uint64(v5, "AnimationRemoteContextID");
  if (v16)
  {
    LayerHostForRemoteContext = FigRemote_CreateLayerHostForRemoteContext(v16, (v6 + 104));
    if (LayerHostForRemoteContext)
    {
      goto LABEL_12;
    }
  }

  LayerHostForRemoteContext = FigXPCMessageGetCMTime();
  if (LayerHostForRemoteContext)
  {
    goto LABEL_12;
  }

  v17 = xpc_dictionary_get_int64(v5, "SourceTrackIDForFrameTiming");
  v18 = xpc_dictionary_get_int64(v5, "RenderWidth");
  v19 = xpc_dictionary_get_int64(v5, "RenderHeight");
  v20 = xpc_dictionary_get_int64(v5, "Width");
  v47 = xpc_dictionary_get_int64(v5, "Height");
  v46 = xpc_dictionary_get_uint64(v5, "VideoCodecType");
  LayerHostForRemoteContext = FigXPCMessageCopyCFDictionary();
  if (LayerHostForRemoteContext)
  {
    goto LABEL_12;
  }

  LayerHostForRemoteContext = FigXPCMessageCopyCFDictionary();
  if (LayerHostForRemoteContext)
  {
    goto LABEL_12;
  }

  LayerHostForRemoteContext = FigXPCMessageCopyCFDictionary();
  if (LayerHostForRemoteContext)
  {
    goto LABEL_12;
  }

  LayerHostForRemoteContext = FigXPCMessageCopyCFDictionary();
  if (LayerHostForRemoteContext)
  {
    goto LABEL_12;
  }

  LayerHostForRemoteContext = FigXPCMessageCopyCFDictionary();
  if (LayerHostForRemoteContext)
  {
    goto LABEL_12;
  }

  LayerHostForRemoteContext = FigXPCMessageCopyCFDictionary();
  if (LayerHostForRemoteContext)
  {
    goto LABEL_12;
  }

  LayerHostForRemoteContext = frs_createVideoCompositionProcessorPropertiesFromSerializableProperties(v51, &v52);
  if (LayerHostForRemoteContext)
  {
    goto LABEL_12;
  }

  LayerHostForRemoteContext = FigXPCMessageCopyCFDictionary();
  if (LayerHostForRemoteContext)
  {
    goto LABEL_12;
  }

  v41 = v19;
  v42 = v18;
  v43 = v17;
  v44 = int64;
  xdict = v4;
  v39 = v64;
  v40 = v65;
  v37 = v62;
  v38 = v63;
  v35 = v60;
  v36 = v61;
  v33 = *(v6 + 112);
  v34 = *(v6 + 104);
  v21 = v7;
  v22 = MutableCopy;
  v23 = v59;
  v25 = v56;
  v24 = v57;
  v27 = v54;
  v26 = v55;
  v29 = v52;
  v28 = v53;
  v30 = v21;
  v31 = *(*(CMBaseObjectGetVTable() + 16) + 160);
  if (v31)
  {
    v66 = *&value[1];
    v67 = v49;
    v11 = v31(v30, v40, v39, v38, v37, v36, v35, v34, v44, v33, v23, v22, &v66, __PAIR64__(v42, v43), __PAIR64__(v20, v41), v47, v24, v25, v46, v26, v27, v28, v29, v50, value);
    if (!v11)
    {
      xpc_dictionary_set_int64(xdict, "TrackIDOut", value[0]);
    }
  }

  else
  {
    v11 = 4294954514;
  }

LABEL_35:
  if (v65)
  {
    CFRelease(v65);
  }

  if (v64)
  {
    CFRelease(v64);
  }

  if (v63)
  {
    CFRelease(v63);
  }

  if (v62)
  {
    CFRelease(v62);
  }

  if (v61)
  {
    CFRelease(v61);
  }

  if (v60)
  {
    CFRelease(v60);
  }

  if (v59)
  {
    CFRelease(v59);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v57)
  {
    CFRelease(v57);
  }

  if (v56)
  {
    CFRelease(v56);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  if (v52)
  {
    CFRelease(v52);
  }

  if (v51)
  {
    CFRelease(v51);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  return v11;
}

uint64_t FigRemakerFamilyServer_ReaderEnableAudioMixdownExtraction(const void *a1)
{
  length = 0;
  cf = 0;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  memset(value, 0, sizeof(value));
  v17 = 0;
  if (!a1 || (v4 = OUTLINED_FUNCTION_48_12(a1), v4 != FigAssetReaderGetTypeID()))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
LABEL_27:
    v5 = FigSignalErrorAtGM();
LABEL_28:
    v15 = v5;
    goto LABEL_14;
  }

  v5 = FigXPCMessageCopyCFArray();
  if (v5)
  {
    goto LABEL_28;
  }

  v5 = frs_CopySourceAudioTrackArrayReplacingAudioProcessingTapServerObjects(cf, @"AssetReaderSource_AudioProcessingTap", &v17);
  if (v5)
  {
    goto LABEL_28;
  }

  data = xpc_dictionary_get_data(v3, "AudioDestASBD", &length);
  if (!data || length != 40)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    goto LABEL_27;
  }

  v7 = data;
  v8 = xpc_dictionary_get_data(v3, "AudioDestChannelLayout", &v21);
  v5 = FigXPCMessageCopyCFDictionary();
  if (v5)
  {
    goto LABEL_28;
  }

  v5 = FigXPCMessageCopyCFDictionary();
  if (v5)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_41_13();
  v5 = FigXPCMessageCopyCFDictionary();
  if (v5)
  {
    goto LABEL_28;
  }

  v9 = v17;
  v10 = v20;
  v11 = v21;
  v13 = *&value[1];
  v12 = v19;
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (v14)
  {
    v15 = v14(v2, v9, v7, v11, v8, v10, v12, v13, value);
    if (!v15)
    {
      xpc_dictionary_set_int64(v1, "TrackIDOut", value[0]);
    }
  }

  else
  {
    v15 = 4294954514;
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (*&value[1])
  {
    CFRelease(*&value[1]);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v15;
}

uint64_t FigRemakerFamilyServer_ReaderExtractAndRetainNextSampleBuffer(const void *a1, uint64_t a2, void *a3, void *a4)
{
  v34 = 0;
  sbuf = 0;
  if (!a1 || (v8 = CFGetTypeID(a1), v8 != FigAssetReaderGetTypeID()) || (int64 = xpc_dictionary_get_int64(a3, "TrackID"), !int64))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v13 = FigSignalErrorAtGM();
    goto LABEL_40;
  }

  v10 = xpc_dictionary_get_BOOL(a3, "WaitForSampleBuffer");
  v11 = xpc_dictionary_get_BOOL(a3, "RequestedSampleBuffer");
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (!v12)
  {
    SerializedAtomDataAndSurfaceForSampleBuffer = 4294954514;
    goto LABEL_31;
  }

  v13 = v12(a1, int64, v10, &v34, &sbuf);
  if (v13)
  {
    goto LABEL_40;
  }

  xpc_dictionary_set_BOOL(a4, "ExtractionCompleteOut", v34 != 0);
  if (sbuf)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  if (!v14)
  {
    goto LABEL_16;
  }

  v15 = CFDictionaryGetValue(*(a2 + 128), int64);
  value = v15;
  if (v15)
  {
    CFRetain(v15);
  }

  CFDictionaryGetValue(*(a2 + 136), int64);
  FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
  MediaType = CMFormatDescriptionGetMediaType(FormatDescription);
  SerializedAtomDataAndSurfaceForSampleBuffer = FigRemote_CreateSerializedAtomDataAndSurfaceForSampleBuffer();
  v19 = *(a2 + 128);
  if (value)
  {
    CFDictionarySetValue(v19, int64, value);
    CFRelease(value);
    if (SerializedAtomDataAndSurfaceForSampleBuffer)
    {
LABEL_14:
      CFDictionaryRemoveValue(*(a2 + 136), int64);
      goto LABEL_31;
    }
  }

  else
  {
    CFDictionaryRemoveValue(v19, int64);
    if (SerializedAtomDataAndSurfaceForSampleBuffer)
    {
      goto LABEL_14;
    }
  }

  CFDictionarySetValue(*(a2 + 136), int64, ((*MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8]));
  v13 = FigXPCMessageSetAndConsumeVMData();
  if (v13)
  {
LABEL_40:
    SerializedAtomDataAndSurfaceForSampleBuffer = v13;
    goto LABEL_31;
  }

  if (MediaType != 1952606066)
  {
    XPCObject = IOSurfaceCreateXPCObject(0);
    xpc_dictionary_set_value(a4, "IOSurface", XPCObject);
LABEL_16:
    SerializedAtomDataAndSurfaceForSampleBuffer = 0;
    goto LABEL_31;
  }

  TaggedBufferGroup = FigSampleBufferGetTaggedBufferGroup();
  if (TaggedBufferGroup)
  {
    Count = CMTaggedBufferGroupGetCount(TaggedBufferGroup);
    if (Count > 0)
    {
      v22 = Count;
      v23 = xpc_array_create(0, 0);
      if (v23)
      {
        v24 = 0;
        while (1)
        {
          CVPixelBufferAtIndex = FigTaggedBufferGroupGetCVPixelBufferAtIndex();
          if (!CVPixelBufferAtIndex)
          {
            break;
          }

          IOSurface = CVPixelBufferGetIOSurface(CVPixelBufferAtIndex);
          if (!IOSurface)
          {
            break;
          }

          v27 = IOSurfaceCreateXPCObject(IOSurface);
          if (!v27)
          {
            break;
          }

          v28 = v27;
          xpc_array_append_value(v23, v27);
          xpc_release(v28);
          if (v22 == ++v24)
          {
            SerializedAtomDataAndSurfaceForSampleBuffer = 0;
            v29 = v23;
            goto LABEL_29;
          }
        }
      }
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_20_0();
  SerializedAtomDataAndSurfaceForSampleBuffer = FigSignalErrorAtGM();
  v29 = 0;
LABEL_29:
  FigXPCRelease();
  FigXPCRelease();
  if (!SerializedAtomDataAndSurfaceForSampleBuffer)
  {
    xpc_dictionary_set_value(a4, "IOSurfaceArray", v29);
  }

LABEL_31:
  FigXPCRelease();
  FigXPCRelease();
  if (sbuf)
  {
    CFRelease(sbuf);
  }

  return SerializedAtomDataAndSurfaceForSampleBuffer;
}

uint64_t FigRemakerFamilyServer_ReaderStartExtractionForTime()
{
  OUTLINED_FUNCTION_106(MEMORY[0x1E6960C70]);
  if (v1 && (OUTLINED_FUNCTION_261(), v3 = CFGetTypeID(v2), v3 == FigAssetReaderGetTypeID()))
  {
    OUTLINED_FUNCTION_41_13();
    result = FigXPCMessageGetCMTime();
    if (!result)
    {
      OUTLINED_FUNCTION_7_54(result, v5, v6, v7, v8, v9, v10, v11, v24, v26, v27, v28, v29);
      VTable = CMBaseObjectGetVTable();
      v21 = *(VTable + 16);
      v20 = VTable + 16;
      if (*(v21 + 144))
      {
        v22 = OUTLINED_FUNCTION_10_40(v20, v13, v14, v15, v16, v17, v18, v19, v25);
        return v23(v0, v30, v22);
      }

      else
      {
        return 4294954514;
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t FigRemakerFamilyServer_ReaderStartExtractionForTimeRange()
{
  OUTLINED_FUNCTION_50_7(MEMORY[0x1E6960C98]);
  if (v0 && (OUTLINED_FUNCTION_261(), v2 = CFGetTypeID(v1), v2 == FigAssetReaderGetTypeID()))
  {
    result = FigXPCMessageGetCMTimeRange();
    if (!result)
    {
      OUTLINED_FUNCTION_40_13(result, v4, v5, v6, v7, v8, v9, v10, v23, v26, v29, v32, v35, v38, v40, v42, v43, v45, v46, v47);
      v11 = OUTLINED_FUNCTION_46_9();
      v20 = *(v11 + 16);
      v19 = v11 + 16;
      if (*(v20 + 96))
      {
        v21 = OUTLINED_FUNCTION_20_19(v19, v12, v13, v14, v15, v16, v17, v18, v24, v25, v27, v28, v30, v31, v33, v34, v36, v37, v39, v41, v44);
        return v22(v21);
      }

      else
      {
        return 4294954514;
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();

    return FigSignalErrorAtGM();
  }

  return result;
}

void FigRemakerFamilyServer_ReaderEnableCaptionExtractionFromTrack(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int valuea, int64_t value, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_653();
  OUTLINED_FUNCTION_572();
  if (v21 && (OUTLINED_FUNCTION_8_38(), v23 = CFGetTypeID(v22), v23 == FigAssetReaderGetTypeID()) && xpc_dictionary_get_int64(v20, "TrackID"))
  {
    OUTLINED_FUNCTION_1_1();
    if (!FigXPCMessageCopyCFDictionary())
    {
      if (*(*(OUTLINED_FUNCTION_49_7() + 16) + 136))
      {
        v24 = OUTLINED_FUNCTION_11_41();
        if (!v25(v24))
        {
          xpc_dictionary_set_int64(v19, "TrackIDOut", valuea);
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

  if (value)
  {
    CFRelease(value);
  }

  OUTLINED_FUNCTION_652();
}

void FigRemakerFamilyServer_WriterAddCaptionTrack(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int valuea, int64_t value, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_653();
  OUTLINED_FUNCTION_572();
  if (v21 && (v22 = OUTLINED_FUNCTION_48_12(v21), v22 == FigAssetWriterGetTypeID()))
  {
    if (!FigXPCMessageCopyCFDictionary())
    {
      xpc_dictionary_get_uint64(v20, "MediaType");
      xpc_dictionary_get_uint64(v20, "MediaSubType");
      if (*(*(CMBaseObjectGetVTable() + 16) + 152))
      {
        v23 = OUTLINED_FUNCTION_517();
        if (!v24(v23))
        {
          xpc_dictionary_set_int64(v19, "TrackIDOut", valuea);
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

void FigRemakerFamilyServer_WriterAddNativeTrack(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int64_t value, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  if (v20 && (v21 = OUTLINED_FUNCTION_24_18(v20), v21 == FigAssetWriterGetTypeID()) && xpc_dictionary_get_int64(v19, "MediaType"))
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 8))
    {
      v22 = OUTLINED_FUNCTION_517();
      if (!v23(v22))
      {
        xpc_dictionary_set_int64(v18, "TrackIDOut", 0);
      }
    }

    OUTLINED_FUNCTION_652();
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    OUTLINED_FUNCTION_652();

    FigSignalErrorAtGM();
  }
}

uint64_t FigRemakerFamilyServer_WriterAddAudioTrackWithCompression(uint64_t a1)
{
  length[0] = 0;
  if (!a1 || (OUTLINED_FUNCTION_8_38(), v4 = CFGetTypeID(v3), v4 != FigAssetWriterGetTypeID()))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    return FigSignalErrorAtGM();
  }

  if (!xpc_dictionary_get_data(v2, "AudioDestASBD", length) || length[0] != 40)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    return FigSignalErrorAtGM();
  }

  v5 = OUTLINED_FUNCTION_34_15();
  xpc_dictionary_get_data(v5, v6, v7);
  OUTLINED_FUNCTION_60_9();
  v8 = FigXPCMessageCopyCFDictionary();
  if (v8)
  {
    return v8;
  }

  OUTLINED_FUNCTION_1_1();
  v8 = FigXPCMessageCopyCFDictionary();
  if (v8)
  {
    return v8;
  }

  length[1] = 0;
  if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
  {
    return 4294954514;
  }

  v9 = OUTLINED_FUNCTION_266();
  v11 = v10(v9);
  if (!v11)
  {
    xpc_dictionary_set_int64(v1, "TrackIDOut", 0);
  }

  return v11;
}

void FigRemakerFamilyServer_WriterAddAudioTrackWithPresetCompression(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int64_t value, CFTypeRef cf, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  if (v21 && (v22 = OUTLINED_FUNCTION_24_18(v21), v22 == FigAssetWriterGetTypeID()))
  {
    OUTLINED_FUNCTION_29_12();
    if (!FigXPCMessageCopyCFString() && !FigXPCMessageCopyCFDictionary())
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 24))
      {
        v23 = OUTLINED_FUNCTION_266();
        if (!v24(v23))
        {
          xpc_dictionary_set_int64(v20, "TrackIDOut", 0);
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

  OUTLINED_FUNCTION_860();
}

uint64_t FigRemakerFamilyServer_WriterAddVideoTrackWithCompression(uint64_t a1)
{
  v27 = *MEMORY[0x1E6960C70];
  if (!a1 || (OUTLINED_FUNCTION_8_38(), v4 = CFGetTypeID(v3), v4 != FigAssetWriterGetTypeID()))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    return FigSignalErrorAtGM();
  }

  xpc_dictionary_get_int64(v2, "Width");
  xpc_dictionary_get_int64(v2, "Height");
  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    return CMTime;
  }

  xpc_dictionary_get_uint64(v2, "MediaType");
  xpc_dictionary_get_uint64(v2, "VideoCodecType");
  FigXPCMessageCopyCFDictionary();
  FigXPCMessageCopyCFDictionary();
  FigXPCMessageCopyCFDictionary();
  CMTime = FigXPCMessageGetCMTime();
  if (CMTime)
  {
    return CMTime;
  }

  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    return CMTime;
  }

  VTable = CMBaseObjectGetVTable();
  v16 = *(VTable + 16);
  v15 = VTable + 16;
  if (!*(v16 + 184))
  {
    return 4294954514;
  }

  OUTLINED_FUNCTION_61_10(v15, v7, v8, v9, v10, v11, v12, v13, v21, v22, v23, v24, v25, v1, v14, v27);
  v17 = OUTLINED_FUNCTION_266();
  v19 = v18(v17);
  if (!v19)
  {
    xpc_dictionary_set_int64(xdict, "TrackIDOut", 0);
  }

  return v19;
}

void FigRemakerFamilyServer_WriterCopyTrackProperty(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CVPixelBufferPoolRef pool, CFTypeRef cf, CFTypeRef cf1, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v20;
  a20 = v21;
  OUTLINED_FUNCTION_570();
  if (!v22)
  {
    goto LABEL_22;
  }

  v24 = v23;
  v25 = v22;
  v26 = CFGetTypeID(v22);
  if (v26 != FigAssetWriterGetTypeID())
  {
    goto LABEL_22;
  }

  int64 = xpc_dictionary_get_int64(v24, "TrackID");
  if (!int64)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_34_15();
  if (FigXPCMessageCopyCFString())
  {
    goto LABEL_15;
  }

  if (!cf1)
  {
    goto LABEL_22;
  }

  v28 = CFEqual(cf1, @"PixelBufferAndPoolAttributes");
  v29 = *MEMORY[0x1E695E480];
  if (v28)
  {
    v30 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v30 && !v30(v25, int64, @"AssetWriterTrack_PixelBufferPool", v29, &pool))
    {
      if (pool)
      {
        Attributes = CVPixelBufferPoolGetAttributes(pool);
        PixelBufferAttributes = CVPixelBufferPoolGetPixelBufferAttributes(pool);
        if (FigRemote_CreatePixelBufferAndPoolAttributesDictionary(v29, Attributes, PixelBufferAttributes, &cf))
        {
          goto LABEL_15;
        }

LABEL_14:
        FigXPCMessageSetCFObject();
        goto LABEL_15;
      }

LABEL_22:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      FigSignalErrorAtGM();
    }
  }

  else
  {
    v33 = cf1;
    v34 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v34 && !v34(v25, int64, v33, v29, &cf))
    {
      goto LABEL_14;
    }
  }

LABEL_15:
  if (pool)
  {
    CFRelease(pool);
  }

  if (cf1)
  {
    CFRelease(cf1);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_860();
}

void FigRemakerFamilyServer_WriterSetTrackProperty(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, CFTypeRef a11, CFTypeRef cf1, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v20;
  a20 = v21;
  OUTLINED_FUNCTION_570();
  if (!v22)
  {
    goto LABEL_22;
  }

  v24 = v23;
  v25 = CFGetTypeID(v22);
  if (v25 != FigAssetWriterGetTypeID() || !xpc_dictionary_get_int64(v24, "TrackID"))
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_34_15();
  if (FigXPCMessageCopyCFString())
  {
    goto LABEL_15;
  }

  if (cf1)
  {
    OUTLINED_FUNCTION_60_9();
    if (FigXPCMessageCopyCFObject())
    {
      goto LABEL_15;
    }

    if (CFEqual(cf1, @"AssetWriterTrack_Metadata"))
    {
      if (FigRemote_CreateMetadataFromBinaryPListData(a11, *MEMORY[0x1E695E480], &cf))
      {
        goto LABEL_15;
      }

      v26 = a11;
      a11 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      if (v26)
      {
        CFRelease(v26);
      }
    }

    if (*(*(CMBaseObjectGetVTable() + 16) + 40))
    {
      v27 = OUTLINED_FUNCTION_69_0();
      v28(v27);
    }
  }

  else
  {
LABEL_22:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM();
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  if (cf1)
  {
    CFRelease(cf1);
  }

  if (a11)
  {
    CFRelease(a11);
  }

  OUTLINED_FUNCTION_860();
}

uint64_t FigRemakerFamilyServer_WriterBeginSession(const void *a1)
{
  if (a1 && (v2 = CFGetTypeID(a1), v2 == FigAssetWriterGetTypeID()))
  {
    result = FigXPCMessageGetCMTime();
    if (!result)
    {
      v4 = *(*(CMBaseObjectGetVTable() + 16) + 72);
      if (v4)
      {
        v5 = 0uLL;
        v6 = 0;
        return v4(a1, &v5);
      }

      else
      {
        return 4294954514;
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t FigRemakerFamilyServer_WriterAddSampleBuffer()
{
  OUTLINED_FUNCTION_570();
  if (!v0 || (v3 = v2, v4 = v1, v5 = CFGetTypeID(v0), v5 != FigAssetWriterGetTypeID()) || (int64 = xpc_dictionary_get_int64(v3, "TrackID")) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    SampleBufferFromSerializedAtomBlockBufferAndSurface = FigSignalErrorAtGM();
    v10 = 0;
    goto LABEL_18;
  }

  v7 = CFDictionaryGetValue(*(v4 + 128), int64);
  v8 = v7;
  value = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  v9 = xpc_dictionary_get_value(v3, "IOSurface");
  v10 = IOSurfaceLookupFromXPCObject(v9);
  FigXPCMessageCreateBlockBufferData();
  if (!cf)
  {
    if (v8)
    {
      CFRelease(v8);
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    v13 = FigSignalErrorAtGM();
    goto LABEL_16;
  }

  SampleBufferFromSerializedAtomBlockBufferAndSurface = FigRemote_CreateSampleBufferFromSerializedAtomBlockBufferAndSurface();
  v12 = *(v4 + 128);
  if (!value)
  {
    CFDictionaryRemoveValue(v12, int64);
    if (SampleBufferFromSerializedAtomBlockBufferAndSurface)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  CFDictionarySetValue(v12, int64, value);
  CFRelease(value);
  if (!SampleBufferFromSerializedAtomBlockBufferAndSurface)
  {
LABEL_14:
    if (!*(*(CMBaseObjectGetVTable() + 16) + 80))
    {
      SampleBufferFromSerializedAtomBlockBufferAndSurface = 4294954514;
      goto LABEL_18;
    }

    v14 = OUTLINED_FUNCTION_266();
    v13 = v15(v14);
LABEL_16:
    SampleBufferFromSerializedAtomBlockBufferAndSurface = v13;
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return SampleBufferFromSerializedAtomBlockBufferAndSurface;
}

uint64_t FigRemakerFamilyServer_WriterAddPixelBuffer(int a1, CFTypeRef cf, void *a3)
{
  v36 = *MEMORY[0x1E6960C70];
  v35 = 0;
  if (!cf || (v5 = CFGetTypeID(cf), v5 != FigAssetWriterGetTypeID()) || (int64 = xpc_dictionary_get_int64(a3, "TrackID"), !int64))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    CMTime = FigSignalErrorAtGM();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_53_11();
  CMTime = FigXPCMessageGetCMTime();
  if (CMTime)
  {
LABEL_7:
    v15 = CMTime;
    goto LABEL_18;
  }

  if (xpc_dictionary_get_value(a3, "PixelBuffer"))
  {
    FigXPCServerGetConnectionRefcon();
    CMTime = FigPixelBufferRecipientCopyPixelBufferFromXPCMessage();
    if (CMTime)
    {
      goto LABEL_7;
    }

    v17 = 0;
  }

  else
  {
    value = xpc_dictionary_get_value(a3, "IOSurface");
    v17 = IOSurfaceLookupFromXPCObject(value);
    CMTime = FigXPCMessageCreateBlockBufferData();
    if (CMTime)
    {
      goto LABEL_14;
    }

    CMTime = FigRemote_CreatePixelBufferFromSerializedAtomDataAndSurface();
    if (CMTime)
    {
      goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_7_54(CMTime, v8, v9, v10, v11, v12, v13, v14, v31, v33, v34, 0, v36);
  VTable = CMBaseObjectGetVTable();
  v27 = *(VTable + 16);
  v26 = VTable + 16;
  if (!*(v27 + 88))
  {
    v15 = 4294954514;
    if (!v17)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v28 = OUTLINED_FUNCTION_10_40(v26, v19, v20, v21, v22, v23, v24, v25, v32);
  CMTime = v29(cf, int64, 0, v37, v28);
LABEL_14:
  v15 = CMTime;
  if (v17)
  {
LABEL_17:
    CFRelease(v17);
  }

LABEL_18:
  if (v35)
  {
    CFRelease(v35);
  }

  return v15;
}

uint64_t FigRemakerFamilyServer_WriterAddTaggedPixelBufferGroup()
{
  OUTLINED_FUNCTION_106(MEMORY[0x1E6960C70]);
  if (v0 && (v2 = v1, v3 = CFGetTypeID(v0), v3 == FigAssetWriterGetTypeID()) && xpc_dictionary_get_int64(v2, "TrackID"))
  {
    OUTLINED_FUNCTION_41_13();
    CMTime = FigXPCMessageGetCMTime();
    if (CMTime)
    {
      return CMTime;
    }

    if (frs_shouldUseFigPixelBufferMemorySharing_onceToken != -1)
    {
      dispatch_once(&frs_shouldUseFigPixelBufferMemorySharing_onceToken, &__block_literal_global_147);
    }

    FigXPCServerGetConnectionRefcon();
    v5 = FigPixelBufferRecipientCopyTaggedBufferGroupFromXPCMessage();
    if (v5)
    {
      return v5;
    }

    OUTLINED_FUNCTION_7_54(v5, v6, v7, v8, v9, v10, v11, v12, v27, v29, v30, 0, v32);
    VTable = CMBaseObjectGetVTable();
    v23 = *(VTable + 16);
    v22 = VTable + 16;
    if (*(v23 + 176))
    {
      OUTLINED_FUNCTION_10_40(v22, v15, v16, v17, v18, v19, v20, v21, v28);
      v24 = OUTLINED_FUNCTION_69_0();
      v13 = v25(v24);
    }

    else
    {
      v13 = 4294954514;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    return v13;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();

    return FigSignalErrorAtGM();
  }
}

uint64_t FigRemakerFamilyServer_EstablishPixelBufferRecipient()
{
  OUTLINED_FUNCTION_565();
  if (FigXPCServerGetConnectionRefcon())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();

    return FigSignalErrorAtGM();
  }

  else
  {
    result = FigPixelBufferRecipientCreateWithXPCMessage1AndUpdateXPCMessage2();
    if (!result)
    {
      return FigXPCServerSetConnectionRefcon();
    }
  }

  return result;
}

uint64_t FigRemakerFamilyServer_WriterEndSession()
{
  OUTLINED_FUNCTION_106(MEMORY[0x1E6960C70]);
  if (v1 && (OUTLINED_FUNCTION_261(), v3 = CFGetTypeID(v2), v3 == FigAssetWriterGetTypeID()))
  {
    OUTLINED_FUNCTION_41_13();
    result = FigXPCMessageGetCMTime();
    if (!result)
    {
      OUTLINED_FUNCTION_7_54(result, v5, v6, v7, v8, v9, v10, v11, v24, v26, v27, v28, v29);
      VTable = CMBaseObjectGetVTable();
      v21 = *(VTable + 16);
      v20 = VTable + 16;
      if (*(v21 + 112))
      {
        v22 = OUTLINED_FUNCTION_10_40(v20, v13, v14, v15, v16, v17, v18, v19, v25);
        return v23(v0, v30, v22);
      }

      else
      {
        return 4294954514;
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t FigRemakerFamilyServer_WriterBeginPass(uint64_t a1)
{
  if (a1 && (OUTLINED_FUNCTION_565(), v4 = CFGetTypeID(v3), v4 == FigAssetWriterGetTypeID()) && (int64 = xpc_dictionary_get_int64(v2, "TrackID"), int64))
  {
    v6 = FigXPCMessageCopyCFDictionary();
    if (!v6)
    {
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 136);
      if (!v7)
      {
        return 4294954514;
      }

      return v7(v1, int64, 0);
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    return FigSignalErrorAtGM();
  }

  return v6;
}

void frs_FinalizeClient(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  *(a1 + 48) = 1;
  v2 = &qword_1ED4CAEF0;
  if (*(a1 + 32))
  {
    frs_runningStatsUpdateProgress(a1);
    FigSimpleMutexLock();
    v3 = &qword_1ED4CAEF0;
    do
    {
      v3 = *v3;
      if (!v3)
      {
        FigSimpleMutexUnlock();
        goto LABEL_8;
      }
    }

    while (*(v3 + 2) != *(a1 + 16));
    FigSimpleMutexUnlock();
    if (v3[2])
    {
      FigStopForwardingMediaServicesProcessDeathNotification();
    }

LABEL_8:
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v5)
      {
        v5(v4);
      }

      v6 = *(a1 + 32);
      if (v6)
      {
        CFRelease(v6);
        *(a1 + 32) = 0;
      }
    }
  }

  cf = 0;
  value = *MEMORY[0x1E6960C70];
  v7 = *(MEMORY[0x1E6960C70] + 12);
  timescale = *(MEMORY[0x1E6960C70] + 8);
  v8 = *(MEMORY[0x1E6960C70] + 16);
  v33 = value;
  v34 = timescale;
  FigApplicationStateMonitorCopyClientBundleIdentifierIfAvailable();
  epoch = v8;
  flags = v7;
  if (*(a1 + 166))
  {
    v11 = *(a1 + 184);
    epoch = v8;
    flags = v7;
    if (v11 >= 1)
    {
      epoch = v8;
      flags = v7;
      if (*(a1 + 168) >= 1)
      {
        OUTLINED_FUNCTION_63_7(v11, v30, time.value);
        value = time.value;
        flags = time.flags;
        timescale = time.timescale;
        epoch = time.epoch;
      }
    }
  }

  v12 = *(a1 + 192);
  if (v12 >= 1 && *(a1 + 184) >= 1)
  {
    OUTLINED_FUNCTION_63_7(v12, v30, time.value);
    v33 = time.value;
    v7 = time.flags;
    v34 = time.timescale;
    v8 = time.epoch;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v14 = Mutable;
    FigCFDictionarySetInt64();
    FigCFDictionarySetInt64();
    FigCFDictionarySetInt64();
    FigCFDictionarySetInt64();
    FigCFDictionarySetFloat32();
    FigCFDictionarySetInt64();
    FigCFDictionarySetInt64();
    FigCFDictionarySetInt64();
    FigCFDictionarySetInt64();
    FigCFDictionarySetInt64();
    FigCFDictionarySetInt64();
    if (flags)
    {
      time.value = value;
      time.timescale = timescale;
      time.flags = flags;
      time.epoch = epoch;
      CMTimeGetSeconds(&time);
      FigCFDictionarySetFloat();
    }

    if (v7)
    {
      time.value = v33;
      time.timescale = v34;
      time.flags = v7;
      time.epoch = v8;
      CMTimeGetSeconds(&time);
      FigCFDictionarySetFloat();
    }

    FigCFDictionarySetValue();
    FigRemakerReportOneRTCMessage(*(a1 + 152), 2, v14);
    CFRelease(v14);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (*(a1 + 88))
  {
    FigRemote_RemoveReleaseAndClearLayerHost((a1 + 104));
    if (*(a1 + 120))
    {
      FigRemote_RemoveReleaseAndClearCAImageQueuesAndSlotIDs(*(a1 + 96), (a1 + 112), (a1 + 120));
    }

    FigRemote_ReleaseAndClearLocalCAContextAndShutDownCAServer((a1 + 96), MEMORY[0x1E69E96A0]);
  }

  v15 = &qword_1ED4CAEE8;
  FigSimpleMutexLock();
  v16 = &qword_1ED4CAEE8;
  do
  {
    v16 = *v16;
    if (!v16)
    {
      goto LABEL_54;
    }
  }

  while (v16 != a1);
  if (*(a1 + 49))
  {
    v17 = *(a1 + 16);
  }

  else
  {
    v17 = 0;
  }

  for (i = qword_1ED4CAEE8; i != a1; i = *i)
  {
    v15 = i;
  }

  *v15 = *i;
  --_MergedGlobals_79;
  FigSimpleMutexUnlock();
  if (v17)
  {
    FigSimpleMutexLock();
    do
    {
      v2 = *v2;
      if (!v2)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_5();
        FigSignalErrorAtGM();
        goto LABEL_54;
      }
    }

    while (*(v2 + 2) != v17);
    v19 = *(v2 + 3) - 1;
    *(v2 + 3) = v19;
    if (v19 || !v2[2])
    {
LABEL_54:
      FigSimpleMutexUnlock();
      goto LABEL_55;
    }

    v20 = &qword_1ED4CAEF0;
    v21 = &qword_1ED4CAEF0;
    while (1)
    {
      v21 = *v21;
      if (!v21)
      {
        break;
      }

      if (v2 == v21)
      {
        for (j = qword_1ED4CAEF0; j != v2; j = *j)
        {
          v20 = j;
        }

        *v20 = *j;
        --_MergedGlobals_79;
        break;
      }
    }

    FigSimpleMutexUnlock();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    v29 = v2[2];
    if (v29)
    {
      CFRelease(v29);
      v2[2] = 0;
    }

    free(v2);
  }

LABEL_55:
  *(a1 + 8) = 0;
  v23 = *(a1 + 128);
  if (v23)
  {
    CFRelease(v23);
    *(a1 + 128) = 0;
  }

  v24 = *(a1 + 136);
  if (v24)
  {
    CFRelease(v24);
    *(a1 + 136) = 0;
  }

  v25 = *(a1 + 24);
  if (v25)
  {
    CFRelease(v25);
    *(a1 + 24) = 0;
  }

  v26 = *(a1 + 40);
  if (v26)
  {
    os_release(v26);
    *(a1 + 40) = 0;
  }

  v27 = *(a1 + 144);
  if (v27)
  {
    v28 = *v27;
    if (!*v27 || (*v27 = 0, xpc_release(v28), (v27 = *(a1 + 144)) != 0))
    {
      *(a1 + 144) = 0;
      free(v27);
    }
  }

  bzero(a1, 0xD0uLL);
  free(a1);
}

uint64_t fragmentedHeaderDataCallback(uint64_t a1, xpc_connection_t *a2)
{
  v3 = FigXPCCreateBasicMessage();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = FigXPCMessageSetBlockBuffer();
    if (!v4)
    {
      xpc_connection_send_message(*a2, 0);
    }
  }

  FigXPCRelease();
  return v4;
}

uint64_t fragmentedMediaDataCallback(uint64_t a1, uint64_t a2, xpc_connection_t *a3)
{
  v4 = FigXPCCreateBasicMessage();
  if (v4 || (v4 = FigXPCMessageSetBlockBuffer(), v4))
  {
    v5 = v4;
  }

  else
  {
    v5 = FigXPCMessageSetCFDictionary();
    if (!v5)
    {
      xpc_connection_send_message(*a3, 0);
    }
  }

  FigXPCRelease();
  return v5;
}

uint64_t FigRemakerServerStart_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemakerFamilyServer_RemakerStartOutput_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemakerFamilyServer_ReaderStartExtractionForTimeRanges_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemakerFamilyServer_ReaderStartExtractionForTimeRangesFromTrack_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemakerFamilyServer_ReaderStartExtractionForTimeRangesFromTrack_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemakerFamilyServer_WriterIsTrackQueueAboveHighWaterLevel_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemakerFamilyServer_WriterIsTrackQueueAboveHighWaterLevel_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemakerFamilyServer_WriterMarkEndOfDataForTrack_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemakerFamilyServer_WriterMarkEndOfDataForTrack_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemakerFamilyServer_WriterFinish_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemakerFamilyServer_WriterFinishAsync_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemakerFamilyServer_WriterEndPass_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemakerFamilyServer_WriterEndPass_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemakerFamilyServer_WriterFlush_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t frs_MakeWrapperForRemakerFamilyInternal_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t frs_MakeWrapperForRemakerFamilyInternal_cold_2(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_5();
  result = FigSignalErrorAtGM();
  v5 = result;
  if (result)
  {
    result = FigRemakerFamilyServer_Destroy(a1, 0);
  }

  *a2 = v5;
  return result;
}

uint64_t frs_CopySourceAudioTrackArrayReplacingAudioProcessingTapServerObjects_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t frs_CopySourceAudioTrackArrayReplacingAudioProcessingTapServerObjects_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t frs_CopySourceAudioTrackArrayReplacingAudioProcessingTapServerObjects_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t frs_CopySourceAudioTrackArrayReplacingAudioProcessingTapServerObjects_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t frs_createVideoCompositionProcessorPropertiesFromSerializableProperties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t frs_createVideoCompositionProcessorPropertiesFromSerializableProperties_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t frs_createVideoCompositionProcessorPropertiesFromSerializableProperties_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t frs_createVideoCompositionProcessorPropertiesFromSerializableProperties_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlaySubPipeManagerForRenderPipelineCreate(uint64_t a1, const void *a2, const void *a3, const void *a4, const void *a5, const __CFDictionary *a6, void *a7)
{
  v46 = *MEMORY[0x1E69E9840];
  value = 0;
  v43 = 0;
  memset(&v41, 0, sizeof(v41));
  CMTimeMake(&v41, 0, 1000);
  memset(&v40, 0, sizeof(v40));
  CMTimeMake(&v40, 1, 1000);
  BOOLean = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  v11 = a2;
  fig_note_initialize_category_with_default_work_cf();
  if (!a2 || !a4 || !a3 || !a7)
  {
    OUTLINED_FUNCTION_5_8();
    v20 = FigSignalErrorAtGM();
    goto LABEL_41;
  }

  v12 = a7;
  if (qword_1ED4CAF18 != -1)
  {
    dispatch_once(&qword_1ED4CAF18, &__block_literal_global_111);
  }

  if (qword_1ED4CAF08 != -1)
  {
    dispatch_once(&qword_1ED4CAF08, &__block_literal_global_56);
  }

  CMDerivedObjectCreate();
  if (!v43)
  {
    goto LABEL_39;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 144) = CFRetain(a4);
  *(DerivedStorage + 152) = 0;
  *(DerivedStorage + 40) = CFRetain(a3);
  v14 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 72) = v14;
  if (!v14)
  {
    goto LABEL_39;
  }

  v15 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 32) = v15;
  if (!v15)
  {
    goto LABEL_39;
  }

  v16 = a5;
  if (a5)
  {
    v16 = CFRetain(a5);
  }

  *(DerivedStorage + 48) = v16;
  *(DerivedStorage + 56) = 0xC12E847FC0000000;
  *(DerivedStorage + 64) = 0;
  *(DerivedStorage + 168) = 0;
  *(DerivedStorage + 178) = 0;
  CMBaseObject = FigBufferedAirPlayOutputGetCMBaseObject(*(DerivedStorage + 40));
  v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v18)
  {
    goto LABEL_24;
  }

  v19 = *MEMORY[0x1E695E480];
  v20 = v18(CMBaseObject, @"ALACIsAllowed", *MEMORY[0x1E695E480], &BOOLean);
  if (v20)
  {
LABEL_41:
    v31 = v20;
    goto LABEL_25;
  }

  v21 = BOOLean;
  if (BOOLean)
  {
    v21 = CFBooleanGetValue(BOOLean);
  }

  *(DerivedStorage + 177) = v21;
  v22 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(DerivedStorage + 24) = v22;
  if (!v22)
  {
LABEL_39:
    v31 = 4294954510;
    goto LABEL_25;
  }

  CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v23 = OUTLINED_FUNCTION_312();
  v20 = CMBufferQueueCreate(v23, v24, v25, v26);
  if (v20)
  {
    goto LABEL_41;
  }

  v27 = *(DerivedStorage + 112);
  v45 = v40;
  v44 = v41;
  v20 = FigSampleBufferConsumerCreateForBufferQueue(v27, &v45.value, &v44.value, (DerivedStorage + 80));
  if (v20)
  {
    goto LABEL_41;
  }

  v20 = CMBufferQueueInstallTriggerWithIntegerThreshold(*(DerivedStorage + 112), bapspManager_sourceDataBecameReady, *(DerivedStorage + 24), 11, 0, (DerivedStorage + 120));
  if (v20)
  {
    goto LABEL_41;
  }

  v20 = FigSampleBufferConsumerCreateForSampleBufferConsumer("sbcMediator", (DerivedStorage + 88));
  if (v20)
  {
    goto LABEL_41;
  }

  v28 = *(DerivedStorage + 88);
  v29 = *(DerivedStorage + 24);
  v30 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v30)
  {
LABEL_24:
    v31 = 4294954514;
    goto LABEL_25;
  }

  v20 = v30(v28, bapspManager_mediatorLowWaterTriggerCallback, v29, DerivedStorage + 128);
  if (v20)
  {
    goto LABEL_41;
  }

  CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v20 = CMBufferQueueCreate(v19, 0, CallbacksForUnsortedSampleBuffers, (DerivedStorage + 160));
  if (v20)
  {
    goto LABEL_41;
  }

  *(DerivedStorage + 96) = CFRetain(v11);
  *(DerivedStorage + 136) = 0;
  *DerivedStorage = 0;
  if (a6 && CFDictionaryGetValueIfPresent(a6, @"LoggingID", &value))
  {
    CFStringGetCString(value, DerivedStorage, 20, 0x600u);
  }

  v34 = MEMORY[0x1E6960CC0];
  *(DerivedStorage + 180) = *MEMORY[0x1E6960CC0];
  *(DerivedStorage + 196) = *(v34 + 16);
  v35 = MEMORY[0x1E6960C70];
  *(DerivedStorage + 204) = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 220) = *(v35 + 16);
  *(DerivedStorage + 228) = 1;
  if (dword_1ED4CAF04)
  {
    CMTimeMake(&v45, dword_1ED4CAF04, 1000);
    *(DerivedStorage + 204) = v45;
    if (_MergedGlobals_80)
    {
      *(DerivedStorage + 228) = 2;
    }
  }

  if (dword_1EAF17468)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v31 = 0;
  *v12 = v43;
  v43 = 0;
LABEL_25:
  if (BOOLean)
  {
    CFRelease(BOOLean);
  }

  bapspManager_releaseAsync(v43);
  return v31;
}

void bapspManager_sourceDataBecameReady()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    if (!*(CMBaseObjectGetDerivedStorage() + 178))
    {
      CFRetain(v1);
      OUTLINED_FUNCTION_2_49();
      OUTLINED_FUNCTION_43_7();
      v4 = __bapspManager_sourceDataBecameReady_block_invoke;
      v5 = &__block_descriptor_tmp_143_0;
      v6 = v1;
      dispatch_async(v2, block);
    }

    CFRelease(v1);
  }
}

void bapspManager_mediatorLowWaterTriggerCallback()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    if (!*(CMBaseObjectGetDerivedStorage() + 178))
    {
      CFRetain(v1);
      OUTLINED_FUNCTION_2_49();
      OUTLINED_FUNCTION_43_7();
      v4 = __bapspManager_mediatorLowWaterTriggerCallback_block_invoke;
      v5 = &__block_descriptor_tmp_144;
      v6 = v1;
      dispatch_async(v2, block);
    }

    CFRelease(v1);
  }
}

void bapspManager_releaseAsync(uint64_t a1)
{
  if (a1)
  {
    dispatch_get_global_queue(0, 0);
    OUTLINED_FUNCTION_2_49();
    OUTLINED_FUNCTION_43_7();
    v4 = __bapspManager_releaseAsync_block_invoke;
    v5 = &__block_descriptor_tmp_145_0;
    v6 = a1;
    dispatch_async(v2, block);
  }
}

uint64_t bapspManager_invalidate(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  v43 = 0;
  v44 = &v43;
  OUTLINED_FUNCTION_20_20();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = DerivedStorage;
  if (dword_1EAF17468)
  {
    v42 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v12 = OUTLINED_FUNCTION_16_29();
    os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_40();
    if (v1)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      v45 = 136315906;
      OUTLINED_FUNCTION_12_36();
      v46 = a1;
      v47 = 2082;
      v48 = v13;
      v49 = 1024;
      v50 = v14;
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    DerivedStorage = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*(v11 + 178))
  {
    *(v11 + 178) = 1;
    v15 = *(v11 + 9);
    if (v15)
    {
      dispatch_sync(v15, &__block_literal_global_126);
    }

    v16 = *(v11 + 11);
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v17)
    {
      v17(v16, @"DownstreamConsumer", 0);
    }

    *(v44 + 6) = 0;
    OUTLINED_FUNCTION_6_31();
    v36 = 0x40000000;
    v37 = __bapspManager_invalidate_block_invoke_2;
    v38 = &unk_1E748DE58;
    v39 = &v43;
    v40 = a1;
    dispatch_sync(v18, block);
    v4 = *(v11 + 15);
    if (v4)
    {
      CMBufferQueueRemoveTrigger(*(v11 + 14), v4);
      *(v11 + 15) = 0;
    }

    v19 = *(v11 + 16);
    if (v19)
    {
      v20 = *(v11 + 11);
      v21 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v21)
      {
        v21(v20, v19);
      }

      *(v11 + 16) = 0;
    }

    v22 = *(v11 + 5);
    if (v22)
    {
      CFRelease(v22);
      *(v11 + 5) = 0;
    }

    v23 = *(v11 + 6);
    if (v23)
    {
      CFRelease(v23);
      *(v11 + 6) = 0;
    }

    v24 = *(v11 + 18);
    if (v24)
    {
      CFRelease(v24);
      *(v11 + 18) = 0;
    }

    v25 = *(v11 + 19);
    if (v25)
    {
      CFRelease(v25);
      *(v11 + 19) = 0;
    }

    v26 = *(v11 + 10);
    if (v26)
    {
      CFRelease(v26);
      *(v11 + 10) = 0;
    }

    v27 = *(v11 + 14);
    if (v27)
    {
      CFRelease(v27);
      *(v11 + 14) = 0;
    }

    v28 = *(v11 + 11);
    if (v28)
    {
      CFRelease(v28);
      *(v11 + 11) = 0;
    }

    v29 = *(v11 + 12);
    if (v29)
    {
      CFRelease(v29);
      *(v11 + 12) = 0;
    }

    v30 = *(v11 + 20);
    if (v30)
    {
      CFRelease(v30);
      *(v11 + 20) = 0;
    }

    v31 = *(v11 + 8);
    if (v31)
    {
      CFRelease(v31);
      *(v11 + 8) = 0;
    }

    DerivedStorage = *(v11 + 21);
    if (DerivedStorage)
    {
      CFRelease(DerivedStorage);
      *(v11 + 21) = 0;
    }
  }

  OUTLINED_FUNCTION_26_20(DerivedStorage, v4, v5, v6, v7, v8, v9, v10, v33, v34);
  return 0;
}

void bapspManager_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17468)
  {
    v4 = OUTLINED_FUNCTION_9_41();
    OUTLINED_FUNCTION_311(v4, v5, v6, v7, v8, v9, v10, v11, v15, v16, v17, v18, SBYTE2(v18), BYTE3(v18), SHIDWORD(v18));
    OUTLINED_FUNCTION_40();
    if (v1)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  bapspManager_invalidate(a1);
  v12 = DerivedStorage[9];
  if (v12)
  {
    dispatch_release(v12);
    DerivedStorage[9] = 0;
  }

  v13 = DerivedStorage[4];
  if (v13)
  {
    dispatch_release(v13);
    DerivedStorage[4] = 0;
  }

  v14 = DerivedStorage[3];
  if (v14)
  {
    CFRelease(v14);
  }
}

uint64_t bapspManager_copyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = 0;
  v22 = &v21;
  OUTLINED_FUNCTION_20_20();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 178))
  {
    OUTLINED_FUNCTION_2_49();
    OUTLINED_FUNCTION_43_7();
    block[2] = __bapspManager_copyProperty_block_invoke;
    block[3] = &unk_1E748DF50;
    block[4] = &v21;
    block[5] = a1;
    block[6] = a2;
    block[7] = a3;
    block[8] = a4;
    dispatch_sync(v16, block);
  }

  v17 = *(v22 + 6);
  OUTLINED_FUNCTION_26_20(DerivedStorage, v9, v10, v11, v12, v13, v14, v15, v19, block[0]);
  return v17;
}

uint64_t bapspManager_clearCurrentSubPipe(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 104))
  {
    return 0;
  }

  v3 = DerivedStorage;
  if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
  {
    return 4294954514;
  }

  v4 = OUTLINED_FUNCTION_16_6();
  result = v5(v4);
  if (result)
  {
    return result;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 40))
  {
    return 4294954514;
  }

  v7 = OUTLINED_FUNCTION_16_6();
  result = v8(v7);
  if (result)
  {
    return result;
  }

  result = bapspManager_removeListenersForSubPipe(a1, *(v3 + 104));
  if (result)
  {
    return result;
  }

  CMBaseObject = FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject(*(v3 + 104));
  if (!CMBaseObject)
  {
    return 4294954516;
  }

  v10 = CMBaseObject;
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 24);
  if (!v11)
  {
    return 4294954514;
  }

  result = v11(v10);
  if (!result)
  {
    result = *(v3 + 104);
    if (result)
    {
      CFRelease(result);
      result = 0;
      *(v3 + 104) = 0;
    }
  }

  return result;
}

uint64_t bapspManager_removeListenersForSubPipe(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterRemoveWeakListeners();
}

void bapspManager_subPipeDecoderError(uint64_t a1, const void *a2)
{
  v24[27] = *MEMORY[0x1E69E9840];
  v24[0] = 0;
  v24[1] = v24;
  OUTLINED_FUNCTION_20_20();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 178))
  {
    v11 = DerivedStorage;
    if (dword_1EAF17468)
    {
      v23 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v12 = OUTLINED_FUNCTION_16_29();
      os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_7();
      DerivedStorage = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (*(v11 + 136))
    {
      if (a2)
      {
        CFRetain(a2);
      }

      OUTLINED_FUNCTION_6_31();
      v17 = 0x40000000;
      v18 = __bapspManager_subPipeDecoderError_block_invoke;
      v19 = &unk_1E748DE80;
      v20 = v24;
      v21 = a2;
      dispatch_async(v13, block);
    }
  }

  OUTLINED_FUNCTION_26_20(DerivedStorage, v4, v5, v6, v7, v8, v9, v10, v14, v15);
}

uint64_t bapspManager_notificationsFromSubPipe()
{
  result = FigCFEqual();
  if (result)
  {
    result = FigCFEqual();
    if (result)
    {
      CMNotificationCenterGetDefaultLocalCenter();

      return CMNotificationCenterPostNotification();
    }
  }

  return result;
}

void bapspManager_subPipeFinishedProcessingData(uint64_t a1, const void *a2, uint64_t a3)
{
  v21[27] = *MEMORY[0x1E69E9840];
  v21[0] = 0;
  v21[1] = v21;
  OUTLINED_FUNCTION_20_20();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 178))
  {
    v13 = DerivedStorage;
    if (dword_1EAF17468)
    {
      v20 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v14 = OUTLINED_FUNCTION_16_29();
      os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (a2)
    {
      CFRetain(a2);
    }

    v15 = *(v13 + 72);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __bapspManager_subPipeFinishedProcessingData_block_invoke;
    block[3] = &unk_1E748DF28;
    block[5] = a3;
    block[6] = a2;
    block[4] = v21;
    dispatch_async(v15, block);
  }

  OUTLINED_FUNCTION_26_20(DerivedStorage, v6, v7, v8, v9, v10, v11, v12, v16, v17);
}

void __bapspManager_subPipeDecoderError_block_invoke(uint64_t a1)
{
  v2 = bapspManager_disconnectSbufBridge(*(a1 + 40));
  OUTLINED_FUNCTION_0_5(v2);
  if (!v3)
  {
    v4 = bapspManager_clearCurrentSubPipe(*(a1 + 40));
    OUTLINED_FUNCTION_0_5(v4);
    if (!v5)
    {
      bapspManager_setSubPipeTerminationInFlight(*(a1 + 40), 0);
      bapspManager_scheduleProcessingDataIfPossible(*(a1 + 40));
    }
  }

  v6 = *(a1 + 40);

  bapspManager_releaseAsync(v6);
}

uint64_t bapspManager_disconnectSbufBridge(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17468)
  {
    v4 = OUTLINED_FUNCTION_9_41();
    OUTLINED_FUNCTION_311(v4, v5, v6, v7, v8, v9, v10, v11, v15, v16, v17, v18, SBYTE2(v18), BYTE3(v18), SHIDWORD(v18));
    OUTLINED_FUNCTION_40();
    if (v1)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(DerivedStorage + 178))
  {
    return 0;
  }

  v12 = *(DerivedStorage + 88);
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v13)
  {
    return v13(v12, @"DownstreamConsumer", 0);
  }

  else
  {
    return 4294954514;
  }
}

void __bapspManager_dequeueInspectSendSampleBuffer_block_invoke(uint64_t a1)
{
  v2 = a1;
  v151 = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 32) + 178))
  {
    v3 = 0;
    allocator = *MEMORY[0x1E695E480];
    v4 = *MEMORY[0x1E6962DF8];
    v5 = *MEMORY[0x1E6962E00];
    value = *MEMORY[0x1E695E4D0];
    v128 = *MEMORY[0x1E6962E10];
    while (1)
    {
      v6 = CMBufferQueueCopyHead(*(*(v2 + 32) + 112));
      if (!v6)
      {
        goto LABEL_230;
      }

      v7 = v6;
      CMSampleBufferGetOutputPresentationTimeStamp(&time1, v6);
      v8 = *(v2 + 40);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v10 = *MEMORY[0x1E6960C70];
      *&v137.value = *MEMORY[0x1E6960C70];
      v11 = *(MEMORY[0x1E6960C70] + 16);
      v137.epoch = v11;
      v136 = 0;
      v134 = v3;
      v135 = 0;
      if (*(DerivedStorage + 178))
      {
        v2 = a1;
LABEL_173:
        v106 = *(*(v2 + 32) + 88);
        v107 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v107)
        {
          v107(v106, v7);
        }

        v108 = CMBufferQueueDequeueAndRetain(*(*(v2 + 32) + 112));
        if (v108)
        {
          CFRelease(v108);
        }

        goto LABEL_177;
      }

      v12 = DerivedStorage;
      if (*(DerivedStorage + 56) == -999999.875)
      {
        OUTLINED_FUNCTION_82();
        FigSignalErrorAtGM();
LABEL_70:
        v55 = 1;
        goto LABEL_71;
      }

      *v131 = v10;
      CMSampleBufferGetOutputPresentationTimeStamp(&v137, v7);
      v13 = *(v12 + 104);
      if (v13)
      {
        CMBaseObject = FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject(v13);
        v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v15 || v15(CMBaseObject, @"SubPipeType", allocator, &v135))
        {
          goto LABEL_70;
        }
      }

      CMBaseObjectGetDerivedStorage();
      CMSampleBufferGetOutputPresentationTimeStamp(&time1, v7);
      CMGetAttachment(v7, v4, 0);
      v16 = OUTLINED_FUNCTION_23_27();
      if (epoch)
      {
        v17 = OUTLINED_FUNCTION_16_6();
        bapspManager_setSubPipeTerminationInFlight(v17, v18);
      }

      if (v16)
      {
        v19 = OUTLINED_FUNCTION_16_6();
        bapspManager_setSubPipeTerminationInFlight(v19, v20);
      }

      if (*(v12 + 216))
      {
        v21 = CMBaseObjectGetDerivedStorage();
        cf = 0;
        type = OS_LOG_TYPE_DEFAULT;
        if (*(v21 + 216))
        {
          v22 = v21;
          v23 = *(v21 + 104);
          if (v23)
          {
            v24 = FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject(v23);
            v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v25)
            {
              v25(v24, @"SubPipeType", allocator, &cf);
            }
          }

          CMSampleBufferGetOutputDuration(&time1, v7);
          v141 = time1.value;
          flags = time1.flags;
          timescale = time1.timescale;
          if (time1.flags)
          {
            epoch = time1.epoch;
            time1.value = v141;
            time1.timescale = timescale;
            time2 = **&MEMORY[0x1E6960CC0];
            if (CMTimeCompare(&time1, &time2) >= 1)
            {
              time2 = *(v22 + 180);
              rhs.value = v141;
              rhs.timescale = timescale;
              rhs.flags = flags;
              rhs.epoch = epoch;
              CMTimeAdd(&time1, &time2, &rhs);
              *(v22 + 180) = time1;
            }
          }

          if (*(v22 + 104) && ((*(v22 + 192) & 1) == 0 || (time1 = *(v22 + 180), time2 = *(v22 + 204), CMTimeCompare(&time1, &time2) < 1)))
          {
            v29 = 0;
          }

          else
          {
            v27 = MEMORY[0x1E6960CC0];
            *(v22 + 180) = *MEMORY[0x1E6960CC0];
            *(v22 + 196) = *(v27 + 16);
            if (*(v22 + 228) == 2)
            {
              if (FigCFEqual())
              {
                v28 = 4;
              }

              else
              {
                v28 = 3;
              }

              *(v22 + 228) = v28;
            }

            v29 = 1;
          }

          v30 = *(v22 + 228);
          switch(v30)
          {
            case 3:
              v31 = 0;
              SubPipeTypeForSbuf = @"SubPipeTypeTranscode";
              break;
            case 4:
              v31 = 0;
              SubPipeTypeForSbuf = @"SubPipeTypePassthrough";
              break;
            case 1:
              SubPipeTypeForSbuf = bapspManager_findSubPipeTypeForSbuf(v8, v7, &type);
              v31 = type != OS_LOG_TYPE_DEFAULT;
              break;
            default:
              v31 = 0;
              SubPipeTypeForSbuf = 0;
              break;
          }

          v136 = (v29 | v31) & 1;
          if (cf)
          {
            CFRelease(cf);
          }
        }

        else
        {
          SubPipeTypeForSbuf = 0;
        }
      }

      else
      {
        SubPipeTypeForSbuf = bapspManager_findSubPipeTypeForSbuf(v8, v7, &v136);
      }

      if (v136)
      {
        break;
      }

LABEL_151:
      v95 = CMBaseObjectGetDerivedStorage();
      CMGetAttachment(v7, v4, 0);
      v96 = OUTLINED_FUNCTION_23_27();
      v97 = v96;
      if (epoch && !v95[13])
      {
        if (v8)
        {
          CFRetain(v8);
        }

        v99 = v95[4];
        time1.value = MEMORY[0x1E69E9820];
        *&time1.timescale = 0x40000000;
        time1.epoch = __bapspManager_PostInspectSampleBuffer_block_invoke;
        v149 = &__block_descriptor_tmp_133_1;
        v150 = v8;
        dispatch_async(v99, &time1);
        if (!v97)
        {
          goto LABEL_161;
        }

LABEL_154:
        if (!v95[13])
        {
          bapspManager_postNotification(v8, @"PlayResourceReleased", 0);
          if (v8)
          {
            CFRetain(v8);
          }

          v98 = v95[4];
          time2.value = MEMORY[0x1E69E9820];
          *&time2.timescale = 0x40000000;
          time2.epoch = __bapspManager_PostInspectSampleBuffer_block_invoke_2;
          v144 = &__block_descriptor_tmp_134_1;
          *v145 = v8;
          dispatch_async(v98, &time2);
        }

        goto LABEL_161;
      }

      if (v96)
      {
        goto LABEL_154;
      }

LABEL_161:
      v100 = CMBaseObjectGetDerivedStorage();
      isMarkerSbuf = fbapspManager_isMarkerSbuf(v7);
      v102 = *(v100 + 160);
      if (isMarkerSbuf)
      {
        CMBufferQueueEnqueue(v102, v7);
      }

      else
      {
        CMBufferQueueReset(v102);
      }

      v2 = a1;
      FormatDescription = CMSampleBufferGetFormatDescription(v7);
      if (FormatDescription)
      {
        v104 = FormatDescription;
        v105 = v95[18];
        if (v105)
        {
          if (!CMAudioFormatDescriptionEqual(FormatDescription, v105, 0xFu, 0))
          {
            epoch = v95[18];
            v95[18] = v104;
            CFRetain(v104);
            if (epoch)
            {
              CFRelease(epoch);
            }
          }
        }

        else
        {
          v95[18] = FormatDescription;
          CFRetain(FormatDescription);
        }
      }

      v55 = 1;
LABEL_170:
      if (v135)
      {
        CFRelease(v135);
      }

      if (v55)
      {
        goto LABEL_173;
      }

LABEL_177:
      CFRelease(v7);
      if (!bapspManager_dataFlowIsAllowed())
      {
        if (v134 != 5)
        {
          goto LABEL_230;
        }

LABEL_229:
        bapspManager_scheduleProcessingDataIfPossible(*(v2 + 40));
        goto LABEL_230;
      }

      v3 = v134 + 1;
      if (v134 == 4)
      {
        goto LABEL_229;
      }
    }

    v33 = *(v12 + 104);
    epoch = CMBaseObjectGetDerivedStorage();
    v34 = *(epoch + 104);
    if (v33)
    {
      if (!v34)
      {
        goto LABEL_72;
      }

      CMSampleBufferGetOutputPresentationTimeStamp(&time2, v7);
      rhs.value = 0;
      if ((time2.flags & 1) == 0)
      {
        sampleTimingArray = 0;
        v36 = allocator;
LABEL_52:
        v45 = OUTLINED_FUNCTION_312();
        v48 = CMSampleBufferCreate(v45, v46, 1u, 0, 0, 0, 0, v47, sampleTimingArray, 0, 0, &rhs);
        if (v48)
        {
          goto LABEL_58;
        }

        if (v4)
        {
          CMSetAttachment(rhs.value, v4, value, 1u);
        }

        if (!rhs.value)
        {
LABEL_58:
          v49 = 0;
          if (!sampleTimingArray)
          {
            goto LABEL_60;
          }
        }

        else
        {
          v49 = CFRetain(rhs.value);
          if (!sampleTimingArray)
          {
            goto LABEL_60;
          }
        }

        CFAllocatorDeallocate(v36, sampleTimingArray);
        goto LABEL_60;
      }

      v36 = allocator;
      v43 = MEMORY[0x19A8CC720](allocator, 72, 0x1000040FF89C88ELL, 0);
      if (v43)
      {
        sampleTimingArray = v43;
        CMTimeMake(&time1, 0, 1);
        v44 = *&time1.value;
        *(sampleTimingArray + 16) = time1.epoch;
        *sampleTimingArray = v44;
        *(sampleTimingArray + 24) = time2;
        *(sampleTimingArray + 48) = *v131;
        *(sampleTimingArray + 64) = v11;
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_82();
      v48 = FigSignalErrorAtGM();
      v49 = 0;
LABEL_60:
      if (rhs.value)
      {
        CFRelease(rhs.value);
      }

      if (v48 || (v50 = OUTLINED_FUNCTION_16_6(), bapspManager_setSubPipeTerminationInFlight(v50, v51), v52 = *(epoch + 88), (v53 = *(*(CMBaseObjectGetVTable() + 16) + 8)) == 0) || v53(v52, v49))
      {
        v54 = 0;
        if (!v49)
        {
          goto LABEL_69;
        }
      }

      else
      {
        bapspManager_postNotification(v8, @"FinishingSubPipe", 0);
        v54 = 1;
        if (!v49)
        {
LABEL_69:
          if (!v54)
          {
            goto LABEL_70;
          }

LABEL_72:
          v55 = 0;
LABEL_71:
          v2 = a1;
          goto LABEL_170;
        }
      }

      CFRelease(v49);
      goto LABEL_69;
    }

    if (v34)
    {
      OUTLINED_FUNCTION_82();
      v76 = FigSignalErrorAtGM();
      v39 = v128;
      goto LABEL_123;
    }

    v37 = CFEqual(SubPipeTypeForSbuf, @"SubPipeTypePassthrough");
    v38 = CMBaseObjectGetDerivedStorage();
    v39 = v128;
    v127 = epoch;
    if (v37)
    {
      rhs.value = 0;
      v40 = CMSampleBufferGetFormatDescription(v7);
      if (FigEndpointStreamAudioFormatDescriptionCreateWithCMFormatDescription())
      {
        v71 = 0;
        MutableCopy = 0;
      }

      else
      {
        OUTLINED_FUNCTION_312();
        MutableCopy = FigCFDictionaryCreateMutableCopy();
        if (MutableCopy)
        {
          if (v8)
          {
            v42 = CMBaseObjectGetDerivedStorage();
          }

          else
          {
            v42 = "";
          }

          v132 = CFStringCreateWithCString(allocator, v42, 0x8000100u);
          CFDictionarySetValue(MutableCopy, @"LoggingID", v132);
          if (FigBufferedAirPlayAudioChainSubPipePassthroughCreate(allocator, *(v38 + 96), v40, MutableCopy, (v38 + 104)) || bapspManager_addListenersForSubPipe(v8, *(v38 + 104)))
          {
            v67 = 0;
          }

          else
          {
            v62 = *(v38 + 152);
            v63 = rhs.value;
            *(v38 + 152) = rhs.value;
            if (v63)
            {
              CFRetain(v63);
            }

            if (v62)
            {
              CFRelease(v62);
            }

            if (dword_1EAF17468)
            {
              LODWORD(v141) = 0;
              LOBYTE(cf) = 0;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v65 = v141;
              if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, cf))
              {
                v66 = v65;
              }

              else
              {
                v66 = v65 & 0xFFFFFFFE;
              }

              if (v66)
              {
                if (v8)
                {
                  CMBaseObjectGetDerivedStorage();
                }

                LODWORD(time2.value) = 136315906;
                OUTLINED_FUNCTION_4_91();
                OUTLINED_FUNCTION_108();
                _os_log_send_and_compose_impl();
              }

              v67 = 1;
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            else
            {
              v67 = 1;
            }
          }

          v71 = v132;
LABEL_108:
          if (rhs.value)
          {
            CFRelease(rhs.value);
          }

          if (MutableCopy)
          {
            CFRelease(MutableCopy);
          }

          if (v71)
          {
            CFRelease(v71);
          }

          v70 = kFigBufferedAirPlaySubPipeManagerForRenderPipelineProcessingMode_Passthrough;
          epoch = v127;
          if ((v67 & 1) == 0)
          {
            goto LABEL_70;
          }

          goto LABEL_115;
        }

        v71 = 0;
      }

      v67 = 0;
      goto LABEL_108;
    }

    rhs.value = 0;
    v141 = 0;
    v56 = FigCFDictionaryCreateMutableCopy();
    v57 = CMSampleBufferGetFormatDescription(v7);
    if (FigEndpointStreamAudioFormatDescriptionCreateWithCMFormatDescription())
    {
      v68 = 0;
      v69 = 0;
      v39 = v128;
      if (!v56)
      {
LABEL_96:
        if (v68)
        {
          CFRelease(v68);
        }

        if (rhs.value)
        {
          CFRelease(rhs.value);
        }

        if (v141)
        {
          CFRelease(v141);
        }

        v70 = kFigBufferedAirPlaySubPipeManagerForRenderPipelineProcessingMode_Transcode;
        if (!v69)
        {
          goto LABEL_70;
        }

LABEL_115:
        v72 = CFDictionaryCreate(allocator, kFigBufferedAirPlaySubPipeManagerForRenderPipelineProperty_ProcessingMode, v70, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        bapspManager_postNotification(v8, @"ProcessingModeChanged", v72);
        bapspManager_setLoudnessInfoOnSubPipe();
        bapspManager_setAudioProcessingTapOnSubPipe();
        v73 = *(epoch + 88);
        v74 = *(*(CMBaseObjectGetVTable() + 16) + 72);
        if (v74)
        {
          v75 = v74(v73);
          if (v75)
          {
            v76 = v75;
            if (!v72)
            {
              goto LABEL_123;
            }
          }

          else
          {
            if (*(epoch + 228) != 1)
            {
              *(epoch + 228) = 2;
            }

            v76 = 0;
            v77 = MEMORY[0x1E6960CC0];
            *(epoch + 180) = *MEMORY[0x1E6960CC0];
            *(epoch + 196) = *(v77 + 16);
            if (!v72)
            {
LABEL_123:
              if (v76)
              {
                goto LABEL_70;
              }

              v78 = CMBaseObjectGetDerivedStorage();
              rhs.value = 0;
              if (dword_1EAF17468)
              {
                LODWORD(v141) = 0;
                LOBYTE(cf) = 0;
                v79 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                epoch = v141;
                if (os_log_type_enabled(v79, cf))
                {
                  v80 = epoch;
                }

                else
                {
                  v80 = epoch & 0xFFFFFFFE;
                }

                if (v80)
                {
                  if (v8)
                  {
                    v81 = CMBaseObjectGetDerivedStorage();
                  }

                  else
                  {
                    v81 = "";
                  }

                  v82 = *(v78 + 88);
                  v83 = *(v78 + 104);
                  LODWORD(time2.value) = 136316162;
                  *(&time2.value + 4) = "bapspManager_connectSbufBridge";
                  LOWORD(time2.flags) = 2048;
                  *(&time2.flags + 2) = v8;
                  HIWORD(time2.epoch) = 2082;
                  v144 = v81;
                  *v145 = 2048;
                  *&v145[2] = v82;
                  v146 = 2048;
                  v147 = v83;
                  OUTLINED_FUNCTION_108();
                  _os_log_send_and_compose_impl();
                  epoch = v141;
                }

                OUTLINED_FUNCTION_7();
                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v39 = v128;
              }

              if (*(v78 + 178))
              {
                v90 = 0;
              }

              else
              {
                v84 = *(v78 + 104);
                if (!v84)
                {
                  OUTLINED_FUNCTION_82();
                  v87 = FigSignalErrorAtGM();
                  goto LABEL_141;
                }

                v85 = FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject(v84);
                v86 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (v86)
                {
                  v87 = v86(v85, @"SourceSampleBufferConsumer", allocator, &rhs);
                  if (v87)
                  {
LABEL_141:
                    v90 = v87;
                    goto LABEL_143;
                  }

                  epoch = *(v78 + 88);
                  v88 = rhs.value;
                  v89 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  if (v89)
                  {
                    v87 = v89(epoch, @"DownstreamConsumer", v88);
                    goto LABEL_141;
                  }
                }

                v90 = -12782;
              }

LABEL_143:
              if (rhs.value)
              {
                CFRelease(rhs.value);
              }

              if (v90)
              {
                goto LABEL_70;
              }

              v91 = CMBaseObjectGetDerivedStorage();
              if (*(v91 + 104))
              {
                v92 = v91;
                if (!CMBufferQueueIsEmpty(*(v91 + 160)))
                {
                  v93 = CMBufferQueueDequeueAndRetain(*(v92 + 160));
                  if (v93)
                  {
                    v109 = v93;
                    do
                    {
                      if (!CMGetAttachment(v109, v4, 0) && !CMGetAttachment(v109, v5, 0) && !CMGetAttachment(v109, v39, 0))
                      {
                        v110 = *(v92 + 88);
                        v111 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                        if (v111)
                        {
                          v111(v110, v109);
                        }
                      }

                      CFRelease(v109);
                      v109 = CMBufferQueueDequeueAndRetain(*(v92 + 160));
                    }

                    while (v109);
                  }

                  CMBufferQueueReset(*(v92 + 160));
                }
              }

              v94 = *(v12 + 56);
              time1 = v137;
              if (bapspManager_startAudioChainForSubPipe(v94, v8, &time1, MEMORY[0x1E6960C70]))
              {
                goto LABEL_70;
              }

              goto LABEL_151;
            }
          }
        }

        else
        {
          v76 = -12782;
          if (!v72)
          {
            goto LABEL_123;
          }
        }

        CFRelease(v72);
        goto LABEL_123;
      }
    }

    else
    {
      v58 = *(v38 + 40);
      v59 = rhs.value;
      v60 = *(*(CMBaseObjectGetVTable() + 16) + 72);
      if (!v60 || v60(v58, v59, &v141))
      {
        v68 = 0;
        v69 = 0;
        epoch = v127;
        v39 = v128;
        if (!v56)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      }

      if (v8)
      {
        v61 = CMBaseObjectGetDerivedStorage();
      }

      else
      {
        v61 = "";
      }

      v125 = CFStringCreateWithCString(allocator, v61, 0x8000100u);
      CFDictionarySetValue(v56, @"LoggingID", v125);
      v123 = *(v38 + 96);
      v124 = v141;
      v133 = v56;
      v112 = *(v38 + 176);
      FigGetAllocatorForMedia();
      v113 = OUTLINED_FUNCTION_312();
      v114 = v112;
      v56 = v133;
      if (FigBufferedAirPlayAudioChainSubPipeTranscodeCreate(v113, v115, v123, v57, v124, v114, v116, v133, (v38 + 104)))
      {
        v69 = 0;
        epoch = v127;
        v39 = v128;
      }

      else
      {
        epoch = v127;
        v39 = v128;
        if (bapspManager_addListenersForSubPipe(v8, *(v38 + 104)))
        {
          v69 = 0;
        }

        else
        {
          v117 = *(v38 + 152);
          v118 = v141;
          *(v38 + 152) = v141;
          if (v118)
          {
            CFRetain(v118);
          }

          v68 = v125;
          if (v117)
          {
            CFRelease(v117);
          }

          if (!dword_1EAF17468)
          {
            v69 = 1;
            if (!v133)
            {
              goto LABEL_96;
            }

            goto LABEL_95;
          }

          LODWORD(cf) = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v119 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v120 = cf;
          if (os_log_type_enabled(v119, type))
          {
            v121 = v120;
          }

          else
          {
            v121 = v120 & 0xFFFFFFFE;
          }

          if (v121)
          {
            if (v8)
            {
              CMBaseObjectGetDerivedStorage();
            }

            LODWORD(time2.value) = 136315906;
            OUTLINED_FUNCTION_4_91();
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl();
          }

          v69 = 1;
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          epoch = v127;
          v56 = v133;
        }
      }

      v68 = v125;
      if (!v56)
      {
        goto LABEL_96;
      }
    }

LABEL_95:
    CFRelease(v56);
    goto LABEL_96;
  }

LABEL_230:
  v122 = *(v2 + 40);
  if (v122)
  {
    CFRelease(v122);
  }
}

__CFString *bapspManager_findSubPipeTypeForSbuf(uint64_t a1, void *a2, _BYTE *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  formatDescription = 0;
  v62 = 0;
  v59 = 0;
  v60 = 0;
  v57 = 0;
  BOOLean = 0;
  v6 = @"SubPipeTypeTranscode";
  v56 = 0;
  if (!a3)
  {
    FigSignalErrorAtGM();
    goto LABEL_104;
  }

  v7 = DerivedStorage;
  if (!fbapspManager_isMarkerSbuf(a2))
  {
    *a3 = 0;
    v8 = CMGetAttachment(a2, *MEMORY[0x1E69604B0], 0);
    v9 = *MEMORY[0x1E695E4D0];
    if (v8 != *MEMORY[0x1E695E4D0])
    {
      v10 = CMSampleBufferGetFormatDescription(a2);
      v11 = *MEMORY[0x1E695E480];
      if (v10)
      {
        if (FigEndpointStreamAudioFormatDescriptionCreateWithCMFormatDescription())
        {
          goto LABEL_104;
        }

        v12 = *(v7 + 40);
        v13 = *(*(CMBaseObjectGetVTable() + 16) + 80);
        if (!v13)
        {
          goto LABEL_104;
        }

        if (v13(v12, v62, &v56))
        {
          goto LABEL_104;
        }

        ASBD = FigEndpointStreamAudioFormatDescriptionGetASBD();
        if (!ASBD)
        {
          goto LABEL_104;
        }
      }

      else
      {
        ASBD = 0;
      }

      if (*(v7 + 104))
      {
        v15 = (FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject)();
        v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v16)
        {
          v16(v15, @"SubPipeType", v11, &v57);
        }

        CMBaseObject = FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject(*(v7 + 104));
        v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v18)
        {
          v18(CMBaseObject, @"CurrentFormatDescription", v11, &formatDescription);
        }

        v19 = CMAudioFormatDescriptionEqual(formatDescription, v10, 7u, 0) == 0;
      }

      else
      {
        v19 = 0;
      }

      Decryptor = FigSampleBufferGetDecryptor();
      v23 = 1;
      if (Decryptor)
      {
        v21 = Decryptor;
        v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v22 || v22(v21, *MEMORY[0x1E6961128], v11, &v60) || v60 != v9)
        {
          v23 = 0;
        }
      }

      v24 = FigBufferedAirPlayOutputGetCMBaseObject(*(v7 + 40));
      v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v25)
      {
        if (!v25(v24, @"ALACIsAllowed", v11, &BOOLean))
        {
          v26 = FigBufferedAirPlayOutputGetCMBaseObject(*(v7 + 40));
          v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v27)
          {
            if (!v27(v26, @"SupportsReceiverSideSoundCheck", v11, &v59))
            {
              v28 = *(v7 + 177);
              if (v28 == CFBooleanGetValue(BOOLean) || (*(v7 + 177) = CFBooleanGetValue(BOOLean), v30 = CMBaseObjectGetDerivedStorage(), cf = 0, !*(v30 + 104)))
              {
                LOBYTE(v29) = 0;
                goto LABEL_63;
              }

              v31 = v30;
              if (CMSampleBufferGetFormatDescription(a2) && !FigEndpointStreamAudioFormatDescriptionCreateWithCMFormatDescription())
              {
                v29 = FigEndpointStreamAudioFormatDescriptionGetASBD();
                if (!v29)
                {
                  goto LABEL_61;
                }

                v32 = FigEndpointStreamAudioFormatDescriptionGetASBD();
                if (v32)
                {
                  v33 = *(v31 + 177);
                  if (*(v31 + 177))
                  {
                    v34 = *(v29 + 8);
                    v33 = v34 == 1634492771 || v34 == 1668047203 || v34 == 1902928227 || v34 == 2053923171;
                  }

                  v38 = *(v32 + 8);
                  v55 = v38 == 1634492771 || v38 == 1668047203 || v38 == 1902928227 || v38 == 2053923171;
                  LOBYTE(v29) = v33 != v55;
                  goto LABEL_61;
                }
              }

              LOBYTE(v29) = 0;
LABEL_61:
              if (cf)
              {
                CFRelease(cf);
              }

LABEL_63:
              *(v7 + 176) = CFBooleanGetValue(v59);
              v42 = *(v7 + 56);
              Value = CFBooleanGetValue(BOOLean);
              v44 = 1;
              if (ASBD && !Value)
              {
                v45 = *(ASBD + 8);
                v44 = v45 != 1634492771 && v45 != 1668047203 && v45 != 1902928227 && v45 != 2053923171;
              }

              if (v42 == 1.0 && v56 != 0 && v23)
              {
                if (*(v7 + 64))
                {
                  v51 = 0;
                }

                else
                {
                  v51 = v44;
                }

                if (!v57)
                {
                  goto LABEL_102;
                }

                if (v51)
                {
                  if (FigCFEqual())
                  {
                    v52 = 1;
                  }

                  else
                  {
                    v52 = v29;
                  }

                  v51 = 1;
                  if (v52)
                  {
                    *a3 = 1;
LABEL_103:
                    v6 = @"SubPipeTypePassthrough";
                    goto LABEL_104;
                  }

                  goto LABEL_101;
                }
              }

              else if (!v57)
              {
                goto LABEL_99;
              }

              if (FigCFEqual())
              {
                v53 = 1;
              }

              else
              {
                v53 = v29;
              }

              if ((v53 & 1) == 0)
              {
                v51 = 0;
LABEL_101:
                if (FigCFEqual() == 0 || !v19)
                {
                  goto LABEL_104;
                }

LABEL_102:
                *a3 = 1;
                if (!v51)
                {
                  goto LABEL_104;
                }

                goto LABEL_103;
              }

LABEL_99:
              *a3 = 1;
            }
          }
        }
      }
    }
  }

LABEL_104:
  if (formatDescription)
  {
    CFRelease(formatDescription);
  }

  if (v62)
  {
    CFRelease(v62);
  }

  if (v57)
  {
    CFRelease(v57);
  }

  if (v60)
  {
    CFRelease(v60);
  }

  if (v59)
  {
    CFRelease(v59);
  }

  if (BOOLean)
  {
    CFRelease(BOOLean);
  }

  return v6;
}