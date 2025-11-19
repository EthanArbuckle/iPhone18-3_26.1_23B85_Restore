@interface CFPrefsFixUpIncomingMessageForPIDImpersonationIfNeeded
@end

@implementation CFPrefsFixUpIncomingMessageForPIDImpersonationIfNeeded

void ___CFPrefsFixUpIncomingMessageForPIDImpersonationIfNeeded_block_invoke(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 54) & 1) != 0 || (EntitlementForMessageWithLockedContext = _CFPrefsGetEntitlementForMessageWithLockedContext(*(a1 + 32), "com.apple.private.defaults-impersonate", a2)) != 0 && (v7 = EntitlementForMessageWithLockedContext, object_getClass(EntitlementForMessageWithLockedContext) == MEMORY[0x1E69E9E58]) && xpc_BOOL_get_value(v7))
  {
    xpc_dictionary_set_data(*(a1 + 32), "CFPreferencesAuditToken", *(a1 + 40), *(a1 + 48));
    if ((*(a2 + 54) & 1) == 0)
    {
      v4 = *(a2 + 32);
      if (v4)
      {
        *(a2 + 32) = 0;
        xpc_release(v4);
      }

      v5 = *(a2 + 40);
      if (v5)
      {
        *(a2 + 40) = 0;
        CFRelease(v5);
      }

      *(a2 + 54) = 1;
    }
  }

  else
  {
    memset(buffer, 0, sizeof(buffer));
    v8 = *(a1 + 32);
    length = 0;
    memset(buf, 0, 32);
    data = xpc_dictionary_get_data(v8, "CFPreferencesAuditToken", &length);
    if (data && length == 32)
    {
      v10 = data[1];
      *buf = *data;
      *&buf[16] = v10;
    }

    else
    {
      if (!xpc_dictionary_get_remote_connection(v8))
      {
        value = xpc_dictionary_get_value(v8, "connection");
        if (!value || object_getClass(value) != MEMORY[0x1E69E9E68])
        {
          ___CFPrefsFixUpIncomingMessageForPIDImpersonationIfNeeded_block_invoke_cold_1();
        }
      }

      xpc_connection_get_audit_token();
    }

    proc_name(*&buf[20], buffer, 0x100u);
    v12 = _CFPrefsDaemonLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v14 = *(a1 + 32);
      length = 0;
      memset(buf, 0, 32);
      v15 = xpc_dictionary_get_data(v14, "CFPreferencesAuditToken", &length);
      if (v15 && length == 32)
      {
        v16 = v15[1];
        *buf = *v15;
        *&buf[16] = v16;
      }

      else
      {
        if (!xpc_dictionary_get_remote_connection(v14))
        {
          v17 = xpc_dictionary_get_value(v14, "connection");
          if (!v17 || object_getClass(v17) != MEMORY[0x1E69E9E68])
          {
            ___CFPrefsFixUpIncomingMessageForPIDImpersonationIfNeeded_block_invoke_cold_2();
          }
        }

        xpc_connection_get_audit_token();
      }

      *buf = 136446466;
      *&buf[4] = buffer;
      *&buf[12] = 1026;
      *&buf[14] = *&buf[20];
      _os_log_fault_impl(&dword_1830E6000, v12, OS_LOG_TYPE_FAULT, "Not allowing process impersonation by process %{public}s (%{public}d) due to missing com.apple.private.defaults-impersonate entitlement.", buf, 0x12u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end