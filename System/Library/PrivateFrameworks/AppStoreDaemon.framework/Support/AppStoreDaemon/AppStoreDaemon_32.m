BOOL sub_100361FA8(id a1, AppUsageDatabaseTransaction *a2)
{
  v2 = [(AppUsageDatabaseTransaction *)a2 connection];
  v3 = v2;
  if (v2)
  {
    sub_10022C810(v2, @"DELETE FROM app_events_ocelot_payout;", 0, 0);
  }

  return 1;
}

uint64_t sub_100361FF8(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 connection];
  v5 = sub_1002D3F5C(AppEventEntityOcelotPayout, v4, 0);

  v14[0] = @"bundle_id";
  v14[1] = @"week_start_time";
  v14[2] = @"has_been_posted";
  v14[3] = @"ROWID";
  v6 = [NSArray arrayWithObjects:v14 count:4];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100362180;
  v9[3] = &unk_100523640;
  v10 = a1[4];
  v11 = v3;
  v12 = a1[5];
  v13 = a1[6];
  v7 = v3;
  [v5 enumerateMemoryEntitiesWithProperties:v6 usingBlock:v9];

  return 1;
}

void sub_100362180(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10023E0F8(v3, @"week_start_time");
  v5 = sub_10023E4DC(v3, @"has_been_posted");
  v6 = [v3 databaseID];
  if ([v4 compare:*(a1 + 32)] == -1 && v5 != 0)
  {
    v8 = sub_10023E0F8(v3, @"bundle_id");
    v9 = [AppEventEntityOcelotPayout alloc];
    v10 = [*(a1 + 40) connection];
    v11 = [(SQLiteEntity *)v9 initWithPersistentID:v6 onConnection:v10];

    if ([(SQLiteEntity *)v11 existsInDatabase])
    {
      [(SQLiteEntity *)v11 deleteFromDatabase];
    }

    v12 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 48);
      if (v13)
      {
        v13 = v13[9];
      }

      v14 = v13;
      v15 = sub_1002526A4(v4);
      v16 = *(a1 + 56);
      v17 = 138413314;
      v18 = v14;
      v19 = 2114;
      v20 = v8;
      v21 = 2114;
      v22 = v15;
      v23 = 2114;
      v24 = v16;
      v25 = 2048;
      v26 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%@] Clearing qualified event bundleID: %{public}@ weekDate: %{public}@ currentWeek: %{public}@ pid: %lld", &v17, 0x34u);
    }
  }
}

id sub_100362368()
{
  v0 = sub_10029BDD4();
  v1 = [v0 stringByAppendingPathComponent:@"top_arcade_apps.plist"];

  return v1;
}

void sub_1003623C4(uint64_t a1)
{
  v2 = [[KeepAlive alloc] initWithName:@"Terminate Arcade Apps"];
  v3 = objc_alloc_init(NSMutableArray);
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100362734;
  v31[3] = &unk_100522830;
  v31[4] = *(a1 + 32);
  v4 = v3;
  v32 = v4;
  sub_1003D31A8(ApplicationProxy, 0, v31);
  if ([v4 count])
  {
    v23 = v2;
    v5 = [[RBSTerminateContext alloc] initWithExplanation:@"Terminate Arcade Apps"];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v22 = v4;
    obj = v4;
    v6 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v28;
      v9 = NSComparisonPredicate_ptr;
      v10 = NSComparisonPredicate_ptr;
      do
      {
        v11 = 0;
        v24 = v7;
        do
        {
          if (*v28 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v27 + 1) + 8 * v11);
          v13 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v34 = v12;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Attempting to terminate app with bundleID: %{public}@", buf, 0xCu);
          }

          [v5 setMaximumTerminationResistance:40];
          if (v5)
          {
            v14 = [v9[135] predicateMatchingBundleIdentifier:v12];
            v15 = [objc_alloc(v10[137]) initWithPredicate:v14 context:v5];
            if ([v15 processExists])
            {
              v16 = v8;
              v17 = v9;
              v26 = 0;
              v18 = [v15 acquireWithError:&v26];
              v19 = v26;
              v20 = ASDLogHandleForCategory();
              v21 = v20;
              if (v18)
              {
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v34 = v12;
                  _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "App with bundleID: %{public}@ is terminated", buf, 0xCu);
                }
              }

              else if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v34 = v12;
                _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to terminate app with bundleID: %{public}@", buf, 0xCu);
              }

              [v15 invalidate];
              v9 = v17;
              v8 = v16;
              v7 = v24;
              v10 = NSComparisonPredicate_ptr;
            }
          }

          v11 = v11 + 1;
        }

        while (v7 != v11);
        v7 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v7);
    }

    v4 = v22;
    v2 = v23;
  }
}

void sub_100362734(uint64_t a1, void *a2)
{
  v6 = a2;
  if (sub_10035604C(*(a1 + 32), v6))
  {
    v3 = sub_1003D0F60(v6);

    if (v3)
    {
      v4 = *(a1 + 40);
      v5 = sub_1003D0F60(v6);
      [v4 addObject:v5];
    }
  }
}

void sub_1003627C4(uint64_t a1, void *a2)
{
  v6 = a2;
  if (sub_10035604C(*(a1 + 32), v6))
  {
    v3 = sub_100381B80([AppMetadata alloc], v6);
    v4 = *(a1 + 40);
    v5 = sub_1003D0F60(v6);
    [v4 setObject:v3 forKeyedSubscript:v5];
  }
}

void sub_100362864(uint64_t a1)
{
  v2 = [*(a1 + 40) ams_DSID];
  v3 = [v2 copy];
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = v3;

  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v8 = v7;
  if (v6)
  {
    if ([v7 isTrialPeriod])
    {
      v6 = @"freeTrial";
    }

    else
    {
      v6 = @"Paid";
    }
  }

  objc_storeStrong((*(a1 + 32) + 48), v6);
  v9 = [NSNumber numberWithBool:1];
  v10 = *(a1 + 32);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

void sub_100362944(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = [NSNumber numberWithBool:0];
  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1 + 32);
  v8 = *(v7 + 48);
  *(v7 + 48) = @"Unsubscribed";
}

uint64_t sub_100362CE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1001C314C(v3);
  v21 = +[LSDatabaseContext sharedDatabaseContext];
  v20 = [v21 startAccessingReturningError:0];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v24;
    *&v7 = 138543618;
    v19 = v7;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = [*(a1 + 32) isCancelled];
        v13 = ASDLogHandleForCategory();
        v14 = v13;
        if (v12)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Validate manifests operation has been cancelled.", buf, 2u);
          }

          goto LABEL_19;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v28 = v11;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Validating application with id [%{public}@]", buf, 0xCu);
        }

        v22 = 0;
        v15 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v11 allowPlaceholder:1 error:&v22];
        if (!v15)
        {
          v16 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = v19;
            v28 = v11;
            v29 = 2114;
            v30 = v22;
            _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Launch services does not know about [%{public}@].  Deleting. Error: %{public}@", buf, 0x16u);
          }

          v17 = sub_100399B78(ODRApplication, v11);
          sub_10021A234(v3, v17);
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  if (v20)
  {
    [v21 stopAccessing];
  }

  return 1;
}

id *sub_100363298(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = DAAPURLRequest;
    v8 = objc_msgSendSuper2(&v10, "init");
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
    }
  }

  return a1;
}

void sub_100363334(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = [URLRequest alloc];
    v5 = sub_1003633D4(a1, v3);
    v6 = sub_100235EC8(v4, v5);

    sub_100235F3C(v6, v3);
  }
}

URLRequestProperties *sub_1003633D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(URLRequestProperties);
  v5 = *(a1 + 8);
  v17 = 0;
  v6 = [v5 dataForRequestWithError:&v17];
  v7 = v17;
  if (v6)
  {
    sub_10033D244(v4, v6);
    sub_10033C9D4(v4, *(a1 + 32));
    sub_10033CB98(v4, *(a1 + 48));
    if (v4)
    {
      v4->_dataEncoding = 1;
    }

    sub_10033D69C(v4, *(a1 + 16));
    sub_10033D854(v4, 1);
    v8 = *(a1 + 56);
    if (v8)
    {
      sub_10033CEF4(v4, v8);
    }

    sub_10033D400(v4, 4);
    sub_10033D074(v4, 1);
    v9 = +[AMSDevice buildVersion];
    if (![(__CFString *)v9 length])
    {

      v9 = @"UNKNOWN";
    }

    v10 = [NSString stringWithFormat:@"%@/%@", @"1.3", v9];
    sub_10033D8E4(v4, v10, @"Client-Cloud-Daap-Version");

    v11 = [NSString stringWithFormat:@"%@/%@", @"1.1", v9];
    sub_10033D8E4(v4, v11, @"Client-Cloud-Purchase-DAAP-Version");

    if (*(a1 + 40))
    {
      v12 = [NSString stringWithFormat:@"%lli", *(a1 + 40)];
      sub_10033D8E4(v4, v12, @"X-FM-Dsid");
    }

    v13 = @"application/x-dmap-tagged";
    if ((objc_opt_respondsToSelector() & 1) != 0 && [*(a1 + 8) contentType] == 1)
    {
      v13 = @"application/x-www-form-urlencoded";
    }

    sub_10033D8E4(v4, v13, AMSHTTPHeaderContentType);
    if (*(a1 + 24) == 1)
    {
      v14 = [NSString stringWithFormat:@"%d", 16];
      sub_10033D8E4(v4, v14, @"X-DAAP-Supported-Features");
    }

    v15 = v4;
  }

  else
  {
    v3[2](v3, 0, v7);
    v15 = 0;
  }

  return v15;
}

void sub_10036368C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = sub_1003633D4(a1, v9);
    v12 = sub_1002361E0([URLRequestEncoder alloc], v10);
    if (!v10 || (v13 = objc_getProperty(v10, v11, 104, 1)) == 0)
    {
      v13 = sub_10033D0FC(v10);
    }

    v14 = sub_10033D330(v10);
    v15 = sub_10033D554(v10);
    v16 = [v12 requestWithMethod:v14 URL:v15 parameters:v13];
    v39 = 0;
    v17 = [v16 resultWithError:&v39];
    v18 = v39;

    if (v18)
    {
      v19 = ASDLogHandleForCategory();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
      if (!v17)
      {
        if (v20)
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v18;
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Encountered error in DAAP URL request creation: %{public}@. Aborting since request is nil", &buf, 0xCu);
        }

        goto LABEL_16;
      }

      if (v20)
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v18;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Encountered error in DAAP URL request creation: %{public}@", &buf, 0xCu);
      }
    }

    v32 = v13;
    v33 = v18;
    v35 = v12;
    v38 = v7;
    v21 = v7;
    v37 = v8;
    v22 = v8;
    v36 = v9;
    v23 = v9;
    v34 = v17;
    v24 = v17;
    v25 = v10;
    v26 = sub_10033CA88(v25);
    if (!v26)
    {
      v26 = sub_10000479C();
    }

    v27 = sub_10024AA54(AMSURLSession, v26, v22, v21);
    v28 = objc_alloc_init(URLResponseDecoder);
    [v27 setResponseDecoder:v28];
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v41 = sub_100363A18;
    v42 = &unk_10051E0B8;
    v29 = v23;
    v43 = v29;
    v30 = [v27 dataTaskWithRequest:v24 completionHandler:&buf];

    v31 = [v27 responseDecoder];
    sub_10020ED5C(v31, v25, v30);

    [v30 resume];
    v8 = v37;
    v7 = v38;
    v12 = v35;
    v9 = v36;
    v18 = v33;
    v17 = v34;
    v13 = v32;
LABEL_16:
  }
}

void sub_100363A18(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = ASDErrorWithSafeUserInfo();
  (*(v2 + 16))(v2, v3, v4);
}

id *sub_100364180(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = FailPurchaseTask;
    v8 = objc_msgSendSuper2(&v10, "init");
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 5, a3);
      objc_storeStrong(a1 + 6, a2);
    }
  }

  return a1;
}

void sub_100364834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10036485C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 48) bundleID];
  v5 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v4];

  v6 = [v3 connection];
  v7 = sub_1002D3DF0(AppUpdateEntity, v6, v5);

  if ([v7 existsInDatabase])
  {
    v8 = [*(*(a1 + 32) + 48) logKey];
    v9 = sub_100350204(v3, v7, v8);

    *(*(*(a1 + 40) + 8) + 24) = v9 ^ 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id sub_1003649C8()
{
  objc_opt_self();
  if (qword_1005AACB0 != -1)
  {
    dispatch_once(&qword_1005AACB0, &stru_100524A68);
  }

  v0 = qword_1005AACA8;

  return v0;
}

void sub_100364A20(id a1)
{
  v1 = objc_alloc_init(ProgressCache);
  v2 = qword_1005AACA8;
  qword_1005AACA8 = v1;
}

void sub_100364BC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v20 = 0;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1003680FC;
    v18[3] = &unk_10051E6A0;
    v2 = objc_alloc_init(NSMutableArray);
    v19 = v2;
    [IXAppInstallCoordinator enumerateCoordinatorsWithError:&v20 usingBlock:v18];
    v3 = v20;
    v4 = [SQLiteComparisonPredicate predicateWithProperty:@"IFNULL(app_install.phase equalToValue:10)", &off_100548220];
    v22[0] = v4;
    v5 = [SQLiteComparisonPredicate predicateWithProperty:@"IFNULL(app_install.phase equalToValue:10)", &off_100548238];
    v22[1] = v5;
    v6 = [NSArray arrayWithObjects:v22 count:2];
    v7 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v6];

    v21[0] = @"log_code";
    v21[1] = @"bundle_id";
    v21[2] = @"item_id";
    v21[3] = @"evid";
    v21[4] = @"remote_install";
    v21[5] = @"source_type";
    v21[6] = @"store_cohort";
    v21[7] = @"update_type";
    v21[8] = @"automatic_type";
    v8 = [NSArray arrayWithObjects:v21 count:9];
    v9 = sub_1003C27BC();
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100368144;
    v13[3] = &unk_10051FF00;
    v14 = v7;
    v15 = v8;
    v16 = v2;
    v17 = v1;
    v10 = v2;
    v11 = v8;
    v12 = v7;
    [v9 readUsingSession:v13];
  }
}

void sub_100364E78(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100364F40;
    block[3] = &unk_10051AEE8;
    block[4] = a1;
    v9 = v5;
    v10 = v6;
    dispatch_sync(v7, block);
  }
}

void sub_100364F40(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = v2;
  if (v1)
  {
    if (v3 && (v5 = v3[12], v6 = v5, v5))
    {
      v7 = v6;
      v8 = [*(v1 + 40) objectForKeyedSubscript:v6];
      v9 = ASDLogHandleForCategory();
      v10 = v9;
      if (v8)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v12 = objc_getProperty(v8, v11, 104, 1);
          v14 = objc_getProperty(v3, v13, 152, 1);
          *v32 = 138412802;
          *&v32[4] = v12;
          v33 = 2114;
          v34 = v5;
          v35 = 2114;
          v36 = v14;
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%@]: Received duplicate BeginProgress with bundleID: %{public}@ storeItemID: %{public}@", v32, 0x20u);
        }
      }

      else
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v16 = objc_getProperty(v3, v15, 104, 1);
          v17 = *(v3 + 64);
          *v32 = 138412802;
          *&v32[4] = v16;
          if (v17)
          {
            v18 = @"remote progress";
          }

          else
          {
            v18 = @"progress";
          }

          v33 = 2114;
          v34 = v18;
          v35 = 2114;
          v36 = v4;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@]: Beginning %{public}@ with reason: %{public}@", v32, 0x20u);
        }

        v19 = *(v3 + 64);
        v21 = objc_getProperty(v3, v20, 72, 1);
        [v21 setReportRemotely:v19 & 1];

        [*(v1 + 40) setObject:v3 forKeyedSubscript:v7];
        v10 = [*(v1 + 32) objectForKeyedSubscript:v7];
        if (!v10)
        {
          v10 = [[ASDApp alloc] initWithBundleID:v7];
          v24 = objc_getProperty(v3, v23, 152, 1);
          -[NSObject setStoreItemID:](v10, "setStoreItemID:", [v24 longLongValue]);

          [v10 setStatus:v3[18]];
          [v10 setWatchApplicationMode:v3[20]];
        }

        v25 = objc_getProperty(v3, v22, 72, 1);
        [v10 setRemoteProgress:v25];

        [*(v1 + 32) setObject:v10 forKeyedSubscript:v7];
        WeakRetained = objc_loadWeakRetained((v1 + 24));
        v27 = [v10 copy];
        *v32 = v27;
        v28 = [NSArray arrayWithObjects:v32 count:1];
        [WeakRetained catalogRegisteredApps:v28];

        sub_100365C7C(v1, v3);
      }
    }

    else
    {
      v8 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        if (v3)
        {
          Property = objc_getProperty(v3, v29, 152, 1);
        }

        else
        {
          Property = 0;
        }

        v31 = Property;
        *v32 = 138543362;
        *&v32[4] = v31;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to begin progress with no bundleID (storeItemID: %{public}@)", v32, 0xCu);
      }

      v7 = 0;
    }
  }
}

void sub_100365318(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 8);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1003653BC;
    v6[3] = &unk_10051B570;
    v7 = v3;
    v8 = a1;
    dispatch_async(v5, v6);
  }
}

void sub_1003653BC(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(*(a1 + 40) + 40) objectForKeyedSubscript:?];
    v3 = ASDLogHandleForCategory();
    v4 = v3;
    if (v2)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v6 = objc_getProperty(v2, v5, 104, 1);
        v7 = *(a1 + 32);
        *buf = 138412546;
        v16 = v6;
        v17 = 2114;
        v18 = v7;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%@]: Canceling progress for bundleID: %{public}@", buf, 0x16u);
      }

      [*(*(a1 + 40) + 40) setObject:0 forKeyedSubscript:*(a1 + 32)];
      [*(*(a1 + 40) + 48) removeObject:v2];
    }

    else
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 32);
        *buf = 138543362;
        v16 = v13;
        _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Canceling untracked progress for bundleID: %{public}@", buf, 0xCu);
      }
    }

    v8 = [*(*(a1 + 40) + 32) objectForKeyedSubscript:*(a1 + 32)];

    if (v8)
    {
      v9 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 32);
        *buf = 138543362;
        v16 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Removing placeholder from library for bundleID: %{public}@", buf, 0xCu);
      }

      [*(*(a1 + 40) + 32) removeObjectForKey:*(a1 + 32)];
      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 24));
      v14 = *(a1 + 32);
      v12 = [NSArray arrayWithObjects:&v14 count:1];
      [WeakRetained catalogRefreshedBundleIDs:v12];
    }
  }

  else
  {
    v2 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Failed to cancel progress with no bundleID", buf, 2u);
    }
  }
}

void sub_100365640(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 8);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1003656E4;
    v6[3] = &unk_10051B570;
    v7 = v3;
    v8 = a1;
    dispatch_async(v5, v6);
  }
}

void sub_1003656E4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(*(a1 + 40) + 40) objectForKeyedSubscript:?];
    v3 = ASDLogHandleForCategory();
    v4 = v3;
    if (v2)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v6 = objc_getProperty(v2, v5, 104, 1);
        v7 = *(a1 + 32);
        v11 = 138412546;
        v12 = v6;
        v13 = 2114;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%@]: Pausing progress for bundleID: %{public}@", &v11, 0x16u);
      }

      v9 = objc_getProperty(v2, v8, 72, 1);
      [v9 setPhase:7];

      [*(*(a1 + 40) + 48) removeObject:v2];
      sub_1003658C8(*(a1 + 40), v2);
    }

    else
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 32);
        v11 = 138543362;
        v12 = v10;
        _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Could not find progress to pause for bundleID: %{public}@", &v11, 0xCu);
      }

      v2 = 0;
    }
  }

  else
  {
    v2 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11) = 0;
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Failed to pause progress with no bundleID", &v11, 2u);
    }
  }
}

void sub_1003658C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    sub_100403E60(v3);
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (v4)
      {
        Property = objc_getProperty(v4, v6, 104, 1);
      }

      else
      {
        Property = 0;
      }

      v8 = Property;
      v13 = 138412546;
      v14 = v8;
      v15 = 2114;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@]: Posting progress: %{public}@", &v13, 0x16u);
    }

    v10 = *(a1 + 16);
    if (v4)
    {
      v11 = objc_getProperty(v4, v9, 72, 1);
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    sub_1003B8364(v10, v12);
  }
}

void sub_1003659FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 8);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100365AA0;
    v6[3] = &unk_10051B570;
    v7 = v3;
    v8 = a1;
    dispatch_async(v5, v6);
  }
}

void sub_100365AA0(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(*(a1 + 40) + 40) objectForKeyedSubscript:?];
    v3 = ASDLogHandleForCategory();
    v4 = v3;
    if (v2)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v6 = objc_getProperty(v2, v5, 104, 1);
        v7 = *(a1 + 32);
        v11 = 138412546;
        v12 = v6;
        v13 = 2114;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%@]: Resuming progress for bundleID: %{public}@", &v11, 0x16u);
      }

      v9 = objc_getProperty(v2, v8, 72, 1);
      [v9 setPhase:2];

      sub_100403E00(&v2->isa);
      sub_100365C7C(*(a1 + 40), v2);
    }

    else
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 32);
        v11 = 138543362;
        v12 = v10;
        _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Could not find progress to pause for bundleID: %{public}@", &v11, 0xCu);
      }

      v2 = 0;
    }
  }

  else
  {
    v2 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11) = 0;
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Failed to resume progress with no bundleID", &v11, 2u);
    }
  }
}

void sub_100365C7C(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      if (*(v3 + 16) == 1.0)
      {
        v5 = v3[12];
        v6 = v5;
        if (v5)
        {
          v7 = v6;
          v8 = a1[5];
          v9 = v4[12];
          v10 = [v8 objectForKeyedSubscript:v9];

          if (v10)
          {
            v11 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v20 = v4;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Processing last progress: %{public}@", buf, 0xCu);
            }

            goto LABEL_11;
          }
        }
      }
    }

    v12 = a1[6];
    if (!v12)
    {
LABEL_11:
      v13 = [NSSet setWithObject:v4];
      sub_100367D90(a1, v13);

      v14 = +[NSMutableSet set];
      v15 = a1[6];
      a1[6] = v14;

      v16 = dispatch_time(0, 200000000);
      v17 = a1[1];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100368018;
      block[3] = &unk_10051AF98;
      block[4] = a1;
      dispatch_after(v16, v17, block);
      goto LABEL_12;
    }

    [v12 addObject:v4];
  }

LABEL_12:
}

