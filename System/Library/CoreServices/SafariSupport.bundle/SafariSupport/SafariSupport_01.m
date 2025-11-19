id sub_100033914()
{
  if (qword_100153EC0 != -1)
  {
    sub_10003A5D0();
  }

  v1 = qword_100153EB8;

  return v1;
}

void sub_100033C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  if (a3)
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 48);

    v4(v5, 0);
  }

  else
  {
    v8 = [*(a1 + 32) hashGenerator];
    v7 = [v8 generateHashStringWithComponents:*(a1 + 40)];
    (*(v3 + 16))(v3, v7, 0);
  }
}

void sub_100034588(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10000300C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10003A628(v3, a1, v4);
  }

  v5 = *(*(a1 + 40) + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100034668;
  v8[3] = &unk_100130F40;
  v6 = *(a1 + 48);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  dispatch_async(v5, v8);
}

void sub_10003467C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_10000300C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 32);
    v12 = v7;
    v13 = [v11 safari_logDescription];
    *buf = 138543874;
    v18 = v6;
    v19 = 2114;
    v20 = v5;
    v21 = 2114;
    v22 = v13;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Record of type %{public}@ deleted: <%{public}@> with %{public}@", buf, 0x20u);
  }

  v8 = *(*(a1 + 40) + 32);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000347FC;
  v14[3] = &unk_100130F40;
  v9 = *(a1 + 48);
  v15 = v5;
  v16 = v9;
  v10 = v5;
  dispatch_async(v8, v14);
}

uint64_t sub_100034810(id *a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, a1[4]);
  v4 = a1[5];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100034A2C;
  v15[3] = &unk_100131120;
  objc_copyWeak(&v21, &location);
  v5 = v3;
  v16 = v5;
  v6 = a1[8];
  v7 = a1[5];
  v8 = a1[6];
  v19 = a1[9];
  v20 = a1[10];
  *&v9 = a1[7];
  *(&v9 + 1) = v6;
  *&v10 = v7;
  *(&v10 + 1) = v8;
  v17 = v10;
  v18 = v9;
  v11 = [v4 scheduleRetryIfNeededForError:v5 usingBlock:v15];
  if (v11 == 1)
  {
    v13 = 1;
  }

  else
  {
    if (v11 == 2)
    {
      v12 = sub_10000300C();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [a1[7] safari_logDescription];
        objc_claimAutoreleasedReturnValue();
        sub_10003A6D4();
      }
    }

    v13 = 0;
  }

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  return v13;
}

void sub_100034A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 88));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100034A2C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[4];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100034BC0;
    block[3] = &unk_1001310F8;
    block[4] = WeakRetained;
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v13 = *(a1 + 72);
    v14 = *(a1 + 80);
    v12 = *(a1 + 56);
    v15 = *(a1 + 64);
    dispatch_async(v4, block);
  }

  else
  {
    v5 = sub_10000300C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10003A71C(a1, v5);
    }

    v6 = objc_retainBlock(*(a1 + 64));
    objc_sync_enter(v6);
    v7 = *(a1 + 64);
    if ((_WBSRunOnceImpl() & 1) == 0)
    {
      v8 = *(a1 + 32);
      (*(*(a1 + 64) + 16))();
    }

    objc_sync_exit(v6);
  }
}

void sub_100034BD8(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v9 = a3;
  v10 = a4;
  v11 = [a6 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:0];
  v12 = *(a1 + 32);
  v13 = *(v12 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100034D14;
  block[3] = &unk_100132AD0;
  v18 = v11;
  v19 = v12;
  v23 = *(a1 + 48);
  v20 = *(a1 + 40);
  v24 = *(a1 + 56);
  v21 = v9;
  v22 = v10;
  v14 = v10;
  v15 = v9;
  v16 = v11;
  dispatch_async(v13, block);
}

void sub_100034D14(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (!v2)
  {
    v9 = sub_10000300C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 48);
      v11 = v9;
      v12 = [v10 safari_logDescription];
      *buf = 138543618;
      v22 = @"CloudSettings";
      v23 = 2114;
      v24 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Fetch records from record zone operation completed for record zone %{public}@ with %{public}@", buf, 0x16u);
    }

    v13 = *(*(a1 + 40) + 40);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100034FF0;
    v14[3] = &unk_100130E00;
    v7 = &v17;
    v17 = *(a1 + 80);
    v8 = &v15;
    v15 = *(a1 + 56);
    v16 = *(a1 + 64);
    dispatch_async(v13, v14);

    goto LABEL_11;
  }

  if ([v2 safari_isOrContainsCloudKitMissingZoneError])
  {
    [*(a1 + 40) clearCachedCloudSettingsRecordZone];
  }

  v4 = *(a1 + 32);
  if (((*(*(a1 + 72) + 16))() & 1) == 0)
  {
    v5 = sub_10000300C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10003A7B4(v3, v5);
    }

    v6 = *(*(a1 + 40) + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100034F64;
    block[3] = &unk_100130F40;
    v7 = &v20;
    v20 = *(a1 + 80);
    v8 = &v19;
    v19 = *(a1 + 32);
    dispatch_async(v6, block);
LABEL_11:
  }
}

void sub_100034F64(uint64_t a1)
{
  obj = objc_retainBlock(*(a1 + 40));
  objc_sync_enter(obj);
  v2 = *(a1 + 40);
  if ((_WBSRunOnceImpl() & 1) == 0)
  {
    v3 = *(a1 + 32);
    (*(*(a1 + 40) + 16))();
  }

  objc_sync_exit(obj);
}

void sub_100034FF0(uint64_t a1)
{
  obj = objc_retainBlock(*(a1 + 48));
  objc_sync_enter(obj);
  v2 = *(a1 + 48);
  if ((_WBSRunOnceImpl() & 1) == 0)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    (*(*(a1 + 48) + 16))();
  }

  objc_sync_exit(obj);
}

void sub_10003507C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    v5 = [v3 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:0];

    if (((*(*(a1 + 48) + 16))() & 1) == 0)
    {
      v6 = sub_10000300C();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10003A858();
      }

      v7 = *(*(a1 + 40) + 40);
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100035198;
      v8[3] = &unk_100130F40;
      v10 = *(a1 + 56);
      v5 = v5;
      v9 = v5;
      dispatch_async(v7, v8);
    }
  }

  else
  {
    v5 = 0;
  }
}

void sub_100035198(uint64_t a1)
{
  obj = objc_retainBlock(*(a1 + 40));
  objc_sync_enter(obj);
  v2 = *(a1 + 40);
  if ((_WBSRunOnceImpl() & 1) == 0)
  {
    v3 = *(a1 + 32);
    (*(*(a1 + 40) + 16))();
  }

  objc_sync_exit(obj);
}

void sub_100035314(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (![a2 deviceCount])
  {
    v6 = sub_10000300C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10003A904(a1, v6);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10003554C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100035570(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6 && ([v6 safari_isOrContainsCloudKitMissingZoneError] & 1) != 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v9 = sub_10000300C();
    v10 = v9;
    if (WeakRetained)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        v12 = v10;
        v13 = [v11 safari_logDescription];
        *buf = 138543362;
        v21 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Saving CloudSettings zone subscription failed because of missing zone, attempting to create zone with %{public}@", buf, 0xCu);
      }

      v14 = *(a1 + 32);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100035754;
      v16[3] = &unk_100132B70;
      v17 = v14;
      v15 = *(a1 + 40);
      v18 = WeakRetained;
      v19 = v15;
      [WeakRetained createCloudSettingsRecordZoneInOperationGroup:v17 completionHandler:v16];
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10003A994(a1, v10);
      }

      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100035754(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = sub_10000300C();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10003AA24(a1, v6);
    }

    (*(a1[6] + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      v8 = v6;
      v9 = [v7 safari_logDescription];
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Saving CloudSettings zone subscription after creating zone with %{public}@", &v12, 0xCu);
    }

    v10 = a1[5];
    v11 = sub_100033914();
    [v10 _saveRecordZoneSubscriptionForZoneID:v11 subscriptionID:@"CloudSettingsZoneSubscription" inOperationGroup:a1[4] operationQueue:*(a1[5] + 24) completionHandler:a1[6]];
  }
}

void sub_100035A04(uint64_t a1)
{
  v2 = [[CKRecordZoneSubscription alloc] initWithZoneID:*(a1 + 32) subscriptionID:*(a1 + 40)];
  [v2 setNotificationInfo:*(a1 + 48)];
  v3 = sub_10000300C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 56);
    v6 = v3;
    v7 = [v5 safari_logDescription];
    *buf = 138543618;
    v18 = v4;
    v19 = 2114;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Attempting to save zone subscription for zone: %{public}@ with %{public}@", buf, 0x16u);
  }

  v8 = [CKModifySubscriptionsOperation alloc];
  v16 = v2;
  v9 = [NSArray arrayWithObjects:&v16 count:1];
  v10 = [v8 initWithSubscriptionsToSave:v9 subscriptionIDsToDelete:0];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100035BD8;
  v13[3] = &unk_100131288;
  v11 = *(a1 + 80);
  v14 = v2;
  v15 = v11;
  v12 = v2;
  [v10 setModifySubscriptionsCompletionBlock:v13];
  [*(a1 + 64) _scheduleOperation:v10 inOperationGroup:*(a1 + 56) operationQueue:*(a1 + 72)];
}

void sub_100035BD8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 40);
  v7 = a4;
  v12 = [a2 firstObject];
  v8 = [*(a1 + 32) subscriptionID];
  v9 = [CKPrettyError itemErrorFromError:v7 forID:v8];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  (*(v6 + 16))(v6, v12, v11);
}

void sub_100035EB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100035ED4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained && v9 && *(a1 + 80) == 1 && ([v9 safari_isOrContainsCloudKitMissingZoneError] & 1) != 0)
  {
    v11 = sub_10000300C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = v11;
      v14 = [v12 safari_logDescription];
      *buf = 138543362;
      v30 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Attempting to create CloudSettings zone before retrying save operation with %{public}@", buf, 0xCu);
    }

    v15 = *(a1 + 32);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100036164;
    v21[3] = &unk_100132BC0;
    objc_copyWeak(&v28, (a1 + 72));
    v16 = *(a1 + 56);
    v22 = v7;
    v23 = v8;
    v24 = v9;
    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    *&v19 = *(a1 + 48);
    *(&v19 + 1) = v16;
    *&v20 = v17;
    *(&v20 + 1) = v18;
    v25 = v20;
    v26 = v19;
    v27 = *(a1 + 64);
    [WeakRetained createCloudSettingsRecordZoneInOperationGroup:v15 completionHandler:v21];

    objc_destroyWeak(&v28);
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_100036164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (a3)
    {
      v7 = WeakRetained[5];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100036324;
      v15[3] = &unk_100130EC8;
      v19 = *(a1 + 80);
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      v18 = *(a1 + 48);
      dispatch_async(v7, v15);
    }

    else
    {
      v11 = sub_10000300C();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 56);
        v13 = v11;
        v14 = [v12 safari_logDescription];
        *buf = 138543362;
        v21 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Retrying save operation after creating CloudSettingsZone with %{public}@", buf, 0xCu);
      }

      [v6 saveCloudSettingsRecords:*(a1 + 64) createCloudSettingsZoneIfMissing:0 inOperationGroup:*(a1 + 56) clientChangeTokenData:*(a1 + 72) mergeHandler:*(a1 + 88) completionHandler:*(a1 + 80)];
    }
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    (*(*(a1 + 80) + 16))();
  }
}

void sub_1000366F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:0];
  v7 = *(*(a1 + 32) + 32);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10003682C;
  v15[3] = &unk_100132C10;
  v16 = v6;
  v17 = v5;
  v8 = *(a1 + 40);
  v9 = *(a1 + 56);
  v10 = *(a1 + 48);
  *&v11 = v8;
  *(&v11 + 1) = v10;
  *&v12 = v9;
  *(&v12 + 1) = *(a1 + 64);
  v18 = v11;
  v19 = v12;
  v13 = v5;
  v14 = v6;
  dispatch_async(v7, v15);
}

void sub_10003682C(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (!v2)
  {
    return;
  }

  if (*(a1 + 40))
  {
    if (([v2 safari_isUnrecoverableCloudKitError] & 1) != 0 || objc_msgSend(*v3, "safari_isOrContainsCloudKitMissingZoneError"))
    {
      v4 = sub_10000300C();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10003AD34(v3, v4);
      }

      return;
    }

    if ([*v3 safari_isCloudKitBatchTooLargeError])
    {
      v6 = sub_10000300C();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10003AC9C(a1, v6);
      }

      return;
    }

    v7 = [*v3 domain];
    v8 = [v7 isEqualToString:CKErrorDomain];

    if (v8)
    {
      v9 = [*v3 code];
      if (v9 == 11)
      {
        goto LABEL_36;
      }

      if (v9 == 22)
      {
        return;
      }

      if (v9 == 14)
      {
LABEL_36:
        if (*(a1 + 64))
        {
          v10 = *(a1 + 40);
          v11 = [*(a1 + 32) code];
          if (v11 == 11)
          {
            v15 = 0;
          }

          else
          {
            if (v11 != 14)
            {
LABEL_33:

              return;
            }

            v12 = [*v3 userInfo];
            v13 = [v12 objectForKeyedSubscript:CKRecordChangedErrorClientRecordKey];

            v14 = [*v3 userInfo];
            v15 = [v14 objectForKeyedSubscript:CKRecordChangedErrorServerRecordKey];

            v10 = v13;
          }

          v18 = *(a1 + 32);
          v19 = (*(*(a1 + 64) + 16))();
          if (v19)
          {
            v20 = sub_10000300C();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              sub_10003AB58(a1, v20);
            }

            [*(a1 + 56) addObject:v19];
          }

          v21 = sub_10000300C();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v22 = *(a1 + 32);
            v23 = v21;
            v24 = [v22 safari_privacyPreservingDescription];
            v25 = [*(a1 + 48) safari_logDescription];
            v26 = 138543618;
            v27 = v24;
            v28 = 2114;
            v29 = v25;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Will retry save with updated batch after error: %{public}@ with %{public}@", &v26, 0x16u);
          }

          *(*(*(a1 + 72) + 8) + 24) = 1;

          goto LABEL_33;
        }
      }

      v17 = sub_10000300C();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10003ABF8(v3, v17);
      }
    }

    else
    {
      v16 = sub_10000300C();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10003AAB4(v3, v16);
      }
    }
  }

  else
  {
    v5 = sub_10000300C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10003ADD8(v3, v5);
    }
  }
}

void sub_100036B74(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  queue = *(v10 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100036D28;
  block[3] = &unk_100132C88;
  v27 = v9;
  v28 = v10;
  v11 = *(a1 + 80);
  v29 = v7;
  v30 = v8;
  v12 = *(a1 + 40);
  v13 = *(a1 + 96);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v16 = *(a1 + 88);
  v17 = *(a1 + 64);
  *&v18 = v15;
  *(&v18 + 1) = v17;
  *&v19 = v12;
  *(&v19 + 1) = v14;
  v31 = v19;
  v32 = v18;
  *&v20 = *(a1 + 72);
  *(&v20 + 1) = v11;
  *&v21 = v16;
  *(&v21 + 1) = v13;
  v33 = v20;
  v34 = v21;
  v22 = v8;
  v23 = v7;
  v24 = v9;
  dispatch_async(queue, block);
}

void sub_100036D28(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (v2)
  {
    if (([v2 safari_isUnrecoverableCloudKitError] & 1) != 0 || objc_msgSend(*v3, "safari_isOrContainsCloudKitMissingZoneError"))
    {
      v4 = sub_10000300C();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10003B01C(v3, v4, a1);
      }

      v5 = *(*(a1 + 40) + 40);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100037450;
      block[3] = &unk_100130EC8;
      v56 = *(a1 + 104);
      v53 = *(a1 + 48);
      v54 = *(a1 + 56);
      v55 = *(a1 + 32);
      dispatch_async(v5, block);
    }

    else if (*(*(*(a1 + 120) + 8) + 24) == 1)
    {
      v7 = sub_10000300C();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 64);
        v9 = v7;
        v10 = [v8 safari_logDescription];
        *buf = 138543362;
        v63 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Retrying save operation with %{public}@", buf, 0xCu);
      }

      v11 = *(a1 + 40);
      v12 = [*(a1 + 72) copy];
      v13 = [[WBSCloudKitOperationRetryManager alloc] initWithLog:sub_10000300C()];
      [v11 _saveCloudSettingsRecords:v12 retryManager:v13 inOperationGroup:*(a1 + 64) clientChangeTokenData:*(a1 + 80) mergeHandler:*(a1 + 112) completionHandler:*(a1 + 104)];
    }

    else if ([*v3 safari_isCloudKitBatchTooLargeError])
    {
      v14 = sub_10000300C();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10003AF7C(a1, v14);
      }

      v15 = *(*(a1 + 40) + 40);
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_100037468;
      v47[3] = &unk_100130EC8;
      v51 = *(a1 + 104);
      v48 = *(a1 + 48);
      v49 = *(a1 + 56);
      v50 = *(a1 + 32);
      dispatch_async(v15, v47);
    }

    else
    {
      v16 = [*v3 domain];
      v17 = [v16 isEqualToString:CKErrorDomain];

      if (v17)
      {
        objc_initWeak(&location, *(a1 + 40));
        v18 = *(a1 + 88);
        v19 = *(a1 + 32);
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_100037498;
        v30[3] = &unk_100132C60;
        objc_copyWeak(&v40, &location);
        v31 = *(a1 + 32);
        v32 = *(a1 + 64);
        v38 = *(a1 + 104);
        v33 = *(a1 + 48);
        v34 = *(a1 + 56);
        v35 = *(a1 + 96);
        v36 = *(a1 + 88);
        v37 = *(a1 + 80);
        v39 = *(a1 + 112);
        v20 = [v18 scheduleRetryIfNeededForError:v19 usingBlock:v30];
        if (v20 != 1)
        {
          if (v20 == 2)
          {
            v21 = sub_10000300C();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              [*(a1 + 64) safari_logDescription];
              objc_claimAutoreleasedReturnValue();
              sub_10003AF34();
            }
          }

          v22 = *(*(a1 + 40) + 40);
          v25[0] = _NSConcreteStackBlock;
          v25[1] = 3221225472;
          v25[2] = sub_1000375C4;
          v25[3] = &unk_100130EC8;
          v29 = *(a1 + 104);
          v26 = *(a1 + 48);
          v27 = *(a1 + 56);
          v28 = *(a1 + 32);
          dispatch_async(v22, v25);
        }

        objc_destroyWeak(&v40);
        objc_destroyWeak(&location);
      }

      else
      {
        v23 = sub_10000300C();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_10003AE7C(v3, v23, a1);
        }

        v24 = *(*(a1 + 40) + 40);
        v42[0] = _NSConcreteStackBlock;
        v42[1] = 3221225472;
        v42[2] = sub_100037480;
        v42[3] = &unk_100130EC8;
        v46 = *(a1 + 104);
        v43 = *(a1 + 48);
        v44 = *(a1 + 56);
        v45 = *(a1 + 32);
        dispatch_async(v24, v42);
      }
    }
  }

  else
  {
    v6 = *(*(a1 + 40) + 40);
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_100037438;
    v57[3] = &unk_100130EC8;
    v61 = *(a1 + 104);
    v58 = *(a1 + 48);
    v59 = *(a1 + 56);
    v60 = *(a1 + 32);
    dispatch_async(v6, v57);
  }
}

void sub_10003740C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v32 + 104));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100037498(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  v3 = sub_10000300C();
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = v4;
      v7 = [v5 safari_logDescription];
      v11 = 138543362;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Attempting to retry save request with %{public}@", &v11, 0xCu);
    }

    [WeakRetained _saveCloudSettingsRecords:*(a1 + 64) retryManager:*(a1 + 72) inOperationGroup:*(a1 + 40) clientChangeTokenData:*(a1 + 80) mergeHandler:*(a1 + 96) completionHandler:*(a1 + 88)];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10003B0D4(a1, v4);
    }

    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = *(a1 + 32);
    (*(*(a1 + 88) + 16))();
  }
}

void sub_100037820(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = [a4 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:0];
  v6 = *(*(a1 + 32) + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100037900;
  v10[3] = &unk_100131650;
  v11 = v5;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v12 = v7;
  v13 = v8;
  v14 = *(a1 + 48);
  v9 = v5;
  dispatch_async(v6, v10);
}

void sub_100037900(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = sub_10000300C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10003B184(v2, v3, a1);
    }
  }

  v4 = *(*(a1 + 48) + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000379E4;
  v5[3] = &unk_100130F40;
  v7 = *(a1 + 56);
  v6 = *(a1 + 32);
  dispatch_async(v4, v5);
}

void sub_100037AFC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  *(*(a1 + 32) + 64) = 0;
}

void sub_100037CA4(uint64_t a1)
{
  v2 = [CKModifyRecordZonesOperation alloc];
  v3 = sub_100033914();
  v12 = v3;
  v4 = [NSArray arrayWithObjects:&v12 count:1];
  v5 = [v2 initWithRecordZonesToSave:0 recordZoneIDsToDelete:v4];

  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_100037DD8;
  v9 = &unk_100132D28;
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  [v5 setModifyRecordZonesCompletionBlock:&v6];
  [*(a1 + 32) _scheduleOperation:v5 inOperationGroup:*(a1 + 40) operationQueue:{*(*(a1 + 32) + 24), v6, v7, v8, v9, v10}];
}

void sub_100037DD8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = [v5 safari_hasOrContainsErrorWithCloudKitErrorCode:26];
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  *(v7 + 16) = 0;

  v9 = *(a1 + 32);
  objc_sync_enter(v9);
  v10 = *(a1 + 32);
  v11 = *(v10 + 48);
  *(v10 + 48) = 0;

  objc_sync_exit(v9);
  v12 = *(*(a1 + 32) + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100037EDC;
  block[3] = &unk_100132D00;
  v13 = *(a1 + 40);
  v18 = v6;
  v16 = v5;
  v17 = v13;
  v14 = v5;
  dispatch_async(v12, block);
}

uint64_t sub_100037EDC(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    if (*(a1 + 48))
    {
      v3 = 0;
    }

    else
    {
      v3 = *(a1 + 32);
    }

    return (*(result + 16))(result, v3);
  }

  return result;
}

void sub_10003810C(uint64_t a1)
{
  v2 = [CKFetchSubscriptionsOperation alloc];
  v12 = @"CloudSettingsZoneSubscription";
  v3 = [NSArray arrayWithObjects:&v12 count:1];
  v4 = [v2 initWithSubscriptionIDs:v3];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100038240;
  v8[3] = &unk_100132D50;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = v5;
  v10 = v6;
  v11 = v7;
  [v4 setFetchSubscriptionCompletionBlock:v8];
  [*(a1 + 40) _scheduleOperation:v4 inOperationGroup:*(a1 + 32) operationQueue:*(*(a1 + 40) + 24)];
}

void sub_100038240(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:@"CloudSettingsZoneSubscription"];
  v7 = sub_10000300C();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10003B22C();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = v8;
    v11 = [v9 safari_logDescription];
    *buf = 138543362;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Successfully fetched CloudSettings zone subscription with %{public}@", buf, 0xCu);
  }

  v12 = *(*(a1 + 40) + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000383F0;
  block[3] = &unk_100130E00;
  v13 = *(a1 + 48);
  v18 = v6;
  v19 = v13;
  v17 = v5;
  v14 = v6;
  v15 = v5;
  dispatch_async(v12, block);
}

void sub_1000383F0(uint64_t a1)
{
  v2 = *(a1 + 48);
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"CloudSettingsZoneSubscription"];
  if ([*(a1 + 40) safari_isCloudKitNonExistentRecordError])
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 40);
  }

  (*(v2 + 16))(v2, v4, v3);
}

void sub_100038624(id *a1)
{
  v2 = a1[4];
  if (*(v2 + 2))
  {
    v3 = a1[7];
    v4 = *(a1[7] + 2);

    v4();
  }

  else
  {
    v5 = *(v2 + 5);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100038A34;
    block[3] = &unk_100131990;
    block[4] = v2;
    v34 = a1[7];
    dispatch_async(v5, block);
    v6 = a1[4];
    if (v6[64] == 1)
    {
      v7 = sub_10000300C();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = a1[5];
        v9 = v7;
        v10 = [v8 safari_logDescription];
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Zone creation already in progress, queuing completion handler with %{public}@", &buf, 0xCu);
      }
    }

    else
    {
      v6[64] = 1;
      *&buf = 0;
      *(&buf + 1) = &buf;
      v37 = 0x3032000000;
      v38 = sub_1000014A0;
      v39 = sub_100038A88;
      v40 = 0;
      v11 = sub_100033914();
      v12 = [CKModifyRecordZonesOperation alloc];
      v13 = [[CKRecordZone alloc] initWithZoneID:v11];
      v35 = v13;
      v14 = [NSArray arrayWithObjects:&v35 count:1];
      v15 = [v12 initWithRecordZonesToSave:v14 recordZoneIDsToDelete:0];

      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100038A90;
      v30[3] = &unk_100132DA0;
      objc_copyWeak(&v32, a1 + 8);
      v31 = a1[5];
      v16 = objc_retainBlock(v30);
      v19 = _NSConcreteStackBlock;
      v20 = 3221225472;
      v21 = sub_100038D44;
      v22 = &unk_100132E58;
      v17 = v11;
      v23 = v17;
      v24 = a1[5];
      v25 = a1[6];
      objc_copyWeak(&v29, a1 + 8);
      v18 = v16;
      v27 = v18;
      p_buf = &buf;
      v26 = a1[4];
      [v15 setModifyRecordZonesCompletionBlock:&v19];
      [a1[4] _scheduleOperation:v15 inOperationGroup:a1[5] operationQueue:{*(a1[4] + 3), v19, v20, v21, v22}];

      objc_destroyWeak(&v29);
      objc_destroyWeak(&v32);

      _Block_object_dispose(&buf, 8);
    }
  }
}

