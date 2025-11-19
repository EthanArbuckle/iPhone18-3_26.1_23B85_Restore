id sub_1000732A8(uint64_t a1, void *a2)
{
  v3 = [a2 value];
  if (v3)
  {
    v4 = [[AMSDUpdateMultiUserTokenTask alloc] initWithController:*(a1 + 32) account:*(a1 + 40) home:v3];
    v5 = [(AMSDUpdateMultiUserTokenTask *)v4 performTask];
    v6 = [v5 thenWithBlock:&stru_1002B1740];
  }

  else
  {
    v4 = +[AMSOptional optionalWithNil];
    v6 = [AMSPromise promiseWithResult:v4];
  }

  return v6;
}

AMSPromise *__cdecl sub_100073374(id a1, NSString *a2)
{
  v2 = [AMSOptional optionalWithValue:a2];
  v3 = [AMSPromise promiseWithResult:v2];

  return v3;
}

void sub_1000733DC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000734AC;
  v8[3] = &unk_1002B17B8;
  v5 = *(a1 + 56);
  v9 = v4;
  v12 = v5;
  v6 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v7 = v4;
  [v6 readWrite:v8];
}

id sub_1000734AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    [v3 addObject:?];
  }

  v5 = ++*(*(*(a1 + 56) + 8) + 24);
  if (v5 == [*(a1 + 40) count])
  {
    [*(a1 + 48) finishWithResult:v4];
  }

  return v4;
}

void sub_10007353C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v11 = AMSHashIfNeeded();
      v27 = 138543874;
      v28 = v9;
      v29 = 2114;
      v30 = v10;
      v31 = 2114;
      v32 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error occurred before attempt to update multi-user tokens. error = %{public}@", &v27, 0x20u);
    }

    v12 = *(a1 + 40);
    v13 = [AMSDMultiUserService _sanitizeError:v6];
    (*(v12 + 16))(v12, 0, v13);
  }

  else
  {
    v14 = [v5 count];
    v15 = +[AMSLogConfig sharedAccountsDaemonConfig];
    v16 = v15;
    if (v14)
    {
      if (!v15)
      {
        v16 = +[AMSLogConfig sharedConfig];
      }

      v17 = [v16 OSLogObject];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        v19 = AMSLogKey();
        v20 = AMSHashIfNeeded();
        v27 = 138543874;
        v28 = v18;
        v29 = 2114;
        v30 = v19;
        v31 = 2114;
        v32 = v20;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to update one or more multi-user tokens. errors = %{public}@", &v27, 0x20u);
      }

      v21 = AMSErrorWithMultipleUnderlyingErrors();
      v22 = *(a1 + 40);
      v23 = [AMSDMultiUserService _sanitizeError:v21];
      (*(v22 + 16))(v22, 0, v23);
    }

    else
    {
      if (!v15)
      {
        v16 = +[AMSLogConfig sharedConfig];
      }

      v24 = [v16 OSLogObject];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = objc_opt_class();
        v26 = AMSLogKey();
        v27 = 138543618;
        v28 = v25;
        v29 = 2114;
        v30 = v26;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully updated all multi-user tokens.", &v27, 0x16u);
      }

      (*(*(a1 + 40) + 16))();
    }
  }

  [AMSDTransactionStore releaseKeepAliveTransaction:*(a1 + 32)];
}

void sub_100074DD0(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v11 = 138543874;
      v12 = v9;
      v13 = 2114;
      v14 = v10;
      v15 = 2114;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error posting notification: %{public}@", &v11, 0x20u);
    }
  }
}

id sub_10007526C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1002E32A8;
  v7 = qword_1002E32A8;
  if (!qword_1002E32A8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100076494;
    v3[3] = &unk_1002B0728;
    v3[4] = &v4;
    sub_100076494(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100075334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10007534C(uint64_t a1, void *a2)
{
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000755D4;
  v18[3] = &unk_1002B18B0;
  v19 = *(a1 + 32);
  v4 = [a2 ams_firstObjectPassingTest:v18];
  v5 = +[AMSLogConfig sharedAccountsDaemonConfig];
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v11 = [v4 familyID];
      *buf = 138543874;
      v21 = v9;
      v22 = 2114;
      v23 = v10;
      v24 = 2114;
      v25 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Arcade entitlement found, user is a subscriber. Entitlement.familyID = %{public}@", buf, 0x20u);
    }

    [*(a1 + 48) finishWithResult:&__kCFBooleanTrue];
  }

  else
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v6 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      v14 = objc_opt_class();
      v15 = AMSLogKey();
      *buf = 138543618;
      v21 = v14;
      v22 = 2114;
      v23 = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No Arcade entitlement found, user is not subscribed.", buf, 0x16u);
    }

    v16 = *(a1 + 48);
    v17 = AMSError();
    [v16 finishWithError:v17];
  }
}

uint64_t sub_1000755D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 familyID];
  v5 = [v4 stringValue];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  v7 = [v3 expiryDate];

  v8 = +[NSDate date];
  v9 = [v7 compare:v8];

  if (v9 == -1)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

void sub_100075844(uint64_t a1, void *a2)
{
  v3 = [a2 ams_firstObjectPassingTest:&stru_1002B1918];
  v4 = +[AMSLogConfig sharedAccountsDaemonConfig];
  v5 = v4;
  if (v3)
  {
    if (!v4)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      v10 = [v3 familyID];
      v17 = 138543874;
      v18 = v8;
      v19 = 2114;
      v20 = v9;
      v21 = 2114;
      v22 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fitness+ entitlement found, user is a subscriber. Entitlement.familyID = %{public}@", &v17, 0x20u);
    }

    [*(a1 + 40) finishWithResult:&__kCFBooleanTrue];
  }

  else
  {
    if (!v4)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v5 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = objc_opt_class();
      v14 = AMSLogKey();
      v17 = 138543618;
      v18 = v13;
      v19 = 2114;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No Fitness+ entitlement found, user is not subscribed.", &v17, 0x16u);
    }

    v15 = *(a1 + 40);
    v16 = AMSError();
    [v15 finishWithError:v16];
  }
}

BOOL sub_100075A74(id a1, ASDSubscriptionEntitlement *a2)
{
  v2 = [(ASDSubscriptionEntitlement *)a2 expiryDate];
  v3 = +[NSDate date];
  v4 = [v2 compare:v3] != -1;

  return v4;
}

void sub_100075D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100075D48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 statusType];
  v5 = +[AMSLogConfig sharedAccountsDaemonConfig];
  v6 = v5;
  if (v4 == 1)
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 statusType]);
      v19 = 138543874;
      v20 = v9;
      v21 = 2114;
      v22 = v10;
      v23 = 2114;
      v24 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Music subscription enabled, user is a subscriber. StatusType = %{public}@", &v19, 0x20u);
    }

    [*(a1 + 40) finishWithResult:&__kCFBooleanTrue];
  }

  else
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v6 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v14 = objc_opt_class();
      v15 = AMSLogKey();
      v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 statusType]);
      v19 = 138543874;
      v20 = v14;
      v21 = 2114;
      v22 = v15;
      v23 = 2114;
      v24 = v16;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Music subscription not enabled, user is not subscribed. StatusType = %{public}@", &v19, 0x20u);
    }

    v17 = *(a1 + 40);
    v18 = AMSError();
    [v17 finishWithError:v18];
  }
}

void sub_100076208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100076228(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 isTVPlusSubscriber];
  v5 = +[AMSLogConfig sharedAccountsDaemonConfig];
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isTVPlusSubscriber]);
      v19 = 138543874;
      v20 = v9;
      v21 = 2114;
      v22 = v10;
      v23 = 2114;
      v24 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] TV subscription enabled, user is a subscriber. SubscriptionData.isTVPlusSubscriber = %{public}@", &v19, 0x20u);
    }

    [*(a1 + 40) finishWithResult:&__kCFBooleanTrue];
  }

  else
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v6 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v14 = objc_opt_class();
      v15 = AMSLogKey();
      v16 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isTVPlusSubscriber]);
      v19 = 138543874;
      v20 = v14;
      v21 = 2114;
      v22 = v15;
      v23 = 2114;
      v24 = v16;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] TV subscription not enabled, user is not subscribed. SubscriptionData.isTVPlusSubscriber = %{public}@", &v19, 0x20u);
    }

    v17 = *(a1 + 40);
    v18 = AMSError();
    [v17 finishWithError:v18];
  }
}

Class sub_100076494(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1002E32B0)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1000765D8;
    v4[4] = &unk_1002B0760;
    v4[5] = v4;
    v5 = off_1002B19B0;
    v6 = 0;
    qword_1002E32B0 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1002E32B0)
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
  result = objc_getClass("ASDSubscriptionEntitlements");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10021B2C4();
  }

  qword_1002E32A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000765D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1002E32B0 = result;
  return result;
}

Class sub_10007664C(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1002E32C0)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100076790;
    v4[4] = &unk_1002B0760;
    v4[5] = v4;
    v5 = off_1002B19C8;
    v6 = 0;
    qword_1002E32C0 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1002E32C0)
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
  result = objc_getClass("ICMusicSubscriptionStatusController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10021B2EC();
  }

  qword_1002E32B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100076790(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1002E32C0 = result;
  return result;
}

Class sub_100076804(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1002E32D0)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100076948;
    v4[4] = &unk_1002B0760;
    v4[5] = v4;
    v5 = off_1002B19E0;
    v6 = 0;
    qword_1002E32D0 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1002E32D0)
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
  result = objc_getClass("WLKSubscriptionStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10021B314();
  }

  qword_1002E32C8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100076948(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1002E32D0 = result;
  return result;
}

void sub_100076B00(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v5 = [a2 ams_sanitizedForSecureCoding];
    (*(v2 + 16))(v2, 0, v5);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4, 1, 0);
  }
}

void sub_100076BE4(id a1)
{
  qword_1002E32E0 = objc_alloc_init(AMSDPaymentValidationService);

  _objc_release_x1();
}

void sub_100076C64(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.AppleMediaServices.AMSDPaymentValidationService", v3);
  v2 = qword_1002E32F0;
  qword_1002E32F0 = v1;
}

void sub_100076E0C(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v2 = qword_1002E32F8;
  v12 = qword_1002E32F8;
  if (!qword_1002E32F8)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000772AC;
    v8[3] = &unk_1002B0728;
    v8[4] = &v9;
    sub_1000772AC(v8);
    v2 = v10[3];
  }

  v3 = v2;
  _Block_object_dispose(&v9, 8);
  v4 = objc_alloc_init(v2);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100076F5C;
  v6[3] = &unk_1002B1A40;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v4 paymentHardwareStatusWithType:1 completion:v6];
}

void sub_100076F5C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = [a2 canMakeAMPPayments];
    v5 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = AMSLogKey();
      v8 = *(a1 + 32);
      v9 = objc_opt_class();
      v10 = v9;
      if (v7)
      {
        v2 = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v10, v2];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v9];
      }
      v11 = ;
      v19 = AMSLogKey();
      v20 = [NSNumber numberWithBool:v4];
      *buf = 138543874;
      v27 = v11;
      v28 = 2114;
      v29 = v19;
      v30 = 2114;
      v31 = v20;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Get payment hardware status. canUseApplePay = %{public}@", buf, 0x20u);

      if (v7)
      {

        v11 = v2;
      }
    }

    v21 = +[AMSDPaymentValidationService paymentHardwareType];
    v18 = v21;
    v22 = @"false";
    if (v4)
    {
      v22 = @"true";
    }

    v24[0] = AMSHTTPHeaderPaymentHardwareStatus;
    v24[1] = AMSHTTPHeaderPaymentHardwareType;
    v25[0] = v22;
    v25[1] = v21;
    v23 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v12 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v15 = objc_opt_class();
      v16 = v15;
      v17 = AMSLogKey();
      *buf = 138543618;
      v27 = v15;
      v28 = 2114;
      v29 = v17;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to get paymentHardwareStatus", buf, 0x16u);
    }

    v18 = AMSError();
    (*(*(a1 + 40) + 16))();
  }
}

Class sub_1000772AC(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1002E3300)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1000773F0;
    v4[4] = &unk_1002B0760;
    v4[5] = v4;
    v5 = off_1002B1A60;
    v6 = 0;
    qword_1002E3300 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1002E3300)
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
  result = objc_getClass("PKInAppPaymentService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10021B364();
  }

  qword_1002E32F8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000773F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1002E3300 = result;
  return result;
}

void sub_1000774A8(id a1)
{
  qword_1002E3310 = objc_alloc_init(AMSDPaymentViewService);

  _objc_release_x1();
}

void sub_100077844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100077864(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10007787C(void *a1)
{
  v2 = a1[4];
  v6 = [objc_opt_class() _fdsResultCache];
  v3 = [v6 objectForKeyedSubscript:a1[5]];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100077B2C(void *a1)
{
  v2 = a1[6];
  v3 = a1[4];
  v4 = [objc_opt_class() _fdsResultCache];
  [v4 setObject:v2 forKeyedSubscript:a1[5]];
}

void sub_100077E28(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() _fdsConsumedCache];
  [v3 setObject:&off_1002C6738 forKey:*(a1 + 40)];
}

void sub_1000781C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [objc_opt_class() _fdsConsumedCache];
  v3 = [*(a1 + 40) purchaseIdentifier];
  [v4 setObject:&off_1002C6750 forKey:v3];
}

void sub_10007823C(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 ams_sanitizedForSecureCoding];
  (*(v4 + 16))(v4, v5, v6);
}

void sub_1000782B8(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 ams_sanitizedForSecureCoding];
  (*(v4 + 16))(v4, v5, v6);
}

void sub_10007870C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100078748(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() _odiSessionCache];
  v4 = [*(a1 + 40) purchaseIdentifier];
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    v6 = [v5 availablePartialAssessment];
    v7 = *(a1 + 48);
  }

  else
  {
    v8 = +[AMSLogConfig sharedConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = objc_opt_class();
      v12 = AMSLogKey();
      v13 = [*(a1 + 40) purchaseIdentifier];
      v14 = AMSHashIfNeeded();
      v17 = 138543874;
      v18 = v11;
      v19 = 2114;
      v20 = v12;
      v21 = 2112;
      v22 = v14;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to get ODI assessment, no matching session for id: %@", &v17, 0x20u);
    }

    v6 = AMSError();
    v7 = *(a1 + 56);
  }

  v15 = *(v7 + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v6;
}

void sub_100078D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100078D58(void *a1)
{
  v2 = a1[4];
  v3 = [objc_opt_class() _odiSessionCache];
  [v3 setObject:a1[5] forKey:a1[6]];
}

void sub_100078FD0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() _odiSessionCache];
  v4 = [v3 objectForKey:*(a1 + 40)];

  if (v4)
  {
    v5 = objc_alloc_init(AMSPromise);
    v6 = [v5 completionHandlerAdapter];
    [v4 getAssessment:v6];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100079224;
    v16[3] = &unk_1002B1B40;
    v7 = *(a1 + 40);
    v16[4] = *(a1 + 32);
    v17 = v7;
    v18 = *(a1 + 48);
    [v5 addFinishBlock:v16];
  }

  else
  {
    v8 = +[AMSLogConfig sharedConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = objc_opt_class();
      v12 = AMSLogKey();
      v13 = *(a1 + 40);
      v14 = AMSHashIfNeeded();
      *buf = 138543874;
      v20 = v11;
      v21 = 2114;
      v22 = v12;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to get ODI assessment, no matching session for cache identifier: %@", buf, 0x20u);
    }

    v5 = AMSError();
    v15 = *(a1 + 48);
    if (v15)
    {
      (*(v15 + 16))(v15, 0, v5);
    }
  }
}

void sub_100079224(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[AMSLogConfig sharedConfig];
  v8 = v7;
  if (v6)
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = a1[4];
      v11 = objc_opt_class();
      v12 = AMSLogKey();
      v13 = a1[5];
      v14 = AMSHashIfNeeded();
      v22 = 138544130;
      v23 = v11;
      v24 = 2114;
      v25 = v12;
      v26 = 2112;
      v27 = v14;
      v28 = 2114;
      v29 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] ODI evaluation failed for cache identifier: %@, with error: %{public}@", &v22, 0x2Au);
    }

    (*(a1[6] + 16))();
  }

  else
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v8 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = a1[4];
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      v19 = a1[5];
      v20 = AMSHashIfNeeded();
      v22 = 138543874;
      v23 = v17;
      v24 = 2114;
      v25 = v18;
      v26 = 2112;
      v27 = v20;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successful ODI evaluation for cache identifier: %@", &v22, 0x20u);
    }

    v21 = [[AMSODIAssessment alloc] initWithStringValue:v5];
    (*(a1[6] + 16))();
  }
}

void sub_10007972C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100079758(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() _odiSessionCache];
  v4 = [v3 objectForKey:*(a1 + 40)];

  if (v4)
  {
    [v4 provideFeedbackOnPayloadOutcome:{objc_msgSend(*(a1 + 32), "_outcomeTypeForOutcome:", *(a1 + 56))}];
    if (*(a1 + 64) == 1)
    {
      v5 = *(a1 + 32);
      v6 = [objc_opt_class() _odiSessionCache];
      [v6 setObject:0 forKey:*(a1 + 40)];
    }
  }

  else
  {
    v7 = +[AMSLogConfig sharedConfig];
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
      v12 = *(a1 + 40);
      v13 = AMSHashIfNeeded();
      v17 = 138543874;
      v18 = v10;
      v19 = 2114;
      v20 = v11;
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to provide ODI assessment, no matching session for id: %@", &v17, 0x20u);
    }

    v14 = AMSError();
    v15 = *(*(a1 + 48) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }
}

void sub_100079BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100079C14(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() _odiSessionCache];
  v4 = [v3 objectForKey:*(a1 + 40)];

  if (v4)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v5 = qword_1002E33A8;
    v21 = qword_1002E33A8;
    if (!qword_1002E33A8)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10007D0AC;
      v23 = &unk_1002B0728;
      v24 = &v18;
      sub_10007D0AC(buf);
      v5 = v19[3];
    }

    v6 = v5;
    _Block_object_dispose(&v18, 8);
    v7 = objc_alloc_init(v5);
    v8 = [*(a1 + 48) attributes];
    [v7 setAttributes:v8];

    [v4 updateWithAdditionalAttributes:v7];
  }

  else
  {
    v9 = +[AMSLogConfig sharedConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = objc_opt_class();
      v13 = AMSLogKey();
      v14 = *(a1 + 40);
      v15 = AMSHashIfNeeded();
      *buf = 138412802;
      *&buf[4] = v12;
      *&buf[12] = 2114;
      *&buf[14] = v13;
      *&buf[22] = 2112;
      v23 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@{public}@: [%{public}@] Failed to update ODI attributes, no matching session for id: %@", buf, 0x20u);
    }

    v16 = AMSError();
    v17 = *(*(a1 + 56) + 8);
    v7 = *(v17 + 40);
    *(v17 + 40) = v16;
  }
}

