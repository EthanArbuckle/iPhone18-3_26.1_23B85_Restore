@interface DEBUG
@end

@implementation DEBUG

void __DEBUG_CACHE_MISS_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v29 = *MEMORY[0x1E69E9840];
  v14 = _CFPrefsDaemonLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v16 = *(a1 + 32);
    v17 = 136447490;
    v18 = a4;
    v19 = 2082;
    v20 = a6;
    v21 = 2082;
    v22 = a7;
    v23 = 2082;
    v24 = a8;
    v25 = 1024;
    v26 = a9;
    v27 = 2082;
    v28 = v16;
    _os_log_debug_impl(&dword_1830E6000, v14, OS_LOG_TYPE_DEBUG, "no cache for { %{public}s, %{public}s, %{public}s, %{public}s, managed: %d }, loading from %{public}s", &v17, 0x3Au);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __DEBUG_NOTIFY_OBSERVERS_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v25 = *MEMORY[0x1E69E9840];
  v13 = _CFPrefsDaemonLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v15 = 136447234;
    v16 = a4;
    v17 = 2082;
    v18 = a6;
    v19 = 2082;
    v20 = a7;
    v21 = 2082;
    v22 = a8;
    v23 = 1024;
    v24 = a9;
    _os_log_debug_impl(&dword_1830E6000, v13, OS_LOG_TYPE_DEBUG, "Notifying observers of { %{public}s, %{public}s, %{public}s, %{public}s, managed: %d }", &v15, 0x30u);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __DEBUG_CACHE_EVICT_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v29 = *MEMORY[0x1E69E9840];
  v14 = _CFPrefsDaemonLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v16 = *(a1 + 32);
    v17 = 136447490;
    v18 = a4;
    v19 = 2082;
    v20 = a6;
    v21 = 2082;
    v22 = a7;
    v23 = 2082;
    v24 = a8;
    v25 = 1024;
    v26 = a9;
    v27 = 2114;
    v28 = v16;
    _os_log_debug_impl(&dword_1830E6000, v14, OS_LOG_TYPE_DEBUG, "flushing cache for { %{public}s, %{public}s, %{public}s, %{public}s, managed: %d } because %{public}@", &v17, 0x3Au);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __DEBUG_BEGAN_OBSERVING_block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v30 = *MEMORY[0x1E69E9840];
  v15 = _CFPrefsDaemonLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v17[0] = 67241730;
    v17[1] = a2;
    v18 = 2082;
    v19 = a3;
    v20 = 2082;
    v21 = a4;
    v22 = 2082;
    v23 = a6;
    v24 = 2082;
    v25 = a7;
    v26 = 2082;
    v27 = a8;
    v28 = 1024;
    v29 = a9;
    _os_log_debug_impl(&dword_1830E6000, v15, OS_LOG_TYPE_DEBUG, "Process %{public}d (%{public}s) began observing { %{public}s, %{public}s, %{public}s, %{public}s, managed: %d }", v17, 0x40u);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __DEBUG_STOPPED_OBSERVING_block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v36 = *MEMORY[0x1E69E9840];
  v16 = *(a1 + 32);
  v17 = _CFPrefsDaemonLog();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
  if (v16)
  {
    if (v18)
    {
      v19 = *(a1 + 40);
      v22 = 67241730;
      v23 = v19;
      v24 = 2082;
      v25 = a3;
      v26 = 2082;
      v27 = a4;
      v28 = 2082;
      v29 = a6;
      v30 = 2082;
      v31 = a7;
      v32 = 2082;
      v33 = a8;
      v34 = 1024;
      v35 = a9;
      v20 = "Process %{public}d (%{public}s) requested to stop observing { %{public}s, %{public}s, %{public}s, %{public}s, managed: %d }";
LABEL_7:
      _os_log_debug_impl(&dword_1830E6000, v17, OS_LOG_TYPE_DEBUG, v20, &v22, 0x40u);
    }
  }

  else if (v18)
  {
    v22 = 67241730;
    v23 = a2;
    v24 = 2082;
    v25 = a3;
    v26 = 2082;
    v27 = a4;
    v28 = 2082;
    v29 = a6;
    v30 = 2082;
    v31 = a7;
    v32 = 2082;
    v33 = a8;
    v34 = 1024;
    v35 = a9;
    v20 = "Process %{public}d (%{public}s) stopped observing { %{public}s, %{public}s, %{public}s, %{public}s, managed: %d }";
    goto LABEL_7;
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __DEBUG_REQUEST_block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v34 = *MEMORY[0x1E69E9840];
  v16 = _CFPrefsDaemonLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(a1 + 32);
    v19[0] = 67241986;
    v19[1] = a2;
    v20 = 2082;
    v21 = a3;
    v22 = 2082;
    v23 = a4;
    v24 = 2082;
    v25 = a6;
    v26 = 2082;
    v27 = a7;
    v28 = 2082;
    v29 = a8;
    v30 = 1024;
    v31 = a9;
    v32 = 2048;
    v33 = v18;
    _os_log_debug_impl(&dword_1830E6000, v16, OS_LOG_TYPE_DEBUG, "Process %{public}d (%{public}s) sent a request related to { %{public}s, user: %{public}s, %{public}s, %{public}s, managed: %d } (%p)", v19, 0x4Au);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __DEBUG_WRITE_block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v33 = *MEMORY[0x1E69E9840];
  v16 = _CFPrefsDaemonLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v18[0] = 67241987;
    v18[1] = a2;
    v19 = 2082;
    v20 = a3;
    v21 = 2081;
    v22 = a5;
    v23 = 2082;
    v24 = a4;
    v25 = 2082;
    v26 = a6;
    v27 = 2082;
    v28 = a7;
    v29 = 2082;
    v30 = a8;
    v31 = 1024;
    v32 = a9;
    _os_log_debug_impl(&dword_1830E6000, v16, OS_LOG_TYPE_DEBUG, "Process %{public}d (%{public}s) wrote the key(s) %{private}s in { %{public}s, %{public}s, %{public}s, %{public}s, managed: %d }", v18, 0x4Au);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __DEBUG_READ_block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v34 = *MEMORY[0x1E69E9840];
  v16 = _CFPrefsDaemonLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(a1 + 32);
    v19[0] = 67241986;
    v19[1] = a2;
    v20 = 2082;
    v21 = a3;
    v22 = 2082;
    v23 = a4;
    v24 = 2082;
    v25 = a6;
    v26 = 2082;
    v27 = a7;
    v28 = 2082;
    v29 = a8;
    v30 = 1024;
    v31 = a9;
    v32 = 2082;
    v33 = v18;
    _os_log_debug_impl(&dword_1830E6000, v16, OS_LOG_TYPE_DEBUG, "Process %{public}d (%{public}s) read data for { %{public}s, %{public}s, %{public}s, %{public}s, managed: %d }, backed by %{public}s", v19, 0x4Au);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __DEBUG_READ_EMPTY_block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v34 = *MEMORY[0x1E69E9840];
  v16 = _CFPrefsDaemonLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(a1 + 32);
    v19[0] = 67241986;
    v19[1] = a2;
    v20 = 2082;
    v21 = a3;
    v22 = 2082;
    v23 = a4;
    v24 = 2082;
    v25 = a6;
    v26 = 2082;
    v27 = a7;
    v28 = 2082;
    v29 = a8;
    v30 = 1024;
    v31 = a9;
    v32 = 2082;
    v33 = v18;
    _os_log_debug_impl(&dword_1830E6000, v16, OS_LOG_TYPE_DEBUG, "Process %{public}d (%{public}s) read nothing for { %{public}s, %{public}s, %{public}s, %{public}s, managed: %d }, backed by %{public}s", v19, 0x4Au);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __DEBUG_NEEDS_TOKEN_block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v35 = *MEMORY[0x1E69E9840];
  v16 = _CFPrefsDaemonLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    if (*(a1 + 32))
    {
      v18 = "write";
    }

    else
    {
      v18 = "read";
    }

    v19 = 136448002;
    v20 = v18;
    v21 = 2082;
    v22 = a4;
    v23 = 2082;
    v24 = a6;
    v25 = 2082;
    v26 = a7;
    v27 = 2082;
    v28 = a8;
    v29 = 1024;
    v30 = a9;
    v31 = 1026;
    v32 = a2;
    v33 = 2082;
    v34 = a3;
    _os_log_debug_impl(&dword_1830E6000, v16, OS_LOG_TYPE_DEBUG, "temporarily rejecting %{public}s in { %{public}s, %{public}s, %{public}s, %{public}s, managed: %d } from process %{public}d (%{public}s) because an access token is needed", &v19, 0x4Au);
  }

  v17 = *MEMORY[0x1E69E9840];
}

@end