void sub_1000389F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 80));
  objc_destroyWeak((v1 + 40));
  _Block_object_dispose((v3 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_100038A34(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 56);
  v2 = objc_retainBlock(*(a1 + 40));
  [v1 addObject:v2];
}

void sub_100038A90(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = *(WeakRetained + 4);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100038C04;
    block[3] = &unk_1001314F8;
    block[4] = WeakRetained;
    v10 = v5;
    v17 = v10;
    dispatch_async(v9, block);
    v11 = v8[5];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100038C38;
    v13[3] = &unk_100132D78;
    v13[4] = v8;
    v14 = v10;
    v15 = v6;
    dispatch_async(v11, v13);
  }

  else
  {
    v12 = sub_10000300C();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10003B2D8(a1, v12);
    }
  }
}

id sub_100038C38(void *a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1[4] + 56);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = a1[5];
        v8 = a1[6];
        (*(*(*(&v10 + 1) + 8 * v6) + 16))(*(*(&v10 + 1) + 8 * v6));
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  return [*(a1[4] + 56) removeAllObjects];
}

void sub_100038D44(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = v9;
    v11 = [v9 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:*(a1 + 32)];

    v12 = sub_10000300C();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10003B368(v12, v11, a1);
    }

    v13 = *(a1 + 48);
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100039120;
    v37[3] = &unk_100132E08;
    objc_copyWeak(&v43, (a1 + 80));
    v38 = *(a1 + 40);
    v14 = *(a1 + 64);
    v15 = *(a1 + 72);
    v41 = v14;
    v42 = v15;
    v16 = v11;
    v39 = v16;
    v40 = *(a1 + 48);
    v17 = [v13 scheduleRetryIfNeededForError:v16 usingBlock:v37];
    if (v17 == 1)
    {
      v31 = sub_10000300C();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = [*(a1 + 40) safari_logDescription];
        *buf = 138543362;
        v45 = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Waiting to retry creation of CloudSettings zone with %{public}@", buf, 0xCu);
      }

      objc_destroyWeak(&v43);
    }

    else
    {
      if (v17 == 2)
      {
        v18 = sub_10000300C();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [*(a1 + 40) safari_logDescription];
          objc_claimAutoreleasedReturnValue();
          sub_10003B428();
        }
      }

      v19 = *(*(*(a1 + 72) + 8) + 40);
      (*(*(a1 + 64) + 16))();

      objc_destroyWeak(&v43);
    }
  }

  else
  {
    v20 = sub_10000300C();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 40);
      v22 = v20;
      v23 = [v21 safari_logDescription];
      *buf = 138543362;
      v45 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Successfully created CloudSettings zone with %{public}@", buf, 0xCu);
    }

    v24 = [v7 firstObject];
    v25 = *(*(a1 + 72) + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = v24;

    v27 = *(a1 + 56);
    v28 = *(a1 + 40);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000392BC;
    v33[3] = &unk_100132E30;
    v34 = v28;
    v29 = *(a1 + 64);
    v30 = *(a1 + 72);
    v35 = v29;
    v36 = v30;
    [v27 _setUpEncryptionInfoInOperationGroup:v34 withCompletionHandler:v33];

    v16 = v34;
  }
}

void sub_100039120(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[4];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000392AC;
    block[3] = &unk_100131408;
    block[4] = v3;
    dispatch_async(v4, block);
    v5 = sub_10000300C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = v5;
      v8 = [v6 safari_logDescription];
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Retrying creation of CloudSettings zone with %{public}@", buf, 0xCu);
    }

    [v3 _createCloudSettingsRecordZoneInOperationGroup:*(a1 + 32) withRetryManager:*(a1 + 48) completionHandler:&stru_100132DE0];
  }

  else
  {
    v9 = sub_10000300C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10003B470(a1, v9);
    }

    v10 = *(*(*(a1 + 64) + 8) + 40);
    v11 = *(a1 + 40);
    (*(*(a1 + 56) + 16))();
  }
}

void sub_1000392BC(void *a1, void *a2)
{
  v3 = a2;
  v4 = sub_10000300C();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10003B500();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = a1[4];
    v7 = v5;
    v8 = [v6 safari_logDescription];
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Successfully set up CloudSettings encryption info with %{public}@", &v10, 0xCu);
  }

  v9 = *(*(a1[6] + 8) + 40);
  (*(a1[5] + 16))();
}

void sub_1000395B0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = [a2 firstObject];
  v8 = [*(a1 + 32) recordID];
  v9 = [v6 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:v8];

  if (([v9 safari_isCloudKitWriteConflictError] & 1) != 0 || objc_msgSend(v9, "safari_isAtomicWriteError"))
  {
    v10 = [v9 userInfo];
    v11 = [v10 objectForKeyedSubscript:CKRecordChangedErrorServerRecordKey];

    v7 = v11;
  }

  v12 = sub_10000300C();
  v13 = v12;
  if (v7)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 40);
      v15 = v13;
      v16 = [v14 safari_logDescription];
      *buf = 138543362;
      v27 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Successfully saved/loaded record with %{public}@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_10003B5AC();
  }

  v18 = *(a1 + 48);
  v17 = *(a1 + 56);
  v19 = *(v18 + 32);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000397D4;
  v22[3] = &unk_100132EA8;
  v22[4] = v18;
  v24 = v9;
  v25 = v17;
  v23 = v7;
  v20 = v9;
  v21 = v7;
  dispatch_async(v19, v22);
}

void sub_1000397D4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100039890;
  block[3] = &unk_100130E00;
  v6 = *(a1 + 56);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  dispatch_async(v2, block);
}

uint64_t sub_100039890(void *a1)
{
  v2 = a1[6];
  if (!a1[4])
  {
    v3 = a1[5];
  }

  return (*(v2 + 16))();
}

void sub_100039B8C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 32);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100039C98;
  v12[3] = &unk_100132F20;
  v13 = v6;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v14 = v8;
  v15 = v9;
  v18 = *(a1 + 56);
  v16 = v5;
  v17 = *(a1 + 48);
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, v12);
}

void sub_100039C98(uint64_t a1)
{
  v2 = (a1 + 32);
  if (([*(a1 + 32) safari_isUnrecoverableCloudKitError] & 1) != 0 || (objc_msgSend(*v2, "safari_isCloudKitPartialFailureError") & 1) != 0 || (objc_msgSend(*v2, "safari_isCloudKitNonExistentRecordError") & 1) != 0 || objc_msgSend(*v2, "safari_isCloudKitBatchTooLargeError"))
  {
    v3 = sub_10000300C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10003B7F8(v2, v3, a1);
    }

    v4 = *(*(a1 + 48) + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003A200;
    block[3] = &unk_100130F40;
    v41 = *(a1 + 72);
    v40 = *(a1 + 32);
    dispatch_async(v4, block);
  }

  else if (!*(a1 + 56) && (([*v2 safari_isCloudKitWriteConflictError] & 1) != 0 || objc_msgSend(*v2, "safari_isAtomicWriteError")))
  {
    v7 = sub_10000300C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10003B740(v2, v7, a1);
    }

    v8 = *(*(a1 + 48) + 40);
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10003A214;
    v36[3] = &unk_100130F40;
    v38 = *(a1 + 72);
    v37 = *(a1 + 32);
    dispatch_async(v8, v36);
  }

  else if ([*v2 safari_isOrContainsCloudKitMissingZoneError])
  {
    v5 = sub_10000300C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10003B6A0(a1, v5);
    }

    v6 = *(*(a1 + 48) + 40);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10003A228;
    v33[3] = &unk_100130F40;
    v35 = *(a1 + 72);
    v34 = *(a1 + 32);
    dispatch_async(v6, v33);
  }

  else if (*(a1 + 56))
  {
    v9 = [[WBSHashGenerator alloc] initWithEncryptionInfoRecord:*(a1 + 56)];
    v10 = *(a1 + 48);
    objc_sync_enter(v10);
    v11 = *(a1 + 48);
    v12 = *(v11 + 48);
    *(v11 + 48) = v9;
    v13 = v9;

    objc_sync_exit(v10);
    v14 = *(*(a1 + 48) + 40);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10003A2D8;
    v20[3] = &unk_100130F40;
    v22 = *(a1 + 72);
    v21 = *(a1 + 32);
    dispatch_async(v14, v20);
  }

  else
  {
    objc_initWeak(&location, *(a1 + 48));
    v15 = *(a1 + 64);
    v16 = *(a1 + 32);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10003A23C;
    v26[3] = &unk_100132EF8;
    objc_copyWeak(&v31, &location);
    v27 = *(a1 + 40);
    v30 = *(a1 + 72);
    v28 = *(a1 + 32);
    v29 = *(a1 + 64);
    v17 = [v15 scheduleRetryIfNeededForError:v16 usingBlock:v26];
    if (v17 != 1)
    {
      if (v17 == 2)
      {
        v18 = sub_10000300C();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [*(a1 + 40) safari_logDescription];
          objc_claimAutoreleasedReturnValue();
          sub_10003B658();
        }
      }

      v19 = *(*(a1 + 48) + 40);
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10003A2C4;
      v23[3] = &unk_100130F40;
      v25 = *(a1 + 72);
      v24 = *(a1 + 32);
      dispatch_async(v19, v23);
    }

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }
}

void sub_10003A1D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak((v30 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10003A23C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _setUpEncryptionInfoInOperationGroup:*(a1 + 32) withRetryManager:*(a1 + 48) completionHandler:*(a1 + 56)];
  }

  else
  {
    v4 = sub_10000300C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10003B8B0(a1, v4);
    }

    v5 = *(a1 + 40);
    (*(*(a1 + 56) + 16))();
  }
}

void sub_10003A3D0(uint64_t a1)
{
  [*(a1 + 32) setDatabase:*(*(a1 + 40) + 8)];
  if (*(a1 + 48))
  {
    [*(a1 + 32) setGroup:?];
  }

  v2 = [*(a1 + 32) configuration];
  [v2 setQualityOfService:17];
  [v2 setTimeoutIntervalForRequest:30.0];
  [*(a1 + 32) setConfiguration:v2];
  [*(a1 + 56) addOperation:*(a1 + 32)];
}

void sub_10003A4F8(id a1)
{
  v1 = [[CKRecordZoneID alloc] initWithZoneName:@"CloudSettings" ownerName:CKCurrentUserDefaultName];
  v2 = qword_100153EB8;
  qword_100153EB8 = v1;
}

void sub_10003A564(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

id sub_10003A588(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  return a2;
}

id sub_10003A5A0(uint64_t *a1, void *a2)
{
  v3 = *a1;

  return a2;
}

uint64_t sub_10003A5B8(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

void sub_10003A628(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a2 + 32);
  v5 = a3;
  v6 = [sub_10001A9D4() safari_logDescription];
  sub_10003A54C();
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Record changed: %{private}@ with %{public}@", v7, 0x16u);
}

void sub_10003A6D4()
{
  sub_10003A5C4();
  sub_10003A5B8(v1, v2, 5.8381e-34);
  sub_10003A564(&_mh_execute_header, v3, v3, "Record fetch retry limit exceeded with %{public}@", v4);
}

void sub_10003A71C(uint64_t a1, void *a2)
{
  v3 = sub_10003A588(a1, a2);
  v4 = [v2 safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_10003A7B4(uint64_t *a1, void *a2)
{
  sub_10003A5A0(a1, a2);
  [sub_10001A9D4() safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_10003A57C() safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v5, v6, "Fetch record changes failed: %{public}@ with %{public}@", v7, v8, v9, v10, v11);
}

void sub_10003A858()
{
  sub_10001A9E0();
  v3 = v2;
  v4 = [sub_10001A9D4() safari_privacyPreservingDescription];
  v5 = [*(v0 + 32) safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v6, v7, "Fetch record zone changes operation failed: %{public}@ with %{public}@", v8, v9, v10, v11, v12);
}

void sub_10003A904(uint64_t a1, void *a2)
{
  sub_10003A588(a1, a2);
  v3 = [sub_10000807C() safari_logDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10003A994(uint64_t a1, void *a2)
{
  sub_10003A588(a1, a2);
  v3 = [sub_10000807C() safari_logDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10003AA24(uint64_t a1, void *a2)
{
  sub_10003A588(a1, a2);
  v3 = [sub_10000807C() safari_logDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10003AAB4(uint64_t *a1, void *a2)
{
  sub_10003A5A0(a1, a2);
  [sub_10001A9D4() safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_10003A57C() safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v5, v6, "Failed to save record due to unexpected error outside the CKErrorDomain: %{public}@ with %{public}@", v7, v8, v9, v10, v11);
}

void sub_10003AB58(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  v5 = [sub_10000807C() safari_logDescription];
  sub_100008064();
  _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Will save merged record with %{public}@", v6, 0xCu);
}

void sub_10003ABF8(uint64_t *a1, void *a2)
{
  sub_10003A5A0(a1, a2);
  [sub_10001A9D4() safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_10003A57C() safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v5, v6, "Failed to save record due to CloudKit error which could not be handled: %{public}@ with %{public}@", v7, v8, v9, v10, v11);
}

void sub_10003AC9C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  v5 = [sub_10000807C() safari_logDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);
}

void sub_10003AD34(uint64_t *a1, void *a2)
{
  sub_10003A5A0(a1, a2);
  [sub_10001A9D4() safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_10003A57C() safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v5, v6, "Failed to save record due to unrecoverable error: %{public}@ with %{public}@", v7, v8, v9, v10, v11);
}

void sub_10003ADD8(uint64_t *a1, void *a2)
{
  sub_10003A5A0(a1, a2);
  [sub_10001A9D4() safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_10003A57C() safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v5, v6, "Failed to save record due to unexpected error: %{public}@ with %{public}@", v7, v8, v9, v10, v11);
}

void sub_10003AE7C(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = sub_100008088(a1, a2);
  v6 = [v3 safari_privacyPreservingDescription];
  v7 = [*(a3 + 64) safari_logDescription];
  sub_10003A54C();
  sub_10001A9B4();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x16u);
}

void sub_10003AF34()
{
  sub_10003A5C4();
  sub_10003A5B8(v1, v2, 5.8381e-34);
  sub_10003A564(&_mh_execute_header, v3, v3, "Record save retry limit exceeded with %{public}@", v4);
}

void sub_10003AF7C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 64);
  v3 = a2;
  v4 = [v2 safari_logDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_10003B01C(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = sub_100008088(a1, a2);
  v6 = [v3 safari_privacyPreservingDescription];
  v7 = [*(a3 + 64) safari_logDescription];
  sub_10003A54C();
  sub_10001A9B4();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x16u);
}

void sub_10003B0D4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [sub_10001A9D4() safari_privacyPreservingDescription];
  v7 = [*(a1 + 40) safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v8, v9, "Modify records operation failed due to deallocation with error %{public}@ with %{public}@", v10, v11, v12, v13, v14);
}

void sub_10003B184(uint64_t *a1, void *a2, uint64_t a3)
{
  sub_10003A5A0(a1, a2);
  v5 = [sub_10001A9D4() safari_privacyPreservingDescription];
  v6 = [*(a3 + 40) safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v7, v8, "Error occurred when deleting records: %{public}@ with %{public}@", v9, v10, v11, v12, v13);
}

void sub_10003B22C()
{
  sub_10001A9E0();
  v3 = v2;
  v4 = [sub_10001A9D4() safari_privacyPreservingDescription];
  v5 = [*(v0 + 32) safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v6, v7, "Failed to fetch CloudSettings zone subscription by ID with error: %{public}@ with %{public}@", v8, v9, v10, v11, v12);
}

void sub_10003B2D8(uint64_t a1, void *a2)
{
  sub_10003A588(a1, a2);
  v3 = [sub_10000807C() safari_logDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10003B368(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 safari_privacyPreservingDescription];
  v7 = [*(a3 + 40) safari_logDescription];
  sub_10003A54C();
  sub_10001A9B4();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x16u);
}

void sub_10003B428()
{
  sub_10003A5C4();
  sub_10003A5B8(v1, v2, 5.8381e-34);
  sub_10003A564(&_mh_execute_header, v3, v3, "Zone creation retry limit exceeded with %{public}@", v4);
}

void sub_10003B470(uint64_t a1, void *a2)
{
  sub_10003A588(a1, a2);
  v3 = [sub_10000807C() safari_logDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10003B500()
{
  sub_10001A9E0();
  v3 = v2;
  v4 = [sub_10001A9D4() safari_privacyPreservingDescription];
  v5 = [*(v0 + 32) safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v6, v7, "Failed to set up CloudSettings encryption info with error: %{public}@ with %{public}@", v8, v9, v10, v11, v12);
}

void sub_10003B5AC()
{
  sub_10001A9E0();
  v3 = v2;
  v4 = [sub_10001A9D4() safari_privacyPreservingDescription];
  v5 = [*(v0 + 40) safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v6, v7, "Failed to save/load record with error: %{public}@ with %{public}@", v8, v9, v10, v11, v12);
}

void sub_10003B658()
{
  sub_10003A5C4();
  sub_10003A5B8(v1, v2, 5.8381e-34);
  sub_10003A564(&_mh_execute_header, v3, v3, "Encryption record retrieval retry limit exceeded with %{public}@", v4);
}

void sub_10003B6A0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = a2;
  v4 = [v2 safari_logDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_10003B740(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = sub_100008088(a1, a2);
  v6 = [v3 safari_privacyPreservingDescription];
  v7 = [*(a3 + 40) safari_logDescription];
  sub_10003A54C();
  sub_10001A9B4();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x16u);
}

void sub_10003B7F8(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = sub_100008088(a1, a2);
  v6 = [v3 safari_privacyPreservingDescription];
  v7 = [*(a3 + 40) safari_logDescription];
  sub_10003A54C();
  sub_10001A9B4();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x16u);
}

void sub_10003B8B0(uint64_t a1, void *a2)
{
  sub_10003A588(a1, a2);
  v3 = [sub_10000807C() safari_logDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10003C5B8(id a1)
{
  v3[0] = WBSCloudBookmarkListRecordNameFavoritesBar;
  v3[1] = WBSCloudBookmarkListRecordNameBookmarksMenu;
  v3[2] = WBSCloudBookmarkListRecordNameReadingList;
  v1 = [NSArray arrayWithObjects:v3 count:3];
  v2 = qword_100153EC8;
  qword_100153EC8 = v1;
}

void sub_10003CAB4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v12 = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Will move record %{public}@ into parent %{public}@", &v12, 0x16u);
  }

  if ([*(a1 + 32) _insertBookmarkWithRecordName:v5 intoExistingFolderWithRecordName:v6])
  {
    v8 = *(*(a1 + 32) + 40);
    v9 = v6;
LABEL_9:
    [v8 addObject:v9];
    goto LABEL_12;
  }

  v10 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_10003E36C();
  }

  if ([*(a1 + 32) _insertBookmarkWithRecordName:v5 intoExistingFolderWithRecordName:0])
  {
    v8 = *(a1 + 40);
    v9 = v5;
    goto LABEL_9;
  }

  v11 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_10003E3D4();
  }

LABEL_12:
}

void sub_10003E278(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 count];
  v5 = [a2 allObjects];
  v6 = [v5 sortedArrayUsingSelector:"compare:"];
  v7 = 134218242;
  v8 = v4;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "The temporary folder contains %ld records that were not marked as deleted or moved to their final location. Record names: %{public}@", &v7, 0x16u);
}

void sub_10003E518(uint64_t a1, void **a2, void *a3)
{
  v4 = *a2;
  v5 = a3;
  v6 = 138543618;
  v7 = a1;
  v8 = 2048;
  v9 = [v4 count];
  _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "Unexpectedly found cycle in bookmarks hierarchy since %{public}@ has already been sorted among %lu folders sorted so far", &v6, 0x16u);
}

void sub_10003E9F4(uint64_t a1)
{
  v2 = +[NSUUID UUID];
  v3 = [CKRecordID alloc];
  v4 = [v2 UUIDString];
  v5 = [[CKRecordZoneID alloc] initWithZoneName:CKRecordZoneDefaultName ownerName:CKCurrentUserDefaultName];
  v6 = [v3 initWithRecordName:v4 zoneID:v5];

  v7 = [[CKRecord alloc] initWithRecordType:@"Feedback" recordID:v6];
  v8 = WBSWebCompatibilityFeedbackURLKey;
  v9 = [*(a1 + 32) objectForKeyedSubscript:WBSWebCompatibilityFeedbackURLKey];
  [v7 setObject:v9 forKeyedSubscript:v8];

  v10 = WBSWebCompatibilityFeedbackDeviceTypeKey;
  v11 = [*(a1 + 32) objectForKeyedSubscript:WBSWebCompatibilityFeedbackDeviceTypeKey];
  [v7 setObject:v11 forKeyedSubscript:v10];

  v12 = WBSWebCompatibilityFeedbackOSVersionKey;
  v13 = [*(a1 + 32) objectForKeyedSubscript:WBSWebCompatibilityFeedbackOSVersionKey];
  [v7 setObject:v13 forKeyedSubscript:v12];

  v14 = WBSWebCompatibilityFeedbackOSVersionExtraKey;
  v15 = [*(a1 + 32) objectForKeyedSubscript:WBSWebCompatibilityFeedbackOSVersionExtraKey];
  [v7 setObject:v15 forKeyedSubscript:v14];

  v16 = WBSWebCompatibilityFeedbackOSBuildVersionKey;
  v17 = [*(a1 + 32) objectForKeyedSubscript:WBSWebCompatibilityFeedbackOSBuildVersionKey];
  [v7 setObject:v17 forKeyedSubscript:v16];

  v18 = WBSWebCompatibilityFeedbackSafariVersionKey;
  v19 = [*(a1 + 32) objectForKeyedSubscript:WBSWebCompatibilityFeedbackSafariVersionKey];
  [v7 setObject:v19 forKeyedSubscript:v18];

  v20 = WBSWebCompatibilityFeedbackViewportWidthKey;
  v21 = [*(a1 + 32) objectForKeyedSubscript:WBSWebCompatibilityFeedbackViewportWidthKey];
  [v7 setObject:v21 forKeyedSubscript:v20];

  v22 = WBSWebCompatibilityFeedbackViewportHeightKey;
  v23 = [*(a1 + 32) objectForKeyedSubscript:WBSWebCompatibilityFeedbackViewportHeightKey];
  [v7 setObject:v23 forKeyedSubscript:v22];

  v24 = WBSWebCompatibilityFeedbackWebPageZoomFactorKey;
  v25 = [*(a1 + 32) objectForKeyedSubscript:WBSWebCompatibilityFeedbackWebPageZoomFactorKey];
  [v7 setObject:v25 forKeyedSubscript:v24];

  v26 = WBSWebCompatibilityFeedbackWebPageScaleKey;
  v27 = [*(a1 + 32) objectForKeyedSubscript:WBSWebCompatibilityFeedbackWebPageScaleKey];
  [v7 setObject:v27 forKeyedSubscript:v26];

  v28 = WBSWebCompatibilityFeedbackExperimentalFeaturesEnabledKey;
  v29 = [*(a1 + 32) objectForKeyedSubscript:WBSWebCompatibilityFeedbackExperimentalFeaturesEnabledKey];
  [v7 setObject:v29 forKeyedSubscript:v28];

  v30 = WBSWebCompatibilityFeedbackLockdownModeEnabledKey;
  v31 = [*(a1 + 32) objectForKeyedSubscript:WBSWebCompatibilityFeedbackLockdownModeEnabledKey];
  [v7 setObject:v31 forKeyedSubscript:v30];

  v32 = WBSWebCompatibilityFeedbackPrivateRelayEnabledKey;
  v33 = [*(a1 + 32) objectForKeyedSubscript:WBSWebCompatibilityFeedbackPrivateRelayEnabledKey];
  [v7 setObject:v33 forKeyedSubscript:v32];

  v34 = WBSWebCompatibilityFeedbackIssueCategoryKey;
  v35 = [*(a1 + 32) objectForKeyedSubscript:WBSWebCompatibilityFeedbackIssueCategoryKey];
  v36 = [v35 integerValue];

  v37 = [WBSSafariWebCompatibilityFeedbackSyncEngine telemetryStringForCategory:v36];
  [v7 setObject:v37 forKeyedSubscript:v34];

  v38 = WBSWebCompatibilityFeedbackIssueSubCategoryKey;
  v39 = [*(a1 + 32) objectForKeyedSubscript:WBSWebCompatibilityFeedbackIssueSubCategoryKey];
  v40 = [v39 integerValue];

  v41 = [WBSSafariWebCompatibilityFeedbackSyncEngine telemetryStringForSubCategory:v40];
  [v7 setObject:v41 forKeyedSubscript:v38];

  v42 = [CKModifyRecordsOperation alloc];
  v50 = v7;
  v43 = [NSArray arrayWithObjects:&v50 count:1];
  v44 = [v42 initWithRecordsToSave:v43 recordIDsToDelete:0];

  v45 = [v44 configuration];
  [v45 setPreferAnonymousRequests:1];

  [v44 setPerRecordSaveBlock:&stru_100133070];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_10003EFD0;
  v48[3] = &unk_100131588;
  v49 = *(a1 + 40);
  [v44 setModifyRecordsCompletionBlock:v48];
  v46 = +[CKContainer safari_webCompatibilityFeedbackContainer];
  v47 = [v46 publicCloudDatabase];
  [v47 addOperation:v44];
}

void sub_10003EF64(id a1, CKRecordID *a2, CKRecord *a3, NSError *a4)
{
  v5 = a2;
  v6 = a4;
  if (v6)
  {
    v7 = sub_1000D2570();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10003F048(v7, v6, v5);
    }
  }
}

