void sub_100001368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000138C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000013A4(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v5 = handleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(*(a1 + 48) + 8) + 40);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Decompress Pearl frames got response from corerepaird, error: %@", &v7, 0xCu);
  }

  [*(a1 + 32) invalidate];
  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100001704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100001728(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v5 = handleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(*(a1 + 48) + 8) + 40);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Update Savage firmware got response from corerepaird, error: %@", &v7, 0xCu);
  }

  [*(a1 + 32) invalidate];
  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100001A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100001AAC(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v5 = handleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(*(a1 + 48) + 8) + 40);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Update Brunor firmware got response from corerepaird, error: %@", &v7, 0xCu);
  }

  [*(a1 + 32) invalidate];
  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100001E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100001E30(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v5 = handleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(*(a1 + 48) + 8) + 40);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Verify PSD3 got response from corerepaird, error: %@", &v7, 0xCu);
  }

  [*(a1 + 32) invalidate];
  dispatch_semaphore_signal(*(a1 + 40));
}

id sub_100002A2C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    if (v5 | v6)
    {
      v8 = +[NSMutableDictionary dictionary];
      if (v5)
      {
        v9 = handleForCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_100002BF0(v5, v9);
        }

        [v8 setObject:v5 forKeyedSubscript:NSLocalizedDescriptionKey];
      }

      if (v7)
      {
        [v8 setObject:v7 forKeyedSubscript:NSUnderlyingErrorKey];
      }

      a1 = [NSError errorWithDomain:CRErrorDomain code:a1 userInfo:v8];
    }

    else
    {
      a1 = [NSError errorWithDomain:CRErrorDomain code:a1 userInfo:0];
    }
  }

  return a1;
}

void sub_100002B6C(os_log_t log)
{
  v1 = 138412290;
  v2 = @"/private/var/hardware/FactoryData";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Found no FDR HW folder at: %@", &v1, 0xCu);
}

void sub_100002BF0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%@", &v2, 0xCu);
}