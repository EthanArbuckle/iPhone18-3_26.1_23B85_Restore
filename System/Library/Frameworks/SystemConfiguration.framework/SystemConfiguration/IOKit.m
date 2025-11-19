@interface IOKit
@end

@implementation IOKit

void ____wait_for_IOKit_to_quiesce_block_invoke()
{
  values[1] = *MEMORY[0x1E69E9840];
  qword_1EB591738 = "Waiting for IOKit to quiesce (or timeout)";
  v0 = SCDynamicStoreCreate(0, @"SCNetworkInterfaceCopyAll", 0, 0);
  if (!v0)
  {
    qword_1EB591738 = 0;
    goto LABEL_21;
  }

  v1 = v0;
  values[0] = SCDynamicStoreKeyCreate(0, @"%@InterfaceNamer", @"Plugin:");
  v2 = CFArrayCreate(0, values, 1, MEMORY[0x1E695E9C0]);
  v3 = SCDynamicStoreSetNotificationKeys(v1, v2, 0);
  CFRelease(v2);
  if (v3)
  {
    while (1)
    {
      v4 = SCDynamicStoreCopyValue(v1, values[0]);
      if (v4)
      {
        v5 = v4;
        TypeID = CFDictionaryGetTypeID();
        if (CFGetTypeID(v5) == TypeID && (CFDictionaryContainsKey(v5, @"*QUIET*") || CFDictionaryContainsKey(v5, @"*COMPLETE*") || CFDictionaryContainsKey(v5, @"*TIMEOUT*")))
        {
          CFRelease(v5);
          goto LABEL_18;
        }

        CFRelease(v5);
      }

      if (!SCDynamicStoreNotifyWait(v1))
      {
        break;
      }

      v7 = SCDynamicStoreCopyNotifiedKeys(v1);
      if (v7)
      {
        CFRelease(v7);
      }
    }

    v8 = __log_SCNetworkConfiguration();
    v9 = _SC_syslog_os_log_mapping(5);
    if (!__SC_log_enabled(5, v8, v9))
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v8 = __log_SCNetworkConfiguration();
  v9 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v8, v9))
  {
LABEL_16:
    v10 = _os_log_pack_size();
    v18 = values - ((MEMORY[0x1EEE9AC00](v10, v11, v12, v13, v14, v15, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = *__error();
    v20 = _os_log_pack_fill();
    v21 = SCError();
    v22 = SCErrorString(v21);
    *v20 = 136315138;
    *(v20 + 4) = v22;
    __SC_log_send(5, v8, v9, v18);
  }

LABEL_18:
  qword_1EB591738 = 0;
  if (values[0])
  {
    CFRelease(values[0]);
  }

  CFRelease(v1);
LABEL_21:
  v23 = *MEMORY[0x1E69E9840];
}

@end