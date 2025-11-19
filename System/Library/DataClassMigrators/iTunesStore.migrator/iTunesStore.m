void sub_2C5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() _logConfig];
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

  if (!v7)
  {
    goto LABEL_11;
  }

  v9 = *(a1 + 32);
  *v13 = 138543618;
  *&v13[4] = objc_opt_class();
  *&v13[12] = 2114;
  *&v13[14] = v3;
  v10 = *&v13[4];
  LODWORD(v12) = 22;
  v11 = _os_log_send_and_compose_impl();

  if (v11)
  {
    v8 = [NSString stringWithCString:v11 encoding:4, v13, v12, *v13, *&v13[16]];
    free(v11);
    SSFileLog();
LABEL_11:
  }
}

void sub_2DF8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() _logConfig];
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
}

void sub_2F7C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedDataMigrationConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      v12 = NSStringFromSelector(*(a1 + 48));
      v21 = 138544130;
      v22 = v10;
      v23 = 2114;
      v24 = v11;
      v25 = 2114;
      v26 = v12;
      v27 = 2114;
      v28 = v6;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] %{public}@ Error running the device offer registration. error = %{public}@.", &v21, 0x2Au);
    }
  }

  [AMSDefaults setMigratedDeviceOffers:1];
  v13 = +[AMSLogConfig sharedDataMigrationConfig];
  if (!v13)
  {
    v13 = +[AMSLogConfig sharedConfig];
  }

  v14 = [v13 OSLogObject];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 32);
    v16 = objc_opt_class();
    v17 = AMSLogKey();
    v18 = NSStringFromSelector(*(a1 + 48));
    v19 = +[NSDate date];
    [v19 timeIntervalSinceDate:*(a1 + 40)];
    v21 = 138544130;
    v22 = v16;
    v23 = 2114;
    v24 = v17;
    v25 = 2114;
    v26 = v18;
    v27 = 2048;
    v28 = v20;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] %{public}@ finished. executionTime = %f", &v21, 0x2Au);
  }
}

void sub_321C(id a1)
{
  v3 = objc_alloc_init(SSMutableLogConfig);
  [v3 setCategory:@"migrator"];
  [v3 setSubsystem:@"com.apple.itunesstored"];
  v1 = [v3 copy];
  v2 = qword_14538;
  qword_14538 = v1;
}

void sub_52F4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = +[SSLogConfig sharedAccountsMigrationConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v8 &= 2u;
    }

    if (!v8)
    {
      goto LABEL_22;
    }

    v10 = *(a1 + 32);
    v20 = 138543362;
    v21 = objc_opt_class();
    v11 = v21;
    LODWORD(v19) = 12;
    v12 = _os_log_send_and_compose_impl();
  }

  else
  {
    v6 = +[SSLogConfig sharedAccountsConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v13 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v14 = v13 | 2;
    }

    else
    {
      v14 = v13;
    }

    v9 = [v6 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 &= 2u;
    }

    if (!v14)
    {
      goto LABEL_22;
    }

    v15 = *(a1 + 32);
    v16 = objc_opt_class();
    v17 = *(a1 + 40);
    v18 = v16;
    [v17 hashedDescription];
    v20 = 138543874;
    v21 = v16;
    v23 = v22 = 2114;
    v24 = 2114;
    v25 = v5;
    LODWORD(v19) = 32;
    v12 = _os_log_send_and_compose_impl();
  }

  if (v12)
  {
    v9 = [NSString stringWithCString:v12 encoding:4, &v20, v19];
    free(v12);
    SSFileLog();
LABEL_22:
  }
}

void sub_5E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id location)
{
  objc_destroyWeak((v37 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_5E50(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = +[SSLogConfig sharedAccountsMigrationConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      *v14 = 138543618;
      *&v14[4] = objc_opt_class();
      *&v14[12] = 2114;
      *&v14[14] = v5;
      v11 = *&v14[4];
      LODWORD(v13) = 22;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_13:

        goto LABEL_14;
      }

      v9 = [NSString stringWithCString:v12 encoding:4, v14, v13, *v14, *&v14[16]];
      free(v12);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
}

void sub_6564(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = +[SSLogConfig sharedAccountsMigrationConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v8 &= 2u;
    }

    if (!v8)
    {
      goto LABEL_22;
    }

    v10 = *(a1 + 32);
    *v17 = 138543362;
    *&v17[4] = objc_opt_class();
    v11 = *&v17[4];
    LODWORD(v16) = 12;
  }

  else
  {
    v6 = +[SSLogConfig sharedAccountsConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v12 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v13 = v12 | 2;
    }

    else
    {
      v13 = v12;
    }

    v9 = [v6 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 &= 2u;
    }

    if (!v13)
    {
      goto LABEL_22;
    }

    v14 = *(a1 + 32);
    *v17 = 138543618;
    *&v17[4] = objc_opt_class();
    *&v17[12] = 2114;
    *&v17[14] = v5;
    v11 = *&v17[4];
    LODWORD(v16) = 22;
  }

  v15 = _os_log_send_and_compose_impl();

  if (v15)
  {
    v9 = [NSString stringWithCString:v15 encoding:4, v17, v16, *v17];
    free(v15);
    SSFileLog();
LABEL_22:
  }
}

void sub_6B04(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = +[SSLogConfig sharedAccountsMigrationConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v10 = *(a1 + 32);
      v11 = objc_opt_class();
      v12 = *(a1 + 40);
      v13 = v11;
      [v12 hashedDescription];
      v16 = 138543874;
      v17 = v11;
      v19 = v18 = 2114;
      v20 = 2114;
      v21 = v5;
      LODWORD(v15) = 32;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
LABEL_13:

        goto LABEL_14;
      }

      v9 = [NSString stringWithCString:v14 encoding:4, &v16, v15];
      free(v14);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
}

id sub_7A34(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isActive])
  {
    v4 = [v3 backingAccount];
    v5 = [v4 identifier];
    v6 = [*(a1 + 32) backingAccount];
    v7 = [v6 identifier];
    v8 = [v5 isEqualToString:v7];
  }

  else
  {
    v8 = &dword_0 + 1;
  }

  return v8;
}