void *sub_100365E5C(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = sub_100365F78;
    v15 = sub_100365F88;
    v16 = 0;
    v5 = a1[1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100365F90;
    block[3] = &unk_100524A90;
    v9 = a1;
    v10 = &v11;
    v8 = v3;
    dispatch_sync(v5, block);
    a1 = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  return a1;
}

uint64_t sub_100365F78(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100365F90(void *a1)
{
  if (a1[4])
  {
    v6 = [*(a1[5] + 32) objectForKeyedSubscript:?];
    v2 = [v6 copy];
    v3 = *(a1[6] + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  else
  {
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed find existing app with no bundleID", buf, 2u);
    }
  }
}

void *sub_10036605C(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = sub_100365F78;
    v15 = sub_100365F88;
    v16 = 0;
    v5 = a1[1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100366178;
    block[3] = &unk_100524A90;
    v9 = a1;
    v10 = &v11;
    v8 = v3;
    dispatch_sync(v5, block);
    a1 = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  return a1;
}

void sub_100366178(void *a1)
{
  if (a1[4])
  {
    Property = [*(a1[5] + 40) objectForKeyedSubscript:?];
    v9 = Property;
    if (Property)
    {
      Property = objc_getProperty(Property, v3, 72, 1);
    }

    v4 = Property;
    v5 = [v4 copy];
    v6 = *(a1[6] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  else
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed find existing progress with no bundleID", buf, 2u);
    }
  }
}

void sub_100366260(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100366324;
    block[3] = &unk_10051AEE8;
    v9 = v5;
    v10 = a1;
    v11 = v6;
    dispatch_async(v7, block);
  }
}

void sub_100366324(void *a1)
{
  if (a1[4])
  {
    v2 = [*(a1[5] + 32) objectForKeyedSubscript:?];

    v3 = ASDLogHandleForCategory();
    WeakRetained = v3;
    if (v2)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v5 = a1[4];
        v20 = 138543362;
        v21 = v5;
        _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_INFO, "Finished library placeholder for bundleID: %{public}@", &v20, 0xCu);
      }

      [*(a1[5] + 32) removeObjectForKey:a1[4]];
      WeakRetained = objc_loadWeakRetained((a1[5] + 24));
      v24 = a1[4];
      v6 = [NSArray arrayWithObjects:&v24 count:1];
      [WeakRetained catalogRefreshedBundleIDs:v6];
    }

    else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v19 = a1[4];
      v20 = 138543362;
      v21 = v19;
      _os_log_error_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_ERROR, "Failed to find placeholder to finish for bundleID: %{public}@", &v20, 0xCu);
    }

    v7 = [*(a1[5] + 40) objectForKeyedSubscript:a1[4]];
    if (v7)
    {
      v8 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_getProperty(v7, v9, 104, 1);
        v11 = a1[6];
        v20 = 138412546;
        v21 = v10;
        v22 = 2114;
        v23 = v11;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@]: Finished progress with reason: %{public}@", &v20, 0x16u);
      }

      v7[16].isa = 0x3FF0000000000000;
      v13 = objc_getProperty(v7, v12, 72, 1);
      v14 = [v13 installTotalUnitCount];
      v16 = objc_getProperty(v7, v15, 72, 1);
      [v16 setInstallCompletedUnitCount:v14];

      v18 = objc_getProperty(v7, v17, 72, 1);
      [v18 setPhase:6];

      [*(a1[5] + 48) removeObject:v7];
      [*(a1[5] + 40) setObject:0 forKeyedSubscript:a1[4]];
    }
  }

  else
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v20) = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to finish progress with no bundleID", &v20, 2u);
    }
  }
}

void *sub_10036662C(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = sub_100365F78;
    v9 = sub_100365F88;
    v10 = objc_opt_new();
    v2 = v1[1];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100366748;
    v4[3] = &unk_10051EEF0;
    v4[4] = v1;
    v4[5] = &v5;
    dispatch_sync(v2, v4);
    v1 = [v6[5] copy];
    _Block_object_dispose(&v5, 8);
  }

  return v1;
}

void sub_100366730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100366748(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 32);
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

        v7 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:{*(*(&v10 + 1) + 8 * v6), v10}];
        if ([v7 isSystemApp] && objc_msgSend(v7, "watchApplicationMode"))
        {
          v8 = *(*(*(a1 + 40) + 8) + 40);
          v9 = [v7 copy];
          [v8 addObject:v9];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void sub_10036689C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 8);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100366940;
    v6[3] = &unk_10051B570;
    v7 = v3;
    v8 = a1;
    dispatch_sync(v5, v6);
  }
}

void *sub_100366940(void *result)
{
  if (result[4])
  {
    return [*(result[5] + 32) setObject:0 forKeyedSubscript:?];
  }

  return result;
}

void sub_10036695C(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v7 = *(a1 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100366A10;
    block[3] = &unk_10051F4B0;
    v11 = a3;
    v9 = v5;
    v10 = a1;
    dispatch_async(v7, block);
  }
}

void sub_100366A10(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(*(a1 + 40) + 40) objectForKeyedSubscript:?];
    if (v2)
    {
      v4 = v2;
      v5 = (*(a1 + 48) * 1000.0);
      v6 = objc_getProperty(v2, v3, 72, 1);
      [v6 setCompletedUnitCount:v5];

      v7 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = objc_getProperty(v4, v8, 104, 1);
        v10 = *(a1 + 48);
        v14 = 138412546;
        v15 = v9;
        v16 = 2048;
        v17 = v10;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%@]: Setting fraction completed: %.2f", &v14, 0x16u);
      }

      sub_100365C7C(*(a1 + 40), v4);
    }

    else
    {
      v12 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 32);
        v14 = 138543362;
        v15 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "No progress exists for: %{public}@ - Ignoring this request", &v14, 0xCu);
      }

      v4 = 0;
    }
  }

  else
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 48);
      v14 = 134217984;
      v15 = v11;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to set fraction completed: %.2f with no bundleID", &v14, 0xCu);
    }
  }
}

void sub_100366C10(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = v7;
  if (a1)
  {
    if (v7)
    {
      v9 = *(a1 + 8);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100366D58;
      v11[3] = &unk_100524AB8;
      v11[4] = a1;
      v12 = v7;
      v13 = a4;
      v14 = a3;
      dispatch_async(v9, v11);
    }

    else
    {
      v10 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v16 = a3;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to begin download progress: %lld with no bundleID", buf, 0xCu);
      }
    }
  }
}

void sub_100366D58(void *a1)
{
  v2 = [*(a1[4] + 40) objectForKeyedSubscript:a1[5]];
  v3 = ASDLogHandleForCategory();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v6 = objc_getProperty(v2, v5, 104, 1);
      v7 = a1[6];
      v9 = 138412546;
      v10 = v6;
      v11 = 2048;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%@]: Starting download progress for size: %lld", &v9, 0x16u);
    }

    v2[15] = a1[6];
    sub_10040439C(v2, a1[7]);
    sub_100403E00(v2);
    sub_100365C7C(a1[4], v2);
  }

  else
  {
    if (v4)
    {
      v8 = a1[5];
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "No progress exists for: %{public}@ - Ignoring this request (update download progress)", &v9, 0xCu);
    }
  }
}

void sub_100366EC0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    if (v5)
    {
      v7 = *(a1 + 8);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100366FF8;
      block[3] = &unk_10051F4B0;
      block[4] = a1;
      v10 = v5;
      v11 = a3;
      dispatch_async(v7, block);
    }

    else
    {
      v8 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v13 = a3;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to update download progress: %lld with no bundleID", buf, 0xCu);
      }
    }
  }
}

void sub_100366FF8(void *a1)
{
  v2 = [*(a1[4] + 40) objectForKeyedSubscript:a1[5]];
  v3 = v2;
  if (v2)
  {
    sub_10040439C(v2, a1[6]);
    sub_100365C7C(a1[4], v3);
  }

  else
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = a1[5];
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "No progress exists for: %{public}@ - Ignoring this request (update download progress)", &v6, 0xCu);
    }
  }
}

void sub_1003670E4(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v7 = *(a1 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100367198;
    block[3] = &unk_10051F4B0;
    v11 = a3;
    v9 = v5;
    v10 = a1;
    dispatch_async(v7, block);
  }
}

void sub_100367198(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(*(a1 + 40) + 40) objectForKeyedSubscript:?];
    if (v2)
    {
      v4 = v2;
      v5 = objc_getProperty(v2, v3, 136, 1);
      v7 = v5;
      v8 = 0.0;
      v9 = 0.0;
      if (v5)
      {
        v9 = v5[1];
      }

      v10 = objc_getProperty(v4, v6, 136, 1);
      if (v10)
      {
        v8 = v10[2];
      }

      v11 = v9 + v8 * *(a1 + 48);

      *(v4 + 128) = v11;
      v13 = objc_getProperty(v4, v12, 72, 1);
      [v13 setCompletedUnitCount:(v11 * 1000.0)];

      v14 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v16 = objc_getProperty(v4, v15, 104, 1);
        v17 = *(a1 + 48);
        v26 = 138412802;
        v27 = v16;
        v28 = 2048;
        v29 = v17;
        v30 = 2048;
        v31 = v11;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[%@]: Received install progress: %.2f (%.2f)", &v26, 0x20u);
      }

      v18 = (*(a1 + 48) * 1000.0);
      v20 = objc_getProperty(v4, v19, 72, 1);
      [v20 setInstallCompletedUnitCount:v18];

      v22 = objc_getProperty(v4, v21, 72, 1);
      [v22 setPhase:4];

      sub_100365C7C(*(a1 + 40), v4);
    }

    else
    {
      v24 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = *(a1 + 32);
        v26 = 138543362;
        v27 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "No progress exists for: %{public}@ - Ignoring this request (update install progress)", &v26, 0xCu);
      }

      v4 = 0;
    }
  }

  else
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1 + 48);
      v26 = 134217984;
      v27 = v23;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to set install progress: %.2f with no bundleID", &v26, 0xCu);
    }
  }
}

void sub_100367460(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = v7;
  if (a1)
  {
    v9 = *(a1 + 8);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100367518;
    v10[3] = &unk_100524AB8;
    v13 = a3;
    v14 = a4;
    v11 = v7;
    v12 = a1;
    dispatch_async(v9, v10);
  }
}

void sub_100367518(void *a1)
{
  if (a1[4])
  {
    if ((a1[6] & 0x8000000000000000) != 0)
    {
      v4 = ASDLogHandleForCategory();
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      v27 = a1[4];
      v52 = 138543362;
      v53 = v27;
      v28 = "[%{public}@]: Received background asset progress update but bytes downloaded are not available";
    }

    else
    {
      if ((a1[7] & 0x8000000000000000) == 0)
      {
        v2 = [*(a1[5] + 40) objectForKeyedSubscript:?];
        if (v2)
        {
          v4 = v2;
          v5 = objc_getProperty(v2, v3, 136, 1);
          if (v5 && (v6 = v5[4], v5, v6 >= 1))
          {
            v8 = a1[6];
            v9 = a1[7];
            v10 = objc_getProperty(v4, v7, 136, 1);
            v12 = v10;
            v13 = 0.0;
            v14 = 0.0;
            if (v10)
            {
              v14 = v10[1];
            }

            v15 = v8;
            v16 = v9;
            v17 = objc_getProperty(v4, v11, 136, 1);
            v19 = v17;
            if (v17)
            {
              v13 = v17[2];
            }

            v20 = v14 + v13;
            v21 = objc_getProperty(v4, v18, 136, 1);
            if (v21)
            {
              v22 = v21[3];
            }

            else
            {
              v22 = 0.0;
            }

            v23 = v20 + v22 * (v15 / v16);
          }

          else
          {
            v32 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              v51 = objc_getProperty(v4, v33, 104, 1);
              v52 = 138412290;
              v53 = v51;
              _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "[%@]: Received background asset progress update but not configured to report this progress", &v52, 0xCu);
            }

            v23 = 0.0;
          }

          *(v4 + 128) = v23;
          v34 = objc_getProperty(v4, v24, 72, 1);
          [v34 setCompletedUnitCount:(v23 * 1000.0)];

          *(v4 + 88) = a1[7];
          *(v4 + 80) = a1[6];
          v35 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v37 = objc_getProperty(v4, v36, 104, 1);
            v38 = a1[6];
            v39 = a1[7];
            v52 = 138413058;
            v53 = v37;
            v54 = 2048;
            v55 = v38;
            v56 = 2048;
            v57 = v39;
            v58 = 2048;
            v59 = v23;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "[%@]: Received background asset download progress: %lld/%lld (%.2f)", &v52, 0x2Au);
          }

          v40 = a1[6];
          v42 = objc_getProperty(v4, v41, 72, 1);
          [v42 setPostProcessCompletedUnitCount:v40];

          v43 = a1[7];
          v45 = objc_getProperty(v4, v44, 72, 1);
          [v45 setPostProcessTotalUnitCount:v43];

          v47 = objc_getProperty(v4, v46, 72, 1);
          v48 = [v47 phase];

          if (v48 != 5)
          {
            sub_100403E00(v4);
            v50 = objc_getProperty(v4, v49, 72, 1);
            [v50 setPhase:5];
          }

          sub_100365C7C(a1[5], v4);
        }

        else
        {
          v30 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v31 = a1[4];
            v52 = 138543362;
            v53 = v31;
            _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "No progress exists for: %{public}@ - Ignoring this request (update background asset progress)", &v52, 0xCu);
          }

          v4 = 0;
        }

        goto LABEL_32;
      }

      v4 = ASDLogHandleForCategory();
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      v29 = a1[4];
      v52 = 138543362;
      v53 = v29;
      v28 = "[%{public}@]: Received background asset progress update but total bytes are not available";
    }

    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v28, &v52, 0xCu);
    goto LABEL_32;
  }

  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v25 = a1[6];
    v26 = a1[7];
    v52 = 134218240;
    v53 = v25;
    v54 = 2048;
    v55 = v26;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to update background asset progress: %lld/%lld with no bundleID", &v52, 0x16u);
  }

LABEL_32:
}

void sub_100367AE8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) allValues];
  v3 = [v2 filteredArrayUsingPredicate:*(a1 + 40)];

  v4 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = *(*(a1 + 32) + 40);
        v12 = [v10 bundleID];
        Property = [v11 objectForKeyedSubscript:v12];
        v15 = Property;
        if (Property)
        {
          Property = objc_getProperty(Property, v14, 72, 1);
        }

        v16 = Property;

        if ([v16 reportRemotely])
        {
          v17 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v27 = v10;
            _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Skipping app for catalog query since it is reporting remotely: %{public}@", buf, 0xCu);
          }
        }

        else
        {
          v17 = [v10 copy];
          [v4 addObject:v17];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v7);
  }

  v18 = [*(a1 + 48) count];
  v19 = *(a1 + 56);
  if (v18)
  {
    v20 = [NSPredicate predicateWithFormat:@"NOT bundleID IN %@", *(a1 + 48)];
    v21 = [v4 filteredArrayUsingPredicate:v20];
    (*(v19 + 16))(v19, v21, 0);
  }

  else
  {
    (*(v19 + 16))(*(a1 + 56), v4, 0);
  }
}

void sub_100367D90(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1002B0154();
  v5 = sub_1002B0280(v4);

  v6 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      v11 = 0;
      do
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v25 + 1) + 8 * v11);
        if (v12 && (*(v12 + 64) & 1) != 0)
        {
          if (v5 && (v5[18] & 1) != 0)
          {
            v13 = objc_alloc_init(XDCProgress);
            v14 = *(v12 + 96);
            sub_100296A24(v13, v14);

            v16 = objc_getProperty(v12, v15, 72, 1);
            v17 = [v16 completedUnitCount];
            if (v13)
            {
              v13->_completedUnitCount = v17;
            }

            v19 = objc_getProperty(v12, v18, 72, 1);
            v20 = [v19 totalUnitCount];
            if (v13)
            {
              v13->_totalUnitCount = v20;
            }

            [v6 addObject:v13];
          }
        }

        else
        {
          sub_1003658C8(a1, *(*(&v25 + 1) + 8 * v11));
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  if ([v6 count])
  {
    v21 = objc_alloc_init(XDCProgressMessage);
    sub_10031176C(v21, v6);
    v22 = sub_1003420C0([XDCMessage alloc], v21, 4);
    v23 = sub_1002EB36C();
    v24 = v23;
    if (v23)
    {
      sub_1002EB834(v23, v22, v5, 0, 0);
    }
  }
}

void sub_100368020(uint64_t a1)
{
  if (a1)
  {
    v2 = [*(a1 + 48) count];
    v3 = *(a1 + 48);
    if (v2)
    {
      sub_100367D90(a1, v3);
      [*(a1 + 48) removeAllObjects];
      v4 = dispatch_time(0, 200000000);
      v5 = *(a1 + 8);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1003680F4;
      block[3] = &unk_10051AF98;
      block[4] = a1;
      dispatch_after(v4, v5, block);
    }

    else
    {
      *(a1 + 48) = 0;
    }
  }
}

uint64_t sub_1003680FC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 creatorIdentifier] == 1)
  {
    [*(a1 + 32) addObject:v3];
  }

  return 1;
}

void sub_100368144(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 connection];
  v5 = sub_1002D3F5C(AppInstallEntity, v4, *(a1 + 32));

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100368234;
  v8[3] = &unk_100524AE0;
  v6 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = v3;
  v11 = *(a1 + 56);
  v7 = v3;
  [v5 enumerateMemoryEntitiesWithProperties:v6 usingBlock:v8];
}

void sub_100368234(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[_TtC9appstored6LogKey alloc] initWithAppInstallMemoryEntity:v3];
  v5 = sub_10023E644(v3, @"bundle_id");
  newValue = sub_10023E51C(v3, @"item_id");
  v42 = sub_10023E51C(v3, @"evid");
  v37 = sub_10023E4DC(v3, @"remote_install");
  v6 = sub_10023E604(v3, @"source_type");
  sub_10023E644(v3, @"store_cohort");
  v41 = v40 = a1;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v44 objects:v55 count:16];
  if (!v8)
  {
    v10 = 0;
LABEL_31:

    goto LABEL_33;
  }

  v9 = v8;
  v36 = v6;
  v38 = v3;
  v39 = v4;
  v10 = 0;
  v11 = *v45;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v45 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v44 + 1) + 8 * i);
      v14 = [v13 identity];
      v15 = [v14 bundleID];
      v16 = [v15 isEqualToString:v5];

      if (v16)
      {
        v17 = v13;

        v10 = v17;
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v44 objects:v55 count:16];
  }

  while (v9);

  if (!v10)
  {
    v3 = v38;
    v4 = v39;
    goto LABEL_33;
  }

  v3 = v38;
  v4 = v39;
  if ((sub_100408E18(v38) & 1) == 0)
  {
    v18 = [*(v40 + 40) connection];
    v54 = @"bytes_total";
    v19 = [NSArray arrayWithObjects:&v54 count:1];
    v7 = sub_1004093BC(v38, v18, v19);

    v20 = sub_10023E0F8(v7, @"bytes_total");
    v21 = [v20 unsignedLongLongValue];

    v22 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v49 = v39;
      v50 = 2114;
      v51 = v5;
      v52 = 2114;
      v53 = newValue;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[%@]: Recreating progress for paused install bundleID: %{public}@ storeItemID: %{public}@", buf, 0x20u);
    }

    sub_10030B6D4([ProgressPortions alloc], v21, 0);
    v24 = v23;
    v25 = sub_100403C3C([ProgressInfo alloc], v5, v23, v39);
    v27 = v25;
    if (v25)
    {
      *(v25 + 64) = v37;
      objc_setProperty_atomic(v25, v26, newValue, 152);
    }

    [*(*(v40 + 48) + 40) setObject:v27 forKeyedSubscript:v5];
    v28 = objc_alloc_init(ASDProgress);
    [v28 setBundleID:v5];
    [v28 setCompletedUnitCount:0];
    [v28 setTotalUnitCount:1000];
    [v28 setDownloadTotalUnitCount:v21];
    [v28 setDownloadCompletedUnitCount:0];
    [v28 setInstallTotalUnitCount:1000];
    [v28 setPhase:7];
    if (v27)
    {
      objc_setProperty_atomic(v27, v29, v28, 72);
    }

    v30 = 128;
    if (!v36)
    {
      v30 = 384;
    }

    if (v36 == 2)
    {
      v31 = 129;
    }

    else
    {
      v31 = v30;
    }

    v32 = +[LSApplicationWorkspace defaultWorkspace];
    v33 = [v32 applicationIsInstalled:v5];

    if (v33)
    {
      v34 = v31 | 4;
    }

    else
    {
      v34 = v31;
    }

    if (v38 && sub_10023E604(v38, @"update_type"))
    {
      v34 |= 8uLL;
    }

    v35 = [[ASDApp alloc] initWithBundleID:v5];
    [v35 setStatus:v34];
    [v35 setStoreItemID:{objc_msgSend(newValue, "longLongValue")}];
    [v35 setStoreExternalVersionID:{objc_msgSend(v42, "longLongValue")}];
    [v35 setRemoteProgress:v28];
    [v35 setStoreCohort:v41];
    [*(*(v40 + 48) + 32) setObject:v35 forKeyedSubscript:v5];

    v4 = v39;
    goto LABEL_31;
  }

LABEL_33:
}

id sub_1003687EC()
{
  objc_opt_self();
  if (qword_1005AACC0 != -1)
  {
    dispatch_once(&qword_1005AACC0, &stru_100524B00);
  }

  v0 = qword_1005AACB8;

  return v0;
}

void sub_100368844(id a1)
{
  v1 = objc_alloc_init(CrossfireService);
  v2 = qword_1005AACB8;
  qword_1005AACB8 = v1;
}

id *sub_1003690B4(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = PurchaseHistoryItemsDAAPResponseDecoder;
    v5 = objc_msgSendSuper2(&v12, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 3, a2);
      a1[8] = 100;
      v6 = [[NSConditionLock alloc] initWithCondition:0];
      v7 = a1[10];
      a1[10] = v6;

      v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v9 = dispatch_queue_create("com.apple.AppStoreDaemon.PurchaseHistoryDAAPResponseDecoder.pasrsingQueue", v8);
      v10 = a1[11];
      a1[11] = v9;

      *(a1 + 96) = 0;
    }
  }

  return a1;
}

void sub_10036918C(void **a1)
{
  if (a1)
  {
    self = sub_100295DC0([PurchaseHistoryItemsDAAPResponseMetadataParser alloc], a1[3]);
    sub_10026815C(self);
    if (self)
    {
      v3 = objc_getProperty(self, v2, 24, 1);
      v4 = a1[13];
      a1[13] = v3;

      Property = objc_getProperty(self, v5, 32, 1);
    }

    else
    {
      objc_storeStrong(a1 + 13, 0);
      Property = 0;
    }

    objc_storeStrong(a1 + 14, Property);
    if (self)
    {
      v8 = objc_getProperty(self, v7, 40, 1);
      v9 = a1[15];
      a1[15] = v8;

      v11 = objc_getProperty(self, v10, 48, 1);
    }

    else
    {
      objc_storeStrong(a1 + 15, 0);
      v11 = 0;
    }

    objc_storeStrong(a1 + 16, v11);
  }
}

