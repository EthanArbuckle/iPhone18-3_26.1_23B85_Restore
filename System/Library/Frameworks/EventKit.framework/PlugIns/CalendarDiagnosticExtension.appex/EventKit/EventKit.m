void sub_100000CDC(id a1)
{
  qword_100008690 = os_log_create("com.apple.calendar", "CalendarDiagnosticExtension");

  _objc_release_x1();
}

void sub_100001528(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Diagnostics collector failed: %@", &v2, 0xCu);
}