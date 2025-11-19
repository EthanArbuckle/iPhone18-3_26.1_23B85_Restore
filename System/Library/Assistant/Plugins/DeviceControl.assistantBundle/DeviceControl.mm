void sub_EA4(uint64_t a1)
{
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 takeScreenshot];

  v3 = *(a1 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1344(v3);
  }
}

void sub_1060(uint64_t a1)
{
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 activateHomeButton];

  v3 = *(a1 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_13CC(v3);
  }
}

void sub_121C(uint64_t a1)
{
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 activateLockButton];

  v3 = *(a1 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1454(v3);
  }
}