void sub_10003EFD0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  if (v5)
  {
    v6 = sub_1000D2570();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10003F100(v6, v5);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10003F048(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:a3];
  v7 = 138543362;
  v8 = v6;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to create Web Compatibility feedback with error: %{public}@", &v7, 0xCu);
}

void sub_10003F100(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingError];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to save Web Compatibility feedback records with error: %{public}@", &v5, 0xCu);
}

void sub_10003FC60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003FCC4(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = *(a1 + 32);
  v13 = v6;
  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 code]);
  LODWORD(v7) = [v7 containsObject:v8];

  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  else if (*(a1 + 48) == 1)
  {
    v9 = [v13 userInfo];
    v10 = [v9 objectForKeyedSubscript:NSUnderlyingErrorKey];

    if (v10)
    {
      v11 = *(a1 + 32);
      v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 code]);
      LODWORD(v11) = [v11 containsObject:v12];

      if (v11)
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
        *a4 = 1;
      }
    }
  }
}

id sub_10003FE40(void *a1)
{
  v1 = qword_100153EE0;
  v2 = a1;
  if (v1 != -1)
  {
    sub_100040A7C();
  }

  v3 = [qword_100153ED8 objectForKeyedSubscript:v2];

  v4 = [v3 integerValue];
  return v4;
}

void sub_10003FEAC(id a1)
{
  v1 = qword_100153ED8;
  qword_100153ED8 = &off_10013CBC0;
}

void sub_100040A90(void *a1)
{
  v1 = a1;
  v3 = 138543362;
  v4 = objc_opt_class();
  v2 = v4;
  _os_log_fault_impl(&_mh_execute_header, v1, OS_LOG_TYPE_FAULT, "Migration state value in server record is of type %{public}@ when NSNumber was expected", &v3, 0xCu);
}

void sub_100040B38(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Migration state server record value (%{public}@) does not match expected state values", &v2, 0xCu);
}

void sub_1000428A0(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x640], 8);
  _Block_object_dispose(&STACK[0x690], 8);
  _Unwind_Resume(a1);
}

void sub_1000429DC(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_100042A3C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    [*(a1 + 32) addObject:v8];
    v10 = *(a1 + 40);
    v11 = [v7 zoneID];
    v12 = [v10 objectForKeyedSubscript:v11];

    if (!v12)
    {
      v12 = +[NSMutableArray array];
      v13 = *(a1 + 40);
      v14 = [v7 zoneID];
      [v13 setObject:v12 forKeyedSubscript:v14];
    }

    [v12 addObject:v8];
    v15 = *(a1 + 48);
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100042D20;
    v32[3] = &unk_100133188;
    v16 = v8;
    v33 = v16;
    v17 = [v15 safari_firstObjectPassingTest:v32];
    if (v17)
    {
      [*(a1 + 56) addObject:v16];
      v18 = *(a1 + 64);
      v19 = [v16 recordType];
      [v18 addObject:v19];

      v20 = [v16 objectForKeyedSubscript:@"Deleted"];
      v21 = v20;
      v22 = &off_10013C428;
      if (v20)
      {
        v22 = v20;
      }

      v23 = v22;

      v24 = [*(a1 + 72) objectForKeyedSubscript:v23];
      if (!v24)
      {
        v24 = +[NSCountedSet set];
        [*(a1 + 72) setObject:v24 forKeyedSubscript:v23];
      }

      v25 = [v16 recordType];
      [v24 addObject:v25];
    }

    v26 = *(a1 + 80);
    v27 = [v16 recordType];
    v28 = [v26 objectForKeyedSubscript:v27];

    if (!v28)
    {
      v28 = +[NSMutableArray array];
      v29 = *(a1 + 80);
      v30 = [v16 recordType];
      [v29 setObject:v28 forKeyedSubscript:v30];
    }

    [v28 addObject:v16];
  }

  else
  {
    v31 = [v7 ckShortDescription];
    WBSPrintf();
  }
}

void sub_100042D2C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v5 zoneID];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (!v9)
  {
    v9 = +[NSMutableArray array];
    v10 = *(a1 + 32);
    v11 = [v5 zoneID];
    [v10 setObject:v9 forKeyedSubscript:v11];
  }

  v12 = [[WBSPair alloc] initWithFirst:v5 second:v6];
  [v9 addObject:v12];

  v13 = [*(a1 + 40) objectForKeyedSubscript:v6];
  if (!v13)
  {
    v13 = +[NSMutableArray array];
    [*(a1 + 40) setObject:v13 forKeyedSubscript:v6];
  }

  [v13 addObject:v5];
  [*(a1 + 48) addObject:v5];
  v14 = *(a1 + 56);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100042F04;
  v17[3] = &unk_100133188;
  v15 = v6;
  v18 = v15;
  v16 = [v14 safari_firstObjectPassingTest:v17];
  if (v16)
  {
    [*(a1 + 64) addObject:v5];
    [*(a1 + 72) addObject:v15];
  }
}

void sub_100042F10(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = a4;
    v11 = a3;
    v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v9 scope]);
    v13 = [v8 objectForKeyedSubscript:v12];
    [v13 addObjectsFromArray:v11];

    v14 = *(a1 + 48);
    v15 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 40) scope]);
    v16 = [v14 objectForKeyedSubscript:v15];
    [v16 addObjectsFromArray:v10];
  }

  v17 = *(a1 + 56);

  dispatch_group_leave(v17);
}

uint64_t sub_100043020(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) containsObject:v5] && !objc_msgSend(*(a1 + 32), "containsObject:", v6))
  {
    v7 = -1;
  }

  else if (([*(a1 + 32) containsObject:v5] & 1) != 0 || (objc_msgSend(*(a1 + 32), "containsObject:", v6) & 1) == 0)
  {
    v7 = [v5 compare:v6];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

int64_t sub_1000430C8(id a1, CKRecord *a2, CKRecord *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(CKRecord *)v4 recordID];
  v7 = [v6 recordName];

  v8 = [(CKRecord *)v5 recordID];
  v9 = [v8 recordName];

  if ([v7 isEqualToString:@"UserTabGroupPresence"] && !objc_msgSend(v9, "isEqualToString:", @"UserTabGroupPresence"))
  {
    goto LABEL_7;
  }

  if ([v7 isEqualToString:@"UserTabGroupPresence"] & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", @"UserTabGroupPresence"))
  {
LABEL_10:
    v12 = 1;
    goto LABEL_11;
  }

  v10 = [(CKRecord *)v4 safari_isInPrivateDatabase];
  v11 = [(CKRecord *)v5 safari_isInPrivateDatabase];
  if (!v10 || v11)
  {
    if (v10 & 1 | ((v11 & 1) == 0))
    {
      v12 = [v7 compare:v9];
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_7:
  v12 = -1;
LABEL_11:

  return v12;
}

int64_t sub_1000431EC(id a1, CKRecordID *a2, CKRecordID *a3)
{
  v4 = a3;
  v5 = [(CKRecordID *)a2 recordName];
  v6 = [(CKRecordID *)v4 recordName];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_100043264(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [v9 integerValue];
  if (v6 >= 3)
  {
    v7 = [NSString stringWithFormat:@"NumberOfRecordsWithState <%@>", v9];
  }

  else
  {
    v7 = off_1001336D0[v6];
  }

  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 countForObject:*(a1 + 40)]);
  [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
}

id sub_100043344(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 _namesByUserRecordIDsForShare:v5];
  [v3 addEntriesFromDictionary:v6];

  v7 = [*(a1 + 40) _dictionaryRepresentationForCKShare:v5];

  return v7;
}

void sub_1000433C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  [v5 sortUsingComparator:&stru_100133358];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100043520;
  v10[3] = &unk_100133380;
  v10[4] = *(a1 + 40);
  v7 = [v5 safari_mapObjectsUsingBlock:v10];

  v8 = *(a1 + 32);
  v9 = [v6 ckShortDescription];

  [v8 setObject:v7 forKeyedSubscript:v9];
}

int64_t sub_1000434B0(id a1, CKRecord *a2, CKRecord *a3)
{
  v4 = a3;
  v5 = [(CKRecord *)a2 modificationDate];
  v6 = [(CKRecord *)v4 modificationDate];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_10004352C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = [a3 safari_mapObjectsUsingBlock:&stru_1001333E8];
  v6 = *(a1 + 32);
  v7 = [v5 ckShortDescription];

  [v6 setObject:v8 forKeyedSubscript:v7];
}

NSString *__cdecl sub_1000435C0(id a1, WBSPair *a2)
{
  v2 = a2;
  v3 = [(WBSPair *)v2 first];
  v4 = [v3 ckShortDescription];
  v5 = [(WBSPair *)v2 second];

  v6 = [NSString stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

NSMutableArray *__cdecl sub_10004366C(id a1, NSNumber *a2)
{
  v2 = a2;
  v3 = [(NSNumber *)v2 integerValue];
  if (v3 == 2)
  {
    [NSMutableArray arrayWithObjects:@"Migrated", &stru_100137BA8, 0];
    goto LABEL_7;
  }

  if (v3 == 1)
  {
    [NSMutableArray arrayWithObjects:@"Deleted", &stru_100137BA8, 0];
    goto LABEL_7;
  }

  if (!v3)
  {
    [NSMutableArray arrayWithObjects:@"Existing", &stru_100137BA8, 0];
    v4 = LABEL_7:;
    goto LABEL_9;
  }

  v5 = [NSString stringWithFormat:@"State <%@>", v2];
  v4 = [NSMutableArray arrayWithObjects:v5, &stru_100137BA8, 0];

LABEL_9:

  return v4;
}

void sub_100043774(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectAtIndexedSubscript:a3];
  [v7 addObject:v6];

  v8 = [v6 length];
  v9 = [*(a1 + 40) objectAtIndexedSubscript:a3];
  v10 = [v9 unsignedIntegerValue];

  if (v8 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v8;
  }

  v12 = [NSNumber numberWithUnsignedInteger:v11];
  [*(a1 + 40) setObject:v12 atIndexedSubscript:a3];
}

id sub_100043850(void *a1, void *a2, uint64_t a3)
{
  v4 = a1[4];
  if (a1[6] == 1)
  {
    v5 = a2;
    v6 = [v5 unsignedIntegerValue];

    v7 = [&stru_100137BA8 stringByPaddingToLength:v6 + 2 withString:@"=" startingAtIndex:0];
    [v4 appendString:v7];
  }

  else
  {
    v9 = a1[5];
    v10 = a2;
    v7 = [v9 objectAtIndexedSubscript:a3];
    v11 = [v7 objectAtIndexedSubscript:a1[6]];
    v12 = [v10 unsignedIntegerValue];

    v13 = [v11 stringByPaddingToLength:v12 withString:@" " startingAtIndex:0];
    [v4 appendFormat:@" %@ ", v13];
  }

  v14 = a1[4];

  return [v14 appendString:@"|"];
}

void sub_100043980(uint64_t a1)
{
  v1 = a1;
  if ([*(a1 + 32) count])
  {
    WBSDPrintf();
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    obj = v1[5];
    v2 = [obj countByEnumeratingWithState:&v92 objects:v100 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v93;
      do
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v93 != v4)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v92 + 1) + 8 * i);
          v7 = [v1[4] objectForKeyedSubscript:v6];
          v8 = [v7 sortedArrayUsingComparator:&stru_1001334C0];

          if ([v8 count])
          {
            v54 = v6;
            WBSDPrintf();
            v90 = 0u;
            v91 = 0u;
            v88 = 0u;
            v89 = 0u;
            v9 = v8;
            v10 = [v9 countByEnumeratingWithState:&v88 objects:v99 count:{16, v54}];
            if (v10)
            {
              v11 = v10;
              v12 = *v89;
              do
              {
                for (j = 0; j != v11; j = j + 1)
                {
                  if (*v89 != v12)
                  {
                    objc_enumerationMutation(v9);
                  }

                  v53 = [*(*(&v88 + 1) + 8 * j) ckShortDescription];
                  WBSDPrintf();
                }

                v11 = [v9 countByEnumeratingWithState:&v88 objects:v99 count:{16, v53}];
              }

              while (v11);
            }

            v1 = a1;
          }
        }

        v3 = [obj countByEnumeratingWithState:&v92 objects:v100 count:16];
      }

      while (v3);
    }
  }

  v64 = +[NSMutableDictionary dictionary];
  v14 = [v1[6] objectForKeyedSubscript:CKRecordTypeShare];
  v60 = v14;
  if ([v14 count])
  {
    WBSDPrintf();
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v61 = v14;
    v63 = [v61 countByEnumeratingWithState:&v84 objects:v98 count:16];
    if (v63)
    {
      v62 = *v85;
      do
      {
        v15 = 0;
        do
        {
          if (*v85 != v62)
          {
            objc_enumerationMutation(v61);
          }

          v65 = v15;
          v16 = *(*(&v84 + 1) + 8 * v15);
          v17 = [v1[7] _namesByUserRecordIDsForShare:v16];
          [v64 addEntriesFromDictionary:v17];

          v18 = [v16 recordID];
          v19 = [v18 ckShortDescription];
          v20 = [v16 URL];
          [v16 publicPermission];
          v21 = CKStringFromParticipantPermission();
          v22 = [v16 participants];
          v59 = [v22 count];
          WBSDPrintf();

          v70 = [v16 owner];
          v69 = [v16 currentUserParticipant];
          v80 = 0u;
          v81 = 0u;
          v82 = 0u;
          v83 = 0u;
          v67 = [v16 participants];
          v71 = [v67 countByEnumeratingWithState:&v80 objects:v97 count:16];
          if (v71)
          {
            v68 = *v81;
            do
            {
              for (k = 0; k != v71; k = k + 1)
              {
                if (*v81 != v68)
                {
                  objc_enumerationMutation(v67);
                }

                v24 = *(*(&v80 + 1) + 8 * k);
                v25 = [v24 userIdentity];
                v26 = [v25 userRecordID];
                v27 = v26;
                if (!v26)
                {
                  v27 = *(*(a1 + 56) + 8);
                }

                v28 = v27;

                obja = v28;
                v29 = [v28 recordName];
                if ([v24 isEqual:v70])
                {
                  v30 = [v29 stringByAppendingString:@" (Owner)"];

                  v29 = v30;
                }

                if ([v24 isEqual:v69])
                {
                  v31 = [v29 stringByAppendingString:@" (Current User)"];

                  v29 = v31;
                }

                WBSDPrintf();
                v32 = [v25 nameComponents];
                if (v32)
                {
                  v33 = [NSPersonNameComponentsFormatter localizedStringFromPersonNameComponents:v32 style:3 options:0];
                  if ([v33 length])
                  {
                    v55 = v33;
                    WBSDPrintf();
                  }
                }

                else
                {
                  v33 = 0;
                }

                v34 = [v25 lookupInfo];
                v35 = [v34 emailAddress];

                if ([v35 length])
                {
                  v56 = v35;
                  WBSDPrintf();
                }

                [v24 role];
                v36 = CKStringFromParticipantRole();
                [v24 acceptanceStatus];
                v37 = CKStringFromParticipantAcceptanceStatus();
                [v24 permission];
                CKStringFromParticipantPermission();
                v58 = v57 = v37;
                v53 = v36;
                WBSDPrintf();
              }

              v71 = [v67 countByEnumeratingWithState:&v80 objects:v97 count:{16, v36, v37, v58}];
            }

            while (v71);
          }

          v1 = a1;
          v15 = v65 + 1;
        }

        while ((v65 + 1) != v63);
        v63 = [v61 countByEnumeratingWithState:&v84 objects:v98 count:16];
      }

      while (v63);
    }

    v14 = v60;
  }

  if ([v1[8] count])
  {
    WBSDPrintf();
    WBSDPrintf();
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v72 = v1[8];
    v38 = [v72 countByEnumeratingWithState:&v76 objects:v96 count:16];
    if (v38)
    {
      v39 = v38;
      objb = *v77;
      do
      {
        for (m = 0; m != v39; m = m + 1)
        {
          if (*v77 != objb)
          {
            objc_enumerationMutation(v72);
          }

          v41 = *(*(&v76 + 1) + 8 * m);
          v42 = [v41 objectForKeyedSubscript:{@"Participant", v53, v57, v58}];
          v43 = [v42 recordID];

          v44 = [v41 objectForKeyedSubscript:@"TabGroupTab"];
          v45 = [v44 recordID];

          v46 = [v41 recordID];
          v47 = [v46 recordName];
          v48 = [v47 isEqualToString:@"UserTabGroupPresence"];

          if (v48)
          {
            v49 = [v45 ckShortDescription];
            v53 = v49;
            WBSDPrintf();
          }

          else
          {
            v49 = [v43 recordName];
            if (([v49 isEqualToString:CKCurrentUserDefaultName] & 1) != 0 || objc_msgSend(v43, "isEqual:", *(*(*(a1 + 72) + 8) + 40)))
            {
              v50 = [*(*(*(a1 + 72) + 8) + 40) recordName];
              v51 = [NSString stringWithFormat:@"%@ (Current User)", v50];

              v49 = v51;
            }

            v52 = [v64 objectForKeyedSubscript:v43];
            [v45 ckShortDescription];
            v58 = v57 = v52;
            v53 = v49;
            WBSDPrintf();
          }
        }

        v39 = [v72 countByEnumeratingWithState:&v76 objects:v96 count:16];
      }

      while (v39);
    }

    v14 = v60;
  }
}

int64_t sub_100044264(id a1, CKRecordID *a2, CKRecordID *a3)
{
  v4 = a3;
  v5 = [(CKRecordID *)a2 recordName];
  v6 = [(CKRecordID *)v4 recordName];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t sub_1000442D4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _printTreeWithRecords:*(a1 + 40) deletedRecordIDs:*(a1 + 48) includingDeletedBookmarks:(*(a1 + 72) & 1) == 0 targetFileDescriptor:a2];
  result = (*(*(a1 + 64) + 16))();
  if (*(a1 + 73) == 1)
  {
    v4 = *(a1 + 56);
    return WBSDPrintf();
  }

  return result;
}

uint64_t sub_100044354(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _printOrderedRecords:*(a1 + 40) deletedRecordIDs:*(a1 + 48) targetFileDescriptor:a2];
  result = (*(*(a1 + 64) + 16))();
  if (*(a1 + 72) == 1)
  {
    v4 = *(a1 + 56);
    return WBSDPrintf();
  }

  return result;
}

void sub_100044820(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 24);
  v4 = a2;
  v5 = [v3 cloudBookmarkItemConfigurationForRecord:v4];
  v6 = [[CloudBookmarkRecordWrapper alloc] initWithRecord:v4 configuration:v5];

  v7 = *(a1 + 40);
  v8 = [(CloudBookmarkRecordWrapper *)v6 recordID];
  [v7 setObject:v6 forKeyedSubscript:v8];

  v9 = [(CloudBookmarkRecordWrapper *)v6 parentRecordID];
  v10 = v9;
  if (!v9)
  {
    v10 = *(*(a1 + 32) + 8);
  }

  v11 = v10;

  v12 = [*(a1 + 48) objectForKeyedSubscript:v11];
  if (!v12)
  {
    v12 = +[NSMutableArray array];
    [*(a1 + 48) setObject:v12 forKeyedSubscript:v11];
  }

  v13 = [v12 count];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000449CC;
  v14[3] = &unk_100133560;
  v15 = *(a1 + 56);
  [v12 insertObject:v6 atIndex:{objc_msgSend(v12, "indexOfObject:inSortedRange:options:usingComparator:", v6, 0, v13, 1024, v14)}];
}

uint64_t sub_1000449CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v5 recordName];
  v9 = [v7 indexOfObject:v8];

  v10 = *(a1 + 32);
  v11 = [v6 recordName];
  v12 = [v10 indexOfObject:v11];

  if (v9 < v12)
  {
    goto LABEL_2;
  }

  if (v9 > v12)
  {
    goto LABEL_5;
  }

  v14 = [v5 position];
  if (v14)
  {
    v15 = v14;
    v16 = [v6 position];

    if (!v16)
    {
LABEL_2:
      v13 = -1;
      goto LABEL_12;
    }
  }

  v17 = [v5 position];
  if (v17)
  {

    goto LABEL_10;
  }

  v23 = [v6 position];

  if (v23)
  {
LABEL_5:
    v13 = 1;
    goto LABEL_12;
  }

LABEL_10:
  v18 = [v5 position];
  v19 = [v6 position];
  v13 = [v18 compare:v19];

  if (!v13)
  {
    v20 = [v5 recordName];
    v21 = [v6 recordName];
    v13 = [v20 compare:v21];
  }

LABEL_12:

  return v13;
}

void sub_100044B5C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (!v7)
  {
    v7 = -[CloudBookmarkRecordWrapper initAsPlaceholderParentWithRecordID:isTombstone:]([CloudBookmarkRecordWrapper alloc], "initAsPlaceholderParentWithRecordID:isTombstone:", v5, [*(a1 + 40) containsObject:v5] ^ 1);
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v5];
    v8 = *(a1 + 48);
    v9 = [v8 count];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100044D80;
    v20[3] = &unk_100133560;
    v20[4] = *(a1 + 56);
    [*(a1 + 48) insertObject:v7 atIndex:{objc_msgSend(v8, "indexOfObject:inSortedRange:options:usingComparator:", v7, 0, v9, 1024, v20)}];
  }

  [v7 setNumberOfChildren:{objc_msgSend(v6, "count")}];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v17;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v10);
        }

        if ([*(*(&v16 + 1) + 8 * i) state] == 1)
        {
          ++v13;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  [v7 setNumberOfDeletedChildren:v13];
}

uint64_t sub_100044D80(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 recordName];
  v8 = [v5 recordName];
  v9 = [v7 compare:v8];

  if (!v9)
  {
    v14 = [v6 recordID];

    v15 = [v14 zoneID];

    v16 = [v5 recordID];
    v17 = [v16 zoneID];

    v18 = [*(*(a1 + 32) + 24) bookmarksRecordZoneID];
    v19 = [v15 isEqual:v18];

    v20 = [*(*(a1 + 32) + 24) bookmarksRecordZoneID];
    v21 = [v17 isEqual:v20];

    v22 = v21 ^ 1;
    if (((v19 ^ 1) & 1) == 0 && !v22)
    {
      v13 = 0;
LABEL_19:

      goto LABEL_20;
    }

    if ((v19 ^ 1 | v21))
    {
      if (((v19 | v22) & 1) == 0)
      {
        goto LABEL_17;
      }

      v25 = [v15 ownerName];
      v26 = [v25 isEqualToString:CKCurrentUserDefaultName];

      v27 = [v17 ownerName];
      v28 = [v27 isEqualToString:CKCurrentUserDefaultName];

      v29 = v28 ^ 1;
      if (((v26 ^ 1) & 1) == 0 && !v29)
      {
        goto LABEL_14;
      }

      if ((v26 ^ 1 | v28))
      {
        if ((v26 | v29))
        {
LABEL_14:
          v30 = [v15 zoneName];
          v31 = [v17 zoneName];
          v13 = [v30 compare:v31];

          goto LABEL_19;
        }

LABEL_17:
        v13 = 1;
        goto LABEL_19;
      }
    }

    v13 = -1;
    goto LABEL_19;
  }

  v10 = [v6 recordName];

  v11 = WBSCloudBookmarkListRecordNameTopBookmark;
  v12 = [v10 isEqualToString:WBSCloudBookmarkListRecordNameTopBookmark];

  if (v12)
  {
    v13 = -1;
  }

  else
  {
    v23 = [v5 recordName];
    v24 = [v23 isEqualToString:v11];

    if (v24)
    {
      v13 = 1;
    }

    else
    {
      v13 = v9;
    }
  }

LABEL_20:

  return v13;
}

