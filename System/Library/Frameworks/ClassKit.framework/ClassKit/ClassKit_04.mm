uint64_t sub_1000CFE0C(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
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
        LOBYTE(v28[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v28 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v28[0] & 0x7F) << v5;
        if ((v28[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v16 = PBReaderReadString();
            if (v16)
            {
              [a1 addItemIds:v16];
            }

            goto LABEL_45;
          case 5:
            v16 = objc_alloc_init(PDDPDate);
            v17 = 16;
            goto LABEL_42;
          case 6:
            v16 = objc_alloc_init(PDDPDate);
            v17 = 24;
LABEL_42:
            objc_storeStrong((a1 + v17), v16);
            v28[0] = 0;
            v28[1] = 0;
            if (!PBReaderPlaceMark() || !PDDPDateReadFrom(v16, a2))
            {

              return 0;
            }

            PBReaderRecallMark();
LABEL_45:

            goto LABEL_50;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v18 = 0;
            v19 = 0;
            v20 = 0;
            *(a1 + 52) |= 1u;
            while (1)
            {
              LOBYTE(v28[0]) = 0;
              v21 = [a2 position] + 1;
              if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
              {
                v23 = [a2 data];
                [v23 getBytes:v28 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v20 |= (v28[0] & 0x7F) << v18;
              if ((v28[0] & 0x80) == 0)
              {
                break;
              }

              v18 += 7;
              v11 = v19++ >= 9;
              if (v11)
              {
                v24 = 0;
                goto LABEL_49;
              }
            }

            if ([a2 hasError])
            {
              v24 = 0;
            }

            else
            {
              v24 = v20;
            }

LABEL_49:
            *(a1 + 48) = v24;
            goto LABEL_50;
          case 2:
            v14 = PBReaderReadString();
            v15 = 40;
            goto LABEL_40;
          case 3:
            v14 = PBReaderReadString();
            v15 = 8;
LABEL_40:
            v25 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_50;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_50:
      v26 = [a2 position];
    }

    while (v26 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000D1224(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
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
        LOBYTE(v28) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v28 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v28 & 0x7F) << v5;
        if ((v28 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v23 = PBReaderReadString();
            v24 = 40;
LABEL_50:
            v25 = *(a1 + v24);
            *(a1 + v24) = v23;

            goto LABEL_55;
          case 2:
            v23 = PBReaderReadString();
            v24 = 48;
            goto LABEL_50;
          case 3:
            v21 = objc_alloc_init(PDDPDate);
            v22 = 8;
            goto LABEL_42;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v21 = objc_alloc_init(PDDPLocation);
          [a1 addLocations:v21];
          v28 = 0;
          v29 = 0;
          if (!PBReaderPlaceMark() || !sub_100156484(v21, a2))
          {
LABEL_57:

            return 0;
          }

LABEL_47:
          PBReaderRecallMark();
LABEL_48:

          goto LABEL_55;
        }

        if (v13 == 7)
        {
          v21 = PBReaderReadString();
          if (v21)
          {
            [a1 addEmailDomains:v21];
          }

          goto LABEL_48;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v21 = objc_alloc_init(PDDPDate);
          v22 = 16;
LABEL_42:
          objc_storeStrong((a1 + v22), v21);
          v28 = 0;
          v29 = 0;
          if (!PBReaderPlaceMark() || !PDDPDateReadFrom(v21, a2))
          {
            goto LABEL_57;
          }

          goto LABEL_47;
        }

        if (v13 == 5)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 60) |= 1u;
          while (1)
          {
            LOBYTE(v28) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v28 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v28 & 0x7F) << v14;
            if ((v28 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_54;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_54:
          *(a1 + 56) = v20;
          goto LABEL_55;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_55:
      v26 = [a2 position];
    }

    while (v26 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000D2654(void *a1)
{
  v1 = a1;
  if (a1)
  {
    [a1 database];
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000D2744;
    v2 = v4[3] = &unk_100203410;
    v5 = v2;
    v6 = v1;
    v7 = &v8;
    sub_10010BE68(v2, v4);
    LOBYTE(v1) = *(v9 + 24);

    _Block_object_dispose(&v8, 8);
  }

  return v1 & 1;
}

void sub_1000D272C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000D2744(uint64_t a1)
{
  v2 = sub_100043B24(*(a1 + 32));
  if (v2)
  {
    v3 = v2[9];

    if (v3 == 1)
    {
      if ([*(a1 + 40) maySyncWithProgressZone])
      {
        v4 = [*(a1 + 40) progressZone];

        if (!v4)
        {
          goto LABEL_13;
        }
      }

      if ([*(a1 + 40) maySyncWithTeacherZone])
      {
        v5 = [*(a1 + 40) teacherZone];

        if (!v5)
        {
          *(*(*(a1 + 48) + 8) + 24) = 1;
        }
      }

      if ([*(a1 + 40) maySyncWithAssetZone])
      {
        v6 = [*(a1 + 40) assetZone];

        if (!v6)
        {
          *(*(*(a1 + 48) + 8) + 24) = 1;
        }
      }

      if ([*(a1 + 40) maySyncWithSurveyAnswerZone])
      {
        v7 = [*(a1 + 40) surveyAnswerZone];

        if (!v7)
        {
LABEL_13:
          *(*(*(a1 + 48) + 8) + 24) = 1;
        }
      }
    }
  }

  else
  {
  }
}

uint64_t sub_1000D2CD0(uint64_t a1)
{
  if ([*(a1 + 32) maySyncWithProgressZone])
  {
    v2 = [[NSString alloc] initWithFormat:@"U%@%@", *(a1 + 40), @"_ClassKit"];
    v3 = sub_10016A3F0(*(a1 + 48), v2, @"PDCK_ClassKitZoneName");

    if (!v3)
    {
      return 0;
    }
  }

  if ([*(a1 + 32) maySyncWithTeacherZone])
  {
    v4 = [[NSString alloc] initWithFormat:@"U%@%@", *(a1 + 40), @"_Teacher"];
    v5 = sub_10016A3F0(*(a1 + 48), v4, @"PDCK_TeacherZoneName");

    if (!v5)
    {
      return 0;
    }
  }

  if ([*(a1 + 32) maySyncWithAssetZone])
  {
    v6 = [[NSString alloc] initWithFormat:@"U%@%@", *(a1 + 40), @"_Asset"];
    v7 = sub_10016A3F0(*(a1 + 48), v6, @"PDCK_ClassKitSharedAssetZone");

    if (!v7)
    {
      return 0;
    }
  }

  if ([*(a1 + 32) maySyncWithSurveyAnswerZone] && (v8 = objc_msgSend([NSString alloc], "initWithFormat:", @"U%@%@", *(a1 + 40), @"_Student"), v9 = sub_10016A3F0(*(a1 + 48), v8, @"PDCK_StudentZoneName"), v8, !v9))
  {
    return 0;
  }

  else
  {
    return 1;
  }
}

void sub_1000D301C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000D3044(uint64_t a1)
{
  v2 = [*(a1 + 32) progressZone];
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 40);
    v5 = [v2 zoneID];
    [v4 setObject:v3 forKeyedSubscript:v5];
  }

  v6 = [*(a1 + 32) teacherZone];

  if (v6)
  {
    v7 = *(a1 + 40);
    v8 = [v6 zoneID];
    [v7 setObject:v6 forKeyedSubscript:v8];
  }

  v9 = [*(a1 + 32) surveyAnswerZone];

  if (v9)
  {
    v10 = *(a1 + 40);
    v11 = [v9 zoneID];
    [v10 setObject:v9 forKeyedSubscript:v11];
  }

  v14 = [*(a1 + 32) assetZone];

  if (v14)
  {
    v12 = *(a1 + 40);
    v13 = [v14 zoneID];
    [v12 setObject:v14 forKeyedSubscript:v13];
  }
}

void sub_1000D3188(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained && ([WeakRetained isAborted] & 1) == 0)
  {
    if (v6 && [v6 code] != 2)
    {
      CLSInitLog();
      v15 = CLSLogSync;
      if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_INFO))
      {
        v16 = *(a1 + 32);
        v17 = v15;
        *buf = 138543618;
        v33 = objc_opt_class();
        v34 = 2114;
        v35 = v6;
        v18 = v33;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%{public}@: fetchRecordZonesCompletionBlock error: %{public}@", buf, 0x16u);
      }

      if ([v8 isServerBusyError:v6])
      {
        [v8 retryDelayForServerBusyError:v6];
        v20 = dispatch_time(0, ((v19 + 1.0) * 1000000000.0));
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000D34D0;
        block[3] = &unk_100203000;
        objc_copyWeak(&v30, (a1 + 48));
        dispatch_after(v20, &_dispatch_main_q, block);
        objc_destroyWeak(&v30);
      }

      else
      {
        CLSInitLog();
        v21 = CLSLogSync;
        if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_INFO))
        {
          v22 = v21;
          v23 = objc_opt_class();
          *buf = 138412546;
          v33 = v23;
          v34 = 2112;
          v35 = v6;
          v24 = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%@ fetchZonesOp.fetchRecordZonesCompletionBlock error: %@", buf, 0x16u);
        }

        [v8 abortWithError:v6];
      }
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v9 = v5;
      v10 = [v9 countByEnumeratingWithState:&v25 objects:v31 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v26;
        do
        {
          v13 = 0;
          do
          {
            if (*v26 != v12)
            {
              objc_enumerationMutation(v9);
            }

            [*(a1 + 40) removeObjectForKey:{*(*(&v25 + 1) + 8 * v13), v25}];
            v13 = v13 + 1;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v25 objects:v31 count:16];
        }

        while (v11);
      }

      if ([*(a1 + 40) count])
      {
        v14 = [*(a1 + 40) allValues];
        [v8 createMissingZones:v14];
      }

      else
      {
        [v8 subscribeToZonesIfNeeded];
      }
    }
  }
}

void sub_1000D34D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained execute];
    WeakRetained = v2;
  }
}

void sub_1000D3600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000D3628(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v5 && [v5 code] != 14)
    {
      CLSInitLog();
      v7 = CLSLogSync;
      if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_INFO))
      {
        v8 = v7;
        *v10 = 138543618;
        *&v10[4] = objc_opt_class();
        *&v10[12] = 2114;
        *&v10[14] = v5;
        v9 = *&v10[4];
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%{public}@: modifyRecordZonesCompletionBlock error: %{public}@", v10, 0x16u);
      }

      [WeakRetained abortWithError:{v5, *v10, *&v10[16]}];
    }

    else
    {
      [WeakRetained subscribeToZonesIfNeeded];
    }
  }
}

void sub_1000D3ACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000D3AFC(uint64_t a1, void *a2, void *a3)
{
  v27 = a2;
  v28 = a3;
  v29 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained && ([WeakRetained isAborted] & 1) == 0)
  {
    if (v28)
    {
      if ([v28 code] != 2)
      {
        CLSInitLog();
        v7 = CLSLogSync;
        if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_INFO))
        {
          v8 = v7;
          *buf = 138543618;
          v43 = objc_opt_class();
          v44 = 2114;
          v45 = v28;
          v9 = v43;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%{public}@: fetchSubscriptionCompletionBlock error: %{public}@", buf, 0x16u);
        }
      }
    }

    v10 = objc_alloc_init(CKNotificationInfo);
    [v10 setShouldSendContentAvailable:1];
    v11 = objc_alloc_init(NSMutableArray);
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v12 = v27;
    v13 = [v12 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v13)
    {
      v14 = *v37;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v37 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v36 + 1) + 8 * i);
          v17 = [v12 objectForKeyedSubscript:{v16, v27}];

          if (v17)
          {
            [v6 setSubscribed:1 toSubscriptionWithID:v16];
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v13);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v18 = *(v29 + 32);
    v19 = [v18 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v19)
    {
      v20 = *v33;
      do
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v33 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v32 + 1) + 8 * j);
          if (([v6 isSubscribedTo:{v22, v27}] & 1) == 0)
          {
            v23 = [*(v29 + 32) objectForKeyedSubscript:v22];
            v24 = [[CKRecordZoneSubscription alloc] initWithZoneID:v23 subscriptionID:v22];
            [v24 setNotificationInfo:v10];
            [v11 addObject:v24];
          }
        }

        v19 = [v18 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v19);
    }

    if ([v11 count])
    {
      CLSInitLog();
      v25 = CLSLogSync;
      if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v43 = v11;
        _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "will subscribe with subscriptions: %@", buf, 0xCu);
      }

      v26 = [[CKModifySubscriptionsOperation alloc] initWithSubscriptionsToSave:v11 subscriptionIDsToDelete:&__NSArray0__struct];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_1000D3F54;
      v30[3] = &unk_100203EB0;
      objc_copyWeak(&v31, (v29 + 40));
      [v26 setModifySubscriptionsCompletionBlock:v30];
      [v6 performCKDatabaseOperation:v26];
      objc_destroyWeak(&v31);
    }

    else
    {
      [v6 markAsBootstrapped];
    }
  }
}

void sub_1000D3F54(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained && ([WeakRetained isAborted] & 1) == 0)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v44 objects:v54 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v45;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v45 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v44 + 1) + 8 * i) subscriptionID];
          [v11 setSubscribed:1 toSubscriptionWithID:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v44 objects:v54 count:16];
      }

      while (v14);
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v18 = v8;
    v19 = [v18 countByEnumeratingWithState:&v40 objects:v53 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v41;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v41 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [v11 setSubscribed:0 toSubscriptionWithID:*(*(&v40 + 1) + 8 * j)];
        }

        v20 = [v18 countByEnumeratingWithState:&v40 objects:v53 count:16];
      }

      while (v20);
    }

    if (v9 && [v9 code] != 2)
    {
      CLSInitLog();
      v32 = CLSLogSync;
      if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_INFO))
      {
        v33 = v32;
        v34 = objc_opt_class();
        *buf = 138543618;
        v50 = v34;
        v51 = 2114;
        v52 = v9;
        v35 = v34;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%{public}@: modifySubscriptionsCompletionBlock error: %{public}@", buf, 0x16u);
      }

      [v11 abortWithError:v9];
    }

    else
    {
      v23 = [v9 userInfo];
      v24 = [v23 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v25 = v24;
      v26 = [v25 countByEnumeratingWithState:&v36 objects:v48 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v37;
        do
        {
          for (k = 0; k != v27; k = k + 1)
          {
            if (*v37 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v36 + 1) + 8 * k);
            v31 = [v25 objectForKeyedSubscript:{v30, v36}];
            if ([v31 code] == 15)
            {
              [v11 setSubscribed:1 toSubscriptionWithID:v30];
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v36 objects:v48 count:16];
        }

        while (v27);
      }

      [v11 markAsBootstrapped];
    }
  }
}

id *sub_1000D42EC(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = PDGroupReferencesToExpand;
    v5 = objc_msgSendSuper2(&v7, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
}

void *sub_1000D52FC(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = PDBlockedApp;
    a1 = objc_msgSendSuper2(&v7, "init");
    if (a1)
    {
      v4 = [v3 copy];
      v5 = a1[1];
      a1[1] = v4;
    }
  }

  return a1;
}

BOOL sub_1000D54A0(_BOOL8 a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ([v3 isEqualToString:@"com.apple.schoolwork.ClassKitApp"])
    {
      a1 = 0;
    }

    else
    {
      v5 = objc_opt_class();
      v9 = v4;
      v6 = [NSArray arrayWithObjects:&v9 count:1];
      v7 = [a1 count:v5 where:@"appIdentifier = ?" bindings:v6];

      a1 = v7 != 0;
    }
  }

  return a1;
}

id sub_1000D6738(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_opt_new();
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000D6820;
    v8[3] = &unk_1002031D8;
    v8[4] = a1;
    v9 = v3;
    v5 = v4;
    v10 = v5;
    sub_10010BE68(a1, v8);
    v6 = v10;
    a1 = v5;
  }

  return a1;
}

void sub_1000D6820(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v7[0] = &off_10021B708;
  v7[1] = v2;
  v4 = [NSArray arrayWithObjects:v7 count:2];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000D6920;
  v5[3] = &unk_1002031B0;
  v6 = *(a1 + 48);
  sub_1000B9298(v3, @"select referenceObjectID FROM (select I.referenceObjectID FROM CLSCollectionItem AS I LEFT JOIN CLSArchivedHandout AS H on I.referenceObjectID=H.objectID WHERE I.type = ? AND I.parentObjectID=? AND H.objectID IS NULL)", 1, v4, v5);
}

void sub_1000D6920(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = sub_10016D778(a2, @"referenceObjectID");
  [v2 addObject:v3];
}

uint64_t sub_1000D6984(void *a1)
{
  if (a1)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x2020000000;
    v7 = 0;
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000D6A4C;
    v3[3] = &unk_100202E78;
    v3[4] = a1;
    v3[5] = &v4;
    sub_10010BE68(a1, v3);
    v1 = *(v5 + 24);
    _Block_object_dispose(&v4, 8);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void sub_1000D6A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D6A4C(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000D6AD4;
  v3[3] = &unk_100202190;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return sub_1000B9298(v1, @"select I.referenceObjectID, H.objectID FROM CLSCollectionItem AS I LEFT JOIN CLSArchivedHandout AS H on I.referenceObjectID=H.objectID WHERE I.type = ? AND H.objectID IS NULL LIMIT 1", 1, &off_10021BA00, v3);
}

uint64_t sub_1000D6AD4(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

uint64_t sub_1000D6E00(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000D6EFC;
  v10[3] = &unk_1002049B0;
  v6 = *(a1 + 32);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v11 = v6;
  v12 = v7;
  v13 = v8;
  v14 = *(a1 + 72);
  [v2 selectAll:v3 where:v4 orderBy:@"rowid asc limit:position asc offset:state desc bindings:syncOrder asc" block:{0, 0, v5, v10}];

  return 1;
}

id sub_1000D6EFC(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = objc_opt_class();
  v8 = [v6 entityIdentity];
  v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 state]);
  v14[1] = v9;
  v10 = [v6 identityValue];
  v14[2] = v10;
  v11 = [NSArray arrayWithObjects:v14 count:3];
  [v5 deleteAll:v7 where:@"entityIdentity = ? and state <= ? and identityValue != ?" bindings:v11];

  [*(a1 + 40) populateRecordsToSave:*(a1 + 48) idsToDelete:*(a1 + 56) withSyncItem:v6];
  v12 = [*(a1 + 56) count];
  result = [*(a1 + 48) count];
  if (&v12[result] >= 0xC9)
  {
    *a3 = 1;
  }

  return result;
}

uint64_t sub_1000D7270(uint64_t a1)
{
  [*(a1 + 32) updateSyncMetadataForRecord:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) recordID];
  [v2 deleteProcessedSyncAssociatedWithRecordID:v3];

  return 1;
}

uint64_t sub_1000D737C(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
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

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        [*(a1 + 40) deleteSyncMetadataAssociatedWithRecordID:{v7, v10}];
        [*(a1 + 40) deleteProcessedSyncAssociatedWithRecordID:v7];
        objc_autoreleasePoolPop(v8);
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  return 1;
}

void sub_1000D78DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000D7914(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  if (v8)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v12 = WeakRetained;
    if (WeakRetained && ([WeakRetained isAborted] & 1) == 0)
    {
      [v12 recordUpdated:v8];
    }
  }

  else
  {
    CLSInitLog();
    v13 = CLSLogSync;
    if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_ERROR))
    {
      v14 = 138543618;
      v15 = v7;
      v16 = 2114;
      v17 = v9;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to save CK record; recordID: %{public}@, per-record error: %{public}@", &v14, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v10);
}

void sub_1000D7A4C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v12 = WeakRetained;
  if (WeakRetained && ([WeakRetained isAborted] & 1) == 0)
  {
    [v12 deleteSyncStateForRecordIDs:v8];
    if (v9)
    {
      if ([v9 code] == 2)
      {
        v13 = [v9 userInfo];
        v14 = [v13 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

        [v12 resolvePartialErrors:v14];
      }

      else if ([v12 isServerBusyError:v9])
      {
        [v12 retryDelayForServerBusyError:v9];
        v16 = dispatch_time(0, ((v15 + 1.0) * 1000000000.0));
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000D7C8C;
        block[3] = &unk_100203000;
        objc_copyWeak(&v19, (a1 + 32));
        dispatch_after(v16, &_dispatch_main_q, block);
        objc_destroyWeak(&v19);
      }

      else
      {
        CLSInitLog();
        v17 = CLSLogSync;
        if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v21 = v9;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "modifyRecordsCompletionBlock error: %{public}@", buf, 0xCu);
        }

        [v12 abort];
      }
    }

    else
    {
      [v12 execute];
    }
  }

  objc_autoreleasePoolPop(v10);
}

