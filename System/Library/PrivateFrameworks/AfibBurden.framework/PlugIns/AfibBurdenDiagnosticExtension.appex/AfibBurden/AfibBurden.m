id ab_get_framework_log()
{
  if (qword_10000C788 != -1)
  {
    sub_100002CBC();
  }

  v1 = qword_10000C790;

  return v1;
}

void sub_10000112C(id a1)
{
  qword_10000C790 = os_log_create("com.apple.Health.AFibBurden", "hid-framework");

  _objc_release_x1();
}

void sub_1000016E4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_100001FEC(id a1)
{
  v1 = objc_alloc_init(NSDateIntervalFormatter);
  v2 = qword_10000C7A0;
  qword_10000C7A0 = v1;

  [qword_10000C7A0 setTimeStyle:0];
  v3 = qword_10000C7A0;

  [v3 setDateStyle:2];
}

void sub_10000231C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100002340(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100002358(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = ab_get_framework_log();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100002DB4(a1, v7, v9);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v14 = 138543362;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Query for samples called back", &v14, 0xCu);
  }

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v6;
  v13 = v6;

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100002A44(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = ab_get_framework_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "failed to delete previous classifications", buf, 2u);
    }
  }

  v7 = +[NSDate now];
  v8 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
  [v8 setFirstWeekday:2];
  v9 = [v7 hk_dayIndexWithCalendar:v8];
  v10 = 10;
  do
  {
    v11 = ab_get_framework_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "running force analysis for the week containing dayIndex %{public}llu", buf, 0xCu);
    }

    notify_set_state(*(a1 + 48), v9);
    v12 = *(a1 + 32);
    v15 = v5;
    v13 = [v12 performAnalysisForWeekContainingDayIndex:v9 error:&v15];
    v14 = v15;

    notify_set_state(*(a1 + 48), 0);
    v9 -= 7;
    v5 = v14;
    --v10;
  }

  while (v10);
  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100002C24(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 8);
  v4 = 138543874;
  v5 = a1;
  v6 = 2114;
  v7 = v3;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[%{public}@:%{public}@]: Failed to create logging directory: %@", &v4, 0x20u);
}

void sub_100002DB4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[%{public}@]: Query for samples failed: %@", &v4, 0x16u);
}