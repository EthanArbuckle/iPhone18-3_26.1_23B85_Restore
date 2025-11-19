id sub_100000E38()
{
  if (qword_10000CAB8 != -1)
  {
    dispatch_once(&qword_10000CAB8, &stru_1000082D0);
  }

  v1 = qword_10000CAB0;

  return v1;
}

void sub_100000E8C(id a1)
{
  qword_10000CAB0 = os_log_create("com.apple.MapKit", "Snapshot");

  _objc_release_x1();
}

void sub_100001050(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

uint64_t sub_100001080(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(*(a1 + 32) + 8) cancelSnapshotForConnection:WeakRetained];
  }

  return _objc_release_x1();
}

uint64_t sub_1000010E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(*(a1 + 32) + 8) cancelSnapshotForConnection:WeakRetained];
  }

  return _objc_release_x1();
}

uint64_t start()
{
  v0 = objc_alloc_init(ServiceDelegate);
  v1 = +[NSXPCListener serviceListener];
  [v1 setDelegate:v0];
  [v1 resume];

  return 0;
}

void sub_1000014F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_10000150C(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_10000CAE8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100001660;
    v4[4] = &unk_100008448;
    v4[5] = v4;
    v5 = off_100008430;
    v6 = 0;
    qword_10000CAE8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_10000CAE8)
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
  result = objc_getClass("UIImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_10000CAE0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100001660(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10000CAE8 = result;
  return result;
}

void sub_100001834(uint64_t a1)
{
  v2 = objc_alloc_init(_SnapshotRequest);
  [(_SnapshotRequest *)v2 setRequestId:(*(*(a1 + 32) + 16))++];
  [(_SnapshotRequest *)v2 setConnection:*(a1 + 40)];
  -[_SnapshotRequest setProcessIdentifier:](v2, "setProcessIdentifier:", [*(a1 + 40) processIdentifier]);
  [(_SnapshotRequest *)v2 setOptions:*(a1 + 48)];
  [(_SnapshotRequest *)v2 setCompletionHandler:*(a1 + 56)];
  v3 = sub_100000E38();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v7 = 134349312;
    v8 = [(_SnapshotRequest *)v2 requestId];
    v9 = 1024;
    v10 = [(_SnapshotRequest *)v2 processIdentifier];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Enqueuing snapshot request: %{public}llu for process %d", &v7, 0x12u);
  }

  [*(*(a1 + 32) + 8) lock];
  [*(*(a1 + 32) + 24) setObject:v2 forKey:*(a1 + 40)];
  v4 = *(*(a1 + 32) + 64);
  v5 = [(_SnapshotRequest *)v2 processIdentifier];
  v6 = *(*(a1 + 32) + 32);
  if (v4 == v5)
  {
    [v6 addObject:v2];
  }

  else
  {
    [v6 insertObject:v2 atIndex:0];
  }

  [*(*(a1 + 32) + 8) unlock];
  [*(a1 + 32) _startNextSnapshotterIfPossible:0];
}

uint64_t sub_100002230(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100002248(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(a1 + 32) + 8);
  v6 = a3;
  v7 = a2;
  [v5 lock];
  if (*(a1 + 40))
  {
    [*(*(a1 + 32) + 24) removeObjectForKey:?];
  }

  [*(*(a1 + 32) + 40) removeObjectForKey:*(a1 + 48)];
  [*(a1 + 32) _cleanupForRequest:*(a1 + 56)];
  [*(*(a1 + 32) + 8) unlock];
  v8 = *(*(a1 + 72) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v10 = os_transaction_create();
  v11 = sub_100000E38();
  v12 = v11;
  if (v6)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = [*(a1 + 56) requestId];
      v14 = [*(a1 + 56) processIdentifier];
      *buf = 134349312;
      v29 = v13;
      v30 = 1024;
      v31 = v14;
      v15 = "Failed to render snapshot for request %{public}llu for process %d";
      v16 = v12;
      v17 = OS_LOG_TYPE_ERROR;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v16, v17, v15, buf, 0x12u);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v18 = [*(a1 + 56) requestId];
    v19 = [*(a1 + 56) processIdentifier];
    *buf = 134349312;
    v29 = v18;
    v30 = 1024;
    v31 = v19;
    v15 = "Finished rendering snapshot for request %{public}llu for process %d";
    v16 = v12;
    v17 = OS_LOG_TYPE_INFO;
    goto LABEL_8;
  }

  (*(*(a1 + 64) + 16))();
  v20 = sub_100000E38();
  v21 = [*(a1 + 56) options];
  v22 = [v21 signpostId];

  if ((v22 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_END, v22, "RequestSnapshotWithOptions", &unk_1000050CB, buf, 2u);
  }

  v23 = *(a1 + 32);
  v24 = *(v23 + 48);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100002508;
  v26[3] = &unk_1000083C0;
  v26[4] = v23;
  v27 = v10;
  v25 = v10;
  dispatch_async(v24, v26);
}

void *sub_100002514(uint64_t a1)
{
  v2 = sub_100002564();
  result = dlsym(v2, "MapKitConfig_SnapshotServiceQueueWidth");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10000CAC8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100002564()
{
  v3[0] = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_10000CAC0;
  v9 = qword_10000CAC0;
  if (!qword_10000CAC0)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_1000026C8;
    v3[4] = &unk_100008348;
    v4 = &v6;
    v5 = v3;
    v10 = *off_100008318;
    v11 = *off_100008328;
    v12 = 0;
    v7[3] = _sl_dlopen();
    qword_10000CAC0 = *(v4[1] + 24);
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  v1 = v3[0];
  if (!v0)
  {
    v1 = abort_report_np();
    __break(1u);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void sub_1000026A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000026C8(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10000CAC0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100002AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100002B18(uint64_t a1)
{
  v2 = sub_100002564();
  result = dlsym(v2, "MapKitConfig_SnapshotServicePerProcessSerializationEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10000CAD0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100002C00(uint64_t a1)
{
  [*(*(a1 + 32) + 8) lock];
  v2 = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)];
  [*(*(a1 + 32) + 24) removeObjectForKey:*(a1 + 40)];
  if (v2)
  {
    [*(a1 + 32) _cleanupForRequest:v2];
  }

  v3 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v2 requestId]);
  v4 = [*(*(a1 + 32) + 40) objectForKey:v3];
  [*(*(a1 + 32) + 40) removeObjectForKey:v3];
  [*(*(a1 + 32) + 32) removeObject:v2];
  [*(*(a1 + 32) + 8) unlock];
  [v4 cancel];
  v5 = *(a1 + 32);
  v6 = *(v5 + 48);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002E5C;
  block[3] = &unk_100008398;
  block[4] = v5;
  dispatch_async(v6, block);
  v7 = sub_100000E38();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v2 requestId];
    v9 = [v2 processIdentifier];
    *buf = 134349312;
    v15 = v8;
    v16 = 1024;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Canceled request %{public}llu for process %d", buf, 0x12u);
  }

  v10 = sub_100000E38();
  v11 = [v2 options];
  v12 = [v11 signpostId];

  if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v12, "RequestSnapshotWithOptions", &unk_1000050CB, buf, 2u);
  }
}

void *sub_100002F8C(uint64_t a1)
{
  v2 = sub_100002564();
  result = dlsym(v2, "MapKitConfig_SnapshotServiceMaxPixels");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10000CAD8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}