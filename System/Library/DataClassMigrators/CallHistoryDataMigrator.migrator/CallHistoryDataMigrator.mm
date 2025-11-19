void sub_1058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_107C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = +[CHLogServer sharedInstance];
  v4 = [v3 logHandleForDomain:"CallHistoryDataMigrator"];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1628(v2, v4);
  }
}

void sub_1628(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Reset call timers request failed due to connection error %{public}@", &v2, 0xCu);
}