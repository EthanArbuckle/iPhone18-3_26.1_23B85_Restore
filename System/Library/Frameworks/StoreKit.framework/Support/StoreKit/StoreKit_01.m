void sub_1000374AC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, _BYTE *a5)
{
  v9 = a3;
  if ([*(a1 + 32) count] > 0x63)
  {
    *a5 = 1;
  }

  else
  {
    v7 = [v9 objectForKeyedSubscript:@"renewal_info"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = sub_1001D2DA8(v7, 0);
      if (v8)
      {
        [*(a1 + 32) addObject:v8];
      }
    }
  }
}

void sub_100037754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100037778(void *a1, uint64_t a2, void *a3, uint64_t a4, _BYTE *a5)
{
  v7 = a3;
  if (++*(*(a1[5] + 8) + 24) > 0x1F3uLL)
  {
    if (!a1[6])
    {
      *a5 = 1;
    }
  }

  else
  {
    v12 = v7;
    v8 = [v7 objectForKeyedSubscript:@"receipt"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = sub_1001D2D6C(v8, 0);
      if (v9 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = a1[4];
        v11 = [NSNumber numberWithInteger:v9 >> 9];
        [v10 addObject:v11];
      }
    }

    v7 = v12;
  }
}

void sub_100037AA4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 objectForKeyedSubscript:@"receipt"];
  v8 = 0;
  v5 = sub_100027B30(v4, &v8);
  v6 = v8;
  if (v6)
  {
    if (qword_1003D4038 != -1)
    {
      sub_1002CA9E4();
    }

    if (os_log_type_enabled(qword_1003D4018, OS_LOG_TYPE_ERROR))
    {
      sub_1002CAD24();
    }
  }

  else
  {
    v7 = [v5 objectForKeyedSubscript:@"originalTransactionId"];
    if ([v4 length] && objc_msgSend(v7, "isEqual:", *(a1 + 32)))
    {
      (*(*(a1 + 48) + 16))();
    }
  }
}

void sub_100037DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100037DCC(uint64_t a1, uint64_t a2, void *a3)
{
  *(*(*(a1 + 40) + 8) + 40) = [a3 objectForKeyedSubscript:*(a1 + 32)];

  return _objc_release_x1();
}

void sub_100038140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100038160(uint64_t a1, uint64_t a2, void *a3)
{
  *(*(*(a1 + 40) + 8) + 40) = [a3 objectForKeyedSubscript:*(a1 + 32)];

  return _objc_release_x1();
}

void sub_100038688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000388F0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"subscription_group_id"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v4 objectForKeyedSubscript:@"last_updated"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (qword_1003D4038 != -1)
      {
        sub_1002CA994();
      }

      if (os_log_type_enabled(qword_1003D4018, OS_LOG_TYPE_ERROR))
      {
        sub_1002CAFB4();
      }

      v7 = +[NSDate distantPast];

      v6 = v7;
    }

    v8 = [v4 objectForKeyedSubscript:@"renewal_info"];
    v9 = [*(a1 + 32) _statusesForRenewalInfoBlob:v8 subscriptionGroupID:v5 bundleID:*(a1 + 40)];
    v10 = v9;
    if (*(a1 + 56) != 1 || [v9 count])
    {
      v12[0] = @"subscriptionGroupIdentifier";
      v12[1] = @"lastUpdated";
      v13[0] = v5;
      v13[1] = v6;
      v12[2] = @"lastTransactions";
      v13[2] = v10;
      v11 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    if (qword_1003D4038 != -1)
    {
      sub_1002CA994();
    }

    if (os_log_type_enabled(qword_1003D4018, OS_LOG_TYPE_ERROR))
    {
      sub_1002CAF44();
    }
  }
}

void sub_100038B4C(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CAE78;
  off_1003CAE78 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D3FF0;
  qword_1003D3FF0 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D3FF8;
  qword_1003D3FF8 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D4000;
  qword_1003D4000 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D4008;
  qword_1003D4008 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D4010;
  qword_1003D4010 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D4018;
  qword_1003D4018 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D4020;
  qword_1003D4020 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D4028;
  qword_1003D4028 = v17;

  qword_1003D4030 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_100039618(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  v2 = a2;
  [(SQLiteDatabaseStoreMigrator *)v2 executeStatement:@"CREATE TABLE IF NOT EXISTS storekit_messages (dsid INTEGER, bundle_id TEXT, status INTEGER, allow_developer_control INTEGER, message_type INTEGER, UNIQUE(dsid, bundle_id, message_type) ON CONFLICT REPLACE);"];
  [(SQLiteDatabaseStoreMigrator *)v2 executeStatement:@"CREATE TABLE IF NOT EXISTS storekit_revocations (dsid INTEGER, bundle_id TEXT, product_id TEXT, UNIQUE(dsid, bundle_id, product_id) ON CONFLICT REPLACE);"];
}

void sub_100039690(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  v2 = a2;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100039904;
  v21 = sub_100039914;
  v22 = objc_alloc_init(NSMutableArray);
  v3 = [(SQLiteDatabaseStoreMigrator *)v2 connection];
  v4 = [(SQLiteEntity *)StoreKitMessagesDatabaseEntity allOnConnection:v3 predicate:0];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10003991C;
  v16[3] = &unk_100381490;
  v16[4] = &v17;
  [v4 enumerateObjectsUsingBlock:v16];

  [(SQLiteDatabaseStoreMigrator *)v2 executeStatement:@"DROP TABLE storekit_messages"];
  [(SQLiteDatabaseStoreMigrator *)v2 executeStatement:@"CREATE TABLE IF NOT EXISTS storekit_messages (dsid INTEGER, bundle_id TEXT, status INTEGER, allow_developer_control INTEGER, message_type INTEGER, UNIQUE(dsid, bundle_id, message_type) ON CONFLICT REPLACE);"];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v18[5];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v23 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = [StoreKitMessagesDatabaseEntity alloc];
        v11 = [(SQLiteDatabaseStoreMigrator *)v2 connection];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v12 objects:v23 count:16];
    }

    while (v6);
  }

  _Block_object_dispose(&v17, 8);
}

void sub_1000398D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100039904(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10003991C(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_alloc_init(NSMutableDictionary);
  v4 = [v3 objectForKeyedSubscript:@"dsid"];
  [v8 setObject:v4 forKeyedSubscript:@"dsid"];

  v5 = [v3 objectForKeyedSubscript:@"bundle_id"];
  [v8 setObject:v5 forKeyedSubscript:@"bundle_id"];

  v6 = [v3 objectForKeyedSubscript:@"status"];
  [v8 setObject:v6 forKeyedSubscript:@"status"];

  v7 = [v3 objectForKeyedSubscript:@"allow_developer_control"];

  [v8 setObject:v7 forKeyedSubscript:@"allow_developer_control"];
  [v8 setObject:&off_1003A1450 forKeyedSubscript:@"message_type"];
  [*(*(*(a1 + 32) + 8) + 40) addObject:v8];
}

void sub_100039A80(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CAE80;
  off_1003CAE80 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D4040;
  qword_1003D4040 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D4048;
  qword_1003D4048 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D4050;
  qword_1003D4050 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D4058;
  qword_1003D4058 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D4060;
  qword_1003D4060 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D4068;
  qword_1003D4068 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D4070;
  qword_1003D4070 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D4078;
  qword_1003D4078 = v17;

  qword_1003D4080 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

id sub_100039D78(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  if ([v1 canCreatePayload])
  {
    v2 = [v1 createPayload];
  }

  else
  {
    if (qword_1003D40D8 != -1)
    {
      sub_1002CB0F8();
    }

    v3 = qword_1003D4090;
    if (os_log_type_enabled(qword_1003D4090, OS_LOG_TYPE_ERROR))
    {
      sub_1002CB10C(v3);
    }

    v2 = 0;
  }

  return v2;
}

void sub_100039E20(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CAE88;
  off_1003CAE88 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D4090;
  qword_1003D4090 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D4098;
  qword_1003D4098 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D40A0;
  qword_1003D40A0 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D40A8;
  qword_1003D40A8 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D40B0;
  qword_1003D40B0 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D40B8;
  qword_1003D40B8 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D40C0;
  qword_1003D40C0 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D40C8;
  qword_1003D40C8 = v17;

  qword_1003D40D0 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_10003A5C0(id a1)
{
  if (qword_1003D4148 != -1)
  {
    sub_1002CB164();
  }

  if (os_log_type_enabled(qword_1003D4100, OS_LOG_TYPE_DEBUG))
  {
    sub_1002CB178();
  }

  v1 = [[SecureClock alloc] _init];
  v2 = qword_1003D40E0;
  qword_1003D40E0 = v1;

  [qword_1003D40E0 _logState];
  [qword_1003D40E0 _readState];
}

void sub_10003A68C(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1003D40F0;
  qword_1003D40F0 = v1;

  v3 = qword_1003D40F0;

  [v3 setDateFormat:@"EEE, dd MMM yyyy HH:mm:ss zzz"];
}

id sub_10003AB54(uint64_t a1)
{
  *(*(a1 + 32) + 24) = *(a1 + 48);
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _writeState];
}

void sub_10003B10C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10003B124(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_10003B13C(uint64_t a1)
{
  v2 = [*(a1 + 32) _currentTime];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);

  return [v5 _logState];
}

void sub_10003B37C(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CB488;
  off_1003CB488 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D4100;
  qword_1003D4100 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D4108;
  qword_1003D4108 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D4110;
  qword_1003D4110 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D4118;
  qword_1003D4118 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D4120;
  qword_1003D4120 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D4128;
  qword_1003D4128 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D4130;
  qword_1003D4130 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D4138;
  qword_1003D4138 = v17;

  qword_1003D4140 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_10003B4EC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id sub_10003BE38(unsigned int a1)
{
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v2 = *(&off_1003CB4F0 + a1);

  return v2;
}

void sub_10003C0D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10003C0F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained error];

  if (v3)
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB534();
    }

    v4 = qword_1003CB520;
    if (os_log_type_enabled(qword_1003CB520, OS_LOG_TYPE_ERROR))
    {
      sub_1002CB5BC(a1, v4, WeakRetained);
    }
  }

  v5 = *(a1 + 40);
  v6 = [WeakRetained transactions];
  v7 = [WeakRetained error];
  (*(v5 + 16))(v5, v6, v7);
}

void sub_10003C270(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v3;
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

          v10 = [*(*(&v11 + 1) + 8 * v9) mutableCopy];
          [v10 setObject:*(a1 + 32) forKeyedSubscript:@"qid"];
          [v4 addObject:v10];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    [*(*(a1 + 40) + 80) updatedTransactions:v4];
  }
}

void sub_10003C7D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_10003C80C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained transactions];
  v4 = [v2 _processDownloadsForTransactions:v3];

  v5 = *(a1 + 32);
  v6 = [WeakRetained error];
  v7 = [v6 toASDErrorWithMetadata:0];
  (*(v5 + 16))(v5, v4, v7);
}

void sub_10003D86C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB534();
    }

    if (os_log_type_enabled(qword_1003CB510, OS_LOG_TYPE_ERROR))
    {
      sub_1002CBA9C();
    }

    if (*(a1 + 64) == 1)
    {
      v10 = +[LSApplicationWorkspace defaultWorkspace];
      [v10 removeDeviceIdentifierForVendorName:*(a1 + 48) bundleIdentifier:*(a1 + 40)];
    }
  }

  else
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB534();
    }

    v11 = qword_1003CB510;
    if (os_log_type_enabled(qword_1003CB510, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      *buf = 138543618;
      v37 = v12;
      v38 = 2114;
      v39 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Finished processing payment for %{public}@", buf, 0x16u);
    }
  }

  if (v7)
  {
    if (![*(a1 + 40) length])
    {
      goto LABEL_26;
    }

    v28 = v8;
    v29 = v7;
    v14 = [v7 mutableCopy];
    [v14 setObject:@"DefaultQueue" forKeyedSubscript:@"qid"];
    v27 = v9;
    [v14 setObject:v9 forKeyedSubscript:@"error"];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v15 = +[StoreKitServiceConnection allConnections];
    v16 = [v15 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v31;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v31 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v30 + 1) + 8 * i);
          v21 = [v20 client];
          v22 = [v21 requestBundleID];
          v23 = [v22 isEqualToString:*(a1 + 40)];

          if (v23)
          {
            v34 = v14;
            v24 = [NSArray arrayWithObjects:&v34 count:1];
            [v20 receivedTransactions:v24];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v17);
    }

    v8 = v28;
    v7 = v29;
    v9 = v27;
  }

  if (!(v7 | v9))
  {
    v9 = ASDErrorWithDescription();
  }

LABEL_26:
  v25 = *(a1 + 56);
  v26 = [v9 toASDErrorWithMetadata:0];
  (*(v25 + 16))(v25, v8, v26);
}

void sub_10003E2C8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  if (*(a1 + 40) >= 1)
  {
    sandbox_extension_release();
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v10, v8);
  }
}

void sub_10003E360(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB534();
    }

    if (os_log_type_enabled(qword_1003CB510, OS_LOG_TYPE_ERROR))
    {
      sub_1002CBCF0();
    }
  }
}

void sub_10003EE44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location, id a26)
{
  objc_destroyWeak((v26 + 56));
  objc_destroyWeak((v26 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a26);
  _Unwind_Resume(a1);
}

void sub_10003EE80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_loadWeakRetained((a1 + 56));
  v4 = [WeakRetained transaction];

  if (v4)
  {
    v5 = [WeakRetained transaction];
    v17 = v5;
    v6 = [NSArray arrayWithObjects:&v17 count:1];
    v7 = [v3 _processDownloadsForTransactions:v6];

    v4 = [v7 firstObject];
  }

  v8 = *(a1 + 32);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10003F028;
  v12[3] = &unk_100381A00;
  v13 = WeakRetained;
  v14 = v8;
  v9 = *(a1 + 40);
  v15 = v4;
  v16 = v9;
  v10 = v4;
  v11 = WeakRetained;
  [_TtC9storekitd22objc_StoreFrontManager storefrontCountryCodeForClient:v8 completionHandler:v12];
}

void sub_10003F028(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = objc_alloc_init(_TtC9storekitd28StoreKitServiceErrorMetadata);
  v4 = [*(a1 + 32) serverCorrelationIdentifier];
  [(StoreKitServiceErrorMetadata *)v11 setServerCorrelationID:v4];

  v5 = [*(a1 + 40) objc_clientDescription];
  [(StoreKitServiceErrorMetadata *)v11 setEnvironment:v5];

  [(StoreKitServiceErrorMetadata *)v11 setStorefrontCountryCode:v3];
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = [*(a1 + 32) response];
  v9 = [*(a1 + 32) error];
  v10 = [v9 toASDErrorWithMetadata:v11];
  (*(v6 + 16))(v6, v7, v8, v10);
}

void sub_10003F4DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10003F504(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained isCancelled])
  {
    ASDErrorWithDescription();
  }

  else
  {
    [WeakRetained error];
  }
  v3 = ;
  v4 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003F634;
  v8[3] = &unk_100381A00;
  v9 = WeakRetained;
  v10 = v4;
  v5 = *(a1 + 40);
  v11 = v3;
  v12 = v5;
  v6 = v3;
  v7 = WeakRetained;
  [_TtC9storekitd22objc_StoreFrontManager storefrontCountryCodeForClient:v4 completionHandler:v8];
}

void sub_10003F634(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_alloc_init(_TtC9storekitd28StoreKitServiceErrorMetadata);
  v4 = [*(a1 + 32) serverCorrelationID];
  [(StoreKitServiceErrorMetadata *)v8 setServerCorrelationID:v4];

  v5 = [*(a1 + 40) objc_clientDescription];
  [(StoreKitServiceErrorMetadata *)v8 setEnvironment:v5];

  [(StoreKitServiceErrorMetadata *)v8 setStorefrontCountryCode:v3];
  v6 = *(a1 + 56);
  v7 = [*(a1 + 48) toASDErrorWithMetadata:v8];
  (*(v6 + 16))(v6, v7);
}

void sub_10003F8A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10003F8CC(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (a2)
  {
    if (WeakRetained)
    {
      [WeakRetained[10] removedEntitlementsForProductIdentifiers:*(a1 + 32)];
    }

    else
    {
      if (qword_1003D4160 != -1)
      {
        sub_1002CB534();
      }

      v8 = qword_1003CB4F8;
      if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_INFO))
      {
        v9[0] = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Could not notify client of removed entitlements because a weak reference to self was lost while waiting for renewReceiptWithOptions:client:replyBlock: to reply. This is expected if the client has terminated.", v9, 2u);
      }
    }
  }

  else
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB534();
    }

    if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_ERROR))
    {
      sub_1002CBE30();
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10003FEF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25)
{
  objc_destroyWeak((v25 + 56));
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a25);
  _Unwind_Resume(a1);
}

void sub_10003FF28(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB534();
    }

    if (os_log_type_enabled(qword_1003CB510, OS_LOG_TYPE_ERROR))
    {
      sub_1002CBCF0();
    }
  }
}

void sub_10003FFB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_loadWeakRetained((a1 + 56));
  v4 = [ReceiptManager managerForClient:*(a1 + 32)];
  [v4 invalidateLegacyTransactionCache];
  v5 = [WeakRetained transactions];
  v6 = [v3 _processDownloadsForTransactions:v5];

  v7 = *(a1 + 32);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100040108;
  v11[3] = &unk_100381A00;
  v12 = WeakRetained;
  v13 = v7;
  v8 = *(a1 + 40);
  v14 = v6;
  v15 = v8;
  v9 = v6;
  v10 = WeakRetained;
  [_TtC9storekitd22objc_StoreFrontManager storefrontCountryCodeForClient:v7 completionHandler:v11];
}

void sub_100040108(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = objc_alloc_init(_TtC9storekitd28StoreKitServiceErrorMetadata);
  v4 = [*(a1 + 32) serverCorrelationID];
  [(StoreKitServiceErrorMetadata *)v10 setServerCorrelationID:v4];

  v5 = [*(a1 + 40) objc_clientDescription];
  [(StoreKitServiceErrorMetadata *)v10 setEnvironment:v5];

  [(StoreKitServiceErrorMetadata *)v10 setStorefrontCountryCode:v3];
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = [*(a1 + 32) error];
  v9 = [v8 toASDErrorWithMetadata:v10];
  (*(v6 + 16))(v6, v7, v9);
}

void sub_100040B24(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v5 = a2;
  v3 = a2;
  v4 = [NSArray arrayWithObjects:&v5 count:1];
  [v2 receivedStatuses:{v4, v5}];
}

void sub_100040BC0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 receivedStatuses:0];
  (*(*(a1 + 40) + 16))();
}

uint64_t sub_10004191C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2 == 0;
  v5 = [a2 toASDErrorWithMetadata:0];
  (*(v3 + 16))(v3, v4, v5);

  result = *(a1 + 40);
  if (result >= 1)
  {

    return sandbox_extension_release();
  }

  return result;
}

void sub_100043504(uint64_t a1)
{
  v2 = +[InAppPromotionManager manager];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) requestBundleID];
  v9 = 0;
  v5 = [v2 promotionInfoForProductIdentifiers:v3 bundleID:v4 error:&v9];
  v6 = v9;

  v7 = *(a1 + 48);
  v8 = [v6 toASDErrorWithMetadata:0];
  (*(v7 + 16))(v7, v5, v8);
}