id sub_10036929C(uint64_t a1)
{
  if (!a1)
  {
LABEL_21:
    v6 = 0;
    goto LABEL_22;
  }

  if (![*(a1 + 24) length])
  {
    v14 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v17) = 138412290;
      *(&v17 + 4) = objc_opt_class();
      v16 = *(&v17 + 4);
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[%@]: Response data 0 length", &v17, 0xCu);
    }

    goto LABEL_21;
  }

  [*(a1 + 80) lock];
  if (![*(a1 + 80) condition])
  {
    v2 = *(a1 + 24);
    v3 = *(a1 + 88);
    *&v17 = _NSConcreteStackBlock;
    *(&v17 + 1) = 3221225472;
    v18 = sub_1003694E0;
    v19 = &unk_10051B570;
    v20 = a1;
    v21 = v2;
    v4 = v2;
    dispatch_async(v3, &v17);
  }

  [*(a1 + 80) unlockWithCondition:{1, v17, v18, v19, v20}];
  [*(a1 + 80) lockWhenCondition:2];
  v5 = objc_opt_new();
  v6 = v5;
  if (*(a1 + 96) == 1 && v5)
  {
    *(v5 + 8) = 1;
  }

  if ([*(a1 + 32) count] && v6)
  {
    objc_setProperty_atomic(v6, v7, *(a1 + 32), 16);
  }

  if ([*(a1 + 40) count] && v6)
  {
    objc_setProperty_atomic(v6, v8, *(a1 + 40), 24);
  }

  *(a1 + 72) = 0;
  v9 = objc_opt_new();
  v10 = *(a1 + 32);
  *(a1 + 32) = v9;

  v11 = objc_opt_new();
  v12 = *(a1 + 40);
  *(a1 + 40) = v11;

  if (*(a1 + 96))
  {
    v13 = 3;
  }

  else
  {
    v13 = 2;
  }

  [*(a1 + 80) unlockWithCondition:v13];
LABEL_22:

  return v6;
}

void sub_1003694E0(uint64_t a1)
{
  [*(*(a1 + 32) + 80) lock];
  v2 = [[DKDAAPParser alloc] initWithData:*(a1 + 40)];
  [v2 setDelegate:*(a1 + 32)];
  [v2 parse];
}

id sub_100369550(id result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    v3 = *(result + 9) + 1;
    *(result + 9) = v3;
    if (v3 >= v2)
    {
      [*(result + 10) unlockWithCondition:2];
      v4 = v1[10];

      return [v4 lockWhenCondition:1];
    }
  }

  return result;
}

void *sub_10036AA30(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v6 = objc_opt_new();
  v7 = v6;
  if (v6)
  {
    objc_storeStrong((v6 + 16), a2);

    v8 = v4;
    v5 = v7[3];
    v7[3] = v8;
  }

  return v7;
}

uint64_t sub_10036AAC0(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  objc_sync_enter(v1);
  v2 = v1[1] - 1;
  v1[1] = v2;
  objc_sync_exit(v1);

  return v2;
}

uint64_t sub_10036AB10(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  objc_sync_enter(v1);
  v2 = v1[1] + 1;
  v1[1] = v2;
  objc_sync_exit(v1);

  return v2;
}

void *sub_10036ABA4(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = ODRApplicationCleanTask;
    a1 = objc_msgSendSuper2(&v7, "init");
    if (a1)
    {
      v4 = [v3 copy];
      v5 = a1[5];
      a1[5] = v4;
    }
  }

  return a1;
}

void sub_10036ACB0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = sub_10039A6A0(v1[5]);
    v3 = sub_1003F281C();
    sub_1003F3770(v3, v2, 0);

    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Cancelled download requests for: %{public}@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v27 = 0x3032000000;
    v28 = sub_10036B084;
    v29 = sub_10036B094;
    v30 = 0;
    v5 = sub_100208FBC();
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10036B09C;
    v18[3] = &unk_10051DC00;
    p_buf = &buf;
    v6 = v2;
    v19 = v6;
    [v5 readUsingSession:v18];

    if (*(*(&buf + 1) + 40))
    {
      v7 = sub_1003DC0F4();
      v8 = v7;
      if (v7)
      {
        v9 = *(v7 + 32);
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;
      v11 = [v10 stringByAppendingPathComponent:*(*(&buf + 1) + 40)];

      if (v11)
      {
        v12 = +[SAPathManager defaultManager];
        v13 = [NSURL fileURLWithPath:v11];
        v25 = v13;
        v14 = [NSArray arrayWithObjects:&v25 count:1];
        *&v21 = _NSConcreteStackBlock;
        *(&v21 + 1) = 3221225472;
        v22 = sub_10036B0F0;
        v23 = &unk_10051B5C0;
        v24 = v6;
        [v12 unregisterURLs:v14 forBundleID:v24 completionHandler:&v21];

        v15 = v24;
      }

      else
      {
        v15 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v21) = 138543362;
          *(&v21 + 4) = v6;
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to clear space attribution for %{public}@, application base directory is nil", &v21, 0xCu);
        }
      }
    }

    v16 = sub_100208FBC();
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10036B1C4;
    v17[3] = &unk_10051AF70;
    v17[4] = v1;
    [v16 modifyUsingTransaction:v17];

    [v1 completeWithSuccess];
    _Block_object_dispose(&buf, 8);
  }
}

uint64_t sub_10036B084(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10036B09C(uint64_t a1, id a2)
{
  v3 = sub_1001C4A38(a2, *(a1 + 32));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10036B0F0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 138543618;
      v7 = v5;
      v8 = 2114;
      v9 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to clear space attribution for %{public}@: %{public}@", &v6, 0x16u);
    }
  }
}

uint64_t sub_10036B1C4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10021A234(a2, *(*(a1 + 32) + 40));
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sub_10039A6A0(*(*(a1 + 32) + 40));
    v7 = 138543618;
    v8 = v5;
    v9 = 1024;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Removed manifest for %{public}@: %{BOOL}d", &v7, 0x12u);
  }

  return 1;
}

uint64_t sub_10036B560(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

uint64_t sub_10036B56C(uint64_t result)
{
  if (result)
  {
    return *(result + 12);
  }

  return result;
}

uint64_t sub_10036B814(uint64_t result)
{
  if (result)
  {
    return *(result + 128);
  }

  return result;
}

id sub_10036BA8C(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_10023E644(a1, @"bundle_id");
    v3 = sub_10023E644(a1, @"bundle_version");
    v4 = sub_10023E604(a1, @"platform");
    v5 = sub_10023E644(a1, @"bundle_short_version");
    v6 = v5;
    if (v2)
    {
      v7 = v3 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7 || v5 == 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = objc_opt_new();
      v10 = [ASDBetaAppVersion versionWithBundleID:v2 bundleVersion:v3 platform:v4 andShortVersion:v6];
      [v9 setVersion:v10];
      v11 = sub_10023E0F8(a1, @"email");
      [v9 setEmail:v11];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id sub_10036BBC4()
{
  objc_opt_self();
  if (qword_1005AACC8 != -1)
  {
    dispatch_once(&qword_1005AACC8, &stru_100524B60);
  }

  v0 = qword_1005AACD0;

  return v0;
}

void sub_10036BC1C(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1005AACD0;
  qword_1005AACD0 = v1;
}

id sub_10036BC58(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_opt_new();
  *(v3 + 8) = 1;
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  return v3;
}

void *sub_10036BCC0(void *a1, void *a2)
{
  if (a1)
  {
    if (*(a1 + 8) == 1)
    {
      a2 = a1[2];
    }

    a1 = a2;
  }

  return a1;
}

id sub_10036BD08()
{
  objc_opt_self();
  v0 = +[NSMutableArray array];
  outCount = 0;
  v1 = objc_opt_class();
  v2 = class_copyPropertyList(v1, &outCount);
  if (v2 && outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      v4 = property_copyAttributeValue(v2[i], "G");
      if (v4)
      {
        v5 = v4;
        v6 = [NSString stringWithUTF8String:v4];
        [v0 addObject:v6];

        free(v5);
      }

      v7 = [NSString stringWithUTF8String:property_getName(v2[i])];
      [v0 addObject:v7];
    }
  }

  free(v2);
  v8 = [v0 copy];

  return v8;
}

AppInstallPostProcessTask *sub_10036BE40(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_self();
  v13[0] = @"bundle_id";
  v13[1] = @"bundle_url";
  v13[2] = @"external_id";
  v13[3] = @"item_id";
  v13[4] = @"log_code";
  v13[5] = @"post_processing_state";
  v13[6] = @"restore_type";
  v13[7] = @"update_type";
  v5 = [NSArray arrayWithObjects:v13 count:8];
  v6 = [v4 connection];

  v7 = [(SQLiteEntity *)AppInstallEntity memoryEntityForPersistentID:a2 withProperties:v5 usingConnection:v6];

  v8 = [AppInstallPostProcessTask alloc];
  v9 = v7;
  if (v8)
  {
    v12.receiver = v8;
    v12.super_class = AppInstallPostProcessTask;
    v10 = objc_msgSendSuper2(&v12, "init");
    v8 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_install, v7);
    }
  }

  return v8;
}

uint64_t sub_10036C628(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [AppInstallEntity alloc];
  v5 = [*(*(a1 + 32) + 40) databaseID];
  v6 = [v3 connection];

  v7 = [(SQLiteEntity *)v4 initWithPersistentID:v5 onConnection:v6];
  if ([(SQLiteEntity *)v7 existsInDatabase])
  {
    v8 = [NSNumber numberWithInteger:sub_1003402E8(v7, @"post_processing_state") | 2];
    [(SQLiteEntity *)v7 setValue:v8 forProperty:@"post_processing_state"];
  }

  return 1;
}

id *sub_10036C75C(id *a1, void *a2, void *a3, void *a4)
{
  v8 = a4;
  if (a1)
  {
    v11.receiver = a1;
    v11.super_class = AppInstallPostProcessResponse;
    v9 = objc_msgSendSuper2(&v11, "init");
    a1 = v9;
    if (v9)
    {
      v9[1] = a2;
      v9[3] = a3;
      objc_storeStrong(v9 + 2, a4);
    }
  }

  return a1;
}

id sub_10036C90C()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10036C9B0;
  block[3] = &unk_10051BD00;
  block[4] = objc_opt_self();
  if (qword_1005AACE0 != -1)
  {
    dispatch_once(&qword_1005AACE0, block);
  }

  v0 = qword_1005AACD8;

  return v0;
}

void sub_10036C9B0(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v5 = sub_1001C0DF0();
  v2 = sub_1001C0FB8(v5);
  v3 = [v1 initWithDatabase:v2];
  v4 = qword_1005AACD8;
  qword_1005AACD8 = v3;
}

id sub_10036CA34(void *a1)
{
  if (a1)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x3032000000;
    v7 = sub_10036CB40;
    v8 = sub_10036CB50;
    v9 = 0;
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10036CB58;
    v3[3] = &unk_100520BC8;
    v3[4] = &v4;
    [a1 readUsingSession:v3];
    v1 = v5[5];
    _Block_object_dispose(&v4, 8);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void sub_10036CB28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10036CB40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10036CB58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SQLiteQueryDescriptor alloc];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = sub_1002D3838(v4, v5, v6);
  v8 = [SQLiteQuery alloc];
  v9 = [v3 connection];

  v10 = [(SQLiteQuery *)v8 initOnConnection:v9 descriptor:v7];
  v11 = sub_1001F12B8();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10036CC90;
  v12[3] = &unk_10051B010;
  v12[4] = *(a1 + 32);
  [v10 enumerateMemoryEntitiesWithProperties:v11 usingBlock:v12];
}

void sub_10036CD68(id a1, int64_t a2, int64_t *a3, id *a4)
{
  if (a2 <= 14999)
  {
    if (a2 > 14001)
    {
      if (a2 <= 14003)
      {
        if (a2 == 14002)
        {
          v4 = &stru_100524EB8;
          v5 = 14003;
        }

        else
        {
          v4 = &stru_100524ED8;
          v5 = 14004;
        }
      }

      else
      {
        switch(a2)
        {
          case 14004:
            v4 = &stru_100524EF8;
            v5 = 14005;
            break;
          case 14005:
            v4 = &stru_100524F18;
            v5 = 14006;
            break;
          case 14006:
            v4 = &stru_100524F38;
            v5 = 15000;
            break;
          default:
            return;
        }
      }

      goto LABEL_41;
    }

    if (a2 > 13999)
    {
      if (a2 == 14000)
      {
        v4 = &stru_100524E78;
        v5 = 14001;
      }

      else
      {
        v4 = &stru_100524E98;
        v5 = 14002;
      }

      goto LABEL_41;
    }

    if (a2)
    {
      if (a2 != 13002)
      {
        return;
      }

      v4 = &stru_100524E58;
      v5 = 14000;
      goto LABEL_41;
    }

    v4 = &stru_100525078;
LABEL_31:
    v5 = 19001;
    goto LABEL_41;
  }

  if (a2 > 15999)
  {
    if (a2 <= 16001)
    {
      if (a2 == 16000)
      {
        v4 = &stru_100524FD8;
        v5 = 16001;
      }

      else
      {
        v4 = &stru_100524FF8;
        v5 = 16002;
      }

      goto LABEL_41;
    }

    if (a2 == 16002)
    {
      v4 = &stru_100525018;
      v5 = 16003;
      goto LABEL_41;
    }

    if (a2 == 16003)
    {
      v4 = &stru_100525038;
      v5 = 17001;
      goto LABEL_41;
    }

    if (a2 != 17001)
    {
      return;
    }

    v4 = &stru_100525058;
    goto LABEL_31;
  }

  if (a2 > 15001)
  {
    if (a2 == 15002)
    {
      v4 = &stru_100524F98;
      v5 = 15003;
    }

    else
    {
      if (a2 != 15003)
      {
        return;
      }

      v4 = &stru_100524FB8;
      v5 = 16000;
    }
  }

  else if (a2 == 15000)
  {
    v4 = &stru_100524F58;
    v5 = 15001;
  }

  else
  {
    v4 = &stru_100524F78;
    v5 = 15002;
  }

LABEL_41:
  *a3 = v5;
  v6 = *a4;
  *a4 = v4;
}

void sub_10036CFB8(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = v2;
    sub_1003BA14C(v2, @"CREATE TABLE IF NOT EXISTS launch_event_sync_metadata (pid INTEGER, last_duet_sync DATETIME, spotlight_migrated_date DATETIME, timestamp DATETIME DEFAULT (timestamp()), PRIMARY KEY (pid));", 1, 0);
    sub_1003BA14C(v3, @"CREATE TABLE IF NOT EXISTS launch_events (pid INTEGER, bundle_id TEXT, containing_bundle_id, event_source INTEGER, is_extension INTEGER, launch_end_time DATETIME, launch_start_time DATETIME, timestamp DATETIME DEFAULT (timestamp()), PRIMARY KEY (pid));", 1, 0);
    v2 = v3;
  }
}

void sub_10036D020(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = v2;
    sub_1003BA14C(v2, @"ALTER TABLE app_events_crossfire ADD COLUMN clip_affiliate_token TEXT;", 1, 0);
    sub_1003BA14C(v3, @"ALTER TABLE app_events_crossfire ADD COLUMN clip_app_type TEXT;", 1, 0);
    sub_1003BA14C(v3, @"ALTER TABLE app_events_crossfire ADD COLUMN clip_campaign TEXT;", 1, 0);
    sub_1003BA14C(v3, @"ALTER TABLE app_events_crossfire ADD COLUMN clip_campaign_token TEXT;", 1, 0);
    sub_1003BA14C(v3, @"ALTER TABLE app_events_crossfire ADD COLUMN clip_provider_token TEXT;", 1, 0);
    sub_1003BA14C(v3, @"ALTER TABLE app_events_crossfire ADD COLUMN clip_ref_source TEXT;", 1, 0);
    sub_1003BA14C(v3, @"ALTER TABLE app_events_crossfire ADD COLUMN clip_ref_type TEXT;", 1, 0);
    v2 = v3;
  }
}

void sub_10036D100(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = v2;
    sub_1003BA14C(v2, @"ALTER TABLE app_events_crossfire ADD COLUMN is_clip INTEGER;", 1, 0);
    sub_1003BA14C(v3, @"ALTER TABLE app_events_ocelot ADD COLUMN is_clip INTEGER;", 1, 0);
    sub_1003BA14C(v3, @"ALTER TABLE app_events_ocelot_payout ADD COLUMN is_clip INTEGER;", 1, 0);
    sub_1003BA14C(v3, @"ALTER TABLE app_events_personalization ADD COLUMN is_clip INTEGER;", 1, 0);
    sub_1003BA14C(v3, @"ALTER TABLE current_apps_crossfire ADD COLUMN is_clip INTEGER;", 1, 0);
    sub_1003BA14C(v3, @"ALTER TABLE current_apps_ocelot ADD COLUMN is_clip INTEGER;", 1, 0);
    sub_1003BA14C(v3, @"ALTER TABLE current_apps_ocelot_payout ADD COLUMN is_clip INTEGER;", 1, 0);
    sub_1003BA14C(v3, @"ALTER TABLE current_apps_personalization ADD COLUMN is_clip INTEGER;", 1, 0);
    v2 = v3;
  }
}

void sub_10036D1F8(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = v2;
    sub_1003BA14C(v2, @"CREATE TABLE IF NOT EXISTS current_app_installs (pid INTEGER, bundle_id TEXT, clip_affiliate_token TEXT, clip_campaign TEXT, clip_campaign_token TEXT, clip_provider_token TEXT, clip_ref_source TEXT, clip_ref_type TEXT, clip_third_party_with_no_app_referrer INTEGER, timestamp DATETIME DEFAULT (timestamp()), PRIMARY KEY (pid));", 1, 0);
    sub_1003BA14C(v3, @"ALTER TABLE app_events_crossfire ADD COLUMN clip_third_party_with_no_app_referrer INTEGER;", 1, 0);
    v2 = v3;
  }
}

void sub_10036D260(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  if (a2)
  {
    sub_1003BA14C(a2, @"CREATE TABLE IF NOT EXISTS app_usage_session_reporter_keys (pid INTEGER, bundle_id TEXT, session_reporter_key TEXT, last_refresh DATETIME, timestamp DATETIME DEFAULT (timestamp()), PRIMARY KEY (pid));", 1, 0);
  }
}

void sub_10036D284(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = v2;
    sub_1003BA14C(v2, @"ALTER TABLE app_events_crossfire ADD COLUMN device_vendor_id_repaired INTEGER;", 1, 0);
    sub_1003BA14C(v3, @"ALTER TABLE app_events_ocelot ADD COLUMN device_vendor_id_repaired INTEGER;", 1, 0);
    sub_1003BA14C(v3, @"ALTER TABLE app_events_ocelot_payout ADD COLUMN device_vendor_id_repaired INTEGER;", 1, 0);
    sub_1003BA14C(v3, @"ALTER TABLE app_events_personalization ADD COLUMN device_vendor_id_repaired INTEGER;", 1, 0);
    v2 = v3;
  }
}

void sub_10036D31C(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = v2;
    sub_1003BA14C(v2, @"ALTER TABLE current_apps_crossfire ADD COLUMN vendor_name TEXT;", 1, 0);
    sub_1003BA14C(v3, @"ALTER TABLE current_apps_ocelot ADD COLUMN vendor_name TEXT;", 1, 0);
    sub_1003BA14C(v3, @"ALTER TABLE current_apps_ocelot_payout ADD COLUMN vendor_name TEXT;", 1, 0);
    sub_1003BA14C(v3, @"ALTER TABLE current_apps_personalization ADD COLUMN vendor_name TEXT;", 1, 0);
    v2 = v3;
  }
}

void sub_10036D3B4(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = v2;
    sub_1003BA14C(v2, @"CREATE TABLE IF NOT EXISTS app_metrics_events (pid INTEGER, bundle_id TEXT, event_type INTEGER, event_subtype INTEGER, metrics_type INTEGER, has_been_posted INTEGER DEFAULT 0, payload JSON, timestamp DATETIME DEFAULT (timestamp()), PRIMARY KEY (pid));", 1, 0);
    sub_1003BA14C(v3, @"CREATE TABLE IF NOT EXISTS current_apps (pid INTEGER, app_platform INTEGER, bundle_id TEXT, bundle_version TEXT, cohort TEXT, device_vendor_id TEXT, deletion_date DATETIME, event_type INTEGER, evid INTEGER, is_arcade INTEGER, is_beta INTEGER, is_clip INTEGER, is_prior INTEGER, is_system_app INTEGER, item_id INTEGER, item_name TEXT, short_version TEXT, storefront INTEGER, timestamp DATETIME DEFAULT (timestamp()), vendor_name TEXT, PRIMARY KEY (pid));", 1, 0);
    v2 = v3;
  }
}

void sub_10036D41C(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = v2;
    sub_1003BA14C(v2, @"ALTER TABLE app_events_crossfire ADD COLUMN app_platform INTEGER;", 1, 0);
    sub_1003BA14C(v3, @"ALTER TABLE app_events_ocelot ADD COLUMN app_platform INTEGER;", 1, 0);
    sub_1003BA14C(v3, @"ALTER TABLE app_events_ocelot_payout ADD COLUMN app_platform INTEGER;", 1, 0);
    sub_1003BA14C(v3, @"ALTER TABLE app_events_personalization ADD COLUMN app_platform INTEGER;", 1, 0);
    sub_1003BA14C(v3, @"ALTER TABLE current_apps_crossfire ADD COLUMN app_platform INTEGER;", 1, 0);
    sub_1003BA14C(v3, @"ALTER TABLE current_apps_ocelot ADD COLUMN app_platform INTEGER;", 1, 0);
    sub_1003BA14C(v3, @"ALTER TABLE current_apps_ocelot_payout ADD COLUMN app_platform INTEGER;", 1, 0);
    sub_1003BA14C(v3, @"ALTER TABLE current_apps_personalization ADD COLUMN app_platform INTEGER;", 1, 0);
    sub_1003BA14C(v3, @"ALTER TABLE current_apps ADD COLUMN app_platform INTEGER;", 0, 0);
    v2 = v3;
  }
}

void sub_10036D52C(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  if (a2)
  {
    sub_1003BA14C(a2, @"ALTER TABLE current_apps ADD COLUMN is_arcade INTEGER;", 0, 0);
  }
}

void sub_10036D550(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = v2;
    sub_1003BA14C(v2, @"ALTER TABLE current_apps_ocelot ADD COLUMN is_arcade INTEGER;", 0, 0);
    sub_1003BA14C(v3, @"ALTER TABLE current_apps_crossfire ADD COLUMN is_arcade INTEGER;", 0, 0);
    sub_1003BA14C(v3, @"ALTER TABLE current_apps_ocelot_payout ADD COLUMN is_arcade INTEGER;", 0, 0);
    sub_1003BA14C(v3, @"ALTER TABLE current_apps_personalization ADD COLUMN is_arcade INTEGER;", 0, 0);
    v2 = v3;
  }
}

void sub_10036D5E8(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  if (a2)
  {
    sub_1003BA14C(a2, @"CREATE TABLE IF NOT EXISTS active_launch_events (pid INTEGER, bundle_id TEXT, containing_bundle_id, event_source INTEGER, is_extension INTEGER, launch_end_time DATETIME, launch_start_time DATETIME, payload JSON, timestamp DATETIME DEFAULT (timestamp()), PRIMARY KEY (pid));", 1, 0);
  }
}

void sub_10036D60C(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  if (a2)
  {
    sub_1003BA14C(a2, @"ALTER TABLE current_apps ADD COLUMN is_system_app INTEGER;", 0, 0);
  }
}

void sub_10036D630(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = v2;
    sub_1003BA14C(v2, @"ALTER TABLE current_apps_crossfire ADD COLUMN is_system_app INTEGER;", 0, 0);
    sub_1003BA14C(v3, @"ALTER TABLE current_apps_ocelot ADD COLUMN is_system_app INTEGER;", 0, 0);
    sub_1003BA14C(v3, @"ALTER TABLE current_apps_ocelot_payout ADD COLUMN is_system_app INTEGER;", 0, 0);
    sub_1003BA14C(v3, @"ALTER TABLE current_apps_personalization ADD COLUMN is_system_app INTEGER;", 0, 0);
    v2 = v3;
  }
}

