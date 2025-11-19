BOOL sub_100000FC4(id a1, id a2)
{
  v2 = a2;
  v3 = handleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Testing Endpoint URL: %@", &v12, 0xCu);
  }

  v4 = [NSURL URLWithString:v2];
  v5 = v4;
  if (v4 && ([v4 host], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [v5 scheme];
    if (![v7 caseInsensitiveCompare:@"http"])
    {
      v10 = 1;
      goto LABEL_12;
    }

    v8 = [v5 scheme];
    v9 = [v8 caseInsensitiveCompare:@"https"];

    if (!v9)
    {
      v10 = 1;
      goto LABEL_13;
    }

    v7 = handleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100003A60(v7);
    }
  }

  else
  {
    v7 = handleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100003AA4(v7);
    }
  }

  v10 = 0;
LABEL_12:

LABEL_13:
  return v10;
}

void sub_10000199C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose((v47 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001A0C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001A24(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v7 = *(a1 + 48);
  v11 = *(a1 + 64);
  v8[2] = sub_100001B08;
  v8[3] = &unk_100008290;
  v2 = *(a1 + 88);
  v12 = *(a1 + 80);
  v3 = *(a1 + 40);
  v4 = v7.i64[1];
  v5.i64[0] = *(a1 + 32);
  v5.i64[1] = v3;
  v6 = vextq_s8(v7, v5, 8uLL);
  v5.i64[0] = v7.i64[0];
  v10 = v6;
  v9 = v5;
  [v3 _testURL:v7.i64[0] timeout:v2 completion:v8];
}

void sub_100001B08(uint64_t a1, uint64_t a2)
{
  v4 = handleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Testing endpoint completed: %@", &v9, 0xCu);
  }

  v6 = *(a1 + 40);
  objc_sync_enter(v6);
  v7 = *(*(*(a1 + 64) + 8) + 40);
  v8 = [NSNumber numberWithLong:a2];
  [v7 setObject:v8 forKey:*(a1 + 32)];

  if (a2)
  {
    [*(*(*(a1 + 72) + 8) + 40) addObject:*(a1 + 32)];
    *(*(*(a1 + 80) + 8) + 24) = 0;
  }

  objc_sync_exit(v6);

  dispatch_semaphore_signal(*(a1 + 48));
  dispatch_group_leave(*(a1 + 56));
}

void sub_100002CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_100002CF0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v12 = v7;

  v19 = v8;
  v13 = [v19 allHeaderFields];
  v14 = *(*(a1 + 48) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = *(*(a1 + 56) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v9;
  v18 = v9;

  LODWORD(v17) = [v19 statusCode];
  *(*(*(a1 + 64) + 8) + 24) = v17;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100003A44(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}