void sub_100043838(uint64_t a1)
{
  v2 = +[InAppPromotionManager manager];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) requestBundleID];
  v8 = 0;
  [v2 setPromotionInfo:v3 forBundleID:v4 error:&v8];
  v5 = v8;

  v6 = *(a1 + 48);
  v7 = [v5 toASDErrorWithMetadata:0];
  (*(v6 + 16))(v6, v7);
}

void sub_100043CB8(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 toASDErrorWithMetadata:0];
  (*(v4 + 16))(v4, v5, v6);
}

void sub_100044070(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100044158;
  v10 = &unk_100381B18;
  v11 = *(a1 + 32);
  v12 = v3;
  v4 = v3;
  [(AnalyticsEvent *)_TtC9storekitd23ManualSyncFinishedEvent sendLazy:&v7];
  v5 = *(a1 + 40);
  v6 = [v4 toASDErrorWithMetadata:{0, v7, v8, v9, v10}];
  (*(v5 + 16))(v5, v6);
}

id sub_100044158(uint64_t a1)
{
  v2 = objc_opt_new();
  [v2 configureWithClient:*(a1 + 32)];
  [v2 configureWithError:*(a1 + 40)];

  return v2;
}

void sub_1000444B4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v5 = a2;
  v3 = a2;
  v4 = [NSArray arrayWithObjects:&v5 count:1];
  [v2 receivedTransactions:{v4, v5}];
}

void sub_100044550(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) receivedTransactions:0];
  v4 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100044630;
  v7[3] = &unk_100381B68;
  v8 = v4;
  v5 = *(a1 + 48);
  v9 = v3;
  v10 = v5;
  v6 = v3;
  [_TtC9storekitd22objc_StoreFrontManager storefrontCountryCodeForClient:v8 completionHandler:v7];
}

void sub_100044630(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = objc_alloc_init(_TtC9storekitd28StoreKitServiceErrorMetadata);
  v4 = [*(a1 + 32) objc_clientDescription];
  [(StoreKitServiceErrorMetadata *)v7 setEnvironment:v4];

  [(StoreKitServiceErrorMetadata *)v7 setStorefrontCountryCode:v3];
  v5 = *(a1 + 48);
  v6 = [*(a1 + 40) toASDErrorWithMetadata:v7];
  (*(v5 + 16))(v5, v6);
}

void sub_1000449F0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v5 = a2;
  v3 = a2;
  v4 = [NSArray arrayWithObjects:&v5 count:1];
  [v2 receivedTransactions:{v4, v5}];
}

void sub_100044A8C(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) receivedTransactions:0];
  v4 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100044B6C;
  v7[3] = &unk_100381B68;
  v8 = v4;
  v5 = *(a1 + 48);
  v9 = v3;
  v10 = v5;
  v6 = v3;
  [_TtC9storekitd22objc_StoreFrontManager storefrontCountryCodeForClient:v8 completionHandler:v7];
}

void sub_100044B6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = objc_alloc_init(_TtC9storekitd28StoreKitServiceErrorMetadata);
  v4 = [*(a1 + 32) objc_clientDescription];
  [(StoreKitServiceErrorMetadata *)v7 setEnvironment:v4];

  [(StoreKitServiceErrorMetadata *)v7 setStorefrontCountryCode:v3];
  v5 = *(a1 + 48);
  v6 = [*(a1 + 40) toASDErrorWithMetadata:v7];
  (*(v5 + 16))(v5, v6);
}

void sub_100044F18(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v5 = a2;
  v3 = a2;
  v4 = [NSArray arrayWithObjects:&v5 count:1];
  [v2 receivedTransactions:{v4, v5}];
}

void sub_100044FB4(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) receivedTransactions:0];
  v4 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100045094;
  v7[3] = &unk_100381B68;
  v8 = v4;
  v5 = *(a1 + 48);
  v9 = v3;
  v10 = v5;
  v6 = v3;
  [_TtC9storekitd22objc_StoreFrontManager storefrontCountryCodeForClient:v8 completionHandler:v7];
}

void sub_100045094(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = objc_alloc_init(_TtC9storekitd28StoreKitServiceErrorMetadata);
  v4 = [*(a1 + 32) objc_clientDescription];
  [(StoreKitServiceErrorMetadata *)v7 setEnvironment:v4];

  [(StoreKitServiceErrorMetadata *)v7 setStorefrontCountryCode:v3];
  v5 = *(a1 + 48);
  v6 = [*(a1 + 40) toASDErrorWithMetadata:v7];
  (*(v5 + 16))(v5, v6);
}

void sub_100045908(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    [*(*(a1 + 32) + 80) removedEntitlementsForProductIdentifiers:*(a1 + 40)];
  }

  else if (v5)
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB534();
    }

    if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_ERROR))
    {
      sub_1002CCB2C();
    }
  }

  else
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB534();
    }

    if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_ERROR))
    {
      sub_1002CCB94();
    }
  }
}

void sub_100045DE0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 domain];
    if ([v8 isEqualToString:AMSErrorDomain])
    {
      v9 = [v7 code];

      if (v9 == 6)
      {
        if (qword_1003D4160 != -1)
        {
          sub_1002CB534();
        }

        v10 = qword_1003CB4F8;
        if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(a1 + 32);
          *v18 = 138543362;
          *&v18[4] = v11;
          v12 = "[%{public}@]: System engagement task finished presenting offer code.";
LABEL_12:
          v14 = v10;
          v15 = 12;
LABEL_18:
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v12, v18, v15);
          goto LABEL_19;
        }

        goto LABEL_19;
      }
    }

    else
    {
    }

    if (qword_1003D4160 != -1)
    {
      sub_1002CB534();
    }

    v16 = qword_1003CB4F8;
    if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      *v18 = 138543618;
      *&v18[4] = v17;
      *&v18[12] = 2114;
      *&v18[14] = v7;
      v12 = "[%{public}@]: Failed to present offer code with error: %{public}@";
      v14 = v16;
      v15 = 22;
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v10 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    *v18 = 138543362;
    *&v18[4] = v13;
    v12 = "[%{public}@]: Finished presenting offer code.";
    goto LABEL_12;
  }

LABEL_19:
  [*(a1 + 40) invalidateLegacyTransactionCache];
}

void sub_1000462CC(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) _isClientValidForReview:*(a1 + 40)];
  if ((a2 & 1) == 0)
  {
    if (!v6)
    {
      if (qword_1003D4160 != -1)
      {
        sub_1002CB534();
      }

      v22 = qword_1003CB4F8;
      if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_ERROR))
      {
        sub_1002CCDD8(a1 + 32, v22, v23, v24, v25, v26, v27, v28);
      }

      (*(*(a1 + 64) + 16))();
      goto LABEL_23;
    }

    if (qword_1003D4160 != -1)
    {
      sub_1002CB534();
    }

    v7 = qword_1003CB4F8;
    if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_ERROR))
    {
      sub_1002CCE48(a1 + 32, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = +[AMSKeybag sharedInstance];
  v29 = v5;
  [v14 fairplayContextWithError:&v29];
  v15 = v29;

  if (!v15)
  {
    v16 = malloc_type_malloc(*(a1 + 72), 0x4B99FCDDuLL);
    [*(a1 + 48) getBytes:v16 length:*(a1 + 72)];
    sub_1002AB054();
    v18 = v17;
    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    v19 = qword_1003CB4F8;
    if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 32);
      v21 = *(a1 + 56);
      *buf = 138543874;
      v31 = v20;
      v32 = 2114;
      v33 = v21;
      v34 = 2048;
      v35 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Status %ld", buf, 0x20u);
    }

    v5 = 0;
    (*(*(a1 + 64) + 16))();
    sub_1002AA34C(v16);

LABEL_23:
    return;
  }

  if (qword_1003D4160 != -1)
  {
    sub_1002CB50C();
  }

  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_ERROR))
  {
    sub_1002CCEB8();
  }

  (*(*(a1 + 64) + 16))();
}

void sub_100046E8C(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB534();
    }

    if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_ERROR))
    {
      sub_1002CD140();
    }
  }
}

void sub_100047288(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB534();
    }

    if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_ERROR))
    {
      sub_1002CD280();
    }
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = [v3 toASDErrorWithMetadata:0];
    (*(v4 + 16))(v4, v5);
  }
}

void sub_10004755C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB534();
    }

    if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_ERROR))
    {
      sub_1002CD280();
    }
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = [v3 toASDErrorWithMetadata:0];
    (*(v4 + 16))(v4, v5);
  }
}

void sub_100047AAC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB534();
    }

    if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_ERROR))
    {
      sub_1002CD3C0();
    }
  }

  v4 = *(a1 + 32);
  v5 = [v3 toASDErrorWithMetadata:0];
  (*(v4 + 16))(v4, v5);
}

void sub_100047FF4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB534();
    }

    if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_ERROR))
    {
      sub_1002CD428();
    }
  }

  v4 = *(a1 + 32);
  v5 = [v3 toASDErrorWithMetadata:0];
  (*(v4 + 16))(v4, v5);
}

void sub_1000490E4(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CB4F0;
  off_1003CB4F0 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003CB4F8;
  qword_1003CB4F8 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003CB500;
  qword_1003CB500 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003CB508;
  qword_1003CB508 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003CB510;
  qword_1003CB510 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003CB518;
  qword_1003CB518 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003CB520;
  qword_1003CB520 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003CB528;
  qword_1003CB528 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003CB530;
  qword_1003CB530 = v17;

  qword_1003CB538 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_10004934C(id a1)
{
  qword_1003D4168 = objc_alloc_init(NSISO8601DateFormatter);

  _objc_release_x1();
}

void sub_1000493DC(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_1003D4178;
  qword_1003D4178 = v1;

  v3 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
  [qword_1003D4178 setLocale:v3];
  [qword_1003D4178 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
}

void sub_1000494BC(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_1003D4188;
  qword_1003D4188 = v1;

  v3 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
  [qword_1003D4188 setLocale:v3];
  [qword_1003D4188 setDateFormat:@"yyyy-MM-dd"];
}

void sub_10004978C(uint64_t a1)
{
  [*(a1 + 32) _performMigrationIfNeededForStore:*(a1 + 40)];
  v2 = [objc_opt_class() storeDescriptor];
  [*(a1 + 32) _modifyUsingTransactionClass:objc_msgSend(v2 withBlock:{"transactionClass"), *(a1 + 48)}];
}

id sub_1000498C4(uint64_t a1)
{
  [*(a1 + 32) _performMigrationIfNeededForStore:*(a1 + 40)];
  v2 = *(a1 + 32);
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);

  return [v2 _modifyUsingTransactionClass:v3 withBlock:v4];
}

void sub_1000499C8(uint64_t a1)
{
  [*(a1 + 32) _performMigrationIfNeededForStore:*(a1 + 40)];
  v3 = [objc_opt_class() storeDescriptor];
  v2 = [objc_alloc(objc_msgSend(v3 "sessionClass"))];
  [*(a1 + 32) _readUsingSession:v2 withBlock:*(a1 + 48)];
}

id sub_100049D4C(void *a1)
{
  result = [*(a1[4] + 8) tableExists:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void sub_100049DF0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) options];
  v3 = [v2 databasePath];

  if ([*(*(a1 + 32) + 8) tableExists:@"schema_version"])
  {
    if (qword_1003D41E0 != -1)
    {
      sub_1002CD710();
    }

    v4 = qword_1003D41C8;
    if (os_log_type_enabled(qword_1003D41C8, OS_LOG_TYPE_INFO))
    {
      v6 = 138543362;
      v7 = v3;
      v5 = "Database opened at: %{public}@";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, v5, &v6, 0xCu);
    }
  }

  else
  {
    if (qword_1003D41E0 != -1)
    {
      sub_1002CD710();
    }

    v4 = qword_1003D41C8;
    if (os_log_type_enabled(qword_1003D41C8, OS_LOG_TYPE_INFO))
    {
      v6 = 138543362;
      v7 = v3;
      v5 = "Database created at: %{public}@";
      goto LABEL_10;
    }
  }
}

void sub_10004A23C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004A48C(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CB5A0;
  off_1003CB5A0 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D4198;
  qword_1003D4198 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D41A0;
  qword_1003D41A0 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D41A8;
  qword_1003D41A8 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D41B0;
  qword_1003D41B0 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D41B8;
  qword_1003D41B8 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D41C0;
  qword_1003D41C0 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D41C8;
  qword_1003D41C8 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D41D0;
  qword_1003D41D0 = v17;

  qword_1003D41D8 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

id sub_10004A9AC(uint64_t a1)
{
  [*(*(a1 + 32) + 48) insertObject:*(a1 + 40) atIndex:0];
  result = [*(*(a1 + 32) + 48) count];
  if (result >= 0xB)
  {
    v3 = *(*(a1 + 32) + 48);

    return [v3 removeLastObject];
  }

  return result;
}

void sub_10004ACE0(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CB608;
  off_1003CB608 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D41E8;
  qword_1003D41E8 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D41F0;
  qword_1003D41F0 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D41F8;
  qword_1003D41F8 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D4200;
  qword_1003D4200 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D4208;
  qword_1003D4208 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D4210;
  qword_1003D4210 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D4218;
  qword_1003D4218 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D4220;
  qword_1003D4220 = v17;

  qword_1003D4228 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_10004B014(id a1)
{
  qword_1003D4240 = objc_alloc_init(VoucherStore);

  _objc_release_x1();
}

void sub_10004B418(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CB610;
  off_1003CB610 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D4248;
  qword_1003D4248 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D4250;
  qword_1003D4250 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D4258;
  qword_1003D4258 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D4260;
  qword_1003D4260 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D4268;
  qword_1003D4268 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D4270;
  qword_1003D4270 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D4278;
  qword_1003D4278 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D4280;
  qword_1003D4280 = v17;

  qword_1003D4288 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_10004B988(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  v2 = a2;
  [(SQLiteDatabaseStoreMigrator *)v2 executeStatement:@"DROP TABLE IF EXISTS iap_receipts;"];
  [(SQLiteDatabaseStoreMigrator *)v2 executeStatement:@"DROP TABLE IF EXISTS iap_subscription_status;"];
  [(SQLiteDatabaseStoreMigrator *)v2 executeStatement:@"DROP TABLE IF EXISTS iap_receipts_properties;"];
  [(SQLiteDatabaseStoreMigrator *)v2 executeStatement:@"DROP TABLE IF EXISTS iap_pending_transactions;"];
  [(SQLiteDatabaseStoreMigrator *)v2 executeStatement:@"DROP TABLE IF EXISTS iap_pending_transactions_properties;"];
  [(SQLiteDatabaseStoreMigrator *)v2 executeStatement:@"DROP TABLE IF EXISTS app_receipts;"];
  [(SQLiteDatabaseStoreMigrator *)v2 executeStatement:@"CREATE TABLE IF NOT EXISTS iap_receipts_properties (bundle_id TEXT PRIMARY KEY, revision TEXT, token TEXT, last_updated DATETIME)"];
  [(SQLiteDatabaseStoreMigrator *)v2 executeStatement:@"CREATE TABLE IF NOT EXISTS iap_receipts (transaction_id TEXT, bundle_id TEXT, product_id TEXT, product_type INTEGER, transaction_date DATETIME, expiration_date DATETIME, revocation_date DATETIME, is_upgraded BOOL DEFAULT false, is_finished BOOL DEFAULT false, receipt TEXT NOT NULL, PRIMARY KEY (transaction_id, bundle_id) ON CONFLICT REPLACE);"];
  [(SQLiteDatabaseStoreMigrator *)v2 executeStatement:@"CREATE TABLE IF NOT EXISTS iap_subscription_status (bundle_id TEXT, subscription_group_id TEXT, last_updated DATETIME, grace_period_expiration_date DATETIME, renewal_info BLOB, PRIMARY KEY (bundle_id, subscription_group_id) ON CONFLICT REPLACE);"];
  [(SQLiteDatabaseStoreMigrator *)v2 executeStatement:@"CREATE TABLE IF NOT EXISTS iap_pending_transactions (bundle_id TEXT NOT NULL, transaction_id TEXT NOT NULL, original_transaction_id TEXT, product_id TEXT NOT NULL, item_id INTEGER, transaction_date DATETIME, original_transaction_date DATETIME, quantity INTEGER, request_data BLOB, transaction_receipt TEXT, receipt BLOB, assets BLOB, PRIMARY KEY (bundle_id, transaction_id) ON CONFLICT REPLACE);"];
  [(SQLiteDatabaseStoreMigrator *)v2 executeStatement:@"CREATE TABLE IF NOT EXISTS iap_pending_transactions_properties (bundle_id TEXT PRIMARY KEY, token TEXT NOT NULL, last_updated DATETIME)"];
  [(SQLiteDatabaseStoreMigrator *)v2 executeStatement:@"CREATE TABLE IF NOT EXISTS app_receipts (bundle_id TEXT, bundle_version TEXT, receipt TEXT NOT NULL, token TEXT, last_updated DATETIME, PRIMARY KEY (bundle_id) ON CONFLICT REPLACE);"];
}

void sub_10004BA7C(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  v2 = a2;
  [(SQLiteDatabaseStoreMigrator *)v2 executeStatement:@"ALTER TABLE iap_subscription_status ADD COLUMN grace_period_expiration_date DATETIME;"];
  v4 = [(SQLiteDatabaseStoreMigrator *)v2 connection];

  v3 = [(SQLiteEntity *)InAppSubscriptionStatusDatabaseEntity allOnConnection:v4 predicate:0];
  [v3 enumerateObjectsUsingBlock:&stru_100381EB0];
}

void sub_10004BB0C(id a1, SQLiteEntity *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = [(SQLiteEntity *)v4 valueForProperty:@"renewal_info"];
  v6 = sub_100028E90(v5, 0);
  v7 = v6;
  if (v6)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v17 = v5;
      v10 = 0;
      v11 = *v19;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = [*(*(&v18 + 1) + 8 * i) objectForKeyedSubscript:@"signedRenewalInfo"];
          v14 = v13;
          if (v13)
          {
            v15 = sub_100027A0C(v13);
            if (v15 && (!v10 || [v10 compare:v15] == -1))
            {
              v16 = v15;

              v10 = v16;
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
      v5 = v17;
      if (v10)
      {
        [(SQLiteEntity *)v4 setValue:v10 forProperty:@"grace_period_expiration_date"];
      }
    }
  }
}

void sub_10004BCD4(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  v2 = a2;
  [(SQLiteDatabaseStoreMigrator *)v2 executeStatement:@"CREATE TABLE IF NOT EXISTS iap_pending_transactions (bundle_id TEXT NOT NULL, transaction_id TEXT NOT NULL, original_transaction_id TEXT, product_id TEXT NOT NULL, item_id INTEGER, transaction_date DATETIME, original_transaction_date DATETIME, quantity INTEGER, request_data BLOB, transaction_receipt TEXT, receipt BLOB, assets BLOB, PRIMARY KEY (bundle_id, transaction_id) ON CONFLICT REPLACE);"];
  [(SQLiteDatabaseStoreMigrator *)v2 executeStatement:@"CREATE TABLE IF NOT EXISTS iap_pending_transactions_properties (bundle_id TEXT PRIMARY KEY, token TEXT NOT NULL, last_updated DATETIME)"];
}

void sub_10004BD4C(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  v2 = a2;
  [(SQLiteDatabaseStoreMigrator *)v2 executeStatement:@"DROP TABLE IF EXISTS iap_subscription_status;"];
  [(SQLiteDatabaseStoreMigrator *)v2 executeStatement:@"CREATE TABLE IF NOT EXISTS iap_subscription_status (bundle_id TEXT, subscription_group_id TEXT, last_updated DATETIME, grace_period_expiration_date DATETIME, renewal_info BLOB, PRIMARY KEY (bundle_id, subscription_group_id) ON CONFLICT REPLACE);"];
  [(SQLiteDatabaseStoreMigrator *)v2 executeStatement:@"DROP TABLE IF EXISTS iap_subscription_status_properties;"];
}

id sub_10004BF1C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 removeReceiptsForBundleID:*(a1 + 32)])
  {
    v4 = [v3 removeStatusesForBundleID:*(a1 + 32)];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_10004BF70(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CB618;
  off_1003CB618 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D4298;
  qword_1003D4298 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D42A0;
  qword_1003D42A0 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D42A8;
  qword_1003D42A8 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D42B0;
  qword_1003D42B0 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D42B8;
  qword_1003D42B8 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D42C0;
  qword_1003D42C0 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D42C8;
  qword_1003D42C8 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D42D0;
  qword_1003D42D0 = v17;

  qword_1003D42D8 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

id sub_10004C5C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10004C69C;
    v4[3] = &unk_100382000;
    v4[4] = v2;
    return [v2 _runRequestWithAccount:a2 completionHandler:v4];
  }

  else
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10004C68C;
    v5[3] = &unk_100382000;
    v5[4] = v2;
    return [v2 _authenticateAndRunRequestWithCompletionHandler:v5];
  }
}