void sub_100045240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100045258(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v27 = v5;
  if ((*(a1 + 44) & 1) != 0 || (v6 = [v5 state] == 1, v5 = v27, !v6))
  {
    if ([v5 isRoot])
    {
      v7 = *(a1 + 40);
      v8 = [v27 recordID];
      v9 = [v8 zoneID];
      v10 = [(__CFString *)v9 ckShortDescription];
      v11 = [v27 numberOfChildrenString];
    }

    else
    {
      if (![v27 isPlaceholder])
      {
        v8 = [&stru_100137BA8 stringByPaddingToLength:4 * a3 withString:@" " startingAtIndex:0];
        v16 = [v27 state];
        if (v16 >= 3)
        {
          v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"(%zd)", [v27 state]);
        }

        else
        {
          v9 = off_1001336E8[v16];
        }

        if ([v27 isFolderRecord])
        {
          v17 = [v27 symbolImageName];
          v10 = [NSString stringWithFormat:@", symbol: %@", v17];

          v25 = *(a1 + 40);
          [v27 minimumAPIVersion];
          v11 = [v27 record];
          v18 = [(__CFString *)v11 recordID];
          v19 = [v18 ckShortDescription];
          v20 = [v27 numberOfChildrenString];
          v21 = [v27 title];
          v22 = [v27 position];
        }

        else
        {
          v26 = *(a1 + 40);
          [v27 minimumAPIVersion];
          v10 = [v27 record];
          v11 = [v10 recordID];
          v18 = [(__CFString *)v11 ckShortDescription];
          v19 = [v27 title];
          v20 = [v27 url];
          v23 = [v27 isPinned];
          v24 = @"NO";
          if (v23)
          {
            v24 = @"YES";
          }

          v22 = v24;
          v21 = [v27 position];
        }

        WBSDPrintf();

        goto LABEL_19;
      }

      v12 = *(a1 + 40);
      WBSDPrintf();
      *(*(*(a1 + 32) + 8) + 24) = 1;
      v13 = [v27 isTombstone];
      v14 = @"UNKNOWN";
      if (v13)
      {
        v14 = @"TOMBSTONE";
      }

      v15 = *(a1 + 40);
      v11 = v14;
      v8 = [v27 recordID];
      v9 = [v8 ckShortDescription];
      v10 = [v27 numberOfChildrenString];
    }

    WBSDPrintf();
LABEL_19:

    v5 = v27;
  }
}

int64_t sub_100045D50(id a1, CKRecord *a2, CKRecord *a3)
{
  v4 = a3;
  v5 = [(CKRecord *)a2 modificationDate];
  v6 = [(CKRecord *)v4 modificationDate];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_100045F9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v18 = v3;
  if ((*(a1 + 56) & 1) != 0 || (v5 = [v3 state], v4 = v18, v5 != 1))
  {
    v6 = [v4 isRoot];
    v4 = v18;
    if ((v6 & 1) == 0)
    {
      v7 = [v18 recordName];
      v8 = [v18 isPlaceholder];
      v9 = [*(a1 + 32) _dictionaryRepresentationForRecordWrapper:v18];
      v10 = [v9 mutableCopy];

      if (v8)
      {
        v11 = +[NSMutableArray array];
        [*(a1 + 40) setObject:v11 forKeyedSubscript:v7];
        v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"total: %ld, live: %ld, deleted: %ld", [v18 numberOfChildren], objc_msgSend(v18, "numberOfLiveChildren"), objc_msgSend(v18, "numberOfDeletedChildren"));
        [v10 setObject:v12 forKeyedSubscript:@"NumberOfChildren"];

        [v10 setObject:v11 forKeyedSubscript:@"Children"];
        [*(a1 + 48) addObject:v10];
      }

      else
      {
        if ([v18 isFolderRecord])
        {
          v13 = +[NSMutableArray array];
          [*(a1 + 40) setObject:v13 forKeyedSubscript:v7];
          v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"total: %ld, live: %ld, deleted: %ld", [v18 numberOfChildren], objc_msgSend(v18, "numberOfLiveChildren"), objc_msgSend(v18, "numberOfDeletedChildren"));
          [v10 setObject:v14 forKeyedSubscript:@"NumberOfChildren"];

          [v10 setObject:v13 forKeyedSubscript:@"Children"];
        }

        v15 = *(a1 + 40);
        v16 = [v18 parentRecordName];
        v11 = [v15 objectForKeyedSubscript:v16];

        v17 = [v10 copy];
        [v11 addObject:v17];
      }

      v4 = v18;
    }
  }
}

void sub_100047DC0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = *(a1 + 32);
  if (v15)
  {
    v28 = *(a1 + 32);
    WBSPrintf();
    (*(*(a1 + 48) + 16))(*(a1 + 48), 0);
  }

  else
  {
    v17 = [v12 count];
    v18 = [v13 count];
    v33 = [v14 count];
    WBSPrintf();
    if ([v12 count])
    {
      v19 = [v12 valueForKey:@"ckShortDescription"];
      v20 = [v19 sortedArrayUsingSelector:"compare:"];
      v29 = [v20 componentsJoinedByString:@"\n\t\t"];
      WBSPrintf();
    }

    if ([v13 count])
    {
      v21 = [v13 valueForKey:@"ckShortDescription"];
      v22 = [v21 sortedArrayUsingSelector:"compare:"];
      v30 = [v22 componentsJoinedByString:@"\n\t\t"];
      WBSPrintf();
    }

    if ([v14 count])
    {
      v23 = [v14 valueForKey:@"ckShortDescription"];
      v24 = [v23 sortedArrayUsingSelector:"compare:"];
      v31 = [v24 componentsJoinedByString:@"\n\t\t"];
      WBSPrintf();
    }

    if ([v12 count])
    {
      v25 = *(a1 + 32);
      v26 = *(*(a1 + 40) + 24);
      v27 = *(a1 + 64);
      v34 = *(a1 + 56);
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_100048128;
      v35[3] = &unk_100133688;
      v36 = v25;
      v41 = *(a1 + 48);
      v37 = v11;
      v38 = v12;
      v39 = v13;
      v40 = v14;
      [v26 fetchRecordZoneChangesInZonesWithIDs:v38 perZoneConfigurations:0 inDatabase:v36 operationGroup:0 recordWasChangedBlock:v34 recordWithIDWasDeletedBlock:v27 recordZoneFetchCompletionBlock:&stru_100133660 completionHandler:v35];
    }

    else
    {
      v32 = *(a1 + 32);
      WBSPrintf();
      (*(*(a1 + 48) + 16))(*(a1 + 48), v11);
    }
  }
}

void sub_100048128(void *a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v6 = a1[4];
    WBSPrintf();
    (*(a1[9] + 16))(a1[9], 0);
  }

  else
  {
    v3 = a1[8];
    v4 = a1[6];
    v5 = a1[7];
    (*(a1[9] + 16))(a1[9], a1[5]);
  }
}

void sub_100048BC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100048BE0(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    v9 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = @"Tab Collection Maintenance";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Running %{public}@ activity", buf, 0xCu);
    }

    if (xpc_activity_set_state(v3, 4))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      if (!WeakRetained)
      {
LABEL_15:

        goto LABEL_19;
      }

      v10 = os_transaction_create();
      v11 = WeakRetained[1];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100048F38;
      block[3] = &unk_100132D78;
      v14 = v10;
      v15 = WeakRetained;
      v16 = v3;
      v8 = v10;
      dispatch_async(v11, block);

LABEL_14:
      goto LABEL_15;
    }

    v12 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000491DC(v12);
    }

    xpc_activity_set_state(v3, 3);
  }

  else if (!state)
  {
    v5 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = @"Tab Collection Maintenance";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Checked in %{public}@ activity", buf, 0xCu);
    }

    WeakRetained = xpc_activity_copy_criteria(v3);
    if (WeakRetained)
    {
      goto LABEL_15;
    }

    v7 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = @"Tab Collection Maintenance";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "No prior %{public}@ activity was found. Registering a new one", buf, 0xCu);
    }

    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v8, XPC_ACTIVITY_REPEATING, 1);
    xpc_dictionary_set_string(v8, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
    xpc_dictionary_set_BOOL(v8, XPC_ACTIVITY_ALLOW_BATTERY, 0);
    xpc_dictionary_set_BOOL(v8, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 0);
    xpc_dictionary_set_BOOL(v8, XPC_ACTIVITY_REQUIRE_SCREEN_SLEEP, 1);
    xpc_dictionary_set_int64(v8, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
    xpc_dictionary_set_int64(v8, XPC_ACTIVITY_DELAY, XPC_ACTIVITY_INTERVAL_4_HOURS);
    xpc_dictionary_set_int64(v8, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_8_HOURS);
    xpc_activity_set_criteria(v3, v8);
    goto LABEL_14;
  }

LABEL_19:
}

void sub_100048F38(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = [WBTabCollection databasePathForConfiguration:*(*(a1 + 40) + 16)];
  v4 = [v2 fileExistsAtPath:v3 isDirectory:0];

  if (v4)
  {
    v5 = [[WBTabCollection alloc] initWithConfiguration:*(*(a1 + 40) + 16) openDatabase:1];
    v6 = [v5 lockSync];
    v7 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543362;
        v14 = @"Tab Collection Maintenance";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Performing %{public}@ activity", &v13, 0xCu);
      }

      [v5 performMaintenance];
      [v5 unlockSync];
      xpc_activity_set_state(*(a1 + 48), 5);
      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 24));
      [WeakRetained tabGroupMaintenanceActivityDidFinish:*(a1 + 40)];
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100049260(v8);
      }

      xpc_activity_set_state(*(a1 + 48), 5);
    }
  }

  else
  {
    v10 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(*(a1 + 40) + 16);
      v12 = v10;
      v13 = 134218242;
      v14 = [v11 storeOwner];
      v15 = 2114;
      v16 = @"Tab Collection Maintenance";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Database for manager %zu doesn't exist. Deferring %{public}@ activity", &v13, 0x16u);
    }

    xpc_activity_set_state(*(a1 + 48), 5);
  }
}

void sub_1000491DC(os_log_t log)
{
  v1 = 138543362;
  v2 = @"Tab Collection Maintenance";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to set the activity state to 'Continue'. Deferring %{public}@ activity", &v1, 0xCu);
}

void sub_100049260(os_log_t log)
{
  v1 = 138543362;
  v2 = @"Tab Collection Maintenance";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to acquire the sync lock. Deferring %{public}@ activity", &v1, 0xCu);
}

id sub_100049494(uint64_t a1)
{
  if (([*(a1 + 32) _hasValidDeviceIdentifier] & 1) == 0)
  {
    v8 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10004B614();
    }

    return (*(*(a1 + 48) + 16))();
  }

  v2 = [*(*(a1 + 32) + 8) accountPropertiesStore];
  v3 = [v2 isDataclassEnabled];

  if ((v3 & 1) == 0)
  {
    v9 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Not migrating because Safari sync is disabled", v10, 2u);
    }

    return (*(*(a1 + 48) + 16))();
  }

  *(*(a1 + 32) + 16) = 0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);

  return [v4 _determineCourseOfActionFromLocalStateInOperationGroup:v5 externalCompletionHandler:v6];
}

void sub_1000499D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000499F0(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v12 = a1[5];
    v9 = v6;
    v10 = a1[4];
    v11 = v5;
    WBSDispatchAsyncToMainQueueWithAutoreleasePool();
  }

  else
  {
    v8 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10004B6E4();
    }

    (*(a1[5] + 2))();
  }
}

id sub_100049B28(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) accountPropertiesStore];
  v3 = [v2 isDataclassEnabled];

  if (v3)
  {
    if (*(a1 + 40))
    {
      v4 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10004B718((a1 + 40), v4);
      }

      return [*(a1 + 32) _tryToBecomeResponsibleForMigrationInOperationGroup:*(a1 + 48) externalCompletionHandler:*(a1 + 64)];
    }

    *(*(a1 + 32) + 24) = [*(a1 + 56) migrationState];
    result = [*(a1 + 56) migrationState];
    if (result + 1 < 2)
    {
      v8 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not eligible for local-only migration; will attempt to become responsible for migration", v12, 2u);
      }

      return [*(a1 + 32) _tryToBecomeResponsibleForMigrationInOperationGroup:*(a1 + 48) externalCompletionHandler:*(a1 + 64)];
    }

    if (result == 1)
    {
      v9 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Remote migration pending; will decide whether we are responsible for resuming migration or should preempt the migrator", v11, 2u);
      }

      return [*(a1 + 32) _tryToResumePendingRemoteMigrationFromMigrationInfo:*(a1 + 56) inOperationGroup:*(a1 + 48) externalCompletionHandler:*(a1 + 64)];
    }

    else if (result == 2)
    {
      v7 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Performing local-only migration", v10, 2u);
      }

      return [*(a1 + 32) _performMigrationAsPrimaryDevice:0 inOperationGroup:*(a1 + 48) externalCompletionHandler:*(a1 + 64)];
    }
  }

  else
  {
    v6 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Bailing out from secondary migration because Safari sync is disabled", buf, 2u);
    }

    [*(a1 + 32) _transitionToMigrationState:0];
    return (*(*(a1 + 64) + 16))();
  }

  return result;
}

void sub_100049F78(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100049F9C(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (!WeakRetained)
  {
    v6 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10004B98C();
    }

    goto LABEL_10;
  }

  if (!v3)
  {
    v15 = a1[4];
    v16 = a1[6];
    WBSDispatchAsyncToMainQueueWithAutoreleasePool();

    v7 = v15;
LABEL_12:

    goto LABEL_13;
  }

  if (([v3 safari_isUnrecoverableCloudKitError] & 1) != 0 || (objc_msgSend(v3, "safari_isCloudKitNonExistentRecordError") & 1) != 0 || objc_msgSend(v3, "safari_isCloudKitBatchTooLargeError"))
  {
    v5 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10004B8EC(v5, v3);
    }

LABEL_10:
    (*(a1[6] + 2))();
    goto LABEL_13;
  }

  if ([v3 safari_isCloudKitWriteConflictError])
  {
LABEL_18:
    v10 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10004B84C(v10, v3);
    }

    v21[1] = _NSConcreteStackBlock;
    v21[2] = 3221225472;
    v21[3] = sub_10004A304;
    v21[4] = &unk_100131A20;
    v21[5] = WeakRetained;
    v22 = a1[4];
    v23 = a1[6];
    WBSDispatchAsyncToMainQueueWithAutoreleasePool();

    v7 = v22;
    goto LABEL_12;
  }

  v8 = [v3 safari_onlyCloudKitPartialError];
  if ([v8 safari_isCloudKitWriteConflictError])
  {

    goto LABEL_18;
  }

  v9 = [v3 safari_isAtomicWriteError];

  if (v9)
  {
    goto LABEL_18;
  }

  if ([v3 safari_isOrContainsCloudKitMissingZoneError])
  {
    v11 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10004B818();
    }

    goto LABEL_10;
  }

  v12 = a1[5];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10004A314;
  v17[3] = &unk_1001329A8;
  objc_copyWeak(v21, a1 + 7);
  v20 = a1[6];
  v18 = a1[5];
  v19 = a1[4];
  v13 = [v12 scheduleRetryIfNeededForError:v3 usingBlock:v17];
  if (v13 != 1)
  {
    if (v13 == 2)
    {
      v14 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10004B7E4();
      }
    }

    (*(a1[6] + 2))();
  }

  objc_destroyWeak(v21);
LABEL_13:
}

void sub_10004A314(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _tryToBecomeResponsibleForMigrationWithRetryManager:*(a1 + 32) inOperationGroup:*(a1 + 40) externalCompletionHandler:*(a1 + 48)];
  }

  else
  {
    v4 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10004B98C();
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_10004A5AC(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004A654;
  block[3] = &unk_100131408;
  v3 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
  (*(*(a1 + 40) + 16))();
}

void sub_10004A654(uint64_t a1)
{
  v1 = [*(a1 + 32) databaseCoordinator];
  [v1 unlockForClient:@"Migration coordinator"];
}

void sub_10004AAA8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10004BA90(v4);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    WBSDispatchAsyncToMainQueueWithAutoreleasePool();
  }
}

id sub_10004AB9C(uint64_t a1)
{
  v2 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Stealing right to migrate due to migration timeout", v4, 2u);
  }

  return [*(a1 + 32) _tryToBecomeResponsibleForMigrationInOperationGroup:*(a1 + 40) externalCompletionHandler:*(a1 + 48)];
}

void sub_10004AE50(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _determineCourseOfActionFromLocalStateInOperationGroup:*(a1 + 32) externalCompletionHandler:*(a1 + 40)];
}

id sub_10004B044(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  return [*(a1 + 32) _transitionToMigrationState:v2];
}

void sub_10004B060(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14 = *(a1 + 56);
  v9 = *(a1 + 32);
  v10 = v5;
  v12 = v6;
  v11 = *(a1 + 40);
  v13 = *(a1 + 48);
  v7 = v6;
  v8 = v5;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

void sub_10004B150(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    [*(*(a1 + 32) + 32) setIncludesMigrationRecordInSaveBatch:0];
  }

  v2 = *(a1 + 40);
  v3 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10004BB5C((a1 + 40), v4);
    }

    v5 = 0;
    v6 = 0;
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v5 = 2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Migration succeeded", buf, 2u);
    v6 = 3;
  }

  else
  {
    v6 = 3;
    v5 = 2;
  }

  v7 = *(a1 + 32);
  if (*(a1 + 72))
  {
    v8 = v2 != 0;
    v9 = v7[4];
    v10 = v7[5];
    v11 = v7;
    v12 = sub_1000328C4(v10);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10004B340;
    v17[3] = &unk_1001337D0;
    v23 = v8;
    v21 = v6;
    v22 = v5;
    v17[4] = v11;
    v13 = *(a1 + 48);
    v19 = *(a1 + 56);
    v18 = *(a1 + 48);
    v20 = *(a1 + 64);
    [v9 setRemoteMigrationState:v5 deviceIdentifier:v12 inOperationGroup:v13 completionHandler:v17];
  }

  else
  {
    [v7 _transitionToMigrationState:v6];
    (*(*(a1 + 56) + 16))();
    v14 = *(a1 + 32);
    v15 = *(a1 + 48);
    v16 = *(a1 + 64);
    if (v2)
    {
      [v14 _scheduleMigrationRetryIfNeededInOperationGroup:v15 externalCompletionHandler:v16];
    }

    else
    {
      [v14 _determineCourseOfActionFromLocalStateInOperationGroup:v15 externalCompletionHandler:v16];
    }
  }
}

void sub_10004B340(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = *(a1 + 80);
  v4 = *(a1 + 120) >> 64;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  *&v9 = v6;
  *(&v9 + 1) = v8;
  v11 = v9;
  v10 = v3;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

id sub_10004B444(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10004BBF4(a1, v2, v3);
    }

    v4 = 1;
    v5 = 1;
  }

  else
  {
    v4 = *(a1 + 72);
    v5 = *(a1 + 88);
  }

  [*(a1 + 40) _transitionToMigrationState:v4];
  (*(*(a1 + 56) + 16))();
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  if (v5)
  {
    return [v6 _scheduleMigrationRetryIfNeededInOperationGroup:v7 externalCompletionHandler:v8];
  }

  else
  {
    return [v6 _determineCourseOfActionFromLocalStateInOperationGroup:v7 externalCompletionHandler:v8];
  }
}

void sub_10004B718(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  v5 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);
}

void sub_10004B84C(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_10004B8EC(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_10004BA90(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10004BB5C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  v5 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);
}

void sub_10004BBF4(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = *(a1 + 80);
  v5 = *a2;
  v6 = a3;
  v12 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_10001A9B4();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x16u);
}

void sub_10004CB94(id a1)
{
  v1 = [[CloudBookmarkEncryptedObjectValueTransformer alloc] initWithObjectClass:objc_opt_class()];
  v2 = qword_100153EE8;
  qword_100153EE8 = v1;
}

void sub_10004CD3C(uint64_t a1)
{
  v2 = [*(a1 + 32) readingListItemConfiguration];
  v10[0] = v2;
  v3 = [*(a1 + 32) bookmarkConfiguration];
  v10[1] = v3;
  v4 = [*(a1 + 32) bookmarkFolderConfigurationWithType:1];
  v10[2] = v4;
  v5 = [*(a1 + 32) bookmarkFolderConfigurationWithType:2];
  v10[3] = v5;
  v6 = [*(a1 + 32) bookmarkFolderConfigurationWithType:3];
  v10[4] = v6;
  v7 = [*(a1 + 32) bookmarkFolderConfigurationWithType:0];
  v10[5] = v7;
  v8 = [NSArray arrayWithObjects:v10 count:6];
  v9 = qword_100153EF8;
  qword_100153EF8 = v8;
}

void sub_10004CF08(uint64_t a1)
{
  v2 = [NSSet setWithArray:&off_10013C968];
  v17 = [NSOrderedSet orderedSetWithArray:&off_10013C980];
  v22[0] = @"Title";
  v22[1] = @"URL";
  v23[0] = @"TitleURLAndIdentityHash";
  v23[1] = @"TitleURLAndIdentityHash";
  v22[2] = @"IdentityHash";
  v23[2] = @"TitleURLAndIdentityHash";
  v3 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:3];
  v20[0] = @"Title";
  v4 = objc_alloc_init(CloudBookmarkWindowsCompatibleStringValueTransformer);
  v21[0] = v4;
  v20[1] = @"Position";
  v5 = [*(a1 + 32) positionAttributeValueTransformer];
  v21[1] = v5;
  v20[2] = @"URL";
  v6 = objc_alloc_init(CloudBookmarkWindowsCompatibleURLValueTransformer);
  v21[2] = v6;
  v20[3] = @"ShowIconOnly";
  v7 = [[CloudBookmarkEncryptedObjectValueTransformer alloc] initWithObjectClass:objc_opt_class()];
  v21[3] = v7;
  v20[4] = @"DateAdded";
  v8 = [[CloudBookmarkEncryptedObjectValueTransformer alloc] initWithObjectClass:objc_opt_class()];
  v21[4] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:5];

  v18 = @"URL";
  v10 = objc_alloc_init(CloudBookmarkURLIdentityHashValueTransformer);
  v19 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];

  v12 = [CloudBookmarkItemConfiguration alloc];
  v13 = +[NSSet set];
  v14 = +[NSSet set];
  v15 = [(CloudBookmarkItemConfiguration *)v12 initWithItemType:0 itemSubtype:0 recordType:@"BookmarkLeaf" knownKeys:v2 identityHashKeys:v17 keysWithoutGenerations:v13 primaryCKRecordKeysToClear:v14 primaryCKRecordKeysToSave:v2 customAttributeGenerationKeys:v3 attributeValueTransformers:v9 identityHashValueTransformers:v11 forRecordsPassingTest:0];
  v16 = qword_100153F08;
  qword_100153F08 = v15;
}

void sub_10004D264(uint64_t a1)
{
  v2 = [NSSet setWithArray:&off_10013C998];
  v19 = [NSOrderedSet orderedSetWithArray:&off_10013C9B0];
  v24[0] = @"Title";
  v24[1] = @"URL";
  v25[0] = @"TitleURLAndIdentityHash";
  v25[1] = @"TitleURLAndIdentityHash";
  v24[2] = @"IdentityHash";
  v24[3] = @"HasUserDefinedPreviewText";
  v25[2] = @"TitleURLAndIdentityHash";
  v25[3] = @"PreviewTextAndHasUserDefinedPreviewText";
  v24[4] = @"PreviewText";
  v25[4] = @"PreviewTextAndHasUserDefinedPreviewText";
  v18 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:5];
  v22[0] = @"Title";
  v3 = objc_alloc_init(CloudBookmarkWindowsCompatibleStringValueTransformer);
  v23[0] = v3;
  v22[1] = @"Position";
  v4 = [*(a1 + 32) positionAttributeValueTransformer];
  v23[1] = v4;
  v22[2] = @"URL";
  v5 = objc_alloc_init(CloudBookmarkWindowsCompatibleURLValueTransformer);
  v23[2] = v5;
  v22[3] = @"DateAdded";
  v6 = [[CloudBookmarkEncryptedObjectValueTransformer alloc] initWithObjectClass:objc_opt_class()];
  v23[3] = v6;
  v22[4] = @"DateLastViewed";
  v7 = [[CloudBookmarkEncryptedObjectValueTransformer alloc] initWithObjectClass:objc_opt_class()];
  v23[4] = v7;
  v22[5] = @"ImageURL";
  v8 = [[CloudBookmarkEncryptedObjectValueTransformer alloc] initWithObjectClass:objc_opt_class()];
  v23[5] = v8;
  v22[6] = @"PreviewText";
  v9 = [[CloudBookmarkEncryptedObjectValueTransformer alloc] initWithObjectClass:objc_opt_class()];
  v23[6] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:7];

  v20 = @"URL";
  v11 = objc_alloc_init(CloudBookmarkURLIdentityHashValueTransformer);
  v21 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];

  v13 = [CloudBookmarkItemConfiguration alloc];
  v14 = +[NSSet set];
  v15 = +[NSSet set];
  v16 = [(CloudBookmarkItemConfiguration *)v13 initWithItemType:0 itemSubtype:1 recordType:@"BookmarkLeaf" knownKeys:v2 identityHashKeys:v19 keysWithoutGenerations:v14 primaryCKRecordKeysToClear:v15 primaryCKRecordKeysToSave:v2 customAttributeGenerationKeys:v18 attributeValueTransformers:v10 identityHashValueTransformers:v12 forRecordsPassingTest:&stru_1001338D0];
  v17 = qword_100153F18;
  qword_100153F18 = v16;
}

BOOL sub_10004D5D0(id a1, CKRecord *a2)
{
  v2 = [(CKRecord *)a2 objectForKeyedSubscript:@"ParentFolder"];
  v3 = [v2 recordID];
  v4 = [v3 recordName];
  v5 = [v4 isEqualToString:WBSCloudBookmarkListRecordNameReadingList];

  return v5;
}