void sub_10007A21C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 128), 8);
  _Block_object_dispose((v37 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_10007A258(void *a1)
{
  v2 = a1[4];
  v3 = [objc_opt_class() _fdsConsumedCache];
  v5 = [v3 objectForKey:a1[5]];

  v4 = v5;
  if (v5)
  {
    *(*(a1[6] + 8) + 24) = [v5 BOOLValue];
    v4 = v5;
    *(*(a1[7] + 8) + 24) = 1;
  }
}

void sub_10007A2E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = [objc_opt_class() _odiSessionCache];
  v3 = [*(a1 + 40) stringValue];
  v4 = [v5 objectForKey:v3];
  *(*(*(a1 + 48) + 8) + 24) = v4 != 0;
}

void sub_10007A374(void *a1)
{
  v2 = a1[4];
  v3 = [objc_opt_class() _fdsEvaluatorCache];
  v4 = [v3 objectForKey:a1[5]];

  if (v4)
  {
    v5 = +[AMSLogConfig sharedConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      v8 = objc_opt_class();
      v9 = a1[6];
      v10 = [NSNumber numberWithBool:*(*(a1[7] + 8) + 24)];
      v12 = 138543874;
      v13 = v8;
      v14 = 2114;
      v15 = v9;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Invoking FDS completion SPI with consumption state: %{public}@", &v12, 0x20u);
    }

    v11 = objc_alloc_init(L1vrniCr6VjgMaLl);
    [(L1vrniCr6VjgMaLl *)v11 setConsumed:*(*(a1[7] + 8) + 24)];
    [v4 eVZ8hjC0Tuzwvnqc:v11];
  }
}

void sub_10007A504(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() _fdsConsumedCache];
  [v3 setObject:0 forKey:*(a1 + 40)];
}

void sub_10007A560(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() _fdsEvaluatorCache];
  [v3 setObject:0 forKey:*(a1 + 40)];
}

void sub_10007AE40(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    v9 = [*(a1 + 32) account];
    v10 = [v9 ams_firstName];
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v11 = qword_1002E33B0;
    v43 = qword_1002E33B0;
    if (!qword_1002E33B0)
    {
      v35 = _NSConcreteStackBlock;
      v36 = 3221225472;
      v37 = sub_10007D104;
      v38 = &unk_1002B0728;
      v39 = &v40;
      v12 = sub_10007CF38();
      v41[3] = dlsym(v12, "ODIAttributeKeyUserFirstName");
      qword_1002E33B0 = *(v39[1] + 24);
      v11 = v41[3];
    }

    _Block_object_dispose(&v40, 8);
    if (v11)
    {
      [v8 setObject:v10 forKeyedSubscript:*v11];

      v13 = [*(a1 + 32) account];
      v14 = [v13 ams_lastName];
      v40 = 0;
      v41 = &v40;
      v42 = 0x2020000000;
      v15 = qword_1002E33B8;
      v43 = qword_1002E33B8;
      if (!qword_1002E33B8)
      {
        v35 = _NSConcreteStackBlock;
        v36 = 3221225472;
        v37 = sub_10007D154;
        v38 = &unk_1002B0728;
        v39 = &v40;
        v16 = sub_10007CF38();
        v41[3] = dlsym(v16, "ODIAttributeKeyUserLastName");
        qword_1002E33B8 = *(v39[1] + 24);
        v15 = v41[3];
      }

      _Block_object_dispose(&v40, 8);
      if (v15)
      {
        [v8 setObject:v14 forKeyedSubscript:*v15];

        v17 = +[AMSDevice phoneNumber];
        v40 = 0;
        v41 = &v40;
        v42 = 0x2020000000;
        v18 = qword_1002E33C0;
        v43 = qword_1002E33C0;
        if (!qword_1002E33C0)
        {
          v35 = _NSConcreteStackBlock;
          v36 = 3221225472;
          v37 = sub_10007D1A4;
          v38 = &unk_1002B0728;
          v39 = &v40;
          v19 = sub_10007CF38();
          v41[3] = dlsym(v19, "ODIAttributeKeyUserPhoneNumber");
          qword_1002E33C0 = *(v39[1] + 24);
          v18 = v41[3];
        }

        _Block_object_dispose(&v40, 8);
        if (v18)
        {
          [v8 setObject:v17 forKeyedSubscript:*v18];

          v20 = [*(a1 + 32) account];
          v21 = [v20 username];
          v40 = 0;
          v41 = &v40;
          v42 = 0x2020000000;
          v22 = qword_1002E33C8;
          v43 = qword_1002E33C8;
          if (!qword_1002E33C8)
          {
            v35 = _NSConcreteStackBlock;
            v36 = 3221225472;
            v37 = sub_10007D1F4;
            v38 = &unk_1002B0728;
            v39 = &v40;
            v23 = sub_10007CF38();
            v41[3] = dlsym(v23, "ODIAttributeKeyUserEmail");
            qword_1002E33C8 = *(v39[1] + 24);
            v22 = v41[3];
          }

          _Block_object_dispose(&v40, 8);
          if (v22)
          {
            [v8 setObject:v21 forKeyedSubscript:*v22];

            v24 = [*(a1 + 32) options];
            v25 = [v24 bundleIdentifier];
            v40 = 0;
            v41 = &v40;
            v42 = 0x2020000000;
            v26 = qword_1002E33D0;
            v43 = qword_1002E33D0;
            if (!qword_1002E33D0)
            {
              v35 = _NSConcreteStackBlock;
              v36 = 3221225472;
              v37 = sub_10007D244;
              v38 = &unk_1002B0728;
              v39 = &v40;
              v27 = sub_10007CF38();
              v41[3] = dlsym(v27, "ODIAttributeKeyCallerID");
              qword_1002E33D0 = *(v39[1] + 24);
              v26 = v41[3];
            }

            _Block_object_dispose(&v40, 8);
            if (v26)
            {
              [v8 setObject:v25 forKeyedSubscript:*v26];

              v28 = [[AMSODIAdditionalAttributes alloc] initWithAttributes:v8];
              v29 = *(a1 + 40);
              v31[0] = _NSConcreteStackBlock;
              v31[1] = 3221225472;
              v31[2] = sub_10007B41C;
              v31[3] = &unk_1002B1BE0;
              v31[4] = v29;
              v32 = v5;
              v34 = *(a1 + 48);
              v33 = *(a1 + 32);
              [v29 updateODIWithAttributes:v28 forCacheIdentifier:v32 completion:v31];

              goto LABEL_20;
            }

LABEL_25:
            v30 = sub_10021B19C();
            _Block_object_dispose(&v40, 8);
            _Unwind_Resume(v30);
          }

LABEL_24:
          sub_10021B19C();
          goto LABEL_25;
        }

LABEL_23:
        sub_10021B19C();
        goto LABEL_24;
      }
    }

    else
    {
      sub_10021B19C();
    }

    sub_10021B19C();
    goto LABEL_23;
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, 0, v6);
  }

LABEL_20:
}

void sub_10007B41C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      (*(v4 + 16))(v4, 0, v3);
    }
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10007B500;
    v7[3] = &unk_1002B1BB8;
    v9 = *(a1 + 56);
    v8 = *(a1 + 48);
    [v5 getODIAssessmentForCacheIdentifier:v6 clearCache:0 completion:v7];
  }
}

void sub_10007B500(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 40))
  {
    v5 = a3;
    v6 = a2;
    v7 = [AMSFDSResult alloc];
    v8 = [v6 stringValue];

    v9 = [*(a1 + 32) options];
    v10 = [v7 initWithValue:v8 action:{objc_msgSend(v9, "action")}];

    (*(*(a1 + 40) + 16))();
  }
}

void sub_10007BA2C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = [objc_opt_class() _fdsEvaluatorCache];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) purchaseIdentifier];
  [v5 setObject:v3 forKey:v4];
}

void sub_10007BAA0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = +[AMSLogConfig sharedConfig];
  v9 = v8;
  if (v6)
  {
    if (!v8)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 32) logKey];
      v17 = 138543362;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "AMSDSecurityService: [%{public}@] Successfully generated FDS.", &v17, 0xCu);
    }

    [*(a1 + 40) finishWithResult:v6];
  }

  else
  {
    if (!v8)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v9 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [*(a1 + 32) logKey];
      v14 = AMSHashIfNeeded();
      v17 = 138543618;
      v18 = v13;
      v19 = 2114;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "AMSDSecurityService: [%{public}@] Failed to generate FDS, error = %{public}@", &v17, 0x16u);
    }

    v15 = *(a1 + 40);
    if (v7)
    {
      [v15 finishWithError:v7];
    }

    else
    {
      v16 = AMSError();
      [v15 finishWithError:v16];
    }
  }
}

void sub_10007BCBC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[AMSLogConfig sharedConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = objc_opt_class();
    v11 = AMSLogKey();
    *buf = 138543618;
    v45 = v10;
    v46 = 2114;
    v47 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Generating base64-encoded AFDS", buf, 0x16u);
  }

  v12 = objc_alloc_init(NSMutableString);
  v13 = [v5 bytes];
  if ([v5 length])
  {
    v14 = 0;
    do
    {
      [v12 appendFormat:@"%02x", v13[v14++]];
    }

    while ([v5 length] > v14);
  }

  if (*(a1 + 56))
  {
    if (v6)
    {
      v15 = +[AMSLogConfig sharedConfig];
      if (!v15)
      {
        v15 = +[AMSLogConfig sharedConfig];
      }

      v16 = [v15 OSLogObject];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = *(a1 + 32);
        v18 = objc_opt_class();
        v19 = AMSLogKey();
        *buf = 138543874;
        v45 = v18;
        v46 = 2114;
        v47 = v19;
        v48 = 2114;
        v49 = v6;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] FDS evaluation failed with error: %{public}@", buf, 0x20u);
      }

      (*(*(a1 + 56) + 16))();
      goto LABEL_35;
    }

    if ([v12 length])
    {
      v29 = +[AMSLogConfig sharedConfig];
      if (!v29)
      {
        v29 = +[AMSLogConfig sharedConfig];
      }

      v30 = [v29 OSLogObject];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = *(a1 + 32);
        v32 = objc_opt_class();
        v33 = AMSLogKey();
        v34 = AMSHashIfNeeded();
        *buf = 138543874;
        v45 = v32;
        v46 = 2114;
        v47 = v33;
        v48 = 2114;
        v49 = v34;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully generated AFDS = %{public}@", buf, 0x20u);
      }

      v35 = [AMSFDSResult alloc];
      v36 = [v12 copy];
      v37 = [*(a1 + 40) options];
      v22 = [v35 initWithValue:v36 action:{objc_msgSend(v37, "action")}];

      v38 = *(a1 + 48);
      v39 = *(*(a1 + 56) + 16);
    }

    else
    {
      v22 = AMSError();
      v39 = *(*(a1 + 56) + 16);
    }

    v39();
LABEL_34:

    goto LABEL_35;
  }

  v20 = +[AMSUnitTests isRunningUnitTests];
  v21 = +[AMSLogConfig sharedConfig];
  v22 = v21;
  if (!v20)
  {
    if (!v21)
    {
      v22 = +[AMSLogConfig sharedConfig];
    }

    v40 = [v22 OSLogObject];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
    {
      v41 = *(a1 + 32);
      v42 = objc_opt_class();
      v43 = AMSLogKey();
      *buf = 138543618;
      v45 = v42;
      v46 = 2114;
      v47 = v43;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_FAULT, "%{public}@: [%{public}@] No completion block, this is probably a programmer error", buf, 0x16u);
    }

    goto LABEL_34;
  }

  if (!v21)
  {
    v22 = +[AMSLogConfig sharedConfig];
  }

  v23 = [v22 OSLogObject];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = *(a1 + 32);
    v25 = objc_opt_class();
    v26 = AMSLogKey();
    *buf = 138543618;
    v45 = v25;
    v46 = 2114;
    v47 = v26;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] No completion block, this is probably a programmer error", buf, 0x16u);
  }

  v27 = +[NSNotificationCenter defaultCenter];
  v28 = +[AMSLogConfig sharedConfig];
  [v27 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v28 userInfo:0];

LABEL_35:
}

void sub_10007C290(id a1)
{
  qword_1002E3320 = [[AMSLRUCache alloc] initWithMaxSize:5];

  _objc_release_x1();
}

void sub_10007C318(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.AMSDPurchaseService.FDSConsumedCache", v3);
  v2 = qword_1002E3330;
  qword_1002E3330 = v1;
}

void sub_10007C3C0(id a1)
{
  qword_1002E3340 = [[AMSLRUCache alloc] initWithMaxSize:5];

  _objc_release_x1();
}

void sub_10007C448(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.AMSDPurchaseService.FDSEvaluatorCache", v3);
  v2 = qword_1002E3350;
  qword_1002E3350 = v1;
}

void sub_10007C4F0(id a1)
{
  qword_1002E3360 = objc_alloc_init(NSMutableDictionary);

  _objc_release_x1();
}

void sub_10007C570(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.AMSDPurchaseService.FDSResultCache", v3);
  v2 = qword_1002E3370;
  qword_1002E3370 = v1;
}

id sub_10007CCD0()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = qword_1002E3400;
  v8 = qword_1002E3400;
  if (!qword_1002E3400)
  {
    v1 = sub_10007CF38();
    v6[3] = dlsym(v1, "ODIServiceProviderIdTDMTrustedInference");
    qword_1002E3400 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = sub_10021B19C();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void sub_10007CE18(id a1)
{
  qword_1002E3380 = [[AMSLRUCache alloc] initWithMaxSize:5];

  _objc_release_x1();
}

void sub_10007CEA0(id a1)
{
  qword_1002E3390 = dispatch_queue_create("com.apple.AMSDPurchaseService.ODISessionCache", 0);

  _objc_release_x1();
}

Class sub_10007CEE0(uint64_t a1)
{
  sub_10007CF38();
  result = objc_getClass("ODISession");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1002E3398 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_10021B1C0();
    return sub_10007CF38();
  }

  return result;
}

uint64_t sub_10007CF38()
{
  v3[0] = 0;
  if (!qword_1002E33A0)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_10007D038;
    v3[4] = &unk_1002B0760;
    v3[5] = v3;
    v4 = off_1002B1D50;
    v5 = 0;
    qword_1002E33A0 = _sl_dlopen();
  }

  v0 = qword_1002E33A0;
  v1 = v3[0];
  if (!qword_1002E33A0)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_10007D038(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1002E33A0 = result;
  return result;
}

Class sub_10007D0AC(uint64_t a1)
{
  sub_10007CF38();
  result = objc_getClass("ODIAdditionalAttributes");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1002E33A8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_10021B440();
    return sub_10007D104(v3);
  }

  return result;
}

void *sub_10007D104(uint64_t a1)
{
  v2 = sub_10007CF38();
  result = dlsym(v2, "ODIAttributeKeyUserFirstName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1002E33B0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10007D154(uint64_t a1)
{
  v2 = sub_10007CF38();
  result = dlsym(v2, "ODIAttributeKeyUserLastName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1002E33B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10007D1A4(uint64_t a1)
{
  v2 = sub_10007CF38();
  result = dlsym(v2, "ODIAttributeKeyUserPhoneNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1002E33C0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10007D1F4(uint64_t a1)
{
  v2 = sub_10007CF38();
  result = dlsym(v2, "ODIAttributeKeyUserEmail");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1002E33C8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10007D244(uint64_t a1)
{
  v2 = sub_10007CF38();
  result = dlsym(v2, "ODIAttributeKeyCallerID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1002E33D0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10007D294(uint64_t a1)
{
  v2 = sub_10007CF38();
  result = dlsym(v2, "ODIServiceProviderIdAmpFreeBuy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1002E33D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10007D2E4(uint64_t a1)
{
  v2 = sub_10007CF38();
  result = dlsym(v2, "ODIServiceProviderIdAmpPaidBuy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1002E33E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10007D334(uint64_t a1)
{
  v2 = sub_10007CF38();
  result = dlsym(v2, "ODIServiceProviderIdApplicationCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1002E33E8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10007D384(uint64_t a1)
{
  v2 = sub_10007CF38();
  result = dlsym(v2, "ODIServiceProviderIdApplicationSubmit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1002E33F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10007D3D4(uint64_t a1)
{
  v2 = sub_10007CF38();
  result = dlsym(v2, "ODIServiceProviderIdIdUpdate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1002E33F8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10007D424(uint64_t a1)
{
  v2 = sub_10007CF38();
  result = dlsym(v2, "ODIServiceProviderIdTDMTrustedInference");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1002E3400 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10007E298(void *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    [v6 doubleValue];
    v9 = v8;
  }

  else
  {
    v10 = +[AMSLogConfig sharedPushNotificationConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = AMSLogKey();
      v13 = a1[8];
      v14 = objc_opt_class();
      v15 = v14;
      if (v12)
      {
        v3 = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v15, v3];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v14];
      }
      v16 = ;
      *buf = 138543618;
      *&buf[4] = v16;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch timeout value from the bag. Will proceed without a timeout. error = %@", buf, 0x16u);
      if (v12)
      {

        v16 = v3;
      }
    }

    v9 = 0.0;
  }

  v17 = [[AMSDelegatePurchaseRequest alloc] initWithCacheKey:a1[4] challenge:a1[5]];
  [v17 setDeviceName:a1[6]];
  [v17 setRequiresDelegateToken:0];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2050000000;
  v18 = qword_1002E3410;
  v36 = qword_1002E3410;
  if (!qword_1002E3410)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10007EF00;
    v38 = &unk_1002B0728;
    v39 = &v33;
    sub_10007EF00(buf);
    v18 = v34[3];
  }

  v19 = v18;
  _Block_object_dispose(&v33, 8);
  v20 = objc_alloc_init(v18);
  [v20 setAccount:a1[7]];
  [v20 setPurchaseRequest:v17];
  [v20 setDeviceName:a1[6]];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2050000000;
  v21 = qword_1002E3420;
  v36 = qword_1002E3420;
  if (!qword_1002E3420)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10007F0C8;
    v38 = &unk_1002B0728;
    v39 = &v33;
    sub_10007F0C8(buf);
    v21 = v34[3];
  }

  v22 = v21;
  _Block_object_dispose(&v33, 8);
  v23 = [[v21 alloc] initWithRequest:v20];
  v24 = [[AMSPromise alloc] initWithTimeout:v9];
  v25 = [v24 completionHandlerAdapter];
  [v23 setSessionCompletionHandler:v25];

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v27 = a1[8];
  v26 = (a1 + 8);
  v29[2] = sub_10007E6D4;
  v29[3] = &unk_1002B1DB0;
  v30 = v23;
  v32 = v27;
  v31 = *(v26 - 4);
  v28 = v23;
  [v24 addFinishBlock:v29];
  [*v26 _saveSession:v28 forKey:*(v26 - 4)];
  [v28 start];
}

void sub_10007E6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10007E6D4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    if ([v5 ams_isTimeoutError])
    {
      [*(a1 + 32) cancel];
    }

    v7 = +[AMSLogConfig sharedPushNotificationConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = AMSLogKey();
      v10 = *(a1 + 48);
      v11 = objc_opt_class();
      v12 = v11;
      if (v9)
      {
        v3 = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v12, v3];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v11];
      }
      v13 = ;
      *buf = 138543618;
      v22 = v13;
      v23 = 2114;
      v24 = v6;
      v17 = "%{public}@Delegate auth session failed with error: %{public}@";
      v18 = v8;
      v19 = OS_LOG_TYPE_ERROR;
      v20 = 22;
      goto LABEL_18;
    }
  }

  else
  {
    v7 = +[AMSLogConfig sharedPushNotificationConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = AMSLogKey();
      v14 = *(a1 + 48);
      v15 = objc_opt_class();
      v16 = v15;
      if (v9)
      {
        v3 = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v16, v3];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v15];
      }
      v13 = ;
      *buf = 138543362;
      v22 = v13;
      v17 = "%{public}@Delegate auth session succeeded";
      v18 = v8;
      v19 = OS_LOG_TYPE_DEFAULT;
      v20 = 12;
LABEL_18:
      _os_log_impl(&_mh_execute_header, v18, v19, v17, buf, v20);
      if (v9)
      {

        v13 = v3;
      }
    }
  }

  [*(a1 + 48) _removeSessionForKey:*(a1 + 40)];
}

void sub_10007EF00(uint64_t a1)
{
  sub_10007EF58();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CPSStorePurchaseRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1002E3410 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_10021B468();
    sub_10007EF58();
  }
}

void sub_10007EF58()
{
  v1[0] = 0;
  if (!qword_1002E3418)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_10007F054;
    v1[4] = &unk_1002B0760;
    v1[5] = v1;
    v2 = off_1002B1DF8;
    v3 = 0;
    qword_1002E3418 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_1002E3418)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_10007F054(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1002E3418 = result;
  return result;
}

void sub_10007F0C8(uint64_t a1)
{
  sub_10007EF58();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CPSAuthenticationSession");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1002E3420 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = sub_10021B490();
    [(AMSDPushParsableDismissQRDialog *)v2 handleNotificationPayload:v3 config:v4 bag:v5, v6];
  }
}

void sub_10007F8AC(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[AMSLogConfig sharedAccountsConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = objc_opt_class();
    v10 = AMSLogKey();
    v11 = 138544130;
    v12 = v9;
    v13 = 2114;
    v14 = v10;
    v15 = 1024;
    v16 = a2;
    v17 = 2114;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Data cache update result: %d error: %{public}@", &v11, 0x26u);
  }
}

void sub_10007F9DC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[AMSLogConfig sharedAccountsConfig];
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
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Account data sync returned error: %{public}@", &v9, 0x20u);
    }
  }
}

void sub_10007FB00(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[AMSLogConfig sharedAccountsConfig];
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
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] TS data sync returned error: %{public}@", &v9, 0x20u);
    }
  }
}

void sub_10007FEC0(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[AMSLogConfig sharedAccountsMultiUserConfig];
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
      v15 = 138543362;
      v16 = objc_opt_class();
      v10 = v16;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully updated the multi-user tokens.", &v15, 0xCu);
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
      v11 = *(a1 + 32);
      v12 = objc_opt_class();
      v13 = v12;
      v14 = AMSHashIfNeeded();
      v15 = 138543618;
      v16 = v12;
      v17 = 2114;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to update the multi-user tokens. error = %{public}@", &v15, 0x16u);
    }
  }
}

