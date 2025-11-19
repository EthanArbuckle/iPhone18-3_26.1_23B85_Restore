@interface ERROR
@end

@implementation ERROR

void __ERROR_READ_REJECTED_block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v35 = *MEMORY[0x1E69E9840];
  v16 = _CFPrefsDaemonLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v18 = *(a1 + 32);
    v19 = 136448002;
    v20 = a4;
    v21 = 2082;
    v22 = a6;
    v23 = 2082;
    v24 = a7;
    v25 = 2082;
    v26 = a8;
    v27 = 1024;
    v28 = a9;
    v29 = 1026;
    v30 = a2;
    v31 = 2082;
    v32 = a3;
    v33 = 2082;
    v34 = v18;
    _os_log_error_impl(&dword_1830E6000, v16, OS_LOG_TYPE_ERROR, "rejecting read of { %{public}s, %{public}s, %{public}s, %{public}s, managed: %d } from process %{public}d (%{public}s) because %{public}s", &v19, 0x4Au);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __ERROR_LOG_PREUNLOCK_ACCESS_block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = _CFPrefsDaemonLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v9 = 136446722;
    v10 = v8;
    v11 = 2082;
    v12 = a3;
    v13 = 1024;
    v14 = a2;
    _os_log_error_impl(&dword_1830E6000, v6, OS_LOG_TYPE_ERROR, "#prefsbeforeunlock Attempt to access %{public}s by %{public}s(%d)", &v9, 0x1Cu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __ERROR_WRITE_REJECTED_block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v38 = *MEMORY[0x1E69E9840];
  v17 = _CFPrefsDaemonLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v19 = *(a1 + 32);
    v20 = 136382723;
    v21 = a5;
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
    v32 = 1026;
    v33 = a2;
    v34 = 2082;
    v35 = a3;
    v36 = 2082;
    v37 = v19;
    _os_log_error_impl(&dword_1830E6000, v17, OS_LOG_TYPE_ERROR, "rejecting write of key(s) %{private}s in { %{public}s, %{public}s, %{public}s, %{public}s, managed: %d } from process %{public}d (%{public}s) because %{public}s", &v20, 0x54u);
  }

  v18 = *MEMORY[0x1E69E9840];
}

@end