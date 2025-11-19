void sub_1000013A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_1000013C4(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100008918)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10000167C;
    v4[4] = &unk_100004280;
    v4[5] = v4;
    v5 = off_100004268;
    v6 = 0;
    qword_100008918 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100008918)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SCSensitivityAnalysis");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_100008910 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100001518(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = PLUIGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error prefetching sensitive content analysis policy: %@", &v5, 0xCu);
    }
  }

  [*(a1 + 32) _endDelayingPresentation];
}

void sub_1000015DC(uint64_t a1)
{
  v1 = [*(a1 + 32) objectForKey:kNotificationKeyAlbumCloudGUID];
  if (v1)
  {
    v5 = v1;
    v2 = +[PLPhotoLibrary systemPhotoLibrary];
    v3 = [v2 assetsdClient];
    v4 = [v3 notificationClient];
    [v4 asyncNotifyUserViewedNotificationWithAlbumCloudGUID:v5];

    v1 = v5;
  }
}

uint64_t sub_10000167C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100008918 = result;
  return result;
}

BOOL sub_1000016F0(id a1, BOOL a2)
{
  if (a2)
  {
    v2 = PLUIGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Sensitive content analysis policy prefetch did not complete", v4, 2u);
    }
  }

  return 0;
}