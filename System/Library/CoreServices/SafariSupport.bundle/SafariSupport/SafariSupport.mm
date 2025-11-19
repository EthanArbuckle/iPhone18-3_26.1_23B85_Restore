uint64_t sub_100001464(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100001474(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1000014A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000014B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000014C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000014D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000014E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000014FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100001AD0(uint64_t a1)
{
  result = [*(a1 + 32) _isDatabaseOpen];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) _databaseWillBeOpened];
    v3 = *(a1 + 32);
    v4 = v3[1];

    return [v3 _openDatabase:v4 deleteDatabaseFileOnError:1];
  }

  return result;
}

uint64_t sub_100001B78()
{
  if (qword_1001540D0 != -1)
  {
    sub_1000D263C();
  }

  return qword_1001540C8;
}

id sub_100001C30(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100002960;
  v3[3] = &unk_100134E60;
  v3[4] = *(a1 + 32);
  return [a2 fetchDevicesWithCompletionHandler:v3];
}

id sub_100001E04(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v14 = 0;
  v7 = [[WBSSQLiteStatement alloc] initWithDatabase:v5 query:v6 error:&v14];
  v8 = v14;
  v9 = v8;
  if (v7)
  {
    v10 = [v7 execute];
    [v7 invalidate];
    if ((v10 - 100) >= 2 && v10 != 0)
    {
      [v5 reportErrorWithCode:v10 statement:objc_msgSend(v7 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v12 = v8;
      *a2 = v9;
    }

    v10 = [v9 code];
  }

  return v10;
}

id sub_100002034(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [[WBSSQLiteStatement alloc] initWithDatabase:v3 query:v4];
  v6 = [v5 fetch];

  return v6;
}

void sub_100002960(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100002A48;
  v14[3] = &unk_1001311E8;
  v14[4] = v10;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  [v10 _handleManateeErrorIfNeeded:v11 completionHandler:v14];
}

void sub_100002A48(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  v7 = *(a1 + 32);
  v2 = *(v7 + 8);
  block[1] = 3221225472;
  block[2] = sub_100002B8C;
  block[3] = &unk_1001311E8;
  v3 = *(&v7 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  dispatch_async(v2, block);
}

void sub_100002B8C(void *a1)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1[4] + 96);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = a1[5];
        v8 = a1[6];
        v9 = a1[7];
        (*(*(*(&v13 + 1) + 8 * v6) + 16))();
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v10 = a1[4];
  v11 = *(v10 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002CE8;
  block[3] = &unk_100131408;
  block[4] = v10;
  dispatch_async(v11, block);
}

void sub_100002CE8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 96);
  *(v2 + 96) = 0;

  v4 = [*(*(a1 + 32) + 104) count];
  if (v4)
  {
    v5 = v4;
    v6 = sub_100001B78();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134217984;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Performing a fetch to fulfill request from %ld outstanding callers", &v13, 0xCu);
    }

    v7 = [*(*(a1 + 32) + 104) copy];
    v8 = *(a1 + 32);
    v9 = *(v8 + 96);
    *(v8 + 96) = v7;

    v10 = +[NSMutableArray array];
    v11 = *(a1 + 32);
    v12 = *(v11 + 104);
    *(v11 + 104) = v10;

    [*(a1 + 32) _fetchDevices];
  }

  xpc_transaction_end();
}

id sub_100002DF8(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [v1 userInfo];
    v3 = [v2 safari_numberForKey:CKErrorRetryAfterKey];

    if (v3)
    {
      v9 = CKErrorRetryAfterKey;
      v10 = v3;
      v4 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    }

    else
    {
      v4 = 0;
    }

    v6 = [v1 domain];
    v7 = [v1 code];

    v5 = [NSError errorWithDomain:v6 code:v7 userInfo:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_100002FA0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 272) createOperationGroupWithName:@"Cloud Settings Fetch Setting Changes Immediately" useLargerExpectedSendSize:0];
  [*(a1 + 32) _attemptCloudSettingsSyncForTrigger:1 inOperationGroup:v2];
}

uint64_t sub_10000300C()
{
  if (qword_1001540E0 != -1)
  {
    sub_1000D2650();
  }

  return qword_1001540D8;
}

const __CFString *sub_100003044(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"User Did Update Database";
  }

  else
  {
    return off_100132188[a1 - 1];
  }
}

void sub_10000306C(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v10 + 1) + 8 * v9) + 16))();
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

const __CFString *stringFromCloudSettingsSyncResult(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Success";
  }

  else
  {
    return off_100133BB0[a1 - 1];
  }
}

uint64_t start(WTF *a1)
{
  WTF::initializeMainThread(a1);
  v1 = objc_autoreleasePoolPush();
  v2 = objc_alloc_init(SafariBookmarksSyncAgent);
  v3 = qword_100153E28;
  qword_100153E28 = v2;

  objc_autoreleasePoolPop(v1);
  WBSRunLoopRunUntilTerminationSignal();
  return 0;
}

id sub_100003294()
{
  if (qword_100153E38 != -1)
  {
    sub_1000080A0();
  }

  v1 = qword_100153E30;

  return v1;
}

void sub_100003624(uint64_t a1)
{
  v2 = [CKFetchSubscriptionsOperation alloc];
  v11 = @"CloudExtensionZoneSubscription";
  v3 = [NSArray arrayWithObjects:&v11 count:1];
  v4 = [v2 initWithSubscriptionIDs:v3];

  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_10000374C;
  v8 = &unk_100130E28;
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  [v4 setFetchSubscriptionCompletionBlock:&v5];
  [*(a1 + 32) _scheduleOperation:v4 inOperationGroup:*(a1 + 40) operationQueue:{*(*(a1 + 32) + 24), v5, v6, v7, v8, v9}];
}

void sub_10000374C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:@"CloudExtensionZoneSubscription"];
  v7 = sub_1000D23FC();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000080E8(v8);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Successfully fetched CloudExtensions zone subscription", buf, 2u);
  }

  v9 = *(*(a1 + 32) + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003894;
  block[3] = &unk_100130E00;
  v10 = *(a1 + 40);
  v15 = v6;
  v16 = v10;
  v14 = v5;
  v11 = v6;
  v12 = v5;
  dispatch_async(v9, block);
}

void sub_100003894(uint64_t a1)
{
  v2 = *(a1 + 48);
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"CloudExtensionZoneSubscription"];
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

void sub_100003A54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100003A70(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6 && ([v6 safari_isOrContainsCloudKitMissingZoneError] & 1) != 0)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v9 = sub_1000D23FC();
    v10 = v9;
    if (WeakRetained)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Saving CloudExtensions zone subscription failed because of missing zone, attempting to create zone", buf, 2u);
      }

      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100003BF4;
      v12[3] = &unk_100130E78;
      v11 = a1[4];
      v14 = a1[5];
      v12[4] = WeakRetained;
      v13 = a1[4];
      [WeakRetained createCloudExtensionsRecordZoneInOperationGroup:v11 completionHandler:v12];
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100008178();
      }

      (*(a1[5] + 2))();
    }
  }

  else
  {
    (*(a1[5] + 2))();
  }
}

void sub_100003BF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000D23FC();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000081AC();
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Saving CloudExtensions zone subscription after creating zone", v6, 2u);
    }

    [*(a1 + 32) _saveRecordZoneSubscriptionInOperationGroup:*(a1 + 40) operationQueue:*(*(a1 + 32) + 24) completionHandler:*(a1 + 48)];
  }
}

void sub_100003E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100003E88(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && v9 && *(a1 + 64) == 1 && ([v9 safari_isOrContainsCloudKitMissingZoneError] & 1) != 0)
  {
    v11 = sub_1000D23FC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Attempting to create CloudExtensions zone before retrying save", buf, 2u);
    }

    v12 = *(a1 + 32);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000406C;
    v13[3] = &unk_100130EF0;
    objc_copyWeak(&v20, (a1 + 56));
    v19 = *(a1 + 48);
    v14 = v7;
    v15 = v8;
    v16 = v9;
    v17 = *(a1 + 40);
    v18 = *(a1 + 32);
    [WeakRetained createCloudExtensionsRecordZoneInOperationGroup:v12 completionHandler:v13];

    objc_destroyWeak(&v20);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_10000406C(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v6 = WeakRetained[5];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000041CC;
      v11[3] = &unk_100130EC8;
      v15 = *(a1 + 72);
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      dispatch_async(v6, v11);
    }

    else
    {
      v10 = sub_1000D23FC();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Retrying save after creating CloudExtensionsZone", buf, 2u);
      }

      [v5 saveCloudExtensionsRecordBatch:*(a1 + 56) createCloudExtensionsZoneIfMissing:0 inOperationGroup:*(a1 + 64) completionHandler:*(a1 + 72)];
    }
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    (*(*(a1 + 72) + 16))();
  }
}

void sub_100004580(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = [v3 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:0];
    [v5 addObject:v6];
  }

  [*(a1 + 40) removeObject:*(a1 + 48)];
  if (![*(a1 + 40) count])
  {
    v7 = [NSError safari_errorFromErrors:*(a1 + 32)];
    if (v7)
    {
      v8 = sub_1000D23FC();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000081E0(v8);
      }
    }

    v9 = *(*(a1 + 56) + 40);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000046BC;
    v12[3] = &unk_100130F40;
    v10 = *(a1 + 64);
    v13 = v7;
    v14 = v10;
    v11 = v7;
    dispatch_async(v9, v12);
  }
}

void sub_100004D28(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:0];
  v7 = *(a1[4] + 32);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100004E14;
  v12[3] = &unk_100130FB8;
  v9 = a1[5];
  v8 = a1[6];
  v13 = v6;
  v16 = v8;
  v14 = v9;
  v15 = v5;
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, v12);
}

void sub_100004E14(uint64_t *a1)
{
  v2 = a1 + 4;
  if (([a1[4] safari_isUnrecoverableCloudKitError] & 1) != 0 || objc_msgSend(*v2, "safari_isOrContainsCloudKitMissingZoneError"))
  {
    v3 = sub_1000D23FC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10000843C(v2, v3);
    }

LABEL_5:
    *(*(a1[7] + 8) + 24) = 1;
    return;
  }

  if ([*v2 safari_isCloudKitBatchTooLargeError])
  {
    v4 = sub_1000D23FC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100008408();
    }

    goto LABEL_5;
  }

  if (!*v2)
  {
    goto LABEL_14;
  }

  if (a1[6])
  {
    v5 = [*v2 domain];
    v6 = [v5 isEqualToString:CKErrorDomain];

    if ((v6 & 1) == 0)
    {
      v10 = sub_1000D23FC();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100008270(v2, v10);
      }

      goto LABEL_5;
    }

    if ([*v2 code] == 22)
    {
LABEL_14:
      v7 = a1[5];
      v8 = a1[6];

      [v7 addObject:v8];
      return;
    }

    *(*(a1[7] + 8) + 24) = 1;
    v11 = sub_1000D23FC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000082F8(v2, v11);
    }
  }

  else
  {
    v9 = sub_1000D23FC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100008380(v2, v9);
    }
  }
}

void sub_100004FA0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [a4 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:0];
  v10 = *(*(a1 + 32) + 32);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100005158;
  v21[3] = &unk_100131058;
  v22 = v9;
  v23 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 32);
  v24 = v11;
  v25 = v12;
  v13 = *(a1 + 80);
  v30 = *(a1 + 88);
  v26 = v7;
  v27 = v8;
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  *&v16 = *(a1 + 72);
  *(&v16 + 1) = v13;
  *&v17 = v14;
  *(&v17 + 1) = v15;
  v28 = v17;
  v29 = v16;
  v18 = v8;
  v19 = v7;
  v20 = v9;
  objc_copyWeak(&v31, (a1 + 96));
  dispatch_async(v10, v21);
  objc_destroyWeak(&v31);
}

void sub_100005158(uint64_t a1)
{
  v2 = (a1 + 32);
  if (([*(a1 + 32) safari_isUnrecoverableCloudKitError] & 1) != 0 || objc_msgSend(*v2, "safari_isOrContainsCloudKitMissingZoneError"))
  {
    v3 = sub_1000D23FC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100008560(v2, v3);
    }

    v4 = [*(a1 + 40) copy];
    v5 = [*(a1 + 48) copy];
    v6 = *(*(a1 + 56) + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005824;
    block[3] = &unk_100130EC8;
    v74 = *(a1 + 104);
    v71 = v4;
    v72 = v5;
    v73 = *(a1 + 32);
    v7 = v5;
    v8 = v4;
    dispatch_async(v6, block);
    *(*(*(a1 + 112) + 8) + 24) = 1;

    goto LABEL_6;
  }

  if ([*(a1 + 64) count])
  {
    [*(a1 + 40) addObjectsFromArray:*(a1 + 64)];
  }

  if ([*(a1 + 72) count])
  {
    [*(a1 + 48) addObjectsFromArray:*(a1 + 72)];
  }

  if (*(*(*(a1 + 112) + 8) + 24) == 1)
  {
    v9 = sub_1000D23FC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10000852C();
    }

    v10 = [*(a1 + 40) copy];
    v11 = [*(a1 + 48) copy];
    v12 = *(*(a1 + 56) + 40);
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_10000583C;
    v65[3] = &unk_100130EC8;
    v69 = *(a1 + 104);
    v66 = v10;
    v67 = v11;
    v68 = *(a1 + 32);
    v13 = v11;
    v8 = v10;
    dispatch_async(v12, v65);

    v14 = v69;
LABEL_15:

LABEL_6:
    return;
  }

  if ([*v2 safari_isCloudKitBatchTooLargeError])
  {
    v15 = [*(a1 + 80) count];
    if (v15 > 1)
    {
      v29 = v15;
      v30 = v15 >> 1;
      v8 = [*(a1 + 80) subarrayWithRange:{0, v15 >> 1}];
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_10000586C;
      v50[3] = &unk_100131008;
      v51 = *(a1 + 40);
      v31 = *(a1 + 48);
      v32 = *(a1 + 56);
      v52 = v31;
      v53 = v32;
      v57 = *(a1 + 104);
      v54 = *(a1 + 80);
      v58 = v30;
      v59 = v29;
      v55 = *(a1 + 88);
      v56 = *(a1 + 96);
      v33 = objc_retainBlock(v50);
      v34 = sub_1000D23FC();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Batch record save operation completed but we need to re-batch", buf, 2u);
      }

      [*(a1 + 56) _saveCloudExtensionsRecordBatch:v8 previouslySavedRecords:*(a1 + 40) previouslyDeletedRecordIDs:*(a1 + 48) retryManager:*(a1 + 88) inOperationGroup:*(a1 + 96) completionHandler:v33];

      goto LABEL_6;
    }

    v16 = sub_1000D23FC();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000084F8();
    }

    v17 = [*(a1 + 40) copy];
    v18 = [*(a1 + 48) copy];
    v19 = *(*(a1 + 56) + 40);
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_100005854;
    v60[3] = &unk_100130EC8;
    v64 = *(a1 + 104);
    v61 = v17;
    v62 = v18;
    v63 = *(a1 + 32);
    v13 = v18;
    v8 = v17;
    dispatch_async(v19, v60);

    v14 = v64;
    goto LABEL_15;
  }

  v20 = *(a1 + 88);
  v21 = *(a1 + 32);
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100005A1C;
  v40[3] = &unk_100131030;
  objc_copyWeak(&v48, (a1 + 120));
  v41 = *(a1 + 32);
  v42 = *(a1 + 40);
  v43 = *(a1 + 48);
  v47 = *(a1 + 104);
  v44 = *(a1 + 80);
  v45 = *(a1 + 88);
  v46 = *(a1 + 96);
  v22 = [v20 scheduleRetryIfNeededForError:v21 usingBlock:v40];
  if (v22 != 1)
  {
    if (v22 == 2)
    {
      v23 = sub_1000D23FC();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1000084C4();
      }
    }

    v24 = [*(a1 + 40) copy];
    v25 = [*(a1 + 48) copy];
    v26 = *(*(a1 + 56) + 40);
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100005B0C;
    v35[3] = &unk_100130EC8;
    v39 = *(a1 + 104);
    v36 = v24;
    v37 = v25;
    v38 = *(a1 + 32);
    v27 = v25;
    v28 = v24;
    dispatch_async(v26, v35);
  }

  objc_destroyWeak(&v48);
}

void sub_10000586C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = [v5 safari_isCloudKitBatchTooLargeError];
  v7 = sub_1000D23FC();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000085F0();
    }

    v9 = [*(a1 + 32) copy];
    v10 = [*(a1 + 40) copy];
    v11 = *(*(a1 + 48) + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005A04;
    block[3] = &unk_100130EC8;
    v19 = *(a1 + 80);
    v16 = v9;
    v17 = v10;
    v18 = v5;
    v12 = v10;
    v13 = v9;
    dispatch_async(v11, block);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Attempting to re-batch record save", v14, 2u);
    }

    v13 = [*(a1 + 56) subarrayWithRange:{*(a1 + 88), *(a1 + 96) - *(a1 + 88)}];
    [*(a1 + 48) _saveCloudExtensionsRecordBatch:v13 previouslySavedRecords:*(a1 + 32) previouslyDeletedRecordIDs:*(a1 + 40) retryManager:*(a1 + 64) inOperationGroup:*(a1 + 72) completionHandler:*(a1 + 80)];
  }
}

void sub_100005A1C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v3 = sub_1000D23FC();
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Attempting to retry batch save request", v8, 2u);
    }

    [WeakRetained _saveCloudExtensionsRecordBatch:*(a1 + 56) previouslySavedRecords:*(a1 + 40) previouslyDeletedRecordIDs:*(a1 + 48) retryManager:*(a1 + 64) inOperationGroup:*(a1 + 72) completionHandler:*(a1 + 80)];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100008624(a1, v4);
    }

    v5 = [*(a1 + 40) copy];
    v6 = [*(a1 + 48) copy];
    v7 = *(a1 + 32);
    (*(*(a1 + 80) + 16))();
  }
}

void sub_100006090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  objc_destroyWeak(&a38);
  objc_destroyWeak((v38 - 144));
  _Unwind_Resume(a1);
}

void sub_1000060CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000D23FC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000086B4();
  }

  v5 = *(*(a1 + 32) + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000061A8;
  v8[3] = &unk_100130F40;
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  dispatch_async(v5, v8);
}

void sub_1000061BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_1000D23FC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100008728();
  }

  v8 = *(*(a1 + 32) + 32);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000062AC;
  v11[3] = &unk_100130F40;
  v9 = *(a1 + 40);
  v12 = v5;
  v13 = v9;
  v10 = v5;
  dispatch_async(v8, v11);
}

uint64_t sub_1000062C0(id *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100006470;
  v15[3] = &unk_100131120;
  objc_copyWeak(&v21, a1 + 10);
  v5 = v3;
  v16 = v5;
  v6 = a1[7];
  v7 = a1[4];
  v8 = a1[5];
  v19 = a1[8];
  v20 = a1[9];
  *&v9 = a1[6];
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
      v12 = sub_1000D23FC();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000087AC();
      }
    }

    v13 = 0;
  }

  objc_destroyWeak(&v21);
  return v13;
}

void sub_100006470(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[4];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100006604;
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
    v5 = sub_1000D23FC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000087E0(a1, v5);
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

void sub_10000661C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v9 = a3;
  v10 = a4;
  v11 = [a6 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:0];
  v12 = *(*(a1 + 32) + 32);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000674C;
  v18[3] = &unk_100131170;
  v19 = v11;
  v13 = *(a1 + 40);
  v14 = *(a1 + 32);
  v23 = v13;
  v20 = v14;
  v24 = *(a1 + 48);
  v21 = v9;
  v22 = v10;
  v15 = v10;
  v16 = v9;
  v17 = v11;
  dispatch_async(v12, v18);
}

void sub_10000674C(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = *(a1 + 64);
    if ((*(*(a1 + 64) + 16))())
    {
      return;
    }

    v4 = sub_1000D23FC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100008878(v2, v4);
    }

    v5 = *(*(a1 + 40) + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100006914;
    block[3] = &unk_100130F40;
    v6 = &v17;
    v17 = *(a1 + 72);
    v7 = &v16;
    v16 = *(a1 + 32);
    dispatch_async(v5, block);
  }

  else
  {
    v8 = sub_1000D23FC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Fetch records from record zone operation completed for CloudExtensions record zone", buf, 2u);
    }

    v9 = *(*(a1 + 40) + 40);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000069A0;
    v10[3] = &unk_100130E00;
    v6 = &v13;
    v13 = *(a1 + 72);
    v7 = &v11;
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    dispatch_async(v9, v10);
  }
}

void sub_100006914(uint64_t a1)
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

void sub_1000069A0(uint64_t a1)
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

