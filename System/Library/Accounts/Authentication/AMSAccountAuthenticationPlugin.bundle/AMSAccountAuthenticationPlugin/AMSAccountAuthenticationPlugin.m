void sub_1BC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logKey];
  v5 = AMSSetLogKey();

  v6 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    v9 = objc_opt_class();
    v10 = AMSLogKey();
    *buf = 138543618;
    v22 = v9;
    v23 = 2114;
    v24 = v10;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Verifying credentials.", buf, 0x16u);
  }

  v11 = [AMSVerifyCredentialsTask alloc];
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = [*(a1 + 32) clientInfo];
  v15 = [AMSBag ams_bagForProcessInfo:v14];
  v16 = [(AMSVerifyCredentialsTask *)v11 initWithAccount:v12 accountStore:v13 bag:v15 options:*(a1 + 32)];

  v17 = [(AMSVerifyCredentialsTask *)v16 performTask];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1DE8;
  v19[3] = &unk_143E0;
  v20 = v3;
  v18 = v3;
  [v17 resultWithCompletion:v19];
}

void sub_1DF8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1EE4;
    block[3] = &unk_14458;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

id sub_2BCC(uint64_t a1)
{
  v3 = *(a1 + 32);
  [objc_opt_class() _postAuthenticationBeganNotification];
  v4 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = AMSLogKey();
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    v9 = v8;
    if (v6)
    {
      v1 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v9, v1];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v8];
    }
    v10 = ;
    v11 = [*(a1 + 32) account];
    v12 = AMSHashIfNeeded();
    v13 = [*(a1 + 32) options];
    v14 = AMSHashIfNeeded();
    *buf = 138543874;
    v29 = v10;
    v30 = 2114;
    v31 = v12;
    v32 = 2114;
    v33 = v14;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Starting an account credential verification. account = %{public}@ | options = %{public}@", buf, 0x20u);

    if (v6)
    {

      v10 = v1;
    }
  }

  v15 = [*(a1 + 32) options];
  v16 = [v15 metricsIdentifier];

  if (v16)
  {
    v17 = [AMSAuthenticateMetricsContext alloc];
    v18 = [*(a1 + 32) options];
    v19 = [*(a1 + 32) account];
    v20 = [v17 initWithOptions:v18 account:v19];

    v21 = [*(a1 + 32) metrics];
    v22 = [v21 enqueueWithEvent:3 context:v20];
  }

  v23 = [*(a1 + 32) _generatePasswordIfNeeded];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_2F40;
  v27[3] = &unk_144D0;
  v27[4] = *(a1 + 32);
  v24 = [v23 thenWithBlock:v27];
  [*(a1 + 32) completeMetricsActivityWithPromise:v24];
  [v24 addSuccessBlock:&stru_14510];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_31CC;
  v26[3] = &unk_14560;
  v26[4] = *(a1 + 32);
  [v24 addFinishBlock:v26];

  return v24;
}

id sub_2F40(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [objc_opt_class() _postAuthenticationSubmittedNotification];
  v5 = *(a1 + 32);
  v6 = +[AMSURLSession defaultSession];
  [v6 setDelegate:v5];

  v7 = [*(a1 + 32) bag];
  v8 = [v7 URLForKey:@"authenticateAccount" account:v4];

  v9 = [*(a1 + 32) _createAuthenticateRequestEncoder];
  v10 = [*(a1 + 32) _createAuthenticateRequestForAccount:v4 URL:v8 requestEncoder:v9];

  [*(a1 + 32) prepareMetricsActivity];
  v11 = +[AMSURLSession defaultSession];
  v12 = [*(a1 + 32) activity];
  v13 = [v11 dataTaskPromiseWithRequestPromise:v10 activity:v12];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_30E8;
  v16[3] = &unk_144A8;
  v16[4] = *(a1 + 32);
  v14 = [v13 continueWithBlock:v16];

  return v14;
}

id sub_30E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) _promiseOfAccountFromResult:a2 orError:a3];
  v4 = [AMSPromise promiseWithPromiseResult:v3];

  return v4;
}

