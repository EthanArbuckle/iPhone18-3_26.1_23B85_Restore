void sub_100001324(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7[1] = a1;
  if (v8)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v3 = [NSHTTPURLResponse alloc];
    v4 = [*(a1 + 32) url];
    v7[0] = [v3 initWithURL:? statusCode:? HTTPVersion:? headerFields:?];

    if (*(a1 + 48))
    {
      (*(*(a1 + 48) + 16))();
    }

    objc_storeStrong(v7, 0);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

uint64_t sub_100005AB0(uint64_t a1)
{
  v16 = a1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v10 = qword_100021058;
  v15 = qword_100021058;
  if (!qword_100021058)
  {
    v3 = _NSConcreteStackBlock;
    v4 = -1073741824;
    v5 = 0;
    v6 = sub_100005BC4;
    v7 = &unk_100018520;
    v8 = &v11;
    v9 = v16;
    sub_100005BC4(&v3);
  }

  v2 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v2;
}

uint64_t sub_100005BC4(uint64_t a1)
{
  memcpy(__dst, off_1000184F0, sizeof(__dst));
  v1 = *(a1 + 40);
  v2 = _sl_dlopen();
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  qword_100021058 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100005C84()
{
  v2 = 0;
  v1 = sub_100005AB0(&v2);
  if (!v1)
  {
    abort_report_np();
  }

  if (v2)
  {
    free(v2);
  }

  return v1;
}

uint64_t sub_100005D00()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_100021060;
  v13 = qword_100021060;
  if (!qword_100021060)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100005E08;
    v6 = &unk_100018548;
    v7 = &v9;
    sub_100005E08(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v1;
}

uint64_t sub_100005E08(uint64_t a1)
{
  v1 = sub_100005C84();
  v2 = dlsym(v1, "AMSAccountMediaTypeAppStore");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  qword_100021060 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_100005E74()
{
  v2 = sub_100005D00();
  if (!v2)
  {
    dlerror();
    abort_report_np();
  }

  v0 = *v2;

  return v0;
}

uint64_t sub_100005EDC()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_100021068;
  v13 = qword_100021068;
  if (!qword_100021068)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100005FE4;
    v6 = &unk_100018548;
    v7 = &v9;
    sub_100005FE4(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v1;
}

uint64_t sub_100005FE4(uint64_t a1)
{
  v1 = sub_100005C84();
  v2 = dlsym(v1, "AMSAccountMediaTypeiTunes");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  qword_100021068 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_100006050()
{
  v2 = sub_100005EDC();
  if (!v2)
  {
    dlerror();
    abort_report_np();
  }

  v0 = *v2;

  return v0;
}

uint64_t sub_100007B1C(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

_BYTE *sub_100007B5C(_BYTE *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void sub_100007B78(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

void sub_100007C00(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  dispatch_group_leave(*(a1 + 32));
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), location[0]);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void sub_100007CCC(NSObject *a1, char a2, id obj)
{
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    sub_100007DEC(v8, v6 & 1, location);
    _os_log_debug_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEBUG, "Finished showing validator error with result: %d and alert error: %@", v8, 0x12u);
  }

  objc_storeStrong(oslog, 0);
  [(objc_class *)a1[4].isa completeWithError:a1[5].isa];
  objc_storeStrong(&location, 0);
}

uint64_t sub_100007DEC(uint64_t result, int a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 64;
  *(result + 9) = 8;
  *(result + 10) = a3;
  return result;
}

void sub_100007E40(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v25 = 0;
  objc_storeStrong(&v25, a3);
  v24[1] = a1;
  if (location[0])
  {
    v24[0] = _AKLogSystem();
    v23 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v24[0], OS_LOG_TYPE_DEFAULT))
    {
      v7 = [location[0] credential];
      sub_100007B1C(v28, v7);
      _os_log_impl(&_mh_execute_header, v24[0], v23, "Authorization Succeded with credential: %@", v28, 0xCu);
    }

    objc_storeStrong(v24, 0);
    group = *(a1 + 32);
    queue = dispatch_get_global_queue(25, 0);
    v14 = _NSConcreteStackBlock;
    v15 = -1073741824;
    v16 = 0;
    v17 = sub_100008264;
    v18 = &unk_1000186C0;
    v22[1] = *(a1 + 64);
    v19 = *(a1 + 40);
    v20 = *(a1 + 48);
    v21 = location[0];
    v22[0] = *(a1 + 56);
    dispatch_group_notify(group, queue, &v14);

    objc_storeStrong(v22, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v19, 0);
  }

  else if ((*(a1 + 72) & 1) != 0 || ([v25 ak_isUserCancelError] & 1) == 0)
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100007B1C(v27, v25);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Authorization failed with error: %@", v27, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [*(a1 + 48) completeWithError:v25];
  }

  else
  {
    v13 = _AKLogSystem();
    v12 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v13;
      v4 = v12;
      sub_100007B5C(v11);
      _os_log_impl(&_mh_execute_header, v3, v4, "Authorization cancelled by user.", v11, 2u);
    }

    objc_storeStrong(&v13, 0);
    [*(a1 + 48) cancel];
  }

  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

void sub_100008264(uint64_t a1)
{
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v6 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(*(*(a1 + 64) + 8) + 40);
    v7 = [*(a1 + 48) credential];
    v1 = *(a1 + 56);
    [v6 _sendAuthorizationResponseToRequest:v4 usingTemplate:v5 withCredential:? requestParams:?];
  }

  else
  {
    v2 = *(a1 + 40);
    v3 = [NSError ak_errorWithCode:-7029];
    [v2 completeWithError:?];
  }
}

uint64_t sub_1000087C0(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

id sub_10000A510(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = location[0];
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

void sub_10000A94C(id a1)
{
  v1 = [NSSet setWithObjects:@"form_post", @"web_message", 0, a1, a1];
  v2 = qword_100021070;
  qword_100021070 = v1;
}

void sub_10000B52C(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  v14[1] = a1;
  if (location[0])
  {
    v14[0] = _AKLogSystem();
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v14[0], OS_LOG_TYPE_DEFAULT))
    {
      sub_10000B80C(v19, [location[0] statusCode]);
      _os_log_impl(&_mh_execute_header, v14[0], v13, "Reset password response received: %d", v19, 8u);
    }

    objc_storeStrong(v14, 0);
    v12 = _AKLogSystem();
    v11 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_100007B1C(v18, location[0]);
      _os_log_debug_impl(&_mh_execute_header, v12, v11, "Reset password response: %@", v18, 0xCu);
    }

    objc_storeStrong(&v12, 0);
  }

  else if ([v15 ak_isUserCancelError])
  {
    v10 = _AKLogSystem();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v10;
      v4 = v9;
      sub_100007B5C(v8);
      _os_log_impl(&_mh_execute_header, v3, v4, "Reset password cancelled by user.", v8, 2u);
    }

    objc_storeStrong(&v10, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100007B1C(v17, v15);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Reset password failed with error: %@", v17, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  [a1[4] cancel];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

uint64_t sub_10000B80C(uint64_t result, int a2)
{
  *result = 0;
  *(result + 1) = 1;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  return result;
}