void sub_100006A2C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    v5 = [v3 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:0];

    if (((*(*(a1 + 40) + 16))() & 1) == 0)
    {
      v6 = sub_1000D23FC();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100008900(v6);
      }

      v7 = *(*(a1 + 32) + 40);
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100006B44;
      v8[3] = &unk_100130F40;
      v10 = *(a1 + 48);
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

void sub_100006B44(uint64_t a1)
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

id sub_100006FB8(uint64_t a1)
{
  [*(a1 + 32) setDatabase:*(*(a1 + 40) + 8)];
  if (*(a1 + 48))
  {
    [*(a1 + 32) setGroup:?];
  }

  v2 = *(a1 + 56);
  v3 = *(a1 + 32);

  return [v2 addOperation:v3];
}

void sub_100007164(id *a1)
{
  v2 = sub_100003294();
  v3 = [CKModifyRecordZonesOperation alloc];
  v4 = [[CKRecordZone alloc] initWithZoneID:v2];
  v20 = v4;
  v5 = [NSArray arrayWithObjects:&v20 count:1];
  v6 = [v3 initWithRecordZonesToSave:v5 recordZoneIDsToDelete:0];

  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100007328;
  v13 = &unk_100131238;
  v7 = v2;
  v14 = v7;
  v15 = a1[4];
  objc_copyWeak(&v19, a1 + 8);
  v18 = a1[7];
  v8 = a1[5];
  v9 = a1[6];
  v16 = v8;
  v17 = v9;
  [v6 setModifyRecordZonesCompletionBlock:&v10];
  [a1[6] _scheduleOperation:v6 inOperationGroup:a1[5] operationQueue:{*(a1[6] + 3), v10, v11, v12, v13}];

  objc_destroyWeak(&v19);
}

void sub_100007328(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v17 = sub_1000D23FC();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Successfully created CloudExtensions zone", buf, 2u);
    }

    v14 = 0;
    goto LABEL_12;
  }

  v10 = v9;
  v11 = [v9 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:*(a1 + 32)];

  v12 = sub_1000D23FC();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_100008990(v12, v11);
  }

  v13 = *(a1 + 40);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100007600;
  v24[3] = &unk_100131210;
  objc_copyWeak(&v29, (a1 + 72));
  v28 = *(a1 + 64);
  v14 = v11;
  v25 = v14;
  v26 = *(a1 + 48);
  v27 = *(a1 + 40);
  v15 = [v13 scheduleRetryIfNeededForError:v14 usingBlock:v24];
  if (v15 != 1)
  {
    if (v15 == 2)
    {
      v16 = sub_1000D23FC();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100008A28();
      }
    }

    objc_destroyWeak(&v29);
LABEL_12:
    v18 = *(*(a1 + 56) + 40);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000076C0;
    v20[3] = &unk_100130F40;
    v22 = *(a1 + 64);
    v14 = v14;
    v21 = v14;
    dispatch_async(v18, v20);

    goto LABEL_16;
  }

  v19 = sub_1000D23FC();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Waiting to retry creation of CloudExtensions zone", buf, 2u);
  }

  objc_destroyWeak(&v29);
LABEL_16:
}

void sub_100007600(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = sub_1000D23FC();
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Retrying creation of CloudExtensions zone", v6, 2u);
    }

    [WeakRetained _createCloudExtensionsRecordZoneInOperationGroup:*(a1 + 40) withRetryManager:*(a1 + 48) completionHandler:*(a1 + 56)];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100008A5C();
    }

    v5 = *(a1 + 32);
    (*(*(a1 + 56) + 16))();
  }
}

void sub_1000077F4(uint64_t a1)
{
  v2 = [CKRecordZoneSubscription alloc];
  v3 = sub_100003294();
  v4 = [v2 initWithZoneID:v3 subscriptionID:@"CloudExtensionZoneSubscription"];

  [v4 setNotificationInfo:*(a1 + 32)];
  v5 = sub_1000D23FC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Attempting to save zone subscription for CloudExtensions zone", buf, 2u);
  }

  v6 = [CKModifySubscriptionsOperation alloc];
  v18 = v4;
  v7 = [NSArray arrayWithObjects:&v18 count:1];
  v8 = [v6 initWithSubscriptionsToSave:v7 subscriptionIDsToDelete:0];

  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1000079A4;
  v14 = &unk_100131288;
  v9 = *(a1 + 64);
  v15 = v4;
  v16 = v9;
  v10 = v4;
  [v8 setModifySubscriptionsCompletionBlock:&v11];
  [*(a1 + 40) _scheduleOperation:v8 inOperationGroup:*(a1 + 48) operationQueue:{*(a1 + 56), v11, v12, v13, v14}];
}

void sub_1000079A4(uint64_t a1, void *a2, uint64_t a3, void *a4)
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

void sub_100007B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100007B90(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = [a4 safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:0];
  v6 = *(*(a1 + 32) + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100007C6C;
  v10[3] = &unk_1001312D8;
  objc_copyWeak(&v14, (a1 + 48));
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = v5;
  v12 = v7;
  v13 = v8;
  v9 = v5;
  dispatch_async(v6, v10);

  objc_destroyWeak(&v14);
}

void sub_100007C6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (*(a1 + 32))
  {
    v3 = sub_1000D23FC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100008A90((a1 + 32), v3);
    }

    [*(a1 + 40) _recursivelyCancelDependentOperations:WeakRetained operationQueue:*(*(a1 + 40) + 24)];
  }

  v4 = sub_1000D23FC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Finished %@", buf, 0xCu);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = *(*(a1 + 40) + 40);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100007DE4;
    v7[3] = &unk_100130F40;
    v9 = v5;
    v8 = *(a1 + 32);
    dispatch_async(v6, v7);
  }
}

void sub_100007FD4(id a1)
{
  v1 = [[CKRecordZoneID alloc] initWithZoneName:@"CloudExtensions" ownerName:CKCurrentUserDefaultName];
  v2 = qword_100153E30;
  qword_100153E30 = v1;
}

void sub_100008028(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100008048(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id sub_100008088(uint64_t *a1, void *a2)
{
  v3 = *a1;

  return a2;
}

void sub_1000080E8(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Failed to fetch CloudExtensions zone subscription by ID with error: %{public}@", v6, v7, v8, v9, v10);
}

void sub_1000081E0(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Deleting records failed: %{public}@", v6, v7, v8, v9, v10);
}

void sub_100008270(uint64_t *a1, void *a2)
{
  sub_100008088(a1, a2);
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Failed to save record due to unexpected error outside the CKErrorDomain: %{public}@", v6, v7, v8, v9, v10);
}

void sub_1000082F8(uint64_t *a1, void *a2)
{
  sub_100008088(a1, a2);
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Failed to save record due to CloudKit error which could not be handled: %{public}@", v6, v7, v8, v9, v10);
}

void sub_100008380(uint64_t *a1, void *a2)
{
  sub_100008088(a1, a2);
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Failed to save record due to unexpected error: %{public}@", v6, v7, v8, v9, v10);
}

void sub_10000843C(uint64_t *a1, void *a2)
{
  sub_100008088(a1, a2);
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Failed to save record due to unrecoverable error: %{public}@", v6, v7, v8, v9, v10);
}

void sub_100008560(uint64_t *a1, void *a2)
{
  v3 = sub_100008088(a1, a2);
  v4 = [v2 safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v5, v6, "Batch record save operation completed but failed to save records due to unrecoverable error: %{public}@", v7, v8, v9, v10, v11);
}

void sub_100008624(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v6, v7, "Modify records operation failed due to deallocation with error %{public}@", v8, v9, v10, v11, v12);
}

void sub_100008728()
{
  sub_100008064();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Record of type %{public}@ deleted: <%@>", v2, 0x16u);
}

void sub_1000087E0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v5, v6, "Bailing out from record fetch due to deallocation with error %{public}@", v7, v8, v9, v10, v11);
}

void sub_100008878(uint64_t *a1, void *a2)
{
  sub_100008088(a1, a2);
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Fetch record changes failed: %{public}@", v6, v7, v8, v9, v10);
}

void sub_100008900(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Fetch record zone changes operation failed: %{public}@", v6, v7, v8, v9, v10);
}

void sub_100008990(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v5, v6, "Failed to create CloudExtensions zone with error: %{public}@", v7, v8, v9, v10, v11);
}

void sub_100008A90(uint64_t *a1, void *a2)
{
  sub_100008088(a1, a2);
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Error occurred deleting records, canceling dependent operations: %{public}@", v6, v7, v8, v9, v10);
}

void sub_100009354(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

id sub_100009384(uint64_t a1)
{
  v4 = @"localMigrationState";
  [*(*(a1 + 32) + 104) migrationState];
  v1 = stringFromLocalMigrationState();
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

void sub_100009434(uint64_t a1, void *a2, void *a3)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000094D8;
  block[3] = &unk_1001313B8;
  objc_copyWeak(v6, (a1 + 32));
  v6[1] = a2;
  v6[2] = a3;
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(v6);
}

void sub_1000094D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    goto LABEL_14;
  }

  v3 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v5 = v3;
    v6 = WBSStringFromCKContainerManateeState();
    v7 = *(a1 + 48);
    v8 = WBSStringFromCKAccountTermsState();
    *buf = 138543618;
    v25 = v6;
    v26 = 2114;
    v27 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received PCS or terms and condition state change notification with PCS state %{public}@ and terms verification state %{public}@", buf, 0x16u);
  }

  if (WeakRetained[47] != *(a1 + 40))
  {
    v15 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 40);
      v17 = v15;
      v18 = WBSStringFromCKContainerManateeState();
      *buf = 138543362;
      v25 = v18;
      v19 = "Updating PCS state in response to PCS change notification with state %{public}@";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v19, buf, 0xCu);
    }

LABEL_13:
    v21 = WeakRetained[46];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10000976C;
    v22[3] = &unk_100131390;
    v23 = WeakRetained;
    [v21 determineAccountStateWithCompletion:v22];

    goto LABEL_14;
  }

  v9 = WeakRetained[48];
  v10 = *(a1 + 48);
  v11 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v9 != v10)
  {
    if (v12)
    {
      v20 = *(a1 + 48);
      v17 = v11;
      v18 = WBSStringFromCKAccountTermsState();
      *buf = 138543362;
      v25 = v18;
      v19 = "Updating terms and condition state in response to notification with state %{public}@";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (v12)
  {
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    *buf = 134218240;
    v25 = v13;
    v26 = 2048;
    v27 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Ignoring PCS or terms and condition state change notification because neither have changed. PCS state is %ld and terms verification state is %ld", buf, 0x16u);
  }

LABEL_14:
}

uint64_t sub_10000976C(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(*(result + 32) + 376) = a2;
  *(*(result + 32) + 384) = a3;
  return result;
}

uint64_t sub_100009780(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(*(result + 32) + 376) = a2;
  *(*(result + 32) + 384) = a3;
  return result;
}

void sub_100009C48(uint64_t a1)
{
  [*(a1 + 32) _registerCloudKitSubscriptionsXPCActivityRegisteringIfNeeded:1 ignoreOnGoingRegistration:1 resetSubscriptions:63 qualityOfService:17 delay:0];

  xpc_transaction_end();
}

void sub_100009D14(uint64_t a1)
{
  [*(a1 + 32) _userAccountDidChange:*(a1 + 40)];

  xpc_transaction_end();
}

void sub_10000A188(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = sub_10000300C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10001AA20(v6);
    }
  }

  else
  {
    v7 = [a2 supportsDeviceToDeviceEncryption];
    v8 = sub_10000300C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = @"does not";
      if (v7)
      {
        v9 = @"does";
      }

      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Cloud settings container %{public}@ support encryption", &v10, 0xCu);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10000A328(uint64_t a1)
{
  [*(a1 + 32) _userDidUpdateBookmarkDatabase];

  xpc_transaction_end();
}

void sub_10000A594(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  *(*(a1 + 32) + 72) = 0;
  ct_green_tea_logger_create_static();
  v6 = getCTGreenTeaOsLogHandle();
  v7 = v6;
  if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Transmitted Internet Records", &v14, 2u);
  }

  v8 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10001AAB8();
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = WBSStringFromCloudBookmarksSyncResult();
    v14 = 138543362;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "*** CloudKit bookmark sync finished with result: %{public}@", &v14, 0xCu);
  }

  kdebug_trace();
  [*(a1 + 32) _sendNotificationForSyncResult:a2];
  v12 = *(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))(v12, a2);
  }

  xpc_transaction_end();
  [*(a1 + 32) _sendDetectedBugNotificationIfNeeded];
  [*(a1 + 32) _performHiearchyCheck];
  [*(a1 + 32) _scheduleHierarchyCheckTimer];
  if (a2 == 2)
  {
    [*(a1 + 32) _registerCloudKitSubscriptionsXPCActivityRegisteringIfNeeded:1 ignoreOnGoingRegistration:0 resetSubscriptions:1 qualityOfService:9 delay:0];
    if ([v5 safari_isUserDeletedZoneError])
    {
      v13 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Attempting migration from DAV to CloudKit since we got back an explicit 'zone deleted' error", &v14, 2u);
      }

      [*(a1 + 32) _beginMigrationFromDAVInOperationGroup:*(a1 + 40)];
    }

    else
    {
      [*(a1 + 32) observeRemoteMigrationStateForSecondaryMigration];
    }
  }
}

id sub_10000A9A4()
{
  v0 = WBSCloudBookmarksErrorDomain;
  v4 = NSLocalizedFailureReasonErrorKey;
  v5 = @"The attempted operation requires an entitlement";
  v1 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  v2 = [NSError errorWithDomain:v0 code:1 userInfo:v1];

  return v2;
}

void sub_10000AB90(uint64_t a1)
{
  if ([*(a1 + 32) isSyncEnabled])
  {
    v2 = [*(*(a1 + 32) + 24) createMigrationStateCheckOperationGroupWithXPCActivity:*(a1 + 40) qualityOfService:*(a1 + 56)];
    v3 = *(*(a1 + 32) + 24);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000ACE8;
    v7[3] = &unk_1001314A8;
    v8 = *(a1 + 48);
    [v3 fetchRemoteMigrationInfoInOperationGroup:v2 withCompletionHandler:v7];
  }

  else
  {
    v4 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Simulating fetch of 'Unknown' migration state because Safari sync is disabled", buf, 2u);
    }

    v5 = *(a1 + 48);
    v6 = [NSError errorWithDomain:WBSCloudBookmarksErrorDomain code:0 userInfo:0];
    (*(v5 + 16))(v5, -1, 0, v6);

    xpc_transaction_end();
  }
}

void sub_10000ACE8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10001AB68(v8);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v13 = 134217984;
    v14 = [v5 migrationState];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Fetched remote migration state: %ld", &v13, 0xCu);
  }

  v10 = *(a1 + 32);
  v11 = [v5 migrationState];
  v12 = [v5 migratorDeviceIdentifier];
  (*(v10 + 16))(v10, v11, v12, v6);

  xpc_transaction_end();
}

void sub_10000AED0(uint64_t a1)
{
  [*(a1 + 32) _beginMigrationFromDAVInOperationGroupInternal:*(a1 + 40)];

  xpc_transaction_end();
}

void sub_10000B270(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    v6 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v5, [v7 code], 0);
    (*(v4 + 16))(v4, v6);
  }

  else
  {
    (*(v4 + 16))(v4, 0);
  }

  xpc_transaction_end();
}

void sub_10000B430(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = sub_100002DF8(a2);
  (*(v2 + 16))(v2, v3);

  xpc_transaction_end();
}

void sub_10000B574(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = sub_100002DF8(a2);
  (*(v2 + 16))(v2, v3);

  xpc_transaction_end();
}

void sub_10000B6B8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = sub_100002DF8(a2);
  (*(v2 + 16))(v2, v3);

  xpc_transaction_end();
}

void sub_10000B8A0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000B998;
  v14[3] = &unk_1001315B0;
  v15 = v7;
  v16 = v8;
  v10 = *(a1 + 32);
  v17 = v9;
  v18 = v10;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  dispatch_async(&_dispatch_main_q, v14);
}

void sub_10000B998(uint64_t a1)
{
  v2 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*(a1 + 32) count]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v32;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v31 + 1) + 8 * i);
        v9 = [v8 wbsCloudTabDeviceDictionary];
        if (v9)
        {
          v10 = [WBSFetchedCloudTabDeviceOrCloseRequest alloc];
          v11 = [v8 deviceUUIDString];
          v12 = [v10 initWithUUIDString:v11 deviceOrCloseRequestDictionary:v9];
          [v2 addObject:v12];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v5);
  }

  v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*(a1 + 40) count]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v26 = a1;
  v14 = *(a1 + 40);
  v15 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v28;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v27 + 1) + 8 * j);
        v20 = [v19 wbsCloudTabCloseRequestDictionaryRepresentation];
        if (v20)
        {
          v21 = [WBSFetchedCloudTabDeviceOrCloseRequest alloc];
          v22 = [v19 requestUUIDString];
          v23 = [v21 initWithUUIDString:v22 deviceOrCloseRequestDictionary:v20];
          [v13 addObject:v23];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v16);
  }

  v24 = *(v26 + 56);
  v25 = sub_100002DF8(*(v26 + 48));
  (*(v24 + 16))(v24, v2, v13, v25);

  xpc_transaction_end();
}

void sub_10000BD2C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 wbsCloudTabDeviceDictionary];
        if (v11)
        {
          v12 = [WBSFetchedCloudTabDeviceOrCloseRequest alloc];
          v13 = [v10 deviceUUIDString];
          v14 = [v12 initWithUUIDString:v13 deviceOrCloseRequestDictionary:v11];
          [v4 addObject:v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  (*(*(a1 + 32) + 16))();
  xpc_transaction_end();
}

uint64_t sub_10000BFFC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = [a2 usesManateeContainer];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

id sub_10000C250()
{
  if (qword_100153E58 != -1)
  {
    sub_10001AC00();
  }

  v1 = qword_100153E50;

  return v1;
}

void sub_10000C294(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 280);
  v7 = *(a1 + 40);
  v3 = [NSArray arrayWithObjects:&v7 count:1];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000C388;
  v5[3] = &unk_100131628;
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 saveRecords:v3 inOperationGroup:v4 successCompletionHandler:v5];
}

void sub_10000C388(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();

  xpc_transaction_end();
}

void sub_10000C7D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C8B4;
  block[3] = &unk_1001316A0;
  block[4] = v5;
  v9 = v3;
  v10 = v4;
  v12 = *(a1 + 56);
  v11 = *(a1 + 48);
  v7 = v3;
  dispatch_async(v6, block);
}

void sub_10000C8B4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 280);
  v8 = *(a1 + 40);
  v3 = [NSArray arrayWithObjects:&v8 count:1];
  v4 = *(a1 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000C9C0;
  v5[3] = &unk_100131678;
  v7 = *(a1 + 64);
  v6 = *(a1 + 56);
  [v2 savePerSiteRecords:v3 inOperationGroup:v4 completionHandler:v5];
}

uint64_t sub_10000C9C0(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return (*(*(result + 40) + 16))();
  }

  return result;
}

void sub_10000C9D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000CAB0;
  v9[3] = &unk_1001316F0;
  v6 = v4;
  v7 = *(a1 + 32);
  v10 = v6;
  v11 = v7;
  v12 = v3;
  v13 = *(a1 + 48);
  v8 = v3;
  [v5 _getPerSiteSettingRecordNameWithDictionaryRepresentation:v8 inOperationGroup:v6 completionHandler:v9];
}

void sub_10000CAB0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = sub_10000300C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10001AC14();
    }
  }

  else
  {
    v7 = [*(a1 + 40) _createNewPerSiteCloudKitRecordWithDictionaryRepresentation:*(a1 + 48) precomputedRecordName:a2 inOperationGroup:*(a1 + 32)];
    (*(*(a1 + 56) + 16))();
  }
}

void sub_10000CB44(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a3 && [v5 length])
  {
    v7 = [*(a1 + 32) _modifyExistingPerSiteCloudKitRecordWithData:v6 dictionaryRepresentation:*(a1 + 40) inOperationGroup:*(a1 + 48)];
    if (v7)
    {
      v8 = *(*(a1 + 56) + 16);
    }

    else
    {
      v16 = *(a1 + 40);
      v8 = *(*(a1 + 64) + 16);
    }

    v8();
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10000CC98;
    v18[3] = &unk_1001316F0;
    v11 = *(a1 + 48);
    v17 = *(a1 + 32);
    v12 = v17.i64[1];
    v13 = *(a1 + 56);
    v14.i64[0] = v11;
    v14.i64[1] = v13;
    v15 = vzip2q_s64(v17, v14);
    v14.i64[1] = v17.i64[0];
    v19 = v14;
    v20 = v15;
    [v9 _getPerSiteSettingRecordNameWithDictionaryRepresentation:v10 inOperationGroup:v11 completionHandler:v18];
  }
}