void sub_10004D728(uint64_t a1)
{
  v2 = [NSSet setWithArray:&off_10013C9C8];
  v35[0] = @"Title";
  v35[1] = @"IdentityHash";
  v36[0] = @"TitleAndIdentityHash";
  v36[1] = @"TitleAndIdentityHash";
  v3 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];
  v33[0] = @"Title";
  v4 = objc_alloc_init(CloudBookmarkWindowsCompatibleStringValueTransformer);
  v34[0] = v4;
  v33[1] = @"Position";
  v5 = [*(a1 + 32) positionAttributeValueTransformer];
  v34[1] = v5;
  v33[2] = @"ShowIconOnly";
  v6 = [[CloudBookmarkEncryptedObjectValueTransformer alloc] initWithObjectClass:objc_opt_class()];
  v34[2] = v6;
  v33[3] = @"DateAdded";
  v7 = [[CloudBookmarkEncryptedObjectValueTransformer alloc] initWithObjectClass:objc_opt_class()];
  v34[3] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:4];

  v31[0] = &off_10013C440;
  v9 = [CloudBookmarkItemConfiguration alloc];
  v29 = [NSOrderedSet orderedSetWithObject:@"Title"];
  v28 = +[NSSet set];
  v30 = +[NSSet set];
  v27 = [(CloudBookmarkItemConfiguration *)v9 initWithItemType:1 itemSubtype:0 recordType:@"BookmarkList" knownKeys:v2 identityHashKeys:v29 keysWithoutGenerations:v28 primaryCKRecordKeysToClear:v30 primaryCKRecordKeysToSave:v2 customAttributeGenerationKeys:v3 attributeValueTransformers:v8 identityHashValueTransformers:&__NSDictionary0__struct forRecordsPassingTest:0];
  v32[0] = v27;
  v31[1] = &off_10013C458;
  v10 = [CloudBookmarkItemConfiguration alloc];
  v26 = [NSOrderedSet orderedSetWithObject:@"Title"];
  v24 = +[NSSet set];
  v25 = +[NSSet set];
  v23 = [(CloudBookmarkItemConfiguration *)v10 initWithItemType:1 itemSubtype:1 recordType:@"BookmarkList" knownKeys:v2 identityHashKeys:v26 keysWithoutGenerations:v24 primaryCKRecordKeysToClear:v25 primaryCKRecordKeysToSave:v2 customAttributeGenerationKeys:v3 attributeValueTransformers:v8 identityHashValueTransformers:&__NSDictionary0__struct forRecordsPassingTest:&stru_1001338F0];
  v32[1] = v23;
  v31[2] = &off_10013C470;
  v11 = [CloudBookmarkItemConfiguration alloc];
  v22 = [NSOrderedSet orderedSetWithObject:@"Title"];
  v21 = +[NSSet set];
  v12 = +[NSSet set];
  v13 = [(CloudBookmarkItemConfiguration *)v11 initWithItemType:1 itemSubtype:2 recordType:@"BookmarkList" knownKeys:v2 identityHashKeys:v22 keysWithoutGenerations:v21 primaryCKRecordKeysToClear:v12 primaryCKRecordKeysToSave:v2 customAttributeGenerationKeys:v3 attributeValueTransformers:v8 identityHashValueTransformers:&__NSDictionary0__struct forRecordsPassingTest:&stru_100133910];
  v32[2] = v13;
  v31[3] = &off_10013C488;
  v14 = [CloudBookmarkItemConfiguration alloc];
  v15 = [NSOrderedSet orderedSetWithObject:@"Title"];
  v16 = +[NSSet set];
  v17 = +[NSSet set];
  v18 = [(CloudBookmarkItemConfiguration *)v14 initWithItemType:1 itemSubtype:3 recordType:@"BookmarkList" knownKeys:v2 identityHashKeys:v15 keysWithoutGenerations:v16 primaryCKRecordKeysToClear:v17 primaryCKRecordKeysToSave:v2 customAttributeGenerationKeys:v3 attributeValueTransformers:v8 identityHashValueTransformers:&__NSDictionary0__struct forRecordsPassingTest:&stru_100133930];
  v32[3] = v18;
  v19 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:4];
  v20 = qword_100153F28;
  qword_100153F28 = v19;
}

BOOL sub_10004DC04(id a1, CKRecord *a2)
{
  v2 = [(CKRecord *)a2 recordID];
  v3 = [v2 recordName];
  v4 = [v3 isEqualToString:WBSCloudBookmarkListRecordNameFavoritesBar];

  return v4;
}

BOOL sub_10004DC64(id a1, CKRecord *a2)
{
  v2 = [(CKRecord *)a2 recordID];
  v3 = [v2 recordName];
  v4 = [v3 isEqualToString:WBSCloudBookmarkListRecordNameBookmarksMenu];

  return v4;
}

BOOL sub_10004DCC4(id a1, CKRecord *a2)
{
  v2 = [(CKRecord *)a2 recordID];
  v3 = [v2 recordName];
  v4 = [v3 isEqualToString:WBSCloudBookmarkListRecordNameReadingList];

  return v4;
}

void sub_10004DDC4(uint64_t a1)
{
  v2 = [*(a1 + 32) tabGroupConfiguration];
  v10[0] = v2;
  v3 = [*(a1 + 32) tabGroupTabConfiguration];
  v10[1] = v3;
  v4 = [*(a1 + 32) tabGroupBookmarkConfiguration];
  v10[2] = v4;
  v5 = [*(a1 + 32) tabGroupBookmarkFolderConfiguration];
  v10[3] = v5;
  v6 = [*(a1 + 32) deviceConfiguration];
  v10[4] = v6;
  v7 = [*(a1 + 32) profileConfiguration];
  v10[5] = v7;
  v8 = [NSArray arrayWithObjects:v10 count:6];
  v9 = qword_100153F38;
  qword_100153F38 = v8;
}

void sub_10004DF80(uint64_t a1)
{
  v2 = [NSSet setWithArray:&off_10013C9E0];
  v18 = [NSOrderedSet orderedSetWithArray:&off_10013C9F8];
  v21[0] = @"Title";
  v21[1] = @"IdentityHash";
  v22[0] = @"TitleAndIdentityHash";
  v22[1] = @"TitleAndIdentityHash";
  v21[2] = @"ParentFolder";
  v21[3] = @"Position";
  v22[2] = @"ParentAndPosition";
  v22[3] = @"ParentAndPosition";
  v3 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:4];
  v4 = +[CKRecordZoneID safari_tabGroupsRecordZoneID];
  v19[0] = @"Title";
  v5 = objc_alloc_init(CloudBookmarkWindowsCompatibleStringValueTransformer);
  v20[0] = v5;
  v19[1] = @"ParentFolder";
  v6 = [[CloudBookmarkCKReferenceValueTransformer alloc] initWithCKRecordZoneID:v4];
  v20[1] = v6;
  v19[2] = @"Position";
  v7 = [*(a1 + 32) positionAttributeValueTransformer];
  v20[2] = v7;
  v19[3] = @"LastSelectedTab";
  v8 = [[CloudBookmarkCKReferenceValueTransformer alloc] initWithCKRecordZoneID:v4];
  v20[3] = v8;
  v19[4] = @"BackgroundImage";
  v9 = objc_alloc_init(CloudBookmarkCKAssetValueTransformer);
  v20[4] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:5];

  v11 = [NSSet setWithArray:&off_10013CA10];
  v12 = [v2 mutableCopy];
  v13 = [NSSet setWithArray:&off_10013CA28];
  [v12 minusSet:v13];

  v14 = [CloudBookmarkItemConfiguration alloc];
  v15 = +[NSSet set];
  v16 = [(CloudBookmarkItemConfiguration *)v14 initWithItemType:1 itemSubtype:0 recordType:@"TabGroup" knownKeys:v2 identityHashKeys:v18 keysWithoutGenerations:v15 primaryCKRecordKeysToClear:v11 primaryCKRecordKeysToSave:v12 customAttributeGenerationKeys:v3 attributeValueTransformers:v10 identityHashValueTransformers:&__NSDictionary0__struct forRecordsPassingTest:0];
  v17 = qword_100153F48;
  qword_100153F48 = v16;
}

void sub_10004E2E0(uint64_t a1)
{
  v2 = [NSSet setWithArray:&off_10013CA40];
  v19 = [NSOrderedSet orderedSetWithArray:&off_10013CA58];
  v24[0] = @"Title";
  v24[1] = @"URL";
  v25[0] = @"TitleURLAndIdentityHash";
  v25[1] = @"TitleURLAndIdentityHash";
  v24[2] = @"IdentityHash";
  v24[3] = @"ParentFolder";
  v25[2] = @"TitleURLAndIdentityHash";
  v25[3] = @"ParentAndPosition";
  v24[4] = @"Position";
  v24[5] = @"IsPinned";
  v25[4] = @"ParentAndPosition";
  v25[5] = @"TitleURLAndIdentityHash";
  v18 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:6];
  v3 = +[CKRecordZoneID safari_tabGroupsRecordZoneID];
  v22[0] = @"Title";
  v4 = objc_alloc_init(CloudBookmarkWindowsCompatibleStringValueTransformer);
  v23[0] = v4;
  v22[1] = @"URL";
  v5 = objc_alloc_init(CloudBookmarkWindowsCompatibleURLValueTransformer);
  v23[1] = v5;
  v22[2] = @"ParentFolder";
  v6 = [[CloudBookmarkCKReferenceValueTransformer alloc] initWithCKRecordZoneID:v3 action:1];
  v23[2] = v6;
  v22[3] = @"Position";
  v7 = [*(a1 + 32) positionAttributeValueTransformer];
  v23[3] = v7;
  v22[4] = @"IsPinned";
  v8 = [[CloudBookmarkEncryptedObjectValueTransformer alloc] initWithObjectClass:objc_opt_class()];
  v23[4] = v8;
  v22[5] = @"DateLastViewed";
  v9 = [[CloudBookmarkEncryptedObjectValueTransformer alloc] initWithObjectClass:objc_opt_class()];
  v23[5] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:6];

  v20 = @"URL";
  v11 = objc_alloc_init(CloudBookmarkURLIdentityHashValueTransformer);
  v21 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];

  v13 = [CloudBookmarkItemConfiguration alloc];
  v14 = +[NSSet set];
  v15 = +[NSSet set];
  v16 = [(CloudBookmarkItemConfiguration *)v13 initWithItemType:0 itemSubtype:0 recordType:@"TabGroupTab" knownKeys:v2 identityHashKeys:v19 keysWithoutGenerations:v14 primaryCKRecordKeysToClear:v15 primaryCKRecordKeysToSave:v2 customAttributeGenerationKeys:v18 attributeValueTransformers:v10 identityHashValueTransformers:v12 forRecordsPassingTest:0];
  v17 = qword_100153F58;
  qword_100153F58 = v16;
}

void sub_10004E6A8(uint64_t a1)
{
  v2 = [NSSet setWithArray:&off_10013CA70];
  v3 = [NSOrderedSet orderedSetWithArray:&off_10013CA88];
  v19[0] = @"Title";
  v19[1] = @"IdentityHash";
  v20[0] = @"TitleAndIdentityHash";
  v20[1] = @"TitleAndIdentityHash";
  v19[2] = @"ParentFolder";
  v19[3] = @"Position";
  v20[2] = @"ParentAndPosition";
  v20[3] = @"ParentAndPosition";
  v4 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];
  v5 = +[CKRecordZoneID safari_tabGroupsRecordZoneID];
  v15 = @"Title";
  v6 = objc_alloc_init(CloudBookmarkWindowsCompatibleStringValueTransformer);
  v18[0] = v6;
  v16 = @"ParentFolder";
  v7 = [[CloudBookmarkCKReferenceValueTransformer alloc] initWithCKRecordZoneID:v5 action:1];
  v18[1] = v7;
  v17 = @"Position";
  v8 = [*(a1 + 32) encryptedPositionAttributeValueTransformer];
  v18[2] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v18 forKeys:&v15 count:3];

  v10 = [CloudBookmarkItemConfiguration alloc];
  v11 = +[NSSet set];
  v12 = +[NSSet set];
  v13 = [(CloudBookmarkItemConfiguration *)v10 initWithItemType:1 itemSubtype:4 recordType:@"TabGroupScopedBookmarkList" knownKeys:v2 identityHashKeys:v3 keysWithoutGenerations:v11 primaryCKRecordKeysToClear:v12 primaryCKRecordKeysToSave:v2 customAttributeGenerationKeys:v4 attributeValueTransformers:v9 identityHashValueTransformers:&__NSDictionary0__struct forRecordsPassingTest:0, v15, v16];
  v14 = qword_100153F68;
  qword_100153F68 = v13;
}

void sub_10004E978(uint64_t a1)
{
  v2 = [NSSet setWithArray:&off_10013CAA0];
  v17 = [NSOrderedSet orderedSetWithArray:&off_10013CAB8];
  v22[0] = @"Title";
  v22[1] = @"URL";
  v23[0] = @"TitleURLAndIdentityHash";
  v23[1] = @"TitleURLAndIdentityHash";
  v22[2] = @"IdentityHash";
  v22[3] = @"ParentFolder";
  v23[2] = @"TitleURLAndIdentityHash";
  v23[3] = @"ParentAndPosition";
  v22[4] = @"Position";
  v23[4] = @"ParentAndPosition";
  v3 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:5];
  v4 = +[CKRecordZoneID safari_tabGroupsRecordZoneID];
  v20[0] = @"Title";
  v5 = objc_alloc_init(CloudBookmarkWindowsCompatibleStringValueTransformer);
  v21[0] = v5;
  v20[1] = @"URL";
  v6 = objc_alloc_init(CloudBookmarkWindowsCompatibleURLValueTransformer);
  v21[1] = v6;
  v20[2] = @"ParentFolder";
  v7 = [[CloudBookmarkCKReferenceValueTransformer alloc] initWithCKRecordZoneID:v4 action:1];
  v21[2] = v7;
  v20[3] = @"Position";
  v8 = [*(a1 + 32) encryptedPositionAttributeValueTransformer];
  v21[3] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:4];

  v18 = @"URL";
  v10 = objc_alloc_init(CloudBookmarkURLIdentityHashValueTransformer);
  v19 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];

  v12 = [CloudBookmarkItemConfiguration alloc];
  v13 = +[NSSet set];
  v14 = +[NSSet set];
  v15 = [(CloudBookmarkItemConfiguration *)v12 initWithItemType:0 itemSubtype:2 recordType:@"TabGroupScopedBookmarkLeaf" knownKeys:v2 identityHashKeys:v17 keysWithoutGenerations:v13 primaryCKRecordKeysToClear:v14 primaryCKRecordKeysToSave:v2 customAttributeGenerationKeys:v3 attributeValueTransformers:v9 identityHashValueTransformers:v11 forRecordsPassingTest:0];
  v16 = qword_100153F78;
  qword_100153F78 = v15;
}

void sub_10004ECB0(uint64_t a1)
{
  v2 = [NSSet setWithArray:&off_10013CAD0];
  v16 = [NSOrderedSet orderedSetWithArray:&off_10013CAE8];
  v15 = [NSSet setWithArray:&off_10013CB00];
  v19[0] = @"Title";
  v19[1] = @"IdentityHash";
  v20[0] = @"TitleAndIdentityHash";
  v20[1] = @"TitleAndIdentityHash";
  v19[2] = @"ParentFolder";
  v19[3] = @"Position";
  v20[2] = @"ParentAndPosition";
  v20[3] = @"ParentAndPosition";
  v3 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];
  v4 = +[CKRecordZoneID safari_tabGroupsRecordZoneID];
  v17[0] = @"ParentFolder";
  v5 = [[CloudBookmarkCKReferenceValueTransformer alloc] initWithCKRecordZoneID:v4];
  v18[0] = v5;
  v17[1] = @"Position";
  v6 = [*(a1 + 32) encryptedPositionAttributeValueTransformer];
  v18[1] = v6;
  v17[2] = @"Title";
  v7 = [[CloudBookmarkEncryptedObjectValueTransformer alloc] initWithObjectClass:objc_opt_class()];
  v18[2] = v7;
  v17[3] = @"CreationDeviceIdentifier";
  v8 = [[CloudBookmarkEncryptedObjectValueTransformer alloc] initWithObjectClass:objc_opt_class()];
  v18[3] = v8;
  v17[4] = @"DeviceTypeIdentifier";
  v9 = [[CloudBookmarkEncryptedObjectValueTransformer alloc] initWithObjectClass:objc_opt_class()];
  v18[4] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:5];

  v11 = [CloudBookmarkItemConfiguration alloc];
  v12 = +[NSSet set];
  v13 = [(CloudBookmarkItemConfiguration *)v11 initWithItemType:1 itemSubtype:5 recordType:@"Device" knownKeys:v2 identityHashKeys:v16 keysWithoutGenerations:v15 primaryCKRecordKeysToClear:v12 primaryCKRecordKeysToSave:v2 customAttributeGenerationKeys:v3 attributeValueTransformers:v10 identityHashValueTransformers:&__NSDictionary0__struct forRecordsPassingTest:0];
  v14 = qword_100153F88;
  qword_100153F88 = v13;
}

void sub_10004F020(uint64_t a1)
{
  v2 = [NSSet setWithArray:&off_10013CB18];
  v23 = [NSOrderedSet orderedSetWithArray:&off_10013CB30];
  v26[0] = @"Title";
  v26[1] = @"IdentityHash";
  v27[0] = @"TitleAndIdentityHash";
  v27[1] = @"TitleAndIdentityHash";
  v26[2] = @"ParentFolder";
  v26[3] = @"Position";
  v27[2] = @"ParentAndPosition";
  v27[3] = @"ParentAndPosition";
  v22 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:4];
  v3 = +[CKRecordZoneID safari_tabGroupsRecordZoneID];
  v24[0] = @"Title";
  v4 = objc_alloc_init(CloudBookmarkWindowsCompatibleStringValueTransformer);
  v25[0] = v4;
  v24[1] = @"ParentFolder";
  v21 = v3;
  v5 = [[CloudBookmarkCKReferenceValueTransformer alloc] initWithCKRecordZoneID:v3];
  v25[1] = v5;
  v24[2] = @"Position";
  v6 = [*(a1 + 32) encryptedPositionAttributeValueTransformer];
  v25[2] = v6;
  v24[3] = @"SymbolImageName";
  v7 = [[CloudBookmarkEncryptedObjectValueTransformer alloc] initWithObjectClass:objc_opt_class()];
  v25[3] = v7;
  v24[4] = @"BackgroundImage";
  v8 = objc_alloc_init(CloudBookmarkCKAssetValueTransformer);
  v25[4] = v8;
  v24[5] = @"CustomFavoritesFolderServerID";
  v9 = [[CloudBookmarkEncryptedObjectValueTransformer alloc] initWithObjectClass:objc_opt_class()];
  v25[5] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:6];

  v11 = +[NSUserDefaults safari_browserDefaults];
  LODWORD(v4) = [v11 safari_BOOLForKey:@"WBSEnableSafariProfileStartPageSyncing" defaultValue:1];

  if (v4)
  {
    v12 = [v2 setByAddingObject:@"CustomStartPageSectionsData"];

    v13 = [v10 mutableCopy];
    v14 = [[CloudBookmarkEncryptedObjectValueTransformer alloc] initWithObjectClass:objc_opt_class()];
    [v13 setObject:v14 forKey:@"CustomStartPageSectionsData"];

    v15 = [v13 copy];
    v10 = v15;
    v2 = v12;
  }

  v16 = [CloudBookmarkItemConfiguration alloc];
  v17 = +[NSSet set];
  v18 = +[NSSet set];
  v19 = [(CloudBookmarkItemConfiguration *)v16 initWithItemType:1 itemSubtype:6 recordType:@"Profile" knownKeys:v2 identityHashKeys:v23 keysWithoutGenerations:v17 primaryCKRecordKeysToClear:v18 primaryCKRecordKeysToSave:v2 customAttributeGenerationKeys:v22 attributeValueTransformers:v10 identityHashValueTransformers:&__NSDictionary0__struct forRecordsPassingTest:0];
  v20 = qword_100153F98;
  qword_100153F98 = v19;
}

void sub_10004F3F4(id a1)
{
  v1 = +[CloudBookmarkCompressedJSONValueTransformer jsonDictionaryTransformer];
  v2 = qword_100153FA8;
  qword_100153FA8 = v1;
}

void sub_10004F478(id a1)
{
  v1 = [CloudBookmarkEncryptedObjectValueTransformer alloc];
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v8 = [NSSet setWithObjects:v2, v3, v4, v5, objc_opt_class(), 0];
  v6 = [(CloudBookmarkEncryptedObjectValueTransformer *)v1 initWithObjectClasses:v8];
  v7 = qword_100153FB8;
  qword_100153FB8 = v6;
}

void *sub_10004F834(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = a2;
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  return v6;
}

void sub_10004F9F0(id a1)
{
  v1 = objc_alloc_init(CloudBookmarkAttributeValueTransformer);
  v2 = qword_100153FC8;
  qword_100153FC8 = v1;
}

void sub_100050C2C(id *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  if (v3[40] == 1)
  {
    v4 = sub_10000300C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[5];
      v6 = v4;
      v7 = [v5 safari_logDescription];
      *buf = 138543362;
      v41 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Already synchronizing; ignoring request to sync with %{public}@", buf, 0xCu);
    }

    *(a1[4] + 41) = 1;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v8 = a1[6];
    v9 = [v8 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v9)
    {
      v10 = *v36;
      do
      {
        v11 = 0;
        do
        {
          if (*v36 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(a1[4] + 1);
          v13 = [*(*(&v35 + 1) + 8 * v11) copy];
          v14 = objc_retainBlock(v13);
          [v12 addObject:v14];

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v9);
    }
  }

  else if ([v3 _updateAccountHashIfNeededInOperationGroup:a1[5]])
  {
    v15 = sub_10000300C();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = a1[5];
      v17 = v15;
      v18 = [v16 safari_logDescription];
      *buf = 138543362;
      v41 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Discontinuing sync because account hash differed with %{public}@", buf, 0xCu);
    }

    [a1[4] _clearPerSiteSettingsSyncDataInOperationGroup:a1[5]];
    sub_10000306C(a1[6], 4, 0);
  }

  else
  {
    v19 = [a1[4] _isDataclassEnabledInOperationGroup:a1[5]];
    v20 = sub_10000300C();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (v19)
    {
      if (v21)
      {
        v22 = a1[5];
        v23 = v20;
        v24 = [v22 safari_logDescription];
        *buf = 138543362;
        v41 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Beginning synchronization with %{public}@", buf, 0xCu);
      }

      *(a1[4] + 40) = 1;
      v25 = [a1[6] mutableCopy];
      v26 = *(a1[4] + 1);
      *(a1[4] + 1) = v25;

      objc_initWeak(buf, a1[4]);
      v27 = *(a1[4] + 6);
      v28 = a1[5];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_10005105C;
      v32[3] = &unk_100132DA0;
      objc_copyWeak(&v34, buf);
      v33 = a1[5];
      [v27 createCloudSettingsRecordZoneInOperationGroup:v28 completionHandler:v32];

      objc_destroyWeak(&v34);
      objc_destroyWeak(buf);
    }

    else
    {
      if (v21)
      {
        v29 = a1[5];
        v30 = v20;
        v31 = [v29 safari_logDescription];
        *buf = 138543362;
        v41 = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Discontinuing sync because Safari sync is disabled or the user is not signed in with %{public}@", buf, 0xCu);
      }

      sub_10000306C(a1[6], 3, 0);
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100051038(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_10005105C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&v9, (a1 + 40));
  v7 = v6;
  v8 = *(a1 + 32);
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();

  objc_destroyWeak(&v9);
}

void sub_100051144(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v4 = sub_10000300C();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1000544F8((a1 + 32), v4);
      }

      [v3 _didFailToSyncWithError:*(a1 + 32) inOperationGroup:*(a1 + 40)];
    }

    else
    {
      [WeakRetained _continueSyncingAfterSyncingDown:0 inOperationGroup:*(a1 + 40)];
    }
  }
}

void sub_1000513EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10000300C();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10005459C();
    }

    [*(a1 + 40) _didFailToSyncWithError:v3 inOperationGroup:*(a1 + 32)];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = v5;
      v8 = [v6 safari_logDescription];
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Sync coordinator finished sync down with %{public}@", &v9, 0xCu);
    }

    [*(a1 + 40) _continueSyncingAfterSyncingDown:1 inOperationGroup:*(a1 + 32)];
  }
}

void sub_1000518B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100051954;
  v5[3] = &unk_1001314F8;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);
}

void sub_100051954(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 42) & 1) != 0 || *(v2 + 43) == 1)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 56));
    [WeakRetained cloudSettingSyncCoordinator:*(a1 + 32) storeRemoteCloudSettingsUpdateWithRecord:*(a1 + 40)];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((v2 + 56));
    [WeakRetained cloudSettingSyncCoordinator:*(a1 + 32) didReceiveRemoteCloudSettingsUpdateWithRecord:*(a1 + 40)];
  }
}

void sub_1000519D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100051A70;
  v5[3] = &unk_1001314F8;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);
}

void sub_100051A70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained cloudSettingSyncCoordinator:*(a1 + 32) didDeleteRemoteRecordWithID:*(a1 + 40)];
}