void sub_3150(id a1, ACAccount *a2)
{
  v2 = a2;
  v4 = [(ACAccount *)v2 ams_accountID];
  v3 = [(ACAccount *)v2 ams_lastAuthenticationCredentialSource];

  [AMSAccountPostSignInService performPostSignInTasksInDaemonForAccount:v4 credentialSource:v3];
}

void sub_31CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) options];
  v6 = [v5 metricsIdentifier];

  if (v6)
  {
    v7 = [AMSAuthenticateMetricsContext alloc];
    v8 = [*(a1 + 32) options];
    v9 = [*(a1 + 32) account];
    v10 = [v7 initWithOptions:v8 account:v9];

    [v10 setError:v4];
    v11 = [*(a1 + 32) metrics];
    v12 = [v11 enqueueWithEvent:4 context:v10];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_3314;
    v13[3] = &unk_14538;
    v13[4] = *(a1 + 32);
    [v12 resultWithCompletion:v13];
  }
}

void sub_3314(uint64_t a1)
{
  v1 = [*(a1 + 32) metrics];
  [v1 flushEvents];
}

id sub_3DAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) options];
  v5 = [v4 ignoreAccountConversion];

  if (v5)
  {
    [v3 setValue:@"true" forHTTPHeaderField:AMSHTTPHeaderIgnoreAccountConversion];
  }

  v6 = [*(a1 + 32) options];
  v7 = [v6 userAgent];

  if (v7)
  {
    v8 = [*(a1 + 32) options];
    v9 = [v8 userAgent];
    [v3 setValue:v9 forHTTPHeaderField:AMSHTTPHeaderUserAgent];
  }

  v10 = [*(a1 + 32) options];
  v11 = [v10 userAgentSuffix];

  if (v11)
  {
    v12 = AMSHTTPHeaderUserAgent;
    v13 = [v3 valueForHTTPHeaderField:AMSHTTPHeaderUserAgent];
    v14 = [*(a1 + 32) options];
    v15 = [v14 userAgentSuffix];
    v16 = [NSString stringWithFormat:@"%@ %@", v13, v15];

    [v3 setValue:v16 forHTTPHeaderField:v12];
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_4078;
  v31 = sub_4088;
  v32 = 0;
  v17 = [*(a1 + 32) options];
  v18 = [v17 HTTPHeaders];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_4090;
  v23[3] = &unk_145B0;
  v19 = v3;
  v20 = *(a1 + 32);
  v24 = v19;
  v25 = v20;
  v26 = &v27;
  [v18 enumerateKeysAndObjectsUsingBlock:v23];

  if (v28[5])
  {
    [AMSPromise promiseWithError:?];
  }

  else
  {
    [AMSPromise promiseWithResult:v19];
  }
  v21 = ;

  _Block_object_dispose(&v27, 8);

  return v21;
}

void sub_4060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_4078(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_4090(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) setValue:v6 forHTTPHeaderField:v5];
  }

  else
  {
    v7 = +[AMSUnitTests isRunningUnitTests];
    v8 = +[AMSLogConfig sharedConfig];
    v9 = v8;
    if (v7)
    {
      if (!v8)
      {
        v9 = +[AMSLogConfig sharedConfig];
      }

      v10 = [v9 OSLogObject];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 40);
        v19 = 138543362;
        v20 = objc_opt_class();
        v12 = v20;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%{public}@: _createAuthenticateRequestForAccount: AMSAuthenticateOptions.HTTPHeaders a contains non-string value", &v19, 0xCu);
      }

      v9 = +[NSNotificationCenter defaultCenter];
      v13 = +[AMSLogConfig sharedConfig];
      [v9 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v13 userInfo:0];
    }

    else
    {
      if (!v8)
      {
        v9 = +[AMSLogConfig sharedConfig];
      }

      v13 = [v9 OSLogObject];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        v14 = *(a1 + 40);
        v19 = 138543362;
        v20 = objc_opt_class();
        v15 = v20;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_FAULT, "%{public}@: _createAuthenticateRequestForAccount: AMSAuthenticateOptions.HTTPHeaders a contains non-string value", &v19, 0xCu);
      }
    }

    v16 = AMSCustomError();
    v17 = *(*(a1 + 48) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
  }
}