void sub_10004C69C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 && [*(a1 + 32) _isAccountError:v6])
  {
    v7 = *(a1 + 32);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10004C764;
    v8[3] = &unk_100382000;
    v8[4] = v7;
    [v7 _authenticateAndRunRequestWithCompletionHandler:v8];
  }

  else
  {
    [*(a1 + 32) _processResult:v5 error:v6];
  }
}

void sub_10004CBDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 48) + 16);

    v4();
  }

  else
  {
    v5 = [*(a1 + 32) dataTaskPromiseWithRequest:a2];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10004CCB8;
    v7[3] = &unk_100382028;
    v6 = *(a1 + 48);
    v7[4] = *(a1 + 40);
    v8 = v6;
    [v5 resultWithCompletion:v7];
  }
}

void sub_10004CCB8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v9 = a2;
  v6 = [v9 responseCorrelationId];
  v7 = *(a1 + 32);
  v8 = *(v7 + 98);
  *(v7 + 98) = v6;

  (*(*(a1 + 40) + 16))();
}

void sub_10004CFD0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (qword_1003D4330 != -1)
    {
      sub_1002CDA8C();
    }

    v7 = qword_1003D4300;
    if (os_log_type_enabled(qword_1003D4300, OS_LOG_TYPE_ERROR))
    {
      sub_1002CDB40(a1, v7);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [*(a1 + 32) _runRequestWithAccount:v5 completionHandler:*(a1 + 40)];
  }
}

void sub_10004D200(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CB620;
  off_1003CB620 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D42E8;
  qword_1003D42E8 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D42F0;
  qword_1003D42F0 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D42F8;
  qword_1003D42F8 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D4300;
  qword_1003D4300 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D4308;
  qword_1003D4308 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D4310;
  qword_1003D4310 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D4318;
  qword_1003D4318 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D4320;
  qword_1003D4320 = v17;

  qword_1003D4328 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_10004D3C0(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v4 lock];
  v3[2](v3);

  [v4 unlock];
}

id sub_10004D9D0()
{
  if (qword_1003D4380 != -1)
  {
    sub_1002CDBE0();
  }

  v1 = qword_1003D4360;

  return v1;
}

void sub_10004EED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10004EEFC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10004EF14(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 client];
  v6 = [v5 requestBundleID];
  v7 = [v4 pendingLegacyTransactionsAccountTokenForBundleID:v6];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v14 = [*(a1 + 32) client];
  v10 = [v14 requestBundleID];
  v11 = [v4 pendingLegacyTransactionsLastUpdatedForBundleID:v10];

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

void sub_10004F2CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_10004F2FC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 client];
  v6 = [v5 requestBundleID];
  v7 = [*(a1 + 32) logKey];
  v8 = *(*(a1 + 48) + 8);
  obj = *(v8 + 40);
  v9 = [v4 pendingLegacyTransactionsForBundleID:v6 logKey:v7 error:&obj];

  objc_storeStrong((v8 + 40), obj);
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

void sub_10004F5C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10004F5EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) client];
  v5 = [v4 requestBundleID];
  *(*(*(a1 + 48) + 8) + 24) = [v3 removeCachedLegacyTransactionsForBundleID:v5];

  v6 = [*(a1 + 32) client];
  v7 = [v6 requestBundleID];
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) logKey];
  v10 = [v3 cacheLegacyTransactionsForBundleID:v7 transactions:v8 logKey:v9];
  v11 = *(*(a1 + 48) + 8);
  if (v10)
  {
    v12 = *(v11 + 24);
  }

  else
  {
    v12 = 0;
  }

  *(v11 + 24) = v12 & 1;

  v13 = [*(a1 + 32) client];
  v14 = [v13 requestBundleID];
  v15 = [*(a1 + 32) client];
  v16 = [v15 currentAccountToken];
  v17 = [v3 setLegacyTransactionsLastUpdatedForBundleID:v14 token:v16];
  v18 = *(*(a1 + 48) + 8);
  if (v17)
  {
    v19 = *(v18 + 24);
  }

  else
  {
    v19 = 0;
  }

  *(v18 + 24) = v19 & 1;

  v20 = *(*(*(a1 + 48) + 8) + 24);
  return v20;
}

void sub_10004F9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004FB14(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CB688;
  off_1003CB688 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D4338;
  qword_1003D4338 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D4340;
  qword_1003D4340 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D4348;
  qword_1003D4348 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D4350;
  qword_1003D4350 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D4358;
  qword_1003D4358 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D4360;
  qword_1003D4360 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D4368;
  qword_1003D4368 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D4370;
  qword_1003D4370 = v17;

  qword_1003D4378 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_10004FD04(id a1)
{
  qword_1003D4390 = objc_alloc_init(AssetSession);

  _objc_release_x1();
}

void sub_10004FEDC(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (qword_1003D43E0 != -1)
  {
    sub_1002CE3B0();
  }

  v3 = off_1003CB810;
  if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_DEFAULT))
  {
    v4 = kNSURLSessionLaunchOnDemandNotificationName;
    v5 = v3;
    v6 = 136315394;
    v7 = v4;
    v8 = 2080;
    v9 = xpc_copy_description(v2);
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling %s wake: %s", &v6, 0x16u);
  }
}

void sub_10004FFD0(id a1)
{
  if (qword_1003D43E0 != -1)
  {
    sub_1002CE3B0();
  }

  v1 = off_1003CB810;
  if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Obliterated stale background sessions", v2, 2u);
  }
}

void sub_100050298(id *a1, void *a2)
{
  v3 = a2;
  if (qword_1003D43E0 != -1)
  {
    sub_1002CE3B0();
  }

  v4 = off_1003CB810;
  v5 = [a1[4] signpostId];
  if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v4))
    {
      v7 = [a1[4] logKey];
      v8 = [a1[5] URL];
      *buf = 138543618;
      v17 = v7;
      v18 = 2114;
      v19 = v8;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, v6, "Download", " uuid=%{public, signpost.description:attribute}@  request=%{public, signpost.description:attribute}@ ", buf, 0x16u);
    }
  }

  objc_initWeak(buf, a1[6]);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000504EC;
  v13[3] = &unk_100382188;
  v14 = a1[4];
  objc_copyWeak(&v15, buf);
  [v3 addErrorBlock:v13];
  v9 = a1[6];
  v10 = *(v9 + 2);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000506E0;
  v11[3] = &unk_10037F868;
  v11[4] = v9;
  v12 = a1[4];
  dispatch_async(v10, v11);

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

void sub_1000504C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000504EC(uint64_t a1, void *a2)
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
    if (qword_1003D43E0 != -1)
    {
      sub_1002CE3B0();
    }

    v6 = off_1003CB810;
    if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = [v7 logKey];
      *buf = 138543362;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Request cancelled", buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = WeakRetained;
    if (WeakRetained)
    {
      v11 = WeakRetained[2];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100050690;
      block[3] = &unk_100380818;
      v13 = *(a1 + 32);
      dispatch_async(v11, block);
    }

    goto LABEL_9;
  }

LABEL_10:
}

id sub_100050690(uint64_t a1)
{
  v2 = [*(a1 + 32) task];
  [v2 cancel];

  v3 = *(a1 + 32);

  return [v3 setAction:3];
}

void sub_1000509D8(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if ([*(a1 + 32) state])
  {
    if (qword_1003D43E0 != -1)
    {
      sub_1002CE3B0();
    }

    v6 = off_1003CB810;
    if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = v6;
      v9 = [v7 logKey];
      v10 = *(a1 + 32);
      v25 = 138543618;
      v26 = v9;
      v27 = 2114;
      v28 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Data consumer for task: %{public}@ was stopped at consumer callback", &v25, 0x16u);
    }
  }

  else
  {
    if (v5)
    {
      if (qword_1003D43E0 != -1)
      {
        sub_1002CE3B0();
      }

      v11 = off_1003CB810;
      v12 = [*(a1 + 40) signpostId];
      if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v13 = v12;
        if (os_signpost_enabled(v11))
        {
          v14 = [*(a1 + 40) logKey];
          v15 = [v5 lib_shortDescription];
          v25 = 138543618;
          v26 = v14;
          v27 = 2114;
          v28 = v15;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_EVENT, v13, "ConsumerError", " uuid=%{public, signpost.description:attribute}@  error=%{public, signpost.description:attribute}@ ", &v25, 0x16u);
        }
      }

      if (qword_1003D43E0 != -1)
      {
        sub_1002CE52C();
      }

      v16 = off_1003CB810;
      if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_ERROR))
      {
        v21 = *(a1 + 40);
        v22 = v16;
        v23 = [v21 logKey];
        v24 = *(a1 + 32);
        v25 = 138543874;
        v26 = v23;
        v27 = 2114;
        v28 = v24;
        v29 = 2114;
        v30 = v5;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "[%{public}@] Data consumer for task: %{public}@ failed with error: %{public}@", &v25, 0x20u);
      }

      [*(a1 + 40) setError:v5];
    }

    else
    {
      if (!a3)
      {
        [*(a1 + 40) setBytesReceived:{objc_msgSend(*(a1 + 32), "countOfBytesReceived") + objc_msgSend(*(a1 + 40), "requestOffset")}];
        goto LABEL_25;
      }

      if (qword_1003D43E0 != -1)
      {
        sub_1002CE3B0();
      }

      v17 = off_1003CB810;
      v18 = [*(a1 + 40) signpostId];
      if ((v18 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v19 = v18;
        if (os_signpost_enabled(v17))
        {
          v20 = [*(a1 + 40) logKey];
          v25 = 138543362;
          v26 = v20;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_EVENT, v19, "ConsumerComplete", " uuid=%{public, signpost.description:attribute}@ ", &v25, 0xCu);
        }
      }

      [*(a1 + 40) setAction:2];
    }

    [*(a1 + 32) cancel];
  }

LABEL_25:
  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_100051928(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100051A3C;
  block[3] = &unk_100382250;
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

void sub_100051A3C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (qword_1003D43E0 != -1)
    {
      sub_1002CE3B0();
    }

    v2 = off_1003CB810;
    v3 = [*(a1 + 56) signpostId];
    if ((v3 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v4 = v3;
      if (os_signpost_enabled(v2))
      {
        v5 = [*(a1 + 56) logKey];
        v6 = [*(a1 + 32) lib_shortDescription];
        *buf = 138543618;
        v21 = v5;
        v22 = 2114;
        v23 = v6;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_EVENT, v4, "ConsumerError", " uuid=%{public, signpost.description:attribute}@  error=%{public, signpost.description:attribute}@ ", buf, 0x16u);
      }
    }

    if (qword_1003D43E0 != -1)
    {
      sub_1002CE52C();
    }

    v7 = off_1003CB810;
    if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 56);
      v11 = v7;
      v12 = [v10 logKey];
      v13 = *(a1 + 64);
      v14 = *(a1 + 32);
      *buf = 138543874;
      v21 = v12;
      v22 = 2114;
      v23 = v13;
      v24 = 2114;
      v25 = v14;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%{public}@] Data consumer for task: %{public}@ failed to reset with error: %{public}@", buf, 0x20u);
    }

    [*(a1 + 56) setError:*(a1 + 32)];
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100051CE0;
    v15[3] = &unk_100382228;
    v8 = *(a1 + 40);
    v9 = *(a1 + 56);
    v15[4] = *(a1 + 48);
    v16 = v9;
    v17 = *(a1 + 64);
    v19 = *(a1 + 72);
    v18 = *(a1 + 32);
    [v8 prepareWithCompletionHandler:v15];
  }
}

void sub_100051CE0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 16);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100051DDC;
  v8[3] = &unk_100382200;
  v14 = a2;
  v9 = *(a1 + 40);
  v10 = v5;
  v11 = *(a1 + 48);
  v13 = *(a1 + 64);
  v12 = *(a1 + 56);
  v7 = v5;
  dispatch_async(v6, v8);
}

uint64_t sub_100051DDC(uint64_t a1)
{
  if (*(a1 + 72))
  {
    if (qword_1003D43E0 != -1)
    {
      sub_1002CE3B0();
    }

    v2 = off_1003CB810;
    v3 = [*(a1 + 32) signpostId];
    if ((v3 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v4 = v3;
      if (os_signpost_enabled(v2))
      {
        v5 = [*(a1 + 32) logKey];
        v6 = [*(a1 + 40) lib_shortDescription];
        v22 = 138543618;
        v23 = v5;
        v24 = 2114;
        v25 = v6;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_EVENT, v4, "ConsumerError", " uuid=%{public, signpost.description:attribute}@  error=%{public, signpost.description:attribute}@ ", &v22, 0x16u);
      }
    }

    if (qword_1003D43E0 != -1)
    {
      sub_1002CE52C();
    }

    v7 = off_1003CB810;
    if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 32);
      v18 = v7;
      v19 = [v17 logKey];
      v20 = *(a1 + 48);
      v21 = *(a1 + 72);
      v22 = 138543874;
      v23 = v19;
      v24 = 2114;
      v25 = v20;
      v26 = 2048;
      v27 = v21;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "[%{public}@] Data consumer for task: %{public}@ failed to prepare with unexpected resumption offset: %llu", &v22, 0x20u);
    }

    v8 = ASDErrorWithDescription();
    [*(a1 + 32) setError:v8];

    return (*(*(a1 + 64) + 16))();
  }

  if (*(a1 + 40))
  {
    if (qword_1003D43E0 != -1)
    {
      sub_1002CE3B0();
    }

    v9 = off_1003CB810;
    v10 = [*(a1 + 32) signpostId];
    if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v11 = v10;
      if (os_signpost_enabled(v9))
      {
        v12 = [*(a1 + 32) logKey];
        v13 = [*(a1 + 40) lib_shortDescription];
        v22 = 138543618;
        v23 = v12;
        v24 = 2114;
        v25 = v13;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_EVENT, v11, "ConsumerError", " uuid=%{public, signpost.description:attribute}@  error=%{public, signpost.description:attribute}@ ", &v22, 0x16u);
      }
    }

    if (qword_1003D43E0 != -1)
    {
      sub_1002CE52C();
    }

    v14 = off_1003CB810;
    if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_ERROR))
    {
      sub_1002CE7CC(a1 + 32, v14);
    }

    [*(a1 + 32) setError:*(a1 + 40)];
    return (*(*(a1 + 64) + 16))();
  }

  v16 = *(*(a1 + 64) + 16);

  return v16();
}

void sub_100052168(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10005224C;
  v6[3] = &unk_100382278;
  v7 = v3;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t sub_10005224C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (qword_1003D43E0 != -1)
    {
      sub_1002CE3B0();
    }

    v2 = off_1003CB810;
    v3 = [*(a1 + 40) signpostId];
    if ((v3 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v4 = v3;
      if (os_signpost_enabled(v2))
      {
        v5 = [*(a1 + 40) logKey];
        v6 = [*(a1 + 32) lib_shortDescription];
        v14 = 138543618;
        v15 = v5;
        v16 = 2114;
        v17 = v6;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_EVENT, v4, "ConsumerError", " uuid=%{public, signpost.description:attribute}@  error=%{public, signpost.description:attribute}@ ", &v14, 0x16u);
      }
    }

    if (qword_1003D43E0 != -1)
    {
      sub_1002CE52C();
    }

    v7 = off_1003CB810;
    if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 40);
      v10 = v7;
      v11 = [v9 logKey];
      v12 = *(a1 + 48);
      v13 = *(a1 + 32);
      v14 = 138543874;
      v15 = v11;
      v16 = 2114;
      v17 = v12;
      v18 = 2114;
      v19 = v13;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%{public}@] Data consumer for task: %{public}@ failed to reset with error: %{public}@", &v14, 0x20u);
    }

    [*(a1 + 40) setError:*(a1 + 32)];
  }

  else
  {
    [*(a1 + 40) setAction:1];
  }

  return (*(*(a1 + 56) + 16))();
}

void sub_100052BF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100052CB8;
  block[3] = &unk_1003822A0;
  v9 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

id sub_100052CB8(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (qword_1003D43E0 != -1)
    {
      sub_1002CE3B0();
    }

    v2 = off_1003CB810;
    if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_ERROR))
    {
      sub_1002CEA14(a1, v2);
    }

    v3 = [*(a1 + 40) error];

    if (!v3)
    {
      [*(a1 + 40) setError:*(a1 + 32)];
    }
  }

  return [*(a1 + 48) _finishPromiseUsingTaskInfo:*(a1 + 40)];
}

void sub_100052D58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100052E18;
  block[3] = &unk_1003822A0;
  v9 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

id sub_100052E18(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (qword_1003D43E0 != -1)
    {
      sub_1002CE3B0();
    }

    v2 = off_1003CB810;
    if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_ERROR))
    {
      sub_1002CEAB0(a1, v2);
    }

    [*(a1 + 40) setError:*(a1 + 32)];
    return [*(a1 + 48) _finishPromiseUsingTaskInfo:*(a1 + 40)];
  }

  else
  {
    v4 = [*(a1 + 40) action];
    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    if (v4 == 1)
    {

      return [v5 _retryTaskUsingTaskInfo:v6];
    }

    else
    {

      return [v5 _finishPromiseUsingTaskInfo:v6];
    }
  }
}

