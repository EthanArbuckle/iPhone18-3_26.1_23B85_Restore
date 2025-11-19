void sub_100001820(id a1)
{
  v1 = handleForCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Reload plugins completed", v2, 2u);
  }
}

uint64_t sub_1000021D8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000021F0(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v5 = handleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100004A7C(v4, v5);
    }
  }

  else
  {
    v5 = handleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Purge existing assets successfully", v6, 2u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000022C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = handleForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100004A7C(v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Purge existing assets successfully", v6, 2u);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100002A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_100002A88(uint64_t a1, void *a2, void *a3, void *a4)
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
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"http error: %@, http status code: %d", v9, [v11 statusCode]);
    v13 = sub_10000425C(0xFFFFFFFFFFFFFFF3, v12, 0);
    v14 = *(*(a1 + 40) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000032E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 224), 8);
  _Block_object_dispose((v37 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_100003344(void *a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = handleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Location : %@", buf, 0xCu);
  }

  v12 = handleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Error    : %@", buf, 0xCu);
  }

  v13 = handleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "response : %@", buf, 0xCu);
  }

  objc_storeStrong((*(a1[4] + 8) + 40), a2);
  if (v10 || !*(*(a1[4] + 8) + 40))
  {
    v20 = @"Failed to download asset";
    v18 = v10;
LABEL_15:
    v21 = sub_10000425C(0xFFFFFFFFFFFFFFE9, v20, v18);
    v22 = *(a1[7] + 8);
    v19 = *(v22 + 40);
    *(v22 + 40) = v21;
    goto LABEL_16;
  }

  v14 = +[NSFileManager defaultManager];
  v15 = *(*(a1[4] + 8) + 40);
  v16 = [NSURL fileURLWithPath:@"/private/var/mobile/RepairDiskImage/FactoryDiskImagePersonalized.dmg"];
  v17 = *(a1[6] + 8);
  obj = *(v17 + 40);
  LOBYTE(v15) = [v14 moveItemAtURL:v15 toURL:v16 error:&obj];
  objc_storeStrong((v17 + 40), obj);
  *(*(a1[5] + 8) + 24) = v15;

  v18 = *(*(a1[6] + 8) + 40);
  if (*(*(a1[5] + 8) + 24) != 1 || v18)
  {
    v20 = @"Failed to move file";
    goto LABEL_15;
  }

  v19 = handleForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = @"/private/var/mobile/RepairDiskImage/FactoryDiskImagePersonalized.dmg";
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "File moved to:%@", buf, 0xCu);
  }

LABEL_16:

  dispatch_semaphore_signal(*(*(a1[8] + 8) + 40));
}

BOOL sub_100004244(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

id sub_10000425C(void *a1, void *a2, void *a3)
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
          sub_100004AF4(v5, v9);
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

void sub_100004A7C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to purge existing assets, error: %@", &v2, 0xCu);
}

void sub_100004AF4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%@", &v2, 0xCu);
}