id sub_100080850(uint64_t a1)
{
  v2 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = AMSLogKey();
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    v7 = v6;
    v33 = v4;
    if (v4)
    {
      v31 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v7, v31];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v6];
    }
    v8 = ;
    v32 = [*(a1 + 32) account];
    v9 = [v32 ams_DSID];
    v10 = AMSHashIfNeeded();
    v11 = [*(a1 + 32) environment];
    v12 = [*(a1 + 32) token];
    v13 = [v12 base64EncodedStringWithOptions:0];
    v14 = AMSHashIfNeeded();
    *buf = 138544130;
    v37 = v8;
    v38 = 2114;
    v39 = v10;
    v40 = 2114;
    v41 = v11;
    v42 = 2114;
    v43 = v14;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@Performing token registration. account: %{public}@ | environment: %{public}@ | token: %{public}@", buf, 0x2Au);

    if (v33)
    {

      v8 = v31;
    }
  }

  v15 = [*(a1 + 32) token];
  if (v15 && (v16 = v15, [*(a1 + 32) bag], v17 = objc_claimAutoreleasedReturnValue(), v17, v16, v17))
  {
    v18 = *(a1 + 32);
    v19 = objc_opt_class();
    v20 = [*(a1 + 32) account];
    v21 = [*(a1 + 32) environment];
    v22 = [*(a1 + 32) token];
    v23 = [v19 shouldPerformForAccount:v20 environment:v21 token:v22];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100080C08;
    v34[3] = &unk_1002B1EA8;
    v34[4] = *(a1 + 32);
    v35 = 0;
    v24 = [v23 thenWithBlock:v34];
  }

  else
  {
    v25 = [*(a1 + 32) bag];
    if (v25)
    {
      v26 = @"true";
    }

    else
    {
      v26 = @"false";
    }

    v27 = [*(a1 + 32) token];
    if (v27)
    {
      v28 = @"true";
    }

    else
    {
      v28 = @"false";
    }

    v30 = v28;
    v20 = AMSErrorWithFormat();

    v24 = [AMSPromise promiseWithError:v20, v26, v30];
  }

  return v24;
}

id sub_100080C08(uint64_t a1, void *a2)
{
  if ([a2 BOOLValue])
  {
    v3 = [AMSPushRegisterTask alloc];
    v4 = [*(a1 + 32) account];
    v5 = [*(a1 + 32) token];
    v6 = [*(a1 + 32) environment];
    v7 = [*(a1 + 32) bag];
    v8 = [v3 initWithAccount:v4 token:v5 environment:v6 bag:v7];

    v9 = [v8 performTask];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100080E38;
    v15[3] = &unk_1002AFDD8;
    v15[4] = *(a1 + 32);
    [v9 addErrorBlock:v15];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100080FD0;
    v14[3] = &unk_1002B1E58;
    v14[4] = *(a1 + 32);
    [v9 addSuccessBlock:v14];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100081158;
    v12[3] = &unk_1002B1E80;
    v13 = *(a1 + 40);
    v12[4] = *(a1 + 32);
    [v9 addFinishBlock:v12];
  }

  else
  {
    v10 = AMSError();
    v9 = [AMSPromise promiseWithError:v10];
  }

  return v9;
}

void sub_100080E38(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = AMSLogKey();
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    v9 = v8;
    if (v6)
    {
      a1 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v9, a1];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v8];
    }
    v10 = ;
    v11 = AMSLogableError();
    *buf = 138543618;
    v13 = v10;
    v14 = 2114;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@Token registration failed with error: %{public}@", buf, 0x16u);
    if (v6)
    {

      v10 = a1;
    }
  }
}

void sub_100080FD0(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 32);
  v3 = [v2 token];
  [v2 _updateCachedCriteriaWithToken:v3];

  v4 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = AMSLogKey();
    v7 = *(v1 + 32);
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
    *buf = 138543362;
    v12 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Token registration succeeded", buf, 0xCu);
    if (v6)
    {

      v10 = v1;
    }
  }
}

void sub_100081158(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v6 = [*(a1 + 32) account];
    v5 = [*(a1 + 32) environment];
    [v4 _updateThrottleForAccount:v6 environment:v5];
  }
}

id sub_1000815EC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (([v4 BOOLValue] & 1) == 0)
  {
    v12 = v4;
LABEL_21:
    v25 = [AMSPromise promiseWithResult:v12];
    goto LABEL_22;
  }

  if ([*(a1 + 56) _shouldThrottleForAccount:*(a1 + 32) environment:*(a1 + 40)])
  {
    v5 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = AMSLogKey();
      v8 = *(a1 + 56);
      v9 = objc_opt_class();
      v10 = v9;
      if (v7)
      {
        v2 = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v10, v2];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v9];
      }
      v11 = ;
      v26 = *(a1 + 32);
      v27 = AMSHashIfNeeded();
      v28 = *(a1 + 40);
      v29 = AMSHashIfNeeded();
      *buf = 138543874;
      v32 = v11;
      v33 = 2114;
      v34 = v27;
      v35 = 2114;
      v36 = v29;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Throttling registration. account: %{public}@ | environment: %{public}@", buf, 0x20u);
      if (v7)
      {

        v11 = v2;
      }
    }

    v12 = &__kCFBooleanFalse;
    goto LABEL_21;
  }

  v13 = [*(a1 + 56) _createCriteriaWithToken:*(a1 + 48)];
  v14 = [*(a1 + 32) ams_registerSuccessCriteria];
  v15 = [v14 objectForKeyedSubscript:*(a1 + 40)];

  v16 = [v15 isEqualToString:v13];
  if (v16)
  {
    v17 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v17)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    v18 = [v17 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 56);
      v20 = objc_opt_class();
      v21 = AMSLogKey();
      v22 = [*(a1 + 32) username];
      v23 = AMSHashIfNeeded();
      *buf = 138543874;
      v32 = v20;
      v33 = 2114;
      v34 = v21;
      v35 = 2114;
      v36 = v23;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Already posted registration for %{public}@", buf, 0x20u);
    }
  }

  v24 = [NSNumber numberWithInt:v16 ^ 1];
  v25 = [AMSPromise promiseWithResult:v24];

LABEL_22:

  return v25;
}

void sub_1000824F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_100082534(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _deviceNameChanged];
}

void sub_100082574(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _startConnectionWithEnvironment:a2];
  if (*(a1 + 40))
  {
    v4 = v3;
    [v3 addFinishBlock:?];
    v3 = v4;
  }
}

void sub_100082660(id a1)
{
  qword_1002E3430 = [[AMSDPushService alloc] initWithCompletion:0];

  _objc_release_x1();
}

void sub_100082AD8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = AMSLogKey();
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    v9 = v8;
    if (v6)
    {
      a1 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v9, a1];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v8];
    }
    v10 = ;
    v11 = AMSLogableError();
    *buf = 138543618;
    v13 = v10;
    v14 = 2114;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@Failed to establish connections. Error: %{public}@", buf, 0x16u);
    if (v6)
    {

      v10 = a1;
    }
  }
}

void sub_100083C44(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = AMSLogKey();
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    if (v6)
    {
      v9 = AMSLogKey();
      a1 = NSStringFromSelector(*(a1 + 40));
      [NSString stringWithFormat:@"%@: [%@] %@ ", v8, v9, a1];
    }

    else
    {
      v9 = NSStringFromSelector(*(a1 + 40));
      [NSString stringWithFormat:@"%@: %@ ", v8, v9];
    }
    v10 = ;
    v11 = AMSLogableError();
    *buf = 138543618;
    v13 = v10;
    v14 = 2114;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@Failed to post push tokens. Error: %{public}@", buf, 0x16u);
    if (v6)
    {

      v10 = a1;
    }
  }
}

void sub_100084328(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = AMSLogKey();
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    v9 = v8;
    if (v6)
    {
      a1 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v9, a1];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v8];
    }
    v10 = ;
    v11 = AMSLogableError();
    *buf = 138543618;
    v13 = v10;
    v14 = 2114;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@Failed to post push tokens after device name change. Error: %{public}@", buf, 0x16u);
    if (v6)
    {

      v10 = a1;
    }
  }
}

void sub_1000846A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = AMSLogKey();
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    v9 = v8;
    if (v6)
    {
      a1 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v9, a1];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v8];
    }
    v10 = ;
    v11 = AMSLogableError();
    *buf = 138543618;
    v13 = v10;
    v14 = 2114;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@Failed to establish connections. Error: %{public}@", buf, 0x16u);
    if (v6)
    {

      v10 = a1;
    }
  }
}

AMSPromise *__cdecl sub_100084AA8(id a1, NSArray *a2)
{
  v2 = [AMSBoolean BOOLeanWithBool:[(NSArray *)a2 count]!= 0];
  v3 = [AMSPromise promiseWithResult:v2];

  return v3;
}

AMSPromise *__cdecl sub_100084B20(id a1, NSArray *a2)
{
  v2 = [AMSBoolean BOOLeanWithBool:[(NSArray *)a2 count]!= 0];
  v3 = [AMSPromise promiseWithResult:v2];

  return v3;
}

id sub_100084B98(uint64_t a1, void *a2)
{
  if ([a2 value])
  {
    v3 = *(a1 + 32);
    v4 = +[AMSDBag defaultBag];
    v5 = [v3 _pushEnvironmentFromBag:v4];
    v6 = [v5 thenWithBlock:&stru_1002B1FF0];
  }

  else
  {
    v4 = +[AMSOptional optionalWithNil];
    v6 = [AMSPromise promiseWithResult:v4];
  }

  return v6;
}

AMSPromise *__cdecl sub_100084C5C(id a1, NSString *a2)
{
  v2 = [AMSOptional optionalWithValue:a2];
  v3 = [AMSPromise promiseWithResult:v2];

  return v3;
}

id sub_100084CC4(uint64_t a1, void *a2)
{
  if ([a2 value])
  {
    v3 = *(a1 + 32);
    v4 = [AMSDBag bagForMediaType:AMSAccountMediaTypeAppStoreSandbox];
    v5 = [v3 _pushEnvironmentFromBag:v4];
    v6 = [v5 thenWithBlock:&stru_1002B2038];
  }

  else
  {
    v4 = +[AMSOptional optionalWithNil];
    v6 = [AMSPromise promiseWithResult:v4];
  }

  return v6;
}

AMSPromise *__cdecl sub_100084D94(id a1, NSString *a2)
{
  v2 = [AMSOptional optionalWithValue:a2];
  v3 = [AMSPromise promiseWithResult:v2];

  return v3;
}

AMSPromise *__cdecl sub_100084DFC(id a1, NSArray *a2)
{
  v2 = a2;
  v3 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](v2, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v2;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v14 + 1) + 8 * i) value];
        [v3 ams_addNullableObject:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v10 = [NSSet setWithArray:v3];
  v11 = [v10 allObjects];
  v12 = [AMSPromise promiseWithResult:v11];

  return v12;
}

id sub_100084F98(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  os_unfair_lock_assert_not_owner((*(a1 + 32) + 8));
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = [*(*(a1 + 32) + 32) allKeys];
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        if (([v3 containsObject:v10] & 1) == 0)
        {
          v11 = *(a1 + 32);
          v12 = [v11[4] objectForKeyedSubscript:v10];
          [v11 _shutDownConnection:v12 forEnvironment:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v7);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = v3;
  v14 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v26;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v25 + 1) + 8 * j);
        v19 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:v18];

        if (!v19)
        {
          [v4 addObject:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v15);
  }

  os_unfair_lock_assert_owner((*(a1 + 32) + 8));
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  if ([v4 count])
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000852BC;
    v24[3] = &unk_1002B2080;
    v24[4] = *(a1 + 32);
    v20 = [v13 ams_mapWithTransform:v24];
    v21 = [AMSPromise promiseWithAll:v20];
  }

  else
  {
    v22 = +[AMSBinaryPromise promiseWithSuccess];
    v21 = [v22 promiseAdapter];
  }

  return v21;
}

id sub_1000852BC(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _startConnectionWithEnvironment:a2];
  v3 = [v2 promiseAdapter];

  return v3;
}

id sub_1000856C8(uint64_t a1, void *a2)
{
  v2 = [a2 ams_filterUsingTest:*(a1 + 32)];
  v3 = [AMSPromise promiseWithResult:v2];

  return v3;
}

id sub_10008572C(uint64_t a1, void *a2)
{
  v2 = [a2 ams_filterUsingTest:*(a1 + 32)];
  v3 = [AMSPromise promiseWithResult:v2];

  return v3;
}

AMSPromise *__cdecl sub_100085790(id a1, NSArray *a2)
{
  v2 = a2;
  v3 = [(NSArray *)v2 objectAtIndexedSubscript:0];
  v4 = [(NSArray *)v2 objectAtIndexedSubscript:1];

  v5 = [v3 arrayByAddingObjectsFromArray:v4];
  v6 = [AMSPromise promiseWithResult:v5];

  return v6;
}

void sub_100085844(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = AMSLogKey();
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    v9 = v8;
    if (v6)
    {
      a1 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v9, a1];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v8];
    }
    v10 = ;
    v11 = AMSLogableError();
    *buf = 138543618;
    v13 = v10;
    v14 = 2114;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@Failed to post push tokens. Error: %{public}@", buf, 0x16u);
    if (v6)
    {

      v10 = a1;
    }
  }
}

AMSPromise *__cdecl sub_100085A98(id a1, NSArray *a2)
{
  v2 = [(NSArray *)a2 ams_filterUsingTest:&stru_1002B2170];
  v3 = [AMSPromise promiseWithResult:v2];

  return v3;
}

void sub_100085D40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = AMSLogKey();
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    v9 = v8;
    if (v6)
    {
      a1 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v9, a1];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v8];
    }
    v10 = ;
    v11 = AMSHashIfNeeded();
    *buf = 138543618;
    v13 = v10;
    v14 = 2114;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine the push environment. Error: %{public}@", buf, 0x16u);
    if (v6)
    {

      v10 = a1;
    }
  }
}

id sub_1000861A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _pushEnvironmentForAccount:v3];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100086284;
  v9[3] = &unk_1002B21C0;
  v5 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v3;
  v11 = v5;
  v6 = v3;
  v7 = [v4 thenWithBlock:v9];

  return v7;
}

id sub_100086284(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _connectionForEnvironment:v3];

  if (v4)
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = sub_100086750;
    v41 = sub_100086760;
    v42 = 0;
    v5 = [*(a1 + 32) registerTaskQueue];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100086768;
    v32[3] = &unk_1002B2198;
    v6 = *(a1 + 40);
    v32[4] = *(a1 + 32);
    v33 = v6;
    v34 = v3;
    v35 = &v37;
    v36 = *(a1 + 48);
    v7 = v32;
    v8 = v5;
    v9 = AMSLogKey();
    *block = _NSConcreteStackBlock;
    *&block[8] = 3221225472;
    *&block[16] = sub_100087790;
    v44 = &unk_1002B05B8;
    v45 = v9;
    v46 = v7;
    v10 = v9;
    dispatch_sync(v8, block);

    v11 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = AMSLogKey();
      v14 = *(a1 + 32);
      if (v13)
      {
        v15 = objc_opt_class();
        v16 = AMSLogKey();
        v17 = [NSString stringWithFormat:@"%@: [%@] ", v15, v16];
      }

      else
      {
        v17 = [NSString stringWithFormat:@"%@: ", objc_opt_class()];
        v16 = v17;
      }

      v26 = v38[5];
      v27 = AMSHashIfNeeded();
      *block = 138543618;
      *&block[4] = v17;
      *&block[12] = 2114;
      *&block[14] = v27;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%{public}@Task promise: %{public}@", block, 0x16u);
      if (v13)
      {
      }
    }

    v28 = v38[5];
    _Block_object_dispose(&v37, 8);
  }

  else
  {
    v18 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v18)
    {
      v18 = +[AMSLogConfig sharedConfig];
    }

    v19 = [v18 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = AMSLogKey();
      v21 = *(a1 + 32);
      v22 = objc_opt_class();
      v23 = v22;
      if (v20)
      {
        v24 = AMSLogKey();
        v25 = [NSString stringWithFormat:@"%@: [%@] ", v23, v24];
      }

      else
      {
        v25 = [NSString stringWithFormat:@"%@: ", v22];
        v24 = v25;
      }

      v29 = AMSHashIfNeeded();
      *block = 138543618;
      *&block[4] = v25;
      *&block[12] = 2114;
      *&block[14] = v29;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@No active connection for this environment. Starting connection. environment = %{public}@", block, 0x16u);
      if (v20)
      {
      }
    }

    v30 = [*(a1 + 32) _startConnectionWithEnvironment:v3];
    v28 = [v30 promiseAdapter];
  }

  return v28;
}

