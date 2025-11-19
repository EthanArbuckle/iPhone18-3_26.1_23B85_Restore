uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Reporting locale prefs to analyticsd", v2, 2u);
  }

  report_locale_prefs_to_analyticsd();
  objc_autoreleasePoolPop(v0);
  return 0;
}