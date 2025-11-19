void sub_10000172C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained buttonEventMonitor];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 addTarget:v3 action:"handleButtonEvent:" forButtonEvents:0xFFFFFFFFLL propagate:0];
}

void sub_1000019E0(uint64_t a1)
{
  v2 = objc_opt_new();
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100001D64;
  v31[3] = &unk_10000C2C8;
  v3 = *(a1 + 40);
  v31[4] = *(a1 + 32);
  v32 = v3;
  [v2 preflight:0 withReply:v31];
  v4 = *(a1 + 40);
  v5 = dispatch_time(0, 240000000000);
  if (dispatch_semaphore_wait(v4, v5))
  {
    v6 = CRErrorDomain;
    v33 = NSLocalizedDescriptionKey;
    v34 = @"Preflight time out";
    v7 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v8 = [NSError errorWithDomain:v6 code:-80 userInfo:v7];

    v9 = [*(a1 + 32) uiNeededKnownSemaphore];
    dispatch_semaphore_signal(v9);

    v10 = *(a1 + 32);
LABEL_13:
    v20 = -80;
    goto LABEL_14;
  }

  if ([*(a1 + 32) preflightSuccess])
  {
    v11 = [*(a1 + 32) preflightResults];
    if (v11)
    {
      v12 = v11;
      v13 = [*(a1 + 32) preflightError];

      if (!v13)
      {
        [*(a1 + 32) setRepairSummaryNeeded:1];
        v29 = [*(a1 + 32) uiNeededKnownSemaphore];
        dispatch_semaphore_signal(v29);

        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_100001F0C;
        v30[3] = &unk_10000C2F0;
        v30[4] = *(a1 + 32);
        dispatch_async(&_dispatch_main_q, v30);
        goto LABEL_15;
      }
    }
  }

  v14 = [*(a1 + 32) preflightError];
  if (v14 && (v15 = v14, [*(a1 + 32) preflightError], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "code"), v16, v15, v17 == -92))
  {
    v18 = [*(a1 + 32) uiNeededKnownSemaphore];
    dispatch_semaphore_signal(v18);

    v19 = *(a1 + 32);
    v8 = [v19 preflightError];
    v10 = v19;
    v20 = -92;
  }

  else
  {
    v21 = [*(a1 + 32) preflightError];
    if (!v21 || (v22 = v21, [*(a1 + 32) preflightError], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "code"), v23, v22, v24 != -93))
    {
      v27 = [*(a1 + 32) uiNeededKnownSemaphore];
      dispatch_semaphore_signal(v27);

      v28 = *(a1 + 32);
      v8 = [v28 preflightError];
      v10 = v28;
      goto LABEL_13;
    }

    v25 = [*(a1 + 32) uiNeededKnownSemaphore];
    dispatch_semaphore_signal(v25);

    v26 = *(a1 + 32);
    v8 = [v26 preflightError];
    v10 = v26;
    v20 = -93;
  }

LABEL_14:
  [v10 endTestWithStatusCode:v20 error:v8];

LABEL_15:
}

void sub_100001D64(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = handleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 67109120;
    LODWORD(v13) = a2;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Preflight success: %d", &v12, 8u);
  }

  v10 = handleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Preflight results: %@", &v12, 0xCu);
  }

  v11 = handleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Preflight error: %@", &v12, 0xCu);
  }

  [*(a1 + 32) setPreflightSuccess:a2];
  [*(a1 + 32) setPreflightResults:v7];
  [*(a1 + 32) setPreflightError:v8];
  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_1000020E4(uint64_t a1)
{
  v2 = [*(a1 + 32) buttonEventMonitor];
  [v2 removeTarget:*(a1 + 32)];
}

uint64_t sub_100004E58()
{
  if (!qword_1000116C0)
  {
    qword_1000116C0 = _sl_dlopen();
  }

  return qword_1000116C0;
}

uint64_t sub_100004F28(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000116C0 = result;
  return result;
}

Class sub_100004F9C(uint64_t a1)
{
  if (!sub_100004E58())
  {
    v3 = abort_report_np();
    free(v3);
  }

  result = objc_getClass("DSHardwareButtonEventMonitor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10000512C();
  }

  qword_1000116C8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10000502C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}