void sub_100086724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100086750(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100086768(uint64_t a1)
{
  v5 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = AMSLogKey();
    v8 = *(a1 + 32);
    v9 = objc_opt_class();
    v10 = v9;
    if (v7)
    {
      v1 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v10, v1];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v9];
    }
    v2 = ;
    v11 = *(a1 + 40);
    v12 = AMSHashIfNeeded();
    v13 = *(a1 + 48);
    v3 = AMSHashIfNeeded();
    *buf = 138543874;
    v60 = v2;
    v61 = 2114;
    v62 = v12;
    v63 = 2114;
    v64 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@Starting push registration. account = %{public}@ | environment = %{public}@", buf, 0x20u);
    if (v7)
    {

      v2 = v1;
    }
  }

  v14 = [*(a1 + 32) _pushTokenForEnvironment:*(a1 + 48)];
  if (!v14 || !*(a1 + 48))
  {
    v15 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v15)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    v16 = [v15 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = AMSLogKey();
      v18 = *(a1 + 32);
      v19 = objc_opt_class();
      v20 = v19;
      if (v17)
      {
        v2 = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v20, v2];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v19];
      }
      v21 = ;
      v28 = AMSHashIfNeeded();
      v29 = *(a1 + 48);
      v30 = AMSHashIfNeeded();
      *buf = 138543874;
      v60 = v21;
      v61 = 2114;
      v62 = v28;
      v63 = 2114;
      v64 = v30;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Either the token or environment is nil. token = %{public}@ | environment = %{public}@", buf, 0x20u);
      if (v17)
      {

        v21 = v2;
      }
    }

LABEL_29:

    goto LABEL_30;
  }

  if (*(a1 + 64))
  {
    v22 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v22)
    {
      v22 = +[AMSLogConfig sharedConfig];
    }

    v23 = [v22 OSLogObject];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = AMSLogKey();
      v25 = *(a1 + 32);
      v26 = objc_opt_class();
      v3 = v26;
      if (v24)
      {
        v2 = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v3, v2];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v26];
      }
      v27 = ;
      *buf = 138543362;
      v60 = v27;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%{public}@Checking to see if we should perform push registration.", buf, 0xCu);
      if (v24)
      {

        v27 = v2;
      }
    }

    if ([*(a1 + 40) ams_isLocalAccount])
    {
      goto LABEL_30;
    }

    v35 = [AMSDPushRegisterTask shouldPerformForAccount:*(a1 + 40) environment:*(a1 + 48) token:v14];

    v36 = +[AMSLogConfig sharedAccountsDaemonConfig];
    v15 = v36;
    if (v35)
    {
      if (!v36)
      {
        v15 = +[AMSLogConfig sharedConfig];
      }

      v37 = [v15 OSLogObject];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = AMSLogKey();
        v39 = *(a1 + 32);
        v40 = objc_opt_class();
        v3 = v40;
        if (v38)
        {
          v2 = AMSLogKey();
          [NSString stringWithFormat:@"%@: [%@] ", v3, v2];
        }

        else
        {
          [NSString stringWithFormat:@"%@: ", v40];
        }
        v41 = ;
        *buf = 138543362;
        v60 = v41;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "%{public}@We should perform push registration.", buf, 0xCu);
        if (v38)
        {

          v41 = v2;
        }
      }

      goto LABEL_53;
    }

    if (!v36)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    v16 = [v15 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v42 = AMSLogKey();
      v43 = *(a1 + 32);
      v44 = objc_opt_class();
      v45 = v44;
      if (v42)
      {
        v2 = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v45, v2];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v44];
      }
      v46 = ;
      *buf = 138543362;
      v60 = v46;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%{public}@We should not perform push registration. Returning success.", buf, 0xCu);
      if (v42)
      {

        v46 = v2;
      }
    }

    goto LABEL_29;
  }

  if ([*(a1 + 40) ams_isLocalAccount])
  {
LABEL_30:
    v31 = +[AMSBinaryPromise promiseWithSuccess];
    v32 = [v31 promiseAdapter];
    v33 = *(*(a1 + 56) + 8);
    v34 = *(v33 + 40);
    *(v33 + 40) = v32;
    goto LABEL_31;
  }

LABEL_53:
  v31 = [*(a1 + 32) _bagForAccount:*(a1 + 40)];
  v34 = [[AMSDPushRegisterTask alloc] initWithAccount:*(a1 + 40) token:v14 environment:*(a1 + 48) bag:v31];
  v47 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v47)
  {
    v47 = +[AMSLogConfig sharedConfig];
  }

  v48 = [v47 OSLogObject];
  if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
  {
    v49 = AMSLogKey();
    v50 = *(a1 + 32);
    v51 = objc_opt_class();
    v52 = v51;
    if (v49)
    {
      v3 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v52, v3];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v51];
    }
    v53 = ;
    v54 = AMSHashIfNeeded();
    *buf = 138543618;
    v60 = v53;
    v61 = 2114;
    v62 = v54;
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "%{public}@Created task: %{public}@", buf, 0x16u);
    if (v49)
    {

      v53 = v3;
    }
  }

  v55 = [(AMSDPushRegisterTask *)v34 perform];
  v56 = [v55 promiseAdapter];
  v57 = *(*(a1 + 56) + 8);
  v58 = *(v57 + 40);
  *(v57 + 40) = v56;

LABEL_31:
}

uint64_t sub_100087790(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = AMSSetLogKey();
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

void sub_100087DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100087DC4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[8] == 1)
  {
    result = [v2 isScheduled];
  }

  else
  {
    result = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

AMSDRefreshMultiUserResult *sub_1000881E8(uint64_t a1)
{
  v2 = +[AMSLogConfig sharedAccountsMultiUserConfig];
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
    v7 = [*(a1 + 32) homes];
    v8 = AMSHashIfNeeded();
    v9 = [*(a1 + 32) options];
    v10 = AMSHashIfNeeded();
    v30 = 138544130;
    v31 = v5;
    v32 = 2114;
    v33 = v6;
    v34 = 2114;
    v35 = v8;
    v36 = 2114;
    v37 = v10;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Starting a Multi-User refresh. homes = %{public}@ | options = %{public}@", &v30, 0x2Au);
  }

  v11 = objc_alloc_init(NSMutableArray);
  v12 = [*(a1 + 32) metrics];

  if (!v12)
  {
    v13 = objc_alloc_init(AMSDMultiUserMetrics);
    [*(a1 + 32) setMetrics:v13];
  }

  v14 = [*(a1 + 32) metrics];
  v15 = [*(a1 + 32) options];
  v16 = [v14 enqueueMultiUserRefreshBeginEventWithOptions:v15];

  [*(a1 + 32) _createMultiUserTokensWithErrors:v11];
  [*(a1 + 32) _reconcileiTunesAccountsWithErrors:v11];
  [*(a1 + 32) _reconcileRecordZonesWithErrors:v11];
  [*(a1 + 32) _refreshCloudDatabasesWithErrors:v11];
  [*(a1 + 32) _configurePreferredMediaUser:v11];
  [*(a1 + 32) _transferHomeSettingsToAccountsWithErrors:v11];
  if ([v11 count])
  {
    v17 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v17)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    v18 = [v17 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 32);
      v20 = objc_opt_class();
      v21 = AMSLogKey();
      v22 = AMSLogableErrors();
      v30 = 138543874;
      v31 = v20;
      v32 = 2114;
      v33 = v21;
      v34 = 2114;
      v35 = v22;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] The refresh failed. errors = %{public}@", &v30, 0x20u);

LABEL_16:
    }
  }

  else
  {
    [*(a1 + 32) _removeRenewCredentialsFollowUp];
    v17 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v17)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    v18 = [v17 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a1 + 32);
      v24 = objc_opt_class();
      v21 = AMSLogKey();
      v30 = 138543618;
      v31 = v24;
      v32 = 2114;
      v33 = v21;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] The refresh succeeded.", &v30, 0x16u);
      goto LABEL_16;
    }
  }

  v25 = [AMSDRefreshMultiUserResult alloc];
  v26 = [*(a1 + 32) homes];
  v27 = [*(a1 + 32) options];
  v28 = [(AMSDRefreshMultiUserResult *)v25 initWithHomes:v26 options:v27];

  [(AMSDRefreshMultiUserResult *)v28 setErrors:v11];

  return v28;
}

void sub_100089254(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v5 = a1;
  v6 = *(a1 + 32);
  v9 = 0;
  [v6 _createMultiUserTokenForHome:a2 error:&v9];
  v7 = v9;
  [*(v5 + 40) ams_addNullableObject:v7];
  LODWORD(v5) = sub_100048940(*(v5 + 40), v8);

  if (v5)
  {
    *a4 = 1;
  }
}

void sub_100089568(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  if (([v6 isDefaultRecordZone] & 1) == 0)
  {
    v70 = a4;
    v7 = [AMSDHomeManager identifiersForRecordZone:v6 inDatabase:*(a1 + 32)];
    v79 = 0;
    v8 = [v7 resultWithError:&v79];
    v9 = v79;

    if (v9)
    {
      v10 = +[AMSLogConfig sharedAccountsMultiUserConfig];
      if (!v10)
      {
        v10 = +[AMSLogConfig sharedConfig];
      }

      v11 = [v10 OSLogObject];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = *(a1 + 40);
        v13 = objc_opt_class();
        v14 = AMSLogKey();
        AMSHashIfNeeded();
        v16 = v15 = v9;
        AMSLogableError();
        v18 = v17 = v8;
        *buf = 138544130;
        v82 = v13;
        v83 = 2114;
        v84 = v14;
        v85 = 2114;
        v86 = v16;
        v87 = 2114;
        v88 = v18;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch a home/user identifiers from a record zone. recordZone = %{public}@ | error = %{public}@", buf, 0x2Au);

        v8 = v17;
        v9 = v15;
      }

      if ([v9 ams_hasDomain:@"AMSDCloudDataErrorDomain" code:7])
      {
        if (!v8)
        {
          goto LABEL_30;
        }

        v71 = v9;
        v19 = 1;
LABEL_13:
        v20 = [v8 first];
        v72 = [v8 second];
        v21 = [*(a1 + 40) homes];
        v77[0] = _NSConcreteStackBlock;
        v77[1] = 3221225472;
        v77[2] = sub_100089DC8;
        v77[3] = &unk_1002B1038;
        v22 = v20;
        v78 = v22;
        v23 = [v21 ams_firstObjectPassingTest:v77];

        if (v22 && v23)
        {
          v24 = v8;
          v25 = [v23 users];
          v75[0] = _NSConcreteStackBlock;
          v75[1] = 3221225472;
          v75[2] = sub_100089E0C;
          v75[3] = &unk_1002B0248;
          v76 = v72;
          v26 = [v25 ams_anyWithTest:v75];

          if ((v26 & 1) == 0)
          {
            v27 = [*(a1 + 40) options];
            v28 = [v27 reasonType];

            if (v28)
            {
              v29 = +[AMSLogConfig sharedAccountsMultiUserConfig];
              if (!v29)
              {
                v29 = +[AMSLogConfig sharedConfig];
              }

              v30 = [v29 OSLogObject];
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                v31 = *(a1 + 40);
                v66 = objc_opt_class();
                v68 = AMSLogKey();
                v32 = AMSHashIfNeeded();
                v33 = AMSHashIfNeeded();
                v34 = AMSHashIfNeeded();
                *buf = 138544386;
                v82 = v66;
                v83 = 2114;
                v84 = v68;
                v85 = 2114;
                v86 = v32;
                v87 = 2114;
                v88 = v33;
                v89 = 2114;
                v90 = v34;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Remove record zone, user not found in home. homeIdentifier = %{public}@ | userIdentifier = %{public}@ | recordZone = %{public}@", buf, 0x34u);
              }

              v19 = 1;
            }
          }

          v8 = v24;
          goto LABEL_29;
        }

        v35 = +[AMSLogConfig sharedAccountsMultiUserConfig];
        if (!v35)
        {
          v35 = +[AMSLogConfig sharedConfig];
        }

        v36 = [v35 OSLogObject];
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = *(a1 + 40);
          v67 = a1;
          v38 = v19;
          v39 = v8;
          v40 = objc_opt_class();
          v41 = AMSLogKey();
          v42 = AMSHashIfNeeded();
          AMSHashIfNeeded();
          v43 = v69 = v23;
          *buf = 138544130;
          v82 = v40;
          v8 = v39;
          v19 = v38;
          a1 = v67;
          v83 = 2114;
          v84 = v41;
          v85 = 2114;
          v86 = v42;
          v87 = 2114;
          v88 = v43;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] A record zone is associated with a non-existent home. homeIdentifier = %{public}@ | recordZone = %{public}@", buf, 0x2Au);

          v23 = v69;
        }

        if (!v22)
        {
LABEL_29:

          v9 = v71;
          if (v19)
          {
            goto LABEL_30;
          }

LABEL_41:
          v58 = v9;
LABEL_42:

          goto LABEL_43;
        }

        v44 = [[AMSDLeaveMultiUserHomeTask alloc] initWithHomeIdentifier:v22];
        [(AMSDLeaveMultiUserHomeTask *)v44 setRunMode:1];
        v45 = [(AMSDLeaveMultiUserHomeTask *)v44 performTask];
        v74 = 0;
        [v45 resultWithError:&v74];
        v46 = v74;

        [*(a1 + 48) ams_addNullableObject:v46];
        v9 = v71;
LABEL_30:
        v47 = +[AMSLogConfig sharedAccountsMultiUserConfig];
        if (!v47)
        {
          v47 = +[AMSLogConfig sharedConfig];
        }

        v48 = [v47 OSLogObject];
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          v49 = *(a1 + 40);
          v50 = objc_opt_class();
          v51 = AMSLogKey();
          v52 = AMSHashIfNeeded();
          *buf = 138543874;
          v82 = v50;
          v83 = 2114;
          v84 = v51;
          v85 = 2114;
          v86 = v52;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Removing the record zone. recordZone = %{public}@", buf, 0x20u);
        }

        v53 = *(a1 + 32);
        v54 = [v6 identifier];
        v80 = v54;
        v55 = [NSArray arrayWithObjects:&v80 count:1];
        v56 = [v53 deleteRecordZonesWithRecordZoneIdentifiers:v55];
        v73 = v9;
        v57 = [v56 resultWithError:&v73];
        v58 = v73;

        if (!v57)
        {
          v59 = +[AMSLogConfig sharedAccountsMultiUserConfig];
          if (!v59)
          {
            v59 = +[AMSLogConfig sharedConfig];
          }

          v60 = [v59 OSLogObject];
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            v61 = *(a1 + 40);
            v62 = objc_opt_class();
            v63 = AMSLogKey();
            v64 = AMSLogableError();
            *buf = 138543874;
            v82 = v62;
            v83 = 2114;
            v84 = v63;
            v85 = 2114;
            v86 = v64;
            _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to remove the record zone. error = %{public}@", buf, 0x20u);
          }

          [*(a1 + 48) ams_addNullableObject:v58];
          if (sub_100048940(*(a1 + 48), v65))
          {
            *v70 = 1;
          }
        }

        goto LABEL_42;
      }

      [*(a1 + 48) addObject:v9];
    }

    if (!v8)
    {
      goto LABEL_41;
    }

    v71 = v9;
    v19 = 0;
    goto LABEL_13;
  }

LABEL_43:
}

id sub_100089DC8(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

id sub_100089E0C(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void sub_100089F9C(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.AppleMediaServices.AMSDSecurityService", v3);
  v2 = qword_1002E3440;
  qword_1002E3440 = v1;
}

void sub_10008A174(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 ams_sanitizedForSecureCoding];
  (*(v4 + 16))(v4, v5, v6);
}

void sub_10008AC7C(uint64_t a1)
{
  v2 = +[AMSLogConfig sharedConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = objc_opt_class();
    v6 = v5;
    v7 = AMSLogKey();
    *buf = 138543618;
    v14 = v5;
    v15 = 2114;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running biometric token update", buf, 0x16u);
  }

  v8 = [[AMSDBiometricsTokenUpdateTask alloc] initWithAccount:*(a1 + 40)];
  [(AMSDBiometricsTokenUpdateTask *)v8 setAdditionalDialogMetrics:*(a1 + 48)];
  [(AMSDBiometricsTokenUpdateTask *)v8 setClientInfo:*(a1 + 56)];
  v9 = [*(a1 + 32) delegate];
  [(AMSDBiometricsTokenUpdateTask *)v8 setDelegate:v9];

  [(AMSDBiometricsTokenUpdateTask *)v8 setShouldGenerateKeysOnly:*(a1 + 72)];
  [(AMSDBiometricsTokenUpdateTask *)v8 setShouldRequestConfirmation:*(a1 + 73)];
  [(AMSDBiometricsTokenUpdateTask *)v8 setUserInitiated:*(a1 + 74)];
  v10 = [(AMSDBiometricsTokenUpdateTask *)v8 performUpdate];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10008AE88;
  v11[3] = &unk_1002B0498;
  v11[4] = *(a1 + 32);
  v12 = *(a1 + 64);
  [v10 addFinishBlock:v11];
}

void sub_10008AE88(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[AMSLogConfig sharedConfig];
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
      v11 = v10;
      v12 = AMSLogKey();
      *buf = 138543618;
      *&buf[4] = v10;
      *&buf[12] = 2114;
      *&buf[14] = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Biometrics token update completed successfully.", buf, 0x16u);
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
      v13 = *(a1 + 32);
      v14 = objc_opt_class();
      v11 = v14;
      v12 = AMSLogKey();
      v15 = AMSLogableError();
      *buf = 138543874;
      *&buf[4] = v14;
      *&buf[12] = 2114;
      *&buf[14] = v12;
      *&buf[22] = 2114;
      v26 = v15;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Biometrics token update failed with error: %{public}@", buf, 0x20u);

      goto LABEL_10;
    }
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10008B180;
    v21[3] = &unk_1002B2310;
    v23 = v16;
    v24 = a2;
    v22 = v5;
    v17 = v21;
    v18 = AMSLogKey();
    v19 = dispatch_get_global_queue(0, 0);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10008EFC0;
    v26 = &unk_1002B05B8;
    v27 = v18;
    v28 = v17;
    v20 = v18;
    dispatch_async(v19, buf);
  }
}

void sub_10008B180(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) ams_sanitizedForSecureCoding];
  (*(v2 + 16))(v2, v1, v3);
}

void sub_10008B2B0(uint64_t a1)
{
  v3 = +[AMSLogConfig sharedConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = AMSLogKey();
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = v7;
    if (v5)
    {
      v1 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v8, v1];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v7];
    }
    v9 = ;
    *buf = 138543362;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Verifying device passcode.", buf, 0xCu);
    if (v5)
    {

      v9 = v1;
    }
  }

  v10 = +[AMSProcessInfo currentProcess];
  v11 = [[_TtC12amsaccountsd28AMSDVerifyDevicePasscodeTask alloc] initWithClientInfo:v10];
  v12 = [(AMSDVerifyDevicePasscodeTask *)v11 perform];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10008B4C8;
  v14[3] = &unk_1002B0498;
  v13 = *(a1 + 40);
  v14[4] = *(a1 + 32);
  v15 = v13;
  [v12 addFinishBlock:v14];
}