void sub_10036D6C8(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = v2;
    sub_1003BA14C(v2, @"ALTER TABLE app_events_crossfire ADD COLUMN is_system_app INTEGER NOT NULL DEFAULT 0;", 0, 0);
    sub_1003BA14C(v3, @"ALTER TABLE app_events_ocelot ADD COLUMN is_system_app INTEGER NOT NULL DEFAULT 0;", 0, 0);
    sub_1003BA14C(v3, @"ALTER TABLE app_events_ocelot_payout ADD COLUMN is_system_app INTEGER NOT NULL DEFAULT 0;", 0, 0);
    sub_1003BA14C(v3, @"ALTER TABLE app_events_personalization ADD COLUMN is_system_app INTEGER NOT NULL DEFAULT 0;", 0, 0);
    v2 = v3;
  }
}

void sub_10036D760(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = v2;
    sub_1003BA14C(v2, @"DROP TABLE current_apps_crossfire", 0, 0);
    sub_1003BA14C(v3, @"DROP TABLE current_apps_ocelot", 0, 0);
    sub_1003BA14C(v3, @"DROP TABLE current_apps_ocelot_payout", 0, 0);
    sub_1003BA14C(v3, @"DROP TABLE current_apps_personalization", 0, 0);
    sub_1003BA14C(v3, @"DROP TABLE app_cluster_mappings", 0, 0);
    v2 = v3;
  }
}

void sub_10036D810(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  if (a2)
  {
    sub_1003BA14C(a2, @"CREATE TABLE IF NOT EXISTS arcade_launch_events (pid INTEGER, bundle_id TEXT, source_bundle_id TEXT, has_been_posted INTEGER DEFAULT 0, payload JSON, timestamp DATETIME DEFAULT (timestamp()), PRIMARY KEY (pid));", 1, 0);
  }
}

void sub_10036D834(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = v2;
    sub_1003BA14C(v2, @"DROP TABLE active_launch_events", 0, 0);
    sub_1003BA14C(v3, @"DROP TABLE account_events", 0, 0);
    sub_1003BA14C(v3, @"DROP TABLE app_events_crossfire", 0, 0);
    sub_1003BA14C(v3, @"DROP TABLE app_events_ocelot", 0, 0);
    sub_1003BA14C(v3, @"DROP TABLE app_events_ocelot_payout", 0, 0);
    sub_1003BA14C(v3, @"DROP TABLE app_events_personalization", 0, 0);
    sub_1003BA14C(v3, @"DROP TABLE app_cluster_mappings", 0, 0);
    sub_1003BA14C(v3, @"DROP TABLE app_metrics_events", 0, 0);
    sub_1003BA14C(v3, @"DROP TABLE arcade_launch_events", 0, 0);
    sub_1003BA14C(v3, @"DROP TABLE current_apps", 0, 0);
    sub_1003BA14C(v3, @"DROP TABLE current_apps_crossfire", 0, 0);
    sub_1003BA14C(v3, @"DROP TABLE current_apps_ocelot", 0, 0);
    sub_1003BA14C(v3, @"DROP TABLE current_apps_ocelot_payout", 0, 0);
    sub_1003BA14C(v3, @"DROP TABLE current_apps_personalization", 0, 0);
    sub_1003BA14C(v3, @"DROP TABLE launch_events", 0, 0);
    sub_1003BA14C(v3, @"DROP TABLE launch_event_sync_metadata", 0, 0);
    sub_1003BA14C(v3, @"CREATE TABLE IF NOT EXISTS active_launch_events (pid INTEGER, bundle_id TEXT, containing_bundle_id, event_source INTEGER, is_extension INTEGER, launch_end_time DATETIME, launch_start_time DATETIME, payload JSON, timestamp DATETIME DEFAULT (timestamp()), PRIMARY KEY (pid));", 1, 0);
    sub_1003BA14C(v3, @"CREATE TABLE IF NOT EXISTS account_events (pid INTEGER, active_start_time DATETIME, active_end_time DATETIME, account_id INTEGER, apple_id TEXT, alt_dsid TEXT, event_type INTEGER, timestamp DATETIME DEFAULT (timestamp()), PRIMARY KEY (pid));", 1, 0);
    sub_1003BA14C(v3, @"CREATE TABLE IF NOT EXISTS app_events_crossfire (pid INTEGER, account_id INTEGER, app_platform INTEGER, bundle_id TEXT, bundle_version TEXT, clip_affiliate_token TEXT, clip_app_type TEXT, clip_campaign TEXT, clip_campaign_token TEXT, clip_provider_token TEXT, clip_ref_source TEXT, clip_ref_type TEXT, clip_third_party_with_no_app_referrer INTEGER, cohort TEXT, count INTEGER, cumulative_user_count INTEGER, device_vendor_id TEXT, device_vendor_id_repaired INTEGER, event_type INTEGER, event_subtype INTEGER, evid INTEGER, has_been_posted INTEGER DEFAULT 0, is_beta INTEGER, is_clip INTEGER, is_system_app INTEGER DEFAULT 0, is_temporary INTEGER DEFAULT 0, item_id INTEGER, item_name TEXT, launch_time DATETIME, launch_end_time DATETIME, week_start_time DATETIME, short_version TEXT, storefront INTEGER, timestamp DATETIME DEFAULT (timestamp()), usage_time INTEGER, PRIMARY KEY (pid));", 1, 0);
    sub_1003BA14C(v3, @"CREATE TABLE IF NOT EXISTS current_app_installs (pid INTEGER, bundle_id TEXT, clip_affiliate_token TEXT, clip_campaign TEXT, clip_campaign_token TEXT, clip_provider_token TEXT, clip_ref_source TEXT, clip_ref_type TEXT, clip_third_party_with_no_app_referrer INTEGER, timestamp DATETIME DEFAULT (timestamp()), PRIMARY KEY (pid));", 1, 0);
    sub_1003BA14C(v3, @"CREATE TABLE IF NOT EXISTS app_events_ocelot (pid INTEGER, account_id INTEGER, app_platform INTEGER, bundle_id TEXT, bundle_version TEXT, cohort TEXT, count INTEGER, cumulative_user_count INTEGER, device_vendor_id TEXT, device_vendor_id_repaired INTEGER, event_type INTEGER, event_subtype INTEGER, evid INTEGER, has_been_posted INTEGER DEFAULT 0, is_beta INTEGER, is_clip INTEGER, is_system_app INTEGER DEFAULT 0, is_temporary INTEGER DEFAULT 0, item_id INTEGER, item_name TEXT, launch_time DATETIME, launch_end_time DATETIME, week_start_time DATETIME, short_version TEXT, storefront INTEGER, timestamp DATETIME DEFAULT (timestamp()), usage_time INTEGER, PRIMARY KEY (pid));", 1, 0);
    sub_1003BA14C(v3, @"CREATE TABLE IF NOT EXISTS app_events_ocelot_payout (pid INTEGER, account_id INTEGER, app_platform INTEGER, bundle_id TEXT, bundle_version TEXT, cohort TEXT, count INTEGER, cumulative_user_count INTEGER, device_vendor_id TEXT, device_vendor_id_repaired INTEGER, event_type INTEGER, event_subtype INTEGER, evid INTEGER, has_been_posted INTEGER DEFAULT 0, is_beta INTEGER, is_clip INTEGER, is_system_app INTEGER DEFAULT 0, is_temporary INTEGER DEFAULT 0, item_id INTEGER, item_name TEXT, launch_time DATETIME, launch_end_time DATETIME, week_start_time DATETIME, short_version TEXT, storefront INTEGER, timestamp DATETIME DEFAULT (timestamp()), usage_time INTEGER, PRIMARY KEY (pid));", 1, 0);
    sub_1003BA14C(v3, @"CREATE TABLE IF NOT EXISTS app_events_personalization (pid INTEGER, account_id INTEGER, app_platform INTEGER, bundle_id TEXT, bundle_version TEXT, cohort TEXT, count INTEGER, cumulative_user_count INTEGER, device_vendor_id TEXT, device_vendor_id_repaired INTEGER, event_type INTEGER, event_subtype INTEGER, evid INTEGER, has_been_posted INTEGER DEFAULT 0, is_beta INTEGER, is_clip INTEGER, is_system_app INTEGER DEFAULT 0, is_temporary INTEGER DEFAULT 0, item_id INTEGER, item_name TEXT, launch_time DATETIME, launch_end_time DATETIME, week_start_time DATETIME, short_version TEXT, storefront INTEGER, timestamp DATETIME DEFAULT (timestamp()), usage_time INTEGER, PRIMARY KEY (pid));", 1, 0);
    sub_1003BA14C(v3, @"CREATE TABLE IF NOT EXISTS launch_event_sync_metadata (pid INTEGER, last_duet_sync DATETIME, spotlight_migrated_date DATETIME, timestamp DATETIME DEFAULT (timestamp()), PRIMARY KEY (pid));", 1, 0);
    sub_1003BA14C(v3, @"CREATE TABLE IF NOT EXISTS launch_events (pid INTEGER, bundle_id TEXT, containing_bundle_id, event_source INTEGER, is_extension INTEGER, launch_end_time DATETIME, launch_start_time DATETIME, timestamp DATETIME DEFAULT (timestamp()), PRIMARY KEY (pid));", 1, 0);
    sub_1003BA14C(v3, @"CREATE TABLE IF NOT EXISTS app_metrics_events (pid INTEGER, bundle_id TEXT, event_type INTEGER, event_subtype INTEGER, metrics_type INTEGER, has_been_posted INTEGER DEFAULT 0, payload JSON, timestamp DATETIME DEFAULT (timestamp()), PRIMARY KEY (pid));", 1, 0);
    sub_1003BA14C(v3, @"CREATE TABLE IF NOT EXISTS arcade_launch_events (pid INTEGER, bundle_id TEXT, source_bundle_id TEXT, has_been_posted INTEGER DEFAULT 0, payload JSON, timestamp DATETIME DEFAULT (timestamp()), PRIMARY KEY (pid));", 1, 0);
    sub_1003BA14C(v3, @"CREATE TABLE IF NOT EXISTS current_apps (pid INTEGER, app_platform INTEGER, bundle_id TEXT, bundle_version TEXT, cohort TEXT, device_vendor_id TEXT, deletion_date DATETIME, event_type INTEGER, evid INTEGER, is_arcade INTEGER, is_beta INTEGER, is_clip INTEGER, is_prior INTEGER, is_system_app INTEGER, item_id INTEGER, item_name TEXT, short_version TEXT, storefront INTEGER, timestamp DATETIME DEFAULT (timestamp()), vendor_name TEXT, PRIMARY KEY (pid));", 1, 0);
    sub_1003BA14C(v3, @"CREATE TABLE IF NOT EXISTS app_usage_session_reporter_keys (pid INTEGER, bundle_id TEXT, session_reporter_key TEXT, last_refresh DATETIME, timestamp DATETIME DEFAULT (timestamp()), PRIMARY KEY (pid));", 1, 0);
    v2 = v3;
  }
}

id sub_10036DFAC(uint64_t a1, char a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  objc_opt_self();
  v13 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v55 = a6;
    v43 = objc_opt_class();
    v44 = v43;
    objc_opt_self();
    v45 = +[NSMutableArray array];
    v46 = v45;
    if ((a2 & 0x20) != 0)
    {
      [v45 addObject:@"BiomeTx"];
    }

    if ((a2 & 8) != 0)
    {
      [v46 addObject:@"Biome"];
    }

    v14 = a2 & 0x20;
    if ((a2 & 0x10) != 0)
    {
      [v46 addObject:@"BiomeClip"];
    }

    v47 = [v46 copy];

    v48 = [v47 componentsJoinedByString:{@", "}];
    *buf = 138543618;
    v68 = v43;
    v69 = 2114;
    v70 = v48;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "[%{public}@] Looking for launch events for streams: [%{public}@]", buf, 0x16u);

    a6 = v55;
  }

  else
  {
    v14 = a2 & 0x20;
  }

  if (v14)
  {
    objc_opt_self();
    v15 = +[NSMutableArray array];
  }

  else if ((a2 & 0x18) != 0)
  {
    v58 = v10;
    v16 = v10;
    v17 = v11;
    v60 = v12;
    v57 = objc_opt_self();
    v61 = v17;
    v59 = [[BMPublisherOptions alloc] initWithStartDate:v16 endDate:v17 maxEvents:9999 lastN:0 reversed:0];
    v18 = +[NSMutableDictionary dictionary];
    if ((a2 & 0x10) != 0)
    {
      v19 = BiomeLibrary();
      v20 = [v19 App];
      v21 = [v20 Clip];
      v22 = [v21 InFocus];

      v53 = v22;
      v23 = [v22 publisherWithOptions:v59];
      v24 = sub_10036EA28(v57, v23, v61, v60, 0, a6);
      if ([v18 count])
      {
        v51 = v23;
        v52 = v12;
        v54 = a6;
        v56 = v16;
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v50 = v24;
        v25 = v24;
        v26 = [v25 countByEnumeratingWithState:&v63 objects:buf count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v64;
          do
          {
            v29 = 0;
            do
            {
              if (*v64 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = *(*(&v63 + 1) + 8 * v29);
              if (v30)
              {
                v31 = *(v30 + 40);
                if (v31)
                {
                  v32 = [v18 objectForKeyedSubscript:v31];
                  if (!v32)
                  {
                    v32 = +[NSMutableArray array];
                    [v18 setObject:v32 forKeyedSubscript:v31];
                  }

                  [v32 addObject:v30];
                }
              }

              else
              {
                v31 = 0;
              }

              v29 = v29 + 1;
            }

            while (v27 != v29);
            v33 = [v25 countByEnumeratingWithState:&v63 objects:buf count:16];
            v27 = v33;
          }

          while (v33);
        }

        v12 = v52;
        a6 = v54;
        v16 = v56;
        v24 = v50;
        v23 = v51;
      }
    }

    if ((a2 & 8) != 0)
    {
      v34 = BiomeLibrary();
      v35 = [v34 App];
      v36 = [v35 InFocus];

      [v36 publisherWithOptions:v59];
      v38 = v37 = a6;
      v62 = 0;
      v39 = sub_10036EA28(v57, v38, v61, v60, v18, &v62);
      v40 = v62;
      v41 = v40;
      if (v37 && v40)
      {
        v42 = v40;
        v15 = 0;
        *v37 = v41;
      }

      else
      {
        v15 = v39;
      }
    }

    else
    {
      v15 = 0;
    }

    v10 = v58;
  }

  else if (a6)
  {
    ASDErrorWithTitleAndMessage();
    *a6 = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t sub_10036E4EC()
{
  objc_opt_self();
  if (!os_variant_has_internal_content())
  {
    return 24;
  }

  v0 = sub_1003D3F88(AppDefaultsManager, @"DefaultLaunchStreams");

  if (!v0)
  {
    return 24;
  }

  v1 = sub_1003D3F88(AppDefaultsManager, @"DefaultLaunchStreams");
  v2 = [v1 integerValue];

  return v2;
}

id sub_10036E570(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = +[NSMutableArray array];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v47 objects:v57 count:16];
  if (!v4)
  {
    v7 = 0;
    goto LABEL_45;
  }

  v6 = v4;
  v7 = 0;
  v8 = *v48;
  v9 = @"com.apple.control-center";
  *&v5 = 138543874;
  v42 = v5;
  v45 = v3;
  do
  {
    v10 = 0;
    do
    {
      if (*v48 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v47 + 1) + 8 * v10);
      if (v11)
      {
        v12 = v11[5];
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      v14 = [v13 isEqualToString:v9];

      if ((v14 & 1) == 0)
      {
        v15 = v9;
        v16 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v33 = objc_opt_class();
          *buf = 138543618;
          v52 = v33;
          v53 = 2114;
          v54 = v11;
          _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "[%{public}@] Processing launch: %{public}@ ", buf, 0x16u);
        }

        v17 = v7;
        v18 = v11;
        objc_opt_self();
        if (v17 && v18 && (*(v17 + 9) & 1) != 0 && *(v18 + 9) == 1)
        {
          v19 = v18[4];
          if (!v19)
          {
            v20 = v17[4];
            if (v20 && (v21 = v18[4]) != 0)
            {
LABEL_29:

              v19 = 0;
            }

            else
            {
              v43 = v20;
              v22 = v17[5];
              v23 = v18[5];
              if ([v22 isEqualToString:v23] && *(v18 + 3) == 4)
              {
                v24 = *(v17 + 3);

                if (v43)
                {
                }

                v25 = v24 == 4;
                v3 = v45;
                if (v25)
                {
                  v26 = v18[2];
                  objc_setProperty_nonatomic_copy(v17, v27, v26, 16);

                  v28 = v17[2];
                  v29 = v17[3];
                  [v28 timeIntervalSinceDate:v29];
                  v31 = v30;

                  v17[18] = v31;
                  v32 = ASDLogHandleForCategory();
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
                  {
                    v36 = objc_opt_class();
                    v37 = v18[5];
                    v38 = v17[18];
                    *buf = v42;
                    v52 = v36;
                    v53 = 2114;
                    v54 = v37;
                    v55 = 2048;
                    v56 = v38;
                    _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "[%{public}@] Combined last event with bundle ID: %{public}@ duration: %lld", buf, 0x20u);
                  }

                  v7 = v17;
LABEL_33:
                  v9 = v15;
                }

                else
                {
LABEL_32:
                  [v3 addObject:{v18, v42}];
                  v7 = v18;

                  v32 = ASDLogHandleForCategory();
                  if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
                  {
                    goto LABEL_33;
                  }

                  v44 = objc_opt_class();
                  v9 = v15;
                  if (v11)
                  {
                    v34 = v7[5];
                  }

                  else
                  {
                    v34 = 0;
                  }

                  v35 = v34;
                  *buf = 138543618;
                  v52 = v44;
                  v53 = 2114;
                  v54 = v35;
                  _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "[%{public}@] Last event with bundle ID: %{public}@", buf, 0x16u);
                }

                goto LABEL_35;
              }

              v20 = v43;
              if (v43)
              {
                v21 = 0;
                goto LABEL_29;
              }
            }
          }

          v3 = v45;
        }

        goto LABEL_32;
      }

LABEL_35:
      v10 = v10 + 1;
    }

    while (v6 != v10);
    v39 = [obj countByEnumeratingWithState:&v47 objects:v57 count:16];
    v6 = v39;
  }

  while (v39);
LABEL_45:

  v40 = [v3 copy];

  return v40;
}