void sub_100053774(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && ([v5 selectedActionIdentifier], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @"AuthenticationChallengeDialogActionOkay"), v7, (v8 & 1) != 0))
  {
    v9 = [v5 textfieldValues];
    if ([v9 count] == 1)
    {
      v10 = [v9 objectAtIndexedSubscript:0];
      v11 = [*(a1 + 40) user];
      v12 = v11;
      v13 = &stru_10039AA00;
      if (v11)
      {
        v13 = v11;
      }

      v14 = v13;

      goto LABEL_14;
    }

    if ([v9 count] >= 2)
    {
      v10 = [v9 objectAtIndexedSubscript:1];
      v14 = [v9 objectAtIndexedSubscript:0];
LABEL_14:
      if (qword_1003D43E0 != -1)
      {
        sub_1002CE3B0();
      }

      v19 = off_1003CB810;
      if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 32);
        v21 = v19;
        v22 = [v20 logKey];
        v25 = 138543362;
        v26 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] Completed user authentication challenge", &v25, 0xCu);
      }

      v23 = [NSURLCredential credentialWithUser:v14 password:v10 persistence:1];
      (*(*(a1 + 48) + 16))();

      goto LABEL_24;
    }

    if (qword_1003D43E0 != -1)
    {
      sub_1002CE3B0();
    }

    v24 = off_1003CB810;
    if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_FAULT))
    {
      sub_1002CEC54(a1, v24);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (qword_1003D43E0 != -1)
    {
      sub_1002CE3B0();
    }

    v15 = off_1003CB810;
    if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v17 = v15;
      v18 = [v16 logKey];
      v25 = 138543362;
      v26 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Canceling user authentication challenge", &v25, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

LABEL_24:
}

void sub_100054674(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if ([v5 BOOLValue])
    {
      if (qword_1003D43E0 != -1)
      {
        sub_1002CE3B0();
      }

      v7 = off_1003CB810;
      if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v9 = v7;
        v10 = [v8 logKey];
        *buf = 138412290;
        v19 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%@] Recording LoadURL Metrics", buf, 0xCu);
      }

      v11 = [AMSMetricsLoadURLEvent loadURLEventPromiseWithContext:*(a1 + 40)];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000548CC;
      v16[3] = &unk_1003822F0;
      v17 = *(a1 + 32);
      [v11 resultWithCompletion:v16];

      goto LABEL_16;
    }

    if (qword_1003D43E0 != -1)
    {
      sub_1002CE3B0();
    }

    v13 = off_1003CB810;
    if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 32);
      v11 = v13;
      v15 = [v14 logKey];
      *buf = 138412290;
      v19 = v15;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%@] Metrics should not be collected", buf, 0xCu);

LABEL_16:
    }
  }

  else
  {
    if (qword_1003D43E0 != -1)
    {
      sub_1002CE3B0();
    }

    v12 = off_1003CB810;
    if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_ERROR))
    {
      sub_1002CEDDC(a1, v12);
    }
  }
}

void sub_1000548CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (qword_1003D43E0 != -1)
    {
      sub_1002CE3B0();
    }

    v9 = off_1003CB810;
    if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_ERROR))
    {
      sub_1002CEE80(a1, v9);
    }
  }

  else
  {
    v8 = [AMSMetrics lib_sharedInstanceWithContainerId:@"com.apple.storekitd"];
    [v8 enqueueEvent:v5];
  }
}

void sub_100054BD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100054C94;
  block[3] = &unk_1003822A0;
  v9 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

id sub_100054C94(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (qword_1003D43E0 != -1)
    {
      sub_1002CE3B0();
    }

    v2 = off_1003CB810;
    if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_ERROR))
    {
      sub_1002CEF24(a1, v2);
    }

    [*(a1 + 40) setError:*(a1 + 32)];
    return [*(a1 + 48) _finishPromiseUsingTaskInfo:*(a1 + 40)];
  }

  else
  {
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);

    return [v4 _prepareDataConsumerUsingTaskInfo:v5];
  }
}

void sub_100055000(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 16);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000550C8;
  v10[3] = &unk_100380FB0;
  v11 = v5;
  v14 = a2;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v12 = v7;
  v13 = v8;
  v9 = v5;
  dispatch_async(v6, v10);
}

id sub_1000550C8(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    if (qword_1003D43E0 != -1)
    {
      sub_1002CE3B0();
    }

    v3 = off_1003CB810;
    v4 = [*(a1 + 40) signpostId];
    if ((v4 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v5 = v4;
      if (os_signpost_enabled(v3))
      {
        v6 = [*(a1 + 40) logKey];
        v7 = [*v2 lib_shortDescription];
        v16 = 138543618;
        v17 = v6;
        v18 = 2114;
        v19 = v7;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_EVENT, v5, "ConsumerError", " uuid=%{public, signpost.description:attribute}@  error=%{public, signpost.description:attribute}@ ", &v16, 0x16u);
      }
    }

    if (qword_1003D43E0 != -1)
    {
      sub_1002CE52C();
    }

    v8 = off_1003CB810;
    if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_ERROR))
    {
      sub_1002CF0E0((a1 + 40), v8);
    }

    [*(a1 + 40) setError:*(a1 + 32)];
    return [*(a1 + 48) _finishPromiseUsingTaskInfo:*(a1 + 40)];
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    goto LABEL_15;
  }

  v11 = [*(a1 + 40) properties];
  v12 = [v11 rangeOffset];

  if (v12)
  {
    v10 = *(a1 + 56);
LABEL_15:
    v13 = [*(a1 + 40) properties];
    [*(a1 + 40) setRequestOffset:{objc_msgSend(v13, "rangeOffset") + v10}];
  }

  v15 = *(a1 + 40);
  v14 = *(a1 + 48);

  return [v14 _prepareRequestUsingTaskInfo:v15];
}

void sub_1000554A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 16));
  if (qword_1003D43E0 != -1)
  {
    sub_1002CE3B0();
  }

  v8 = off_1003CB810;
  if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 40);
    v14 = v8;
    v15 = [v13 logKey];
    v16 = [*(a1 + 40) request];
    v17 = [v16 URL];
    v21 = 138544386;
    v22 = v15;
    v23 = 2114;
    v24 = v17;
    v25 = 2114;
    v26 = a2;
    v27 = 2114;
    v28 = a3;
    v29 = 2114;
    v30 = a4;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "[%{public}@] Lookup complete for: %{public}@ found replacement: %{public}@ with advice: %{public}@ error: %{public}@", &v21, 0x34u);

    if (a2)
    {
      goto LABEL_5;
    }
  }

  else if (a2)
  {
LABEL_5:
    v9 = [*(a1 + 40) request];
    v10 = [v9 mutableCopy];

    [v10 setURL:a2];
    [v10 _setRequiresShortConnectionTimeout:1];
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    goto LABEL_13;
  }

  if (a4)
  {
    if (qword_1003D43E0 != -1)
    {
      sub_1002CE52C();
    }

    v18 = off_1003CB810;
    if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_ERROR))
    {
      sub_1002CF184(a1, v18);
    }
  }

  [*(a1 + 40) setIgnoreAssetCache:1];
  v20 = *(a1 + 32);
  v19 = *(a1 + 40);
  v10 = [v19 request];
  v11 = v20;
  v12 = v19;
LABEL_13:
  [v11 _startTaskUsingTaskInfo:v12 withRequest:v10];
}

id sub_100056208(id *a1)
{
  if (qword_1003D43E0 != -1)
  {
    sub_1002CE3B0();
  }

  v2 = off_1003CB810;
  v3 = [a1[4] signpostId];
  if ((v3 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v3;
    if (os_signpost_enabled(v2))
    {
      v5 = [a1[4] logKey];
      v6 = [a1[5] URL];
      v13 = 138543618;
      v14 = v5;
      v15 = 2114;
      v16 = v6;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_EVENT, v4, "TaskStarted", " uuid=%{public, signpost.description:attribute}@  request=%{public, signpost.description:attribute}@ ", &v13, 0x16u);
    }
  }

  if (qword_1003D43E0 != -1)
  {
    sub_1002CE52C();
  }

  v7 = off_1003CB810;
  if (os_log_type_enabled(off_1003CB810, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[4];
    v9 = v7;
    v10 = [v8 logKey];
    v11 = a1[6];
    v13 = 138543618;
    v14 = v10;
    v15 = 2114;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Started task: %{public}@", &v13, 0x16u);
  }

  return [a1[6] resume];
}

void sub_10005642C(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CB810;
  off_1003CB810 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D4398;
  qword_1003D4398 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D43A0;
  qword_1003D43A0 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D43A8;
  qword_1003D43A8 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D43B0;
  qword_1003D43B0 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D43B8;
  qword_1003D43B8 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D43C0;
  qword_1003D43C0 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D43C8;
  qword_1003D43C8 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D43D0;
  qword_1003D43D0 = v17;

  qword_1003D43D8 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_1000565B4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id sub_1000565E0(uint64_t a1, void *a2)
{

  return a2;
}

void sub_1000568A8(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  v2 = a2;
  [(SQLiteDatabaseStoreMigrator *)v2 executeStatement:@"CREATE TABLE IF NOT EXISTS iap_pending_transactions (bundle_id TEXT NOT NULL, transaction_id TEXT NOT NULL, original_transaction_id TEXT, product_id TEXT NOT NULL, item_id INTEGER, transaction_date DATETIME, original_transaction_date DATETIME, quantity INTEGER, request_data BLOB, transaction_receipt TEXT, receipt BLOB, assets BLOB, PRIMARY KEY (bundle_id, transaction_id) ON CONFLICT REPLACE);"];
  [(SQLiteDatabaseStoreMigrator *)v2 executeStatement:@"CREATE TABLE IF NOT EXISTS iap_pending_transactions_properties (bundle_id TEXT PRIMARY KEY, token TEXT NOT NULL, last_updated DATETIME)"];
}

void sub_1000568FC(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CB818;
  off_1003CB818 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D43E8;
  qword_1003D43E8 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D43F0;
  qword_1003D43F0 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D43F8;
  qword_1003D43F8 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D4400;
  qword_1003D4400 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D4408;
  qword_1003D4408 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D4410;
  qword_1003D4410 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D4418;
  qword_1003D4418 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D4420;
  qword_1003D4420 = v17;

  qword_1003D4428 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_100056AB0(id a1)
{
  qword_1003D4438 = [[OSTransactionStore alloc] initWithHoldTime:5.0];

  _objc_release_x1();
}

_DWORD *sub_100056C40(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [*(*(a1 + 32) + 40) keyEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [v2 addObject:*(*(&v18 + 1) + 8 * i)];
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v5);
  }

  if ([v2 count])
  {
    v22 = @"transactions";
    v23 = v2;
    v8 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v17 = 0;
    v9 = [NSPropertyListSerialization dataWithPropertyList:v8 format:200 options:0 error:&v17];
    v10 = v17;
    if (v9)
    {
      v11 = [v9 length];
      v12 = malloc_type_calloc(1uLL, v11 + 200, 0x1000040BEF03554uLL);
      if (v12)
      {
        v13 = v12;
        *v12 = 1;
        v12[1] = v11;
        if ([@"Transactions" UTF8String])
        {
          __strlcpy_chk();
        }

        memcpy(v13 + 50, [v9 bytes], v11);
        goto LABEL_24;
      }

      if (qword_1003D4490 != -1)
      {
        sub_1002CF618();
      }

      v15 = qword_1003D4448;
      if (os_log_type_enabled(qword_1003D4448, OS_LOG_TYPE_ERROR))
      {
        sub_1002CF640(v15);
      }
    }

    else
    {
      if (qword_1003D4490 != -1)
      {
        sub_1002CF618();
      }

      v14 = qword_1003D4448;
      if (os_log_type_enabled(qword_1003D4448, OS_LOG_TYPE_ERROR))
      {
        sub_1002CF684(v10, v14);
      }
    }

    v13 = 0;
LABEL_24:

    goto LABEL_25;
  }

  v13 = 0;
LABEL_25:

  return v13;
}

uint64_t sub_10005701C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100057034(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 32) copy];

  return _objc_release_x1();
}

id sub_10005712C(uint64_t a1)
{
  result = [*(*(a1 + 32) + 32) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1000573CC(uint64_t a1)
{
  [*(*(a1 + 32) + 32) addObject:*(a1 + 40)];
  if ([*(*(a1 + 32) + 32) countForObject:*(a1 + 40)] == 1)
  {
    if (qword_1003D4490 != -1)
    {
      sub_1002CF6FC();
    }

    v2 = qword_1003D4448;
    if (os_log_type_enabled(qword_1003D4448, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 40);
      v7 = 138543362;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[Transaction] Started transaction: %{public}@", &v7, 0xCu);
    }

    [*(a1 + 40) UTF8String];
    v4 = os_transaction_create();
    [*(*(a1 + 32) + 40) setObject:v4 forKeyedSubscript:*(a1 + 40)];
  }

  else
  {
    if (qword_1003D4490 != -1)
    {
      sub_1002CF6FC();
    }

    v5 = qword_1003D4448;
    if (os_log_type_enabled(qword_1003D4448, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 40);
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[Transaction] Joined transaction: %{public}@", &v7, 0xCu);
    }
  }
}

void sub_1000575EC(uint64_t a1)
{
  [*(*(a1 + 32) + 32) removeObject:*(a1 + 40)];
  if ([*(*(a1 + 32) + 32) countForObject:*(a1 + 40)])
  {
    if (qword_1003D4490 != -1)
    {
      sub_1002CF6FC();
    }

    v2 = qword_1003D4448;
    if (os_log_type_enabled(qword_1003D4448, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 40);
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[Transaction] Left transaction: %{public}@", &v6, 0xCu);
    }
  }

  else
  {
    if (qword_1003D4490 != -1)
    {
      sub_1002CF6FC();
    }

    v4 = qword_1003D4448;
    if (os_log_type_enabled(qword_1003D4448, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 40);
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[Transaction] Ended transaction: %{public}@", &v6, 0xCu);
    }

    [*(*(a1 + 32) + 40) setObject:0 forKeyedSubscript:*(a1 + 40)];
  }
}

void sub_100057784(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CB820;
  off_1003CB820 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D4448;
  qword_1003D4448 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D4450;
  qword_1003D4450 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D4458;
  qword_1003D4458 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D4460;
  qword_1003D4460 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D4468;
  qword_1003D4468 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D4470;
  qword_1003D4470 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D4478;
  qword_1003D4478 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D4480;
  qword_1003D4480 = v17;

  qword_1003D4488 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_100057AC0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = dispatch_get_global_queue(17, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100057BFC;
    v7[3] = &unk_10037F868;
    v7[4] = *(a1 + 32);
    v8 = v3;
    dispatch_async(v4, v7);
  }

  else
  {
    if (qword_1003D44E0 != -1)
    {
      sub_1002CF710();
    }

    v5 = qword_1003D44C0;
    if (os_log_type_enabled(qword_1003D44C0, OS_LOG_TYPE_ERROR))
    {
      sub_1002CF724(a1, v5);
    }

    v6 = ASDErrorWithTitleAndMessage();
    [*(a1 + 32) completeWithError:v6];
  }
}

void sub_100058148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);

    [v4 processResult:0 error:a3];
  }

  else
  {
    v5 = [*(a1 + 40) dataTaskPromiseWithRequest:a2];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10005820C;
    v6[3] = &unk_100382000;
    v6[4] = *(a1 + 32);
    [v5 resultWithCompletion:v6];
  }
}

void sub_10005820C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v6)
  {
    [SecureClock synchronizeWithURLResult:v6];
  }

  [*(a1 + 32) processResult:v6 error:v5];
}

void sub_100059194(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CB828;
  off_1003CB828 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D4498;
  qword_1003D4498 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D44A0;
  qword_1003D44A0 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D44A8;
  qword_1003D44A8 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D44B0;
  qword_1003D44B0 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D44B8;
  qword_1003D44B8 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D44C0;
  qword_1003D44C0 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D44C8;
  qword_1003D44C8 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D44D0;
  qword_1003D44D0 = v17;

  qword_1003D44D8 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_100059BE4(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 bindNumber:v3 atPosition:1];
  [v4 bindString:a1[5] atPosition:2];
  [v4 bindNumber:a1[6] atPosition:3];
}

void sub_100059E94(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNumber:v3 atPosition:1];
  [v4 bindString:*(a1 + 40) atPosition:2];
}

void sub_10005A6E4(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1003D44F0;
  qword_1003D44F0 = v1;

  if (qword_1003D44F8 != -1)
  {
    sub_1002CFA44();
  }

  v3 = qword_1003CB8F8;
  if (os_log_type_enabled(qword_1003CB8F8, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Registering StoreKit IAP push consumer", v6, 2u);
  }

  v4 = +[PushService sharedInstance];
  [v4 registerConsumer:qword_1003D44F0 forActionType:37];

  v5 = +[PushService sharedInstance];
  [v5 registerConsumer:qword_1003D44F0 forActionType:36];
}

id sub_10005A7C8(unsigned int a1)
{
  if (qword_1003D44F8 != -1)
  {
    sub_1002CFA44();
  }

  v2 = *(&off_1003CB8F0 + a1);

  return v2;
}

void sub_10005B164(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    if (qword_1003D44F8 != -1)
    {
      sub_1002CFA44();
    }

    if (os_log_type_enabled(qword_1003CB910, OS_LOG_TYPE_ERROR))
    {
      sub_1002CFE00();
    }
  }
}

void sub_10005B1E0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (qword_1003D44F8 != -1)
    {
      sub_1002CFA44();
    }

    if (os_log_type_enabled(qword_1003CB910, OS_LOG_TYPE_ERROR))
    {
      sub_1002CFE78();
    }
  }

  else
  {
    if (qword_1003D44F8 != -1)
    {
      sub_1002CFA44();
    }

    v4 = qword_1003CB910;
    if (os_log_type_enabled(qword_1003CB910, OS_LOG_TYPE_DEBUG))
    {
      sub_1002CFEF0(a1, v4);
    }
  }
}

void sub_10005B770(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if ([*(a1 + 32) actionType] == 37)
    {
      if (qword_1003D44F8 != -1)
      {
        sub_1002CFA44();
      }

      if (os_log_type_enabled(qword_1003CB918, OS_LOG_TYPE_ERROR))
      {
        sub_1002CFFEC();
      }
    }

    else if ([*(a1 + 32) actionType] == 36)
    {
      if (qword_1003D44F8 != -1)
      {
        sub_1002CFA44();
      }

      if (os_log_type_enabled(qword_1003CB918, OS_LOG_TYPE_ERROR))
      {
        sub_1002CFF6C();
      }
    }
  }
}

void sub_10005BAB0(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CB8F0;
  off_1003CB8F0 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003CB8F8;
  qword_1003CB8F8 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003CB900;
  qword_1003CB900 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003CB908;
  qword_1003CB908 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003CB910;
  qword_1003CB910 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003CB918;
  qword_1003CB918 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003CB920;
  qword_1003CB920 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003CB928;
  qword_1003CB928 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003CB930;
  qword_1003CB930 = v17;

  qword_1003CB938 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

id sub_10005BC14(id a1)
{

  return a1;
}

void sub_10005E240(uint64_t a1)
{
  v2 = [qword_1003D4500 objectForKey:*(a1 + 32)];
  if (!v2)
  {
    v2 = objc_opt_new();
  }

  v3 = v2;
  [v2 addObject:*(a1 + 40)];
  [qword_1003D4500 setObject:v3 forKey:*(a1 + 32)];
}

void sub_10005E3D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10005E3E8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10005E400(uint64_t a1)
{
  v2 = [qword_1003D4500 objectForKeyedSubscript:*(a1 + 32)];
  v4 = v2;
  if (!v2)
  {
    v2 = +[NSSet set];
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
  v3 = v4;
  if (!v4)
  {

    v3 = 0;
  }
}

void sub_10005E6A4(uint64_t a1)
{
  v2 = [qword_1003D4500 objectForKeyedSubscript:*(*(a1 + 32) + 8)];
  [v2 removeObject:*(a1 + 32)];
}

void sub_10005E704(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3[5] == 1 && v3[4])
  {
    v4 = v3;
    [*(a1 + 32) minusSet:?];
    v3 = v4;
  }
}

void sub_10005E830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10005E848(uint64_t a1, uint64_t a2)
{
  result = [*(a2 + 32) containsObject:*(a1 + 32)];
  if (result)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return result;
}

void sub_10005EA78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005EAA4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3[4] containsObject:*(a1 + 32)])
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
  }
}