void sub_10008B4C8(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  v7 = +[AMSLogConfig sharedConfig];
  v8 = v7;
  if (a2)
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = AMSLogKey();
      v11 = *(a1 + 32);
      v12 = objc_opt_class();
      v13 = v12;
      if (v10)
      {
        v3 = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v13, v3];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v12];
      }
      v14 = ;
      *buf = 138543362;
      *&buf[4] = v14;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Device passcode verification completed successfully.", buf, 0xCu);
      if (v10)
      {

        v14 = v3;
      }
    }
  }

  else
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = AMSLogKey();
      v16 = *(a1 + 32);
      v17 = objc_opt_class();
      v18 = v17;
      if (v15)
      {
        v3 = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v18, v3];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v17];
      }
      v19 = ;
      v20 = AMSLogableError();
      *buf = 138543618;
      *&buf[4] = v19;
      *&buf[12] = 2114;
      *&buf[14] = v20;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@Device passcode verification failed with error: %{public}@", buf, 0x16u);
      if (v15)
      {

        v19 = v3;
      }
    }
  }

  v21 = *(a1 + 40);
  if (v21)
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10008B864;
    v26[3] = &unk_1002B2310;
    v28 = v21;
    v29 = a2;
    v27 = v6;
    v22 = v26;
    v23 = AMSLogKey();
    v24 = dispatch_get_global_queue(0, 0);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10008EFC0;
    v31 = &unk_1002B05B8;
    v32 = v23;
    v33 = v22;
    v25 = v23;
    dispatch_async(v24, buf);
  }
}

void sub_10008B864(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) ams_sanitizedForSecureCoding];
  (*(v2 + 16))(v2, v1, v3);
}

void sub_10008BA2C(uint64_t a1)
{
  v3 = +[AMSLogConfig sharedConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = AMSLogKey();
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = v7;
    if (v5)
    {
      v1 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v8, v1];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v7];
    }
    v9 = ;
    *buf = 138543362;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Perform Remote Sign In Task", buf, 0xCu);
    if (v5)
    {

      v9 = v1;
    }
  }

  v10 = [[_TtC12amsaccountsd20AMSDRemoteSignInTask alloc] initWithAuthenticationResults:*(a1 + 40) signInContext:*(a1 + 48) serviceTypes:*(a1 + 56) clientInfo:*(a1 + 64)];
  v11 = [(AMSDRemoteSignInTask *)v10 perform];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10008BC34;
  v12[3] = &unk_1002B2388;
  v12[4] = *(a1 + 32);
  v13 = *(a1 + 72);
  [v11 resultWithCompletion:v12];
}

void sub_10008BC34(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = +[AMSLogConfig sharedConfig];
  v9 = v8;
  if (v6)
  {
    if (!v8)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = AMSLogKey();
      v13 = *(a1 + 32);
      v14 = objc_opt_class();
      v15 = v14;
      if (v12)
      {
        v3 = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v15, v3];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v14];
      }
      v16 = ;
      *buf = 138543618;
      *&buf[4] = v11;
      *&buf[12] = 2112;
      *&buf[14] = v16;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@%@ finished successfully", buf, 0x16u);
      if (v12)
      {

        v16 = v3;
      }
    }
  }

  else
  {
    if (!v8)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      v19 = *(a1 + 32);
      v20 = objc_opt_class();
      v21 = v20;
      if (v18)
      {
        v3 = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v21, v3];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v20];
      }
      v22 = ;
      v23 = AMSLogableError();
      *buf = 138543874;
      *&buf[4] = v17;
      *&buf[12] = 2112;
      *&buf[14] = v22;
      *&buf[22] = 2114;
      v34 = v23;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@%@ failed with error: %{public}@", buf, 0x20u);
      if (v18)
      {

        v22 = v3;
      }
    }
  }

  v24 = *(a1 + 40);
  if (v24)
  {
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10008C020;
    v29[3] = &unk_1002B2360;
    v32 = v24;
    v30 = v6;
    v31 = v7;
    v25 = v29;
    v26 = AMSLogKey();
    v27 = dispatch_get_global_queue(0, 0);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10008EFC0;
    v34 = &unk_1002B05B8;
    v35 = v26;
    v36 = v25;
    v28 = v26;
    dispatch_async(v27, buf);
  }
}

void sub_10008C020(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = [*(a1 + 40) ams_sanitizedForSecureCoding];
  (*(v2 + 16))(v2, v1, v3);
}

void sub_10008C2E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_10008C320(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v41 = 0;
  v42 = &v41;
  v43 = 0x2050000000;
  v5 = qword_1002E3448;
  v44 = qword_1002E3448;
  if (!qword_1002E3448)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10008F00C;
    v46 = &unk_1002B0728;
    v47 = &v41;
    sub_10008F00C(buf);
    v5 = v42[3];
  }

  v6 = v5;
  _Block_object_dispose(&v41, 8);
  v7 = objc_alloc_init(v5);
  if (v7)
  {
    v8 = +[AMSLogConfig sharedConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = *(a1 + 32);
      *buf = 138543874;
      *&buf[4] = v10;
      *&buf[12] = 2114;
      *&buf[14] = v11;
      *&buf[22] = 2050;
      v46 = 4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [apple-pay-classic] calling paymentServicesMerchantURLForAPIType. APIType = %{public}ld", buf, 0x20u);
    }

    v12 = NSStringFromSelector("paymentServicesMerchantURLForAPIType:completion:");
    v13 = [AMSDeallocGuard alloc];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10008C8E8;
    v37[3] = &unk_1002B0298;
    v40 = *(a1 + 48);
    v37[4] = WeakRetained;
    v38 = v12;
    v14 = v3;
    v39 = v14;
    v15 = v12;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10008CB6C;
    v32[3] = &unk_1002B23D8;
    v33 = [v13 initWithDeallocGuardBlock:v37];
    v34 = WeakRetained;
    v35 = *(a1 + 32);
    v36 = v14;
    v16 = v33;
    [v7 paymentServicesMerchantURLForAPIType:4 completion:v32];
  }

  else
  {
    v17 = +[AMSUnitTests isRunningUnitTests];
    v18 = +[AMSLogConfig sharedConfig];
    v19 = v18;
    if (v17)
    {
      if (!v18)
      {
        v19 = +[AMSLogConfig sharedConfig];
      }

      v20 = [v19 OSLogObject];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = AMSLogKey();
        v22 = v21 == 0;
        v23 = objc_opt_class();
        v24 = v23;
        if (v21)
        {
          v22 = AMSLogKey();
          [NSString stringWithFormat:@"%@: [%@] ", v24, v22];
        }

        else
        {
          [NSString stringWithFormat:@"%@: ", v23];
        }
        v25 = ;
        *buf = 138543362;
        *&buf[4] = v25;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to load PKInAppPaymentService", buf, 0xCu);
        if (v21)
        {

          v25 = v22;
        }
      }

      v19 = +[NSNotificationCenter defaultCenter];
      v26 = +[AMSLogConfig sharedConfig];
      [v19 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v26 userInfo:0];
    }

    else
    {
      if (!v18)
      {
        v19 = +[AMSLogConfig sharedConfig];
      }

      v26 = [v19 OSLogObject];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        v27 = AMSLogKey();
        v28 = v27 == 0;
        v29 = objc_opt_class();
        v30 = v29;
        if (v27)
        {
          v28 = AMSLogKey();
          [NSString stringWithFormat:@"%@: [%@] ", v30, v28];
        }

        else
        {
          [NSString stringWithFormat:@"%@: ", v29];
        }
        v31 = ;
        *buf = 138543362;
        *&buf[4] = v31;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_FAULT, "%{public}@Failed to load PKInAppPaymentService", buf, 0xCu);
        if (v27)
        {

          v31 = v28;
        }
      }
    }

    v15 = AMSError();
    [v3 finishWithError:v15];
  }
}

void sub_10008C8E8(uint64_t a1)
{
  v2 = +[AMSUnitTests isRunningUnitTests];
  v3 = +[AMSLogConfig sharedConfig];
  v4 = v3;
  if (v2)
  {
    if (!v3)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(*(a1 + 56));
      v10 = *(a1 + 40);
      *buf = 138543874;
      v20 = v8;
      v21 = 2114;
      v22 = v9;
      v23 = 2114;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%{public}@ %{public}@]: Completion handler for %{public}@ deallocated without being invoked", buf, 0x20u);
    }

    v4 = +[NSNotificationCenter defaultCenter];
    v11 = +[AMSLogConfig sharedConfig];
    [v4 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v11 userInfo:0];
  }

  else
  {
    if (!v3)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v4 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v12 = *(a1 + 32);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(*(a1 + 56));
      v16 = *(a1 + 40);
      *buf = 138543874;
      v20 = v14;
      v21 = 2114;
      v22 = v15;
      v23 = 2114;
      v24 = v16;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "[%{public}@ %{public}@]: Completion handler for %{public}@ deallocated without being invoked", buf, 0x20u);
    }
  }

  v17 = [NSString stringWithFormat:@"Completion handler for %@ deallocated without being invoked", *(a1 + 40)];
  v18 = AMSError();

  [*(a1 + 48) finishWithError:v18];
}

void sub_10008CB6C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) invalidate];
  v6 = +[AMSLogConfig sharedConfig];
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
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v11 = [v5 absoluteString];
      v12 = AMSHashIfNeeded();
      v17 = 138543874;
      v18 = v9;
      v19 = 2114;
      v20 = v10;
      v21 = 2114;
      v22 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [apple-pay-classic] Payment services call succeeded with Merchant URL: %{public}@", &v17, 0x20u);
    }

    [*(a1 + 56) finishWithResult:v5];
  }

  else
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v7 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 40);
      v15 = *(a1 + 48);
      v17 = 138543618;
      v18 = v14;
      v19 = 2114;
      v20 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] [apple-pay-classic] Payment services call failed", &v17, 0x16u);
    }

    v16 = AMSError();
    [*(a1 + 56) finishWithError:v16];
  }
}

void sub_10008CD70(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = [a3 ams_sanitizedForSecureCoding];
  (*(v3 + 16))(v3, v4, v5);
}

void sub_10008D370(void *a1, id a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = +[AMSLogConfig sharedConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      v9 = objc_opt_class();
      v10 = a1[5];
      *buf = 138543618;
      *&buf[4] = v9;
      *&buf[12] = 2114;
      *&buf[14] = v10;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [apple-pay-classic] Performing biometric/ACL check", buf, 0x16u);
    }

    v17 = 0;
    v18 = &v17;
    v19 = 0x2050000000;
    v12 = qword_1002E3458;
    v20 = qword_1002E3458;
    if (!qword_1002E3458)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10008F1D4;
      v22 = &unk_1002B0728;
      v23 = &v17;
      sub_10008F1D4(buf);
      v12 = v18[3];
    }

    v13 = v12;
    _Block_object_dispose(&v17, 8);
    a2 = [v12 canPerformPSD2StyleBuyForAccessControlRef:{*(*(a1[7] + 8) + 24), v17}];
  }

  v14 = *(*(a1[7] + 8) + 24);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = a1[6];
  v16 = [v5 ams_sanitizedForSecureCoding];
  (*(v15 + 16))(v15, a2, v16);
}

void sub_10008D914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008D950(uint64_t a1, void *a2)
{
  v35 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v44 = 0;
  v45 = &v44;
  v46 = 0x2050000000;
  v4 = qword_1002E3468;
  v47 = qword_1002E3468;
  if (!qword_1002E3468)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10008F38C;
    v49 = &unk_1002B0728;
    v50[0] = &v44;
    sub_10008F38C(buf);
    v4 = v45[3];
  }

  v5 = v4;
  _Block_object_dispose(&v44, 8);
  v6 = objc_alloc_init(v4);
  if (v6)
  {
    v7 = [NSSet setWithObject:*(a1 + 32)];
    v8 = +[AMSLogConfig sharedConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = *(a1 + 40);
      v12 = AMSHashIfNeeded();
      *buf = 138544130;
      *&buf[4] = v10;
      *&buf[12] = 2114;
      *&buf[14] = v11;
      *&buf[22] = 2050;
      v49 = 13;
      LOWORD(v50[0]) = 2114;
      *(v50 + 2) = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [apple-pay-classic] calling hasInAppPaymentPasses. capabilities = %{public}ld | issuerCountryCodes = %{public}@", buf, 0x2Au);
    }

    v13 = NSStringFromSelector("hasInAppPaymentPassesForNetworks:capabilities:issuerCountryCodes:withHandler:");
    v14 = [AMSDeallocGuard alloc];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10008DF48;
    v40[3] = &unk_1002B0298;
    v43 = *(a1 + 64);
    v40[4] = WeakRetained;
    v41 = v13;
    v15 = v35;
    v42 = v15;
    v16 = v13;
    v17 = [v14 initWithDeallocGuardBlock:v40];
    v18 = *(a1 + 48);
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10008E1CC;
    v36[3] = &unk_1002B2478;
    v37 = v17;
    v38 = WeakRetained;
    v39 = v15;
    v19 = v17;
    [v6 hasInAppPaymentPassesForNetworks:v18 capabilities:13 issuerCountryCodes:v7 withHandler:v36];
  }

  else
  {
    v20 = +[AMSUnitTests isRunningUnitTests];
    v21 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
    v22 = +[AMSLogConfig sharedConfig];
    v23 = v22;
    if (v20)
    {
      if (!v22)
      {
        v23 = +[AMSLogConfig sharedConfig];
      }

      v24 = [v23 OSLogObject];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = AMSLogKey();
        v26 = v25 == 0;
        v27 = objc_opt_class();
        v28 = v27;
        if (v25)
        {
          v26 = AMSLogKey();
          [NSString stringWithFormat:@"%@: [%@] ", v28, v26];
        }

        else
        {
          [NSString stringWithFormat:@"%@: ", v27];
        }
        v29 = ;
        *buf = 138543362;
        *&buf[4] = v29;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to load PKPassLibrary", buf, 0xCu);
        if (v25)
        {

          v29 = v26;
        }
      }

      v23 = +[NSNotificationCenter defaultCenter];
      v30 = +[AMSLogConfig sharedConfig];
      [v23 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v30 userInfo:0];
    }

    else
    {
      if (!v22)
      {
        v23 = +[AMSLogConfig sharedConfig];
      }

      v30 = [v23 OSLogObject];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        v31 = AMSLogKey();
        v32 = objc_opt_class();
        v33 = v32;
        if (v31)
        {
          v21 = AMSLogKey();
          [NSString stringWithFormat:@"%@: [%@] ", v33, v21];
        }

        else
        {
          [NSString stringWithFormat:@"%@: ", v32];
        }
        v34 = ;
        *buf = 138543362;
        *&buf[4] = v34;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_FAULT, "%{public}@Failed to load PKPassLibrary", buf, 0xCu);
        if (v31)
        {

          v34 = v21;
        }
      }
    }

    v7 = AMSError();
    [v35 finishWithError:v7];
  }
}

void sub_10008DF48(uint64_t a1)
{
  v2 = +[AMSUnitTests isRunningUnitTests];
  v3 = +[AMSLogConfig sharedConfig];
  v4 = v3;
  if (v2)
  {
    if (!v3)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(*(a1 + 56));
      v10 = *(a1 + 40);
      *buf = 138543874;
      v20 = v8;
      v21 = 2114;
      v22 = v9;
      v23 = 2114;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%{public}@ %{public}@]: Completion handler for %{public}@ deallocated without being invoked", buf, 0x20u);
    }

    v4 = +[NSNotificationCenter defaultCenter];
    v11 = +[AMSLogConfig sharedConfig];
    [v4 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v11 userInfo:0];
  }

  else
  {
    if (!v3)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v4 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v12 = *(a1 + 32);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(*(a1 + 56));
      v16 = *(a1 + 40);
      *buf = 138543874;
      v20 = v14;
      v21 = 2114;
      v22 = v15;
      v23 = 2114;
      v24 = v16;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "[%{public}@ %{public}@]: Completion handler for %{public}@ deallocated without being invoked", buf, 0x20u);
    }
  }

  v17 = [NSString stringWithFormat:@"Completion handler for %@ deallocated without being invoked", *(a1 + 40)];
  v18 = AMSError();

  [*(a1 + 48) finishWithError:v18];
}

void sub_10008E1CC(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) invalidate];
  v4 = +[AMSLogConfig sharedConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7 = AMSSetLogKeyIfNeeded();
    v8 = [NSNumber numberWithBool:a2];
    v11 = 138543874;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [apple-pay-classic] hasInAppPaymentPasses completed with value: %{public}@", &v11, 0x20u);
  }

  v9 = *(a1 + 48);
  v10 = [NSNumber numberWithBool:a2];
  [v9 finishWithResult:v10];
}

void sub_10008E448(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = +[AMSDBag defaultBag];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10008E50C;
  v6[3] = &unk_1002B24C8;
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v2 _absintheHeadersForRequest:v3 bag:v4 buyParams:v5 completion:v6];
}

void sub_10008E50C(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 ams_sanitizedForSecureCoding];
  (*(v4 + 16))(v4, v5, v6);
}

void sub_10008E674(uint64_t a1)
{
  v2 = [[AMSBiometricsSignatureTask alloc] initWithRequest:*(a1 + 32)];
  v3 = [v2 performSignatureFromService];
  v4 = [v3 promiseWithTimeout:60.0];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008E74C;
  v5[3] = &unk_1002B2518;
  v6 = *(a1 + 40);
  [v4 addFinishBlock:v5];
}

void sub_10008E74C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10008E8B8;
    v12[3] = &unk_1002B2360;
    v15 = v7;
    v13 = v5;
    v14 = v6;
    v8 = v12;
    v9 = AMSLogKey();
    v10 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10008EFC0;
    block[3] = &unk_1002B05B8;
    v17 = v9;
    v18 = v8;
    v11 = v9;
    dispatch_async(v10, block);
  }
}

void sub_10008E8B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = [*(a1 + 40) ams_sanitizedForSecureCoding];
  (*(v2 + 16))(v2, v1, v3);
}

void sub_10008EAF8(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[4];
      v10 = objc_opt_class();
      v11 = a1[5];
      v28 = 138543874;
      v29 = v10;
      v30 = 2114;
      v31 = v11;
      v32 = 2114;
      v33 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Silent-enrollment payment session failed with error: %{public}@", &v28, 0x20u);
    }

    v12 = v6;
    v13 = 0;
  }

  else
  {
    v14 = [v5 object];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v16 = +[AMSLogConfig sharedConfig];
    v17 = v16;
    if (isKindOfClass)
    {
      if (!v16)
      {
        v17 = +[AMSLogConfig sharedConfig];
      }

      v18 = [v17 OSLogObject];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = a1[4];
        v20 = objc_opt_class();
        v21 = a1[5];
        v28 = 138543618;
        v29 = v20;
        v30 = 2114;
        v31 = v21;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Silent-enrollment payment session completed successfully", &v28, 0x16u);
      }

      v13 = v14;
      v12 = 0;
    }

    else
    {
      if (!v16)
      {
        v17 = +[AMSLogConfig sharedConfig];
      }

      v22 = [v17 OSLogObject];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = a1[4];
        v24 = objc_opt_class();
        v25 = a1[5];
        v28 = 138543618;
        v29 = v24;
        v30 = 2114;
        v31 = v25;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Silent-enrollment payment session failed to deserialize JSON response", &v28, 0x16u);
      }

      v12 = AMSError();
      v13 = 0;
    }
  }

  v26 = a1[6];
  if (v26)
  {
    v27 = [v12 ams_sanitizedForSecureCoding];
    (*(v26 + 16))(v26, v13, v27);
  }
}