id sub_10036EA28(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = a2;
  v11 = a3;
  v146 = a4;
  v148 = a5;
  objc_opt_self();
  v12 = objc_alloc_init(NSMutableArray);
  v171[0] = _NSConcreteStackBlock;
  v171[1] = 3221225472;
  v171[2] = sub_10036F984;
  v171[3] = &unk_1005250A0;
  v172 = dispatch_semaphore_create(0);
  v168[0] = _NSConcreteStackBlock;
  v168[1] = 3221225472;
  v168[2] = sub_10036F98C;
  v168[3] = &unk_1005250C8;
  v144 = v11;
  v169 = v144;
  v13 = v12;
  v14 = v172;
  v15 = v13;
  v170 = v13;
  v16 = [v10 sinkWithCompletion:v171 receiveInput:v168];
  v17 = dispatch_time(0, 60000000000);
  v143 = v15;
  if (dispatch_semaphore_wait(v14, v17))
  {
    if (a6)
    {
      ASDErrorWithTitleAndMessage();
      *a6 = v18 = 0;
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_125;
  }

  v141 = v14;
  v142 = v10;
  v19 = +[NSMutableArray array];
  v155 = +[NSMutableDictionary dictionary];
  v164 = 0u;
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  v20 = v15;
  v157 = [v20 countByEnumeratingWithState:&v164 objects:v178 count:16];
  if (!v157)
  {
    goto LABEL_108;
  }

  v156 = *v165;
  v147 = v20;
  v145 = v19;
  do
  {
    v21 = 0;
    do
    {
      if (*v165 != v156)
      {
        objc_enumerationMutation(v20);
      }

      v22 = *(*(&v164 + 1) + 8 * v21);
      v23 = [v22 eventBody];
      objc_opt_class();
      v24 = sub_1001C09E4(v23);

      v25 = [v22 eventBody];
      v26 = v25;
      if (v24)
      {
        v27 = [v25 bundleID];
        if (v27)
        {
          v28 = v27;
          if ([v26 starting])
          {
            v29 = objc_alloc_init(AppLaunchEvent);
            v31 = v29;
            v32 = v28;
            if (v29)
            {
              objc_setProperty_nonatomic_copy(v29, v30, v28, 40);
              *(v31 + 8) = [v26 type] == 2;
              v33 = [v26 absoluteTimestamp];
              objc_setProperty_nonatomic_copy(v31, v34, v33, 24);
            }

            else
            {
              [v26 type];
              v33 = [v26 absoluteTimestamp];
            }

            v35 = [v26 absoluteTimestamp];
            v37 = v35;
            if (v31)
            {
              objc_setProperty_nonatomic_copy(v31, v36, v35, 16);

              *(v31 + 152) = 1;
              *(v31 + 12) = 4;
            }

            else
            {
            }

            v38 = [v26 bundleID];
            [v155 setObject:v31 forKeyedSubscript:v38];

            v40 = [v26 launchReason];
            if (v31)
            {
              objc_setProperty_nonatomic_copy(v31, v39, v40, 32);
            }

            v41 = [v148 objectForKeyedSubscript:v28];
            if (v41)
            {
              v42 = v31;
              v43 = v41;
              objc_opt_self();
              if (v31)
              {
                v44 = v42[3];
              }

              else
              {
                v44 = 0;
              }

              v149 = v42;
              v150 = v41;
              context = v32;
              v45 = v44;
              [v45 timeIntervalSinceReferenceDate];
              v47 = v46;

              v175 = 0u;
              v176 = 0u;
              v173 = 0u;
              v174 = 0u;
              v48 = v43;
              v49 = [v48 countByEnumeratingWithState:&v173 objects:buf count:16];
              if (v49)
              {
                v50 = v49;
                v51 = 0;
                v52 = *v174;
                v53 = 3.40282347e38;
LABEL_23:
                v54 = 0;
                while (1)
                {
                  if (*v174 != v52)
                  {
                    objc_enumerationMutation(v48);
                  }

                  v55 = *(*(&v173 + 1) + 8 * v54);
                  if (v55)
                  {
                    v56 = v55[3];
                  }

                  else
                  {
                    v56 = 0;
                  }

                  v57 = v56;
                  [v57 timeIntervalSinceReferenceDate];
                  v59 = v58;

                  if (v47 - v59 >= 0.0)
                  {
                    v60 = v47 - v59;
                  }

                  else
                  {
                    v60 = -(v47 - v59);
                  }

                  if (v60 <= 60.0 && v60 < v53)
                  {
                    v62 = v55;

                    v53 = v60;
                    v51 = v62;
                  }

                  if (v59 > v47 && v59 - v47 > 60.0)
                  {
                    break;
                  }

                  if (v50 == ++v54)
                  {
                    v63 = [v48 countByEnumeratingWithState:&v173 objects:buf count:16];
                    v50 = v63;
                    if (v63)
                    {
                      goto LABEL_23;
                    }

                    break;
                  }
                }
              }

              else
              {
                v51 = 0;
              }

              v20 = v147;
              v41 = v150;
              v32 = context;
              if (v51)
              {
                if (v31)
                {
                  v149[10] = 1;
                  v104 = v51[10];
                  objc_setProperty_nonatomic_copy(v149, v105, v104, 80);
                }

                else
                {
                  v104 = v51[10];
                }

                v107 = v51[13];
                if (v31)
                {
                  objc_setProperty_nonatomic_copy(v149, v106, v107, 104);
                }

                v109 = v51[14];
                if (v31)
                {
                  objc_setProperty_nonatomic_copy(v149, v108, v109, 112);
                }

                v111 = v51[15];
                if (v31)
                {
                  objc_setProperty_nonatomic_copy(v149, v110, v111, 120);
                }

                v113 = v51[11];
                if (v31)
                {
                  objc_setProperty_nonatomic_copy(v149, v112, v113, 88);
                }

                v115 = v51[12];
                if (v31)
                {
                  objc_setProperty_nonatomic_copy(v149, v114, v115, 96);
                }
              }

              v19 = v145;
            }

            [v19 addObject:v31];

            goto LABEL_98;
          }

          v32 = v28;
          v31 = [v155 objectForKeyedSubscript:v28];
          if (!v31)
          {
            v94 = [v146 objectForKeyedSubscript:v28];

            if (!v94)
            {
              goto LABEL_79;
            }

            v95 = [v146 objectForKeyedSubscript:v28];
            v31 = v95;
            if (v95)
            {
              *(v95 + 152) = 1;
            }

            v96 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
            {
              v97 = objc_opt_class();
              *buf = 138543618;
              v180 = v97;
              v181 = 2114;
              v182 = v31;
              v98 = v97;
              _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ending active event: %{public}@", buf, 0x16u);
            }

            [v19 addObject:v31];
            if (!v31)
            {
LABEL_79:
              v31 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                v99 = objc_opt_class();
                contextb = v99;
                v100 = [v26 bundleID];
                v151 = [v26 starting];
                v101 = [v26 absoluteTimestamp];
                v102 = sub_1002525A8(v101);
                *buf = 138544130;
                v180 = v99;
                v181 = 2114;
                v182 = v100;
                v103 = v100;
                v183 = 1024;
                LODWORD(v184[0]) = v151;
                v20 = v147;
                WORD2(v184[0]) = 2114;
                *(v184 + 6) = v102;
                _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "[%{public}@] Unable to find starting event for bundleID: %{public}@ starting: %d startDate: %{public}@", buf, 0x26u);
              }

              goto LABEL_98;
            }
          }

          v70 = *(v31 + 24);
          *(v31 + 9) = 1;
          v87 = [v26 absoluteTimestamp];
          objc_setProperty_nonatomic_copy(v31, v88, v87, 16);

          v89 = *(v31 + 16);
          [v89 timeIntervalSinceReferenceDate];
          v91 = v90;
          [v70 timeIntervalSinceReferenceDate];
          *(v31 + 144) = (v91 - v92);

          v86 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
          {
            v116 = objc_opt_class();
            v117 = v116;
            v118 = *(v31 + 144);
            *buf = 138543874;
            v180 = v116;
            v181 = 2114;
            v182 = v31;
            v183 = 2048;
            v184[0] = v118;
            _os_log_debug_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEBUG, "[%{public}@] Ending event: %{public}@ with duration: %ld", buf, 0x20u);

            v20 = v147;
          }

          goto LABEL_68;
        }

        v31 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          goto LABEL_71;
        }
      }

      else
      {
        objc_opt_class();
        v64 = sub_1001C09E4(v26);

        if (!v64)
        {
          goto LABEL_99;
        }

        v26 = [v22 eventBody];
        v65 = [v26 clipBundleID];
        if (v65)
        {
          v32 = v65;
          v66 = objc_alloc_init(AppLaunchEvent);
          v31 = v66;
          if (v66)
          {
            objc_setProperty_nonatomic_copy(v66, v67, v32, 40);
            objc_setProperty_nonatomic_copy(v31, v68, v32, 80);
          }

          [v22 timestamp];
          v70 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
          if (v31)
          {
            objc_setProperty_nonatomic_copy(v31, v69, v70, 24);
            *(v31 + 10) = 1;
            v71 = [v26 launchReason];
            objc_setProperty_nonatomic_copy(v31, v72, v71, 96);
          }

          else
          {
            v71 = [v26 launchReason];
          }

          v73 = [v26 fullURL];

          if (v73)
          {
            v74 = [v26 fullURL];
            v76 = [NSURL URLWithString:v74];
            if (v31)
            {
              objc_setProperty_nonatomic_copy(v31, v75, v76, 88);
            }
          }

          v77 = [v26 referrerURL];

          if (v77)
          {
            v78 = [v26 referrerURL];
            v80 = [NSURL URLWithString:v78];
            if (v31)
            {
              objc_setProperty_nonatomic_copy(v31, v79, v80, 104);
            }
          }

          v82 = [v26 referrerBundleID];
          if (v31)
          {
            objc_setProperty_nonatomic_copy(v31, v81, v82, 112);
          }

          v83 = [v26 webAppBundleID];
          v85 = v83;
          if (v31)
          {
            objc_setProperty_nonatomic_copy(v31, v84, v83, 120);

            *(v31 + 12) = 5;
          }

          else
          {
          }

          v86 = [v31 copy];
          [v19 addObject:v86];
LABEL_68:

          goto LABEL_98;
        }

        v31 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
LABEL_71:
          v93 = objc_opt_class();
          *buf = 138543618;
          v180 = v93;
          v181 = 2114;
          v182 = v26;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "[%{public}@] Ignoring event with no bundle ID: %{public}@", buf, 0x16u);
        }
      }

      v32 = 0;
LABEL_98:

LABEL_99:
      v21 = v21 + 1;
    }

    while (v21 != v157);
    v119 = [v20 countByEnumeratingWithState:&v164 objects:v178 count:16];
    v157 = v119;
  }

  while (v119);
LABEL_108:

  contexta = objc_autoreleasePoolPush();
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  v18 = v19;
  v120 = [v18 countByEnumeratingWithState:&v160 objects:v177 count:16];
  if (v120)
  {
    v121 = v120;
    v122 = *v161;
    v123 = &swift_willThrowTypedImpl_ptr;
    do
    {
      for (i = 0; i != v121; i = i + 1)
      {
        if (*v161 != v122)
        {
          objc_enumerationMutation(v18);
        }

        v125 = *(*(&v160 + 1) + 8 * i);
        if (v125 && *(v125 + 8) == 1)
        {
          v126 = objc_alloc(v123[431]);
          v127 = *(v125 + 40);
          v159 = 0;
          v128 = [v126 initWithBundleIdentifier:v127 error:&v159];
          v129 = v159;

          if (v128)
          {
            v130 = [v128 containingBundleRecord];
            v131 = [v130 bundleIdentifier];

            if (v131)
            {
              v132 = [v128 containingBundleRecord];
              v133 = [v132 bundleIdentifier];
              objc_setProperty_nonatomic_copy(v125, v134, v133, 128);

              v135 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v135, OS_LOG_TYPE_INFO))
              {
                v136 = objc_opt_class();
                v158 = v136;
                v137 = v18;
                v138 = *(v125 + 40);
                v139 = *(v125 + 128);
                *buf = 138543874;
                v180 = v136;
                v181 = 2114;
                v182 = v138;
                v183 = 2114;
                v184[0] = v139;
                _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_INFO, "[%{public}@] [%{public}@] Updated launch extension containingBundleID to: %{public}@", buf, 0x20u);

                v18 = v137;
                v123 = &swift_willThrowTypedImpl_ptr;
              }
            }
          }
        }
      }

      v121 = [v18 countByEnumeratingWithState:&v160 objects:v177 count:16];
    }

    while (v121);
  }

  objc_autoreleasePoolPop(contexta);
  v14 = v141;
  v10 = v142;
LABEL_125:

  return v18;
}

void sub_10036F98C(uint64_t a1, void *a2)
{
  v6 = a2;
  [v6 timestamp];
  v4 = v3;
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  if (v4 < v5)
  {
    [*(a1 + 40) addObject:v6];
  }
}

id sub_10036F9FC(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = +[NSMutableDictionary dictionary];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = a1;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = v3[2](v3, v10);
          if (v11)
          {
            v12 = [v4 objectForKeyedSubscript:{v11, v16}];
            v13 = v12;
            if (v12)
            {
              [v12 addObject:v10];
            }

            else
            {
              v14 = [NSMutableArray arrayWithObject:v10];
              [v4 setObject:v14 forKeyedSubscript:v11];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    a1 = [[NSDictionary alloc] initWithDictionary:v4 copyItems:1];
  }

  return a1;
}

id sub_10036FBC8(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10036FC9C;
    v7[3] = &unk_1005250F0;
    v8 = v3;
    v5 = [a1 indexOfObjectPassingTest:v7];
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      a1 = 0;
    }

    else
    {
      a1 = [a1 objectAtIndexedSubscript:v5];
    }
  }

  return a1;
}

id sub_10036FCAC(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = a1;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = v3[2](v3, *(*(&v12 + 1) + 8 * i));
          if (v9)
          {
            v10 = v9;
            goto LABEL_12;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v10 = 0;
LABEL_12:
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id sub_10036FDEC(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [a1 count]);
    v6 = _NSConcreteStackBlock;
    v7 = 3221225472;
    v8 = sub_10036FEE4;
    v10 = v9 = &unk_100525118;
    v11 = v3;
    v4 = v10;
    [a1 enumerateObjectsUsingBlock:&v6];
    a1 = [v4 copy];
  }

  return a1;
}

void sub_10036FEE4(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  if (v2)
  {
    v3 = v2;
    [*(a1 + 32) addObject:v2];
    v2 = v3;
  }
}

id sub_10036FF4C(id a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = sub_100370084;
    v14 = sub_100370094;
    v15 = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10037009C;
    v7[3] = &unk_100525140;
    v8 = v3;
    v9 = &v10;
    v7[4] = a1;
    [a1 enumerateObjectsUsingBlock:v7];
    if (v11[5])
    {
      v5 = v11[5];
    }

    else
    {
      v5 = a1;
    }

    a1 = [v5 copy];

    _Block_object_dispose(&v10, 8);
  }

  return a1;
}

void sub_10037006C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100370084(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10037009C(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  v5 = (*(*(a1 + 40) + 16))();
  v6 = *(*(*(a1 + 48) + 8) + 40);
  if (v5)
  {
    if (v6)
    {
      [v6 addObject:v11];
    }
  }

  else if (!v6)
  {
    v7 = [*(a1 + 32) subarrayWithRange:{0, a3}];
    v8 = [v7 mutableCopy];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

void sub_1003704FC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v21;
    *&v6 = 138412546;
    v18 = v6;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [v10 adamId];
        if (v11)
        {
          [v3 setObject:v10 forKey:v11];
        }

        else
        {
          v12 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v13 = objc_opt_class();
            v14 = v13;
            v15 = [v10 appAdamId];
            *buf = v18;
            v25 = v13;
            v26 = 2114;
            v27 = v15;
            _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[%@]: Nil IAP adamId, app adamId: %{public}@", buf, 0x16u);
          }
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v7);
  }

  v16 = [[ASDIAPInfoResponse alloc] initWithIAPs:v3];
  sub_10020F258(*(a1 + 32), v16);
  v17 = *(a1 + 32);
  if (v17)
  {
    *(v17 + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100370730(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v21;
    *&v6 = 138412546;
    v18 = v6;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [v10 adamId];
        if (v11)
        {
          [v3 setObject:v10 forKey:v11];
        }

        else
        {
          v12 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v13 = objc_opt_class();
            v14 = v13;
            v15 = [v10 appAdamId];
            *buf = v18;
            v25 = v13;
            v26 = 2114;
            v27 = v15;
            _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[%@]: Nil IAP adamId, app adamId: %{public}@", buf, 0x16u);
          }
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v7);
  }

  v16 = [[ASDIAPInfoResponse alloc] initWithIAPs:v3];
  sub_10020F258(*(a1 + 32), v16);
  v17 = *(a1 + 32);
  if (v17)
  {
    *(v17 + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t sub_100370AE4(uint64_t a1, void *a2)
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
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
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
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 16) |= 2u;
        while (1)
        {
          v31 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v31 & 0x7F) << v13;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            v20 = 0;
            v21 = &OBJC_IVAR___TFDisplay__widthPixels;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___TFDisplay__widthPixels;
LABEL_41:
        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v15;
        }

LABEL_44:
        *(a1 + *v21) = v20;
        goto LABEL_45;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    *(a1 + 16) |= 1u;
    while (1)
    {
      v30 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v30 & 0x7F) << v22;
      if ((v30 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        v20 = 0;
        v21 = &OBJC_IVAR___TFDisplay__heightPixels;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___TFDisplay__heightPixels;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

id sub_1003710C0()
{
  objc_opt_self();
  if (qword_1005AACE8 != -1)
  {
    dispatch_once(&qword_1005AACE8, &stru_100525160);
  }

  v0 = qword_1005AACF0;

  return v0;
}

void sub_100371118(id a1)
{
  v1 = objc_alloc_init(AssetSession);
  v2 = qword_1005AACF0;
  qword_1005AACF0 = v1;
}

id sub_10037120C(id result)
{
  if (result)
  {
    v1 = result;
    v2 = kNSURLSessionLaunchOnDemandNotificationName;
    v3 = dispatch_get_global_queue(17, 0);
    xpc_set_event_stream_handler(v2, v3, &stru_100525180);

    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Obliterating stale background sessions", buf, 2u);
    }

    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1003713F4;
    v5[3] = &unk_1005251D0;
    v5[4] = v1;
    return [NSURLSession _getActiveSessionIdentifiersWithCompletionHandler:v5];
  }

  return result;
}

void sub_10037131C(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = kNSURLSessionLaunchOnDemandNotificationName;
    v6 = 2080;
    v7 = xpc_copy_description(v2);
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Handling %s wake: %s", &v4, 0x16u);
  }
}

void sub_1003713F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = *(*(a1 + 32) + 16);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1003714AC;
    v8[3] = &unk_10051B570;
    v6 = v4;
    v7 = *(a1 + 32);
    v9 = v6;
    v10 = v7;
    dispatch_async(v5, v8);
  }
}

void sub_1003714AC(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    *buf = 134217984;
    v26 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Checking %llu background session identifier(s)", buf, 0xCu);
  }

  v4 = objc_opt_new();
  v5 = *(*(a1 + 40) + 32);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100371788;
  v22[3] = &unk_1005251A8;
  v6 = v4;
  v23 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v22];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v19;
    *&v9 = 138543362;
    v17 = v9;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if ([v6 containsObject:{v13, v17, v18}])
        {
          v14 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = v17;
            v26 = v13;
            _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Skipping invalidation for active session: %{public}@", buf, 0xCu);
          }
        }

        else
        {
          v14 = [NSURLSessionConfiguration backgroundSessionConfigurationWithIdentifier:v13];
          v15 = [NSURLSession sessionWithConfiguration:v14];
          v16 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v17;
            v26 = v13;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Invaidating stale session: %{public}@", buf, 0xCu);
          }

          [v15 invalidateAndCancel];
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v10);
  }
}

void sub_100371788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a3 + 16);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v5 configuration];
  v8 = [v6 identifier];

  v7 = v8;
  if (v8)
  {
    [*(a1 + 32) addObject:v8];
    v7 = v8;
  }
}

_TtC9appstored12AssetPromise *sub_100371818(_TtC9appstored12AssetPromise *a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
    goto LABEL_24;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = objc_alloc_init(AssetRequestProperties);
    goto LABEL_6;
  }

  if (v3)
  {
    v4 = [v3[2] copy];
LABEL_6:
    v5 = v4;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:
  v6 = objc_alloc_init(AssetTaskInfo);
  v8 = v6;
  if (v6)
  {
    objc_setProperty_atomic(v6, v7, v3, 104);
    objc_setProperty_atomic(v8, v9, v5, 96);
  }

  if (!v5)
  {
    v11 = 0;
LABEL_28:
    v12 = 0;
    if (!v8)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v10 = objc_getProperty(v5, v7, 200, 1);
  v11 = v10;
  if (!v10)
  {
    goto LABEL_28;
  }

  v30[0] = 0;
  v30[1] = 0;
  [v10 getUUIDBytes:v30];
  v12 = v30[0];
  if (v8)
  {
LABEL_12:
    v8->_signpostId = v12;
  }

LABEL_13:
  v14 = [_TtC9appstored6LogKey alloc];
  if (v5)
  {
    Property = objc_getProperty(v5, v13, 152, 1);
  }

  else
  {
    Property = 0;
  }

  v16 = Property;
  v17 = [v16 description];
  v19 = [(LogKey *)v14 initWithCategory:v17 baseUUID:v11];
  if (v8)
  {
    objc_setProperty_atomic(v8, v18, v19, 56);
  }

  if (v5)
  {
    expectedContentLength = v5->_expectedContentLength;
  }

  else
  {
    expectedContentLength = 0;
  }

  v22 = [NSProgress progressWithTotalUnitCount:expectedContentLength];
  if (v8)
  {
    objc_setProperty_atomic(v8, v21, v22, 80);
  }

  v23 = [_TtC9appstored12AssetPromise alloc];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100371AD0;
  v26[3] = &unk_100525220;
  v27 = v8;
  v28 = v3;
  v29 = a1;
  v24 = v8;
  a1 = [(AssetPromise *)v23 initWithRequestID:v11 promiseBlock:v26];
  if (v8)
  {
    objc_storeWeak(v24 + 11, a1);
  }

LABEL_24:

  return a1;
}

void sub_100371AD0(id *a1, void *a2)
{
  v3 = a2;
  v4 = ASDLogHandleForCategory();
  v5 = v4;
  v6 = a1[4];
  if (v6)
  {
    v7 = v6[16];
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      v9 = objc_getProperty(v6, v8, 56, 1);
      v10 = [a1[5] URL];
      *buf = 138543618;
      v19 = v9;
      v20 = 2114;
      v21 = v10;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "Download", " uuid=%{public, signpost.description:attribute}@  request=%{public, signpost.description:attribute}@ ", buf, 0x16u);
    }
  }

  objc_initWeak(buf, a1[6]);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100371D18;
  v15[3] = &unk_1005251F8;
  v16 = a1[4];
  objc_copyWeak(&v17, buf);
  [v3 addErrorBlock:v15];
  v11 = a1[6];
  v12 = *(v11 + 2);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100371EFC;
  v13[3] = &unk_10051B570;
  v13[4] = v11;
  v14 = a1[4];
  dispatch_async(v12, v13);

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
}

void sub_100371CF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100371D18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 domain];
  if (![v4 isEqualToString:NSCocoaErrorDomain])
  {
LABEL_9:

    goto LABEL_10;
  }

  v5 = [v3 code];

  if (v5 == 3072)
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      Property = *(a1 + 32);
      if (Property)
      {
        Property = objc_getProperty(Property, v7, 56, 1);
      }

      v9 = Property;
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%@] Request cancelled", buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = WeakRetained;
    if (WeakRetained)
    {
      v11 = WeakRetained[2];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100371EA8;
      block[3] = &unk_10051AF98;
      v13 = *(a1 + 32);
      dispatch_async(v11, block);
    }

    goto LABEL_9;
  }

LABEL_10:
}

void sub_100371EA8(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 136, 1);
  }

  v4 = Property;
  [v4 cancel];

  v5 = *(a1 + 32);
  if (v5)
  {
    *(v5 + 16) = 3;
  }
}

void sub_100371F08(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
    goto LABEL_20;
  }

  dispatch_assert_queue_V2(*(a1 + 16));
  if (v3)
  {
    if (v3[2] == 3)
    {
      v5 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v23 = objc_getProperty(v3, v6, 56, 1);
        *buf = 138412290;
        v29 = v23;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%@] Stopping early because request has been canceled", buf, 0xCu);
      }

      sub_100375760(a1, v3);
      goto LABEL_20;
    }

    Property = objc_getProperty(v3, v4, 96, 1);
    v9 = Property;
    if (Property)
    {
      Property = objc_getProperty(Property, v8, 72, 1);
    }
  }

  else
  {
    v9 = 0;
    Property = 0;
  }

  v10 = Property;

  if (v10)
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1003776C8;
    v26[3] = &unk_10051C5B0;
    v26[4] = a1;
    v27 = v3;
    [v10 prepareWithCompletionHandler:v26];
  }

  else
  {
    v12 = ASDErrorWithDescription();
    if (v3)
    {
      objc_setProperty_atomic(v3, v11, v12, 40);
    }

    v13 = ASDLogHandleForCategory();
    v14 = v13;
    if (v3)
    {
      v15 = v3[16];
      if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
      {
        v17 = objc_getProperty(v3, v16, 56, 1);
        v19 = objc_getProperty(v3, v18, 40, 1);
        v20 = sub_100342C9C(v19);
        *buf = 138543618;
        v29 = v17;
        v30 = 2114;
        v31 = v20;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_EVENT, v15, "ConsumerError", " uuid=%{public, signpost.description:attribute}@  error=%{public, signpost.description:attribute}@ ", buf, 0x16u);
      }
    }

    v21 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      if (v3)
      {
        v24 = objc_getProperty(v3, v22, 56, 1);
      }

      else
      {
        v24 = 0;
      }

      v25 = v24;
      *buf = 138412290;
      v29 = v25;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "[%@] Data consumer is missing", buf, 0xCu);
    }

    sub_100375760(a1, v3);
  }

LABEL_20:
}

void sub_100372660(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if ([*(a1 + 32) state])
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      Property = *(a1 + 40);
      if (Property)
      {
        Property = objc_getProperty(Property, v7, 56, 1);
      }

      v9 = Property;
      v10 = *(a1 + 32);
      v35 = 138412546;
      v36 = v9;
      v37 = 2114;
      v38 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%@] Data consumer for task: %{public}@ was stopped at consumer callback", &v35, 0x16u);
    }

    goto LABEL_24;
  }

  if (v5)
  {
    v11 = ASDLogHandleForCategory();
    v12 = v11;
    v13 = *(a1 + 40);
    if (v13)
    {
      v14 = v13[16];
      if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
      {
        v16 = objc_getProperty(v13, v15, 56, 1);
        v17 = sub_100342C9C(v5);
        v35 = 138543618;
        v36 = v16;
        v37 = 2114;
        v38 = v17;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_EVENT, v14, "ConsumerError", " uuid=%{public, signpost.description:attribute}@  error=%{public, signpost.description:attribute}@ ", &v35, 0x16u);
      }
    }

    v18 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v32 = *(a1 + 40);
      if (v32)
      {
        v32 = objc_getProperty(v32, v19, 56, 1);
      }

      v33 = v32;
      v34 = *(a1 + 32);
      v35 = 138412802;
      v36 = v33;
      v37 = 2114;
      v38 = v34;
      v39 = 2114;
      v40 = v5;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "[%@] Data consumer for task: %{public}@ failed with error: %{public}@", &v35, 0x20u);
    }

    v21 = *(a1 + 40);
    if (v21)
    {
      objc_setProperty_atomic(v21, v20, v5, 40);
      v22 = *(a1 + 40);
    }

    else
    {
      v22 = 0;
    }

    [Analytics postHashMismatchWithTaskInfo:v22];