void sub_1000D7C8C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained execute];
    WeakRetained = v2;
  }
}

uint64_t sub_1000D84F0(uint64_t a1)
{
  if (([*(a1 + 32) deleteObject:*(a1 + 40)] & 1) == 0)
  {
    CLSInitLog();
    v2 = CLSLogSync;
    if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 40);
      *buf = 138412290;
      v13 = v9;
      _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "failed to delete sync item: %@", buf, 0xCu);
    }
  }

  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  v5 = [*(a1 + 40) entityIdentity];
  v11 = v5;
  v6 = [NSArray arrayWithObjects:&v11 count:1];
  LOBYTE(v3) = [v3 deleteAll:v4 where:@"entityIdentity = ?" bindings:v6];

  if ((v3 & 1) == 0)
  {
    CLSInitLog();
    v7 = CLSLogSync;
    if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 40);
      *buf = 138412290;
      v13 = v10;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "failed to delete sync metadata for sync item: %@", buf, 0xCu);
    }
  }

  return 1;
}

id sub_1000D8698()
{
  objc_opt_self();
  v0 = qword_10024DD18;

  return v0;
}

void sub_1000D89EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

_DWORD *sub_1000D8A08(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 16) - 1) < 2)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained statusReport];
    v2 = sub_10010B018(v5);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1000D9310(id result)
{
  if (result)
  {
    v1 = result;
    [result lock];
    v2 = objc_autoreleasePoolPush();
    [v1 _initializeSubsystemsIfNeeded];
    objc_autoreleasePoolPop(v2);

    return [v1 unlock];
  }

  return result;
}

void sub_1000D9368(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained listener];
    [v2 resume];

    WeakRetained = v3;
  }
}

void sub_1000D95E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 88));
  _Unwind_Resume(a1);
}

void sub_1000D962C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleSignal:3];
}

void sub_1000D9670(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleSignal:6];
}

void sub_1000D96B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleSignal:15];
}

void sub_1000D96F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleSignal:29];
}

id sub_1000D98D8(int a1)
{
  v1 = [NSString stringWithFormat:@"%s", sys_signame[a1]];
  v2 = [v1 uppercaseString];
  v3 = [@"SIG" stringByAppendingString:v2];

  return v3;
}

void sub_1000D9D08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[5] = 1;
    v2 = WeakRetained;
    [WeakRetained memoryPressureStatusChanged];
    WeakRetained = v2;
  }
}

void sub_1000D9D54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[5] = 2;
    v2 = WeakRetained;
    [WeakRetained memoryPressureStatusChanged];
    WeakRetained = v2;
  }
}

void sub_1000D9DA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[5] = 4;
    v2 = WeakRetained;
    [WeakRetained memoryPressureStatusChanged];
    WeakRetained = v2;
  }
}

void sub_1000D9E60(char a1, double *a2, uint64_t a3)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (Current >= *a2 + 0.02)
  {
    CLSInitLog();
    v7 = CLSLogMemory;
    if (a1)
    {
      if (os_log_type_enabled(CLSLogMemory, OS_LOG_TYPE_FAULT))
      {
        v8 = 136315138;
        v9 = a3;
        _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "%s", &v8, 0xCu);
      }
    }

    else if (os_log_type_enabled(CLSLogMemory, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = a3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
    }

    *a2 = Current;
  }
}

id sub_1000DA23C(uint64_t a1)
{
  v2 = [*(a1 + 32) listener];
  [v2 invalidate];

  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 exitClean:v3 reason:v5];
}

id sub_1000DA28C(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [[CLSCurrentUser alloc] _init];
    v5 = sub_10003E1B4();
    v6 = sub_1000711FC(v3);
    [v4 setPerson:v6];

    if (v5)
    {
      v7 = *(v5 + 64);
      [v4 setAccountIdentifier:v7];

      v8 = *(v5 + 72);
    }

    else
    {
      [v4 setAccountIdentifier:0];
      v8 = 0;
    }

    v9 = v8;
    [v4 setAccountPersonaUniqueIdentifier:v9];

    v10 = sub_100071704(v3);
    [v4 setOrganizationName:v10];

    [v4 setOrganizationProgressTrackingAllowed:sub_100071750(v3)];
    [v4 setOrganizationMaidAnalyticsEnabled:sub_1000717A0(v3)];
    [v4 setPersonMaidAnalyticsEnabled:sub_100071778(v3)];
    if (v5)
    {
      [v4 setHandoutServiceAuthenticationState:*(v5 + 16)];
      [v4 setICloudDriveAuthenticationState:*(v5 + 20)];
      v11 = *(v5 + 12);
    }

    else
    {
      [v4 setHandoutServiceAuthenticationState:0];
      [v4 setICloudDriveAuthenticationState:0];
      v11 = 0;
    }

    [v4 setRosterServiceAuthenticationState:v11];
    [v4 setRoles:sub_1000717E8(v3)];
    v12 = sub_1000718DC(v3);
    [v4 setLocationIDsByAXMRoleType:v12];

    if (v5)
    {
      [v4 setHasDataSeparatedAccount:*(v5 + 8)];
      v13 = *(v5 + 10) ^ 1;
    }

    else
    {
      [v4 setHasDataSeparatedAccount:0];
      v13 = 1;
    }

    [v4 setRequiresPersonaMatch:v13 & 1];
    v14 = [v4 accountPersonaUniqueIdentifier];
    [v4 setClientPersonaUniqueIdentifier:v14];

    [v4 setHasMatchingPersona:1];
    if (v5)
    {
      [v4 setHasManagedAccount:{objc_msgSend(*(v5 + 24), "aa_isManagedAppleID")}];
      v15 = [a1 mode];
      if (v15 == 2)
      {
        v16 = 2;
      }

      else
      {
        v16 = v15 == 1;
      }

      [v4 setDevMode:v16];
      [v4 setCatalogEnvironment:sub_10015E198(v3)];
      [v4 setHasUbiquityEnabled:*(v5 + 9)];
      v17 = *(v5 + 80);
    }

    else
    {
      [v4 setHasManagedAccount:0];
      v35 = [a1 mode];
      if (v35 == 2)
      {
        v36 = 2;
      }

      else
      {
        v36 = v35 == 1;
      }

      [v4 setDevMode:v36];
      [v4 setCatalogEnvironment:sub_10015E198(v3)];
      [v4 setHasUbiquityEnabled:0];
      v17 = 0;
    }

    v18 = v17;
    [v4 setSchoolworkUbiquitousContainerURL:v18];

    if (v5)
    {
      v19 = *(v5 + 88);
      [v4 setSchoolworkUbiquitousContainerError:v19];

      v20 = *(v5 + 96);
    }

    else
    {
      [v4 setSchoolworkUbiquitousContainerError:0];
      v20 = 0;
    }

    v21 = v20;
    [v4 setOrgAdminUserRecordID:v21];

    if (v5)
    {
      v22 = *(v5 + 104);
      [v4 setOrgAdminUserFetchError:v22];

      v23 = *(v5 + 112);
    }

    else
    {
      [v4 setOrgAdminUserFetchError:0];
      v23 = 0;
    }

    v24 = v23;
    [v4 setUserRecordID:v24];

    if (v5)
    {
      v25 = *(v5 + 120);
      [v4 setUserFetchError:v25];

      v26 = *(v5 + 128);
    }

    else
    {
      [v4 setUserFetchError:0];
      v26 = 0;
    }

    v27 = v26;
    [v4 setMultimediaCacheDirectoryURL:v27];

    if (v5)
    {
      v28 = *(v5 + 136);
    }

    else
    {
      v28 = 0;
    }

    v29 = v28;
    [v4 setMultimediaCacheDirectoryURLError:v29];

    v30 = [v4 person];

    if (v30)
    {
      v31 = [v3 select:objc_opt_class() where:0 bindings:0];
      v32 = v31;
      if (v31)
      {
        [v4 setHasEDUAccount:*(v31 + 9)];
        [v4 setAllowSharingOutsideOrg:v32[12]];
        v33 = v32[13];
      }

      else
      {
        [v4 setHasEDUAccount:0];
        [v4 setAllowSharingOutsideOrg:0];
        v33 = 0;
      }

      [v4 setClassroomClassicAdHocModeEnabled:v33 & 1];
    }

    else
    {
      [v4 setHasEDUAccount:0];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1000DA840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000DA858(uint64_t a1)
{
  if ((sub_1001261B8(*(*(a1 + 32) + 72)) & 1) == 0)
  {
    sub_10012175C(*(*(a1 + 32) + 72), 0);
  }

  v2 = [*(a1 + 40) processIdentifier];
  CLSInitLog();
  v3 = CLSLogDefault;
  if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    LODWORD(v76) = v2;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, ">>> new connection from process (pid: %d)", buf, 8u);
  }

  v60 = v2;
  if (sub_100140F84())
  {
    v4 = *(a1 + 32);
    if (v4 && *(v4 + 128))
    {
      v5 = [CLSEntitlements alloc];
      v6 = *(a1 + 32);
      if (v6)
      {
        v7 = *(v6 + 128);
      }

      else
      {
        v7 = 0;
      }

      v62 = [v5 initWithEntitlements:v7];
      [*(a1 + 32) appIdentifierForConnection:*(a1 + 40) withEntitlements:v62];
    }

    else
    {
      v9 = *(a1 + 40);
      v74 = 0;
      v62 = [CLSEntitlements entitlementsWithConnection:v9 error:&v74];
      v10 = v74;
      if (!v62)
      {
        v17 = v10;
        CLSInitLog();
        v18 = CLSLogDefault;
        if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v76 = v17;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Unable to determine entitlements: %{public}@", buf, 0xCu);
        }

        goto LABEL_74;
      }

      [*(a1 + 32) appIdentifierForConnection:*(a1 + 40) withEntitlements:v62];
    }
    v63 = ;
    if (!v63)
    {
      CLSInitLog();
      v16 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v76 = v2;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "can't figure out bundle identifier for pid: %ld; refusing connection", buf, 0xCu);
      }

      v59 = 0;
      goto LABEL_73;
    }

    v11 = [v62 classKitEnvironment];
    v12 = CLSClassKitEnvironmentDevelopment;
    if (v11 | CLSClassKitEnvironmentDevelopment)
    {
      v13 = CLSClassKitEnvironmentDevelopment != 0;
      v14 = [v62 classKitEnvironment];
      if (v14 != 0 && v13)
      {
        v15 = [v62 classKitEnvironment];
        if ([v15 isEqualToString:v12])
        {
          v58 = 1;
        }

        else if ([*(a1 + 32) mode])
        {
          v58 = [v62 isDashboardAPIEnabled];
        }

        else
        {
          v58 = 0;
        }
      }

      else if ([*(a1 + 32) mode])
      {
        v58 = [v62 isDashboardAPIEnabled];
      }

      else
      {
        v58 = 0;
      }
    }

    else
    {
      v58 = 1;
    }

    v19 = [v62 isInternal];
    v20 = [v62 isUIClient];
    v55 = [v63 isEqualToString:@"com.apple.classroom.instructord"];
    v54 = [v63 isEqualToString:@"com.apple.studentd"];
    v21 = [v63 isEqualToString:@"com.apple.accountsd"];
    v22 = [v63 isEqualToString:@"com.apple.ClassKit.pdtool"];
    v23 = [v63 isEqualToString:@"com.apple.Preferences"];
    v57 = [v63 isEqualToString:@"com.apple.schoolwork.ClassKitApp"];
    v56 = [v63 isEqualToString:@"com.apple.classroom"];
    v24 = sub_10003E1B4();
    v61 = v24;
    if (v24)
    {
      if ([*(v24 + 24) aa_isManagedAppleID])
      {
        v25 = [v62 isSearchAPIEnabled];
      }

      else
      {
        v25 = 0;
      }

      v26 = [v61[3] aa_isManagedAppleID] | v58;
    }

    else
    {
      v25 = 0;
      v26 = v58;
    }

    v27 = v21 & v19;
    v28 = v22 & v19;
    v29 = v23 & v19;
    v30 = v61;
    if ((v26 | v22 & v19 | v23 & v19 | v21 & v19))
    {
      v31 = 1;
    }

    else
    {
      v31 = v25 | v20;
      if ((v25 | v20) & 1) == 0 && ((v57 | v56))
      {
        CLSInitLog();
        v32 = CLSLogDefault;
        if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "No User Mode: allowing Schoolwork/Classroom to connect", buf, 2u);
        }

        v31 = 1;
        v30 = v61;
      }
    }

    if (v30)
    {
      v33 = *(v30 + 10);
    }

    else
    {
      v33 = 0;
    }

    v34 = CLSCurrentPersonaUniqueIdentifier();
    v73 = 0;
    v35 = sub_10003FF10(PDAccountInfo, v61, v34, &v73);
    v59 = v73;

    if ((v33 | v35 | v57 | v56 | v55 | v54 & v19 | v58 | v28 | v29 | v27 | v25))
    {
      if (!sub_1000D54A0(*(*(a1 + 32) + 16), v63))
      {
        v38 = sub_1000B2374([PDClient alloc], v63, *(a1 + 40), v62);
        v39 = v38;
        if (v38)
        {
          *(v38 + 31) = v31 & 1;
          if (*(v38 + 29) == 1)
          {
            [*(a1 + 32) registerDashboardAppIfNeeded:v63];
          }

          v40 = off_100200D18;
          if (!v58)
          {
            v40 = off_100200D20;
          }

          v41 = [objc_alloc(*v40) initWithClient:v39 daemon:*(a1 + 32)];
          if (v41)
          {
            v42 = sub_10010A850(@"DaemonListenerConnectionInitTransaction");
            v43 = CLSEndpointServerInterface();
            [*(a1 + 40) setExportedInterface:v43];

            [*(a1 + 40) setExportedObject:v41];
            v44 = CLSClientInterface();
            [*(a1 + 40) setRemoteObjectInterface:v44];

            objc_initWeak(&location, *(a1 + 32));
            v68[0] = _NSConcreteStackBlock;
            v68[1] = 3221225472;
            v68[2] = sub_1000DB2B8;
            v68[3] = &unk_100204A50;
            v71 = v60;
            objc_copyWeak(&v70, &location);
            v45 = v41;
            v69 = v45;
            [*(a1 + 40) setInvalidationHandler:v68];
            v64[0] = _NSConcreteStackBlock;
            v64[1] = 3221225472;
            v64[2] = sub_1000DB3A8;
            v64[3] = &unk_100204A50;
            v67 = v60;
            objc_copyWeak(&v66, &location);
            v46 = v45;
            v65 = v46;
            [*(a1 + 40) setInterruptionHandler:v64];
            CLSInitLog();
            v47 = CLSLogDefault;
            if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v76 = v63;
              v77 = 1024;
              v78 = v60;
              _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "creating PDEndpointServer for %@ (pid: %d).", buf, 0x12u);
            }

            [*(a1 + 32) lock];
            v48 = *(a1 + 32);
            if (v48)
            {
              v48 = v48[4];
            }

            v49 = v48;
            [v49 addObject:v46];

            [*(a1 + 32) unlock];
            v50 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
            v51 = dispatch_queue_create_with_target_V2("com.apple.progressd.xpcConnection", v50, *(*(a1 + 32) + 120));

            [*(a1 + 40) _setQueue:v51];
            sub_10010AB34(v42);
            *(*(*(a1 + 48) + 8) + 24) = 1;

            objc_destroyWeak(&v66);
            objc_destroyWeak(&v70);
            objc_destroyWeak(&location);
          }

          else
          {
            CLSInitLog();
            v53 = CLSLogDefault;
            if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v76 = v59;
              _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "Failed to create server for connection: %{public}@", buf, 0xCu);
            }
          }
        }

        else
        {
          CLSInitLog();
          v52 = CLSLogDefault;
          if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v76 = v59;
            _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "Failed to create client for connection: %{public}@", buf, 0xCu);
          }
        }

        goto LABEL_72;
      }

      CLSInitLog();
      v36 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v76 = v63;
        v37 = "app with identifier: %@ is blocked - refusing connection;";
LABEL_54:
        _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, v37, buf, 0xCu);
      }
    }

    else
    {
      CLSInitLog();
      v36 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v76 = v59;
        v37 = "Unexpected persona! Error: %@";
        goto LABEL_54;
      }
    }

LABEL_72:

LABEL_73:
    v17 = v59;
LABEL_74:

    return;
  }

  CLSInitLog();
  v8 = CLSLogDefault;
  if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "System locked! Refusing connection.", buf, 2u);
  }
}

void sub_1000DB27C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 168));
  _Unwind_Resume(a1);
}

void sub_1000DB2B8(uint64_t a1)
{
  v2 = +[PDUserDefaults sharedDefaults];
  v3 = [v2 enableVerboseLogging];

  if (v3)
  {
    CLSInitLog();
    v4 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 48);
      v7[0] = 67109120;
      v7[1] = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Connection invalidated, process (pid: %d) went away.", v7, 8u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidateServer:*(a1 + 32)];
}

void sub_1000DB3A8(uint64_t a1)
{
  v2 = +[PDUserDefaults sharedDefaults];
  v3 = [v2 enableVerboseLogging];

  if (v3)
  {
    CLSInitLog();
    v4 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 48);
      v7[0] = 67109120;
      v7[1] = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Unexpected interruption on connection, process (pid: %d).", v7, 8u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidateServer:*(a1 + 32)];
}

void sub_1000DB67C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000DB730;
    v4[3] = &unk_100204A78;
    v5 = *(a1 + 32);
    v3 = objc_retainBlock(v4);
    (v3[2])(v3, WeakRetained);
  }
}

id sub_1000DB730(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 32);
  }

  else
  {
    v2 = 0;
  }

  return [v2 removeObject:*(a1 + 32)];
}

void sub_1000DBBA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose((v40 - 232), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DBBF4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000DBC0C(void *a1, char a2, char a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  *(*(a1[4] + 8) + 24) = a2;
  *(*(a1[5] + 8) + 24) = a3;
  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v9;
  v15 = v9;

  v13 = *(a1[7] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v10;
}

void sub_1000DBCBC(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 120);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000DBD38;
    block[3] = &unk_100202D40;
    block[4] = a1;
    dispatch_barrier_async(v1, block);
  }
}

void sub_1000DBD38(uint64_t a1)
{
  context = objc_autoreleasePoolPush();
  v2 = objc_opt_new();
  [*(a1 + 32) lock];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v3 = *(a1 + 32);
  v25 = a1;
  if (v3)
  {
    v3 = v3[4];
  }

  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v31 objects:v38 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v32;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v10 = [v9 observers];
        v11 = [v10 objectEnumerator];

        v12 = [v11 countByEnumeratingWithState:&v27 objects:v37 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v28;
          do
          {
            for (j = 0; j != v13; j = j + 1)
            {
              if (*v28 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v27 + 1) + 8 * j);
              if (!v16 || (v16[48] & 1) == 0)
              {
                v17 = [v16 observedTableName];
                [v2 addObject:v17];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v27 objects:v37 count:16];
          }

          while (v13);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v31 objects:v38 count:16];
    }

    while (v6);
  }

  [*(v25 + 32) unlock];
  v18 = +[PDUserDefaults sharedDefaults];
  v19 = [v18 enableVerboseLogging];

  if (v19)
  {
    CLSInitLog();
    v20 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
    {
      v21 = v20;
      v22 = [v2 allObjects];
      *buf = 138412290;
      v36 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Resetting tracked tables for all data observers to: %@.", buf, 0xCu);
    }
  }

  v23 = [*(v25 + 32) database];
  v24 = [v2 allObjects];
  sub_10010C538(v23, v24, 1);

  objc_autoreleasePoolPop(context);
}

