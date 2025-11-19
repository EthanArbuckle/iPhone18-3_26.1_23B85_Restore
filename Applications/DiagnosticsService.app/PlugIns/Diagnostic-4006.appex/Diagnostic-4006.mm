void sub_100001780(id a1)
{
  qword_100008798 = objc_alloc_init(DAHIDEventMonitor);

  _objc_release_x1();
}

void sub_100001CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100001CF0(uint64_t a1)
{
  v2 = [*(a1 + 32) HIDEvents];
  v3 = [v2 objectAtIndexedSubscript:*(a1 + 48)];
  v4 = [v3 objectForKeyedSubscript:@"HIDServiceClient"];
  v5 = [v4 pointerValue];

  if (v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = IOHIDServiceClientSetProperty(v5, *(a1 + 56), *(a1 + 64)) != 0;
  }

  else
  {
    v6 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000025F8();
    }
  }
}

uint64_t _HIDEventFilterCallback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = [a2 delegate];
    [v5 handleHIDEvent:a4];
  }

  return 0;
}

void sub_100002510(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100002660(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[ERROR] - Could not find plugin.", buf, 2u);
}