LABEL_23:
    [*(a1 + 32) cancel];
    goto LABEL_24;
  }

  if (a3)
  {
    v23 = ASDLogHandleForCategory();
    v24 = v23;
    v25 = *(a1 + 40);
    if (v25)
    {
      v26 = v25[16];
      if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
      {
        v28 = objc_getProperty(v25, v27, 56, 1);
        v35 = 138543362;
        v36 = v28;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_EVENT, v26, "ConsumerComplete", " uuid=%{public, signpost.description:attribute}@ ", &v35, 0xCu);
      }
    }

    v29 = *(a1 + 40);
    if (v29)
    {
      *(v29 + 16) = 2;
    }

    goto LABEL_23;
  }

  v30 = [*(a1 + 32) countOfBytesReceived];
  v31 = *(a1 + 40);
  if (v31)
  {
    *(v31 + 24) = &v30[*(v31 + 112)];
  }

LABEL_24:
  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_100373688(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10037379C;
  block[3] = &unk_100522250;
  v12 = v3;
  *&v5 = *(a1 + 40);
  *(&v5 + 1) = *(a1 + 32);
  v10 = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v13 = v10;
  v14 = v8;
  v15 = *(a1 + 64);
  v9 = v3;
  dispatch_async(v4, block);
}

void sub_10037379C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = ASDLogHandleForCategory();
    v3 = v2;
    v4 = *(a1 + 56);
    if (v4)
    {
      v5 = v4[16];
      if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
      {
        v7 = objc_getProperty(v4, v6, 56, 1);
        v8 = sub_100342C9C(*(a1 + 32));
        *buf = 138543618;
        v27 = v7;
        v28 = 2114;
        v29 = v8;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_EVENT, v5, "ConsumerError", " uuid=%{public, signpost.description:attribute}@  error=%{public, signpost.description:attribute}@ ", buf, 0x16u);
      }
    }

    v9 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      Property = *(a1 + 56);
      if (Property)
      {
        Property = objc_getProperty(Property, v10, 56, 1);
      }

      v19 = Property;
      v20 = *(a1 + 64);
      v21 = *(a1 + 32);
      *buf = 138412802;
      v27 = v19;
      v28 = 2114;
      v29 = v20;
      v30 = 2114;
      v31 = v21;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[%@] Data consumer for task: %{public}@ failed to reset with error: %{public}@", buf, 0x20u);
    }

    v12 = *(a1 + 56);
    if (v12)
    {
      objc_setProperty_atomic(v12, v11, *(a1 + 32), 40);
    }

    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v13 = *(a1 + 40);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100373A20;
    v23[3] = &unk_100525270;
    v22 = *(a1 + 48);
    v14 = *(&v22 + 1);
    v15 = *(a1 + 64);
    v16 = *(a1 + 72);
    *&v17 = v15;
    *(&v17 + 1) = v16;
    v24 = v22;
    v25 = v17;
    [v13 prepareWithCompletionHandler:v23];
  }
}

void sub_100373A20(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100373B08;
  block[3] = &unk_10051F320;
  v13 = a2;
  v9 = *(a1 + 40);
  v10 = v5;
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v7 = v5;
  dispatch_async(v6, block);
}

uint64_t sub_100373B08(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v2 = ASDLogHandleForCategory();
    v3 = v2;
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = v4[16];
      if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
      {
        v7 = objc_getProperty(v4, v6, 56, 1);
        v8 = sub_100342C9C(*(a1 + 40));
        v35 = 138543618;
        v36 = v7;
        v37 = 2114;
        v38 = v8;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_EVENT, v5, "ConsumerError", " uuid=%{public, signpost.description:attribute}@  error=%{public, signpost.description:attribute}@ ", &v35, 0x16u);
      }
    }

    v9 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      Property = *(a1 + 32);
      if (Property)
      {
        Property = objc_getProperty(Property, v10, 56, 1);
      }

      v28 = Property;
      v29 = *(a1 + 48);
      v30 = *(a1 + 64);
      v35 = 138412802;
      v36 = v28;
      v37 = 2114;
      v38 = v29;
      v39 = 2048;
      v40 = v30;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[%@] Data consumer for task: %{public}@ failed to prepare with unexpected resumption offset: %llu", &v35, 0x20u);
    }

    v12 = ASDErrorWithDescription();
    v13 = *(a1 + 32);
    if (v13)
    {
      objc_setProperty_atomic(v13, v11, v12, 40);
    }

    return (*(*(a1 + 56) + 16))();
  }

  if (*(a1 + 40))
  {
    v14 = ASDLogHandleForCategory();
    v15 = v14;
    v16 = *(a1 + 32);
    if (v16)
    {
      v17 = v16[16];
      if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
      {
        v19 = objc_getProperty(v16, v18, 56, 1);
        v20 = sub_100342C9C(*(a1 + 40));
        v35 = 138543618;
        v36 = v19;
        v37 = 2114;
        v38 = v20;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_EVENT, v17, "ConsumerError", " uuid=%{public, signpost.description:attribute}@  error=%{public, signpost.description:attribute}@ ", &v35, 0x16u);
      }
    }

    v21 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v31 = *(a1 + 32);
      if (v31)
      {
        v31 = objc_getProperty(v31, v22, 56, 1);
      }

      v32 = v31;
      v34 = *(a1 + 40);
      v33 = *(a1 + 48);
      v35 = 138412802;
      v36 = v32;
      v37 = 2114;
      v38 = v33;
      v39 = 2114;
      v40 = v34;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "[%@] Data consumer for task: %{public}@ failed to prepare with error: %{public}@", &v35, 0x20u);
    }

    v24 = *(a1 + 32);
    if (v24)
    {
      objc_setProperty_atomic(v24, v23, *(a1 + 40), 40);
    }

    return (*(*(a1 + 56) + 16))();
  }

  v26 = *(*(a1 + 56) + 16);

  return v26();
}

void sub_100373EC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100373FAC;
  v6[3] = &unk_10051C7A8;
  v7 = v3;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t sub_100373FAC(uint64_t a1, const char *a2)
{
  if (*(a1 + 32))
  {
    v3 = ASDLogHandleForCategory();
    v4 = v3;
    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = v5[16];
      if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
      {
        v8 = objc_getProperty(v5, v7, 56, 1);
        v9 = sub_100342C9C(*(a1 + 32));
        v19 = 138543618;
        v20 = v8;
        v21 = 2114;
        v22 = v9;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_EVENT, v6, "ConsumerError", " uuid=%{public, signpost.description:attribute}@  error=%{public, signpost.description:attribute}@ ", &v19, 0x16u);
      }
    }

    v10 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      Property = *(a1 + 40);
      if (Property)
      {
        Property = objc_getProperty(Property, v11, 56, 1);
      }

      v16 = Property;
      v17 = *(a1 + 48);
      v18 = *(a1 + 32);
      v19 = 138412802;
      v20 = v16;
      v21 = 2114;
      v22 = v17;
      v23 = 2114;
      v24 = v18;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%@] Data consumer for task: %{public}@ failed to reset with error: %{public}@", &v19, 0x20u);
    }
  }

  else
  {
    v12 = *(a1 + 40);
    if (v12)
    {
      *(v12 + 16) = 1;
    }
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    objc_setProperty_atomic(v13, a2, *(a1 + 32), 40);
  }

  return (*(*(a1 + 56) + 16))();
}

void sub_1003754E0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (a1)
  {
    self = v4;
    if (v4)
    {
      v6 = objc_getProperty(v4, v5, 72, 1);
      if (v6)
      {
        nw_activity_complete_with_reason();
        objc_setProperty_atomic(self, v7, 0, 72);
      }
    }

    else
    {
      v6 = 0;
    }

    v4 = self;
  }
}

void sub_100375574(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100375634;
  block[3] = &unk_10051AEE8;
  v9 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

void sub_100375634(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      Property = *(a1 + 40);
      if (Property)
      {
        Property = objc_getProperty(Property, v3, 56, 1);
      }

      v10 = Property;
      v11 = *(a1 + 32);
      v12 = 138412546;
      v13 = v10;
      v14 = 2114;
      v15 = v11;
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "[%@] Failed to finish data consumer with error: %{public}@", &v12, 0x16u);
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      v5 = objc_getProperty(v5, v4, 40, 1);
    }

    v6 = v5;

    if (!v6)
    {
      v8 = *(a1 + 40);
      if (v8)
      {
        objc_setProperty_atomic(v8, v7, *(a1 + 32), 40);
      }
    }
  }

  sub_100375760(*(a1 + 48), *(a1 + 40));
}

void sub_100375760(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = ASDLogHandleForCategory();
    v5 = v4;
    if (v3)
    {
      v6 = *(v3 + 16);
      if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
      {
        LOWORD(v37) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v6, "Download", "", &v37, 2u);
      }

      objc_setProperty_atomic(v3, v7, 0, 48);
    }

    else
    {
    }

    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (v3)
      {
        Property = objc_getProperty(v3, v9, 56, 1);
      }

      else
      {
        Property = 0;
      }

      v11 = Property;
      v37 = 138412290;
      v38 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@] Finishing asset promise", &v37, 0xCu);
    }

    if (v3)
    {
      WeakRetained = objc_loadWeakRetained(v3 + 11);
    }

    else
    {
      WeakRetained = 0;
    }

    if ([WeakRetained isFinished])
    {
      if ([WeakRetained isCancelled])
      {
LABEL_44:
        sub_10020F41C(AssetTaskInfo, v3);

        goto LABEL_45;
      }

      v13 = ASDLogHandleForCategory();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
LABEL_43:

        goto LABEL_44;
      }

      if (v3)
      {
        v15 = objc_getProperty(v3, v14, 56, 1);
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;
      v37 = 138412290;
      v38 = v16;
      _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "[%@] Request completed but promise had already finished", &v37, 0xCu);
LABEL_42:

      goto LABEL_43;
    }

    v17 = objc_alloc_init(AssetResult);
    v13 = v17;
    if (v3)
    {
      v19 = *(v3 + 3);
      if (!v17)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v19 = 0;
      if (!v17)
      {
LABEL_22:
        if (v3)
        {
          v20 = objc_getProperty(v3, v18, 96, 1);
          v22 = v20;
          if (v20)
          {
            v20 = objc_getProperty(v20, v21, 72, 1);
          }
        }

        else
        {
          v22 = 0;
          v20 = 0;
        }

        v24 = v20;
        if (v13)
        {
          objc_setProperty_atomic(v13, v23, v24, 24);
        }

        if (v3)
        {
          v26 = objc_getProperty(v3, v25, 40, 1);
        }

        else
        {
          v26 = 0;
        }

        v28 = v26;
        if (v13)
        {
          objc_setProperty_atomic(v13, v27, v28, 32);
        }

        if (v3)
        {
          v30 = *(v3 + 9);
          if (!v13)
          {
LABEL_34:
            if (v3)
            {
              v31 = objc_getProperty(v3, v29, 64, 1);
            }

            else
            {
              v31 = 0;
            }

            v33 = v31;
            if (v13)
            {
              objc_setProperty_atomic(v13, v32, v33, 40);
            }

            [WeakRetained finishWithResult:v13];
            v16 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              if (v3)
              {
                v35 = objc_getProperty(v3, v34, 56, 1);
              }

              else
              {
                v35 = 0;
              }

              v36 = v35;
              v37 = 138412290;
              v38 = v36;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%@] Finished asset promise", &v37, 0xCu);
            }

            goto LABEL_42;
          }
        }

        else
        {
          v30 = 0;
          if (!v13)
          {
            goto LABEL_34;
          }
        }

        *(v13 + 8) = v30 & 1;
        goto LABEL_34;
      }
    }

    v17->_bytesReceived = v19;
    goto LABEL_22;
  }

LABEL_45:
}

void sub_100375B40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100375C00;
  block[3] = &unk_10051AEE8;
  v9 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

void sub_100375C00(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      Property = *(a1 + 40);
      if (Property)
      {
        Property = objc_getProperty(Property, v3, 56, 1);
      }

      v26 = Property;
      v27 = *(a1 + 32);
      *v29 = 138412546;
      *&v29[4] = v26;
      *&v29[12] = 2114;
      *&v29[14] = v27;
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "[%@] Failed to suspend data consumer with error: %{public}@", v29, 0x16u);
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      objc_setProperty_atomic(v5, v4, *(a1 + 32), 40);
      v6 = *(a1 + 40);
    }

    else
    {
      v6 = 0;
    }

    sub_100375760(*(a1 + 48), v6);
    return;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(a1 + 48);
    if (v7[2] == 1)
    {
      v9 = v7;
      if (v8)
      {
        dispatch_assert_queue_V2(*(v8 + 16));
        v10 = ASDLogHandleForCategory();
        v11 = v10;
        v12 = v9[16];
        if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
        {
          v14 = objc_getProperty(v9, v13, 56, 1);
          *v29 = 138543362;
          *&v29[4] = v14;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_EVENT, v12, "Retry", " uuid=%{public, signpost.description:attribute}@ ", v29, 0xCu);
        }

        v15 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v17 = objc_getProperty(v9, v16, 56, 1);
          *v29 = 138412290;
          *&v29[4] = v17;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%@] Retrying request", v29, 0xCu);
        }

        v7[2] = 0;
        objc_setProperty_atomic(v9, v18, 0, 40);
        objc_setProperty_atomic(v9, v19, 0, 48);
        v21 = objc_getProperty(v9, v20, 96, 1);
        v23 = v21;
        if (v21)
        {
          v21 = objc_getProperty(v21, v22, 72, 1);
        }

        v24 = v21;

        *v29 = _NSConcreteStackBlock;
        *&v29[8] = 3221225472;
        *&v29[16] = sub_1003774B4;
        v30 = &unk_10051B230;
        v31 = v8;
        v32 = v9;
        [v24 resetWithCompletionHandler:v29];
      }

      return;
    }
  }

  else
  {
    v8 = *(a1 + 48);
  }

  v28 = *(a1 + 40);

  sub_100375760(v8, v28);
}

void sub_1003767D0(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 selectedActionIdentifier];
    v8 = [v7 isEqualToString:@"AuthenticationChallengeDialogActionOkay"];

    if (v8)
    {
      v9 = [v5 textfieldValues];
      if ([v9 count] == 1)
      {
        v10 = [v9 objectAtIndexedSubscript:0];
        v11 = sub_10033A69C(a1[5]);
      }

      else
      {
        if ([v9 count] != 2)
        {
          v16 = 0;
          v10 = 0;
          goto LABEL_14;
        }

        v10 = [v9 objectAtIndexedSubscript:1];
        v11 = [v9 objectAtIndexedSubscript:0];
      }

      v16 = v11;
LABEL_14:
      v17 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        Property = a1[4];
        if (Property)
        {
          Property = objc_getProperty(Property, v18, 56, 1);
        }

        v20 = Property;
        v22 = 138412290;
        v23 = v20;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%@] Completed user authentication challenge", &v22, 0xCu);
      }

      v21 = [NSURLCredential credentialWithUser:v16 password:v10 persistence:1];
      (*(a1[6] + 16))();

      goto LABEL_19;
    }
  }

  v12 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = a1[4];
    if (v14)
    {
      v14 = objc_getProperty(v14, v13, 56, 1);
    }

    v15 = v14;
    v22 = 138412290;
    v23 = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%@] Canceling user authentication challenge", &v22, 0xCu);
  }

  (*(a1[6] + 16))();
LABEL_19:
}

void sub_100376F54(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7 = a3;
  if (!v5)
  {
    v18 = ASDLogHandleForCategory();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v19, 56, 1);
    }

    v21 = Property;
    *buf = 138412546;
    v28 = v21;
    v29 = 2114;
    v30 = v7;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "[%@] Failed to load bag: %{public}@", buf, 0x16u);
LABEL_19:

    goto LABEL_20;
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = objc_getProperty(v8, v6, 96, 1);
    v11 = v9;
    if (v9)
    {
      v9 = objc_getProperty(v9, v10, 168, 1);
    }
  }

  else
  {
    v11 = 0;
    v9 = 0;
  }

  v12 = v9;
  v13 = [_TtC9appstored10QOSMetrics shouldCollectLoadURLMetricsWithBag:v5 clientBundleID:v12];

  if (!v13)
  {
    v18 = ASDLogHandleForCategory();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      goto LABEL_20;
    }

    v23 = *(a1 + 32);
    if (v23)
    {
      v23 = objc_getProperty(v23, v22, 56, 1);
    }

    v21 = v23;
    *buf = 138412290;
    v28 = v21;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "[%@] Metrics should not be collected", buf, 0xCu);
    goto LABEL_19;
  }

  v14 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    if (v16)
    {
      v16 = objc_getProperty(v16, v15, 56, 1);
    }

    v17 = v16;
    *buf = 138412290;
    v28 = v17;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%@] Recording LoadURL Metrics", buf, 0xCu);
  }

  v18 = [AMSMetricsLoadURLEvent loadURLEventPromiseWithContext:*(a1 + 40)];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10037723C;
  v24[3] = &unk_1005252E8;
  v25 = *(a1 + 32);
  v26 = v5;
  [v18 resultWithCompletion:v24];

LABEL_20:
}

void sub_10037723C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v23 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      Property = *(a1 + 32);
      if (Property)
      {
        Property = objc_getProperty(Property, v24, 56, 1);
      }

      v26 = Property;
      *buf = 138412546;
      v30 = v26;
      v31 = 2114;
      v32 = v7;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "[%@] Failed to create event: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    [v5 setCheckDiagnosticsAndUsageSetting:1];
    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = objc_getProperty(v9, v8, 96, 1);
      v12 = v10;
      if (v10)
      {
        v10 = objc_getProperty(v10, v11, 144, 1);
      }
    }

    else
    {
      v12 = 0;
      v10 = 0;
    }

    v13 = v10;

    if (v13)
    {
      v15 = *(a1 + 32);
      if (v15)
      {
        v16 = objc_getProperty(v15, v14, 96, 1);
        v18 = v16;
        if (v16)
        {
          v16 = objc_getProperty(v16, v17, 144, 1);
        }
      }

      else
      {
        v18 = 0;
        v16 = 0;
      }

      v19 = v16;
      [v5 addPropertiesWithDictionary:v19];
    }

    v20 = *(a1 + 32);
    if (v20)
    {
      v20 = objc_getProperty(v20, v14, 48, 1);
    }

    v21 = v20;
    v22 = [[_TtC9appstored10ASEMetrics alloc] initWithType:0 bag:*(a1 + 40)];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = nullsub_76;
    v27[3] = &unk_10051AF98;
    v28 = v21;
    v23 = v21;
    [(ASEMetrics *)v22 enqueueEvent:v5 flushEvents:1 completionHandler:v27];
  }
}

void sub_1003774B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100377574;
  block[3] = &unk_10051AEE8;
  v9 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

void sub_100377574(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      Property = *(a1 + 40);
      if (Property)
      {
        Property = objc_getProperty(Property, v3, 56, 1);
      }

      v10 = Property;
      v11 = *(a1 + 32);
      v12 = 138412546;
      v13 = v10;
      v14 = 2114;
      v15 = v11;
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "[%@] Failed to reset data consumer with error: %{public}@", &v12, 0x16u);
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      objc_setProperty_atomic(v5, v4, *(a1 + 32), 40);
      v6 = *(a1 + 40);
    }

    else
    {
      v6 = 0;
    }

    sub_100375760(*(a1 + 48), v6);
  }

  else
  {
    v8 = *(a1 + 40);
    v7 = *(a1 + 48);

    sub_100371F08(v7, v8);
  }
}

void sub_1003776C8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 16);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100377790;
  v10[3] = &unk_100522528;
  v11 = v5;
  v14 = a2;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v12 = v7;
  v13 = v8;
  v9 = v5;
  dispatch_async(v6, v10);
}

void sub_100377790(uint64_t a1, const char *a2)
{
  if (!*(a1 + 32))
  {
    v15 = *(a1 + 56);
    if (v15)
    {
      goto LABEL_15;
    }

    v16 = *(a1 + 40);
    if (v16)
    {
      v17 = objc_getProperty(v16, a2, 96, 1);
      if (v17)
      {
        v18 = v17[23];

        if (!v18)
        {
          goto LABEL_21;
        }

        v15 = *(a1 + 56);
LABEL_15:
        v19 = *(a1 + 40);
        if (v19)
        {
          v17 = objc_getProperty(v19, a2, 96, 1);
          if (v17)
          {
            v20 = v17[23];
            goto LABEL_18;
          }
        }

        else
        {
          v17 = 0;
        }

        v20 = 0;
LABEL_18:
        v21 = *(a1 + 40);
        if (v21)
        {
          *(v21 + 112) = v20 + v15;
        }
      }
    }

    else
    {
      v17 = 0;
    }

LABEL_21:
    v22 = *(a1 + 48);
    v23 = *(a1 + 40);
    if (!v22)
    {
LABEL_34:

      return;
    }

    dispatch_assert_queue_V2(*(v22 + 16));
    if (v23)
    {
      *(v23 + 8) = 0;
      if (*(v23 + 2) == 3)
      {
        v25 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v37 = objc_getProperty(v23, v26, 56, 1);
          *v38 = 138412290;
          *&v38[4] = v37;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "[%@] Stopping early because request has been canceled", v38, 0xCu);
        }

        sub_100375760(v22, v23);
        goto LABEL_34;
      }

      v27 = objc_getProperty(v23, v24, 96, 1);
      v29 = v27;
      if (*(v23 + 9) & 1) == 0 && v27 && (*(v27 + 14))
      {
        v30 = objc_getProperty(v23, v28, 104, 1);
        v31 = [v30 URL];
        *v38 = _NSConcreteStackBlock;
        *&v38[8] = 3221225472;
        *&v38[16] = sub_100377BC0;
        v39 = &unk_100525310;
        v40 = v22;
        v41 = v23;
        ACSLocateCachingServer();

LABEL_33:
        goto LABEL_34;
      }

      *(v23 + 9) = 1;
      Property = objc_getProperty(v23, v28, 104, 1);
    }

    else
    {
      v29 = 0;
      Property = 0;
    }

    v33 = Property;
    sub_100377E58(v22, v23, v33);

    goto LABEL_33;
  }

  v3 = ASDLogHandleForCategory();
  v4 = v3;
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = v5[16];
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      v8 = objc_getProperty(v5, v7, 56, 1);
      v9 = sub_100342C9C(*(a1 + 32));
      *v38 = 138543618;
      *&v38[4] = v8;
      *&v38[12] = 2114;
      *&v38[14] = v9;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_EVENT, v6, "ConsumerError", " uuid=%{public, signpost.description:attribute}@  error=%{public, signpost.description:attribute}@ ", v38, 0x16u);
    }
  }

  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v34 = *(a1 + 40);
    if (v34)
    {
      v34 = objc_getProperty(v34, v11, 56, 1);
    }

    v35 = v34;
    v36 = *(a1 + 32);
    *v38 = 138412546;
    *&v38[4] = v35;
    *&v38[12] = 2114;
    *&v38[14] = v36;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%@] Preparing data consumer failed with error: %{public}@", v38, 0x16u);
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    objc_setProperty_atomic(v13, v12, *(a1 + 32), 40);
    v14 = *(a1 + 40);
  }

  else
  {
    v14 = 0;
  }

  sub_100375760(*(a1 + 48), v14);
}