BOOL sub_1000DC5E0(void *a1)
{
  if (!a1 || [a1 mode])
  {
    return 0;
  }

  v2 = sub_10003E1B4();
  v1 = !sub_10004054C(v2);

  return v1;
}

void sub_1000DC6EC(uint64_t a1)
{
  [*(*(a1 + 32) + 56) cancelSubscription];
  v2 = +[NSDate now];
  [*(*(a1 + 32) + 56) setDatabase:*(a1 + 40)];
  [*(*(a1 + 32) + 56) startSubscription];
  [*(*(a1 + 32) + 56) checkScheduledTask:v2 completionType:1];
  [*(*(a1 + 32) + 56) checkScheduledTask:v2 completionType:2];
}

void sub_1000DD464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000DD488(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = objc_opt_class();
  if (v4)
  {
    v6 = v4[2];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [v3 select:v5 identity:v7];

  v9 = *(a1 + 32);
  v10 = objc_opt_class();
  if (v4)
  {
    v11 = v4[3];
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = [v9 select:v10 identity:v12];

  v17[0] = @"role";
  v14 = [v8 dictionaryRepresentation];
  v17[1] = @"location";
  v18[0] = v14;
  v15 = [v13 dictionaryRepresentation];
  v18[1] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];

  [*(*(*(a1 + 40) + 8) + 40) addObject:v16];
}

void sub_1000DE084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  if (v9)
  {
    CLSInitLog();
    v10 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v9;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to get iCloud quota info. Error: %@", buf, 0xCu);
    }
  }

  else
  {
    v11 = [NSNumber numberWithUnsignedInteger:a2, @"total"];
    v18[0] = v11;
    v17[1] = @"used";
    v12 = [NSNumber numberWithUnsignedInteger:a3];
    v18[1] = v12;
    v17[2] = @"available";
    v13 = [NSNumber numberWithUnsignedInteger:a4];
    v18[2] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:3];
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000DE218(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [*(a1 + 32) addObject:v4];
}

void sub_1000DE278(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 statusReport];
  [*(a1 + 32) addObject:?];
  if ([*(a1 + 32) count] == 500)
  {
    *a3 = 1;
  }
}

void sub_1000DE2EC(uint64_t a1, void *a2)
{
  v3 = [a2 dictionaryRepresentation];
  [*(a1 + 32) addObject:v3];
}

id sub_1000DE548(uint64_t a1)
{
  CLSInitLog();
  v2 = CLSLogDefault;
  if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "daemon exiting", v4, 2u);
  }

  return [*(a1 + 32) terminateClean:1 reason:@"in response to remote request"];
}

uint64_t sub_1000DE994(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
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
        LOBYTE(v27) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v15 = PBReaderReadString();
          v16 = 40;
          goto LABEL_40;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(PDDPStatus);
          objc_storeStrong((a1 + 24), v14);
          v27 = 0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !sub_1000E2FD8(v14, a2))
          {
LABEL_49:

            return 0;
          }

          goto LABEL_28;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v15 = PBReaderReadData();
            v16 = 8;
LABEL_40:
            v24 = *(a1 + v16);
            *(a1 + v16) = v15;

            goto LABEL_47;
          case 4:
            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 48) |= 1u;
            while (1)
            {
              LOBYTE(v27) = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v27 & 0x7F) << v17;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                v23 = 0;
                goto LABEL_46;
              }
            }

            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v19;
            }

LABEL_46:
            *(a1 + 32) = v23;
            goto LABEL_47;
          case 5:
            v14 = objc_alloc_init(PDDPAdminRequestRequestor);
            objc_storeStrong((a1 + 16), v14);
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !sub_1000B301C(v14, a2))
            {
              goto LABEL_49;
            }

LABEL_28:
            PBReaderRecallMark();

            goto LABEL_47;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_47:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_1000DF7CC(id result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3.receiver = result;
    v3.super_class = PDASMPublishAccountOperation;
    return objc_msgSendSuper2(&v3, "initWithDatabase:adminRequests:requestor:", a2, a3, 0);
  }

  return result;
}

void sub_1000DFC50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DFC70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL sub_1000DFC88(uint64_t a1)
{
  [*(a1 + 32) cleanupAssociatedObjects];
  if (![*(a1 + 40) hasStatus])
  {
    goto LABEL_9;
  }

  v2 = *(a1 + 48);
  v3 = [*(a1 + 40) status];
  v4 = sub_100105CA4(v3);
  [v2 handleServerAlerts:v4];

  v5 = [*(a1 + 40) status];
  v6 = sub_1001055FC(v5, 0);
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  result = 0;
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
LABEL_9:
    if ([*(a1 + 40) hasClientConfig] && (v10 = *(a1 + 48), objc_msgSend(*(a1 + 40), "clientConfig"), v11 = objc_claimAutoreleasedReturnValue(), LOBYTE(v10) = objc_msgSend(v10, "saveClientConfig:", v11), v11, (v10 & 1) == 0))
    {
      v18 = [NSError cls_createErrorWithCode:100 description:@"save ClientConfig failed!"];
      v19 = *(*(a1 + 56) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;

      return 0;
    }

    else
    {
      v12 = *(a1 + 48);
      v13 = [*(a1 + 40) endpoints];
      v21 = @"bootstrap";
      v14 = [NSArray arrayWithObjects:&v21 count:1];
      v15 = [v12 replaceEndpoints:v13 excludeEndpointIDs:v14 forServiceID:@"orion"];
      v16 = *(*(a1 + 56) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      return *(*(*(a1 + 56) + 8) + 40) == 0;
    }
  }

  return result;
}

id sub_1000E0370(uint64_t a1)
{
  v2 = objc_alloc_init(PDConfig);
  if (*(a1 + 56) == 1)
  {
    v3 = [*(a1 + 32) sendToOnramp];
    if (v2)
    {
      v2->_maySendToIngest = v3;
      v2->_mayRecordUserActivity = [*(a1 + 32) recordActivity];
      v2->_maySyncWithCloudKit = [*(a1 + 32) sendToCloudKit];
      v2->_contextTrackingAllowed = [*(a1 + 32) isContextTrackingAllowed];
    }

    else
    {
      [*(a1 + 32) recordActivity];
      [*(a1 + 32) sendToCloudKit];
      [*(a1 + 32) isContextTrackingAllowed];
    }
  }

  if ((sub_100043BD0(*(a1 + 40), v2) & 1) == 0)
  {
    CLSInitLog();
    v4 = [*(a1 + 48) logSubsystem];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 48);
      v6 = objc_opt_class();
      v7 = *(a1 + 48);
      v8 = v6;
      v9 = [v7 operationID];
      v18 = 138543618;
      v19 = v6;
      v20 = 2114;
      v21 = v9;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ failed to update PDConfig", &v18, 0x16u);
    }
  }

  v10 = sub_10004FE98(*(a1 + 40), v2);
  if ((v10 & 1) == 0)
  {
    CLSInitLog();
    v11 = [*(a1 + 48) logSubsystem];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 48);
      v13 = objc_opt_class();
      v14 = *(a1 + 48);
      v15 = v13;
      v16 = [v14 operationID];
      v18 = 138543618;
      v19 = v13;
      v20 = 2114;
      v21 = v16;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ failed to purge local progress data", &v18, 0x16u);
    }
  }

  return v10;
}

id sub_1000E0594()
{
  objc_opt_self();
  if (qword_10024DA60 != -1)
  {
    dispatch_once(&qword_10024DA60, &stru_100204BC0);
  }

  v0 = qword_10024DA68;

  return v0;
}

void sub_1000E05EC(id a1)
{
  v1 = objc_alloc_init(PDFileManager);
  v2 = qword_10024DA68;
  qword_10024DA68 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000E0764(id a1)
{
  v7 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v1 = [v7 firstObject];
  if (!v1)
  {
    CLSInitLog();
    v5 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to get library path", buf, 2u);
    }

    v6 = [NSException exceptionWithName:NSDestinationInvalidException reason:@"Failed to get library path" userInfo:0];
    objc_exception_throw(v6);
  }

  v2 = v1;
  v3 = [NSURL fileURLWithPath:v1 isDirectory:1 relativeToURL:0];
  v4 = qword_10024DA70;
  qword_10024DA70 = v3;
}

id sub_1000E086C(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 24));
  if (!*(a1 + 16))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = [a1 topLevelDirectoryURL];
    v4 = [v3 URLByAppendingPathComponent:@"ClassKit" isDirectory:1];

    objc_autoreleasePoolPop(v2);
    v18 = 0;
    v5 = [v4 cls_createDirectoryIfNeeded:&v18];
    v6 = v18;
    if (!v5)
    {
      CLSInitLog();
      v11 = CLSLogDatabase;
      if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
      {
        v12 = v11;
        v13 = [v4 path];
        *buf = 138412546;
        v20 = v13;
        v21 = 2112;
        v22 = v6;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to create directory at '%@'. Error: %@", buf, 0x16u);
      }

      v14 = [v4 path];
      v15 = [NSString stringWithFormat:@"Failed to create directory at '%@'. Error: %@", v14, v6];
      v16 = [NSException exceptionWithName:NSDestinationInvalidException reason:v15 userInfo:0];
      v17 = v16;

      objc_exception_throw(v16);
    }

    v7 = *(a1 + 16);
    *(a1 + 16) = v5;
    v8 = v5;
  }

  os_unfair_lock_unlock((a1 + 24));
  v9 = *(a1 + 16);

  return v9;
}

id sub_1000E0A78(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_1000E086C(a1);
    v2 = [v1 URLByAppendingPathComponent:@"config" isDirectory:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1000E0ADC(uint64_t a1)
{
  v1 = sub_1000E086C(a1);
  v2 = [v1 URLByAppendingPathComponent:@"db" isDirectory:1];

  v3 = [v2 cls_createDirectoryIfNeeded:0];

  return v3;
}

id sub_1000E0B4C(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_1000E0ADC(a1);
    v2 = [v1 URLByAppendingPathComponent:@"ClassKit.db" isDirectory:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1000E0BB0(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_1000E0ADC(a1);
    v2 = [v1 URLByAppendingPathComponent:@"teacher.db" isDirectory:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1000E0C14(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_1000E0ADC(a1);
    v2 = [v1 URLByAppendingPathComponent:@"student.db" isDirectory:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1000E0C78(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_1000E086C(a1);
    v2 = [v1 URLByAppendingPathComponent:@"responses" isDirectory:1];

    v3 = [v2 cls_createDirectoryIfNeeded:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_1000E0CF4(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_1000E086C(a1);
    v2 = [v1 URLByAppendingPathComponent:@"UserDefaults.plist" isDirectory:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1000E0D58(uint64_t a1, uint64_t *a2)
{
  objc_opt_self();
  if (!a2)
  {
    v13 = 0;
    a2 = &v13;
  }

  v3 = +[NSFileManager defaultManager];
  v12 = 0;
  v4 = [v3 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v12];
  v5 = v12;

  if (!v4)
  {
    v9 = [NSError cls_createErrorWithCode:342 underlyingError:v5 description:@"Failed to get cache directory for assets."];

    v8 = 0;
    v5 = v9;
    if (!v9)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v6 = [v4 URLByAppendingPathComponent:@"com.apple.progressd" isDirectory:1];

  v7 = [v6 URLByAppendingPathComponent:@"CKContentStoreCache" isDirectory:1];

  v8 = v7;
  if (v5)
  {
LABEL_7:
    [v5 cls_log:CLSLogAsset];
    v10 = v5;
    *a2 = v5;
  }

LABEL_8:

  return v8;
}

id sub_1000E0F2C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = objc_opt_self();
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1000E11A8;
  v28 = sub_1000E11B8;
  v29 = 0;
  if (v4)
  {
    v6 = v4[8];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = sub_1000E11A8;
    v22 = sub_1000E11B8;
    v23 = 0;
    if (v4)
    {
      v8 = v4[9];
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    v17 = v4;
    CLSPerformWithPersona();

    v10 = v25[5];
    if (v10)
    {
      [v10 cls_log:{CLSLogAsset, _NSConcreteStackBlock, 3221225472, sub_1000E11C0, &unk_100204C08, v17, &v18, &v24, v5, v18, v19, v20, v21, v22, v23, v24}];
      v11 = v25[5];
      if (a3)
      {
        *a3 = v11;
      }
    }

    v12 = v19[5];

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v13 = [NSError cls_createErrorWithCode:342 description:@"PDAccountInfo.accountIdentifier is nil!"];
    v14 = v25[5];
    v25[5] = v13;

    [v25[5] cls_log:CLSLogAsset];
    v15 = v25[5];
    v12 = 0;
    if (a3)
    {
      *a3 = v15;
    }
  }

  _Block_object_dispose(&v24, 8);

  return v12;
}

void sub_1000E117C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E11A8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000E11C0(void *a1)
{
  v2 = a1[7];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = sub_1000E0D58(v2, &obj);
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(a1[5] + 8) + 40);
  if (v7)
  {
    v8 = a1[4];
    if (v8)
    {
      v8 = v8[8];
    }

    v9 = v8;
    v10 = [v7 URLByAppendingPathComponent:v9 isDirectory:1];

    v11 = *(a1[6] + 8);
    v20 = *(v11 + 40);
    v12 = [v10 cls_createDirectoryIfNeeded:&v20];
    objc_storeStrong((v11 + 40), v20);
    v13 = *(a1[5] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    if (!*(*(a1[5] + 8) + 40))
    {
      v15 = [v10 path];
      v16 = [NSString stringWithFormat:@"Failed to create cache directory for assets at: '%@'", v15];

      v17 = [NSError cls_createErrorWithCode:342 underlyingError:*(*(a1[6] + 8) + 40) description:v16];
      v18 = *(a1[6] + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;
    }
  }
}

void sub_1000E1340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 1)
  {
    v13 = objc_begin_catch(exception_object);
    v10 = [NSError cls_createErrorWithCode:342 format:@"Failed to get cache directory for assets. Exception: %@"];
    v11 = *(*(v9 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    objc_end_catch();
    JUMPOUT(0x1000E132CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E13B8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  if (!v2 || (v2[1] & 1) == 0)
  {
    v31 = 0;
    v4 = sub_1000E0D58(v3, &v31);
    v5 = v31;
    if (v4)
    {
      v6 = +[NSFileManager defaultManager];
      v35[0] = NSURLIsDirectoryKey;
      v35[1] = NSURLIsRegularFileKey;
      v7 = [NSArray arrayWithObjects:v35 count:2];
      v8 = [v6 enumeratorAtURL:v4 includingPropertiesForKeys:v7 options:5 errorHandler:0];

      v24 = v4;
      if (v2)
      {
        v9 = v2[8];
      }

      else
      {
        v9 = 0;
      }

      v25 = v2;
      v10 = v9;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v11 = v8;
      v12 = [v11 countByEnumeratingWithState:&v27 objects:v34 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v28;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v28 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v27 + 1) + 8 * i);
            v17 = [v16 lastPathComponent];
            v18 = [v17 isEqualToString:v10];

            if ((v18 & 1) == 0)
            {
              v26 = v5;
              v19 = [v6 removeItemAtURL:v16 error:&v26];
              v20 = v26;

              if ((v19 & 1) == 0)
              {
                CLSInitLog();
                v21 = CLSLogAsset;
                if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR))
                {
                  v22 = v21;
                  v23 = [v16 path];
                  *buf = 138412290;
                  v33 = v23;
                  _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to remove cache at: '%@'", buf, 0xCu);
                }
              }

              v5 = v20;
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v27 objects:v34 count:16];
        }

        while (v13);
      }

      v4 = v24;
      v2 = v25;
    }
  }
}

id sub_1000E1674(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = sub_1000E0ADC(a1);
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 removeItemAtURL:v4 error:a2];

  if (v6)
  {
    sub_1000E0ADC(a1);
  }

  return v6;
}

uint64_t sub_1000E2FD8(uint64_t a1, void *a2)
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
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27[0] & 0x7F) << v5;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v15 = PBReaderReadString();
        v16 = 32;
        goto LABEL_29;
      }

      if (v13 == 4)
      {
        v15 = PBReaderReadString();
        v16 = 16;
        goto LABEL_29;
      }

      if (v13 != 5)
      {
        goto LABEL_39;
      }

      v14 = objc_alloc_init(PDDPServerAlert);
      [a1 addServerAlerts:v14];
      v27[0] = 0;
      v27[1] = 0;
      if (!PBReaderPlaceMark() || !sub_1000CAF58(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_45:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      *(a1 + 48) |= 1u;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v21 = [a2 position] + 1;
        if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
        {
          v23 = [a2 data];
          [v23 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v20 |= (v27[0] & 0x7F) << v18;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v18 += 7;
        v11 = v19++ >= 9;
        if (v11)
        {
          v24 = 0;
          goto LABEL_44;
        }
      }

      if ([a2 hasError])
      {
        v24 = 0;
      }

      else
      {
        v24 = v20;
      }

LABEL_44:
      *(a1 + 8) = v24;
      goto LABEL_45;
    }

    if (v13 == 2)
    {
      v15 = PBReaderReadString();
      v16 = 24;
LABEL_29:
      v17 = *(a1 + v16);
      *(a1 + v16) = v15;

      goto LABEL_45;
    }

LABEL_39:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_45;
  }

  return [a2 hasError] ^ 1;
}

void *sub_1000E3BF8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  if (a1)
  {
    v17.receiver = a1;
    v17.super_class = PDDataObserver;
    v9 = objc_msgSendSuper2(&v17, "init");
    a1 = v9;
    if (v9)
    {
      *(v9 + 7) = a4;
      objc_storeStrong(v9 + 8, a2);
      a1[1] = a3;
      v10 = CLSDispatchQueueName();
      v11 = [v10 UTF8String];
      v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      if (qword_10024DA88 != -1)
      {
        dispatch_once(&qword_10024DA88, &stru_100204CC8);
      }

      v13 = qword_10024DA80;
      v14 = dispatch_queue_create_with_target_V2(v11, v12, v13);
      v15 = a1[5];
      a1[5] = v14;
    }
  }

  return a1;
}

uint64_t sub_1000E3D20(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v9 = a3;
  if (a1)
  {
    if ([*(a1 + 8) conformsToProtocol:&OBJC_PROTOCOL___PDDatabaseEntity])
    {
      v10 = [v9 predicate];
      v11 = *(a1 + 8);
      v29 = 0;
      v12 = sub_100042AE4(v8, v10, v11, &v29);
      v13 = v29;

      if (v13)
      {
        [NSError cls_assignError:a5 fromError:v13];
        v14 = 0;
      }

      else
      {
        v15 = [a1 observedTableName];
        v31 = v15;
        v16 = [NSArray arrayWithObjects:&v31 count:1];
        sub_10010C538(v8, v16, 0);

        if (v12)
        {
          v17 = *(a1 + 8);
          if (*(a1 + 56))
          {
            v20 = sub_1000F4ACC(PDDatabase, v17, v12);
            v21 = *(a1 + 16);
            *(a1 + 16) = v20;

            v22 = [v9 predicate];
            v23 = [NSCompoundPredicate notPredicateWithSubpredicate:v22];
            v24 = *(a1 + 8);
            v28 = 0;
            v19 = sub_100042AE4(v8, v23, v24, &v28);
            v13 = v28;

            v25 = sub_1000F4ACC(PDDatabase, *(a1 + 8), v19);
            v26 = *(a1 + 24);
            *(a1 + 24) = v25;
          }

          else
          {
            v18 = sub_1000F49A0(PDDatabase, v17, v12);
            v13 = 0;
            v19 = *(a1 + 16);
            *(a1 + 16) = v18;
          }

          objc_storeStrong((a1 + 32), v12[2]);
        }

        else
        {
          v13 = 0;
        }

        *(a1 + 49) = 1;
        v14 = [a1 isPrepared];
      }

      v30 = v14;
    }

    else
    {
      v13 = [NSError cls_createErrorWithCode:2 format:@"Observed entities must be PDDatabaseEntity."];
      [NSError cls_assignError:a5 fromError:v13];
      v30 = 0;
    }

    a1 = v30;
  }

  return a1;
}

uint64_t sub_1000E3FB0(uint64_t a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = [a2 objectForKeyedSubscript:@"PDDataWrittenTablesChanged"];
    v4 = v3;
    if (v3 && [v3 count])
    {
      v5 = [v2 observedTableName];
      v2 = [v4 containsObject:v5];
    }

    else
    {
      v2 = 1;
    }
  }

  return v2;
}

void sub_1000E4344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void *sub_1000E4384(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = sub_1000F4BF8(v2, *(*(a1 + 40) + 8), 0, 0, *(*(a1 + 40) + 96));
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 40);
  v5 = *(v4 + 16);
  if (v5)
  {
    result = sub_1000F4BF8(*(a1 + 32), *(v4 + 8), v5, *(v4 + 32), *(v4 + 96));
    v4 = *(a1 + 40);
  }

  else
  {
    result = 0;
  }

  *(v4 + 72) = v3;
  *(*(a1 + 40) + 80) = result;
  *(*(a1 + 40) + 96) = *(*(*(a1 + 48) + 8) + 24);
  *(*(*(a1 + 56) + 8) + 24) = *(a1 + 64) | (v3 != 0 || result != 0);
  return result;
}

void sub_1000E4AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose((v61 - 256), 8);
  _Block_object_dispose((v61 - 224), 8);
  _Block_object_dispose((v61 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E4B88(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1000E4BA0(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = v3[1];
  v5 = v3[2];
  if (!v5)
  {
    v20 = v3[12];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_1000E4E8C;
    v44[3] = &unk_100204C80;
    v24 = *(a1 + 64);
    v45 = *(a1 + 48);
    v46 = v24;
    v48 = *(a1 + 128);
    v44[4] = v3;
    v47 = *(a1 + 80);
    if (!v2)
    {
      goto LABEL_9;
    }

    v23 = v44;
    goto LABEL_8;
  }

  v6 = v3[4];
  v7 = v3[12];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000E4FB4;
  v37[3] = &unk_100204C58;
  v38 = *(a1 + 48);
  v40 = vextq_s8(*(a1 + 72), *(a1 + 72), 8uLL);
  v9 = *(a1 + 88);
  v8 = *(a1 + 96);
  v41 = *(a1 + 64);
  v42 = v9;
  v43 = *(a1 + 128);
  v39 = v8;
  v37[4] = v3;
  sub_1000F4F78(v2, v4, v5, v6, v7, v37);
  if ((*(*(*(a1 + 104) + 8) + 24) & 1) == 0)
  {
    v11 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = v11[1];
    v13 = v11[3];
    v14 = v11[4];
    v15 = v11[12];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000E511C;
    v32[3] = &unk_100204C80;
    v16 = *(a1 + 64);
    v33 = vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL);
    v34 = v16;
    v17 = *(a1 + 88);
    v18 = *(a1 + 128);
    v35 = *(a1 + 80);
    v36 = v18;
    v32[4] = v11;
    v32[5] = v17;
    sub_1000F4F78(v10, v12, v13, v14, v15, v32);
  }

  v19 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v19 + 8);
  v20 = *(v19 + 96);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000E5260;
  v27[3] = &unk_100204C80;
  v22 = *(a1 + 64);
  v21 = *(a1 + 72);
  v27[4] = v19;
  v27[5] = v21;
  v28 = vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL);
  v29 = v22;
  v30 = *(a1 + 80);
  v31 = *(a1 + 128);
  if (v2)
  {
    v23 = v27;
LABEL_8:
    sub_1000F4F78(v2, v4, 0, 0, v20, v23);
  }

LABEL_9:
  result = [*(a1 + 32) _sendClientEntitiesChangedAdded:*(*(*(a1 + 48) + 8) + 40) updated:*(*(*(a1 + 64) + 8) + 40) deleted:*(*(*(a1 + 72) + 8) + 40) updatedMatchingPredicate:*(*(*(a1 + 80) + 8) + 40) updatedNotMatchingPredicate:*(*(*(a1 + 88) + 8) + 40)];
  *(*(a1 + 32) + 72) = *(*(*(a1 + 56) + 8) + 24);
  *(*(a1 + 32) + 80) = *(*(*(a1 + 96) + 8) + 24);
  *(*(a1 + 32) + 96) = *(*(*(a1 + 112) + 8) + 24);
  v26 = (*(*(*(a1 + 104) + 8) + 24) & 1) != 0 || *(*(*(a1 + 56) + 8) + 24) != 0;
  *(*(*(a1 + 120) + 8) + 24) = v26;
  return result;
}

void sub_1000E4E8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (v3)
  {
    v4 = *(v3 + 14) - 1;
    if (v4 <= 2)
    {
      v5 = *(*(*(a1 + qword_1001A8560[v4]) + 8) + 40);
      v6 = v3[4];
      [v5 addObject:v6];

      ++*(*(*(a1 + 48) + 8) + 24);
    }
  }

  v7 = [*(*(*(a1 + 40) + 8) + 40) count];
  v8 = &v7[[*(*(*(a1 + 56) + 8) + 40) count]];
  if ([*(*(*(a1 + 64) + 8) + 40) count] + v8 >= *(a1 + 88))
  {
    [*(a1 + 32) _sendClientEntitiesChangedAdded:*(*(*(a1 + 40) + 8) + 40) updated:*(*(*(a1 + 56) + 8) + 40) deleted:*(*(*(a1 + 64) + 8) + 40) updatedMatchingPredicate:*(*(*(a1 + 72) + 8) + 40) updatedNotMatchingPredicate:*(*(*(a1 + 80) + 8) + 40)];
  }
}

void sub_1000E4FB4(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = v3;
  if (v3)
  {
    v4 = *(v3 + 14) - 1;
    if (v4 <= 2)
    {
      v5 = *(*(*(a1 + qword_1001A8578[v4]) + 8) + 40);
      v6 = v3[4];
      [v5 addObject:v6];

      ++*(*(*(a1 + 48) + 8) + 24);
      ++*(*(*(a1 + 56) + 8) + 24);
    }
  }

  v7 = [*(*(*(a1 + 40) + 8) + 40) count];
  v8 = &v7[[*(*(*(a1 + 80) + 8) + 40) count]];
  v9 = [*(*(*(a1 + 72) + 8) + 40) count];
  v10 = &v8[[*(*(*(a1 + 64) + 8) + 40) count] + v9];
  if ([*(*(*(a1 + 88) + 8) + 40) count] + v10 >= *(a1 + 96))
  {
    [*(a1 + 32) _sendClientEntitiesChangedAdded:*(*(*(a1 + 40) + 8) + 40) updated:*(*(*(a1 + 80) + 8) + 40) deleted:*(*(*(a1 + 72) + 8) + 40) updatedMatchingPredicate:*(*(*(a1 + 64) + 8) + 40) updatedNotMatchingPredicate:*(*(*(a1 + 88) + 8) + 40)];
  }
}

void sub_1000E511C(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (v3 && *(v3 + 14) == 2)
  {
    v4 = *(*(*(a1 + 40) + 8) + 40);
    v5 = v3[4];
    [v4 addObject:v5];

    ++*(*(*(a1 + 48) + 8) + 24);
  }

  v6 = [*(*(*(a1 + 56) + 8) + 40) count];
  v7 = &v6[[*(*(*(a1 + 64) + 8) + 40) count]];
  v8 = [*(*(*(a1 + 72) + 8) + 40) count];
  v9 = &v7[[*(*(*(a1 + 80) + 8) + 40) count] + v8];
  if ([*(*(*(a1 + 40) + 8) + 40) count] + v9 >= *(a1 + 88))
  {
    [*(a1 + 32) _sendClientEntitiesChangedAdded:*(*(*(a1 + 56) + 8) + 40) updated:*(*(*(a1 + 64) + 8) + 40) deleted:*(*(*(a1 + 72) + 8) + 40) updatedMatchingPredicate:*(*(*(a1 + 80) + 8) + 40) updatedNotMatchingPredicate:*(*(*(a1 + 40) + 8) + 40)];
  }
}

void sub_1000E5260(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && (v5 = *(v3 + 14)) != 0)
  {
    if (v5 == 3)
    {
      v6 = *(*(*(a1 + 40) + 8) + 40);
      v7 = v3[4];
      [v6 addObject:v7];

      ++*(*(*(a1 + 48) + 8) + 24);
    }
  }

  else
  {
    CLSInitLog();
    v8 = CLSLogNotifications;
    if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v10 = v8;
      if (v4)
      {
        v11 = v4[4];
        v12 = v4[6];
        v13 = v11;
      }

      else
      {
        v11 = 0;
        v13 = 0;
        v12 = 0;
      }

      v14 = v12;
      v19 = 134218498;
      v20 = v9;
      v21 = 2112;
      v22 = v11;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "<PDDataObserver: %p> encountered unknown db action for entity:%@ (%@)", &v19, 0x20u);
    }
  }

  v15 = [*(*(*(a1 + 56) + 8) + 40) count];
  v16 = &v15[[*(*(*(a1 + 64) + 8) + 40) count]];
  v17 = [*(*(*(a1 + 40) + 8) + 40) count];
  v18 = &v16[[*(*(*(a1 + 72) + 8) + 40) count] + v17];
  if ([*(*(*(a1 + 80) + 8) + 40) count] + v18 >= *(a1 + 88))
  {
    [*(a1 + 32) _sendClientEntitiesChangedAdded:*(*(*(a1 + 56) + 8) + 40) updated:*(*(*(a1 + 64) + 8) + 40) deleted:*(*(*(a1 + 40) + 8) + 40) updatedMatchingPredicate:*(*(*(a1 + 72) + 8) + 40) updatedNotMatchingPredicate:*(*(*(a1 + 80) + 8) + 40)];
  }
}

void sub_1000E5488(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1 && [a1 isPrepared])
  {
    v7 = objc_autoreleasePoolPush();
    objc_initWeak(&location, a1);
    v8 = a1[5];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000E5598;
    v9[3] = &unk_1002028F8;
    objc_copyWeak(&v12, &location);
    v10 = v6;
    v11 = v5;
    dispatch_sync(v8, v9);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
    objc_autoreleasePoolPop(v7);
  }
}

