void sub_10000219C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_1000021C4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100002EE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = handleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Result %@", &v9, 0xCu);
  }

  v5 = [v3 objectForKeyedSubscript:@"statusCode"];
  v6 = [*(a1 + 32) result];
  [v6 setStatusCode:v5];

  v7 = [v3 objectForKeyedSubscript:@"data"];
  v8 = [*(a1 + 32) result];
  [v8 setData:v7];

  [*(a1 + 40) invalidate];
  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_1000032B0(os_log_t log)
{
  v1 = 138412290;
  v2 = @"PrCL";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Property:%@ not a string", &v1, 0xCu);
}

void sub_100003334(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to match Property:%@", &v2, 0xCu);
}

id sub_1000033AC(void *a1, void *a2)
{
  v4 = handleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Not in diagnostics mode", v7, 2u);
  }

  v5 = [a1 result];
  *a2 = v5;
  return [v5 setStatusCode:&off_100008AA8];
}