void sub_100377BC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 16));
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    Property = *(a1 + 40);
    if (Property)
    {
      Property = objc_getProperty(Property, v9, 56, 1);
    }

    v24 = Property;
    v25 = *(a1 + 40);
    if (v25)
    {
      v25 = objc_getProperty(v25, v23, 104, 1);
    }

    v26 = v25;
    v27 = [v26 URL];
    v30 = 138544386;
    v31 = v24;
    v32 = 2114;
    v33 = v27;
    v34 = 2114;
    v35 = a2;
    v36 = 2114;
    v37 = a3;
    v38 = 2114;
    v39 = a4;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[%{public}@] Lookup complete for: %{public}@ found replacement: %{public}@ with advice: %{public}@ error: %{public}@", &v30, 0x34u);
  }

  if (a2)
  {
    v11 = *(a1 + 40);
    if (v11)
    {
      v11 = objc_getProperty(v11, v10, 104, 1);
    }

    v12 = v11;
    v13 = [v12 mutableCopy];

    [v13 setURL:a2];
    [v13 _setRequiresShortConnectionTimeout:1];
    sub_100377E58(*(a1 + 32), *(a1 + 40), v13);
    v14 = *(a1 + 40);
    if (v14)
    {
      *(v14 + 8) = 1;
    }
  }

  else
  {
    if (a4)
    {
      v15 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v28 = *(a1 + 40);
        if (v28)
        {
          v28 = objc_getProperty(v28, v16, 56, 1);
        }

        v29 = v28;
        v30 = 138412546;
        v31 = v29;
        v32 = 2114;
        v33 = a4;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[%@] Error occuring while locating caching server: %{public}@", &v30, 0x16u);
      }
    }

    v17 = *(a1 + 40);
    if (v17)
    {
      *(v17 + 9) = 1;
      v20 = a1 + 32;
      v18 = *(a1 + 32);
      v19 = *(v20 + 8);
      if (v19)
      {
        v21 = objc_getProperty(v19, v10, 104, 1);
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v19 = 0;
      v21 = 0;
      v18 = *(a1 + 32);
    }

    v13 = v21;
    sub_100377E58(v18, v19, v13);
  }
}

void sub_100377E58(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!a1)
  {
    goto LABEL_135;
  }

  dispatch_assert_queue_V2(*(a1 + 16));
  if (!v5)
  {
    v10 = 0;
LABEL_8:
    v11 = v10;
    v12 = [[NSMutableURLRequest alloc] _initWithCFURLRequest:{objc_msgSend(v6, "_CFURLRequest")}];
    v13 = [v12 HTTPUserAgent];

    if (!v13)
    {
      v14 = sub_1002D6988();
      [v12 setHTTPUserAgent:v14];
    }

    if (v5)
    {
      v15 = *(v5 + 14);
      if (v15)
      {
        sub_10030BBE8(v12, v15);
      }
    }

    if (v11)
    {
      v16 = *(v11 + 24);
    }

    else
    {
      v16 = 0;
    }

    v17 = sub_1001D5DC8(v16);
    if (v17)
    {
      [v12 setValue:v17 forHTTPHeaderField:@"Apple-Download-Type"];
    }

    v18 = *(a1 + 24);
    if (v18)
    {
      if (!v5)
      {
        goto LABEL_22;
      }

      objc_storeWeak(v5 + 15, v18);
    }

    else if (!v5)
    {
      goto LABEL_22;
    }

    WeakRetained = objc_loadWeakRetained(v5 + 15);

    if (WeakRetained)
    {
      goto LABEL_68;
    }

LABEL_22:
    v195 = v12;
    v190 = v6;
    v20 = v5;
    v21 = v11;
    dispatch_assert_queue_V2(*(a1 + 16));
    v23 = sub_1004017B0(NSURLSessionConfiguration, v21);
    if (v5)
    {
      objc_setProperty_atomic(v20, v22, v23, 32);
    }

    v24 = [*(a1 + 32) objectForKeyedSubscript:v23];
    if (v24)
    {
      v25 = v24;
      v26 = *(v24 + 24);
      v193 = v25;
      if (v26)
      {
        v27 = v26;
        v187 = v23;
        v28 = v20;
        v29 = v17;
        v30 = v25[3];
        v31 = [v30 unsignedLongLongValue];
        if (v11)
        {
          v32 = v31;
          v33 = v21[13];

          v34 = v32 >= v33;
          v17 = v29;
          v20 = v28;
          v23 = v187;
          v25 = v193;
          if (!v34)
          {
            v35 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              if (v5)
              {
                Property = objc_getProperty(v20, v36, 56, 1);
              }

              else
              {
                Property = 0;
              }

              v38 = Property;
              v39 = v193[3];
              v40 = [v39 unsignedLongLongValue];
              v41 = v21[13];
              *buf = 138412802;
              v206 = v38;
              v207 = 2048;
              v208 = v40;
              v209 = 2048;
              v210 = v41;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[%@] Creating new session because download exceeds maximum watch cellular transfer size for existing session (Max: %{iec-bytes}lld, Download: %{iec-bytes}lld)", buf, 0x20u);

              v25 = v193;
            }

            v42 = _os_feature_enabled_impl();
            goto LABEL_33;
          }
        }

        else
        {

          v20 = v28;
          v23 = v187;
        }
      }

      v48 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v191 = v17;
        v185 = v20;
        if (v5)
        {
          v50 = objc_getProperty(v20, v49, 56, 1);
        }

        else
        {
          v50 = 0;
        }

        v51 = v50;
        v52 = v25[2];
        v53 = [v52 configuration];
        v54 = [v53 identifier];
        *buf = 138412802;
        v206 = v51;
        v207 = 2114;
        v208 = v54;
        v209 = 2114;
        v210 = v23;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "[%@] Reusing existing session with identifier: %{public}@ (%{public}@)", buf, 0x20u);

        v25 = v193;
        v17 = v191;
        v20 = v185;
      }

      v55 = v25[2];
      v56 = [v55 configuration];
      v57 = [v56 identifier];

      if (v57)
      {
        v59 = [v57 stringByAppendingFormat:@" (%@)", v23];
        if (v5)
        {
          objc_setProperty_atomic(v20, v58, v59, 32);
        }
      }

      v60 = v193;

      goto LABEL_65;
    }

    v47 = _os_feature_enabled_impl();
    if (!v11)
    {
      v43 = 1;
      v11 = 0;
      goto LABEL_54;
    }

    v42 = v47;
LABEL_33:
    v43 = 0;
    if (*(v21 + 6) >= 0x12u && !v21[10] && v42)
    {
      v44 = sub_100401720(NSURLSessionConfiguration, v21);
      v43 = 0;
      v45 = 1;
      goto LABEL_55;
    }

LABEL_54:
    v44 = sub_10040126C(NSURLSessionConfiguration, v21);
    v45 = 0;
LABEL_55:
    v188 = v44;
    v189 = [NSURLSession sessionWithConfiguration:v44 delegate:a1 delegateQueue:*(a1 + 8)];
    if (v43)
    {
      v62 = 0;
    }

    else
    {
      v62 = objc_getProperty(v21, v61, 160, 1);
    }

    v63 = v62;
    v194 = sub_10036AA30(CachedURLSession, v189, v63);
    [*(a1 + 32) setObject:? forKeyedSubscript:?];

    v64 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      v186 = v20;
      if (v5)
      {
        v66 = objc_getProperty(v20, v65, 56, 1);
      }

      else
      {
        v66 = 0;
      }

      v67 = v66;
      if (v45)
      {
        v68 = "ephemeral";
      }

      else
      {
        v68 = "background";
      }

      v69 = [v188 identifier];
      *buf = 138413058;
      v206 = v67;
      v207 = 2080;
      v208 = v68;
      v209 = 2114;
      v210 = v69;
      v211 = 2114;
      v212 = v23;
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "[%@] Created new %s session with identifier: %{public}@ (%{public}@)", buf, 0x2Au);

      v20 = v186;
    }

    v60 = v194;
    if (!v194)
    {
      v70 = 0;
      goto LABEL_66;
    }

LABEL_65:
    v70 = v60[2];
LABEL_66:
    v71 = v70;

    if (!v5)
    {

      v146 = ASDLogHandleForCategory();
      v6 = v190;
      v12 = v195;
      goto LABEL_121;
    }

    objc_storeWeak(v20 + 15, v71);

    v6 = v190;
    v12 = v195;
LABEL_68:
    v72 = objc_loadWeakRetained(v5 + 15);

    if (v72)
    {
      v73 = objc_loadWeakRetained(v5 + 15);
      v74 = [v73 dataTaskWithRequest:v12];

      if (!v74)
      {
        v155 = ASDLogHandleForCategory();
        v156 = v155;
        v157 = *(v5 + 16);
        if (v157 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v155))
        {
          v159 = objc_getProperty(v5, v158, 56, 1);
          [v6 URL];
          v161 = v160 = v17;
          *buf = 138543618;
          v206 = v159;
          v207 = 2114;
          v208 = v161;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v156, OS_SIGNPOST_EVENT, v157, "TaskError", " uuid=%{public, signpost.description:attribute}@  request=%{public, signpost.description:attribute}@ ", buf, 0x16u);

          v17 = v160;
          v74 = 0;
        }

        v162 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
        {
          v181 = objc_getProperty(v5, v163, 56, 1);
          v182 = [v6 URL];
          *buf = 138412546;
          v206 = v181;
          v207 = 2114;
          v208 = v182;
          _os_log_error_impl(&_mh_execute_header, v162, OS_LOG_TYPE_ERROR, "[%@] Error creating task for URL: %{public}@", buf, 0x16u);
        }

        v164 = [NSError errorWithDomain:@"AssetErrorDomain" code:5 userInfo:0];
        objc_setProperty_atomic(v5, v165, v164, 40);

        sub_100375760(a1, v5);
        goto LABEL_133;
      }

      v192 = v17;
      v76 = *(a1 + 32);
      v77 = objc_getProperty(v5, v75, 32, 1);
      v78 = [v76 objectForKeyedSubscript:v77];
      v79 = sub_10036AB10(v78);

      v80 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
      {
        v175 = objc_getProperty(v5, v81, 56, 1);
        v177 = objc_getProperty(v5, v176, 32, 1);
        *buf = 138412802;
        v206 = v175;
        v207 = 2114;
        v208 = v177;
        v209 = 2048;
        v210 = v79;
        _os_log_debug_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEBUG, "[%@] Started active task in session: %{public}@, now %llu active tasks.", buf, 0x20u);
      }

      v82 = v5;
      v83 = v74;
      v85 = objc_getProperty(v82, v84, 96, 1);
      v196 = v12;
      if (!v85)
      {
        goto LABEL_143;
      }

      v86 = v85[24];

      if (v86 <= 9 && (((1 << v86) & 0x35E) != 0 || v86 == 5 || v86 == 7))
      {
        v87 = nw_activity_create();
        if (v87)
        {
          v88 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
          {
            v90 = objc_getProperty(v82, v89, 56, 1);
            *buf = 138412546;
            v206 = v90;
            v207 = 2114;
            v208 = v87;
            _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_INFO, "[%@] Activating network activity: %{public}@", buf, 0x16u);
          }

          nw_activity_activate();
          [v83 set_nw_activity:v87];
          objc_setProperty_atomic(v82, v91, v87, 72);
        }

        goto LABEL_79;
      }

      if (v86)
      {
        v87 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
        {
          v170 = objc_getProperty(v82, v174, 56, 1);
          *buf = 138412546;
          v206 = v170;
          v207 = 2048;
          v208 = v86;
          v171 = "[%@] No reporting as request reason '%ld' is unknown";
          v172 = v87;
          v173 = 22;
          goto LABEL_148;
        }
      }

      else
      {
LABEL_143:
        v87 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
        {
          v170 = objc_getProperty(v82, v169, 56, 1);
          *buf = 138412290;
          v206 = v170;
          v171 = "[%@] No reporting as request reason is unspecified";
          v172 = v87;
          v173 = 12;
LABEL_148:
          _os_log_error_impl(&_mh_execute_header, v172, OS_LOG_TYPE_ERROR, v171, buf, v173);
        }
      }

LABEL_79:

      v92 = ASDLogHandleForCategory();
      v93 = v92;
      v94 = v82[16];
      if (v94 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v92))
      {
        v96 = objc_getProperty(v82, v95, 56, 1);
        v97 = [v6 URL];
        *buf = 138543618;
        v206 = v96;
        v207 = 2114;
        v208 = v97;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v93, OS_SIGNPOST_EVENT, v94, "TaskCreated", " uuid=%{public, signpost.description:attribute}@  request=%{public, signpost.description:attribute}@ ", buf, 0x16u);
      }

      v98 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
      {
        v100 = objc_getProperty(v82, v99, 56, 1);
        v102 = objc_getProperty(v82, v101, 32, 1);
        v103 = [v6 URL];
        *buf = 138413058;
        v206 = v100;
        v207 = 2114;
        v208 = v83;
        v209 = 2114;
        v210 = v102;
        v211 = 2114;
        v212 = v103;
        _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "[%@] Created task: %{public}@ in session: %{public}@ for URL: %{public}@ ", buf, 0x2Au);
      }

      if (os_variant_has_internal_content())
      {
        v104 = sub_100200A94();

        if (v104)
        {
          v106 = [VariantDescriptor alloc];
          if (v11)
          {
            v107 = objc_getProperty(v11, v105, 224, 1);
          }

          else
          {
            v107 = 0;
          }

          v108 = v107;
          v109 = sub_100229018(&v106->super.isa, v108);

          v110 = sub_100200A94();
          v201[0] = _NSConcreteStackBlock;
          v201[1] = 3221225472;
          v201[2] = sub_1003792D4;
          v201[3] = &unk_10051CEB8;
          v202 = v6;
          v203 = v11;
          v204 = v109;
          v111 = v109;
          sub_100200CAC(v110, 1001, v201);
        }
      }

      sub_10020F2E8(AssetTaskInfo, v82, v83);
      if (v11)
      {
        v113 = objc_getProperty(v11, v112, 208, 1);
      }

      else
      {
        v113 = 0;
      }

      v114 = v113;

      if (v114)
      {
        if (v11)
        {
          v116 = objc_getProperty(v11, v115, 208, 1);
        }

        else
        {
          v116 = 0;
        }

        v117 = v116;
        [v83 set_priority:{objc_msgSend(v117, "longLongValue")}];

        if (v11)
        {
LABEL_95:
          v119 = objc_getProperty(v11, v118, 48, 1);
LABEL_96:
          v120 = v119;

          if (v120)
          {
            if (v11)
            {
              v122 = objc_getProperty(v11, v121, 48, 1);
            }

            else
            {
              v122 = 0;
            }

            v123 = v122;
            [v83 set_bytesPerSecondLimit:{objc_msgSend(v123, "longLongValue")}];
          }

          if (v11)
          {
            v124 = objc_getProperty(v11, v121, 136, 1);
          }

          else
          {
            v124 = 0;
          }

          v125 = v124;

          if (v125)
          {
            if (v11)
            {
              v127 = objc_getProperty(v11, v126, 136, 1);
            }

            else
            {
              v127 = 0;
            }

            v128 = v127;
            [v128 doubleValue];
            [v83 set_loadingPriority:?];
          }

          if (!v11 || (v129 = *(v11 + 6)) == 0)
          {
            v130 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
            {
              v183 = objc_getProperty(v82, v131, 56, 1);
              *buf = 138412290;
              v206 = v183;
              _os_log_error_impl(&_mh_execute_header, v130, OS_LOG_TYPE_ERROR, "[%@] QOS class was unspecified, defaulting to utility!", buf, 0xCu);
            }

            v129 = 17;
          }

          v197[0] = _NSConcreteStackBlock;
          v197[1] = 3221225472;
          v197[2] = sub_1003793C4;
          v197[3] = &unk_10051AEE8;
          v132 = v82;
          v198 = v132;
          v199 = v6;
          v200 = v83;
          v133 = objc_retainBlock(v197);
          v135 = objc_getProperty(v132, v134, 96, 1);
          v137 = v135;
          if (v135)
          {
            v135 = objc_getProperty(v135, v136, 120, 1);
          }

          v138 = v135;

          if (v138 && _os_feature_enabled_impl())
          {
            v139 = sub_100226F64();
            v141 = objc_getProperty(v132, v140, 96, 1);
            v143 = v141;
            if (v141)
            {
              v141 = objc_getProperty(v141, v142, 120, 1);
            }

            v144 = v141;
            sub_100227288(v139, v144, v129, v133);
          }

          else
          {
            v139 = dispatch_get_global_queue(v129, 0);
            dispatch_async(v139, v133);
          }

          v12 = v196;
          v17 = v192;
LABEL_133:

LABEL_134:
          goto LABEL_135;
        }
      }

      else
      {
        v166 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v166, OS_LOG_TYPE_ERROR))
        {
          v184 = objc_getProperty(v82, v167, 56, 1);
          *buf = 138412290;
          v206 = v184;
          _os_log_error_impl(&_mh_execute_header, v166, OS_LOG_TYPE_ERROR, "[%@] Task priority was unspecified, defaulting to non-user initiated!", buf, 0xCu);
        }

        LODWORD(v168) = 1137180672;
        [v83 setPriority:v168];
        if (v11)
        {
          goto LABEL_95;
        }
      }

      v119 = 0;
      goto LABEL_96;
    }

    v145 = ASDLogHandleForCategory();
    v146 = v145;
    v147 = *(v5 + 16);
    if (v147 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v145))
    {
      v149 = objc_getProperty(v5, v148, 56, 1);
      v150 = [v6 URL];
      *buf = 138543618;
      v206 = v149;
      v207 = 2114;
      v208 = v150;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v146, OS_SIGNPOST_EVENT, v147, "SessionError", " uuid=%{public, signpost.description:attribute}@  request=%{public, signpost.description:attribute}@ ", buf, 0x16u);
    }

LABEL_121:

    v151 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
    {
      if (v5)
      {
        v178 = objc_getProperty(v5, v152, 56, 1);
      }

      else
      {
        v178 = 0;
      }

      v179 = v178;
      v180 = [v6 URL];
      *buf = 138412546;
      v206 = v179;
      v207 = 2114;
      v208 = v180;
      _os_log_error_impl(&_mh_execute_header, v151, OS_LOG_TYPE_ERROR, "[%@] Error creating session for URL: %{public}@", buf, 0x16u);
    }

    v154 = [NSError errorWithDomain:@"AssetErrorDomain" code:4 userInfo:0];
    if (v5)
    {
      objc_setProperty_atomic(v5, v153, v154, 40);
    }

    sub_100375760(a1, v5);
    goto LABEL_134;
  }

  if (*(v5 + 2) != 3)
  {
    v10 = objc_getProperty(v5, v7, 96, 1);
    goto LABEL_8;
  }

  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v46 = objc_getProperty(v5, v9, 56, 1);
    *buf = 138412290;
    v206 = v46;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%@] Stopping early because request has been canceled", buf, 0xCu);
  }

  sub_100375760(a1, v5);
LABEL_135:
}

void sub_1003792D4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 URL];
  v6 = sub_100259550(v5);
  if (v4)
  {
    [v4[1] setObject:v6 forKeyedSubscript:@"assetURL"];
  }

  Property = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, v7, 40, 1);
  }

  v9 = Property;
  if (v4)
  {
    [v4[1] setObject:v9 forKeyedSubscript:@"bundleIdentifier"];
  }

  v10 = sub_1002291AC(*(a1 + 48));
  if (v4)
  {
    [v4[1] setObject:v10 forKeyedSubscript:@"variantProduct"];
  }
}

id sub_1003793C4(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = v4[16];
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
    {
      v7 = objc_getProperty(v4, v6, 56, 1);
      v8 = [*(a1 + 40) URL];
      v15 = 138543618;
      v16 = v7;
      v17 = 2114;
      v18 = v8;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_EVENT, v5, "TaskStarted", " uuid=%{public, signpost.description:attribute}@  request=%{public, signpost.description:attribute}@ ", &v15, 0x16u);
    }
  }

  v9 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v10, 56, 1);
    }

    v12 = Property;
    v13 = *(a1 + 48);
    v15 = 138412546;
    v16 = v12;
    v17 = 2114;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%@] Started task: %{public}@", &v15, 0x16u);
  }

  return [*(a1 + 48) resume];
}

id sub_1003795D4()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100379678;
  block[3] = &unk_10051BD00;
  block[4] = objc_opt_self();
  if (qword_1005AACF8 != -1)
  {
    dispatch_once(&qword_1005AACF8, block);
  }

  v0 = qword_1005AAD00;

  return v0;
}

void sub_100379678()
{
  objc_opt_class();
  v0 = objc_opt_new();
  v1 = qword_1005AAD00;
  qword_1005AAD00 = v0;
}

uint64_t sub_1003796B4()
{
  objc_opt_self();
  if (!+[AMSRestrictions onDeviceDiagnosticsAllowed])
  {
    return 0;
  }

  v0 = sub_1003BBF50();
  v1 = [v0 isHRNMode];

  if (v1)
  {
    return 0;
  }

  return os_variant_has_internal_content();
}

void sub_100379730(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v38 = a1;
    v7 = [[UpdateMetricsEvent alloc] initWithTopic:@"xp_amp_app_install"];
    if ([v5 count])
    {
      v39 = v7;
      v40 = v6;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v41 = v5;
      obj = v5;
      v8 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (v8)
      {
        v9 = v8;
        v43 = *v45;
        v10 = ASDUpdateItemMetricsDiscoveryDate;
        v11 = ASDUpdateItemMetricsAvailableDate;
        v12 = ASDUpdateItemMetricsPurchaseStartDate;
        v13 = ASDUpdateItemMetricsDownloadStartDate;
        v14 = ASDUpdateItemMetricsPurchaseCompleteDate;
        v15 = ASDUpdateItemMetricsInstallStart;
        v16 = 0.0;
        v17 = 0.0;
        v18 = 0.0;
        v19 = 0.0;
        v20 = ASDUpdateItemMetricsDownloadCompleteDate;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v45 != v43)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v44 + 1) + 8 * i);
            v19 = v19 + sub_100379B38(v10, v11, v22);
            v18 = v18 + sub_100379B38(v12, v10, v22);
            v17 = v17 + sub_100379B38(v13, v14, v22);
            v16 = v16 + sub_100379B38(v15, v20, v22);
          }

          v9 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
        }

        while (v9);
      }

      else
      {
        v16 = 0.0;
        v17 = 0.0;
        v18 = 0.0;
        v19 = 0.0;
      }

      v23 = v19 / [obj count];
      v24 = v18 / [obj count];
      v25 = v17 / [obj count];
      v26 = v16 / [obj count];
      v7 = v39;
      sub_10027A080(v39, v23);
      sub_10027A1C4(v39, v24);
      sub_10027A0EC(v39, v25);
      sub_10027A158(v39, v26);
      v6 = v40;
      v5 = v41;
    }

    v27 = objc_opt_new();
    v28 = [v27 metrics];
    if ([v28 count])
    {
      [v27 averagePollTime];
      if (v29 > 0.0)
      {
        sub_100279F68(v7->AMSMetricsEvent_opaque, v29);
      }
    }

    v30 = [v27 lastAutoPollDate];
    if (v30)
    {
      sub_100279FD4(v7, v30);
    }

    v31 = v7;
    if (v31)
    {
      v32 = v6;
      v33 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v36 = objc_opt_class();
        *buf = 138543618;
        *&buf[4] = v36;
        v50 = 2112;
        v51 = v31;
        v37 = v36;
        _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "[%{public}@] Inserting metric event: %@", buf, 0x16u);
      }

      v34 = [[_TtC9appstored10ASEMetrics alloc] initWithType:0 bag:v32];
      *buf = v31;
      v35 = [NSArray arrayWithObjects:buf count:1];
      [(ASEMetrics *)v34 enqueueEvents:v35 flushEvents:1 completionHandler:&stru_100525518];
    }
  }
}