void sub_1000E5598(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = NSStringFromClass(*(WeakRetained + 1));
    v5 = +[PDUserDefaults sharedDefaults];
    v6 = [v5 enableVerboseLogging];

    if (v6)
    {
      CLSInitLog();
      v7 = CLSLogNotifications;
      if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 32);
        v10 = 134218498;
        v11 = v3;
        v12 = 2112;
        v13 = v4;
        v14 = 2112;
        v15 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "<PDDataObserver: %p> entity:%@ checking for changes. changeInfo:%@", &v10, 0x20u);
      }
    }

    v9 = *(a1 + 40);
    if (v3[56])
    {
      [v3 _entitiesChangedSinceLastTrigger:v9];
    }

    else
    {
      [v3 _entityCountsChangedSinceLastTrigger:v9];
    }
  }
}

unsigned __int8 *sub_1000E56D4(Class *a1)
{
  v1 = a1;
  if (a1)
  {
    v15[0] = @"entity";
    v2 = NSStringFromClass(a1[1]);
    v3 = v2;
    v4 = *(v1 + 2);
    if (!v4)
    {
      v4 = @"(null)";
    }

    v16[0] = v2;
    v16[1] = v4;
    v15[1] = @"whereSQL";
    v15[2] = @"bindings";
    v5 = *(v1 + 4);
    if (!v5)
    {
      v5 = @"(null)";
    }

    v16[2] = v5;
    v15[3] = @"invalidated";
    v6 = [NSNumber numberWithBool:v1[48]];
    v16[3] = v6;
    v15[4] = @"prepared";
    v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 isPrepared]);
    v16[4] = v7;
    v15[5] = @"changedEntitiesCount";
    v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v1 changedEntitiesCount]);
    v16[5] = v8;
    v15[6] = @"changedMatchingEntitiesCount";
    v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v1 changedMatchingEntitiesCount]);
    v16[6] = v9;
    v15[7] = @"last trigger date";
    v10 = [v1 lastTriggerDate];
    v11 = [v10 description];
    v12 = v11;
    v13 = @"Never";
    if (v11)
    {
      v13 = v11;
    }

    v16[7] = v13;
    v1 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:8];
  }

  return v1;
}

void sub_1000E5C1C(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_USER_INITIATED, 0);

  v2 = dispatch_get_global_queue(25, 0);
  v3 = dispatch_queue_create_with_target_V2("com.apple.progressd.dataObservers", attr, v2);
  v4 = qword_10024DA80;
  qword_10024DA80 = v3;
}

void sub_1000E5F6C(id *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = a1[4];
  v7 = [v6 stats];
  v8 = v7;
  if (v7)
  {
    v9 = *(v7 + 80);
  }

  else
  {
    v9 = 0;
  }

  v10 = [a1[4] stats];
  v11 = v10;
  if (v10)
  {
    v12 = *(v10 + 112);
  }

  else
  {
    v12 = 0;
  }

  v13 = [v6 hasReachedRequestPayloadLimitBytes:v9 count:v12];

  if (v13)
  {
    *a3 = 1;
  }

  else
  {
    v14 = sub_10002082C(v5);
    [a1[5] addEvents:v14];
    v15 = [a1[5] data];
    [a1[5] clearEvents];
    v16 = [a1[4] stats];
    v17 = [v15 length];
    if (v16)
    {
      v16[10] += v17;
    }

    v18 = a1[4];
    v19 = [v18 stats];
    v20 = v19;
    if (v19)
    {
      v21 = *(v19 + 80);
    }

    else
    {
      v21 = 0;
    }

    v22 = [a1[4] stats];
    v23 = v22;
    if (v22)
    {
      v24 = *(v22 + 112);
    }

    else
    {
      v24 = 0;
    }

    v25 = [v18 hasReachedRequestPayloadLimitBytes:v21 count:v24];

    if (v25)
    {
      *a3 = 1;
      v26 = [a1[4] stats];
      v27 = [v15 length];
      if (v26)
      {
        v26[10] -= v27;
      }
    }

    else
    {
      [a1[6] writeData:v15];
      v28 = [a1[4] stats];
      if (v28)
      {
        ++v28[14];
      }

      CLSInitLog();
      v29 = [a1[4] logSubsystem];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v30 = a1[4];
        v31 = objc_opt_class();
        v32 = a1[4];
        v33 = v31;
        v34 = [v32 operationID];
        v35 = [v14 dictionaryRepresentation];
        v36 = 138543874;
        v37 = v31;
        v38 = 2114;
        v39 = v34;
        v40 = 2112;
        v41 = v35;
        _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "%{public}@ %{public}@ wrote event: %@", &v36, 0x20u);
      }
    }
  }
}

uint64_t sub_1000E6EA0(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
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
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            v27 = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              v23 = [a2 data];
              [v23 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v27 & 0x7F) << v18;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v11 = v19++ >= 9;
            if (v11)
            {
              v24 = 0;
              goto LABEL_42;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v20;
          }

LABEL_42:
          *(a1 + 16) = v24;
          goto LABEL_43;
        }

        if (v13 != 4)
        {
LABEL_27:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_43;
        }

        v14 = PBReaderReadString();
        if (v14)
        {
          [a1 addStudentIds:v14];
        }
      }

      else
      {
        if (v13 == 1)
        {
          v16 = PBReaderReadString();
          v17 = *(a1 + 8);
          *(a1 + 8) = v16;

          goto LABEL_43;
        }

        if (v13 != 2)
        {
          goto LABEL_27;
        }

        v14 = PBReaderReadString();
        if (v14)
        {
          [a1 addHandoutIds:v14];
        }
      }

LABEL_43:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1000E8798(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = [v6 stats];
  v8 = v7;
  if (v7)
  {
    v9 = *(v7 + 80);
  }

  else
  {
    v9 = 0;
  }

  v10 = [*(a1 + 32) stats];
  v11 = v10;
  if (v10)
  {
    v12 = *(v10 + 112);
  }

  else
  {
    v12 = 0;
  }

  v13 = [v6 hasReachedRequestPayloadLimitBytes:v9 count:v12];

  if (!v13)
  {
    v14 = objc_alloc_init(PDDPIngestItem);
    v15 = v14;
    if (v5)
    {
      v16 = v5[3];
      [(PDDPIngestItem *)v15 setObjectId:v16];

      v17 = v5[2];
    }

    else
    {
      [(PDDPIngestItem *)v14 setObjectId:0];
      v17 = 0;
    }

    -[PDDPIngestItem setSyncType:](v15, "setSyncType:", [v17 syncType]);
    if (v5)
    {
      if (*(v5 + 8) == 1)
      {
        [(PDDPIngestItem *)v15 setAction:2];
LABEL_20:
        [*(a1 + 56) addItems:v15];
        v22 = [*(a1 + 56) data];
        [*(a1 + 56) clearItems];
        v31 = [*(a1 + 32) stats];
        v32 = [v22 length];
        if (v31)
        {
          v31[10] += v32;
        }

        v33 = *(a1 + 32);
        v34 = [v33 stats];
        v35 = v34;
        if (v34)
        {
          v36 = *(v34 + 80);
        }

        else
        {
          v36 = 0;
        }

        v37 = [*(a1 + 32) stats];
        v38 = v37;
        if (v37)
        {
          v39 = *(v37 + 112);
        }

        else
        {
          v39 = 0;
        }

        v40 = [v33 hasReachedRequestPayloadLimitBytes:v36 count:v39];

        if (v40)
        {
          *a3 = 1;
          v41 = [*(a1 + 32) stats];
          v42 = [v22 length];
          if (v41)
          {
            v41[10] -= v42;
          }
        }

        else
        {
          [*(a1 + 64) writeData:v22];
          v43 = [*(a1 + 32) stats];
          if (v43)
          {
            ++v43[14];
          }

          CLSInitLog();
          v44 = [*(a1 + 32) logSubsystem];
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
          {
            v52 = *(a1 + 32);
            v53 = objc_opt_class();
            v54 = *(a1 + 32);
            v55 = v53;
            v56 = [v54 operationID];
            v57 = [(PDDPIngestItem *)v15 dictionaryRepresentation];
            v61 = 138543874;
            v62 = v53;
            v63 = 2114;
            v64 = v56;
            v65 = 2112;
            v66 = v57;
            _os_log_debug_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "%{public}@ %{public}@ wrote ingest item: %@", &v61, 0x20u);
          }
        }

        goto LABEL_39;
      }

      [(PDDPIngestItem *)v15 setAction:1];
      v19 = v5[2];
      v18 = v5[3];
    }

    else
    {
      [(PDDPIngestItem *)v15 setAction:1];
      v19 = 0;
      v18 = 0;
    }

    v20 = *(a1 + 40);
    v21 = v18;
    v22 = [v20 select:v19 identity:v21];

    v23 = sub_1000186D4(v22, *(a1 + 40));
    [(PDDPIngestItem *)v15 setProgressEntity:v23];

    v24 = [(PDDPIngestItem *)v15 progressEntity];
    LODWORD(v21) = [v24 hasDateCreated];

    if (v21)
    {
      v25 = *(a1 + 72);
      v26 = [(PDDPIngestItem *)v15 progressEntity];
      v27 = [v26 dateCreated];
      [v27 setTimezoneOffset:v25];
    }

    if (sub_100018228(v22, *(a1 + 40)))
    {
      v28 = sub_1000183CC(v22, *(a1 + 40));
      if (!v28)
      {
        CLSInitLog();
        v45 = [*(a1 + 32) logSubsystem];
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          v58 = *(a1 + 32);
          v59 = objc_opt_class();
          v60 = *(a1 + 32);
          v49 = v59;
          v50 = [v60 operationID];
          v61 = 138543874;
          v62 = v59;
          v63 = 2114;
          v64 = v50;
          v65 = 2112;
          v66 = v15;
          v51 = "%{public}@ %{public}@ skipped ingest item: %@ was not able to populate PDDPHandoutAuthorizedMetaInfo";
          goto LABEL_42;
        }

LABEL_38:

        [*(a1 + 48) addObject:v5];
LABEL_39:

        goto LABEL_40;
      }

      v29 = v28;
      [(PDDPIngestItem *)v15 addHandoutAuthorizedMetaInfo:v28];
    }

    v30 = [(PDDPIngestItem *)v15 progressEntity];

    if (v30)
    {

      goto LABEL_20;
    }

    CLSInitLog();
    v45 = [*(a1 + 32) logSubsystem];
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      v46 = *(a1 + 32);
      v47 = objc_opt_class();
      v48 = *(a1 + 32);
      v49 = v47;
      v50 = [v48 operationID];
      v61 = 138543874;
      v62 = v47;
      v63 = 2114;
      v64 = v50;
      v65 = 2112;
      v66 = v15;
      v51 = "%{public}@ %{public}@ skipped ingest item: %@";
