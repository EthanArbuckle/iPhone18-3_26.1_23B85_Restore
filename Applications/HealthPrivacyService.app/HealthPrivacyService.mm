void sub_100001190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000011BC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 objectForKeyedSubscript:BKSApplicationStateKey];

  [WeakRetained _hostApplicationStateDidChange:{objc_msgSend(v4, "integerValue")}];
}

void sub_1000017AC(uint64_t a1)
{
  v2 = [NSError hk_error:7 description:@"The user canceled request to recalibrate estimates."];
  [*(a1 + 32) _finishWithError:v2];
}

id sub_100001814(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = *(v2 + 8);
  v4 = a1[6];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100001898;
  v6[3] = &unk_10000C410;
  v6[4] = v2;
  return [v3 recalibrateEstimatesForSampleType:v1 effectiveDate:v4 completion:v6];
}

void sub_100001898(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100001934;
  v6[3] = &unk_10000C3E8;
  v6[4] = *(a1 + 32);
  v7 = v4;
  v5 = v4;
  dispatch_async(&_dispatch_main_q, v6);
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = +[UIColor hk_appTintColor];
  v6 = +[UIView appearance];
  [v6 setTintColor:v5];

  v7 = UIApplicationMain(a1, a2, 0, 0);
  _HKInitializeLogging();
  v8 = HKLogAuthorization();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = +[NSProcessInfo processInfo];
    v10 = [v9 processName];
    v12 = 138543362;
    v13 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ exiting", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  return v7;
}

int64_t sub_100002318(id a1, HKVerifiableClinicalRecord *a2, HKVerifiableClinicalRecord *a3)
{
  v4 = a2;
  v5 = [(HKVerifiableClinicalRecord *)a3 relevantDate];
  v6 = [(HKVerifiableClinicalRecord *)v4 relevantDate];

  v7 = [v5 compare:v6];
  return v7;
}

int64_t sub_100002460(id a1, HKVisionPrescription *a2, HKVisionPrescription *a3)
{
  v4 = a3;
  v5 = [(HKVisionPrescription *)a2 dateIssued];
  v6 = [(HKVisionPrescription *)v4 dateIssued];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_100002964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100002990(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 objectForKeyedSubscript:BKSApplicationStateKey];

  [WeakRetained _hostApplicationStateDidChange:{objc_msgSend(v4, "integerValue")}];
}

void sub_100002BD8(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002C88;
  block[3] = &unk_10000C520;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v4;
  v8 = v3;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_100002C88(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  result = *(v3 + 56);
  if (result != v2)
  {
    if (!v2)
    {
      return result;
    }

    result = [result isEqual:?];
    if (!result)
    {
      return result;
    }

    v3 = a1[4];
    result = *(v3 + 56);
  }

  *(v3 + 56) = 0;

  v5 = a1[4];
  v6 = a1[6];

  return [v5 _finishWithError:v6];
}

void sub_100002D00(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100002D9C;
  v5[3] = &unk_10000C3E8;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);
}

id sub_100002D9C(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 64), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _configureNavigationController];
}

void sub_100003454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

