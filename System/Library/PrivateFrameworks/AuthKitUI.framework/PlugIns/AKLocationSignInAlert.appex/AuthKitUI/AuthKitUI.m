uint64_t sub_100002F30(uint64_t a1)
{
  v16 = a1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v10 = qword_1000111A0;
  v15 = qword_1000111A0;
  if (!qword_1000111A0)
  {
    v3 = _NSConcreteStackBlock;
    v4 = -1073741824;
    v5 = 0;
    v6 = sub_100003044;
    v7 = &unk_10000C2D0;
    v8 = &v11;
    v9 = v16;
    sub_100003044(&v3);
  }

  v2 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v2;
}

uint64_t sub_100003044(uint64_t a1)
{
  memcpy(__dst, off_10000C2A0, sizeof(__dst));
  v1 = *(a1 + 40);
  v2 = _sl_dlopen();
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  qword_1000111A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100003104()
{
  v2 = 0;
  v1 = sub_100002F30(&v2);
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

id sub_100003180()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1000111A8;
  v13 = qword_1000111A8;
  if (!qword_1000111A8)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1000032B0;
    v6 = &unk_10000C2F8;
    v7 = &v9;
    sub_1000032B0(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t sub_1000032B0(uint64_t a1)
{
  sub_100003104();
  Class = objc_getClass("AKAppleIDAuthenticationInAppContext");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  qword_1000111A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_100003358()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1000111B0;
  v13 = qword_1000111B0;
  if (!qword_1000111B0)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100003488;
    v6 = &unk_10000C2F8;
    v7 = &v9;
    sub_100003488(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t sub_100003488(uint64_t a1)
{
  sub_100003104();
  Class = objc_getClass("AKBasicLoginContentViewController");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  qword_1000111B0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100004560(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v24 = 0;
  objc_storeStrong(&v24, a3);
  v23[1] = a1;
  if (location[0])
  {
    v6 = [location[0] image];
    [*(a1[4] + 2) setImage:?];

    v18 = _NSConcreteStackBlock;
    v19 = -1073741824;
    v20 = 0;
    v21 = sub_10000487C;
    v22 = &unk_10000C350;
    v23[0] = a1[4];
    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_1000048E4;
    v16 = &unk_10000C378;
    v17 = a1[4];
    [UIView animateWithDuration:&v18 animations:&v12 completion:0.3];
    objc_storeStrong(&v17, 0);
    objc_storeStrong(v23, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v4 = type;
      v5 = [v24 localizedDescription];
      v9 = v5;
      sub_10000496C(v26, v9);
      _os_log_error_impl(&_mh_execute_header, log, v4, "Unable to snapshot location, error: %@", v26, 0xCu);

      objc_storeStrong(&v9, 0);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(a1[4] + 5, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

void sub_1000048E4(uint64_t a1)
{
  [*(*(a1 + 32) + 24) stopAnimating];
  [*(*(a1 + 32) + 24) removeFromSuperview];
  objc_storeStrong((*(a1 + 32) + 24), 0);
}

uint64_t sub_10000496C(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

void sub_1000059D8(id *a1)
{
  v10[2] = a1;
  v10[1] = a1;
  v2 = a1[4];
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_100005B18;
  v7 = &unk_10000C3C8;
  objc_copyWeak(v10, a1 + 6);
  v8 = a1[4];
  v9 = a1[5];
  [v2 startWithCompletionHandler:&v3];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v8, 0);
  objc_destroyWeak(v10);
}

void sub_100005B18(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13 = 0;
  objc_storeStrong(&v13, a3);
  v12[1] = a1;
  v12[0] = objc_loadWeakRetained(a1 + 6);
  if (v12[0])
  {
    if (location[0])
    {
      [a1[5] _setImageForSnapshot:location[0]];
    }

    else
    {
      oslog = _AKLogSystem();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_10000496C(v15, v13);
        _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Unable to snapshot location, error: %@", v15, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      [*(v12[0] + 2) stopAnimating];
    }

    v8 = 0;
  }

  else
  {
    v11 = _AKLogSystem();
    v10 = 16;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      log = v11;
      type = v10;
      sub_100005D3C(v9);
      _os_log_error_impl(&_mh_execute_header, log, type, "Missing reference to map view!", v9, 2u);
    }

    objc_storeStrong(&v11, 0);
    v8 = 1;
  }

  objc_storeStrong(v12, 0);
  if (!v8)
  {
    v8 = 0;
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

_BYTE *sub_100005D3C(_BYTE *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}