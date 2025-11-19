@interface LSAppsAnalyticsStartListening
@end

@implementation LSAppsAnalyticsStartListening

void ___LSAppsAnalyticsStartListening_block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = v2;
  state = xpc_activity_get_state(v4);
  v6 = _LSDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LODWORD(v10) = 134217984;
    *(&v10 + 4) = state;
    _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_INFO, "Default apps analytics activity state: %lli", &v10, 0xCu);
  }

  if (state == 2)
  {
    if (xpc_activity_set_state(v4, 4))
    {
      v7 = +[LSDBExecutionContext sharedServerInstance];
      *&v10 = MEMORY[0x1E69E9820];
      *(&v10 + 1) = 3221225472;
      v11 = ___ZN14LaunchServices13AppsAnalyticsL14handleActivityEPU24objcproto13OS_xpc_object8NSObject_block_invoke;
      v12 = &unk_1E6A18EB0;
      v13 = v4;
      [(LSDBExecutionContext *)v7 performAsyncRead:?];

      v8 = v13;
    }

    else
    {
      v8 = _LSDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_INFO, "Failed to continue analytics activity.", &v10, 2u);
      }
    }
  }

  objc_autoreleasePoolPop(v3);
  v9 = *MEMORY[0x1E69E9840];
}

@end