uint64_t sub_100003494(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000034AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 firstObject];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100003A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_100003A54(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100003BCC(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = *(*(a1 + 40) + 88);
    v9 = +[HKUserAnnotatedMedicationType userAnnotatedMedicationType];
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      v11 = +[HKUserAnnotatedMedicationType userAnnotatedMedicationType];
      if (!v11)
      {

LABEL_14:
        _HKInitializeLogging();
        v16 = HKLogAuthorization();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Successfully selected authorization for object picker.", buf, 2u);
        }

        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v17 = [*(a1 + 48) allSamples];
        v18 = [v17 countByEnumeratingWithState:&v39 objects:v46 count:16];
        if (v18)
        {
          v19 = *v40;
          do
          {
            for (i = 0; i != v18; i = i + 1)
            {
              if (*v40 != v19)
              {
                objc_enumerationMutation(v17);
              }

              v21 = [*(*(&v39 + 1) + 8 * i) UUID];
              [v6 setObject:&off_10000CA50 forKeyedSubscript:v21];
            }

            v18 = [v17 countByEnumeratingWithState:&v39 objects:v46 count:16];
          }

          while (v18);
        }

        v38 = 0u;
        v36 = 0u;
        v37 = 0u;
        v35 = 0u;
        v22 = [*(a1 + 48) enabledSamples];
        v23 = [v22 countByEnumeratingWithState:&v35 objects:v45 count:16];
        if (v23)
        {
          v24 = *v36;
          do
          {
            for (j = 0; j != v23; j = j + 1)
            {
              if (*v36 != v24)
              {
                objc_enumerationMutation(v22);
              }

              v26 = [*(*(&v35 + 1) + 8 * j) UUID];
              [v6 setObject:&off_10000CA68 forKeyedSubscript:v26];
            }

            v23 = [v22 countByEnumeratingWithState:&v35 objects:v45 count:16];
          }

          while (v23);
        }

        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_10000410C;
        v33[3] = &unk_10000C5E8;
        v34 = v7;
        [v6 enumerateKeysAndObjectsUsingBlock:v33];
        v15 = v34;
LABEL_31:

        v27 = [[HKObjectAuthorizationSetStatusContext alloc] initWithObjectAuthorizationStatuses:v7 sessionIdentifier:0];
        objc_initWeak(buf, *(a1 + 40));
        v28 = *(*(a1 + 40) + 16);
        v29 = *(*(a1 + 40) + 88);
        v30 = [*(*(a1 + 40) + 40) bundleIdentifier];
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_1000041CC;
        v31[3] = &unk_10000C638;
        v31[4] = *(a1 + 40);
        objc_copyWeak(&v32, buf);
        [v28 setObjectAuthorizationStatusContext:v27 forObjectType:v29 bundleIdentifier:v30 completion:v31];

        objc_destroyWeak(&v32);
        objc_destroyWeak(buf);

        return;
      }

      v12 = *(*(a1 + 40) + 88);
      v13 = +[HKUserAnnotatedMedicationType userAnnotatedMedicationType];
      LODWORD(v12) = [v12 isEqual:v13];

      if (!v12)
      {
        goto LABEL_14;
      }
    }

    _HKInitializeLogging();
    v14 = HKLogAuthorization();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Successfully selected authorization for health concept authorization sheet.", buf, 2u);
    }

    v15 = [*(a1 + 48) updatedUserAnnotatedMedications];
    [v7 addEntriesFromDictionary:v15];
    goto LABEL_31;
  }

  _HKInitializeLogging();
  v2 = HKLogAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v44 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Object selection failed with error: %@.", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  v4 = a1 + 32;
  objc_storeStrong((*(v4 + 8) + 32), v5);
  [*(v4 + 8) _finishWithError:*v4];
}

void sub_1000040E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id location)
{
  objc_destroyWeak((v37 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000410C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [HKHealthConceptIdentifier alloc];
  v8 = HKHealthConceptDomainHealthKit;
  v9 = [v6 UUIDString];

  v10 = [v7 initWithDomain:v8 underlyingIdentifier:v9];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v10];
}

void sub_1000041CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004284;
  block[3] = &unk_10000C610;
  v5 = *(a1 + 32);
  v8 = v4;
  v9 = v5;
  v6 = v4;
  objc_copyWeak(&v10, (a1 + 40));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v10);
}

void sub_100004284(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Finished setting status with error: %@.", &v5, 0xCu);
  }

  objc_storeStrong((*(a1 + 40) + 32), *(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _finishWithError:*(a1 + 32)];
}

void sub_100004820(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_100004840(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_1000053C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000053FC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 objectForKeyedSubscript:BKSApplicationStateKey];

  [WeakRetained _hostApplicationStateDidChange:{objc_msgSend(v4, "integerValue")}];
}

void sub_100005700(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000057B0;
  block[3] = &unk_10000C520;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v4;
  v8 = v3;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000057B0(uint64_t a1)
{
  v2 = [*(a1 + 32) currentTransactionSessionIdentifier];
  v3 = *(a1 + 40);
  if (v2 == v3)
  {

LABEL_6:
    [*(a1 + 32) setCurrentTransactionSessionIdentifier:0];
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);

    [v6 _finishWithError:v7];
    return;
  }

  if (v3)
  {
    v8 = v2;
    v4 = [*(a1 + 32) currentTransactionSessionIdentifier];
    v5 = [v4 isEqual:*(a1 + 40)];

    if (!v5)
    {
      return;
    }

    goto LABEL_6;
  }
}

void sub_10000588C(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000593C;
  block[3] = &unk_10000C520;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v4;
  v8 = v3;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10000593C(uint64_t a1)
{
  v2 = [*(a1 + 32) currentTransactionSessionIdentifier];
  v3 = *(a1 + 40);
  if (v2 == v3)
  {

LABEL_6:
    [*(a1 + 32) setCurrentTransactionSource:*(a1 + 48)];
    v6 = *(a1 + 32);
    if (v6[9] == 1)
    {

      [v6 show];
    }

    return;
  }

  if (v3)
  {
    v7 = v2;
    v4 = [*(a1 + 32) currentTransactionSessionIdentifier];
    v5 = [v4 isEqual:*(a1 + 40)];

    if (!v5)
    {
      return;
    }

    goto LABEL_6;
  }
}

id sub_100005AF0(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v2)
  {
    return [v3 _didFinishPresentingRequestWithError:v4];
  }

  else
  {
    return [v3 _finishWithError:v4];
  }
}

void sub_100005DC0(unsigned int a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Host application state changed to %ld, terminating recalibrate estimates session.", &v2, 0xCu);
}

