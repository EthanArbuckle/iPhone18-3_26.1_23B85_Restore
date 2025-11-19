void sub_10000108C(id a1, unint64_t a2, NSError *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = _FLLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000020F0(v3, v4);
    }
  }
}

void sub_100002064(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _FLLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100002310(v3, v4);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000020F0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to install: %@", &v2, 0xCu);
}

void sub_100002168(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 identifier];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Extension processed unexpected action %@ for item %@", &v6, 0x16u);
}

void sub_100002218(void *a1, void *a2, NSObject *a3)
{
  v5 = [a1 userInfo];
  v6 = [v5 valueForKey:@"ServerURL"];
  v7 = [v6 UTF8String];
  v8 = [a2 description];
  v9 = 136315394;
  v10 = v7;
  v11 = 2080;
  v12 = [v8 UTF8String];
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Completed opening URL (%s) - Error: (%s)", &v9, 0x16u);
}

void sub_100002310(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "launch SIMSetup failed - %@", &v2, 0xCu);
}