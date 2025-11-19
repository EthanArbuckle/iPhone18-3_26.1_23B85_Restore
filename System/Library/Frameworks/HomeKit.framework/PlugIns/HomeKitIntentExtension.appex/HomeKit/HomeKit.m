void sub_100000DF4(id a1)
{
  qword_100008708 = HMFCreateOSLogHandle();

  _objc_release_x1();
}

void sub_100000FF8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) intentTimer];

  if (v2 == v3)
  {
    [*(a1 + 40) _reportToResponseHandlerWithOutcome:HMIntentOutcomeInProgress];
    v4 = *(a1 + 40);

    [v4 _resetIntentTimer];
  }
}

void sub_1000017D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001804(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained clientQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000019E8;
    v14[3] = &unk_100004208;
    v15 = *(a1 + 32);
    v16 = v8;
    v17 = v5;
    v18 = *(a1 + 40);
    dispatch_async(v9, v14);

    v10 = v15;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@HMIntentHandler has been set to nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v10 = [[INControlHomeIntentResponse alloc] initWithCode:5 userActivity:0];
    (*(*(a1 + 48) + 16))();
  }
}

void sub_1000019E8(uint64_t a1)
{
  v2 = [*(a1 + 32) hmf_numberForKey:kSiriIntentRequestTypeKey];
  v3 = [v2 unsignedIntegerValue];

  v4 = HMStringFromIntentRequestType();
  v5 = [*(a1 + 40) intentTimer];

  if (v5)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      if ([v6 code] != 82 || v3)
      {
        v23 = [*(a1 + 48) code];
        v7 = objc_autoreleasePoolPush();
        v8 = *(a1 + 40);
        v24 = HMFGetOSLogHandle();
        v9 = v24;
        if (v23 == 10)
        {
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v10 = HMFGetLogIdentifier();
            v25 = *(a1 + 56);
            v12 = HMIntentOutcomeUnsecuringNotAllowed;
            v13 = HMINControlHomeIntentShortDescription();
            v29 = 138543618;
            v30 = v10;
            v31 = 2112;
            v32 = v13;
            v14 = "%{public}@Execution is not allowed for intent: [ %@ ]";
            goto LABEL_15;
          }

          v26 = &HMIntentOutcomeUnsecuringNotAllowed;
        }

        else
        {
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v10 = HMFGetLogIdentifier();
            v27 = *(a1 + 56);
            v12 = HMIntentOutcomeFailure;
            v13 = HMINControlHomeIntentShortDescription();
            v28 = *(a1 + 48);
            v29 = 138544130;
            v30 = v10;
            v31 = 2112;
            v32 = v13;
            v33 = 2112;
            v34 = v4;
            v35 = 2112;
            v36 = v28;
            v14 = "%{public}@Failed to %@ intent: [ %@ ] - error %@";
            v20 = v9;
            v21 = OS_LOG_TYPE_ERROR;
            v22 = 42;
            goto LABEL_19;
          }

          v26 = &HMIntentOutcomeFailure;
        }
      }

      else
      {
        v7 = objc_autoreleasePoolPush();
        v8 = *(a1 + 40);
        v9 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = HMFGetLogIdentifier();
          v11 = *(a1 + 56);
          v12 = HMIntentOutcomeUnsecuringUnlockRequired;
          v13 = HMINControlHomeIntentShortDescription();
          v29 = 138543618;
          v30 = v10;
          v31 = 2112;
          v32 = v13;
          v14 = "%{public}@Unlock required for intent: [ %@ ]";
LABEL_15:
          v20 = v9;
          v21 = OS_LOG_TYPE_INFO;
          v22 = 22;
          goto LABEL_19;
        }

        v26 = &HMIntentOutcomeUnsecuringUnlockRequired;
      }
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      v8 = *(a1 + 40);
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v19 = *(a1 + 56);
        v12 = HMIntentOutcomeSuccess;
        v13 = HMINControlHomeIntentShortDescription();
        v29 = 138543874;
        v30 = v10;
        v31 = 2112;
        v32 = v13;
        v33 = 2112;
        v34 = v4;
        v14 = "%{public}@Intent: [ %@ ] is %@ successfully";
        v20 = v9;
        v21 = OS_LOG_TYPE_INFO;
        v22 = 32;
LABEL_19:
        _os_log_impl(&_mh_execute_header, v20, v21, v14, &v29, v22);

LABEL_24:
        objc_autoreleasePoolPop(v7);
        [*(a1 + 40) _reportToResponseHandlerWithOutcome:v12];
        [*(a1 + 40) _resetIntentTimer];
        goto LABEL_25;
      }

      v26 = &HMIntentOutcomeSuccess;
    }

    v12 = *v26;
    goto LABEL_24;
  }

  v15 = objc_autoreleasePoolPush();
  v16 = *(a1 + 40);
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    v29 = 138543618;
    v30 = v18;
    v31 = 2112;
    v32 = v4;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%{public}@%@ time takes too long. Timer already fired", &v29, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
LABEL_25:
}