LABEL_42:
      _os_log_debug_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, v51, &v61, 0x20u);

      goto LABEL_38;
    }

    goto LABEL_38;
  }

  *a3 = 1;
LABEL_40:
}

uint64_t sub_1000E8D20(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(a1 + 40) deleteObject:{*(*(&v9 + 1) + 8 * v6), v9}])
        {
          v7 = 0;
          goto LABEL_11;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

id sub_1000E9BC0(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [NSURL URLWithString:a1[7]];
    v3 = [NSURLComponents componentsWithURL:v2 resolvingAgainstBaseURL:1];

    if (v3)
    {
      v1 = [v3 URL];
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

void sub_1000E9D40(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1000E9D50);
  }

  _Unwind_Resume(a1);
}

void sub_1000E9D6C(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x1000E9D78);
}

BOOL sub_1000E9D80(_BOOL8 result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (v1 == 0.0)
    {
      return 0;
    }

    v2 = *(result + 80);
    if (!v2)
    {
      return 0;
    }

    else
    {
      v3 = v1 + v2;
      v4 = +[NSDate date];
      [v4 timeIntervalSinceReferenceDate];
      v6 = v5;

      return v6 > v3;
    }
  }

  return result;
}

uint64_t sub_1000E9DF8(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  if (v2 == 0.0)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  v4 = v3 ? exp2(v3) : 0.0;
  v5 = v2 + v4;
  v6 = +[NSDate date];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;

  if (v5 <= v8)
  {
    return 0;
  }

  CLSInitLog();
  v9 = CLSLogOperations;
  v10 = 1;
  if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 48);
    v12 = *(a1 + 32);
    v15 = 138412802;
    if (v12)
    {
      v13 = @"to cooldown";
    }

    else
    {
      v13 = @"because server is busy";
    }

    v16 = v11;
    v17 = 2048;
    v18 = v5 - v8;
    v19 = 2112;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "endpoint %@ needs %f seconds %@.", &v15, 0x20u);
  }

  return v10;
}

id sub_1000EA914(void *a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v11[0] = @"lastSuccessTime";
    v3 = a2;
    v4 = +[NSDate date];
    [v4 timeIntervalSinceReferenceDate];
    v5 = [NSNumber numberWithDouble:?];
    v12[0] = v5;
    v12[1] = &off_10021B720;
    v11[1] = @"lastFailureTime";
    v11[2] = @"failureCounter";
    v12[2] = &off_10021B720;
    v6 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];

    v7 = objc_opt_class();
    v10 = v3;
    v8 = [NSArray arrayWithObjects:&v10 count:1];

    v2 = [v2 updateAll:v7 set:v6 where:@"identifier = ?" bindings:v8];
  }

  return v2;
}

id sub_1000EAA70(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 select:objc_opt_class() identity:v3];
    v5 = v4;
    if (v4)
    {
      v6 = *(v4 + 32);
      if (v6 >= 8)
      {
        v6 = 8;
      }

      v7 = v6 + 1;
    }

    else
    {
      v7 = 0;
    }

    v16[0] = @"lastFailureTime";
    v8 = +[NSDate date];
    [v8 timeIntervalSinceReferenceDate];
    v9 = [NSNumber numberWithDouble:?];
    v16[1] = @"failureCounter";
    v17[0] = v9;
    v10 = [NSNumber numberWithInteger:v7];
    v17[1] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];

    v12 = objc_opt_class();
    v15 = v3;
    v13 = [NSArray arrayWithObjects:&v15 count:1];
    a1 = [a1 updateAll:v12 set:v11 where:@"identifier = ?" bindings:v13];
  }

  return a1;
}

id sub_1000EAC18(void *a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = objc_opt_class();
    v7 = v3;
    v5 = [NSArray arrayWithObjects:&v7 count:1];

    v2 = [v2 updateAll:v4 set:&off_10021BAA8 where:@"identifier = ?" bindings:v5];
  }

  return v2;
}

id sub_1000EACE4(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  if (a1)
  {
    v4 = 3600;
    if (a3 < 3600)
    {
      v4 = a3;
    }

    v5 = v4;
    v6 = a2;
    v7 = [NSDate dateWithTimeIntervalSinceNow:v5];
    v14[0] = @"lastFailureTime";
    [v7 timeIntervalSinceReferenceDate];
    v8 = [NSNumber numberWithDouble:?];
    v14[1] = @"failureCounter";
    v15[0] = v8;
    v15[1] = &off_10021B720;
    v9 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];

    v10 = objc_opt_class();
    v13 = v6;
    v11 = [NSArray arrayWithObjects:&v13 count:1];

    v3 = [v3 updateAll:v10 set:v9 where:@"identifier = ?" bindings:v11];
  }

  return v3;
}

id sub_1000EAE50(id a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v8 = v3;
      v5 = [NSArray arrayWithObjects:&v8 count:1];
      v6 = @"serviceID = ?";
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    a1 = [a1 updateAll:objc_opt_class() set:&off_10021BAD0 where:v6 bindings:v5];
  }

  return a1;
}

id *sub_1000EB46C(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v18.receiver = a1;
    v18.super_class = PDServerScheduledEvent;
    a1 = objc_msgSendSuper2(&v18, "init");
    if (a1)
    {
      v8 = v7;
      v9 = v6;
      objc_opt_self();
      [v8 timeIntervalSinceReferenceDate];
      v11 = v10;

      v12 = [NSString stringWithFormat:@"%@:%f", v9, v11];

      v13 = [v12 sha224];

      v14 = a1[1];
      a1[1] = v13;

      objc_storeStrong(a1 + 2, a2);
      v15 = +[NSDate date];
      v16 = a1[3];
      a1[3] = v15;

      objc_storeStrong(a1 + 4, a1[3]);
      objc_storeStrong(a1 + 5, a3);
    }
  }

  return a1;
}

uint64_t sub_1000EDA70(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
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
      LOBYTE(v54) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v54 & 0x7F) << v5;
      if ((v54 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
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

    switch((v12 >> 3))
    {
      case 1u:
        v13 = PBReaderReadString();
        v14 = 112;
        goto LABEL_81;
      case 2u:
        v13 = PBReaderReadString();
        v14 = 16;
        goto LABEL_81;
      case 3u:
        v13 = PBReaderReadString();
        v14 = 80;
        goto LABEL_81;
      case 4u:
        v13 = PBReaderReadString();
        v14 = 96;
        goto LABEL_81;
      case 5u:
        v13 = PBReaderReadString();
        v14 = 64;
        goto LABEL_81;
      case 6u:
        v13 = PBReaderReadString();
        v14 = 88;
        goto LABEL_81;
      case 7u:
        v13 = PBReaderReadString();
        v14 = 56;
        goto LABEL_81;
      case 8u:
        v13 = PBReaderReadString();
        v14 = 144;
        goto LABEL_81;
      case 9u:
        v13 = PBReaderReadString();
        v14 = 152;
        goto LABEL_81;
      case 0xAu:
        v13 = PBReaderReadString();
        v14 = 136;
        goto LABEL_81;
      case 0xBu:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 172) |= 2u;
        while (1)
        {
          LOBYTE(v54) = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v54 & 0x7F) << v37;
          if ((v54 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v11 = v38++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_106;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v39;
        }

LABEL_106:
        v52 = 104;
        goto LABEL_107;
      case 0xCu:
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 172) |= 8u;
        while (1)
        {
          LOBYTE(v54) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v54 & 0x7F) << v17;
          if ((v54 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            LOBYTE(v23) = 0;
            goto LABEL_96;
          }
        }

        v23 = (v19 != 0) & ~[a2 hasError];
LABEL_96:
        v51 = 169;
        goto LABEL_110;
      case 0xDu:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 172) |= 4u;
        while (1)
        {
          LOBYTE(v54) = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v54 & 0x7F) << v24;
          if ((v54 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            LOBYTE(v23) = 0;
            goto LABEL_98;
          }
        }

        v23 = (v26 != 0) & ~[a2 hasError];
LABEL_98:
        v51 = 168;
        goto LABEL_110;
      case 0xEu:
        v15 = objc_alloc_init(PDDPDate);
        v16 = 24;
        goto LABEL_63;
      case 0xFu:
        v15 = objc_alloc_init(PDDPDate);
        v16 = 32;
LABEL_63:
        objc_storeStrong((a1 + v16), v15);
        v54 = 0;
        v55 = 0;
        if (!PBReaderPlaceMark() || !PDDPDateReadFrom(v15, a2))
        {
          goto LABEL_112;
        }

        goto LABEL_69;
      case 0x10u:
        v15 = objc_alloc_init(PDDPPersonLinkId);
        [a1 addPersonLinks:v15];
        v54 = 0;
        v55 = 0;
        if (!PBReaderPlaceMark() || !sub_100043DAC(v15, a2))
        {
          goto LABEL_112;
        }

        goto LABEL_69;
      case 0x11u:
        v13 = PBReaderReadString();
        v14 = 40;
        goto LABEL_81;
      case 0x12u:
        v13 = PBReaderReadString();
        v14 = 72;
        goto LABEL_81;
      case 0x13u:
        v15 = objc_alloc_init(PDDPRoleLocation);
        [a1 addRoleLocations:v15];
        v54 = 0;
        v55 = 0;
        if (PBReaderPlaceMark() && sub_100091D50(v15, a2))
        {
          goto LABEL_69;
        }

        goto LABEL_112;
      case 0x14u:
        v45 = 0;
        v46 = 0;
        v47 = 0;
        *(a1 + 172) |= 0x10u;
        while (1)
        {
          LOBYTE(v54) = 0;
          v48 = [a2 position] + 1;
          if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
          {
            v50 = [a2 data];
            [v50 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v47 |= (v54 & 0x7F) << v45;
          if ((v54 & 0x80) == 0)
          {
            break;
          }

          v45 += 7;
          v11 = v46++ >= 9;
          if (v11)
          {
            LOBYTE(v23) = 0;
            goto LABEL_109;
          }
        }

        v23 = (v47 != 0) & ~[a2 hasError];
LABEL_109:
        v51 = 170;
LABEL_110:
        *(a1 + v51) = v23;
        goto LABEL_82;
      case 0x15u:
        v15 = objc_alloc_init(PDDPEntityMeta);
        objc_storeStrong((a1 + 48), v15);
        v54 = 0;
        v55 = 0;
        if (PBReaderPlaceMark() && sub_1000B408C(v15, a2))
        {
LABEL_69:
          PBReaderRecallMark();

LABEL_82:
          v44 = [a2 position];
          if (v44 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_112:

        return 0;
      case 0x16u:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 172) |= 1u;
        while (1)
        {
          LOBYTE(v54) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v54 & 0x7F) << v30;
          if ((v54 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_102;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v32;
        }

LABEL_102:
        v52 = 8;
LABEL_107:
        *(a1 + v52) = v36;
        goto LABEL_82;
      case 0x17u:
        v13 = PBReaderReadString();
        v14 = 128;
LABEL_81:
        v43 = *(a1 + v14);
        *(a1 + v14) = v13;

        goto LABEL_82;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_82;
    }
  }
}

uint64_t sub_1000F0C58(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v26[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26[0] & 0x7F) << v5;
        if ((v26[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v23 = objc_alloc_init(PDDPTypedValue);
        objc_storeStrong((a1 + 24), v23);
        v26[0] = 0;
        v26[1] = 0;
        if (!PBReaderPlaceMark() || !sub_100154054(v23, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 2)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          LOBYTE(v26[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v26[0] & 0x7F) << v16;
          if ((v26[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_38;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_38:
        *(a1 + 16) = v22;
      }

      else if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = *(a1 + 8);
        *(a1 + 8) = v14;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void *sub_1000F1454(void *a1, void *a2, double a3)
{
  v5 = a2;
  if (a1)
  {
    [a1 timeIntervalSinceDate:v5];
    v7 = v6;
    v8 = [a1 compare:v5];
    if (v8 == -1 && v7 > -a3)
    {
      a1 = 0;
    }

    else if (v7 < a3 && v8 == 1)
    {
      a1 = 0;
    }

    else
    {
      a1 = v8;
    }
  }

  return a1;
}

void sub_1000F1A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37)
{
  objc_destroyWeak((v37 + 48));
  objc_destroyWeak((v40 + 40));
  objc_destroyWeak((v39 + 32));
  objc_destroyWeak((v38 + 32));
  objc_destroyWeak(&a37);
  objc_destroyWeak((v41 - 168));
  _Unwind_Resume(a1);
}

void sub_1000F1AA0(uint64_t a1)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v18;
    do
    {
      v5 = 0;
      do
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v17 + 1) + 8 * v5);
        v7 = objc_autoreleasePoolPush();
        v8 = objc_alloc_init(CKFetchRecordZoneChangesConfiguration);
        v9 = *(a1 + 40);
        v10 = objc_opt_class();
        v11 = [v6 zoneName];
        v12 = [v9 select:v10 identity:v11];

        if (v12)
        {
          v13 = v12[1];
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;
        [v8 setPreviousServerChangeToken:v14];

        [v8 setResultsLimit:600];
        [*(a1 + 48) setObject:v8 forKey:v6];

        objc_autoreleasePoolPop(v7);
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v15 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      v3 = v15;
    }

    while (v15);
  }
}

void sub_1000F1C50(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  if (v8)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v12 = WeakRetained;
      if (([WeakRetained isAborted] & 1) == 0)
      {
        [v12 serverChangedRecord:v8];
      }
    }
  }

  else
  {
    CLSInitLog();
    v13 = CLSLogSync;
    if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_ERROR))
    {
      v14 = 138543618;
      v15 = v7;
      v16 = 2114;
      v17 = v9;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to get changed CK record; recordID: %{public}@, error: %{public}@", &v14, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v10);
}

void sub_1000F1D84(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained && ([WeakRetained isAborted] & 1) == 0)
  {
    [v8 serverDeletedRecordWithID:v9 type:v5];
  }

  objc_autoreleasePoolPop(v6);
}

void sub_1000F1E20(uint64_t a1, void *a2, void *a3, void *a4)
{
  v15 = a2;
  v7 = a3;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained && ([WeakRetained isAborted] & 1) == 0)
  {
    v12 = objc_alloc_init(PDCKRecordZone);
    v13 = [v15 zoneName];
    sub_10008122C(v12, v13);

    sub_10008120C(v12, v7);
    sub_10008121C(v12, v8);
    v14 = [v11 database];
    [v14 insertOrUpdateObject:v12];
  }

  objc_autoreleasePoolPop(v9);
}

void sub_1000F1F2C(uint64_t a1, void *a2, void *a3, void *a4, int a5, void *a6)
{
  v21 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v16 = WeakRetained;
  if (WeakRetained && ([WeakRetained isAborted] & 1) == 0)
  {
    v17 = [v16 isExpiredSyncTokenError:v13];
    v18 = objc_alloc_init(PDCKRecordZone);
    v19 = [v21 zoneName];
    sub_10008122C(v18, v19);

    if (v17)
    {
      sub_10008120C(v18, 0);
    }

    else
    {
      sub_10008120C(v18, v11);
      sub_10008121C(v18, v12);
    }

    v20 = [v16 database];
    [v20 insertOrUpdateObject:v18];

    if ((v17 | a5) == 1)
    {
      [*(a1 + 32) addObject:v21];
    }
  }

  objc_autoreleasePoolPop(v14);
}

uint64_t sub_1000F2094(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
    WeakRetained = [WeakRetained isAborted];
    v3 = v7;
    if ((WeakRetained & 1) == 0)
    {
      v4 = [*(a1 + 32) count];
      v5 = *(a1 + 40);
      if (v4)
      {
        WeakRetained = [v5 fetchChangesInZonesWithZoneIDs:*(a1 + 32)];
      }

      else
      {
        WeakRetained = [v5 markAsFinished];
      }

      v3 = v7;
    }
  }

  return _objc_release_x1(WeakRetained, v3);
}

void sub_1000F2310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F2334(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) recordID];
  v5 = [v4 recordName];
  v6 = [v3 select:v2 identity:v5];

  if (!v6 || [v6 syncBackend:*(a1 + 32)])
  {
LABEL_5:
    v8 = [*(a1 + 48) objectForCKRecord:*(a1 + 40)];
    if (!v8)
    {
      v7 = 1;
LABEL_27:

      goto LABEL_28;
    }

    v9 = *(a1 + 32);
    v10 = objc_opt_class();
    v11 = [v8 objectID];
    v40 = v11;
    v12 = [NSArray arrayWithObjects:&v40 count:1];
    v13 = [v9 select:v10 where:@"entityIdentity = ?" bindings:v12];

    if ([v13 state] == 3)
    {
      CLSInitLog();
      v14 = CLSLogSync;
      if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_DEBUG))
      {
        v15 = *(a1 + 40);
        v16 = v14;
        v17 = [v15 recordID];
        *buf = 138412546;
        v37 = v15;
        v38 = 2114;
        v39 = v17;
        _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Skipping insert of record to DB b/c it is in the PDPendingCKSyncItem table marked for deletion; record: %@, recordID: %{public}@", buf, 0x16u);
      }

      goto LABEL_12;
    }

    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      v18 = v8;
      v19 = [v6 dateLastModified];
      v20 = [v18 dateLastModified];

      v21 = sub_1000F1454(v19, v20, 5.0);
      if (v21 != -1)
      {
LABEL_12:
        v7 = 1;
LABEL_26:

        goto LABEL_27;
      }
    }

    v22 = [v8 parentObjectID];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 || !v22 || [*(a1 + 32) syncableDatabaseEntityExistsByObjectID:v22])
    {
      if (([*(a1 + 48) processObject:v8 andUpdateSyncMetadataForRecord:*(a1 + 40)] & 1) == 0)
      {
        v7 = 0;
LABEL_25:

        goto LABEL_26;
      }

      v23 = [*(a1 + 40) recordID];
      v24 = [v23 recordName];

      if (!v24)
      {
        v7 = 1;
        goto LABEL_25;
      }

      v25 = *(a1 + 48);
      v35 = v24;
      v26 = [NSArray arrayWithObjects:&v35 count:1];
      v27 = [v25 processPendingSyncUpdatesWithParentRecordIDs:v26];
    }

    else
    {
      v24 = objc_alloc_init(PDPendingSyncUpdate);
      v28 = [*(a1 + 40) recordID];
      v29 = [v28 recordName];
      v31 = v29;
      if (v24)
      {
        objc_setProperty_nonatomic_copy(v24, v30, v29, 16);

        objc_setProperty_nonatomic_copy(v24, v32, v22, 8);
        objc_setProperty_nonatomic_copy(v24, v33, *(a1 + 40), 24);
      }

      else
      {
      }

      v26 = [*(a1 + 48) database];
      v27 = [v26 insertOrUpdateObject:v24];
    }

    v7 = v27;

    goto LABEL_25;
  }

  objc_opt_class();
  v7 = 1;
  if (objc_opt_isKindOfClass())
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    goto LABEL_5;
  }

LABEL_28:

  return v7;
}

void sub_1000F2D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000F2D78(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = a1[4];
  v12 = v5;
  if (v5)
  {
    v7 = v5[3];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  *(*(a1[6] + 8) + 24) = [v6 processPendingRecord:v8];

  if (*(*(a1[6] + 8) + 24))
  {
    v9 = a1[5];
    if (v12)
    {
      v10 = v12[2];
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    [v9 addObject:v11];
  }

  else
  {
    *a3 = 1;
  }
}

uint64_t sub_1000F2FFC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) deleteSyncMetadataAssociatedWithRecordID:*(a1 + 40)];
  v3 = +[PDCKOperation recordTypeToEntityMap];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 48)];

  v5 = [*(a1 + 56) select:v4 identity:*(a1 + 64)];
  v6 = v5;
  if (v5 && ![v5 syncBackend:*(a1 + 56)])
  {
    v12 = 1;
  }

  else
  {
    v20 = *(a1 + 64);
    v7 = [NSArray arrayWithObjects:&v20 count:1];
    v8 = [v4 identityColumnName];
    v9 = [v8 stringByAppendingString:@" = ?"];
    CLSInitLog();
    v10 = CLSLogSync;
    if (os_log_type_enabled(CLSLogSync, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 64);
      v14 = 138412802;
      v15 = v4;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Deleting: %@ where %@ = %@", &v14, 0x20u);
    }

    v12 = [*(a1 + 56) deleteAll:v4 where:v9 bindings:v7];
  }

  objc_autoreleasePoolPop(v2);
  return v12;
}