void sub_10005ECC8(uint64_t a1)
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [qword_1003D4500 objectEnumerator];
  v2 = [obj countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v19;
    do
    {
      v5 = 0;
      do
      {
        if (*v19 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v18 + 1) + 8 * v5);
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v14 objects:v22 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v15;
          do
          {
            v11 = 0;
            do
            {
              if (*v15 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v14 + 1) + 8 * v11);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [*(a1 + 32) addObject:v12];
              }

              v11 = v11 + 1;
            }

            while (v9 != v11);
            v9 = [v7 countByEnumeratingWithState:&v14 objects:v22 count:16];
          }

          while (v9);
        }

        v5 = v5 + 1;
      }

      while (v5 != v3);
      v3 = [obj countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v3);
  }
}

void sub_10005EF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005EFA8(uint64_t a1)
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = qword_1003D4500;
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [qword_1003D4500 objectForKeyedSubscript:*(*(&v18 + 1) + 8 * i)];
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v15;
          while (2)
          {
            for (j = 0; j != v10; j = j + 1)
            {
              if (*v15 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v14 + 1) + 8 * j);
              if ([v13[3] isEqualToString:*(a1 + 32)])
              {
                objc_storeStrong((*(*(a1 + 40) + 8) + 40), v13);
                goto LABEL_16;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
      }

      v4 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }
}

void sub_10005F39C(uint64_t a1)
{
  v2 = [qword_1003D4500 objectForKeyedSubscript:*(*(a1 + 32) + 8)];
  if (v2)
  {
    v3 = v2;
    [v2 removeObject:*(a1 + 32)];
    v2 = v3;
  }
}

void sub_10005F594(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CB9A0;
  off_1003CB9A0 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D4510;
  qword_1003D4510 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D4518;
  qword_1003D4518 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D4520;
  qword_1003D4520 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D4528;
  qword_1003D4528 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D4530;
  qword_1003D4530 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D4538;
  qword_1003D4538 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D4540;
  qword_1003D4540 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D4548;
  qword_1003D4548 = v17;

  qword_1003D4550 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_10005F7F8(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CB9A8;
  off_1003CB9A8 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D4560;
  qword_1003D4560 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D4568;
  qword_1003D4568 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D4570;
  qword_1003D4570 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D4578;
  qword_1003D4578 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D4580;
  qword_1003D4580 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D4588;
  qword_1003D4588 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D4590;
  qword_1003D4590 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D4598;
  qword_1003D4598 = v17;

  qword_1003D45A0 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_10005FB10(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CB9B0;
  off_1003CB9B0 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D45B0;
  qword_1003D45B0 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D45B8;
  qword_1003D45B8 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D45C0;
  qword_1003D45C0 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D45C8;
  qword_1003D45C8 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D45D0;
  qword_1003D45D0 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D45D8;
  qword_1003D45D8 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D45E0;
  qword_1003D45E0 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D45E8;
  qword_1003D45E8 = v17;

  qword_1003D45F0 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_1000601E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);

    [v4 _processError:?];
  }

  else
  {
    v5 = [*(a1 + 40) dataTaskPromiseWithRequest:a2];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000602C4;
    v6[3] = &unk_100382688;
    v6[4] = *(a1 + 32);
    v7 = 0;
    v8 = *(a1 + 48);
    [v5 resultWithCompletion:v6];
  }
}

void sub_1000602C4(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = [a2 responseCorrelationId];
  v6 = *(a1 + 32);
  v7 = *(v6 + 66);
  *(v6 + 66) = v5;

  if (*(a1 + 40))
  {
    [*(a1 + 32) _processError:v10];
  }

  else
  {
    v8 = *(a1 + 48);
    v9 = [*(a1 + 32) transactionID];
    [v8 setFinishedForTransactionID:v9];

    [*(a1 + 32) completeWithSuccess];
  }
}

void sub_1000604AC(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CB9B8;
  off_1003CB9B8 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D4600;
  qword_1003D4600 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D4608;
  qword_1003D4608 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D4610;
  qword_1003D4610 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D4618;
  qword_1003D4618 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D4620;
  qword_1003D4620 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D4628;
  qword_1003D4628 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D4630;
  qword_1003D4630 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D4638;
  qword_1003D4638 = v17;

  qword_1003D4640 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_100061124(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = *(a1 + 32);
  if (!v5 || [v5 containsObject:v7])
  {
    v6 = sub_1000611A8(*(a1 + 48), a3);
    [*(a1 + 40) setObject:v6 forKeyedSubscript:v7];
  }
}

id sub_1000611A8(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 _declaredTypeForColumnIndex:a2];
  v5 = 0;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v6 = [v3 UUIDForColumnIndex:a2];
      goto LABEL_17;
    }

    if (v4 == 4)
    {
      v6 = [v3 URLForColumnIndex:a2];
      goto LABEL_17;
    }

    if (v4 != 5)
    {
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  if (v4)
  {
    if (v4 == 1)
    {
      v6 = [v3 dateForColumnIndex:a2];
    }

    else
    {
      if (v4 != 2)
      {
        goto LABEL_18;
      }

      v6 = [v3 JSONObjectForColumnIndex:a2];
    }

    goto LABEL_17;
  }

  v7 = [v3 _columnTypeForColumnIndex:a2];
  if (v7 <= 2)
  {
    if (v7 == 1)
    {
      v6 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v3 int64ForColumnIndex:a2]);
      goto LABEL_17;
    }

    if (v7 == 2)
    {
      [v3 doubleForColumnIndex:a2];
      v6 = [NSNumber numberWithDouble:?];
      goto LABEL_17;
    }

LABEL_23:
    v6 = [v3 dataForColumnIndex:a2];
    goto LABEL_17;
  }

  if (v7 != 5)
  {
    if (v7 != 3)
    {
      goto LABEL_23;
    }

LABEL_9:
    v6 = [v3 stringForColumnIndex:a2];
LABEL_17:
    v5 = v6;
    goto LABEL_18;
  }

  v5 = 0;
LABEL_18:

  return v5;
}

void sub_1000613D8(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CB9C0;
  off_1003CB9C0 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D4650;
  qword_1003D4650 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D4658;
  qword_1003D4658 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D4660;
  qword_1003D4660 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D4668;
  qword_1003D4668 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D4670;
  qword_1003D4670 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D4678;
  qword_1003D4678 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D4680;
  qword_1003D4680 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D4688;
  qword_1003D4688 = v17;

  qword_1003D4690 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_10006171C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithLongLong:a2];
  [v2 addObject:v3];
}

void sub_10006197C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100061C10(uint64_t a1, void *a2)
{
  v5 = 1;
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 predicate];
  [v4 applyBinding:v3 atIndex:&v5];
}

void sub_100061D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100061D34(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) entityClass];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100061DD0;
  v4[3] = &unk_100382778;
  v6 = v2;
  v5 = *(a1 + 32);
  [v5 enumeratePersistentIDsUsingBlock:v4];
  return *(*(*(a1 + 40) + 8) + 24);
}

void sub_100061DD0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [objc_alloc(*(a1 + 48)) initWithPersistentID:a2 onConnection:*(*(a1 + 32) + 8)];
  *(*(*(a1 + 40) + 8) + 24) = [v6 deleteFromDatabase];
  *a4 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
}

void sub_10006202C(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(*(a1 + 40));
  [v4 setDatabaseID:a2];
  (*(*(a1 + 32) + 16))();
}

void sub_1000620AC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = objc_alloc_init(v5);
  [v7 setDatabaseID:a2];
  [v7 setValuesWithDictionary:v6];

  (*(*(a1 + 32) + 16))();
}

void sub_1000622E8(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14 = 1;
  [a1[4] applyBinding:v5 atIndex:&v14];
  v7 = [a1[5] count];
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006240C;
  v8[3] = &unk_100382818;
  v12 = v7;
  v9 = a1[5];
  v10 = a1[6];
  v11 = v13;
  [v5 enumerateRowsUsingBlock:v8];

  _Block_object_dispose(v13, 8);
}

void sub_1000623F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006240C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [NSMutableDictionary dictionaryWithCapacity:a1[7]];
  v9 = v8;
  if (v5)
  {
    v10 = a1[4];
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_100062560;
    v18 = &unk_10037FA28;
    v11 = v8;
    v19 = v11;
    v12 = v5;
    v20 = v12;
    [v10 enumerateObjectsUsingBlock:&v15];
    v13 = a1[5];
    v14 = [v12 int64ForColumnIndex:{0, v15, v16, v17, v18}];
    ++*(*(a1[6] + 8) + 24);
    (*(v13 + 16))(v13, v14, v11);
  }

  objc_autoreleasePoolPop(v7);
}

void sub_100062560(uint64_t a1, void *a2, int a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = sub_1000611A8(v5, (a3 + 1));
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

void sub_100062F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100062F6C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100062F84(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [objc_alloc(*(a1 + 48)) initWithPersistentID:a2 onConnection:*(a1 + 32)];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  *a4 = 1;
}

void sub_100063140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100063158(uint64_t a1, uint64_t a2)
{
  v3 = [objc_alloc(*(a1 + 48)) initWithPersistentID:a2 onConnection:*(a1 + 32)];
  [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
}

void sub_1000635E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100063610(uint64_t a1, void *a2)
{
  v7 = 1;
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 predicate];
  [v5 applyBinding:v4 atIndex:&v7];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000636D0;
  v6[3] = &unk_1003828B8;
  v6[4] = *(a1 + 40);
  [v4 enumerateRowsUsingBlock:v6];
}

void sub_1000636D0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = sub_1000611A8(a2, 0);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  *a4 = 1;
}

void sub_10006384C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100063E80(uint64_t a1)
{
  v2 = sqlite3_step(*(a1 + 48));
  if (v2 == 100)
  {
    (*(*(a1 + 40) + 16))();
  }

  return v2;
}

void sub_100063F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100063F9C(void *result, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a2)
  {
    v5 = result;
    result = [a2 int64ForColumnIndex:0];
    *(*(v5[4] + 8) + 24) = result;
  }

  *a4 = 1;
  return result;
}

void sub_1000640CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000640E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000640FC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a2)
  {
    v6 = [a2 numberForColumnIndex:0];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  *a4 = 1;
}

void sub_1000641F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10006420C(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  *a4 = 1;
  return result;
}

uint64_t sub_1000644AC(uint64_t a1)
{
  qword_1003D46A0 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_100064B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100064B48(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100064B60(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  v4 = [a2 addMessageInfo:v2 withError:&obj];
  objc_storeStrong((v3 + 40), obj);
  return v4;
}

id sub_1000652C0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  v4 = [a2 addMessageInfo:v2 withError:&obj];
  objc_storeStrong((v3 + 40), obj);
  return v4;
}

void sub_100065314(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKey:v4];
  [*(a1 + 40) revokeProductIdentifiers:v5 forBundleID:v4 accountID:*(a1 + 48)];
}

void sub_1000655FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100065620(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v9 = [v4 requestBundleID];
  v6 = [v5 messageForUserID:v3 inApp:v9 messageType:a1[6]];

  v7 = *(a1[7] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_100065A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_100065AC4(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v9 = [v4 requestBundleID];
  v6 = [v5 revocationsForUserID:v3 inApp:v9];

  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

id sub_100065B54(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 requestBundleID];
  v6 = [v4 removeRevocationInfoForUser:v2 inApp:v5];

  return v6;
}

void sub_100065BB4(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 productID];
  [v2 addObject:v3];
}

uint64_t sub_100065D64(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100065E78;
  v8[3] = &unk_1003829D0;
  v4 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v5 = v3;
  v11 = v5;
  v12 = &v13;
  [v4 enumerateObjectsUsingBlock:v8];
  v6 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v6;
}

void sub_100065E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100065E78(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[StoreKitRevocationInfo alloc] initWithUserID:*(a1 + 32) bundleID:*(a1 + 40) productID:v3];
  v5 = [*(a1 + 48) addRevocationInfo:v4];
  if ((v5 & 1) == 0)
  {
    if (qword_1003D46F8 != -1)
    {
      sub_1002D04C4();
    }

    v6 = qword_1003D46B8;
    if (os_log_type_enabled(qword_1003D46B8, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = 138478339;
      v10 = v7;
      v11 = 2114;
      v12 = v8;
      v13 = 2114;
      v14 = v3;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error inserting revocation info for account ID: %{private}@, bundle ID: %{public}@, product ID: %{public}@", &v9, 0x20u);
    }
  }

  *(*(*(a1 + 56) + 8) + 24) &= v5;
}

void sub_1000660A0(uint64_t a1)
{
  v2 = +[ActiveAccountObserver activeAccount];
  if (v2)
  {
    v4 = v2;
    v3 = [v2 ams_DSID];

    v2 = v4;
    if (v3)
    {
      [*(a1 + 32) _displayMessageForProdAccount:v4 bundleID:*(a1 + 40)];
      v2 = v4;
    }
  }
}

void sub_10006631C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100066334(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = [v3 ams_DSID];
  v5 = [v4 bundleIDsWithMessagesForUserID:v8];

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_1000664E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000664F8(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 ams_DSID];
  LOBYTE(v3) = [v4 bundleIDHasMessagesForUserID:v5 bundleID:a1[5]];

  *(*(a1[6] + 8) + 24) = v3;
}

void sub_1000666F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100066708(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v9 = [v4 ams_DSID];
  v6 = [v5 bundleIDsWithMessagesInBundleIDs:v3 accountID:v9];

  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_10006690C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100066924(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = [v10 client];
  v8 = [v7 callerBundleID];
  v9 = [v8 isEqualToString:*(a1 + 32)];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_100066E94(uint64_t a1)
{
  v2 = [*(a1 + 32) present];
  v10 = 0;
  v3 = [v2 resultWithError:&v10];
  v4 = v10;

  if (v4)
  {
    v5 = [v4 domain];
    if ([v5 isEqualToString:AMSErrorDomain])
    {
      v6 = [v4 code];

      if (v6 == 6)
      {
        if (qword_1003D46F8 != -1)
        {
          sub_1002D049C();
        }

        v7 = qword_1003D46B8;
        if (os_log_type_enabled(qword_1003D46B8, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(a1 + 40);
          *buf = 138543362;
          v12 = v8;
LABEL_12:
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@]: System engagement task finished presenting message", buf, 0xCu);
          goto LABEL_18;
        }

        goto LABEL_18;
      }
    }

    else
    {
    }

    if (qword_1003D46F8 != -1)
    {
      sub_1002D049C();
    }

    if (os_log_type_enabled(qword_1003D46B8, OS_LOG_TYPE_ERROR))
    {
      sub_1002D076C(a1);
    }

    goto LABEL_18;
  }

  if (qword_1003D46F8 != -1)
  {
    sub_1002D049C();
  }

  v7 = qword_1003D46B8;
  if (os_log_type_enabled(qword_1003D46B8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 40);
    *buf = 138543362;
    v12 = v9;
    goto LABEL_12;
  }

LABEL_18:
}

void sub_1000677F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100067810(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[7];
  v5 = *(a1[6] + 8);
  obj = *(v5 + 40);
  v6 = [a2 removeMessageInfoForUser:v2 inApp:v3 type:v4 withError:&obj];
  objc_storeStrong((v5 + 40), obj);
  return v6;
}

void sub_100067868(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CBA88;
  off_1003CBA88 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D46B0;
  qword_1003D46B0 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D46B8;
  qword_1003D46B8 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D46C0;
  qword_1003D46C0 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D46C8;
  qword_1003D46C8 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D46D0;
  qword_1003D46D0 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D46D8;
  qword_1003D46D8 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D46E0;
  qword_1003D46E0 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D46E8;
  qword_1003D46E8 = v17;

  qword_1003D46F0 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_100067A1C(id a1)
{
  qword_1003D4700 = objc_alloc_init(Environment);

  _objc_release_x1();
}

uint64_t sub_100067BB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100067BC8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    v3 = +[NSFileManager defaultManager];
    v4 = [v3 sk_userDatabaseURL];
    v5 = [v4 path];

    if (v5)
    {
      v6 = [[SQLiteConnectionOptions alloc] initWithDatabasePath:v5];
      v7 = [[SQLiteDatabase alloc] initWithConnectionOptions:v6];
      v8 = *(a1 + 32);
      v9 = *(v8 + 16);
      *(v8 + 16) = v7;
    }

    v2 = *(*(a1 + 32) + 16);
  }

  v10 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v10, v2);
}

uint64_t sub_100068574(uint64_t a1)
{
  [*(*(a1 + 32) + 8) executeStatement:@"PRAGMA user_version = 1;" error:0];
  [*(*(a1 + 32) + 8) executeStatement:@"CREATE TABLE IF NOT EXISTS schema_version (schema_name TEXT error:{schema_version INTEGER DEFAULT 0, PRIMARY KEY(schema_name));", 0}];
  return 1;
}

void sub_10006867C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100068694(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  [v4 bindString:v3 atPosition:1];
  v5 = [v4 firstInt64Value];

  *(*(*(a1 + 40) + 8) + 24) = v5;
}

void sub_10006880C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100068824(uint64_t a1, void *a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000688BC;
  v5[3] = &unk_100381048;
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  [a2 enumerateRowsUsingBlock:v5];
}