void sub_10000CC98(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_10000300C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10001AC14();
    }
  }

  else
  {
    v8 = [*(a1 + 40) _perSitePreferencesStore];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000CDD4;
    v10[3] = &unk_100131740;
    v9 = *(a1 + 48);
    v10[4] = *(a1 + 40);
    v11 = v9;
    v12 = v5;
    v13 = *(a1 + 32);
    v14 = *(a1 + 56);
    [v8 getDeletedCloudKitSyncDataForRecordName:v12 completionHandler:v10];
  }
}

void sub_10000CDD4(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v7 = v5;
  if (!a3 || ![v5 length] || (objc_msgSend(*(a1 + 32), "_modifyExistingPerSiteCloudKitRecordWithData:dictionaryRepresentation:inOperationGroup:", v7, *(a1 + 40), *(a1 + 56)), (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = [*(a1 + 32) _createNewPerSiteCloudKitRecordWithDictionaryRepresentation:*(a1 + 40) precomputedRecordName:*(a1 + 48) inOperationGroup:*(a1 + 56)];
  }

  (*(*(a1 + 64) + 16))();
}

void sub_10000D82C(id a1)
{
  v1 = [WBSPerSitePreferencesSQLiteStore alloc];
  v4 = +[WBSPerSitePreferencesSQLiteStore defaultDatabaseURL];
  v2 = [v1 initWithDatabaseURL:v4];
  v3 = qword_100153E40;
  qword_100153E40 = v2;
}

void sub_10000DA68(uint64_t a1)
{
  [*(a1 + 32) _cancelBackgroundImageSaveDelayTimer];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000DB6C;
  v10[3] = &unk_1001317B0;
  v9 = *(a1 + 32);
  v2 = *(&v9 + 1);
  v13 = *(a1 + 64);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v11 = v9;
  v12 = v5;
  v6 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v10 block:10.0];
  v7 = *(a1 + 32);
  v8 = *(v7 + 312);
  *(v7 + 312) = v6;
}

id sub_10000DB6C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 312);
  *(v2 + 312) = 0;

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 64);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);

  return [v4 _saveCloudBackgroundImageWithURL:v5 isLightAppearance:v6 inOperationGroup:v7 successCompletionHandler:v8];
}

void sub_10000DD98(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 280);
  v3 = [CKRecordID alloc];
  v4 = WBSSafariBackgroundImageKey;
  v5 = sub_10000C250();
  v6 = [v3 initWithRecordName:v4 zoneID:v5];
  v12 = v6;
  v7 = [NSArray arrayWithObjects:&v12 count:1];
  v8 = *(a1 + 40);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000DEF0;
  v9[3] = &unk_100131678;
  v11 = *(a1 + 56);
  v10 = *(a1 + 48);
  [v2 deleteRecords:v7 inOperationGroup:v8 completionHandler:v9];
}

id sub_10000DF74(uint64_t a1)
{
  result = [*(a1 + 32) _isDeviceToDeviceEncryptionEnabled];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _updateCloudSettingsSyncCoordinatorAfterUserAccountChange:0];
  }

  return result;
}

id sub_10000E14C(uint64_t a1)
{
  result = [*(a1 + 32) _isDeviceToDeviceEncryptionEnabled];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _updateCloudSettingsSyncCoordinatorAfterUserAccountChange:0];
  }

  return result;
}

void sub_10000E36C(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 40) + 280);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000E434;
  v4[3] = &unk_100131888;
  objc_copyWeak(&v6, (a1 + 56));
  v5 = *(a1 + 48);
  [v3 beginInitialSyncUpInOperationGroup:v2 completionHandler:v4];

  objc_destroyWeak(&v6);
}

void sub_10000E434(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v23 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  WeakRetained[296] = 0;
  v7 = sub_10000300C();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = v8;
      v10 = stringFromCloudSettingsSyncResult(a2);
      v11 = [v5 safari_privacyPreservingDescription];
      v12 = [*(a1 + 32) safari_logDescription];
      *buf = 138543874;
      v33 = v10;
      v34 = 2114;
      v35 = v11;
      v36 = 2114;
      v37 = v12;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "*** Per site settings initial fetch failed with result %{public}@: %{public}@ with %{public}@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v8;
    v14 = stringFromCloudSettingsSyncResult(a2);
    v15 = [*(a1 + 32) safari_logDescription];
    *buf = 138543618;
    v33 = v14;
    v34 = 2114;
    v35 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "*** Per Site settings initial fetch finished with result: %{public}@ with %{public}@", buf, 0x16u);
  }

  if (a2 == 2)
  {
    [WeakRetained _registerCloudKitSubscriptionsXPCActivityRegisteringIfNeeded:1 ignoreOnGoingRegistration:0 resetSubscriptions:16 qualityOfService:9 delay:0];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v16 = +[WBSPerSitePreferencesSQLiteStore staticSyncablePerSiteSettings];
  v17 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v28;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v27 + 1) + 8 * i);
        v22 = [WeakRetained _perSitePreferencesStore];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_10000E750;
        v24[3] = &unk_100131860;
        v24[4] = v21;
        v25 = *(v23 + 32);
        v26 = WeakRetained;
        [v22 getAllPreferenceInformationForPreference:v21 completionHandler:v24];
      }

      v18 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v18);
  }
}

void sub_10000E750(void *a1, void *a2, char a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v21 = *v25;
      v9 = WBSCloudPerSiteSettingName;
      v10 = WBSCloudPerSiteSettingDomain;
      v11 = WBSCloudPerSiteSettingValue;
      obj = v6;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v25 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          v29[0] = a1[4];
          v28[0] = v9;
          v28[1] = v10;
          v14 = [v13 domain];
          v29[1] = v14;
          v28[2] = v11;
          v15 = [v13 value];
          v29[2] = v15;
          v16 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:3];

          v17 = a1[5];
          v18 = a1[6];
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_10000E98C;
          v22[3] = &unk_100131408;
          v23 = v17;
          [v18 _saveCloudPerSiteSettingWithDictionaryRepresentation:v16 inOperationGroup:v23 successCompletionHandler:v22];
        }

        v6 = obj;
        v8 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v19 = sub_10000300C();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10001AEB0(a1, v19);
    }
  }
}

void sub_10000E98C(uint64_t a1)
{
  v2 = sub_10000300C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 safari_logDescription];
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Safari's per-site settings have been updated in CloudKit with %{public}@", &v6, 0xCu);
  }
}

void sub_10000EBA8(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 40) + 280);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000EC98;
  v4[3] = &unk_1001318D8;
  objc_copyWeak(&v8, (a1 + 72));
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  [v3 beginInitialSyncUpInOperationGroup:v2 completionHandler:v4];

  objc_destroyWeak(&v8);
}

void sub_10000EC98(id *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  WeakRetained[296] = 0;
  v7 = sub_10000300C();
  v8 = v7;
  v45 = a1;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = v8;
      v10 = stringFromCloudSettingsSyncResult(a2);
      v11 = [v5 safari_privacyPreservingDescription];
      v12 = [a1[4] safari_logDescription];
      *buf = 138543874;
      v58 = v10;
      v59 = 2114;
      v60 = v11;
      v61 = 2114;
      v62 = v12;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "*** Cloud settings initial fetch failed with result %{public}@: %{public}@ with %{public}@", buf, 0x20u);

      a1 = v45;
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v8;
    v14 = stringFromCloudSettingsSyncResult(a2);
    v15 = [a1[4] safari_logDescription];
    *buf = 138543618;
    v58 = v14;
    v59 = 2114;
    v60 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "*** Cloud settings initial fetch finished with result: %{public}@ with %{public}@", buf, 0x16u);
  }

  v44 = v5;
  if (a2 == 2)
  {
    [WeakRetained _registerCloudKitSubscriptionsXPCActivityRegisteringIfNeeded:1 ignoreOnGoingRegistration:0 resetSubscriptions:16 qualityOfService:9 delay:0];
  }

  v49 = +[NSMutableArray array];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = a1[5];
  v16 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v16)
  {
    v17 = v16;
    v48 = *v53;
    v18 = WBSCloudSettingRecordName;
    v19 = WBSCloudSettingValue;
    v46 = WBSCloudSettingRecordType;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v53 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v52 + 1) + 8 * i);
        v22 = *(WeakRetained + 38);
        v23 = [v21 objectForKeyedSubscript:v18];
        v24 = [v22 objectForKeyedSubscript:v23];

        if (v24)
        {
          v25 = [v21 objectForKeyedSubscript:v19];
          v26 = *(WeakRetained + 38);
          v27 = [v21 objectForKeyedSubscript:v18];
          v28 = [v26 objectForKeyedSubscript:v27];
          v29 = [v28 safari_encryptedValues];
          [v29 setObject:v25 forKeyedSubscript:v19];

          v30 = *(WeakRetained + 38);
          v31 = [v21 objectForKeyedSubscript:v18];
          v32 = [v30 objectForKeyedSubscript:v31];
          [v49 addObject:v32];
        }

        else
        {
          v33 = [CKRecord alloc];
          v34 = [CKRecordID alloc];
          v35 = [v21 objectForKeyedSubscript:v18];
          v36 = sub_10000C250();
          v37 = [v34 initWithRecordName:v35 zoneID:v36];
          v31 = [v33 initWithRecordType:v46 recordID:v37];

          v38 = [v21 objectForKeyedSubscript:v19];
          v39 = [v31 safari_encryptedValues];
          [v39 setObject:v38 forKeyedSubscript:v19];

          [v49 addObject:v31];
        }
      }

      v17 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v17);
  }

  v40 = *(WeakRetained + 35);
  v41 = [v49 copy];
  v42 = v45[4];
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_10000F19C;
  v50[3] = &unk_100131628;
  v51 = v45[6];
  [v40 saveRecords:v41 inOperationGroup:v42 successCompletionHandler:v50];

  v43 = *(WeakRetained + 38);
  *(WeakRetained + 38) = 0;
}

void sub_10000F2D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v7 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    v6 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v5, [v7 code], 0);
    (*(v4 + 16))(v4, v6);
  }

  else
  {
    (*(v4 + 16))(v4, 0);
  }
}

void sub_10000F49C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v7 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    v6 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v5, [v7 code], 0);
    (*(v4 + 16))(v4, v6);
  }

  else
  {
    (*(v4 + 16))(v4, 0);
  }
}

void sub_10000F658(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = *(a1 + 40);
  v14 = v7;
  if (v7)
  {
    v9 = a3;
    v10 = a2;
    v11 = [v14 domain];
    v12 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v11, [v14 code], 0);
    (*(v8 + 16))(v8, v10, v9, v12);
  }

  else
  {
    v13 = *(v8 + 16);
    v12 = a3;
    v11 = a2;
    v13(v8, v11, v12, 0);
  }
}

void sub_10000F874(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v7 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    v6 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v5, [v7 code], 0);
    (*(v4 + 16))(v4, v6);
  }

  else
  {
    (*(v4 + 16))(v4, 0);
  }
}

void sub_10000FA18(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 344);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000FAC0;
  v3[3] = &unk_100130F40;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  [v2 deleteDatabaseWithCompletionHandler:v3];
}

void sub_10000FBB4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 392) profiles];
  v3 = sub_1000D2478();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    v8 = 134217984;
    v9 = [v2 count];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Beginning to fetch %zu profile entities for focus", &v8, 0xCu);
  }

  v5 = [v2 count];
  v6 = *(a1 + 40);
  if (v5 == 1)
  {
    (*(v6 + 16))(v6, &__NSArray0__struct);
  }

  else
  {
    v7 = [v2 safari_mapAndFilterObjectsUsingBlock:&stru_100131968];
    (*(v6 + 16))(v6, v7);
  }
}

NSDictionary *__cdecl sub_10000FCE0(id a1, WBProfile *a2)
{
  v2 = a2;
  v3 = sub_1000D2478();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    v5 = [(WBProfile *)v2 identifier];
    v6 = [(WBProfile *)v2 title];
    *buf = 138543875;
    v14 = v5;
    v15 = 2160;
    v16 = 1752392040;
    v17 = 2117;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Mapping profile identifier %{public}@ to title %{sensitive, mask.hash}@", buf, 0x20u);
  }

  v7 = [(WBProfile *)v2 identifier];
  v12[0] = v7;
  v11[1] = WBSSafariBookmarksSyncAgentProfileTitleKey;
  v8 = [(WBProfile *)v2 title];
  v12[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

void sub_10000FF28(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 392) namedTabGroupsInDefaultProfile];
  v3 = sub_1000D2478();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    v7 = 134217984;
    v8 = [v2 count];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Beginning to fetch %zu tab group entities for focus", &v7, 0xCu);
  }

  v5 = *(a1 + 40);
  v6 = [v2 safari_mapObjectsUsingBlock:&stru_1001319D0];
  (*(v5 + 16))(v5, v6);
}

NSDictionary *__cdecl sub_10001002C(id a1, WBTabGroup *a2)
{
  v2 = a2;
  v3 = sub_1000D2478();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    v5 = [(WBTabGroup *)v2 uuid];
    v6 = [(WBTabGroup *)v2 title];
    *buf = 138543875;
    v14 = v5;
    v15 = 2160;
    v16 = 1752392040;
    v17 = 2117;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Mapping tab group UUID %{public}@ to title %{sensitive, mask.hash}@", buf, 0x20u);
  }

  v7 = [(WBTabGroup *)v2 uuid];
  v12[0] = v7;
  v11[1] = WBSSafariBookmarksSyncAgentTabGroupTitleKey;
  v8 = [(WBTabGroup *)v2 title];
  v12[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

uint64_t sub_10001032C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000103D4;
  v4[3] = &unk_1001319F8;
  v4[4] = *(a1 + 40);
  [v2 enumerateObjectsUsingBlock:v4];
  [*(a1 + 40) _performTabGroupSyncForManager:*(*(a1 + 40) + 400) withTrigger:0 completionHandler:0];
  return (*(*(a1 + 48) + 16))();
}

void sub_1000103D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 392) tabGroupWithUUID:v3];
  if (v4)
  {
    [*(*(a1 + 32) + 392) deleteTabGroup:v4];
  }

  else
  {
    v5 = sub_1000D2478();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10001AF94();
    }
  }
}

void sub_100010534(uint64_t a1)
{
  v2 = [*(a1 + 32) _cyclerAssistant];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000105D4;
  v3[3] = &unk_100131520;
  v4 = *(a1 + 40);
  [v2 resetToDAVDatabaseWithCompletionHandler:v3];
}

void sub_1000105D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
    v1 = vars8;
  }

  xpc_transaction_end();
}

void sub_1000106F0(uint64_t a1)
{
  v2 = [*(a1 + 32) _cyclerAssistant];
  v3 = *(a1 + 48);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000107A0;
  v4[3] = &unk_100131520;
  v5 = *(a1 + 40);
  [v2 clearLocalDataIncludingMigrationState:v3 completionHandler:v4];
}

void sub_1000107A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
    v1 = vars8;
  }

  xpc_transaction_end();
}

void sub_1000108AC(uint64_t a1)
{
  v2 = [*(a1 + 32) _cyclerAssistant];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001094C;
  v3[3] = &unk_100131520;
  v4 = *(a1 + 40);
  [v2 generateDAVServerIDsForExistingBookmarksWithCompletionHandler:v3];
}

void sub_10001094C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
    v1 = vars8;
  }

  xpc_transaction_end();
}

void sub_100010A58(uint64_t a1)
{
  *(*(a1 + 32) + 73) = 1;
  v2 = [*(a1 + 32) _cyclerAssistant];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100010B08;
  v4[3] = &unk_100131A70;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 migrateToCloudKitWithCompletionHandler:v4];
}

void sub_100010B08(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010BB8;
  block[3] = &unk_100130E50;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100010BB8(void *a1)
{
  *(a1[4] + 73) = 0;
  (*(a1[6] + 16))(a1[6], a1[5]);

  xpc_transaction_end();
}

void sub_100010EDC(uint64_t a1, void *a2)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    v6 = WBSCloudPerSiteSettingName;
    v7 = WBSCloudPerSiteSettingDomain;
    v8 = WBSCloudPerSiteSettingValue;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [*(a1 + 32) valueOfPreference:*(a1 + 40) forDomain:v10];
        v19[0] = v6;
        v12 = [*(a1 + 32) preferenceNameForPreference:*(a1 + 40)];
        v20[0] = v12;
        v20[1] = v10;
        v19[1] = v7;
        v19[2] = v8;
        v20[2] = v11;
        v13 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:3];

        [*(a1 + 48) _saveCloudPerSiteSettingWithDictionaryRepresentation:v13 inOperationGroup:*(a1 + 56) successCompletionHandler:&stru_100131A90];
      }

      v4 = [obj countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v4);
  }
}

void sub_10001175C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[5];
    WeakRetained[5] = 0;
    v6 = WeakRetained;

    v4 = v6[6];
    v6[6] = 0;

    [v6 _fetchUpdatedZonesInPushNotificationForContainer:*(a1 + 32) trigger:*(a1 + 48)];
    v5 = v6[7];
    v6[7] = 0;

    WeakRetained = v6;
  }
}

void sub_100011FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_100012014(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v7 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v9 = [v6 ckShortDescription];
    v10 = [*(a1 + 32) safari_logDescription];
    v45 = 138543618;
    v46 = v9;
    v47 = 2114;
    v48 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "recordZoneChangedBlock for zone ID: %{public}@, %{public}@", &v45, 0x16u);
  }

  v11 = [v5[3] bookmarksRecordZoneID];
  v12 = [v11 isEqual:v6];

  if (v12)
  {
    v13 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 32);
      v15 = v13;
      v16 = [v14 safari_logDescription];
      v45 = 138543362;
      v46 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Bookmarks zone changed with %{public}@", &v45, 0xCu);
    }

    v17 = *(*(a1 + 48) + 8);
    v18 = *(v17 + 24) | 1;
LABEL_23:
    *(v17 + 24) = v18;
    goto LABEL_24;
  }

  if ([v5[50] handlesRecordChangesToRecordZoneWithID:v6])
  {
    v19 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = *(a1 + 32);
      v21 = v19;
      v22 = [v20 safari_logDescription];
      v45 = 138543362;
      v46 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Tab Groups zone changed with %{public}@", &v45, 0xCu);
    }

    v17 = *(*(a1 + 48) + 8);
    v18 = *(v17 + 24) | 4;
    goto LABEL_23;
  }

  v23 = +[CloudTabRemoteStore cloudTabsRecordZoneID];
  v24 = [v23 isEqual:v6];

  if (v24)
  {
    v25 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = *(a1 + 32);
      v27 = v25;
      v28 = [v26 safari_logDescription];
      v45 = 138543362;
      v46 = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Cloud Tabs zone changed with %{public}@", &v45, 0xCu);
    }

    v17 = *(*(a1 + 48) + 8);
    v18 = *(v17 + 24) | 2;
    goto LABEL_23;
  }

  v29 = +[CloudSettingStore cloudSettingsRecordZoneID];
  v30 = [v29 isEqual:v6];

  if (v30)
  {
    v31 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = *(a1 + 32);
      v33 = v31;
      v34 = [v32 safari_logDescription];
      v45 = 138543362;
      v46 = v34;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Cloud Settings zone changed with %{public}@", &v45, 0xCu);
    }

    v17 = *(*(a1 + 48) + 8);
    v18 = *(v17 + 24) | 0x10;
    goto LABEL_23;
  }

  v35 = +[CloudExtensionStore cloudExtensionsRecordZoneID];
  v36 = [v35 isEqual:v6];

  v37 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  v38 = v37;
  if (v36)
  {
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v39 = *(a1 + 32);
      v40 = v38;
      v41 = [v39 safari_logDescription];
      v45 = 138543362;
      v46 = v41;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "Cloud Extensions zone changed with %{public}@", &v45, 0xCu);
    }

    v17 = *(*(a1 + 48) + 8);
    v18 = *(v17 + 24) | 0x20;
    goto LABEL_23;
  }

  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v42 = v38;
    v43 = [v6 ckShortDescription];
    v44 = [*(a1 + 32) safari_logDescription];
    v45 = 138543618;
    v46 = v43;
    v47 = 2114;
    v48 = v44;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "recordZoneChangedBlock did not handle zone ID: %{public}@, %{public}@", &v45, 0x16u);
  }

LABEL_24:
}