void sub_100005E3C(void *a1)
{
  v1 = [a1 sessionIdentifier];
  sub_100004814();
  sub_100004840(&_mh_execute_header, v2, v3, "Failed to locate context to authorize session %{public}@: %{public}@", v4, v5, v6, v7, v8);
}

void sub_100005ED8(void *a1)
{
  v1 = [a1 sessionIdentifier];
  sub_100004814();
  sub_100004840(&_mh_execute_header, v2, v3, "Failed to locate context to health concept authorize session %{public}@: %{public}@", v4, v5, v6, v7, v8);
}

void sub_100005F74(unsigned int a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Host application state changed to %ld, terminating authorization session.", &v2, 0xCu);
}

void sub_100005FF0(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKHealthPrivacyServiceObjectPickerViewController.m" lineNumber:237 description:{@"Invalid parameter not satisfying: %@", @"sessionIdentifier != nil"}];
}

void sub_10000606C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKHealthPrivacyServiceObjectPickerViewController.m" lineNumber:238 description:{@"Invalid parameter not satisfying: %@", @"_sessionIdentifier == nil"}];
}

void sub_1000060E8()
{
  objc_opt_class();
  sub_100004814();
  v1 = v0;
  sub_100004820(&_mh_execute_header, v2, v3, "%{public}@: beginning authorization delegate transaction", v4, v5, v6, v7, v8);
}

void sub_10000616C()
{
  objc_opt_class();
  sub_100004814();
  v1 = v0;
  sub_100004820(&_mh_execute_header, v2, v3, "%{public}@: finishing authorization delegate transaction", v4, v5, v6, v7, v8);
}

void sub_1000062D8()
{
  objc_opt_class();
  sub_100004814();
  v1 = v0;
  sub_100004820(&_mh_execute_header, v2, v3, "%@: dismissing", v4, v5, v6, v7, v8);
}

void sub_10000635C()
{
  sub_100005DB4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100005DA8();
  [v0 handleFailureInMethod:@"[presentationRequests hk_allElementsUnique]" object:? file:? lineNumber:? description:?];
}

void sub_1000063D0()
{
  sub_100005DB4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100005DA8();
  [v0 handleFailureInMethod:@"presentationRequests.count > 0" object:? file:? lineNumber:? description:?];
}

void sub_100006444()
{
  sub_100005DB4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100005DA8();
  [v0 handleFailureInMethod:@"requestRecord != nil" object:? file:? lineNumber:? description:?];
}

void sub_1000064B8()
{
  sub_100005DB4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100005DA8();
  [v0 handleFailureInMethod:@"presentationRequests != nil" object:? file:? lineNumber:? description:?];
}

void sub_10000652C()
{
  sub_100005DB4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100005DA8();
  [v0 handleFailureInMethod:@"self.currentTransactionSessionIdentifier != nil" object:? file:? lineNumber:? description:?];
}

void sub_1000065A0()
{
  sub_100005DB4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100005DA8();
  [v0 handleFailureInMethod:@"source != nil" object:? file:? lineNumber:? description:?];
}

void sub_100006614()
{
  sub_100005DB4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100005DA8();
  [v0 handleFailureInMethod:@"self.currentTransactionSessionIdentifier != nil" object:? file:? lineNumber:? description:?];
}

void sub_100006688()
{
  sub_100005DB4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100005DA8();
  [v0 handleFailureInMethod:@"presentedRequest != nil" object:? file:? lineNumber:? description:?];
}

void sub_1000066FC()
{
  sub_100005DB4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100005DA8();
  [v0 handleFailureInMethod:@"[self _isPresentingLastRequest] == NO" object:? file:? lineNumber:? description:?];
}

void sub_100006770()
{
  sub_100005DB4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100005DA8();
  [v0 handleFailureInMethod:@"request.type == HKAuthorizationPresentationTypeClinicalHealthRecords" object:? file:? lineNumber:? description:?];
}

void sub_1000067E4()
{
  sub_100005DB4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100005DA8();
  [v0 handleFailureInMethod:@"request.type == HKAuthorizationPresentationTypeHealthData" object:? file:? lineNumber:? description:?];
}

void sub_100006858()
{
  sub_100005DB4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100005DA8();
  [v0 handleFailureInMethod:@"sessionIdentifier != nil" object:? file:? lineNumber:? description:?];
}

void sub_1000068CC()
{
  sub_100005DB4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100005DA8();
  [v0 handleFailureInMethod:@"self.currentTransactionSessionIdentifier == nil" object:? file:? lineNumber:? description:?];
}

void sub_100006940(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = 138412546;
  v7 = objc_opt_class();
  v8 = 2114;
  v9 = a2;
  v5 = v7;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "%@: beginning authorization delegate transaction with identifier %{public}@", &v6, 0x16u);
}