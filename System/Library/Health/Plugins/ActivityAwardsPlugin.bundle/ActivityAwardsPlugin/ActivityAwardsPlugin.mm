void sub_29E9F5874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_29E9F58A4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29E9F58BC(uint64_t a1)
{
  v2 = MEMORY[0x29EDBE0A0];
  v3 = [objc_alloc(MEMORY[0x29EDB8E50]) initWithArray:*(a1 + 32)];
  v4 = *(a1 + 64);
  v5 = [*(a1 + 40) profile];
  v6 = *(*(a1 + 56) + 8);
  obj = *(v6 + 40);
  v7 = [v2 insertEarnedInstances:v3 provenance:v4 useLegacySyncIdentity:1 profile:v5 databaseContext:0 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v7 != 0;
}

void sub_29E9F5BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_29E9F5BE4(uint64_t a1)
{
  v2 = MEMORY[0x29EDBE0B8];
  v3 = *(a1 + 64);
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) profile];
  v6 = *(*(a1 + 56) + 8);
  obj = *(v6 + 40);
  LOBYTE(v2) = [v2 insertTemplates:v4 provenance:v3 useLegacySyncIdentity:1 profile:v5 databaseContext:0 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v2;
}

void sub_29E9F60F4(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  v5 = ACHLogDefault();
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_29E9F4000, v6, OS_LOG_TYPE_DEFAULT, "Workouts added trigger successfully sent.", v7, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_29E9F65FC(v4, v6);
  }
}

void sub_29E9F6334(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  v5 = ACHLogDefault();
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_29E9F4000, v6, OS_LOG_TYPE_DEFAULT, "Triggers for activity update successfully sent.", v7, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_29E9F6674(v4, v6);
  }
}

void sub_29E9F65FC(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_29E9F4000, a2, OS_LOG_TYPE_ERROR, "Workouts added trigger failed to send: %@", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

void sub_29E9F6674(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_29E9F4000, a2, OS_LOG_TYPE_ERROR, "Triggers for activity update failed to send: %@", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}