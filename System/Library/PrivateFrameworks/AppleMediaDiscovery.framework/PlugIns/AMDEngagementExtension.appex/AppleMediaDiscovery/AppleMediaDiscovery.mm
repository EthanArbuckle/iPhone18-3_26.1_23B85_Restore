void sub_100000E04(id *a1)
{
  v9[2] = a1;
  v9[1] = a1;
  v2 = +[NSProcessInfo processInfo];
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_100000F30;
  v7 = &unk_100004080;
  v8 = a1[4];
  v9[0] = a1[5];
  [(NSProcessInfo *)v2 performExpiringActivityWithReason:@"Calling AMD extension" usingBlock:?];

  objc_storeStrong(v9, 0);
  objc_storeStrong(&v8, 0);
}

void sub_100000F30(void *a1, char a2)
{
  v13 = a1;
  v12 = a2;
  v11[1] = a1;
  v11[0] = 0;
  v10 = 0;
  if (a2)
  {
    location = &_os_log_default;
    v8 = 16;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      log = location;
      type = v8;
      sub_1000010A8(v7);
      _os_log_error_impl(&_mh_execute_header, log, type, "Extension is being terminated", v7, 2u);
    }

    objc_storeStrong(&location, 0);
    +[AMDJSRequestHandler wrapUp];
    objc_storeStrong(&v10, &off_100004180);
    v2 = [AMDError allocError:29 withMessage:@"AMD is being killed"];
    v3 = v11[0];
    v11[0] = v2;

    (*(a1[5] + 16))();
  }

  else
  {
    [AMDJSRequestHandler handlePayload:a1[4] withCompletionHandler:a1[5]];
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(v11, 0);
}

_BYTE *sub_1000010A8(_BYTE *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}