uint64_t sub_1000F367C(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
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
        LOBYTE(v28[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v28 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v28[0] & 0x7F) << v5;
        if ((v28[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            v14 = PBReaderReadString();
            v15 = 48;
            goto LABEL_47;
          }

          if (v13 != 8)
          {
            goto LABEL_50;
          }

          v16 = objc_alloc_init(PDDPDate);
          v17 = 16;
        }

        else
        {
          if (v13 != 5)
          {
            if (v13 == 6)
            {
              v14 = PBReaderReadString();
              v15 = 8;
              goto LABEL_47;
            }

            goto LABEL_50;
          }

          v16 = objc_alloc_init(PDDPDate);
          v17 = 32;
        }
      }

      else
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v18 = 0;
            v19 = 0;
            v20 = 0;
            *(a1 + 68) |= 1u;
            while (1)
            {
              LOBYTE(v28[0]) = 0;
              v21 = [a2 position] + 1;
              if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
              {
                v23 = [a2 data];
                [v23 getBytes:v28 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v20 |= (v28[0] & 0x7F) << v18;
              if ((v28[0] & 0x80) == 0)
              {
                break;
              }

              v18 += 7;
              v11 = v19++ >= 9;
              if (v11)
              {
                v24 = 0;
                goto LABEL_55;
              }
            }

            if ([a2 hasError])
            {
              v24 = 0;
            }

            else
            {
              v24 = v20;
            }

LABEL_55:
            *(a1 + 64) = v24;
            goto LABEL_48;
          }

          if (v13 == 2)
          {
            v14 = PBReaderReadString();
            v15 = 56;
LABEL_47:
            v25 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_48;
          }

LABEL_50:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_48;
        }

        if (v13 == 3)
        {
          v14 = PBReaderReadString();
          v15 = 40;
          goto LABEL_47;
        }

        if (v13 != 4)
        {
          goto LABEL_50;
        }

        v16 = objc_alloc_init(PDDPDate);
        v17 = 24;
      }

      objc_storeStrong((a1 + v17), v16);
      v28[0] = 0;
      v28[1] = 0;
      if (!PBReaderPlaceMark() || !PDDPDateReadFrom(v16, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_48:
      v26 = [a2 position];
    }

    while (v26 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id *sub_1000F43B0(id *a1, void *a2, objc_class *a3, id a4, int a5)
{
  v10 = a2;
  if (a1)
  {
    v20.receiver = a1;
    v20.super_class = PDObserverTrackedItem;
    v11 = objc_msgSendSuper2(&v20, "init");
    a1 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 4, a2);
      v12 = NSStringFromClass(a3);
      v13 = a1[3];
      a1[3] = v12;

      if (*(a1 + 14) != a5 || a1[5] != a4)
      {
        a1[5] = a4;
        *(a1 + 14) = a5;
        v14 = +[NSDate date];
        v15 = a1[6];
        a1[6] = v14;
      }

      objc_opt_self();
      v16 = +[NSUUID UUID];
      v17 = [v16 UUIDString];

      v18 = a1[2];
      a1[2] = v17;
    }
  }

  return a1;
}

id sub_1000F49A0(uint64_t a1, objc_class *a2, void *a3)
{
  v4 = a3;
  objc_opt_self();
  v5 = NSStringFromClass(a2);
  v6 = [(objc_class *)a2 entityName];
  if (v4)
  {
    v7 = v4[3];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [NSString stringWithFormat:@"%@.", v6];
  v10 = [v8 stringByReplacingOccurrencesOfString:v9 withString:@"E."];

  v11 = [(objc_class *)a2 identityColumnName];
  v12 = [NSString stringWithFormat:@"select count(*) as count from PDObserverTrackedItem as T left join %@ as E on T.entityID = E.%@ and T.entityClassName = '%@' where T.observerChangeID > ? and (%@)", v6, v11, v5, v10];;

  return v12;
}

id sub_1000F4ACC(uint64_t a1, objc_class *a2, void *a3)
{
  v4 = a3;
  objc_opt_self();
  v5 = NSStringFromClass(a2);
  v6 = [(objc_class *)a2 entityName];
  if (v4)
  {
    v7 = v4[3];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [NSString stringWithFormat:@"%@.", v6];
  v10 = [v8 stringByReplacingOccurrencesOfString:v9 withString:@"E."];

  v11 = [(objc_class *)a2 identityColumnName];
  v12 = [NSString stringWithFormat:@"select * from PDObserverTrackedItem as T left join %@ as E on T.entityID = E.%@ and T.entityClassName = '%@' where T.observerChangeID > ? and (%@)", v6, v11, v5, v10];;

  return v12;
}

void *sub_1000F4BF8(void *a1, objc_class *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v11 = NSStringFromClass(a2);
    if (v9)
    {
      if ([v10 count])
      {
        v12 = [NSNumber numberWithInteger:a5];
        v13 = [NSMutableArray arrayWithObject:v12];
        [v13 addObjectsFromArray:v10];
        v14 = [NSArray arrayWithArray:v13];
      }

      else
      {
        v12 = [NSNumber numberWithInteger:a5];
        v29 = v12;
        v14 = [NSArray arrayWithObjects:&v29 count:1];
      }

      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1000F4E94;
      v20[3] = &unk_1002033E8;
      v20[4] = a1;
      v21 = v9;
      v15 = v14;
      v22 = v15;
      v23 = &v24;
      sub_10010BE68(a1, v20);
    }

    else
    {
      v15 = [NSNumber numberWithInteger:a5];
      v16 = objc_opt_class();
      v28[0] = v11;
      v28[1] = v15;
      v17 = [NSArray arrayWithObjects:v28 count:2];
      v18 = [a1 count:v16 where:@"entityClassName = ? and observerChangeID > ?" bindings:v17];
      v25[3] = v18;
    }

    a1 = v25[3];
    _Block_object_dispose(&v24, 8);
  }

  return a1;
}

void sub_1000F4E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F4E94(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000F4F10;
  v5[3] = &unk_100202190;
  v3 = a1[6];
  v5[4] = a1[7];
  return sub_1000B9298(v2, v1, 1, v3, v5);
}

void sub_1000F4F10(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10016D778(a2, @"count");
  *(*(*(a1 + 32) + 8) + 24) = [v3 integerValue];
}

void sub_1000F4F78(void *a1, objc_class *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (a1)
  {
    v14 = NSStringFromClass(a2);
    if (v11)
    {
      v15 = v11;
      v16 = [v12 count];
      v17 = [NSNumber numberWithInteger:a5];
      v18 = v17;
      if (v16)
      {
        v19 = [NSMutableArray arrayWithObject:v17];
        [v19 addObjectsFromArray:v12];
        v20 = [NSArray arrayWithArray:v19];
      }

      else
      {
        v29 = v17;
        v20 = [NSArray arrayWithObjects:&v29 count:1];
      }

      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1000F51D0;
      v24[3] = &unk_100202630;
      v24[4] = a1;
      v23 = v15;
      v25 = v23;
      v22 = v20;
      v26 = v22;
      v27 = v13;
      sub_10010BE68(a1, v24);
    }

    else
    {
      v21 = [NSNumber numberWithInteger:a5];
      v28[0] = v14;
      v28[1] = v21;
      v22 = [NSArray arrayWithObjects:v28 count:2];
      v23 = @"entityClassName = ? and observerChangeID > ?";
      [a1 selectAll:objc_opt_class() where:@"entityClassName = ? and observerChangeID > ?" bindings:v22 block:v13];
    }
  }
}

void sub_1000F51D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000F5270;
  v4[3] = &unk_100204F18;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  sub_1000B9298(v1, v2, 1, v3, v4);
}

void sub_1000F5270(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = [[PDObserverTrackedItem alloc] initWithDatabaseRow:v3];
  }

  else
  {
    v4 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

id sub_1000F5304(id a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = objc_opt_new();
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000F53F0;
    v9[3] = &unk_100204F40;
    v13 = a2;
    v10 = v5;
    v7 = v6;
    v11 = v7;
    v12 = a1;
    sub_10010BE68(a1, v9);
    a1 = v7;
  }

  return a1;
}

void sub_1000F53F0(uint64_t a1)
{
  v2 = [*(a1 + 56) entityName];
  v3 = [*(a1 + 56) identityColumnName];
  if ([*(a1 + 32) count])
  {
    v4 = [NSString stringWithFormat:@"select entityID from PDObserverTrackedItem where entityClassName = '%@' and entityID in ", v2];
    v5 = [PDDatabase whereSQLForArray:*(a1 + 32) prefix:v4];

    v6 = *(a1 + 40);
    v7 = *(a1 + 32);
    [v6 addObjectsFromArray:v7];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000F55CC;
    v13[3] = &unk_1002031B0;
    v8 = *(a1 + 48);
    v14 = *(a1 + 40);
    sub_1000B9298(v8, v5, 1, v7, v13);
  }

  else
  {
    v5 = [NSString stringWithFormat:@"select E.%@ from %@ as E  where E.%@ not in   (select entityID from PDObserverTrackedItem as T    where T.entityClassName = '%@')", v3, v2, v3, v2];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000F5630;
    v10[3] = &unk_100202000;
    v9 = *(a1 + 48);
    v11 = *(a1 + 40);
    v12 = v3;
    sub_1000B9298(v9, v5, 1, 0, v10);

    v7 = v11;
  }
}

void sub_1000F55CC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = sub_10016D778(a2, @"entityID");
  [v2 removeObject:v3];
}

void sub_1000F5630(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = sub_10016D778(a2, *(a1 + 40));
  [v2 addObject:v3];
}

void sub_1000F568C(void *a1, void *a2, int a3)
{
  v5 = a2;
  if (a1)
  {
    if (objc_opt_respondsToSelector())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        v8 = [v5 identityValue];
        v9 = [PDObserverTrackedItem alloc];
        v10 = objc_opt_class();
        v11 = sub_1000F43B0(&v9->super.isa, v8, v10, [v5 changeHash], a3);
        if (([a1 insertObject:v11] & 1) == 0)
        {
          CLSInitLog();
          v12 = CLSLogNotifications;
          if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
          {
            v13 = 138412290;
            v14 = v7;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "PDObserverTrackedItem trackChangeForObject: failed to update for entity:%@", &v13, 0xCu);
          }
        }
      }
    }
  }
}

void *sub_1000F580C(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = sub_1000F5938;
    v9 = sub_1000F5948;
    v10 = 0;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000F5950;
    v4[3] = &unk_100204F68;
    v4[4] = &v5;
    [a1 selectAll:objc_opt_class() where:0 orderBy:@"observerChangeID desc" limit:1 offset:0 bindings:0 block:v4];
    v2 = v6[5];
    if (v2)
    {
      v1 = *(v2 + 8);
    }

    else
    {
      v1 = 0;
    }

    _Block_object_dispose(&v5, 8);
  }

  return v1;
}

void sub_1000F5920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F5938(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000F5988(void *a1)
{
  if (a1)
  {
    v2 = [NSDate dateWithTimeIntervalSinceNow:-1800.0];
    v3 = objc_opt_class();
    v5 = v2;
    v4 = [NSArray arrayWithObjects:&v5 count:1];
    [a1 deleteAll:v3 where:@"dateLastChanged < ?" bindings:v4];
  }
}

void sub_1000F5AA8(id a1)
{
  v1 = +[CLSActivity recordType];
  v9[0] = v1;
  v2 = +[CLSBinaryItem recordType];
  v9[1] = v2;
  v3 = +[CLSQuantityItem recordType];
  v9[2] = v3;
  v4 = +[CLSScoreItem recordType];
  v9[3] = v4;
  v5 = +[CLSRange recordType];
  v9[4] = v5;
  v6 = +[CLSTimeInterval recordType];
  v9[5] = v6;
  v7 = [NSArray arrayWithObjects:v9 count:6];
  v8 = qword_10024DAA0;
  qword_10024DAA0 = v7;
}

void sub_1000F5C2C(id a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = sub_1000F5CC0();
  v3 = [v2 keyEnumerator];
  v4 = [v3 allObjects];

  v5 = [v4 sortedArrayUsingComparator:&stru_100204FE8];
  v6 = qword_10024DAA8;
  qword_10024DAA8 = v5;

  objc_autoreleasePoolPop(v1);
}

id sub_1000F5CC0()
{
  if (qword_10024DAD0 != -1)
  {
    dispatch_once(&qword_10024DAD0, &stru_100205208);
  }

  v1 = qword_10024DAC8;

  return v1;
}

int64_t sub_1000F5D14(id a1, Class a2, Class a3)
{
  if (objc_opt_respondsToSelector())
  {
    v5 = [(objc_class *)a2 migrationOrder];
  }

  else
  {
    v5 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [(objc_class *)a3 migrationOrder];
  }

  else
  {
    v6 = 0;
  }

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 != v6;
  }
}

id sub_1000F5E4C()
{
  if (qword_10024DAE0 != -1)
  {
    dispatch_once(&qword_10024DAE0, &stru_100205228);
  }

  v1 = qword_10024DAD8;

  return v1;
}

uint64_t sub_1000F67C0(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        LODWORD(v7) = [*(a1 + 40) _insertObject:{v7, v11}];
        objc_autoreleasePoolPop(v8);
        if (!v7)
        {
          v9 = 0;
          goto LABEL_11;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  return v9;
}

uint64_t sub_1000F6E94(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        LODWORD(v7) = [*(a1 + 40) _updateObject:{v7, v11}];
        objc_autoreleasePoolPop(v8);
        if (!v7)
        {
          v9 = 0;
          goto LABEL_11;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  return v9;
}

uint64_t sub_1000F7560(id *a1)
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = a1[4];
  v2 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v21;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v21 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v20 + 1) + 8 * i);
        v7 = objc_autoreleasePoolPush();
        v8 = objc_opt_class();
        v9 = [v8 identityColumnName];
        v10 = a1[5];
        if (!v9)
        {
          v17 = [a1[5] _insertObject:v6];
          objc_autoreleasePoolPop(v7);
          goto LABEL_17;
        }

        v11 = v9;
        v12 = [v6 identityValue];
        v13 = [v10 entityExistsByClass:v8 identity:v12];

        v14 = a1[5];
        if (v13)
        {
          v15 = [v14 _updateObject:v6];

          objc_autoreleasePoolPop(v7);
          if ((v15 & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v16 = [v14 _insertObject:v6];
          [a1[6] addObject:v6];

          objc_autoreleasePoolPop(v7);
          if (!v16)
          {
LABEL_16:
            v17 = 0;
            goto LABEL_17;
          }
        }
      }

      v3 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      v17 = 1;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v17 = 1;
  }

LABEL_17:

  return v17;
}

id sub_1000F79F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) willBeDeletedFromDatabase:*(a1 + 40)];
  }

  v3 = *(a1 + 32);
  if ((objc_opt_respondsToSelector() & 1) != 0 && [*(a1 + 32) isDeleteTracked])
  {
    v4 = [*(a1 + 40) trackDeletedObject:*(a1 + 32)];
    [*(a1 + 40) insertOrUpdateObject:v4];
  }

  v5 = objc_alloc_init(NSMutableString);
  [v5 appendString:*(a1 + 48)];
  [v5 appendString:@" = ?"];
  v6 = *(a1 + 32);
  v7 = [objc_opt_class() entityName];
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) identityValue];
  v13 = v9;
  v10 = [NSArray arrayWithObjects:&v13 count:1];
  LODWORD(v8) = sub_1000B9714(v8, v7, v5, v10);

  if (v8)
  {
    if (sub_10010C5DC(*(a1 + 40), v7))
    {
      sub_1000F568C(*(a1 + 40), *(a1 + 32), 3);
    }

    v11 = [*(a1 + 40) markObject:*(a1 + 32) as:3];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_1000F7DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F7E14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000F8018(uint64_t a1)
{
  v2 = [*(a1 + 72) entityName];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 80);
  v6 = *(a1 + 88);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000F8110;
  v11[3] = &unk_100205038;
  v10 = *(a1 + 64);
  v9 = v10;
  v12 = v10;
  sub_1000B97E8(v3, @"*", v2, v4, 0, v7, v5, v6, v8, v11);
}

void sub_1000F8110(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [[v3 alloc] initWithDatabaseRow:v4];

  (*(*(a1 + 32) + 16))();
}

unint64_t sub_1000F82A0(void **a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1[4])
  {
    v3 = objc_opt_new();
    v4 = objc_opt_new();
    v5 = a1[8];
    v7 = a1[4];
    v6 = a1[5];
    v8 = a1[6];
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_1000F87C4;
    v61[3] = &unk_100205088;
    v46 = v3;
    v62 = v46;
    v47 = v4;
    v63 = v47;
    [v6 selectAll:v5 where:v7 bindings:v8 block:v61];
  }

  else
  {
    v46 = 0;
    v47 = 0;
  }

  v9 = [a1[7] count];
  v10 = [[NSMutableArray alloc] initWithCapacity:v9];
  v11 = [[NSMutableArray alloc] initWithCapacity:v9];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v12 = a1[7];
  v13 = [v12 countByEnumeratingWithState:&v57 objects:v66 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v58;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v58 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v57 + 1) + 8 * i);
        v18 = objc_autoreleasePoolPush();
        [v10 addObject:v17];
        v19 = [a1[7] objectForKeyedSubscript:v17];
        [v11 addObject:v19];

        objc_autoreleasePoolPop(v18);
      }

      v14 = [v12 countByEnumeratingWithState:&v57 objects:v66 count:16];
    }

    while (v14);
  }

  v20 = [a1[8] entityName];
  v21 = sub_1000B9548(a1[5], v20, v10, v11, a1[4], a1[6]);
  v22 = v46;
  if (v21)
  {
    if (sub_10010C5DC(a1[5], v20))
    {
      v44 = v20;
      v45 = v2;
      if (a1[4])
      {
        v23 = objc_autoreleasePoolPush();
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v24 = v47;
        v25 = [v24 countByEnumeratingWithState:&v53 objects:v65 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v54;
          do
          {
            for (j = 0; j != v26; j = j + 1)
            {
              if (*v54 != v27)
              {
                objc_enumerationMutation(v24);
              }

              sub_1000F568C(a1[5], *(*(&v53 + 1) + 8 * j), 2);
            }

            v26 = [v24 countByEnumeratingWithState:&v53 objects:v65 count:16];
          }

          while (v26);
        }

        objc_autoreleasePoolPop(v23);
        v2 = v45;
      }

      else
      {
        v43 = +[NSDate date];
        v29 = [v43 hash];
        sub_1000F5304(a1[5], a1[8], 0);
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        obj = v52 = 0u;
        v30 = [obj countByEnumeratingWithState:&v49 objects:v64 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v50;
          do
          {
            for (k = 0; k != v31; k = k + 1)
            {
              if (*v50 != v32)
              {
                objc_enumerationMutation(obj);
              }

              v34 = *(*(&v49 + 1) + 8 * k);
              v35 = objc_autoreleasePoolPush();
              v36 = sub_1000F43B0([PDObserverTrackedItem alloc], v34, a1[8], v29, 2);
              [a1[5] insertObject:v36];

              objc_autoreleasePoolPop(v35);
            }

            v31 = [obj countByEnumeratingWithState:&v49 objects:v64 count:16];
          }

          while (v31);
        }

        v2 = v45;
        v22 = v46;
        v21 = v21;
      }

      v20 = v44;
    }

    if ([v22 count])
    {
      v37 = v20;
      v38 = [a1[8] identityColumnName];
      v39 = [NSString stringWithFormat:@"%@ in ", v38];
      v40 = [PDDatabase whereSQLForArray:v22 prefix:v39];

      v20 = v37;
      v41 = v22;
    }

    else
    {
      v40 = 0;
      v41 = 0;
    }

    [a1[5] markAll:a1[8] where:v40 bindings:v41 as:2];
    [a1[5] generateInsightEventsForClass:a1[8] where:v40 bindings:v41];
  }

  objc_autoreleasePoolPop(v2);
  return v21;
}

