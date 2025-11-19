id ISAppleIDPluginLogConfig()
{
  if (qword_C798 != -1)
  {
    sub_4BC8();
  }

  v1 = qword_C790;

  return v1;
}

void sub_F64(id a1)
{
  v1 = +[SSLogConfig sharedAccountsConfig];
  v4 = [v1 mutableCopy];

  [v4 setCategory:@"plugins.login"];
  v2 = [v4 copy];
  v3 = qword_C790;
  qword_C790 = v2;
}

void sub_1A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  objc_destroyWeak(&a38);
  objc_destroyWeak((v38 - 168));
  _Unwind_Resume(a1);
}

void sub_1A94(uint64_t a1)
{
  v2 = dispatch_group_create();
  v3 = +[UMUserManager sharedManager];
  v4 = [v3 isMultiUser];

  if ((v4 & 1) == 0)
  {
    v5 = *(*(a1 + 32) + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1D3C;
    block[3] = &unk_8388;
    objc_copyWeak(&v23, (a1 + 64));
    v6 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v22 = v6;
    dispatch_group_async(v2, v5, block);

    objc_destroyWeak(&v23);
  }

  if (PSIsRunningInAssistant())
  {
    v7 = *(*(a1 + 32) + 8);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1ED4;
    v18[3] = &unk_8388;
    objc_copyWeak(&v20, (a1 + 64));
    v8 = *(a1 + 40);
    v18[4] = *(a1 + 32);
    v19 = v8;
    dispatch_group_async(v2, v7, v18);
    v9 = *(*(a1 + 32) + 8);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_206C;
    v14[3] = &unk_83B0;
    objc_copyWeak(&v17, (a1 + 64));
    v14[4] = *(a1 + 32);
    v15 = *(a1 + 48);
    v16 = *(a1 + 40);
    dispatch_group_async(v2, v9, v14);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&v20);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_2210;
  v10[3] = &unk_83D8;
  objc_copyWeak(&v12, (a1 + 64));
  v10[4] = *(a1 + 32);
  v13 = *(a1 + 72);
  v11 = *(a1 + 56);
  dispatch_group_notify(v2, &_dispatch_main_q, v10);

  objc_destroyWeak(&v12);
}

void sub_1D3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = ISAppleIDPluginLogConfig();
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  v7 = *(a1 + 32);
  LODWORD(v11) = 138543362;
  *(&v11 + 4) = objc_opt_class();
  v8 = *(&v11 + 4);
  LODWORD(v10) = 12;
  v9 = _os_log_send_and_compose_impl();

  if (v9)
  {
    v6 = [NSString stringWithCString:v9 encoding:4, &v11, v10, v11];
    free(v9);
    SSFileLog();
LABEL_11:
  }

  [WeakRetained _setupHomeSharingWithParameters:*(a1 + 40)];
}

void sub_1ED4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = ISAppleIDPluginLogConfig();
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  v7 = *(a1 + 32);
  LODWORD(v11) = 138543362;
  *(&v11 + 4) = objc_opt_class();
  v8 = *(&v11 + 4);
  LODWORD(v10) = 12;
  v9 = _os_log_send_and_compose_impl();

  if (v9)
  {
    v6 = [NSString stringWithCString:v9 encoding:4, &v11, v10, v11];
    free(v9);
    SSFileLog();
LABEL_11:
  }

  [WeakRetained _setupITunesMatchWithParameters:*(a1 + 40)];
}

void sub_206C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = ISAppleIDPluginLogConfig();
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v7 = *(a1 + 32);
    LODWORD(v11) = 138543362;
    *(&v11 + 4) = objc_opt_class();
    v8 = *(&v11 + 4);
    LODWORD(v10) = 12;
    v9 = _os_log_send_and_compose_impl();

    if (!v9)
    {
      goto LABEL_12;
    }

    v6 = [NSString stringWithCString:v9 encoding:4, &v11, v10, v11];
    free(v9);
    SSFileLog();
  }

LABEL_12:
  if ([*(a1 + 40) isActive])
  {
    [WeakRetained _setupiTunesBiometricsWithParameters:*(a1 + 48)];
  }
}

void sub_2210(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = ISAppleIDPluginLogConfig();
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v7 = *(a1 + 32);
    LODWORD(v13) = 138543362;
    *(&v13 + 4) = objc_opt_class();
    v8 = *(&v13 + 4);
    LODWORD(v12) = 12;
    v9 = _os_log_send_and_compose_impl();

    if (!v9)
    {
      goto LABEL_12;
    }

    v6 = [NSString stringWithCString:v9 encoding:4, &v13, v12, v13];
    free(v9);
    SSFileLog();
  }

