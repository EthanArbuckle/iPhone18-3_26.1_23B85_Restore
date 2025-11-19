void sub_100000F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _mo_log_facility_get_os_log(dispatch_once_t *predicate)
{
  if (*predicate != -1)
  {
    dispatch_once_f(predicate, predicate, _mo_log_facility_prepare);
  }

  v2 = predicate[2];

  return v2;
}

os_log_t _mo_log_facility_prepare(uint64_t a1)
{
  result = os_log_create("com.apple.MomentsUIService.MomentsDiagnosticsExtensionForFeedbackAssistant", *(a1 + 8));
  *(a1 + 16) = result;
  return result;
}