void sub_1000688BC(uint64_t a1, void *a2, uint64_t a3, unsigned __int8 *a4)
{
  v7 = [a2 stringForColumnName:@"name"];
  v6 = [v7 isEqualToString:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = v6;
  *a4 = v6;
}

id sub_1000689DC(void *a1)
{
  v2 = [[SQLiteDatabaseStoreMigrator alloc] initWithConnection:*(a1[4] + 8)];
  (*(a1[5] + 16))();
  if ([(SQLiteDatabaseStoreMigrator *)v2 success])
  {
    v3 = a1[4];
    v4 = *(v3 + 8);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100068ABC;
    v8[3] = &unk_10037FB40;
    v5 = a1[6];
    v8[4] = v3;
    v8[5] = v5;
    v6 = [v4 executeStatement:@"INSERT OR REPLACE INTO schema_version (schema_name error:schema_version) VALUES (? bindings:{?)", 0, v8}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_100068ABC(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  [v4 bindString:v3 atPosition:1];
  [v4 bindInt64:*(a1 + 40) atPosition:2];
}

void sub_100068BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100068C14(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindString:v3 atPosition:1];
  LOBYTE(v3) = [v4 hasRows];

  *(*(*(a1 + 40) + 8) + 24) = v3;
}

id sub_1000690B4(uint64_t a1, uint64_t a2, char a3, _BYTE *a4)
{
  result = [*(a1 + 32) _hashData:a2];
  if ((a3 & 1) == 0)
  {
    result = [*(a1 + 32) _validateAndResetDigestError:*(a1 + 40)];
    *a4 = result ^ 1;
  }

  return result;
}

void sub_100069520(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CBAF0;
  off_1003CBAF0 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D4710;
  qword_1003D4710 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D4718;
  qword_1003D4718 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D4720;
  qword_1003D4720 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D4728;
  qword_1003D4728 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D4730;
  qword_1003D4730 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D4738;
  qword_1003D4738 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D4740;
  qword_1003D4740 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D4748;
  qword_1003D4748 = v17;

  qword_1003D4750 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_100069758(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  if (!a2)
  {
    if (qword_1003D47B8 != -1)
    {
      sub_1002D097C();
    }

    v5 = qword_1003D4770;
    if (os_log_type_enabled(qword_1003D4770, OS_LOG_TYPE_ERROR))
    {
      sub_1002D0990(v4, v5);
    }
  }
}

uint64_t sub_100069868(uint64_t a1)
{
  qword_1003D4760 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_10006999C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000699B8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (qword_1003D47B8 != -1)
    {
      sub_1002D097C();
    }

    v4 = qword_1003D4770;
    if (os_log_type_enabled(qword_1003D4770, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      WeakRetained = objc_loadWeakRetained((a1 + 48));
      v7 = objc_opt_class();
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = [v8 content];
      v11 = [v10 categoryIdentifier];
      v19 = 138543874;
      v20 = v7;
      v21 = 2114;
      v22 = v11;
      v23 = 2114;
      v24 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Error posting user notification: %{public}@ : %{public}@", &v19, 0x20u);

LABEL_10:
    }
  }

  else
  {
    if (qword_1003D47B8 != -1)
    {
      sub_1002D097C();
    }

    v12 = qword_1003D4770;
    if (os_log_type_enabled(qword_1003D4770, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v12;
      v13 = objc_loadWeakRetained((a1 + 48));
      v14 = objc_opt_class();
      v15 = *(a1 + 32);
      v16 = v14;
      v17 = [v15 content];
      v18 = [v17 categoryIdentifier];
      v19 = 138543618;
      v20 = v14;
      v21 = 2114;
      v22 = v18;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Posted user notification: %{public}@", &v19, 0x16u);

      goto LABEL_10;
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100069DF4(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CBAF8;
  off_1003CBAF8 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D4770;
  qword_1003D4770 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D4778;
  qword_1003D4778 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D4780;
  qword_1003D4780 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D4788;
  qword_1003D4788 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D4790;
  qword_1003D4790 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D4798;
  qword_1003D4798 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D47A0;
  qword_1003D47A0 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D47A8;
  qword_1003D47A8 = v17;

  qword_1003D47B0 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_10006A434(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 32) addObject:*(*(&v7 + 1) + 8 * v6)];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

uint64_t sub_10006A628(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  if (v2)
  {
    [*(a1 + 32) addObject:v2];
  }

  return _objc_release_x1();
}

void sub_10006A7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10006A7C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10006A7DC(uint64_t a1, void *a2, uint64_t a3)
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

void sub_10006ADEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10006AE04(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10006AE1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) tcr_arrayForKey:v3];
  v5 = objc_alloc_init(NSMutableArray);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v4 tcr_stringEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 addObject:*(*(&v11 + 1) + 8 * v10)];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [*(*(*(a1 + 40) + 8) + 40) setObject:v5 forKey:v3];
}

id sub_10006B13C(uint64_t a1)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v24 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v15;
    *&v4 = 138543874;
    v13 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        if (([*(*(a1 + 40) + 24) containsObject:{v8, v13, v14}] & 1) == 0)
        {
          if (qword_1003D4808 != -1)
          {
            sub_1002D0A08();
          }

          v9 = qword_1003D47C8;
          if (os_log_type_enabled(qword_1003D47C8, OS_LOG_TYPE_DEFAULT))
          {
            v10 = *(a1 + 40);
            v11 = *(v10 + 48);
            *buf = v13;
            v19 = v10;
            v20 = 2114;
            v21 = v11;
            v22 = 2114;
            v23 = v8;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Adding observation for %{public}@.", buf, 0x20u);
          }

          [*(*(a1 + 40) + 24) addObject:v8];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v14 objects:v24 count:16];
    }

    while (v5);
  }

  return [*(a1 + 40) _startObservingIfNecessary];
}

id sub_10006B388(uint64_t a1)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v24 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v15;
    *&v4 = 138543874;
    v13 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        if ([*(*(a1 + 40) + 24) containsObject:{v8, v13, v14}])
        {
          if (qword_1003D4808 != -1)
          {
            sub_1002D0A08();
          }

          v9 = qword_1003D47C8;
          if (os_log_type_enabled(qword_1003D47C8, OS_LOG_TYPE_DEFAULT))
          {
            v10 = *(a1 + 40);
            v11 = *(v10 + 48);
            *buf = v13;
            v19 = v10;
            v20 = 2114;
            v21 = v11;
            v22 = 2114;
            v23 = v8;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Removing observation for %{public}@.", buf, 0x20u);
          }

          [*(*(a1 + 40) + 24) removeObject:v8];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v14 objects:v24 count:16];
    }

    while (v5);
  }

  return [*(a1 + 40) _stopObservingIfNecessary];
}

void sub_10006B92C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

void sub_10006B958(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([v3 state])
  {
    if (qword_1003D4808 != -1)
    {
      sub_1002D0A30();
    }

    v5 = qword_1003D47C8;
    if (os_log_type_enabled(qword_1003D47C8, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = v5;
      v8 = [v3 error];
      v11 = 138543874;
      v12 = WeakRetained;
      v13 = 2114;
      v14 = v6;
      v15 = 2114;
      v16 = v8;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%{public}@][%{public}@]: Error with completion: %{public}@.", &v11, 0x20u);
    }
  }

  else
  {
    if (qword_1003D4808 != -1)
    {
      sub_1002D0A30();
    }

    v9 = qword_1003D47C8;
    if (os_log_type_enabled(qword_1003D47C8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = 138543618;
      v12 = WeakRetained;
      v13 = 2114;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Done listening to app launch events.", &v11, 0x16u);
    }
  }
}

void sub_10006BAEC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [v3 eventBody];

  if (v5)
  {
    v6 = [v5 bundleID];
    v7 = dispatch_time(0, 1000000000);
    v8 = WeakRetained[2];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006BC18;
    block[3] = &unk_10037FDA0;
    objc_copyWeak(&v13, (a1 + 40));
    v11 = *(a1 + 32);
    v12 = v6;
    v9 = v6;
    dispatch_after(v7, v8, block);

    objc_destroyWeak(&v13);
  }
}

void sub_10006BC18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (qword_1003D4808 != -1)
  {
    sub_1002D0A30();
  }

  v3 = qword_1003D47C8;
  if (os_log_type_enabled(qword_1003D47C8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = 138543874;
    v7 = WeakRetained;
    v8 = 2114;
    v9 = v4;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Sending launch event for %{public}@.", &v6, 0x20u);
  }

  [WeakRetained _appDidLaunch:*(a1 + 40)];
}

void sub_10006BEE8(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CBB00;
  off_1003CBB00 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D47C0;
  qword_1003D47C0 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D47C8;
  qword_1003D47C8 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D47D0;
  qword_1003D47D0 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D47D8;
  qword_1003D47D8 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D47E0;
  qword_1003D47E0 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D47E8;
  qword_1003D47E8 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D47F0;
  qword_1003D47F0 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D47F8;
  qword_1003D47F8 = v17;

  qword_1003D4800 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_10006C058(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_10006C0C4(id a1)
{
  qword_1003D4810 = objc_alloc_init(PushService);

  _objc_release_x1();
}

void sub_10006C288(uint64_t a1)
{
  v6 = +[_TtC9storekitd3Bag defaultBag];
  v2 = [PushService _pushHandlerWithBagContract:?];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:*(a1 + 32) selector:"_handleBagChangedNotification:" name:AMSBagChangedNotification object:0];
  if (!*(a1 + 40))
  {
    [*(a1 + 32) _initializeConnectionsAndSkipEnvironmentCheck:0];
  }
}

void sub_10006C3F0(uint64_t a1)
{
  v2 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
  value = 0;
  if (NSMapMember(*(*(a1 + 32) + 16), v2, 0, &value))
  {
    if (qword_1003D4868 != -1)
    {
      sub_1002D0C6C();
    }

    v3 = qword_1003D4840;
    if (os_log_type_enabled(qword_1003D4840, OS_LOG_TYPE_FAULT))
    {
      sub_1002D0C94(&value, v3);
    }
  }

  [*(*(a1 + 32) + 16) setObject:*(a1 + 40) forKey:v2];
  [*(a1 + 32) _flushPendingMessagesWithActionType:v2];
}

void sub_10006C534(uint64_t a1)
{
  v2 = a1 + 40;
  v3 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
  if (NSMapMember(*(*(a1 + 32) + 16), v3, 0, 0))
  {
    [*(*(a1 + 32) + 16) removeObjectForKey:v3];
  }

  else
  {
    if (qword_1003D4868 != -1)
    {
      sub_1002D0D54();
    }

    v4 = qword_1003D4840;
    if (os_log_type_enabled(qword_1003D4840, OS_LOG_TYPE_ERROR))
    {
      sub_1002D0D68(v2, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10006CE04(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(a1 + 32) actionType] == -1)
  {
    if (qword_1003D4868 != -1)
    {
      sub_1002D0D54();
    }

    v10 = qword_1003D4840;
    if (os_log_type_enabled(qword_1003D4840, OS_LOG_TYPE_ERROR))
    {
      sub_1002D0FE4(v2, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  else
  {
    if (qword_1003D4868 != -1)
    {
      sub_1002D0D54();
    }

    v3 = qword_1003D4840;
    if (os_log_type_enabled(qword_1003D4840, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v4 = *(a1 + 40);
      v27 = 138543618;
      v28 = v4;
      v29 = 2114;
      v30 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Connection: %{public}@ received incoming message: %{public}@", &v27, 0x16u);
    }

    v6 = *(*(a1 + 48) + 48);
    v7 = [*(a1 + 32) userInfo];
    LODWORD(v6) = [v6 shouldHandleNotification:v7];

    if (v6)
    {
      v8 = *(*(a1 + 48) + 48);
      v9 = [*(a1 + 32) userInfo];
      [v8 handleNotification:v9];
    }

    else
    {
      v17 = [*v2 accountID];
      v18 = +[ACAccountStore ams_sharedAccountStore];
      v19 = [v18 ams_activeiTunesAccount];
      v20 = [v19 ams_DSID];

      if (v17)
      {
        if (([v20 isEqualToNumber:v17] & 1) == 0)
        {
          if (qword_1003D4868 != -1)
          {
            sub_1002D0C6C();
          }

          v21 = qword_1003D4840;
          if (os_log_type_enabled(qword_1003D4840, OS_LOG_TYPE_DEBUG))
          {
            v22 = *(a1 + 40);
            v27 = 138543875;
            v28 = v22;
            v29 = 2113;
            v30 = v17;
            v31 = 2113;
            v32 = v20;
            _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Connection: %{public}@ received push for %{private}@ but active is: %{private}@", &v27, 0x20u);
          }
        }
      }

      else
      {
        if (qword_1003D4868 != -1)
        {
          sub_1002D0C6C();
        }

        v23 = qword_1003D4840;
        if (os_log_type_enabled(qword_1003D4840, OS_LOG_TYPE_DEBUG))
        {
          sub_1002D0F58(a1, v20, v23);
        }
      }

      v24 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) actionType]);
      v25 = [*(*(a1 + 48) + 16) objectForKey:v24];
      v26 = v25;
      if (v25)
      {
        [v25 pushService:*(a1 + 48) didReceiveMessage:*(a1 + 32)];
      }

      else
      {
        [*(a1 + 48) _queuePendingMessage:*(a1 + 32) withActionType:v24];
      }
    }
  }
}

void sub_10006D264(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CBB68;
  off_1003CBB68 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D4820;
  qword_1003D4820 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D4828;
  qword_1003D4828 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D4830;
  qword_1003D4830 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D4838;
  qword_1003D4838 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D4840;
  qword_1003D4840 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D4848;
  qword_1003D4848 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D4850;
  qword_1003D4850 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D4858;
  qword_1003D4858 = v17;

  qword_1003D4860 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

id sub_10006F548(const char *a1, char *name, void *a3)
{
  if (!a1)
  {
    sub_1002D1080();
  }

  if (!name)
  {
    sub_1002D1054();
  }

  v6 = getxattr(a1, name, 0, 0, 0, 1);
  if (!v6)
  {
    v8 = +[NSData data];
    goto LABEL_16;
  }

  v7 = v6;
  if (v6 < 0xF4241)
  {
    v9 = malloc_type_malloc(v6, 0x886FF8EFuLL);
    if (v9)
    {
      v10 = v9;
      if (getxattr(a1, name, v9, v7, 0, 1) != -1)
      {
        v8 = [NSData dataWithBytesNoCopy:v10 length:v7 freeWhenDone:1];
        goto LABEL_16;
      }

      free(v10);
      if (a3)
      {
        v13 = [NSError errorWithDomain:NSOSStatusErrorDomain code:*__error() userInfo:0];
        *a3 = ASDErrorWithUnderlyingErrorAndDescription();
      }
    }

    else if (a3)
    {
LABEL_12:
      v11 = ASDErrorWithUserInfoAndFormat();
      v12 = v11;
      v8 = 0;
      *a3 = v11;
      goto LABEL_16;
    }
  }

  else if (a3)
  {
    goto LABEL_12;
  }

  v8 = 0;
LABEL_16:

  return v8;
}

uint64_t sub_10006F790(uint64_t a1)
{
  qword_1003D4870 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

unint64_t sub_10006FA8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectAtIndexedSubscript:0];
  v5 = [v3 _migrateITunesStoreDDatabaseAtPath:v4];

  if (v5)
  {
    if (qword_1003D48C8 != -1)
    {
      sub_1002D10AC();
    }

    v18 = v3;
    v6 = qword_1003D48B0;
    if (os_log_type_enabled(qword_1003D48B0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Promoted IAPs migration from itunesstored successful", buf, 2u);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = *(a1 + 32);
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        v11 = 0;
        do
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * v11);
          v13 = +[NSFileManager defaultManager];
          v19 = 0;
          [v13 removeItemAtPath:v12 error:&v19];
          v14 = v19;

          if (v14)
          {
            if (qword_1003D48C8 != -1)
            {
              sub_1002D10C0();
            }

            v15 = qword_1003D4880;
            if (os_log_type_enabled(qword_1003D4880, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v25 = v12;
              v26 = 2114;
              v27 = v14;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Could not delete legacy database file (%{public}@) in itunesstored - %{public}@", buf, 0x16u);
            }
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v9);
    }

    v3 = v18;
    v5 = v5;
  }

  else
  {
    if (qword_1003D48C8 != -1)
    {
      sub_1002D10AC();
    }

    v16 = qword_1003D4880;
    if (os_log_type_enabled(qword_1003D4880, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Promoted IAPs migration from itunesstored failed", buf, 2u);
    }
  }

  return v5;
}

void sub_10006FF50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10006FF68(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_10006FF80(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  if (v3)
  {
    v5 = *(a1[6] + 8);
    obj = *(v5 + 40);
    v6 = [a2 setPromotionInfo:v3 forBundleID:v4 error:&obj];
    objc_storeStrong((v5 + 40), obj);
    return v6;
  }

  else
  {

    return [a2 removePromotionInfoForBundleID:v4];
  }
}

void sub_1000701B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1000701D4(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = *(a1[7] + 8);
  obj = *(v5 + 40);
  v6 = [a2 promotionInfoForProductIdentifiers:v3 bundleID:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_100070254(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CBB78;
  off_1003CBB78 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D4880;
  qword_1003D4880 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D4888;
  qword_1003D4888 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D4890;
  qword_1003D4890 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D4898;
  qword_1003D4898 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D48A0;
  qword_1003D48A0 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D48A8;
  qword_1003D48A8 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D48B0;
  qword_1003D48B0 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D48B8;
  qword_1003D48B8 = v17;

  qword_1003D48C0 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_10007129C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"transaction_id"];
  v7 = [v5 objectForKeyedSubscript:@"product_type"];
  v8 = [v7 unsignedCharValue];

  v9 = [v5 objectForKeyedSubscript:@"is_finished"];

  v10 = [v9 BOOLValue];
  v11 = [*(a1 + 32) containsObject:v6];
  if (v10 == v11)
  {
    v12 = v11;
    v13 = [InAppTransactionEntity alloc];
    v14 = [*(a1 + 40) connection];
    v15 = [(SQLiteEntity *)v13 initWithPersistentID:a2 onConnection:v14];

    if (v8 == 1)
    {
      v16 = v12;
    }

    else
    {
      v16 = 1;
    }

    if (v16 & 1) != 0 || (*(a1 + 56))
    {
      v17 = [NSNumber numberWithBool:v12 ^ 1];
      [(SQLiteEntity *)v15 setValue:v17 forProperty:@"is_finished"];
    }

    else if (![(SQLiteEntity *)v15 deleteFromDatabase])
    {
      if (qword_1003D4918 != -1)
      {
        sub_1002D1110();
      }

      if (os_log_type_enabled(qword_1003D48F8, OS_LOG_TYPE_ERROR))
      {
        sub_1002D118C();
      }
    }
  }
}

void sub_100071C84(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 objectForKeyedSubscript:@"product_type"];
  v6 = [v5 unsignedCharValue];

  v7 = [InAppTransactionEntity alloc];
  v8 = [*(a1 + 32) connection];
  v9 = [(SQLiteEntity *)v7 initWithPersistentID:a2 onConnection:v8];

  if (v6 == 1 && (*(a1 + 48) & 1) == 0)
  {
    if (![(SQLiteEntity *)v9 deleteFromDatabase])
    {
      if (qword_1003D4918 != -1)
      {
        sub_1002D1110();
      }

      if (os_log_type_enabled(qword_1003D48F8, OS_LOG_TYPE_ERROR))
      {
        sub_1002D1204();
      }
    }
  }

  else
  {
    [(SQLiteEntity *)v9 setValue:&__kCFBooleanTrue forProperty:@"is_finished"];
  }
}

void sub_100072E1C(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CBB80;
  off_1003CBB80 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D48D0;
  qword_1003D48D0 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D48D8;
  qword_1003D48D8 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D48E0;
  qword_1003D48E0 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D48E8;
  qword_1003D48E8 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D48F0;
  qword_1003D48F0 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D48F8;
  qword_1003D48F8 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D4900;
  qword_1003D4900 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D4908;
  qword_1003D4908 = v17;

  qword_1003D4910 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_10007337C(id a1)
{
  qword_1003D4928 = objc_alloc_init(ActiveAccountObserver);

  _objc_release_x1();
}

void sub_100073790(uint64_t a1)
{
  v4 = [*(a1 + 32) userInfo];
  v1 = [v4 objectForKeyedSubscript:@"AccountDidChangePreviousActiveDSID"];
  v2 = objc_alloc_init(NSMutableDictionary);
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v2 setObject:v1 forKeyedSubscript:@"AccountDidChangePreviousActiveDSID"];
    }
  }

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"AccountStoreSandboxAccountDidChange" object:0 userInfo:v2];
}

void sub_100073904(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"DSID"];

  if (v3)
  {
    v3 = [v2 objectForKeyedSubscript:@"DSID"];
  }

  v4 = [v2 objectForKeyedSubscript:@"active"];

  if (v4)
  {
    v5 = [v2 objectForKeyedSubscript:@"active"];
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v2 objectForKeyedSubscript:@"signout"];

  if (v7)
  {
    v8 = [v2 objectForKeyedSubscript:@"signout"];
    v9 = [v8 BOOLValue];
  }

  else
  {
    v9 = 0;
  }

  v10 = +[ACAccountStore ams_sharedAccountStore];
  v11 = [v10 ams_activeiTunesAccount];

  if (v11)
  {
    v12 = [v11 ams_DSID];

    if (!v12)
    {
      if (qword_1003D4978 != -1)
      {
        sub_1002D1320();
      }

      v13 = qword_1003D4930;
      if (os_log_type_enabled(qword_1003D4930, OS_LOG_TYPE_ERROR))
      {
        sub_1002D1334(a1, v13);
      }

      v11 = 0;
    }
  }

  if (v9)
  {
    if (qword_1003D4978 != -1)
    {
      sub_1002D12F8();
    }

    v14 = qword_1003D4930;
    if (os_log_type_enabled(qword_1003D4930, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      *v28 = 138543874;
      *&v28[4] = objc_opt_class();
      *&v28[12] = 2114;
      *&v28[14] = v3;
      *&v28[22] = 1024;
      LODWORD(v29) = v6;
      v16 = *&v28[4];
      v17 = "[%{public}@] Account signout notification accountID: %{public}@ active: %d";
LABEL_25:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v17, v28, 0x1Cu);
    }
  }

  else
  {
    if (qword_1003D4978 != -1)
    {
      sub_1002D12F8();
    }

    v18 = qword_1003D4930;
    if (os_log_type_enabled(qword_1003D4930, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v18;
      *v28 = 138543874;
      *&v28[4] = objc_opt_class();
      *&v28[12] = 2114;
      *&v28[14] = v3;
      *&v28[22] = 1024;
      LODWORD(v29) = v6;
      v16 = *&v28[4];
      v17 = "[%{public}@] Account account changed notification accountID: %{public}@ active: %d";
      goto LABEL_25;
    }
  }

  if ([ActiveAccountObserver _shouldNotifyChangeFromExistingAccount:*(*(a1 + 40) + 8) toCurrentAccount:v11, *v28, *&v28[16], v29])
  {
    v19 = *(*(a1 + 40) + 8);
    objc_storeStrong((*(a1 + 40) + 8), v11);
    if (qword_1003D4978 != -1)
    {
      sub_1002D12F8();
    }

    v20 = qword_1003D4930;
    if (os_log_type_enabled(qword_1003D4930, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      v22 = objc_opt_class();
      v23 = v22;
      v24 = [v11 hashedDescription];
      *v28 = 138543618;
      *&v28[4] = v22;
      *&v28[12] = 2114;
      *&v28[14] = v24;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] Posting notification after active iTunes account changed: %{public}@", v28, 0x16u);
    }

    [ActiveAccountObserver _postAccountDidChangeFromOldAccount:v19 withAccountStore:*(a1 + 40)];
    goto LABEL_36;
  }

  if (qword_1003D4978 != -1)
  {
    sub_1002D12F8();
  }

  v25 = qword_1003D4930;
  if (os_log_type_enabled(qword_1003D4930, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v25;
    v26 = objc_opt_class();
    *v28 = 138543362;
    *&v28[4] = v26;
    v27 = v26;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received account change notification but nothing has changed", v28, 0xCu);

LABEL_36:
  }
}

void sub_100073E58(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = [*(a1 + 32) ams_DSID];

  if (v3)
  {
    v4 = [*(a1 + 32) ams_DSID];
    [v2 setObject:v4 forKeyedSubscript:@"AccountDidChangePreviousActiveDSID"];
LABEL_7:

    goto LABEL_8;
  }

  if (qword_1003D4978 != -1)
  {
    sub_1002D1320();
  }

  v5 = qword_1003D4930;
  if (os_log_type_enabled(qword_1003D4930, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v4 = v5;
    v7 = [v6 hashedDescription];
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Not posting account change due to no DSID on account: %{public}@", &v9, 0xCu);

    goto LABEL_7;
  }

LABEL_8:
  v8 = +[NSNotificationCenter defaultCenter];
  [v8 postNotificationName:@"AccountStorePrimaryAccountDidChange" object:*(a1 + 40) userInfo:v2];
}

void sub_1000741F0(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CBB88;
  off_1003CBB88 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D4930;
  qword_1003D4930 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D4938;
  qword_1003D4938 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D4940;
  qword_1003D4940 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D4948;
  qword_1003D4948 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D4950;
  qword_1003D4950 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D4958;
  qword_1003D4958 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D4960;
  qword_1003D4960 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D4968;
  qword_1003D4968 = v17;

  qword_1003D4970 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_100074360(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

uint64_t sub_100074380()
{

  return objc_opt_class();
}

id sub_1000746C8()
{
  if (qword_1003D49C8 != -1)
  {
    sub_1002D161C();
  }

  v1 = qword_1003D49A8;

  return v1;
}

void sub_100074A88(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 buf, int a14, __int16 a15, __int16 a16, uint64_t a17, __int128 a18)
{
  if (a2 == 1)
  {
    v19 = objc_begin_catch(a1);
    v20 = sub_1000746C8();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      v21 = [v18 length];
      LODWORD(buf) = 138544130;
      *(&buf + 4) = a10;
      WORD6(buf) = 2048;
      *(&buf + 14) = v21;
      a16 = 2114;
      LOWORD(a18) = 2114;
      *(&a18 + 2) = v19;
      _os_log_fault_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "[%{public}@] Encountered exception while writing receipt (%ld bytes) to %{public}@: %{public}@", &buf, 0x2Au);
    }

    objc_end_catch();
    JUMPOUT(0x100074930);
  }

  _Unwind_Resume(a1);
}

void sub_100074B58(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CBB90;
  off_1003CBB90 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D4980;
  qword_1003D4980 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D4988;
  qword_1003D4988 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D4990;
  qword_1003D4990 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D4998;
  qword_1003D4998 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D49A0;
  qword_1003D49A0 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D49A8;
  qword_1003D49A8 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D49B0;
  qword_1003D49B0 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D49B8;
  qword_1003D49B8 = v17;

  qword_1003D49C0 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_100074DE8(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CBB98;
  off_1003CBB98 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D49D0;
  qword_1003D49D0 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D49D8;
  qword_1003D49D8 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D49E0;
  qword_1003D49E0 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D49E8;
  qword_1003D49E8 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D49F0;
  qword_1003D49F0 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D49F8;
  qword_1003D49F8 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D4A00;
  qword_1003D4A00 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D4A08;
  qword_1003D4A08 = v17;

  qword_1003D4A10 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_1000752CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000752EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100075304(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, _BYTE *a5)
{
  v7 = a3;
  v20 = [v7 objectForKeyedSubscript:@"dsid"];
  v8 = [v7 objectForKeyedSubscript:@"bundle_id"];
  v9 = [v7 objectForKeyedSubscript:@"status"];
  v10 = [v9 integerValue];

  v11 = [v7 objectForKeyedSubscript:@"message_type"];
  v12 = [v11 integerValue];

  v13 = [v7 objectForKeyedSubscript:@"allow_developer_control"];

  v14 = [v13 BOOLValue];
  v15 = [StoreKitMessageInfo alloc];
  v16 = [NSNumber numberWithInteger:v10];
  v17 = [(StoreKitMessageInfo *)v15 initWithUserID:v20 bundleID:v8 status:v16 allowDeveloperControl:v14 messageType:v12];
  v18 = *(*(a1 + 32) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;

  *a5 = 1;
}

void sub_10007571C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10007573C(void *a1, uint64_t a2, void *a3)
{
  v5 = [a3 objectForKeyedSubscript:@"product_id"];
  v4 = [[StoreKitRevocationInfo alloc] initWithUserID:a1[4] bundleID:a1[5] productID:v5];
  if (v4)
  {
    [*(*(a1[6] + 8) + 40) addObject:v4];
  }
}

void sub_1000759C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000759E8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 objectForKeyedSubscript:@"bundle_id"];
  if (v4)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v4];
  }

  return _objc_release_x1();
}

void sub_100075C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100075CA0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a5 = 1;
  return result;
}

void sub_100075F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100075F7C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 objectForKeyedSubscript:@"bundle_id"];
  if (v4)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v4];
  }

  return _objc_release_x1();
}