double sub_100379B38(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v7 = sub_1001D7AA0(v5, a2);
  v8 = sub_1001D7AA0(v5, v6);

  v9 = 0.0;
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [v8 doubleValue];
    v11 = v10;
    [v7 doubleValue];
    v9 = v11 - v12;
  }

  return v9;
}

void sub_100379C5C(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v4 lock];
  v3[2](v3);

  [v4 unlock];
}

id *sub_100379CC8(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = FamilyInfoLookupTask;
    v5 = objc_msgSendSuper2(&v7, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 3, a2);
    }
  }

  return a1;
}

id sub_100379D48(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = +[ACAccountStore ams_sharedAccountStore];
  v5 = [v4 ams_activeiTunesAccount];

  if (v5)
  {
    v6 = sub_100379DEC(v3, v5, 1, v2);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id *sub_100379DEC(uint64_t a1, void *a2, char a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  objc_opt_self();
  v8 = [v6 ams_DSID];

  if (!v8)
  {
    v15 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v39 = objc_opt_class();
      v40 = 2114;
      v41 = v7;
      v16 = v39;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Unable to load cached family info because the account has no DSID. ", buf, 0x16u);
    }

    goto LABEL_22;
  }

  v9 = v7;
  objc_opt_self();
  v10 = sub_10037B0C4();
  if (!v10)
  {
    v11 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v39 = objc_opt_class();
      v40 = 2114;
      v41 = v9;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%{public}@] [%{public}@] Unable to generate the path in order to load cached FamilyInfo", buf, 0x16u);
    }

    goto LABEL_13;
  }

  v11 = [[NSData alloc] initWithContentsOfFile:v10];
  if (!v11)
  {
LABEL_13:
    v15 = 0;
    goto LABEL_19;
  }

  v12 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v39 = objc_opt_class();
    v40 = 2114;
    v41 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Load cached FamilyInfo", buf, 0x16u);
  }

  v37 = 0;
  v13 = [NSPropertyListSerialization propertyListWithData:v11 options:0 format:0 error:&v37];
  v14 = v37;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_15:
    v17 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v36 = objc_opt_class();
      *buf = 138543874;
      v39 = v36;
      v40 = 2114;
      v41 = v9;
      v42 = 2114;
      v43 = v14;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[%{public}@] [%{public}@] Failed to deserialize the cached FamilyInfo. Error: %{public}@", buf, 0x20u);
    }

    v15 = 0;
    goto LABEL_18;
  }

  v15 = v13;

  if (!v15)
  {
    goto LABEL_15;
  }

LABEL_18:

LABEL_19:
  if (!v15)
  {
LABEL_22:
    v20 = 0;
    goto LABEL_40;
  }

  v18 = [v15 objectForKeyedSubscript:@"account"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v21 = [v6 ams_DSID];
  v22 = [v19 isEqualToNumber:v21];

  if ((v22 & 1) == 0)
  {
    v25 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = objc_opt_class();
      *buf = 138543618;
      v39 = v26;
      v40 = 2114;
      v41 = v9;
      v27 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Our cached family info isn't for the given account.", buf, 0x16u);
    }

    goto LABEL_38;
  }

  if ((a3 & 1) == 0)
  {
    v28 = [v15 objectForKeyedSubscript:@"timestamp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v28;

      if (v25)
      {
        v29 = +[NSDate date];
        [v29 timeIntervalSinceDate:v25];
        v31 = v30;

        if (v31 > 2.22044605e-16 && v31 < 604800.0)
        {

          goto LABEL_26;
        }
      }
    }

    else
    {

      v25 = 0;
    }

    v32 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = objc_opt_class();
      *buf = 138543618;
      v39 = v33;
      v40 = 2114;
      v41 = v9;
      v34 = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] We have cached family info for the account, but it's too old to return.", buf, 0x16u);
    }

LABEL_38:
    v20 = 0;
    goto LABEL_39;
  }

LABEL_26:
  v23 = [FamilyInfoLookupResult alloc];
  v24 = [v15 objectForKeyedSubscript:@"circle"];
  v20 = sub_10032BC20(&v23->super.isa, v24, 1);

LABEL_39:
LABEL_40:

  return v20;
}

void *sub_10037A38C(void *val)
{
  v1 = val;
  if (val)
  {
    if (!val[2])
    {
      v2 = objc_alloc_init(_TtC9appstored6LogKey);
      v3 = v1[2];
      v1[2] = v2;
    }

    objc_initWeak(&location, v1);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10037A494;
    v5[3] = &unk_100525540;
    objc_copyWeak(&v6, &location);
    v1 = [v1 performTaskWithBlock:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  return v1;
}

void sub_10037A478(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id *sub_10037A494(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    if (WeakRetained)
    {
      v6 = *(WeakRetained + 2);
    }

    else
    {
      v6 = 0;
    }

    *buf = 138543618;
    *&buf[4] = v5;
    v105 = 2112;
    v106 = v6;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%@] Performing LoadFamilyCircleTask", buf, 0x16u);
  }

  v8 = +[ACAccountStore ams_sharedAccountStore];
  v9 = [v8 ams_activeiTunesAccount];

  if (v9)
  {
    v94 = a2;
    v99 = 0;
    v10 = v9;
    v98 = v9;
    if (WeakRetained)
    {
      v11 = *(WeakRetained + 3);
      v12 = [v11 URLForKey:@"family-info"];
      v103[0] = 0;
      v13 = [v12 valueWithError:v103];
      v14 = v103[0];

      if (v13)
      {
        v15 = objc_alloc_init(AMSURLRequestEncoder);
        [v15 setAccount:v10];
        [v15 setBag:*(WeakRetained + 3)];
        if (*(WeakRetained + 8) == 1)
        {
          [v15 setDialogOptions:1];
        }

        v16 = [*(WeakRetained + 2) description];
        [v15 setLogUUID:v16];

        v17 = [v15 requestWithMethod:2 URL:v13 parameters:0];
        *buf = 0;
        v18 = [v17 resultWithError:buf];
        v19 = *buf;

        if (v19)
        {
          v20 = v19;
          v21 = 0;
          v99 = v19;
        }

        else
        {
          v96 = v10;
          v25 = objc_alloc_init(AMSPromise);
          v26 = +[AMSURLSession defaultSession];
          v27 = [v25 completionHandlerAdapter];
          v28 = [v26 dataTaskWithRequest:v18 completionHandler:v27];

          [v28 resume];
          v21 = [v25 resultWithError:&v99];

          v10 = v96;
        }

        v9 = v98;
      }

      else
      {
        v24 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v84 = objc_opt_class();
          v85 = *(WeakRetained + 2);
          *buf = 138543874;
          *&buf[4] = v84;
          v105 = 2114;
          v106 = v85;
          v107 = 2114;
          v108 = v14;
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "[%{public}@] [%{public}@] AMSLoadFamilyCircleTask failed because the bag didn't give us the URL. error = %{public}@", buf, 0x20u);
        }

        ASDErrorWithUnderlyingError();
        v99 = v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }

    v29 = v10;

    v97 = v99;
    v30 = v21;
    objc_opt_self();
    if (!v30)
    {
      goto LABEL_36;
    }

    v31 = [v30 object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = v31;

      if (v32)
      {
        v33 = sub_10032BC20([FamilyInfoLookupResult alloc], v32, 0);
        goto LABEL_28;
      }
    }

    else
    {

      v32 = 0;
    }

    v33 = 0;
LABEL_28:

    if (v33)
    {
      v23 = v33;
      v34 = v10;
      if (!WeakRetained)
      {
LABEL_68:

        v52 = v97;
LABEL_69:

        goto LABEL_70;
      }

      v35 = sub_10037B0C4();
      if (!v35)
      {
        v42 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v69 = objc_opt_class();
          v70 = *(WeakRetained + 2);
          *buf = 138543618;
          *&buf[4] = v69;
          v105 = 2114;
          v106 = v70;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Unable to generate the path in order to cache a family info lookup.", buf, 0x16u);
        }

        goto LABEL_67;
      }

      v36 = [v34 ams_DSID];

      if (!v36)
      {
        v42 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v71 = objc_opt_class();
          v72 = *(WeakRetained + 2);
          v73 = v72;
          [v34 hashedDescription];
          v75 = v74 = v34;
          *buf = 138543874;
          *&buf[4] = v71;
          v105 = 2114;
          v106 = v72;
          v107 = 2114;
          v108 = v75;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Unable to cache a family info lookup because the given account has no DSID. account = %{public}@", buf, 0x20u);

          v34 = v74;
        }

        goto LABEL_67;
      }

      v102[0] = @"account";
      v95 = v34;
      v37 = [v34 ams_DSID];
      v103[0] = v37;
      v102[1] = @"circle";
      v38 = sub_10032C068(v23);
      v103[1] = v38;
      v102[2] = @"timestamp";
      v39 = +[NSDate date];
      v103[2] = v39;
      v40 = [NSDictionary dictionaryWithObjects:v103 forKeys:v102 count:3];
      v101 = 0;
      v41 = [NSPropertyListSerialization dataWithPropertyList:v40 format:200 options:0 error:&v101];
      v42 = v101;

      v43 = v41;
      if (!v41)
      {
        v47 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v76 = objc_opt_class();
          v77 = *(WeakRetained + 2);
          v78 = v77;
          v79 = AMSLogableError();
          *buf = 138543874;
          *&buf[4] = v76;
          v105 = 2114;
          v106 = v77;
          v107 = 2114;
          v108 = v79;
          _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "[%{public}@] [%{public}@] Failed to serialize the family info. error = %{public}@", buf, 0x20u);

          v43 = 0;
        }

        goto LABEL_66;
      }

      v100 = v42;
      v44 = [v41 writeToFile:v35 options:1 error:&v100];
      v45 = v100;

      v46 = ASDLogHandleForCategory();
      v47 = v46;
      if (v44)
      {
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          v48 = objc_opt_class();
          v49 = *(WeakRetained + 2);
          *buf = 138543874;
          *&buf[4] = v48;
          v105 = 2114;
          v106 = v49;
          v107 = 2114;
          v108 = v35;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Wrote the serialized family info to: %{public}@", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v88 = objc_opt_class();
        v89 = *(WeakRetained + 2);
        v90 = v43;
        v91 = v89;
        AMSLogableError();
        v92 = v93 = v45;
        *buf = 138543874;
        *&buf[4] = v88;
        v105 = 2114;
        v106 = v89;
        v107 = 2114;
        v108 = v92;
        _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "[%{public}@] [%{public}@] Failed to write the serialized family info to disk. error = %{public}@", buf, 0x20u);

        v43 = v90;
        v42 = v93;
        goto LABEL_66;
      }

      v42 = v45;
LABEL_66:

      v34 = v95;
LABEL_67:

      v9 = v98;
      goto LABEL_68;
    }

LABEL_36:
    v50 = ASDLogHandleForCategory();
    v51 = os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);
    if (v30)
    {
      v53 = v94;
      v52 = v97;
      if (!v51)
      {
        goto LABEL_42;
      }

      v54 = objc_opt_class();
      if (WeakRetained)
      {
        v55 = *(WeakRetained + 2);
      }

      else
      {
        v55 = 0;
      }

      *buf = 138543618;
      *&buf[4] = v54;
      v105 = 2112;
      v106 = v55;
      v56 = v54;
      v57 = "[%{public}@] [%@] Failed to load the family info because we were unable to process the server response.";
      v58 = v50;
      v59 = 22;
    }

    else
    {
      v53 = v94;
      v52 = v97;
      if (!v51)
      {
        goto LABEL_42;
      }

      v86 = objc_opt_class();
      if (WeakRetained)
      {
        v87 = *(WeakRetained + 2);
      }

      else
      {
        v87 = 0;
      }

      *buf = 138543874;
      *&buf[4] = v86;
      v105 = 2112;
      v106 = v87;
      v107 = 2114;
      v108 = v97;
      v56 = v86;
      v57 = "[%{public}@] [%@] Failed to load the family info because the network call failed. error = %{public}@";
      v58 = v50;
      v59 = 32;
    }

    _os_log_error_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, v57, buf, v59);

LABEL_42:
    if (WeakRetained)
    {
      v60 = *(WeakRetained + 2);
    }

    else
    {
      v60 = 0;
    }

    v23 = sub_100379DEC(FamilyInfoLookupTask, v29, 0, v60);
    v61 = ASDLogHandleForCategory();
    v62 = os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT);
    if (v23)
    {
      if (v62)
      {
        v63 = objc_opt_class();
        if (WeakRetained)
        {
          v64 = *(WeakRetained + 2);
        }

        else
        {
          v64 = 0;
        }

        *buf = 138543618;
        *&buf[4] = v63;
        v105 = 2112;
        v106 = v64;
        v65 = v63;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%@] Returning cached family info.", buf, 0x16u);
      }
    }

    else
    {
      if (v62)
      {
        v66 = objc_opt_class();
        if (WeakRetained)
        {
          v67 = *(WeakRetained + 2);
        }

        else
        {
          v67 = 0;
        }

        *buf = 138543618;
        *&buf[4] = v66;
        v105 = 2112;
        v106 = v67;
        v68 = v66;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%@] We failed to load the family info, and we have no cached family info to return.", buf, 0x16u);
      }

      if (v53)
      {
        ASDErrorWithUnderlyingError();
        *v53 = v23 = 0;
      }

      else
      {
        v23 = 0;
      }
    }

    goto LABEL_69;
  }

  v22 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v81 = objc_opt_class();
    if (WeakRetained)
    {
      v82 = *(WeakRetained + 2);
    }

    else
    {
      v82 = 0;
    }

    *buf = 138543618;
    *&buf[4] = v81;
    v105 = 2114;
    v106 = v82;
    v83 = v81;
    _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "[%{public}@] [%{public}@] AMSLoadFamilyCircleTask failed because there's no active account.", buf, 0x16u);
  }

  if (a2)
  {
    ASDErrorWithTitleAndMessage();
    *a2 = v23 = 0;
  }

  else
  {
    v23 = 0;
  }

LABEL_70:

  return v23;
}

id sub_10037B0C4()
{
  objc_opt_self();
  v0 = sub_10029BDD4();
  v1 = [v0 stringByAppendingPathComponent:@"JFamilyCircle.plist"];

  return v1;
}

id sub_10037B178(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v11.receiver = a1;
    v11.super_class = ODRDiagnosticsClient;
    a1 = objc_msgSendSuper2(&v11, "init");
    if (a1)
    {
      v4 = objc_alloc_init(NSLock);
      v5 = qword_1005AAD18;
      qword_1005AAD18 = v4;

      v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ODRDiagnosticsProtocol];
      [v3 setExportedInterface:v6];

      v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ODRDiagnosticsProtocol];
      [v3 setRemoteObjectInterface:v7];

      [v3 setExportedObject:a1];
      [v3 resume];
      v8 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *v10 = 0;
        _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Created the diagnostics client.", v10, 2u);
      }
    }
  }

  return a1;
}

void sub_10037B404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10037B41C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10037B434(uint64_t a1, void *a2)
{
  v3 = sub_1001C40CC(a2, *(a1 + 32));
  v4 = v3;
  if (v3)
  {
    v14[0] = @"applicationBundleID";
    v5 = sub_100280B34(v3);
    v15[0] = v5;
    v14[1] = @"isBeta";
    v6 = [NSNumber numberWithBool:sub_10039B2FC(*(a1 + 32))];
    v15[1] = v6;
    v14[2] = @"isStoreBased";
    v7 = [NSNumber numberWithBool:sub_10023E4DC(v4, @"is_store_based")];
    v15[2] = v7;
    v14[3] = @"version";
    v8 = sub_100280CE4(v4);
    v15[3] = v8;
    v14[4] = @"thinningVariant";
    v9 = sub_100280CAC(v4);
    v15[4] = v9;
    v14[5] = @"lastModificationDate";
    v10 = sub_100280BA4(v4);
    v15[5] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:6];
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }
}

void sub_10037B700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10037B718(uint64_t a1, void *a2)
{
  v3 = sub_1001C314C(a2);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10037C0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a57, 8);
  _Unwind_Resume(a1);
}

void sub_10037C128(uint64_t *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = sub_1001C34B8(v4, v3);
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = sub_1001C4808(v4, a1[4]);

  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void sub_10037CDDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10037CDFC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (!WeakRetained)
  {
    Property = 0;
    v7 = *(a1 + 32);
    goto LABEL_5;
  }

  v5 = objc_getProperty(WeakRetained, v3, 48, 1);
  v7 = *(a1 + 32);
  if (!v5)
  {
    Property = objc_getProperty(v4, v6, 32, 1);
LABEL_5:
    v12 = Property;
    (*(v7 + 16))(v7, 0, v12);

    v8 = 0;
    goto LABEL_6;
  }

  v8 = v5;
  v13 = 0;
  v9 = sub_100281010(v5, &v13);
  v10 = v13;
  (*(v7 + 16))(v7, v9, v10);

LABEL_6:
}

void sub_10037D124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10037D14C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = *(a1 + 32);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained = objc_getProperty(WeakRetained, v3, 32, 1);
  }

  v5 = WeakRetained;
  (*(v4 + 16))(v4, v5);
}

void sub_10037D34C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10037D368(uint64_t a1, void *a2)
{
  v3 = sub_1001C489C(a2);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10037D534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10037D550(uint64_t a1, void *a2)
{
  v3 = sub_1001C4524(a2);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id *sub_10037DD34(id *a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
    goto LABEL_9;
  }

  v20.receiver = a1;
  v20.super_class = MediaAppAttributes;
  a1 = objc_msgSendSuper2(&v20, "init");
  if (a1)
  {
    v4 = [v3 objectForKeyedSubscript:@"name"];
    v5 = [v4 copy];
    v6 = a1[3];
    a1[3] = v5;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v3 objectForKeyedSubscript:@"artistName"];
      v8 = [v7 copy];
      v9 = a1[4];
      a1[4] = v8;

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v3 objectForKeyedSubscript:@"watchBundleId"];
        v11 = [v10 copy];
        v12 = a1[5];
        a1[5] = v11;

        v13 = [v3 objectForKeyedSubscript:@"platformAttributes"];
        v14 = [v13 copy];
        v15 = a1[2];
        a1[2] = v14;

        if (!a1[2] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v16 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(a1[2], "count")}];
          v17 = a1[1];
          a1[1] = v16;

          goto LABEL_8;
        }
      }
    }

LABEL_9:
    v18 = 0;
    goto LABEL_10;
  }

LABEL_8:
  a1 = a1;
  v18 = a1;
LABEL_10:

  return v18;
}

id *sub_10037DEF4(id *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = @"ios";
    v3 = [v1[1] objectForKeyedSubscript:@"ios"];
    if (v3)
    {
      v1 = v3;
    }

    else
    {
      v4 = [v1[2] objectForKeyedSubscript:@"ios"];
      if (v4)
      {
        v5 = sub_1001FEA48([MediaAppPlatformAttributes alloc], v4);
        if (v5)
        {
          [v1[1] setObject:v5 forKeyedSubscript:@"ios"];
        }

        v1 = v5;
      }

      else
      {
        v1 = 0;
      }
    }
  }

  return v1;
}

void sub_10037E634(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v5 = [v3[15] applicationHasMIDBasedSINF];
    v4 = v6;
    if (v5)
    {
      [*(a1 + 32) addObject:v6];
      v4 = v6;
    }
  }
}

id sub_10037E764()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10037E808;
  block[3] = &unk_10051BD00;
  block[4] = objc_opt_self();
  if (qword_1005AAD28 != -1)
  {
    dispatch_once(&qword_1005AAD28, block);
  }

  v0 = qword_1005AAD20;

  return v0;
}

void sub_10037E808(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1005AAD20;
  qword_1005AAD20 = v1;
}

void sub_10037E840(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    v4 = a2 != 1;
    v6 = a4;
    v5 = sub_1001DFF60();
    [v5 checkStoreQueue:v4 withReason:4];

    v6[2](v6, 1, 0);
  }
}

void sub_10037E8D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (a1)
  {
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Skipping non supported claim user apps complete for clientID: %{public}@", &v6, 0xCu);
    }
  }
}

void sub_10037E988(uint64_t a1, void *a2, void *a3, unsigned int a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (a1)
  {
    v12 = dispatch_get_global_queue(a4, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10037EA90;
    block[3] = &unk_1005255C0;
    v14 = v9;
    v15 = v10;
    v18 = a4;
    v16 = a1;
    v17 = v11;
    dispatch_async(v12, block);
  }
}

void sub_10037EA90(uint64_t a1)
{
  v22 = [[KeepAlive alloc] initWithName:@"com.apple.appstored.ManagedApplicationTask"];
  v2 = sub_1002C7044([ManagedApplicationTask alloc], *(a1 + 32), *(a1 + 40));
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v19 = v4;
    if (v2)
    {
      Property = objc_getProperty(v2, v5, 122, 1);
    }

    else
    {
      Property = 0;
    }

    v21 = Property;
    v7 = *(a1 + 40);
    v20 = sub_1002C6944([*(a1 + 32) requestType]);
    v8 = [*(a1 + 32) itemIdentifier];
    v9 = [*(a1 + 32) bundleIdentifier];
    v10 = [*(a1 + 32) skipDownloads];
    v11 = sub_100304BEC(*(a1 + 64));
    v12 = *(a1 + 64);
    *buf = 138545410;
    v29 = v4;
    v30 = 2112;
    v31 = v21;
    v32 = 2114;
    v33 = v7;
    v34 = 2114;
    v35 = v20;
    v36 = 2114;
    v37 = v8;
    v38 = 2114;
    v39 = v9;
    v40 = 1024;
    v41 = v10;
    v42 = 2114;
    v43 = v11;
    v44 = 1024;
    v45 = v12;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%@] Start for clientID: %{public}@ with requestType: %{public}@ itemID: %{public}@ bundleID: %{public}@ skipDownloads: %{BOOL}d qoS: %{public}@ (0x%x)", buf, 0x54u);
  }

  objc_initWeak(buf, v2);
  newValue[0] = _NSConcreteStackBlock;
  newValue[1] = 3221225472;
  newValue[2] = sub_10037EE04;
  newValue[3] = &unk_100525598;
  objc_copyWeak(&v26, buf);
  v25 = *(a1 + 56);
  v24 = *(a1 + 40);
  if (v2)
  {
    objc_setProperty_atomic_copy(v2, v13, newValue, 154);
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    v15 = v14[3];
    if (!v15)
    {
      v16 = objc_alloc_init(TaskQueue);
      v17 = v14[3];
      v14[3] = v16;

      v15 = v14[3];
      if (v15)
      {
        [v15[1] setName:@"com.apple.appstored.StoreQueueManager.tasks"];
        v15 = v14[3];
      }
    }

    v14 = v15;
  }

  v27 = v2;
  v18 = [NSArray arrayWithObjects:&v27 count:1, v19];
  if (v14)
  {
    [v14[1] addOperations:v18 waitUntilFinished:1];
  }

  objc_destroyWeak(&v26);
  objc_destroyWeak(buf);
}