void sub_1000F87C4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v5 identityValue];
  [v3 addObject:v4];

  [*(a1 + 40) addObject:v5];
}

void *sub_1000F8928(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 56);
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *(a1 + 48);
  v9 = *(a1 + 56);
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1000F8C24;
  v38[3] = &unk_1002050D8;
  v11 = v4;
  v39 = v11;
  v12 = v5;
  v43 = v3;
  v13 = *(a1 + 32);
  v40 = v12;
  v41 = v13;
  v14 = v6;
  v42 = v14;
  [v7 selectAll:v9 where:v8 bindings:v10 block:v38];
  if (*(a1 + 64) != 1)
  {
    goto LABEL_10;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v34 objects:v45 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v35;
    do
    {
      v19 = 0;
      do
      {
        if (*v35 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(a1 + 32) insertObject:*(*(&v34 + 1) + 8 * v19)];
        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v34 objects:v45 count:16];
    }

    while (v17);
  }

  if (![*(a1 + 32) markAll:*(a1 + 56) where:*(a1 + 40) bindings:*(a1 + 48) as:3])
  {
    v21 = 0;
  }

  else
  {
LABEL_10:
    v20 = [*(a1 + 56) entityName];
    v21 = sub_1000B9714(*(a1 + 32), v20, *(a1 + 40), *(a1 + 48));
    if (sub_10010C5DC(*(a1 + 32), v20))
    {
      v29 = v2;
      context = objc_autoreleasePoolPush();
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v22 = v12;
      v23 = [v22 countByEnumeratingWithState:&v30 objects:v44 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v31;
        do
        {
          v26 = 0;
          do
          {
            if (*v31 != v25)
            {
              objc_enumerationMutation(v22);
            }

            sub_1000F568C(*(a1 + 32), *(*(&v30 + 1) + 8 * v26), 3);
            v26 = v26 + 1;
          }

          while (v24 != v26);
          v24 = [v22 countByEnumeratingWithState:&v30 objects:v44 count:{16, context}];
        }

        while (v24);
      }

      objc_autoreleasePoolPop(context);
      v2 = v29;
    }
  }

  objc_autoreleasePoolPop(v2);
  return v21;
}

void sub_1000F8C24(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 32);
  v4 = [v7 identityValue];
  [v3 addObject:v4];

  [*(a1 + 40) addObject:v7];
  if ([*(a1 + 64) instancesRespondToSelector:"willBeDeletedFromDatabase:"])
  {
    [v7 willBeDeletedFromDatabase:*(a1 + 48)];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v7 isDeleteTracked])
  {
    v5 = *(a1 + 56);
    v6 = [*(a1 + 48) trackDeletedObject:v7];
    [v5 addObject:v6];
  }
}

void sub_1000F8E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000F8E2C(uint64_t a1)
{
  v2 = [[NSMutableString alloc] initWithString:@"select count(*) as count from "];
  v3 = [*(a1 + 64) entityName];
  [v2 appendString:v3];
  if (*(a1 + 32))
  {
    [v2 appendString:@" where "];
    [v2 appendString:*(a1 + 32)];
  }

  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F8F20;
  v6[3] = &unk_100202190;
  v6[4] = *(a1 + 56);
  sub_1000B9298(v4, v2, 1, v5, v6);
}

void sub_1000F8F20(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10016D778(a2, @"count");
  *(*(*(a1 + 32) + 8) + 24) = [v3 integerValue];
}

void sub_1000F90DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000F9288(uint64_t a1)
{
  v2 = [*(a1 + 80) entityName];
  v3 = [*(a1 + 32) componentsJoinedByString:{@", "}];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 88);
  v7 = *(a1 + 96);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000F93A0;
  v10[3] = &unk_100205178;
  v11 = *(a1 + 32);
  v12 = *(a1 + 72);
  sub_1000B97E8(v4, v3, v2, v5, 0, v8, v6, v7, v9, v10);
}

void sub_1000F93A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = sub_10016D778(v3, *(*(&v11 + 1) + 8 * v9));
        if (!v10)
        {
          v10 = +[NSNull null];
        }

        [v4 addObject:{v10, v11}];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000F9628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000F9640(uint64_t a1)
{
  result = sub_1000B9A6C(*(a1 + 32), *(a1 + 40), *(a1 + 48));
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

void sub_1000F99A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000F99BC(id a1)
{
  context = objc_autoreleasePoolPush();
  v1 = +[PDCKOperation syncableEntities];
  v2 = objc_alloc_init(NSMutableArray);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v1;
  v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        v8 = objc_alloc_init(NSMutableString);
        [v8 appendString:@"select "];
        v9 = [objc_opt_class() identityColumnName];
        [v8 appendString:v9];

        [v8 appendString:@" from "];
        v10 = [objc_opt_class() entityName];
        [v8 appendString:v10];

        [v8 appendString:@" where "];
        v11 = [objc_opt_class() identityColumnName];
        [v8 appendString:v11];

        [v8 appendString:@" = ? "];
        [v2 addObject:v8];
        ++dword_10024DA90;

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  v12 = objc_alloc_init(NSMutableString);
  objc_msgSend(v12, "appendString:", @"select * from(");
  v13 = [v2 componentsJoinedByString:@" UNION "];
  [v12 appendString:v13];

  [v12 appendString:@" limit 1"]);
  v14 = [v12 copy];
  v15 = qword_10024DAB8;
  qword_10024DAB8 = v14;

  objc_autoreleasePoolPop(context);
}

uint64_t sub_1000F9C40(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000F9CC4;
  v4[3] = &unk_100202190;
  v4[4] = a1[6];
  return sub_1000B9298(v2, qword_10024DAB8, 1, v1, v4);
}

uint64_t sub_1000F9CC4(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

void sub_1000F9D84(id a1)
{
  v1 = +[NSMapTable weakToWeakObjectsMapTable];
  v2 = qword_10024DAC8;
  qword_10024DAC8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000F9DC4(id a1)
{
  v1 = +[NSMapTable weakToWeakObjectsMapTable];
  v2 = qword_10024DAD8;
  qword_10024DAD8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000FAAF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000FAB2C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000FAB44(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = +[PDDatabase nameOfEntity:](PDDatabase, "nameOfEntity:", [v5 entity]);
  if ([v5 state] == 3)
  {
    [v5 entity];
    if ([v5 entity])
    {
      if ([objc_msgSend(v5 "entity")])
      {
        goto LABEL_38;
      }
    }
  }

  if (!v7)
  {
    goto LABEL_32;
  }

  if (![v7 isEqualToString:@"CLSAsset"])
  {
    if ([v7 isEqualToString:@"CLSBinaryItem"] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"CLSBlob") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"CLSCollection") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"CLSContext") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"CLSContextNavigationNode") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"CLSHandoutAssignedItem") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"CLSProgressReportingCapability") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"CLSActivity") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"CLSTimeInterval") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"CLSQuantityItem") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"CLSRange") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"CLSScoreItem") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"CLSTimeInterval"))
    {
      v12 = 1;
      goto LABEL_33;
    }

    if (([v7 isEqualToString:@"CLSFavorite"] & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"CLSHandout") & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"CLSHandoutAttachment") & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"CLSHandoutRecipient") & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"CLSMultipleChoiceAnswerFormat") & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"CLSMultipleChoiceAnswerItem") & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"CLSOpenResponseAnswerFormat") & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"CLSQuestionStep") & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"CLSSchedule") & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"CLSSliderAnswerFormat") & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"CLSSurvey") & 1) == 0)
    {
      if ([v7 isEqualToString:@"CLSSurveyAnswerItem"])
      {
        v12 = 2;
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_33;
    }

LABEL_32:
    v12 = 0;
    goto LABEL_33;
  }

  v8 = *(a1 + 32);
  v9 = objc_opt_class();
  v10 = [v5 entityIdentity];
  v11 = [v8 select:v9 identity:v10];

  v12 = [v11 syncableItemType];
LABEL_33:
  v13 = [NSNumber numberWithInteger:v12];
  v26[0] = v13;
  v14 = [v5 identityValue];
  v26[1] = v14;
  v15 = [NSArray arrayWithObjects:v26 count:2];

  v16 = *(*(a1 + 40) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = @"update PDPendingCKSyncItemCopy set syncableItemType=? where identityValue=?";

  *(*(*(a1 + 48) + 8) + 24) = sub_1000B9298(*(a1 + 32), *(*(*(a1 + 40) + 8) + 40), 0, v15, 0);
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    CLSInitLog();
    v18 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
    {
      v19 = v18;
      v20 = [NSNumber numberWithInteger:v12];
      v21 = [v5 identityValue];
      v22 = 138412546;
      v23 = v20;
      v24 = 2112;
      v25 = v21;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Could not update PDPendingCKSyncItem set syncableItemType=%@ where identityValue=%@", &v22, 0x16u);
    }

    *a3 = 1;
  }

LABEL_38:
  objc_autoreleasePoolPop(v6);
}

void sub_1000FB1DC(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"PDSyncableDataWrittenNotification" object:*(a1 + 32)];
}

void sub_1000FB9F4(id a1, BOOL a2, NSError *a3)
{
  v3 = a3;
  if (v3)
  {
    CLSInitLog();
    v4 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to delete CloudKit asset from backing store. Error: %@", &v5, 0xCu);
    }
  }
}

void sub_1000FBAAC(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  [*(a1 + 32) setPosition:{objc_msgSend(v3, "integerValue")}];
}

void sub_1000FBC58(id a1)
{
  v1 = sub_10010AF7C(PDUtil, @"CLSHandoutReviewDueNotificationHour");
  v2 = objc_alloc_init(NSDateComponents);
  v3 = qword_10024DAF0;
  qword_10024DAF0 = v2;

  v4 = qword_10024DAF0;
  if (v1 == -1)
  {
    v5 = 8;
  }

  else
  {
    v5 = v1;
  }

  [v4 setHour:v5];
}

void sub_100100404(id a1)
{
  if (+[CLSUtil isAppleInternalInstall])
  {
    v1 = +[NSUserDefaults standardUserDefaults];
    byte_10024DAF8 = [v1 BOOLForKey:@"CLSSendDevFlag"];
  }
}

void sub_100100478(id a1)
{
  if (+[CLSUtil isAppleInternalInstall])
  {
    v1 = +[NSUserDefaults standardUserDefaults];
    byte_10024DAF9 = [v1 BOOLForKey:@"UseSchoolworkCanaryHeader"];
  }
}

uint64_t sub_1001005D4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 zoneName];

  LODWORD(v2) = [v3 hasPrefix:@"Class-Roster-"];
  return v2 ^ 1;
}

void sub_1001008C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CKRecordZoneID alloc];
  if (v3)
  {
    v5 = v3[3];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v4 initWithZoneName:v6 ownerName:CKCurrentUserDefaultName];
  [*(a1 + 32) addObject:v7];
}

id sub_100100970(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v9 = @"serverChangeToken";
    v2 = +[NSNull null];
    v10 = v2;
    v3 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];

    v4 = [v1 database];
    v5 = objc_opt_class();
    v6 = +[PDClassZoneGetChanges syncZonesMatchingSQL];
    v7 = +[PDClassZoneGetChanges syncZonesBindings];
    v1 = [v4 updateAll:v5 set:v3 where:v6 bindings:v7];
  }

  return v1;
}

void sub_100100BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100100C08(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    v4 = *(v3 + 1);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (!v5)
  {
    [*(a1 + 32) addObject:v6];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

id sub_1001026B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = [*(a1 + 40) zoneName];
  v40 = v4;
  v5 = [NSArray arrayWithObjects:&v40 count:1];
  LOBYTE(v2) = [v2 deleteAll:v3 where:@"zoneName = ?" bindings:v5];

  if ((v2 & 1) == 0)
  {
    CLSInitLog();
    v6 = [*(a1 + 48) logSubsystem];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 48);
      v8 = objc_opt_class();
      v9 = *(a1 + 48);
      v10 = v8;
      v11 = [v9 operationID];
      v12 = *(a1 + 56);
      *buf = 138543874;
      v35 = v8;
      v36 = 2114;
      v37 = v11;
      v38 = 2114;
      v39 = v12;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ failed to delete cached zone for classid: %{public}@", buf, 0x20u);
    }
  }

  CLSInitLog();
  v13 = [*(a1 + 48) logSubsystem];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v20 = *(a1 + 48);
    v21 = objc_opt_class();
    v22 = *(a1 + 48);
    v23 = v21;
    v24 = [v22 operationID];
    v25 = [*(a1 + 40) zoneName];
    *buf = 138543874;
    v35 = v21;
    v36 = 2114;
    v37 = v24;
    v38 = 2112;
    v39 = v25;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ forgot zone: %@", buf, 0x20u);
  }

  v14 = *(a1 + 32);
  v15 = objc_opt_class();
  v33 = *(a1 + 56);
  v16 = [NSArray arrayWithObjects:&v33 count:1];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100102A4C;
  v32[3] = &unk_100205448;
  v32[4] = *(a1 + 48);
  v17 = [v14 selectAll:v15 where:@"classID = ?" bindings:v16 block:v32];

  if (v17)
  {
    CLSInitLog();
    v18 = [*(a1 + 48) logSubsystem];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v26 = *(a1 + 48);
      v27 = objc_opt_class();
      v28 = *(a1 + 48);
      v29 = v27;
      v30 = [v28 operationID];
      v31 = [*(a1 + 40) zoneName];
      *buf = 138543874;
      v35 = v27;
      v36 = 2114;
      v37 = v30;
      v38 = 2112;
      v39 = v31;
      _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ deleted handouts for zone: %@", buf, 0x20u);
    }
  }

  return v17;
}

void sub_100102A4C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 parentObjectID];
  LOBYTE(v4) = [v4 deleteHandoutWithObjectID:v5 shouldDeleteDrafts:0];

  if ((v4 & 1) == 0)
  {
    CLSInitLog();
    v6 = [*(a1 + 32) logSubsystem];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_class();
      v9 = *(a1 + 32);
      v10 = v8;
      v11 = [v9 operationID];
      v12 = [v3 parentObjectID];
      v16 = 138543874;
      v17 = v8;
      v18 = 2114;
      v19 = v11;
      v20 = 2114;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ failed to delete handout %{public}@", &v16, 0x20u);
    }
  }

  v13 = *(a1 + 32);
  v14 = [v3 parentObjectID];
  v15 = [v3 parentObjectID];
  [v13 updateCollectionItemsReferenceObjectID:v14 toType:0 andObjectID:v15];
}

uint64_t sub_10010336C(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
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
        LOBYTE(v35[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v35 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v35[0] & 0x7F) << v5;
        if ((v35[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        if (v13 <= 6)
        {
          if (v13 == 5)
          {
            v26 = 0;
            v27 = 0;
            v28 = 0;
            *(a1 + 68) |= 2u;
            while (1)
            {
              LOBYTE(v35[0]) = 0;
              v29 = [a2 position] + 1;
              if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
              {
                v31 = [a2 data];
                [v31 getBytes:v35 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v28 |= (v35[0] & 0x7F) << v26;
              if ((v35[0] & 0x80) == 0)
              {
                break;
              }

              v26 += 7;
              v11 = v27++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_61;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v28;
            }

LABEL_61:
            v32 = 64;
            goto LABEL_66;
          }

          if (v13 == 6)
          {
            v16 = 0;
            v17 = 0;
            v18 = 0;
            *(a1 + 68) |= 1u;
            while (1)
            {
              LOBYTE(v35[0]) = 0;
              v19 = [a2 position] + 1;
              if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
              {
                v21 = [a2 data];
                [v21 getBytes:v35 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v18 |= (v35[0] & 0x7F) << v16;
              if ((v35[0] & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_65;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v18;
            }

LABEL_65:
            v32 = 48;
LABEL_66:
            *(a1 + v32) = v22;
            goto LABEL_67;
          }

LABEL_56:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_67;
        }

        if (v13 != 7)
        {
          if (v13 == 8)
          {
            v14 = PBReaderReadString();
            v15 = 8;
            goto LABEL_41;
          }

          goto LABEL_56;
        }

        v23 = objc_alloc_init(PDDPDate);
        v24 = 56;
      }

      else
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v14 = PBReaderReadString();
            v15 = 32;
            goto LABEL_41;
          }

          if (v13 == 2)
          {
            v14 = PBReaderReadString();
            v15 = 40;
LABEL_41:
            v25 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_67;
          }

          goto LABEL_56;
        }

        if (v13 == 3)
        {
          v23 = objc_alloc_init(PDDPDate);
          v24 = 16;
        }

        else
        {
          if (v13 != 4)
          {
            goto LABEL_56;
          }

          v23 = objc_alloc_init(PDDPDate);
          v24 = 24;
        }
      }

      objc_storeStrong((a1 + v24), v23);
      v35[0] = 0;
      v35[1] = 0;
      if (!PBReaderPlaceMark() || !PDDPDateReadFrom(v23, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_67:
      v33 = [a2 position];
    }

    while (v33 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

PDDPDate *sub_10010426C(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v2 = 0;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    goto LABEL_10;
  }

  v2 = objc_alloc_init(PDDPDate);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v1 timeIntervalSinceReferenceDate];
LABEL_9:
    [(PDDPDate *)v2 setTime:?];
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v1 doubleValue];
    goto LABEL_9;
  }

  CLSInitLog();
  v4 = CLSLogUpload;
  if (os_log_type_enabled(CLSLogUpload, OS_LOG_TYPE_INFO))
  {
    v5 = 138543362;
    v6 = v1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "PDDPDate cannot convert %{public}@", &v5, 0xCu);
  }

LABEL_10:

  return v2;
}

id sub_1001043D0(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 hasTime])
  {
    [v2 time];
    v3 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

PDDPTypedValue *sub_100104444(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v2 = 0;
    goto LABEL_10;
  }

  v2 = objc_alloc_init(PDDPTypedValue);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PDDPTypedValue *)v2 setType:1];
    [(PDDPTypedValue *)v2 setStringValue:v1];
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PDDPTypedValue *)v2 setType:3];
    v3 = sub_10010426C(v1);
    [(PDDPTypedValue *)v2 setDateValue:v3];
LABEL_7:

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PDDPTypedValue *)v2 setType:3];
    [(PDDPTypedValue *)v2 setDateValue:v1];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v14 = [NSString stringWithFormat:@"Unknown object: %@", objc_opt_class()];
        CLSInitLog();
        v15 = CLSLogUpload;
        if (os_log_type_enabled(CLSLogUpload, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v22 = v14;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Failed to create PDDPTypedValue reason: %{public}@", buf, 0xCu);
        }

        v16 = [NSException exceptionWithName:NSInvalidArgumentException reason:v14 userInfo:0];
        objc_exception_throw(v16);
      }

      [(PDDPTypedValue *)v2 setType:2];
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v3 = v1;
      v5 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v18;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v18 != v7)
            {
              objc_enumerationMutation(v3);
            }

            v9 = *(*(&v17 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(PDDPTypedValue *)v2 addStringListValue:v9];
            }

            else
            {
              CLSInitLog();
              v10 = CLSLogUpload;
              if (os_log_type_enabled(CLSLogUpload, OS_LOG_TYPE_DEBUG))
              {
                v11 = v10;
                v12 = objc_opt_class();
                *buf = 138543362;
                v22 = v12;
                v13 = v12;
                _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Unexpected element type (%{public}@ in string list.", buf, 0xCu);
              }
            }
          }

          v6 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
        }

        while (v6);
      }

      goto LABEL_7;
    }

    if (sub_1000CEAD8(v1))
    {
      [(PDDPTypedValue *)v2 setType:7];
      [v1 doubleValue];
      [(PDDPTypedValue *)v2 setDoubleValue:?];
    }

    else
    {
      [(PDDPTypedValue *)v2 setType:5];
      -[PDDPTypedValue setInt64Value:](v2, "setInt64Value:", [v1 longLongValue]);
    }
  }