void sub_1000768CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000768F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (v6)
  {
    [WeakRetained completeWithError:v6];
  }

  v9 = [v5 selectedActionIdentifier];

  if (v9 == @"InvalidReceiptPromptOKAction")
  {
    if (*(a1 + 32))
    {
      v10 = +[LSApplicationWorkspace defaultWorkspace];
      v11 = *(a1 + 32);
      v14 = 0;
      [v10 openURL:v11 withOptions:0 error:&v14];
      v12 = v14;

      if (v12)
      {
LABEL_7:
        if (qword_1003D4A68 != -1)
        {
          sub_1002D16EC();
        }

        v13 = qword_1003D4A20;
        if (os_log_type_enabled(qword_1003D4A20, OS_LOG_TYPE_ERROR))
        {
          sub_1002D17E4(v12, v13);
        }

        [*(a1 + 40) completeWithError:v12];
        goto LABEL_14;
      }
    }

    else
    {
      v12 = ASDErrorWithDescription();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    [*(a1 + 40) completeWithSuccess];
LABEL_14:

    goto LABEL_15;
  }

  [*(a1 + 40) completeWithSuccess];
LABEL_15:
}

void sub_100076A90(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CBBA0;
  off_1003CBBA0 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D4A20;
  qword_1003D4A20 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D4A28;
  qword_1003D4A28 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D4A30;
  qword_1003D4A30 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D4A38;
  qword_1003D4A38 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D4A40;
  qword_1003D4A40 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D4A48;
  qword_1003D4A48 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D4A50;
  qword_1003D4A50 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D4A58;
  qword_1003D4A58 = v17;

  qword_1003D4A60 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_100077504(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CBBA8;
  off_1003CBBA8 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D4A70;
  qword_1003D4A70 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D4A78;
  qword_1003D4A78 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D4A80;
  qword_1003D4A80 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D4A88;
  qword_1003D4A88 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D4A90;
  qword_1003D4A90 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D4A98;
  qword_1003D4A98 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D4AA0;
  qword_1003D4AA0 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D4AA8;
  qword_1003D4AA8 = v17;

  qword_1003D4AB0 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_1000776A0(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1003D4AC0;
  qword_1003D4AC0 = v1;

  v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.storekit.configuration.xpc"];
  v4 = qword_1003D4AC8;
  qword_1003D4AC8 = v3;

  [qword_1003D4AC8 setDelegate:qword_1003D4AC0];
  if (qword_1003D4B20 != -1)
  {
    sub_1002D1A00();
  }

  v5 = qword_1003D4B10;
  if (os_log_type_enabled(qword_1003D4B10, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting Xcode Test Service", v6, 2u);
  }

  [qword_1003D4AC8 resume];
}

void sub_100077C00(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 144));
  _Unwind_Resume(a1);
}

void sub_100077C38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (qword_1003D4B20 != -1)
  {
    sub_1002D1A00();
  }

  v3 = qword_1003D4B10;
  if (os_log_type_enabled(qword_1003D4B10, OS_LOG_TYPE_ERROR))
  {
    sub_1002D1A14(v3, WeakRetained, a1);
  }
}

void sub_100077CB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (qword_1003D4B20 != -1)
  {
    sub_1002D1A00();
  }

  v3 = qword_1003D4B10;
  if (os_log_type_enabled(qword_1003D4B10, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = *(a1 + 56);
    v7 = *(a1 + 32);
    v9 = 138543874;
    v10 = v5;
    v11 = 1024;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@]: Connection invalidated for pid: %i (%{public}@)", &v9, 0x1Cu);
  }

  if ([*(a1 + 40) isEqualToString:@"com.apple.ASOctaneSupportXPCService"])
  {
    v8 = +[OctaneManager sharedInstance];
    [v8 restartServerIfNecessary];
  }

  [OctaneClientConnection removeConnectionWithUUID:*(a1 + 32)];
}

void sub_100077DF8(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CBBB0;
  off_1003CBBB0 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D4AD8;
  qword_1003D4AD8 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D4AE0;
  qword_1003D4AE0 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D4AE8;
  qword_1003D4AE8 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D4AF0;
  qword_1003D4AF0 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D4AF8;
  qword_1003D4AF8 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D4B00;
  qword_1003D4B00 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D4B08;
  qword_1003D4B08 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D4B10;
  qword_1003D4B10 = v17;

  qword_1003D4B18 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

id sub_100078184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 16);
  if (a3)
  {
    return [v3 setObject:a3 forKey:a2];
  }

  else
  {
    return [v3 removeObjectForKey:a2];
  }
}

void sub_100079E80(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 144));
  _Unwind_Resume(a1);
}

void sub_100079EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _downloadedBytes:a3 expectedBytes:a4];
}

void sub_100079F1C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100079FF8;
  block[3] = &unk_10037FDA0;
  objc_copyWeak(&v10, (a1 + 40));
  v8 = *(a1 + 32);
  v9 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v10);
}

void sub_100079FF8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (*(a1 + 40))
    {
      if (qword_1003D4B70 != -1)
      {
        sub_1002D1ACC();
      }

      v3 = off_1003CBBB8;
      if (os_log_type_enabled(off_1003CBBB8, OS_LOG_TYPE_ERROR))
      {
        sub_1002D1BE0(a1, (a1 + 40), v3);
      }

      [WeakRetained _finalizeTaskWithError:*(a1 + 40)];
    }

    else
    {
      v5 = +[NSFileManager defaultManager];
      v6 = [v5 fileExistsAtPath:*(WeakRetained + 58)];

      if (v6)
      {
        if (qword_1003D4B70 != -1)
        {
          sub_1002D1ACC();
        }

        v7 = off_1003CBBB8;
        if (os_log_type_enabled(off_1003CBBB8, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(a1 + 32);
          v9 = *(WeakRetained + 130);
          v12 = 138543618;
          v13 = v8;
          v14 = 2114;
          v15 = v9;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Finished download %{public}@. Starting install.", &v12, 0x16u);
        }

        [WeakRetained _install];
      }

      else
      {
        if (qword_1003D4B70 != -1)
        {
          sub_1002D1ACC();
        }

        v10 = off_1003CBBB8;
        if (os_log_type_enabled(off_1003CBBB8, OS_LOG_TYPE_ERROR))
        {
          sub_1002D1C60(a1, v10);
        }

        v11 = ASDErrorWithDescription();
        [WeakRetained _finalizeTaskWithError:v11];
      }
    }
  }

  else
  {
    if (qword_1003D4B70 != -1)
    {
      sub_1002D1ACC();
    }

    v4 = off_1003CBBB8;
    if (os_log_type_enabled(off_1003CBBB8, OS_LOG_TYPE_ERROR))
    {
      sub_1002D1CDC(a1, v4);
    }
  }
}

void sub_10007AD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = BOMCopierUserData();
  v6 = *(v5 + 122) + a4;
  *(v5 + 122) = v6;
  v7 = fmax(v6 / *(v5 + 114) * 0.2 + 0.8, 0.99);
  v8 = [InAppDownloadStatus alloc];
  v9 = [v5 downloadID];
  v10 = [(InAppDownloadStatus *)v8 initWithDownloadID:v9];

  [(InAppDownloadStatus *)v10 setState:1];
  [(InAppDownloadStatus *)v10 setProgress:v7];
  [(InAppDownloadStatus *)v10 setTimeRemaining:-1.0];
  [v5 _updateDownloadStatus:v10];
  if (qword_1003D4B70 != -1)
  {
    sub_1002D1ACC();
  }

  v11 = off_1003CBBB8;
  if (os_log_type_enabled(off_1003CBBB8, OS_LOG_TYPE_DEBUG))
  {
    v12 = v11;
    v13 = [v5 logKey];
    [(InAppDownloadStatus *)v10 progress];
    v15 = 138543874;
    v16 = v13;
    v17 = 2048;
    v18 = a4;
    v19 = 2048;
    v20 = v14;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "[%{public}@] BOMCopier copied %lld (%f)", &v15, 0x20u);
  }
}

void sub_10007B5D0(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CBBB8;
  off_1003CBBB8 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D4B28;
  qword_1003D4B28 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D4B30;
  qword_1003D4B30 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D4B38;
  qword_1003D4B38 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D4B40;
  qword_1003D4B40 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D4B48;
  qword_1003D4B48 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D4B50;
  qword_1003D4B50 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D4B58;
  qword_1003D4B58 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D4B60;
  qword_1003D4B60 = v17;

  qword_1003D4B68 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

void sub_10007B924(id a1)
{
  v1 = os_log_create("com.apple.storekit", "Download");
  v2 = off_1003CBBC0;
  off_1003CBBC0 = v1;

  v3 = os_log_create("com.apple.storekit", "General");
  v4 = qword_1003D4B78;
  qword_1003D4B78 = v3;

  v5 = os_log_create("com.apple.storekit", "Messages");
  v6 = qword_1003D4B80;
  qword_1003D4B80 = v5;

  v7 = os_log_create("com.apple.storekit", "Products");
  v8 = qword_1003D4B88;
  qword_1003D4B88 = v7;

  v9 = os_log_create("com.apple.storekit", "Purchase");
  v10 = qword_1003D4B90;
  qword_1003D4B90 = v9;

  v11 = os_log_create("com.apple.storekit", "Push");
  v12 = qword_1003D4B98;
  qword_1003D4B98 = v11;

  v13 = os_log_create("com.apple.storekit", "Receipts");
  v14 = qword_1003D4BA0;
  qword_1003D4BA0 = v13;

  v15 = os_log_create("com.apple.storekit", "SQL");
  v16 = qword_1003D4BA8;
  qword_1003D4BA8 = v15;

  v17 = os_log_create("com.apple.storekit", "XcodeTest");
  v18 = qword_1003D4BB0;
  qword_1003D4BB0 = v17;

  qword_1003D4BB8 = os_log_create("com.apple.storekit", "ProductPage");

  _objc_release_x1();
}

id sub_10007C0CC(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1003D4BD8;
  qword_1003D4BD8 = v1;

  return [qword_1003D4BD8 _serviceConnection];
}

void sub_10007C3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10007C414(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10007C5C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10007C918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10007C940(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10007C958(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = [v4 objectForKeyedSubscript:@"transaction_id"];
  [v5 setObject:v6 forKeyedSubscript:@"tid"];

  v7 = [v4 objectForKeyedSubscript:@"original_transaction_id"];
  [v5 setObject:v7 forKeyedSubscript:@"otid"];

  v8 = [v4 objectForKeyedSubscript:@"product_id"];
  [v5 setObject:v8 forKeyedSubscript:off_1003CB1A8];

  v9 = [v4 objectForKeyedSubscript:@"item_id"];
  [v5 setObject:v9 forKeyedSubscript:off_1003CAFC8];

  v10 = [v4 objectForKeyedSubscript:@"transaction_date"];
  [v5 setObject:v10 forKeyedSubscript:@"odate"];

  v11 = [v4 objectForKeyedSubscript:@"original_transaction_date"];
  [v5 setObject:v11 forKeyedSubscript:@"date"];

  v12 = [v4 objectForKeyedSubscript:@"receipt"];
  [v5 setObject:v12 forKeyedSubscript:@"rcpt"];

  v13 = [v4 objectForKeyedSubscript:@"quantity"];
  [v5 setObject:v13 forKeyedSubscript:off_1003CB1B0];

  v14 = [v4 objectForKeyedSubscript:@"request_data"];
  [v5 setObject:v14 forKeyedSubscript:off_1003CB1B8];

  v15 = [v4 objectForKeyedSubscript:@"transaction_receipt"];
  [v5 setObject:v15 forKeyedSubscript:off_1003CB110];

  v16 = [v4 objectForKeyedSubscript:@"assets"];

  if (v16)
  {
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = [NSSet setWithObjects:v17, v18, v19, v20, v21, objc_opt_class(), 0];
    v26 = 0;
    v23 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v22 fromData:v16 error:&v26];
    v24 = v26;
    if (v24)
    {
      v25 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_1002D21E0(a1, v24, v25);
      }
    }

    else
    {
      [v5 setObject:v23 forKeyedSubscript:@"assets"];
    }
  }

  [*(*(*(a1 + 40) + 8) + 40) addObject:v5];
}

void sub_10007CF28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10007CF48(uint64_t a1, uint64_t a2, void *a3)
{
  *(*(*(a1 + 40) + 8) + 40) = [a3 objectForKeyedSubscript:*(a1 + 32)];

  return _objc_release_x1();
}

id sub_10007D2B0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) bytes];
  v4 = [*(a1 + 40) length];

  return [v2 updateWithBuffer:v3 length:v4];
}

