void sub_100001F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001F7C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001F94(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v11 = v10;
  if (!v9 && (v16 = [v10 statusCode], v7) && v16 == 200)
  {
    v17 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:0];
    v18 = *(*(a1 + 48) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    v12 = handleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138412290;
      v22 = v20;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "http response: %@", buf, 0xCu);
    }
  }

  else
  {
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"http status code: %d, http error: %@", [v11 statusCode], v9);
    v13 = sub_1000040B0(0xFFFFFFFFFFFFFFF3, v12, 0);
    v14 = *(*(a1 + 40) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100002810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 256), 8);
  _Block_object_dispose((v39 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_100002874(void *a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = handleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Location : %@", buf, 0xCu);
  }

  v12 = handleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Error    : %@", buf, 0xCu);
  }

  v13 = handleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v9;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "response : %@", buf, 0xCu);
  }

  objc_storeStrong((*(a1[4] + 8) + 40), a2);
  if (v10 || !*(*(a1[4] + 8) + 40))
  {
    objc_storeStrong((*(a1[7] + 8) + 40), a4);
    v19 = handleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1000043C8((a1 + 7));
    }
  }

  else
  {
    v14 = +[NSFileManager defaultManager];
    v15 = *(*(a1[4] + 8) + 40);
    v16 = [NSURL fileURLWithPath:@"/private/var/tmp/VeridianFWImage/FirmwareMap.plist"];
    v17 = *(a1[6] + 8);
    obj = *(v17 + 40);
    LOBYTE(v15) = [v14 moveItemAtURL:v15 toURL:v16 error:&obj];
    objc_storeStrong((v17 + 40), obj);
    *(*(a1[5] + 8) + 24) = v15;

    v18 = *(*(a1[6] + 8) + 40);
    if (*(*(a1[5] + 8) + 24) != 1 || v18)
    {
      objc_storeStrong((*(a1[7] + 8) + 40), v18);
      v19 = handleForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100004354((a1 + 7));
      }
    }

    else
    {
      v19 = handleForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = @"/private/var/tmp/VeridianFWImage/FirmwareMap.plist";
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "File moved to:%@", buf, 0xCu);
      }
    }
  }

  dispatch_semaphore_signal(*(*(a1[8] + 8) + 40));
}

void sub_10000373C(uint64_t a1, uint64_t a2)
{
  v4 = handleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = a1;
    v7 = 2080;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: %s", &v5, 0x16u);
  }
}

_BYTE *sub_100003A5C(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void sub_100003A78(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

uint64_t sub_100003AA0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*(*result + 8) + 40);
  return result;
}

id sub_1000040B0(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    if (v5 | v6)
    {
      v8 = +[NSMutableDictionary dictionary];
      if (v5)
      {
        v9 = handleForCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_10000456C(v5, v9);
        }

        [v8 setObject:v5 forKeyedSubscript:NSLocalizedDescriptionKey];
      }

      if (v7)
      {
        [v8 setObject:v7 forKeyedSubscript:NSUnderlyingErrorKey];
      }

      a1 = [NSError errorWithDomain:CRErrorDomain code:a1 userInfo:v8];
    }

    else
    {
      a1 = [NSError errorWithDomain:CRErrorDomain code:a1 userInfo:0];
    }
  }

  return a1;
}

void sub_1000041F0()
{
  sub_100003A94();
  sub_100003A6C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000422C()
{
  sub_100003A94();
  sub_100003A6C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100004268()
{
  sub_100003A94();
  sub_100003A6C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100004318()
{
  sub_100003A94();
  sub_100003A6C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100004354(uint64_t a1)
{
  sub_100003AA0(a1, __stack_chk_guard);
  sub_100003A6C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000043C8(uint64_t a1)
{
  sub_100003AA0(a1, __stack_chk_guard);
  sub_100003A6C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000044EC()
{
  sub_100003A94();
  sub_100003A6C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000456C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%@", &v2, 0xCu);
}