void sub_100051AC4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100051BB0;
  block[3] = &unk_1001316A0;
  v8 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v13 = v7;
  v14 = v8;
  v9 = *(a1 + 48);
  v15 = v6;
  v16 = v9;
  v10 = v6;
  v11 = v7;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100051BB0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 42) == 1)
  {
    *(v2 + 42) = 0;
  }

  v3 = (a1 + 40);
  v4 = *(a1 + 40);
  v5 = sub_10000300C();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100054798((a1 + 40), v6, a1);
    }

    if ([*v3 safari_isOrContainsCloudKitMissingZoneError])
    {
      v7 = sub_10000300C();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 48);
        v9 = v7;
        v10 = [v8 safari_logDescription];
        *buf = 138543362;
        v35 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Attempting to create CloudSettings zone before retrying fetch with %{public}@", buf, 0xCu);
      }

      objc_initWeak(buf, *(a1 + 32));
      v11 = *(*(a1 + 32) + 48);
      v12 = *(a1 + 48);
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100052008;
      v30[3] = &unk_100133A08;
      objc_copyWeak(&v33, buf);
      v31 = *(a1 + 48);
      v32 = *(a1 + 64);
      [v11 createCloudSettingsRecordZoneInOperationGroup:v12 completionHandler:v30];

      objc_destroyWeak(&v33);
      objc_destroyWeak(buf);
      return;
    }

    if ([*v3 safari_isCloudKitExpiredChangeTokenError])
    {
      [*(a1 + 32) _handleExpiredChangeTokenError:*(a1 + 40) inOperationGroup:*(a1 + 48) completionHandler:*(a1 + 64)];
      return;
    }

    if ([*v3 safari_isCloudKitErrorWithCode:111])
    {
      v19 = *(*(a1 + 32) + 44);
      v20 = sub_10000300C();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      if (v19)
      {
        if (v21)
        {
          v22 = *(a1 + 48);
          v23 = v20;
          v24 = [v22 safari_logDescription];
          *buf = 138543362;
          v35 = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Received unsynced Keychain error, but we're already waiting for PCS identities to change with %{public}@", buf, 0xCu);
        }

        return;
      }

      if (v21)
      {
        v25 = *(a1 + 48);
        v26 = v20;
        v27 = [v25 safari_logDescription];
        *buf = 138543362;
        v35 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Received unsynced Keychain error. Observing notification to start fetching Safari settings when PCS identities change with %{public}@", buf, 0xCu);
      }

      *(*(a1 + 32) + 44) = 1;
      v28 = +[NSNotificationCenter defaultCenter];
      [v28 addObserver:*(a1 + 32) selector:"_pcsIdentitiesDidChangeNotification:" name:CKIdentityUpdateNotification object:0];
    }

    [*(a1 + 32) _clearCachedCloudSettingsRecordZoneIfNecessaryForError:*(a1 + 40)];
    v29 = *(a1 + 40);
    (*(*(a1 + 64) + 16))();
    return;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100054860(a1, v6);
  }

  v13 = *(a1 + 32);
  if (v13[43] == 1)
  {
    v14 = sub_10000300C();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 48);
      v16 = v14;
      v17 = [v15 safari_logDescription];
      *buf = 138543362;
      v35 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Performing initial StarSky sync down of Safari's settings with %{public}@", buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
    [WeakRetained cloudSettingSyncCoordinator:*(a1 + 32) performInitialSyncDownInOperationGroup:*(a1 + 48)];

    *(*(a1 + 32) + 43) = 0;
    v13 = *(a1 + 32);
  }

  [v13 _saveServerChangeToken:*(a1 + 56) inOperationGroup:*(a1 + 48)];
  (*(*(a1 + 64) + 16))();
}

void sub_100051FE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100052008(id *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000520E4;
  v7[3] = &unk_100131650;
  v8 = v4;
  v9 = a1[4];
  v10 = WeakRetained;
  v11 = a1[5];
  v6 = v4;
  dispatch_async(&_dispatch_main_q, v7);
}

id sub_1000520E4(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  v4 = sub_10000300C();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000548FC(v2, v5);
    }

    return [*(a1 + 48) _clearCachedCloudSettingsRecordZoneIfNecessaryForError:*(a1 + 32)];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = v5;
      v9 = [v7 safari_logDescription];
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Fetching changes from CloudKit again after creating CloudSettings zone with %{public}@", &v10, 0xCu);
    }

    return [*(a1 + 48) _continueFetchingSettingsInOperationGroup:*(a1 + 40) completionHandler:*(a1 + 56)];
  }
}

CKRecord *__cdecl sub_1000528C4(id a1, CKRecord *a2, CKRecord *a3, NSError *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = [(CKRecord *)v6 objectForKeyedSubscript:@"data"];
  [(CKRecord *)v5 setObject:v7 forKeyedSubscript:@"data"];

  v8 = [(CKRecord *)v6 safari_encryptedValues];

  v9 = [v8 objectForKeyedSubscript:@"isLightAppearance"];
  v10 = [(CKRecord *)v5 safari_encryptedValues];
  [v10 setObject:v9 forKeyedSubscript:@"isLightAppearance"];

  return v5;
}

void sub_10005299C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v5 = v6;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

id sub_100052A58(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = sub_10000300C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100054A48(v2, v3);
    }

    return [*(a1 + 48) _didFailToSyncWithError:*(a1 + 32) inOperationGroup:*(a1 + 40)];
  }

  else
  {
    v5 = *(a1 + 56);
    v6 = *(*(a1 + 56) + 16);

    return v6();
  }
}

CKRecord *__cdecl sub_100052C78(id a1, CKRecord *a2, CKRecord *a3, NSError *a4)
{
  v5 = a3;
  v6 = [(CKRecord *)a2 safari_encryptedValues];
  v7 = WBSCloudSettingValue;
  v8 = [v6 objectForKeyedSubscript:WBSCloudSettingValue];
  v9 = [(CKRecord *)v5 safari_encryptedValues];
  [v9 setObject:v8 forKeyedSubscript:v7];

  return v5;
}

void sub_100052D18(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v5 = v6;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

id sub_100052DD4(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = sub_10000300C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100054AEC(v2, v3);
    }

    return [*(a1 + 48) _didFailToSyncWithError:*(a1 + 32) inOperationGroup:*(a1 + 40)];
  }

  else
  {
    v5 = *(a1 + 56);
    v6 = *(*(a1 + 56) + 16);

    return v6();
  }
}

id sub_10005304C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  if ([a4 safari_isCloudKitNonExistentRecordError])
  {
    v9 = [v7 recordID];
    v10 = [v9 recordName];

    v11 = [*(a1 + 32) _perSitePreferencesStore];
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_100053510;
    v51[3] = &unk_100133AF8;
    v51[4] = *(a1 + 32);
    v52 = v10;
    v12 = v10;
    [v11 removePreferenceValueWithRecordName:v12 completionHandler:v51];

    v13 = 0;
    goto LABEL_17;
  }

  v13 = WBSCloudPerSiteSettingValue;
  v12 = [v7 safari_generationForKey:WBSCloudPerSiteSettingValue];
  v14 = [v8 safari_generationForKey:v13];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1000535A0;
  v46[3] = &unk_100133B20;
  v15 = v8;
  v47 = v15;
  v48 = *(a1 + 40);
  v16 = v7;
  v17 = *(a1 + 32);
  v49 = v16;
  v50 = v17;
  v18 = objc_retainBlock(v46);
  v19 = [v12 compare:v14];
  if (v19 == -1)
  {
    v13 = (v18[2])(v18);
    if (!v13)
    {
      v40 = sub_10000300C();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        sub_100054B90((a1 + 40), v40);
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10005388C;
      block[3] = &unk_1001314F8;
      block[4] = *(a1 + 32);
      v45 = v15;
      dispatch_async(&_dispatch_main_q, block);

      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (v19 == 1)
  {
    v21 = [v16 safari_encryptedValues];
    v22 = WBSCloudPerSiteSettingName;
    [v21 objectForKeyedSubscript:WBSCloudPerSiteSettingName];
    v23 = v43 = v14;
    [v15 safari_encryptedValues];
    v24 = v42 = v18;
    [v24 setObject:v23 forKeyedSubscript:v22];

    v25 = [v16 safari_encryptedValues];
    v26 = [v25 objectForKeyedSubscript:v13];
    v27 = [v15 safari_encryptedValues];
    [v27 setObject:v26 forKeyedSubscript:v13];

    v28 = [v16 safari_encryptedValues];
    v29 = WBSCloudPerSiteSettingDomain;
    v30 = [v28 objectForKeyedSubscript:WBSCloudPerSiteSettingDomain];
    v31 = [v15 safari_encryptedValues];
    [v31 setObject:v30 forKeyedSubscript:v29];

    v32 = [v16 safari_encryptedValues];
    v33 = WBSCloudPerSiteSettingDeviceClass;
    v34 = [v32 objectForKeyedSubscript:WBSCloudPerSiteSettingDeviceClass];
    v35 = [v15 safari_encryptedValues];
    [v35 setObject:v34 forKeyedSubscript:v33];

    v36 = WBSCloudPerSiteSettingUseDefaultValue;
    v37 = [v16 objectForKeyedSubscript:WBSCloudPerSiteSettingUseDefaultValue];
    v38 = v36;
    v14 = v43;
    [v15 setObject:v37 forKeyedSubscript:v38];

    v18 = v42;
    [v15 safari_setGeneration:v12 forKey:v13];
    v13 = v15;
  }

  else if (!v19)
  {
    v13 = (v18[2])(v18);
    if (!v13)
    {
      v20 = sub_10000300C();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        sub_100054C24(v12, (a1 + 40), v20);
      }

      goto LABEL_15;
    }

LABEL_11:
    v39 = v13;
LABEL_15:
  }

LABEL_17:

  return v13;
}

void sub_100053510(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = +[NSDistributedNotificationCenter defaultCenter];
    [v3 postNotificationName:WBSSafariBookmarksSyncAgentCloudPerSiteSettingsWereUpdatedOnServerNotificationName object:0];
  }

  v4 = [*(a1 + 32) _perSitePreferencesStore];
  [v4 removeTombstoneWithRecordName:*(a1 + 40) completionHandler:&stru_100133AD0];
}

id sub_1000535A0(uint64_t a1)
{
  v2 = [*(a1 + 32) safari_encryptedValues];
  v3 = WBSCloudPerSiteSettingName;
  v4 = [v2 objectForKeyedSubscript:WBSCloudPerSiteSettingName];

  v5 = [*(a1 + 32) safari_encryptedValues];
  v6 = WBSCloudPerSiteSettingDeviceClass;
  v7 = [v5 objectForKeyedSubscript:WBSCloudPerSiteSettingDeviceClass];

  if ([v4 length] && objc_msgSend(v7, "length"))
  {
    v8 = 0;
  }

  else
  {
    v9 = sub_10000300C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a1 + 40);
      v18 = v9;
      v19 = [v17 safari_logDescription];
      *buf = 138543874;
      v23 = v4;
      v24 = 2114;
      v25 = v7;
      v26 = 2114;
      v27 = v19;
      _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Repairing remote settings record with setting name: %{public}@ and device class: %{public}@ with %{public}@", buf, 0x20u);
    }

    v10 = [*(a1 + 48) safari_encryptedValues];
    v11 = [v10 objectForKeyedSubscript:v3];
    v12 = [*(a1 + 32) safari_encryptedValues];
    [v12 setObject:v11 forKeyedSubscript:v3];

    v13 = [*(a1 + 48) safari_encryptedValues];
    v14 = [v13 objectForKeyedSubscript:v6];
    v15 = [*(a1 + 32) safari_encryptedValues];
    [v15 setObject:v14 forKeyedSubscript:v6];

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100053838;
    v20[3] = &unk_1001314F8;
    v20[4] = *(a1 + 56);
    v21 = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, v20);
    v8 = *(a1 + 32);
  }

  return v8;
}

void sub_100053838(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained cloudSettingSyncCoordinator:*(a1 + 32) didReceiveRemoteCloudSettingsUpdateWithRecord:*(a1 + 40)];
}

void sub_10005388C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained cloudSettingSyncCoordinator:*(a1 + 32) didReceiveRemoteCloudSettingsUpdateWithRecord:*(a1 + 40)];
}

void sub_1000538E0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v7 = v6;
  v8 = v9;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

uint64_t sub_1000539C8(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = sub_10000300C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100054AEC(v2, v3);
    }

    [*(a1 + 48) _didFailToSyncWithError:*(a1 + 32) inOperationGroup:*(a1 + 40)];
  }

  else
  {
    [*(a1 + 48) _savePerSiteCloudKitRecordsToDisk:*(a1 + 56) inOperationGroup:*(a1 + 40)];
  }

  v4 = *(a1 + 32);
  return (*(*(a1 + 64) + 16))();
}

void sub_100053A98(id a1)
{
  v1 = [WBSPerSitePreferencesSQLiteStore alloc];
  v4 = +[WBSPerSitePreferencesSQLiteStore defaultDatabaseURL];
  v2 = [v1 initWithDatabaseURL:v4];
  v3 = qword_100153FD8;
  qword_100153FD8 = v2;
}

void sub_100053CA4(uint64_t a1, int a2)
{
  v4 = sub_10000300C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 safari_recordName];
    v8 = @"NO";
    if (a2)
    {
      v8 = @"YES";
    }

    v9 = v8;
    v10 = [*(a1 + 40) safari_logDescription];
    v11 = 138543874;
    v12 = v7;
    v13 = 2114;
    v14 = v9;
    v15 = 2114;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Save with record name %{public}@ in WBSPerSitePreferencesSQLiteStore did finish with success: %{public}@ with %{public}@", &v11, 0x20u);
  }
}

void sub_100053F0C(uint64_t a1, int a2)
{
  v4 = sub_10000300C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = @"NO";
    if (a2)
    {
      v5 = @"YES";
    }

    v6 = v5;
    v7 = *(a1 + 32);
    v8 = v4;
    v9 = [v7 safari_logDescription];
    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Clearing cached Per-Site Settings sync data in WBSPerSitePreferencesSQLiteStore did finish with success: %{public}@ with %{public}@", &v10, 0x16u);
  }
}

void sub_100054180(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v3 = v4;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

uint64_t sub_10005423C(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = sub_10000300C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100054CE4(v2, v3);
    }

    v4 = *v2;
  }

  return (*(*(a1 + 48) + 16))();
}

void sub_100054438(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_100054464(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_logDescription];
  sub_100054438(&_mh_execute_header, v4, v5, "Storing account hash with %{public}@", v6, v7, v8, v9, 2u);
}

void sub_1000544F8(uint64_t *a1, void *a2)
{
  sub_10003A5A0(a1, a2);
  [sub_10001A9D4() safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_100054458() safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v5, v6, "Failed to set up Settings Record Zone with error: %{public}@ with %{public}@", v7, v8, v9, v10, v11);
}

void sub_10005459C()
{
  sub_10001A9E0();
  v3 = v2;
  v4 = [sub_10001A9D4() safari_privacyPreservingDescription];
  v5 = [*(v0 + 32) safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v6, v7, "Error received while syncing down: %{public}@ with %{public}@", v8, v9, v10, v11, v12);
}

void sub_100054648()
{
  sub_10001A9E0();
  v3 = v2;
  [sub_10001A9D4() safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_10000807C() safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v5, v6, "Failed to decode customization sync server change token: %{public}@ with %{public}@", v7, v8, v9, v10, v11);
}

void sub_1000546F0()
{
  sub_10001A9E0();
  v3 = v2;
  [sub_10001A9D4() safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_10000807C() safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v5, v6, "Failed to serialize customization sync server change token: %{public}@ with %{public}@", v7, v8, v9, v10, v11);
}

void sub_100054798(void **a1, void *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a2;
  v6 = [v4 safari_privacyPreservingDescription];
  v7 = [*(a3 + 48) safari_logDescription];
  sub_10003A54C();
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to fetch changes with error: %{public}@ with %{public}@", v8, 0x16u);
}

void sub_100054860(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  v3 = a2;
  v4 = [v2 safari_logDescription];
  sub_100054438(&_mh_execute_header, v5, v6, "Finished fetching changes from CloudKit with %{public}@", v7, v8, v9, v10, 2u);
}

void sub_1000548FC(uint64_t *a1, void *a2)
{
  sub_10003A5A0(a1, a2);
  [sub_10001A9D4() safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_100054458() safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v5, v6, "Failed to create CloudSettings zone when fetching changes with error: %{public}@ with %{public}@", v7, v8, v9, v10, v11);
}

void sub_1000549A0()
{
  sub_10001A9E0();
  v3 = v2;
  [sub_10001A9D4() safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_10000807C() safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v5, v6, "Sync coordinator failed to sync settings with error: %{public}@ with %{public}@", v7, v8, v9, v10, v11);
}

void sub_100054A48(uint64_t *a1, void *a2)
{
  sub_10003A5A0(a1, a2);
  [sub_10001A9D4() safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_100054458() safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v5, v6, "Did fail to save the background image with error: %{public}@ with %{public}@", v7, v8, v9, v10, v11);
}

void sub_100054AEC(uint64_t *a1, void *a2)
{
  sub_10003A5A0(a1, a2);
  [sub_10001A9D4() safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_100054458() safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v5, v6, "Did fail to save record with error: %{public}@ with %{public}@", v7, v8, v9, v10, v11);
}

void sub_100054B90(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  v5 = [sub_10000807C() safari_logDescription];
  sub_100054438(&_mh_execute_header, v6, v7, "When merging the Per-Site Setting's value, the merge occured in favor of the remote record. Saving the remote record in the database and updating Safari with %{public}@", v8, v9, v10, v11, 2u);
}

void sub_100054C24(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = *a2;
  v5 = a3;
  v6 = [sub_10001A9D4() safari_logDescription];
  sub_10003A54C();
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "When merging the Per-Site Setting's value, local and remote generations are equal: %{public}@ with %{public}@", v7, 0x16u);
}

void sub_100054CE4(uint64_t *a1, void *a2)
{
  sub_10003A5A0(a1, a2);
  [sub_10001A9D4() safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_100054458() safari_logDescription];
  sub_10001A99C();
  sub_100022738(&_mh_execute_header, v5, v6, "Did fail to delete record with error: %{public}@ with %{public}@", v7, v8, v9, v10, v11);
}

void sub_1000557C0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[12])
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Returning cached user identity", buf, 2u);
    }

    v4 = *(*(a1 + 32) + 96);
    v5 = *(*(a1 + 32) + 16);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100055904;
    v10[3] = &unk_100130F40;
    v6 = *(a1 + 56);
    v11 = v4;
    v12 = v6;
    v7 = v4;
    dispatch_async(v5, v10);
  }

  else
  {
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);

    [v2 _fetchUserIdentityInOperationGroup:v8 withCompletionHandler:v9];
  }
}

void sub_1000559F0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100067730(v4);
    }

    v5 = *(*(a1 + 40) + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100055B68;
    block[3] = &unk_100130F40;
    v6 = &v17;
    v17 = *(a1 + 48);
    v16 = v3;
    dispatch_async(v5, block);
    v7 = v16;
  }

  else
  {
    v8 = *(*(a1 + 40) + 8);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100055B80;
    v12[3] = &unk_100131A20;
    v6 = v13;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v13[0] = v9;
    v13[1] = v10;
    v14 = v11;
    dispatch_async(v8, v12);
    v7 = v14;
  }
}

void sub_100055B80(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Attempting to fetch user record ID", buf, 2u);
  }

  v3 = *(*(a1 + 40) + 168);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100055C6C;
  v7[3] = &unk_100133C28;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = v4;
  v9 = v5;
  v10 = v6;
  [v3 fetchUserRecordIDWithCompletionHandler:v7];
}

void sub_100055C6C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = v7;
    v9 = [v7 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:0];

    v10 = *(a1 + 32);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000677C8(v10);
    }

    v11 = *(*(a1 + 40) + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100055E5C;
    block[3] = &unk_100130F40;
    v12 = *(a1 + 48);
    v21 = v9;
    v22 = v12;
    v13 = v9;
    dispatch_async(v11, block);
  }

  else
  {
    objc_storeStrong((*(a1 + 40) + 96), a2);
    v14 = *(a1 + 32);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Successfully fetched user record ID", buf, 2u);
    }

    v15 = *(*(a1 + 40) + 16);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100055E74;
    v16[3] = &unk_100130F40;
    v18 = *(a1 + 48);
    v17 = v6;
    dispatch_async(v15, v16);

    v13 = v18;
  }
}

id sub_100055F58(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 88);
  *(v4 + 88) = 0;

  v6 = *(*(a1 + 32) + 152);

  return [v6 setMigrationStateEncodedRecordData:0];
}

void sub_1000563CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError safari_errorWithCloudBookmarksCode:7 userInfo:0];
  (*(v1 + 16))(v1, 0, 0, v2);
}

void sub_100056440(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v9 = a4;
  v10 = a6;
  v11 = a3;
  v12 = [v9 firstObject];
  v13 = [v12 zoneID];
  v14 = [v13 isEqual:*(a1 + 32)];

  if (v14)
  {
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100056608;
    v20[3] = &unk_100133C78;
    v17 = &v22;
    v22 = *(a1 + 48);
    v18 = &v21;
    v21 = v9;
    [v11 _createEncryptionRecordForRecordZoneWithID:v15 inOperationGroup:v16 completionHandler:v20];
  }

  else
  {
    v19 = v11[2];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000565EC;
    block[3] = &unk_100130F40;
    v17 = &v25;
    v25 = *(a1 + 48);
    v18 = &v24;
    v24 = v10;
    dispatch_async(v19, block);
  }
}

void sub_100056608(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 40);
  v8 = v5;
  if (v5)
  {
    v7 = [*(a1 + 32) firstObject];
    (*(v6 + 16))(v6, v7, v8, 0);
  }

  else
  {
    (*(v6 + 16))(v6, 0, 0, a3);
  }
}

void sub_100056908(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = *(a3 + 16);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000569CC;
  v10[3] = &unk_100130F40;
  v8 = *(a1 + 32);
  v11 = v6;
  v12 = v8;
  v9 = v6;
  dispatch_async(v7, v10);
}

void sub_1000569CC(uint64_t a1)
{
  obj = objc_retainBlock(*(a1 + 40));
  objc_sync_enter(obj);
  v2 = *(a1 + 40);
  if ((_WBSRunOnceImpl() & 1) == 0)
  {
    v3 = *(a1 + 32);
    (*(*(a1 + 40) + 16))();
  }

  objc_sync_exit(obj);
}

void sub_100056A54(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a3;
  v9 = a6;
  v10 = v9;
  if (v9)
  {
    if ([v9 safari_isCloudKitWriteConflictError])
    {
      v11 = v10;
LABEL_7:
      v13 = [v11 userInfo];
      v14 = [v13 objectForKeyedSubscript:CKRecordChangedErrorServerRecordKey];

      v15 = [[WBSHashGenerator alloc] initWithEncryptionInfoRecord:v14];
      v16 = v8[2];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100056DDC;
      v20[3] = &unk_100130F40;
      v17 = *(a1 + 40);
      v21 = v15;
      v22 = v17;
      v18 = v15;
      dispatch_async(v16, v20);

      goto LABEL_10;
    }

    v11 = [v10 safari_onlyCloudKitPartialError];
    if ([v11 safari_isCloudKitWriteConflictError])
    {
      if (v11)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    v19 = v8[2];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100056D54;
    v23[3] = &unk_100130F40;
    v25 = *(a1 + 40);
    v24 = v10;
    dispatch_async(v19, v23);

    v11 = v25;
    goto LABEL_10;
  }

  v12 = v8[2];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100056CCC;
  block[3] = &unk_100130F40;
  v28 = *(a1 + 40);
  v27 = *(a1 + 32);
  dispatch_async(v12, block);

  v11 = v28;
LABEL_10:
}

void sub_100056CCC(uint64_t a1)
{
  obj = objc_retainBlock(*(a1 + 40));
  objc_sync_enter(obj);
  v2 = *(a1 + 40);
  if ((_WBSRunOnceImpl() & 1) == 0)
  {
    v3 = *(a1 + 32);
    (*(*(a1 + 40) + 16))();
  }

  objc_sync_exit(obj);
}

void sub_100056D54(uint64_t a1)
{
  obj = objc_retainBlock(*(a1 + 40));
  objc_sync_enter(obj);
  v2 = *(a1 + 40);
  if ((_WBSRunOnceImpl() & 1) == 0)
  {
    v3 = *(a1 + 32);
    (*(*(a1 + 40) + 16))();
  }

  objc_sync_exit(obj);
}

void sub_100056DDC(uint64_t a1)
{
  obj = objc_retainBlock(*(a1 + 40));
  objc_sync_enter(obj);
  v2 = *(a1 + 40);
  if ((_WBSRunOnceImpl() & 1) == 0)
  {
    v3 = *(a1 + 32);
    (*(*(a1 + 40) + 16))();
  }

  objc_sync_exit(obj);
}

void sub_10005705C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a6;
  v9 = *(a3 + 16);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100057120;
  v12[3] = &unk_100130F40;
  v10 = *(a1 + 32);
  v13 = v8;
  v14 = v10;
  v11 = v8;
  dispatch_async(v9, v12);
}

