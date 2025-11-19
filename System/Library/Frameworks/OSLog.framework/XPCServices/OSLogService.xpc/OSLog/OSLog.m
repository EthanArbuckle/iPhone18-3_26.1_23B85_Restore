void sub_100000F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100000F28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100000F40(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_getNextOSLogEntryWithReply:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100001004(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  *(*(a1 + 32) + 48) = 1;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = 0;
}

void sub_1000014E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  objc_destroyWeak((v37 + 48));
  _Block_object_dispose(&a18, 8);
  objc_destroyWeak((v36 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose((v38 - 200), 8);
  _Unwind_Resume(a1);
}

void sub_100001654(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

void sub_1000016D8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && [v3 type] == 1024)
  {
    v5 = convertEventProxyToEntry();
    v6 = WeakRetained[2];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100001940;
    v8[3] = &unk_1000042B0;
    v8[4] = WeakRetained;
    v9 = v5;
    v7 = v5;
    dispatch_sync(v6, v8);
  }
}

void sub_1000017B0(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (a2 != 5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v10 = a2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Error invalidation: %d", buf, 8u);
  }

  (*(*(a1 + 32) + 16))();
  if (WeakRetained)
  {
    v5 = WeakRetained[2];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000018F4;
    block[3] = &unk_100004300;
    block[4] = WeakRetained;
    dispatch_sync(v5, block);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void sub_1000018F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = 0;
}

void *sub_100001940(void *result)
{
  v1 = result[4];
  if ((*(v1 + 48) & 1) == 0)
  {
    return [*(v1 + 40) addObject:result[5]];
  }

  return result;
}

void sub_100001C40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001C60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

void start()
{
  unsetenv("TMPDIR");
  bzero(v8, 0x400uLL);
  if (!_set_user_dir_suffix() || !confstr(65537, v8, 0x400uLL))
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v0 = *__error();
    v6 = 67109120;
    v7 = v0;
    v1 = "failed to initialize temporary directory: %{darwin.errno}d";
    goto LABEL_5;
  }

  v2 = realpath_DARWIN_EXTSN(v8, 0);
  if (v2)
  {
    free(v2);
    v4 = objc_opt_new();
    v5 = +[NSXPCListener serviceListener];
    [v5 setDelegate:v4];
    [v5 resume];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v3 = *__error();
    v6 = 67109120;
    v7 = v3;
    v1 = "failed to resolve temporary directory: %{darwin.errno}d";
LABEL_5:
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, v1, &v6, 8u);
  }

LABEL_6:
  exit(1);
}