id sub_10007D5BC(dispatch_block_t block)
{
  v1 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);

  return v1;
}

void sub_10007D5EC(void *a1, void *a2)
{
  v3 = a1;
  v4 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, a2);
  dispatch_async(v3, v4);
}

dispatch_queue_t sub_10007D650(const char *a1, dispatch_qos_class_t a2)
{
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_attr_make_with_qos_class(v4, a2, 0);
  v6 = dispatch_queue_create(a1, v5);

  return v6;
}

uint64_t sub_10007D7EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 domain];
  v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@/%ld", v5, [v3 code]);
  [v4 addObject:v6];

  v7 = [v3 domain];
  if (![v7 isEqualToString:AMSErrorDomain])
  {
LABEL_5:

    goto LABEL_6;
  }

  v8 = [v3 code];

  if (v8 == 305)
  {
    v9 = [v3 userInfo];
    v7 = [v9 tcr_integerValueForKey:AMSErrorUserInfoKeyServerErrorCode];

    if (v7)
    {
      v10 = *(a1 + 32);
      v11 = [NSString stringWithFormat:@"%@/%@", AMSServerErrorDomain, v7];
      [v10 addObject:v11];
    }

    goto LABEL_5;
  }

LABEL_6:

  return 1;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for SKLogger();
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  v6 = sub_10007EDA4(v3, qword_1003F26C8);
  sub_10007EDDC(v6, v5);
  v24 = 0;
  v25 = 0xE000000000000000;
  _StringGuts.grow(_:)(43);
  if (qword_1003CBDB0 != -1)
  {
    swift_once();
  }

  v8 = qword_1003F25B0;
  v7 = *algn_1003F25B8;

  v24 = v8;
  v25 = v7;
  v9._countAndFlagsBits = 32;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  if (qword_1003CBDB8 != -1)
  {
    swift_once();
  }

  v10 = qword_1003F25C0;
  v11 = *algn_1003F25C8;

  v12._countAndFlagsBits = v10;
  v12._object = v11;
  String.append(_:)(v12);

  v13._object = 0x8000000100313900;
  v13._countAndFlagsBits = 0xD000000000000026;
  String.append(_:)(v13);
  v15 = v24;
  v14 = v25;
  v16 = static os_log_type_t.default.getter();
  v17 = Logger.logObject.getter();
  if (os_log_type_enabled(v17, v16))
  {
    v18 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v18 = 136446466;
    *(v18 + 4) = sub_100080210(0, 0xE000000000000000, &v24);
    *(v18 + 12) = 2082;
    v19 = sub_100080210(v15, v14, &v24);

    *(v18 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v17, v16, "%{public}s%{public}s", v18, 0x16u);
    swift_arrayDestroy();
    sub_100081C28();
    sub_100081C28();
  }

  else
  {
  }

  sub_100080130(v5);
  v20 = objc_autoreleasePoolPush();
  sub_10007E034();
  objc_autoreleasePoolPop(v20);
  qword_1003F2588 = [objc_allocWithZone(type metadata accessor for ServiceListener()) init];
  v21 = [objc_opt_self() mainRunLoop];
  [v21 run];

  return 0;
}

void sub_10007E034()
{
  _set_user_dir_suffix();

  if (qword_1003CBC38 != -1)
  {
    swift_once();
  }

  if (qword_1003CBE90 != -1)
  {
    swift_once();
  }

  [objc_opt_self() start];
  [objc_opt_self() start];

  if (qword_1003CBC60 != -1)
  {
    swift_once();
  }

  sub_10007E16C();
}

void sub_10007E16C()
{
  v0 = type metadata accessor for DispatchQoS.QoSClass();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100081000();
  (*(v1 + 104))(v3, enum case for DispatchQoS.QoSClass.default(_:), v0);
  v4 = static OS_dispatch_queue.global(qos:)();
  (*(v1 + 8))(v3, v0);
  aBlock[4] = sub_10007E408;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10007ED3C;
  aBlock[3] = &unk_100384058;
  v5 = _Block_copy(aBlock);
  xpc_set_event_stream_handler("com.apple.distnoted.matching", v4, v5);
  _Block_release(v5);

  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  v6 = type metadata accessor for SKLogger();
  sub_10007EDA4(v6, qword_1003F26C8);
  v7 = static os_log_type_t.default.getter();
  v8 = Logger.logObject.getter();
  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v9 = 136446466;
    *(v9 + 4) = sub_100080210(0, 0xE000000000000000, aBlock);
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_100080210(0xD000000000000029, 0x8000000100313990, aBlock);
    _os_log_impl(&_mh_execute_header, v8, v7, "%{public}s%{public}s", v9, 0x16u);
    swift_arrayDestroy();
    sub_100081C28();
    sub_100081C28();
  }
}

void sub_10007E408(void *a1)
{
  type = xpc_get_type(a1);
  if (type == XPC_TYPE_DICTIONARY.getter())
  {
    swift_getObjectType();
    sub_10021AF00(&v34);
    if (v35)
    {
      sub_100080FB4(&qword_1003CC200);
      if (swift_dynamicCast())
      {
        XPC_EVENT_KEY_NAME.getter();
        v5 = String.init(utf8String:)();
        if (v6)
        {
          sub_1001DA990(v5, v6, v33._countAndFlagsBits, &v34);

          if (!v35)
          {

            sub_10008105C(&v34);
            goto LABEL_27;
          }

          if (swift_dynamicCast())
          {
            sub_1001DA990(0x6F666E4972657355, 0xE800000000000000, v33._countAndFlagsBits, &v34);

            if (v35)
            {
              if (swift_dynamicCast())
              {
                if (qword_1003CBE58 != -1)
                {
                  swift_once();
                }

                v7 = type metadata accessor for SKLogger();
                sub_10007EDA4(v7, qword_1003F26C8);
                *&v34 = 0;
                *(&v34 + 1) = 0xE000000000000000;
                _StringGuts.grow(_:)(36);

                *&v34 = 0xD000000000000015;
                *(&v34 + 1) = 0x8000000100313A50;
                String.append(_:)(v33);
                v8._countAndFlagsBits = 0x666E497265737520;
                v8._object = 0xEB00000000203A6FLL;
                String.append(_:)(v8);
                v9._countAndFlagsBits = Dictionary.description.getter();
                String.append(_:)(v9);

                v10 = v34;
                v11 = static os_log_type_t.debug.getter();

                v12 = Logger.logObject.getter();

                if (os_log_type_enabled(v12, v11))
                {
                  v13 = swift_slowAlloc();
                  *&v34 = swift_slowAlloc();
                  *v13 = 136446466;
                  *(v13 + 4) = sub_100080210(0, 0xE000000000000000, &v34);
                  *(v13 + 12) = 2082;
                  v14 = sub_100080210(v10, *(&v10 + 1), &v34);

                  *(v13 + 14) = v14;
                  _os_log_impl(&_mh_execute_header, v12, v11, "%{public}s%{public}s", v13, 0x16u);
                  swift_arrayDestroy();
                }

                else
                {
                }

                v28 = [objc_opt_self() defaultCenter];
                v29 = String._bridgeToObjectiveC()();

                sub_100223354(v33._countAndFlagsBits);
                v31 = v30;

                sub_100080BF0(v29, 0, v31, v28);
LABEL_42:

                return;
              }
            }

            else
            {
              sub_10008105C(&v34);
            }

            if (qword_1003CBE58 != -1)
            {
              swift_once();
            }

            v22 = type metadata accessor for SKLogger();
            sub_10007EDA4(v22, qword_1003F26C8);
            *&v34 = 0;
            *(&v34 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(23);

            *&v34 = 0xD000000000000015;
            *(&v34 + 1) = 0x8000000100313A50;
            String.append(_:)(v33);
            v23 = v34;
            v24 = static os_log_type_t.debug.getter();

            v25 = Logger.logObject.getter();

            if (os_log_type_enabled(v25, v24))
            {
              v26 = swift_slowAlloc();
              *&v34 = swift_slowAlloc();
              *v26 = 136446466;
              *(v26 + 4) = sub_100080210(0, 0xE000000000000000, &v34);
              *(v26 + 12) = 2082;
              v27 = sub_100080210(v23, *(&v23 + 1), &v34);

              *(v26 + 14) = v27;
              _os_log_impl(&_mh_execute_header, v25, v24, "%{public}s%{public}s", v26, 0x16u);
              swift_arrayDestroy();
            }

            else
            {
            }

            v28 = [objc_opt_self() defaultCenter];
            v29 = String._bridgeToObjectiveC()();

            [v28 postNotificationName:v29 object:0];
            goto LABEL_42;
          }
        }

LABEL_27:
        if (qword_1003CBE58 != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for SKLogger();
        sub_10007EDA4(v21, qword_1003F26C8);
        v16 = static os_log_type_t.error.getter();
        v17 = Logger.logObject.getter();
        if (!os_log_type_enabled(v17, v16))
        {
          goto LABEL_32;
        }

        v18 = "ctionary in distributed event";
        v19 = swift_slowAlloc();
        *&v34 = swift_slowAlloc();
        *v19 = 136446466;
        *(v19 + 4) = sub_100080210(0, 0xE000000000000000, &v34);
        *(v19 + 12) = 2082;
        v20 = 0xD00000000000002CLL;
LABEL_31:
        *(v19 + 14) = sub_100080210(v20, v18 | 0x8000000000000000, &v34);
        _os_log_impl(&_mh_execute_header, v17, v16, "%{public}s%{public}s", v19, 0x16u);
        swift_arrayDestroy();

LABEL_32:

        return;
      }
    }

    else
    {
      sub_10008105C(&v34);
    }

    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for SKLogger();
    sub_10007EDA4(v15, qword_1003F26C8);
    v16 = static os_log_type_t.error.getter();
    v17 = Logger.logObject.getter();
    if (!os_log_type_enabled(v17, v16))
    {
      goto LABEL_32;
    }

    v18 = "uted event with invalid type";
    v19 = swift_slowAlloc();
    *&v34 = swift_slowAlloc();
    *v19 = 136446466;
    *(v19 + 4) = sub_100080210(0, 0xE000000000000000, &v34);
    *(v19 + 12) = 2082;
    v20 = 0xD00000000000002DLL;
    goto LABEL_31;
  }

  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for SKLogger();
  sub_10007EDA4(v2, qword_1003F26C8);
  v3 = static os_log_type_t.error.getter();
  log = Logger.logObject.getter();
  if (os_log_type_enabled(log, v3))
  {
    v4 = swift_slowAlloc();
    *&v34 = swift_slowAlloc();
    *v4 = 136446466;
    *(v4 + 4) = sub_100080210(0, 0xE000000000000000, &v34);
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_100080210(0xD00000000000002CLL, 0x80000001003139C0, &v34);
    _os_log_impl(&_mh_execute_header, log, v3, "%{public}s%{public}s", v4, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_10007ED3C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_10007EDA4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10007EDDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SKLogger();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007EE44(uint64_t a1)
{
  v2 = sub_100080828(&qword_1003CC138, type metadata accessor for ASDError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10007EEB0(uint64_t a1)
{
  v2 = sub_100080828(&qword_1003CC138, type metadata accessor for ASDError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10007EF1C(uint64_t a1)
{
  v2 = sub_100080828(&qword_1003CC170, type metadata accessor for ASDError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

NSString sub_10007EFC4@<X0>(void *a1@<X8>)
{
  result = sub_100080ED4();
  *a1 = result;
  return result;
}

uint64_t sub_10007F02C()
{
  v1 = sub_100081BFC();
  result = nullsub_7(v1);
  *v0 = result;
  return result;
}

uint64_t sub_10007F060@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10014C370();
  *a1 = result;
  return result;
}

uint64_t sub_10007F088@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10009F414(*a1, *v2);
  *a2 = result;
  return result;
}

void *sub_10007F0D0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10007F0EC()
{
  v1 = sub_100081BFC();
  result = j_j___sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

Swift::Int sub_10007F1D4()
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10007F248@<X0>(_BYTE *a1@<X8>)
{
  result = nullsub_7(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_10007F280(uint64_t a1)
{
  v2 = sub_100080828(&qword_1003CC320, type metadata accessor for AMSError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10007F2EC(uint64_t a1)
{
  v2 = sub_100080828(&qword_1003CC320, type metadata accessor for AMSError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10007F35C(uint64_t a1)
{
  v2 = sub_100080828(&qword_1003CC318, type metadata accessor for AMSError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

void sub_10007F3C8(uint64_t a1@<X8>)
{
  sub_10007ED9C();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

uint64_t sub_10007F410()
{
  sub_100080828(&qword_1003CC170, type metadata accessor for ASDError);

  return _BridgedStoredNSError.errorCode.getter();
}

uint64_t sub_10007F47C(uint64_t a1)
{
  v2 = sub_100080828(&qword_1003CC170, type metadata accessor for ASDError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10007F4E8(void *a1, uint64_t a2)
{
  v4 = sub_100080828(&qword_1003CC170, type metadata accessor for ASDError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10007F59C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100080828(&qword_1003CC170, type metadata accessor for ASDError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_10007F628@<X0>(uint64_t *a1@<X8>)
{
  result = j___sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10007F668()
{
  sub_100080828(&qword_1003CC318, type metadata accessor for AMSError);

  return _BridgedStoredNSError.errorCode.getter();
}

uint64_t sub_10007F6D4(uint64_t a1)
{
  v2 = sub_100080828(&qword_1003CC318, type metadata accessor for AMSError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10007F740(void *a1, uint64_t a2)
{
  v4 = sub_100080828(&qword_1003CC318, type metadata accessor for AMSError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10007F7D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100080828(&qword_1003CC318, type metadata accessor for AMSError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_10007F858()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10007F8B8()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_10007F924()
{
  v1 = sub_100081BFC();
  result = j___sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_10007F94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100080828(&qword_1003CC170, type metadata accessor for ASDError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10007F9D0(uint64_t a1)
{
  v2 = sub_100080828(&qword_1003CC178, type metadata accessor for AMSBagKey);
  v3 = sub_100080828(&qword_1003CC180, type metadata accessor for AMSBagKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10007FA8C(uint64_t a1)
{
  v2 = sub_100080828(&qword_1003CC3B8, type metadata accessor for SKServerKey);
  v3 = sub_100080828(&qword_1003CC3C0, type metadata accessor for SKServerKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10007FB48(uint64_t a1)
{
  v2 = sub_100080828(&qword_1003CC3A8, type metadata accessor for SKClientOverridesKey);
  v3 = sub_100080828(&qword_1003CC3B0, type metadata accessor for SKClientOverridesKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10007FC04(uint64_t a1)
{
  v2 = sub_100080828(&qword_1003CC3F8, type metadata accessor for AMSAccountMediaType);
  v3 = sub_100080828(&unk_1003CC400, type metadata accessor for AMSAccountMediaType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10007FCC4(uint64_t a1)
{
  v2 = sub_100080828(&qword_1003CC378, type metadata accessor for URLResourceKey);
  v3 = sub_100080828(&qword_1003CC380, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10007FD80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100080828(&qword_1003CC318, type metadata accessor for AMSError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10007FE04(uint64_t a1)
{
  v2 = sub_100080828(&qword_1003CC388, type metadata accessor for FileProtectionType);
  v3 = sub_100080828(&qword_1003CC390, type metadata accessor for FileProtectionType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10007FEC0(uint64_t a1)
{
  v2 = sub_100080828(&qword_1003CC398, type metadata accessor for FileAttributeKey);
  v3 = sub_100080828(&qword_1003CC3A0, type metadata accessor for FileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10007FF7C@<X0>(void *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_10007FFC4(uint64_t a1)
{
  v2 = sub_100080828(&qword_1003CC3C8, type metadata accessor for OctaneStorefrontKey);
  v3 = sub_100080828(&qword_1003CC3D0, type metadata accessor for OctaneStorefrontKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10008009C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1000800E8(Swift::Int a1)
{
  if (a1 < 16)
  {
    return 0;
  }

  _StringGuts.grow(_:)(a1);
  return 0;
}

uint64_t sub_100080130(uint64_t a1)
{
  v2 = type metadata accessor for SKLogger();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000801B4(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_100080210(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_100080210(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000802D4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_100080F58(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100080F0C(v11);
  return v7;
}

unint64_t sub_1000802D4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000803D4(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_1000803D4(uint64_t a1, unint64_t a2)
{
  v3 = sub_100080420(a1, a2);
  sub_100080538(&off_100383388);
  return v3;
}

char *sub_100080420(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_1001B3B4C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100080538(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_10008061C(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_10008061C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100080FB4(&qword_1003CC1E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_100080710(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

__n128 sub_100080760(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10008076C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10008078C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_100080828(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100080B0C()
{
  result = qword_1003CC160;
  if (!qword_1003CC160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC160);
  }

  return result;
}

void sub_100080BF0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a4 postNotificationName:a1 object:a2 userInfo:isa];
}

uint64_t sub_100080C8C()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_100080D10()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100080D68()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_100080DDC(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100080E5C(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

NSString sub_100080ED4()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String._bridgeToObjectiveC()();

  return v0;
}

uint64_t sub_100080F0C(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100080F58(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100080FB4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100081000()
{
  result = qword_1003CC1F0;
  if (!qword_1003CC1F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003CC1F0);
  }

  return result;
}

uint64_t sub_100081044(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10008105C(uint64_t a1)
{
  v2 = sub_100080FB4(&unk_1003CCB70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100081A44(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100081B68()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100081C08()
{

  return swift_once();
}

uint64_t sub_100081C28()
{
}

uint64_t sub_100081C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100080FB4(&unk_1003D20F0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100081D0C(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 28));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_100081D48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100080FB4(&unk_1003D20F0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_100081DFC(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ProductRequest()
{
  result = qword_1003CC5E8;
  if (!qword_1003CC5E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100081E70()
{
  sub_100081F84();
  if (v0 <= 0x3F)
  {
    sub_100082030(319, &qword_1003CC600, sub_100081FDC);
    if (v1 <= 0x3F)
    {
      sub_100082030(319, &qword_1003CC610, sub_100082090);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100081F84()
{
  if (!qword_1003CC5F8)
  {
    type metadata accessor for ClientOverride(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1003CC5F8);
    }
  }
}

unint64_t sub_100081FDC()
{
  result = qword_1003CC608;
  if (!qword_1003CC608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC608);
  }

  return result;
}

void sub_100082030(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for Set();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}