LABEL_12:
  kdebug_trace();
  v10 = [WeakRetained handler];
  v11 = v10;
  if (v10)
  {
    (*(v10 + 16))(v10, *(a1 + 56), *(a1 + 40));
  }
}

void sub_23E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = [v6 authenticatedAccount];

  if (!v8)
  {
    v9 = ISAppleIDPluginLogConfig();
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    v10 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = v10 | 2;
    }

    else
    {
      v11 = v10;
    }

    v12 = [v9 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 & 2;
    }

    if (v13)
    {
      v14 = objc_opt_class();
      v15 = *(a1 + 32);
      v16 = v14;
      v17 = [v15 accountName];
      SSHashIfNeeded();
      v20 = 138543874;
      v21 = v14;
      v23 = v22 = 2114;
      v24 = 2112;
      v25 = v5;
      LODWORD(v19) = 32;
      v18 = _os_log_send_and_compose_impl();

      if (!v18)
      {
LABEL_14:

        goto LABEL_15;
      }

      v12 = [NSString stringWithCString:v18 encoding:4, &v20, v19];
      free(v18);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:
  (*(*(a1 + 40) + 16))();
}

void sub_3740(uint64_t a1)
{
  v2 = +[HSAccountStore defaultStore];
  v3 = [*(a1 + 32) objectForKey:@"email"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  [v2 setAppleID:v4];
  v5 = [*(a1 + 32) objectForKey:@"password"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  [v2 setPassword:v6];
  if (([v2 canDetermineGroupID] & 1) == 0)
  {
    dispatch_semaphore_signal(*(a1 + 40));
    goto LABEL_21;
  }

  v7 = ISAppleIDPluginLogConfig();
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v7 OSLogObject];
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_18;
  }

  v11 = *(a1 + 48);
  v17 = 138543362;
  v18 = objc_opt_class();
  v12 = v18;
  LODWORD(v14) = 12;
  v13 = _os_log_send_and_compose_impl();

  if (v13)
  {
    v10 = [NSString stringWithCString:v13 encoding:4, &v17, v14];
    free(v13);
    SSFileLog();
LABEL_18:
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_39E0;
  v15[3] = &unk_8450;
  v16 = *(a1 + 40);
  [v2 determineGroupIDWithCompletionHandler:v15];

LABEL_21:
}

void sub_4008(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = ISAppleIDPluginLogConfig();
  v7 = v6;
  if (a2)
  {
    if (!v6)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 OSLogObject];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v9 &= 2u;
    }

    if (!v9)
    {

      goto LABEL_24;
    }

    v11 = *(a1 + 32);
    v12 = objc_opt_class();
    v13 = v12;
    [NSNumber numberWithInteger:a2];
    v22 = 138543874;
    v23 = v12;
    v25 = v24 = 2114;
    v26 = 2114;
    v27 = v5;
    LODWORD(v21) = 32;
    v14 = _os_log_send_and_compose_impl();

    if (!v14)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  if (!v6)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  v15 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v16 = v15 | 2;
  }

  else
  {
    v16 = v15;
  }

  v17 = [v7 OSLogObject];
  if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v16 &= 2u;
  }

  if (!v16)
  {
    goto LABEL_22;
  }

  v18 = *(a1 + 32);
  v19 = objc_opt_class();
  v20 = v19;
  [NSNumber numberWithInteger:0];
  v22 = 138543618;
  v23 = v19;
  v25 = v24 = 2114;
  LODWORD(v21) = 22;
  v14 = _os_log_send_and_compose_impl();

  if (v14)
  {
LABEL_21:
    v17 = [NSString stringWithCString:v14 encoding:4, &v22, v21];
    free(v14);
    SSFileLog();
LABEL_22:
  }

LABEL_24:
}

void sub_495C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (HSCloudClientIsSagaEnabledInURLBag())
  {
    v4 = [v3 objectForKey:@"library-daap"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_15:

      goto LABEL_16;
    }

    v5 = ISAppleIDPluginLogConfig();
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    v8 = [v5 OSLogObject];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v9 = *(a1 + 32);
      *v14 = 138543618;
      *&v14[4] = objc_opt_class();
      *&v14[12] = 2112;
      *&v14[14] = v4;
      v10 = *&v14[4];
      LODWORD(v13) = 22;
      v11 = _os_log_send_and_compose_impl();

      if (!v11)
      {
LABEL_14:

        v12 = [v4 objectForKey:@"base-url"];
        *(*(*(a1 + 48) + 8) + 24) = v12 != 0;

        goto LABEL_15;
      }

      v8 = [NSString stringWithCString:v11 encoding:4, v14, v13, *v14, *&v14[16]];
      free(v11);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_16:
  dispatch_semaphore_signal(*(a1 + 40));
}