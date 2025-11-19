void sub_100002A30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100002A6C(id a1, NSNotification *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = a2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "************** ERROR: %@", &v3, 0xCu);
  }
}

void sub_100002B0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[DSTestAutomation sharedInstance];
  v5 = [v4 testAutomationEnabled];

  if (v5)
  {
    UIAccessibilityPostNotification(0xFA2u, &off_100014FC8);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "************** START: %@", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v7 = [DAExclavesSupport exclavesStatusForSensors:2];
    v8 = objc_loadWeakRetained((a1 + 32));
    [v8 setExclavesStatus:v7];
  }
}

void sub_100002C3C(id a1, NSNotification *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = a2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "************** STOP: %@", &v3, 0xCu);
  }
}

void sub_100002CDC(id a1, NSNotification *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = a2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "************** INTERRUPT: %@", &v3, 0xCu);
  }
}

void sub_100002D7C(id a1, NSNotification *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = a2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "************** INTERRUPTION ENDED: %@", &v3, 0xCu);
  }
}

id sub_100004064(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) tag];

  return [v2 removeResultWithTag:v3];
}

void sub_1000040AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[UIColor clearColor];
  [v1 setBackgroundColor:v2];
}

id sub_100004854(uint64_t a1)
{
  v2 = [*(a1 + 32) allResults];
  v3 = [v2 count];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = &off_100014F10;
  }

  else
  {
    v5 = &off_100014F28;
  }

  return [v4 endTestWithStatusCode:v5];
}

void sub_100007D40(uint64_t a1)
{
  v1 = [*(a1 + 32) shutterButton];
  [v1 setEnabled:1];
}