void sub_1000124DC(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012634;
  block[3] = &unk_100131B30;
  v19 = v9;
  v20 = *(a1 + 32);
  v21 = v11;
  v22 = *(a1 + 40);
  v12 = *(a1 + 48);
  v27 = *(a1 + 80);
  v23 = v12;
  v24 = v10;
  v28 = *(a1 + 88);
  v17 = *(a1 + 56);
  v13 = v17;
  v25 = v17;
  v26 = *(a1 + 72);
  v14 = v10;
  v15 = v11;
  v16 = v9;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100012634(uint64_t a1)
{
  v2 = a1 + 40;
  [*(*(a1 + 32) + 224) removeObject:*(a1 + 40)];
  if ([*(v2 + 8) safari_isCloudKitExpiredChangeTokenError])
  {
    v3 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10001B098(v2, v3, a1);
    }

LABEL_4:
    v4 = +[NSUserDefaults standardUserDefaults];
    [v4 removeObjectForKey:*(a1 + 64)];

    [*(a1 + 32) _beginFetchingUpdatedZonesInContainer:*(a1 + 40) isRetry:1 trigger:*(a1 + 104) operationGroup:*(a1 + 56)];
    return;
  }

  if (*(a1 + 72))
  {
    if (*(*(*(a1 + 88) + 8) + 24))
    {
      v5 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 40);
        v7 = v5;
        v8 = [v6 containerIdentifier];
        v9 = *(a1 + 72);
        v10 = [*(a1 + 56) safari_logDescription];
        v52 = 138543874;
        v53 = v8;
        v54 = 2114;
        v55 = v9;
        v56 = 2114;
        v57 = v10;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Did finish fetching database change operations for container with identifier: %{public}@, new server change token: %{public}@, %{public}@", &v52, 0x20u);
      }

      v11 = [NSKeyedArchiver archivedDataWithRootObject:*(a1 + 72) requiringSecureCoding:1 error:0];
      v12 = +[NSUserDefaults standardUserDefaults];
      [v12 setObject:v11 forKey:*(a1 + 64)];

      v13 = *(*(*(a1 + 96) + 8) + 24);
      if (v13)
      {
        v27 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = *(a1 + 56);
          v29 = v27;
          v30 = [v28 safari_logDescription];
          v52 = 138543362;
          v53 = v30;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Attempting to sync Bookmarks in response to a push notification after checking container zones with %{public}@", &v52, 0xCu);
        }

        [*(a1 + 32) _attemptSyncAndFallBackToMigrationIfPossibleForTrigger:*(a1 + 104)];
        v13 = *(*(*(a1 + 96) + 8) + 24);
        if ((v13 & 4) == 0)
        {
LABEL_11:
          if ((v13 & 2) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_31;
        }
      }

      else if ((v13 & 4) == 0)
      {
        goto LABEL_11;
      }

      v31 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = *(a1 + 56);
        v33 = v31;
        v34 = [v32 safari_logDescription];
        v52 = 138543362;
        v53 = v34;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Attempting to sync Tab Groups in response to a push notification after checking container zones with %{public}@", &v52, 0xCu);
      }

      [*(a1 + 32) _attemptTabGroupsSyncForManager:*(*(a1 + 32) + 400) withTrigger:*(a1 + 104)];
      v13 = *(*(*(a1 + 96) + 8) + 24);
      if ((v13 & 2) == 0)
      {
LABEL_12:
        if ((v13 & 0x10) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_34;
      }

LABEL_31:
      v35 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = *(a1 + 56);
        v37 = v35;
        v38 = [v36 safari_logDescription];
        v52 = 138543362;
        v53 = v38;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "Attempting to sync CloudKit Tabs in response to a push notification after checking container zones with %{public}@", &v52, 0xCu);
      }

      [*(a1 + 32) _attemptCloudTabsSyncForPushNotification];
      v13 = *(*(*(a1 + 96) + 8) + 24);
      if ((v13 & 0x10) == 0)
      {
LABEL_13:
        if ((v13 & 0x20) == 0)
        {
          goto LABEL_40;
        }

LABEL_37:
        v43 = sub_1000D23FC();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          v44 = *(a1 + 56);
          v45 = v43;
          v46 = [v44 safari_logDescription];
          v52 = 138543362;
          v53 = v46;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "Attempting to sync extension state in response to a push notification after checking container zones with %{public}@", &v52, 0xCu);
        }

        [*(a1 + 32) _attemptCloudExtensionsSyncForPushNotification];
        goto LABEL_40;
      }

LABEL_34:
      v39 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = *(a1 + 56);
        v41 = v39;
        v42 = [v40 safari_logDescription];
        v52 = 138543362;
        v53 = v42;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "Attempting to sync settings in response to a push notification after checking container zones with %{public}@", &v52, 0xCu);
      }

      [*(a1 + 32) _attemptCloudSettingsSyncForTrigger:*(a1 + 104) inOperationGroup:*(a1 + 56)];
      if ((*(*(*(a1 + 96) + 8) + 24) & 0x20) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    if ((*(a1 + 112) & 1) == 0 && *(a1 + 80))
    {
      v19 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = *(a1 + 40);
        v21 = v19;
        v22 = [v20 containerIdentifier];
        v24 = *(a1 + 72);
        v23 = *(a1 + 80);
        v25 = [*(a1 + 56) safari_logDescription];
        v52 = 138544130;
        v53 = v22;
        v54 = 2114;
        v55 = v23;
        v56 = 2114;
        v57 = v24;
        v58 = 2114;
        v59 = v25;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "We received a push notification for container with identifier: %{public}@ but got no changes from server change token: %{public}@, new server change token: %{public}@, will retry from nil with %{public}@", &v52, 0x2Au);
      }

      goto LABEL_4;
    }

    v26 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v47 = *(a1 + 40);
      v48 = v26;
      v49 = [v47 containerIdentifier];
      v50 = *(a1 + 72);
      v51 = [*(a1 + 56) safari_logDescription];
      v52 = 138543874;
      v53 = v49;
      v54 = 2114;
      v55 = v50;
      v56 = 2114;
      v57 = v51;
      _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "We received a push notification for container with identifier: %{public}@ but got no changes fetching from nil server change token, new server change token: %{public}@, will not retry with %{public}@", &v52, 0x20u);
    }

    v11 = [NSKeyedArchiver archivedDataWithRootObject:*(a1 + 72) requiringSecureCoding:1 error:0];
    v17 = +[NSUserDefaults standardUserDefaults];
    [v17 setObject:v11 forKey:*(a1 + 64)];
  }

  else
  {
    v14 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v15 = *(a1 + 40);
    v16 = v14;
    v11 = [v15 containerIdentifier];
    v17 = [*(a1 + 48) safari_privacyPreservingDescription];
    v18 = [*(a1 + 56) safari_logDescription];
    v52 = 138543874;
    v53 = v11;
    v54 = 2114;
    v55 = v17;
    v56 = 2114;
    v57 = v18;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to fetch database changes for container: %{public}@ with error: %{public}@, %{public}@", &v52, 0x20u);
  }

LABEL_40:
}

void sub_100012E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100012E90(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v9 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10001B150(v9, v6);
      }

      v10 = *(*(a1 + 40) + 16);
    }

    else
    {
      if (!v5)
      {
        v12 = *(WeakRetained + 3);
        v13 = *(a1 + 32);
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_100013048;
        v14[3] = &unk_100131B80;
        objc_copyWeak(&v16, (a1 + 48));
        v15 = *(a1 + 40);
        [v12 saveBookmarksZoneSubscriptionInOperationGroup:v13 withCompletionHandler:v14];

        objc_destroyWeak(&v16);
        goto LABEL_12;
      }

      v11 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Bookmarks zone subscription already exists", buf, 2u);
      }

      v10 = *(*(a1 + 40) + 16);
    }
  }

  else
  {
    v10 = *(*(a1 + 40) + 16);
  }

  v10();
LABEL_12:
}

void sub_100013048(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10001B1F0(v9);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Saving Bookmarks zone subscription succeeded", v11, 2u);
    }

    v10 = *(*(a1 + 32) + 16);
  }

  else
  {
    v10 = *(*(a1 + 32) + 16);
  }

  v10();
}

void sub_100013234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100013250(id *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100013348;
  v6[3] = &unk_100131BD0;
  objc_copyWeak(&v10, a1 + 6);
  v9 = a1[5];
  v5 = v3;
  v7 = v5;
  v8 = a1[4];
  [v5 fetchCloudTabsZoneSubscriptionInOperationGroup:v4 withCompletionHandler:v6];

  objc_destroyWeak(&v10);
}

void sub_100013348(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = sub_100001B78();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10001B288(v8, v6);
      }

      v9 = *(*(a1 + 48) + 16);
    }

    else
    {
      if (!v5)
      {
        v11 = *(a1 + 32);
        v12 = *(a1 + 40);
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_1000134FC;
        v13[3] = &unk_100131B80;
        objc_copyWeak(&v15, (a1 + 56));
        v14 = *(a1 + 48);
        [v11 saveCloudTabsZoneSubscriptionInOperationGroup:v12 withCompletionHandler:v13];

        objc_destroyWeak(&v15);
        goto LABEL_12;
      }

      v10 = sub_100001B78();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "CloudTabs zone subscription already exists", buf, 2u);
      }

      v9 = *(*(a1 + 48) + 16);
    }
  }

  else
  {
    v9 = *(*(a1 + 48) + 16);
  }

  v9();
LABEL_12:
}

void sub_1000134FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = sub_100001B78();
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10001B328(v9);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Saving CloudTabs zone subscription succeeded", v11, 2u);
    }

    v10 = *(*(a1 + 32) + 16);
  }

  else
  {
    v10 = *(*(a1 + 32) + 16);
  }

  v10();
}

void sub_100013724(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = sub_1000137D0();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000138E0;
  v5[3] = &unk_100131C98;
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 40);
  v5[5] = v4;
  [v2 _checkInXPCActivityWithIdentifier:"com.apple.SafariBookmarksSyncAgent.XPC.BookmarkSyncNetworkConnectivity" criteria:v3 registerIfNeeded:1 performBlock:v5];
}

id sub_1000137D0()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v0, XPC_ACTIVITY_REPEATING, 0);
  xpc_dictionary_set_string(v0, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_BOOL(v0, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_BOOL(v0, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
  xpc_dictionary_set_string(v0, XPC_ACTIVITY_NETWORK_TRANSFER_DIRECTION, XPC_ACTIVITY_NETWORK_TRANSFER_BIDIRECTIONAL);
  xpc_dictionary_set_int64(v0, XPC_ACTIVITY_DELAY, 0);
  xpc_dictionary_set_int64(v0, XPC_ACTIVITY_GRACE_PERIOD, 0);
  xpc_dictionary_set_BOOL(v0, XPC_ACTIVITY_REQUIRES_CLASS_C, 1);

  return v0;
}

void sub_1000138E0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = os_transaction_create();
  v4[2](v4, 1, 0);

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000139B8;
  block[3] = &unk_100131C70;
  v6 = *(a1 + 40);
  v10 = *(a1 + 32);
  v11 = v6;
  v9 = v5;
  v7 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000139B8(uint64_t a1)
{
  v2 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 48);
    v4 = v2;
    v5 = sub_100003044(v3);
    *buf = 138543362;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Will attempt sync/migration in response to trigger: %{public}@", buf, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6[73] == 1)
  {
    v7 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 0;
    v8 = "Ignoring request to sync/migrate because migration is in progress";
LABEL_9:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, v8, buf, 2u);
    return;
  }

  if (v6[72] == 1)
  {
    v7 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 0;
    v8 = "Ignoring request to sync/migrate because sync is in progress";
    goto LABEL_9;
  }

  v9 = *(a1 + 48);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100013B80;
  v12[3] = &unk_100131C48;
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  v14 = *(a1 + 40);
  v15 = v11;
  v13 = v10;
  [v6 _performBookmarkSyncForTrigger:v9 inOperationGroup:0 completionHandler:v12];
}

void sub_100013B80(uint64_t a1, uint64_t a2)
{
  if ((a2 - 3) >= 4 && a2 != 0)
  {
    v17 = v2;
    v18 = v3;
    v6 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Fetching remote migration state since we tried syncing while not locally migrated", buf, 2u);
    }

    v8 = *(a1 + 48);
    if (v8 > 6)
    {
      v9 = 0;
    }

    else
    {
      v9 = qword_1000E8C30[v8];
    }

    v10 = os_transaction_create();
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100013CA4;
    v13[3] = &unk_100131C20;
    v11 = *(a1 + 40);
    v14 = v10;
    v15 = v11;
    v12 = v10;
    [v11 _fetchRemoteMigrationStateWithXPCActivity:0 qualityOfService:v9 completionHandler:v13];
  }
}

void sub_100013CA4(uint64_t a1, uint64_t a2)
{
  v4 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Fetched remote migration state: %ld", &v5, 0xCu);
  }

  if ((a2 | 2) == 2)
  {
    [*(a1 + 40) beginMigrationFromDAV];
  }
}

void sub_100013E3C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013EC0;
  block[3] = &unk_100131408;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100013EC0()
{
  v0 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "Notifying Safari of iCloud Tabs changes in response to a push notification", v2, 2u);
  }

  v1 = +[NSDistributedNotificationCenter defaultCenter];
  [v1 postNotificationName:WBSSafariBookmarksSyncAgentCloudTabsWereUpdatedOnServerNotificationName object:0];
}

void sub_100014018(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REPEATING, 0);
  xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
  xpc_dictionary_set_string(v3, XPC_ACTIVITY_NETWORK_TRANSFER_DIRECTION, XPC_ACTIVITY_NETWORK_TRANSFER_BIDIRECTIONAL);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_DELAY, 10);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_GRACE_PERIOD, 0);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRES_CLASS_C, 1);
  v4 = *(a1 + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001419C;
  v5[3] = &unk_100131CE8;
  v5[4] = *(a1 + 32);
  [v2 _checkInXPCActivityWithIdentifier:"com.apple.SafariBookmarksSyncAgent.XPC.InitialManateeCloudTabFetchRetry" criteria:v3 registerIfNeeded:v4 performBlock:v5];

  xpc_transaction_end();
}

void sub_10001419C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = sub_100001B78();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Retrying initial CloudTab fetch", buf, 2u);
  }

  v6 = *(*(a1 + 32) + 248);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100014280;
  v8[3] = &unk_100131588;
  v9 = v4;
  v7 = v4;
  [v6 fetchDevicesWithCompletionHandler:v8];
}

void sub_100014280(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = sub_100001B78();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v5 safari_privacyPreservingDescription];
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finished initial CloudTab fetch with error %{public}@", &v10, 0xCu);
  }

  if (!v5)
  {
    v9 = +[NSDistributedNotificationCenter defaultCenter];
    [v9 postNotificationName:WBSSafariBookmarksSyncAgentCloudTabsWereUpdatedOnServerNotificationName object:0];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100014494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000144B0(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = WeakRetained;
  if (!WeakRetained)
  {
    v10 = sub_10000300C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10001B490(a1, v10);
    }

    goto LABEL_5;
  }

  if (v6)
  {
    v9 = sub_10000300C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10001B3C0(v9, v6, a1);
    }

LABEL_5:
    (*(a1[5] + 2))();
    goto LABEL_14;
  }

  if (v5)
  {
    v11 = sub_10000300C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = a1[4];
      v13 = v11;
      v14 = [v12 safari_logDescription];
      *buf = 138543362;
      v22 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "CloudSettings zone subscription already exists with %{public}@", buf, 0xCu);
    }

    (*(a1[5] + 2))();
  }

  else
  {
    v15 = *(WeakRetained + 34);
    v16 = a1[4];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100014710;
    v17[3] = &unk_100131D38;
    objc_copyWeak(&v20, a1 + 6);
    v18 = a1[4];
    v19 = a1[5];
    [v15 saveCloudSettingsZoneSubscriptionInOperationGroup:v16 withCompletionHandler:v17];

    objc_destroyWeak(&v20);
  }

LABEL_14:
}

void sub_100014710(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v8 = sub_10000300C();
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10001B530();
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = v9;
      v14 = [v12 safari_logDescription];
      v15 = 138543362;
      v16 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Saving CloudSettings zone subscription succeeded with %{public}@", &v15, 0xCu);
    }

    v11 = *(*(a1 + 40) + 16);
  }

  else
  {
    v10 = sub_10000300C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10001B5E4(a1, v10);
    }

    v11 = *(*(a1 + 40) + 16);
  }

  v11();
}

void sub_100014D08(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  *(*(a1 + 32) + 296) = 0;
  v6 = sub_10000300C();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v9 = stringFromCloudSettingsSyncResult(a2);
      v10 = [v5 safari_privacyPreservingDescription];
      v11 = [*(a1 + 40) safari_logDescription];
      v16 = 138543874;
      v17 = v9;
      v18 = 2114;
      v19 = v10;
      v20 = 2114;
      v21 = v11;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "*** Cloud settings sync failed with result %{public}@: %{public}@ with %{public}@", &v16, 0x20u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v7;
    v13 = stringFromCloudSettingsSyncResult(a2);
    v14 = [*(a1 + 40) safari_logDescription];
    v16 = 138543618;
    v17 = v13;
    v18 = 2114;
    v19 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "*** Cloud settings sync finished with result: %{public}@ with %{public}@", &v16, 0x16u);
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    (*(v15 + 16))(v15, a2);
  }

  if (a2 == 2)
  {
    [*(a1 + 32) _registerCloudKitSubscriptionsXPCActivityRegisteringIfNeeded:1 ignoreOnGoingRegistration:0 resetSubscriptions:16 qualityOfService:9 delay:0];
  }
}

void sub_1000150E4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 280);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100015184;
  v4[3] = &unk_100131628;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v2 saveImageRecord:v1 inOperationGroup:v3 successCompletionHandler:v4];
}

void sub_100015364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100015380(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v9 = sub_1000D23FC();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10001B67C(v9, v6);
      }

      v10 = *(*(a1 + 40) + 16);
    }

    else
    {
      if (!v5)
      {
        v13 = *(WeakRetained + 42);
        v14 = *(a1 + 32);
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_100015558;
        v15[3] = &unk_100131B80;
        objc_copyWeak(&v17, (a1 + 48));
        v16 = *(a1 + 40);
        [v13 saveCloudExtensionsZoneSubscriptionInOperationGroup:v14 completionHandler:v15];

        objc_destroyWeak(&v17);
        goto LABEL_14;
      }

      v12 = sub_1000D23FC();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "CloudExtensions zone subscription already exists", buf, 2u);
      }

      v10 = *(*(a1 + 40) + 16);
    }
  }

  else
  {
    v11 = sub_1000D23FC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10001B71C();
    }

    v10 = *(*(a1 + 40) + 16);
  }

  v10();
LABEL_14:
}

void sub_100015558(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = sub_1000D23FC();
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10001B750(v9);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Saving CloudExtensions zone subscription succeeded", v12, 2u);
    }

    v11 = *(*(a1 + 32) + 16);
  }

  else
  {
    v10 = sub_1000D23FC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10001B7E8();
    }

    v11 = *(*(a1 + 32) + 16);
  }

  v11();
}

void sub_100016274(uint64_t a1)
{
  [*(a1 + 32) _registerCloudKitSubscriptionsXPCActivityRegisteringIfNeeded:1 ignoreOnGoingRegistration:0 resetSubscriptions:2 qualityOfService:9 delay:20];

  xpc_transaction_end();
}

void sub_100016538(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_100016814;
    v26 = &unk_100131E28;
    v11 = v3;
    v12 = *(a1 + 64);
    v27 = v11;
    v28 = v12;
    v13 = xpc_activity_add_eligibility_changed_handler();
    if (xpc_activity_set_state(v11, 4))
    {
      xpc_transaction_begin();
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1000168CC;
      v19[3] = &unk_100131E78;
      v14 = *(a1 + 56);
      v19[4] = *(a1 + 48);
      v20 = v11;
      v21 = v13;
      v22 = *(a1 + 64);
      (*(v14 + 16))(v14, v20, v19);
    }

    else
    {
      if (v13)
      {
        xpc_activity_remove_eligibility_changed_handler();
      }

      xpc_activity_set_state(v11, 3);
    }

    v7 = v27;
    goto LABEL_20;
  }

  if (!state)
  {
    v5 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 64);
      *buf = 136446210;
      v30 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Checked In xpc activity with identifier %{public}s", buf, 0xCu);
    }

    v7 = xpc_activity_copy_criteria(v3);
    if (v7)
    {
      v8 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 64);
        *buf = 136446210;
        v30 = v9;
        v10 = "An activity with identifier %{public}s is already scheduled";
LABEL_17:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, v10, buf, 0xCu);
      }
    }

    else
    {
      v15 = *(a1 + 72);
      v8 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      v16 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
      if (v15 != 1)
      {
        if (v16)
        {
          v18 = *(a1 + 64);
          *buf = 136446210;
          v30 = v18;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "No prior %{public}s activity was found and registration is not requested", buf, 0xCu);
        }

        goto LABEL_19;
      }

      if (v16)
      {
        v17 = *(a1 + 64);
        *buf = 136446210;
        v30 = v17;
        v10 = "No prior %{public}s activity was found. Registering a new one";
        goto LABEL_17;
      }
    }

    xpc_activity_set_criteria(v3, *(a1 + 32));
LABEL_19:
    dispatch_semaphore_signal(*(a1 + 40));
LABEL_20:
  }
}