uint64_t sub_10008EFC0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = AMSSetLogKey();
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

void sub_10008F00C(uint64_t a1)
{
  sub_10008F064();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PKInAppPaymentService");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1002E3448 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_10021B364();
    sub_10008F064();
  }
}

void sub_10008F064()
{
  v1[0] = 0;
  if (!qword_1002E3450)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_10008F160;
    v1[4] = &unk_1002B0760;
    v1[5] = v1;
    v2 = off_1002B2560;
    v3 = 0;
    qword_1002E3450 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_1002E3450)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_10008F160(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1002E3450 = result;
  return result;
}

Class sub_10008F1D4(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1002E3460)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10008F318;
    v4[4] = &unk_1002B0760;
    v4[5] = v4;
    v5 = off_1002B2578;
    v6 = 0;
    qword_1002E3460 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1002E3460)
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
  result = objc_getClass("PKAuthenticator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10021B4E0();
  }

  qword_1002E3458 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10008F318(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1002E3460 = result;
  return result;
}

AMSDServiceConnection *sub_10008F38C(uint64_t a1)
{
  sub_10008F064();
  result = objc_getClass("PKPassLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1002E3468 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_10021B508();
    return [(AMSDServiceConnection *)v3 initWithConnection:v4, v5];
  }

  return result;
}

void sub_10008FFB4(id a1)
{
  qword_1002E3478 = objc_alloc_init(NSMutableDictionary);

  _objc_release_x1();
}

void sub_10008FFF0(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.amsaccountsd.AMSDTransactionStore.transactions", v3);
  v2 = qword_1002E3488;
  qword_1002E3488 = v1;
}

void sub_100090054(id a1)
{
  qword_1002E3498 = objc_alloc_init(NSCountedSet);

  _objc_release_x1();
}

void sub_10009023C(uint64_t a1)
{
  v2 = [*(a1 + 40) transactionsCount];
  [v2 removeObject:*(a1 + 32)];
}

void sub_100090290(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 32);
  v4 = AMSSetLogKey();
  v5 = [WeakRetained transactionsCount];
  v6 = [v5 countForObject:*(a1 + 40)];

  if (!v6)
  {
    v7 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v11 = *(a1 + 40);
      v13 = 138543874;
      v14 = v9;
      v15 = 2114;
      v16 = v10;
      v17 = 2114;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Releasing a keep alive transaction. transactionID = %{public}@", &v13, 0x20u);
    }

    v12 = [WeakRetained transactions];
    [v12 setObject:0 forKeyedSubscript:*(a1 + 40)];
  }
}

void sub_1000904C0(uint64_t a1)
{
  if (byte_1002E34A0 == 1)
  {
    v2 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v2)
    {
      v2 = +[AMSLogConfig sharedConfig];
    }

    v3 = [v2 OSLogObject];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = objc_opt_class();
      v6 = AMSLogKey();
      v7 = *(a1 + 32);
      v17 = 138543874;
      v18 = v5;
      v19 = 2114;
      v20 = v6;
      v21 = 2114;
      v22 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Not taking a transaction or doing work because we are shutting down (transactionID: %{public}@)", &v17, 0x20u);
    }
  }

  else
  {
    v8 = [*(a1 + 40) transactionsCount];
    [v8 addObject:*(a1 + 32)];

    v9 = [*(a1 + 40) transactionsCount];
    v10 = [v9 countForObject:*(a1 + 32)];

    if (v10 != 1)
    {
      return;
    }

    v11 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 40);
      v14 = objc_opt_class();
      v15 = AMSLogKey();
      v16 = *(a1 + 32);
      v17 = 138543874;
      v18 = v14;
      v19 = 2114;
      v20 = v15;
      v21 = 2114;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Taking a keep alive transaction. transactionID = %{public}@", &v17, 0x20u);
    }

    [*(a1 + 32) UTF8String];
    v2 = os_transaction_create();
    v3 = [*(a1 + 40) transactions];
    [v3 setObject:v2 forKeyedSubscript:*(a1 + 32)];
  }
}

void sub_1000908D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = *(a1 + 32);
  v3 = AMSSetLogKey();
  v4 = objc_autoreleasePoolPush();
  (*(*(a1 + 48) + 16))();
  objc_autoreleasePoolPop(v4);
  [WeakRetained releaseKeepAliveTransaction:*(a1 + 40)];
}

void sub_100090AB0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = AMSSetLogKey();
  v4 = objc_autoreleasePoolPush();
  (*(*(a1 + 56) + 16))();
  objc_autoreleasePoolPop(v4);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100090B98;
  v8[3] = &unk_1002B2648;
  v5 = *(a1 + 40);
  v9 = *(a1 + 32);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v11 = v6;
  v12 = v7;
  v10 = *(a1 + 48);
  dispatch_async(v5, v8);
}

id sub_100090B98(void *a1)
{
  v2 = a1[4];
  v3 = AMSSetLogKey();
  v4 = objc_autoreleasePoolPush();
  (*(a1[6] + 16))();
  objc_autoreleasePoolPop(v4);
  v5 = a1[7];
  v6 = a1[5];

  return [v5 releaseKeepAliveTransaction:v6];
}

void sub_100090D00(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = AMSSetLogKey();
  v4 = objc_autoreleasePoolPush();
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v4);
}

uint64_t sub_100090EF0(uint64_t a1, void *a2)
{
  v2 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = objc_opt_class();
    v6 = v5;
    v7 = AMSLogKey();
    *buf = 138543618;
    v59 = v5;
    v60 = 2114;
    v61 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Starting update device language task", buf, 0x16u);
  }

  v67 = AMSAccountMediaTypeProduction;
  [NSArray arrayWithObjects:&v67 count:1];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v8 = v57 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v54 objects:v66 count:16];
  if (!v9)
  {

    v12 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
    goto LABEL_34;
  }

  v10 = v9;
  v11 = 0;
  v50 = *v55;
  v12 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
  obj = v8;
  do
  {
    v13 = 0;
    do
    {
      if (*v55 != v50)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v54 + 1) + 8 * v13);
      v15 = [v12[95] sharedAccountsDaemonConfig];
      if (!v15)
      {
        v15 = [v12[95] sharedConfig];
      }

      v16 = [v15 OSLogObject];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 32);
        v18 = objc_opt_class();
        v19 = v18;
        v20 = AMSLogKey();
        *buf = 138543874;
        v59 = v18;
        v60 = 2114;
        v61 = v20;
        v62 = 2114;
        v63 = v14;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Updating language code. mediaType = %{public}@", buf, 0x20u);
      }

      v21 = [ACAccountStore ams_sharedAccountStoreForMediaType:v14];
      v22 = [v21 ams_activeiTunesAccount];
      if (v22)
      {
        v23 = v22;
LABEL_18:
        v26 = [*(a1 + 32) _updateLanguageForAccount:v23 mediaType:v14];
        v52 = v11;
        [v26 resultWithError:&v52];
        v27 = v52;

        v11 = v27;
        v12 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
        goto LABEL_19;
      }

      v24 = [v21 ams_fetchLocaliTunesAccount];
      v53 = v11;
      v23 = [v24 resultWithError:&v53];
      v25 = v53;

      if (v23)
      {
        v11 = v25;
        goto LABEL_18;
      }

      v23 = [v12[95] sharedAccountsDaemonConfig];
      if (!v23)
      {
        v23 = [v12[95] sharedConfig];
      }

      v26 = [v23 OSLogObject];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v28 = *(a1 + 32);
        v29 = objc_opt_class();
        v30 = AMSLogKey();
        v31 = AMSLogableError();
        *buf = 138544130;
        v59 = v29;
        v60 = 2114;
        v61 = v30;
        v62 = 2114;
        v63 = v14;
        v64 = 2114;
        v65 = v31;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch either the active or local accounts. mediaType = %{public}@ | error = %{public}@", buf, 0x2Au);

        v12 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
      }

      v11 = v25;
LABEL_19:

      v13 = v13 + 1;
    }

    while (v10 != v13);
    v8 = obj;
    v32 = [obj countByEnumeratingWithState:&v54 objects:v66 count:16];
    v10 = v32;
  }

  while (v32);

  if (v11)
  {
    v33 = [v12[95] sharedAccountsDaemonConfig];
    if (!v33)
    {
      v33 = [v12[95] sharedConfig];
    }

    v34 = [v33 OSLogObject];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = *(a1 + 32);
      v36 = objc_opt_class();
      v37 = v36;
      v38 = AMSLogKey();
      v39 = AMSLogableError();
      *buf = 138543874;
      v59 = v36;
      v60 = 2114;
      v61 = v38;
      v62 = 2114;
      v63 = v39;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to send the network request in response to the device's language code changing. Error = %{public}@", buf, 0x20u);

      v8 = obj;
    }

    v40 = 0;
    goto LABEL_39;
  }

LABEL_34:
  v33 = [v12[95] sharedAccountsDaemonConfig];
  if (!v33)
  {
    v33 = [v12[95] sharedConfig];
  }

  v34 = [v33 OSLogObject];
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v41 = *(a1 + 32);
    v42 = objc_opt_class();
    v43 = v42;
    AMSLogKey();
    v45 = v44 = v8;
    *buf = 138543618;
    v59 = v42;
    v60 = 2114;
    v61 = v45;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully sent network request in response to the device's language code changing", buf, 0x16u);

    v8 = v44;
  }

  v11 = 0;
  v40 = 1;
LABEL_39:

  if (a2)
  {
    v46 = v11;
    *a2 = v11;
  }

  return v40;
}

id sub_1000916CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) ams_storefrontForMediaType:*(a1 + 40)];
  v5 = [v4 length];

  if (v5)
  {
    v6 = +[AMSURLSession defaultSession];
    v7 = [v6 dataTaskPromiseWithRequest:v3];
  }

  else
  {
    v6 = [NSString stringWithFormat:@"The device is missing a storefront for the specified media type. mediaType = %@", *(a1 + 40)];
    v8 = AMSError();
    v7 = [AMSPromise promiseWithError:v8];
  }

  return v7;
}

AMSBinaryPromise *__cdecl sub_1000917CC(id a1, NSError *a2)
{
  v2 = AMSError();
  v3 = [AMSBinaryPromise promiseWithError:v2];

  return v3;
}

void sub_100091880(id a1)
{
  qword_1002E34B0 = objc_alloc_init(AMSDAutoBugCaptureService);

  _objc_release_x1();
}

id sub_100091BD0(uint64_t a1)
{
  v2 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v40 = objc_opt_class();
    v41 = AMSLogKey();
    v5 = [*(a1 + 32) account];
    v6 = AMSHashIfNeeded();
    v7 = [*(a1 + 32) home];
    v8 = AMSHashIfNeeded();
    v9 = [*(a1 + 32) home];
    v10 = [v9 currentUser];
    v11 = AMSHashIfNeeded();
    *buf = 138544386;
    *&buf[4] = v40;
    *&buf[12] = 2114;
    *&buf[14] = v41;
    *&buf[22] = 2114;
    v52 = v6;
    *v53 = 2114;
    *&v53[2] = v8;
    *&v53[10] = 2114;
    *&v53[12] = v11;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Updating a home's multi-user token. account = %{public}@ | home = %{public}@ | home.currentUser = %{public}@", buf, 0x34u);
  }

  v12 = [*(a1 + 32) metrics];
  v13 = v12 == 0;

  if (v13)
  {
    v14 = objc_alloc_init(AMSDMultiUserMetrics);
    [*(a1 + 32) setMetrics:v14];
  }

  v15 = [*(a1 + 32) metrics];
  [v15 homeKitRepairRequestUpdateTokenBegin];

  v16 = [*(a1 + 32) home];
  v17 = [v16 isCurrentUserRestrictedGuest];

  if (v17)
  {
    v18 = AMSError();
    v19 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v19)
    {
      v19 = +[AMSLogConfig sharedConfig];
    }

    v20 = [v19 OSLogObject];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 32);
      v22 = objc_opt_class();
      v23 = AMSLogKey();
      *buf = 138543874;
      *&buf[4] = v22;
      *&buf[12] = 2114;
      *&buf[14] = v23;
      *&buf[22] = 2114;
      v52 = v18;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Restricted Guest Error: %{public}@", buf, 0x20u);
    }

    v24 = [AMSPromise promiseWithError:v18];
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v52 = sub_100092258;
    *v53 = sub_100092268;
    *&v53[8] = 0;
    v25 = [*(a1 + 32) controller];
    v26 = [v25 cloudContainer];
    v27 = [v26 privateDatabase];

    v28 = [AMSDFetchMultiUserRecordZoneTask alloc];
    v29 = [*(a1 + 32) home];
    v30 = [*(a1 + 32) home];
    v31 = [v30 currentUser];
    v32 = [*(a1 + 32) metrics];
    v33 = [(AMSDFetchMultiUserRecordZoneTask *)v28 initWithHome:v29 homeUser:v31 database:v27 metrics:v32];

    v34 = [*(a1 + 32) account];
    [(AMSDFetchMultiUserRecordZoneTask *)v33 setCreateIfMissing:v34 != 0];

    v35 = [(AMSDFetchMultiUserRecordZoneTask *)v33 performTask];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100092270;
    v50[3] = &unk_1002AFDD8;
    v50[4] = *(a1 + 32);
    [v35 addErrorBlock:v50];
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_1000923A4;
    v47[3] = &unk_1002B2718;
    v47[4] = *(a1 + 32);
    v49 = buf;
    v36 = v27;
    v48 = v36;
    v37 = [v35 continueWithBlock:v47];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100092934;
    v44[3] = &unk_1002B2830;
    v44[4] = *(a1 + 32);
    v38 = v36;
    v45 = v38;
    v46 = buf;
    v24 = [v37 thenWithBlock:v44];

    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100093724;
    v43[3] = &unk_1002B2858;
    v43[4] = *(a1 + 32);
    [v24 addSuccessBlock:v43];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_100093880;
    v42[3] = &unk_1002AFDD8;
    v42[4] = *(a1 + 32);
    [v24 addErrorBlock:v42];

    _Block_object_dispose(buf, 8);
  }

  return v24;
}

uint64_t sub_100092258(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100092270(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMSLogConfig sharedAccountsMultiUserConfig];
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
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch the record zone. error = %{public}@", &v10, 0x20u);
  }
}

id sub_1000923A4(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if ([v7 code] == 7 && (objc_msgSend(*(a1 + 32), "account"), v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v9 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 32);
      v20 = objc_opt_class();
      v21 = AMSLogKey();
      v22 = AMSHashIfNeeded();
      *buf = 138543874;
      v26 = v20;
      v27 = 2114;
      v28 = v21;
      v29 = 2114;
      v30 = v22;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Home participant record zone not found and an account was not provided. error = %{public}@", buf, 0x20u);
    }
  }

  else
  {
    if (!v7)
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
      v15 = *(a1 + 40);
      v16 = [*(*(*(a1 + 48) + 8) + 40) identifier];
      v17 = [v15 fetchRecordWithName:@"AMSHomeParticipant" zoneIdentifier:v16];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1000926FC;
      v24[3] = &unk_1002B1620;
      v24[4] = *(a1 + 32);
      v18 = [v17 continueWithBlock:v24];

      goto LABEL_15;
    }

    v9 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = objc_opt_class();
      v13 = AMSLogKey();
      v14 = AMSHashIfNeeded();
      *buf = 138543874;
      v26 = v12;
      v27 = 2114;
      v28 = v13;
      v29 = 2114;
      v30 = v14;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch the home participant record zone. error = %{public}@", buf, 0x20u);
    }
  }

  v16 = AMSError();
  v18 = [AMSPromise promiseWithError:v16];
LABEL_15:

  return v18;
}

id sub_1000926FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [*(a1 + 32) metrics];
    v9 = [v8 enqueueCloudKitFetchSuccessEvent];

    v10 = [AMSOptional optionalWithValue:v5];
LABEL_7:
    v13 = v10;
    v14 = [AMSPromise promiseWithResult:v10];

    goto LABEL_8;
  }

  if ([v6 ams_hasDomain:@"AMSDCloudDataErrorDomain" code:7])
  {
    if (v7)
    {
      v11 = [*(a1 + 32) metrics];
      v12 = [v11 enqueueCloudKitFetchFailedEventWithError:v7];
    }

    v10 = +[AMSOptional optionalWithNil];
    goto LABEL_7;
  }

  v16 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v16)
  {
    v16 = +[AMSLogConfig sharedConfig];
  }

  v17 = [v16 OSLogObject];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = *(a1 + 32);
    v19 = objc_opt_class();
    v20 = AMSLogKey();
    v21 = AMSHashIfNeeded();
    v22 = 138543874;
    v23 = v19;
    v24 = 2114;
    v25 = v20;
    v26 = 2114;
    v27 = v21;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch the home participant record. error = %{public}@", &v22, 0x20u);
  }

  v14 = [AMSPromise promiseWithError:v7];
LABEL_8:

  return v14;
}

id sub_100092934(uint64_t a1, void *a2)
{
  v3 = [a2 value];
  v4 = [*(a1 + 32) account];
  if (v4)
  {
    v5 = v4;
LABEL_3:
    v6 = [AMSDGenerateMultiUserTokenTask alloc];
    v7 = [*(a1 + 32) controller];
    v8 = [*(a1 + 32) home];
    v9 = [(AMSDGenerateMultiUserTokenTask *)v6 initWithController:v7 account:v5 home:v8];

    v10 = [v3 fieldForKey:@"AMSHomeParticipant_MultiUserToken"];
    [(AMSDGenerateMultiUserTokenTask *)v9 setTokenNeedsRegeneration:v10 != 0];

    v11 = [(AMSDGenerateMultiUserTokenTask *)v9 performTask];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100092C40;
    v25[3] = &unk_1002B2808;
    v26 = v3;
    v27 = v5;
    v12 = *(a1 + 40);
    v28 = *(a1 + 32);
    v13 = v12;
    v14 = *(a1 + 48);
    v29 = v13;
    v30 = v14;
    v15 = v5;
    v16 = [v11 continueWithBlock:v25];

    goto LABEL_11;
  }

  if (v3)
  {
    v17 = +[ACAccountStore ams_sharedAccountStore];
    v5 = [v17 amsd_iTunesAccountForHomeParticipant:v3 createEphemeral:1];

    if (v5)
    {
      goto LABEL_3;
    }
  }

  v18 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v18)
  {
    v18 = +[AMSLogConfig sharedConfig];
  }

  v19 = [v18 OSLogObject];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = *(a1 + 32);
    v21 = objc_opt_class();
    v22 = AMSLogKey();
    v23 = AMSHashIfNeeded();
    *buf = 138543874;
    v32 = v21;
    v33 = 2114;
    v34 = v22;
    v35 = 2114;
    v36 = v23;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] The caller didn't provide an account, and the home participant record isn't associated with one. homeParticipant = %{public}@", buf, 0x20u);
  }

  v15 = AMSError();
  v16 = [AMSPromise promiseWithError:v15];
LABEL_11:

  return v16;
}