AMSPromise *__cdecl sub_5364(id a1, AMSAuthKitUpdateResult *a2)
{
  v2 = [(AMSAuthKitUpdateResult *)a2 account];
  v3 = [AMSPromise promiseWithResult:v2];

  return v3;
}

void sub_53C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    v9 = AMSHashIfNeeded();
    v10 = 138543874;
    v11 = v7;
    v12 = 2114;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to generate a password for the account. error = %{public}@", &v10, 0x20u);
  }
}

void sub_54F8(uint64_t a1)
{
  v2 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully generated a password for the account.", &v7, 0x16u);
  }
}

void sub_5B4C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    v9 = 138543874;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Device offer registration failed. error = %{public}@", &v9, 0x20u);
  }
}

void sub_5C6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 ams_mapWithTransform:&stru_146E8];
  v5 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    v10 = 138544130;
    v11 = v8;
    v12 = 2114;
    v13 = v9;
    v14 = 2048;
    v15 = [v3 count];
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "%{public}@:[%{public}@] Did receive %ld offers: %@", &v10, 0x2Au);
  }

  [AMSDefaults setDidRetrieveDeviceOffers:1];
}

id sub_674C(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 hasPrefix:*(a1 + 32)];

  return v4;
}

void sub_6790(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
  v7 = v6;
  if (a2)
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      v15 = 138543618;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%@] Successfully provisioned biometrics.", &v15, 0x16u);
LABEL_10:
    }
  }

  else
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = objc_opt_class();
      v11 = AMSLogKey();
      v14 = AMSHashIfNeeded();
      v15 = 138543874;
      v16 = v13;
      v17 = 2112;
      v18 = v11;
      v19 = 2114;
      v20 = v14;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%@] Failed to provision biometrics. error = %{public}@", &v15, 0x20u);

      goto LABEL_10;
    }
  }
}

id sub_7B3C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_19390;
  v7 = qword_19390;
  if (!qword_19390)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_8754;
    v3[3] = &unk_14788;
    v3[4] = &v4;
    sub_8754(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_7C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_7EFC(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
  v7 = v6;
  if (a2)
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v9 = *(a1 + 40);
      v11 = objc_opt_class();
      if (v10)
      {
        [NSString stringWithFormat:@"%@: [%@] ", v11, *(a1 + 32)];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v11, v18];
      }
      v15 = ;
      *buf = 138543362;
      v20 = v15;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully removed duplicate account", buf, 0xCu);
    }
  }

  else
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v12 = *(a1 + 40);
      v14 = objc_opt_class();
      if (v13)
      {
        [NSString stringWithFormat:@"%@: [%@] ", v14, *(a1 + 32)];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v14, v18];
      }
      v16 = ;
      v17 = AMSLogableError();
      *buf = 138543618;
      v20 = v16;
      v21 = 2114;
      v22 = v17;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove duplicate account. error = %{public}@", buf, 0x16u);
    }
  }
}

Class sub_8754(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_19398)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_8898;
    v4[4] = &unk_147C0;
    v4[5] = v4;
    v5 = off_147A8;
    v6 = 0;
    qword_19398 = _sl_dlopen();
    v2 = v4[0];
    if (qword_19398)
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
  result = objc_getClass("SSVSubscriptionStatusCoordinator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_915C();
  }

  qword_19390 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_8898(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_19398 = result;
  return result;
}

Swift::Void __swiftcall AMSVerifyCredentialsTask.prepareMetricsActivity()()
{
  v1 = objc_allocWithZone(sub_91D4());
  v2 = sub_9194();
  [v0 setActivity:sub_9184()];
  swift_unknownObjectRelease();
  sub_91A4();
}

void AMSVerifyCredentialsTask.completeMetricsActivity(promise:)()
{
  if ([v0 activity])
  {
    v1 = objc_allocWithZone(sub_91D4());
    swift_unknownObjectRetain();
    v2 = sub_91B4();
    sub_91C4();
    swift_unknownObjectRelease();
  }
}