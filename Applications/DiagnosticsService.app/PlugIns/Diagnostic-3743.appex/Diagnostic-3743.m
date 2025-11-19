void sub_100001408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

uint64_t sub_100001438(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001450(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v4 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Powerlog] Adding powerlog archive file: %@", buf, 0xCu);
    }

    v5 = *(a1 + 40);
    v6 = *(*(a1 + 48) + 8);
    obj = *(v6 + 40);
    v7 = [v5 addURL:v3 prefix:@"PLArchive" error:&obj];
    objc_storeStrong((v6 + 40), obj);
    if ((v7 & 1) == 0)
    {
      *(*(*(a1 + 56) + 8) + 24) = 0;
      v8 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100002198(a1 + 48);
      }

      v9 = [DASharedTestStatusHelper statusCodeForArchiveError:*(*(*(a1 + 48) + 8) + 40)];
      v10 = [*(a1 + 32) result];
      [v10 setStatusCode:v9];
    }
  }
}

void sub_1000020A0(uint64_t a1)
{
  v6 = *(*a1 + 40);
  sub_100002094();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10000211C(uint64_t a1)
{
  v6 = *(*a1 + 40);
  sub_100002094();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100002198(uint64_t a1)
{
  v6 = *(*(*a1 + 8) + 40);
  sub_100002094();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}