void sub_100057418(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError safari_errorWithCloudBookmarksCode:7 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

id sub_100057488(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _canHandleCKRecordZoneWithID:v3])
  {
    v4 = [[CKRecordID alloc] initWithRecordName:@"EncryptionInfo" zoneID:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_100057504(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a3)
  {
    v6 = a4;
    v7 = a3;
    v10 = [[WBSHashGenerator alloc] initWithEncryptionInfoRecord:v7];

    v8 = *(a1 + 32);
    v9 = [v6 zoneID];

    [v8 setObject:v10 forKeyedSubscript:v9];
  }
}

void sub_1000575B0(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (v12 && ([v12 safari_isCloudKitPartialFailureError] & 1) == 0)
  {
    v18 = v10[2];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100057754;
    v25[3] = &unk_100130F40;
    v15 = &v27;
    v19 = *(a1 + 40);
    v16 = &v26;
    v26 = v13;
    v27 = v19;
    v20 = v13;
    dispatch_async(v18, v25);
  }

  else
  {
    v14 = v10[2];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005776C;
    block[3] = &unk_100130E00;
    v15 = &v24;
    v24 = *(a1 + 40);
    v16 = &v22;
    v22 = *(a1 + 32);
    v23 = v13;
    v17 = v13;
    dispatch_async(v14, block);
  }
}

void sub_100057A8C(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = [a2 _canHandleCKRecordZoneWithID:v7];
  v6 = 40;
  if (v5)
  {
    v6 = 32;
  }

  [*(a1 + v6) addObject:v7];
}

void sub_100057AFC(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = [a2 _canHandleCKRecordZoneWithID:v7];
  v6 = 40;
  if (v5)
  {
    v6 = 32;
  }

  [*(a1 + v6) addObject:v7];
}

void sub_100057B6C(id *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v9 = a4;
  v10 = a6;
  v11 = *(a3 + 16);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100057C98;
  v14[3] = &unk_100133E08;
  v20 = a1[7];
  v15 = v9;
  v16 = a1[4];
  v17 = a1[5];
  v18 = a1[6];
  v19 = v10;
  v12 = v10;
  v13 = v9;
  dispatch_async(v11, v14);
}

void sub_100058000(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = *(a3 + 16);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000580C4;
  v10[3] = &unk_100130F40;
  v8 = *(a1 + 32);
  v11 = v6;
  v12 = v8;
  v9 = v6;
  dispatch_async(v7, v10);
}

void sub_10005825C(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];
  v8 = +[NSMutableArray array];
  v7 = +[NSMutableArray array];
  [v2 _modifyRecords:v3 andDeleteRecordIDs:v4 inDatabase:v5 operationGroup:v6 previouslySavedRecords:v8 previouslyDeletedRecords:v7 mergeHandler:a1[9] completionHandler:a1[10]];
}

void sub_1000589C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose((v61 - 224), 8);
  _Block_object_dispose((v61 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100058A28(uint64_t a1)
{
  if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
  {
    sub_100067860();
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_100058A8C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = [a5 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:v10];
  if (v12)
  {
    if (!v11)
    {
      v11 = [*(a1 + 32) objectForKeyedSubscript:v10];
    }

    v13 = [v12 domain];
    v14 = [v13 isEqualToString:CKErrorDomain];

    if (v14)
    {
      v15 = [v12 code];
      v16 = v11;
      v11 = v16;
      v17 = 0;
      v18 = 0;
      if (v15 <= 25)
      {
        if (v15 <= 13)
        {
          v19 = v16;
          if (v15 == 11)
          {
            goto LABEL_36;
          }

          if (v15 == 12)
          {
            v17 = 0;
            v18 = 1;
LABEL_24:
            v19 = v11;
            goto LABEL_36;
          }

          goto LABEL_31;
        }

        if (v15 == 14)
        {
          v23 = [v12 userInfo];
          v19 = [v23 objectForKeyedSubscript:CKRecordChangedErrorClientRecordKey];

          v24 = [v12 userInfo];
          v17 = [v24 objectForKeyedSubscript:CKRecordChangedErrorServerRecordKey];

          if (v17)
          {
            v18 = 0;
          }

          else
          {
            v27 = *(a1 + 40);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              sub_1000679F8(v27);
            }

            v18 = 0;
            v17 = 0;
          }

LABEL_36:
          v28 = (*(*(a1 + 64) + 16))();
          v29 = v28;
          v30 = v18 ^ 1;
          if (!v28)
          {
            v30 = 1;
          }

          if (v30)
          {
            if (!v28)
            {
LABEL_45:
              v33 = *(a1 + 40);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
              {
                v34 = v33;
                v35 = [v12 safari_privacyPreservingDescription];
                *buf = 138543362;
                v37 = v35;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Will retry save with updated batch after error: %{public}@", buf, 0xCu);
              }

              *(*(*(a1 + 80) + 8) + 24) = 1;

              goto LABEL_48;
            }

            if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEBUG))
            {
              sub_100067B28();
            }

            v31 = *(a1 + 48);
            v32 = v29;
          }

          else
          {
            v31 = *(a1 + 56);
            v32 = v11;
          }

          [v31 addObject:v32];
          goto LABEL_45;
        }

        if (v15 == 22)
        {
LABEL_19:
          [*(a1 + 48) addObject:v11];
          goto LABEL_30;
        }

LABEL_31:
        *(*(*(a1 + 72) + 8) + 24) = 1;
        v26 = *(a1 + 40);
        v19 = v16;
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_48;
        }

        sub_100067A90(v26);
LABEL_30:
        v19 = v11;
LABEL_48:

        goto LABEL_49;
      }

      if (v15 > 27)
      {
        v19 = v16;
        if (v15 == 100)
        {
          goto LABEL_36;
        }

        if (v15 != 28)
        {
          goto LABEL_31;
        }
      }

      else if (v15 != 26)
      {
        if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_10006792C();
        }

        goto LABEL_19;
      }

      v21 = [v10 zoneID];
      v22 = [v9 isSecondaryRecordZoneID:v21];

      if (v22)
      {
        v18 = 0;
        v17 = 0;
        goto LABEL_24;
      }

      v25 = *(a1 + 40);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_100067960(v25);
      }

      *(*(*(a1 + 72) + 8) + 24) = 1;
      goto LABEL_30;
    }

    v20 = *(a1 + 40);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100067894(v20);
    }

    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

LABEL_49:
}

void sub_100058F08(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v9)
  {
    goto LABEL_24;
  }

  v11 = [v9 domain];
  v12 = [v11 isEqualToString:CKErrorDomain];

  if ((v12 & 1) == 0)
  {
    v14 = *(a1 + 32);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100067894(v14);
    }

    goto LABEL_10;
  }

  v13 = [v10 code];
  if (v13 > 25)
  {
    if (v13 != 26)
    {
      if (v13 == 27)
      {
        if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
        {
          sub_100067B5C();
        }

        goto LABEL_22;
      }

      if (v13 != 28)
      {
        goto LABEL_16;
      }
    }

    v15 = [v8 zoneID];
    v16 = [v7 isSecondaryRecordZoneID:v15];

    if (v16)
    {
LABEL_15:
      v17 = *(a1 + 40);
LABEL_23:
      [v17 addObject:v8];
      goto LABEL_24;
    }

    v19 = *(a1 + 32);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100067960(v19);
    }

LABEL_10:
    *(*(*(a1 + 56) + 8) + 24) = 1;
    goto LABEL_24;
  }

  if (v13 == 11)
  {
    goto LABEL_15;
  }

  if (v13 == 14 || v13 == 22)
  {
LABEL_22:
    v17 = *(a1 + 48);
    goto LABEL_23;
  }

LABEL_16:
  *(*(*(a1 + 56) + 8) + 24) = 1;
  v18 = *(a1 + 32);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_100067B90(v18);
  }

LABEL_24:
}

void sub_1000590C4(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [a6 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:0];
  if ([v10 _isUnrecoverableCloudKitWriteError:v13])
  {
    v14 = *(a1 + 32);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100067C90(v14);
    }

    v15 = v10[2];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100059A94;
    block[3] = &unk_100130EC8;
    v107 = *(a1 + 104);
    v104 = *(a1 + 40);
    v105 = *(a1 + 48);
    v13 = v13;
    v106 = v13;
    dispatch_async(v15, block);
    *(*(*(a1 + 120) + 8) + 24) = 1;

    v16 = v107;
LABEL_38:

    goto LABEL_39;
  }

  if ([v11 count])
  {
    [*(a1 + 40) addObjectsFromArray:v11];
  }

  if ([v12 count])
  {
    [*(a1 + 48) addObjectsFromArray:v12];
  }

  [*(a1 + 48) addObjectsFromArray:*(a1 + 56)];
  if (*(*(*(a1 + 120) + 8) + 24) == 1)
  {
    if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
    {
      sub_100067C5C();
    }

    v17 = v10[2];
    v98[0] = _NSConcreteStackBlock;
    v98[1] = 3221225472;
    v98[2] = sub_100059AAC;
    v98[3] = &unk_100130EC8;
    v102 = *(a1 + 104);
    v99 = *(a1 + 40);
    v100 = *(a1 + 48);
    v13 = v13;
    v101 = v13;
    dispatch_async(v17, v98);

    v16 = v102;
    goto LABEL_38;
  }

  if (*(*(*(a1 + 128) + 8) + 24) == 1 && ([*(a1 + 64) count] || objc_msgSend(*(a1 + 72), "count") || objc_msgSend(*(a1 + 80), "count")))
  {
    v61 = v11;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v18 = *(a1 + 80);
    v19 = [v18 countByEnumeratingWithState:&v94 objects:v112 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v95;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v95 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(a1 + 72);
          v24 = [*(*(&v94 + 1) + 8 * i) recordID];
          [v23 addObject:v24];
        }

        v20 = [v18 countByEnumeratingWithState:&v94 objects:v112 count:16];
      }

      while (v20);
    }

    v60 = v12;

    v84[0] = _NSConcreteStackBlock;
    v84[1] = 3221225472;
    v84[2] = sub_100059AC4;
    v84[3] = &unk_100133FD8;
    v85 = *(a1 + 32);
    v58 = v10;
    v57 = v10;
    v86 = v57;
    v87 = *(a1 + 80);
    v88 = *(a1 + 88);
    v89 = *(a1 + 96);
    v90 = *(a1 + 40);
    v91 = *(a1 + 48);
    v92 = *(a1 + 112);
    v93 = *(a1 + 104);
    v25 = objc_retainBlock(v84);
    v26 = *(a1 + 32);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Batch record save operation completed but now retrying updated batch", buf, 2u);
    }

    v27 = *(a1 + 64);
    v28 = *(a1 + 72);
    v29 = *(a1 + 88);
    v30 = *(a1 + 96);
    v31 = *(a1 + 40);
    v32 = *(a1 + 48);
    v33 = *(a1 + 112);
    v34 = [*(a1 + 80) count];
    v35 = v25;
    if (!v34)
    {
      v35 = *(a1 + 104);
    }

    [v57 _modifyRecords:v27 andDeleteRecordIDs:v28 inDatabase:v29 operationGroup:v30 previouslySavedRecords:v31 previouslyDeletedRecords:v32 mergeHandler:v33 completionHandler:v35];

    v10 = v58;
LABEL_29:
    v12 = v60;
    v11 = v61;
    goto LABEL_39;
  }

  if (![v13 safari_isCloudKitBatchTooLargeError])
  {
    if ([v13 safari_isCloudKitPartialFailureError])
    {

      v13 = 0;
    }

    v42 = v10[2];
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_100059C80;
    v62[3] = &unk_100130EC8;
    v66 = *(a1 + 104);
    v63 = *(a1 + 40);
    v64 = *(a1 + 48);
    v13 = v13;
    v65 = v13;
    dispatch_async(v42, v62);

    v16 = v66;
    goto LABEL_38;
  }

  v36 = [*(a1 + 64) count];
  if (v36 >= [*(*(*(a1 + 136) + 8) + 40) count])
  {
    v43 = [*(*(*(a1 + 136) + 8) + 40) count];
    v44 = [*(*(*(a1 + 144) + 8) + 40) count];
    v45 = v44;
    if (v43 <= 1 && v44 <= 1)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        sub_100067C28();
      }

      v46 = v10[2];
      v79[0] = _NSConcreteStackBlock;
      v79[1] = 3221225472;
      v79[2] = sub_100059B48;
      v79[3] = &unk_100130EC8;
      v83 = *(a1 + 104);
      v80 = *(a1 + 40);
      v81 = *(a1 + 48);
      v13 = v13;
      v82 = v13;
      dispatch_async(v46, v79);

      v16 = v83;
      goto LABEL_38;
    }

    v60 = v12;
    v61 = v11;
    v59 = [*(*(*(a1 + 136) + 8) + 40) subarrayWithRange:{0, v43 >> 1}];
    v47 = [*(*(*(a1 + 144) + 8) + 40) subarrayWithRange:{0, v45 >> 1}];
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_100059B60;
    v67[3] = &unk_100134000;
    v68 = *(a1 + 32);
    v48 = *(a1 + 104);
    v69 = *(a1 + 40);
    v70 = *(a1 + 48);
    v75 = v43 >> 1;
    v76 = v43;
    v74 = *(a1 + 136);
    v77 = v45 >> 1;
    v78 = v45;
    v49 = v10;
    v71 = v49;
    v50 = *(a1 + 88);
    v51 = *(a1 + 96);
    v52 = *(a1 + 112);
    *&v53 = v48;
    *(&v53 + 1) = v52;
    *&v54 = v50;
    *(&v54 + 1) = v51;
    v72 = v54;
    v73 = v53;
    v55 = objc_retainBlock(v67);
    v56 = *(a1 + 32);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "Batch record save operation completed but we need to re-batch", buf, 2u);
    }

    [v49 _modifyRecords:v59 andDeleteRecordIDs:v47 inDatabase:*(a1 + 88) operationGroup:*(a1 + 96) previouslySavedRecords:*(a1 + 40) previouslyDeletedRecords:*(a1 + 48) mergeHandler:*(a1 + 112) completionHandler:v55];

    goto LABEL_29;
  }

  v37 = *(a1 + 32);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    v38 = *(a1 + 64);
    v39 = v37;
    v40 = [v38 count];
    v41 = [*(*(*(a1 + 136) + 8) + 40) count];
    *buf = 134218240;
    v109 = v40;
    v110 = 2048;
    v111 = v41;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "Failed to save %zu out of %zu records due to batch size limit, try the remaining records again.", buf, 0x16u);
  }

  [v10 _modifyRecords:*(a1 + 64) andDeleteRecordIDs:&__NSArray0__struct inDatabase:*(a1 + 88) operationGroup:*(a1 + 96) previouslySavedRecords:*(a1 + 40) previouslyDeletedRecords:*(a1 + 48) mergeHandler:*(a1 + 112) completionHandler:*(a1 + 104)];
LABEL_39:
}

id sub_100059AC4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Batch record save operation completed but now saving a separate batch for records that need to be deleted and resaved.", buf, 2u);
  }

  return [*(a1 + 40) _modifyRecords:*(a1 + 48) andDeleteRecordIDs:&__NSArray0__struct inDatabase:*(a1 + 56) operationGroup:*(a1 + 64) previouslySavedRecords:*(a1 + 72) previouslyDeletedRecords:*(a1 + 80) mergeHandler:*(a1 + 88) completionHandler:*(a1 + 96)];
}

void sub_100059B60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = [v5 safari_isCloudKitBatchTooLargeError];
  v7 = *(a1 + 32);
  if (v6)
  {
    if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
    {
      sub_100067D28();
    }

    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    (*(*(a1 + 80) + 16))();
  }

  else
  {
    if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Attempting to re-batch record save", buf, 2u);
    }

    v10 = [*(*(*(a1 + 96) + 8) + 40) subarrayWithRange:{*(a1 + 112), *(a1 + 120) - *(a1 + 112)}];
    v11 = [*(*(*(a1 + 104) + 8) + 40) subarrayWithRange:{*(a1 + 128), *(a1 + 136) - *(a1 + 112)}];
    [*(a1 + 56) _modifyRecords:v10 andDeleteRecordIDs:v11 inDatabase:*(a1 + 64) operationGroup:*(a1 + 72) previouslySavedRecords:*(a1 + 40) previouslyDeletedRecords:*(a1 + 48) mergeHandler:*(a1 + 88) completionHandler:*(a1 + 80)];
  }
}

void sub_100059EFC(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a4;
  v10 = a5;
  if ([v10 safari_matchesErrorDomain:CKErrorDomain andCode:14])
  {
    v11 = [v10 userInfo];
    v12 = [v11 objectForKeyedSubscript:CKRecordChangedErrorServerRecordKey];

    v9 = v12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v9 = 0;
  }

  if (v10 | v9)
  {
    v13 = v8[2];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005A06C;
    block[3] = &unk_100130E00;
    v17 = *(a1 + 32);
    v15 = v9;
    v16 = v10;
    dispatch_async(v13, block);
  }
}

void sub_10005A06C(uint64_t a1)
{
  obj = objc_retainBlock(*(a1 + 48));
  objc_sync_enter(obj);
  v2 = *(a1 + 48);
  if ((_WBSRunOnceImpl() & 1) == 0)
  {
    if (!*(a1 + 32))
    {
      v3 = *(a1 + 40);
    }

    (*(*(a1 + 48) + 16))();
  }

  objc_sync_exit(obj);
}

void sub_10005A104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a6;
  v9 = *(a3 + 16);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10005A1C8;
  v12[3] = &unk_100130F40;
  v10 = *(a1 + 32);
  v13 = v8;
  v14 = v10;
  v11 = v8;
  dispatch_async(v9, v12);
}

void sub_10005A1C8(uint64_t a1)
{
  obj = objc_retainBlock(*(a1 + 40));
  objc_sync_enter(obj);
  v2 = *(a1 + 40);
  if ((_WBSRunOnceImpl() & 1) == 0)
  {
    v3 = *(a1 + 32);
    (*(*(a1 + 40) + 16))();
  }

  objc_sync_exit(obj);
}

void sub_10005A4A4(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v9 = 0;
  }

  if (v10 | v9)
  {
    v11 = v8[2];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005A5C8;
    block[3] = &unk_100130E00;
    v15 = *(a1 + 32);
    v13 = v9;
    v14 = v10;
    dispatch_async(v11, block);
  }
}

void sub_10005A5C8(uint64_t a1)
{
  obj = objc_retainBlock(*(a1 + 48));
  objc_sync_enter(obj);
  v2 = *(a1 + 48);
  if ((_WBSRunOnceImpl() & 1) == 0)
  {
    if (!*(a1 + 32))
    {
      v3 = *(a1 + 40);
    }

    (*(*(a1 + 48) + 16))();
  }

  objc_sync_exit(obj);
}

void sub_10005A660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  v8 = *(a3 + 16);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10005A724;
  v11[3] = &unk_100130F40;
  v9 = *(a1 + 32);
  v12 = v7;
  v13 = v9;
  v10 = v7;
  dispatch_async(v8, v11);
}

void sub_10005A724(uint64_t a1)
{
  obj = objc_retainBlock(*(a1 + 40));
  objc_sync_enter(obj);
  v2 = *(a1 + 40);
  if ((_WBSRunOnceImpl() & 1) == 0)
  {
    v3 = *(a1 + 32);
    (*(*(a1 + 40) + 16))();
  }

  objc_sync_exit(obj);
}

void sub_10005AA34(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = *(a2 + 16);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10005AB44;
  v17[3] = &unk_100130EC8;
  v13 = *(a1 + 32);
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v21 = v13;
  v14 = v11;
  v15 = v10;
  v16 = v9;
  dispatch_async(v12, v17);
}

void sub_10005AB44(uint64_t a1)
{
  obj = objc_retainBlock(*(a1 + 56));
  objc_sync_enter(obj);
  v2 = *(a1 + 56);
  if ((_WBSRunOnceImpl() & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    (*(*(a1 + 56) + 16))();
  }

  objc_sync_exit(obj);
}

void sub_10005ABCC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = *(a3 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005ACA4;
  block[3] = &unk_100130E00;
  v12 = *(a1 + 40);
  v10 = *(a1 + 32);
  v11 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

void sub_10005ACA4(uint64_t a1)
{
  obj = objc_retainBlock(*(a1 + 48));
  objc_sync_enter(obj);
  v2 = *(a1 + 48);
  if ((_WBSRunOnceImpl() & 1) == 0)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    (*(*(a1 + 48) + 16))();
  }

  objc_sync_exit(obj);
}

void sub_10005AFFC(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = *(a1 + 32);
  if (v11)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = v13;
      v15 = [v10 emailAddress];
      v18 = 141558275;
      v19 = 1752392040;
      v20 = 2117;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Found participant for e-mail address: %{sensitive, mask.hash}@", &v18, 0x16u);
    }

    [*(a1 + 40) addObject:v11];
    v16 = *(a1 + 48);
    v17 = [v10 emailAddress];
    [v16 removeObject:v17];
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_100067D5C(v13, v10);
  }
}

void sub_10005B178(id *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if ([a1[4] count])
  {
    v8 = [[CKRecordID alloc] initWithRecordName:CKRecordNameZoneWideShare zoneID:a1[7]];
    v9 = [[WBSRetryableCKFetchRecordsOperation alloc] initWithOwner:v6 handlingQueue:v6[1]];
    [v9 setLog:a1[5]];
    v10 = [v6 operationConfiguration];
    [v9 setConfiguration:v10];

    [v9 setGroup:a1[8]];
    v11 = [v6 container];
    v12 = [v11 privateCloudDatabase];
    [v9 setDatabase:v12];

    v35 = v8;
    v13 = [NSArray arrayWithObjects:&v35 count:1];
    [v9 setRecordIDs:v13];

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10005B628;
    v22[3] = &unk_100134190;
    v23 = a1[5];
    v24 = a1[7];
    v30 = a1[10];
    v25 = a1[9];
    v26 = a1[4];
    v14 = v6;
    v27 = v14;
    v28 = a1[8];
    v29 = a1[6];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10005BD08;
    v20[3] = &unk_100134078;
    v15 = [v22 copy];
    v21 = v15;
    [v9 setPerRecordCompletionBlock:v20];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10005BDE0;
    v18[3] = &unk_1001340A0;
    v19 = v15;
    v16 = v15;
    [v9 setFetchRecordsCompletionBlock:v18];
    [v14[7] addOperation:v9];
  }

  else
  {
    if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
    {
      sub_100067E34();
    }

    v17 = v6[2];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005B574;
    block[3] = &unk_100130E00;
    v34 = a1[10];
    v32 = a1[6];
    v33 = v7;
    dispatch_async(v17, block);

    v8 = v34;
  }
}

void sub_10005B574(uint64_t a1)
{
  obj = objc_retainBlock(*(a1 + 48));
  objc_sync_enter(obj);
  v2 = *(a1 + 48);
  if ((_WBSRunOnceImpl() & 1) == 0)
  {
    v3 = *(a1 + 48);
    v4 = [*(a1 + 32) array];
    (*(v3 + 16))(v3, 0, 0, v4, *(a1 + 40));
  }

  objc_sync_exit(obj);
}

void sub_10005B628(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v7 = *(a1 + 56);
    v8 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v8)
    {
      v9 = *v32;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v32 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v31 + 1) + 8 * i);
          [v5 removeParticipant:v11];
          [v11 setRole:3];
          [v11 setPermission:3];
          [v11 setWantsNewInvitationToken:1];
          [v5 addParticipant:v11];
        }

        v8 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v8);
    }

    v12 = a1 + 64;
    v13 = [[WBSRetryableCKModifyRecordsOperation alloc] initWithOwner:*(a1 + 64) handlingQueue:*(*(a1 + 64) + 8)];
    [v13 setLog:*(a1 + 32)];
    v14 = [*(a1 + 64) operationConfiguration];
    [v13 setConfiguration:v14];

    [v13 setGroup:*(a1 + 72)];
    v15 = [*(a1 + 64) container];
    v16 = [v15 privateCloudDatabase];
    [v13 setDatabase:v16];

    v35 = v5;
    v17 = [NSArray arrayWithObjects:&v35 count:1];
    [v13 setRecordsToSave:v17];

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10005B9F4;
    v27[3] = &unk_100134168;
    v18 = (a1 + 48);
    v28 = *(a1 + 48);
    v20 = *(a1 + 88);
    v19 = (a1 + 88);
    v30 = v20;
    v29 = *(v19 - 1);
    [v13 setPerRecordSaveBlock:v27];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10005BC1C;
    v24[3] = &unk_100133CF0;
    v26 = *v19;
    v25 = *v18;
    [v13 setModifyRecordsCompletionBlock:v24];
    [*(*v12 + 56) addOperation:v13];
  }

  else
  {
    v21 = *(a1 + 32);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100067EA8(a1, v21, v6);
    }

    v13 = objc_retainBlock(*(a1 + 88));
    objc_sync_enter(v13);
    v22 = *(a1 + 88);
    if ((_WBSRunOnceImpl() & 1) == 0)
    {
      v23 = *(a1 + 48);
      (*(*(a1 + 88) + 16))();
    }

    objc_sync_exit(v13);
  }
}

void sub_10005B9F4(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v11;
  if (v13)
  {
    v14 = [NSSet setWithArray:*(a1 + 32)];
    v15 = [v13 participants];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10005BBAC;
    v22[3] = &unk_100134140;
    v23 = v14;
    v16 = v14;
    v17 = [v15 safari_filterObjectsUsingBlock:v22];
  }

  else
  {
    v17 = 0;
  }

  v18 = objc_retainBlock(*(a1 + 48));
  objc_sync_enter(v18);
  v19 = *(a1 + 48);
  if ((_WBSRunOnceImpl() & 1) == 0)
  {
    v20 = *(a1 + 48);
    if (v13)
    {
      v21 = [*(a1 + 40) array];
    }

    else
    {
      v21 = *(a1 + 32);
    }

    (*(v20 + 16))(v20, v13, v17, v21, v12);
    if (v13)
    {
    }
  }

  objc_sync_exit(v18);
}