BOOL sub_100016814(uint64_t a1)
{
  result = xpc_activity_should_defer(*(a1 + 32));
  if (result)
  {
    v3 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 40);
      v5 = 136446210;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Deferred xpc activity with identifier %{public}s", &v5, 0xCu);
    }

    return xpc_activity_set_state(*(a1 + 32), 3);
  }

  return result;
}

void sub_1000168CC(uint64_t a1, char a2, char a3)
{
  v5 = *(*(a1 + 32) + 120);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001697C;
  v6[3] = &unk_100131E50;
  v9 = a3;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = a2;
  dispatch_async(v5, v6);
}

void sub_10001697C(uint64_t a1)
{
  if (*(a1 + 56))
  {
    if (*(a1 + 57))
    {
      v2 = 5;
    }

    else
    {
      v2 = 3;
    }

    xpc_activity_set_state(*(a1 + 32), v2);
    if (*(a1 + 40))
    {
      xpc_activity_remove_eligibility_changed_handler();
    }
  }

  else
  {
    xpc_activity_set_state(*(a1 + 32), 5);
    if (*(a1 + 40))
    {
      xpc_activity_remove_eligibility_changed_handler();
    }

    xpc_activity_unregister(*(a1 + 48));
  }

  xpc_transaction_end();
}

id sub_100016DB8(char a1)
{
  v2 = +[NSMutableArray array];
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"Bookmarks"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"CloudKit Tabs"];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v3 addObject:@"Tab Groups Private Database"];
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v3 addObject:@"Tab Groups Shared Database"];
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  [v3 addObject:@"Customization Sync"];
  if ((a1 & 0x20) != 0)
  {
LABEL_7:
    [v3 addObject:@"Extension State Sync"];
  }

LABEL_8:
  v4 = [v3 componentsJoinedByString:{@", "}];

  return v4;
}

void sub_1000170F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_REPEATING, 0);
  xpc_dictionary_set_string(v4, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
  xpc_dictionary_set_string(v4, XPC_ACTIVITY_NETWORK_TRANSFER_DIRECTION, XPC_ACTIVITY_NETWORK_TRANSFER_BIDIRECTIONAL);
  xpc_dictionary_set_int64(v4, XPC_ACTIVITY_DELAY, v3);
  xpc_dictionary_set_int64(v4, XPC_ACTIVITY_GRACE_PERIOD, 0);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_REQUIRES_CLASS_C, 1);
  v5 = *(a1 + 64);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100017288;
  v6[3] = &unk_100131F40;
  v6[5] = *(a1 + 48);
  v6[4] = *(a1 + 32);
  v6[6] = *(a1 + 56);
  [v2 _checkInXPCActivityWithIdentifier:"com.apple.SafariBookmarksSyncAgent.XPC.ZoneSubscriptionRegistration" criteria:v4 registerIfNeeded:v5 performBlock:v6];

  xpc_transaction_end();
}

void sub_100017288(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
  dispatch_source_set_timer(v7, 0, (*(a1 + 40) * 1000000000.0), 0x3B9ACA00uLL);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100017440;
  handler[3] = &unk_1001314F8;
  handler[4] = *(a1 + 32);
  v8 = v7;
  v24 = v8;
  dispatch_source_set_cancel_handler(v8, handler);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100017464;
  v17[3] = &unk_100131F18;
  v9 = v8;
  v10 = *(a1 + 32);
  v18 = v9;
  v19 = v10;
  v11 = *(a1 + 48);
  v21 = v6;
  v22 = v11;
  v20 = v5;
  v12 = v5;
  v13 = v6;
  dispatch_source_set_event_handler(v9, v17);
  v14 = *(a1 + 32);
  v15 = *(v14 + 128);
  *(v14 + 128) = v9;
  v16 = v9;

  dispatch_resume(v16);
}

void sub_100017440(uint64_t a1)
{
  *(*(a1 + 32) + 152) = 0;
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 128);
  if (v2 == v3)
  {
    *(v1 + 128) = 0;
  }
}

void sub_100017464(uint64_t a1)
{
  dispatch_suspend(*(a1 + 32));
  *(*(a1 + 40) + 160) = 1;
  v2 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 40) + 144);
    v4 = v2;
    v5 = sub_100016DB8(v3);
    *buf = 138543362;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Attempting to save %{public}@ subscriptions", buf, 0xCu);
  }

  v6 = *(a1 + 40);
  if (*(v6 + 161) == 1)
  {
    *(v6 + 152) = 0;
    v6 = *(a1 + 40);
  }

  *(v6 + 161) = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017604;
  block[3] = &unk_100131F18;
  v10 = *(a1 + 32);
  v7 = v10.i64[0];
  v12 = vextq_s8(v10, v10, 8uLL);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v14 = v8;
  v15 = v9;
  v13 = *(a1 + 48);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100017604(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) aa_primaryAppleAccount];
  v3 = [*(*(a1 + 32) + 96) accountPropertiesStore];
  [v3 setNeedsDataclassEnabledCheck];

  v4 = [*(a1 + 32) isSyncEnabled];
  v5 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      *buf = 138477827;
      v17 = v2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Attempting to register CloudKit subscriptions for account: %{private}@", buf, 0xCu);
    }

    v7 = [CKOperationGroup safari_operationGroupWithName:@"CloudKit Subscription Request" qualityOfService:*(a1 + 64) xpcActivity:*(a1 + 48)];
    v8 = *(a1 + 32);
    v10 = v8[17];
    v9 = v8[18];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100017820;
    v13[3] = &unk_100131EF0;
    v13[4] = v8;
    v14 = *(a1 + 40);
    v15 = *(a1 + 56);
    [v8 _registerRemainingCloudKitSubscriptions:v9 withLastSuccessfulSubscriptions:v10 inOperationGroup:v7 withCompletionHandler:v13];
  }

  else
  {
    if (v6)
    {
      *buf = 138477827;
      v17 = v2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Not attempting to register CloudKit subscriptions because syncing is not available for account: %{private}@", buf, 0xCu);
    }

    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v7 = [NSError safari_errorWithCloudBookmarksCode:8 userInfo:0];
    [v11 _didRegisterCloudKitSubscriptions:0 timer:v12 lastError:v7 completionHandler:*(a1 + 56)];
  }
}

void sub_100017820(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000178F4;
  block[3] = &unk_100131EC8;
  v6 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v12 = a2;
  v9 = v6;
  v10 = v5;
  v11 = *(a1 + 48);
  v7 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_100017C64(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v10 = *(a1 + 56);
  v9 = *(a1 + 64);
  if (v7)
  {
    v9 |= a2;
    v11 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = v11;
      v13 = sub_100016DB8(a2);
      *buf = 138543362;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Registering %{public}@ subscription succeeded or we were already subscribed", buf, 0xCu);
    }
  }

  else
  {
    v14 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10001B8B4();
    }
  }

  v18 = CKErrorDomain;
  v19 = &off_10013C8F0;
  v15 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v16 = [v8 safari_matchesErrorDomainsAndCodes:v15];

  if (v16)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 32) _registerRemainingCloudKitSubscriptions:v10 & ~a2 withLastSuccessfulSubscriptions:v9 inOperationGroup:*(a1 + 40) withCompletionHandler:*(a1 + 48)];
  }

  return v16 ^ 1;
}

void sub_100017E14(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ((*(a1[6] + 16))() && [v4 safari_isOrContainsCloudKitMissingZoneError])
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100017EEC;
    v6[3] = &unk_1001314F8;
    v5 = a1[5];
    v6[4] = a1[4];
    v7 = v5;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

void sub_100017F8C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 74) & 1) == 0)
  {
    *(v2 + 74) = 1;
    [*(a1 + 32) _registerPeriodicRemoteMigrationStateObserverXPCActivityRegisteringIfNeeded:1];
    v1 = vars8;
  }

  xpc_transaction_end();
}

void sub_100018058(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REPEATING, 1);
  xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
  xpc_dictionary_set_string(v3, XPC_ACTIVITY_NETWORK_TRANSFER_DIRECTION, XPC_ACTIVITY_NETWORK_TRANSFER_BIDIRECTIONAL);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_INTERVAL, 2 * XPC_ACTIVITY_INTERVAL_1_HOUR);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_DELAY, 0);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_GRACE_PERIOD, 1);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRES_CLASS_C, 1);
  v4 = *(a1 + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100018200;
  v5[3] = &unk_100131CE8;
  v5[4] = *(a1 + 32);
  [v2 _checkInXPCActivityWithIdentifier:"com.apple.SafariBookmarksSyncAgent.XPC.PeriodicRemoteMigrationStateObserver" criteria:v3 registerIfNeeded:v4 performBlock:v5];

  xpc_transaction_end();
}

void sub_100018200(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Checking remote migration state for a chance to migrate as a secondary device", buf, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018308;
  block[3] = &unk_100131A20;
  block[4] = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100018308(uint64_t a1)
{
  *(*(a1 + 32) + 74) = 1;
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000183CC;
  v4[3] = &unk_100132008;
  v4[4] = v3;
  v5 = v2;
  v6 = *(a1 + 48);
  [v3 _fetchRemoteMigrationStateWithXPCActivity:v5 qualityOfService:17 completionHandler:v4];
}

void sub_1000183CC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000184A0;
  block[3] = &unk_100131EC8;
  v12 = a2;
  v6 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v11 = *(a1 + 48);
  v7 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_1000184A0(uint64_t a1)
{
  v2 = *(a1 + 64);
  if ((v2 + 1) >= 3)
  {
    if (v2 != 2)
    {
      v6 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10001B964();
      }

      goto LABEL_21;
    }

    v4 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Remote migration state is set to finished; determining if secondary device migration can proceed", buf, 2u);
    }

    v5 = sub_1000328C4(*(*(a1 + 32) + 16));
    if ([v5 isEqualToString:*(a1 + 40)])
    {
    }

    else
    {
      v7 = *(*(a1 + 32) + 73);

      if ((v7 & 1) == 0)
      {
        v13 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *v19 = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Attempting to migrate as secondary device", v19, 2u);
        }

        v14 = [*(*(a1 + 32) + 24) createMigrationFromDAVOperationGroupWithXPCActivity:*(a1 + 48)];
        [*(a1 + 32) _beginMigrationFromDAVInOperationGroup:v14];

        goto LABEL_21;
      }
    }

    v8 = *(*(a1 + 32) + 73);
    v9 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
    if (v8 == 1)
    {
      if (v10)
      {
        v18 = 0;
        v11 = "Not proceeding with migration because there is already an ongoing migration";
        v12 = &v18;
LABEL_17:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, v11, v12, 2u);
      }
    }

    else if (v10)
    {
      *v17 = 0;
      v11 = "Not proceeding with migration because this device was the primary migrator";
      v12 = v17;
      goto LABEL_17;
    }

LABEL_21:
    *(*(a1 + 32) + 74) = 0;
    return (*(*(a1 + 56) + 16))();
  }

  v3 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "No device has migrated yet; continuing to periodically check the remote migration state", v16, 2u);
  }

  return (*(*(a1 + 56) + 16))();
}

void sub_100018780(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REPEATING, 0);
  xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRES_CLASS_C, 1);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
  xpc_dictionary_set_string(v3, XPC_ACTIVITY_NETWORK_TRANSFER_DIRECTION, XPC_ACTIVITY_NETWORK_TRANSFER_BIDIRECTIONAL);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_DELAY, 0);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_GRACE_PERIOD, 1);
  v4 = *(a1 + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100018904;
  v5[3] = &unk_100131CE8;
  v5[4] = *(a1 + 32);
  [v2 _checkInXPCActivityWithIdentifier:"com.apple.SafariBookmarksSyncAgent.migration" criteria:v3 registerIfNeeded:v4 performBlock:v5];

  xpc_transaction_end();
}

void sub_100018904(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000189D0;
  block[3] = &unk_100130E50;
  v7 = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  block[4] = v7;
  v8 = v5;
  v9 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000189D0(uint64_t a1)
{
  v2 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "CloudKit bookmarks migration activity is running", buf, 2u);
  }

  v3 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Attempting to migrate to CloudKit", buf, 2u);
  }

  v4 = *(a1 + 32);
  if (*(v4 + 73) == 1)
  {
    v5 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Bailing out from migration since migration was already in progress", buf, 2u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    *(v4 + 73) = 1;
    v6 = [*(*(a1 + 32) + 24) createMigrationFromDAVOperationGroupWithXPCActivity:*(a1 + 40)];
    v7 = *(a1 + 32);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100018B70;
    v8[3] = &unk_100132030;
    v8[4] = v7;
    v9 = *(a1 + 48);
    [v7 _migrateFromDAVInOperationGroup:v6 completionHandler:v8];
  }
}

uint64_t sub_100018B70(uint64_t a1, int a2)
{
  v4 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "*** Migration to CloudKit finished with status: %d", v6, 8u);
  }

  kdebug_trace();
  *(*(a1 + 32) + 73) = 0;
  [*(a1 + 32) userDidUpdateBookmarkDatabase];
  if (a2)
  {
    [*(a1 + 32) _registerCloudKitSubscriptionsXPCActivityRegisteringIfNeeded:1 ignoreOnGoingRegistration:0 resetSubscriptions:1 qualityOfService:17 delay:0];
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_100018D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100018DB4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v9 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10001B998(v9, v6);
      }

      v10 = *(*(a1 + 40) + 16);
    }

    else
    {
      if (!v5)
      {
        v12 = *(WeakRetained + 50);
        v13 = *(a1 + 32);
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_100018F58;
        v14[3] = &unk_100131B80;
        objc_copyWeak(&v16, (a1 + 48));
        v15 = *(a1 + 40);
        [v12 savePrivateDatabaseSubscriptionInOperationGroup:v13 withCompletionHandler:v14];

        objc_destroyWeak(&v16);
        goto LABEL_11;
      }

      v11 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "TabGroups database private subscription already exists", buf, 2u);
      }

      v10 = *(*(a1 + 40) + 16);
    }

    v10();
  }

LABEL_11:
}

void sub_100018F58(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10001BA38(v9);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Saving TabGroups private database subscription succeeded", v10, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_100019130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001914C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v9 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10001BAD0(v9, v6);
      }

      v10 = *(*(a1 + 40) + 16);
    }

    else
    {
      if (!v5)
      {
        v12 = *(WeakRetained + 50);
        v13 = *(a1 + 32);
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_1000192F0;
        v14[3] = &unk_100131B80;
        objc_copyWeak(&v16, (a1 + 48));
        v15 = *(a1 + 40);
        [v12 saveSharedDatabaseSubscriptionInOperationGroup:v13 withCompletionHandler:v14];

        objc_destroyWeak(&v16);
        goto LABEL_11;
      }

      v11 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "TabGroups shared database subscription already exists", buf, 2u);
      }

      v10 = *(*(a1 + 40) + 16);
    }

    v10();
  }

LABEL_11:
}

void sub_1000192F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10001BB70(v9);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Saving TabGroups shared database subscription succeeded", v10, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_100019538(void *a1)
{
  v2 = a1[5];
  v3 = sub_1000137D0();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000195F8;
  v7[3] = &unk_100132080;
  v4 = a1[6];
  v7[4] = a1[5];
  v5 = v4;
  v6 = a1[7];
  v8 = v5;
  v9 = v6;
  [v2 _checkInXPCActivityWithIdentifier:"com.apple.SafariBookmarksSyncAgent.XPC.TabGroupSyncNetworkConnectivity" criteria:v3 registerIfNeeded:1 performBlock:v7];
}

void sub_1000195F8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = os_transaction_create();
  v4[2](v4, 1, 0);

  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = nullsub_19;
  v10[3] = &unk_100132058;
  v11 = v5;
  v9 = v5;
  [v6 _runTabGroupsSyncForManager:v7 withTrigger:v8 completionHandler:v10];
}

id *sub_100019854(id *result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4[0] = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Retry tab groups sync because running outside of XPC activity failed.", v4, 2u);
    }

    return [v2[5] _runTabGroupSyncUsingXPCActivityForManager:v2[6] tigger:v2[7]];
  }

  return result;
}

void sub_100019994(uint64_t a1)
{
  v2 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 56);
    v4 = v2;
    v5 = sub_100003044(v3);
    *buf = 138543362;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Will attempt tab group sync in response to trigger: %{public}@", buf, 0xCu);
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100019AD0;
  v10[3] = &unk_1001320F8;
  v8 = *(a1 + 56);
  v9 = *(a1 + 48);
  v10[4] = *(a1 + 32);
  v11 = v9;
  [v6 _performTabGroupSyncForManager:v7 withTrigger:v8 completionHandler:v10];
}

uint64_t sub_100019AD0(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (a2 <= 2)
  {
    if ((a2 - 1) >= 2)
    {
      if (a2)
      {
        return result;
      }
    }

    else
    {
      [*(result + 32) _registerCloudKitSubscriptionsXPCActivityRegisteringIfNeeded:1 ignoreOnGoingRegistration:0 resetSubscriptions:12 qualityOfService:9 delay:0];
    }
  }

  else if ((a2 - 4) >= 2)
  {
    if (a2 == 3)
    {
      result = *(result + 40);
      if (!result)
      {
        return result;
      }

      v3 = *(result + 16);
      goto LABEL_11;
    }

    if (a2 != 6)
    {
      return result;
    }
  }

  result = *(v2 + 40);
  if (!result)
  {
    return result;
  }

  v3 = *(result + 16);
LABEL_11:

  return v3();
}

void sub_100019DB0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, a2);
  }

  if (a2 != 1)
  {
    if (a2 != 2)
    {
      goto LABEL_16;
    }

    [*(a1 + 32) _registerCloudKitSubscriptionsXPCActivityRegisteringIfNeeded:1 ignoreOnGoingRegistration:0 resetSubscriptions:12 qualityOfService:9 delay:5];
  }

  v7 = [*(*(a1 + 32) + 8) safari_primaryAppleAccount];
  v8 = [v7 safari_accountHash];

  v9 = [*(a1 + 40) configuration];
  [v9 storeOwner];
  v10 = WBNSStringFromCollectionStoreOwner();

  v11 = [*(*(a1 + 32) + 200) objectForKeyedSubscript:v10];
  v12 = v11;
  if (v11 && [v11 isEqualToData:v8])
  {
    v13 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v16 = 138543362;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Migration already initiated for manager %{public}@ on current account, skipping duplicate attempt", &v16, 0xCu);
    }
  }

  else
  {
    v14 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = @"<present>";
      if (!v8)
      {
        v15 = @"<none>";
      }

      v16 = 138543618;
      v17 = v10;
      v18 = 2114;
      v19 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Starting migration for manager %{public}@ on account with hash %{public}@", &v16, 0x16u);
    }

    [*(*(a1 + 32) + 200) setObject:v8 forKeyedSubscript:v10];
    [*(a1 + 40) startMigrationIfNeeded];
  }

LABEL_16:
}

void sub_10001A948(id a1)
{
  v1 = [[CKRecordZoneID alloc] initWithZoneName:@"CloudSettings" ownerName:CKCurrentUserDefaultName];
  v2 = qword_100153E50;
  qword_100153E50 = v1;
}

