void sub_100000F2C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Motion update received", &v16, 2u);
  }

  v8 = DiagnosticLogHandleForCategory();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000013E8(v6, v9);
    }

    dispatch_semaphore_signal(*(a1 + 32));
    v10 = (a1 + 40);
    v11 = &off_1000041C0;
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Processing motion event %@", &v16, 0xCu);
    }

    v12 = *(a1 + 40);
    v10 = (a1 + 40);
    v13 = [v12 readDeviceAnglesFrom:v5];
    v14 = [*v10 result];
    [v14 setData:v13];

    dispatch_semaphore_signal(*(v10 - 1));
    v11 = &off_1000041D8;
  }

  v15 = [*v10 result];
  [v15 setStatusCode:v11];

  [*v10 setFinished:1];
}

void sub_1000013E8(void *a1, NSObject *a2)
{
  v3 = [a1 debugDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Motion update failed with error %@", &v4, 0xCu);
}