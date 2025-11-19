void sub_100001A6C(uint64_t a1)
{
  v1 = [*(a1 + 32) shutterButton];
  [v1 setEnabled:1];
}

void sub_100003094(id a1, NSNotification *a2)
{
  v2 = a2;
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100005384();
  }
}

void sub_1000030EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "************** START: %@", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = [DAExclavesSupport exclavesStatusForSensors:2];
    v7 = objc_loadWeakRetained((a1 + 32));
    [v7 setExclavesStatus:v6];
  }
}

void sub_1000031F0(id a1, NSNotification *a2)
{
  v2 = a2;
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "************** STOP: %@", &v4, 0xCu);
  }
}

void sub_1000032A0(id a1, NSNotification *a2)
{
  v2 = a2;
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "************** INTERRUPT: %@", &v4, 0xCu);
  }
}

void sub_100003350(id a1, NSNotification *a2)
{
  v2 = a2;
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "************** INTERRUPTION ENDED: %@", &v4, 0xCu);
  }
}

void sub_10000530C()
{
  sub_1000047D4();
  sub_1000047C8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100005348()
{
  sub_1000047D4();
  sub_1000047C8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000053F8()
{
  sub_1000047D4();
  sub_1000047C8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100005434(char a1, uint64_t a2, os_log_t log)
{
  v3[0] = 67109378;
  v3[1] = a1 & 1;
  v4 = 2112;
  v5 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to set torch state to %d. Error: %@", v3, 0x12u);
}

void sub_1000054C0()
{
  sub_1000047D4();
  sub_1000047C8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000054FC()
{
  sub_1000047D4();
  sub_1000047C8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}