void sub_10001AA20(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10001AAB8()
{
  sub_10001A9E0();
  v3 = v2;
  sub_10001A9D4();
  WBSStringFromCloudBookmarksSyncResult();
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_10001A99C();
  sub_10001A9C4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_10001AB68(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10001AC14()
{
  sub_10001A9E0();
  v3 = v2;
  v4 = [sub_10001A9D4() safari_privacyPreservingDescription];
  v5 = [*(v0 + 32) safari_logDescription];
  sub_10001A99C();
  sub_10001A9C4();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_10001ACC8(void *a1, void *a2, void *a3)
{
  v5 = WBSCloudPerSiteSettingName;
  v6 = a1;
  v7 = [a2 objectForKeyedSubscript:v5];
  v8 = [a2 objectForKeyedSubscript:WBSCloudPerSiteSettingDomain];
  v14 = [a3 safari_logDescription];
  sub_10001A9B4();
  _os_log_error_impl(v9, v10, v11, v12, v13, 0x34u);
}

void sub_10001ADEC()
{
  sub_10001A9E0();
  v3 = v2;
  [sub_10001A9D4() safari_privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_10000807C() safari_logDescription];
  sub_10001A99C();
  sub_10001A9C4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_10001AEB0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = a2;
  v11 = [sub_10000807C() safari_logDescription];
  sub_10001A9B4();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_10001B008(void *a1)
{
  v2 = a1;
  [sub_10000807C() processIdentifier];
  sub_10001A9B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 8u);
}

void sub_10001B098(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a2;
  v7 = [sub_10001A9D4() containerIdentifier];
  v8 = [*(a3 + 56) safari_logDescription];
  sub_10001A99C();
  sub_10001A9C4();
  _os_log_error_impl(v9, v10, v11, v12, v13, 0x16u);
}

void sub_10001B150(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_10001B1F0(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10001B288(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_10001B328(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10001B3C0(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 safari_privacyPreservingDescription];
  v12 = [*(a3 + 32) safari_logDescription];
  sub_10001A9B4();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x16u);
}

void sub_10001B490(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 safari_logDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_10001B530()
{
  sub_10001A9E0();
  v3 = v2;
  v4 = [sub_10001A9D4() safari_privacyPreservingDescription];
  v5 = [*(v0 + 32) safari_logDescription];
  sub_10001A99C();
  sub_10001A9C4();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_10001B5E4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [sub_10000807C() safari_logDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);
}

void sub_10001B67C(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_10001B750(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10001B81C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  v5 = sub_10000807C();
  v6 = sub_100016DB8(v5);
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0xCu);
}

void sub_10001B8B4()
{
  sub_10001A9E0();
  v3 = v2;
  v4 = sub_10001A9D4();
  sub_100016DB8(v4);
  objc_claimAutoreleasedReturnValue();
  v5 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_10001A99C();
  sub_10001A9C4();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_10001B998(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_10001BA38(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10001BAD0(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_10001BB70(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10001BC08(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 sortedArrayUsingSelector:"localizedStandardCompare:"];
  v5 = [v4 componentsJoinedByString:@"&"];
  sub_100008064();
  sub_10001A9C4();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);
}

void sub_10001BD04(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 componentsJoinedByString:@"&"];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

__CFString *sub_10001C04C(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [NSMutableArray arrayWithCapacity:5];
    v3 = v2;
    if (v1)
    {
      [v2 addObject:@"Update Remote"];
      if ((v1 & 2) == 0)
      {
LABEL_4:
        if ((v1 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_15;
      }
    }

    else if ((v1 & 2) == 0)
    {
      goto LABEL_4;
    }

    [v3 addObject:@"Update Local"];
    if ((v1 & 4) == 0)
    {
LABEL_5:
      if ((v1 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }

LABEL_15:
    [v3 addObject:@"Update Local Parent Or Position"];
    if ((v1 & 8) == 0)
    {
LABEL_6:
      if ((v1 & 0x10) == 0)
      {
LABEL_8:
        v4 = [v3 componentsJoinedByString:{@", "}];
        v5 = [NSString stringWithFormat:@"<%@>", v4];

        goto LABEL_10;
      }

LABEL_7:
      [v3 addObject:@"Undelete Local"];
      goto LABEL_8;
    }

LABEL_16:
    [v3 addObject:@"Delete Local"];
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v5 = @"<None>";
LABEL_10:

  return v5;
}

const __CFString *sub_10001CDE0(uint64_t a1, void *a2)
{
  v2 = [a2 itemTypeForChange:a1];
  if (v2 == 1)
  {
    return @"Folder";
  }

  if (!v2)
  {
    return @"Bookmark";
  }

  v4 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100022E5C();
  }

  return 0;
}

__CFString *sub_10001CE58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 changeTypeForChange:a1];
  if (v4 == 2)
  {
    v5 = @"Delete";
  }

  else if (v4 == 1)
  {
    v6 = [v3 changeIsMoveChange:a1];
    v7 = @"Modify";
    if (v6)
    {
      v7 = @"Move";
    }

    v5 = v7;
  }

  else if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = @"Add";
  }

  return v5;
}

__CFString *sub_10001D42C(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [NSString stringWithFormat:@"<Unknown CKBABookmarkType %ld>", a1];
  }

  else
  {
    v2 = off_100132318[a1];
  }

  return v2;
}

__CFString *sub_10001D49C(unint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [NSString stringWithFormat:@"<Unknown CKBAFolderType %ld>", a1];
  }

  else
  {
    v2 = off_100132330[a1];
  }

  return v2;
}

void sub_10001FB54(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 32) generationKeyForKey:v5];
  v8 = [*(*(a1 + 32) + 40) safari_generationForKey:v7];
  if ([v8 isValid])
  {
    v9 = [*(*(a1 + 32) + 32) valueTransformerForAttributeKey:v5];
    v10 = [objc_opt_class() transformedValueClass];
    if ([v10 isEqual:objc_opt_class()])
    {
      v11 = [*(*(a1 + 32) + 56) copySaveURLForAssetWithKey:v5 item:*(*(a1 + 32) + 48)];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10001FCBC;
      v13[3] = &unk_100132208;
      v12 = *(a1 + 40);
      v13[4] = *(a1 + 32);
      v14 = v5;
      [v12 saveAssetAtURL:v6 toURL:v11 completionHandler:v13];
    }
  }
}

void sub_10001FCBC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100023C74(v4);
    }
  }

  else
  {
    [*(*(a1 + 32) + 56) notifyForSaveOfAssetWithKey:*(a1 + 40) item:*(*(a1 + 32) + 48)];
  }
}

void sub_100020798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000207C0(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = *(*(a1 + 32) + 32);
  v6 = a3;
  v7 = [v5 valueTransformerForAttributeKey:v16];
  v8 = [v7 attributeRequiresEncryption];
  v9 = [v7 transformedValueOrNull:v6];

  v10 = *(*(a1 + 32) + 40);
  if (v8)
  {
    v11 = [v10 safari_encryptedValues];
    [v11 setObject:v9 forKeyedSubscript:v16];
  }

  else
  {
    [v10 setObject:v9 forKeyedSubscript:v16];
  }

  if ([*(*(a1 + 32) + 32) isIdentityHashKey:v16])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v12 = [*(*(a1 + 32) + 32) generationKeyForKey:v16];
  v13 = *(a1 + 32);
  v14 = *(v13 + 40);
  v15 = [*(v13 + 8) generationForKey:v12];
  [v14 safari_setGeneration:v15 forKey:v12];
}

void sub_100020B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_100020B54(uint64_t a1, void *a2, void *a3)
{
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v5 = *(*(a1 + 32) + 32);
  v6 = a3;
  v7 = a2;
  v12 = [v5 valueTransformerForAttributeKey:v7];
  v8 = [v12 attributeRequiresEncryption];
  v9 = [v12 transformedValueOrNull:v6];

  v10 = *(*(a1 + 32) + 40);
  if (v8)
  {
    v11 = [v10 safari_encryptedValues];
    [v11 setObject:v9 forKeyedSubscript:v7];

    v7 = v11;
  }

  else
  {
    [v10 setObject:v9 forKeyedSubscript:v7];
  }
}

void sub_100020C44(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 32) generationKeyForKey:v5];
  if ([*(a1 + 40) containsObject:v7])
  {
    (*(*(a1 + 56) + 16))();
    goto LABEL_12;
  }

  if ([*(*(a1 + 32) + 8) hasGenerationForKey:v7])
  {
    goto LABEL_12;
  }

  if (![*(*(a1 + 32) + 32) isIdentityHashKey:v5])
  {
LABEL_9:
    (*(*(a1 + 56) + 16))();
    [*(*(a1 + 32) + 8) incrementGenerationForKey:v7 withDeviceIdentifier:*(a1 + 48)];
    v9 = *(a1 + 32);
    v10 = *(v9 + 40);
    v11 = [*(v9 + 8) generationForKey:v7];
    [v10 safari_setGeneration:v11 forKey:v7];

    [*(a1 + 40) addObject:v7];
    goto LABEL_12;
  }

  v8 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100023E0C();
  }

  if (*(a1 + 72))
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
    goto LABEL_9;
  }

  v12 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_100023E74();
  }

LABEL_12:
}

void sub_100020EEC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v9 = [v6 first];
    v10 = [v6 second];
    v11 = *(*(a1 + 32) + 64);
    v17 = 138544130;
    v18 = v9;
    v19 = 2114;
    v20 = v10;
    v21 = 2114;
    v22 = v5;
    v23 = 2114;
    v24 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Did apply reference %{public}@ generation: %{public}@ to attribute %{public}@ of record name: %{public}@", &v17, 0x2Au);
  }

  v12 = [*(*(a1 + 32) + 32) valueTransformerForAttributeKey:v5];
  v13 = [v6 first];
  v14 = [v12 reverseTransformedValueOrNull:v13];
  [*(*(a1 + 32) + 16) setObject:v14 forKeyedSubscript:v5];

  v15 = *(*(a1 + 32) + 8);
  v16 = [v6 second];
  [v15 setGeneration:v16 forKey:v5];
}

void sub_1000226F0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_100022710(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100022738(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t sub_100022764@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 64);
  return result;
}

uint64_t *sub_100022790@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

id sub_10002279C()
{

  return [v0 itemTypeWithItem:v1];
}

void sub_1000227EC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_10002280C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_10002282C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

void sub_10002284C()
{
  sub_100008070();
  sub_10002272C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100022900()
{
  sub_10001A9E0();
  v2 = v1;
  [sub_1000227B8() copyServerIdWithItem:?];
  sub_1000226B8();
  sub_100022738(&_mh_execute_header, v3, v4, "%{public}s Unknown item type %{public}@", v5, v6, v7, v8, 2u);
}

void sub_100022A04()
{
  sub_10001A9E0();
  v2 = v1;
  [sub_1000227B8() itemTypeWithItem:?];
  sub_100022738(&_mh_execute_header, v3, v4, "%{public}s Unknown item type %ld", v5, v6, v7, v8, 2u);
}

void sub_100022B10(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = sub_1000227D4();
  v8 = sub_10001CE58(v6, v7);
  v9 = [a3 copyServerIdWithChange:a2];
  v10 = sub_1000227D4();
  v12 = sub_10001CDE0(v10, v11);
  sub_100022770();
  sub_10002282C(&_mh_execute_header, v13, v14, "Change of type %{public}@ for bookmark %{public}@ of type %{public}@ given without an associated item", v15, v16, v17, v18, v19);
}

void sub_100022BE0()
{
  sub_10001A9E0();
  v3 = v2;
  v4 = sub_10001CDE0(v1, v0);
  v11 = [v0 copyServerIdWithChange:v1];
  sub_100022738(&_mh_execute_header, v5, v6, "Cannot find configuration for change with type %{public}@ for bookmark %{public}@", v7, v8, v9, v10, 2u);
}

void sub_100022D1C()
{
  sub_100008064();
  sub_1000226C8();
  sub_1000226F0(&_mh_execute_header, v0, v1, "No record object found in decoded sync data of deleted change %{private}@ to update with record name: %{public}@.");
}

void sub_100022D88()
{
  sub_100008064();
  sub_1000226C8();
  sub_1000226F0(&_mh_execute_header, v0, v1, "Could not decode sync data in deleted change %{private}@ to update with record name: %{public}@.");
}

void sub_100022EC4()
{
  sub_1000227E0();
  v2 = v1;
  sub_10002279C();
  sub_1000226D8();
  sub_100022738(&_mh_execute_header, v3, v4, "Expecting CKBAItemTypeFolder type for local item %p, but got %ld", v5, v6, v7, v8, v9);
}

void sub_100022F4C()
{
  sub_1000227E0();
  v2 = v1;
  sub_10002279C();
  sub_1000226D8();
  sub_1000227EC(&_mh_execute_header, v3, v4, "Expecting CKBAItemTypeFolder type for local item %{private}@, but got %ld", v5, v6, v7, v8, v9);
}

void sub_100022FD4()
{
  sub_1000227E0();
  v2 = v1;
  sub_10002279C();
  sub_1000226D8();
  sub_100022738(&_mh_execute_header, v3, v4, "Expecting CKBAItemTypeBookmark type for local item %p, but got %ld", v5, v6, v7, v8, v9);
}

void sub_10002305C()
{
  sub_1000227E0();
  v2 = v1;
  sub_10002279C();
  sub_1000226D8();
  sub_1000227EC(&_mh_execute_header, v3, v4, "Expecting CKBAItemTypeBookmark type for local item %{private}@, but got %ld", v5, v6, v7, v8, v9);
}

void sub_1000230E4(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() recordType];
  sub_1000226B8();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10002318C()
{
  sub_100008064();
  sub_1000226C8();
  sub_1000226F0(&_mh_execute_header, v0, v1, "Cannot find configuration for item with record name: %{public}@ to apply pending references %{public}@");
}

void sub_1000231F8()
{
  sub_100008064();
  sub_1000226C8();
  sub_1000226F0(&_mh_execute_header, v0, v1, "Could not find item with record name %{public}@ in database to apply pending references %{public}@");
}

void sub_100023264()
{
  sub_100008070();
  sub_10002272C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000232A0(uint64_t a1)
{
  v1 = *(sub_100022764(a1, __stack_chk_guard) + 8);
  sub_1000226B8();
  sub_10002272C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10002331C(uint64_t *a1)
{
  sub_100022790(a1, __stack_chk_guard);
  sub_100022758();
  sub_100022710(&_mh_execute_header, v1, v2, "Assigning new record with record name %{public}@ to locally modified item, this could create an empty record on the server", v3, v4, v5, v6, v7);
}

void sub_100023384(void *a1)
{
  v2 = a1;
  sub_10000807C();
  objc_opt_class();
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100023410()
{
  sub_10001A9E0();
  v2 = v1;
  [sub_1000227B8() copyServerIdWithChange:?];
  sub_1000226B8();
  sub_100022738(&_mh_execute_header, v3, v4, "%{public}s Unknown item type for record name %{public}@", v5, v6, v7, v8, 2u);
}

void sub_1000234AC(uint64_t *a1)
{
  sub_100022790(a1, __stack_chk_guard);
  sub_1000226A0();
  sub_1000226F0(&_mh_execute_header, v1, v2, "Deleted bookmark change with record name %{public}@ contains the CKRecord of another bookmark with record name %{public}@");
}

void sub_100023514(uint64_t *a1)
{
  sub_100022790(a1, __stack_chk_guard);
  sub_100022758();
  sub_100022710(&_mh_execute_header, v1, v2, "Deleted bookmark change with record name %{public}@ does not have a CKRecord attached to it", v3, v4, v5, v6, v7);
}

void sub_1000235E4()
{
  sub_100008070();
  sub_10002272C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100023620()
{
  sub_100008070();
  sub_10002272C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002365C(uint64_t *a1)
{
  sub_100022790(a1, __stack_chk_guard);
  sub_100022758();
  sub_100022710(&_mh_execute_header, v1, v2, "CKRecord %{private}@ with invalid record name was received; ignoring it", v3, v4, v5, v6, v7);
}

void sub_1000236C4(uint64_t *a1)
{
  sub_100022790(a1, __stack_chk_guard);
  sub_100022758();
  sub_100022710(&_mh_execute_header, v1, v2, "Migrated record %{public}@ known to the server has no position!", v3, v4, v5, v6, v7);
}

void sub_100023794()
{
  sub_100008064();
  sub_1000227C8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100023804(void *a1)
{
  v2 = a1;
  sub_10000807C();
  v3 = WBDescriptionForBookmarkSyncModifiedAttributes();
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10002389C(void *a1)
{
  v2 = a1;
  sub_10000807C();
  v3 = WBDescriptionForBookmarkSyncModifiedAttributes();
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100023934(uint64_t a1)
{
  sub_100022764(a1, __stack_chk_guard);
  sub_1000226A0();
  sub_1000226F0(&_mh_execute_header, v1, v2, "Trying to read the value for a key even though the key was not modified locally in record. Record name: <%{public}@>, key: %{public}@.");
}

void sub_10002399C(uint64_t a1)
{
  sub_100022764(a1, __stack_chk_guard);
  sub_1000226A0();
  sub_1000226F0(&_mh_execute_header, v1, v2, "Trying to read the value for a key on a record that was deleted locally. Record name: <%{public}@>, key: %{public}@.");
}

void sub_100023A04(uint64_t a1)
{
  sub_100022764(a1, __stack_chk_guard);
  sub_1000226A0();
  sub_1000226F0(&_mh_execute_header, v1, v2, "Trying to read the transformed value for a key even though the key was not modified locally in record. Record name: <%{public}@>, key: %{public}@.");
}

void sub_100023A6C(uint64_t a1)
{
  sub_100022764(a1, __stack_chk_guard);
  sub_1000226A0();
  sub_1000226F0(&_mh_execute_header, v1, v2, "Trying to read the transformed value for a key on a record that was deleted locally. Record name: <%{public}@>, key: %{public}@.");
}

void sub_100023AD4(uint64_t a1)
{
  sub_100022764(a1, __stack_chk_guard);
  sub_100022758();
  sub_100022710(&_mh_execute_header, v1, v2, "Trying to read the value of ParentFolder on a record whose parent was not updated locally. Record name: <%{public}@>.", v3, v4, v5, v6, v7);
}

void sub_100023B3C(uint64_t a1)
{
  sub_100022764(a1, __stack_chk_guard);
  sub_100022758();
  sub_100022710(&_mh_execute_header, v1, v2, "Trying to read the value of ParentFolder on a record that was deleted locally. Record name: <%{public}@>.", v3, v4, v5, v6, v7);
}

void sub_100023BA4(uint64_t a1)
{
  sub_100022764(a1, __stack_chk_guard);
  sub_100022758();
  sub_100022710(&_mh_execute_header, v1, v2, "Trying to read the value of IdentityHash on a record whose Title or URL was not updated locally. Record name: <%{public}@>.", v3, v4, v5, v6, v7);
}

void sub_100023C0C(uint64_t a1)
{
  sub_100022764(a1, __stack_chk_guard);
  sub_100022758();
  sub_100022710(&_mh_execute_header, v1, v2, "Trying to read the value of IdentityHash on a record that was deleted locally. Record name: <%{public}@>.", v3, v4, v5, v6, v7);
}

void sub_100023C74(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100023D0C(void *a1)
{
  v2 = a1;
  sub_10000807C();
  v3 = WBDescriptionForBookmarkSyncModifiedAttributes();
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100023DA4(uint64_t *a1)
{
  sub_100022790(a1, __stack_chk_guard);
  sub_100022758();
  sub_100022710(&_mh_execute_header, v1, v2, "Non-built-in record with name %{public}@ does not have a position", v3, v4, v5, v6, v7);
}

void sub_100023E74()
{
  sub_100008070();
  sub_10002272C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100023EB0()
{
  sub_100008070();
  sub_10002272C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100023EEC()
{
  sub_100008070();
  sub_1000227C8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100023F28()
{
  sub_100008070();
  sub_1000227C8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100023F64(uint64_t a1)
{
  sub_100022764(a1, __stack_chk_guard);
  sub_1000226A0();
  sub_10002280C(&_mh_execute_header, v1, v2, "Merging parent and position for record Name: %{public}@, local and remote generations are equal: %{public}@");
}

void sub_100023FCC(uint64_t a1)
{
  sub_100022764(a1, __stack_chk_guard);
  sub_100022758();
  sub_100022710(&_mh_execute_header, v1, v2, "Local and remote minimum API versions differ, even though generations are the same. Record name: %{public}@.", v3, v4, v5, v6, v7);
}

void sub_100024034(uint64_t a1)
{
  sub_100022764(a1, __stack_chk_guard);
  sub_1000226A0();
  sub_10002280C(&_mh_execute_header, v1, v2, "Merging minimum API version for record name: %{public}@, local and remote generations are equal: %{public}@");
}

void sub_10002409C()
{
  sub_100008064();
  sub_1000227C8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

id sub_10002410C(char a1)
{
  v2 = +[NSMutableArray array];
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"Zone Sync Requirement"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"CKShare"];
  if ((a1 & 4) != 0)
  {
LABEL_4:
    [v3 addObject:@"Participant Extras"];
  }

LABEL_5:
  v4 = [v3 componentsJoinedByString:{@", "}];

  return v4;
}

void sub_100024498(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:0];

  [*(a1 + 32) addObject:v5];
}

void sub_100024888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000248A8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:0];

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_100024F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_100024F44(void *a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [a3 integerValue];
  v6 = a1[4];
  if (v5 > [objc_opt_class() currentAPIVersion])
  {
    *(*(a1[5] + 8) + 24) = 1;
    *(*(a1[6] + 8) + 24) |= [v7 unsignedIntegerValue];
  }
}

void sub_100025430(uint64_t a1)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  if (v3 == *(v4 + 416))
  {
    v8 = v1;
    v9 = v2;
    v5 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Not updating push topic", v7, 2u);
    }
  }

  else
  {
    *(v4 + 416) = v3;
    v6 = *(a1 + 32);

    [v6 updatePushTopicSubscriptions];
  }
}

void sub_100026048(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000260D0;
  v2[3] = &unk_100131990;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(&_dispatch_main_q, v2);
}

void sub_1000261D4(uint64_t a1)
{
  v2 = sub_1000D23FC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Saving extension state for the current device to CloudKit", v10, 2u);
  }

  v3 = +[CloudExtensionStore cloudExtensionsRecordZoneID];
  v4 = [CloudExtensionDevice cloudExtensionDeviceWithDictionaryRepresentation:*(a1 + 32) extensionSettingsDictionaryForDevice:*(a1 + 40) cloudExtensionsRecordZoneID:v3];
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 40);
    v7 = [v4 deviceUUIDString];
    v8 = [CloudExtensionState cloudExtensionStatesFromStatesDictionaryRepresentation:v6 owningDeviceUUIDString:v7 cloudExtensionsRecordZoneID:v3];
    [v5 setCloudExtensionStates:v8];

    [*(a1 + 48) _saveCloudExtensionDevice:v5 shouldUpdateExtensionStatesWhenSavingDevice:1 completionHandler:*(a1 + 56)];
  }

  else
  {
    v9 = sub_1000D23FC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10002BD38((a1 + 32));
    }

    (*(*(a1 + 56) + 16))();
  }
}

void sub_1000263E4(uint64_t a1)
{
  v2 = sub_1000D23FC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Saving current device excluding extension states to CloudKit", v6, 2u);
  }

  v3 = +[CloudExtensionStore cloudExtensionsRecordZoneID];
  v4 = [CloudExtensionDevice cloudExtensionDeviceWithDictionaryRepresentation:*(a1 + 32) extensionSettingsDictionaryForDevice:0 cloudExtensionsRecordZoneID:v3];
  if (v4)
  {
    [*(a1 + 40) _saveCloudExtensionDevice:v4 shouldUpdateExtensionStatesWhenSavingDevice:0 completionHandler:*(a1 + 48)];
  }

  else
  {
    v5 = sub_1000D23FC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10002BDB0((a1 + 32));
    }

    (*(*(a1 + 48) + 16))();
  }
}

id sub_1000265C0(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 80), *(a1 + 40));
  *(*(a1 + 32) + 88) = *(a1 + 56);
  v2 = objc_retainBlock(*(a1 + 48));
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;

  v5 = *(a1 + 32);
  v6 = *(v5 + 120);
  *(v5 + 120) = 0;

  [*(*(a1 + 32) + 16) openDatabaseIfNecessary];
  v7 = *(a1 + 32);

  return [v7 _continueSavingExtensionStates];
}

void sub_10002694C(uint64_t a1)
{
  [*(a1 + 32) _suspendFetchingQueue];
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000269EC;
  v2[3] = &unk_100132470;
  v2[4] = *(a1 + 32);
  objc_copyWeak(&v3, (a1 + 40));
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v3);
}

void sub_1000269EC(uint64_t a1)
{
  [*(a1 + 32) set_cloudExtensionStoreError:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = [*(v2 + 80) deviceUUIDString];
  v5 = *(*(a1 + 32) + 88);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100026AD4;
  v6[3] = &unk_100132448;
  objc_copyWeak(&v7, (a1 + 40));
  [v3 loadCloudExtensionDeviceWithUUIDString:v4 includeCloudExtensionStates:v5 completionHandler:v6];

  objc_destroyWeak(&v7);
}

void sub_100026AD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100026B8C;
  v5[3] = &unk_100132420;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_100026B8C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _cloudExtensionStoreError];
    if (v4)
    {
      v5 = sub_1000D23FC();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10002BE28(v5);
      }

      [v3 _resumeFetchingQueue];
      [v3 _handleSevereSQLiteErrorWhileMergingExistingDevice:v4];
    }

    else
    {
      [v3 _resumeFetchingQueue];
      if (*(a1 + 32))
      {
        v6 = *(v3 + 88);
        v7 = sub_1000D23FC();
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
        if (v6 == 1)
        {
          if (v8)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Merging device and extension states into existing device from SQLite database", buf, 2u);
          }

          v9 = [*(a1 + 32) updateFromCloudExtensionDevice:v3[10]];
          v10 = v3[14];
          v3[14] = v9;
        }

        else
        {
          if (v8)
          {
            *v13 = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Merging device into existing device from SQLite database", v13, 2u);
          }

          [*(a1 + 32) updateFromCloudExtensionDeviceWithoutUpdatingExtensionStates:v3[10]];
        }

        objc_storeStrong(v3 + 10, *(a1 + 32));
      }

      else
      {
        v11 = sub_1000D23FC();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12[0] = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "No existing device found in SQLite database", v12, 2u);
        }
      }

      [v3 _continueSavingExtensionStates];
    }
  }
}