void sub_7ADC(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[SSLogConfig sharedAccountsMigrationConfig];
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
      goto LABEL_22;
    }

    v11 = *(a1 + 40);
    v12 = objc_opt_class();
    v13 = *(a1 + 32);
    v14 = v12;
    v15 = [v13 hashedDescription];
    *v23 = 138543618;
    *&v23[4] = v12;
    *&v23[12] = 2114;
    *&v23[14] = v15;
    LODWORD(v22) = 22;
  }

  else
  {
    if (!v6)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v16 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v17 = v16 | 2;
    }

    else
    {
      v17 = v16;
    }

    v10 = [v7 OSLogObject];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v17 &= 2u;
    }

    if (!v17)
    {
      goto LABEL_22;
    }

    v18 = *(a1 + 40);
    v19 = objc_opt_class();
    v20 = *(a1 + 32);
    v14 = v19;
    v15 = [v20 hashedDescription];
    *v23 = 138543874;
    *&v23[4] = v19;
    *&v23[12] = 2114;
    *&v23[14] = v15;
    *&v23[22] = 2112;
    v24 = v5;
    LODWORD(v22) = 32;
  }

  v21 = _os_log_send_and_compose_impl();

  if (v21)
  {
    v10 = [NSString stringWithCString:v21 encoding:4, v23, v22, *v23, *&v23[16]];
    free(v21);
    SSFileLog();
LABEL_22:
  }
}

int64_t sub_8170(id a1, SSAccount *a2, SSAccount *a3)
{
  v4 = a3;
  v5 = [(SSAccount *)a2 backingAccount];
  v6 = [(SSAccount *)v4 backingAccount];

  v7 = [v5 creationDate];
  v8 = [v6 creationDate];
  v9 = [v7 compare:v8];

  return v9;
}

int64_t sub_8730(id a1, SSAccount *a2, SSAccount *a3)
{
  v4 = a3;
  v5 = [(SSAccount *)a2 backingAccount];
  v6 = [(SSAccount *)v4 backingAccount];

  v7 = [v5 creationDate];
  v8 = [v6 creationDate];
  v9 = [v7 compare:v8];

  return v9;
}

void sub_87D8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[SSLogConfig sharedAccountsMigrationConfig];
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
      goto LABEL_22;
    }

    v11 = *(a1 + 40);
    v12 = objc_opt_class();
    v13 = *(a1 + 32);
    v14 = v12;
    v15 = [v13 hashedDescription];
    *v23 = 138543618;
    *&v23[4] = v12;
    *&v23[12] = 2114;
    *&v23[14] = v15;
    LODWORD(v22) = 22;
  }

  else
  {
    if (!v6)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v16 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v17 = v16 | 2;
    }

    else
    {
      v17 = v16;
    }

    v10 = [v7 OSLogObject];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v17 &= 2u;
    }

    if (!v17)
    {
      goto LABEL_22;
    }

    v18 = *(a1 + 40);
    v19 = objc_opt_class();
    v20 = *(a1 + 32);
    v14 = v19;
    v15 = [v20 hashedDescription];
    *v23 = 138543874;
    *&v23[4] = v19;
    *&v23[12] = 2114;
    *&v23[14] = v15;
    *&v23[22] = 2114;
    v24 = v5;
    LODWORD(v22) = 32;
  }

  v21 = _os_log_send_and_compose_impl();

  if (v21)
  {
    v10 = [NSString stringWithCString:v21 encoding:4, v23, v22, *v23, *&v23[16]];
    free(v21);
    SSFileLog();
LABEL_22:
  }
}

void sub_9150(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = +[SSLogConfig sharedAccountsMigrationConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v10 = *(a1 + 32);
      *v14 = 138543618;
      *&v14[4] = objc_opt_class();
      *&v14[12] = 2114;
      *&v14[14] = v5;
      v11 = *&v14[4];
      LODWORD(v13) = 22;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_13:

        goto LABEL_14;
      }

      v9 = [NSString stringWithCString:v12 encoding:4, v14, v13, *v14, *&v14[16]];
      free(v12);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
}