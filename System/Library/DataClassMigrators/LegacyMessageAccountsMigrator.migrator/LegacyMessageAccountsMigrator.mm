void sub_CF4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1A30(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = MFLogGeneral();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) identifier];
      v7 = [v4 ef_publicDescription];
      sub_2A68(v6, v7, v8, v5);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_1E8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_29EC(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Failed to find parent account with identifier %@", &v3, 0xCu);
}

void sub_2A68(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Error saving account %@: %{public}@", buf, 0x16u);
}