void sub_100026FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100026FDC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100027094;
  v7[3] = &unk_100132420;
  objc_copyWeak(&v9, (a1 + 32));
  v8 = v5;
  v6 = v5;
  dispatch_async(&_dispatch_main_q, v7);

  objc_destroyWeak(&v9);
}

void sub_100027094(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v3 = (a1 + 32);
    if (v4)
    {
      v5 = sub_1000D23FC();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10002BEB8(v3, v5);
      }

      objc_storeStrong(WeakRetained + 15, *v3);
    }

    v6 = sub_1000D23FC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Finished saving extension state record batch", v7, 2u);
    }

    [WeakRetained _saveNextRecordBatchCreatingCloudExtensionsZoneIfMissing:0];
  }
}

void sub_1000272B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000272DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100027394;
  v5[3] = &unk_100132420;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_100027394(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v3 = (a1 + 32);
    v5 = sub_1000D23FC();
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10002BF40(v3, v6);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Done deleting obsolete extension state records from CloudKit", v7, 2u);
    }

    [WeakRetained _continueSavingExtensionStates];
  }
}

void sub_10002752C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100027548(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100027600;
  v5[3] = &unk_100132420;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_100027600(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v3 = (a1 + 32);
    v5 = sub_1000D23FC();
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10002BFC8(v3, v6);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Done updating SQLite store from CloudKit after saving extension state", v7, 2u);
    }

    [WeakRetained _continueSavingExtensionStates];
  }
}

void sub_100027820(uint64_t a1)
{
  v7 = objc_retainBlock(*(*(a1 + 32) + 72));
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  *(v2 + 72) = 0;

  v4 = *(*(a1 + 32) + 120);
  v5 = *(a1 + 32);
  v6 = *(v5 + 120);
  *(v5 + 120) = 0;

  if (v7)
  {
    v7[2](v7, v4);
  }

  [*(a1 + 32) _resumeSavingQueue];
}

void sub_1000278C4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100027948;
  block[3] = &unk_100131628;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100027E78(uint64_t a1)
{
  v2 = sub_1000D23FC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Fetching extension state data from CloudKit", buf, 2u);
  }

  [*(a1 + 32) _suspendFetchingQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100027F50;
  v4[3] = &unk_100131990;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v4);
}

id sub_100027F50(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 192), *(*(a1 + 32) + 184));
  v2 = objc_retainBlock(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 232);
  *(v3 + 232) = v2;

  *(*(a1 + 32) + 224) = 1;
  v5 = *(a1 + 32);

  return [v5 _beginFetchingExtensionStates];
}

void sub_100028154(uint64_t a1)
{
  [*(a1 + 32) _suspendFetchingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100028204;
  block[3] = &unk_100131A20;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = v2;
  v5 = *(a1 + 48);
  dispatch_async(&_dispatch_main_q, block);
}

id sub_100028204(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 192), *(a1 + 40));
  v2 = objc_retainBlock(*(a1 + 48));
  v3 = *(a1 + 32);
  v4 = *(v3 + 240);
  *(v3 + 240) = v2;

  *(*(a1 + 32) + 224) = 2;
  v5 = *(a1 + 32);

  return [v5 _beginFetchingExtensionStates];
}

void sub_100028544(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_100028560(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[216] = 1;
    v2 = *(WeakRetained + 26);
    *(WeakRetained + 25) = 0;
    *(WeakRetained + 26) = 0;
    v7 = WeakRetained;

    v3 = *(v7 + 31);
    *(v7 + 31) = 0;

    v4 = *(v7 + 32);
    *(v7 + 32) = 0;

    v5 = *(v7 + 33);
    *(v7 + 33) = 0;

    v6 = *(v7 + 34);
    *(v7 + 34) = 0;

    [*(v7 + 2) openDatabaseIfNecessary];
    [v7 _continueFetchingExtensionStates];
    WeakRetained = v7;
  }
}

void sub_100028704(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_100028720(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000287D8;
  v5[3] = &unk_100132420;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_1000287D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = sub_1000D23FC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Finished reading server change token from the SQLite database", buf, 2u);
    }

    v4 = [WeakRetained _cloudExtensionStoreError];
    if (v4)
    {
      v5 = sub_1000D23FC();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10002C050(v5, v4);
      }

      [WeakRetained _handleSevereSQLiteErrorWhileFetching:v4];
      goto LABEL_27;
    }

    if ([*(a1 + 32) length])
    {
      v6 = [NSKeyedUnarchiver alloc];
      v7 = *(a1 + 32);
      v22[0] = 0;
      v8 = [v6 initForReadingFromData:v7 error:v22];
      v9 = v22[0];
      if (v9)
      {
        v10 = sub_1000D22B4();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = [v9 safari_privacyPreservingDescription];
          sub_10002C0E8(v11, buf, v10);
        }
      }

      v12 = [v8 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
      [v8 finishDecoding];

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v14 = sub_1000D23FC();
      v15 = v14;
      if (isKindOfClass)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Found server change token data in the SQLite database", v21, 2u);
        }

        v16 = v12;
        v17 = *(WeakRetained + 31);
        *(WeakRetained + 31) = v16;
      }

      else
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_10002C198();
        }

        if ((*(WeakRetained + 216) & 1) == 0)
        {
          [WeakRetained _deleteDatabaseAndRestartFetch];

          goto LABEL_27;
        }

        v19 = sub_1000D23FC();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_10002C1D4();
        }

        v20 = [NSError errorWithDomain:WBSCloudTabsErrorDomain code:2 userInfo:0];
        v17 = *(WeakRetained + 26);
        *(WeakRetained + 26) = v20;
      }
    }

    else
    {
      v18 = sub_1000D23FC();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "No server change token found in the SQLite database", buf, 2u);
      }
    }

    [WeakRetained _continueFetchingExtensionStates];
LABEL_27:
  }
}

void sub_100028AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(exception_object);
    v12 = sub_1000D23FC();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v11 name];
      sub_10002C140(v13, &buf, v12);
    }

    objc_end_catch();
    JUMPOUT(0x100028958);
  }

  _Unwind_Resume(exception_object);
}

void sub_100028D34(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100028D5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100028DF8;
  v5[3] = &unk_1001314F8;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);
}

void sub_100028E04(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100028EA0;
  v5[3] = &unk_1001314F8;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);
}

void sub_100028EA0(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 272);
  v2 = [*(a1 + 40) recordName];
  [v1 addObject:v2];
}

void sub_100028EF8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100028FDC;
  block[3] = &unk_100132588;
  v16 = *(a1 + 48);
  v8 = *(a1 + 32);
  v12 = v7;
  v13 = v8;
  v9 = v7;
  objc_copyWeak(&v15, (a1 + 40));
  v14 = v6;
  v10 = v6;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v15);
}

void sub_100028FDC(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  v4 = sub_1000D23FC();
  v5 = v4;
  if (!v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Finished fetching changes from CloudKit", buf, 2u);
    }

    v12 = *(a1 + 48);
    v13 = (*(a1 + 40) + 248);
LABEL_16:
    objc_storeStrong(v13, v12);
    [*(a1 + 40) _continueFetchingExtensionStates];
    return;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10002C210(v2, v5);
  }

  if (*(a1 + 64) != 1 || ![*v2 safari_isOrContainsCloudKitMissingZoneError])
  {
    v10 = *(a1 + 40);
    if ((v10[27] & 1) == 0)
    {
      v11 = [v10 _shouldDeleteDatabaseForError:*(a1 + 32)];
      v10 = *(a1 + 40);
      if (v11)
      {
        [v10 _deleteDatabaseAndRestartFetch];
        return;
      }
    }

    v12 = *(a1 + 32);
    v13 = v10 + 26;
    goto LABEL_16;
  }

  v6 = sub_1000D23FC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Attempting to create CloudExtensions zone before retrying fetch", buf, 2u);
  }

  v7 = *(a1 + 40);
  v8 = *(v7 + 8);
  v9 = *(v7 + 192);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100029198;
  v14[3] = &unk_1001324C0;
  objc_copyWeak(&v15, (a1 + 56));
  [v8 createCloudExtensionsRecordZoneInOperationGroup:v9 completionHandler:v14];
  objc_destroyWeak(&v15);
}

void sub_100029198(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100029250;
  v5[3] = &unk_100132420;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_100029250(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _retryFetchChangesFromCloudKitIfPossibleAfterCreatingCloudExtensionsZoneCompletedWithError:*(a1 + 32)];
}

void sub_1000293D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000293EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[2] openDatabaseIfNecessary];
    [v2 _continueFetchingExtensionStates];
    WeakRetained = v2;
  }
}

void sub_1000295D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000295F4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100029684;
  block[3] = &unk_1001324E8;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v2);
}

void sub_100029684(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _cloudExtensionStoreError];
    v4 = sub_1000D23FC();
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10002C338(v5);
      }

      [v2 _handleSevereSQLiteErrorWhileFetching:v3];
    }

    else
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Finished removing deleted records from SQLite", v7, 2u);
      }

      v6 = v2[34];
      v2[34] = 0;

      [v2 _continueFetchingExtensionStates];
    }
  }
}

void sub_100029920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100029944(uint64_t a1, int a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000299DC;
  v3[3] = &unk_100132600;
  objc_copyWeak(&v4, (a1 + 32));
  v5 = a2;
  dispatch_async(&_dispatch_main_q, v3);
  objc_destroyWeak(&v4);
}

void sub_1000299DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[32];
    WeakRetained[32] = 0;

    v5 = v3[33];
    v3[33] = 0;

    v6 = [v3 _cloudExtensionStoreError];
    if (v6)
    {
      v7 = sub_1000D23FC();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10002C3C8(v7);
      }

      [v3 _handleSevereSQLiteErrorWhileFetching:v6];
    }

    else
    {
      v9 = *(a1 + 40);
      v8 = (a1 + 40);
      v10 = sub_1000D23FC();
      v11 = v10;
      if (v9 == 101)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *v12 = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Finished saving modified device and extension state records to the SQLite database", v12, 2u);
        }
      }

      else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10002C458(v8);
      }

      [v3 _continueFetchingExtensionStates];
    }
  }
}

void sub_100029C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100029C7C(uint64_t a1, int a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100029D14;
  v3[3] = &unk_100132600;
  objc_copyWeak(&v4, (a1 + 32));
  v5 = a2;
  dispatch_async(&_dispatch_main_q, v3);
  objc_destroyWeak(&v4);
}

void sub_100029D14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _cloudExtensionStoreError];
    if (v4)
    {
      v5 = sub_1000D23FC();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10002C568(v5);
      }

      [v3 _handleSevereSQLiteErrorWhileFetching:v4];
    }

    else
    {
      v7 = *(a1 + 40);
      v6 = (a1 + 40);
      v8 = sub_1000D23FC();
      v9 = v8;
      if (v7 == 101)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *v10 = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Done saving server change token to SQLite", v10, 2u);
        }
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10002C5F8(v6);
      }

      [v3 _continueFetchingExtensionStates];
    }
  }
}

void sub_100029F54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100029F70(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002A028;
  v5[3] = &unk_100132420;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_10002A028(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _cloudExtensionStoreError];
    v5 = sub_1000D23FC();
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10002C670(v6);
      }

      [v3 _handleSevereSQLiteErrorWhileFetching:v4];
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Finished loading devices and extension states from SQLite", v7, 2u);
      }

      objc_storeStrong(v3 + 35, *(a1 + 32));
      [v3 _continueFetchingExtensionStates];
    }
  }
}

id sub_10002A2B0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 224);
  *(v2 + 224) = 0;
  if (v3 == 2)
  {
    v14 = *(a1 + 32);
    v15 = *(v14 + 192);
    *(v14 + 192) = 0;

    v4 = objc_retainBlock(*(*(a1 + 32) + 240));
    v16 = *(a1 + 32);
    v17 = *(v16 + 240);
    *(v16 + 240) = 0;

    if (v4)
    {
      v4[2](v4, *(a1 + 40));
    }
  }

  else
  {
    if (v3 != 1)
    {
      goto LABEL_9;
    }

    v4 = *(*(a1 + 32) + 280);
    v5 = *(a1 + 32);
    v6 = *(v5 + 280);
    *(v5 + 280) = 0;

    v7 = *(a1 + 32);
    v8 = *(v7 + 192);
    *(v7 + 192) = 0;

    v9 = objc_retainBlock(*(*(a1 + 32) + 232));
    v10 = *(a1 + 32);
    v11 = *(v10 + 232);
    *(v10 + 232) = 0;

    if (v9)
    {
      v12 = [*(a1 + 32) _cloudExtensionStatesDictionaryFromCloudExtensionDevices:v4];
      v13 = [*(a1 + 32) _cloudExtensionDevicesDictionaryFromCloudExtensionDevices:v4];
      v9[2](v9, v12, v13, *(a1 + 40));
    }
  }

LABEL_9:
  v18 = *(a1 + 32);

  return [v18 _resumeFetchingQueue];
}

void sub_10002A404(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002A488;
  block[3] = &unk_100131628;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10002A768(uint64_t a1)
{
  [*(a1 + 32) _suspendSavingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002A818;
  block[3] = &unk_100131A20;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = v2;
  v5 = *(a1 + 48);
  dispatch_async(&_dispatch_main_q, block);
}

id sub_10002A818(uint64_t a1)
{
  v2 = [*(a1 + 32) _recordIDsFromRecordNames:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 152);
  *(v3 + 152) = v2;

  v5 = objc_retainBlock(*(a1 + 48));
  v6 = *(a1 + 32);
  v7 = *(v6 + 144);
  *(v6 + 144) = v5;

  v8 = *(a1 + 32);
  v9 = *(v8 + 160);
  *(v8 + 160) = 0;

  [*(*(a1 + 32) + 16) openDatabaseIfNecessary];
  v10 = *(a1 + 32);

  return [v10 _continueDeleting];
}

void sub_10002AA88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002AAA4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002AB5C;
  v5[3] = &unk_100132420;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_10002AB5C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v3 = (a1 + 32);
    v5 = sub_1000D23FC();
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10002C808(v3, v6);
      }

      objc_storeStrong(WeakRetained + 20, *v3);
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Done deleting extension device records from CloudKit", v7, 2u);
    }

    [WeakRetained _continueDeleting];
  }
}

void sub_10002AD04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002AD20(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002ADD8;
  v5[3] = &unk_100132420;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_10002ADD8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v3 = (a1 + 32);
    v5 = sub_1000D23FC();
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10002C890(v3, v6);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Done updating SQLite store from CloudKit after deleting extension device records", v7, 2u);
    }

    [WeakRetained _continueDeleting];
  }
}

void sub_10002AFD4(uint64_t a1)
{
  v7 = objc_retainBlock(*(*(a1 + 32) + 144));
  v2 = *(a1 + 32);
  v3 = *(v2 + 144);
  *(v2 + 144) = 0;

  v4 = *(*(a1 + 32) + 160);
  v5 = *(a1 + 32);
  v6 = *(v5 + 160);
  *(v5 + 160) = 0;

  if (v7)
  {
    v7[2](v7, v4);
  }

  [*(a1 + 32) _resumeSavingQueue];
}