id sub_100092C40(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    v8 = [AMSPromise promiseWithResult:v6];
    goto LABEL_17;
  }

  if (*(a1 + 32))
  {
    v9 = +[ACAccountStore ams_sharedAccountStore];
    v10 = [v9 amsd_iTunesAccountForHomeParticipant:*(a1 + 32) createEphemeral:1];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v10 ams_altDSID];
  v12 = [v10 ams_DSID];
  v13 = v12;
  if (v11)
  {
    v3 = [*(a1 + 40) ams_altDSID];
    if ([v3 isEqualToString:v11])
    {
      v14 = 1;
LABEL_15:

      goto LABEL_16;
    }

    if (!v13)
    {
      v14 = 0;
      goto LABEL_15;
    }
  }

  else if (!v12)
  {
    v14 = 0;
    goto LABEL_16;
  }

  v15 = [*(a1 + 40) ams_DSID];
  v14 = [v15 isEqualToNumber:v13];

  if (v11)
  {
    goto LABEL_15;
  }

LABEL_16:

  v16 = [AMSPromise promiseWithError:v7];
  v8 = v16;
  if (!v14)
  {
    v32 = v16;
    v33 = v32;
    goto LABEL_25;
  }

LABEL_17:
  v17 = v6 == 0;
  v18 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v18)
  {
    v18 = +[AMSLogConfig sharedConfig];
  }

  v19 = [v18 OSLogObject];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v6 == 0;
    v21 = v6;
    v22 = v8;
    v23 = v7;
    v24 = v20;
    v25 = *(a1 + 48);
    v26 = objc_opt_class();
    v27 = AMSLogKey();
    *buf = 138544130;
    v43 = v26;
    v44 = 2114;
    v45 = v27;
    v46 = 1024;
    v47 = v24;
    v48 = 1024;
    v49 = v24;
    v7 = v23;
    v8 = v22;
    v6 = v21;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Setting repair flags. multiUserTokenInvalid = %d | currentUserNeedsTokenRepair = %d", buf, 0x22u);
  }

  v28 = *(a1 + 56);
  v29 = [*(*(*(a1 + 64) + 8) + 40) identifier];
  v30 = [v28 fetchRecordWithName:@"AMSHomeParticipant" zoneIdentifier:v29];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100093034;
  v38[3] = &unk_1002B2790;
  v38[4] = *(a1 + 48);
  v39 = v7;
  v41 = v17;
  v40 = *(a1 + 56);
  v31 = [v30 continueWithBlock:v38];

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10009347C;
  v35[3] = &unk_1002B27E0;
  v35[4] = *(a1 + 48);
  v37 = v17;
  v32 = v8;
  v36 = v32;
  v33 = [v31 continueWithBlock:v35];

LABEL_25:

  return v33;
}

id sub_100093034(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [NSNumber numberWithBool:*(a1 + 56)];
    [v3 setField:v4 forKey:@"AMSHomeParticipant_MultiUserTokenInvalid"];

    v5 = [*(a1 + 32) metrics];
    v6 = [v5 enqueueCloudKitSaveRecordEvent];

    v7 = [*(a1 + 48) saveRecord:v3];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000932C0;
    v17[3] = &unk_1002B2740;
    v17[4] = *(a1 + 32);
    v18 = *(a1 + 56);
    [v7 addErrorBlock:v17];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100093430;
    v16[3] = &unk_1002B2768;
    v16[4] = *(a1 + 32);
    [v7 addSuccessBlock:v16];
  }

  else
  {
    v8 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = objc_opt_class();
      v12 = AMSLogKey();
      v13 = *(a1 + 40);
      v14 = AMSHashIfNeeded();
      *buf = 138543874;
      v20 = v11;
      v21 = 2114;
      v22 = v12;
      v23 = 2114;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to set a repair flag. Failed to fetch the home participant. error = %{public}@", buf, 0x20u);
    }

    v7 = [AMSPromise promiseWithError:*(a1 + 40)];
  }

  return v7;
}

void sub_1000932C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMSLogConfig sharedAccountsMultiUserConfig];
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
    v9 = *(a1 + 40);
    v10 = AMSHashIfNeeded();
    v13 = 138544130;
    v14 = v7;
    v15 = 2114;
    v16 = v8;
    v17 = 1024;
    v18 = v9;
    v19 = 2114;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to set the multi-user token's invalid status. status = %d | error = %{public}@", &v13, 0x26u);
  }

  v11 = [*(a1 + 32) metrics];
  v12 = [v11 enqueueCloudKitSaveRecordFailedEventWithError:v3];
}

void sub_100093430(uint64_t a1)
{
  v2 = [*(a1 + 32) metrics];
  v1 = [v2 enqueueCloudKitSaveRecordSucceededEvent];
}

id sub_10009347C(uint64_t a1)
{
  v2 = [*(a1 + 32) home];
  v3 = [v2 setCurrentUserNeedsTokenRepair:*(a1 + 48)];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000935C8;
  v9[3] = &unk_1002B27B8;
  v9[4] = *(a1 + 32);
  v10 = *(a1 + 48);
  [v3 addFinishBlock:v9];
  v4 = [v3 promiseAdapter];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009371C;
  v7[3] = &unk_1002B1228;
  v8 = *(a1 + 40);
  v5 = [v4 continueWithBlock:v7];

  return v5;
}

void sub_1000935C8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v11 = *(a1 + 40);
      v12 = AMSHashIfNeeded();
      v13 = 138544130;
      v14 = v9;
      v15 = 2114;
      v16 = v10;
      v17 = 1024;
      v18 = v11;
      v19 = 2114;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to set the home's token repair status. status = %d | error = %{public}@", &v13, 0x26u);
    }
  }
}

void sub_100093724(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    v9 = AMSHashIfNeeded();
    v12 = 138543874;
    v13 = v7;
    v14 = 2114;
    v15 = v8;
    v16 = 2114;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully updated the home's multi-user token. token = %{public}@", &v12, 0x20u);
  }

  v10 = [*(a1 + 32) metrics];
  v11 = [v10 enqueueHomeKitRepairRequestCompletedSuccessEvent];
}

void sub_100093880(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMSLogConfig sharedAccountsMultiUserConfig];
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
    v12 = 138543874;
    v13 = v7;
    v14 = 2114;
    v15 = v8;
    v16 = 2114;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to update the home's multi-user token. error = %{public}@", &v12, 0x20u);
  }

  v10 = [*(a1 + 32) metrics];
  v11 = [v10 enqueueHomeKitRepairRequestCompletedFailedEventWithError:v3];
}

void sub_100093E78(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) activityIdentifier];
  v5 = [NSString stringWithFormat:@"com.apple.amsaccountsd.registerActivity.%@", v4];
  [v5 UTF8String];

  v6 = os_transaction_create();
  state = xpc_activity_get_state(v3);
  v8 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 40);
    v11 = objc_opt_class();
    v12 = AMSLogKey();
    v13 = [*(a1 + 32) activityIdentifier];
    *buf = 138544130;
    v38 = v11;
    v39 = 2114;
    v40 = v12;
    v41 = 2114;
    v42 = v13;
    v43 = 2048;
    v44 = state;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fetched state for %{public}@: %li", buf, 0x2Au);
  }

  if (state == 2)
  {
    v22 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v22)
    {
      v22 = +[AMSLogConfig sharedConfig];
    }

    v23 = [v22 OSLogObject];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(a1 + 40);
      v25 = objc_opt_class();
      v26 = AMSLogKey();
      v27 = [*(a1 + 32) activityIdentifier];
      *buf = 138543874;
      v38 = v25;
      v39 = 2114;
      v40 = v26;
      v41 = 2114;
      v42 = v27;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running activity %{public}@", buf, 0x20u);
    }

    [*(a1 + 32) runActivityQueuedByScheduler:*(a1 + 40)];
  }

  else
  {
    if (state)
    {
      v14 = +[AMSLogConfig sharedAccountsDaemonConfig];
      if (!v14)
      {
        v14 = +[AMSLogConfig sharedConfig];
      }

      v16 = [v14 OSLogObject];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(a1 + 40);
        v29 = objc_opt_class();
        v30 = AMSLogKey();
        v31 = [*(a1 + 32) activityIdentifier];
        *buf = 138543874;
        v38 = v29;
        v39 = 2114;
        v40 = v30;
        v41 = 2114;
        v42 = v31;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Unknown state for %{public}@", buf, 0x20u);
      }
    }

    else
    {
      v14 = xpc_activity_copy_criteria(v3);
      v15 = +[AMSLogConfig sharedAccountsDaemonConfig];
      v16 = v15;
      if (v14)
      {
        if (!v15)
        {
          v16 = +[AMSLogConfig sharedConfig];
        }

        v17 = [v16 OSLogObject];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *(a1 + 40);
          v19 = objc_opt_class();
          v20 = AMSLogKey();
          v21 = [*(a1 + 32) activityIdentifier];
          *buf = 138544130;
          v38 = v19;
          v39 = 2114;
          v40 = v20;
          v41 = 2114;
          v42 = v21;
          v43 = 2114;
          v44 = v14;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] checkin found criteria for %{public}@: %{public}@", buf, 0x2Au);
        }
      }

      else
      {
        if (!v15)
        {
          v16 = +[AMSLogConfig sharedConfig];
        }

        v32 = [v16 OSLogObject];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = *(a1 + 40);
          v34 = objc_opt_class();
          v35 = AMSLogKey();
          v36 = [*(a1 + 32) activityIdentifier];
          *buf = 138543874;
          v38 = v34;
          v39 = 2114;
          v40 = v35;
          v41 = 2114;
          v42 = v36;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Setting criteria for %{public}@", buf, 0x20u);
        }

        v16 = [*(a1 + 32) criteria];
        xpc_activity_set_criteria(v3, v16);
      }
    }
  }
}

uint64_t sub_1000945F8(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = &OBJC_IVAR___AMSXDProtoMessage__messageData;
LABEL_21:
        v15 = *v14;
        v16 = *(a1 + v15);
        *(a1 + v15) = v13;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = PBReaderReadString();
    v14 = &OBJC_IVAR___AMSXDProtoMessage__logKey;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

void sub_100094CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);

    [v4 finishWithError:?];
  }

  else
  {
    if ((a2 - 1) > 3)
    {
      v5 = 0;
    }

    else
    {
      v5 = qword_10022E3A0[a2 - 1];
    }

    v6 = *(a1 + 32);
    v7 = [NSNumber numberWithUnsignedInteger:v5];
    [v6 finishWithResult:v7];
  }
}

id sub_100094EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    return [v4 finishWithResult:?];
  }

  else
  {
    return [v4 finishWithError:a4];
  }
}

id sub_1000950D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    return [v4 finishWithResult:?];
  }

  else
  {
    return [v4 finishWithError:a4];
  }
}

void sub_1000954FC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v10 = a3;
  v6 = a4;
  v7 = [v10 count];
  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = [v10 firstObject];
    [v8 finishWithResult:v9];
LABEL_3:

    goto LABEL_6;
  }

  if (!v6)
  {
    v9 = AMSError();
    [v8 finishWithError:v9];
    goto LABEL_3;
  }

  [v8 finishWithError:v6];
LABEL_6:
}

AMSPromise *__cdecl sub_1000955D0(id a1, NSError *a2)
{
  v2 = sub_100048564(a2);
  v3 = [AMSPromise promiseWithError:v2];

  return v3;
}

void sub_100095784(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v10 = a3;
  v6 = a4;
  v7 = [v10 count];
  v8 = *(a1 + 32);
  if (v7)
  {
    [v8 finishWithResult:v10];
  }

  else if (v6)
  {
    [v8 finishWithError:v6];
  }

  else
  {
    v9 = AMSError();
    [v8 finishWithError:v9];
  }
}

AMSPromise *__cdecl sub_100095848(id a1, NSError *a2)
{
  v2 = sub_100048564(a2);
  v3 = [AMSPromise promiseWithError:v2];

  return v3;
}

id sub_100095980(id a1, AMSDCloudDataRecordZoneIdentifier *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_1000959F0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = objc_opt_class();
  v6 = [*(a1 + 32) scope];
  v7 = [v4 zoneName];

  v8 = [v5 _fetchChangeTokenWithDatabaseScope:v6 recordZoneName:v7];

  return v8;
}

id sub_100095B78(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 amsd_isCKChangeTokenExpiredError])
  {
    [*(a1 + 32) persistChangedRecordZonesChangeToken:0];
    [*(a1 + 32) _fetchChangedRecordZonesWithServerChangeToken:0];
  }

  else
  {
    [AMSPromise promiseWithError:v3];
  }
  v4 = ;

  return v4;
}

AMSPromise *__cdecl sub_100095BF8(id a1, NSError *a2)
{
  v2 = sub_100048564(a2);
  v3 = [AMSPromise promiseWithError:v2];

  return v3;
}

void sub_100096028(uint64_t a1, void *a2, void *a3)
{
  v14 = a3;
  v5 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  if (v5)
  {
    [*(a1 + 40) finishWithResult:v5];
  }

  else
  {
    v6 = v14;
    if ([v6 amsd_isCKPartialFailureError])
    {
      v7 = [v6 userInfo];
      v8 = [v7 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = [v9 objectForKeyedSubscript:*(a1 + 32)];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v6 = v11;
    }

    v12 = *(a1 + 40);
    if (v6)
    {
      [v12 finishWithError:v6];
    }

    else
    {
      v13 = AMSError();
      [v12 finishWithError:v13];
    }
  }
}

AMSPromise *__cdecl sub_1000961BC(id a1, NSError *a2)
{
  v2 = sub_100048564(a2);
  v3 = [AMSPromise promiseWithError:v2];

  return v3;
}

void sub_1000964A8(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = sub_100048564(a3);
  v6 = v5;
  if (v5 && ![v5 ams_hasDomain:@"AMSDCloudDataErrorDomain" code:4])
  {
    [*(a1 + 32) finishWithError:v6];
  }

  else
  {
    v7 = [v6 userInfo];
    v8 = [v7 objectForKeyedSubscript:@"AMSDCloudDataPartialFailureErrorsKey"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = [AMSDCloudDataFetchResult alloc];
    if (v13)
    {
      v11 = v13;
    }

    else
    {
      v11 = &__NSDictionary0__struct;
    }

    v12 = [(AMSDCloudDataFetchResult *)v10 initWithResults:v11 failures:v9];
    [*(a1 + 32) finishWithResult:v12];
  }
}

void sub_1000965D8(uint64_t a1, void *a2)
{
  v3 = [a2 failures];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100096668;
  v4[3] = &unk_1002B2AC8;
  v4[4] = *(a1 + 32);
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

void sub_100097074(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v10 = a2;
  v6 = a4;
  v7 = [v10 count];
  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = [v10 firstObject];
    [v8 finishWithResult:v9];
LABEL_3:

    goto LABEL_6;
  }

  if (!v6)
  {
    v9 = AMSError();
    [v8 finishWithError:v9];
    goto LABEL_3;
  }

  [v8 finishWithError:v6];
LABEL_6:
}

AMSPromise *__cdecl sub_100097148(id a1, NSError *a2)
{
  v2 = sub_100048564(a2);
  v3 = [AMSPromise promiseWithError:v2];

  return v3;
}

void sub_100097358(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v10 = a2;
  v6 = a4;
  v7 = [v10 count];
  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = [v10 firstObject];
    [v8 finishWithResult:v9];
LABEL_3:

    goto LABEL_6;
  }

  if (!v6)
  {
    v9 = AMSError();
    [v8 finishWithError:v9];
    goto LABEL_3;
  }

  [v8 finishWithError:v6];
LABEL_6:
}

AMSPromise *__cdecl sub_10009742C(id a1, NSError *a2)
{
  v2 = sub_100048564(a2);
  v3 = [AMSPromise promiseWithError:v2];

  return v3;
}

void sub_100097804(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v10 = a2;
  v6 = a4;
  v7 = [v10 count];
  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = [v10 firstObject];
    [v8 finishWithResult:v9];
LABEL_3:

    goto LABEL_6;
  }

  if (!v6)
  {
    v9 = AMSError();
    [v8 finishWithError:v9];
    goto LABEL_3;
  }

  [v8 finishWithError:v6];
LABEL_6:
}

id sub_1000978D8(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = +[AMSLogConfig sharedAccountsDaemonConfig];
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
      v9 = a1[4];
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      *buf = 138543618;
      v46 = v10;
      v47 = 2114;
      v48 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully setup the database subscription.", buf, 0x16u);
    }

    v12 = [NSNumber numberWithUnsignedInteger:a1[6] + 1];
    v13 = [AMSPromise promiseWithResult:v12];
  }

  else
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v7 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = a1[4];
      v16 = objc_opt_class();
      v17 = AMSLogKey();
      v18 = AMSLogableError();
      *buf = 138543874;
      v46 = v16;
      v47 = 2114;
      v48 = v17;
      v49 = 2114;
      v50 = *&v18;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to setup the database subscription. error = %{public}@", buf, 0x20u);
    }

    v19 = a1[6];
    if (v19 > 9)
    {
      v34 = +[AMSLogConfig sharedAccountsDaemonConfig];
      if (!v34)
      {
        v34 = +[AMSLogConfig sharedConfig];
      }

      v35 = [v34 OSLogObject];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = a1[4];
        v37 = objc_opt_class();
        v38 = AMSLogKey();
        *buf = 138543618;
        v46 = v37;
        v47 = 2114;
        v48 = v38;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Attempted to setup the database subscription too many times. Refusing to try again.", buf, 0x16u);
      }

      v13 = [AMSPromise promiseWithError:v5];
    }

    else
    {
      v20 = v19 + 1;
      v21 = exp2((v19 + 1));
      v22 = +[AMSLogConfig sharedAccountsDaemonConfig];
      if (!v22)
      {
        v22 = +[AMSLogConfig sharedConfig];
      }

      v23 = [v22 OSLogObject];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = a1[4];
        v25 = objc_opt_class();
        v26 = AMSLogKey();
        *buf = 138543874;
        v46 = v25;
        v47 = 2114;
        v48 = v26;
        v49 = 2048;
        v50 = v21;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Scheduling another attempt to setup the database subscription. timeInterval = %f", buf, 0x20u);
      }

      v27 = objc_alloc_init(AMSMutablePromise);
      v28 = dispatch_time(0, (v21 * 1000000000.0));
      v29 = dispatch_get_global_queue(0, 0);
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_100097D64;
      v40[3] = &unk_1002B0298;
      v30 = v27;
      v31 = a1[4];
      v32 = a1[5];
      v41 = v30;
      v42 = v31;
      v43 = v32;
      v44 = v20;
      dispatch_after(v28, v29, v40);

      v33 = v43;
      v13 = v30;
    }
  }

  return v13;
}

void sub_100097D64(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) _subscribeWithIdentifier:*(a1 + 48) attempt:*(a1 + 56)];
  [v1 finishWithPromise:v2];
}

void sub_100098064(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (a4)
  {
    [*(a1 + 32) finishWithError:a4];
  }

  else
  {
    v6 = [[AMSDCloudDataChangedRecordZonesResult alloc] initWithChangedRecordZones:*(a1 + 40) deletedRecordZones:*(a1 + 48) changeToken:v7];
    [*(a1 + 32) finishWithResult:v6];
  }
}

void sub_1000984DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 80));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1000984FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(CKFetchRecordZoneChangesConfiguration);
  v5 = [*(a1 + 32) objectForKeyedSubscript:v3];

  [v4 setPreviousServerChangeToken:v5];

  return v4;
}

