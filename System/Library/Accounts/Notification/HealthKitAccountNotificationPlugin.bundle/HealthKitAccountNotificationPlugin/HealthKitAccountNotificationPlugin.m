void sub_29C8D0288(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x29EDBA7B8];
  if (os_log_type_enabled(*MEMORY[0x29EDBA7B8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = @"Did not";
    v10 = 138543874;
    if (a2)
    {
      v8 = @"Did";
    }

    v11 = v7;
    v12 = 2114;
    v13 = v8;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_29C8CF000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ notify about account change %{public}@", &v10, 0x20u);
  }

  v9 = *MEMORY[0x29EDCA608];
}

void sub_29C8D0378(uint64_t a1, int a2, void *a3)
{
  v24 = *MEMORY[0x29EDCA608];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    _HKInitializeLogging();
    v7 = MEMORY[0x29EDBA7B8];
    v8 = *MEMORY[0x29EDBA7B8];
    if (os_log_type_enabled(*MEMORY[0x29EDBA7B8], OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138543874;
      v19 = v9;
      v20 = 2114;
      v21 = @"Did";
      v22 = 2114;
      v23 = v6;
      _os_log_impl(&dword_29C8CF000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ send new device added notification message successfully. Error: %{public}@", buf, 0x20u);
    }

    v10 = *(a1 + 40);
    v11 = [MEMORY[0x29EDB8DB0] date];
    v12 = *MEMORY[0x29EDBB028];
    v17 = v6;
    v13 = [v10 setDate:v11 forKey:v12 error:&v17];
    v14 = v17;

    if ((v13 & 1) == 0)
    {
      _HKInitializeLogging();
      v15 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
        sub_29C8D0570(a1, v14, v15);
      }
    }
  }

  else
  {
    v14 = v5;
  }

  v16 = *MEMORY[0x29EDCA608];
}

void sub_29C8D04E8(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x29EDCA608];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_29C8CF000, log, OS_LOG_TYPE_ERROR, "%{public}@: Getting last notified of account change failed with error: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x29EDCA608];
}

void sub_29C8D0570(uint64_t a1, uint64_t a2, os_log_t log)
{
  v12 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v6 = 138543874;
  v7 = v3;
  v8 = 2114;
  v9 = v4;
  v10 = 2114;
  v11 = a2;
  _os_log_error_impl(&dword_29C8CF000, log, OS_LOG_TYPE_ERROR, "%{public}@: Unable to persist %{public}@: %{public}@", &v6, 0x20u);
  v5 = *MEMORY[0x29EDCA608];
}