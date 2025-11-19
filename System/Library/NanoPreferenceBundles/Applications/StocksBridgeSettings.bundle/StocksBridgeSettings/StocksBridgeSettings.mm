uint64_t sub_1BD8(uint64_t a1)
{
  qword_11730 = [objc_alloc(*(a1 + 32)) initPrivate];

  return _objc_release_x1();
}

uint64_t sub_20B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_11740 = [NSBundle bundleForClass:objc_opt_class()];

  return _objc_release_x1();
}

id stocks_bridge_log()
{
  if (qword_11758 != -1)
  {
    sub_4E98();
  }

  v1 = qword_11750;

  return v1;
}

void sub_2468(id a1)
{
  qword_11750 = os_log_create("com.apple.stocks.watchapp", "bridge");

  _objc_release_x1();
}

void sub_29E4(uint64_t a1)
{
  v2 = [UIWatchKitExtensionRequestAction alloc];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_2AF8;
  v6[3] = &unk_C3E8;
  v6[4] = *(a1 + 32);
  v3 = [v2 initWithRequest:&__NSDictionary0__struct withHandler:v6];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_2B08;
  v5[3] = &unk_C408;
  v5[4] = *(a1 + 32);
  v4 = objc_retainBlock(v5);
  [*(a1 + 32) _launchAppWithBundleID:@"com.apple.stocks" withAction:v3 completion:v4];
}

void sub_2B08(uint64_t a1, void *a2)
{
  v3 = [a2 pid];
  if (v3)
  {
    v5 = [*(a1 + 32) _createAssertionForTargetWithPid:v3];
    if ([*(a1 + 32) _acquire:?])
    {
      [*(a1 + 32) _invalidateAfterDelay:v5];
    }
  }

  else
  {
    v4 = stocks_sync_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_4EAC(v4);
    }
  }
}

void sub_2E38(uint64_t a1)
{
  v1 = *(a1 + 32);
  v9 = 0;
  [v1 invalidateWithError:&v9];
  v2 = v9;
  v3 = stocks_sync_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v8 = 0;
      v5 = "Unable to release assertion.";
      v6 = &v8;
LABEL_6:
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
    }
  }

  else if (v4)
  {
    v7 = 0;
    v5 = "Released assertion.";
    v6 = &v7;
    goto LABEL_6;
  }
}

void sub_31A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = stocks_sync_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_4EF0(a1, v6, v7);
    }

    goto LABEL_4;
  }

  if ([v5 pid])
  {
    v7 = stocks_sync_log();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v10 = *(a1 + 32);
    v16 = 138543362;
    v17 = v10;
    v11 = "Successfully launched %{public}@.";
    goto LABEL_12;
  }

  v7 = stocks_sync_log();
  v12 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!v5)
  {
    if (v12)
    {
      v15 = *(a1 + 32);
      v16 = 138543362;
      v17 = v15;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "FrontBoard indicates we successfully launched %{public}@, but we do not have a BSProcessHandle.", &v16, 0xCu);
    }

LABEL_4:

    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = *(v8 + 16);
LABEL_15:
      v9();
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  if (v12)
  {
    v13 = *(a1 + 32);
    v16 = 138543362;
    v17 = v13;
    v11 = "FrontBoard indicates we successfully launched %{public}@, but we do not have a PID.";
LABEL_12:
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, v11, &v16, 0xCu);
  }

LABEL_13:

  v14 = *(a1 + 40);
  if (v14)
  {
    v9 = *(v14 + 16);
    goto LABEL_15;
  }

LABEL_16:
}

void sub_3424(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 persistence];
  [v3 synchronize];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_37BC;
  block[3] = &unk_C350;
  v6 = v2;
  v4 = v2;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_44A0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 symbol];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

id sub_4ADC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = +[StocksSyncPreferenceKeys symbol];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = [v2 isEqualToString:v5];
  return v6;
}

id stocks_sync_log()
{
  if (qword_11768 != -1)
  {
    sub_4F7C();
  }

  v1 = qword_11760;

  return v1;
}

void sub_4E54(id a1)
{
  qword_11760 = os_log_create("com.apple.stocks.watchapp", "sync");

  _objc_release_x1();
}

void sub_4EF0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Error launching %{public}@: %{public}@", &v4, 0x16u);
}