void sub_10009857C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v10)
  {
    v11 = +[AMSLogConfig sharedConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = AMSLogKey();
      v14 = *(a1 + 32);
      v15 = objc_opt_class();
      v16 = v15;
      if (v13)
      {
        v4 = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v16, v4];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v15];
      }
      v17 = ;
      v18 = AMSLogableError();
      *buf = 138543618;
      v25 = v17;
      v26 = 2114;
      v27 = v18;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@Error passed to recordWasChangedBlock: %{public}@", buf, 0x16u);
      if (v13)
      {

        v17 = v4;
      }
    }
  }

  if (v9)
  {
    v19 = *(a1 + 40);
    v20 = [v8 zoneID];
    v21 = [v19 objectForKeyedSubscript:v20];

    if (!v21)
    {
      v21 = objc_alloc_init(NSMutableArray);
      v22 = *(a1 + 40);
      v23 = [v8 zoneID];
      [v22 setObject:v21 forKeyedSubscript:v23];
    }

    [v21 addObject:v9];
  }
}

void sub_1000987BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = v3;
  v5 = [v3 zoneID];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = *(a1 + 32);
    v8 = [v9 zoneID];
    [v7 setObject:v6 forKeyedSubscript:v8];
  }

  [v6 addObject:v9];
}

void sub_10009887C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v15 = a6;
  if (v15)
  {
    v9 = *(a1 + 40);
    v10 = a2;
    [v9 setObject:0 forKeyedSubscript:v10];
    [*(a1 + 48) setObject:0 forKeyedSubscript:v10];
    v11 = *(a1 + 56);
    v12 = v15;
    v13 = v10;
  }

  else
  {
    v14 = *(a1 + 32);
    v13 = a2;
    v11 = v14;
    v12 = a3;
  }

  [v11 setObject:v12 forKeyedSubscript:v13];
}

void sub_10009892C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = AMSSetLogKey();
  if ([*(a1 + 40) count] || objc_msgSend(*(a1 + 48), "count") || objc_msgSend(*(a1 + 56), "count") || (v14 = objc_msgSend(*(a1 + 64), "count"), !v3) || v14)
  {
    if (v3)
    {
      v6 = +[AMSLogConfig sharedAccountsDaemonConfig];
      if (!v6)
      {
        v6 = +[AMSLogConfig sharedConfig];
      }

      v7 = [v6 OSLogObject];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        WeakRetained = objc_loadWeakRetained((a1 + 80));
        v9 = objc_opt_class();
        v10 = AMSLogKey();
        v11 = AMSHashIfNeeded();
        v15 = 138543874;
        v16 = v9;
        v17 = 2114;
        v18 = v10;
        v19 = 2114;
        v20 = v11;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Received both valid data and an error when fetching record zone changes. error = %{public}@", &v15, 0x20u);
      }
    }

    v12 = [*(a1 + 56) ams_mapWithTransform:&stru_1002B2C38];
    v13 = [[AMSDCloudDataChangedRecordsResult alloc] initWithChangedRecords:*(a1 + 40) deletedRecords:*(a1 + 48) errors:v12 changeTokens:*(a1 + 64)];
    [*(a1 + 72) finishWithResult:v13];
  }

  else
  {
    [*(a1 + 72) finishWithError:v3];
  }
}

AMSPair *__cdecl sub_100098B18(id a1, CKRecordZoneID *a2, NSError *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [AMSPair alloc];
  v7 = sub_100048564(v4);

  v8 = [v6 initWithFirst:v5 second:v7];

  return v8;
}

AMSPromise *__cdecl sub_100098BA8(id a1, NSError *a2)
{
  v2 = sub_100048564(a2);
  v3 = [AMSPromise promiseWithError:v2];

  return v3;
}

void sub_10009927C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = AMSHashIfNeeded();
  v5 = [*(a1 + 40) encryptedValues];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = AMSHashIfNeeded();
  [v3 appendFormat:@"\n  %@ = %@, ", v8, v7];
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    v1 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v1)
    {
      v1 = +[AMSLogConfig sharedConfig];
    }

    v2 = [v1 OSLogObject];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = NSTemporaryDirectory();
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "_set_user_dir_suffix() seems to have failed. NSTemporaryDirectory() = %{public}@", &v6, 0xCu);
    }
  }

  v4 = objc_alloc_init(AMSDDaemonRunLoop);
  [(AMSDDaemonRunLoop *)v4 runUntilIdleExit];

  objc_autoreleasePoolPop(v0);
  return 0;
}

uint64_t variable initialization expression of AMSDVerifyDevicePasscodeTask.viewServiceAction@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for AuthenticationViewServiceAction.verifyDevicePasscodeAction(_:);
  v3 = type metadata accessor for AuthenticationViewServiceAction();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

double variable initialization expression of Avro.schema@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xFFFFFFFF00;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  return result;
}

uint64_t variable initialization expression of Avro.infoKey@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100099DF4(&qword_1002DA5E0, &qword_10022E420);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v8 - v4;
  CodingUserInfoKey.init(rawValue:)();
  v6 = type metadata accessor for CodingUserInfoKey();
  result = sub_100004DFC(v5, 1, v6);
  if (result != 1)
  {
    return (*(*(v6 - 8) + 32))(a1, v5, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_100099DF4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

NSString sub_100099E58@<X0>(void *a1@<X8>)
{
  result = sub_10009AA64();
  *a1 = result;
  return result;
}

uint64_t sub_100099E98(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_100150EC8();
}

uint64_t sub_100099EA4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100099EEC@<X0>(uint64_t *a1@<X8>)
{
  result = j___sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100099F1C(uint64_t a1)
{
  v2 = sub_10000FFF0(&qword_1002DA648, type metadata accessor for AMSAccountFlag);
  v3 = sub_10000FFF0(&unk_1002DA650, type metadata accessor for AMSAccountFlag);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

void *sub_100099FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_10009A4F8(sub_10009A7F4, v5, a1, a2);
}

uint64_t sub_10009A02C(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v4 = v1;
  v6 = *v1;
  v5 = v1[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_10000D170(v6, v5);
      *v4 = xmmword_10022E410;
      sub_10000D170(0, 0xC000000000000000);
      v12 = v6 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v12 < v6)
      {
        goto LABEL_23;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
        goto LABEL_24;
      }

      v13 = type metadata accessor for __DataStorage();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v16;
LABEL_16:
      if (v12 < v6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v3 = sub_10009A55C(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (v2)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v3 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_10000D170(v6, v5);
      v19 = v6;
      v20 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v4 = xmmword_10022E410;
      sub_10000D170(0, 0xC000000000000000);
      Data.LargeSlice.ensureUniqueReference()();
      v6 = v19;
      v9 = sub_10009A55C(*(v19 + 16), *(v19 + 24), a1);
      if (v2)
      {
        v10 = v20 | 0x8000000000000000;
LABEL_18:
        *v4 = v6;
        v4[1] = v10;
      }

      else
      {
        v3 = v9;
        v10 = v20 | 0x8000000000000000;
LABEL_20:
        *v4 = v6;
        v4[1] = v10;
      }

      return v3;
    case 3uLL:
      memset(v21, 0, 15);
      a1(&v19, v21, v21);
      if (!v2)
      {
        return v19;
      }

      return v3;
    default:
      v3 = v6 >> 8;
      sub_10000D170(v6, v5);
      v21[0] = v6;
      LOWORD(v21[1]) = v5;
      BYTE2(v21[1]) = BYTE2(v5);
      BYTE3(v21[1]) = BYTE3(v5);
      BYTE4(v21[1]) = BYTE4(v5);
      BYTE5(v21[1]) = BYTE5(v5);
      BYTE6(v21[1]) = BYTE6(v5);
      a1(&v19, v21, v21 + BYTE6(v5));
      if (!v2)
      {
        v3 = v19;
      }

      v8 = LODWORD(v21[1]) | ((WORD2(v21[1]) | (BYTE6(v21[1]) << 16)) << 32);
      *v4 = v21[0];
      v4[1] = v8;
      return v3;
  }
}

uint64_t sub_10009A3F0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = Data.InlineData.init(_:)();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = Data.LargeSlice.init(_:)();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = Data.InlineSlice.init(_:)();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_10009A468(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10009A4B0(uint64_t result)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10009A4F8(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_10009A55C(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_10009A610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = String.UTF16View.index(_:offsetBy:)();
    sub_1000068C8(v6);
    return v7 | 4;
  }

  else
  {
    v3 = String.UTF8View._foreignIndex(_:offsetBy:)();
    sub_1000068C8(v3);
    return v4 | 8;
  }
}

uint64_t sub_10009A66C(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA512();
      sub_10000FFF0(&qword_1002DA5E8, &type metadata accessor for SHA512);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10009A74C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_100099FD8(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_10009A7A0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000D170(a1, a2);
  }

  return a1;
}

uint64_t sub_10009A7B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  result = sub_10009A4B0(a1);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v8;
    a3[2] = v9;
    a3[3] = v10;
  }

  return result;
}

uint64_t sub_10009A914()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

uint64_t sub_10009A96C(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10009A9E4(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

NSString sub_10009AA64()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String._bridgeToObjectiveC()();

  return v0;
}

uint64_t sub_10009AA9C()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

id sub_10009AAD4()
{
  v0 = [objc_opt_self() ams_sharedAccountStore];
  AccountIdentity.DSID.value.getter();
  isa = UInt64._bridgeToObjectiveC()().super.super.isa;
  v2 = [v0 ams_iTunesAccountWithDSID:isa];

  return v2;
}

void sub_10009AB58()
{
  sub_100004168();
  sub_10000309C();
  v1 = type metadata accessor for AccountIdentity.DSID();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  sub_10000306C();
  v3 = sub_10000B96C();
  v4 = sub_10000307C(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10000306C();
  v9 = v8 - v7;
  v10 = [objc_opt_self() ams_sharedAccountStore];
  sub_1000049C0();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 ams_iTunesAccountWithAltDSID:v11];

  if (v12)
  {
    v13 = [v12 ams_DSID];
    if (v13)
    {
      v14 = v13;
      [v13 unsignedLongLongValue];

      *(v9 + *(v3 + 20)) = v12;
      AccountIdentity.DSID.init(_:)();
      sub_1000049C0();
      AccountIdentity.init(altDSID:dsid:)();
      sub_100007078(v9, v0);
      sub_100002728(v0, 0, 1, v3);
      sub_1000027F8();
      return;
    }
  }

  sub_100007AC8();
  sub_1000027F8();

  sub_100002728(v15, v16, v17, v18);
}

void sub_10009AD10()
{
  sub_100004168();
  v2 = v1;
  v4 = v3;
  v83 = type metadata accessor for AccountIdentity.DSID();
  v5 = sub_100003724(v83);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_10000308C();
  v78 = v10 - v11;
  __chkstk_darwin(v12);
  v87 = &v71 - v13;
  v14 = sub_100099DF4(&qword_1002DA6C0, &unk_100232C60);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v84 = sub_10000B96C();
  v16 = sub_100003724(v84);
  v71 = v17;
  v19 = *(v18 + 64);
  __chkstk_darwin(v16);
  sub_10000308C();
  v77 = v20 - v21;
  __chkstk_darwin(v22);
  v73 = &v71 - v23;
  v24 = objc_opt_self();
  v72 = [v24 ams_sharedAccountStore];
  v25 = sub_10009B3D8(v72);
  v26 = v25;
  v79 = v24;
  v85 = v7;
  if ((v4 & 1) == 0)
  {
    LODWORD(v82) = v2;
    v88 = _swiftEmptyArrayStorage;
    v27 = sub_100005DA8(v25);
    v28 = v26;
    v29 = 0;
    v30 = v28 & 0xC000000000000001;
    v86 = v28;
    v31 = v28 & 0xFFFFFFFFFFFFFF8;
    while (v27 != v29)
    {
      if (v30)
      {
        v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v29 >= *(v31 + 16))
        {
          goto LABEL_53;
        }

        v32 = *(v86 + 8 * v29 + 32);
      }

      v33 = v32;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_52;
      }

      if ([v32 ams_isLocalAccount])
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v34 = v31;
        v35 = v30;
        v36 = v88[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v30 = v35;
        v31 = v34;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v29;
    }

    v26 = v88;
    v24 = v79;
    v7 = v85;
    LOBYTE(v2) = v82;
  }

  if ((v2 & 1) == 0)
  {
    v88 = _swiftEmptyArrayStorage;
    v37 = sub_100005DA8(v26);
    v38 = 0;
    v39 = v26 & 0xC000000000000001;
    v40 = v26 & 0xFFFFFFFFFFFFFF8;
    while (v37 != v38)
    {
      if (v39)
      {
        v41 = v26;
        v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v38 >= *(v40 + 16))
        {
          goto LABEL_55;
        }

        v41 = v26;
        v42 = *(v26 + 8 * v38 + 32);
      }

      v43 = v42;
      if (__OFADD__(v38, 1))
      {
        goto LABEL_54;
      }

      if ([v42 ams_isSandboxAccount])
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v44 = v39;
        v45 = v88[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v39 = v44;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v38;
      v26 = v41;
    }

    v26 = v88;
    v24 = v79;
    v7 = v85;
  }

  v46 = sub_100005DA8(v26);
  v47 = 0;
  v48 = v26 & 0xC000000000000001;
  v75 = (v7 + 16);
  v81 = (v7 + 8);
  v82 = v26 & 0xFFFFFFFFFFFFFF8;
  v74 = _swiftEmptyArrayStorage;
  v76 = v26 & 0xC000000000000001;
  v49 = v78;
  while (1)
  {
    if (v46 == v47)
    {

      sub_10009B4E8(v74);

      sub_1000027F8();
      return;
    }

    if (v48)
    {
      v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v47 >= *(v82 + 16))
      {
        goto LABEL_51;
      }

      v50 = *(v26 + 8 * v47 + 32);
    }

    if (__OFADD__(v47, 1))
    {
      break;
    }

    v80 = v47 + 1;
    v85 = v50;
    v51 = [v50 ams_DSID];
    v86 = v47;
    if (v51)
    {
      v52 = v51;
      [v51 unsignedLongLongValue];
    }

    AccountIdentity.DSID.init(_:)();
    v53 = [v24 ams_sharedAccountStore];
    AccountIdentity.DSID.value.getter();
    isa = UInt64._bridgeToObjectiveC()().super.super.isa;
    v55 = [v53 ams_iTunesAccountWithDSID:isa];

    if (!v55)
    {
      v55 = v85;
LABEL_40:
      v63 = v86;

      (*v81)(v87, v83);
      v62 = 1;
      goto LABEL_41;
    }

    sub_10009B9E4(v55);
    if (!v56)
    {

      goto LABEL_40;
    }

    v57 = v77;
    *(v77 + *(v84 + 20)) = v55;
    (*v75)(v49, v87, v83);
    v48 = v76;
    AccountIdentity.init(altDSID:dsid:)();

    v58 = *v81;
    v59 = sub_1000049C0();
    v60(v59);
    v61 = v57;
    v24 = v79;
    sub_100007078(v61, v0);
    v62 = 0;
    v63 = v86;
LABEL_41:
    v64 = v84;
    sub_100002728(v0, v62, 1, v84);
    if (sub_100004DFC(v0, 1, v64) == 1)
    {
      sub_100004E24(v0, &qword_1002DA6C0, &unk_100232C60);
      v47 = v63 + 1;
    }

    else
    {
      sub_100007078(v0, v73);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10013BC08(0, v74[2] + 1, 1, v74);
        v74 = v69;
      }

      v66 = v74[2];
      v65 = v74[3];
      if (v66 >= v65 >> 1)
      {
        sub_10013BC08(v65 > 1, v66 + 1, 1, v74);
        v74 = v70;
      }

      v67 = v73;
      v68 = v74;
      v74[2] = v66 + 1;
      sub_100007078(v67, v68 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v66);
      v47 = v80;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
}

void *sub_10009B3D8(void *a1)
{
  v2 = _swiftEmptyArrayStorage;
  v27 = _swiftEmptyArrayStorage;
  if ([a1 ams_activeiTunesAccount])
  {
    UniqueAndReserveCapacityIfNot = specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    sub_100008244(UniqueAndReserveCapacityIfNot, v4, v5, v6, v7, v8, v9, v10, v26, _swiftEmptyArrayStorage);
    if (v11)
    {
      sub_1000071A4();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v2 = v27;
  }

  v12 = [a1 ams_activeiCloudAccount];
  if (v12)
  {
    v13 = v12;
    v14 = [a1 ams_iTunesAccountForAccount:v12];
    if (v14)
    {
      v15 = v14;
      sub_10009B6EC();
      if (v16)
      {
      }

      else
      {
        v17 = specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_100008244(v17, v18, v19, v20, v21, v22, v23, v24, v26, v27);
        if (v11)
        {
          sub_1000071A4();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v2 = v28;
      }
    }
  }

  return v2;
}

void *sub_10009B4E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v27 = _swiftEmptyArrayStorage;
    sub_100107090();
    v2 = _swiftEmptyArrayStorage;
    v4 = type metadata accessor for AMPAccount();
    v5 = 0;
    v6 = *(v4 - 8);
    v19 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v20 = v6;
    do
    {
      v25 = v4;
      v26 = &off_1002B4510;
      v7 = sub_100007914(v24);
      sub_10009BA48(v19 + *(v20 + 72) * v5, v7);
      v27 = v2;
      v8 = v2[2];
      if (v8 >= v2[3] >> 1)
      {
        sub_100107090();
        v2 = v27;
      }

      ++v5;
      v9 = v25;
      v10 = sub_100008494(v24, v25);
      v11 = *(*(v9 - 8) + 64);
      v12 = __chkstk_darwin(v10);
      v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 16))(v14, v12);
      v22 = v4;
      v23 = &off_1002B4510;
      v16 = sub_100007914(&v21);
      sub_100007078(v14, v16);
      v2[2] = v8 + 1;
      sub_10000601C(&v21, &v2[5 * v8 + 4]);
      sub_100004118(v24);
    }

    while (v1 != v5);
  }

  return v2;
}

void sub_10009B6EC()
{
  sub_100004168();
  v1 = v0;
  v3 = v2;
  v4 = sub_100005DA8(v0);
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {
      goto LABEL_29;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v6 = *(v1 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v8 = sub_10009B9E4(v6);
    v10 = v9;
    v11 = sub_10009B9E4(v3);
    if (!v10)
    {
      if (!v12)
      {
        goto LABEL_27;
      }

LABEL_16:

      goto LABEL_17;
    }

    if (!v12)
    {
      goto LABEL_16;
    }

    if (v8 == v11 && v10 == v12)
    {

      goto LABEL_29;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      goto LABEL_27;
    }

LABEL_17:
    v15 = [v7 ams_DSID];
    v16 = [v3 ams_DSID];
    v17 = v16;
    if (!v15)
    {
      if (!v16)
      {
LABEL_27:

LABEL_29:
        sub_1000027F8();
        return;
      }

      goto LABEL_24;
    }

    if (!v16)
    {
      v17 = v15;
LABEL_24:

      continue;
    }

    sub_100003AE0(0, &qword_1002DA6C8, NSNumber_ptr);
    v18 = static NSObject.== infix(_:_:)();

    if (v18)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
}