id sub_10005BBAC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 userIdentity];
  v4 = [v3 lookupInfo];
  v5 = [v4 emailAddress];
  v6 = [v2 containsObject:v5];

  return v6;
}

void sub_10005BC1C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v18 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = objc_retainBlock(*(a1 + 40));
  objc_sync_enter(v15);
  v16 = *(a1 + 40);
  if ((_WBSRunOnceImpl() & 1) == 0)
  {
    v17 = *(a1 + 32);
    (*(*(a1 + 40) + 16))();
  }

  objc_sync_exit(v15);
}

void sub_10005BD08(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v14 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_retainBlock(*(a1 + 32));
  objc_sync_enter(v12);
  v13 = *(a1 + 32);
  if ((_WBSRunOnceImpl() & 1) == 0)
  {
    (*(*(a1 + 32) + 16))();
  }

  objc_sync_exit(v12);
}

void sub_10005BDE0(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v14 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_retainBlock(*(a1 + 32));
  objc_sync_enter(v12);
  v13 = *(a1 + 32);
  if ((_WBSRunOnceImpl() & 1) == 0)
  {
    (*(*(a1 + 32) + 16))();
  }

  objc_sync_exit(v12);
}

void sub_10005C224(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v23 = a3;
  if (v5)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v6 = [v5 participants];
    v7 = [v6 copy];

    v8 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v8)
    {
      v9 = *v32;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v32 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v31 + 1) + 8 * i);
          v12 = [v11 userIdentity];
          v13 = [v12 lookupInfo];
          v14 = [v13 emailAddress];

          if (v14 && [*(a1 + 56) containsObject:v14])
          {
            [v5 removeParticipant:v11];
            [*(a1 + 56) removeObject:v14];
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v8);
    }

    v15 = [[WBSRetryableCKModifyRecordsOperation alloc] initWithOwner:*(a1 + 64) handlingQueue:*(*(a1 + 64) + 8)];
    [v15 setLog:*(a1 + 32)];
    v16 = [*(a1 + 64) operationConfiguration];
    [v15 setConfiguration:v16];

    [v15 setGroup:*(a1 + 72)];
    v17 = [*(a1 + 64) container];
    v18 = [v17 privateCloudDatabase];
    [v15 setDatabase:v18];

    v35 = v5;
    v19 = [NSArray arrayWithObjects:&v35 count:1];
    [v15 setRecordsToSave:v19];

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10005C628;
    v27[3] = &unk_1001341E0;
    v30 = *(a1 + 80);
    v28 = *(a1 + 56);
    v29 = *(a1 + 48);
    [v15 setPerRecordSaveBlock:v27];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10005C72C;
    v24[3] = &unk_100133CF0;
    v26 = *(a1 + 80);
    v25 = *(a1 + 48);
    [v15 setModifyRecordsCompletionBlock:v24];
    [*(*(a1 + 64) + 56) addOperation:v15];
  }

  else
  {
    v20 = *(a1 + 32);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100067F54(a1, v20, v23);
    }

    v15 = objc_retainBlock(*(a1 + 80));
    objc_sync_enter(v15);
    v21 = *(a1 + 80);
    if ((_WBSRunOnceImpl() & 1) == 0)
    {
      v22 = *(a1 + 48);
      (*(*(a1 + 80) + 16))();
    }

    objc_sync_exit(v15);
  }
}

void sub_10005C628(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v16 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_retainBlock(*(a1 + 48));
  objc_sync_enter(v12);
  v13 = *(a1 + 48);
  if ((_WBSRunOnceImpl() & 1) == 0)
  {
    v14 = *(a1 + 48);
    if (v10)
    {
      v15 = [*(a1 + 32) array];
    }

    else
    {
      v15 = *(a1 + 40);
    }

    (*(v14 + 16))(v14, v10, v15, v11);
    if (v10)
    {
    }
  }

  objc_sync_exit(v12);
}

void sub_10005C72C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v18 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = objc_retainBlock(*(a1 + 40));
  objc_sync_enter(v15);
  v16 = *(a1 + 40);
  if ((_WBSRunOnceImpl() & 1) == 0)
  {
    v17 = *(a1 + 32);
    (*(*(a1 + 40) + 16))();
  }

  objc_sync_exit(v15);
}

void sub_10005C814(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v14 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_retainBlock(*(a1 + 32));
  objc_sync_enter(v12);
  v13 = *(a1 + 32);
  if ((_WBSRunOnceImpl() & 1) == 0)
  {
    (*(*(a1 + 32) + 16))();
  }

  objc_sync_exit(v12);
}

void sub_10005C8EC(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v14 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_retainBlock(*(a1 + 32));
  objc_sync_enter(v12);
  v13 = *(a1 + 32);
  if ((_WBSRunOnceImpl() & 1) == 0)
  {
    (*(*(a1 + 32) + 16))();
  }

  objc_sync_exit(v12);
}

void sub_10005CBDC(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = *(a2 + 16);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10005CCEC;
  v17[3] = &unk_100130EC8;
  v13 = *(a1 + 32);
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v21 = v13;
  v14 = v11;
  v15 = v10;
  v16 = v9;
  dispatch_async(v12, v17);
}

void sub_10005CCEC(uint64_t a1)
{
  obj = objc_retainBlock(*(a1 + 56));
  objc_sync_enter(obj);
  v2 = *(a1 + 56);
  if ((_WBSRunOnceImpl() & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    (*(*(a1 + 56) + 16))();
  }

  objc_sync_exit(obj);
}

void sub_10005CD74(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = *(a3 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005CE4C;
  block[3] = &unk_100130E00;
  v12 = *(a1 + 40);
  v10 = *(a1 + 32);
  v11 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

void sub_10005CE4C(uint64_t a1)
{
  obj = objc_retainBlock(*(a1 + 48));
  objc_sync_enter(obj);
  v2 = *(a1 + 48);
  if ((_WBSRunOnceImpl() & 1) == 0)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    (*(*(a1 + 48) + 16))();
  }

  objc_sync_exit(obj);
}

void sub_10005D144(uint64_t a1)
{
  if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
  {
    sub_100068000();
  }
}

void sub_10005D180(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a1 + 32;
  v7 = *(a1 + 32);
  v9 = a4;
  v10 = [a5 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:v7];
  v11 = *(v8 + 8);
  if (v10)
  {
    if (os_log_type_enabled(*(v8 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_100068034(v8, v11);
    }
  }

  else if (os_log_type_enabled(*(v8 + 8), OS_LOG_TYPE_INFO))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Successfully fetched database subscription", v15, 2u);
  }

  v12 = *(a1 + 48);
  v13 = [v9 objectForKeyedSubscript:*(a1 + 32)];

  if ([v10 safari_isCloudKitNonExistentRecordError])
  {
    v14 = 0;
  }

  else
  {
    v14 = v10;
  }

  (*(v12 + 16))(v12, v13, v14);
}

void sub_10005D4E4(uint64_t a1)
{
  if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
  {
    sub_1000680D8();
  }
}

void sub_10005D520(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v8 = *(a1 + 40);
  v9 = a6;
  v14 = [a4 firstObject];
  v10 = [*(a1 + 32) subscriptionID];
  v11 = [CKPrettyError itemErrorFromError:v9 forID:v10];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v9;
  }

  (*(v8 + 16))(v8, v14, v13);
}

void sub_10005D82C(uint64_t a1)
{
  if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
  {
    sub_1000680D8();
  }
}

void sub_10005D868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v7 = *(a1 + 32);
  v8 = a6;
  v12 = [a5 firstObject];
  v9 = [CKPrettyError itemErrorFromError:v8 forID:v12];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  (*(v7 + 16))(v7, v11);
}

void sub_10005DA9C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_10005DAB8(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  if (WeakRetained)
  {
    v5 = a1[4];
    if (v3)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10006810C(v5);
      }

      v6 = WeakRetained[2];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10005DCD4;
      block[3] = &unk_100130F40;
      v18 = a1[7];
      v17 = v3;
      dispatch_async(v6, block);

      v7 = v18;
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Fetching Bookmarks zone subscription by ID", buf, 2u);
      }

      v8 = WeakRetained[1];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10005DCEC;
      v9[3] = &unk_1001316A0;
      v10 = a1[5];
      v11 = WeakRetained;
      v12 = a1[4];
      v14 = a1[7];
      v13 = a1[6];
      dispatch_async(v8, v9);

      v7 = v10;
    }
  }

  else
  {
    if (os_log_type_enabled(a1[4], OS_LOG_TYPE_ERROR))
    {
      sub_1000681A4();
    }

    (*(a1[7] + 2))();
  }
}

void sub_10005DCEC(uint64_t a1)
{
  v2 = [CKFetchSubscriptionsOperation alloc];
  v16 = *(a1 + 32);
  v3 = [NSArray arrayWithObjects:&v16 count:1];
  v4 = [v2 initWithSubscriptionIDs:v3];

  v5 = [*(a1 + 40) operationConfiguration];
  [v4 setConfiguration:v5];

  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_10005DE60;
  v11 = &unk_100134348;
  v12 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 40);
  v13 = v6;
  v14 = v7;
  v15 = *(a1 + 64);
  [v4 setFetchSubscriptionCompletionBlock:&v8];
  [*(a1 + 40) _scheduleOperation:v4 inOperationGroup:*(a1 + 56) operationQueue:{*(*(a1 + 40) + 56), v8, v9, v10, v11}];
}

void sub_10005DE60(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:*(a1 + 32)];
  v7 = *(a1 + 40);
  if (v6)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1000681D8(v7);
    }
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Successfully fetched Bookmarks zone subscription", buf, 2u);
  }

  v8 = *(*(a1 + 48) + 16);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10005DFC8;
  v11[3] = &unk_100130EC8;
  v15 = *(a1 + 56);
  v12 = v5;
  v13 = *(a1 + 32);
  v14 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v8, v11);
}

void sub_10005DFC8(uint64_t a1)
{
  v2 = *(a1 + 56);
  v4 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  if ([*(a1 + 48) safari_isCloudKitNonExistentRecordError])
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  (*(v2 + 16))(v2, v4, v3);
}

void sub_10005E1A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10005E1BC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      v6 = *(a1 + 32);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100068270(v6);
      }

      v7 = v5[2];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10005E328;
      v8[3] = &unk_100130F40;
      v10 = *(a1 + 48);
      v9 = v3;
      dispatch_async(v7, v8);
    }

    else
    {
      [WeakRetained _saveRecordZoneSubscriptionForZoneID:WeakRetained[13] subscriptionID:WeakRetained[22] inOperationGroup:*(a1 + 40) operationQueue:WeakRetained[7] completionHandler:*(a1 + 48)];
    }
  }

  else
  {
    if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
    {
      sub_100068308();
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_10005E50C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 80));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_10005E528(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = *(a1 + 32);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10006833C(v5);
      }

      v6 = WeakRetained[2];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10005E7F8;
      block[3] = &unk_100130F40;
      v28 = *(a1 + 56);
      v27 = v3;
      dispatch_async(v6, block);

      v7 = v28;
      goto LABEL_16;
    }

    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (v9)
    {
      if (v10)
      {
        v11 = *(a1 + 40);
        *buf = 138543362;
        v30 = v11;
        v12 = "Fetching record changes with server change token %{public}@.";
        v13 = v8;
        v14 = 12;
LABEL_14:
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, v12, buf, v14);
      }
    }

    else if (v10)
    {
      *buf = 0;
      v12 = "Fetching all records.";
      v13 = v8;
      v14 = 2;
      goto LABEL_14;
    }

    v15 = WeakRetained[1];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10005E814;
    v22[3] = &unk_1001343C0;
    v22[4] = WeakRetained;
    v16 = *(a1 + 64);
    v17 = *(a1 + 40);
    v18 = *(a1 + 72);
    v19 = *(a1 + 48);
    *&v20 = v17;
    *(&v20 + 1) = v19;
    *&v21 = v16;
    *(&v21 + 1) = v18;
    v24 = v21;
    v23 = v20;
    v25 = *(a1 + 56);
    dispatch_async(v15, v22);

    v7 = v24;
LABEL_16:

    goto LABEL_17;
  }

  if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
  {
    sub_1000683D4();
  }

  (*(*(a1 + 56) + 16))();
LABEL_17:
}

void sub_10005E814(uint64_t a1)
{
  v3 = _NSConcreteStackBlock;
  v4 = 3221225472;
  v5 = sub_10005E8C0;
  v6 = &unk_1001310A8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 56);
  v2 = objc_retainBlock(&v3);
  [*(a1 + 32) _fetchRecordsOnInternalQueueWithServerChangeToken:*(a1 + 40) recordChangedBlock:v2 recordWithIDWasDeletedBlock:*(a1 + 64) inOperationGroup:*(a1 + 48) completionHandler:{*(a1 + 72), v3, v4, v5, v6, v7}];
}

void sub_10005E8C0(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) cloudBookmarkItemConfigurationForRecord:?];

  if (v3)
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_10005E9D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005EA98;
  block[3] = &unk_100130E50;
  block[4] = v5;
  v9 = v3;
  v10 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

void sub_10005EA98(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) deviceCount];
  if (v2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;
  v5 = *(*(a1 + 32) + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005EB74;
  block[3] = &unk_100134410;
  v8 = *(a1 + 48);
  v9 = v4;
  v7 = *(a1 + 40);
  dispatch_async(v5, block);
}

void sub_10005ED64(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v7 = +[NSMutableArray array];
  v6 = +[NSMutableArray array];
  [v2 _saveBookmarksRecordBatch:v3 inOperationGroup:v4 clientChangeTokenData:v5 previouslySavedRecords:v7 previouslyDeletedRecordIDs:v6 mergeHandler:a1[8] completionHandler:a1[9]];
}

uint64_t sub_10005F07C(uint64_t a1)
{
  if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
  {
    sub_100067860();
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_10005F0D8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [a6 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:0];
  if ([v10 _isUnrecoverableCloudKitWriteError:v13])
  {
    v14 = *(a1 + 32);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100067C90(v14);
    }

    v15 = v10[2];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005F2B8;
    block[3] = &unk_100130F40;
    v16 = &v29;
    v17 = *(a1 + 40);
    v18 = &v28;
    v28 = v13;
    v29 = v17;
    v19 = v13;
    dispatch_async(v15, block);
  }

  else
  {
    v20 = v10[2];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10005F2D4;
    v22[3] = &unk_100130EC8;
    v16 = &v26;
    v26 = *(a1 + 40);
    v18 = &v23;
    v23 = v11;
    v24 = v12;
    v25 = v13;
    v21 = v13;
    dispatch_async(v20, v22);
  }
}

void sub_10005F524(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a3;
  v9 = [a6 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:*(a1 + 32)];
  v10 = *(a1 + 40);
  if (v9)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_100068408(v10);
    }
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Successfully deleted bookmark zone", buf, 2u);
  }

  v11 = v8[11];
  v8[11] = 0;

  v12 = v8[6];
  v8[6] = 0;

  v13 = v8;
  objc_sync_enter(v13);
  v14 = v13[9];
  v13[9] = 0;

  objc_sync_exit(v13);
  v15 = v13[2];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10005F6B4;
  v18[3] = &unk_100130F40;
  v16 = *(a1 + 48);
  v19 = v9;
  v20 = v16;
  v17 = v9;
  dispatch_async(v15, v18);
}

void sub_10005F880(uint64_t a1)
{
  if (*(a1 + 64) != 1 || *(a1 + 65) == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 48);
    *(v2 + 48) = 0;
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 64);
  if (v5)
  {
    v14 = objc_retainBlock(*(a1 + 56));
    [v5 addObject:v14];
  }

  else if (*(v4 + 48))
  {
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Cached record zone already present; nothing to do", buf, 2u);
    }

    v7 = *(*(a1 + 32) + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005FAB0;
    block[3] = &unk_100131628;
    v17 = *(a1 + 56);
    dispatch_async(v7, block);
  }

  else
  {
    v8 = +[NSMutableArray array];
    v9 = *(a1 + 32);
    v10 = *(v9 + 64);
    *(v9 + 64) = v8;

    v11 = *(*(a1 + 32) + 64);
    v12 = objc_retainBlock(*(a1 + 56));
    [v11 addObject:v12];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10005FAC4;
    v15[3] = &unk_1001344B0;
    v15[4] = *(a1 + 32);
    v13 = objc_retainBlock(v15);
    [*(a1 + 32) _prepareBookmarksRecordZoneOnInternalQueueAfterExternalCompletionHandlersHaveBeenStashedInvalidatingCachedZone:*(a1 + 65) createIfNeeded:*(a1 + 64) inOperationGroup:*(a1 + 48) withCompletionHandler:v13];
  }
}

void sub_10005FAC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005FB6C;
  v7[3] = &unk_1001314F8;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_10005FB6C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = 0;

  v5 = *(*(a1 + 32) + 16);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005FC54;
  v7[3] = &unk_1001314F8;
  v8 = v2;
  v9 = *(a1 + 40);
  v6 = v2;
  dispatch_async(v5, v7);
}

void sub_10005FC54(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        (*(*(*(&v8 + 1) + 8 * v6) + 16))(*(*(&v8 + 1) + 8 * v6));
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_10005FFA4(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v11 copy];
  objc_initWeak(&location, v10);
  v14 = [v13 objectForKeyedSubscript:*(a1 + 32)];
  v15 = [v12 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:*(a1 + 32)];
  if (v14)
  {
    objc_storeStrong(v10 + 6, v14);
    v16 = *(a1 + 48);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000602C0;
    v22[3] = &unk_100134500;
    objc_copyWeak(&v26, &location);
    v25 = *(a1 + 56);
    v23 = *(a1 + 40);
    v24 = *(a1 + 48);
    [v10 fetchMinimumSyncAPIVersionInOperationGroup:v16 withCompletionHandler:v22];

    objc_destroyWeak(&v26);
  }

  else
  {
    v17 = *(a1 + 40);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "No existing record zone found", buf, 2u);
    }

    v18 = *(a1 + 64);
    v19 = *(a1 + 40);
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (v18 == 1)
    {
      if (v20)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Will attempt to set up zone from scratch", buf, 2u);
      }

      [v10 _setUpRecordZoneInOperationGroup:*(a1 + 48) withCompletionHandler:*(a1 + 56)];
    }

    else
    {
      if (v20)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Bailing out without setting up zone", buf, 2u);
      }

      v21 = *(v10 + 2);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000602AC;
      block[3] = &unk_100130F40;
      v29 = *(a1 + 56);
      v28 = v15;
      dispatch_async(v21, block);
    }
  }

  objc_destroyWeak(&location);
}

void sub_100060284(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1000602C0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (v5)
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        sub_1000684A0();
      }

      v8 = v7[2];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10006046C;
      v11[3] = &unk_100130F40;
      v13 = *(a1 + 48);
      v12 = v5;
      dispatch_async(v8, v11);
    }

    else if (a2 <= 4)
    {
      [WeakRetained _setUpEncryptionInfoInOperationGroup:*(a1 + 40) withCompletionHandler:*(a1 + 48)];
    }

    else
    {
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        sub_1000684D4();
      }

      v9 = *(a1 + 48);
      v10 = [NSError errorWithDomain:@"CloudBookmarkStoreErrorDomain" code:2 userInfo:0];
      (*(v9 + 16))(v9, v10);
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_1000605D4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    [*(a1 + 32) _cacheEncryptionRecord:v7];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEBUG))
    {
      sub_100068584();
    }

    v10 = objc_alloc_init(WBSHashGenerator);
    v11 = [v10 encryptionInfoRecordWithZone:*(*(a1 + 32) + 104)];
    v12 = *(a1 + 32);
    v13 = v12[5];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100060748;
    v15[3] = &unk_1001328B8;
    v15[4] = v12;
    v14 = *(a1 + 48);
    v16 = *(a1 + 56);
    [v12 saveOrLoadRecord:v11 inDatabase:v13 operationGroup:v14 completionHandler:v15];
  }
}

void sub_100060748(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (a2)
  {
    [*(a1 + 32) _cacheEncryptionRecord:a2];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100060A74(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a5;
  v10 = [a4 objectForKeyedSubscript:*(a1 + 32)];
  if (v10)
  {
    v11 = v8[2];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100060C6C;
    block[3] = &unk_100130E00;
    v12 = &v26;
    v26 = *(a1 + 48);
    v13 = &v24;
    v24 = v10;
    v25 = *(a1 + 32);
    dispatch_async(v11, block);
  }

  else
  {
    v14 = [v9 safari_cloudKitPartialErrorForItemID:*(a1 + 32)];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v9;
    }

    v17 = v16;

    v18 = *(a1 + 40);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000685B8((a1 + 32), v17, v18);
    }

    v19 = v8[2];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100060C88;
    v20[3] = &unk_100130F40;
    v12 = &v22;
    v22 = *(a1 + 48);
    v13 = &v21;
    v9 = v17;
    v21 = v9;
    dispatch_async(v19, v20);
  }
}

void sub_100060EAC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a4;
  v9 = a5;
  v10 = *(a3 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100060F94;
  block[3] = &unk_100130E00;
  v11 = *(a1 + 32);
  v16 = v9;
  v17 = v11;
  v15 = v8;
  v12 = v9;
  v13 = v8;
  dispatch_async(v10, block);
}

void sub_1000611A8(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v9 = a3;
  v10 = *(a1 + 32);
  v11 = a6;
  v12 = a4;
  v13 = [v10 recordID];
  v14 = [v11 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:v13];

  v15 = [v12 firstObject];

  if (([v14 safari_isCloudKitWriteConflictError] & 1) != 0 || objc_msgSend(v14, "safari_isAtomicWriteError"))
  {
    v16 = *(a1 + 40);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 32);
      v18 = v16;
      v19 = [v17 recordID];
      *buf = 138543362;
      v49 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Server already has a record with ID %{public}@, use it instead", buf, 0xCu);
    }

    v20 = [v14 userInfo];
    v21 = [v20 objectForKeyedSubscript:CKRecordChangedErrorServerRecordKey];

    v22 = 0;
    v15 = v21;
    if (v21)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v22 = 1;
    if (v15)
    {
LABEL_6:
      v23 = v9[2];
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_1000616AC;
      v44[3] = &unk_100132D00;
      v24 = &v46;
      v46 = *(a1 + 48);
      v25 = &v45;
      v45 = v15;
      v47 = v22;
      v26 = v44;
      goto LABEL_20;
    }
  }

  if (([v14 safari_isCloudKitWriteConflictError] & 1) != 0 || objc_msgSend(v14, "safari_isAtomicWriteError"))
  {
    v27 = *(a1 + 40);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_100068844((a1 + 32), v27);
    }

    v23 = v9[2];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1000616C8;
    v41[3] = &unk_100130F40;
    v24 = &v43;
    v43 = *(a1 + 48);
    v25 = &v42;
    v42 = v14;
    v26 = v41;
  }

  else if (([v14 safari_isUnrecoverableCloudKitError] & 1) != 0 || (objc_msgSend(v14, "safari_isCloudKitPartialFailureError") & 1) != 0 || (objc_msgSend(v14, "safari_isCloudKitNonExistentRecordError") & 1) != 0 || objc_msgSend(v14, "safari_isCloudKitBatchTooLargeError"))
  {
    v28 = *(a1 + 40);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_10006878C((a1 + 32), v28);
    }

    v23 = v9[2];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000616E4;
    block[3] = &unk_100130F40;
    v24 = &v40;
    v40 = *(a1 + 48);
    v25 = &v39;
    v39 = v14;
    v26 = block;
  }

  else
  {
    v29 = [v14 safari_isOrContainsCloudKitMissingZoneError];
    v30 = *(a1 + 40);
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (v29)
    {
      if (v31)
      {
        sub_1000686F4((a1 + 32), v30);
      }

      v23 = v9[2];
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_100061700;
      v35[3] = &unk_100130F40;
      v24 = &v37;
      v37 = *(a1 + 48);
      v25 = &v36;
      v36 = v14;
      v26 = v35;
    }

    else
    {
      if (v31)
      {
        sub_10006863C((a1 + 32), v30);
      }

      v23 = v9[2];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_10006171C;
      v32[3] = &unk_100130F40;
      v24 = &v34;
      v34 = *(a1 + 48);
      v25 = &v33;
      v33 = v14;
      v26 = v32;
    }
  }

LABEL_20:
  dispatch_async(v23, v26);
}

void sub_100061878(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 firstObject];
  (*(v4 + 16))(v4, v6, v5);
}

void sub_100061AA0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = *(a1 + 32);
  if (v14)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v28 = v14;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Did successfully delete records with IDs %{public}@", buf, 0xCu);
    }

    v17 = v12[2];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100061CD0;
    v24[3] = &unk_100130F40;
    v18 = &v26;
    v26 = *(a1 + 48);
    v19 = &v25;
    v25 = v14;
    v20 = v24;
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000688FC(a1, v16);
    }

    v17 = v12[2];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100061CE8;
    v21[3] = &unk_100130F40;
    v18 = &v23;
    v23 = *(a1 + 48);
    v19 = &v22;
    v22 = v15;
    v20 = v21;
  }

  dispatch_async(v17, v20);
}