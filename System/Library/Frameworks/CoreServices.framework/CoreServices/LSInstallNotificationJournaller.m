@interface LSInstallNotificationJournaller
@end

@implementation LSInstallNotificationJournaller

void __84___LSInstallNotificationJournaller_isApplicationRegisteredWithbundleID_placeholder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v16 = 0;
  if (*(a1 + 32))
  {
    if (_LSContextInit(&v16))
    {
      v7 = _LSInstallLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        __84___LSInstallNotificationJournaller_isApplicationRegisteredWithbundleID_placeholder___block_invoke_cold_1();
      }
    }

    else
    {
      v15 = 0;
      v14 = 0;
      if (*(a1 + 48))
      {
        v9 = 1024;
      }

      else
      {
        v9 = 0;
      }

      v10 = *(a1 + 32);
      *buf = kLSVersionNumberNull;
      v18 = unk_1817E90C0;
      if (!_LSBundleFindWithInfo(&v16, 0, v10, 0, buf, 2, v9, &v15, &v14))
      {
        v11 = _LSInstallLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = *(a1 + 32);
          *buf = 138412290;
          *&buf[4] = v12;
          _os_log_impl(&dword_18162D000, v11, OS_LOG_TYPE_INFO, "Found registered application for journal entry: %@", buf, 0xCu);
        }

        *(*(*(a1 + 40) + 8) + 24) = 1;
      }
    }
  }

  else
  {
    v8 = _LSInstallLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __84___LSInstallNotificationJournaller_isApplicationRegisteredWithbundleID_placeholder___block_invoke_cold_2();
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __84___LSInstallNotificationJournaller_isApplicationRegisteredWithbundleID_placeholder___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_9_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

@end