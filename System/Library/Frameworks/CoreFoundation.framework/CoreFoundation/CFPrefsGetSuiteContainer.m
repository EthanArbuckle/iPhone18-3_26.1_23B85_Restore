@interface CFPrefsGetSuiteContainer
@end

@implementation CFPrefsGetSuiteContainer

void ___CFPrefsGetSuiteContainer_block_invoke(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  Mutable = *(a2 + 16);
  if (Mutable)
  {
    Value = CFDictionaryGetValue(Mutable, *(a1 + 48));
    if (Value)
    {
      if (Value != &__kCFNull)
      {
        *(*(*(a1 + 40) + 8) + 24) = CFURLGetFileSystemRepresentation(Value, 1u, *(a1 + 56), *(a1 + 64)) != 0;
        goto LABEL_20;
      }

LABEL_12:
      *(*(*(a1 + 40) + 8) + 24) = 0;
      goto LABEL_20;
    }
  }

  _CFPrefsGetEntitlementForMessageWithLockedContext(*(a1 + 32), 0, a2);
  v6 = *(a2 + 40);
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = CFRetain(v6);
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = v7;
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    *(a2 + 16) = Mutable;
  }

  v9 = *(a1 + 80);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v16 = ___CFPrefsGetSuiteContainer_block_invoke_2;
  v17 = &unk_1E6DD2160;
  v11 = *(a1 + 64);
  v10 = *(a1 + 72);
  v18 = *(a1 + 32);
  v19 = v10;
  v20 = *(a1 + 48);
  v21 = v11;
  v22 = Mutable;
  if (!v20)
  {
    ___CFPrefsGetSuiteContainer_block_invoke_cold_1();
  }

  if (v9)
  {
    v12 = 0;
  }

  else
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    Count = CFArrayGetCount(v8);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = ___CFPrefsIfClientIsInSecurityApplicationGroup_block_invoke;
    v23[3] = &unk_1E6DD1658;
    v23[4] = &v24;
    v23[5] = v20;
    CFArrayApply(v8, 0, Count, v23);
    if (v25[3])
    {
      v12 = v16(v15);
    }

    else
    {
      v12 = 0;
    }

    _Block_object_dispose(&v24, 8);
  }

  *(*(*(a1 + 40) + 8) + 24) = v12;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    CFDictionarySetValue(Mutable, *(a1 + 48), &__kCFNull);
  }

  CFRelease(v8);
LABEL_20:
  v14 = *MEMORY[0x1E69E9840];
}

BOOL ___CFPrefsGetSuiteContainer_block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  remote_connection = xpc_dictionary_get_remote_connection(v2);
  if (!remote_connection)
  {
    value = xpc_dictionary_get_value(v2, "connection");
    if (!value || (remote_connection = value, object_getClass(value) != MEMORY[0x1E69E9E68]))
    {
      ___CFPrefsGetSuiteContainer_block_invoke_2_cold_3();
    }
  }

  if (!xpc_connection_get_euid(remote_connection))
  {
    memset(buffer, 0, sizeof(buffer));
    v9 = *(a1 + 32);
    length = 0;
    v19 = 0u;
    v20 = 0u;
    data = xpc_dictionary_get_data(v9, "CFPreferencesAuditToken", &length);
    if (data && length == 32)
    {
      v11 = data[1];
      v19 = *data;
      v20 = v11;
    }

    else
    {
      if (!xpc_dictionary_get_remote_connection(v9))
      {
        v12 = xpc_dictionary_get_value(v9, "connection");
        if (!v12 || object_getClass(v12) != MEMORY[0x1E69E9E68])
        {
          ___CFPrefsGetSuiteContainer_block_invoke_2_cold_1();
        }
      }

      xpc_connection_get_audit_token();
    }

    v13 = DWORD1(v20);
    proc_name(SDWORD1(v20), buffer, 0x100u);
    v14 = _CFPrefsDaemonLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      ___CFPrefsGetSuiteContainer_block_invoke_2_cold_2(buffer, v13, v14);
    }

    goto LABEL_18;
  }

  v5 = _CFCreateContainerURLForSecurityApplicationIdentifierGroupIdentifierAndUser(*(a1 + 40), *(a1 + 48));
  if (!v5)
  {
LABEL_18:
    v8 = 0;
    goto LABEL_19;
  }

  v6 = v5;
  v7 = CFURLGetFileSystemRepresentation(v5, 1u, *(a1 + 56), *(a1 + 64));
  v8 = v7 != 0;
  if (v7)
  {
    CFDictionarySetValue(*(a1 + 72), *(a1 + 48), v6);
  }

  CFRelease(v6);
LABEL_19:
  v15 = *MEMORY[0x1E69E9840];
  return v8;
}

void ___CFPrefsGetSuiteContainer_block_invoke_2_cold_2(uint64_t a1, int a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 136446466;
  v5 = a1;
  v6 = 1026;
  v7 = a2;
  _os_log_error_impl(&dword_1830E6000, log, OS_LOG_TYPE_ERROR, "Process %{public}s (%{public}d) running as root is attempting to look up an app group container. That's not supported", &v4, 0x12u);
  v3 = *MEMORY[0x1E69E9840];
}

@end