LABEL_10:

  return v2;
}

id sub_100104814(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1 || ![v1 hasType])
  {
    v4 = 0;
    goto LABEL_17;
  }

  if (![v2 hasStringValue])
  {
    if ([v2 hasDateValue] && (objc_msgSend(v2, "dateValue"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasTime"), v5, v6))
    {
      v7 = [v2 dateValue];
      [v7 time];
      v4 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      if ([v2 hasInt64Value])
      {
        v3 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v2 int64Value]);
        goto LABEL_16;
      }

      if ([v2 hasDoubleValue])
      {
        [v2 doubleValue];
        v3 = [NSNumber numberWithDouble:?];
        goto LABEL_16;
      }

      if ([v2 hasBoolValue])
      {
        v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 BOOLValue]);
        goto LABEL_16;
      }

      if ([v2 type] != 2)
      {
        v14 = [NSString stringWithFormat:@"Unknown object: %@", objc_opt_class()];
        CLSInitLog();
        v15 = CLSLogUpload;
        if (os_log_type_enabled(CLSLogUpload, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v22 = v14;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Failed to convert from PDDPTypedValue reason: %{public}@", buf, 0xCu);
        }

        v16 = [NSException exceptionWithName:NSInvalidArgumentException reason:v14 userInfo:0];
        objc_exception_throw(v16);
      }

      v9 = [v2 stringListValues];
      v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);

      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v7 = [v2 stringListValues];
      v10 = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v18;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v18 != v12)
            {
              objc_enumerationMutation(v7);
            }

            [v4 addObject:*(*(&v17 + 1) + 8 * i)];
          }

          v11 = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
        }

        while (v11);
      }
    }

    goto LABEL_17;
  }

  v3 = [v2 stringValue];
LABEL_16:
  v4 = v3;
LABEL_17:

  return v4;
}

id sub_100104B40(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 allKeys];
    v17 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          v10 = [v2 objectForKeyedSubscript:v9];
          if (v9)
          {
            v11 = v10 == 0;
          }

          else
          {
            v11 = 1;
          }

          if (v11)
          {

            v14 = 0;
          }

          else
          {
            v12 = v10;
            v13 = v9;
            v14 = objc_alloc_init(PDDPMapEntry);
            [(PDDPMapEntry *)v14 setKey:v13];

            v15 = sub_100104444(v12);

            [(PDDPMapEntry *)v14 setValue:v15];
            if (v14)
            {
              [v17 addObject:v14];
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

id sub_100104D28(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v1 count]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

          v9 = *(*(&v14 + 1) + 8 * i);
          if ([v9 hasKey] && objc_msgSend(v9, "hasValue"))
          {
            v10 = [v9 value];
            v11 = sub_100104814(v10);

            if (v11)
            {
              v12 = [v9 key];
              [v3 setObject:v11 forKeyedSubscript:v12];
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_100104ED0(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"UNKNOWN_TYPE"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"STATUS"))
  {
    goto LABEL_3;
  }

  if (([v1 isEqualToString:@"HANDOUT"] & 1) == 0 && (objc_msgSend(v1, "isEqualToString:", @"ATTACHMENT") & 1) == 0 && (objc_msgSend(v1, "isEqualToString:", @"RECIPIENT") & 1) == 0 && (objc_msgSend(v1, "isEqualToString:", @"CLASS") & 1) == 0 && (objc_msgSend(v1, "isEqualToString:", @"PERSON") & 1) == 0 && (objc_msgSend(v1, "isEqualToString:", @"CLASS_MEMBER") & 1) == 0)
  {
    if ([v1 isEqualToString:@"CLASS_ZONE"])
    {
      goto LABEL_3;
    }

    if ([v1 isEqualToString:@"ASSET"])
    {
      goto LABEL_12;
    }

    if ([v1 isEqualToString:@"AUTHORIZATION_STATUS"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"COMPLETION_STATUS"))
    {
LABEL_3:

      v2 = 0;
      goto LABEL_13;
    }

    if (([v1 isEqualToString:@"STATE_CHANGE"] & 1) == 0)
    {
      if (([v1 isEqualToString:@"COLLECTION"] & 1) == 0 && (objc_msgSend(v1, "isEqualToString:", @"COLLECTION_ITEM") & 1) == 0 && (objc_msgSend(v1, "isEqualToString:", @"ARCHIVED_HANDOUT") & 1) == 0 && (objc_msgSend(v1, "isEqualToString:", @"ARCHIVED_HANDOUT_ATTACHMENT") & 1) == 0 && (objc_msgSend(v1, "isEqualToString:", @"ARCHIVED_ASSET_REFERENCE") & 1) == 0 && (objc_msgSend(v1, "isEqualToString:", @"SURVEY") & 1) == 0 && (objc_msgSend(v1, "isEqualToString:", @"SURVEY_STEP") & 1) == 0 && (objc_msgSend(v1, "isEqualToString:", @"SURVEY_STEP_ANSWER") & 1) == 0 && (objc_msgSend(v1, "isEqualToString:", @"ARCHIVED_SURVEY") & 1) == 0 && (objc_msgSend(v1, "isEqualToString:", @"ARCHIVED_SURVEY_STEP") & 1) == 0 && (objc_msgSend(v1, "isEqualToString:", @"SCHEDULE") & 1) == 0 && (objc_msgSend(v1, "isEqualToString:", @"SCHEDULED_EVENT") & 1) == 0 && (objc_msgSend(v1, "isEqualToString:", @"ASSESSMENT") & 1) == 0 && (objc_msgSend(v1, "isEqualToString:", @"TAKER_WORK") & 1) == 0 && (objc_msgSend(v1, "isEqualToString:", @"ARCHIVED_ASSESSMENT") & 1) == 0 && (objc_msgSend(v1, "isEqualToString:", @"RETURNED_HANDOUT") & 1) == 0 && (objc_msgSend(v1, "isEqualToString:", @"RETURNED_ATTACHMENT") & 1) == 0 && (objc_msgSend(v1, "isEqualToString:", @"RETURNED_ASSESSMENT") & 1) == 0)
      {
        [v1 isEqualToString:@"RETURNED_TAKER_WORK"];
      }

      goto LABEL_3;
    }
  }

LABEL_12:

  v2 = objc_opt_class();
LABEL_13:

  return v2;
}

const __CFString *sub_100105220(void *a1)
{
  v1 = a1;
  v2 = v1;
  v3 = @"UNKNOWN_TYPE";
  if (v1)
  {
    if ([v1 isEqualToString:@"CLSHandout"])
    {
      v3 = @"HANDOUT";
    }

    else if ([v2 isEqualToString:@"CLSHandoutAttachment"])
    {
      v3 = @"ATTACHMENT";
    }

    else if ([v2 isEqualToString:@"CLSHandoutRecipient"])
    {
      v3 = @"RECIPIENT";
    }

    else if ([v2 isEqualToString:@"CLSClass"])
    {
      v3 = @"CLASS";
    }

    else if ([v2 isEqualToString:@"CLSPerson"])
    {
      v3 = @"PERSON";
    }

    else if ([v2 isEqualToString:@"CLSClassMember"])
    {
      v3 = @"CLASS_MEMBER";
    }

    else if ([v2 isEqualToString:@"CLSAsset"])
    {
      v3 = @"ASSET";
    }

    else if ([v2 isEqualToString:@"CLSCollaborationState"])
    {
      v3 = @"STATE_CHANGE";
    }
  }

  return v3;
}

uint64_t sub_100105358(int a1)
{
  if (a1 > 299)
  {
    if (a1 <= 802)
    {
      if (a1 != 300)
      {
        if (a1 == 500)
        {
          return 302;
        }

        if (a1 == 802)
        {
          return 310;
        }
      }
    }

    else
    {
      if (a1 <= 804)
      {
        if (a1 == 803)
        {
          return 382;
        }

        else
        {
          return 328;
        }
      }

      if (a1 == 805)
      {
        return 331;
      }

      if (a1 == 806)
      {
        return 340;
      }
    }

    return 100;
  }

  if (a1 > 99)
  {
    switch(a1)
    {
      case 'd':
        result = 309;
        break;
      case 'f':
        result = 4;
        break;
      case 'j':
      case 'l':
        return 302;
      case 'k':
        result = 301;
        break;
      case 'm':
        result = 321;
        break;
      case 'p':
        result = 318;
        break;
      case 'q':
        result = 319;
        break;
      case 'r':
        result = 339;
        break;
      case 's':
        result = 334;
        break;
      case 't':
        result = 335;
        break;
      case 'u':
        result = 336;
        break;
      case 'v':
        result = 337;
        break;
      case 'w':
        result = 338;
        break;
      default:
        return 100;
    }

    return result;
  }

  result = 0;
  if (a1 != 1)
  {
    if (a1 == 3)
    {
      return 9;
    }

    if (a1 != 4)
    {
      return 100;
    }
  }

  return result;
}

uint64_t sub_1001054F0(void *a1)
{
  v1 = a1;
  v2 = sub_100105358([v1 code]);
  v3 = [v1 message];
  v4 = [v3 length];

  if (v4 && v2 == 318)
  {
    v5 = [v1 message];
    if (v5 && (v6 = v5, [v1 message], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(@"MAID_REQUEST_ALREADY_EXISTS", "isEqualToString:", v7), v7, v6, (v8 & 1) != 0))
    {
      v2 = 332;
    }

    else
    {
      v9 = [v1 message];
      if (v9)
      {
        v10 = v9;
        v11 = [v1 message];
        v12 = [@"ACCOUNT_ALREADY_EXISTS" isEqualToString:v11];

        if (v12)
        {
          v2 = 333;
        }

        else
        {
          v2 = 318;
        }
      }

      else
      {
        v2 = 318;
      }
    }
  }

  return v2;
}

id sub_1001055FC(void *a1, char a2)
{
  v3 = a1;
  v4 = [v3 code];
  v5 = v4 == 1 || v4 == 5;
  if (v5 || (v7 = v4, v4 == 3) && (a2 & 1) != 0)
  {
    v6 = 0;
    goto LABEL_83;
  }

  v8 = sub_100105358(v4);
  if (v8 == 100)
  {
    if ([v3 hasKey])
    {
      v9 = [v3 key];
      v10 = [v3 key];
      if (v10)
      {
        v11 = v10;
        v12 = [v3 key];
        v13 = [v12 isEqualToString:@"ClassNotFoundError"];

        if (v13)
        {
          v8 = 312;
          goto LABEL_22;
        }
      }

      else
      {
      }

      v14 = [v3 key];
      v15 = [v3 key];
      if (v15)
      {
        v16 = [v3 key];
        v17 = [v16 isEqualToString:@"HandoutPublishError"];

        if (v17)
        {
          v8 = 313;
        }

        else
        {
          v8 = 100;
        }
      }

      else
      {
        v8 = 100;
      }
    }

    else
    {
      v8 = 100;
    }
  }

LABEL_22:
  if ([v3 hasInternalMessage])
  {
    v18 = [v3 internalMessage];
    v19 = [NSString stringWithFormat:@" (%@)", v18];
  }

  else
  {
    v19 = &stru_100206880;
  }

  if (v7 <= 299)
  {
    if (v7 > 3)
    {
      switch(v7)
      {
        case 'd':
          v20 = @"E_BOOTSTRAP_REQUIRED";
          break;
        case 'e':
          v20 = @"E_AUTHENTICATION_FAILED";
          break;
        case 'f':
          v20 = @"E_NOT_AUTHORIZED";
          break;
        case 'g':
          v20 = @"E_MESCAL_SIGNATURE_REQUIRED";
          break;
        case 'h':
          v20 = @"E_MESCAL_BAD_SIGNATURE";
          break;
        case 'i':
          v20 = @"E_MESCAL_PARSE_ERROR";
          break;
        case 'j':
          v20 = @"E_BAD_REQUEST";
          break;
        case 'k':
          v20 = @"E_BAD_PROTOCOL_VERSION";
          break;
        case 'l':
          v20 = @"E_REQUEST_TOO_LARGE";
          break;
        case 'm':
          v20 = @"E_REQUEST_TOO_MANY_ITEMS";
          break;
        case 'n':
          v20 = @"E_SERVER_BUSY";
          break;
        case 'o':
          v20 = @"E_ACCESS_DENIED";
          break;
        case 'p':
          v20 = @"E_CONFLICT";
          break;
        case 'q':
          v20 = @"E_INVALID_STATE";
          break;
        case 'r':
          v20 = @"E_LOCK_TAKEN";
          break;
        case 's':
          v20 = @"E_DOWNSTREAM_SERVICE_FAILED";
          break;
        case 't':
          v20 = @"E_DOWNSTREAM_SERVICE_THROTTLED";
          break;
        case 'u':
          v20 = @"E_DRIVE_USER_QUOTA_EXCEEDED";
          break;
        case 'v':
          v20 = @"E_DRIVE_GROUP_QUOTA_EXCEEDED";
          break;
        case 'w':
          v20 = @"E_DRIVE_ORG_QUOTA_EXCEEDED";
          break;
        case 'x':
          v20 = @"E_RECORD_LIMIT_EXCEEDED";
          break;
        case 'y':
          v20 = @"E_DISALLOWED_COUNTRY_CODE";
          break;
        default:
          if (v7 == 4)
          {
            v20 = @"S_OK_HAS_MORE_DATA";
          }

          else
          {
            if (v7 != 5)
            {
              goto LABEL_54;
            }

            v20 = @"S_PROCESSING";
          }

          break;
      }

      goto LABEL_82;
    }

    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v20 = @"E_ERROR";
      }

      else
      {
        v20 = @"S_MIXED_RESPONSE";
      }

      goto LABEL_82;
    }

    if (!v7)
    {
      v20 = @"UNKNOWN_CODE";
      goto LABEL_82;
    }

    if (v7 == 1)
    {
      v20 = @"S_OK";
      goto LABEL_82;
    }

LABEL_54:
    v20 = [NSString stringWithFormat:@"(unknown: %i)", v7];
    goto LABEL_82;
  }

  if (v7 <= 801)
  {
    if (v7 > 799)
    {
      if (v7 == 800)
      {
        v20 = @"E_NOT_APPLICABLE_TYPE";
      }

      else
      {
        v20 = @"E_ENTITY_NOT_FOUND";
      }

      goto LABEL_82;
    }

    if (v7 == 300)
    {
      v20 = @"E_DEVICE_UNSUPPORTED";
      goto LABEL_82;
    }

    if (v7 == 500)
    {
      v20 = @"E_INVALID_FIELD_VALUE";
      goto LABEL_82;
    }

    goto LABEL_54;
  }

  if (v7 <= 803)
  {
    if (v7 == 802)
    {
      v20 = @"E_ENTITY_PRIVILEGE_CHANGE";
    }

    else
    {
      v20 = @"E_MUST_ACCEPT_TERMS";
    }

    goto LABEL_82;
  }

  if (v7 == 804)
  {
    v20 = @"E_ENTITY_EXPIRED";
    goto LABEL_82;
  }

  if (v7 == 805)
  {
    v20 = @"E_NOT_ALLOWED_FEDERATED_ORGANIZATION";
    goto LABEL_82;
  }

  if (v7 != 806)
  {
    goto LABEL_54;
  }

  v20 = @"E_DISALLOWED_EMAIL_DOMAIN";
LABEL_82:
  v21 = [v3 key];
  v22 = [v3 message];
  v23 = [NSString stringWithFormat:@"Server error: %@ (%ld) key: %@ message: %@%@", v20, v7, v21, v22, v19];
  v6 = [NSError cls_createErrorWithCode:v8 description:v23];

LABEL_83:

  return v6;
}

id sub_100105B4C(void *a1)
{
  v1 = a1;
  if ([v1 hasTitle] && objc_msgSend(v1, "hasUrl"))
  {
    v8[0] = CLSServerAlertButtonTitleKey;
    v2 = [v1 title];
    v9[0] = v2;
    v8[1] = CLSServerAlertButtonURLKey;
    v3 = [v1 url];
    v9[1] = v3;
    v4 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

LABEL_6:
    goto LABEL_8;
  }

  if ([v1 hasTitle])
  {
    v6 = CLSServerAlertButtonTitleKey;
    v2 = [v1 title];
    v7 = v2;
    v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
    goto LABEL_6;
  }

  v4 = 0;
LABEL_8:

  return v4;
}

id sub_100105CA4(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 serverAlerts];
    v4 = [v3 count];

    if (v4)
    {
      v5 = objc_opt_new();
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v43 = v2;
      v6 = [v2 serverAlerts];
      v7 = [v6 countByEnumeratingWithState:&v50 objects:v57 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v51;
        v44 = v5;
        do
        {
          v10 = 0;
          do
          {
            if (*v51 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v50 + 1) + 8 * v10);
            if ([v11 hasAlertId] && objc_msgSend(v11, "hasTitle") && objc_msgSend(v11, "hasMessage") && objc_msgSend(v11, "hasDateCreated") && objc_msgSend(v11, "hasDateCreated") && objc_msgSend(v11, "hasDateLastModified") && objc_msgSend(v11, "hasDateExpires") && (objc_msgSend(v11, "hasDefaultButtonInfo") & 1) != 0)
            {
              v12 = [[CLSServerAlert alloc] _init];
              v13 = [v11 alertId];
              [v12 setObjectID:v13];

              v14 = [v11 dateCreated];
              v15 = sub_1001043D0(v14);
              [v12 setDateCreated:v15];

              v16 = [v11 dateLastModified];
              v17 = sub_1001043D0(v16);
              [v12 setDateLastModified:v17];

              v18 = [v11 dateExpires];
              if ([v18 hasTime])
              {
                v19 = [v11 dateExpires];
                [v19 time];
                v21 = v20;

                if (v21 != 0.0)
                {
                  goto LABEL_25;
                }
              }

              else
              {
              }

              v25 = [v11 dateExpires];
              [v25 setTime:1.0];

LABEL_25:
              v26 = [v11 dateExpires];
              v27 = sub_1001043D0(v26);
              [v12 setDateExpires:v27];

              [v12 setAlertType:{objc_msgSend(v11, "displayType")}];
              [v12 setDisplayRoles:{objc_msgSend(v11, "displayRoles")}];
              v28 = [v11 title];
              [v12 setTitle:v28];

              v29 = [v11 message];
              [v12 setMessage:v29];

              v30 = [v11 defaultButtonInfo];
              v31 = sub_100105B4C(v30);
              [v12 setDefaultButtonInfo:v31];

              v32 = [v11 otherButtonInfos];
              v33 = [v32 count];

              if (v33)
              {
                v45 = v12;
                v34 = objc_opt_new();
                v46 = 0u;
                v47 = 0u;
                v48 = 0u;
                v49 = 0u;
                v35 = [v11 otherButtonInfos];
                v36 = [v35 countByEnumeratingWithState:&v46 objects:v54 count:16];
                if (v36)
                {
                  v37 = v36;
                  v38 = *v47;
                  do
                  {
                    for (i = 0; i != v37; i = i + 1)
                    {
                      if (*v47 != v38)
                      {
                        objc_enumerationMutation(v35);
                      }

                      v40 = sub_100105B4C(*(*(&v46 + 1) + 8 * i));
                      if (v40)
                      {
                        [v34 addObject:v40];
                      }
                    }

                    v37 = [v35 countByEnumeratingWithState:&v46 objects:v54 count:16];
                  }

                  while (v37);
                }

                v12 = v45;
                [v45 setOtherButtonInfos:v34];

                v5 = v44;
              }

              [v5 addObject:v12];

              goto LABEL_21;
            }

            CLSInitLog();
            v22 = CLSLogOperations;
            if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_DEFAULT))
            {
              v23 = v22;
              v24 = [v11 dictionaryRepresentation];
              *buf = 138412290;
              v56 = v24;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Ignoring Server Alert (missing required fields:) %@", buf, 0xCu);
            }

LABEL_21:
            v10 = v10 + 1;
          }

          while (v10 != v8);
          v41 = [v6 countByEnumeratingWithState:&v50 objects:v57 count:16];
          v8 = v41;
        }

        while (v41);
      }

      if ([v5 count])
      {
        v4 = v5;
      }

      else
      {
        v4 = 0;
      }

      v2 = v43;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}