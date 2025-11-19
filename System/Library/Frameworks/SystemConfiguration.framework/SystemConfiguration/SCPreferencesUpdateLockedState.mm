@interface SCPreferencesUpdateLockedState
@end

@implementation SCPreferencesUpdateLockedState

uint64_t ____SCPreferencesUpdateLockedState_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  __SCPreferencesUpdateLockedState_lockedQueue = dispatch_queue_create("SCPreferences locked state queue", 0);
  __SCPreferencesUpdateLockedState_lockedState = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
  result = os_state_add_handler();
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

_DWORD *____SCPreferencesUpdateLockedState_block_invoke_2()
{
  v35[1] = *MEMORY[0x1E69E9840];
  v35[0] = 0;
  if (!CFDictionaryGetCount(__SCPreferencesUpdateLockedState_lockedState))
  {
    v18 = 0;
    goto LABEL_21;
  }

  Mutable = CFStringCreateMutable(0, 0);
  CFDictionaryApplyFunction(__SCPreferencesUpdateLockedState_lockedState, appendLockedPreferences, Mutable);
  v1 = _SCSerialize(Mutable, v35, 0, 0);
  CFRelease(Mutable);
  v2 = 0;
  v3 = 200;
  if (v1 && v35[0])
  {
    Length = CFDataGetLength(v35[0]);
    v3 = Length + 200;
    if ((Length + 200) > 0x8000)
    {
      v5 = __log_SCPreferences_log;
      if (!__log_SCPreferences_log)
      {
        v5 = os_log_create("com.apple.SystemConfiguration", "SCPreferences");
        __log_SCPreferences_log = v5;
      }

      v6 = _SC_syslog_os_log_mapping(3);
      if (__SC_log_enabled(3, v5, v6))
      {
        v7 = _os_log_pack_size();
        v15 = v35 - ((MEMORY[0x1EEE9AC00](v7, v8, v9, v10, v11, v12, v13, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
        v16 = *__error();
        v17 = _os_log_pack_fill();
        *v17 = 134218240;
        *(v17 + 4) = v3;
        *(v17 + 12) = 2048;
        *(v17 + 14) = 0x8000;
        __SC_log_send(3, v5, v6, v15);
      }

      goto LABEL_18;
    }

    v2 = Length;
  }

  v19 = malloc_type_calloc(1uLL, v3, 0x73D83B14uLL);
  if (v19)
  {
    v18 = v19;
    *v19 = 1;
    v19[1] = v2;
    __strlcpy_chk();
    if (v2 >= 1)
    {
      BytePtr = CFDataGetBytePtr(v35[0]);
      memcpy(v18 + 50, BytePtr, v2);
    }

    goto LABEL_19;
  }

  v21 = __log_SCPreferences_log;
  if (!__log_SCPreferences_log)
  {
    v21 = os_log_create("com.apple.SystemConfiguration", "SCPreferences");
    __log_SCPreferences_log = v21;
  }

  v22 = _SC_syslog_os_log_mapping(3);
  if (__SC_log_enabled(3, v21, v22))
  {
    v23 = _os_log_pack_size();
    v31 = v35 - ((MEMORY[0x1EEE9AC00](v23, v24, v25, v26, v27, v28, v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = *__error();
    *_os_log_pack_fill() = 0;
    __SC_log_send(3, v21, v22, v31);
  }

LABEL_18:
  v18 = 0;
LABEL_19:
  if (v35[0])
  {
    CFRelease(v35[0]);
  }

LABEL_21:
  v33 = *MEMORY[0x1E69E9840];
  return v18;
}

void ____SCPreferencesUpdateLockedState_block_invoke_41(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    v2 = CFCopyDescription(*(a1 + 32));
    CFDictionarySetValue(__SCPreferencesUpdateLockedState_lockedState, *(a1 + 32), v2);
    v3 = *MEMORY[0x1E69E9840];

    CFRelease(v2);
  }

  else
  {
    v4 = __SCPreferencesUpdateLockedState_lockedState;
    v5 = *(a1 + 32);
    v6 = *MEMORY[0x1E69E9840];
    v7 = *MEMORY[0x1E69E9840];

    CFDictionaryRemoveValue(v4, v5);
  }
}

@end