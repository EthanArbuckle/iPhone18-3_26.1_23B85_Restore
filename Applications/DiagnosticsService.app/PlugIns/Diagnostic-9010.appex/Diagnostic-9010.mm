void sub_100001338(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained buttonEventMonitor];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 addTarget:v3 action:"handleButtonEvent:" forButtonEvents:0xFFFFFFFFLL propagate:0];
}

void sub_100001590(uint64_t a1)
{
  v2 = [*(a1 + 32) buttonEventMonitor];
  [v2 removeTarget:*(a1 + 32)];
}

id sub_100002368(uint64_t a1)
{
  v2 = reboot3();
  if (v2)
  {
    v3 = v2;
    v4 = handleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100003BE0(v3, v4);
    }

    return [*(a1 + 32) endTestWithStatusCode:-73 error:0];
  }

  else
  {
    v6 = *(a1 + 32);

    return [v6 endTestWithStatusCode:0 error:0];
  }
}

uint64_t sub_100002B80()
{
  if (!qword_10000CDC0)
  {
    qword_10000CDC0 = _sl_dlopen();
  }

  return qword_10000CDC0;
}

uint64_t sub_100002C50(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10000CDC0 = result;
  return result;
}

Class sub_100002CC4(uint64_t a1)
{
  if (!sub_100002B80())
  {
    v3 = abort_report_np();
    free(v3);
  }

  result = objc_getClass("DSHardwareButtonEventMonitor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100003C58();
  }

  qword_10000CDC8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100003BE0(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Reboot failed with error: %d", v2, 8u);
}