void sub_10002B078(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002B0FC;
  block[3] = &unk_100131628;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10002B9FC(id a1)
{
  v3[0] = WBSSafariExtensionStateEnabledKey;
  v3[1] = WBSSafariExtensionStateEnabledByUserGestureKey;
  v3[2] = WBSSafariExtensionStateLastEnabledModificationDate;
  v3[3] = WBSSafariExtensionStateProfileIdentifier;
  v1 = [NSArray arrayWithObjects:v3 count:4];
  v2 = qword_100153E68;
  qword_100153E68 = v1;
}

void sub_10002BC8C(id a1)
{
  v1 = [(CloudKitSQLiteStore *)CloudExtensionSQLiteStore databaseURLForFilename:@"CloudExtensions.db"];
  v2 = qword_100153E78;
  qword_100153E78 = v1;
}

void sub_10002BCFC()
{
  sub_100008070();
  sub_10002272C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002BD38(uint64_t *a1)
{
  v6 = *a1;
  sub_10002272C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10002BDB0(uint64_t *a1)
{
  v6 = *a1;
  sub_10002272C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10002BE28(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Severe SQLite store error occurred while merging device with existing device: %{public}@", v6, v7, v8, v9, v10);
}

void sub_10002BEB8(uint64_t *a1, void *a2)
{
  sub_100008088(a1, a2);
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Did fail to save extension state record batch with error: %{public}@", v6, v7, v8, v9, v10);
}

void sub_10002BF40(uint64_t *a1, void *a2)
{
  sub_100008088(a1, a2);
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Failed to delete obsolete extension state records with error: %{public}@", v6, v7, v8, v9, v10);
}

void sub_10002BFC8(uint64_t *a1, void *a2)
{
  sub_100008088(a1, a2);
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Updating SQLite store from CloudKit after saving extension state failed with error: %{public}@", v6, v7, v8, v9, v10);
}

void sub_10002C050(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v5, v6, "Severe SQLite store error occurred while reading server change token: %{public}@", v7, v8, v9, v10, v11);
}

void sub_10002C0E8(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to read from server change token data: %{public}@", buf, 0xCu);
}

void sub_10002C140(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to decode server change token with exception: %{public}@", buf, 0xCu);
}

void sub_10002C198()
{
  sub_100008070();
  sub_10002272C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002C1D4()
{
  sub_100008070();
  sub_10002272C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002C210(uint64_t *a1, void *a2)
{
  v3 = sub_100008088(a1, a2);
  v4 = [v2 safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v5, v6, "Failed to fetch changes with error: %{public}@", v7, v8, v9, v10, v11);
}

void sub_10002C2A0(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v5, v6, "Failed to create CloudExtensions zone when fetching changes with error: %{public}@", v7, v8, v9, v10, v11);
}

void sub_10002C338(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Severe SQLite store error occurred while deleting records: %{public}@", v6, v7, v8, v9, v10);
}

void sub_10002C3C8(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Severe SQLite store error occurred while saving records: %{public}@", v6, v7, v8, v9, v10);
}

void sub_10002C458(int *a1)
{
  v6 = *a1;
  sub_10002272C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10002C4D0(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v5, v6, "Failed to archive server change token: %{public}@", v7, v8, v9, v10, v11);
}

void sub_10002C568(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Severe SQLite store error occurred while saving server change token: %{public}@", v6, v7, v8, v9, v10);
}

void sub_10002C5F8(int *a1)
{
  v6 = *a1;
  sub_10002272C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10002C670(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Severe SQLite store error occurred while loading records: %{public}@", v6, v7, v8, v9, v10);
}

void sub_10002C700(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() recordType];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Fetched an unrecognized record from CloudKit of type %{public}@", v6, v7, v8, v9, v10);
}

void sub_10002C790()
{
  sub_100008070();
  sub_10002272C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002C7CC()
{
  sub_100008070();
  sub_10002272C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002C808(uint64_t *a1, void *a2)
{
  sub_100008088(a1, a2);
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Failed to delete extension device records with error: %{public}@", v6, v7, v8, v9, v10);
}

void sub_10002C890(uint64_t *a1, void *a2)
{
  sub_100008088(a1, a2);
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Updating SQLite store from CloudKit after deleting extension devices failed with error: %{public}@", v6, v7, v8, v9, v10);
}

void sub_10002C918(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v4, v5, "Severe SQLite store error: %{public}@", v6, v7, v8, v9, v10);
}

_BYTE *sub_10002D444(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void sub_10002D454(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

void sub_10002D554(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 safari_recordName];
  sub_100008064();
  v8 = 2114;
  v9 = a3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "CKRecord in item has a different record name %{public}@ from record name of the item: %{public}@", v7, 0x16u);
}

void sub_10002D610(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 recordType];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v5, v6, "Record type %{public}@ of CKRecord in item does not match the expected BookmarkList type.", v7, v8, v9, v10, v11);
}

void sub_10002D6A4(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 recordType];
  sub_100008064();
  sub_100008028(&_mh_execute_header, v5, v6, "Record type %{public}@ of CKRecord in item does not match the expected BookmarkLeaf type.", v7, v8, v9, v10, v11);
}

void sub_10002E4D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  objc_destroyWeak((v33 + 80));
  _Block_object_dispose((v34 - 208), 8);
  objc_destroyWeak((v34 - 112));
  _Unwind_Resume(a1);
}

uint64_t sub_10002E508(uint64_t a1, int a2)
{
  v4 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = v5;
      v8 = [v6 ckShortDescription];
      v9 = [*(a1 + 40) safari_logDescription];
      v11 = 138543618;
      v12 = v8;
      v13 = 2114;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "•*• Successfully updated presence to tabRecordID: %{public}@, %{public}@", &v11, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10003113C(a1, v5);
  }

  return (*(*(a1 + 48) + 16))();
}

void sub_10002E63C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 1;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v17 = sub_10002E984;
    v18 = &unk_100132750;
    v20 = *(a1 + 64);
    v21 = &v22;
    v19 = WeakRetained;
    v4 = v16;
    os_unfair_lock_lock(v3 + 14);
    v17(v4);

    os_unfair_lock_unlock(v3 + 14);
    [v3 _clearRetryHandlerIsCancelling:1];
    if (v23[3])
    {
      dispatch_suspend(*(v3 + 1));
      v5 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [*(a1 + 32) ckShortDescription];
        v7 = [*(a1 + 40) safari_logDescription];
        *buf = 138543618;
        v27 = v6;
        v28 = 2114;
        v29 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "•*• Starting updating presence to tabRecordID: %{public}@, %{public}@", buf, 0x16u);
      }

      v8 = *(a1 + 40);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10002EADC;
      v12[3] = &unk_1001327A0;
      v15 = *(a1 + 56);
      v12[4] = v3;
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      [v3 _cacheUserRecordIDIfNeededInOperationGroup:v8 withCompletionHandler:v12];
    }

    else
    {
      v9 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [*(a1 + 32) ckShortDescription];
        v11 = [*(a1 + 40) safari_logDescription];
        *buf = 138543618;
        v27 = v10;
        v28 = 2114;
        v29 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "•*• Cancelling updating presence to tabRecordID: %{public}@, %{public}@", buf, 0x16u);
      }

      (*(*(a1 + 48) + 16))();
    }

    _Block_object_dispose(&v22, 8);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_10002E954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002E984(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10002EA20;
  v2[3] = &unk_100132728;
  v3 = *(a1 + 48);
  v2[4] = *(a1 + 32);
  os_unfair_lock_lock(v1 + 8);
  sub_10002EA20(v2);
  os_unfair_lock_unlock(v1 + 8);
}

void sub_10002EA20(void *a1)
{
  v2 = *(*(a1[5] + 8) + 40);
  if (v2 && (v3 = a1[4], v4 = *(v3 + 48), v4 == v2))
  {
    v5 = *(v3 + 40);
    if (v5)
    {
      dispatch_source_cancel(v5);
      v3 = a1[4];
      v4 = *(v3 + 48);
    }

    *(v3 + 48) = 0;

    v6 = a1[4];
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;

    *(a1[4] + 32) = dispatch_time(0, 3000000000);
    v8 = *(a1[5] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }

  else
  {
    *(*(a1[6] + 8) + 24) = 0;
  }
}

void sub_10002EADC(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10002EBC8;
    v9[3] = &unk_100132778;
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v9[4] = *(a1 + 32);
    v10 = v6;
    [v3 _updatePresenceInTabIfNeededWithRecordID:v4 inOperationGroup:v5 isRetry:0 completionHandler:v9];
  }

  else
  {
    v7 = *(a1 + 56);
    (*(*(a1 + 56) + 16))();
    v8 = *(*(a1 + 32) + 8);

    dispatch_resume(v8);
  }
}

void sub_10002EBC8(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 32) + 8);

  dispatch_resume(v2);
}

void sub_10002EC10(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10002ECB8;
  v2[3] = &unk_1001327F0;
  v4 = *(a1 + 48);
  v3 = *(a1 + 32);
  os_unfair_lock_lock(v1 + 8);
  sub_10002ECB8(v2);
  os_unfair_lock_unlock(v1 + 8);
}

void sub_10002ECB8(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 40))
  {
    (*(*(a1 + 32) + 16))();
    v1 = *(*(a1 + 40) + 8);
    v3 = *(v1 + 40);
  }

  else
  {
    v3 = 0;
  }

  *(v1 + 40) = 0;
}

void sub_10002ED24(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  if (v3)
  {
    dispatch_block_cancel(v3);
    v2 = *(a1 + 32);
  }

  v4 = *(v2 + 40);
  if (v4)
  {
    dispatch_source_cancel(v4);
    v2 = *(a1 + 32);
    v5 = *(v2 + 40);
  }

  else
  {
    v5 = 0;
  }

  *(v2 + 40) = 0;

  v6 = objc_retainBlock(*(*(*(a1 + 40) + 8) + 40));
  v7 = *(a1 + 32);
  v8 = *(v7 + 48);
  *(v7 + 48) = v6;

  v9 = *(*(a1 + 32) + 32);
  v10 = dispatch_time(0, 0);
  v11 = *(*(a1 + 32) + 8);
  if (v9 <= v10)
  {
    dispatch_async(v11, *(*(*(a1 + 40) + 8) + 40));
    *(*(a1 + 32) + 32) = dispatch_time(0, 3000000000);
  }

  else
  {
    v12 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v11);
    v13 = *(a1 + 32);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    dispatch_source_set_event_handler(*(*(a1 + 32) + 40), *(*(*(a1 + 40) + 8) + 40));
    dispatch_source_set_timer(*(*(a1 + 32) + 40), *(*(a1 + 32) + 32), 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
    v15 = *(*(a1 + 32) + 40);

    dispatch_activate(v15);
  }
}

void sub_10002EF68(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v9)
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Successfully cached UserRecordID", &v15, 2u);
    }

    objc_storeStrong((*(a1 + 32) + 80), a2);
    v10 = [*(a1 + 32) _sharedPresenceRecordNameForUserRecordID:v6];
    v11 = *(a1 + 32);
    v12 = *(v11 + 88);
    *(v11 + 88) = v10;
  }

  else if (v9)
  {
    v13 = v8;
    v14 = [v7 safari_privacyPreservingDescription];
    v15 = 138543362;
    v16 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Could not cache UserRecordID, the user has probably not interacted with the server or it is not possible to communicate with the serve, giving up, error: %{public}@", &v15, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10002F238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002F25C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (!v8 || ([v8 safari_matchesErrorDomain:CKErrorDomain andCode:11] & 1) != 0)
    {
      v10 = [v7 objectForKeyedSubscript:@"TabGroupTab"];
      if (*(a1 + 32) | v10)
      {
        if (v7)
        {
          v11 = [v7 objectForKeyedSubscript:@"Lock"];
          v12 = [v11 integerValue];

          if (v12)
          {
            if (v12 != 1)
            {
LABEL_26:

              goto LABEL_27;
            }

            if (*(a1 + 64) != 1)
            {
              [WeakRetained _checkPrivatePresenceLockValidityWithRecord:v7 toUpdatePresenceInTabWithRecordID:*(a1 + 32) inOperationGroup:*(a1 + 40) completionHandler:*(a1 + 48)];
              goto LABEL_26;
            }

            v13 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              *v20 = 0;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Presence record is still locked after retry; giving up", v20, 2u);
            }

            v14 = *(*(a1 + 48) + 16);
LABEL_15:
            v14();
            goto LABEL_26;
          }

          v18 = [v10 recordID];
          v19 = [v18 isEqual:*(a1 + 32)];

          if (v19)
          {
            [WeakRetained _performSharedPresenceInTabHeartbeatUpdateIfNeededWithRecordID:*(a1 + 32) inOperationGroup:*(a1 + 40) completionHandler:*(a1 + 48)];
            goto LABEL_26;
          }

          objc_storeStrong(WeakRetained + 9, a2);
        }

        else
        {
          v17 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *v21 = 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Private presence record is missing, create it", v21, 2u);
          }
        }

        [WeakRetained _acquireLockToSetPresenceInTabWithRecordID:*(a1 + 32) inOperationGroup:*(a1 + 40) isRetry:*(a1 + 64) completionHandler:*(a1 + 48)];
        goto LABEL_26;
      }

      v15 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Presence update not needed because the old and new presence are both nil", buf, 2u);
      }

      v14 = *(*(a1 + 48) + 16);
      goto LABEL_15;
    }

    v16 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000311F8(v16);
    }
  }

  (*(*(a1 + 48) + 16))();
LABEL_27:
}

void sub_10002F74C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (!WeakRetained)
  {
LABEL_5:
    v10 = *(*(a1 + 56) + 16);
    goto LABEL_6;
  }

  if (v7)
  {
    v9 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100031290(v9);
    }

    goto LABEL_5;
  }

  if (([v6 isExpired] & 1) != 0 || (objc_msgSend(v6, "expirationDate"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "timeIntervalSinceNow"), v13 = v12, v11, v13 <= 600.0))
  {
    [v6 setExpirationAfterTimeInterval:&off_10013C2B0];
    v14 = WeakRetained[12];
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10002F8EC;
    v17[3] = &unk_1001328B8;
    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    [v14 saveOrLoadRecord:v6 inDatabase:v15 operationGroup:v16 completionHandler:v17];

    goto LABEL_7;
  }

  v10 = *(*(a1 + 56) + 16);
LABEL_6:
  v10();
LABEL_7:
}

void sub_10002F8EC(uint64_t a1, void *a2, unsigned int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100031328(a1, v10);
    }
  }

  else
  {
    v11 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
    if (a3)
    {
      if (!v11)
      {
        goto LABEL_10;
      }

      v12 = *(a1 + 32);
      v13 = v10;
      v14 = [v12 ckShortDescription];
      v18 = 138543362;
      v19 = v14;
      v15 = "Did prolong lifetime of shared presence record for tabRecordID: %{public}@";
    }

    else
    {
      if (!v11)
      {
        goto LABEL_10;
      }

      v16 = *(a1 + 32);
      v13 = v10;
      v14 = [v16 ckShortDescription];
      v18 = 138543362;
      v19 = v14;
      v15 = "Failed to prolong lifetime of shared presence record for tabRecordID: %{public}@ because it was updated before we could save it";
    }

    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, v15, &v18, 0xCu);
  }

LABEL_10:
  if (v8)
  {
    v17 = 0;
  }

  else
  {
    v17 = a3;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v17);
}

void sub_10002FE00(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (!WeakRetained)
  {
LABEL_15:
    (*(*(a1 + 56) + 16))();
    goto LABEL_24;
  }

  if (a3)
  {
    v10 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Did acquire lock to update presence", v22, 2u);
    }

    v11 = *(a1 + 32);
    if (!v11)
    {
      v12 = [WeakRetained[9] recordChangeTag];
      v13 = [v12 length];

      if (v13)
      {
        v11 = [WeakRetained[9] copy];
      }

      else
      {
        v11 = 0;
      }
    }

    [WeakRetained _replaceSharedPresenceRecordWithTabRecordID:*(a1 + 40) currentPrivatePresenceRecord:v7 previousPrivatePresenceRecord:v11 inOperationGroup:*(a1 + 48) isRetry:*(a1 + 72) completionHandler:*(a1 + 56)];

    goto LABEL_24;
  }

  if (!v7)
  {
    v17 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100031448(v17);
    }

    goto LABEL_15;
  }

  if (*(a1 + 32))
  {
    v14 = *(a1 + 72);
    v15 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (v14 == 1)
    {
      if (v16)
      {
        sub_100031414();
      }

      goto LABEL_15;
    }

    if (v16)
    {
      sub_1000313E0();
    }

    [WeakRetained _setUpRetryTimerToSetPresenceInTabWithRecordID:*(a1 + 40) inOperationGroup:*(a1 + 48) completionHandler:*(a1 + 56)];
  }

  else
  {
    v18 = [v7 objectForKeyedSubscript:@"Lock"];
    v19 = [v18 integerValue];

    if (v19 == 1)
    {
      [WeakRetained _checkPrivatePresenceLockValidityWithRecord:v7 toUpdatePresenceInTabWithRecordID:*(a1 + 40) inOperationGroup:*(a1 + 48) completionHandler:*(a1 + 56)];
    }

    else if (!v19)
    {
      v20 = *(a1 + 40);
      v21 = [v7 copy];
      [WeakRetained _acquireLockUsingPrivatePresenceRecord:v7 toSetPresenceInTabWithRecordID:v20 previousPrivatePresenceRecord:v21 inOperationGroup:*(a1 + 48) isRetry:0 completionHandler:*(a1 + 56)];
    }
  }

LABEL_24:
}

void sub_100030518(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 136));
  _Unwind_Resume(a1);
}

void sub_100030570(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v6 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
    v7 = v6;
    if (v4)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000314E0(a1, v7);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Did delete old presence record with ID %{public}@", &v9, 0xCu);
    }

    [WeakRetained _createSharedPresenceRecordWithTabRecordID:*(a1 + 40) currentPrivatePresenceRecord:*(a1 + 48) inOperationGroup:*(a1 + 56) isRetry:*(a1 + 80) completionHandler:*(a1 + 64)];
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

void sub_100030954(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (a3)
    {
      v9 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Did successfully create shared presence record.", v12, 2u);
      }
    }

    else
    {
      v10 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
      if (a2)
      {
        if (v11)
        {
          sub_10003158C();
        }
      }

      else if (v11)
      {
        sub_1000315C0(v10);
      }
    }

    [WeakRetained _releaseLockForPrivatePresenceRecord:*(a1 + 32) inOperationGroup:*(a1 + 40) completionHandler:*(a1 + 48)];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_100030C18(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (a3)
  {
    v9 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Did successfully release lock private presence record.", v15, 2u);
    }
  }

  else
  {
    v10 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (v11)
      {
        sub_100031658();
      }
    }

    else if (v11)
    {
      sub_10003168C(v10);
    }
  }

  v12 = *(a1 + 32);
  v13 = *(v12 + 72);
  *(v12 + 72) = v7;
  v14 = v7;

  (*(*(a1 + 40) + 16))();
}

void sub_100030EA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [(dispatch_object_t *)WeakRetained _clearRetryHandlerIsCancelling:0];
    dispatch_suspend(v3[1]);
    [(dispatch_object_t *)v3 _updatePresenceInTabIfNeededWithRecordID:*(a1 + 32) inOperationGroup:*(a1 + 40) isRetry:1 completionHandler:*(a1 + 48)];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_10003113C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 ckShortDescription];
  v6 = [*(a1 + 40) safari_logDescription];
  sub_10003112C();
  sub_100022738(&_mh_execute_header, v7, v8, "•*• Failed to update presence to tabRecordID: %{public}@, %{public}@", v9, v10, v11, v12, 2u);
}

void sub_1000311F8(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100031290(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100031328(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 ckShortDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_10003112C();
  sub_100022738(&_mh_execute_header, v5, v6, "Failed to prolong lifetime of shared presence record for tabRecordID: %{public}@, error: %{public}@", v7, v8, v9, v10, 2u);
}

void sub_100031448(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_1000314E0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_10003112C();
  sub_10001A9B4();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_1000315C0(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10003168C(void *a1)
{
  v2 = a1;
  v3 = [sub_10000807C() safari_privacyPreservingDescription];
  sub_100008064();
  sub_10001A9B4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100031838(id a1)
{
  v1 = objc_alloc_init(CloudBookmarkCompressedJSONValueTransformer);
  v2 = qword_100153E88;
  qword_100153E88 = v1;
}

void sub_1000318B8(id a1)
{
  v1 = [[CloudBookmarkCompressedJSONValueTransformer alloc] initWithRootJSONObjectType:objc_opt_class()];
  v2 = qword_100153E98;
  qword_100153E98 = v1;
}

void sub_10003195C(id a1)
{
  v1 = [[CloudBookmarkCompressedJSONValueTransformer alloc] initWithRootJSONObjectType:objc_opt_class()];
  v2 = qword_100153EA8;
  qword_100153EA8 = v1;
}

void sub_100031CA4(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2;
  v5 = 138543618;
  v6 = v2;
  v7 = 2114;
  v8 = objc_opt_class();
  v4 = v8;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Unexpected JSON root type, expecting: %{public}@ instead got: %{public}@", &v5, 0x16u);
}

void sub_100032774(void *a1)
{
  v2 = a1[4];
  v3 = +[NSNull null];
  LODWORD(v2) = [v2 isEqual:v3];

  v4 = a1[5];
  v5 = a1[6];
  if (v2)
  {
    v9 = 0;
    [v4 removeItemAtURL:v5 error:&v9];
    v6 = v9;
  }

  else
  {
    v7 = a1[4];
    v8 = 0;
    [v4 safari_replaceItemAtURL:v5 withItemFromURL:v7 error:&v8];
    v6 = v8;
  }

  (*(a1[7] + 16))();
}

id sub_1000328C4(void *a1)
{
  v1 = a1;
  v2 = +[NSUserDefaults safari_cloudBookmarksDefaults];
  v3 = [v2 objectForKey:@"CloudBookmarksOverrideDeviceIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = [v1 copyDeviceIdentifier];
  }

  v5 = v4;

  return v5;
}

void sub_100032958(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a2)
  {
    [v5 resetDeviceIdentifier];
    v5 = v6;
  }

  [v5 setLocalCloudKitMigrationState:a2 database:a1];
}

void sub_1000330C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(exception_object);
    v12 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v11 name];
      sub_1000331CC(v13, &buf, v12);
    }

    objc_end_catch();
    JUMPOUT(0x10003303CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_100033174(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to read from cloud bookmark transformed value data: %{public}@", buf, 0xCu);
}

void sub_1000331CC(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to decode encrypted data with exception: %{public}@", buf, 0xCu);
}